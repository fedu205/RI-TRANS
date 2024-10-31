unit EtrMailing;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms, Default,
  Dialogs, cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters, cxStyles, cxCustomData, cxFilter, cxData, cxDataStorage, cxEdit,
  DB, cxDBData, cxPropertiesStore, dxBar, cxGridCustomView,cxGridCustomTableView, cxGridTableView, cxGridBandedTableView, cxGridDBBandedTableView,
  cxClasses, cxGridLevel, cxGrid, ADODB, cxColorComboBox, cxCalendar, ImgList, StdCtrls, ExtCtrls, cxLocalization, dxSkinsCore, dxSkinBlack,
  dxSkinBlue, dxSkinBlueprint, dxSkinCaramel, dxSkinCoffee, dxSkinDarkRoom, dxSkinDarkSide, dxSkinDevExpressDarkStyle, dxSkinDevExpressStyle,
  dxSkinFoggy, dxSkinGlassOceans, dxSkinHighContrast, dxSkiniMaginary, dxSkinLilian, dxSkinLiquidSky, dxSkinLondonLiquidSky, dxSkinMcSkin,
  dxSkinMetropolis, dxSkinMetropolisDark, dxSkinMoneyTwins, dxSkinOffice2007Black, dxSkinOffice2007Blue, dxSkinOffice2007Green,
  dxSkinOffice2007Pink, dxSkinOffice2007Silver, dxSkinOffice2010Black, dxSkinOffice2010Blue, dxSkinOffice2010Silver, dxSkinOffice2013DarkGray,
  dxSkinOffice2013LightGray, dxSkinOffice2013White, dxSkinPumpkin, dxSkinSeven, dxSkinSevenClassic, dxSkinSharp, dxSkinSharpPlus, dxSkinSilver,
  dxSkinSpringTime, dxSkinStardust, dxSkinSummer2008, dxSkinTheAsphaltWorld, dxSkinsDefaultPainters, dxSkinValentine, dxSkinVS2010, dxSkinWhiteprint,
  dxSkinXmas2008Blue, dxSkinscxPCPainter, cxNavigator, dxSkinsdxBarPainter, dxSkinOffice2016Colorful, dxSkinOffice2016Dark, dxSkinVisualStudio2013Blue,
  dxSkinVisualStudio2013Dark, dxSkinVisualStudio2013Light, System.ImageList, cxImageList, cxDataControllerConditionalFormattingRulesManagerDialog,
  dxSkinTheBezier, dxDateRanges, dxSkinOffice2019Colorful, dxSkinBasic, dxSkinOffice2019Black, dxSkinOffice2019DarkGray, dxSkinOffice2019White,
  dxScrollbarAnnotations, dxCore, dxSkinsForm, cxCurrencyEdit;

type
  TfmEtrMailing = class(TForm)
    cxGrid1Level1: TcxGridLevel;
    cxGrid1: TcxGrid;
    cxGrid1DBBandedTableView1: TcxGridDBBandedTableView;
    dxBarManager1: TdxBarManager;
    cxPropertiesStore1: TcxPropertiesStore;
    dxBarManager1Bar1: TdxBar;
    dxBarButton1: TdxBarButton;
    dxBarButton3: TdxBarButton;
    dxBarButton4: TdxBarButton;
    dxBarSubItem1: TdxBarSubItem;
    dxBarButton7: TdxBarButton;
    dxBarButton8: TdxBarButton;
    dxBarButton9: TdxBarButton;
    dxBarPopupMenu1: TdxBarPopupMenu;
    Query_EtrMailing: TADOQuery;
    DS_EtrMailing: TDataSource;
    cxImageList1: TcxImageList;
    ADOEtrMailing: TADOConnection;
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
    cxLocalizer1: TcxLocalizer;
    dxBarButton_FilterRecords1: TdxBarButton;
    cxGrid1DBBandedTableView1mailing_id: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1mailing_name: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1mailing_time: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1mailing_recipients: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1mailing_copy_recipients: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1comment: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1date_begin: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1date_end: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1date_modify: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1FIO_users_owner: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1mailing_last_date: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1mailing_error_msg: TcxGridDBBandedColumn;
    dxBarButton2: TdxBarButton;
    dxBarButton6: TdxBarButton;
    dxBarButton10: TdxBarButton;
    dxBarButton11: TdxBarButton;
    dxBarButton12: TdxBarButton;
    dxBarButton13: TdxBarButton;
    cxGrid1DBBandedTableView1date_enter: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1mailing_cod: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1mailing_sum: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1mailing_firm_id: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1mailing_field_id: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1mailing_condition_id: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1condition_name: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1field_name: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1firm_name: TcxGridDBBandedColumn;
    procedure dxBarButton1Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure dxBarButton4Click(Sender: TObject);
    procedure dxBarButton7Click(Sender: TObject);
    procedure dxBarButton8Click(Sender: TObject);
    procedure dxBarButton10Click(Sender: TObject);
    procedure cxGrid1DBBandedTableView1CustomDrawCell(Sender: TcxCustomGridTableView; ACanvas: TcxCanvas; AViewInfo: TcxGridTableDataCellViewInfo; var ADone: Boolean);
    procedure cxGrid1DBBandedTableView1CustomDrawColumnHeader(Sender: TcxGridTableView; ACanvas: TcxCanvas; AViewInfo: TcxGridColumnHeaderViewInfo; var ADone: Boolean);
    procedure cxGrid1DBBandedTableView1KeyPress(Sender: TObject; var Key: Char);
    procedure cxGrid1DBBandedTableView1FocusedItemChanged(Sender: TcxCustomGridTableView; APrevFocusedItem, AFocusedItem: TcxCustomGridTableItem);
    procedure cxGrid1DBBandedTableView1DataControllerFilterChanged(Sender: TObject);
    procedure dxBarButton3Click(Sender: TObject);
    procedure dxBarButton9Click(Sender: TObject);
    procedure dxBarButton_FilterRecords1Click(Sender: TObject);
    procedure dxBarButton2Click(Sender: TObject);
    procedure dxBarButton6Click(Sender: TObject);
    procedure dxBarButton11Click(Sender: TObject);
  private
    Fusr_pwd   : PUser_pwd;
  public
    constructor Create(App: TApplication; users_group_cod: string; usr_pwd: PUser_pwd);
  published

  end;

  function CreateWndEtrMailing(AppHand: THandle; users_group_cod: string; usr_pwd:PUser_pwd) : variant; export;

var
  fmEtrMailing: TfmEtrMailing;

implementation
   uses EtrMailingAdd, Raznoe, StrUtils, EtrUtils;
{$R *.dfm}

function CreateWndEtrMailing(AppHand: THandle; users_group_cod: string; usr_pwd:PUser_pwd) : variant; export;
begin
   Application.Handle := AppHand;
   fmEtrMailing := TfmEtrMailing.Create(Application, users_group_cod, usr_pwd);
   with fmEtrMailing do
    try
      if ShowModal=mrOK then result := VarArrayOf([-9, ''])
      else result := VarArrayOf([-9, '']);
    finally
      Free;
    end;
end;

constructor TfmEtrMailing.Create(App: TApplication; users_group_cod: string; usr_pwd: PUser_pwd);
begin
  Screen.Cursor := crHourglass;
  inherited Create(App);
  cxLocalizer1.Locale := 1049;
  Fusr_pwd := usr_pwd;

  ADOEtrMailing.Connected := False;
  ADOEtrMailing.ConnectionString := GetEtranConnect(users_group_cod, Fusr_pwd);
  ADOEtrMailing.Connected := True;

  Query_EtrMailing.Open;

  cxGrid1DBBandedTableView1.Controller.GoToFirst;
  StoreRegistryGrid(rgLoad, '\Software\Lis1\EtrMailing_Grids', cxGrid1DBBandedTableView1);

//   MonitorEventFormOpen('OPEN_FORM', self.Name, ADOEtrMailing, -9);
  Screen.Cursor := crDefault;
end;

procedure TfmEtrMailing.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  StoreRegistryGrid(rgSave, '\Software\Lis1\EtrMailing_Grids', cxGrid1DBBandedTableView1);
  Action := caFree;
end;

procedure TfmEtrMailing.cxGrid1DBBandedTableView1CustomDrawCell(Sender: TcxCustomGridTableView; ACanvas: TcxCanvas; AViewInfo: TcxGridTableDataCellViewInfo; var ADone: Boolean);
begin
  if AViewInfo.GridRecord.Selected or AViewInfo.GridRecord.Focused then begin
    ACanvas.Brush.Color := clNavy;
    ACanvas.Font.Color := clWhite;
    if AViewInfo.Focused then ACanvas.Brush.Color := clBlue;
  end;
end;

procedure TfmEtrMailing.cxGrid1DBBandedTableView1CustomDrawColumnHeader(Sender: TcxGridTableView; ACanvas: TcxCanvas; AViewInfo: TcxGridColumnHeaderViewInfo; var ADone: Boolean);
begin
  if AViewInfo.Column.Focused then begin
    ACanvas.Brush.Color := clNavy;
    ACanvas.Font.Color := clWhite;
  end;
end;

procedure TfmEtrMailing.cxGrid1DBBandedTableView1DataControllerFilterChanged(Sender: TObject);
begin
  DrawcxGridColumnOnFiltered(Sender);
end;

procedure TfmEtrMailing.cxGrid1DBBandedTableView1FocusedItemChanged(Sender: TcxCustomGridTableView; APrevFocusedItem, AFocusedItem: TcxCustomGridTableItem);
begin
  Sender.Painter.Invalidate;
end;

procedure TfmEtrMailing.cxGrid1DBBandedTableView1KeyPress(Sender: TObject; var Key: Char);
begin
  FilterColumnGridOnKeyPress(cxGrid1DBBandedTableView1, Key);
end;

procedure TfmEtrMailing.dxBarButton10Click(Sender: TObject);
begin
  ModalResult := mrOk;
end;

procedure TfmEtrMailing.dxBarButton11Click(Sender: TObject);
begin
  fmEtrMailingAdd := TfmEtrMailingAdd.Create(Application, ADOEtrMailing);
  fmEtrMailingAdd._SetUpdate := cxGrid1DBBandedTableView1mailing_id.DataBinding.Field.AsInteger;
  if fmEtrMailingAdd.ShowModal = mrOk then
    RefreshQueryGrid(cxGrid1DBBandedTableView1, 'mailing_id', fmEtrMailingAdd._GetMailingeId);
end;

procedure TfmEtrMailing.dxBarButton1Click(Sender: TObject);
begin
  fmEtrMailingAdd := TfmEtrMailingAdd.Create(Application, ADOEtrMailing);
  fmEtrMailingAdd._SetInsert := 0;
  if fmEtrMailingAdd.ShowModal = mrOk then
    RefreshQueryGrid(cxGrid1DBBandedTableView1, 'mailing_id', fmEtrMailingAdd._GetMailingeId);
end;

procedure TfmEtrMailing.dxBarButton2Click(Sender: TObject);
begin
  Screen.Cursor := crHourglass;
  Query_EtrMailing.Close;

  if dxBarButton2.Down then begin
    Query_EtrMailing.SQL.Text := ReplaceStr(Query_EtrMailing.SQL.Text, ' 1=1 ', ' ((date_end  IS NULL) OR  (date_end >= GETDATE() - 1))');
  end else begin
    Query_EtrMailing.SQL.Text := ReplaceStr(Query_EtrMailing.SQL.Text, ' ((date_end  IS NULL) OR  (date_end >= GETDATE() - 1))', ' 1=1 ');
  end;

  Query_EtrMailing.Open;
  if cxGrid1DBBandedTableView1.DataController.LocateByKey(cxGrid1DBBandedTableView1mailing_id.DataBinding.Field.AsInteger) = False
    then cxGrid1DBBandedTableView1.Controller.GoToFirst;

  //RefreshQueryGrid(cxGrid1DBBandedTableView1, 'mailing_id', cxGrid1DBBandedTableView1mailing_id.DataBinding.Field.AsInteger);
  Screen.Cursor := crDefault;
end;

procedure TfmEtrMailing.dxBarButton4Click(Sender: TObject);
begin
  PrintcxGrid(cxGrid1DBBandedTableView1);
end;

procedure TfmEtrMailing.dxBarButton6Click(Sender: TObject);
var SP :TADOStoredProc;
begin
  Screen.Cursor := crHourglass;
  if Application.MessageBox('Вы точно уверены, что хотите отправить рассылку получателям?', 'Внимание', MB_OKCANCEL) = ID_OK then begin
    SP := TADOStoredProc.Create(nil);
    SP.CommandTimeout := 200;
    SP.Connection := ADOEtrMailing;
//    SP.ConnectionString :=  'Persist Security Info=True;Provider=SQLOLEDB.1;User ID=admin_gru;Initial Catalog=lis1;Data Source=92.53.107.222;';
    SP.ProcedureName    := 'sp_etran_mailing_sent';
    SP.Parameters.Refresh;
    SP.Parameters.ParamByName('@mailing_id').Value := cxGrid1DBBandedTableView1mailing_id.DataBinding.Field.AsInteger;
    SP.ExecProc;
    RefreshQueryGrid(cxGrid1DBBandedTableView1, 'mailing_id', cxGrid1DBBandedTableView1mailing_id.DataBinding.Field.AsInteger);
    SP.Free;
  end;
  Screen.Cursor := crDefault;
end;

procedure TfmEtrMailing.dxBarButton7Click(Sender: TObject);
begin
  SetdxDBGridColumns(cxGrid1DBBandedTableView1);
end;

procedure TfmEtrMailing.dxBarButton8Click(Sender: TObject);
begin
  cxGrid1DBBandedTableView1.OptionsView.GroupByBox := not cxGrid1DBBandedTableView1.OptionsView.GroupByBox;
end;

procedure TfmEtrMailing.dxBarButton9Click(Sender: TObject);
begin
  RefreshQueryGrid(cxGrid1DBBandedTableView1, 'mailing_id', cxGrid1DBBandedTableView1mailing_id.DataBinding.Field.AsInteger);
end;

{$REGION 'Фильтр по всем записям'}
procedure TfmEtrMailing.dxBarButton_FilterRecords1Click(Sender: TObject);
begin
  cxGrid1DBBandedTableView1.Filtering.ColumnFilteredItemsList := not dxBarButton_FilterRecords1.Down;
end;
{$ENDREGION 'Фильтр по всем записям'}

procedure TfmEtrMailing.dxBarButton3Click(Sender: TObject);
var SP : TADOStoredProc;
begin
  if Application.MessageBox('Вы точно уверены, что хотите удалить?', 'Внимание', MB_OKCANCEL) = ID_OK then begin
    Screen.Cursor := crHourglass;
    SP := TADOStoredProc.Create(nil);
    SP.Connection := ADOEtrMailing;
    SP.ProcedureName := 'sp_etran_mailing_modify;1';
    SP.Parameters.Refresh;
    SP.Parameters.ParamByName('@type_action').Value := 2;
    SP.Parameters.ParamByName('@mailing_id' ).Value := cxGrid1DBBandedTableView1mailing_id.DataBinding.Field.AsInteger;
    try
      SP.ExecProc;
    except
      on E: Exception do
        Application.MessageBox(PChar(E.Message), 'Ошибка', MB_OK or MB_ICONERROR);
    end;
    RefreshQueryGrid(cxGrid1DBBandedTableView1, 'mailing_id');
    SP.Free;

    Screen.Cursor := crDefault;
  end;
end;

end.
