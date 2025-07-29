unit FactInc;

{
Данный модуль вызывается из:
  - Главное меню "Факт"/"Железная дорога (нарастающий ЦФТО)". Появится окно
      с параментами поиска, после которого открывается данное окно.
  - Главное меню "Приложения", в ней кнопка "Сверить с фактической информацией ЦФТО",
      далее контекстное меню "Аналитический поиск вагонов".
  - Главное меню "Приложения", в ней кнопка "Сверить с фактической информацией ЦФТО",
      далее контекстное меню "Копировать в буфер". Далее открывается четыре пункта
      меню, любой из которых открывает окно с параментами поиска, после которого
      открывается данное окно.
  - Главное меню "Финансы"/"Суммы по фрахт.карточкам". Вкладка "Субподрядчики".
      Контекстное меню "Сверка с ЦФТО", далее контекстное меню "Аналитический поиск вагонов".
  - Главное меню "Финансы"/"Суммы по фрахт.карточкам". Вкладка "Субподрядчики".
      Контекстное меню "Сверка с ЦФТО", далее контекстное меню "Копировать в буфер".
      Далее открывается четыре пункта меню, любой из которых открывает окно с
      параментами поиска, после которого открывается данное окно.
}

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs, Default,
  Menus, Db, ADODB, ExtCtrls, StdCtrls, DBCtrls, DBClient,
  cxGridCustomTableView, cxGridTableView, cxGridBandedTableView, Variants, cxGridDBBandedTableView,
  cxClasses, cxControls, cxGridCustomView, ADOint, cxGridLevel, cxGrid, cxPropertiesStore, ComCtrls,
  cxDBData, cxStyles, cxCustomData, cxGraphics, cxFilter, cxData, cxDataStorage, cxCheckBox,
  cxLookAndFeelPainters, cxContainer, cxPC, cxCalendar, cxColorComboBox, dxBar, cxCurrencyEdit, cxEdit,
  StrUtils, cxLookAndFeels, XMLDoc, cxLabel, dxSkinsCore, dxSkinBlack, dxSkinBlue, dxSkinBlueprint, dxSkinCaramel, dxSkinCoffee,
  dxSkinDarkRoom, dxSkinDarkSide, dxSkinDevExpressDarkStyle, dxSkinDevExpressStyle, dxSkinFoggy, dxSkinGlassOceans, dxSkinHighContrast,
  dxSkiniMaginary, dxSkinLilian, dxSkinLiquidSky, dxSkinLondonLiquidSky, dxSkinMcSkin, dxSkinMetropolis, dxSkinMetropolisDark,
  dxSkinMoneyTwins, dxSkinOffice2007Black, dxSkinOffice2007Blue, dxSkinOffice2007Green, dxSkinOffice2007Pink, dxSkinOffice2007Silver,
  dxSkinOffice2010Black, dxSkinOffice2010Blue, dxSkinOffice2010Silver, dxSkinOffice2013DarkGray, dxSkinOffice2013LightGray,
  dxSkinOffice2013White, dxSkinPumpkin, dxSkinSeven, dxSkinSevenClassic, dxSkinSharp, dxSkinSharpPlus, dxSkinSilver, dxSkinSpringTime,
  dxSkinStardust, dxSkinSummer2008, dxSkinTheAsphaltWorld, dxSkinsDefaultPainters, dxSkinValentine, dxSkinVS2010, dxSkinWhiteprint,
  dxSkinXmas2008Blue, dxSkinscxPCPainter, cxNavigator, dxBarBuiltInMenu, dxSkinsdxBarPainter, dxSkinOffice2016Colorful, dxSkinOffice2016Dark,
  dxSkinVisualStudio2013Blue, dxSkinVisualStudio2013Dark, dxSkinVisualStudio2013Light,
  cxDataControllerConditionalFormattingRulesManagerDialog, dxDateRanges, dxSkinTheBezier, dxSkinOffice2019Colorful, dxScrollbarAnnotations,
  dxSkinBasic, dxSkinOffice2019Black, dxSkinOffice2019DarkGray,
  dxSkinOffice2019White, dxSkinWXI;

type
  TFactIncDlgResult = record
    {для определения нажата ли кнопка mbOk или нет}
    ModalResult : TModalResult;    // v[0]

    {для определения опции "Тип дополнения"  в случае, если отмечен "Отчетный период"}
    TypeResult: byte;             // v[1]

    {Если не отмечен "Отчетный период" в поле SQLText записывается SQL запрос для Query_FactIncDBF в форме fmFactInc}
    SQLText : PChar;              // v[2]

    {для записи имени процедуры в случае выбора "Начисленные платежи". Выбор процедуры соответствует понятию
     "С корректир.", "Без коррект." и "Коррект."
      case cxRadioGroup2.ItemIndex of
        0: ProcedureName:='sp_fact_inc_month_10_01;1';
        1: ProcedureName:='sp_fact_inc_month_without_correct;1';
        2: ProcedureName:='sp_fact_inc_month_razn;1';
      end}
    ProcedureName: PChar;        // v[3]

    {Параметр процедур. Используется для обозначения номера месяца (cxComboBox1) }
    ProcParam1: integer;         // v[4]

    {Параметр процедур. Используется для обозначения  номера года (cxComboBox2) }
    ProcParam2: integer;         // v[5]

    {Параметр процедур. При выборе типа дополнения
    "Начисленные платежи"  используется для хранения значения "Экспедитор ЦФТО".
    В остальных случаях типа дополнения ("Штрафы", "Охрана", "ТД") используется для хранения типа расчета (cxRadioGroup1)}
    ProcParam3: integer;         // v[6]

    {Параметр процедур. Используется для типа передачи расчета (cxRadioGroup1) для типа дополнения "Начисленные платежи" }
    ProcParam4: integer;         // v[7]
  end;


type
  TfmFactInc = class(TForm)
    Query_FactIncDBF: TADOQuery;
    DS_FactInc: TDataSource;
    Panel2: TPanel;
    cxGrid1Level1: TcxGridLevel;
    cxGrid1: TcxGrid;
    cxGrid1DBBandedTableView1: TcxGridDBBandedTableView;
    cxGrid1DBBandedTableView1brief_name: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1fact_inc_id: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1id_uch: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1bargain_id: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1max_load_id: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1ndnum: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1nvag: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1fkv: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1grp: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1dataot: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1datpr: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1vg: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1grves: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1nkont: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1free_fact_text: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1free_fact: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1FIO_free_fact: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1bargain_cod: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1FIO_users_owner: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1type_info: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1fact_inc_color: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1sto_name: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1stn_name: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1gruz_name: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1podkod: TcxGridDBBandedColumn;
    cxPropertiesStore1: TcxPropertiesStore;
    cxGrid1DBBandedTableView1ndser: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1itog: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1users_owner_id: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1rodv: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1fsob_name: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1fkat: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1type_self: TcxGridDBBandedColumn;
    SP_FactInc_10_01: TADOStoredProc;
    cxGrid1DBBandedTableView1firm_customer_name: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1date_period_month: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1date_period_year: TcxGridDBBandedColumn;
    cxTabControl1: TcxTabControl;
    cxGrid1DBBandedTableView2: TcxGridDBBandedTableView;
    cxGrid1DBBandedTableView2fact_inc_id: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView2bargain_id: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView2id_uch: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView2max_load_id: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView2type_self: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView2ndnum: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView2ndser: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView2nvag: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView2fkv: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView2grp: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView2dataot: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView2datpr: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView2vg: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView2grves: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView2podkod: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView2nkont: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView2free_fact_text: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView2free_fact: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView2FIO_free_fact: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView2fact_inc_color: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView2sto_name: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView2stn_name: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView2gruz_name: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView2kursdr: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView2field_report: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView2brief_name: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView2fsob_name: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView2bargain_cod: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView2date_period: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView2firm_customer_name: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView2FIO_users_owner: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView2users_owner_id: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView2date_period_month: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView2date_period_year: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView2itog: TcxGridDBBandedColumn;
    DS_FindEmpty: TDataSource;
    cxGrid1DBBandedTableView1itogr: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1check_invoice_score: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1od: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView2od: TcxGridDBBandedColumn;
    Query_FindEmpty: TADOQuery;
    cxGrid1DBBandedTableView1sto: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1stn: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView2sto: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView2stn: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1x: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1zfto_score_num: TcxGridDBBandedColumn;
    Panel1: TPanel;
    cxGrid2: TcxGrid;
    cxGrid2DBBandedTableView1: TcxGridDBBandedTableView;
    cxGrid2DBBandedTableView1zfto_score_id: TcxGridDBBandedColumn;
    cxGrid2DBBandedTableView1fact_num: TcxGridDBBandedColumn;
    cxGrid2DBBandedTableView1fact_date: TcxGridDBBandedColumn;
    cxGrid2DBBandedTableView1sum_rub: TcxGridDBBandedColumn;
    cxGrid2DBBandedTableView1sum_usd: TcxGridDBBandedColumn;
    cxGrid2DBBandedTableView1global_color: TcxGridDBBandedColumn;
    cxGrid2DBBandedTableView1date_act: TcxGridDBBandedColumn;
    cxGrid2DBBandedTableView1deb_name: TcxGridDBBandedColumn;
    cxGrid2DBBandedTableView1inn: TcxGridDBBandedColumn;
    cxGrid2DBBandedTableView1kpp: TcxGridDBBandedColumn;
    cxGrid2DBBandedTableView1locco: TcxGridDBBandedColumn;
    cxGrid2DBBandedTableView1num_contr: TcxGridDBBandedColumn;
    cxGrid2DBBandedTableView1number_act: TcxGridDBBandedColumn;
    cxGrid2DBBandedTableView1type_incom: TcxGridDBBandedColumn;
    cxGrid2DBBandedTableView1date_load_year: TcxGridDBBandedColumn;
    cxGrid2DBBandedTableView1date_load_month: TcxGridDBBandedColumn;
    cxGrid2DBBandedTableView1numact_cor: TcxGridDBBandedColumn;
    cxGrid2DBBandedTableView1datact_cor: TcxGridDBBandedColumn;
    cxGrid2DBBandedTableView1file_load: TcxGridDBBandedColumn;
    cxGrid2DBBandedTableView1waers: TcxGridDBBandedColumn;
    cxGrid2Level1: TcxGridLevel;
    Splitter1: TSplitter;
    Query_ZFTOScore: TADOQuery;
    DS_ZFTOScore: TDataSource;
    dxBarManager1: TdxBarManager;
    dxBarManager1Bar1: TdxBar;
    PopupMenu1: TdxBarPopupMenu;
    N1: TdxBarButton;
    N28: TdxBarButton;
    N6: TdxBarButton;
    N17: TdxBarButton;
    N18: TdxBarButton;
    Excel1: TdxBarButton;
    N15: TdxBarButton;
    N14: TdxBarSubItem;
    N19: TdxBarButton;
    N22: TdxBarButton;
    N21: TdxBarSubItem;
    N11: TdxBarButton;
    N20: TdxBarButton;
    N25: TdxBarButton;
    N31: TdxBarButton;
    N7: TdxBarButton;
    N4: TdxBarButton;
    N3: TdxBarSubItem;
    dxBarButton1: TdxBarButton;
    dxBarButton2: TdxBarButton;
    dxBarButton3: TdxBarButton;
    dxBarSubItem1: TdxBarSubItem;
    dxBarButton4: TdxBarButton;
    cxGrid1DBBandedTableView1fexan: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1itog_ndsr: TcxGridDBBandedColumn;
    dxBarButton_LoadDBF: TdxBarButton;
    dxBarButton_DelDBF: TdxBarButton;
    dxBarSubItem_GroupDBF: TdxBarSubItem;
    dxBarButton_Snap: TdxBarButton;
    dxBarButton_AddGrant: TdxBarButton;
    dxBarButton_DeleteGrant: TdxBarButton;
    cxGrid1DBBandedTableView1file_name_dbf: TcxGridDBBandedColumn;
    dxBarButton_FilterRecords1: TdxBarButton;
    dxBarButton_Unbind: TdxBarButton;
    dxBarButton_AddSnap: TdxBarButton;
    dxBarButton_ReportClient: TdxBarButton;
    cxGrid1DBBandedTableView1shaping_rate_id: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1contract_agent_cod: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1agent_name: TcxGridDBBandedColumn;
    dxBarButton6: TdxBarButton;
    cxGrid1DBBandedTableView1FIO_users: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1date_period_finance_name: TcxGridDBBandedColumn;
    dxBarButton5: TdxBarButton;
    procedure dxBarButton4Click(Sender: TObject);
    procedure N18Click(Sender: TObject);
    procedure N17Click(Sender: TObject);
    procedure dxBarButton3Click(Sender: TObject);
    procedure N1Click(Sender: TObject);
    procedure dxBarButton2Click(Sender: TObject);
    procedure dxBarButton1Click(Sender: TObject);
    procedure cxGrid1DBBandedTableView1FocusedRecordChanged(Sender: TcxCustomGridTableView; APrevFocusedRecord, AFocusedRecord: TcxCustomGridRecord; ANewItemRecordFocusingChanged: Boolean);
    procedure cxGrid1DBBandedTableView2CustomDrawCell(Sender: TcxCustomGridTableView; ACanvas: TcxCanvas; AViewInfo: TcxGridTableDataCellViewInfo; var ADone: Boolean);
    procedure N25Click(Sender: TObject);
    procedure cxGrid1DBBandedTableView1KeyPress(Sender: TObject; var Key: Char);
    procedure N22Click(Sender: TObject);
    procedure ToolButton10Click(Sender: TObject);
    procedure N20Click(Sender: TObject);
    procedure cxGrid1DBBandedTableView1CustomDrawCell(Sender: TcxCustomGridTableView; ACanvas: TcxCanvas;  AViewInfo: TcxGridTableDataCellViewInfo; var ADone: Boolean);
    procedure cxTabControl1Change(Sender: TObject);
    procedure N19Click(Sender: TObject);
    procedure cxGrid1DBBandedTableView1FocusedItemChanged(Sender: TcxCustomGridTableView; APrevFocusedItem, AFocusedItem: TcxCustomGridTableItem);
    procedure cxGrid1DBBandedTableView1CustomDrawColumnHeader( Sender: TcxGridTableView; ACanvas: TcxCanvas; AViewInfo: TcxGridColumnHeaderViewInfo; var ADone: Boolean);
    procedure Action_AgreeExecute(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure N7Click(Sender: TObject);
    procedure PopupMenu1Popup(Sender: TObject);
    procedure SpeedButton4Click(Sender: TObject);
    procedure N11Click(Sender: TObject);
    procedure Excel1Click(Sender: TObject);
    procedure N4Click(Sender: TObject);
    procedure cxGrid1DBBandedTableView1DataControllerFilterChanged(Sender: TObject);
    procedure dxBarButton_LoadDBFClick(Sender: TObject);
    procedure dxBarButton_DelDBFClick(Sender: TObject);
    procedure dxBarButton_SnapClick(Sender: TObject);
    procedure dxBarButton_AddGrantClick(Sender: TObject);
    procedure dxBarButton_FilterRecords1Click(Sender: TObject);
    procedure dxBarButton_AddSnapClick(Sender: TObject);
    procedure dxBarButton_ReportClientClick(Sender: TObject);
    procedure dxBarButton6Click(Sender: TObject);
    procedure dxBarButton8Click(Sender: TObject);
    procedure dxBarButton5Click(Sender: TObject);
  private
    Fstr_fact_inc_id  : string;
    Ftype_self        : integer;
  public
    Fexpeditor        : string;
    FcxGridView : TcxGridDBBandedTableView;

    constructor Create(AOwner : TApplication; flag:boolean);
    procedure GetData_DBF(sql_string : string);
    procedure Change_SQL_Procedures(v : variant);
    procedure SetTypeSelf(type_self : integer);
  published
    property _GetData_DBF : string write GetData_DBF;
    property _GetStrFactId : string read Fstr_fact_inc_id;
    property _SetTypeSelf : integer write SetTypeSelf;
  end;

var
  fmFactInc: TfmFactInc;

implementation
    uses Main, Raznoe, Filter, SHellApi, Other, ComObj, FactIncCard, cxGridDBTableView, AgreeFactInc,
          Period, ZFTOScore, DateUtils, Agree2, FactIncAdd;
{$R *.DFM}

constructor TfmFactInc.Create(AOwner: TApplication; flag: boolean);
begin
  Screen.Cursor := crHourglass;
  inherited Create(AOwner);

  if flag then begin
    FormStyle := fsNormal;
    Position := poScreenCenter;
    dxBarButton3.Visible := ivAlways;
  end else
    FormStyle := fsMDIChild;

  StoreRegistryGrid(rgLoad,'\Software\Lis1\FactInc_Grids', cxGrid1DBBandedTableView1);
  StoreRegistryGrid(rgLoad,'\Software\Lis1\FactInc_Grids', cxGrid2DBBandedTableView1);
  StoreRegistryGrid(rgLoad,'\Software\Lis1\FactInc_Grids', cxGrid1DBBandedTableView2);

  cxGrid1DBBandedTableView1FIO_users_owner.Styles.Content := fmMain.cxStyle_AgreeFact;
  cxGrid1DBBandedTableView1bargain_cod.Styles.Content := fmMain.cxStyle_AgreeFact;
  cxGrid1DBBandedTableView1firm_customer_name.Styles.Content := fmMain.cxStyle_AgreeFact;
  cxGrid1DBBandedTableView1date_period_month.Styles.Content := fmMain.cxStyle_AgreeFact;
  cxGrid1DBBandedTableView1date_period_year.Styles.Content := fmMain.cxStyle_AgreeFact;
  cxGrid1DBBandedTableView1date_period_finance_name.Styles.Content := fmMain.cxStyle_AgreeFact;
  cxGrid1DBBandedTableView1itog.Styles.Content := fmMain.cxStyle_AgreeFactInc_Sum;

  cxGrid1DBBandedTableView2FIO_users_owner.Styles.Content := fmMain.cxStyle_AgreeFact;
  cxGrid1DBBandedTableView2bargain_cod.Styles.Content := fmMain.cxStyle_AgreeFact;
  cxGrid1DBBandedTableView2firm_customer_name.Styles.Content := fmMain.cxStyle_AgreeFact;
  cxGrid1DBBandedTableView2date_period_month.Styles.Content := fmMain.cxStyle_AgreeFact;
  cxGrid1DBBandedTableView2date_period_year.Styles.Content := fmMain.cxStyle_AgreeFact;
  cxGrid1DBBandedTableView2itog.Styles.Content := fmMain.cxStyle_AgreeFactInc_Sum;
  cxGrid1DBBandedTableView2field_report.Styles.Content := fmMain.cxStyle_Agree_bargain_cod;
  
  cxTabControl1.TabIndex := 0;
  FcxGridView := cxGrid1DBBandedTableView1;
  WindowState := wsMaximized;
  dxBarSubItem1.Enabled := True;

  SetUsersModuleRights(self, fmMain.Lis);
  MonitorEventFormOpen('OPEN_FORM', self.Name, fmMain.Lis, -9);

  Screen.Cursor := crDefault;
end;

procedure TfmFactInc.cxGrid1DBBandedTableView1CustomDrawCell(Sender: TcxCustomGridTableView; ACanvas: TcxCanvas; AViewInfo: TcxGridTableDataCellViewInfo; var ADone: Boolean);
begin
  if (AViewInfo.GridRecord.Values[cxGrid1DBBandedTableView1fact_inc_color.Index]<>NULL) then ACanvas.Brush.Color := AViewInfo.GridRecord.Values[cxGrid1DBBandedTableView1fact_inc_color.Index];
  if AViewInfo.GridRecord.Selected then begin
    ACanvas.Brush.Color := clNavy;
    ACanvas.Font.Color := clWhite;
    if AViewInfo.Focused then ACanvas.Brush.Color := clBlue;
  end;
end;

procedure TfmFactInc.cxGrid1DBBandedTableView1CustomDrawColumnHeader(Sender: TcxGridTableView; ACanvas: TcxCanvas;  AViewInfo: TcxGridColumnHeaderViewInfo; var ADone: Boolean);
begin
  if AViewInfo.Column.Focused then begin
    ACanvas.Brush.Color := clNavy;
    ACanvas.Font.Color := clWhite;
  end;
end;

procedure TfmFactInc.cxGrid1DBBandedTableView1DataControllerFilterChanged(Sender: TObject);
begin
  DrawcxGridColumnOnFiltered(Sender);
end;

procedure TfmFactInc.cxGrid1DBBandedTableView1FocusedItemChanged(Sender: TcxCustomGridTableView; APrevFocusedItem, AFocusedItem: TcxCustomGridTableItem);
begin
  FcxGridView.Painter.Invalidate;
end;

procedure TfmFactInc.cxGrid1DBBandedTableView1FocusedRecordChanged(Sender: TcxCustomGridTableView; APrevFocusedRecord, AFocusedRecord: TcxCustomGridRecord; ANewItemRecordFocusingChanged: Boolean);
begin
  Screen.Cursor := crHourglass;
  Query_ZFTOScore.Close;
  if (AFocusedRecord<>nil) AND ((cxGrid1DBBandedTableView1.GroupedColumnCount = 0) OR (AFocusedRecord.Level <> 0)) then begin
    Query_ZFTOScore.Parameters.ParamByName('fact_inc_id').Value := AFocusedRecord.Values[cxGrid1DBBandedTableView1fact_inc_id.Index];
    Query_ZFTOScore.Open;
  end;
  Screen.Cursor := crDefault;
end;

procedure TfmFactInc.cxGrid1DBBandedTableView1KeyPress(Sender: TObject; var Key: Char);
begin
  FilterColumnGridOnKeyPress(FcxGridView, Key);
end;

procedure TfmFactInc.cxGrid1DBBandedTableView2CustomDrawCell(Sender: TcxCustomGridTableView; ACanvas: TcxCanvas; AViewInfo: TcxGridTableDataCellViewInfo; var ADone: Boolean);
begin
  if (AViewInfo.GridRecord.Values[cxGrid1DBBandedTableView2fact_inc_color.Index]<>NULL) then ACanvas.Brush.Color := AViewInfo.GridRecord.Values[cxGrid1DBBandedTableView2fact_inc_color.Index];
  if AViewInfo.GridRecord.Selected then begin
    ACanvas.Brush.Color := clNavy;
    ACanvas.Font.Color := clWhite;
    if AViewInfo.Focused then ACanvas.Brush.Color := clBlue;
  end;
end;

procedure TfmFactInc.cxTabControl1Change(Sender: TObject);
begin
  Screen.Cursor := crHourglass;
  case cxTabControl1.TabIndex of
    0 : begin
          Panel1.Visible := True;
          Splitter1.Visible := True;
          cxGrid1Level1.GridView := cxGrid1DBBandedTableView1;
        end;
    1 : begin
          Panel1.Visible := False;
          Splitter1.Visible := False;
          cxGrid1Level1.GridView := cxGrid1DBBandedTableView2;
        end;
  end;
  FcxGridView := TcxGridDBBandedTableView(cxGrid1Level1.GridView);
  Screen.Cursor := crDefault;
end;

procedure TfmFactInc.dxBarButton1Click(Sender: TObject);
type
  TFunc =  function(AppHandle: THandle; user_pwd: PUser_pwd; ValueList: PChar; ValueListType: integer; type_self: integer): variant;
var
  FactIncDlgHandle : THandle;
  FFactIncDlg      : TFunc;
  v                : variant;
begin
  FactIncDlgHandle := LoadLibrary('Search.dll');
  @FFactIncDlg := GetProcAddress(FactIncDlgHandle, 'CreateWndFactIncDlg');
  v := FFactIncDlg(Application.Handle, usr_pwd, '', 0, Ftype_self);
  if v[0] = idOk then Change_SQL_Procedures(v);

  FreeLibrary(FactIncDlgHandle);
end;

procedure TfmFactInc.dxBarButton2Click(Sender: TObject);
begin
  RefreshQueryGrid(cxGrid1DBBandedTableView1, 'fact_inc_id', cxGrid1DBBandedTableView1fact_inc_id.DataBinding.Field.AsInteger);
end;

procedure TfmFactInc.dxBarButton3Click(Sender: TObject);
begin
  Fstr_fact_inc_id := GetStrId(cxGrid1DBBandedTableView1fact_inc_id, ',');
  ModalResult := mrOk;
end;

procedure TfmFactInc.dxBarButton4Click(Sender: TObject);
var          i : integer;
 Sp_Fact_Inc_Copy_To_Fact : TADOStoredProc;
begin
  if Application.MessageBox('Действительно копировать вагоны в оперативный факт?', 'ВНИМАНИЕ', MB_OKCANCEL+MB_ICONWARNING) = IDOK then begin
    Screen.Cursor := crHourglass;
    Sp_Fact_Inc_Copy_To_Fact := TADOStoredProc.Create(nil);
    Sp_Fact_Inc_Copy_To_Fact.Connection := fmMain.Lis;
    Sp_Fact_Inc_Copy_To_Fact.ProcedureName := 'sp_fact_inc_copy_to_fact;1';
    Sp_Fact_Inc_Copy_To_Fact.Parameters.Refresh;
    for i := 0 to cxGrid1DBBandedTableView1.Controller.SelectedRowCount - 1 do begin
      Sp_Fact_Inc_Copy_To_Fact.Close;
      Sp_Fact_Inc_Copy_To_Fact.Parameters.ParamByName('@fact_inc_id').Value := cxGrid1DBBandedTableView1.Controller.SelectedRows[i].Values[cxGrid1DBBandedTableView1fact_inc_id.Index];
      Sp_Fact_Inc_Copy_To_Fact.ExecProc;
      ShowTextMessage('Осталось ' + IntToStr(cxGrid1DBBandedTableView1.Controller.SelectedRowCount - i) + ' записей...',  False);
    end;
    Sp_Fact_Inc_Copy_To_Fact.Free;
    ShowTextMessage;
    Screen.Cursor := crDefault;
  end;
end;

procedure TfmFactInc.dxBarButton5Click(Sender: TObject);
var           i : integer;
    str_fact_inc_id : string;
begin
  for i := 0 to cxGrid1DBBandedTableView1.Controller.SelectedRowCount - 1 do
    str_fact_inc_id := str_fact_inc_id + ',' + IntToStr(cxGrid1DBBandedTableView1.Controller.SelectedRows[i].Values[cxGrid1DBBandedTableView1fact_inc_id.Index]);
  Delete(str_fact_inc_id, 1, 1);

  fmFactIncAdd := TfmFactIncAdd.Create(Application);
  fmFactIncAdd._SetUpdate := str_fact_inc_id;
  if fmFactIncAdd.ShowModal = mrOk then begin
    RefreshQueryGrid(cxGrid1DBBandedTableView1, 'fact_inc_id', cxGrid1DBBandedTableView1fact_inc_id.DataBinding.Field.AsInteger);
  end;
end;

procedure TfmFactInc.dxBarButton6Click(Sender: TObject);
var           Q : TADOQuery;
             SP : TADOStoredProc;
            msg : string;
  file_name_dbf : string;
      type_self : integer;
begin
  if not cxGrid1DBBandedTableView1.DataController.DataSet.Active then
    exit;

  file_name_dbf := cxGrid1DBBandedTableView1file_name_dbf.DataBinding.Field.AsString;
  type_self := cxGrid1DBBandedTableView1type_self.DataBinding.Field.AsInteger;

  if file_name_dbf = '' then begin
    Application.MessageBox('Нет файла загрузки. Удаление невозможно', 'Вниание', MB_OK or MB_ICONERROR);
    exit;
  end;

  Screen.Cursor := crHourglass;

  Q := TADOQuery.Create(nil);
  Q.Connection := fmMain.Lis;
//  Q.SQL.Add('DECLARE @users_group_id int');
//  Q.SQL.Add('SELECT @users_group_id = dbo.GetUsersGroupID()');
  Q.SQL.Add('SELECT cnt = COUNT(1) FROM fact_inc_temp');
  Q.SQL.Add('JOIN users ON fact_inc_temp.users_id = users.users_id');
  Q.SQL.Add('WHERE fact_inc_temp.type_self =  ' + IntToStr(type_self) );
  Q.SQL.Add('AND users.users_group_id = ' + IntToStr(usr_pwd.user_group_id));
  Q.SQL.Add('AND fact_inc_temp.file_name_dbf = ''' + file_name_dbf + '''');
  Q.Open;
  msg := 'Вы хотите удалить Нарастающий итог'#10'Файл загрузки = ' + file_name_dbf +
          #10#10'Будут удалены ' + Q.FieldByName('cnt').AsString + ' запись(и,ей)' +
          #10#10'Продолжить ?';
  Q.Free;

  Screen.Cursor := crDefault;

  if Application.MessageBox(PWideChar(msg), 'Внимание', MB_YESNO or MB_ICONQUESTION) <> ID_YES then
    exit;

  SP := TADOStoredProc.Create(nil);
  SP.Connection := fmMain.Lis;
  SP.ProcedureName := 'sp_FactInc_DelLast';
  SP.CommandTimeout := 300;
  SP.Parameters.Refresh;
  SP.Parameters.ParamByName('@file_name_dbf').Value := file_name_dbf;
  SP.Parameters.ParamByName('@type_self').Value := type_self;

  Screen.Cursor := crHourglass;
  try
    SP.ExecProc;

    Application.MessageBox(PWideChar('Файл ' + file_name_dbf + ' был удален из базы!'), 'Удаление', MB_OK or MB_ICONINFORMATION);
    RefreshQueryGrid(cxGrid1DBBandedTableView1, 'fact_inc_id', cxGrid1DBBandedTableView1fact_inc_id.DataBinding.Field.AsInteger);
  except
  end;
  Screen.Cursor := crDefault;
  SP.Free;

end;

procedure TfmFactInc.dxBarButton8Click(Sender: TObject);
begin

end;

{$REGION 'Загрузить предоставление ЦФТО'}
procedure TfmFactInc.dxBarButton_AddGrantClick(Sender: TObject);
type
  TFunc = function(AppHand: THandle; usr_pwd: PUser_pwd; type_table_cod, alias_name: string) : variant;
var OpenDialog      : TOpenDialog;
    Client_Records  : TClientDataSet;
    str_error       : string;
    SP              : TADOStoredProc;
    d3              : TDateTime;
    Q               : TADOQuery;
    read_cur        : Currency;
    filename        : string;
begin
  OpenDialog           := TOpenDialog.Create(self);
  OpenDialog.Filter    := 'Файлы dbf|*.dbf';
  OpenDialog.DefaultExt:= 'dbf';
  OpenDialog.Options   := [ofHideReadOnly,ofAllowMultiSelect,ofEnableSizing];
  if not OpenDialog.Execute then begin
    OpenDialog.Free;
    exit;
  end;
  filename := OpenDialog.FileName;
  OpenDialog.Free;

  ShowTextMessage('Проверка по имени файла... ', False);
  Q := TADOQuery.Create(nil);
  Q.Connection := fmMain.Lis;
  Q.SQL.Add('SELECT file_name_dbf FROM view_fact_inc_temp WHERE file_name_dbf = ''' + ExtractFileName(filename) + ''' AND users_group_id = ' + IntToStr(usr_pwd.user_group_id) + '');
  Q.Open;
  if Q.RecordCount > 0 then begin
    Application.MessageBox('Информация из файла с таким именем уже загружена!!!','Внимание',MB_OK);
    Q.Free;
    ShowTextMessage();
    exit;
  end;
  Q.Free;

// Читаем файл
  ShowTextMessage('Чтение файла... ', False);
  Client_Records := TClientDataSet.Create(nil);
  if ParserDBF(filename, Client_Records, str_error) = False then begin
    ShowTextMessage();
    Application.MessageBox(Pchar(str_error),'Внимание',MB_OK);
    OpenDialog.Free;
    Client_Records.Free;
    exit;
  end;
// Проверяем формат данных
  ShowTextMessage('Проверка формата... ', False);
  if not checkFileDBF(4, Client_Records) then begin
    ShowTextMessage();
    OpenDialog.Free;
    Client_Records.Free;
    exit;
  end;
  Client_Records.First;
  try
    SP := TADOStoredProc.Create(nil);
    SP.Connection := fmMain.Lis;
    SP.ProcedureName := 'sp_load_fact_inc_grant';
    SP.Parameters.Refresh;
    while not Client_Records.Eof do begin
      SP.Parameters.ParamByName('@type_self').Value := 2;
      SP.Parameters.ParamByName('@id_uch').Value := NULL;
      SP.Parameters.ParamByName('@num_vagon').Value := IntToStr(StrToInt(COPY(Trim(Client_Records.FieldByName('GR1').AsString),0, POS('.',Trim(Client_Records.FieldByName('GR1').AsString))-1)));
      SP.Parameters.ParamByName('@num_document').Value := Client_Records.FieldByName('GR2').AsString;
      SP.Parameters.ParamByName('@node_begin').Value := Client_Records.FieldByName('STO_CODE').AsString;
      if Client_Records.FindField('GR5') <> nil then
        if TryStrToDate(COPY(Client_Records.FieldByName('GR5').AsString, 7, 2) + '.' + COPY(Client_Records.FieldByName('GR5').AsString, 5, 2) + '.' + COPY(Client_Records.FieldByName('GR5').AsString, 1, 4),d3) then
          SP.Parameters.ParamByName('@date_from_to').Value := d3;
      SP.Parameters.ParamByName('@node_end').Value := Client_Records.FieldByName('STN_CODE').AsString;
      if Client_Records.FindField('itog_itog') <> nil then
        if TryStrToCurr(Trim(ReplaceStr(VarToSTR(Client_Records.FieldByName('itog_itog').Value),'.',',')), read_cur) then
          SP.Parameters.ParamByName('@itog_itog' ).Value := read_cur;

      if Client_Records.FindField('GR8') <> nil then
        if TryStrToCurr(Trim(ReplaceStr(VarToSTR(Client_Records.FieldByName('GR8').Value),'.',',')), read_cur) then
          SP.Parameters.ParamByName('@itog_itogr' ).Value := read_cur;

      if Client_Records.FindField('GR9') <> nil then
        if TryStrToCurr(Trim(ReplaceStr(VarToSTR(Client_Records.FieldByName('GR9').Value),'.',',')), read_cur) then
          SP.Parameters.ParamByName('@itog_ndsr' ).Value := read_cur;

      if Client_Records.FindField('GR10') <> nil then
        if TryStrToCurr(Trim(ReplaceStr(VarToSTR(Client_Records.FieldByName('GR10').Value),'.',',')), read_cur) then
          SP.Parameters.ParamByName('@itog_itog' ).Value := read_cur;

      if Client_Records.FindField('GR7') <> nil then
        if TryStrToCurr(Trim(ReplaceStr(VarToSTR(Client_Records.FieldByName('GR7').Value),'.',',')), read_cur) then
          SP.Parameters.ParamByName('@fact_weight' ).Value := read_cur;

      if Client_Records.FindField('DTFROM') <> nil then
        if TryStrToDate(COPY(Client_Records.FieldByName('DTFROM').AsString, 7, 2) + '.' + COPY(Client_Records.FieldByName('DTFROM').AsString, 5, 2) + '.' + COPY(Client_Records.FieldByName('DTFROM').AsString, 1, 4),d3) then
          SP.Parameters.ParamByName('@date_begin').Value := d3;

      SP.Parameters.ParamByName('@kargoETSNG').Value := Trim(Client_Records.FieldByName('FR_CODE_ET').AsString);
      SP.Parameters.ParamByName('@file_name_dbf').Value := ExtractFileName(filename);


      SP.ExecProc;
      ShowTextMessage('Осталось загрузить ' + IntToStr(Client_Records.RecordCount - Client_Records.RecNo) + ' вагонов ...', False);
      Client_Records.Next;
    end;
    sp.Free;
    ShowTextMessage();

  except
    SP.Free;
    ShowTextMessage();
    Application.MessageBox(Pchar('Непредвиденная ошибка, обратитесь к разработчикам.'),'Внимание',MB_OK);
  end;
end;
{$ENDREGION 'Загрузить предоставление ЦФТО'}

{$REGION 'Удалить вагон'}
procedure TfmFactInc.dxBarButton_DelDBFClick(Sender: TObject);
var     SP : TADOStoredProc;
         Q : TADOQuery;
 file_name : string;
begin
  Q := TADOQuery.Create(nil);
  Q.Connection := fmMain.Lis;

  Q.SQL.Add(' SELECT ROW_NUMBER() OVER (ORDER BY max(x) desc) AS [id], file_name_dbf as name, max(x) as cod '+
            ' FROM view_fact_inc_temp WITH (NOLOCK)'+
            ' WHERE (users_group_id = ' + IntToStr(usr_pwd.user_group_id) + ') AND file_name_dbf IS NOT NULL' +
            ' GROUP BY file_name_dbf');
  Q.Open;
  fmFilter := TfmFilter.Create(0, Q, 'id', 'cod', 'name');
  fmFilter._SetFileZFTO := True;
  if fmFilter.ShowModal <> mrOk then begin
    Q.Free;
    exit;
  end;

  try
    Screen.Cursor := crHourglass;
    if not Q.Locate('id',fmFilter.GetId,[]) then begin
      Application.MessageBox('Непредвиденная ошибка, удаление невозможно!','Внимание!', MB_OK or MB_ICONERROR);
      Q.Free;
      exit;
    end;
    file_name  := Q.FieldByName('name').AsString;
    Q.Close;
    Q.SQL.Clear;
    Q.SQL.Add(' SELECT fact_inc_id' +
              ' FROM view_fact_inc_temp WITH (NOLOCK) ' +
              ' WHERE (users_group_id = ' + IntToStr(usr_pwd.user_group_id) + ')' +
              '  AND (file_name_dbf = ''' + file_name + ''')');
    Q.Open;
    if Q.RecordCount > 0 then begin
      SP := TADOStoredProc.Create(nil);
      SP.Connection := fmMain.Lis;
      SP.CommandTimeout := 120;
      SP.ProcedureName := 'sp_load_fact_inc';
      while not Q.Eof do begin
        SP.Close;
        SP.Parameters.Refresh;
        SP.Parameters.ParamByName('@type_action').Value := 2;
        SP.Parameters.ParamByName('@fact_inc_id').Value := Q.FieldByName('fact_inc_id').AsInteger;
        try
          SP.ExecProc;
        except
        end;
        Q.next;
        ShowTextMessage('Осталось удалить ' + IntToStr(Q.RecordCount - Q.RecNo) + ' записей...', False);
      end;
      SP.Free;
    end;
    ShowTextMessage;
    RefreshQueryGrid(cxGrid1DBBandedTableView1, 'fact_inc_id', cxGrid1DBBandedTableView1fact_inc_id.DataBinding.Field.AsInteger);
    Screen.Cursor := crDefault;
  finally
    Q.Free;
  end;
end;
{$ENDREGION 'Удалить вагон'}

{$REGION 'Фильтр по всем записям'}
procedure TfmFactInc.dxBarButton_FilterRecords1Click(Sender: TObject);
begin
  cxGrid1DBBandedTableView1.Filtering.ColumnFilteredItemsList := not dxBarButton_FilterRecords1.Down;
end;
{$ENDREGION 'Фильтр по всем записям'}

procedure TfmFactInc.dxBarButton_LoadDBFClick(Sender: TObject);
type
  TFunc = function(AppHand: THandle; usr_pwd: PUser_pwd; type_table_cod, alias_name: string) : variant;
var OpenDialog      : TOpenDialog;
    Client_Records  : TClientDataSet;
    str_error       : string;
    SP              : TADOStoredProc;
    FGlobalAlias    : TFunc;
    handle          : THandle;
    v               : Variant;
    read_cur        : Currency;
    file_name       : string;
    d3              : TDateTime;
    Q               : TADOQuery;
    p_om, p_god     : integer;
    fact_inc_id     : integer;
begin
  OpenDialog           := TOpenDialog.Create(self);
  OpenDialog.Filter    := 'Файлы dbf|*.dbf';
  OpenDialog.DefaultExt:= 'dbf';
  OpenDialog.Options   := [ofHideReadOnly,ofAllowMultiSelect,ofEnableSizing];

  if not OpenDialog.Execute then begin
    OpenDialog.Free;
    exit;
  end;

  file_name := OpenDialog.FileName;
  OpenDialog.Free;

  Q := TADOQuery.Create(nil);
  Q.Connection := fmMain.Lis;
  Q.SQL.Add('SELECT file_name_dbf FROM view_fact_inc_temp WHERE file_name_dbf = ''' + ExtractFileName(file_name) + ''' AND users_group_id = ' + IntToStr(usr_pwd.user_group_id) + '');
  Q.Open;
  if Q.RecordCount > 0 then begin
    Application.MessageBox('Информация из файла с таким именем уже загружена!!!','Внимание',MB_OK);
    Q.Free;
    exit;
  end;
  Q.Free;

  Screen.Cursor := crHourglass;
  Client_Records := TClientDataSet.Create(nil);
  ShowTextMessage('Чтение информации из файла.', False);
  if ParserDBF(file_name, Client_Records, str_error) = False then begin
    Application.MessageBox(Pchar(str_error),'Внимание',MB_OK);
    Client_Records.Free;
    ShowTextMessage();
    Screen.Cursor := crDefault;
    exit;
  end;
  if not checkFileDBF(3, Client_Records) then begin
    Client_Records.Free;
    Screen.Cursor := crDefault;
    exit;
  end;
  SP := TADOStoredProc.Create(nil);
  SP.Connection := fmMain.Lis;
  SP.CommandTimeout := 720;
  SP.ProcedureName := 'sp_load_fact_inc';

  SP.Parameters.Refresh;
  SP.Parameters.ParamByName('@type_action').Value := 4;
  SP.Parameters.ParamByName('@str_xml_load_dbf').Value := DataXMLToSQL(Client_Records);
  try
    ShowTextMessage('Проверка информации.', False);
    SP.ExecProc;
  except
    Client_Records.Free;
    SP.Free;
    ShowTextMessage();
    Screen.Cursor := crDefault;
    exit;
  end;
  Client_Records.First;
  try
    p_om := -9;
    p_god := -9;
    if Client_Records.RecordCount > 0 then begin
      if Client_Records.FieldByName('p_om').Value <> '' then
        p_om := StrToInt(Trim(Client_Records.FieldByName('p_om').Value))
      else
        if Client_Records.FieldByName('o_om').Value <> '' then
          p_om := StrToInt(Trim(Client_Records.FieldByName('o_om').Value));
      if Client_Records.FieldByName('p_god').Value <> '' then
        p_god := StrToInt(Trim(Client_Records.FieldByName('p_god').Value))
      else
        if Client_Records.FieldByName('o_god').Value <> '' then
          p_god := StrToInt(Trim(Client_Records.FieldByName('o_god').Value));
    end;

    fact_inc_id := -9;
    while not Client_Records.Eof do begin
      ShowTextMessage('Осталось загрузить ' + IntToStr(Client_Records.RecordCount - Client_Records.RecNo) + ' вагонов ...', False);
//      SP.Parameters.Refresh;
      SP.Close;
      SP.Parameters.Clear;
      SP.Parameters.Refresh;
      SP.Parameters.ParamByName('@type_action'  ).Value := 0;

      // первая запись без указания fact_inc_id
      // далее мы указываем предыдущий загруженный вагон
      SP.Parameters.ParamByName('@fact_inc_id').Value := iif(fact_inc_id = -9, null, fact_inc_id);

      if Client_Records.FieldByName('o_sto').Value <> '' then
        SP.Parameters.ParamByName('@o_sto').Value := Client_Records.FieldByName('o_sto').Value;
      if Client_Records.FieldByName('p_sto').Value <> '' then
        SP.Parameters.ParamByName('@p_sto').Value := Trim(Client_Records.FieldByName('p_sto').Value);
      if Client_Records.FieldByName('o_stn').Value <> '' then
        SP.Parameters.ParamByName('@o_stn').Value := Trim(Client_Records.FieldByName('o_stn').Value);
      if Client_Records.FieldByName('p_stn').Value <> '' then
        SP.Parameters.ParamByName('@p_stn').Value := Trim(Client_Records.FieldByName('p_stn').Value);
      if Client_Records.FieldByName('o_gruz').Value <> '' then
        SP.Parameters.ParamByName('@o_gruz').Value := Trim(Client_Records.FieldByName('o_gruz').Value);
      if Client_Records.FieldByName('p_gruz').Value <> '' then
        SP.Parameters.ParamByName('@p_gruz').Value := Trim(Client_Records.FieldByName('p_gruz').Value);
      if Client_Records.FieldByName('o_gng').Value <> '' then
        SP.Parameters.ParamByName('@o_gng').Value := Trim(VarToStr(Client_Records.FieldByName('o_gng').Value));
      if Client_Records.FieldByName('o_gng8').Value <> '' then
        SP.Parameters.ParamByName('@o_gng8').Value := Trim(Client_Records.FieldByName('o_gng8').Value);
      if Client_Records.FieldByName('p_gng').Value <> '' then
        SP.Parameters.ParamByName('@p_gng').Value := Trim(Client_Records.FieldByName('p_gng').Value);
      if Client_Records.FieldByName('p_gng8').Value <> '' then
        SP.Parameters.ParamByName('@p_gng8').Value := Trim(Client_Records.FieldByName('p_gng8').Value);
      if Client_Records.FieldByName('o_stro').Value <> '' then
        SP.Parameters.ParamByName('@o_stro').Value := Trim(Client_Records.FieldByName('o_stro').Value);
      if Client_Records.FieldByName('p_stro').Value <> '' then
        SP.Parameters.ParamByName('@p_stro').Value := Trim(Client_Records.FieldByName('p_stro').Value);
      if Client_Records.FieldByName('o_strn').Value <> '' then
        SP.Parameters.ParamByName('@o_strn').Value := Trim(Client_Records.FieldByName('o_strn').Value);
      if Client_Records.FieldByName('p_strn').Value <> '' then
        SP.Parameters.ParamByName('@p_strn').Value := Trim(Client_Records.FieldByName('p_strn').Value);
      if Client_Records.FieldByName('o_fval').Value <> '' then
        SP.Parameters.ParamByName('@o_fval').Value := Trim(Client_Records.FieldByName('o_fval').Value);
      if Client_Records.FieldByName('p_fval').Value <> '' then
        SP.Parameters.ParamByName('@p_fval').Value := Trim(Client_Records.FieldByName('p_fval').Value);
      if Client_Records.FieldByName('o_do').Value <> '' then
        SP.Parameters.ParamByName('@o_do').Value := Trim(Client_Records.FieldByName('o_do').Value);
      if Client_Records.FieldByName('p_do').Value <> '' then
        SP.Parameters.ParamByName('@p_do').Value := Trim(Client_Records.FieldByName('p_do').Value);
      if Client_Records.FieldByName('o_fsd').Value <> '' then
        SP.Parameters.ParamByName('@o_fsd').Value := Trim(Client_Records.FieldByName('o_fsd').Value);
      if Client_Records.FieldByName('p_fsd').Value <> '' then
        SP.Parameters.ParamByName('@p_fsd').Value := Trim(Client_Records.FieldByName('p_fsd').Value);
      if Client_Records.FieldByName('id_uch').Value <> '' then
        SP.Parameters.ParamByName('@id_uch').Value := Trim(Client_Records.FieldByName('id_uch').Value);
      if Client_Records.FieldByName('p_lkr').Value <> '' then
        SP.Parameters.ParamByName('@p_lkr').Value := Trim(Client_Records.FieldByName('p_lkr').Value);
      if Client_Records.FieldByName('p_lmar').Value <> '' then
        SP.Parameters.ParamByName('@p_lmar').Value := Trim(Client_Records.FieldByName('p_lmar').Value);
      if Client_Records.FieldByName('p_ndnum').Value <> '' then
        SP.Parameters.ParamByName('@p_ndnum').Value := Trim(Client_Records.FieldByName('p_ndnum').Value);
      if Client_Records.FieldByName('p_nomtlg').Value <> '' then
        SP.Parameters.ParamByName('@p_nomtlg').Value := Trim(Client_Records.FieldByName('p_nomtlg').Value);
      if Client_Records.FieldByName('p_ns').Value <> '' then
        SP.Parameters.ParamByName('@p_ns').Value := Trim(Client_Records.FieldByName('p_ns').Value);
      if Client_Records.FieldByName('p_nvag').Value <> '' then
        SP.Parameters.ParamByName('@p_nvag').Value := Trim(Client_Records.FieldByName('p_nvag').Value);
      if Client_Records.FieldByName('p_stnm').Value <> '' then
        SP.Parameters.ParamByName('@p_stnm').Value := Trim(Client_Records.FieldByName('p_stnm').Value);
      if Client_Records.FieldByName('p_stom').Value <> '' then
        SP.Parameters.ParamByName('@p_stom').Value := Trim(Client_Records.FieldByName('p_stom').Value);
      if Client_Records.FieldByName('p_vg').Value <> '' then
        SP.Parameters.ParamByName('@p_vg').Value := Trim(Client_Records.FieldByName('p_vg').Value);
      if Client_Records.FieldByName('p_cit').Value <> '' then
        SP.Parameters.ParamByName('@p_cit').Value := Trim(Client_Records.FieldByName('p_cit').Value);
      if Client_Records.FieldByName('p_gnsx').Value <> '' then
        SP.Parameters.ParamByName('@p_gnsx').Value := Trim(Client_Records.FieldByName('p_gnsx').Value);
      if Client_Records.FieldByName('p_grves').Value <> '' then
        SP.Parameters.ParamByName('@p_grves').Value := Trim(Client_Records.FieldByName('p_grves').Value);
      if Client_Records.FieldByName('o_lkr').Value <> '' then
        SP.Parameters.ParamByName('@o_lkr').Value := Trim(Client_Records.FieldByName('o_lkr').Value);
      if Client_Records.FieldByName('o_ndnum').Value <> '' then
        SP.Parameters.ParamByName('@o_ndnum').Value := Trim(Client_Records.FieldByName('o_ndnum').Value);
      if Client_Records.FieldByName('o_nomtlg').Value <> '' then
        SP.Parameters.ParamByName('@o_nomtlg').Value := Trim(Client_Records.FieldByName('o_nomtlg').Value);
      if Client_Records.FieldByName('o_ns').Value <> '' then
        SP.Parameters.ParamByName('@o_ns').Value := Trim(Client_Records.FieldByName('o_ns').Value);
      if Client_Records.FieldByName('o_nvag').Value <> '' then
        SP.Parameters.ParamByName('@o_nvag').Value := Trim(Client_Records.FieldByName('o_nvag').Value);
      if Client_Records.FieldByName('o_stnm').Value <> '' then
        SP.Parameters.ParamByName('@o_stnm').Value := Trim(Client_Records.FieldByName('o_stnm').Value);
      if Client_Records.FieldByName('o_stom').Value <> '' then
        SP.Parameters.ParamByName('@o_stom').Value := Trim(Client_Records.FieldByName('o_stom').Value);
      if Client_Records.FieldByName('o_vg').Value <> '' then
        SP.Parameters.ParamByName('@o_vg').Value := Trim(Client_Records.FieldByName('o_vg').Value);
      if Client_Records.FieldByName('o_cit').Value <> '' then
        SP.Parameters.ParamByName('@o_cit').Value := Trim(Client_Records.FieldByName('o_cit').Value);
      if Client_Records.FieldByName('o_gnsx').Value <> '' then
        SP.Parameters.ParamByName('@o_gnsx').Value := Trim(Client_Records.FieldByName('o_gnsx').Value);
      if Client_Records.FieldByName('o_gppp').Value <> '' then
        SP.Parameters.ParamByName('@o_gppp').Value := Trim(Client_Records.FieldByName('o_gppp').Value);
      if Client_Records.FieldByName('o_grves').Value <> '' then
        SP.Parameters.ParamByName('@o_grves').Value := Trim(Client_Records.FieldByName('o_grves').Value);
      if Client_Records.FieldByName('p_tipzap').Value <> '' then
        SP.Parameters.ParamByName('@p_tipzap').Value := Trim(Client_Records.FieldByName('p_tipzap').Value);
      if Client_Records.FieldByName('PRZ01').Value <> '' then
        SP.Parameters.ParamByName('@PRZ01').Value := Trim(Client_Records.FieldByName('PRZ01').Value);
      if Client_Records.FieldByName('p_fexan').Value <> '' then
        SP.Parameters.ParamByName('@p_fexan').Value := Trim(Client_Records.FieldByName('p_fexan').Value);
      if Client_Records.FieldByName('p_fkat').Value <> '' then
        SP.Parameters.ParamByName('@p_fkat').Value := Trim(Client_Records.FieldByName('p_fkat').Value);
      if Client_Records.FieldByName('p_fsob').Value <> '' then
        SP.Parameters.ParamByName('@p_fsob').Value := Trim(Client_Records.FieldByName('p_fsob').Value);
      if Client_Records.FieldByName('p_fsobkont').Value <> '' then
        SP.Parameters.ParamByName('@p_fsobkont').Value := Trim(Client_Records.FieldByName('p_fsobkont').Value);
      if Client_Records.FieldByName('o_tipzap').Value <> '' then
        SP.Parameters.ParamByName('@o_tipzap').Value := Trim(Client_Records.FieldByName('o_tipzap').Value);
      if Client_Records.FieldByName('o_fexan').Value <> '' then
        SP.Parameters.ParamByName('@o_fexan').Value := Trim(Client_Records.FieldByName('o_fexan').Value);
      if Client_Records.FieldByName('o_fsob').Value <> '' then
        SP.Parameters.ParamByName('@o_fsob').Value := Trim(Client_Records.FieldByName('o_fsob').Value);
      if Client_Records.FieldByName('o_fsobkont').Value <> '' then
        SP.Parameters.ParamByName('@o_fsobkont').Value := Trim(Client_Records.FieldByName('o_fsobkont').Value);
      if Client_Records.FieldByName('o_fgrk').Value <> '' then
        SP.Parameters.ParamByName('@o_fgrk').Value := Trim(Client_Records.FieldByName('o_fgrk').Value);
      if Client_Records.FieldByName('o_fkat').Value <> '' then
        SP.Parameters.ParamByName('@o_fkat').Value := Trim(Client_Records.FieldByName('o_fkat').Value);
      if Client_Records.FieldByName('o_fkv').Value <> '' then
        SP.Parameters.ParamByName('@o_fkv').Value := Trim(Client_Records.FieldByName('o_fkv').Value);
      if Client_Records.FieldByName('o_fm').Value <> '' then
        SP.Parameters.ParamByName('@o_fm').Value := Trim(Client_Records.FieldByName('o_fm').Value);
      if Client_Records.FieldByName('p_rodv').Value <> '' then
        SP.Parameters.ParamByName('@p_rodv').Value := Trim(Client_Records.FieldByName('p_rodv').Value);
      if Client_Records.FieldByName('p_om').Value <> '' then
        SP.Parameters.ParamByName('@p_om').Value := Trim(Client_Records.FieldByName('p_om').Value);
      if Client_Records.FieldByName('p_kolprov').Value <> '' then
          SP.Parameters.ParamByName('@p_kolprov').Value := Trim(Client_Records.FieldByName('p_kolprov').Value);
      if Client_Records.FieldByName('p_snds').Value <> '' then
        SP.Parameters.ParamByName('@p_snds').Value := Trim(Client_Records.FieldByName('p_snds').Value);
      if Client_Records.FieldByName('p_od').Value <> '' then
        SP.Parameters.ParamByName('@p_od').Value := Trim(Client_Records.FieldByName('p_od').Value);
      if Client_Records.FieldByName('pss').Value <> '' then
        SP.Parameters.ParamByName('@pss').Value := Trim(Client_Records.FieldByName('pss').Value);
      if Client_Records.FieldByName('p_god').Value <> '' then
        SP.Parameters.ParamByName('@p_god').Value := Trim(Client_Records.FieldByName('p_god').Value);
      if Client_Records.FieldByName('p_grp').Value <> '' then
        SP.Parameters.ParamByName('@p_grp').Value := Trim(Client_Records.FieldByName('p_grp').Value);
      if Client_Records.FieldByName('p_fgrk').Value <> '' then
        SP.Parameters.ParamByName('@p_fgrk').Value := Trim(Client_Records.FieldByName('p_fgrk').Value);
      if Client_Records.FieldByName('p_fkv').Value <> '' then
        SP.Parameters.ParamByName('@p_fkv').Value := Trim(Client_Records.FieldByName('p_fkv').Value);
      if Client_Records.FieldByName('p_fm').Value <> '' then
        SP.Parameters.ParamByName('@p_fm').Value := Trim(Client_Records.FieldByName('p_fm').Value);
      if Client_Records.FieldByName('o_rodv').Value <> '' then
        SP.Parameters.ParamByName('@o_rodv').Value := Trim(Client_Records.FieldByName('o_rodv').Value);
      if Client_Records.FieldByName('o_om').Value <> '' then
        SP.Parameters.ParamByName('@o_om').Value := Trim(Client_Records.FieldByName('o_om').Value);
      if Client_Records.FieldByName('o_kolprov').Value <> '' then
        SP.Parameters.ParamByName('@o_kolprov').Value := Trim(Client_Records.FieldByName('o_kolprov').Value);
      if Client_Records.FieldByName('o_god').Value <> '' then
        SP.Parameters.ParamByName('@o_god').Value := Trim(Client_Records.FieldByName('o_god').Value);
      if Client_Records.FieldByName('o_grp').Value <> '' then
        SP.Parameters.ParamByName('@o_grp').Value := Trim(Client_Records.FieldByName('o_grp').Value);

      if Client_Records.FindField('delta_exp') <> nil then
        if TryStrToCurr(Trim(ReplaceStr(VarToSTR(Client_Records.FieldByName('delta_exp').Value),'.',',')), read_cur) then
          SP.Parameters.ParamByName('@delta_exp' ).Value := read_cur;
      if Client_Records.FindField('delta_gds') <> nil then
        if TryStrToCurr(Trim(ReplaceStr(VarToSTR(Client_Records.FieldByName('delta_gds').Value),'.',',')), read_cur) then
          SP.Parameters.ParamByName('@delta_gds' ).Value := read_cur;
      if Client_Records.FindField('delta_itog') <> nil then
        if TryStrToCurr(Trim(ReplaceStr(VarToSTR(Client_Records.FieldByName('delta_itog').Value),'.',',')), read_cur) then
          SP.Parameters.ParamByName('@delta_itog' ).Value := read_cur;
      if Client_Records.FindField('delta_nds') <> nil then
        if TryStrToCurr(Trim(ReplaceStr(VarToSTR(Client_Records.FieldByName('delta_nds').Value),'.',',')), read_cur) then
          SP.Parameters.ParamByName('@delta_nds' ).Value := read_cur;
      if Client_Records.FindField('delta_osn') <> nil then
        if TryStrToCurr(Trim(ReplaceStr(VarToSTR(Client_Records.FieldByName('delta_osn').Value),'.',',')), read_cur) then
          SP.Parameters.ParamByName('@delta_osn' ).Value := read_cur;
      if Client_Records.FindField('delta_plmp') <> nil then
        if TryStrToCurr(Trim(ReplaceStr(VarToSTR(Client_Records.FieldByName('delta_plmp').Value),'.',',')), read_cur) then
          SP.Parameters.ParamByName('@delta_plmp' ).Value := read_cur;
      if Client_Records.FindField('itog_exp') <> nil then
        if TryStrToCurr(Trim(ReplaceStr(VarToSTR(Client_Records.FieldByName('itog_exp').Value),'.',',')), read_cur) then
          SP.Parameters.ParamByName('@itog_exp' ).Value := read_cur;
      if Client_Records.FindField('itog_gds') <> nil then
        if TryStrToCurr(Trim(ReplaceStr(VarToSTR(Client_Records.FieldByName('itog_gds').Value),'.',',')), read_cur) then
          SP.Parameters.ParamByName('@itog_gds' ).Value := read_cur;
      if Client_Records.FindField('itog_itog') <> nil then
        if TryStrToCurr(Trim(ReplaceStr(VarToSTR(Client_Records.FieldByName('itog_itog').Value),'.',',')), read_cur) then
          SP.Parameters.ParamByName('@itog_itog' ).Value := read_cur;
      if Client_Records.FindField('itog_nds') <> nil then
        if TryStrToCurr(Trim(ReplaceStr(VarToSTR(Client_Records.FieldByName('itog_nds').Value),'.',',')), read_cur) then
          SP.Parameters.ParamByName('@itog_nds' ).Value := read_cur;
      if Client_Records.FindField('itog_osn') <> nil then
        if TryStrToCurr(Trim(ReplaceStr(VarToSTR(Client_Records.FieldByName('itog_osn').Value),'.',',')), read_cur) then
          SP.Parameters.ParamByName('@itog_osn' ).Value := read_cur;
      if Client_Records.FindField('itog_plmps') <> nil then
        if TryStrToCurr(Trim(ReplaceStr(VarToSTR(Client_Records.FieldByName('itog_plmps').Value),'.',',')), read_cur) then
          SP.Parameters.ParamByName('@itog_plmps' ).Value := read_cur;
      if Client_Records.FindField('nedob_gds') <> nil then
        if TryStrToCurr(Trim(ReplaceStr(VarToSTR(Client_Records.FieldByName('nedob_gds').Value),'.',',')), read_cur) then
          SP.Parameters.ParamByName('@nedob_gds' ).Value := read_cur;
      if Client_Records.FindField('nedob_itog') <> nil then
        if TryStrToCurr(Trim(ReplaceStr(VarToSTR(Client_Records.FieldByName('nedob_itog').Value),'.',',')), read_cur) then
          SP.Parameters.ParamByName('@nedob_itog' ).Value := read_cur;
      if Client_Records.FindField('nedob_nds') <> nil then
        if TryStrToCurr(Trim(ReplaceStr(VarToSTR(Client_Records.FieldByName('nedob_nds').Value),'.',',')), read_cur) then
          SP.Parameters.ParamByName('@nedob_nds' ).Value := read_cur;
      if Client_Records.FindField('nedob_plmp') <> nil then
        if TryStrToCurr(Trim(ReplaceStr(VarToSTR(Client_Records.FieldByName('nedob_plmp').Value),'.',',')), read_cur) then
          SP.Parameters.ParamByName('@nedob_plmp' ).Value := read_cur;
      if Client_Records.FindField('o_codag') <> nil then
        if TryStrToCurr(Trim(ReplaceStr(VarToSTR(Client_Records.FieldByName('o_codag').Value),'.',',')), read_cur) then
          SP.Parameters.ParamByName('@o_codag' ).Value := read_cur;
      if Client_Records.FindField('o_dvdo') <> nil then
        if TryStrToCurr(Trim(ReplaceStr(VarToSTR(Client_Records.FieldByName('o_dvdo').Value),'.',',')), read_cur) then
          SP.Parameters.ParamByName('@o_dvdo' ).Value := read_cur;
      if Client_Records.FindField('o_gds') <> nil then
        if TryStrToCurr(Trim(ReplaceStr(VarToSTR(Client_Records.FieldByName('o_gds').Value),'.',',')), read_cur) then
          SP.Parameters.ParamByName('@o_gds' ).Value := read_cur;
      if Client_Records.FindField('o_gstav') <> nil then
        if TryStrToCurr(Trim(ReplaceStr(VarToSTR(Client_Records.FieldByName('o_gstav').Value),'.',',')), read_cur) then
          SP.Parameters.ParamByName('@o_gstav' ).Value := read_cur;
      if Client_Records.FindField('o_idkor') <> nil then
        if TryStrToCurr(Trim(ReplaceStr(VarToSTR(Client_Records.FieldByName('o_idkor').Value),'.',',')), read_cur) then
          SP.Parameters.ParamByName('@o_idkor' ).Value := read_cur;
      if Client_Records.FindField('o_idnew') <> nil then
        if TryStrToCurr(Trim(ReplaceStr(VarToSTR(Client_Records.FieldByName('o_idnew').Value),'.',',')), read_cur) then
          SP.Parameters.ParamByName('@o_idnew' ).Value := read_cur;
      if Client_Records.FindField('o_idnew2') <> nil then
        if TryStrToCurr(Trim(ReplaceStr(VarToSTR(Client_Records.FieldByName('o_idnew2').Value),'.',',')), read_cur) then
          SP.Parameters.ParamByName('@o_idnew2' ).Value := read_cur;
      if Client_Records.FindField('o_itog') <> nil then
        if TryStrToCurr(Trim(ReplaceStr(VarToSTR(Client_Records.FieldByName('o_itog').Value),'.',',')), read_cur) then
          SP.Parameters.ParamByName('@o_itog' ).Value := read_cur;
      if Client_Records.FindField('o_koffdato') <> nil then
        if TryStrToCurr(Trim(ReplaceStr(VarToSTR(Client_Records.FieldByName('o_koffdato').Value),'.',',')), read_cur) then
          SP.Parameters.ParamByName('@o_koffdato' ).Value := read_cur;
      if Client_Records.FindField('o_nds') <> nil then
        if TryStrToCurr(Trim(ReplaceStr(VarToSTR(Client_Records.FieldByName('o_nds').Value),'.',',')), read_cur) then
          SP.Parameters.ParamByName('@o_nds' ).Value := read_cur;
      if Client_Records.FindField('o_otprgr') <> nil then
        if TryStrToCurr(Trim(ReplaceStr(VarToSTR(Client_Records.FieldByName('o_otprgr').Value),'.',',')), read_cur) then
          SP.Parameters.ParamByName('@o_otprgr' ).Value := read_cur;
      if Client_Records.FindField('o_plmps') <> nil then
        if TryStrToCurr(Trim(ReplaceStr(VarToSTR(Client_Records.FieldByName('o_plmps').Value),'.',',')), read_cur) then
          SP.Parameters.ParamByName('@o_plmps' ).Value := read_cur;
      if Client_Records.FindField('o_podkod') <> nil then
        if TryStrToCurr(Trim(ReplaceStr(VarToSTR(Client_Records.FieldByName('o_podkod').Value),'.',',')), read_cur) then
          SP.Parameters.ParamByName('@o_podkod' ).Value := read_cur;
      if Client_Records.FindField('o_poluchgr') <> nil then
        if TryStrToCurr(Trim(ReplaceStr(VarToSTR(Client_Records.FieldByName('o_poluchgr').Value),'.',',')), read_cur) then
          SP.Parameters.ParamByName('@o_poluchgr' ).Value := read_cur;
      if Client_Records.FindField('o_vohr6itg') <> nil then
        if TryStrToCurr(Trim(ReplaceStr(VarToSTR(Client_Records.FieldByName('o_vohr6itg').Value),'.',',')), read_cur) then
          SP.Parameters.ParamByName('@o_vohr6itg' ).Value := read_cur;
      if Client_Records.FindField('o_vohr6nds') <> nil then
        if TryStrToCurr(Trim(ReplaceStr(VarToSTR(Client_Records.FieldByName('o_vohr6nds').Value),'.',',')), read_cur) then
          SP.Parameters.ParamByName('@o_vohr6nds' ).Value := read_cur;
      if Client_Records.FindField('p_codag') <> nil then
        if TryStrToCurr(Trim(ReplaceStr(VarToSTR(Client_Records.FieldByName('p_codag').Value),'.',',')), read_cur) then
          SP.Parameters.ParamByName('@p_codag' ).Value := read_cur;
      if Client_Records.FindField('p_dvdo') <> nil then
        if TryStrToCurr(Trim(ReplaceStr(VarToSTR(Client_Records.FieldByName('p_dvdo').Value),'.',',')), read_cur) then
          SP.Parameters.ParamByName('@p_dvdo' ).Value := read_cur;
      if Client_Records.FindField('p_gds') <> nil then
        if TryStrToCurr(Trim(ReplaceStr(VarToSTR(Client_Records.FieldByName('p_gds').Value),'.',',')), read_cur) then
          SP.Parameters.ParamByName('@p_gds' ).Value := read_cur;
      if Client_Records.FindField('p_gppp') <> nil then
        if TryStrToCurr(Trim(ReplaceStr(VarToSTR(Client_Records.FieldByName('p_gppp').Value),'.',',')), read_cur) then
          SP.Parameters.ParamByName('@p_gppp' ).Value := read_cur;
      if Client_Records.FindField('p_gstav') <> nil then
        if TryStrToCurr(Trim(ReplaceStr(VarToSTR(Client_Records.FieldByName('p_gstav').Value),'.',',')), read_cur) then
          SP.Parameters.ParamByName('@p_gstav' ).Value := read_cur;
      if Client_Records.FindField('p_idkor') <> nil then
        if TryStrToCurr(Trim(ReplaceStr(VarToSTR(Client_Records.FieldByName('p_idkor').Value),'.',',')), read_cur) then
          SP.Parameters.ParamByName('@p_idkor' ).Value := read_cur;
      if Client_Records.FindField('p_idnew') <> nil then
        if TryStrToCurr(Trim(ReplaceStr(VarToSTR(Client_Records.FieldByName('p_idnew').Value),'.',',')), read_cur) then
          SP.Parameters.ParamByName('@p_idnew' ).Value := read_cur;
      if Client_Records.FindField('p_idnew2') <> nil then
        if TryStrToCurr(Trim(ReplaceStr(VarToSTR(Client_Records.FieldByName('p_idnew2').Value),'.',',')), read_cur) then
          SP.Parameters.ParamByName('@p_idnew2' ).Value := read_cur;
      if Client_Records.FindField('p_itog') <> nil then
        if TryStrToCurr(Trim(ReplaceStr(VarToSTR(Client_Records.FieldByName('p_itog').Value),'.',',')), read_cur) then
          SP.Parameters.ParamByName('@p_itog' ).Value := read_cur;
      if Client_Records.FindField('p_koffdato') <> nil then
        if TryStrToCurr(Trim(ReplaceStr(VarToSTR(Client_Records.FieldByName('p_koffdato').Value),'.',',')), read_cur) then
          SP.Parameters.ParamByName('@p_koffdato' ).Value := read_cur;
      if Client_Records.FindField('p_nds') <> nil then
        if TryStrToCurr(Trim(ReplaceStr(VarToSTR(Client_Records.FieldByName('p_nds').Value),'.',',')), read_cur) then
          SP.Parameters.ParamByName('@p_nds' ).Value := read_cur;
      if Client_Records.FindField('p_otprgr') <> nil then
        if TryStrToCurr(Trim(ReplaceStr(VarToSTR(Client_Records.FieldByName('p_otprgr').Value),'.',',')), read_cur) then
          SP.Parameters.ParamByName('@p_otprgr' ).Value := read_cur;
      if Client_Records.FindField('p_plmps') <> nil then
        if TryStrToCurr(Trim(ReplaceStr(VarToSTR(Client_Records.FieldByName('p_plmps').Value),'.',',')), read_cur) then
          SP.Parameters.ParamByName('@p_plmps' ).Value := read_cur;
      if Client_Records.FindField('p_podkod') <> nil then
        if TryStrToCurr(Trim(ReplaceStr(VarToSTR(Client_Records.FieldByName('p_podkod').Value),'.',',')), read_cur) then
          SP.Parameters.ParamByName('@p_podkod' ).Value := read_cur;
      if Client_Records.FindField('p_poluchgr') <> nil then
        if TryStrToCurr(Trim(ReplaceStr(VarToSTR(Client_Records.FieldByName('p_poluchgr').Value),'.',',')), read_cur) then
          SP.Parameters.ParamByName('@p_poluchgr' ).Value := read_cur;
      if Client_Records.FindField('p_vohr6itg') <> nil then
        if TryStrToCurr(Trim(ReplaceStr(VarToSTR(Client_Records.FieldByName('p_vohr6itg').Value),'.',',')), read_cur) then
          SP.Parameters.ParamByName('@p_vohr6itg' ).Value := read_cur;
      if Client_Records.FindField('p_vohr6nds') <> nil then
        if TryStrToCurr(Trim(ReplaceStr(VarToSTR(Client_Records.FieldByName('p_vohr6nds').Value),'.',',')), read_cur) then
          SP.Parameters.ParamByName('@p_vohr6nds' ).Value := read_cur;
      if Client_Records.FindField('p_vohr7itg') <> nil then
        if TryStrToCurr(Trim(ReplaceStr(VarToSTR(Client_Records.FieldByName('p_vohr7itg').Value),'.',',')), read_cur) then
          SP.Parameters.ParamByName('@p_vohr7itg' ).Value := read_cur;
      if Client_Records.FindField('p_vohr7nds') <> nil then
        if TryStrToCurr(Trim(ReplaceStr(VarToSTR(Client_Records.FieldByName('p_vohr7nds').Value),'.',',')), read_cur) then
          SP.Parameters.ParamByName('@p_vohr7nds' ).Value := read_cur;
      if Client_Records.FindField('pereb_gds') <> nil then
        if TryStrToCurr(Trim(ReplaceStr(VarToSTR(Client_Records.FieldByName('pereb_gds').Value),'.',',')), read_cur) then
          SP.Parameters.ParamByName('@pereb_gds' ).Value := read_cur;
      if Client_Records.FindField('pereb_itog') <> nil then
        if TryStrToCurr(Trim(ReplaceStr(VarToSTR(Client_Records.FieldByName('pereb_itog').Value),'.',',')), read_cur) then
          SP.Parameters.ParamByName('@pereb_itog' ).Value := read_cur;
      if Client_Records.FindField('pereb_nds') <> nil then
        if TryStrToCurr(Trim(ReplaceStr(VarToSTR(Client_Records.FieldByName('pereb_nds').Value),'.',',')), read_cur) then
          SP.Parameters.ParamByName('@pereb_nds' ).Value := read_cur;
      if Client_Records.FindField('pereb_plmp') <> nil then
        if TryStrToCurr(Trim(ReplaceStr(VarToSTR(Client_Records.FieldByName('pereb_plmp').Value),'.',',')), read_cur) then
          SP.Parameters.ParamByName('@pereb_plmp' ).Value := read_cur;
      if Client_Records.FindField('o_kursdr') <> nil then
        if TryStrToCurr(Trim(ReplaceStr(VarToSTR(Client_Records.FieldByName('o_kursdr').Value),'.',',')), read_cur) then
          SP.Parameters.ParamByName('@o_kursdr' ).Value := read_cur;
      if Client_Records.FindField('p_kursdr') <> nil then
        if TryStrToCurr(Trim(ReplaceStr(VarToSTR(Client_Records.FieldByName('p_kursdr').Value),'.',',')), read_cur) then
          SP.Parameters.ParamByName('@p_kursdr' ).Value := read_cur;
      if Client_Records.FindField('itog_osn18') <> nil then
        if TryStrToCurr(Trim(ReplaceStr(VarToSTR(Client_Records.FieldByName('itog_osn18').Value),'.',',')), read_cur) then
          SP.Parameters.ParamByName('@itog_osn18' ).Value := read_cur;
      if Client_Records.FindField('delta_os18') <> nil then
        if TryStrToCurr(Trim(ReplaceStr(VarToSTR(Client_Records.FieldByName('delta_os18').Value),'.',',')), read_cur) then
          SP.Parameters.ParamByName('@delta_os18' ).Value := read_cur;
      if Client_Records.FindField('itog_plmpr') <> nil then
        if TryStrToCurr(Trim(ReplaceStr(VarToSTR(Client_Records.FieldByName('itog_plmpr').Value),'.',',')), read_cur) then
          SP.Parameters.ParamByName('@itog_plmpr' ).Value := read_cur;
      if Client_Records.FindField('itog_gdsr') <> nil then
        if TryStrToCurr(Trim(ReplaceStr(VarToSTR(Client_Records.FieldByName('itog_gdsr').Value),'.',',')), read_cur) then
          SP.Parameters.ParamByName('@itog_gdsr' ).Value := read_cur;
      if Client_Records.FindField('itog_itogr') <> nil then
        if TryStrToCurr(Trim(ReplaceStr(VarToSTR(Client_Records.FieldByName('itog_itogr').Value),'.',',')), read_cur) then
          SP.Parameters.ParamByName('@itog_itogr' ).Value := read_cur;
      if Client_Records.FindField('itog_ndsr') <> nil then
        if TryStrToCurr(Trim(ReplaceStr(VarToSTR(Client_Records.FieldByName('itog_ndsr').Value),'.',',')), read_cur) then
          SP.Parameters.ParamByName('@itog_ndsr' ).Value := read_cur;
      if Client_Records.FindField('delta_plmr') <> nil then
        if TryStrToCurr(Trim(ReplaceStr(VarToSTR(Client_Records.FieldByName('delta_plmr').Value),'.',',')), read_cur) then
          SP.Parameters.ParamByName('@delta_plmr' ).Value := read_cur;
      if Client_Records.FindField('delta_gdsr') <> nil then
        if TryStrToCurr(Trim(ReplaceStr(VarToSTR(Client_Records.FieldByName('delta_gdsr').Value),'.',',')), read_cur) then
          SP.Parameters.ParamByName('@delta_gdsr' ).Value := read_cur;
      if Client_Records.FindField('delta_itgr') <> nil then
        if TryStrToCurr(Trim(ReplaceStr(VarToSTR(Client_Records.FieldByName('delta_itgr').Value),'.',',')), read_cur) then
          SP.Parameters.ParamByName('@delta_itgr' ).Value := read_cur;
      if Client_Records.FindField('delta_ndsr') <> nil then
        if TryStrToCurr(Trim(ReplaceStr(VarToSTR(Client_Records.FieldByName('delta_ndsr').Value),'.',',')), read_cur) then
          SP.Parameters.ParamByName('@delta_ndsr' ).Value := read_cur;
      if Client_Records.FindField('itog_osnr') <> nil then
        if TryStrToCurr(Trim(ReplaceStr(VarToSTR(Client_Records.FieldByName('itog_osnr').Value),'.',',')), read_cur) then
          SP.Parameters.ParamByName('@itog_osnr' ).Value := read_cur;
      if Client_Records.FindField('itog_expr') <> nil then
        if TryStrToCurr(Trim(ReplaceStr(VarToSTR(Client_Records.FieldByName('itog_expr').Value),'.',',')), read_cur) then
          SP.Parameters.ParamByName('@itog_expr' ).Value := read_cur;
      if Client_Records.FindField('delta_osnr') <> nil then
        if TryStrToCurr(Trim(ReplaceStr(VarToSTR(Client_Records.FieldByName('delta_osnr').Value),'.',',')), read_cur) then
          SP.Parameters.ParamByName('@delta_osnr' ).Value := read_cur;
      if Client_Records.FindField('delta_expr') <> nil then
        if TryStrToCurr(Trim(ReplaceStr(VarToSTR(Client_Records.FieldByName('delta_expr').Value),'.',',')), read_cur) then
          SP.Parameters.ParamByName('@delta_expr' ).Value := read_cur;
      if Client_Records.FindField('itog_os18r') <> nil then
        if TryStrToCurr(Trim(ReplaceStr(VarToSTR(Client_Records.FieldByName('itog_os18r').Value),'.',',')), read_cur) then
          SP.Parameters.ParamByName('@itog_os18r' ).Value := read_cur;
      if Client_Records.FindField('delt_os18r') <> nil then
        if TryStrToCurr(Trim(ReplaceStr(VarToSTR(Client_Records.FieldByName('delt_os18r').Value),'.',',')), read_cur) then
          SP.Parameters.ParamByName('@delt_os18r' ).Value := read_cur;
      if Client_Records.FindField('o_vhr6itgr') <> nil then
        if TryStrToCurr(Trim(ReplaceStr(VarToSTR(Client_Records.FieldByName('o_vhr6itgr').Value),'.',',')), read_cur) then
          SP.Parameters.ParamByName('@o_vhr6itgr' ).Value := read_cur;
      if Client_Records.FindField('o_vhr6ndsr') <> nil then
        if TryStrToCurr(Trim(ReplaceStr(VarToSTR(Client_Records.FieldByName('o_vhr6ndsr').Value),'.',',')), read_cur) then
          SP.Parameters.ParamByName('@o_vhr6ndsr' ).Value := read_cur;
      if Client_Records.FindField('p_vhr6itgr') <> nil then
        if TryStrToCurr(Trim(ReplaceStr(VarToSTR(Client_Records.FieldByName('p_vhr6itgr').Value),'.',',')), read_cur) then
          SP.Parameters.ParamByName('@p_vhr6itgr' ).Value := read_cur;
      if Client_Records.FindField('p_vhr6ndsr') <> nil then
        if TryStrToCurr(Trim(ReplaceStr(VarToSTR(Client_Records.FieldByName('p_vhr6ndsr').Value),'.',',')), read_cur) then
          SP.Parameters.ParamByName('@p_vhr6ndsr' ).Value := read_cur;
      if Client_Records.FindField('p_vhr7itgr') <> nil then
        if TryStrToCurr(Trim(ReplaceStr(VarToSTR(Client_Records.FieldByName('p_vhr7itgr').Value),'.',',')), read_cur) then
          SP.Parameters.ParamByName('@p_vhr7itgr' ).Value := read_cur;
      if Client_Records.FindField('p_vhr7ndsr') <> nil then
        if TryStrToCurr(Trim(ReplaceStr(VarToSTR(Client_Records.FieldByName('p_vhr7ndsr').Value),'.',',')), read_cur) then
          SP.Parameters.ParamByName('@p_vhr7ndsr' ).Value := read_cur;
      if Client_Records.FindField('p_td5itg') <> nil then
        if TryStrToCurr(Trim(ReplaceStr(VarToSTR(Client_Records.FieldByName('p_td5itg').Value),'.',',')), read_cur) then
          SP.Parameters.ParamByName('@p_td5itg' ).Value := read_cur;
      if Client_Records.FindField('p_td5nds') <> nil then
        if TryStrToCurr(Trim(ReplaceStr(VarToSTR(Client_Records.FieldByName('p_td5nds').Value),'.',',')), read_cur) then
          SP.Parameters.ParamByName('@p_td5nds' ).Value := read_cur;
      if Client_Records.FindField('p_td20itg') <> nil then
        if TryStrToCurr(Trim(ReplaceStr(VarToSTR(Client_Records.FieldByName('p_td20itg').Value),'.',',')), read_cur) then
          SP.Parameters.ParamByName('@p_td20itg' ).Value := read_cur;
      if Client_Records.FindField('p_td20nds') <> nil then
        if TryStrToCurr(Trim(ReplaceStr(VarToSTR(Client_Records.FieldByName('p_td20nds').Value),'.',',')), read_cur) then
          SP.Parameters.ParamByName('@p_td20nds' ).Value := read_cur;
      if Client_Records.FindField('p_td5itgr') <> nil then
        if TryStrToCurr(Trim(ReplaceStr(VarToSTR(Client_Records.FieldByName('p_td5itgr').Value),'.',',')), read_cur) then
          SP.Parameters.ParamByName('@p_td5itgr' ).Value := read_cur;
      if Client_Records.FindField('p_td5ndsr') <> nil then
        if TryStrToCurr(Trim(ReplaceStr(VarToSTR(Client_Records.FieldByName('p_td5ndsr').Value),'.',',')), read_cur) then
          SP.Parameters.ParamByName('@p_td5ndsr' ).Value := read_cur;
      if Client_Records.FindField('p_td20itgr') <> nil then
        if TryStrToCurr(Trim(ReplaceStr(VarToSTR(Client_Records.FieldByName('p_td20itgr').Value),'.',',')), read_cur) then
          SP.Parameters.ParamByName('@p_td20itgr' ).Value := read_cur;
      if Client_Records.FindField('p_td20ndsr') <> nil then
        if TryStrToCurr(Trim(ReplaceStr(VarToSTR(Client_Records.FieldByName('p_td20ndsr').Value),'.',',')), read_cur) then
          SP.Parameters.ParamByName('@p_td20ndsr' ).Value := read_cur;
      if Client_Records.FindField('p_shtrafr') <> nil then
        if TryStrToCurr(Trim(ReplaceStr(VarToSTR(Client_Records.FieldByName('p_shtrafr').Value),'.',',')), read_cur) then
          SP.Parameters.ParamByName('@p_shtrafr' ).Value := read_cur;
      if Client_Records.FindField('p_par') <> nil then
        if TryStrToCurr(Trim(ReplaceStr(VarToSTR(Client_Records.FieldByName('p_par').Value),'.',',')), read_cur) then
          SP.Parameters.ParamByName('@p_par' ).Value := read_cur;
      if Client_Records.FindField('p_parnds') <> nil then
        if TryStrToCurr(Trim(ReplaceStr(VarToSTR(Client_Records.FieldByName('p_parnds').Value),'.',',')), read_cur) then
          SP.Parameters.ParamByName('@p_parnds' ).Value := read_cur;
      if Client_Records.FindField('P_StrPlat1') <> nil then
        if TryStrToCurr(Trim(ReplaceStr(VarToSTR(Client_Records.FieldByName('P_StrPlat1').Value),'.',',')), read_cur) then
          SP.Parameters.ParamByName('@P_StrPlat1' ).Value := read_cur;
      if Client_Records.FindField('P_StrPlat2') <> nil then
        if TryStrToCurr(Trim(ReplaceStr(VarToSTR(Client_Records.FieldByName('P_StrPlat2').Value),'.',',')), read_cur) then
          SP.Parameters.ParamByName('@P_StrPlat2' ).Value := read_cur;
      if Client_Records.FindField('P_StrPlat3') <> nil then
        if TryStrToCurr(Trim(ReplaceStr(VarToSTR(Client_Records.FieldByName('P_StrPlat3').Value),'.',',')), read_cur) then
          SP.Parameters.ParamByName('@P_StrPlat3' ).Value := read_cur;
      if Client_Records.FindField('P_StrPlat4') <> nil then
        if TryStrToCurr(Trim(ReplaceStr(VarToSTR(Client_Records.FieldByName('P_StrPlat4').Value),'.',',')), read_cur) then
          SP.Parameters.ParamByName('@P_StrPlat4' ).Value := read_cur;
      if Client_Records.FindField('P_StrPlat5') <> nil then
        if TryStrToCurr(Trim(ReplaceStr(VarToSTR(Client_Records.FieldByName('P_StrPlat5').Value),'.',',')), read_cur) then
          SP.Parameters.ParamByName('@P_StrPlat5' ).Value := read_cur;
      if Client_Records.FindField('P_StrPlat6') <> nil then
        if TryStrToCurr(Trim(ReplaceStr(VarToSTR(Client_Records.FieldByName('P_StrPlat6').Value),'.',',')), read_cur) then
          SP.Parameters.ParamByName('@P_StrPlat6' ).Value := read_cur;
      if Client_Records.FindField('P_Str1ITGR') <> nil then
        if TryStrToCurr(Trim(ReplaceStr(VarToSTR(Client_Records.FieldByName('P_Str1ITGR').Value),'.',',')), read_cur) then
          SP.Parameters.ParamByName('@P_Str1ITGR' ).Value := read_cur;
      if Client_Records.FindField('P_Str2ITGR') <> nil then
        if TryStrToCurr(Trim(ReplaceStr(VarToSTR(Client_Records.FieldByName('P_Str2ITGR').Value),'.',',')), read_cur) then
          SP.Parameters.ParamByName('@P_Str2ITGR' ).Value := read_cur;
      if Client_Records.FindField('P_Str3ITGR') <> nil then
        if TryStrToCurr(Trim(ReplaceStr(VarToSTR(Client_Records.FieldByName('P_Str3ITGR').Value),'.',',')), read_cur) then
          SP.Parameters.ParamByName('@P_Str3ITGR' ).Value := read_cur;
      if Client_Records.FindField('P_Str4ITGR') <> nil then
        if TryStrToCurr(Trim(ReplaceStr(VarToSTR(Client_Records.FieldByName('P_Str4ITGR').Value),'.',',')), read_cur) then
          SP.Parameters.ParamByName('@P_Str4ITGR' ).Value := read_cur;
      if Client_Records.FindField('P_Str5ITGR') <> nil then
        if TryStrToCurr(Trim(ReplaceStr(VarToSTR(Client_Records.FieldByName('P_Str5ITGR').Value),'.',',')), read_cur) then
          SP.Parameters.ParamByName('@P_Str5ITGR' ).Value := read_cur;
      if Client_Records.FindField('P_Str6ITGR') <> nil then
        if TryStrToCurr(Trim(ReplaceStr(VarToSTR(Client_Records.FieldByName('P_Str6ITGR').Value),'.',',')), read_cur) then
          SP.Parameters.ParamByName('@P_Str6ITGR' ).Value := read_cur;
      if Client_Records.FindField('P_Str1ITG') <> nil then
        if TryStrToCurr(Trim(ReplaceStr(VarToSTR(Client_Records.FieldByName('P_Str1ITG').Value),'.',',')), read_cur) then
          SP.Parameters.ParamByName('@P_Str1ITG' ).Value := read_cur;
      if Client_Records.FindField('P_Str2ITG') <> nil then
        if TryStrToCurr(Trim(ReplaceStr(VarToSTR(Client_Records.FieldByName('P_Str2ITG').Value),'.',',')), read_cur) then
          SP.Parameters.ParamByName('@P_Str2ITG' ).Value := read_cur;
      if Client_Records.FindField('P_Str3ITG') <> nil then
        if TryStrToCurr(Trim(ReplaceStr(VarToSTR(Client_Records.FieldByName('P_Str3ITG').Value),'.',',')), read_cur) then
          SP.Parameters.ParamByName('@P_Str3ITG' ).Value := read_cur;
      if Client_Records.FindField('P_Str4ITG') <> nil then
        if TryStrToCurr(Trim(ReplaceStr(VarToSTR(Client_Records.FieldByName('P_Str4ITG').Value),'.',',')), read_cur) then
          SP.Parameters.ParamByName('@P_Str4ITG' ).Value := read_cur;
      if Client_Records.FindField('P_Str5ITG') <> nil then
        if TryStrToCurr(Trim(ReplaceStr(VarToSTR(Client_Records.FieldByName('P_Str5ITG').Value),'.',',')), read_cur) then
          SP.Parameters.ParamByName('@P_Str5ITG' ).Value := read_cur;
      if Client_Records.FindField('P_Str6ITG') <> nil then
        if TryStrToCurr(Trim(ReplaceStr(VarToSTR(Client_Records.FieldByName('P_Str6ITG').Value),'.',',')), read_cur) then
          SP.Parameters.ParamByName('@P_Str6ITG' ).Value := read_cur;
      if Client_Records.FindField('p_td1itgr') <> nil then
        if TryStrToCurr(Trim(ReplaceStr(VarToSTR(Client_Records.FieldByName('p_td1itgr').Value),'.',',')), read_cur) then
          SP.Parameters.ParamByName('@p_td1itgr' ).Value := read_cur;
      if Client_Records.FindField('p_td1ndsr') <> nil then
        if TryStrToCurr(Trim(ReplaceStr(VarToSTR(Client_Records.FieldByName('p_td1ndsr').Value),'.',',')), read_cur) then
          SP.Parameters.ParamByName('@p_td1ndsr' ).Value := read_cur;
      if Client_Records.FindField('p_td2itgr') <> nil then
        if TryStrToCurr(Trim(ReplaceStr(VarToSTR(Client_Records.FieldByName('p_td2itgr').Value),'.',',')), read_cur) then
          SP.Parameters.ParamByName('@p_td2itgr' ).Value := read_cur;
      if Client_Records.FindField('p_td2ndsr') <> nil then
        if TryStrToCurr(Trim(ReplaceStr(VarToSTR(Client_Records.FieldByName('p_td2ndsr').Value),'.',',')), read_cur) then
          SP.Parameters.ParamByName('@p_td2ndsr' ).Value := read_cur;
      if Client_Records.FindField('O_KONTRAG') <> nil then
        if TryStrToCurr(Trim(ReplaceStr(VarToSTR(Client_Records.FieldByName('O_KONTRAG').Value),'.',',')), read_cur) then
          SP.Parameters.ParamByName('@O_KONTRAG' ).Value := read_cur;
      if Client_Records.FindField('P_KONTRAG') <> nil then
        if TryStrToCurr(Trim(ReplaceStr(VarToSTR(Client_Records.FieldByName('P_KONTRAG').Value),'.',',')), read_cur) then
          SP.Parameters.ParamByName('@P_KONTRAG' ).Value := read_cur;
      if Client_Records.FindField('p_yakitgr') <> nil then
        if TryStrToCurr(Trim(ReplaceStr(VarToSTR(Client_Records.FieldByName('p_yakitgr').Value),'.',',')), read_cur) then
          SP.Parameters.ParamByName('@p_yakitgr' ).Value := read_cur;
      if Client_Records.FindField('o_yak') <> nil then
        if TryStrToCurr(Trim(ReplaceStr(VarToSTR(Client_Records.FieldByName('o_yak').Value),'.',',')), read_cur) then
          SP.Parameters.ParamByName('@o_yak' ).Value := read_cur;
      if Client_Records.FindField('p_kursfr') <> nil then
        if TryStrToCurr(Trim(ReplaceStr(VarToSTR(Client_Records.FieldByName('p_kursfr').Value),'.',',')), read_cur) then
          SP.Parameters.ParamByName('@p_kursfr' ).Value := read_cur;

      if Client_Records.FindField('o_gk85') <> nil then
        SP.Parameters.ParamByName('@o_gk85').Value := Client_Records.FieldByName('o_gk85').Value;
      if Client_Records.FindField('o_gkr') <> nil then
        SP.Parameters.ParamByName('@o_gkr').Value := Client_Records.FieldByName('o_gkr').Value;
      if Client_Records.FindField('o_gpmar') <> nil then
        SP.Parameters.ParamByName('@o_gpmar').Value := Client_Records.FieldByName('o_gpmar').Value;
      if Client_Records.FindField('p_gpmar') <> nil then
        SP.Parameters.ParamByName('@p_gpmar').Value := Client_Records.FieldByName('p_gpmar').Value;
      if Client_Records.FindField('p_gk85') <> nil then
        SP.Parameters.ParamByName('@p_gk85').Value := Client_Records.FieldByName('p_gk85').Value;
      if Client_Records.FindField('p_gkr') <> nil then
        SP.Parameters.ParamByName('@p_gkr').Value := Client_Records.FieldByName('p_gkr').Value;
      if Client_Records.FindField('o_ndser') <> nil then
        SP.Parameters.ParamByName('@o_ndser').Value := Client_Records.FieldByName('o_ndser').Value;
      if Client_Records.FindField('p_ndser') <> nil then
        SP.Parameters.ParamByName('@p_ndser').Value := Client_Records.FieldByName('p_ndser').Value;
      if Client_Records.FindField('p_ktb2') <> nil then
        SP.Parameters.ParamByName('@p_ktb2').Value := Client_Records.FieldByName('p_ktb2').Value;
      if Client_Records.FindField('o_nkont') <> nil then
        SP.Parameters.ParamByName('@o_nkont').Value := Client_Records.FieldByName('o_nkont').Value;
      if Client_Records.FindField('p_nkont') <> nil then
        SP.Parameters.ParamByName('@p_nkont').Value := Client_Records.FieldByName('p_nkont').Value;
      if Client_Records.FindField('o_sto_name') <> nil then
        SP.Parameters.ParamByName('@o_sto_name').Value := Client_Records.FieldByName('o_sto_name').Value;
      if Client_Records.FindField('p_sto_name') <> nil then
        SP.Parameters.ParamByName('@p_sto_name').Value := Client_Records.FieldByName('p_sto_name').Value;
      if Client_Records.FindField('o_stn_name') <> nil then
        SP.Parameters.ParamByName('@o_stn_name').Value := Client_Records.FieldByName('o_stn_name').Value;
      if Client_Records.FindField('p_stn_name') <> nil then
        SP.Parameters.ParamByName('@p_stn_name').Value := Client_Records.FieldByName('p_stn_name').Value;
      if Client_Records.FindField('o_fval_name') <> nil then
        SP.Parameters.ParamByName('@o_fval_name').Value := Client_Records.FieldByName('o_fval_name').Value;
      if Client_Records.FindField('p_fval_name') <> nil then
        SP.Parameters.ParamByName('@p_fval_name').Value := Client_Records.FieldByName('p_fval_name').Value;
      if Client_Records.FindField('o_gruz_name') <> nil then
        SP.Parameters.ParamByName('@o_gruz_name').Value := Client_Records.FieldByName('o_gruz_name').Value;
      if Client_Records.FindField('p_gruz_name') <> nil then
        SP.Parameters.ParamByName('@p_gruz_name').Value := Client_Records.FieldByName('p_gruz_name').Value;
      if Client_Records.FindField('o_gng_name') <> nil then
        SP.Parameters.ParamByName('@o_gng_name').Value := Client_Records.FieldByName('o_gng_name').Value;
      if Client_Records.FindField('p_gng_name') <> nil then
        SP.Parameters.ParamByName('@p_gng_name').Value := Client_Records.FieldByName('p_gng_name').Value;
      if Client_Records.FindField('o_fsob_name') <> nil then
        SP.Parameters.ParamByName('@o_fsob_name').Value := Client_Records.FieldByName('o_fsob_name').Value;
      if Client_Records.FindField('p_fsob_name') <> nil then
        SP.Parameters.ParamByName('@p_fsob_name').Value := Client_Records.FieldByName('p_fsob_name').Value;
      if Client_Records.FindField('o_stro_name') <> nil then
        SP.Parameters.ParamByName('@o_stro_name').Value := Client_Records.FieldByName('o_stro_name').Value;
      if Client_Records.FindField('p_stro_name') <> nil then
        SP.Parameters.ParamByName('@p_stro_name').Value := Client_Records.FieldByName('p_stro_name').Value;
      if Client_Records.FindField('o_strn_name') <> nil then
        SP.Parameters.ParamByName('@o_strn_name').Value := Client_Records.FieldByName('o_strn_name').Value;
      if Client_Records.FindField('p_strn_name') <> nil then
        SP.Parameters.ParamByName('@p_strn_name').Value := Client_Records.FieldByName('p_strn_name').Value;
      if Client_Records.FindField('o_do_name') <> nil then
        SP.Parameters.ParamByName('@o_do_name').Value := Client_Records.FieldByName('o_do_name').Value;
      if Client_Records.FindField('p_do_name') <> nil then
        SP.Parameters.ParamByName('@p_do_name').Value := Client_Records.FieldByName('p_do_name').Value;
      if Client_Records.FindField('o_fsd_name') <> nil then
        SP.Parameters.ParamByName('@o_fsd_name').Value := Client_Records.FieldByName('o_fsd_name').Value;
      if Client_Records.FindField('p_fsd_name') <> nil then
        SP.Parameters.ParamByName('@p_fsd_name').Value := Client_Records.FieldByName('p_fsd_name').Value;
      if Client_Records.FindField('o_fexan_name') <> nil then
        SP.Parameters.ParamByName('@o_fexan_name').Value := Client_Records.FieldByName('o_fexan_name').Value;
      if Client_Records.FindField('p_fexan_name') <> nil then
        SP.Parameters.ParamByName('@p_fexan_name').Value := Client_Records.FieldByName('p_fexan_name').Value;
      if Client_Records.FindField('o_fkat_name') <> nil then
        SP.Parameters.ParamByName('@o_fkat_name').Value := Client_Records.FieldByName('o_fkat_name').Value;
      if Client_Records.FindField('p_fkat_name') <> nil then
        SP.Parameters.ParamByName('@p_fkat_name').Value := Client_Records.FieldByName('p_fkat_name').Value;
      if Client_Records.FindField('FIO_free_fact') <> nil then
        SP.Parameters.ParamByName('@FIO_free_fact').Value := Client_Records.FieldByName('FIO_free_fact').Value;

      if Client_Records.FindField('p_DateOtVz') <> nil then
        if TryStrToDate(COPY(Client_Records.FieldByName('p_DateOtVz').AsString, 7, 2) + '.' + COPY(Client_Records.FieldByName('p_DateOtVz').AsString, 5, 2) + '.' + COPY(Client_Records.FieldByName('p_DateOtVz').AsString, 1, 4),d3) then
          SP.Parameters.ParamByName('@p_DateOtVz'   ).Value := d3;
      if Client_Records.FindField('p_dataot') <> nil then
        if TryStrToDate(COPY(Client_Records.FieldByName('p_dataot').AsString, 7, 2) + '.' + COPY(Client_Records.FieldByName('p_dataot').AsString, 5, 2) + '.' + COPY(Client_Records.FieldByName('p_dataot').AsString, 1, 4),d3) then
          SP.Parameters.ParamByName('@p_dataot'   ).Value := d3;
      if Client_Records.FindField('p_datpr') <> nil then
        if TryStrToDate(COPY(Client_Records.FieldByName('p_datpr').AsString, 7, 2) + '.' + COPY(Client_Records.FieldByName('p_datpr').AsString, 5, 2) + '.' + COPY(Client_Records.FieldByName('p_datpr').AsString, 1, 4),d3) then
          SP.Parameters.ParamByName('@p_datpr'   ).Value := d3;
      if Client_Records.FindField('p_datv') <> nil then
        if TryStrToDate(COPY(Client_Records.FieldByName('p_datv').AsString, 7, 2) + '.' + COPY(Client_Records.FieldByName('p_datv').AsString, 5, 2) + '.' + COPY(Client_Records.FieldByName('p_datv').AsString, 1, 4),d3) then
          SP.Parameters.ParamByName('@p_datv'   ).Value := d3;
      if Client_Records.FindField('o_dataot') <> nil then
        if TryStrToDate(COPY(Client_Records.FieldByName('o_dataot').AsString, 7, 2) + '.' + COPY(Client_Records.FieldByName('o_dataot').AsString, 5, 2) + '.' + COPY(Client_Records.FieldByName('o_dataot').AsString, 1, 4),d3) then
          SP.Parameters.ParamByName('@o_dataot'   ).Value := d3;
      if Client_Records.FindField('o_DateOtVz') <> nil then
        if TryStrToDate(COPY(Client_Records.FieldByName('o_DateOtVz').AsString, 7, 2) + '.' + COPY(Client_Records.FieldByName('o_DateOtVz').AsString, 5, 2) + '.' + COPY(Client_Records.FieldByName('o_DateOtVz').AsString, 1, 4),d3) then
          SP.Parameters.ParamByName('@o_DateOtVz'   ).Value := d3;

      SP.Parameters.ParamByName('@file_name_dbf'    ).Value := ExtractFileName(file_name);
      SP.ExecProc;

      fact_inc_id := SP.Parameters.ParamByName('@fact_inc_id').Value;

      Client_Records.Next;
    end;
    if p_om <> -9 then begin
      ShowTextMessage('Пересчет сумм удержанных за там. деклар., охрану и штрафы', False);
      SP.Parameters.Refresh;
      SP.Parameters.ParamByName('@type_action').Value := 1;
      SP.Parameters.ParamByName('@p_god').Value := p_god;
      SP.Parameters.ParamByName('@p_om').Value := p_om;
      SP.ExecProc;
    end;
  except
    Application.MessageBox(Pchar('Непредвиденная ошибка, обратитесь к разработчикам.'),'Внимание',MB_OK);
  end;
  ShowTextMessage();
  Client_Records.Free;
  Screen.Cursor := crDefault;
  RefreshQueryGrid(cxGrid1DBBandedTableView1, 'fact_inc_id', cxGrid1DBBandedTableView1fact_inc_id.DataBinding.Field.AsInteger);
end;

{$REGION 'Отчёт по сч-ф в разрезе клиентов'}
procedure TfmFactInc.dxBarButton_ReportClientClick(Sender: TObject);
var    exApp,exWkb, exWks : variant;
                 line_cnt : integer;
     date_begin, date_end : TDateTime;
                       Q  : TADOQuery;
            zfto_score_id : integer;
              count_group : integer;
              contract_id : integer;
begin
  date_begin := IncMonth(Date, -1);
  date_end   := DATE;
  fmPeriod := TfmPeriod.Create(Application, date_begin, date_end, 2);
  if fmPeriod.ShowModal=mrOK then begin
    date_begin := fmPeriod._GetMonthBegin;
    date_end   := fmPeriod._GetMonthEnd;
  end else exit;
  Screen.Cursor := crHourglass;
  Q := TADOQuery.Create(nil);
  Q.Connection := fmMain.Lis;

  Q.SQL.Add('SELECT c.firm_customer_name, c.contract_cod, c.contract_id  FROM view_contract_rights c ' +
            ' INNER JOIN (SELECT contract_id FROM view_zfto_score_rights GROUP BY contract_id) w ON c.contract_id = w.contract_id');
  Q.Open;
  fmFilter := TfmFilter.Create(0, Q, 'contract_id', 'contract_cod', 'firm_customer_name');
  fmFilter._SetContract4FactIncChoose := True;
  if fmFilter.ShowModal <> mrOk then begin
    Q.Free;
    Screen.Cursor := crDefault;
    exit;
  end;
  contract_id := fmFilter.GetId;
  Q.Close;
  Q.SQL.Clear;
  Q.SQL.Add('SELECT zs.zfto_score_id, itog_ndsr = CASE WHEN ISNULL(zst.serv_code, ''-8'') = ''048'' THEN NULL ELSE SUM(zsf.itog_ndsr) END, ' +
                  ' itogr = CASE WHEN ISNULL(zst.serv_code, ''-8'') = ''048'' THEN SUM(ISNULL(zsf.itog_TD, 0)) ELSE SUM(ISNULL(zsf.itogr,0)-ISNULL(zsf.itog_TD, 0)) END, ' +
                  ' zsf.firm_customer_name, ISNULL(zs.fact_num_c, zs.fact_num) as fact_num, CASE WHEN zs.fact_num_c is NULL THEN zs.fact_date ELSE za.date_act END as fact_date, g.comment, ss.sum_rub FROM ZFTO_SCORE zs ' +
            ' INNER JOIN ZFTO_SCORE_ACT za ON za.zfto_score_act_id = zs.zfto_score_act_id ' +
            ' INNER JOIN GLOBAL_ID g ON zs.zfto_score_id = g.global_id ' +
            ' INNER JOIN (SELECT zfto_score_id, SUM(sum_rub) AS sum_rub, SUM(sum_usd) AS sum_usd, waers FROM zfto_score_table GROUP BY zfto_score_id, waers) ss ON zs.zfto_score_id = ss.zfto_score_id ' +
            ' INNER JOIN (SELECT serv_code = CASE WHEN ISNULL(serv_code, ''-8'') = ''048'' THEN ''048'' ELSE ''-8'' END, zfto_score_id ' +
                          ' FROM zfto_score_table GROUP BY zfto_score_id, CASE WHEN ISNULL(serv_code, ''-8'') = ''048'' THEN ''048'' ELSE ''-8'' END) zst ON zs.zfto_score_id = zst.zfto_score_id ' +
            ' LEFT JOIN view_zfto_score_fact_inc zsf ON zs.zfto_score_id = zsf.zfto_score_id ' +
            ' WHERE (zs.date_load >= :date_begin AND zs.date_load <= :date_end)  AND za.set_grant = 0 AND za.contract_id = '  + IntToStr(contract_id) +
            ' GROUP BY zsf.contract_id, zsf.firm_customer_name, zs.fact_num_c, zs.fact_num, zs.fact_date, za.date_act, g.comment, zs.zfto_score_id, ss.sum_rub, zst.serv_code' +
            ' ORDER BY zs.fact_num, zs.zfto_score_id, zsf.firm_customer_name');
  Q.Parameters.ParamByName('date_begin' ).Value := date_begin;
  Q.Parameters.ParamByName('date_end'   ).Value := date_end;
  Q.Open;

  try

    ShowTextMessage('Формирование отчёта...', False);

    exApp := CreateOleObject('Excel.Application');
    exWkb := exApp.Workbooks.Add(GetDocBlob(fmMain.Lis, 193));
    exWkb := exApp.ActiveWorkbook;
    exWks := exWkb.WorkSheets[1];

    exWks.Range['C3'].Value := 'за период с ' + DateToStr(date_begin) + 'г. по ' + DateToStr(date_end) + 'г.';

    line_cnt := 6;
    zfto_score_id := -9;
    count_group := 0;
    while not Q.EOF do begin
      ShowTextMessage('Осталось '+IntToStr(Q.RecordCount - Q.RecNo), False);
      exWks.Range['B' + IntToStr(line_cnt+1) + ':G' + IntToStr(line_cnt+1)].Select;
      exWks.Range['B' + IntToStr(line_cnt+1) + ':G' + IntToStr(line_cnt+1)].Insert(-4121);
      if zfto_score_id = Q.FieldByName('zfto_score_id').AsInteger then begin
        exWks.Range['B'+IntToStr(line_cnt)].Value := Q.FieldByName('firm_customer_name').Value;
        exWks.Range['E'+IntToStr(line_cnt)].Value := Q.FieldByName('itog_ndsr').Value;
        exWks.Range['F'+IntToStr(line_cnt)].Value := Q.FieldByName('itogr').Value;
        exWks.Range[exWks.Cells[line_cnt,2],exWks.Cells[line_cnt, 7]].Interior.ColorIndex := 15;
        count_group := count_group + 1;
      end else begin
        if count_group > 0 then begin
          exWks.Rows[IntToStr(line_cnt - count_group) + ':' + IntToStr(line_cnt-1)].Group;
          exWks.Range['E'+IntToStr(line_cnt - count_group -1)].FormulaR1C1 := '=SUM(R[1]C:R[' + IntToStr(count_group) + ']C)';
          exWks.Range['F'+IntToStr(line_cnt - count_group -1)].FormulaR1C1 := '=SUM(R[1]C:R[' + IntToStr(count_group) + ']C)';
          count_group := 0;
        end;
        exWks.Range['B'+IntToStr(line_cnt)].Value := Q.FieldByName('fact_num').Value;
        exWks.Range['C'+IntToStr(line_cnt)].Value := Q.FieldByName('fact_date').Value;
        exWks.Range['D'+IntToStr(line_cnt)].Value := Q.FieldByName('comment').Value;
        exWks.Range['G'+IntToStr(line_cnt)].Value := Q.FieldByName('sum_rub').Value;
        exWks.Range[exWks.Cells[line_cnt, 2],exWks.Cells[line_cnt, 2]].Font.Bold := 1;
        exWks.Range[exWks.Cells[line_cnt, 5],exWks.Cells[line_cnt, 7]].Font.Bold := 1;
        if not Q.FieldByName('firm_customer_name').IsNull then begin
          line_cnt := line_cnt + 1;
          count_group := count_group + 1;
          exWks.Range['B' + IntToStr(line_cnt+1) + ':G' + IntToStr(line_cnt+1)].Select;
          exWks.Range['B' + IntToStr(line_cnt+1) + ':G' + IntToStr(line_cnt+1)].Insert(-4121);
          exWks.Range['B'+IntToStr(line_cnt)].Value := Q.FieldByName('firm_customer_name').Value;
          exWks.Range['E'+IntToStr(line_cnt)].Value := Q.FieldByName('itog_ndsr').Value;
          exWks.Range['F'+IntToStr(line_cnt)].Value := Q.FieldByName('itogr').Value;
          exWks.Range[exWks.Cells[line_cnt,2],exWks.Cells[line_cnt, 7]].Interior.ColorIndex := 15;
        end;
      end;
      zfto_score_id := Q.FieldByName('zfto_score_id').AsInteger;
      line_cnt := line_cnt + 1;
      Q.Next;
    end;
    if count_group > 0 then begin
      exWks.Rows[IntToStr(line_cnt - count_group) + ':' + IntToStr(line_cnt-1)].Group;
      exWks.Range['E'+IntToStr(line_cnt - count_group -1)].FormulaR1C1 := '=SUM(R[1]C:R[' + IntToStr(count_group) + ']C)';
      exWks.Range['F'+IntToStr(line_cnt - count_group -1)].FormulaR1C1 := '=SUM(R[1]C:R[' + IntToStr(count_group) + ']C)';
    end;

    exWks.Range['B' + IntToStr(line_cnt+1) + ':G' + IntToStr(line_cnt+1)].Delete(-4162);
    exWks.Range['B4'].Select;
    line_cnt := exWks.UsedRange.Rows.Item[exWks.UsedRange.Rows.Count].Row;
    exWks.Range['B' + IntToStr(line_cnt) + ':G' + IntToStr(line_cnt)].Delete(-4162);
    exWks.PageSetup.PrintArea := exWks.Range[exWks.Cells[1,1], exWks.Cells[line_cnt+3, 6]].Address;
    exApp.Visible := True;
  finally
    Q.Free;
    exWks := Null; exWkb := Null; exApp := Null;
    VarClear(exWks); VarClear(exWkb); VarClear(exApp);

    ShowTextMessage();
    Screen.Cursor := crDefault;
  end;
end;
{$ENDREGION 'Отчёт по сч-ф в разрезе клиентов'}

procedure TfmFactInc.dxBarButton_SnapClick(Sender: TObject);
var      SP  : TADOStoredProc;
          i  : integer;
          s  : string;
      Query  : TADOQuery;
contract_id  : integer;
begin
  contract_id := -9;
  case TdxBarButton(sender).Tag of
    0 : s := 'Привязать факт к счет-фактуре?';
    1 : s := 'Отвязать факт от счет-фактуры?';
  end;

  if Application.MessageBox(PChar(s), 'Внимание!', MB_YESNO or MB_ICONWARNING) = IDNO then
    exit;

  if TdxBarButton(sender).Tag = 0 then begin
    Query := TADOQuery.Create(nil);
    Query.Connection := fmMain.Lis;
    Query.SQL.Text := 'SELECT contract_id, contract_cod, firm_customer_name_short FROM view_contract_rights ' +
    'WHERE type_contract = 1 AND date_end > DATEADD(year, -1, GETDATE()) AND UPPER(firm_customer_name_short) like UPPER(''%' + Fexpeditor + '%'') ORDER BY 1 ';
    Query.Open;

    fmFilter := TfmFilter.Create(0, Query, 'contract_id', 'contract_cod', 'firm_customer_name_short');
    if fmFilter.ShowModal = mrOk then begin
      contract_id := StrToInt(fmFilter._GetStrId);
      Query.Free;
    end else begin
      Query.Free;
      exit;
    end
  end;

  try
    Screen.Cursor := crHourglass;
    SP := TADOStoredProc.Create(nil);
    SP.Connection := fmMain.Lis;
    //SP.ProcedureName := '__sp_load_link_dbf_malkin_test_18042018';
    SP.ProcedureName := 'sp_load_link_dbf';
    SP.Parameters.Refresh;

    for i := 0 to cxGrid1DBBandedTableView1.Controller.SelectedRowCount - 1 do begin
      Sp.Close;
      SP.Parameters.ParamByName('@type_action').Value := TdxBarButton(sender).Tag;
      SP.Parameters.ParamByName('@fact_inc_id').Value := cxGrid1DBBandedTableView1.Controller.SelectedRows[i].Values[cxGrid1DBBandedTableView1fact_inc_id.Index];
      SP.Parameters.ParamByName('@contract_id').Value := iif(contract_id = -9, Null, contract_id);
      SP.ExecProc;
      ShowTextMessage('Осталось ' + IntToStr(cxGrid1DBBandedTableView1.Controller.SelectedRowCount - i) + ' записей...',  False);
    end;
    ShowTextMessage('Обновление информации...',  False);
    RefreshQueryGrid(cxGrid1DBBandedTableView1, 'fact_inc_id', cxGrid1DBBandedTableView1fact_inc_id.DataBinding.Field.AsInteger);
  finally
    ShowTextMessage;
    SP.Free;
    Screen.Cursor := crDefault;
  end;

end;

procedure TfmFactInc.GetData_DBF(sql_string : string);
var d : TDateTime;
begin
  Screen.Cursor := -11;
  d := Now;

  // Если в качестве SQL пришла пустая строка, то заменяем ее на пустой RS
  if sql_string = '' then
    sql_string := 'SELECT * FROM view_fact_inc_temp WHERE 1=0';

  Query_FactIncDBF.Close;
  Query_FactIncDBF.SQL.Clear;
  Query_FactIncDBF.SQL.Add(sql_string);
  Query_FactIncDBF.Open;
  DS_FactInc.DataSet := Query_FactIncDBF;

  Screen.Cursor := 0;
  fmMain.dxStatusBar1.Panels[3].Text := IntToStr(SecondsBetween(now, d)) + ' сек.';
end;

procedure TfmFactInc.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  RestoreGroupedColumns(cxGrid1DBBandedTableView1);
  RestoreGroupedColumns(cxGrid1DBBandedTableView2);
  RestoreGroupedColumns(cxGrid2DBBandedTableView1);

  StoreRegistryGrid(rgSave,'\Software\Lis1\FactInc_Grids', cxGrid1DBBandedTableView1);
  StoreRegistryGrid(rgSave,'\Software\Lis1\FactInc_Grids', cxGrid1DBBandedTableView2);
  StoreRegistryGrid(rgSave,'\Software\Lis1\FactInc_Grids', cxGrid2DBBandedTableView1);

  Action := caFree;
end;

procedure TfmFactInc.N7Click(Sender: TObject);
begin
  SetdxDBGridColumns(FcxGridView);
end;

procedure TfmFactInc.PopupMenu1Popup(Sender: TObject);
begin
  Screen.Cursor := crHourglass;
  N15.Enabled := DS_FactInc.DataSet.FieldByName('free_fact').AsBoolean;

  Screen.Cursor := crDefault;
end;

procedure TfmFactInc.SetTypeSelf(type_self: integer);
begin
  Ftype_self := type_self;
end;

procedure TfmFactInc.SpeedButton4Click(Sender: TObject);
begin
  ModalResult := mrOk;
end;

procedure TfmFactInc.ToolButton10Click(Sender: TObject);
begin
  dxBarSubItem1.Enabled := True;
end;

procedure TfmFactInc.N11Click(Sender: TObject);
begin
  PrintcxGrid(FcxGridView);
end;

procedure TfmFactInc.Excel1Click(Sender: TObject);
begin
  if SetPretension(GetStrId(cxGrid1DBBandedTableView1fact_inc_id, ','), TdxBarButton(Sender).Tag, nil, fmMain.Lis, usr_pwd) then
    RefreshQueryGrid(cxGrid1DBBandedTableView1, 'fact_inc_id', cxGrid1DBBandedTableView1fact_inc_id.DataBinding.Field.AsInteger);
end;

procedure TfmFactInc.N17Click(Sender: TObject);
var str_bargain_id : string;
    i : integer;
begin
  if TcxGridDBTableView(cxGrid1.ActiveView).Controller.SelectedRowCount < 1 then exit;

  str_bargain_id := '';
  for i:=0 to cxGrid1DBBandedTableView1.Controller.SelectedRecordCount - 1 do
    str_bargain_id := str_bargain_id + ', ' + IntToStr(cxGrid1DBBandedTableView1.Controller.SelectedRows[i].Values[cxGrid1DBBandedTableView1bargain_id.Index]);
  Delete(str_bargain_id, 1, 2);

  PrintFrahtCardWeight_Multi2(fmMain.Lis, str_bargain_id);
end;

procedure TfmFactInc.N18Click(Sender: TObject);
begin
  fmAgreeFactInc := TfmAgreeFactInc.Create(Application, FcxGridView.GetColumnByFieldName('bargain_id').DataBinding.Field.AsInteger);
  if fmAgreeFactInc.SetFrahtFact() = mrOk then
    fmAgreeFactInc.ShowModal
  else
    fmAgreeFactInc.Close;
end;

procedure TfmFactInc.N19Click(Sender: TObject);
var  str_fact_inc_id : string;
                   i : integer;
                   Q : TADOQuery;
begin
  Screen.Cursor := crHourglass;

  Q := TADOQuery.Create(nil);
  Q.Connection := fmMain.Lis;
  Q.SQL.Add('DECLARE @stn int, @nvag int, @datpr smalldatetime');
  Q.SQL.Add('SET @stn = :stn');
  Q.SQL.Add('SET @nvag = :nvag');
  Q.SQL.Add('SET @datpr = :datpr');
  Q.SQL.Add('SELECT fact_inc_id FROM view_fact_inc_temp WHERE sto = @stn AND nvag = @nvag AND (users_group_id = ' + IntToStr(usr_pwd.user_group_id) + ')');
  Q.SQL.Add('AND dataot = (SELECT MIN(dataot) FROM fact_inc_temp JOIN users ON fact_inc_temp.users_id = users.users_id WHERE sto = @stn AND nvag = @nvag AND dataot >= @datpr AND (users_group_id = ' + IntToStr(usr_pwd.user_group_id) + '))');

  for i:=0 to FcxGridView.Controller.SelectedRowCount-1 do begin
    ShowTextMessage('Осталось '+IntToStr(FcxGridView.Controller.SelectedRowCount - i)+' записей...', False);
    Q.Close;
    Q.Parameters.ParamByName('stn').Value := FcxGridView.Controller.SelectedRows[i].Values[FcxGridView.GetColumnByFieldName('stn').Index];
    Q.Parameters.ParamByName('nvag').Value := FcxGridView.Controller.SelectedRows[i].Values[FcxGridView.GetColumnByFieldName('nvag').Index];
    Q.Parameters.ParamByName('datpr').Value := FcxGridView.Controller.SelectedRows[i].Values[FcxGridView.GetColumnByFieldName('datpr').Index];
    Q.Open;
    if Q.RecordCount <> 0 then begin
      str_fact_inc_id := str_fact_inc_id + ',' + Q.FieldByName('fact_inc_id').AsString;
    end;
  end;
  Delete(str_fact_inc_id, 1, 1);
  if str_fact_inc_id <> '' then begin
    ShowTextMessage('Запрос к базе на порожние вагоны...', False);
    Query_FindEmpty.Close;
    Query_FindEmpty.SQL.Clear;
    Query_FindEmpty.SQL.Add('SELECT * FROM view_fact_inc_temp WHERE fact_inc_id IN ('+str_fact_inc_id+')');
    Query_FindEmpty.Open;
  end;

  cxTabControl1.Visible := True;
  cxTabControl1.TabIndex := 1;
  cxTabControl1.Tabs[1].Caption := 'Порожние вагоны';

  Q.Free;
  ShowTextMessage;
  Screen.Cursor := crDefault;
end;

procedure TfmFactInc.N1Click(Sender: TObject);
var i : integer;
begin
  for i:=0 to fmMain.MDIChildCount-1 Do
    if (fmMain.MDIChildren[i].ClassName = 'TfmFactIncCard') then begin
      fmMain.MDIChildren[i].Free;
      break;
  end;
  fmFactIncCard := TfmFactIncCard.Create(self, FcxGridView.GetColumnByFieldName('fact_inc_id').DataBinding.Field.AsInteger);
  fmFactIncCard.ShowModal;
end;

procedure TfmFactInc.N22Click(Sender: TObject);
var  str_fact_inc_id : string;
                   i : integer;
                   Q : TADOQuery;
begin
  Screen.Cursor := crHourglass;

  Q := TADOQuery.Create(nil);
  Q.Connection := fmMain.Lis;
  Q.SQL.Add('DECLARE @sto int, @nvag int, @dataot smalldatetime');
  Q.SQL.Add('SET @sto = :sto');
  Q.SQL.Add('SET @nvag = :nvag');
  Q.SQL.Add('SET @dataot = :dataot');
  Q.SQL.Add('SELECT fact_inc_id FROM view_fact_inc_temp WHERE stn = @sto AND nvag = @nvag AND (users_group_id = ' + IntToStr(usr_pwd.user_group_id) + ')');
  Q.SQL.Add('AND datpr = (SELECT MAX(datpr) FROM fact_inc_temp JOIN users ON fact_inc_temp.users_id = users.users_id WHERE stn = @sto AND nvag = @nvag AND datpr < @dataot AND (users_group_id = ' + IntToStr(usr_pwd.user_group_id) + '))');

  for i:=0 to FcxGridView.Controller.SelectedRowCount-1 do begin
    ShowTextMessage('Осталось '+IntToStr(FcxGridView.Controller.SelectedRowCount - i)+' записей...', False);
    Q.Close;
    Q.Parameters.ParamByName('sto').Value := FcxGridView.Controller.SelectedRows[i].Values[FcxGridView.GetColumnByFieldName('sto').Index];
    Q.Parameters.ParamByName('nvag').Value := FcxGridView.Controller.SelectedRows[i].Values[FcxGridView.GetColumnByFieldName('nvag').Index];
    Q.Parameters.ParamByName('dataot').Value := FcxGridView.Controller.SelectedRows[i].Values[FcxGridView.GetColumnByFieldName('dataot').Index];
    Q.Open;
    if Q.RecordCount <> 0 then begin
      str_fact_inc_id := str_fact_inc_id + ',' + Q.FieldByName('fact_inc_id').AsString;
    end;
  end;
  Delete(str_fact_inc_id, 1, 1);

  ShowTextMessage('Запрос к базе на порожние вагоны...', False);
  Query_FindEmpty.Close;
  Query_FindEmpty.SQL.Clear;
  Query_FindEmpty.SQL.Add('SELECT * FROM view_fact_inc_temp WHERE fact_inc_id IN ('+str_fact_inc_id+')');
  Query_FindEmpty.Open;

  cxTabControl1.Visible := True;
  cxTabControl1.TabIndex := 1;
  cxTabControl1.Tabs[1].Caption := 'Гружёные вагоны';

  Q.Free;
  ShowTextMessage;
  Screen.Cursor := crDefault;
end;

procedure TfmFactInc.N25Click(Sender: TObject);
begin
  SetRecordColor('fact_inc_id', cxGrid1DBBandedTableView1, 'FACT_INC_TEMP', TMenuItem(Sender).Tag=1, 'fact_inc_color');
  RefreshQueryGrid(cxGrid1DBBandedTableView1, 'fact_inc_id', cxGrid1DBBandedTableView1fact_inc_id.DataBinding.Field.AsInteger);
end;

procedure TfmFactInc.N20Click(Sender: TObject);
var node_begin_cod, node_end_cod : string;
                               Q : TADOQuery;
begin
  Screen.Cursor := crHourglass;
  Q := TADOQuery.Create(nil);
  Q.Connection := fmMain.Lis;

  Q.SQL.Text := 'SELECT inf_obj_cod AS node_begin_cod FROM inf_obj_NODE WHERE LEFT(inf_obj_cod, 5) = (SELECT RIGHT(''00''+convert(varchar(6), sto), 5) FROM view_fact_inc_temp WHERE fact_inc_id = '+IntToStr(FcxGridView.GetColumnByFieldName('fact_inc_id').DataBinding.Field.AsInteger)+')';
  Q.Open;
  node_begin_cod := Q.FieldByName('node_begin_cod').AsString;

  Q.Close;
  Q.SQL.Text := 'SELECT inf_obj_cod AS node_end_cod FROM inf_obj_NODE WHERE LEFT(inf_obj_cod, 5) = (SELECT RIGHT(''00''+convert(varchar(6), stn), 5) FROM view_fact_inc_temp WHERE fact_inc_id = '+IntToStr(FcxGridView.GetColumnByFieldName('fact_inc_id').DataBinding.Field.AsInteger)+')';
  Q.Open;
  node_end_cod := Q.FieldByName('node_end_cod').AsString;

  Q.Free;
  Screen.Cursor := crDefault;

  RailAtlas_ShowRoute(fmMain.Lis, node_begin_cod, node_end_cod);
end;

procedure TfmFactInc.Action_AgreeExecute(Sender: TObject);
begin
  if CreatefmAgree(FcxGridView.GetColumnByFieldName('bargain_id').DataBinding.Field.AsInteger, FcxGridView.GetColumnByFieldName('users_owner_id').DataBinding.Field.AsInteger, Query_FactIncDBF.FieldByName('date_period').AsDateTime) then begin
    fmAgree2.cxGrid2DBBandedTableView1.Controller.ClearSelection;
    if Query_FactIncDBF.FieldByName('nvag').AsInteger <> 0 then
      fmAgree2.SP_FactClient.Locate('num_vagon', Query_FactIncDBF['nvag'], [loCaseInsensitive])
    else
      fmAgree2.SP_FactClient.Locate('num_konten', Query_FactIncDBF['nkont'], [loCaseInsensitive]);

    fmAgree2.ShowModal;
  end else begin
    fmAgree2.Close;
    Application.MessageBox('Нет прав для просмотра приложения', '', MB_OK or MB_ICONINFORMATION);
  end;
end;

procedure TfmFactInc.N4Click(Sender: TObject);
begin
  FcxGridView.OptionsView.GroupByBox := not FcxGridView.OptionsView.GroupByBox;
end;

procedure TfmFactInc.Change_SQL_Procedures(v : variant);
begin
  Caption := 'Нарастающий факт по ж/д (' + v[11] + ')';
  Fexpeditor := v[11];
  case v[1] of
    0: begin
         GetData_DBF(string(v[2]));
       end;
    1: begin
       Screen.Cursor := crHourglass;
       SP_FactInc_10_01.Close;
       SP_FactInc_10_01.ProcedureName:=string(v[3]);
       SP_FactInc_10_01.Parameters.Clear;
       SP_FactInc_10_01.Parameters.Add;
       SP_FactInc_10_01.Parameters[0].Name       := '@om';
       SP_FactInc_10_01.Parameters[0].Precision  := 10;
       SP_FactInc_10_01.Parameters[0].Attributes := [paNullable];
       SP_FactInc_10_01.Parameters[0].DataType   := ftInteger;
       SP_FactInc_10_01.Parameters[0].Value      := v[4];

       SP_FactInc_10_01.Parameters.Add;
       SP_FactInc_10_01.Parameters[1].Name       := '@god';
       SP_FactInc_10_01.Parameters[1].Precision  := 10;
       SP_FactInc_10_01.Parameters[1].Attributes := [paNullable];
       SP_FactInc_10_01.Parameters[1].DataType   := ftInteger;
       SP_FactInc_10_01.Parameters[1].Value      := v[5];

       SP_FactInc_10_01.Parameters.Add;
       SP_FactInc_10_01.Parameters[2].Name       := '@type_self';
       SP_FactInc_10_01.Parameters[2].Precision  := 3;
       SP_FactInc_10_01.Parameters[2].Attributes := [paNullable];
       SP_FactInc_10_01.Parameters[2].DataType   := ftWord;
       SP_FactInc_10_01.Parameters[2].Value      := v[6];

       SP_FactInc_10_01.Parameters.Add;
       SP_FactInc_10_01.Parameters[3].Name       := '@type_report';
       SP_FactInc_10_01.Parameters[3].Precision  := 10;
       SP_FactInc_10_01.Parameters[3].Attributes := [paNullable];
       SP_FactInc_10_01.Parameters[3].DataType   := ftInteger;
       SP_FactInc_10_01.Parameters[3].Value      := v[7];

       SP_FactInc_10_01.Open;
       DS_FactInc.DataSet := SP_FactInc_10_01;
       Screen.Cursor := crDefault;
       end;
  end;
end;

{$REGION 'Привязать факт к счет-фактуре (вручную)'}
procedure TfmFactInc.dxBarButton_AddSnapClick(Sender: TObject);
var          i : integer;
 zfto_score_id : integer;
            SP : TADOStoredProc;
begin
  if cxGrid1DBBandedTableView1.Controller.SelectedRowCount = 0 then
    exit;

  for i:=0 to MDIChildCount-1 do
    if (MDIChildren[i].ClassName = 'TfmZFTOScore') then begin
      MDIChildren[i].Close;
      Exit
    end;
  fmZFTOScore := TfmZFTOScore.Create(Application, True);
  if fmZFTOScore.ShowModal <> mrOK then
     exit;

  zfto_score_id := fmZFTOScore._GetZFTOScoreId;

  try
    Screen.Cursor := crHourglass;
    SP := TADOStoredProc.Create(nil);
    SP.Connection := fmMain.Lis;
    SP.ProcedureName := 'sp_load_link_dbf';
    SP.Parameters.Refresh;
    ShowTextMessage('Обработка факта...', False);
    for i := 0 to cxGrid1DBBandedTableView1.Controller.SelectedRowCount - 1 do begin
      SP.Close;
      SP.Parameters.ParamByName('@type_action').Value := 2;
      SP.Parameters.ParamByName('@fact_inc_id').Value := cxGrid1DBBandedTableView1.Controller.SelectedRows[i].Values[cxGrid1DBBandedTableView1fact_inc_id.Index];
      SP.Parameters.ParamByName('@zfto_score_id').Value := zfto_score_id;
      SP.ExecProc;
      ShowTextMessage('Осталось ' + IntToStr(cxGrid1DBBandedTableView1.Controller.SelectedRowCount - i) + ' записей...',  False);
    end;
    RefreshQueryGrid(cxGrid1DBBandedTableView1, 'fact_inc_id', cxGrid1DBBandedTableView1fact_inc_id.DataBinding.Field.AsInteger);
  finally
    SP.Free;
    ShowTextMessage();
    Screen.Cursor := crDefault;
  end;

end;
{$ENDREGION 'Привязать факт к счет-фактуре (вручную)'}


end.


