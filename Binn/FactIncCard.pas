unit FactIncCard;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Db, ADODB, StdCtrls, Mask, DBCtrls, Buttons, Variants, ExtCtrls, DBClient,
  cxControls, cxContainer, cxEdit, cxTextEdit, cxDBEdit, cxPropertiesStore, cxStyles, cxCustomData, cxGraphics, cxFilter, cxData, cxDataStorage,
  cxDBData, cxGridLevel, cxClasses, cxGridCustomView, cxGridCustomTableView, cxGridTableView, cxGridDBTableView, cxGrid, cxMaskEdit, dxSkinCoffee,
  cxDropDownEdit, cxLookupEdit, cxDBLookupEdit, cxDBExtLookupComboBox, dxSkinXmas2008Blue, cxNavigator, dxDateRanges, dxScrollbarAnnotations,
  cxButtonEdit, cxSplitter, cxLookAndFeels, cxLookAndFeelPainters, cxHeader, dxSkinsCore, dxSkinBlack, dxSkinBlue, dxSkinBlueprint, dxSkinCaramel,
  dxSkinDarkroom, dxSkinDarkSide, dxSkinDevExpressDarkStyle, dxSkinDevExpressStyle, dxSkinFoggy, dxSkinGlassOceans, dxSkinHighContrast, dxSkinLilian,
  dxSkinLiquidSky, dxSkinLondonLiquidSky, dxSkinMcSkin, dxSkinMetropolis, dxSkinMetropolisDark, dxSkinMoneyTwins, dxSkinOffice2007Black, dxSkinOffice2007Blue,
  dxSkinOffice2007Green, dxSkinOffice2007Pink, dxSkinOffice2007Silver, dxSkinOffice2010Black, dxSkinOffice2010Blue, dxSkinOffice2010Silver,
  dxSkinOffice2013DarkGray, dxSkinOffice2013LightGray, dxSkinOffice2013White, dxSkinOffice2016Colorful, dxSkinOffice2016Dark, dxSkinOffice2019Colorful,
  dxSkinPumpkin, dxSkinSeven, dxSkinSevenClassic, dxSkinSharp, dxSkinSharpPlus, dxSkinSilver, dxSkinSpringtime, dxSkinStardust, dxSkinSummer2008,
  dxSkinTheAsphaltWorld, dxSkinTheBezier, dxSkinsDefaultPainters, dxSkinValentine, dxSkinVisualStudio2013Blue, dxSkinVisualStudio2013Dark,
  dxSkinVisualStudio2013Light, dxSkinVS2010, dxSkinWhiteprint;

type
  TfmFactIncCard = class(TForm)
    Query_FactIncFull: TADOQuery;
    DS_FactIncFull: TDataSource;
    cxPropertiesStore2: TcxPropertiesStore;
    Panel_SelfFactData: TPanel;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    Label9: TLabel;
    Label10: TLabel;
    Label11: TLabel;
    Label12: TLabel;
    Label13: TLabel;
    Label14: TLabel;
    Label15: TLabel;
    Label16: TLabel;
    Label17: TLabel;
    Label18: TLabel;
    Label19: TLabel;
    Label20: TLabel;
    Label21: TLabel;
    Label22: TLabel;
    Label23: TLabel;
    Label24: TLabel;
    Label25: TLabel;
    Label26: TLabel;
    Label27: TLabel;
    Label28: TLabel;
    Label29: TLabel;
    Label30: TLabel;
    Label31: TLabel;
    Label32: TLabel;
    Label33: TLabel;
    Label34: TLabel;
    Label36: TLabel;
    Label37: TLabel;
    Label38: TLabel;
    Label39: TLabel;
    Label40: TLabel;
    Label35: TLabel;
    Label41: TLabel;
    Label42: TLabel;
    Label43: TLabel;
    Label44: TLabel;
    Label45: TLabel;
    Label46: TLabel;
    Label47: TLabel;
    Label48: TLabel;
    Label49: TLabel;
    Label50: TLabel;
    Label51: TLabel;
    Label52: TLabel;
    Label53: TLabel;
    Label54: TLabel;
    Label55: TLabel;
    Label56: TLabel;
    Label57: TLabel;
    Label58: TLabel;
    Label59: TLabel;
    Label60: TLabel;
    Label61: TLabel;
    Label62: TLabel;
    Label63: TLabel;
    Label64: TLabel;
    Label65: TLabel;
    Label66: TLabel;
    Label67: TLabel;
    Label68: TLabel;
    Label69: TLabel;
    Label70: TLabel;
    Label71: TLabel;
    Label72: TLabel;
    Label73: TLabel;
    Label74: TLabel;
    Label75: TLabel;
    Label76: TLabel;
    Label77: TLabel;
    Label78: TLabel;
    Label79: TLabel;
    Label80: TLabel;
    Label81: TLabel;
    Label82: TLabel;
    Label83: TLabel;
    Label84: TLabel;
    Label85: TLabel;
    Label86: TLabel;
    Label87: TLabel;
    Label88: TLabel;
    Label89: TLabel;
    Label90: TLabel;
    Label91: TLabel;
    Label92: TLabel;
    Label93: TLabel;
    Label94: TLabel;
    Label95: TLabel;
    Label96: TLabel;
    Label97: TLabel;
    Label98: TLabel;
    Label99: TLabel;
    Label100: TLabel;
    Label101: TLabel;
    Label102: TLabel;
    Label103: TLabel;
    Label104: TLabel;
    Label105: TLabel;
    Label106: TLabel;
    Label107: TLabel;
    Label108: TLabel;
    Label109: TLabel;
    Label110: TLabel;
    Label111: TLabel;
    Label112: TLabel;
    Label113: TLabel;
    Label114: TLabel;
    Label115: TLabel;
    Label116: TLabel;
    Label117: TLabel;
    Label118: TLabel;
    Label119: TLabel;
    Label120: TLabel;
    Label146: TLabel;
    Label147: TLabel;
    BitBtn1: TBitBtn;
    cxDBTextEdit1: TcxDBTextEdit;
    cxDBTextEdit2: TcxDBTextEdit;
    cxDBTextEdit3: TcxDBTextEdit;
    cxDBTextEdit4: TcxDBTextEdit;
    cxDBTextEdit5: TcxDBTextEdit;
    cxDBTextEdit6: TcxDBTextEdit;
    cxDBTextEdit7: TcxDBTextEdit;
    cxDBTextEdit8: TcxDBTextEdit;
    cxDBTextEdit9: TcxDBTextEdit;
    cxDBTextEdit10: TcxDBTextEdit;
    cxDBTextEdit11: TcxDBTextEdit;
    cxDBTextEdit12: TcxDBTextEdit;
    cxDBTextEdit13: TcxDBTextEdit;
    cxDBTextEdit14: TcxDBTextEdit;
    cxDBTextEdit15: TcxDBTextEdit;
    cxDBTextEdit16: TcxDBTextEdit;
    cxDBTextEdit17: TcxDBTextEdit;
    cxDBTextEdit18: TcxDBTextEdit;
    cxDBTextEdit19: TcxDBTextEdit;
    cxDBTextEdit20: TcxDBTextEdit;
    cxDBTextEdit21: TcxDBTextEdit;
    cxDBTextEdit22: TcxDBTextEdit;
    cxDBTextEdit23: TcxDBTextEdit;
    cxDBTextEdit24: TcxDBTextEdit;
    cxDBTextEdit25: TcxDBTextEdit;
    cxDBTextEdit26: TcxDBTextEdit;
    cxDBTextEdit27: TcxDBTextEdit;
    cxDBTextEdit28: TcxDBTextEdit;
    cxDBTextEdit29: TcxDBTextEdit;
    cxDBTextEdit30: TcxDBTextEdit;
    cxDBTextEdit31: TcxDBTextEdit;
    cxDBTextEdit32: TcxDBTextEdit;
    cxDBTextEdit33: TcxDBTextEdit;
    cxDBTextEdit34: TcxDBTextEdit;
    cxDBTextEdit35: TcxDBTextEdit;
    cxDBTextEdit36: TcxDBTextEdit;
    cxDBTextEdit37: TcxDBTextEdit;
    cxDBTextEdit38: TcxDBTextEdit;
    cxDBTextEdit42: TcxDBTextEdit;
    cxDBTextEdit43: TcxDBTextEdit;
    cxDBTextEdit44: TcxDBTextEdit;
    cxDBTextEdit45: TcxDBTextEdit;
    cxDBTextEdit39: TcxDBTextEdit;
    cxDBTextEdit40: TcxDBTextEdit;
    cxDBTextEdit41: TcxDBTextEdit;
    cxDBTextEdit46: TcxDBTextEdit;
    cxDBTextEdit47: TcxDBTextEdit;
    cxDBTextEdit48: TcxDBTextEdit;
    cxDBTextEdit49: TcxDBTextEdit;
    cxDBTextEdit50: TcxDBTextEdit;
    cxDBTextEdit51: TcxDBTextEdit;
    cxDBTextEdit52: TcxDBTextEdit;
    cxDBTextEdit53: TcxDBTextEdit;
    cxDBTextEdit54: TcxDBTextEdit;
    cxDBTextEdit55: TcxDBTextEdit;
    cxDBTextEdit56: TcxDBTextEdit;
    cxDBTextEdit57: TcxDBTextEdit;
    cxDBTextEdit58: TcxDBTextEdit;
    cxDBTextEdit59: TcxDBTextEdit;
    cxDBTextEdit60: TcxDBTextEdit;
    cxDBTextEdit61: TcxDBTextEdit;
    cxDBTextEdit62: TcxDBTextEdit;
    cxDBTextEdit63: TcxDBTextEdit;
    cxDBTextEdit64: TcxDBTextEdit;
    cxDBTextEdit65: TcxDBTextEdit;
    cxDBTextEdit66: TcxDBTextEdit;
    cxDBTextEdit67: TcxDBTextEdit;
    cxDBTextEdit68: TcxDBTextEdit;
    cxDBTextEdit69: TcxDBTextEdit;
    cxDBTextEdit70: TcxDBTextEdit;
    cxDBTextEdit71: TcxDBTextEdit;
    cxDBTextEdit72: TcxDBTextEdit;
    cxDBTextEdit73: TcxDBTextEdit;
    cxDBTextEdit74: TcxDBTextEdit;
    cxDBTextEdit75: TcxDBTextEdit;
    cxDBTextEdit76: TcxDBTextEdit;
    cxDBTextEdit77: TcxDBTextEdit;
    cxDBTextEdit78: TcxDBTextEdit;
    cxDBTextEdit79: TcxDBTextEdit;
    cxDBTextEdit80: TcxDBTextEdit;
    cxDBTextEdit81: TcxDBTextEdit;
    cxDBTextEdit82: TcxDBTextEdit;
    cxDBTextEdit83: TcxDBTextEdit;
    cxDBTextEdit84: TcxDBTextEdit;
    cxDBTextEdit85: TcxDBTextEdit;
    cxDBTextEdit86: TcxDBTextEdit;
    cxDBTextEdit87: TcxDBTextEdit;
    cxDBTextEdit88: TcxDBTextEdit;
    cxDBTextEdit89: TcxDBTextEdit;
    cxDBTextEdit90: TcxDBTextEdit;
    cxDBTextEdit91: TcxDBTextEdit;
    cxDBTextEdit92: TcxDBTextEdit;
    cxDBTextEdit93: TcxDBTextEdit;
    cxDBTextEdit94: TcxDBTextEdit;
    cxDBTextEdit95: TcxDBTextEdit;
    cxDBTextEdit96: TcxDBTextEdit;
    cxDBTextEdit97: TcxDBTextEdit;
    cxDBTextEdit98: TcxDBTextEdit;
    cxDBTextEdit99: TcxDBTextEdit;
    cxDBTextEdit100: TcxDBTextEdit;
    cxDBTextEdit101: TcxDBTextEdit;
    cxDBTextEdit102: TcxDBTextEdit;
    cxDBTextEdit103: TcxDBTextEdit;
    cxDBTextEdit104: TcxDBTextEdit;
    cxDBTextEdit105: TcxDBTextEdit;
    cxDBTextEdit106: TcxDBTextEdit;
    cxDBTextEdit107: TcxDBTextEdit;
    cxDBTextEdit108: TcxDBTextEdit;
    cxDBTextEdit109: TcxDBTextEdit;
    cxDBTextEdit110: TcxDBTextEdit;
    cxDBTextEdit111: TcxDBTextEdit;
    cxDBTextEdit112: TcxDBTextEdit;
    Panel3: TPanel;
    Label121: TLabel;
    Label122: TLabel;
    Label123: TLabel;
    Label124: TLabel;
    Label125: TLabel;
    Label126: TLabel;
    Label127: TLabel;
    Label128: TLabel;
    Label129: TLabel;
    Label130: TLabel;
    Label131: TLabel;
    Label132: TLabel;
    Label133: TLabel;
    Label134: TLabel;
    Label135: TLabel;
    Label136: TLabel;
    Label137: TLabel;
    Label138: TLabel;
    cxDBTextEdit113: TcxDBTextEdit;
    cxDBTextEdit114: TcxDBTextEdit;
    cxDBTextEdit115: TcxDBTextEdit;
    cxDBTextEdit116: TcxDBTextEdit;
    cxDBTextEdit117: TcxDBTextEdit;
    cxDBTextEdit118: TcxDBTextEdit;
    cxDBTextEdit119: TcxDBTextEdit;
    cxDBTextEdit120: TcxDBTextEdit;
    cxDBTextEdit121: TcxDBTextEdit;
    cxDBTextEdit122: TcxDBTextEdit;
    cxDBTextEdit123: TcxDBTextEdit;
    cxDBTextEdit124: TcxDBTextEdit;
    cxDBTextEdit125: TcxDBTextEdit;
    cxDBTextEdit126: TcxDBTextEdit;
    cxDBTextEdit127: TcxDBTextEdit;
    cxDBTextEdit128: TcxDBTextEdit;
    cxDBTextEdit129: TcxDBTextEdit;
    cxDBTextEdit130: TcxDBTextEdit;
    Panel4: TPanel;
    Label139: TLabel;
    Label140: TLabel;
    Label141: TLabel;
    Label142: TLabel;
    Label143: TLabel;
    Label144: TLabel;
    Label145: TLabel;
    cxDBTextEdit131: TcxDBTextEdit;
    cxDBTextEdit132: TcxDBTextEdit;
    cxDBTextEdit133: TcxDBTextEdit;
    cxDBTextEdit134: TcxDBTextEdit;
    cxDBTextEdit135: TcxDBTextEdit;
    cxDBTextEdit136: TcxDBTextEdit;
    cxDBTextEdit137: TcxDBTextEdit;
    cxDBTextEdit138: TcxDBTextEdit;
    cxDBTextEdit139: TcxDBTextEdit;
    Query_ListRate: TADOQuery;
    btvAdd_Collection_Items: TcxGridDBTableView;
    cxGrid_AddCollectionLevel1: TcxGridLevel;
    cxGrid_AddCollection: TcxGrid;
    btvAdd_Collection_ItemsADD_VID_NAME: TcxGridDBColumn;
    btvAdd_Collection_ItemsADD_SUM: TcxGridDBColumn;
    btvAdd_Collection_ItemsBRIEF_NAME: TcxGridDBColumn;
    btvAdd_Collection_ItemsADD_TYPE_NAME: TcxGridDBColumn;
    btvAdd_Collection_ItemsADD_COMMENT: TcxGridDBColumn;
    btvAdd_Collection_ItemsSUM_IN_SHAPING_RATE_CURRENCY: TcxGridDBColumn;
    Client_AddCollection: TClientDataSet;
    Client_AddCollection_add_vid_name: TStringField;
    Client_AddCollection_add_sum: TCurrencyField;
    Client_AddCollection_brief_name: TStringField;
    Client_AddCollection_add_type_name: TStringField;
    Client_AddCollection_add_comment: TStringField;
    Client_AddCollection_sum_in_shaping_rate_currency: TCurrencyField;
    Panel2: TPanel;
    SpeedButton2: TSpeedButton;
    SpeedButton1: TSpeedButton;
    SpeedButton3: TSpeedButton;
    Panel_ZFTO_All: TPanel;
    Panel1: TPanel;
    cxDBTextEdit_qFact_firm_info_name: TcxDBTextEdit;
    cxDBTextEdit_qFact_num_vagon: TcxDBTextEdit;
    cxDBTextEdit_qFact_num_konten: TcxDBTextEdit;
    cxDBTextEdit_qFact_num_document: TcxDBTextEdit;
    cxDBTextEdit_num_document_pref_: TcxDBTextEdit;
    cxDBTextEdit_qFact_date_from_to: TcxDBTextEdit;
    cxDBTextEdit_qFact_datpr: TcxDBTextEdit;
    Label164: TLabel;
    Label155: TLabel;
    Label156: TLabel;
    Label151: TLabel;
    Label149: TLabel;
    Label148: TLabel;
    Panel5: TPanel;
    Label159: TLabel;
    cxDBTextEdit_qFact_fact_weight: TcxDBTextEdit;
    cxDBTextEdit_qFact_kargo_capacity: TcxDBTextEdit;
    cxDBTextEdit_SelfFact_calc_weight_F: TcxDBTextEdit;
    cxDBTextEdit_SelfFact_rate_val_F: TcxDBTextEdit;
    cxDBTextEdit_qShapingRate_brief_name: TcxDBTextEdit;
    cxDBTextEdit_qShapingRate_ed_izm_name: TcxDBTextEdit;
    Label154: TLabel;
    Label152: TLabel;
    Label158: TLabel;
    Label166: TLabel;
    cxDBTextEdit_qFact_type_kontener_name: TcxDBTextEdit;
    cxDBTextEdit_qFact_attr_self_name: TcxDBTextEdit;
    cxDBTextEdit_SelfFact_sum_F: TcxDBTextEdit;
    Label150: TLabel;
    Label162: TLabel;
    cxDBTextEdit_SelfFact_Add_F: TcxDBButtonEdit;
    cxHeader1: TcxHeader;
    cxDBTextEdit140: TcxDBTextEdit;
    Label153: TLabel;
    Label157: TLabel;
    cxDBTextEdit141: TcxDBTextEdit;
    Label160: TLabel;
    cxDBTextEdit142: TcxDBTextEdit;
    procedure cxDBTextEdit_SelfFact_Add_FPropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure SpeedButton1Click(Sender: TObject);
    procedure SpeedButton3Click(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure Panel_SelfFactDataResize(Sender: TObject);
  private
    Q_Fact : TADOQuery;
    FAddCollection : TADOQuery;
    Q_ShapingRate  : TADOQuery;
    FAddCollectionDataSource : TDataSource;
    FSelfFactDataSource      : TDataSource;
    DS_ShapingRate           : TDataSource;
    DS_Fact                  : TDataSource;
    FSelfFactDataset : TDataSet;
    procedure SwitchTo_O;
    procedure SwitchTo_P;
  public
    FFact_id: integer;
    constructor Create(AOwner : TForm; fact_inc_id : integer); overload;
    constructor Create(AOwner : TForm; Dataset: TDataSet); overload;
    procedure ShowFactInfo; 
    function ConvertToShapingRateCurrency(shaping_rate_id, from_currency_id: integer; AValue: currency): currency;
  published

  end;

var
  fmFactIncCard: TfmFactIncCard;

implementation
   uses Other, Raznoe, ComObj, FactInc, main;
{$R *.DFM}

constructor TfmFactIncCard.Create(AOwner : TForm; fact_inc_id: integer);
begin
  Screen.Cursor := crHourglass;
  inherited Create(AOwner);
  Query_FactIncFull.Close;
  Query_FactIncFull.Parameters.ParamByName('fact_inc_id').Value := fact_inc_id;
  Query_FactIncFull.Open;
  SpeedButton2.Down := true;
  SwitchTo_P;
//  if Query_FactIncFull['bargain_id'] <> null then ShowFactInfo;
  Screen.Cursor := crDefault;
end;

constructor TfmFactIncCard.Create(AOwner : TForm; Dataset: TDataSet);
begin
  Screen.Cursor := crHourglass;
  inherited Create(AOwner);
  Query_FactIncFull.Close;
  Query_FactIncFull.Parameters.ParamByName('fact_inc_id').Value := Dataset.FieldByName('fact_inc_id').AsInteger;
  Query_FactIncFull.Open;
  Screen.Cursor := crDefault;

  SpeedButton2.Down := true;
  SwitchTo_P;
  FSelfFactDataSet := Dataset;
  ShowFactInfo;
end;

function TfmFactIncCard.ConvertToShapingRateCurrency(shaping_rate_id, from_currency_id : integer; AValue: currency): currency;
var  shaping_rate_currency_id : integer;
     qShaping_Rate            : TADOQuery;
     Bargain_Date             : TDateTime;
     exch1, exch2             : double;
begin
  // получаем валюту сделки
  qShaping_Rate := TADOQuery.Create(nil);
  qShaping_Rate.Connection := fmMain.Lis;
  qShaping_Rate.SQL.Text := 'SELECT currency_id, bargain_date_period, exchange_USD_val, exchange_CHF_val, exchange_EUR_val FROM view_shaping_rate WHERE shaping_rate_id = ' + IntToStr(shaping_rate_id);
  qShaping_Rate.Open;

  shaping_rate_currency_id := qShaping_Rate.FieldByName('currency_id').AsInteger;
  Bargain_Date := qShaping_Rate.FieldByName('bargain_date_period').AsDateTime;

  if qShaping_Rate.FieldByName('exchange_USD_val').IsNull then begin // средний курс
    case shaping_rate_currency_id of
      1 : exch1 := GetExchangeNew(1, Bargain_Date, fmMain.Lis);
      3 : exch1 := 1;
      5 : exch1 := GetExchangeNew(5, Bargain_Date, fmMain.Lis);
      6 : exch1 := GetExchangeNew(6, Bargain_Date, fmMain.Lis);
    end;
    case from_currency_id of
      1 : exch2 := GetExchangeNew(1, Bargain_Date, fmMain.Lis);
      3 : exch2 := 1;
      5 : exch2 := GetExchangeNew(5, Bargain_Date, fmMain.Lis);
      6 : exch2 := GetExchangeNew(6, Bargain_Date, fmMain.Lis);
    end;
  end else begin // Курсы пробиты в подрядчике
    case shaping_rate_currency_id of
      1 : exch1 := qShaping_Rate.FieldByName('exchange_USD_val').AsFloat;
      3 : exch1 := 1;
      5 : exch1 := qShaping_Rate.FieldByName('exchange_CHF_val').AsFloat;
      6 : exch1 := qShaping_Rate.FieldByName('exchange_EUR_val').AsFloat;
    end;
    case from_currency_id of
      1 : exch2 := qShaping_Rate.FieldByName('exchange_USD_val').AsFloat;
      3 : exch2 := 1;
      5 : exch2 := qShaping_Rate.FieldByName('exchange_CHF_val').AsFloat;
      6 : exch2 := qShaping_Rate.FieldByName('exchange_EUR_val').AsFloat;
    end;
  end;
  result := AValue * exch2 / exch1;

  qShaping_Rate.Free;
end;

procedure TfmFactIncCard.Panel_SelfFactDataResize(Sender: TObject);
begin
  cxHeader1.Sections[0].Width := TPanel(Sender).Width;
end;

procedure TfmFactIncCard.cxDBTextEdit_SelfFact_Add_FPropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
begin
  cxGrid_AddCollection.Visible := not cxGrid_AddCollection.Visible;
end;

procedure TfmFactIncCard.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action := caFree;
end;

procedure TfmFactIncCard.ShowFactInfo; // подключить для показа информацию по факту
var  FldCnt, RecCnt : integer;
                  T : TComponent;
            fact_id : integer;
    shaping_rate_id : integer;
            add_sum : Currency;
    add_currency_id : integer;
begin
  Screen.Cursor := crHourglass;

  fact_id := FSelfFactDataset.FieldByName('fact_id').AsInteger;
  if fact_id = 0  then exit;
  Q_Fact := TAdoQuery.Create(nil);
  DS_Fact := TDataSource.Create(nil);

  // извлекаем одну запись по данному факту (fact_id)
  Q_Fact := TADOQuery.Create(nil);
  Q_Fact.Connection := fmMain.Lis;
  Q_Fact.SQL.Text := 'SELECT * FROM view_bargain_fact WHERE fact_id = ' + IntToStr(fact_id);
  Q_Fact.Open;
  DS_Fact.DataSet := Q_Fact; // нужен TDataSource для привязки видимых полей в форме

  // расстановка видимых данных в соответствии с полями запроса
  for FldCnt := 0 to Q_Fact.FieldCount - 1 do begin
    T := FindComponent('cxDBTextEdit_qFact_'+Q_Fact.Fields[FldCnt].FieldName);
    if not Assigned(T) then Continue;
    if (T is TcxDBTextEdit) then begin
      (T as TcxDBTextEdit).DataBinding.DataSource := DS_Fact;
      (T as TcxDBTextEdit).DataBinding.DataField := Q_Fact.Fields[FldCnt].FieldName;
    end;
  end;

  // вывод списка ставок по загрузке
  // возможно список не понадобится в форме или расчете, но пока оставил
  with Query_ListRate.Parameters do begin
    ParamByName('rate_id').Value       := Q_Fact.FieldByName('bargain_id').Value;
    ParamByName('type_tools_id').Value := Q_Fact.FieldByName('type_kontener').Value;
    ParamByName('attr_self').Value     := Q_Fact.FieldByName('attr_self').Value;
  end;
  Query_ListRate.Open;
  // расстановка видимых данных в соответствии с полями FSelfFactDataset, взятыми
  // из вызывающей формы AgreeFactInc
  FSelfFactDataSource := TDataSource.Create(nil);
  FSelfFactDataSource.DataSet := FSelfFactDataset;
  for FldCnt := 0 to FSelfFactDataset.FieldCount - 1 do begin
    T := FindComponent('cxDBTextEdit_SelfFact_'+FSelfFactDataset.Fields[FldCnt].FieldName);
    if not assigned(T) then Continue;
    if (T is TcxDBTextEdit) then  begin
      (T as TcxDBTextEdit).DataBinding.DataSource := FSelfFactDataSource;
      (T as TcxDBTextEdit).DataBinding.DataField := FSelfFactDataset.Fields[FldCnt].FieldName;
    end;
    if (T is TcxDBButtonEdit) then  begin
      (T as TcxDBButtonEdit).DataBinding.DataSource := FSelfFactDataSource;
      (T as TcxDBButtonEdit).DataBinding.DataField := FSelfFactDataset.Fields[FldCnt].FieldName;
    end;
  end;
  // извлечение Дополнительных сборов по оплате проезда + сначала нужно найти shapig_rate_id
  Q_ShapingRate := TADOQuery.Create(nil);
  DS_ShapingRate := TDataSource.Create(nil);
  DS_ShapingRate.DataSet := Q_ShapingRate;
  Q_ShapingRate.Connection := fmMain.Lis;
  Q_ShapingRate.SQL.Text := 'SELECT  shaping_rate_id, brief_name, currency_id, ed_izm_name '+
                           'FROM view_bargain_shaping_rate ' +
                           'WHERE  (contract_set IN (1)) AND (bargain_id = ' +
                           Q_Fact.FieldByName('bargain_id').AsString+ ')';
  Q_ShapingRate.Open;
  shaping_rate_id := Q_ShapingRate.FieldByName('shaping_rate_id').AsInteger;
  for FldCnt := 0 to Q_ShapingRate.FieldCount - 1 do begin
    T := FindComponent('cxDBTextEdit_qShapingRate_'+Q_ShapingRate.Fields[FldCnt].FieldName);
    if not assigned(T) then Continue;
    if (T is TcxDBTextEdit) then begin
      (T as TcxDBTextEdit).DataBinding.DataSource := DS_ShapingRate;
      (T as TcxDBTextEdit).DataBinding.DataField := Q_ShapingRate.Fields[FldCnt].FieldName;
    end;
  end;

  // извлечение Дополнительных сборов по оплате проезда
//  FAddCollection := TAdoQuery.Create(nil);
//  FAddCollection.Connection := fmMain.Lis;
//  FAddCollection.SQL.Text := 'SELECT *, CAST(1.0001 AS MONEY) AS sum_in_shaping_rate_currency' +
//                             ' FROM view_add_collection WHERE (client_agent = 1) AND (add_rate_id = '
//                             + IntToStr(shaping_rate_id) + ')';
//  FAddCollection.Open;
//
//  Client_AddCollection.CreateDataSet;
//  Client_AddCollection.Open;
//  Client_AddCollection.ReadOnly := false;
//  for RecCnt := 0 to FAddCollection.RecordCount - 1 do begin
//    Client_AddCollection.Append;
//    for FldCnt := 0 to Client_AddCollection.FieldCount - 1 do // копирование значений одноименных полей
//      Client_AddCollection.Fields[FldCnt].Value := FAddCollection.FieldByName(Client_AddCollection.Fields[FldCnt].FieldName).Value;
//    Add_Currency_id := FAddCollection.FieldByName('add_currency_id').AsInteger;
//    Add_Sum := FAddCollection.FieldByName('add_sum').AsCurrency;
//    Client_AddCollection['sum_in_shaping_rate_currency'] := ConvertToShapingRateCurrency(shaping_rate_id, add_currency_Id, add_sum);
//    Client_AddCollection.Post;
//    FAddCollection.Next;
//  end;
//  FAddCollectionDataSource := TDataSource.Create(nil);
//  FAddCollectionDataSource.DataSet := Client_AddCollection;
//  btvAdd_Collection_Items.DataController.DataSource := FAddCollectionDataSource;
//  Client_AddCollection.ReadOnly := true;

  Q_Fact.Free;
  Screen.Cursor := crDefault;
end;


procedure TfmFactIncCard.SpeedButton1Click(Sender: TObject);
begin
  if TSpeedButton(Sender).Tag = 0 then SwitchTo_O
  else SwitchTo_P;
end;

procedure TfmFactIncCard.SpeedButton3Click(Sender: TObject);
var exApp,exWkb, exWks : variant;
        i, j           : integer;
begin
  Screen.Cursor := crHourglass;
  fmOther.Show;
  fmOther.Label1.Caption := 'Проверка ставок по загрузке вагонов/контейнеров...';
  fmOther.Repaint;

  fmOther.Label1.Caption := 'Запуск сервера автоматизации...';
  fmOther.Repaint;
  exApp := CreateOleObject('Excel.Application');
  exWkb := exApp.Workbooks.Add;
  exWks := exApp.ActiveWorkbook.WorkSheets[1];
  exWks.Columns['A:C'].ColumnWidth := 16;
//  exApp.Visible := True;
  exWks.Range['B1'] := 'Отпр'; exWks.Range['C1'] := 'Приб';
  for i:=0 to 79 do
    for j:=0 to ComponentCount-1 do begin
      if (Components[j] is TLabel) AND (TLabel(Components[j]).Tag=i) then
        exWks.Range['A'+IntToStr(i+2)].Value := TLabel(Components[j]).Caption;
    end;

  SpeedButton1.Down := True;
  SpeedButton1Click(SpeedButton1);
  for i:=0 to 77 do
    for j:=0 to ComponentCount-1 do begin
      if (Components[j] is TcxDBTextEdit) AND (TcxDBTextEdit(Components[j]).Tag=i) then
        exWks.Range['B'+IntToStr(i+2)].Value := Query_FactIncFull.FieldByNAme(TcxDBTextEdit(Components[j]).DataBinding.DataField).AsString;
    end;

  SpeedButton2.Down := True;
  SpeedButton1Click(SpeedButton2);
  for i:=0 to 77 do
    for j:=0 to ComponentCount-1 do begin
      if (Components[j] is TcxDBTextEdit) AND (TcxDBTextEdit(Components[j]).Tag=i) then
        exWks.Range['C'+IntToStr(i+2)].Value := Query_FactIncFull.FieldByNAme(TcxDBTextEdit(Components[j]).DataBinding.DataField).AsString;
    end;

  exWks.Range['A1:A'+IntToStr(79)].Borders[10].LineStyle := 1;  // right
  exWks.Range['B1:B'+IntToStr(79)].Borders[10].LineStyle := 1;  // right
  exWks.Range['C1:C'+IntToStr(79)].Borders[10].LineStyle := 1;  // right
  // ----------------------------------------------------
  fmOther.Close;
  exApp.Visible := True;
  exWks := Null; exWkb := Null; exApp := Null;
  Screen.Cursor := crDefault;
end;


procedure TfmFactIncCard.SwitchTo_P; // переключить в прибытие
var i : integer;
begin
  for i:=0 to ComponentCount-1 do
    if (Components[i] is TcxDBTextEdit) AND (Copy(TcxDBTextEdit(Components[i]).DataBinding.DataField, 1, 2)='o_')
      AND (TcxDBTextEdit(Components[i]).Tag <> -9)
    then
      TcxDBTextEdit(Components[i]).DataBinding.DataField := StringReplace(TcxDBTextEdit(Components[i]).DataBinding.DataField, 'o_', 'p_', []);
end;

procedure TfmFactIncCard.SwitchTo_O; // переключить в отправление
var i : integer;
begin
  for i:=0 to ComponentCount-1 do
    if (Components[i] is TcxDBTextEdit) AND (Copy(TcxDBTextEdit(Components[i]).DataBinding.DataField, 1, 2)='p_')
        AND (TcxDBTextEdit(Components[i]).Tag <> -9)
    then
        TcxDBTextEdit(Components[i]).DataBinding.DataField := StringReplace(TcxDBTextEdit(Components[i]).DataBinding.DataField, 'p_', 'o_', []);
end;


procedure TfmFactIncCard.BitBtn1Click(Sender: TObject);
begin
  Close;
end;

end.
