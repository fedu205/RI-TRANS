unit Main;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms,
  ToolWin, ComCtrls, ExtCtrls, StdCtrls, Dialogs, Variants,
  ADOdb, DB, cxLocalization, ImageList,  DBClient, cxControls, dxBar,
  cxClasses, cxLookAndFeels, cxLookAndFeelPainters, cxContainer, cxGraphics, cxStyles,
  dxSkinsCore, dxSkinsDefaultPainters, dxSkinsdxBarPainter, dxSkinBlack,
  dxSkinBlue, dxSkinBlueprint, dxSkinCaramel, dxSkinCoffee, dxSkinDarkRoom,
  dxSkinDarkSide, dxSkinDevExpressDarkStyle, dxSkinDevExpressStyle, dxSkinFoggy,
  dxSkinGlassOceans, dxSkinHighContrast, dxSkiniMaginary, dxSkinLilian,
  dxSkinLiquidSky, dxSkinLondonLiquidSky, dxSkinMcSkin, dxSkinMetropolis,
  dxSkinMetropolisDark, dxSkinMoneyTwins, dxSkinOffice2007Black,
  dxSkinOffice2007Blue, dxSkinOffice2007Green, dxSkinOffice2007Pink,
  dxSkinOffice2007Silver, dxSkinOffice2010Black, dxSkinOffice2010Blue,
  dxSkinOffice2010Silver, dxSkinOffice2013DarkGray, dxSkinOffice2013LightGray,
  dxSkinOffice2013White, dxSkinPumpkin, dxSkinSeven, dxSkinSevenClassic,
  dxSkinSharp, dxSkinSharpPlus, dxSkinSilver, dxSkinSpringTime, dxSkinStardust,
  dxSkinSummer2008, dxSkinTheAsphaltWorld, dxSkinValentine, dxSkinVS2010, DateUtils,
  dxSkinWhiteprint, dxSkinXmas2008Blue, dxCore, dxSkinOffice2016Colorful, dxSkinOffice2016Dark, dxSkinVisualStudio2013Blue,
  dxSkinVisualStudio2013Dark, dxSkinVisualStudio2013Light, dxColorDialog, cxPropertiesStore,
  dxSkinscxPCPainter, dxRibbonSkins, dxSkinsdxRibbonPainter, dxRibbonCustomizationForm, dxRibbon, cxImageList, dxRibbonForm, cxPC,
  dxTabbedMDI, dxSkinTheBezier, dxBarBuiltInMenu, cxImage, VCL.Imaging.pngimage, VCL.Imaging.jpeg, dxSkinOffice2019Colorful, cxCustomData, cxFilter,
  cxData, cxDataStorage, cxNavigator, dxDateRanges, cxDBData, cxCurrencyEdit, cxGridLevel, cxGridCustomTableView, cxGridTableView, cxGridBandedTableView,
  cxGridDBBandedTableView, cxGridCustomView, cxGrid, cxEdit, ImgList, dxScrollbarAnnotations, cxGroupBox, cxTextEdit;

type
  TfmMain = class(TdxRibbonForm)
    cxImageList32: TcxImageList;
    cxImageList16: TcxImageList;
    dxBarManager1: TdxBarManager;
    dxBarManager1Bar2: TdxBar;
    dxBarManager1Bar3: TdxBar;
    dxBarManager1Bar9: TdxBar;
    dxBarManager1Bar10: TdxBar;
    N1: TdxBarSubItem;
    dxBarSubItem1: TdxBarSubItem;
    dxBarSubItem4: TdxBarSubItem;
    N4: TdxBarSubItem;
    dxBarSubItem3: TdxBarSubItem;
    N1_1: TdxBarButton;
    N78: TdxBarSubItem;
    N77: TdxBarButton;
    N79: TdxBarButton;
    dxBarButton26: TdxBarButton;
    dxBarLargeButton11: TdxBarLargeButton;
    N1_2: TdxBarButton;
    dxBarLargeButton12: TdxBarLargeButton;
    N15: TdxBarButton;
    N25: TdxBarButton;
    N28: TdxBarButton;
    N36: TdxBarButton;
    N37: TdxBarButton;
    N4_1: TdxBarButton;
    N4_3: TdxBarButton;
    cxPropertiesStore1: TcxPropertiesStore;
    dxTabbedMDIManager1: TdxTabbedMDIManager;
    Lis: TADOConnection;
    dxRibbon1: TdxRibbon;
    dxRibbon1Tab1: TdxRibbonTab;
    cxGrid1: TcxGrid;
    cxGrid1DBBandedTableView1: TcxGridDBBandedTableView;
    cxGrid1DBBandedTableView1file_id: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1file_describe: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1file_name: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1file_cod: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1date_enter: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1file_date: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1file_ver: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1global_color: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1doc_cod1: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1sign_self_cod: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1file_size: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1doc_date_end: TcxGridDBBandedColumn;
    cxGrid1Level1: TcxGridLevel;
    dxBarPopupMenu1: TdxBarPopupMenu;
    Query_VerBlob: TADOQuery;
    DS_VerBlob: TDataSource;
    dxBarButton1: TdxBarButton;
    dxBarButton2: TdxBarButton;
    dxBarButton3: TdxBarButton;
    dxBarButton4: TdxBarButton;
    cxGrid2: TcxGrid;
    cxGrid2DBBandedTableView1: TcxGridDBBandedTableView;
    cxGrid2DBBandedTableView1ver_id: TcxGridDBBandedColumn;
    cxGrid2DBBandedTableView1ver_name: TcxGridDBBandedColumn;
    cxGrid2DBBandedTableView1ver_date: TcxGridDBBandedColumn;
    cxGrid2Level1: TcxGridLevel;
    cxGrid2DBBandedTableView1ver_comment: TcxGridDBBandedColumn;
    Splitter1: TSplitter;
    Table_Ver: TADOTable;
    DS_Ver: TDataSource;
    cxStyleRepository1: TcxStyleRepository;
    cxStyle_Bold: TcxStyle;
    cxStyle_AgreeFactInc_Between: TcxStyle;
    cxStyle_AgreeFactInc_Sum: TcxStyle;
    cxStyle_AgreeFactInc_AddProfit: TcxStyle;
    cxStyle_ClientFrahtCard_Rashod: TcxStyle;
    cxStyle_ClientFrahtCard_Profitt: TcxStyle;
    cxStyle_AgreeFact: TcxStyle;
    cxStyle_Orders_cod: TcxStyle;
    cxStyle_Bargain_Cod: TcxStyle;
    cxStyle_FontRed: TcxStyle;
    cxStyle1: TcxStyle;
    cxStyle2: TcxStyle;
    cxStyle_ColorWhite: TcxStyle;
    cxGroupBox1: TcxGroupBox;
    cxTextEdit1: TcxTextEdit;
    ClientDS_VerBlob: TClientDataSet;
    ClientDS_VerBlobfile_id: TIntegerField;
    ClientDS_VerBlobfile_name: TStringField;
    ClientDS_VerBlobfile_describe: TStringField;
    ClientDS_VerBlobfile_date: TDateTimeField;
    ClientDS_VerBlobfile_cod: TStringField;
    ClientDS_VerBlobfile_size: TIntegerField;
    ClientDS_VerBlobfile_ver: TStringField;
    ClientDS_VerBlobdate_enter: TDateTimeField;
    ClientDS_VerBlobnew_file_date: TDateTimeField;
    ClientDS_VerBlobnew_file_size: TIntegerField;
    cxGrid1DBBandedTableView1new_file_date: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1new_file_size: TcxGridDBBandedColumn;
    dxBarLargeButton1: TdxBarLargeButton;
    dxBarButton5: TdxBarButton;
    procedure dxBarButton1Click(Sender: TObject);
    procedure dxBarButton2Click(Sender: TObject);
    procedure dxBarButton3Click(Sender: TObject);
    procedure dxBarButton4Click(Sender: TObject);
    procedure dxBarLargeButton12Click(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure dxBarLargeButton1Click(Sender: TObject);
    procedure cxGrid1DBBandedTableView1CustomDrawCell(Sender: TcxCustomGridTableView; ACanvas: TcxCanvas; AViewInfo: TcxGridTableDataCellViewInfo;
      var ADone: Boolean);
    procedure dxBarButton5Click(Sender: TObject);
  private
    Fstr_conn : string;
  public
    constructor Create(AOwner: TApplication; str_conn: string);
  end;

var
  fmMain: TfmMain;

implementation
   uses DocBlobAdd, FileCtrl, Raznoe;
{$R *.dfm}



constructor TfmMain.Create(AOwner: TApplication; str_conn: string);
begin
  inherited Create(AOwner);
  Screen.Cursor := crHourglass;

  Fstr_conn := str_conn;
  Lis.ConnectionString := Fstr_conn;

  Query_VerBlob.Connection := Lis;
  Query_VerBlob.Open;

  Table_Ver.Connection := Lis;
  Table_Ver.Open;

  cxTextEdit1.EditValue := StoreRegistryString(rgLoad, '\Software\RITRANS\Update_folder', 'folder',  '');

  ClientDS_VerBlob.CreateDataSet;
  ClientDS_VerBlob.LogChanges := False;

  dxBarLargeButton1Click(nil);

  Screen.Cursor := crDefault;
end;



procedure TfmMain.cxGrid1DBBandedTableView1CustomDrawCell(Sender: TcxCustomGridTableView; ACanvas: TcxCanvas; AViewInfo: TcxGridTableDataCellViewInfo;
  var ADone: Boolean);
  var d1, d2: TDateTime;
begin

  if (cxGrid1DBBandedTableView1new_file_size.Index = AViewInfo.Item.ID) then begin

    if AViewInfo.GridRecord.Values[cxGrid1DBBandedTableView1new_file_size.Index] <> AViewInfo.GridRecord.Values[cxGrid1DBBandedTableView1file_size.Index]
    then begin
      ACanvas.Font.Style := [fsBold];
      ACanvas.Font.Color := clRed
    end;

  end;

  if (cxGrid1DBBandedTableView1new_file_date.Index = AViewInfo.Item.ID) then begin

    if (AViewInfo.GridRecord.Values[cxGrid1DBBandedTableView1new_file_date.Index] <> null) and (AViewInfo.GridRecord.Values[cxGrid1DBBandedTableView1file_date.Index] <> null) then begin

      d1 := AViewInfo.GridRecord.Values[cxGrid1DBBandedTableView1new_file_date.Index];
      d1 := EncodeDateTime(YearOf(d1), MonthOf(d1), DayOf(d1), HourOf(d1), MinuteOf(d1), 0, 0);

      d2 := AViewInfo.GridRecord.Values[cxGrid1DBBandedTableView1file_date.Index];
      d2 := EncodeDateTime(YearOf(d2), MonthOf(d2), DayOf(d2), HourOf(d2), MinuteOf(d2), 0, 0);

      if d1<>d2
      then begin
        ACanvas.Font.Style := [fsBold];
        ACanvas.Font.Color := clRed
      end;

    end;



  end;


  if AViewInfo.GridRecord.Selected then begin
    ACanvas.Brush.Color := clNavy;
    ACanvas.Font.Color := clWhite;
    if AViewInfo.Focused then ACanvas.Brush.Color := clBlue;
  end;
end;

procedure TfmMain.dxBarButton1Click(Sender: TObject);
begin
  fmDocBlobAdd := TfmDocBlobAdd.Create(Application, Fstr_conn);
  if fmDocBlobAdd.ShowModal = mrOk then begin
    Query_VerBlob.Close;
    Query_VerBlob.Open;
  end;

end;

procedure TfmMain.dxBarButton2Click(Sender: TObject);
begin
  fmDocBlobAdd := TfmDocBlobAdd.Create(Application, Fstr_conn);
  fmDocBlobAdd._SetUpdate := cxGrid1DBBandedTableView1file_id.DataBinding.Field.AsInteger;
  if fmDocBlobAdd.ShowModal = mrOk then begin
    Query_VerBlob.Close;
    Query_VerBlob.Open;
  end;
end;

procedure TfmMain.dxBarButton3Click(Sender: TObject);
var i : integer;
   SP : TADOStoredProc;
begin
  if Application.MessageBox('Вы точно уверены, что хотите удалить?', 'Внимание', MB_OKCANCEL) = ID_OK then begin
    Screen.Cursor := crHourglass;

    SP := TADOStoredProc.Create(nil);
    SP.Connection := Lis;
    SP.ProcedureName := 'sp_ver_BLOB_modify;1';
    SP.Parameters.Refresh;
    for i := 0 to cxGrid1DBBandedTableView1.Controller.SelectedRowCount - 1 do begin
      SP.Close;
      SP.Parameters.Refresh;
      SP.Parameters.ParamByName('@type_action').Value := 2;
      SP.Parameters.ParamByName('@file_id').Value := cxGrid1DBBandedTableView1file_id.DataBinding.Field.AsInteger;;
      SP.ExecProc;
    end;

    Query_VerBlob.Close;
    Query_VerBlob.Open;
    Screen.Cursor := crDefault;
  end;

end;

procedure TfmMain.dxBarButton4Click(Sender: TObject);
var       SP : TADOStoredProc;
      folder : string;
   file_data : TArray<Byte>;
   file_name : string;
       hFile : THandle;
   num_write : Cardinal;
     err_cod : Cardinal;
begin
  if not SelectDirectory('Выберите папку...', '', folder) then
    Exit;

  Screen.Cursor := crHourGlass;

  SP := TADOStoredProc.Create(nil);
  SP.Connection := Lis;
  SP.ProcedureName := 'sp_ver_BLOB_modify';
  SP.Parameters.Refresh;
  SP.Parameters.ParamByName('@file_id'    ).Value := cxGrid1DBBandedTableView1file_id.DataBinding.Field.AsInteger;
  SP.Parameters.ParamByName('@type_action').Value := 3;
  SP.Open;

  file_data := SP.FieldByName('file_blob').AsBytes;
  file_name := SP.FieldByName('file_name').AsString;

  file_name := folder + '\' +  file_name;
  hFile:=CreateFile(PChar(file_name), Generic_Write, 0, nil, Create_Always, File_Attribute_Normal, 0);
  WriteFile(hFile, PAnsiChar(file_data)^, Length(file_data), num_write, nil);
  CloseHandle(hFile);

  SP.Free;
  Screen.Cursor := crDefault;
end;

procedure TfmMain.dxBarButton5Click(Sender: TObject);
var        SP : TADOStoredProc;
      AStream : TMemoryStream;
            s : TBytesStream;
            i : integer;
    file_name : string;
begin

  Screen.Cursor := crHourGlass;

  file_name := cxTextEdit1.Text + '\' + cxGrid1DBBandedTableView1file_name.DataBinding.Field.AsString;

  SP := TADOStoredProc.Create(nil);
  SP.Connection := Lis;
  SP.ProcedureName := 'sp_ver_BLOB_modify';
  SP.Parameters.Refresh;

  SP.Parameters.ParamByName('@file_id'      ).Value := cxGrid1DBBandedTableView1file_id.DataBinding.Field.AsInteger;
  SP.Parameters.ParamByName('@type_action'  ).Value := 1;
  SP.Parameters.ParamByName('@file_cod'     ).Value := cxGrid1DBBandedTableView1file_cod.DataBinding.Field.AsString;
  SP.Parameters.ParamByName('@file_date'    ).Value := cxGrid1DBBandedTableView1new_file_date.DataBinding.Field.AsDateTime;
  SP.Parameters.ParamByName('@file_describe').Value := cxGrid1DBBandedTableView1file_describe.DataBinding.Field.AsString;
  SP.Parameters.ParamByName('@file_size'    ).Value := cxGrid1DBBandedTableView1new_file_size.DataBinding.Field.AsInteger;
  SP.Parameters.ParamByName('@file_ver'     ).Value := GetVersion_old(file_name);

  s := TStringStream.Create();
  s.LoadFromFile(file_name);

  // ----- при обновлении документа файл передаётся пустым, если он не изменялся --------
  SP.Close;
  SP.Parameters.ParamByName('@file_blob').LoadFromStream(s, ftBlob);
  SP.Parameters.ParamByName('@file_name').Value := ExtractFileName(file_name);

  SP.ExecProc;
  s.Free;
  sp.Free;

  Screen.Cursor := crDefault;


  dxBarLargeButton1Click(nil);
end;

procedure TfmMain.dxBarLargeButton12Click(Sender: TObject);
var
  fileName    : string;
  fileDate    : Integer;
  newDateTime : TDateTime;

begin
  // Попытка открыть файл Unit1.DCU для текущего проекта
  fileName := 'C:\WWW\1.ani';



    // Now change the last modified date
    newDateTime := StrToDateTime('01.02.2003 04:05:56');
    FileSetDate(fileName, DateTimeToFileDate(newDateTime));

end;

procedure TfmMain.dxBarLargeButton1Click(Sender: TObject);
var path1: string;
    file_name : string;
    sr: TSearchRec;
    FileAttrs: Integer;
    LTime: TFileTime;
    Systemtime1: TSystemtime;
    Systemtime2: TSystemtime;
    Systemtime3: TSystemtime;
begin

  Query_VerBlob.Close;
  Query_VerBlob.Open;


  path1 := cxTextEdit1.Text;

  ClientDS_VerBlob.EmptyDataSet;
  Query_VerBlob.First;
  while not Query_VerBlob.Eof do begin

    ClientDS_VerBlob.Append;
    ClientDS_VerBlob.FieldByName('file_id').Value       := Query_VerBlob.FieldByName('file_id').Value;
    ClientDS_VerBlob.FieldByName('file_name').Value     := Query_VerBlob.FieldByName('file_name').Value;
    ClientDS_VerBlob.FieldByName('file_describe').Value := Query_VerBlob.FieldByName('file_describe').Value;
    ClientDS_VerBlob.FieldByName('file_date').Value     := Query_VerBlob.FieldByName('file_date').Value;
    ClientDS_VerBlob.FieldByName('file_cod').Value      := Query_VerBlob.FieldByName('file_cod').Value;
    ClientDS_VerBlob.FieldByName('file_size').Value     := Query_VerBlob.FieldByName('file_size').Value;
    ClientDS_VerBlob.FieldByName('file_ver').Value      := Query_VerBlob.FieldByName('file_ver').Value;
    ClientDS_VerBlob.FieldByName('date_enter').Value    := Query_VerBlob.FieldByName('date_enter').Value;

    if path1 <> '' then begin

      file_name := path1 + '\' + Query_VerBlob.FieldByName('file_name').Value;

      if SysUtils.FindFirst(file_name, faAnyFile, sr) = 0 then begin
        FileTimeToLocalFileTime( sr.FindData.ftLastWriteTime, LTime);
        FileTimeToSystemTime( LTime, SystemTime1 );

        ClientDS_VerBlob.FieldByName('new_file_date').Value := SystemTimeToDateTime(SystemTime1);
        ClientDS_VerBlob.FieldByName('new_file_size').Value := sr.Size;
      end else begin
        ClientDS_VerBlob.FieldByName('new_file_date').Value := null;
        ClientDS_VerBlob.FieldByName('new_file_size').Value := null;
      end;

      SysUtils.FindClose(sr);




    end;



    ClientDS_VerBlob.Post;

    Query_VerBlob.Next;
  end;
end;

procedure TfmMain.FormDestroy(Sender: TObject);
begin
  StoreRegistryString(rgSave, '\Software\RITRANS\Update_folder', 'folder',  cxTextEdit1.Text);
end;

end.
