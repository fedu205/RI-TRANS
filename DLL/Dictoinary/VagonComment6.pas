unit VagonComment6;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics, Default,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters, cxStyles, dxSkinsCore, dxSkinBlack, dxSkinBlue,
  dxSkinBlueprint, dxSkinCaramel, dxSkinCoffee, dxSkinDarkRoom, dxSkinDarkSide, dxSkinDevExpressDarkStyle, dxSkinDevExpressStyle, dxSkinFoggy,
  dxSkinGlassOceans, dxSkinHighContrast, dxSkiniMaginary, dxSkinLilian, dxSkinLiquidSky, dxSkinLondonLiquidSky, dxSkinMcSkin, dxSkinMetropolis,
  dxSkinMetropolisDark, dxSkinMoneyTwins, dxSkinOffice2007Black, dxSkinOffice2007Blue, dxSkinOffice2007Green, dxSkinOffice2007Pink,
  dxSkinOffice2007Silver, dxSkinOffice2010Black, dxSkinOffice2010Blue, dxSkinOffice2010Silver, dxSkinOffice2013DarkGray, dxSkinOffice2013LightGray,
  dxSkinOffice2013White, dxSkinOffice2016Colorful, dxSkinOffice2016Dark, dxSkinPumpkin, dxSkinSeven, dxSkinSevenClassic, dxSkinSharp, dxSkinSharpPlus,
  dxSkinSilver, dxSkinSpringTime, dxSkinStardust, dxSkinSummer2008, dxSkinTheAsphaltWorld, dxSkinsDefaultPainters, dxSkinValentine,
  dxSkinVisualStudio2013Blue, dxSkinVisualStudio2013Dark, dxSkinVisualStudio2013Light, dxSkinVS2010, dxSkinWhiteprint, dxSkinXmas2008Blue,
  dxSkinscxPCPainter, cxCustomData, cxFilter, cxData, cxDataStorage, cxEdit, cxNavigator, Data.DB, cxDBData, dxSkinsdxBarPainter, dxBar,
  cxClasses, cxLocalization, cxPropertiesStore, System.ImageList, Vcl.ImgList, Data.Win.ADODB, cxGridLevel, cxGridCustomView,
  cxGridCustomTableView, cxGridTableView, cxGridBandedTableView, cxGridDBBandedTableView, cxGrid, dxBarExtItems, dxColorEdit,
  cxImageList, dxSkinTheBezier, dxDateRanges, dxScrollbarAnnotations;

type
  TfmVagonComment6 = class(TForm)
    cxGrid1: TcxGrid;
    cxGrid1DBBandedTableView1: TcxGridDBBandedTableView;
    cxGrid1Level1: TcxGridLevel;
    ADOVagonComment6: TADOConnection;
    cxImageList1: TcxImageList;
    cxStyleRepository1: TcxStyleRepository;
    cxStyle_Bold: TcxStyle;
    cxStyle_AgreeFactInc_Between: TcxStyle;
    cxStyle_AgreeFactInc_Sum: TcxStyle;
    cxStyle_AgreeFactInc_AddProfit: TcxStyle;
    cxStyle_ClientFrahtCard_Rashod: TcxStyle;
    cxStyle_ClientFrahtCard_Profitt: TcxStyle;
    cxStyle_AgreeFact: TcxStyle;
    cxStyle_Agree_bargain_cod: TcxStyle;
    cxStyle_Orders_cod: TcxStyle;
    cxStyle_BoldBlue: TcxStyle;
    cxStyle_ClientFrahtCard_Rashod_RUB: TcxStyle;
    cxStyle_BalanceOrders: TcxStyle;
    cxStyle_Comiss_USD: TcxStyle;
    cxStyle_Comiss_RUB: TcxStyle;
    cxStyle_Sum_USD: TcxStyle;
    cxStyle_Sum_RUB: TcxStyle;
    cxStyle_Sum_EUR: TcxStyle;
    cxStyle_Sum_CHF: TcxStyle;
    cxStyle_Sum_Client: TcxStyle;
    cxStyle_Sum_Agent: TcxStyle;
    cxStyle_Sum_Comiss: TcxStyle;
    cxStyle_ID: TcxStyle;
    cxStyle_Docs_Status: TcxStyle;
    cxPropertiesStore1: TcxPropertiesStore;
    cxLocalizer1: TcxLocalizer;
    dxBarManager1: TdxBarManager;
    dxBarManager1Bar1: TdxBar;
    dxBarButton1: TdxBarButton;
    dxBarButton2: TdxBarButton;
    dxBarButton12: TdxBarButton;
    dxBarButton3: TdxBarButton;
    dxBarButton9: TdxBarButton;
    dxBarButton20: TdxBarButton;
    dxBarButton25: TdxBarButton;
    dxBarSubItem1: TdxBarSubItem;
    dxBarButton4: TdxBarButton;
    dxBarButton5: TdxBarButton;
    dxBarButton6: TdxBarButton;
    dxBarButton7: TdxBarButton;
    dxBarButton8: TdxBarButton;
    dxBarButton_Filter: TdxBarButton;
    dxBarButton_FilterRecords1: TdxBarButton;
    dxBarPopup_VagonComment6: TdxBarPopupMenu;
    cxGrid1DBBandedTableView1comment6_id: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1comment6_name: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1node_begin_id: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1node_begin_cod: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1node_begin_name: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1contract_id: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1firm_customer_name: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1contract_cod: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1global_color: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1FIO_users_owner: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1date_begin: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1date_end: TcxGridDBBandedColumn;
    DS_VagonComment6: TDataSource;
    Query_VagonCommet6: TADOQuery;
    dxBarDateCombo1: TdxBarDateCombo;
    cxGrid1DBBandedTableView1comment: TcxGridDBBandedColumn;
    dxBarButton10: TdxBarButton;
    dxBarButton11: TdxBarButton;
    cxGrid1DBBandedTableView1dispatch_group_comment6_name: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1agent_firm_customer_name: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1agent_contract_cod: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1agent_contract_date_begin: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1sale_FIO_users: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1dispatch_FIO_users: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1rod_vagon_name: TcxGridDBBandedColumn;
    dxBarButton13: TdxBarButton;
    cxGrid1DBBandedTableView1contract_agent_id: TcxGridDBBandedColumn;
    cxStyle_WhiteColor: TcxStyle;
    procedure dxBarButton1Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure dxBarButton3Click(Sender: TObject);
    procedure cxGrid1DBBandedTableView1CustomDrawCell(Sender: TcxCustomGridTableView; ACanvas: TcxCanvas; AViewInfo: TcxGridTableDataCellViewInfo; var ADone: Boolean);
    procedure cxGrid1DBBandedTableView1CustomDrawColumnHeader(Sender: TcxGridTableView; ACanvas: TcxCanvas; AViewInfo: TcxGridColumnHeaderViewInfo; var ADone: Boolean);
    procedure cxGrid1DBBandedTableView1KeyPress(Sender: TObject; var Key: Char);
    procedure cxGrid1DBBandedTableView1FocusedItemChanged(Sender: TcxCustomGridTableView; APrevFocusedItem, AFocusedItem: TcxCustomGridTableItem);
    procedure dxBarButton7Click(Sender: TObject);
    procedure dxBarButton8Click(Sender: TObject);
    procedure dxBarButton4Click(Sender: TObject);
    procedure dxBarButton5Click(Sender: TObject);
    procedure dxBarButton25Click(Sender: TObject);
    procedure dxBarButton9Click(Sender: TObject);
    procedure dxBarButton2Click(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure dxBarButton10Click(Sender: TObject);
    procedure dxBarButton20Click(Sender: TObject);
    procedure dxBarButton13Click(Sender: TObject);
    procedure cxGrid1DBBandedTableView1DataControllerFilterChanged(Sender: TObject);
  private
    Fconnect : TADOConnection;
    Fcomment6_id : integer;
  public
    Fusr_pwd : PUser_pwd;
    constructor Create(App: TApplication; flag: boolean; usr_pwd: PUser_pwd);
   published
    property _GetComment6Id  : integer read Fcomment6_id;
  end;

function CreateWndVagonComment6(AppHand: THandle; flag: boolean; usr_pwd: PUser_pwd) : variant; export;

const str_sql_1 : string = 'SELECT * FROM view_vagon_comment6 WHERE :date1 BETWEEN FLOOR(convert(float, date_begin)) AND FLOOR(convert(float, ISNULL(date_end, :date2 + 1)))';
const str_sql_2 : string = 'SELECT * FROM view_vagon_comment6';

var
  fmVagonComment6: TfmVagonComment6;

implementation
  uses Raznoe, VagonComment6Add, Other, Filter;
{$R *.dfm}

function CreateWndVagonComment6(AppHand: THandle; flag: boolean; usr_pwd: PUser_pwd) : variant; export;
begin
   Screen.Cursor := crHourglass;
   Application.Handle := AppHand;
   fmVagonComment6 := TfmVagonComment6.Create(Application, flag, usr_pwd);
   try
     if fmVagonComment6.ShowModal = mrOk then result := VarArrayOf([fmVagonComment6._GetComment6Id, ''])
     else result := VarArrayOf([-9, '']);
   finally
     fmVagonComment6.Free;
   end;
   Screen.Cursor := crDefault;

end;

{ TfmVagonComment6 }

constructor TfmVagonComment6.Create(App: TApplication; flag: boolean; usr_pwd: PUser_pwd);
begin
  Screen.Cursor := crHourglass;

  inherited Create(App);
  cxLocalizer1.Locale := 1049;

  ADOVagonComment6.Connected := False;
  ADOVagonComment6.ConnectionString := 'Persist Security Info=True;Provider=SQLOLEDB.1;User ID='+usr_pwd^.user_name+';Password='+usr_pwd^.user_pass+';Initial Catalog='+usr_pwd^.catalog+';Data Source='+usr_pwd^.server+';';
  ADOVagonComment6.Connected := True;
  Fusr_pwd := usr_pwd;

  SetUsersModuleRights(self, ADOVagonComment6);

  dxBarDateCombo1.Date := Date;
  Query_VagonCommet6.SQL.Text := str_sql_1;
  Query_VagonCommet6.Parameters.ParamByName('date1').Value := dxBarDateCombo1.Date;
  Query_VagonCommet6.Parameters.ParamByName('date2').Value := dxBarDateCombo1.Date;
  Query_VagonCommet6.Open;

  if Flag then begin
    dxBarButton20.Visible := ivAlways;
    cxGrid1DBBandedTableView1.OnDblClick := dxBarButton20Click;
  end;

  StoreRegistryGrid(rgLoad, '\Software\Lis1\VagonComment6_Grids', cxGrid1DBBandedTableView1);

  MonitorEventFormOpen('OPEN_FORM', self.Name, ADOVagonComment6, -9);
  Screen.Cursor := crDefault;
end;

procedure TfmVagonComment6.cxGrid1DBBandedTableView1CustomDrawCell(Sender: TcxCustomGridTableView; ACanvas: TcxCanvas; AViewInfo: TcxGridTableDataCellViewInfo; var ADone: Boolean);
begin
  if (AViewInfo.GridRecord.Values[cxGrid1DBBandedTableView1global_color.Index]<>NULL) then ACanvas.Brush.Color := AViewInfo.GridRecord.Values[cxGrid1DBBandedTableView1global_color.Index];

  if AViewInfo.GridRecord.Selected or AViewInfo.GridRecord.Focused then begin
    ACanvas.Brush.Color := clNavy;
    ACanvas.Font.Color  := clWhite;
    if AViewInfo.Focused then ACanvas.Brush.Color := clBlue;
  end;
end;

procedure TfmVagonComment6.cxGrid1DBBandedTableView1CustomDrawColumnHeader(Sender: TcxGridTableView; ACanvas: TcxCanvas; AViewInfo: TcxGridColumnHeaderViewInfo; var ADone: Boolean);
begin
  DrawcxGridColumnOnFocused(Sender, ACanvas, AViewInfo);
end;

procedure TfmVagonComment6.cxGrid1DBBandedTableView1DataControllerFilterChanged(Sender: TObject);
begin
  DrawcxGridColumnOnFiltered(Sender);
end;

procedure TfmVagonComment6.cxGrid1DBBandedTableView1FocusedItemChanged(Sender: TcxCustomGridTableView; APrevFocusedItem, AFocusedItem: TcxCustomGridTableItem);
begin
  Sender.Painter.Invalidate;
end;

procedure TfmVagonComment6.cxGrid1DBBandedTableView1KeyPress(Sender: TObject; var Key: Char);
begin
  FilterColumnGridOnKeyPress(TcxGridDBBandedTableView(TcxGridSite(Sender).GridView), Key);
end;

procedure TfmVagonComment6.dxBarButton10Click(Sender: TObject);
var    i : integer;
      SP : TADOStoredProc;
group_id : integer;
       Q : TADOQuery;
begin
  if Application.MessageBox('Вы точно уверены, что хотите обновить выделенные записи?', 'Внимание', MB_OKCANCEL) = ID_OK then begin
    Screen.Cursor := crHourglass;
    if TComponent(Sender).Tag = 0 Then begin
      group_id := -9;
      Q := TADOQuery.Create(nil);
      Q.Connection := ADOVagonComment6;

      Q.SQL.Clear;
      Q.SQL.Add('SELECT inf_obj_id, inf_obj_name FROM inf_obj WHERE type_inf_id = 160 ORDER BY inf_obj_name');
      Q.Open;

      fmFilter := TfmFilter.Create(0, Q, 'inf_obj_id', 'inf_obj_id', 'inf_obj_name' );
      fmFilter._SelectIndexColumn := 1;
      if fmFilter.ShowModal = mrOk then begin
        group_id := fmFilter.GetId;
      end else begin
        Q.Free;
        exit;
      end;
      Q.Free;
    end;

    SP := TADOStoredProc.Create(nil);
    SP.Connection := ADOVagonComment6;
    SP.ProcedureName := 'sp_vagon_comment6_modify';
    SP.Parameters.Refresh;
    for i := 0 to cxGrid1DBBandedTableView1.Controller.SelectedRowCount - 1 do begin
      SP.Close;
      SP.Parameters.Refresh;
      SP.Parameters.ParamByName('@comment6_id').Value := cxGrid1DBBandedTableView1.Controller.SelectedRows[i].Values[cxGrid1DBBandedTableView1comment6_id.Index];
      SP.Parameters.ParamByName('@type_action').Value := 3;
      case TComponent(Sender).Tag of
        0 : SP.Parameters.ParamByName('@group_id').Value := group_id;
        1 : SP.Parameters.ParamByName('@group_id').Value := NULL;
      end;

      try
        SP.ExecProc;
      except
      end;
      ShowTextMessage('Осталось ' + IntToStr(cxGrid1DBBandedTableView1.Controller.SelectedRowCount - i) + ' записей...', False);
    end;
    ShowTextMessage;
  end;

  RefreshQueryGrid(cxGrid1DBBandedTableView1, 'comment6_id', cxGrid1DBBandedTableView1comment6_id.DataBinding.Field.AsInteger);
  Screen.Cursor := crDefault;
end;

procedure TfmVagonComment6.dxBarButton13Click(Sender: TObject);
var i : integer;
    str_comment6_id: string;
begin
  str_comment6_id := '';
  for i:=0 to cxGrid1DBBandedTableView1.Controller.SelectedRecordCount - 1 do
    str_comment6_id := str_comment6_id + ', ' + IntToStr(cxGrid1DBBandedTableView1.Controller.SelectedRows[i].Values[cxGrid1DBBandedTableView1comment6_id.Index]);
  Delete(str_comment6_id, 1, 2);


  fmVagonComment6Add := TfmVagonComment6Add.Create(Application);
  fmVagonComment6Add._SetUpdateGroup := str_comment6_id;
  if fmVagonComment6Add.ShowModal = mrOk then
    RefreshQueryGrid(cxGrid1DBBandedTableView1, 'comment6_id');

end;

procedure TfmVagonComment6.dxBarButton1Click(Sender: TObject);
begin
  fmVagonComment6Add := TfmVagonComment6Add.Create(Application);
  fmVagonComment6Add._SetInsert := 0;
  if fmVagonComment6Add.ShowModal = mrOk then
    RefreshQueryGrid(cxGrid1DBBandedTableView1, 'comment6_id', fmVagonComment6Add._GetComment6Id);
end;

procedure TfmVagonComment6.dxBarButton20Click(Sender: TObject);
begin
 Fcomment6_id := cxGrid1DBBandedTableView1comment6_id.DataBinding.Field.AsInteger;
 ModalResult  := mrOk;
end;

procedure TfmVagonComment6.dxBarButton25Click(Sender: TObject);
begin
  Screen.Cursor := crHourglass;
  dxBarDateCombo1.Enabled := not dxBarButton25.Down;
  Query_VagonCommet6.Close;
  if dxBarButton25.Down then begin
    Query_VagonCommet6.SQL.Text := str_sql_2;
  end else begin
    Query_VagonCommet6.SQL.Text := str_sql_1;
    Query_VagonCommet6.Parameters.ParamByName('date1').Value := dxBarDateCombo1.Date;
    Query_VagonCommet6.Parameters.ParamByName('date2').Value := dxBarDateCombo1.Date;
  end;
  Query_VagonCommet6.Open;

  RefreshQueryGrid(cxGrid1DBBandedTableView1, 'comment6_id', cxGrid1DBBandedTableView1comment6_id.DataBinding.Field.AsInteger);
  Screen.Cursor := crDefault;
end;

procedure TfmVagonComment6.dxBarButton2Click(Sender: TObject);
begin
  fmVagonComment6Add := TfmVagonComment6Add.Create(Application);
  fmVagonComment6Add._SetUpdate := cxGrid1DBBandedTableView1comment6_id.DataBinding.Field.AsInteger;
  if fmVagonComment6Add.ShowModal = mrOk then
    RefreshQueryGrid(cxGrid1DBBandedTableView1, 'comment6_id', fmVagonComment6Add._GetComment6Id);
end;

procedure TfmVagonComment6.dxBarButton3Click(Sender: TObject);
var SP : TADOStoredProc;
     i : integer;
begin
  Screen.Cursor := crHourglass;
  SP := TADOStoredProc.Create(nil);
  SP.Connection := fmVagonComment6.ADOVagonComment6;
  SP.ProcedureName := 'sp_vagon_comment6_modify';

  for i:=0 to cxGrid1DBBandedTableView1.Controller.SelectedRowCount - 1 do begin
    ShowTextMessage('Осталось ' + IntToStr(cxGrid1DBBandedTableView1.Controller.SelectedRowCount - i) + ' записей...', False);
    SP.Close;
    SP.Parameters.Refresh;
    SP.Parameters.ParamByName('@type_action').Value := 2;
    SP.Parameters.ParamByName('@comment6_id').Value := cxGrid1DBBandedTableView1.Controller.SelectedRows[i].Values[cxGrid1DBBandedTableView1comment6_id.Index];
    SP.ExecProc;
  end;
  SP.Free;

  RefreshQueryGrid(cxGrid1DBBandedTableView1, 'comment6_id');
  ShowTextMessage();

  Screen.Cursor := crDefault;
end;

procedure TfmVagonComment6.dxBarButton4Click(Sender: TObject);
begin
  PrintcxGrid(cxGrid1DBBandedTableView1);
end;

procedure TfmVagonComment6.dxBarButton5Click(Sender: TObject);
begin
  SetRecordColor('comment6_id', cxGrid1DBBandedTableView1, 'VAGON_COMMENT6', (Tcontrol(Sender).Tag = 0));
  RefreshQueryGrid(cxGrid1DBBandedTableView1, 'comment6_id', cxGrid1DBBandedTableView1comment6_id.DataBinding.Field.AsInteger);
end;

procedure TfmVagonComment6.dxBarButton7Click(Sender: TObject);
begin
  SetdxDBGridColumns(cxGrid1DBBandedTableView1);
end;

procedure TfmVagonComment6.dxBarButton8Click(Sender: TObject);
begin
  cxGrid1DBBandedTableView1.OptionsView.GroupByBox := not cxGrid1DBBandedTableView1.OptionsView.GroupByBox;
end;

procedure TfmVagonComment6.dxBarButton9Click(Sender: TObject);
begin
  RefreshQueryGrid(cxGrid1DBBandedTableView1, 'comment6_id', cxGrid1DBBandedTableView1comment6_id.DataBinding.Field.AsInteger);
end;

procedure TfmVagonComment6.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action := caFree;
end;

procedure TfmVagonComment6.FormDestroy(Sender: TObject);
begin
  StoreRegistryGrid(rgSave, '\Software\Lis1\VagonComment6_Grids', cxGrid1DBBandedTableView1);
end;

end.
