unit FactTrackFiles;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms, Default,
  Dialogs, DB, ADODB, cxClasses, dxBar, cxStyles, ImgList, cxGraphics, ExtCtrls,
  cxControls, cxLookAndFeels, cxLookAndFeelPainters, cxCustomData, cxFilter, Period,
  cxData, cxDataStorage, cxEdit, cxDBData, cxCurrencyEdit, cxCheckBox,
  cxColorComboBox, cxGridLevel, cxGridCustomTableView, cxGridTableView,
  cxGridBandedTableView, cxGridDBBandedTableView, cxGridCustomView, cxGrid,
  cxPropertiesStore, cxPC, ShellAPI, Other, dxSkinsCore, dxSkinsDefaultPainters,
  dxSkinscxPCPainter, dxSkinsdxBarPainter, DateUtils, ComObj, DBClient, dxSkinBlack, dxSkinBlue, dxSkinBlueprint,
  dxSkinCaramel, dxSkinCoffee, dxSkinDarkRoom, dxSkinDarkSide, dxSkinDevExpressDarkStyle, dxSkinDevExpressStyle,
  dxSkinFoggy, dxSkinGlassOceans, dxSkinHighContrast, dxSkiniMaginary, dxSkinLilian, dxSkinLiquidSky,
  dxSkinLondonLiquidSky, dxSkinMcSkin, dxSkinMetropolis, dxSkinMetropolisDark, dxSkinMoneyTwins, dxSkinOffice2007Black,
  dxSkinOffice2007Blue, dxSkinOffice2007Green, dxSkinOffice2007Pink, dxSkinOffice2007Silver, dxSkinOffice2010Black,
  dxSkinOffice2010Blue, dxSkinOffice2010Silver, dxSkinOffice2013DarkGray, dxSkinOffice2013LightGray,
  dxSkinOffice2013White, dxSkinPumpkin, dxSkinSeven, dxSkinSevenClassic, dxSkinSharp, dxSkinSharpPlus, dxSkinSilver,
  dxSkinSpringTime, dxSkinStardust, dxSkinSummer2008, dxSkinTheAsphaltWorld, dxSkinValentine, dxSkinVS2010,
  dxSkinWhiteprint, dxSkinXmas2008Blue, cxNavigator, dxSkinOffice2016Colorful,
  dxSkinOffice2016Dark, dxSkinVisualStudio2013Blue, dxSkinVisualStudio2013Dark,
  dxSkinVisualStudio2013Light, System.ImageList, dxBarBuiltInMenu, cxImageList, dxSkinTheBezier, cxDataControllerConditionalFormattingRulesManagerDialog,
  dxDateRanges, dxSkinOffice2019Colorful;

type
  TfmFactTrackFiles = class(TForm)
    ADOFactTrack: TADOConnection;
    Query_FactTrackFiles: TADOQuery;
    DS_FactTrackFiles: TDataSource;
    dxBarManager1: TdxBarManager;
    dxBarManager1Bar1: TdxBar;
    dxBarButton1: TdxBarButton;
    dxBarButton2: TdxBarButton;
    dxBarButton3: TdxBarButton;
    dxBarSubItem1: TdxBarSubItem;
    dxBarButton4: TdxBarButton;
    dxBarButton5: TdxBarButton;
    cxStyleRepository1: TcxStyleRepository;
    cxStyle1: TcxStyle;
    cxImageList1: TcxImageList;
    dxBarButton6: TdxBarButton;
    dxBarButton7: TdxBarButton;
    cxPropertiesStore1: TcxPropertiesStore;
    cxGrid1: TcxGrid;
    cxGrid1DBBandedTableView1: TcxGridDBBandedTableView;
    cxGrid1DBBandedTableView1files_track_id: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1users_owner_id: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1FIO_users_owner: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1users_group_id: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1global_color: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1date_enter: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1files_format_id: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1files_format_name: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1files_format_cod: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1files_name: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1files_date: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1files_rows_count: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1files_rows_load: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1set_error: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1files_status: TcxGridDBBandedColumn;
    cxGrid1Level1: TcxGridLevel;
    dxBarPopupMenu1: TdxBarPopupMenu;
    dxBarButton8: TdxBarButton;
    dxBarSubItem2: TdxBarSubItem;
    dxBarButton9: TdxBarButton;
    dxBarButton10: TdxBarButton;
    dxBarButton11: TdxBarButton;
    dxBarButton12: TdxBarButton;
    SaveDialog1: TSaveDialog;
    cxGrid1DBBandedTableView1files_load_date_begin: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1files_load_date_end: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1set_ftp: TcxGridDBBandedColumn;
    dxBarButton13: TdxBarButton;
    dxBarButton14: TdxBarButton;
    dxBarButton15: TdxBarButton;
    dxBarButton16: TdxBarButton;
    dxBarButton17: TdxBarButton;
    cxPageControl1: TcxPageControl;
    cxTabSheet1: TcxTabSheet;
    cxTabSheet2: TcxTabSheet;
    cxGrid1DBBandedTableView1duration: TcxGridDBBandedColumn;
    cxStyle_WhiteColor: TcxStyle;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure dxBarButton3Click(Sender: TObject);
    procedure dxBarButton4Click(Sender: TObject);
    procedure dxBarButton5Click(Sender: TObject);
    procedure dxBarButton1Click(Sender: TObject);
    procedure dxBarButton6Click(Sender: TObject);
    procedure dxBarButton2Click(Sender: TObject);
    procedure ADOFactTrackExecuteComplete(Connection: TADOConnection; RecordsAffected: Integer; const Error: Error; var EventStatus: TEventStatus; const Command: _Command;  const Recordset: _Recordset);
    procedure dxBarButton7Click(Sender: TObject);
    procedure dxBarButton9Click(Sender: TObject);
    procedure dxBarButton11Click(Sender: TObject);
    procedure dxBarButton12Click(Sender: TObject);
    procedure dxBarButton8Click(Sender: TObject);
    procedure cxGrid1DBBandedTableView1CustomDrawCell(Sender: TcxCustomGridTableView; ACanvas: TcxCanvas; AViewInfo: TcxGridTableDataCellViewInfo; var ADone: Boolean);
    procedure cxGrid1DBBandedTableView1CustomDrawColumnHeader(Sender: TcxGridTableView; ACanvas: TcxCanvas; AViewInfo: TcxGridColumnHeaderViewInfo; var ADone: Boolean);
    procedure cxGrid1DBBandedTableView1FocusedItemChanged(Sender: TcxCustomGridTableView; APrevFocusedItem, AFocusedItem: TcxCustomGridTableItem);
    procedure cxGrid1DBBandedTableView1KeyPress(Sender: TObject; var Key: Char);
    procedure cxGrid1DBBandedTableView1DataControllerFilterChanged(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure dxBarButton13Click(Sender: TObject);
    procedure dxBarPopupMenu1Popup(Sender: TObject);
    procedure dxBarButton14Click(Sender: TObject);
    procedure dxBarButton15Click(Sender: TObject);
    procedure dxBarButton17Click(Sender: TObject);
    procedure cxPageControl1Change(Sender: TObject);
  private
    Fdate1, Fdate2   : TDateTime;
  public
    Fusr_pwd         : PUser_pwd;
    constructor Create(AOwner: TApplication; usr_pwd: PUser_pwd);
  end;

var
  fmFactTrackFiles: TfmFactTrackFiles;

function CreateWndFactTrackFiles(AppHand: THandle; usr_pwd: PUser_pwd): variant; export;

implementation
  uses FactTrackFilesAdd, Raznoe;

{$R *.dfm}

function CreateWndFactTrackFiles(AppHand: THandle; usr_pwd: PUser_pwd): variant; export;
begin
    Application.Handle := AppHand;
  try
    fmFactTrackFiles := TfmFactTrackFiles.Create(Application, usr_pwd);
    //-- изменить по мере необходимости возвращаемых параметров
    if  fmFactTrackFiles.ShowModal = mrOk then result := VarArrayOf([-9, '']);
  finally
    fmFactTrackFiles.Free;
  end;
end;


procedure TfmFactTrackFiles.ADOFactTrackExecuteComplete(Connection: TADOConnection; RecordsAffected: Integer; const Error: Error; var EventStatus: TEventStatus; const Command: _Command; const Recordset: _Recordset);
begin
  if EventStatus = esErrorsOccured then begin
    Application.MessageBox(PWideChar(Error.Description), 'Внимание', MB_OK);
  end;
end;

constructor TfmFactTrackFiles.Create(AOwner: TApplication; usr_pwd: PUser_pwd);
begin
  Screen.Cursor := -11;
  inherited Create(nil);

  WindowState := wsMaximized;

  Fusr_pwd := usr_pwd;

  ADOFactTrack.Connected := False;
  ADOFactTrack.ConnectionString := 'Persist Security Info=True;Provider=SQLOLEDB.1;User ID='+Fusr_pwd^.user_name+';Password='+ Fusr_pwd^.user_pass +';Initial Catalog='+Fusr_pwd^.catalog+';Data Source='+Fusr_pwd^.server+';';
  ADOFactTrack.Connected := True;

//  dxBarSubItem1.Caption := StoreRegistryDate(rgLoad, '\Software\Lis1\DateTime\FactTrackFiles', Fdate1, Fdate2);

  Fdate1 := IncMonth(Date,-1);
  Fdate1 := Fdate1 - DayOf(Fdate1) + 1;
  Fdate2 := IncMonth(Date) - DayOf(IncMonth(Date));

  dxBarSubItem1.Caption := FormatDateTime('mmm yy', Fdate1) + ' - ' + FormatDateTime('mmm yy', Fdate2);

  Query_FactTrackFiles.Parameters.ParamByName('date1').Value := Fdate1;
  Query_FactTrackFiles.Parameters.ParamByName('date2').Value := Fdate2;
  Query_FactTrackFiles.Parameters.ParamByName('type_in_out').Value := cxPageControl1.ActivePageIndex;
  Query_FactTrackFiles.Open;

  StoreRegistryGrid(rgLoad,'\Software\Lis1\FactTrackFiles_Grids\MainGrids', cxGrid1DBBandedTableView1);

  Screen.Cursor := 0;
end;


procedure TfmFactTrackFiles.cxGrid1DBBandedTableView1CustomDrawCell(Sender: TcxCustomGridTableView; ACanvas: TcxCanvas; AViewInfo: TcxGridTableDataCellViewInfo; var ADone: Boolean);
begin
//  if (AViewInfo.GridRecord.Values[cxGrid1DBBandedTableView1global_color.Index]<>NULL) then ACanvas.Brush.Color := AViewInfo.GridRecord.Values[cxGrid1DBBandedTableView1global_color.Index];

  if (AViewInfo.GridRecord.Values[cxGrid1DBBandedTableView1files_status.Index]<>NULL) then begin
    if (AViewInfo.GridRecord.Values[cxGrid1DBBandedTableView1files_status.Index] = 'Загрузка...') then
      ACanvas.Font.Style := [fsBold];
  end;

  if (AViewInfo.GridRecord.Values[cxGrid1DBBandedTableView1files_status.Index]<>NULL) then begin
    if (AViewInfo.GridRecord.Values[cxGrid1DBBandedTableView1files_status.Index] = 'Загружен') then
      ACanvas.Font.Color := clGray;
  end;

  if AViewInfo.GridRecord.Selected or AViewInfo.GridRecord.Focused then begin
    ACanvas.Brush.Color := clNavy;
    ACanvas.Font.Color := clWhite;
    if AViewInfo.Focused then ACanvas.Brush.Color := clBlue;
  end;

end;

procedure TfmFactTrackFiles.cxGrid1DBBandedTableView1CustomDrawColumnHeader(Sender: TcxGridTableView; ACanvas: TcxCanvas; AViewInfo: TcxGridColumnHeaderViewInfo; var ADone: Boolean);
begin
  DrawcxGridColumnOnFocused(Sender, ACanvas, AViewInfo);
end;

procedure TfmFactTrackFiles.cxGrid1DBBandedTableView1DataControllerFilterChanged(Sender: TObject);
begin
  DrawcxGridColumnOnFiltered(Sender);
end;

procedure TfmFactTrackFiles.cxGrid1DBBandedTableView1FocusedItemChanged(Sender: TcxCustomGridTableView; APrevFocusedItem, AFocusedItem: TcxCustomGridTableItem);
begin
  Sender.Painter.Invalidate;
end;

procedure TfmFactTrackFiles.cxGrid1DBBandedTableView1KeyPress(Sender: TObject; var Key: Char);
begin
  FilterColumnGridOnKeyPress(TcxGridDBBandedTableView(TcxGridSite(Sender).GridView), Key);
end;

procedure TfmFactTrackFiles.cxPageControl1Change(Sender: TObject);
begin
  Query_FactTrackFiles.Close;
  Query_FactTrackFiles.Parameters.ParamByName('type_in_out').Value := cxPageControl1.ActivePageIndex;
  Query_FactTrackFiles.Open;

  // Добавление и редактирование для Исходящих файлов невозможно
  dxBarButton1.Enabled := (cxPageControl1.ActivePageIndex = 0);
  dxBarButton6.Enabled := (cxPageControl1.ActivePageIndex = 0);
  dxBarButton13.Enabled := (cxPageControl1.ActivePageIndex = 0);

  // имена колонок
  cxGrid1DBBandedTableView1files_date.Caption := iif(cxPageControl1.ActivePageIndex = 0, 'Дата запроса файла', 'Дата создания файла');
  cxGrid1DBBandedTableView1files_load_date_begin.Caption := iif(cxPageControl1.ActivePageIndex = 0, 'Дата начала загрузки', 'Дата начала передачи');
  cxGrid1DBBandedTableView1files_load_date_end.Caption := iif(cxPageControl1.ActivePageIndex = 0, 'Дата окончания загрузки', 'Дата окончания передачи');
end;

procedure TfmFactTrackFiles.dxBarButton11Click(Sender: TObject);
begin
  SetdxDBGridColumns(cxGrid1DBBandedTableView1);
end;

procedure TfmFactTrackFiles.dxBarButton12Click(Sender: TObject);
begin
  cxGrid1DBBandedTableView1.OptionsView.GroupByBox := not cxGrid1DBBandedTableView1.OptionsView.GroupByBox;
end;

procedure TfmFactTrackFiles.dxBarButton13Click(Sender: TObject);
var                        Q : TADOQuery;
  sp_fact_track_files_modify : TADOStoredProc;
        sp_fact_track_delete : TADOStoredProc;
         sp_fact_tech_modify : TADOStoredProc;
        sp_fact_param_modify : TADOStoredProc;
       sp_fact_milage_modify : TADOStoredProc;
              files_track_id : integer;

begin
  if Application.MessageBox('Действительно хотите загрузить файл заново?', 'ВНИМАНИЕ', MB_OKCANCEL+MB_ICONWARNING) = IDOK then begin
    files_track_id := cxGrid1DBBandedTableView1files_track_id.DataBinding.Field.Value;


    // Удаление дислокации
    if (cxGrid1DBBandedTableView1files_format_cod.DataBinding.Field.Value = '00001') OR
       (cxGrid1DBBandedTableView1files_format_cod.DataBinding.Field.Value = '00002') OR
       (cxGrid1DBBandedTableView1files_format_cod.DataBinding.Field.Value = '00003') OR
       (cxGrid1DBBandedTableView1files_format_cod.DataBinding.Field.Value = '00004') then begin
      sp_fact_track_delete := TADOStoredProc.Create(nil);
      sp_fact_track_delete.Connection := ADOFactTrack;
      sp_fact_track_delete.ProcedureName := 'sp_fact_track_delete';
      sp_fact_track_delete.Parameters.Refresh;

      Q := TADOQuery.Create(nil);
      Q.Connection := ADOFactTrack;
      Q.SQL.Add('SELECT fact_track_id FROM fact_track_vagon WHERE files_id = ' + IntToStr(files_track_id));
      Q.Open;
      while not Q.Eof do begin
        sp_fact_track_delete.Parameters.ParamByName('@fact_track_id').Value := Q.FieldByName('fact_track_id').Value;
        sp_fact_track_delete.Parameters.ParamByName('@type_track'   ).Value := 0;
        try
          sp_fact_track_delete.ExecProc;
        except
        end;
        ShowTextMessage('Удаление вагонов...' + #10 + 'Осталось '+IntToStr(Q.RecordCount - Q.RecNo)+' записей...', False);
        Q.Next;
      end;
      Q.Free;
      sp_fact_track_delete.Free;
      ShowTextMessage;
    end;

    // Удаление паспорта
    if (cxGrid1DBBandedTableView1files_format_cod.DataBinding.Field.Value = '01000') then begin
      sp_fact_param_modify := TADOStoredProc.Create(nil);
      sp_fact_param_modify.Connection := ADOFactTrack;
      sp_fact_param_modify.ProcedureName := 'sp_fact_param_modify';
      sp_fact_param_modify.Parameters.Refresh;

      Q := TADOQuery.Create(nil);
      Q.Connection := ADOFactTrack;
      Q.SQL.Add('SELECT fact_param_id FROM fact_param WHERE file_load_name = ''' + cxGrid1DBBandedTableView1files_name.DataBinding.Field.AsString + '''');
      Q.Open;
      while not Q.Eof do begin
        sp_fact_param_modify.Parameters.ParamByName('@fact_param_id').Value := Q.FieldByName('fact_param_id').Value;
        sp_fact_param_modify.Parameters.ParamByName('@type_action' ).Value := 2;
        try
          sp_fact_param_modify.ExecProc;
        except
        end;
        ShowTextMessage('Удаление вагонов...' + #10 + 'Осталось '+IntToStr(Q.RecordCount - Q.RecNo)+' записей...', False);
        Q.Next;
      end;
      Q.Free;
      sp_fact_param_modify.Free;
      ShowTextMessage;
    end;

    // Удаление тех. состояния
    if (cxGrid1DBBandedTableView1files_format_cod.DataBinding.Field.Value = '02000') then begin
      sp_fact_tech_modify := TADOStoredProc.Create(nil);
      sp_fact_tech_modify.Connection := ADOFactTrack;
      sp_fact_tech_modify.ProcedureName := 'sp_fact_tech_modify';
      sp_fact_tech_modify.Parameters.Refresh;

      Q := TADOQuery.Create(nil);
      Q.Connection := ADOFactTrack;
      Q.SQL.Add('SELECT fact_tech_id FROM view_fact_tech WHERE files_id = ' + IntToStr(files_track_id));
      Q.Open;
      while not Q.Eof do begin
        sp_fact_tech_modify.Parameters.ParamByName('@fact_tech_id').Value := Q.FieldByName('fact_tech_id').Value;
        sp_fact_tech_modify.Parameters.ParamByName('@type_action' ).Value := 2;
        try
          sp_fact_tech_modify.ExecProc;
        except
        end;
        ShowTextMessage('Удаление вагонов...' + #10 + 'Осталось '+IntToStr(Q.RecordCount - Q.RecNo)+' записей...', False);
        Q.Next;
      end;
      Q.Free;
      sp_fact_tech_modify.Free;
      ShowTextMessage;
    end;

    // Удаление пробегов
    if (cxGrid1DBBandedTableView1files_format_cod.DataBinding.Field.Value = '04000') then begin
      sp_fact_milage_modify := TADOStoredProc.Create(nil);
      sp_fact_milage_modify.Connection := ADOFactTrack;
      sp_fact_milage_modify.ProcedureName := 'sp_fact_tech_modify';
      sp_fact_milage_modify.Parameters.Refresh;

      Q := TADOQuery.Create(nil);
      Q.Connection := ADOFactTrack;
      Q.SQL.Add('SELECT fact_milage_id FROM fact_milage WHERE files_id = ' + IntToStr(files_track_id));
      Q.Open;
      while not Q.Eof do begin
        sp_fact_milage_modify.Parameters.ParamByName('@fact_milage_id').Value := Q.FieldByName('fact_milage_id').Value;
        sp_fact_milage_modify.Parameters.ParamByName('@type_action'   ).Value := 2;
        try
          sp_fact_milage_modify.ExecProc;
        except
        end;
        ShowTextMessage('Удаление вагонов...' + #10 + 'Осталось '+IntToStr(Q.RecordCount - Q.RecNo)+' записей...', False);
        Q.Next;
      end;
      Q.Free;
      sp_fact_milage_modify.Free;
      ShowTextMessage;
    end;


    Screen.Cursor := crHourglass;
    sp_fact_track_files_modify := TADOStoredProc.Create(nil);
    sp_fact_track_files_modify.Connection := ADOFactTrack;
    sp_fact_track_files_modify.ProcedureName := 'sp_fact_track_files_modify';
    sp_fact_track_files_modify.CommandTimeout := 180;
    sp_fact_track_files_modify.Parameters.Refresh;
    sp_fact_track_files_modify.Parameters.ParamByName('@files_track_id' ).Value := cxGrid1DBBandedTableView1files_track_id.DataBinding.Field.Value;
    sp_fact_track_files_modify.Parameters.ParamByName('@type_action'    ).Value := 12;
    try
      sp_fact_track_files_modify.ExecProc;
    except
    end;
    sp_fact_track_files_modify.Free;
    RefreshQueryGrid(cxGrid1DBBandedTableView1, 'files_track_id');
    Screen.Cursor := crDefault;
  end;
end;

procedure TfmFactTrackFiles.dxBarButton14Click(Sender: TObject);
type
  TFunc = function(AppHand: THandle; f: boolean; usr_pwd: PUser_pwd) : variant;
  TFunc_Milage = function(AppHand: THandle; f: boolean; conn: TADOConnection) : variant;
var   FDic : TFunc;
    FDic_Milage : TFunc_Milage;
    handle : THandle;
         v : Variant;
begin
  //Открыть дислокацию
  if (cxGrid1DBBandedTableView1files_format_cod.DataBinding.Field.Value = '00001') OR
     (cxGrid1DBBandedTableView1files_format_cod.DataBinding.Field.Value = '00002') OR
     (cxGrid1DBBandedTableView1files_format_cod.DataBinding.Field.Value = '00003') OR
     (cxGrid1DBBandedTableView1files_format_cod.DataBinding.Field.Value = '00004') then begin
  end;

  //  Паспорта
  if (cxGrid1DBBandedTableView1files_format_cod.DataBinding.Field.Value = '01000') then begin
    handle := LoadLibrary('dictionary.dll');
    @FDic := GetProcAddress(handle, 'CreateWndFactParam');
    v := FDic(Application.Handle, False, Fusr_pwd);
    FreeLibrary(handle);
  end;

  //  Ремонты
  if (cxGrid1DBBandedTableView1files_format_cod.DataBinding.Field.Value = '02000') then begin
  end;

  //  Узлы и детали
  if (cxGrid1DBBandedTableView1files_format_cod.DataBinding.Field.Value = '03000') then begin
    handle := LoadLibrary('dictionary.dll');
    @FDic := GetProcAddress(handle, 'CreateWndFactUnit');
    v := FDic(Application.Handle, False, Fusr_pwd);
    FreeLibrary(handle);
  end;

  //  Пробеги
  if (cxGrid1DBBandedTableView1files_format_cod.DataBinding.Field.Value = '04000') then begin
    handle := LoadLibrary('dictionary.dll');
    @FDic_Milage := GetProcAddress(handle, 'CreateWndFactMilage');
    v := FDic_Milage(Application.Handle, False, ADOFactTrack);
    FreeLibrary(handle);
  end;
end;

procedure TfmFactTrackFiles.dxBarButton15Click(Sender: TObject);
var sp_fact_track_files_modify : TADOStoredProc;
                    Q : TADOQuery;
            file_data : RawByteString;
                 data : TArray<Byte>;
                   fd : TStringStream;
           cnt_record : integer;
           cnt_column : integer;
           array_data : Variant;
  exApp, exWks, exWkb : Variant;
  range, cell1, cell2 : Variant;
        range_caption : Variant;
         range_footer : Variant;
             str_list : TStringList;
         Client_Vagon : TClientDataSet;
          file_pos, i : integer;
                  str : string;
begin

  ShowTextMessage('Подготовка данных...', False);

  sp_fact_track_files_modify := TADOStoredProc.Create(nil);
  sp_fact_track_files_modify.Connection := ADOFactTrack;
  sp_fact_track_files_modify.ProcedureName := 'sp_fact_track_files_modify';
  sp_fact_track_files_modify.Parameters.Refresh;
  sp_fact_track_files_modify.Parameters.ParamByName('@files_track_id' ).Value := cxGrid1DBBandedTableView1files_track_id.DataBinding.Field.Value;
  sp_fact_track_files_modify.Parameters.ParamByName('@type_action'    ).Value := 10;
  sp_fact_track_files_modify.Open;
  data  := LZHUnPack(sp_fact_track_files_modify.FieldByName('doc_image').AsBytes);
  fd    := TStringStream.Create(data);
  file_data := fd.DataString;

  sp_fact_track_files_modify.Free;

  Q := TADOQuery.Create(nil);
  Q.Connection := ADOFactTrack;
  Q.CommandTimeout   := 600;

  if  (cxGrid1DBBandedTableView1files_format_cod.DataBinding.Field.Value = '00002') then begin

    Q.SQL.Add('DECLARE @xml	xml');
    Q.SQL.Add('SET @xml = ''' + RawByteString(file_data) + '''');
    Q.SQL.Add('SELECT	ref.value(''@Number'',''varchar(max)'') Number,');
    Q.SQL.Add('       case when isdate(ref.value(''@DateBegin'',''varchar(max)'')) = 1 then ref.value(''@DateBegin'',''datetime'') else null end DateBegin,');
    Q.SQL.Add('       ref.value(''@Weight'',''varchar(max)'') Weight,');
    Q.SQL.Add('       ref.value(''@IsEmpty'',''varchar(max)'') IsEmpty,');
    Q.SQL.Add('       ref.value(''@StationDest'',''varchar(max)'') StationDest,');
    Q.SQL.Add('       ref.value(''@CodeCargo'',''varchar(max)'') CodeCargo,');
    Q.SQL.Add('       ref.value(''@RW_grpol'',''varchar(max)'') RW_grpol,');
    Q.SQL.Add('       ref.value(''@IsFaulty'',''varchar(max)'') IsFaulty,');
    Q.SQL.Add('       ref.value(''@StationBegin'',''varchar(max)'') StationBegin,');
    Q.SQL.Add('       ref.value(''@CodeOper'',''varchar(max)'') CodeOper,');
    Q.SQL.Add('       case when isdate(ref.value(''@DateOper'',''varchar(max)'')) = 1 then ref.value(''@DateOper'',''datetime'') else null end DateOper,');
    Q.SQL.Add('       ref.value(''@StationOper'',''varchar(max)'') StationOper,');
    Q.SQL.Add('       ref.value(''@RW_Rash'',''varchar(max)'') RW_Rash,');
    Q.SQL.Add('       ref.value(''@RW_Dest'',''varchar(max)'') RW_Dest,');
    Q.SQL.Add('       ref.value(''@NumTrain'',''varchar(max)'') NumTrain,');
    Q.SQL.Add('       ref.value(''@DocNumber'',''varchar(max)'') DocNumber,');
    Q.SQL.Add('       ref.value(''@OKPO_grpol'',''varchar(max)'') OKPO_grpol,');
    Q.SQL.Add('       ref.value(''@OKPO_grotpr'',''varchar(max)'') OKPO_grotpr,');
    Q.SQL.Add('       ref.value(''@RW_grpol'',''varchar(max)'') RW_grpol,');
    Q.SQL.Add('       ref.value(''@RW_grotpr'',''varchar(max)'') RW_grotpr,');
    Q.SQL.Add('       case when isdate(ref.value(''@DateLoading'',''varchar(max)'')) = 1 then ref.value(''@DateLoading'',''datetime'') else null end DateLoading,');
    Q.SQL.Add('       ref.value(''@I1'',''varchar(max)'') I1,');
    Q.SQL.Add('       ref.value(''@I2'',''varchar(max)'') I2,');
    Q.SQL.Add('       ref.value(''@I3'',''varchar(max)'') I3,');

    Q.SQL.Add('       ref.value(''@idReis'',''varchar(max)'') idReis,');
    Q.SQL.Add('       case when isdate(ref.value(''@DatePrib'',''varchar(max)'')) = 1 then ref.value(''@DatePrib'',''datetime'') else null end DatePrib,');
    Q.SQL.Add('       case when isdate(ref.value(''@DateVygr'',''varchar(max)'')) = 1 then ref.value(''@DateVygr'',''datetime'') else null end DateVygr');

    Q.SQL.Add('FROM	@xml.nodes(''/xml/Client/Car'') as node(ref)');
    Q.Open;


    exApp := CreateOleObject('Excel.Application');
    exWkb := exApp.Workbooks.Add;
    exWkb := exApp.ActiveWorkbook;
    exWks := exWkb.WorkSheets[1];


    cnt_record := Q.RecordCount;
    cnt_column := 26;
    array_data := VarArrayCreate([1, cnt_record+4, 1, cnt_column+1], varVariant);

    array_data[1, 1] := 'Number';
    array_data[1, 2] := 'DateBegin';
    array_data[1, 3] := 'Weight';
    array_data[1, 4] := 'IsEmpty';
    array_data[1, 5] := 'StationDest';
    array_data[1, 6] := 'CodeCargo';
    array_data[1, 7] := 'RW_grpol';
    array_data[1, 8] := 'IsFaulty';
    array_data[1, 9] := 'StationBegin';
    array_data[1,10] := 'CodeOper';
    array_data[1,11] := 'DateOper';
    array_data[1,12] := 'StationOper';
    array_data[1,13] := 'RW_Rash';
    array_data[1,14] := 'RW_Dest';
    array_data[1,15] := 'NumTrain';
    array_data[1,16] := 'DocNumber';
    array_data[1,17] := 'OKPO_grpol';
    array_data[1,18] := 'OKPO_grotpr';
    array_data[1,19] := 'RW_grpol';
    array_data[1,20] := 'RW_grotpr';
    array_data[1,21] := 'DateLoading';
    array_data[1,22] := 'I1';
    array_data[1,23] := 'I2';
    array_data[1,24] := 'I3';
    array_data[1,25] := 'idReis';
    array_data[1,26] := 'DatePrib';
    array_data[1,27] := 'DateVygr';

    while not Q.Eof do begin
      array_data[Q.RecNo+1, 1] := Q.FieldByName('Number').Value;
      array_data[Q.RecNo+1, 2] := Q.FieldByName('DateBegin').Value;
      array_data[Q.RecNo+1, 3] := Q.FieldByName('Weight').Value;
      array_data[Q.RecNo+1, 4] := Q.FieldByName('IsEmpty').Value;
      array_data[Q.RecNo+1, 5] := '''' + Q.FieldByName('StationDest').AsString;
      array_data[Q.RecNo+1, 6] := Q.FieldByName('CodeCargo').Value;
      array_data[Q.RecNo+1, 7] := Q.FieldByName('RW_grpol').Value;
      array_data[Q.RecNo+1, 8] := Q.FieldByName('IsFaulty').Value;
      array_data[Q.RecNo+1, 9] := '''' + Q.FieldByName('StationBegin').AsString;
      array_data[Q.RecNo+1,10] := '''' + Q.FieldByName('CodeOper').Value;
      array_data[Q.RecNo+1,11] := Q.FieldByName('DateOper').Value;
      array_data[Q.RecNo+1,12] := '''' + Q.FieldByName('StationOper').AsString;
      array_data[Q.RecNo+1,13] := Q.FieldByName('RW_Rash').Value;
      array_data[Q.RecNo+1,14] := Q.FieldByName('RW_Dest').Value;
      array_data[Q.RecNo+1,15] := Q.FieldByName('NumTrain').Value;
      array_data[Q.RecNo+1,16] := Q.FieldByName('DocNumber').Value;
      array_data[Q.RecNo+1,17] := Q.FieldByName('OKPO_grpol').Value;
      array_data[Q.RecNo+1,18] := Q.FieldByName('OKPO_grotpr').Value;
      array_data[Q.RecNo+1,19] := Q.FieldByName('RW_grpol').Value;
      array_data[Q.RecNo+1,20] := Q.FieldByName('RW_grotpr').Value;
      array_data[Q.RecNo+1,21] := Q.FieldByName('DateLoading').Value;
      array_data[Q.RecNo+1,22] := Q.FieldByName('I1').Value;
      array_data[Q.RecNo+1,23] := Q.FieldByName('I2').Value;
      array_data[Q.RecNo+1,24] := Q.FieldByName('I3').Value;
      array_data[Q.RecNo+1,25] := '''' + Q.FieldByName('idReis').AsString;
      array_data[Q.RecNo+1,26] := Q.FieldByName('DatePrib').Value;
      array_data[Q.RecNo+1,27] := Q.FieldByName('DateVygr').Value;

      ShowTextMessage('Подготовка данных...' + #10 + 'Строк ' + IntToStr(Q.RecNo) + ' из ' + IntToStr(Q.RecordCount) + '...', False);
      Q.Next;
    end;

    ShowTextMessage('Вывод в Excel...', False);

    // Левая верхняя ячейка области, в которую будем выводить данные
    cell1 := exWks.Cells[3, 2];
    // Правая нижняя ячейка области, в которую будем выводить данные
    cell2 := exWks.Cells[3 + cnt_record - 1, 2 + cnt_column - 1];
    // Область, в которую будем выводить данные
    range := exWks.Range[cell1, cell2];

    // Область заголовка
    cell1 := exWks.Cells[3, 2];
    cell2 := exWks.Cells[3, 2 + cnt_column - 1];
    range_caption := exWks.Range[cell1, cell2];

    // Область итогов
    cell1 := exWks.Cells[3 + cnt_record - 1, 2];
    cell2 := exWks.Cells[3 + cnt_record - 1, 2 + cnt_column - 1];
    range_footer := exWks.Range[cell1, cell2];

    // Вывод данных
    range.Value := array_data;

    exWks.Cells[4 + cnt_record - 2, 2].Value := '=COUNTA(R[-1]C:R[-' + IntToStr(cnt_record-2) + ']C)';

    VarClear(array_data);

    ShowTextMessage('Печать таблицы в Excel...' + #10 + 'Форматирование таблицы...', False);
    exApp.ActiveWindow.DisplayGridlines := False;

    range.Columns[2].NumberFormat := 'ДД'+FormatSettings.DateSeparator+'ММ'+FormatSettings.DateSeparator+'ГГГГ ч:мм';
    range.Columns[10].NumberFormat := 'ДД'+FormatSettings.DateSeparator+'ММ'+FormatSettings.DateSeparator+'ГГГГ ч:мм';
    range.Columns[20].NumberFormat := 'ДД'+FormatSettings.DateSeparator+'ММ'+FormatSettings.DateSeparator+'ГГГГ ч:мм';
    range.Columns[25].NumberFormat := 'ДД'+FormatSettings.DateSeparator+'ММ'+FormatSettings.DateSeparator+'ГГГГ ч:мм';
    range.Columns[26].NumberFormat := 'ДД'+FormatSettings.DateSeparator+'ММ'+FormatSettings.DateSeparator+'ГГГГ ч:мм';

    range.Borders[7].LineStyle := 1;
    range.Borders[8].LineStyle := 1;
    range.Borders[9].LineStyle := 1;
    range.Borders[10].LineStyle := 1;
    range.Borders[11].LineStyle := 1;
    range.Borders[12].LineStyle := 1;

    range.Borders[7].Color := $C0C0C0;
    range.Borders[8].Color := $C0C0C0;
    range.Borders[9].Color := $C0C0C0;
    range.Borders[10].Color := $C0C0C0;
    range.Borders[11].Color := $C0C0C0;
    range.Borders[12].Color := $C0C0C0;

    range_caption.Interior.Color := $CCFFCC;
    range_caption.Borders[7].Color := $000000;
    range_caption.Borders[8].Color := $000000;
    range_caption.Borders[9].Color := $000000;
    range_caption.Borders[10].Color := $000000;
    range_caption.Borders[11].Color := $000000;
    range_caption.Borders[12].Color := $000000;

    range_footer.Interior.Color := $CCFFCC;
    range_footer.Borders[7].Color := $000000;
    range_footer.Borders[8].Color := $000000;
    range_footer.Borders[9].Color := $000000;
    range_footer.Borders[10].Color := $000000;
    range_footer.Borders[11].Color := $000000;
    range_footer.Borders[12].Color := $000000;


    exWks.Cells.Font.Size := 8;
    exWks.Cells.Font.Name := 'MS Sans Serif';
    exWks.Cells.Rows.AutoFit;

    range.WrapText := False;

    exWks.Range['A1'].Select;
    exApp.Visible := True;
    exWks := Null; exWkb := Null; exApp := Null;
    VarClear(exWks); VarClear(exWkb); VarClear(exApp);
  end;


  if  (cxGrid1DBBandedTableView1files_format_cod.DataBinding.Field.Value = '02000') then begin
    str_list := TStringList.Create;
    str_list.Text := file_data;

    Client_Vagon := TClientDataSet.Create(nil);
    Client_Vagon.FieldDefs.Add('fact_tech_id', ftAutoInc);
    Client_Vagon.FieldDefs.Add('num_vagon', ftInteger);
    Client_Vagon.FieldDefs.Add('block_p', ftString, 1);
    Client_Vagon.FieldDefs.Add('type_repair', ftString, 2);
    Client_Vagon.FieldDefs.Add('depo', ftString, 4);
    Client_Vagon.FieldDefs.Add('num_notice_23', ftString, 6);
    Client_Vagon.FieldDefs.Add('road', ftString, 2);
    Client_Vagon.FieldDefs.Add('station_detaching', ftString, 6);
    Client_Vagon.FieldDefs.Add('breakage', ftString, 9);
    Client_Vagon.FieldDefs.Add('last_depo_place', ftString, 4);
    Client_Vagon.FieldDefs.Add('last_cap_place', ftString, 4);
    Client_Vagon.FieldDefs.Add('num_notice_36', ftString, 6);
    Client_Vagon.FieldDefs.Add('modernization', ftString, 40);
    Client_Vagon.FieldDefs.Add('file_load_name', ftString, 100);
    Client_Vagon.FieldDefs.Add('file_load_date', ftDate);
    Client_Vagon.FieldDefs.Add('users_id', ftInteger);
    Client_Vagon.FieldDefs.Add('type_repair_id', ftInteger);
    Client_Vagon.FieldDefs.Add('station_detaching_id', ftInteger);
    Client_Vagon.FieldDefs.Add('depo_id', ftInteger);
    Client_Vagon.FieldDefs.Add('road_id', ftInteger);
    Client_Vagon.FieldDefs.Add('last_depo_place_id', ftInteger);
    Client_Vagon.FieldDefs.Add('last_cap_place_id', ftInteger);
    Client_Vagon.FieldDefs.Add('breakage_id', ftInteger);
    Client_Vagon.FieldDefs.Add('date_breakage', ftString, 20);
    Client_Vagon.FieldDefs.Add('date_repare_end', ftString, 20);
    Client_Vagon.FieldDefs.Add('date_repare_begin', ftString, 20);
    Client_Vagon.FieldDefs.Add('date_build', ftString, 20);
    Client_Vagon.FieldDefs.Add('date_last_depo_place', ftString, 20);
    Client_Vagon.FieldDefs.Add('date_cap_place', ftString, 20);
    Client_Vagon.FieldDefs.Add('next_date_repair', ftDate);
    Client_Vagon.FieldDefs.Add('node_registration', ftString, 100);
    Client_Vagon.CreateDataSet;
    Client_Vagon.LogChanges := False;


    file_pos := str_list.IndexOf('Ответ:');
    for i := file_pos + 1 to str_list.Count - 1 do begin
        str := str_list.Strings[i];
        try
          StrToInt64(Copy(str, 1, 8));
        except
          continue;
        end;

      Client_Vagon.Append;
      Client_Vagon['num_vagon']             := Copy(str, 1,   8);
      Client_Vagon['block_p']               := Copy(str, 9,   1);
      Client_Vagon['type_repair']           := Copy(str, 10,  2);
      Client_Vagon['depo']                  := Copy(str, 12,  4);
      Client_Vagon['num_notice_23']         := Copy(str, 16,  6);
      Client_Vagon['road']                  := Copy(str, 22,  2);
      Client_Vagon['station_detaching']     := Copy(str, 24,  5);
      Client_Vagon['date_breakage']         := Copy(str, 29,  12);
      Client_Vagon['breakage']              := Copy(str, 41,  9);
      Client_Vagon['date_build']            := Copy(str, 50,  8);
      Client_Vagon['last_depo_place']       := Copy(str, 58,  4);
      Client_Vagon['date_last_depo_place']  := Copy(str, 62,  8);
      Client_Vagon['last_cap_place']        := Copy(str, 70,  4);
      Client_Vagon['date_cap_place']        := Copy(str, 74,  8);
      Client_Vagon['num_notice_36']         := Copy(str, 82,  6);
      Client_Vagon['date_repare_begin']     := Copy(str, 88,  12);
      Client_Vagon['date_repare_end']       := Copy(str, 100, 12);
      Client_Vagon['modernization']         := Copy(str, 112, 40);

      Client_Vagon.Post;
    end;

    exApp := CreateOleObject('Excel.Application');
    exWkb := exApp.Workbooks.Add;
    exWkb := exApp.ActiveWorkbook;
    exWks := exWkb.WorkSheets[1];


    cnt_record := Client_Vagon.RecordCount;
    cnt_column := 18;
    array_data := VarArrayCreate([1, cnt_record+4, 1, cnt_column+1], varVariant);

    array_data[1, 1] := 'num_vagon';
    array_data[1, 2] := 'block_p';
    array_data[1, 3] := 'type_repair';
    array_data[1, 4] := 'depo';
    array_data[1, 5] := 'num_notice_23';
    array_data[1, 6] := 'road';
    array_data[1, 7] := 'station_detaching';
    array_data[1, 8] := 'date_breakage';
    array_data[1, 9] := 'breakage';
    array_data[1,10] := 'date_build';
    array_data[1,11] := 'last_depo_place';
    array_data[1,12] := 'date_last_depo_place';
    array_data[1,13] := 'last_cap_place';
    array_data[1,14] := 'date_cap_place';
    array_data[1,15] := 'num_notice_36';
    array_data[1,16] := 'date_repare_begin';
    array_data[1,17] := 'date_repare_end';
    array_data[1,18] := 'modernization';


    Client_Vagon.First;
    while not Client_Vagon.Eof do begin

      array_data[Client_Vagon.RecNo+1, 1] := '''' + Client_Vagon.FieldByName('num_vagon').AsString;
      array_data[Client_Vagon.RecNo+1, 2] := '''' + Client_Vagon.FieldByName('block_p').AsString;
      array_data[Client_Vagon.RecNo+1, 3] := '''' + Client_Vagon.FieldByName('type_repair').AsString;
      array_data[Client_Vagon.RecNo+1, 4] := '''' + Client_Vagon.FieldByName('depo').AsString;
      array_data[Client_Vagon.RecNo+1, 5] := '''' + Client_Vagon.FieldByName('num_notice_23').AsString;
      array_data[Client_Vagon.RecNo+1, 6] := '''' + Client_Vagon.FieldByName('road').AsString;
      array_data[Client_Vagon.RecNo+1, 7] := '''' + Client_Vagon.FieldByName('station_detaching').AsString;
      array_data[Client_Vagon.RecNo+1, 8] := '''' + Client_Vagon.FieldByName('date_breakage').AsString;
      array_data[Client_Vagon.RecNo+1, 9] := '''' + Client_Vagon.FieldByName('breakage').AsString;
      array_data[Client_Vagon.RecNo+1,10] := '''' + Client_Vagon.FieldByName('date_build').AsString;
      array_data[Client_Vagon.RecNo+1,11] := '''' + Client_Vagon.FieldByName('last_depo_place').AsString;
      array_data[Client_Vagon.RecNo+1,12] := '''' + Client_Vagon.FieldByName('date_last_depo_place').AsString;
      array_data[Client_Vagon.RecNo+1,13] := '''' + Client_Vagon.FieldByName('last_cap_place').AsString;
      array_data[Client_Vagon.RecNo+1,14] := '''' + Client_Vagon.FieldByName('date_cap_place').AsString;
      array_data[Client_Vagon.RecNo+1,15] := '''' + Client_Vagon.FieldByName('num_notice_36').AsString;
      array_data[Client_Vagon.RecNo+1,16] := '''' + Client_Vagon.FieldByName('date_repare_begin').AsString;
      array_data[Client_Vagon.RecNo+1,17] := '''' + Client_Vagon.FieldByName('date_repare_end').AsString;
      array_data[Client_Vagon.RecNo+1,18] := '''' + Client_Vagon.FieldByName('modernization').AsString;

      ShowTextMessage('Подготовка данных...' + #10 + 'Строк ' + IntToStr(Client_Vagon.RecNo) + ' из ' + IntToStr(Client_Vagon.RecordCount) + '...', False);
      Client_Vagon.Next;
    end;

    ShowTextMessage('Вывод в Excel...', False);

    // Левая верхняя ячейка области, в которую будем выводить данные
    cell1 := exWks.Cells[3, 2];
    // Правая нижняя ячейка области, в которую будем выводить данные
    cell2 := exWks.Cells[3 + cnt_record - 1, 2 + cnt_column - 1];
    // Область, в которую будем выводить данные
    range := exWks.Range[cell1, cell2];

    // Область заголовка
    cell1 := exWks.Cells[3, 2];
    cell2 := exWks.Cells[3, 2 + cnt_column - 1];
    range_caption := exWks.Range[cell1, cell2];

    // Область итогов
    cell1 := exWks.Cells[3 + cnt_record - 1, 2];
    cell2 := exWks.Cells[3 + cnt_record - 1, 2 + cnt_column - 1];
    range_footer := exWks.Range[cell1, cell2];

    // Вывод данных
    range.Value := array_data;

    exWks.Cells[4 + cnt_record - 2, 2].Value := '=COUNTA(R[-1]C:R[-' + IntToStr(cnt_record-2) + ']C)';

    VarClear(array_data);

    ShowTextMessage('Печать таблицы в Excel...' + #10 + 'Форматирование таблицы...', False);
    exApp.ActiveWindow.DisplayGridlines := False;


    range.Borders[7].LineStyle := 1;
    range.Borders[8].LineStyle := 1;
    range.Borders[9].LineStyle := 1;
    range.Borders[10].LineStyle := 1;
    range.Borders[11].LineStyle := 1;
    range.Borders[12].LineStyle := 1;

    range.Borders[7].Color := $C0C0C0;
    range.Borders[8].Color := $C0C0C0;
    range.Borders[9].Color := $C0C0C0;
    range.Borders[10].Color := $C0C0C0;
    range.Borders[11].Color := $C0C0C0;
    range.Borders[12].Color := $C0C0C0;

    range_caption.Interior.Color := $CCFFCC;
    range_caption.Borders[7].Color := $000000;
    range_caption.Borders[8].Color := $000000;
    range_caption.Borders[9].Color := $000000;
    range_caption.Borders[10].Color := $000000;
    range_caption.Borders[11].Color := $000000;
    range_caption.Borders[12].Color := $000000;

    range_footer.Interior.Color := $CCFFCC;
    range_footer.Borders[7].Color := $000000;
    range_footer.Borders[8].Color := $000000;
    range_footer.Borders[9].Color := $000000;
    range_footer.Borders[10].Color := $000000;
    range_footer.Borders[11].Color := $000000;
    range_footer.Borders[12].Color := $000000;


    exWks.Cells.Font.Size := 8;
    exWks.Cells.Font.Name := 'MS Sans Serif';
    exWks.Cells.Rows.AutoFit;

    range.WrapText := False;

    exWks.Range['A1'].Select;
    exApp.Visible := True;
    exWks := Null; exWkb := Null; exApp := Null;
    VarClear(exWks); VarClear(exWkb); VarClear(exApp);
    Client_Vagon.Free;
  end;

  ShowTextMessage();

  Q.Free;
end;

procedure TfmFactTrackFiles.dxBarButton17Click(Sender: TObject);
begin
  Screen.Cursor := crHourglass;
  if TControl(Sender).Tag = 1 then begin
    Fdate1 := IncMonth(Fdate1, -1);
  end;

  if TControl(Sender).Tag = 2 then begin
    Fdate1 := IncMonth(Fdate1, 1);
  end;

  Fdate2 := IncMonth(Fdate1, 1) - 1;
  dxBarSubItem1.Caption := FormatDateTime('mmmm yyyy', Fdate1);

  Query_FactTrackFiles.Close;
  Query_FactTrackFiles.Parameters.ParamByName('date1').Value := Fdate1;
  Query_FactTrackFiles.Parameters.ParamByName('date2').Value := Fdate2;
  Query_FactTrackFiles.Open;

  Screen.Cursor := crDefault;
end;

procedure TfmFactTrackFiles.dxBarButton1Click(Sender: TObject);
begin
  fmFactTrackFilesAdd := TfmFactTrackFilesAdd.Create(nil);
  if fmFactTrackFilesAdd.ShowModal = mrOK then begin
    RefreshQueryGrid(cxGrid1DBBandedTableView1, 'files_track_id', fmFactTrackFilesAdd._GetFilesId);
  end;
end;

procedure TfmFactTrackFiles.dxBarButton2Click(Sender: TObject);
var sp_fact_track_files_modify : TADOStoredProc;
          sp_fact_track_delete : TADOStoredProc;
           sp_fact_tech_modify : TADOStoredProc;
         sp_fact_milage_modify : TADOStoredProc;
                files_track_id : integer;
                             Q : TADOQuery;
begin
  if Application.MessageBox('Действительно хотите удалить файл?', 'ВНИМАНИЕ', MB_OKCANCEL+MB_ICONWARNING) = IDOK then begin
    files_track_id := cxGrid1DBBandedTableView1files_track_id.DataBinding.Field.Value;


    // Удаление дислокации
    if (cxGrid1DBBandedTableView1files_format_cod.DataBinding.Field.Value = '00001') OR
       (cxGrid1DBBandedTableView1files_format_cod.DataBinding.Field.Value = '00002') OR
       (cxGrid1DBBandedTableView1files_format_cod.DataBinding.Field.Value = '00003') OR
       (cxGrid1DBBandedTableView1files_format_cod.DataBinding.Field.Value = '00004') then begin
      sp_fact_track_delete := TADOStoredProc.Create(nil);
      sp_fact_track_delete.Connection := ADOFactTrack;
      sp_fact_track_delete.ProcedureName := 'sp_fact_track_delete';
      sp_fact_track_delete.Parameters.Refresh;

      Q := TADOQuery.Create(nil);
      Q.Connection := ADOFactTrack;
      Q.SQL.Add('SELECT fact_track_id FROM fact_track_vagon WHERE files_id = ' + IntToStr(files_track_id));
      Q.Open;
      while not Q.Eof do begin
        sp_fact_track_delete.Parameters.ParamByName('@fact_track_id').Value := Q.FieldByName('fact_track_id').Value;
        sp_fact_track_delete.Parameters.ParamByName('@type_track'   ).Value := 0;
        try
          sp_fact_track_delete.ExecProc;
        except
        end;
        ShowTextMessage('Удаление вагонов...' + #10 + 'Осталось '+IntToStr(Q.RecordCount - Q.RecNo)+' записей...', False);
        Q.Next;
      end;
      Q.Free;
      sp_fact_track_delete.Free;
      ShowTextMessage;
    end;


    // Удаление тех. состояния
    if (cxGrid1DBBandedTableView1files_format_cod.DataBinding.Field.Value = '02000') then begin
      sp_fact_tech_modify := TADOStoredProc.Create(nil);
      sp_fact_tech_modify.Connection := ADOFactTrack;
      sp_fact_tech_modify.ProcedureName := 'sp_fact_tech_modify';
      sp_fact_tech_modify.Parameters.Refresh;

      Q := TADOQuery.Create(nil);
      Q.Connection := ADOFactTrack;
      Q.SQL.Add('SELECT fact_tech_id FROM view_fact_tech WHERE files_id = ' + IntToStr(files_track_id));
      Q.Open;
      while not Q.Eof do begin
        sp_fact_tech_modify.Parameters.ParamByName('@fact_tech_id').Value := Q.FieldByName('fact_tech_id').Value;
        sp_fact_tech_modify.Parameters.ParamByName('@type_action' ).Value := 2;
        try
          sp_fact_tech_modify.ExecProc;
        except
        end;
        ShowTextMessage('Удаление вагонов...' + #10 + 'Осталось '+IntToStr(Q.RecordCount - Q.RecNo)+' записей...', False);
        Q.Next;
      end;
      Q.Free;
      sp_fact_tech_modify.Free;
      ShowTextMessage;
    end;

    // Удаление пробегов
    if (cxGrid1DBBandedTableView1files_format_cod.DataBinding.Field.Value = '04000') then begin
      sp_fact_milage_modify := TADOStoredProc.Create(nil);
      sp_fact_milage_modify.Connection := ADOFactTrack;
      sp_fact_milage_modify.ProcedureName := 'sp_fact_tech_modify';
      sp_fact_milage_modify.Parameters.Refresh;

      Q := TADOQuery.Create(nil);
      Q.Connection := ADOFactTrack;
      Q.SQL.Add('SELECT fact_milage_id FROM fact_milage WHERE files_id = ' + IntToStr(files_track_id));
      Q.Open;
      while not Q.Eof do begin
        sp_fact_milage_modify.Parameters.ParamByName('@fact_milage_id').Value := Q.FieldByName('fact_milage_id').Value;
        sp_fact_milage_modify.Parameters.ParamByName('@type_action'   ).Value := 2;
        try
          sp_fact_milage_modify.ExecProc;
        except
        end;
        ShowTextMessage('Удаление вагонов...' + #10 + 'Осталось '+IntToStr(Q.RecordCount - Q.RecNo)+' записей...', False);
        Q.Next;
      end;
      Q.Free;
      sp_fact_milage_modify.Free;
      ShowTextMessage;
    end;


    Screen.Cursor := crHourglass;
    sp_fact_track_files_modify := TADOStoredProc.Create(nil);
    sp_fact_track_files_modify.Connection := ADOFactTrack;
    sp_fact_track_files_modify.ProcedureName := 'sp_fact_track_files_modify';
    sp_fact_track_files_modify.CommandTimeout := 180;
    sp_fact_track_files_modify.Parameters.Refresh;
    sp_fact_track_files_modify.Parameters.ParamByName('@files_track_id' ).Value := cxGrid1DBBandedTableView1files_track_id.DataBinding.Field.Value;
    sp_fact_track_files_modify.Parameters.ParamByName('@type_action'    ).Value := 2;
    try
      sp_fact_track_files_modify.ExecProc;
    except
    end;
    sp_fact_track_files_modify.Free;
    RefreshQueryGrid(cxGrid1DBBandedTableView1, 'files_track_id');
    Screen.Cursor := crDefault;
  end;
end;

procedure TfmFactTrackFiles.dxBarButton3Click(Sender: TObject);
begin
  RefreshQueryGrid(cxGrid1DBBandedTableView1, 'files_track_id');
end;

procedure TfmFactTrackFiles.dxBarButton4Click(Sender: TObject);
begin
  fmPeriod := TfmPeriod.Create(Application, Fdate1, Fdate2, 3);
  if fmPeriod.ShowModal=mrOK then begin
    Fdate1 := fmPeriod._GetMonth;
    Fdate2 := IncMonth(Fdate1, 1);
    dxBarSubItem1.Caption := FormatDateTime('mmmm yyyy', Fdate1);
    Screen.Cursor := crHourGlass;
    Query_FactTrackFiles.Close;
    Query_FactTrackFiles.Parameters.ParamByName('date1').Value := Fdate1;
    Query_FactTrackFiles.Parameters.ParamByName('date2').Value := Fdate2;
    Query_FactTrackFiles.Open;
    Screen.Cursor := crDefault;
  end;
end;

procedure TfmFactTrackFiles.dxBarButton5Click(Sender: TObject);
begin
  fmPeriod := TfmPeriod.Create(Application, Fdate1, Fdate2, 2);
  if fmPeriod.ShowModal=mrOK then begin
    Fdate1 := fmPeriod._GetMonthBegin;
    Fdate2 := fmPeriod._GetMonthEnd;
    dxBarSubItem1.Caption := FormatDateTime('mmm yy', Fdate1) + ' - ' + FormatDateTime('mmm yy', Fdate2);
    Screen.Cursor := crHourGlass;
    Query_FactTrackFiles.Close;
    Query_FactTrackFiles.Parameters.ParamByName('date1').Value := Fdate1;
    Query_FactTrackFiles.Parameters.ParamByName('date2').Value := Fdate2;
    Query_FactTrackFiles.Open;
    Screen.Cursor := crDefault;
  end;
end;

procedure TfmFactTrackFiles.dxBarButton6Click(Sender: TObject);
begin
  fmFactTrackFilesAdd := TfmFactTrackFilesAdd.Create(nil);
  fmFactTrackFilesAdd._SetUpdate := cxGrid1DBBandedTableView1files_track_id.DataBinding.Field.Value;
  if fmFactTrackFilesAdd.ShowModal = mrOK then begin
    RefreshQueryGrid(cxGrid1DBBandedTableView1, 'files_track_id', fmFactTrackFilesAdd._GetFilesId);
  end;
end;

procedure TfmFactTrackFiles.dxBarButton7Click(Sender: TObject);
var file_name : string;
        hFile : THandle;
    file_data : TArray<Byte>;
    num_write : Cardinal;
       folder : string;
            i : integer;
sp_fact_track_files_modify : TADOStoredProc;
begin
  folder := BrowseDialog('Выбор каталога:');
  if folder <> '' then begin
    if Application.MessageBox(PChar('Сохранить ' + IntToStr(cxGrid1DBBandedTableView1.Controller.SelectedRecordCount) + ' файлов?'), 'ВНИМАНИЕ', MB_ICONWARNING or MB_YESNO) = ID_YES then begin
      sp_fact_track_files_modify := TADOStoredProc.Create(nil);
      sp_fact_track_files_modify.Connection := ADOFactTrack;
      sp_fact_track_files_modify.ProcedureName := 'sp_fact_track_files_modify';
      sp_fact_track_files_modify.Parameters.Refresh;

      for i:=0 to cxGrid1DBBandedTableView1.Controller.SelectedRecordCount - 1 do begin
        sp_fact_track_files_modify.Close;
        sp_fact_track_files_modify.Parameters.Refresh;
        sp_fact_track_files_modify.Parameters.ParamByName('@files_track_id' ).Value := cxGrid1DBBandedTableView1.Controller.SelectedRows[i].Values[cxGrid1DBBandedTableView1files_track_id.Index];
        sp_fact_track_files_modify.Parameters.ParamByName('@type_action'    ).Value := 10;
        sp_fact_track_files_modify.Open;

        file_data := LZHUnPack(sp_fact_track_files_modify.FieldByName('doc_image').AsBytes);
        file_name := folder + '\' + sp_fact_track_files_modify.FieldByName('files_name').AsString;
        hFile:=CreateFile(PChar(file_name), Generic_Write, 0, nil, Create_Always, File_Attribute_Normal, 0);
        WriteFile(hFile, PAnsiChar(file_data)^, Length(file_data), num_write, nil);
        CloseHandle(hFile);
        ShowTextMessage('Осталось ' + IntToStr(cxGrid1DBBandedTableView1.Controller.SelectedRecordCount-i) + ' файлов...',False);
      end;

      sp_fact_track_files_modify.Free;
      ShowTextMessage;
      ShellExecute(HWND(nil), 'open', PChar(folder), nil, PChar(folder), SW_SHOWNORMAL);
    end;
  end;

//    sp_fact_track_files_modify := TADOStoredProc.Create(nil);
//    sp_fact_track_files_modify.Connection := ADOFactTrack;
//    sp_fact_track_files_modify.ProcedureName := 'sp_fact_track_files_modify';
//    sp_fact_track_files_modify.Parameters.Refresh;
//    sp_fact_track_files_modify.Parameters.ParamByName('@files_track_id' ).Value := cxGrid1DBBandedTableView1files_track_id.DataBinding.Field.Value;
//    sp_fact_track_files_modify.Parameters.ParamByName('@type_action'    ).Value := 10;
//    sp_fact_track_files_modify.Open;
//
//    file_data := LZHUnPack(sp_fact_track_files_modify.FieldByName('doc_image').AsBytes);
//    file_name := SaveDialog.FileName;
//    hFile:=CreateFile(PChar(file_name), Generic_Write, 0, nil, Create_Always, File_Attribute_Normal, 0);
//    WriteFile(hFile, PAnsiChar(file_data)^, Length(file_data), num_write, nil);
//    CloseHandle(hFile);
//
//    ShellExecute(handle, 'open', PChar(ExtractFilePath(file_name)), nil, nil, SW_SHOWNORMAL);
//
//    sp_fact_track_files_modify.Free;
//  end;
end;

procedure TfmFactTrackFiles.dxBarButton8Click(Sender: TObject);
begin
  PrintcxGrid(cxGrid1DBBandedTableView1);
end;

procedure TfmFactTrackFiles.dxBarButton9Click(Sender: TObject);
begin
  SetRecordColor('files_track_id', cxGrid1DBBandedTableView1, 'FACT_TRACK_FILES', (TControl(Sender).Tag=1));
  RefreshQueryGrid(cxGrid1DBBandedTableView1, 'files_track_id');
end;

procedure TfmFactTrackFiles.dxBarPopupMenu1Popup(Sender: TObject);
begin
  dxBarButton14.Enabled := False;
  dxBarButton15.Enabled := False;
  //Открыть дислокацию
  if (cxGrid1DBBandedTableView1files_format_cod.DataBinding.Field.Value = '00001') OR
     (cxGrid1DBBandedTableView1files_format_cod.DataBinding.Field.Value = '00002') OR
     (cxGrid1DBBandedTableView1files_format_cod.DataBinding.Field.Value = '00003') OR
     (cxGrid1DBBandedTableView1files_format_cod.DataBinding.Field.Value = '00004') then begin
    dxBarButton14.Caption := 'Прейти в модуль "Дислокация"...';
    dxBarButton14.Enabled := False;
  end;

  if  (cxGrid1DBBandedTableView1files_format_cod.DataBinding.Field.Value = '00002') OR
      (cxGrid1DBBandedTableView1files_format_cod.DataBinding.Field.Value = '02000') then begin
    dxBarButton15.Enabled := True;
  end;

  //  Паспорта
  if (cxGrid1DBBandedTableView1files_format_cod.DataBinding.Field.Value = '01000') then begin
    dxBarButton14.Caption := 'Прейти в модуль "Паспорта"...';
    dxBarButton14.Enabled := True;
  end;

  //  Ремонты
  if (cxGrid1DBBandedTableView1files_format_cod.DataBinding.Field.Value = '02000') then begin
    dxBarButton14.Caption := 'Прейти в модуль "Тех. состояние"...';
    dxBarButton14.Enabled := False;
  end;

  //  Узлы и детали
  if (cxGrid1DBBandedTableView1files_format_cod.DataBinding.Field.Value = '03000') then begin
    dxBarButton14.Caption := 'Прейти в модуль "Узлы и детали"...';
    dxBarButton14.Enabled := True;
  end;

  //  Пробеги
  if (cxGrid1DBBandedTableView1files_format_cod.DataBinding.Field.Value = '04000') then begin
    dxBarButton14.Caption := 'Прейти в модуль "Пробеги"...';
    dxBarButton14.Enabled := True;
  end;
end;

procedure TfmFactTrackFiles.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action := caFree;
end;

procedure TfmFactTrackFiles.FormDestroy(Sender: TObject);
begin
  StoreRegistryGrid(rgSave,'\Software\Lis1\FactTrackFiles_Grids\MainGrids', cxGrid1DBBandedTableView1);
//  StoreRegistryDate(rgSave, '\Software\Lis1\DateTime\FactTrackFiles', Fdate1, Fdate2);
end;

end.
