unit DocBlobAdd;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, cxGraphics, cxControls, cxLookAndFeels,
  cxLookAndFeelPainters, cxContainer, cxEdit,  Vcl.Menus, Vcl.ComCtrls, dxCore, cxDateUtils,
  cxDropDownEdit, cxCalendar, cxTextEdit, Vcl.StdCtrls, cxButtons, cxMaskEdit,
  cxLookupEdit, cxDBLookupEdit, cxDBLookupComboBox, Vcl.ExtCtrls, Data.DB,
  Data.Win.ADODB, Datasnap.DBClient, StrUtils, Vcl.Buttons,
  cxMemo, cxCheckBox, cxButtonEdit, cxStyles, dxSkinscxPCPainter, cxCustomData,
  cxFilter, cxData, cxDataStorage, cxNavigator, cxDBData, cxGridCustomView,
  cxGridCustomTableView, cxGridTableView, cxGridBandedTableView,
  cxGridDBBandedTableView, cxClasses, cxGridLevel, cxGrid, dxSkinsdxBarPainter,
  dxBar, System.ImageList, Vcl.ImgList, cxPropertiesStore,
  cxDataControllerConditionalFormattingRulesManagerDialog, cxImageList, dxSkinsCore, dxSkinBlack, dxSkinBlue, dxSkinBlueprint, dxSkinCaramel, dxSkinCoffee, dxSkinDarkRoom, dxSkinDarkSide,
  dxSkinDevExpressDarkStyle, dxSkinDevExpressStyle, dxSkinFoggy, dxSkinGlassOceans, dxSkinHighContrast, dxSkiniMaginary, dxSkinLilian, dxSkinLiquidSky, dxSkinLondonLiquidSky, dxSkinMcSkin,
  dxSkinMetropolis, dxSkinMetropolisDark, dxSkinMoneyTwins, dxSkinOffice2007Black, dxSkinOffice2007Blue, dxSkinOffice2007Green, dxSkinOffice2007Pink, dxSkinOffice2007Silver, dxSkinOffice2010Black,
  dxSkinOffice2010Blue, dxSkinOffice2010Silver, dxSkinOffice2013DarkGray, dxSkinOffice2013LightGray, dxSkinOffice2013White, dxSkinOffice2016Colorful, dxSkinOffice2016Dark, dxSkinPumpkin, dxSkinSeven,
  dxSkinSevenClassic, dxSkinSharp, dxSkinSharpPlus, dxSkinSilver, dxSkinSpringTime, dxSkinStardust, dxSkinSummer2008, dxSkinTheAsphaltWorld, dxSkinTheBezier, dxSkinsDefaultPainters, dxSkinValentine,
  dxSkinVisualStudio2013Blue, dxSkinVisualStudio2013Dark, dxSkinVisualStudio2013Light, dxSkinVS2010, dxSkinWhiteprint, dxSkinXmas2008Blue, dxDateRanges,
  dxSkinOffice2019Colorful, cxCurrencyEdit, dxSkinBasic, dxSkinOffice2019Black, dxSkinOffice2019DarkGray, dxSkinOffice2019White;

type
  TfmDocBlobAdd = class(TForm)
    Panel1: TPanel;
    BitBtn2: TBitBtn;
    BitBtn1: TBitBtn;
    GroupBox1: TGroupBox;
    cxMemo1: TcxMemo;
    dxBarManager1: TdxBarManager;
    dxBarButton1: TdxBarButton;
    cxImageList1: TcxImageList;
    cxPropertiesStore1: TcxPropertiesStore;
    Panel26: TPanel;
    Label43: TLabel;
    Label44: TLabel;
    cxButtonEdit1: TcxButtonEdit;
    cxTextEdit2: TcxTextEdit;
    OpenDialog1: TOpenDialog;
    Label2: TLabel;
    Label1: TLabel;
    cxCurrencyEdit1: TcxCurrencyEdit;
    cxDateEdit2: TcxDateEdit;
    Label3: TLabel;
    cxTextEdit1: TcxTextEdit;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure BitBtn2Click(Sender: TObject);
    procedure cxButtonEdit1PropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
  private
    Ffile_id       : integer;
    FConnect       : TADOConnection;
    Ffiles_blob    : TMemoryStream;
    Ffiles_name    : string;
    Ftype_action   : integer;

    procedure SetUpdate(file_id: integer);
  public
    constructor Create(AOwner: TApplication; str_conn: string);
  published
    property _GetDocId    : integer read Ffile_id;
    property _SetUpdate   : integer write SetUpdate;
  end;

var
  fmDocBlobAdd: TfmDocBlobAdd;


implementation
    uses Raznoe;
{$R *.dfm}

constructor TfmDocBlobAdd.Create(AOwner: TApplication; str_conn: string);
begin
  inherited Create(AOwner);
  Screen.Cursor := crHourglass;

  Ffile_id        := -9;
  Ftype_action   := 0;
  Ffiles_blob    := nil;
  Ffiles_name    := '';
  Ffiles_blob    := TMemoryStream.Create;

  Fconnect := TADOConnection.Create(nil);
  Fconnect.LoginPrompt := False;
  Fconnect.ConnectionString := str_conn;

  Screen.Cursor := crDefault;
end;


procedure TfmDocBlobAdd.SetUpdate(file_id: integer);
var Q : TADOQuery;
begin
  Screen.Cursor := crHourGlass;
  Ffile_id := file_id;
  Ftype_action := 1;

  Q := TADOQuery.Create(nil);
  Q.Connection := FConnect;
  Q.SQL.Add('SELECT * FROM ver_blob WHERE file_id = ' + IntToStr(Ffile_id));
  Q.Open;

  cxButtonEdit1.EditValue   := Q.FieldByName('file_name').Value;
  cxTextEdit2.EditValue     := Q.FieldByName('file_cod').Value;
  cxDateEdit2.EditValue     := Q.FieldByName('file_date').Value;
  cxMemo1.EditValue         := Q.FieldByName('file_describe').Value;
  cxCurrencyEdit1.EditValue := Q.FieldByName('file_size').Value;
  cxTextEdit1.EditValue     := Q.FieldByName('file_ver').Value;

  TBlobField(Q.FieldByName('file_blob')).SaveToStream(Ffiles_blob);

  Q.Free;
  Screen.Cursor :=  crDefault;
end;

procedure TfmDocBlobAdd.BitBtn2Click(Sender: TObject);
var        SP : TADOStoredProc;
      AStream : TMemoryStream;
            s : TBytesStream;
            i : integer;
begin
  if (OpenDialog1.Files.Count = 0) AND (Ftype_action = 0) then begin
    if (Ffiles_blob.Size = 0) then begin
      Application.MessageBox('Не указан файл.', 'Внимание', MB_OK or MB_ICONWARNING);
      ModalResult := mrNone;
      Exit;
    end;
  end;

  Screen.Cursor := crHourglass;

  SP := TADOStoredProc.Create(nil);
  SP.Connection := FConnect;
  SP.ProcedureName := 'sp_ver_BLOB_modify';
  SP.Parameters.Refresh;

  SP.Parameters.ParamByName('@file_id'      ).Value := iif(Ffile_id = -9, null, Ffile_id);
  SP.Parameters.ParamByName('@type_action'  ).Value := Ftype_action;
  SP.Parameters.ParamByName('@file_cod'     ).Value := cxTextEdit2.EditValue;
  SP.Parameters.ParamByName('@file_date'    ).Value := cxDateEdit2.EditValue;
  SP.Parameters.ParamByName('@file_describe').Value := cxMemo1.EditValue;
  SP.Parameters.ParamByName('@file_size'    ).Value := cxCurrencyEdit1.Value;
  SP.Parameters.ParamByName('@file_ver'     ).Value := cxTextEdit1.EditValue;

    if OpenDialog1.Files.Count > 0 then begin
      for i:=0 to OpenDialog1.Files.Count - 1 do begin

        s := TStringStream.Create();
        s.LoadFromFile(OpenDialog1.Files.Strings[i]);

        // ----- при обновлении документа файл передаётся пустым, если он не изменялся --------
        SP.Close;
        SP.Parameters.ParamByName('@file_blob').LoadFromStream(s, ftBlob);
        SP.Parameters.ParamByName('@file_name').Value := ExtractFileName(OpenDialog1.Files.Strings[i]);

        s.Free;

        try
          SP.ExecProc;
          Ffile_id := SP.Parameters.ParamByName('@file_id').Value;
        except on E: Exception do begin
            Application.MessageBox(PChar(E.Message), 'Ошибка', MB_OK or MB_ICONERROR);
            SP.Free;
            Screen.Cursor := crDefault;
          end;
        end;

        if Ffile_id = -9 then Application.MessageBox('НЕВОЗМОЖНО ВСТАВИТЬ НОВЫЙ ДОКУМЕНТ (1)', 'Внимание', MB_OK);
      end;
      SP.Free;

    end else if Ffiles_blob.Size <> 0 then begin

      AStream := TMemoryStream.Create;
      AStream.LoadFromStream(Ffiles_blob);
      s := TStringStream.Create('');
      AStream.Seek(0,0);
      s.CopyFrom(AStream, AStream.Size);

      // ----- при обновлении документа файл передаётся пустым, если он не изменялся --------
      SP.Close;
      SP.Parameters.ParamByName('@file_blob').LoadFromStream(s, ftBlob);
      SP.Parameters.ParamByName('@file_name').Value := cxButtonEdit1.EditValue;

      s.Free;
      AStream.Free;

      try
        SP.ExecProc;
        Ffile_id := SP.Parameters.ParamByName('@file_id').Value
      except on E: Exception do begin
          Application.MessageBox(PChar(E.Message), 'Ошибка', MB_OK or MB_ICONERROR);
          SP.ExecProc;
        end;
      end;

      if Ffile_id = -9 then Application.MessageBox('НЕВОЗМОЖНО ВСТАВИТЬ НОВЫЙ ДОКУМЕНТ (2)', 'Внимание', MB_OK);

      SP.Free;
    end else begin
      SP.Parameters.ParamByName('@file_blob').Value := null;
      SP.Parameters.ParamByName('@file_name').Value := null;
      try
        SP.ExecProc;
        Ffile_id := SP.Parameters.ParamByName('@file_id').Value
      except on E: Exception do
        Application.MessageBox(PChar(E.Message), 'Ошибка', MB_OK or MB_ICONERROR);
      end;

      if Ffile_id = -9 then Application.MessageBox('НЕВОЗМОЖНО ВСТАВИТЬ НОВЫЙ ДОКУМЕНТ (3)', 'Внимание', MB_OK);
      SP.Free;
    end;

  Screen.Cursor := crDefault;
end;

procedure TfmDocBlobAdd.cxButtonEdit1PropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
var              i: integer;
         file_name: TFileName;
            MyFile: File;
 FileAttributeData: TWin32FileAttributeData;
        SystemTime: TSystemTime;
begin
  case AButtonIndex of
    0 : begin
        OpenDialog1.Filter := 'Все файлы|*.*';
        OpenDialog1.DefaultExt := '';
        if OpenDialog1.Execute then begin
          file_name := OpenDialog1.FileName;
          cxButtonEdit1.EditValue := file_name;
          cxTextEdit1.EditValue := GetVersion_old(file_name);

          // ------- размер файла ------
          AssignFile(MyFile, file_name);
          Reset(MyFile, 1 );
          cxCurrencyEdit1.EditValue := FileSize(MyFile);
          CloseFile(myFile);

          // ------- дата изменения файла -------------
          ZeroMemory(@FileAttributeData, SizeOf(TWin32FileAttributeData));
          GetFileAttributesEx(PWideChar(File_Name), GetFileExInfoStandard, @FileAttributeData);
          FileTimeToLocalFileTime(FileAttributeData.ftLastWriteTime, FileAttributeData.ftLastWriteTime);
          FileTimeToSystemTime(FileAttributeData.ftLastWriteTime, SystemTime);
          cxDateEdit2.EditValue := SystemTimeToDateTime(SystemTime);
        end;

        end;
    1 : cxButtonEdit1.EditValue := '';
  end;

end;

procedure TfmDocBlobAdd.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Ffiles_blob.Free;
  Fconnect.Free;
  Action := caFree;
end;




end.
