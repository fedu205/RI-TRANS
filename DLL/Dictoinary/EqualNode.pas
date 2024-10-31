unit EqualNode;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters, cxStyles,
  cxCustomData, cxFilter, cxData, cxDataStorage, cxEdit, DB, cxDBData, cxPropertiesStore,
  dxBar, cxGridCustomView,cxGridCustomTableView, cxGridTableView, cxGridBandedTableView,
  cxGridDBBandedTableView, cxClasses, cxGridLevel, cxGrid, ADODB, cxColorComboBox, cxCalendar,
  ImgList, Default, StdCtrls, ExtCtrls, cxLocalization, dxSkinsCore,
  dxSkinBlack, dxSkinBlue, dxSkinBlueprint, dxSkinCaramel, dxSkinCoffee,
  dxSkinDarkRoom, dxSkinDarkSide, dxSkinDevExpressDarkStyle,
  dxSkinDevExpressStyle, dxSkinFoggy, dxSkinGlassOceans, dxSkinHighContrast,
  dxSkiniMaginary, dxSkinLilian, dxSkinLiquidSky, dxSkinLondonLiquidSky,
  dxSkinMcSkin, dxSkinMetropolis, dxSkinMetropolisDark, dxSkinMoneyTwins,
  dxSkinOffice2007Black, dxSkinOffice2007Blue, dxSkinOffice2007Green,
  dxSkinOffice2007Pink, dxSkinOffice2007Silver, dxSkinOffice2010Black,
  dxSkinOffice2010Blue, dxSkinOffice2010Silver, dxSkinOffice2013DarkGray,
  dxSkinOffice2013LightGray, dxSkinOffice2013White, dxSkinPumpkin, dxSkinSeven,
  dxSkinSevenClassic, dxSkinSharp, dxSkinSharpPlus, dxSkinSilver,
  dxSkinSpringTime, dxSkinStardust, dxSkinSummer2008, dxSkinTheAsphaltWorld,
  dxSkinsDefaultPainters, dxSkinValentine, dxSkinVS2010, dxSkinWhiteprint,
  dxSkinXmas2008Blue, dxSkinscxPCPainter, cxNavigator, dxSkinsdxBarPainter, dxSkinOffice2016Colorful, dxSkinOffice2016Dark, dxSkinVisualStudio2013Blue, dxSkinVisualStudio2013Dark,
  dxSkinVisualStudio2013Light, System.ImageList, cxImageList,
  cxDataControllerConditionalFormattingRulesManagerDialog, dxSkinTheBezier, dxDateRanges, dxSkinOffice2019Colorful;

type
  TfmEqualNode = class(TForm)
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
    Query_EqualNode: TADOQuery;
    DS_EqualNode: TDataSource;
    cxImageList1: TcxImageList;
    ADOEqualNode: TADOConnection;
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
    cxGrid1DBBandedTableView1inf_obj_name: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1inf_obj_cod: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1inf_obj_name_2: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1inf_obj_cod_2: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1node_node_id: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1node1_id: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1node2_id: TcxGridDBBandedColumn;
    dxBarButton_FilterRecords1: TdxBarButton;
    cxGrid1DBBandedTableView1date_modify: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1FIO_users: TcxGridDBBandedColumn;
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
    procedure cxGrid1DBBandedTableView1DblClick(Sender: TObject);
    procedure dxBarButton3Click(Sender: TObject);
    procedure dxBarButton9Click(Sender: TObject);
    procedure dxBarButton_FilterRecords1Click(Sender: TObject);
  private
    Fusr_pwd   : PUser_pwd;
  public
    constructor Create(App: TApplication; flag: boolean; usr_pwd: PUser_pwd);
  published

  end;

  function CreateWndEqualNode(AppHand: THandle; flag: boolean; usr_pwd: PUser_pwd) : variant; export;

var
  fmEqualNode: TfmEqualNode;

implementation
   uses EqualNodeAdd, Raznoe;
{$R *.dfm}

function CreateWndEqualNode(AppHand: THandle; flag: boolean; usr_pwd: PUser_pwd) : variant; export;
var i : integer;
begin
   Application.Handle := AppHand;
   fmEqualNode := TfmEqualNode.Create(Application, flag, usr_pwd);
   with fmEqualNode do
    try
      if ShowModal=mrOK then result := VarArrayOf([-9, ''])
      else result := VarArrayOf([-9, '']);
    finally
      Free;
    end;
end;

constructor TfmEqualNode.Create(App: TApplication; flag: boolean; usr_pwd: PUser_pwd);
begin
  Screen.Cursor := crHourglass;
  inherited Create(App);
  cxLocalizer1.Locale := 1049;
  Fusr_pwd := usr_pwd;

  StoreRegistryGrid(rgLoad, '\Software\Lis1\EqualNode_Grids', cxGrid1DBBandedTableView1);

  ADOEqualNode.Connected := False;
  ADOEqualNode.ConnectionString := 'Persist Security Info=True;Provider=SQLOLEDB.1;User ID='+usr_pwd^.user_name+';Password='+usr_pwd^.user_pass+';Initial Catalog='+usr_pwd^.catalog+';Data Source='+usr_pwd^.server+';';
  ADOEqualNode.Connected := True;

  Query_EqualNode.Open;

  MonitorEventFormOpen('OPEN_FORM', self.Name, ADOEqualNode, -9);

  Screen.Cursor := crDefault;
end;

procedure TfmEqualNode.cxGrid1DBBandedTableView1CustomDrawCell(Sender: TcxCustomGridTableView; ACanvas: TcxCanvas; AViewInfo: TcxGridTableDataCellViewInfo; var ADone: Boolean);
begin
  if AViewInfo.GridRecord.Selected or AViewInfo.GridRecord.Focused then begin
    ACanvas.Brush.Color := clNavy;
    ACanvas.Font.Color := clWhite;
    if AViewInfo.Focused then ACanvas.Brush.Color := clBlue;
  end;
end;

procedure TfmEqualNode.cxGrid1DBBandedTableView1CustomDrawColumnHeader(Sender: TcxGridTableView; ACanvas: TcxCanvas; AViewInfo: TcxGridColumnHeaderViewInfo; var ADone: Boolean);
begin
  if AViewInfo.Column.Focused then begin
    ACanvas.Brush.Color := clNavy;
    ACanvas.Font.Color := clWhite;
  end;
end;

procedure TfmEqualNode.cxGrid1DBBandedTableView1DataControllerFilterChanged(Sender: TObject);
begin
  DrawcxGridColumnOnFiltered(Sender);
end;

procedure TfmEqualNode.cxGrid1DBBandedTableView1FocusedItemChanged(Sender: TcxCustomGridTableView; APrevFocusedItem, AFocusedItem: TcxCustomGridTableItem);
begin
  Sender.Painter.Invalidate;
end;

procedure TfmEqualNode.cxGrid1DBBandedTableView1KeyPress(Sender: TObject; var Key: Char);
begin
  FilterColumnGridOnKeyPress(cxGrid1DBBandedTableView1, Key);
end;

procedure TfmEqualNode.dxBarButton10Click(Sender: TObject);
begin
  ModalResult := mrOk;
end;

procedure TfmEqualNode.dxBarButton1Click(Sender: TObject);
begin
  fmEqualNodeAdd := TfmEqualNodeAdd.Create(Application, Fusr_pwd);
  fmEqualNodeAdd._SetInsert := 0;
  if fmEqualNodeAdd.ShowModal = mrOk then
    RefreshQueryGrid(cxGrid1DBBandedTableView1, 'node_node_id', fmEqualNodeAdd._GetNodeNodeId);
end;

procedure TfmEqualNode.cxGrid1DBBandedTableView1DblClick(Sender: TObject);
begin
  fmEqualNodeAdd := TfmEqualNodeAdd.Create(Application, Fusr_pwd);
  fmEqualNodeAdd._SetUpdate := cxGrid1DBBandedTableView1node_node_id.DataBinding.Field.AsInteger;
  if fmEqualNodeAdd.ShowModal = mrOk then
    RefreshQueryGrid(cxGrid1DBBandedTableView1, 'node_node_id', fmEqualNodeAdd._GetNodeNodeId);
end;

procedure TfmEqualNode.dxBarButton4Click(Sender: TObject);
begin
  PrintcxGrid(cxGrid1DBBandedTableView1);
end;

procedure TfmEqualNode.dxBarButton7Click(Sender: TObject);
begin
  SetdxDBGridColumns(cxGrid1DBBandedTableView1);
end;

procedure TfmEqualNode.dxBarButton8Click(Sender: TObject);
begin
  cxGrid1DBBandedTableView1.OptionsView.GroupByBox := not cxGrid1DBBandedTableView1.OptionsView.GroupByBox;
end;

procedure TfmEqualNode.dxBarButton9Click(Sender: TObject);
begin
  RefreshQueryGrid(cxGrid1DBBandedTableView1, 'node_node_id', cxGrid1DBBandedTableView1node_node_id.DataBinding.Field.AsInteger);
end;

{$REGION 'Фильтр по всем записям'}
procedure TfmEqualNode.dxBarButton_FilterRecords1Click(Sender: TObject);
begin
  cxGrid1DBBandedTableView1.Filtering.ColumnFilteredItemsList := not dxBarButton_FilterRecords1.Down;
end;
{$ENDREGION 'Фильтр по всем записям'}

procedure TfmEqualNode.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  StoreRegistryGrid(rgSave, '\Software\Lis1\EqualNode_Grids', cxGrid1DBBandedTableView1);
  Action := caFree;
end;

procedure TfmEqualNode.dxBarButton3Click(Sender: TObject);
var SP : TADOStoredProc;
begin
  if Application.MessageBox('Вы точно уверены, что хотите удалить?', 'Внимание', MB_OKCANCEL) = ID_OK then begin
    Screen.Cursor := crHourglass;

    SP := TADOStoredProc.Create(nil);
    SP.Connection := ADOEqualNode;
    SP.ProcedureName := 'sp_node_node_modify;1';
    SP.Parameters.Refresh;
    SP.Parameters.ParamByName('@type_action').Value := 2;
    SP.Parameters.ParamByName('@node_node_id').Value := cxGrid1DBBandedTableView1node_node_id.DataBinding.Field.AsInteger;
    try
      SP.ExecProc;
    except on E: Exception do
      begin
        Application.MessageBox(PChar(E.Message),'ВНИМАНИЕ!!!' , MB_OKCANCEL + MB_ICONERROR);
        ModalResult := mrNone;
      end;
    end;
    SP.Free;

    RefreshQueryGrid(cxGrid1DBBandedTableView1, 'node_node_id');

    Screen.Cursor := crDefault;
  end;
end;

end.
