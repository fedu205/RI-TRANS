unit FactTrackFilesAdd;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters,
  cxContainer, cxEdit, cxDropDownEdit, cxCalendar, cxMaskEdit, cxButtonEdit,
  cxTextEdit, StdCtrls, Buttons, ExtCtrls, cxCheckBox, cxPropertiesStore, StrUtils,
  DB, ADODB, Raznoe, cxLookupEdit, cxDBLookupEdit, cxDBLookupComboBox, Registry,
  cxSpinEdit, cxTimeEdit, DateUtils, DBClient, ComObj, Other, dxSkinsCore,
  dxSkinBlack, dxSkinBlue, dxSkinBlueprint, dxSkinCaramel, dxSkinCoffee,
  dxSkinDarkRoom, dxSkinDarkSide, dxSkinDevExpressDarkStyle,
  dxSkinDevExpressStyle, dxSkinFoggy, dxSkinGlassOceans, dxSkinHighContrast,
  dxSkiniMaginary, dxSkinLilian, dxSkinLiquidSky, dxSkinLondonLiquidSky,
  dxSkinMcSkin, dxSkinMetropolis, dxSkinMetropolisDark, dxSkinMoneyTwins,
  dxSkinOffice2007Black, dxSkinOffice2007Blue, dxSkinOffice2007Green,
  dxSkinOffice2007Pink, dxSkinOffice2007Silver, dxSkinOffice2010Black,
  dxSkinOffice2010Blue, dxSkinOffice2010Silver, dxSkinOffice2013DarkGray,
  dxSkinOffice2013LightGray, dxSkinOffice2013White, dxSkinOffice2016Colorful,
  dxSkinOffice2016Dark, dxSkinPumpkin, dxSkinSeven, dxSkinSevenClassic,
  dxSkinSharp, dxSkinSharpPlus, dxSkinSilver, dxSkinSpringTime, dxSkinStardust,
  dxSkinSummer2008, dxSkinTheAsphaltWorld, dxSkinsDefaultPainters,
  dxSkinValentine, dxSkinVisualStudio2013Blue, dxSkinVisualStudio2013Dark,
  dxSkinVisualStudio2013Light, dxSkinVS2010, dxSkinWhiteprint,
  dxSkinXmas2008Blue, Vcl.ComCtrls, dxCore, cxDateUtils, cxClasses, dxSkinBasic,
  dxSkinOffice2019Black, dxSkinOffice2019Colorful, dxSkinOffice2019DarkGray,
  dxSkinOffice2019White, dxSkinTheBezier, dxSkinWXI;

type
  TfmFactTrackFilesAdd = class(TForm)
    Panel1: TPanel;
    BitBtn2: TBitBtn;
    BitBtn1: TBitBtn;
    Panel2: TPanel;
    Label18: TLabel;
    Label1: TLabel;
    Label2: TLabel;
    cxButtonEdit6: TcxButtonEdit;
    cxDateEdit1: TcxDateEdit;
    cxPropertiesStore1: TcxPropertiesStore;
    cxLookupComboBox1: TcxLookupComboBox;
    cxTextEdit1: TcxTextEdit;
    Query_Format: TADOQuery;
    DS_Format: TDataSource;
    cxTimeEdit1: TcxTimeEdit;
    Label4: TLabel;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure cxButtonEdit6PropertiesButtonClick(Sender: TObject;
      AButtonIndex: Integer);
    procedure BitBtn2Click(Sender: TObject);
    procedure cxLookupComboBox1PropertiesEditValueChanged(Sender: TObject);
  private
    Ffiles_id    : integer;
    Ftype_action : integer;
    Ffile_name   : string;

    procedure SetUpdate(files_id: integer);
  public
    constructor Create(AOwner: TApplication); reintroduce;
  published
    property _SetUpdate   : integer write SetUpdate;
    property _GetFilesId  : integer read  Ffiles_id;
  end;

var
  fmFactTrackFilesAdd: TfmFactTrackFilesAdd;



implementation

uses FactTrackFiles;

{$R *.dfm}

constructor TfmFactTrackFilesAdd.Create(AOwner: TApplication);
var Reg : TRegistry;
begin
  Screen.Cursor := crHourglass;
  inherited Create(AOwner);

  Ftype_action := 0;
  Ffiles_id    := -9;
  Ffile_name   := '';

  cxDateEdit1.EditValue := Date;
  cxTimeEdit1.EditValue := Time;

  Query_Format.Open;


  Reg := TRegistry.Create;
  Reg.RootKey := HKEY_CURRENT_USER;
  if not Reg.KeyExists('\Software\LIS1\FactTrackFilesAdd\') then Reg.CreateKey('\Software\LIS1\FactTrackFilesAdd\');
  Reg.OpenKey('\Software\LIS1\FactTrackFilesAdd\', True);

  if Reg.ValueExists('format_id') then begin
    cxLookupComboBox1.EditValue := Reg.ReadInteger('format_id');
  end else begin
    cxLookupComboBox1.EditValue := Query_Format.FieldByName('inf_obj_id').Value;
    Reg.WriteInteger('format_id', cxLookupComboBox1.EditValue);
  end;

  Reg.Free;

  Screen.Cursor := crDefault;
end;

procedure TfmFactTrackFilesAdd.FormClose(Sender: TObject; var Action: TCloseAction);
var Reg : TRegistry;
begin
  Reg := TRegistry.Create;
  Reg.RootKey := HKEY_CURRENT_USER;

  if not Reg.KeyExists('\Software\LIS1\FactTrackFilesAdd\') then Reg.CreateKey('\Software\LIS1\FactTrackFilesAdd\');
  Reg.OpenKey('\Software\LIS1\FactTrackFilesAdd\', True);
  if cxLookupComboBox1.EditValue <> null then Reg.WriteInteger('format_id', cxLookupComboBox1.EditValue);
  Reg.Free;

  Action := caFree;
end;


procedure TfmFactTrackFilesAdd.SetUpdate(files_id: integer);
var Q: TADOQuery;
begin
  Ffiles_id    := files_id;
  Ftype_action := 1;

  Q := TADOQuery.Create(nil);
  Q.Connection := fmFactTrackFiles.ADOFactTrack;
  Q.SQL.Add('SELECT * FROM view_fact_track_files WHERE files_track_id=' + IntToStr(Ffiles_id));
  Q.Open;

  cxLookupComboBox1.EditValue := Q.FieldByName('files_format_id').Value;
  cxButtonEdit6.EditValue     := Q.FieldByName('files_name').Value;

  cxDateEdit1.EditValue       := DateOf(Q.FieldByName('files_date').Value);
  cxTimeEdit1.EditValue       := TimeOf(Q.FieldByName('files_date').Value);

  cxButtonEdit6.Properties.ReadOnly := True;
  cxButtonEdit6.Style.Color := clBtnFace;
  cxButtonEdit6.Style.Font.Style := [fsBold];

  Q.Free;
end;


procedure TfmFactTrackFilesAdd.cxButtonEdit6PropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
var OpenDialog : TOpenDialog;
    file_name  : string;
    file_name_tmp : string;

    company_name   : string;
    str_files_date : string;
    str_files_time : string;
    format_name    : string;

    dt_day   : integer;
    dt_month : integer;
    dt_year  : integer;
    tm_hour  : integer;
    tm_minute: integer;

    s: string;
    dt : TDateTime;


    Q : TADOQuery;
begin
  case AButtonIndex of
    0 : begin
          OpenDialog := TOpenDialog.Create(nil);
          OpenDialog.Filter := 'Все файлы |*.*';
          OpenDialog.DefaultExt := '';

          Q := TADOQuery.Create(nil);
          Q.Connection := fmFactTrackFiles.ADOFactTrack;
          if OpenDialog.Execute then begin
//            cxLookupComboBox1.EditValue := null;
            cxDateEdit1.EditValue := null;
            Ffile_name := OpenDialog.FileName;
            cxButtonEdit6.EditValue := ExtractFileName(OpenDialog.FileName);

            file_name := OpenDialog.FileName;
            file_name := ExtractFileName(file_name);
            file_name := LeftStr(file_name, Length(file_name)-5);

            s := RightStr(file_name, 4);
            cxTimeEdit1.EditValue := EncodeTime(StrToInt(copy(s, 1, 2)), StrToInt(copy(s, 3, 2)), 0, 0);

            s := RightStr(file_name, 13);
            s := LeftStr(s, 8);
            cxDateEdit1.EditValue := EncodeDate(StrToInt(copy(s, 5, 4)), StrToInt(copy(s, 3, 2)), StrToInt(copy(s, 1, 2)));

            cxLookupComboBox1.EditValue := 1475965;

//        
          end;
          OpenDialog.Free;
          Q.Free;
        end;
    1 : begin
        cxButtonEdit6.EditValue := '';
        Ffile_name := '';
        cxTextEdit1.Text := '';
        cxDateEdit1.EditValue := null;
        end;
  end;
end;

procedure TfmFactTrackFilesAdd.cxLookupComboBox1PropertiesEditValueChanged(Sender: TObject);
begin
  if cxLookupComboBox1.EditValue <> null then begin
    Query_Format.Locate('inf_obj_id', cxLookupComboBox1.EditValue, []);
    cxTextEdit1.Text := Query_Format.FieldByName('inf_obj_cod').AsString;
  end else begin
    cxTextEdit1.Text := '';
  end;
end;

procedure TfmFactTrackFilesAdd.BitBtn2Click(Sender: TObject);
var sp_fact_track_files_modify : TADOStoredProc;
                       AStream : TMemoryStream;
                          s,s1 : TStringStream;
                     file_name : string;
                  Client_Vagon : TClientDataSet;
                  exWks, exApp : Variant;
                     count_str : integer;
                    files_size : integer;
                    files_data : TArray<Byte>;
begin
  sp_fact_track_files_modify := TADOStoredProc.Create(nil);
  sp_fact_track_files_modify.Connection := fmFactTrackFiles.ADOFactTrack;
  sp_fact_track_files_modify.ProcedureName := 'sp_fact_track_files_modify';
  sp_fact_track_files_modify.Parameters.Refresh;


  sp_fact_track_files_modify.Parameters.ParamByName('@files_track_id' ).Value := iif(Ffiles_id = -9, null, Ffiles_id);
	sp_fact_track_files_modify.Parameters.ParamByName('@type_action'    ).Value := Ftype_action;
  sp_fact_track_files_modify.Parameters.ParamByName('@files_format_id').Value := cxLookupComboBox1.EditValue;
  sp_fact_track_files_modify.Parameters.ParamByName('@files_date'     ).Value := cxDateEdit1.EditValue + cxTimeEdit1.EditValue;

  if Ftype_action = 0 then begin

    Query_Format.Locate('inf_obj_id', cxLookupComboBox1.EditValue, []);
//    if Query_Format.FieldByName('inf_obj_cod').AsString = '00003' then begin
//
//      file_name := cxButtonEdit6.EditValue;
//      file_name := LeftStr(file_name, Length(file_name) - Length(ExtractFileExt(file_name)));
//      sp_fact_track_files_modify.Parameters.ParamByName('@files_name').Value := file_name + '.xml';
//
//
//      Client_Vagon := TClientDataSet.Create(nil);
//      Client_Vagon.FieldDefs.Add('num_vagon', ftString, 9);
//      Client_Vagon.FieldDefs.Add('date_otpr', ftDateTime);
//      Client_Vagon.FieldDefs.Add('fact_weight', ftFloat);
//      Client_Vagon.FieldDefs.Add('node_end_cod', ftString, 7);
//      Client_Vagon.FieldDefs.Add('node_begin_cod', ftString, 7);
//      Client_Vagon.FieldDefs.Add('date_operation', ftDateTime);
//      Client_Vagon.FieldDefs.Add('node_operation_cod', ftString, 7);
//      Client_Vagon.FieldDefs.Add('index_train', ftString, 14);
//      Client_Vagon.FieldDefs.Add('doc_number', ftString, 256);
//      Client_Vagon.CreateDataSet;
//      Client_Vagon.LogChanges := False;
//
//      exApp := CreateOleObject('Excel.Application');
//      exApp.Workbooks.Open(Ffile_name);
//      exWks := exApp.ActiveWorkbook.WorkSheets[1];
//      count_str := 3;
//      while not (TVarData(exWks.Cells[count_str,1].Value).VType = varEmpty) do begin
//        Client_Vagon.Append;
//        Client_Vagon['num_vagon']          := exWks.Range['A' + IntToStr(count_str)].Value;
//        Client_Vagon['date_otpr']          := exWks.Range['F' + IntToStr(count_str)].Value;
//        Client_Vagon['fact_weight']        := exWks.Range['R' + IntToStr(count_str)].Value;
//        Client_Vagon['node_end_cod']       := exWks.Range['M' + IntToStr(count_str)].Value;
//        Client_Vagon['node_begin_cod']     := exWks.Range['D' + IntToStr(count_str)].Value;
//        Client_Vagon['date_operation']     := exWks.Range['I' + IntToStr(count_str)].Value;
//        Client_Vagon['node_operation_cod'] := exWks.Range['G' + IntToStr(count_str)].Value;
//        Client_Vagon['index_train']        := exWks.Range['L' + IntToStr(count_str)].Value;
//        Client_Vagon['doc_number']         := exWks.Range['U' + IntToStr(count_str)].Value;
//        Client_Vagon.Post;
//        count_str := count_str + 1;
//        ShowTextMessage('Обработано '+IntToStr(count_str - 2)+' вагонов', False);
//      end;
//      ShowTextMessage;
//
//      exApp.Quit;
//      exWks := Null; exApp := Null;
//      VarClear(exWks); VarClear(exApp);
//
//      s := TStringStream.Create('');
//      s.WriteString(Client_Vagon.XMLData);
//      files_size := s.Size;
//      files_data := LZHPack(s.Bytes, s.Size);
//      s1 := TStringStream.Create(files_data);
//
//      sp_fact_track_files_modify.Parameters.ParamByName('@doc_image' ).LoadFromStream(s1,ftBlob);
//      sp_fact_track_files_modify.Parameters.ParamByName('@files_size').Value := files_size;
//
//      s.Free;
//      s1.Free;
//      Client_Vagon.Free;
//
//    end else begin

      sp_fact_track_files_modify.Parameters.ParamByName('@files_name').Value := cxButtonEdit6.EditValue;

      AStream := TMemoryStream.Create;
      AStream.LoadFromFile(Ffile_name);
      files_size := AStream.Size;

      s := TStringStream.Create('');
      AStream.Seek(0,0);
      s.CopyFrom(AStream, AStream.Size);
      files_data := LZHPack(s.Bytes, s.Size);
      s1 := TStringStream.Create(files_data);

      sp_fact_track_files_modify.Parameters.ParamByName('@doc_image').LoadFromStream(s1,ftBlob);
      sp_fact_track_files_modify.Parameters.ParamByName('@files_size').Value := files_size;

      s.Free;
      s1.Free;
      AStream.Free;
//    end;
  end;

  try
    sp_fact_track_files_modify.ExecProc;
    Ffiles_id := sp_fact_track_files_modify.Parameters.ParamByName('@files_track_id').Value;
  except
  end;

  sp_fact_track_files_modify.Free;
end;

end.
