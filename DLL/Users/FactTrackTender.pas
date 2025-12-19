unit FactTrackTender;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics,  Default,
  Controls, Forms, Dialogs, DB, Data.Win.ADODB, ImageList, ImgList, Menus,
  cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters, dxSkinsCore, dxSkinBlack, dxSkinBlue, dxSkinBlueprint, dxSkinCaramel,
  dxSkinCoffee, dxSkinDarkroom, dxSkinDarkSide, dxSkinDevExpressDarkStyle, dxSkinDevExpressStyle, dxSkinFoggy, dxSkinGlassOceans, dxSkinHighContrast, dxSkinLilian, dxSkinLiquidSky,
  dxSkinLondonLiquidSky, dxSkinMcSkin, dxSkinMetropolis, dxSkinMetropolisDark, dxSkinMoneyTwins, dxSkinOffice2007Black, dxSkinOffice2007Blue, dxSkinOffice2007Green,
  dxSkinOffice2007Pink, dxSkinOffice2007Silver, dxSkinOffice2010Black, dxSkinOffice2010Blue, dxSkinOffice2010Silver, dxSkinOffice2013DarkGray, dxSkinOffice2013LightGray,
  dxSkinOffice2013White, dxSkinOffice2016Colorful, dxSkinOffice2016Dark, dxSkinPumpkin, dxSkinSeven, dxSkinSevenClassic, dxSkinSharp, dxSkinSharpPlus, dxSkinSilver,
  dxSkinSpringtime, dxSkinStardust, dxSkinSummer2008, dxSkinTheAsphaltWorld, dxSkinTheBezier, dxSkinValentine, dxSkinVisualStudio2013Blue, dxSkinVisualStudio2013Dark,
  dxSkinVisualStudio2013Light, dxSkinVS2010, dxSkinWhiteprint, dxSkinXmas2008Blue, cxStyles, cxCustomData, cxFilter, cxData, cxDataStorage, cxEdit, cxNavigator, dxDateRanges,
  dxScrollbarAnnotations, cxDBData, cxCheckBox, cxCalendar, cxGridLevel, cxGridCustomTableView, cxGridTableView, cxGridBandedTableView, cxGridDBBandedTableView, cxClasses,
  cxGridCustomView, cxGrid, dxBar, cxImageList, cxPropertiesStore, cxCurrencyEdit;

type
  TfmFactTrackTender = class(TForm)
    cxGrid1: TcxGrid;
    cxGrid1DBBandedTableView1: TcxGridDBBandedTableView;
    cxGrid1DBBandedTableView1tender_id: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1tender_cod: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1tender_date: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1tender_date_public: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1FIO_users_owner: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1date_enter: TcxGridDBBandedColumn;
    cxGrid1Level1: TcxGridLevel;
    dxBarManager1: TdxBarManager;
    dxBarManager1Bar1: TdxBar;
    dxBarButton1: TdxBarButton;
    dxBarButton2: TdxBarButton;
    dxBarButton3: TdxBarButton;
    dxBarButton4: TdxBarButton;
    dxBarButton6: TdxBarButton;
    dxBarButton11: TdxBarButton;
    dxBarSubItem1: TdxBarSubItem;
    dxBarButton12: TdxBarButton;
    dxBarButton13: TdxBarButton;
    dxBarButton14: TdxBarButton;
    dxBarButton15: TdxBarButton;
    dxBarSubItem3: TdxBarSubItem;
    dxBarButton7: TdxBarButton;
    dxBarButton17: TdxBarButton;
    dxBarSubItem2: TdxBarSubItem;
    dxBarButton_ColumnFiltered2: TdxBarButton;
    dxBarButton36: TdxBarButton;
    dxBarSubItem4: TdxBarSubItem;
    dxBarButton43: TdxBarButton;
    dxBarButton44: TdxBarButton;
    dxBarButton47: TdxBarButton;
    cxPropertiesStore1: TcxPropertiesStore;
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
    cxStyle1: TcxStyle;
    cxStyle_BlueBold: TcxStyle;
    cxStyle_ColorWhite: TcxStyle;
    Query_Tender: TADOQuery;
    DS_Tender: TDataSource;
    dxBarPopup_Tender: TdxBarPopupMenu;
    cxGrid1DBBandedTableView1global_color: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1tender_date_force: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1tender_date_begin: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1tender_date_end: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1tender_date_registr: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1tender_rate_1: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1tender_rate_2: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1tender_rate_3: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1tender_rate_4: TcxGridDBBandedColumn;
    ADOTender: TADOConnection;
    cxGrid1DBBandedTableView1comment: TcxGridDBBandedColumn;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormDestroy(Sender: TObject);
    procedure cxGrid1DBBandedTableView1CustomDrawCell(Sender: TcxCustomGridTableView; ACanvas: TcxCanvas; AViewInfo: TcxGridTableDataCellViewInfo; var ADone: Boolean);
    procedure cxGrid1DBBandedTableView1CustomDrawColumnHeader(Sender: TcxGridTableView; ACanvas: TcxCanvas; AViewInfo: TcxGridColumnHeaderViewInfo; var ADone: Boolean);
    procedure cxGrid1DBBandedTableView1DataControllerFilterChanged(Sender: TObject);
    procedure cxGrid1DBBandedTableView1FocusedItemChanged(Sender: TcxCustomGridTableView; APrevFocusedItem, AFocusedItem: TcxCustomGridTableItem);
    procedure cxGrid1DBBandedTableView1KeyPress(Sender: TObject; var Key: Char);
    procedure dxBarButton1Click(Sender: TObject);
    procedure dxBarButton2Click(Sender: TObject);
    procedure dxBarButton3Click(Sender: TObject);
    procedure dxBarButton11Click(Sender: TObject);
    procedure dxBarButton12Click(Sender: TObject);
    procedure dxBarButton4Click(Sender: TObject);
  private
    { Private declarations }
  public
    constructor Create(AOwner: TApplication; str_connect: string);
  end;

  function CreateWndFactTrackTender(AppHand: THandle; str_connect: string) : Variant; export;

var
  fmFactTrackTender: TfmFactTrackTender;

implementation
  uses Raznoe, FactTrackTenderAdd;

{$R *.dfm}
function CreateWndFactTrackTender(AppHand: THandle; str_connect: string) : Variant;
begin
  Application.Handle := AppHand;
  try
    fmFactTrackTender := TfmFactTrackTender.Create(Application, str_connect);
    if fmFactTrackTender.ShowModal = mrOk then
      result := VarArrayOf([-9, ''])
    else
      result := VarArrayOf([-9, '']);
  finally
    fmFactTrackTender.Free;
  end;
end;

constructor TfmFactTrackTender.Create(AOwner: TApplication; str_connect: string);
begin
  Screen.Cursor := crHourGlass;
  inherited Create(nil);
  ADOTender.ConnectionString := str_connect;

  StoreRegistryGrid(rgLoad, '\Software\Lis1\FactTrackTender_Grids', cxGrid1DBBandedTableView1);

  Query_Tender.Connection := ADOTender;
  Query_Tender.Open;

  Screen.Cursor := crDefault;
end;

procedure TfmFactTrackTender.cxGrid1DBBandedTableView1CustomDrawCell(Sender: TcxCustomGridTableView; ACanvas: TcxCanvas; AViewInfo: TcxGridTableDataCellViewInfo;  var ADone: Boolean);
begin
  if (AViewInfo.GridRecord.Values[cxGrid1DBBandedTableView1global_color.Index]<>NULL) then
     ACanvas.Brush.Color := AViewInfo.GridRecord.Values[cxGrid1DBBandedTableView1global_color.Index];

  if AViewInfo.GridRecord.Selected or AViewInfo.GridRecord.Focused then begin
    ACanvas.Brush.Color := clNavy;
    ACanvas.Font.Color := clWhite;
    if AViewInfo.Focused then ACanvas.Brush.Color := clBlue;
  end;

end;

procedure TfmFactTrackTender.cxGrid1DBBandedTableView1CustomDrawColumnHeader(Sender: TcxGridTableView; ACanvas: TcxCanvas; AViewInfo: TcxGridColumnHeaderViewInfo; var ADone: Boolean);
begin
  DrawcxGridColumnOnFocused(Sender, ACanvas, AViewInfo);
end;

procedure TfmFactTrackTender.cxGrid1DBBandedTableView1DataControllerFilterChanged(Sender: TObject);
begin
  DrawcxGridColumnOnFiltered(Sender);
end;

procedure TfmFactTrackTender.cxGrid1DBBandedTableView1FocusedItemChanged(Sender: TcxCustomGridTableView; APrevFocusedItem, AFocusedItem: TcxCustomGridTableItem);
begin
  Sender.Painter.Invalidate;
end;

procedure TfmFactTrackTender.cxGrid1DBBandedTableView1KeyPress(Sender: TObject; var Key: Char);
begin
  FilterColumnGridOnKeyPress(TcxGridDBBandedTableView(TcxGridSite(Sender).GridView), Key);
end;

procedure TfmFactTrackTender.dxBarButton11Click(Sender: TObject);
begin
  case TdxBar(TdxBarItemLink(TdxBarButton(Sender).ClickItemLink).Owner.Owner).Tag of
    0 : PrintcxGrid(cxGrid1DBBandedTableView1);
  end;
end;

procedure TfmFactTrackTender.dxBarButton12Click(Sender: TObject);
begin
  case TdxBar(TdxBarItemLink(TdxBarButton(Sender).ClickItemLink).Owner.Owner).Tag of
    0 : SetRecordColor('tender_id', cxGrid1DBBandedTableView1, 'FACT_TRACK_TENDER', (TMenuItem(Sender).Tag=0));
  end;
  RefreshQueryGrid(cxGrid1DBBandedTableView1, 'tender_id');
end;

procedure TfmFactTrackTender.dxBarButton1Click(Sender: TObject);
begin
  fmFactTrackTenderAdd := TfmFactTrackTenderAdd.Create(Application);
  if fmFactTrackTenderAdd.ShowModal = mrOk then
    RefreshQueryGrid(cxGrid1DBBandedTableView1, 'tender_id', fmFactTrackTenderAdd._GetTenderID)
end;

procedure TfmFactTrackTender.dxBarButton2Click(Sender: TObject);
begin
  fmFactTrackTenderAdd := TfmFactTrackTenderAdd.Create(Application);
  fmFactTrackTenderAdd._SetUpdate := cxGrid1DBBandedTableView1tender_id.DataBinding.Field.AsInteger;
  if fmFactTrackTenderAdd.ShowModal = mrOk then
    RefreshQueryGrid(cxGrid1DBBandedTableView1, 'tender_id', fmFactTrackTenderAdd._GetTenderID)
end;

procedure TfmFactTrackTender.dxBarButton3Click(Sender: TObject);
var SP: TADOStoredProc;
     i: integer;
begin
  if Application.MessageBox('Вы уверены?', 'Внимание!', MB_OKCANCEL) = ID_OK then begin
    SP := TADOStoredProc.Create(nil);
    SP.Connection := fmFactTrackTender.ADOTender;
    SP.ProcedureName := 'sp_fact_track_tender_modify';
    SP.Parameters.Refresh;

    for i:=0 to cxGrid1DBBandedTableView1.Controller.SelectedRowCount - 1 do begin
      SP.Close;
      SP.Parameters.ParamByName('@tender_id').Value := 2;
      SP.Parameters.ParamByName('@tender_id').Value := cxGrid1DBBandedTableView1.Controller.SelectedRows[i].Values[cxGrid1DBBandedTableView1tender_id.Index];
      SP.ExecProc;
    end;
    SP.Free;

    RefreshQueryGrid(cxGrid1DBBandedTableView1, 'tender_id');
  end;
end;

procedure TfmFactTrackTender.dxBarButton4Click(Sender: TObject);
begin
  RefreshQueryGrid(cxGrid1DBBandedTableView1, 'tender_id', cxGrid1DBBandedTableView1tender_id.DataBinding.Field.AsInteger);
end;

procedure TfmFactTrackTender.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action := caFree;
end;

procedure TfmFactTrackTender.FormDestroy(Sender: TObject);
begin
  StoreRegistryGrid(rgSave, '\Software\Lis1\FactTrackTender_Grids', cxGrid1DBBandedTableView1);
end;

end.
