unit LowClaim;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs, ShellAPI, Default,
  StdCtrls, ExtCtrls, ComCtrls, Db, ADODB, Variants, Menus, ComObj,
  cxPropertiesStore, cxClasses, cxControls, cxGridCustomView, cxGridCustomTableView, cxGridTableView, cxGridBandedTableView,
  cxGridDBBandedTableView, cxGridLevel, cxGrid,  cxGraphics,  cxStyles, cxCustomData, cxFilter, cxData, cxDataStorage, cxEdit,
  cxDBData, cxCalendar, cxCurrencyEdit, cxContainer, cxLabel, cxCheckBox, cxLookAndFeelPainters,   cxButtons, cxPC, dxGDIPlusClasses,
  dxBar, cxLookAndFeels, dxSkinsCore, dxSkinBlack, dxSkinBlue, dxSkinBlueprint, dxSkinCaramel, dxSkinCoffee, dxSkinDarkRoom, dxSkinDarkSide,
  dxSkinDevExpressDarkStyle, dxSkinDevExpressStyle, dxSkinFoggy, dxSkinGlassOceans, dxSkinHighContrast, dxSkiniMaginary, dxSkinLilian,
  dxSkinLiquidSky, dxSkinLondonLiquidSky, dxSkinMcSkin, dxSkinMetropolis, dxSkinMetropolisDark, dxSkinMoneyTwins, dxSkinOffice2007Black,
  dxSkinOffice2007Blue, dxSkinOffice2007Green, dxSkinOffice2007Pink, dxSkinOffice2007Silver, dxSkinOffice2010Black, dxSkinOffice2010Blue,
  dxSkinOffice2010Silver, dxSkinOffice2013DarkGray, dxSkinOffice2013LightGray, dxSkinOffice2013White, dxSkinPumpkin, dxSkinSeven,
  dxSkinSevenClassic, dxSkinSharp, dxSkinSharpPlus, dxSkinSilver, dxSkinSpringTime, dxSkinStardust, dxSkinSummer2008,
  dxSkinTheAsphaltWorld, dxSkinsDefaultPainters, dxSkinValentine, dxSkinVS2010, dxSkinWhiteprint, dxSkinXmas2008Blue,
  dxSkinscxPCPainter, cxNavigator, dxSkinsdxBarPainter, dxSkinOffice2016Colorful, dxSkinOffice2016Dark, dxSkinVisualStudio2013Blue,
  dxSkinVisualStudio2013Dark, dxSkinVisualStudio2013Light, dxDateRanges, dxSkinTheBezier, dxScrollbarAnnotations,  dxSkinWXI,
  cxColorComboBox, dxBarBuiltInMenu;

type
  TfmLowClaim = class(TForm)
    cxGrid1Level1: TcxGridLevel;
    cxGrid1: TcxGrid;
    cxGrid1DBBandedTableView1: TcxGridDBBandedTableView;
    cxPropertiesStore1: TcxPropertiesStore;
    Query_LowClaim: TADOQuery;
    DS_LowClaim: TDataSource;
    cxGrid1DBBandedTableView1low_claim_id: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1low_claim_date: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1comment: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1contract_cod: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1type_contract: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1firm_self_name: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1firm_customer_name: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1FIO_users_owner: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1global_color: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1contract_id: TcxGridDBBandedColumn;
    dxBarManager1: TdxBarManager;
    dxBarManager1Bar1: TdxBar;
    dxBarSubItem1: TdxBarSubItem;
    dxBarButton2: TdxBarButton;
    dxBarButton3: TdxBarButton;
    Popup_Pay: TdxBarPopupMenu;
    N1: TdxBarButton;
    N2: TdxBarButton;
    N3: TdxBarButton;
    Excel2: TdxBarButton;
    N7: TdxBarButton;
    N8: TdxBarButton;
    N10: TdxBarButton;
    N11: TdxBarButton;
    N4: TdxBarSubItem;
    dxBarButton1: TdxBarButton;
    dxBarButton4: TdxBarButton;
    dxBarButton5: TdxBarButton;
    dxBarSubItem2: TdxBarSubItem;
    dxBarButton_FilterRecords1: TdxBarButton;
    dxBarButton_FilterRecords2: TdxBarButton;
    dxBarButton12: TdxBarButton;
    dxBarButton13: TdxBarButton;
    cxGrid1DBBandedTableView1date_enter: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1firm_self: TcxGridDBBandedColumn;
    dxBarSubItem4: TdxBarSubItem;
    Query_Fact: TADOQuery;
    DS_Fact: TDataSource;
    dxBarPopupMenu1: TdxBarPopupMenu;
    dxBarButton21: TdxBarButton;
    dxBarSubItem5: TdxBarSubItem;
    dxBarButton22: TdxBarButton;
    dxBarButton23: TdxBarButton;
    cxPageControl1: TcxPageControl;
    cxTabSheet1: TcxTabSheet;
    cxTabSheet2: TcxTabSheet;
    Query_Pay: TADOQuery;
    DS_Pay: TDataSource;
    cxPageControl2: TcxPageControl;
    cxTabSheet4: TcxTabSheet;
    cxGrid3: TcxGrid;
    cxGrid3DBBandedTableView1: TcxGridDBBandedTableView;
    cxGrid3DBBandedTableView1pay_pr_id: TcxGridDBBandedColumn;
    cxGrid3DBBandedTableView1pay_id: TcxGridDBBandedColumn;
    cxGrid3DBBandedTableView1inv_id: TcxGridDBBandedColumn;
    cxGrid3DBBandedTableView1pay_pr_sum: TcxGridDBBandedColumn;
    cxGrid3DBBandedTableView1inv_currency_id: TcxGridDBBandedColumn;
    cxGrid3DBBandedTableView1pay_firm_self_name: TcxGridDBBandedColumn;
    cxGrid3DBBandedTableView1pay_currency_id: TcxGridDBBandedColumn;
    cxGrid3DBBandedTableView1pay_brief_name: TcxGridDBBandedColumn;
    cxGrid3DBBandedTableView1pay_cod: TcxGridDBBandedColumn;
    cxGrid3DBBandedTableView1invoice_cod: TcxGridDBBandedColumn;
    cxGrid3DBBandedTableView1invoice_date: TcxGridDBBandedColumn;
    cxGrid3DBBandedTableView1invoice_sum: TcxGridDBBandedColumn;
    cxGrid3DBBandedTableView1exchange_USD_val: TcxGridDBBandedColumn;
    cxGrid3DBBandedTableView1exchange_EUR_val: TcxGridDBBandedColumn;
    cxGrid3DBBandedTableView1exchange_CHF_val: TcxGridDBBandedColumn;
    cxGrid3DBBandedTableView1pr_sum_income: TcxGridDBBandedColumn;
    cxGrid3DBBandedTableView1pay_sum_income: TcxGridDBBandedColumn;
    cxGrid3DBBandedTableView1inv_firm_customer_name_short: TcxGridDBBandedColumn;
    cxGrid3DBBandedTableView1rest_invoice_sum: TcxGridDBBandedColumn;
    cxGrid3DBBandedTableView1pay_rest: TcxGridDBBandedColumn;
    cxGrid3DBBandedTableView1pay_sum_inv: TcxGridDBBandedColumn;
    cxGrid3DBBandedTableView1inv_sum_pay: TcxGridDBBandedColumn;
    cxGrid3DBBandedTableView1pay_sum: TcxGridDBBandedColumn;
    cxGrid3DBBandedTableView1pay_inv_currency_id: TcxGridDBBandedColumn;
    cxGrid3DBBandedTableView1pay_inv_date: TcxGridDBBandedColumn;
    cxGrid3DBBandedTableView1pay_date: TcxGridDBBandedColumn;
    cxGrid3DBBandedTableView1pay_firm_customer_name_short: TcxGridDBBandedColumn;
    cxGrid3Level1: TcxGridLevel;
    dxBarPopupMenu2: TdxBarPopupMenu;
    dxBarButton25: TdxBarButton;
    dxBarButton26: TdxBarButton;
    dxBarButton27: TdxBarButton;
    cxGrid1DBBandedTableView1low_claim_cod: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1court_name: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1claim_sum: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1gos_fee_sum: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1court_num: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1court_status: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1prepare_documents: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1court_data: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1sum_1: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1sum_2: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1sum_3: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1access_code: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1penalty_num: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1sum_5: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1sum_6: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1sum_7: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1date_sz: TcxGridDBBandedColumn;
    procedure dxBarButton2Click(Sender: TObject);
    procedure cxGrid1DBBandedTableView1KeyPress(Sender: TObject; var Key: Char);
    procedure cxGrid1DBBandedTableView1FocusedItemChanged(Sender: TcxCustomGridTableView; APrevFocusedItem, AFocusedItem: TcxCustomGridTableItem);
    procedure cxGrid1DBBandedTableView1CustomDrawColumnHeader(Sender: TcxGridTableView; ACanvas: TcxCanvas; AViewInfo: TcxGridColumnHeaderViewInfo; var ADone: Boolean);
    procedure cxGrid1DBBandedTableView1DataControllerFilterChanged( Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure N3Click(Sender: TObject);
    procedure N1Click(Sender: TObject);
    procedure N2Click(Sender: TObject);
    procedure N10Click(Sender: TObject);
    procedure cxGrid1DBBandedTableView1CustomDrawCell(Sender: TcxCustomGridTableView; ACanvas: TcxCanvas; AViewInfo: TcxGridTableDataCellViewInfo; var ADone: Boolean);
    procedure N7Click(Sender: TObject);
    procedure N11Click(Sender: TObject);
    procedure ToolButton16Click(Sender: TObject);
    procedure Excel1Click(Sender: TObject);
    procedure dxBarButton_FilterRecords1Click(Sender: TObject);
    procedure dxBarButton13Click(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure cxGrid2DBBandedTableView1CustomDrawCell(Sender: TcxCustomGridTableView; ACanvas: TcxCanvas; AViewInfo: TcxGridTableDataCellViewInfo; var ADone: Boolean);
    procedure cxGrid2DBBandedTableView1CustomDrawColumnHeader(Sender: TcxGridTableView; ACanvas: TcxCanvas;  AViewInfo: TcxGridColumnHeaderViewInfo; var ADone: Boolean);
    procedure cxPageControl1Change(Sender: TObject);
    procedure dxBarButton25Click(Sender: TObject);
    procedure dxBarButton26Click(Sender: TObject);
    procedure dxBarButton27Click(Sender: TObject);
  private
    Fdate1, Fdate2 : TDateTime;
    Flow_claim_id     : integer;
    Flow_claim_type : integer;

  public
    constructor Create(AOwner : Tapplication; flag: boolean; low_claim_type: integer);

  end;

var
  fmLowClaim: TfmLowClaim;

implementation
   uses Main, Period, Raznoe, Other, cxGridDBDataDefinitions, LowClaimAdd, StrUtils, DateUtils;
{$R *.DFM}



constructor TfmLowClaim.Create(AOwner: Tapplication; flag: boolean; low_claim_type: integer);
begin
  Screen.Cursor := crHourglass;
  inherited Create(AOwner);

  Flow_claim_type := low_claim_type;
  dxBarSubItem1.Caption := StoreRegistryDate(rgLoad, '\Software\Lis1\DateTime\LowClaim', Fdate1, Fdate2);

  Query_LowClaim.Parameters.ParamByName('date1').Value := Fdate1;
  Query_LowClaim.Parameters.ParamByName('date2').Value := Fdate2;
  Query_LowClaim.Parameters.ParamByName('low_claim_type').Value := Flow_claim_type;
  Query_LowClaim.Open;

  case Flow_claim_type of
    0 : begin
        Caption := 'Входящие исковые заявления';
        end;
    1 : begin
        Caption := 'Исходящие исковые заявления';
        end;
  end;

  cxPageControl1.ActivePageIndex := Flow_claim_type;
  cxPageControl1Change(nil);

  if flag then begin
    FormStyle := fsNormal;
    dxBarButton4.Visible := ivAlways;
  end else begin
    FormStyle := fsMDIChild;
    WindowState := wsMaximized;
  end;

  StoreRegistryGrid(rgLoad,'\Software\Lis1\LowClaim_Grids', cxGrid1DBBandedTableView1);

  SetUsersModuleRights(self, fmMain.Lis);
  MonitorEventFormOpen('OPEN_FORM', self.Name, fmMain.Lis, -9);

  Screen.Cursor := crDefault;
end;


procedure TfmLowClaim.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action := caFree;
end;

procedure TfmLowClaim.FormDestroy(Sender: TObject);
begin
  StoreRegistryDate(rgSave, '\Software\Lis1\DateTime\LowClaim', Fdate1, Fdate2);
  StoreRegistryGrid(rgSave, '\Software\Lis1\LowClaim_Grids', cxGrid1DBBandedTableView1);
end;

procedure TfmLowClaim.N1Click(Sender: TObject);
begin
  fmLowClaimAdd := TfmLowClaimAdd.Create(Application, True, Flow_claim_type);
  fmLowClaimAdd._SetInsert;
  if fmLowClaimAdd.ShowModal = mrOk then
    RefreshQueryGrid(cxGrid1DBBandedTableView1, 'low_claim_id', fmLowClaimAdd._GetLowClaimId);
end;

procedure TfmLowClaim.N2Click(Sender: TObject);
begin
  fmLowClaimAdd := TfmLowClaimAdd.Create(Application, False, Flow_claim_type);
  fmLowClaimAdd._SetUpdate := cxGrid1DBBandedTableView1.GetColumnByFieldName('low_claim_id').DataBinding.Field.AsInteger;
  if fmLowClaimAdd.ShowModal = mrOk then
    RefreshQueryGrid(cxGrid1DBBandedTableView1, 'low_claim_id');
end;

procedure TfmLowClaim.N3Click(Sender: TObject);
var          i : integer;
  SP : TADOStoredProc;
begin
  if Application.MessageBox('Вы уверены, что хотите удалить судебный иск?', 'Внимание', MB_OKCANCEL) = IDOK then begin
    Screen.Cursor := crHourglass;

    SP := TADOStoredProc.Create(nil);
    SP.Connection := fmMain.Lis;
    SP.ProcedureName := 'sp_low_claim_modify;1';
    SP.Parameters.Refresh;

    for i := 0 to cxGrid1DBBandedTableView1.Controller.SelectedRowCount - 1 do begin
      SP.Close;
      SP.Parameters.ParamByName('@type_action').Value := 2;
      SP.Parameters.ParamByName('@low_claim_id').Value := cxGrid1DBBandedTableView1.Controller.SelectedRows[i].Values[cxGrid1DBBandedTableView1.GetColumnByFieldName('low_claim_id').Index];
      try
        SP.ExecProc;
      except
      end;

      ShowTextMessage('Осталось '+IntToStr(cxGrid1DBBandedTableView1.Controller.SelectedRowCount - i)+' строк...', False);
    end;
    RefreshQueryGrid(cxGrid1DBBandedTableView1, 'low_claim_id');
    SP.Free;

    ShowTextMessage;

    Screen.Cursor := crDefault;
  end;
end;

procedure TfmLowClaim.N10Click(Sender: TObject);
begin
  case TdxBarButton(Sender).ClickItemLink.Owner.Owner.Tag of
    1 : SetdxDBGridColumns(cxGrid1DBBandedTableView1);
    3 : SetdxDBGridColumns(cxGrid1DBBandedTableView1);
  end;
end;

procedure TfmLowClaim.cxGrid1DBBandedTableView1CustomDrawCell(Sender: TcxCustomGridTableView; ACanvas: TcxCanvas; AViewInfo: TcxGridTableDataCellViewInfo; var ADone: Boolean);
begin
  if (AViewInfo.GridRecord.Values[cxGrid1DBBandedTableView1.GetColumnByFieldName('global_color').Index]<>NULL) then
    ACanvas.Brush.Color := AViewInfo.GridRecord.Values[cxGrid1DBBandedTableView1.GetColumnByFieldName('global_color').Index];

  if AViewInfo.GridRecord.Selected then begin
    ACanvas.Brush.Color := clNavy;
    ACanvas.Font.Color := clWhite;
    if AViewInfo.Focused then ACanvas.Brush.Color := clBlue;
  end;
end;

procedure TfmLowClaim.cxGrid1DBBandedTableView1CustomDrawColumnHeader(Sender: TcxGridTableView; ACanvas: TcxCanvas; AViewInfo: TcxGridColumnHeaderViewInfo; var ADone: Boolean);
begin
  DrawcxGridColumnOnFocused(Sender, ACanvas, AViewInfo);
end;

procedure TfmLowClaim.cxGrid1DBBandedTableView1DataControllerFilterChanged(Sender: TObject);
begin
  DrawcxGridColumnOnFiltered(Sender);
end;

procedure TfmLowClaim.cxGrid1DBBandedTableView1FocusedItemChanged(Sender: TcxCustomGridTableView; APrevFocusedItem, AFocusedItem: TcxCustomGridTableItem);
begin
  Sender.Painter.Invalidate;
end;

procedure TfmLowClaim.cxGrid1DBBandedTableView1KeyPress(Sender: TObject; var Key: Char);
begin
  FilterColumnGridOnKeyPress(TcxGridDBBandedTableView(TcxGridSite(Sender).GridView), Key);
end;

procedure TfmLowClaim.cxGrid2DBBandedTableView1CustomDrawCell(Sender: TcxCustomGridTableView; ACanvas: TcxCanvas; AViewInfo: TcxGridTableDataCellViewInfo; var ADone: Boolean);
begin
	if AViewInfo.GridRecord.Selected or AViewInfo.GridRecord.Focused then begin
		ACanvas.Brush.Color := clNavy;
		ACanvas.Font.Color := clWhite;
		if AViewInfo.Focused then ACanvas.Brush.Color := clBlue;
	end;
end;

procedure TfmLowClaim.cxGrid2DBBandedTableView1CustomDrawColumnHeader(Sender: TcxGridTableView; ACanvas: TcxCanvas; AViewInfo: TcxGridColumnHeaderViewInfo; var ADone: Boolean);
begin
  DrawcxGridColumnOnFocused(Sender, ACanvas, AViewInfo);
end;

procedure TfmLowClaim.cxPageControl1Change(Sender: TObject);
begin
  Flow_claim_type := cxPageControl1.ActivePageIndex;

  case Flow_claim_type of
    0 : begin
//        cxGrid1DBBandedTableView1firm_customer_name.Caption :='Клиент';
//        cxGrid1DBBandedTableView1firm_customer_name_full.Caption :='Полное наименование Клиента';
        Caption := 'Входящие претензии';
        end;
    1 : begin
//        cxGrid1DBBandedTableView1firm_customer_name.Caption :='Субподрядчик';
//        cxGrid1DBBandedTableView1firm_customer_name_full.Caption :='Полное наименование Подрядчика';
        Caption := 'Исходящие претензии';
        end;
  end;

  Query_LowClaim.Close;
  Query_LowClaim.Parameters.ParamByName('date1').Value := Fdate1;
  Query_LowClaim.Parameters.ParamByName('date2').Value := Fdate2;
  Query_LowClaim.Parameters.ParamByName('low_claim_type').Value := Flow_claim_type;
  Query_LowClaim.Open;
end;

procedure TfmLowClaim.dxBarButton13Click(Sender: TObject);
begin
  Screen.Cursor := crHourglass;
  if TControl(Sender).Tag = 1 then begin
    Fdate1 := IncMonth(Fdate1, -1);
  end;

  if TControl(Sender).Tag = 2 then begin
    Fdate1 := IncMonth(Fdate1, 1);
  end;

  Fdate2 := IncMonth(Fdate1, 1) - 1;

  dxBarSubItem1.Caption := FormatDateTime('mmm yy', Fdate1) + ' - ' + FormatDateTime('mmm yy', Fdate2);

  Query_LowClaim.Close;
  Query_LowClaim.Parameters.ParamByName('date1').Value := Fdate1;
  Query_LowClaim.Parameters.ParamByName('date2').Value := Fdate2;
  Query_LowClaim.Parameters.ParamByName('low_claim_type').Value := Flow_claim_type;
  Query_LowClaim.Open;

  Screen.Cursor := crDefault;
end;

procedure TfmLowClaim.dxBarButton25Click(Sender: TObject);
var pay_type : integer;
begin
  if VarIsNull(cxGrid1DBBandedTableView1low_claim_id.DataBinding.Field.Value) then begin
    Application.MessageBox('Не выбран иск.','Ошибка',MB_OK);
    exit;
  end;

  if Flow_claim_type = 0 then pay_type := 1
  else pay_type := 0;

//  fmPayPretenziaAdd := TfmPayPretenziaAdd.Create(Application, pay_type);
//  fmPayPretenziaAdd._SetInsert := cxGrid1DBBandedTableView1pretenzia_shape_id.DataBinding.Field.AsInteger;
//  if fmPayPretenziaAdd.ShowModal = mrOk then
//    RefreshQueryGrid(cxGrid1DBBandedTableView1, 'pretenzia_shape_id', cxGrid1DBBandedTableView1pretenzia_shape_id.DataBinding.Field.AsInteger);

end;

procedure TfmLowClaim.dxBarButton26Click(Sender: TObject);
var pay_type : integer;
begin
  if VarIsNull(cxGrid1DBBandedTableView1low_claim_id.DataBinding.Field.Value) then begin
    exit;
  end;

//  fmPayPretenziaAdd := TfmPayPretenziaAdd.Create(Application, Fpretenzia_type);
//  fmPayPretenziaAdd._SetUpdate := cxGrid3DBBandedTableView1pay_pr_id.DataBinding.Field.AsInteger;
//  if fmPayPretenziaAdd.ShowModal = mrOk then
//    RefreshQueryGrid(cxGrid1DBBandedTableView1, 'pretenzia_shape_id', cxGrid1DBBandedTableView1pretenzia_shape_id.DataBinding.Field.AsInteger);

end;

procedure TfmLowClaim.dxBarButton27Click(Sender: TObject);
var SP :  TADOStoredProc;
begin
  Screen.Cursor := crHourglass;

  SP := TADOStoredProc.Create(nil);
  SP.Connection := fmMain.Lis;
  SP.ProcedureName := 'sp_pay_pr_modify;1';
  SP.Parameters.Refresh;

  SP.Parameters.ParamByName('@pay_pr_id'  ).Value := cxGrid3DBBandedTableView1pay_pr_id.DataBinding.Field.Value;
  SP.Parameters.ParamByName('@type_action' ).Value := 2;
  SP.ExecProc;
  SP.Free;

  RefreshQueryGrid(cxGrid1DBBandedTableView1, 'low_claim_id', cxGrid1DBBandedTableView1low_claim_id.DataBinding.Field.AsInteger);
  Screen.Cursor := crDefault;
end;

procedure TfmLowClaim.dxBarButton2Click(Sender: TObject);
begin
  fmPeriod := TfmPeriod.Create(Application, Fdate1, Fdate2, TComponent(Sender).Tag);
  if fmPeriod.ShowModal=mrOK then begin
    Screen.Cursor := crHourglass;
    case TComponent(Sender).Tag of
      3 : begin
            Fdate1 := fmPeriod._GetMonth;
            Fdate2 := IncMonth(Fdate1, 1) - 1;
            dxBarSubItem1.Caption := FormatDateTime('mmmm yyyy', Fdate1);
          end;
      2 : begin
            Fdate1 := fmPeriod._GetMonthBegin;
            Fdate2 := fmPeriod._GetMonthEnd;
            dxBarSubItem1.Caption := FormatDateTime('mmm yy', Fdate1) + ' - ' + FormatDateTime('mmm yy', Fdate2);
         end;
    end;

    Query_LowClaim.Close;
    Query_LowClaim.Parameters.ParamByName('date1').Value := Fdate1;
    Query_LowClaim.Parameters.ParamByName('date2').Value := Fdate2;
    Query_LowClaim.Parameters.ParamByName('low_claim_type').Value := Flow_claim_type;
    Query_LowClaim.Open;

    Screen.Cursor := crDefault;
  end;
end;

procedure TfmLowClaim.dxBarButton_FilterRecords1Click(Sender: TObject);
begin
  cxGrid1DBBandedTableView1.Filtering.ColumnFilteredItemsList := not dxBarButton_FilterRecords1.Down;
end;

procedure TfmLowClaim.N7Click(Sender: TObject);
begin
  SetRecordColor('low_claim_id', cxGrid1DBBandedTableView1, 'LOW_CLAIM', Boolean(TMenuItem(Sender).Tag));
  RefreshQueryGrid(cxGrid1DBBandedTableView1, 'low_claim_id');
end;

procedure TfmLowClaim.N11Click(Sender: TObject);
begin
  case TdxBarButton(Sender).ClickItemLink.Owner.Owner.Tag of
    1 : cxGrid1DBBandedTableView1.OptionsView.GroupByBox := not cxGrid1DBBandedTableView1.OptionsView.GroupByBox;
  end;
end;

procedure TfmLowClaim.ToolButton16Click(Sender: TObject);
begin
  RefreshQueryGrid(cxGrid1DBBandedTableView1, 'low_claim_id');
end;

procedure TfmLowClaim.Excel1Click(Sender: TObject);
begin
  case TdxBarManager(TdxBarButton(Sender).GetParentComponent).Tag of
    1 : PrintcxGrid(cxGrid1DBBandedTableView1);
  end;
end;




end.



