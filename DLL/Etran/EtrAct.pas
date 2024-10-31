unit EtrAct;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, ADODB, dxBar, cxClasses, cxPropertiesStore, ImgList, cxGraphics,
  cxStyles, cxControls, cxLookAndFeels, cxLookAndFeelPainters, cxCustomData,
  cxFilter, cxData, cxDataStorage, cxEdit, cxDBData, cxCurrencyEdit, Raznoe,
  cxContainer, ExtCtrls, cxMaskEdit, cxDropDownEdit, cxCalendar, cxTextEdit,
  StdCtrls, cxGridLevel, cxGridCustomTableView, cxGridTableView, Default, Period,
  cxGridBandedTableView, cxGridDBBandedTableView, cxGridCustomView, cxGrid, cxPC,
  cxMemo, dxSkinsCore, dxSkinsDefaultPainters, dxSkinscxPCPainter, cxNavigator,
  dxBarBuiltInMenu, ComCtrls, dxCore, cxDateUtils, dxSkinsdxBarPainter,
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
  dxSkinSummer2008, dxSkinTheAsphaltWorld, dxSkinValentine,
  dxSkinVisualStudio2013Blue, dxSkinVisualStudio2013Dark,
  dxSkinVisualStudio2013Light, dxSkinVS2010, dxSkinWhiteprint,
  dxSkinXmas2008Blue, System.ImageList,
  cxDataControllerConditionalFormattingRulesManagerDialog, cxImageList, dxSkinTheBezier, dxDateRanges, dxSkinOffice2019Colorful;

type
  TfmEtrAct = class(TForm)
    ADOEtran: TADOConnection;
    cxStyleRepository1: TcxStyleRepository;
    cxStyle1: TcxStyle;
    cxImageList1: TcxImageList;
    cxPropertiesStore1: TcxPropertiesStore;
    dxBarManager1: TdxBarManager;
    dxBarManager1Bar1: TdxBar;
    dxBarButton1: TdxBarButton;
    dxBarSubItem2: TdxBarSubItem;
    dxBarButton2: TdxBarButton;
    dxBarButton3: TdxBarButton;
    Query_Act: TADOQuery;
    DS_Act: TDataSource;
    Panel1: TPanel;
    cxGrid1: TcxGrid;
    cxGrid1DBBandedTableView1: TcxGridDBBandedTableView;
    cxGrid1Level1: TcxGridLevel;
    Panel2: TPanel;
    cxPageControl1: TcxPageControl;
    cxTabSheet1: TcxTabSheet;
    cxGrid2: TcxGrid;
    cxGrid2DBBandedTableView1: TcxGridDBBandedTableView;
    cxGrid2Level1: TcxGridLevel;
    cxTabSheet2: TcxTabSheet;
    cxGrid3: TcxGrid;
    cxGridDBBandedTableView1: TcxGridDBBandedTableView;
    cxGridLevel1: TcxGridLevel;
    Splitter1: TSplitter;
    Panel4: TPanel;
    Label1: TLabel;
    Label2: TLabel;
    Label34: TLabel;
    Label4: TLabel;
    Label7: TLabel;
    Label9: TLabel;
    Label10: TLabel;
    Label11: TLabel;
    Label12: TLabel;
    Label15: TLabel;
    cxTextEdit100: TcxTextEdit;
    cxTextEdit101: TcxTextEdit;
    cxDateEdit100: TcxDateEdit;
    cxDateEdit101: TcxDateEdit;
    cxTextEdit105: TcxTextEdit;
    cxTextEdit104: TcxTextEdit;
    cxTextEdit103: TcxTextEdit;
    cxTextEdit108: TcxTextEdit;
    cxTextEdit107: TcxTextEdit;
    cxTextEdit106: TcxTextEdit;
    Label5: TLabel;
    cxTextEdit109: TcxTextEdit;
    cxMemo1: TcxMemo;
    cxGrid1DBBandedTableView1act_id: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1actID: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1actStateID: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1actState: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1actLastOper: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1actDate: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1actTypeId: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1actTypeName: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1actKindId: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1actKindName: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1actNumber: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1actInvoiceID: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1actInvNumber: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1actStationCode: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1actStationName: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1actNote: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1global_id: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1object_id: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1users_owner_id: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1date_enter: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1global_color: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1comment: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1ELS_cod: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1cnt_actCar: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1cnt_actEmp: TcxGridDBBandedColumn;
    Query_actCar: TADOQuery;
    DS_actCar: TDataSource;
    DS_actEmp: TDataSource;
    Query_actEmp: TADOQuery;
    cxGrid2DBBandedTableView1actCar_id: TcxGridDBBandedColumn;
    cxGrid2DBBandedTableView1act_id: TcxGridDBBandedColumn;
    cxGrid2DBBandedTableView1carNumber: TcxGridDBBandedColumn;
    cxGrid2DBBandedTableView1carReasonId: TcxGridDBBandedColumn;
    cxGrid2DBBandedTableView1carReasonName: TcxGridDBBandedColumn;
    cxGrid2DBBandedTableView1carDelta: TcxGridDBBandedColumn;
    cxGrid2DBBandedTableView1carIsDamage: TcxGridDBBandedColumn;
    cxGridDBBandedTableView1actEmp_id: TcxGridDBBandedColumn;
    cxGridDBBandedTableView1act_id: TcxGridDBBandedColumn;
    cxGridDBBandedTableView1empDateOper: TcxGridDBBandedColumn;
    cxGridDBBandedTableView1empDateFact: TcxGridDBBandedColumn;
    cxGridDBBandedTableView1empPerson: TcxGridDBBandedColumn;
    cxGridDBBandedTableView1empPost: TcxGridDBBandedColumn;
    cxGridDBBandedTableView1empNote: TcxGridDBBandedColumn;
    dxBarSubItem1: TdxBarSubItem;
    dxBarPopupMenu1: TdxBarPopupMenu;
    dxBarButton4: TdxBarButton;
    dxBarSubItem3: TdxBarSubItem;
    dxBarButton5: TdxBarButton;
    dxBarButton6: TdxBarButton;
    dxBarButton7: TdxBarButton;
    dxBarButton8: TdxBarButton;
    dxBarPopupMenu2: TdxBarPopupMenu;
    dxBarButton9: TdxBarButton;
    dxBarSubItem4: TdxBarSubItem;
    dxBarButton10: TdxBarButton;
    dxBarButton11: TdxBarButton;
    dxBarButton12: TdxBarButton;
    dxBarButton13: TdxBarButton;
    dxBarPopupMenu3: TdxBarPopupMenu;
    dxBarButton14: TdxBarButton;
    dxBarSubItem5: TdxBarSubItem;
    dxBarButton15: TdxBarButton;
    dxBarButton16: TdxBarButton;
    dxBarButton17: TdxBarButton;
    dxBarButton18: TdxBarButton;
    dxBarButton19: TdxBarButton;
    dxBarButton20: TdxBarButton;
    procedure dxBarButton1Click(Sender: TObject);
    procedure cxGrid1DBBandedTableView1FocusedRecordChanged(
      Sender: TcxCustomGridTableView; APrevFocusedRecord,
      AFocusedRecord: TcxCustomGridRecord;
      ANewItemRecordFocusingChanged: Boolean);
    procedure dxBarButton4Click(Sender: TObject);
    procedure dxBarButton5Click(Sender: TObject);
    procedure dxBarButton6Click(Sender: TObject);
    procedure dxBarButton7Click(Sender: TObject);
    procedure dxBarButton8Click(Sender: TObject);
    procedure dxBarButton9Click(Sender: TObject);
    procedure dxBarButton10Click(Sender: TObject);
    procedure dxBarButton11Click(Sender: TObject);
    procedure dxBarButton12Click(Sender: TObject);
    procedure dxBarButton13Click(Sender: TObject);
    procedure dxBarButton14Click(Sender: TObject);
    procedure dxBarButton15Click(Sender: TObject);
    procedure dxBarButton16Click(Sender: TObject);
    procedure dxBarButton17Click(Sender: TObject);
    procedure dxBarButton18Click(Sender: TObject);
    procedure cxGrid1DBBandedTableView1FilterOnChanged(Sender: TObject);
    procedure cxGrid1DBBandedTableView1CustomDrawCell(
      Sender: TcxCustomGridTableView; ACanvas: TcxCanvas;
      AViewInfo: TcxGridTableDataCellViewInfo; var ADone: Boolean);
    procedure cxGrid1DBBandedTableView1CustomDrawColumnHeader(
      Sender: TcxGridTableView; ACanvas: TcxCanvas;
      AViewInfo: TcxGridColumnHeaderViewInfo; var ADone: Boolean);
    procedure cxGrid1DBBandedTableView1FocusedItemChanged(
      Sender: TcxCustomGridTableView; APrevFocusedItem,
      AFocusedItem: TcxCustomGridTableItem);
    procedure cxGrid1DBBandedTableView1KeyPress(Sender: TObject; var Key: Char);

    procedure cxGridDBBandedTableView1FilterOnChanged(Sender: TObject);
    procedure cxGridDBBandedTableView1CustomDrawCell(
      Sender: TcxCustomGridTableView; ACanvas: TcxCanvas;
      AViewInfo: TcxGridTableDataCellViewInfo; var ADone: Boolean);
    procedure cxGridDBBandedTableView1CustomDrawColumnHeader(
      Sender: TcxGridTableView; ACanvas: TcxCanvas;
      AViewInfo: TcxGridColumnHeaderViewInfo; var ADone: Boolean);
    procedure cxGrid2DBBandedTableView1FilterOnChanged(Sender: TObject);
    procedure cxGrid2DBBandedTableView1CustomDrawCell(
      Sender: TcxCustomGridTableView; ACanvas: TcxCanvas;
      AViewInfo: TcxGridTableDataCellViewInfo; var ADone: Boolean);
    procedure cxGrid2DBBandedTableView1CustomDrawColumnHeader(
      Sender: TcxGridTableView; ACanvas: TcxCanvas;
      AViewInfo: TcxGridColumnHeaderViewInfo; var ADone: Boolean);
    procedure cxGrid2DBBandedTableView1FocusedItemChanged(
      Sender: TcxCustomGridTableView; APrevFocusedItem,
      AFocusedItem: TcxCustomGridTableItem);
    procedure cxGrid2DBBandedTableView1KeyPress(Sender: TObject; var Key: Char);
    procedure cxGridDBBandedTableView1FocusedItemChanged(
      Sender: TcxCustomGridTableView; APrevFocusedItem,
      AFocusedItem: TcxCustomGridTableItem);
    procedure cxGridDBBandedTableView1KeyPress(Sender: TObject; var Key: Char);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormDestroy(Sender: TObject);
    procedure dxBarButton2Click(Sender: TObject);
    procedure dxBarButton3Click(Sender: TObject);
    procedure dxBarButton20Click(Sender: TObject);
  private
    Fusr_pwd         : PUser_pwd;
    Fusers_group_cod : string;
    Fdate1, Fdate2   : TDateTime;
  public
    constructor Create(AOwner: TApplication; users_group_cod: string; usr_pwd: PUser_pwd);
  end;

var
  fmEtrAct: TfmEtrAct;

function CreateWndEtranAct(AppHand: THandle; users_group_cod: string; usr_pwd: PUser_pwd): variant; export;

implementation

uses EtrUtils;

{$R *.dfm}

function CreateWndEtranAct(AppHand: THandle; users_group_cod: string; usr_pwd: PUser_pwd): variant; export;
begin
    Application.Handle := AppHand;
  try
    fmEtrAct := TfmEtrAct.Create(Application, users_group_cod, usr_pwd);
    //-- изменить по мере необходимости возвращаемых параметров
    if  fmEtrAct.ShowModal = mrOk then result := VarArrayOf([-9, '']);
  finally
    fmEtrAct.Free;
  end;
end;

constructor TfmEtrAct.Create(AOwner: TApplication; users_group_cod: string; usr_pwd: PUser_pwd);
begin
  Screen.Cursor := -11;
  inherited Create(nil);

  WindowState := wsMaximized;
  Fusr_pwd := usr_pwd;
  Fusers_group_cod := users_group_cod;
  StoreRegistryGrid(rgLoad,'\Software\Lis1\EtranAct\MainGrids', cxGrid1DBBandedTableView1);
  StoreRegistryGrid(rgLoad,'\Software\Lis1\EtranAct\MainGrids', cxGrid2DBBandedTableView1);
  StoreRegistryGrid(rgLoad,'\Software\Lis1\EtranAct\MainGrids', cxGridDBBandedTableView1);


  ADOEtran.Connected := False;
  ADOEtran.ConnectionString := GetEtranConnect(Fusers_group_cod, Fusr_pwd);
  ADOEtran.Connected := True;


  dxBarSubItem2.Caption := StoreRegistryDate(rgLoad, '\Software\Lis1\DateTime\EtranAct', Fdate1, Fdate2);

  Query_Act.Close;
  Query_Act.Parameters.ParamByName('date1').Value := Fdate1;
  Query_Act.Parameters.ParamByName('date2').Value := Fdate2;
  Query_Act.Open;

  Screen.Cursor := 0;
end;

procedure TfmEtrAct.cxGrid1DBBandedTableView1CustomDrawCell(
  Sender: TcxCustomGridTableView; ACanvas: TcxCanvas;
  AViewInfo: TcxGridTableDataCellViewInfo; var ADone: Boolean);
begin
	if AViewInfo.GridRecord.Selected or AViewInfo.GridRecord.Focused then begin
		ACanvas.Brush.Color := clNavy;
		ACanvas.Font.Color := clWhite;
		if AViewInfo.Focused then ACanvas.Brush.Color := clBlue;
	end;
end;

procedure TfmEtrAct.cxGrid1DBBandedTableView1CustomDrawColumnHeader(
  Sender: TcxGridTableView; ACanvas: TcxCanvas;
  AViewInfo: TcxGridColumnHeaderViewInfo; var ADone: Boolean);
begin
	if AViewInfo.Column.Focused then begin
		ACanvas.Brush.Color := clNavy;
		ACanvas.Font.Color := clWhite;
	end;
end;

procedure TfmEtrAct.cxGrid1DBBandedTableView1FilterOnChanged(Sender: TObject);
begin
	DrawcxGridColumnOnFiltered(Sender);
end;

procedure TfmEtrAct.cxGrid1DBBandedTableView1FocusedItemChanged(
  Sender: TcxCustomGridTableView; APrevFocusedItem,
  AFocusedItem: TcxCustomGridTableItem);
begin
	cxGrid1DBBandedTableView1.Painter.Invalidate;
end;

procedure TfmEtrAct.cxGrid1DBBandedTableView1FocusedRecordChanged(
  Sender: TcxCustomGridTableView; APrevFocusedRecord,
  AFocusedRecord: TcxCustomGridRecord; ANewItemRecordFocusingChanged: Boolean);
begin
  Query_actCar.Close;
  Query_actEmp.Close;

  cxTextEdit100.EditValue := null;
  cxTextEdit101.EditValue := null;
  cxTextEdit103.EditValue := null;
  cxTextEdit104.EditValue := null;
  cxTextEdit105.EditValue := null;
  cxTextEdit106.EditValue := null;
  cxTextEdit107.EditValue := null;
  cxTextEdit108.EditValue := null;
  cxTextEdit109.EditValue := null;
  cxDateEdit100.EditValue := null;
  cxDateEdit101.EditValue := null;


  if (AFocusedRecord<>nil) AND ((cxGrid1DBBandedTableView1.GroupedColumnCount = 0) OR (AFocusedRecord.Level <> 0)) then begin
    Query_actCar.Parameters.ParamByName('act_id').Value := cxGrid1DBBandedTableView1act_id.DataBinding.Field.Value;
    Query_actEmp.Parameters.ParamByName('act_id').Value := cxGrid1DBBandedTableView1act_id.DataBinding.Field.Value;
    Query_actCar.Open;
    Query_actEmp.Open;

    cxTextEdit100.EditValue := Query_Act.FieldByName('actID').Value;
    cxTextEdit101.EditValue := Query_Act.FieldByName('actState').Value;
    cxTextEdit103.EditValue := Query_Act.FieldByName('actStationCode').Value;
    cxTextEdit104.EditValue := Query_Act.FieldByName('actStationName').Value;
    cxTextEdit105.EditValue := Query_Act.FieldByName('actTypeName').Value;
    cxTextEdit106.EditValue := Query_Act.FieldByName('actKindName').Value;
    cxTextEdit107.EditValue := Query_Act.FieldByName('actNumber').Value;
    cxTextEdit108.EditValue := Query_Act.FieldByName('actInvoiceID').Value;
    cxTextEdit109.EditValue := Query_Act.FieldByName('actInvNumber').Value;
    cxMemo1.EditValue       := Query_Act.FieldByName('actNote').Value;
    cxDateEdit100.EditValue := Query_Act.FieldByName('actLastOper').Value;
    cxDateEdit101.EditValue := Query_Act.FieldByName('actDate').Value;
  end;
  cxPageControl1.Repaint;
end;

procedure TfmEtrAct.dxBarButton10Click(Sender: TObject);
begin
	SetdxDBGridColumns(cxGrid2DBBandedTableView1);
end;

procedure TfmEtrAct.dxBarButton11Click(Sender: TObject);
begin
	cxGrid2DBBandedTableView1.OptionsView.GroupByBox := not cxGrid2DBBandedTableView1.OptionsView.GroupByBox;
end;

procedure TfmEtrAct.dxBarButton12Click(Sender: TObject);
begin
	FiltercxGrid4ListID(cxGrid2DBBandedTableView1);
end;

procedure TfmEtrAct.dxBarButton13Click(Sender: TObject);
begin
	cxGrid2DBBandedTableView1.Filtering.ColumnFilteredItemsList := not dxBarButton13.Down;
end;

procedure TfmEtrAct.dxBarButton14Click(Sender: TObject);
begin
	PrintcxGrid(cxGridDBBandedTableView1);
end;

procedure TfmEtrAct.dxBarButton15Click(Sender: TObject);
begin
	SetdxDBGridColumns(cxGridDBBandedTableView1);
end;

procedure TfmEtrAct.dxBarButton16Click(Sender: TObject);
begin
	cxGridDBBandedTableView1.OptionsView.GroupByBox := not cxGridDBBandedTableView1.OptionsView.GroupByBox;
end;

procedure TfmEtrAct.dxBarButton17Click(Sender: TObject);
begin
	FiltercxGrid4ListID(cxGridDBBandedTableView1);
end;

procedure TfmEtrAct.dxBarButton18Click(Sender: TObject);
begin
	cxGridDBBandedTableView1.Filtering.ColumnFilteredItemsList := not dxBarButton18.Down;
end;

procedure TfmEtrAct.dxBarButton20Click(Sender: TObject);
begin
  Screen.Cursor := crHourglass;
  if TControl(Sender).Tag = 1 then begin
    Fdate1 := IncMonth(Fdate1, -1);
  end;

  if TControl(Sender).Tag = 2 then begin
    Fdate1 := IncMonth(Fdate1, 1);
  end;

  Fdate2 := IncMonth(Fdate1, 1) - 1;
  dxBarSubItem2.Caption := FormatDateTime('mmmm yyyy', Fdate1);

  Query_Act.Close;
  Query_Act.Parameters.ParamByName('date1').Value := Fdate1;
  Query_Act.Parameters.ParamByName('date2').Value := Fdate2;
  Query_Act.Open;

  Screen.Cursor := crDefault;
end;

procedure TfmEtrAct.dxBarButton1Click(Sender: TObject);
begin
  RefreshQueryGrid(cxGrid1DBBandedTableView1, 'act_id');
end;

procedure TfmEtrAct.dxBarButton2Click(Sender: TObject);
begin
  fmPeriod := TfmPeriod.Create(Application, Fdate1, Fdate2, 3);
  if fmPeriod.ShowModal=mrOK then begin
    Fdate1 := fmPeriod._GetMonth;
    Fdate2 := IncMonth(Fdate1, 1);
    dxBarSubItem2.Caption := FormatDateTime('mmmm yyyy', Fdate1);
    Screen.Cursor := crHourGlass;
    Query_Act.Close;
    Query_Act.Parameters.ParamByName('date1').Value := Fdate1;
    Query_Act.Parameters.ParamByName('date2').Value := Fdate2;
    Query_Act.Open;
    Screen.Cursor := crDefault;
  end;
end;

procedure TfmEtrAct.dxBarButton3Click(Sender: TObject);
begin
 fmPeriod := TfmPeriod.Create(Application, Fdate1, Fdate2, 2);
  if fmPeriod.ShowModal=mrOK then begin
    Fdate1 := fmPeriod._GetMonthBegin;
    Fdate2 := fmPeriod._GetMonthEnd;
    dxBarSubItem2.Caption := FormatDateTime('mmm yy', Fdate1) + ' - ' + FormatDateTime('mmm yy', Fdate2);
    Screen.Cursor := crHourGlass;
    Query_Act.Close;
    Query_Act.Parameters.ParamByName('date1').Value := Fdate1;
    Query_Act.Parameters.ParamByName('date2').Value := Fdate2;
    Query_Act.Open;
    Screen.Cursor := crDefault;
  end;
end;

procedure TfmEtrAct.dxBarButton4Click(Sender: TObject);
begin
	PrintcxGrid(cxGrid1DBBandedTableView1);
end;

procedure TfmEtrAct.dxBarButton5Click(Sender: TObject);
begin
	SetdxDBGridColumns(cxGrid1DBBandedTableView1);
end;

procedure TfmEtrAct.dxBarButton6Click(Sender: TObject);
begin
	cxGrid1DBBandedTableView1.OptionsView.GroupByBox := not cxGrid1DBBandedTableView1.OptionsView.GroupByBox;
end;

procedure TfmEtrAct.dxBarButton7Click(Sender: TObject);
begin
	FiltercxGrid4ListID(cxGrid1DBBandedTableView1);
end;

procedure TfmEtrAct.dxBarButton8Click(Sender: TObject);
begin
	cxGrid1DBBandedTableView1.Filtering.ColumnFilteredItemsList := not dxBarButton8.Down;
end;

procedure TfmEtrAct.dxBarButton9Click(Sender: TObject);
begin
	PrintcxGrid(cxGrid2DBBandedTableView1);
end;

procedure TfmEtrAct.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action := caFree;
end;

procedure TfmEtrAct.FormDestroy(Sender: TObject);
begin
  StoreRegistryGrid(rgSave,'\Software\Lis1\EtranAct\MainGrids', cxGrid1DBBandedTableView1);
  StoreRegistryGrid(rgSave,'\Software\Lis1\EtranAct\MainGrids', cxGrid2DBBandedTableView1);
  StoreRegistryGrid(rgSave,'\Software\Lis1\EtranAct\MainGrids', cxGridDBBandedTableView1);
  dxBarSubItem2.Caption := StoreRegistryDate(rgSave, '\Software\Lis1\DateTime\EtranAct', Fdate1, Fdate2);
end;

procedure TfmEtrAct.cxGrid1DBBandedTableView1KeyPress(Sender: TObject;
  var Key: Char);
begin
	FilterColumnGridOnKeyPress(cxGrid1DBBandedTableView1, Key);
end;

procedure TfmEtrAct.cxGrid2DBBandedTableView1CustomDrawCell(
  Sender: TcxCustomGridTableView; ACanvas: TcxCanvas;
  AViewInfo: TcxGridTableDataCellViewInfo; var ADone: Boolean);
begin
	if AViewInfo.GridRecord.Selected or AViewInfo.GridRecord.Focused then begin
		ACanvas.Brush.Color := clNavy;
		ACanvas.Font.Color := clWhite;
		if AViewInfo.Focused then ACanvas.Brush.Color := clBlue;
	end;
end;

procedure TfmEtrAct.cxGrid2DBBandedTableView1CustomDrawColumnHeader(
  Sender: TcxGridTableView; ACanvas: TcxCanvas;
  AViewInfo: TcxGridColumnHeaderViewInfo; var ADone: Boolean);
begin
	if AViewInfo.Column.Focused then begin
		ACanvas.Brush.Color := clNavy;
		ACanvas.Font.Color := clWhite;
	end;
end;

procedure TfmEtrAct.cxGrid2DBBandedTableView1FilterOnChanged(Sender: TObject);
begin
	DrawcxGridColumnOnFiltered(Sender);
end;

procedure TfmEtrAct.cxGrid2DBBandedTableView1FocusedItemChanged(
  Sender: TcxCustomGridTableView; APrevFocusedItem,
  AFocusedItem: TcxCustomGridTableItem);
begin
	cxGrid2DBBandedTableView1.Painter.Invalidate;
end;

procedure TfmEtrAct.cxGridDBBandedTableView1CustomDrawCell(
  Sender: TcxCustomGridTableView; ACanvas: TcxCanvas;
  AViewInfo: TcxGridTableDataCellViewInfo; var ADone: Boolean);
begin
	if AViewInfo.GridRecord.Selected or AViewInfo.GridRecord.Focused then begin
		ACanvas.Brush.Color := clNavy;
		ACanvas.Font.Color := clWhite;
		if AViewInfo.Focused then ACanvas.Brush.Color := clBlue;
	end;
end;

procedure TfmEtrAct.cxGridDBBandedTableView1CustomDrawColumnHeader(
  Sender: TcxGridTableView; ACanvas: TcxCanvas;
  AViewInfo: TcxGridColumnHeaderViewInfo; var ADone: Boolean);
begin
	if AViewInfo.Column.Focused then begin
		ACanvas.Brush.Color := clNavy;
		ACanvas.Font.Color := clWhite;
	end;
end;

procedure TfmEtrAct.cxGridDBBandedTableView1FilterOnChanged(Sender: TObject);
begin
	DrawcxGridColumnOnFiltered(Sender);
end;

procedure TfmEtrAct.cxGridDBBandedTableView1FocusedItemChanged(
  Sender: TcxCustomGridTableView; APrevFocusedItem,
  AFocusedItem: TcxCustomGridTableItem);
begin
	cxGridDBBandedTableView1.Painter.Invalidate;
end;

procedure TfmEtrAct.cxGridDBBandedTableView1KeyPress(Sender: TObject;
  var Key: Char);
begin
	FilterColumnGridOnKeyPress(cxGridDBBandedTableView1, Key);
end;

procedure TfmEtrAct.cxGrid2DBBandedTableView1KeyPress(Sender: TObject;
  var Key: Char);
begin
	FilterColumnGridOnKeyPress(cxGrid2DBBandedTableView1, Key);
end;

end.

