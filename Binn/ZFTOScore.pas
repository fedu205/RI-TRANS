unit ZFTOScore;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  cxPropertiesStore, StdCtrls, Buttons, ExtCtrls, ComCtrls, ToolWin, Variants,
  cxGridLevel, cxClasses, cxControls, cxGridCustomView, Raznoe, Default, cxGraphics,
  cxGridCustomTableView, cxGridTableView, cxGridDBTableView, cxGrid,
  cxGridBandedTableView, cxGridDBBandedTableView, Menus, Db, ADODB, cxStyles,
  cxCustomData, cxFilter, cxData, cxDataStorage, cxEdit, cxDBData, cxCalendar,
  cxCurrencyEdit, cxContainer, cxLabel, cxLookAndFeelPainters,
  cxButtons, cxTextEdit, cxMaskEdit, cxDropDownEdit,DateUtils,
  cxCheckBox, cxGroupBox, cxRadioGroup, DBClient, StrUtils, cxColorComboBox, cxDBLookupComboBox,
  cxLookAndFeels, cxPC, dxBar, XMLDoc, cxLookupEdit, cxDBLookupEdit, cxSplitter, dxSkinsCore, dxSkinBlack, dxSkinBlue, dxSkinBlueprint, dxSkinCaramel,
  dxSkinCoffee, dxSkinDarkRoom, dxSkinDarkSide, dxSkinDevExpressDarkStyle, dxSkinDevExpressStyle, dxSkinFoggy, dxSkinGlassOceans, dxSkinHighContrast,
  dxSkiniMaginary, dxSkinLilian, dxSkinLiquidSky, dxSkinLondonLiquidSky, dxSkinMcSkin, dxSkinMetropolis, dxSkinMetropolisDark, dxSkinMoneyTwins,
  dxSkinOffice2007Black, dxSkinOffice2007Blue, dxSkinOffice2007Green, dxSkinOffice2007Pink, dxSkinOffice2007Silver, dxSkinOffice2010Black,
  dxSkinOffice2010Blue, dxSkinOffice2010Silver, dxSkinOffice2013DarkGray, dxSkinOffice2013LightGray, dxSkinOffice2013White, dxSkinPumpkin,
  dxSkinSeven, dxSkinSevenClassic, dxSkinSharp, dxSkinSharpPlus, dxSkinSilver, dxSkinSpringTime, dxSkinStardust, dxSkinSummer2008,
  dxSkinTheAsphaltWorld, dxSkinsDefaultPainters, dxSkinValentine, dxSkinVS2010, dxSkinWhiteprint, dxSkinXmas2008Blue, dxSkinscxPCPainter,
  dxBarBuiltInMenu, cxNavigator, dxSkinsdxBarPainter, dxSkinOffice2016Colorful,
  dxSkinOffice2016Dark, dxSkinVisualStudio2013Blue, dxSkinVisualStudio2013Dark,
  dxSkinVisualStudio2013Light,
  cxDataControllerConditionalFormattingRulesManagerDialog, dxDateRanges, dxSkinTheBezier, dxSkinOffice2019Colorful, dxScrollbarAnnotations,
  dxSkinBasic, dxSkinOffice2019Black, dxSkinOffice2019DarkGray, dxSkinOffice2019White;

type
  TfmZFTOScore = class(TForm)
    cxPropertiesStore1: TcxPropertiesStore;
    cxPageControl1: TcxPageControl;
    cxTabSheet2: TcxTabSheet;
    cxGrid2Level1: TcxGridLevel;
    cxGrid2: TcxGrid;
    Panel1: TPanel;
    cxGrid2DBBandedTableView1: TcxGridDBBandedTableView;
    Query_ZFTOScoreTable: TADOQuery;
    DS_ZFTOScoreTable: TDataSource;
    GroupBox1: TGroupBox;
    cxGrid3: TcxGrid;
    cxGrid3DBBandedTableView1: TcxGridDBBandedTableView;
    cxGrid3DBBandedTableView1zfto_score_table_id: TcxGridDBBandedColumn;
    cxGrid3DBBandedTableView1zfto_score_id: TcxGridDBBandedColumn;
    cxGrid3DBBandedTableView1number_doc: TcxGridDBBandedColumn;
    cxGrid3DBBandedTableView1date_dep: TcxGridDBBandedColumn;
    cxGrid3DBBandedTableView1date_serv: TcxGridDBBandedColumn;
    cxGrid3DBBandedTableView1sum_rub: TcxGridDBBandedColumn;
    cxGrid3DBBandedTableView1nds_rub: TcxGridDBBandedColumn;
    cxGrid3DBBandedTableView1carddoctyp: TcxGridDBBandedColumn;
    cxGrid3DBBandedTableView1fr_weight: TcxGridDBBandedColumn;
    cxGrid3DBBandedTableView1fr_code: TcxGridDBBandedColumn;
    cxGrid3Level1: TcxGridLevel;
    cxGrid3DBBandedTableView1st_src_name: TcxGridDBBandedColumn;
    cxGrid3DBBandedTableView1st_src: TcxGridDBBandedColumn;
    cxGrid3DBBandedTableView1cont_num: TcxGridDBBandedColumn;
    cxGrid3DBBandedTableView1sum_usd: TcxGridDBBandedColumn;
    cxGrid3DBBandedTableView1nds_usd: TcxGridDBBandedColumn;
    DS_ZFTOScoreGet: TDataSource;
    cxGrid2DBBandedTableView1zfto_score_id: TcxGridDBBandedColumn;
    cxGrid2DBBandedTableView1fact_num: TcxGridDBBandedColumn;
    cxGrid2DBBandedTableView1fact_date: TcxGridDBBandedColumn;
    cxGrid2DBBandedTableView1deb_name: TcxGridDBBandedColumn;
    cxGrid2DBBandedTableView1sum_rub: TcxGridDBBandedColumn;
    cxGrid2DBBandedTableView1global_color: TcxGridDBBandedColumn;
    cxGrid2DBBandedTableView1sum_usd: TcxGridDBBandedColumn;
    SP_ZFTOScoreGet: TADOStoredProc;
    Splitter2: TSplitter;
    GroupBox2: TGroupBox;
    Query_FactIncDBF: TADOQuery;
    DS_FactInc: TDataSource;
    cxGrid4: TcxGrid;
    cxGrid4DBBandedTableView1: TcxGridDBBandedTableView;
    cxGrid4DBBandedTableView1fact_inc_id: TcxGridDBBandedColumn;
    cxGrid4DBBandedTableView1bargain_id: TcxGridDBBandedColumn;
    cxGrid4DBBandedTableView1id_uch: TcxGridDBBandedColumn;
    cxGrid4DBBandedTableView1brief_name: TcxGridDBBandedColumn;
    cxGrid4DBBandedTableView1FIO_users_owner: TcxGridDBBandedColumn;
    cxGrid4DBBandedTableView1bargain_cod: TcxGridDBBandedColumn;
    cxGrid4DBBandedTableView1firm_customer_name: TcxGridDBBandedColumn;
    cxGrid4DBBandedTableView1date_period_month: TcxGridDBBandedColumn;
    cxGrid4DBBandedTableView1date_period_year: TcxGridDBBandedColumn;
    cxGrid4DBBandedTableView1ndser: TcxGridDBBandedColumn;
    cxGrid4DBBandedTableView1ndnum: TcxGridDBBandedColumn;
    cxGrid4DBBandedTableView1nvag: TcxGridDBBandedColumn;
    cxGrid4DBBandedTableView1fkat: TcxGridDBBandedColumn;
    cxGrid4DBBandedTableView1fkv: TcxGridDBBandedColumn;
    cxGrid4DBBandedTableView1grp: TcxGridDBBandedColumn;
    cxGrid4DBBandedTableView1dataot: TcxGridDBBandedColumn;
    cxGrid4DBBandedTableView1datpr: TcxGridDBBandedColumn;
    cxGrid4DBBandedTableView1vg: TcxGridDBBandedColumn;
    cxGrid4DBBandedTableView1grves: TcxGridDBBandedColumn;
    cxGrid4DBBandedTableView1nkont: TcxGridDBBandedColumn;
    cxGrid4DBBandedTableView1free_fact_text: TcxGridDBBandedColumn;
    cxGrid4DBBandedTableView1free_fact: TcxGridDBBandedColumn;
    cxGrid4DBBandedTableView1FIO_free_fact: TcxGridDBBandedColumn;
    cxGrid4DBBandedTableView1sto_name: TcxGridDBBandedColumn;
    cxGrid4DBBandedTableView1stn_name: TcxGridDBBandedColumn;
    cxGrid4DBBandedTableView1gruz_name: TcxGridDBBandedColumn;
    cxGrid4DBBandedTableView1podkod: TcxGridDBBandedColumn;
    cxGrid4DBBandedTableView1itog: TcxGridDBBandedColumn;
    cxGrid4DBBandedTableView1rodv: TcxGridDBBandedColumn;
    cxGrid4DBBandedTableView1fsob_name: TcxGridDBBandedColumn;
    cxGrid4DBBandedTableView1max_load_id: TcxGridDBBandedColumn;
    cxGrid4DBBandedTableView1users_owner_id: TcxGridDBBandedColumn;
    cxGrid4DBBandedTableView1type_self: TcxGridDBBandedColumn;
    cxGrid4DBBandedTableView1type_info: TcxGridDBBandedColumn;
    cxGrid4DBBandedTableView1fact_inc_color: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView2: TcxGridDBBandedTableView;
    cxGrid1DBBandedTableView2fact_inc_id: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView2bargain_id: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView2max_load_id: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView2type_self: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView2id_uch: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView2brief_name: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView2FIO_users_owner: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView2ndnum: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView2ndser: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView2nvag: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView2nkont: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView2fkv: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView2grp: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView2dataot: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView2datpr: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView2vg: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView2grves: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView2podkod: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView2free_fact_text: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView2free_fact: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView2FIO_free_fact: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView2fact_inc_color: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView2sto_name: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView2stn_name: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView2gruz_name: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView2kursdr: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView2field_report: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView2fsob_name: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView2bargain_cod: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView2date_period: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView2firm_customer_name: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView2users_owner_id: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView2date_period_month: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView2date_period_year: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView2itog: TcxGridDBBandedColumn;
    cxGrid4Level1: TcxGridLevel;
    ToolBar3: TToolBar;
    ToolButton6: TToolButton;
    cxGrid4DBBandedTableView1invoice_score_fact_inc_id: TcxGridDBBandedColumn;
    cxGrid4DBBandedTableView1itog_TD: TcxGridDBBandedColumn;
    cxGrid4DBBandedTableView1itog_VOHR: TcxGridDBBandedColumn;
    cxGrid4DBBandedTableView1itog_SHTRAF: TcxGridDBBandedColumn;
    cxGrid4DBBandedTableView1itogr: TcxGridDBBandedColumn;
    cxTabSheet3: TcxTabSheet;
    cxGrid5: TcxGrid;
    cxGrid5DBBandedTableView1: TcxGridDBBandedTableView;
    cxGrid5Level1: TcxGridLevel;
    cxGrid3DBBandedTableView1vagon_num: TcxGridDBBandedColumn;
    cxGrid2DBBandedTableView1date_act: TcxGridDBBandedColumn;
    cxGrid2DBBandedTableView1inn: TcxGridDBBandedColumn;
    cxGrid2DBBandedTableView1kpp: TcxGridDBBandedColumn;
    cxGrid2DBBandedTableView1locco: TcxGridDBBandedColumn;
    cxGrid2DBBandedTableView1num_contr: TcxGridDBBandedColumn;
    cxGrid2DBBandedTableView1number_act: TcxGridDBBandedColumn;
    cxGrid2DBBandedTableView1type_incom: TcxGridDBBandedColumn;
    cxGrid3DBBandedTableView1st_tgt_name: TcxGridDBBandedColumn;
    cxGrid3DBBandedTableView1st_tgt: TcxGridDBBandedColumn;
    cxGrid3DBBandedTableView1ktgrm_text: TcxGridDBBandedColumn;
    Query_ZFTOScorePeriod: TADOQuery;
    DS_ZFTOScorePeriod: TDataSource;
    cxGrid5DBBandedTableView1zfto_score_table_id: TcxGridDBBandedColumn;
    cxGrid5DBBandedTableView1zfto_score_id: TcxGridDBBandedColumn;
    cxGrid5DBBandedTableView1ktgrm_text: TcxGridDBBandedColumn;
    cxGrid5DBBandedTableView1date_dep: TcxGridDBBandedColumn;
    cxGrid5DBBandedTableView1date_serv: TcxGridDBBandedColumn;
    cxGrid5DBBandedTableView1carddoctyp: TcxGridDBBandedColumn;
    cxGrid5DBBandedTableView1st_src: TcxGridDBBandedColumn;
    cxGrid5DBBandedTableView1st_tgt: TcxGridDBBandedColumn;
    cxGrid5DBBandedTableView1number_doc: TcxGridDBBandedColumn;
    cxGrid5DBBandedTableView1vagon_num: TcxGridDBBandedColumn;
    cxGrid5DBBandedTableView1cont_num: TcxGridDBBandedColumn;
    cxGrid5DBBandedTableView1fr_code: TcxGridDBBandedColumn;
    cxGrid5DBBandedTableView1fr_weight: TcxGridDBBandedColumn;
    cxGrid5DBBandedTableView1sum_wnds_rub: TcxGridDBBandedColumn;
    cxGrid5DBBandedTableView1nds_rub: TcxGridDBBandedColumn;
    cxGrid5DBBandedTableView1sum_rub: TcxGridDBBandedColumn;
    cxGrid5DBBandedTableView1sum_wnds_usd: TcxGridDBBandedColumn;
    cxGrid5DBBandedTableView1nds_usd: TcxGridDBBandedColumn;
    cxGrid5DBBandedTableView1sum_usd: TcxGridDBBandedColumn;
    cxGrid5DBBandedTableView1st_src_name: TcxGridDBBandedColumn;
    cxGrid5DBBandedTableView1st_tgt_name: TcxGridDBBandedColumn;
    cxGrid5DBBandedTableView1zfto_score_act_id: TcxGridDBBandedColumn;
    cxGrid5DBBandedTableView1number_act: TcxGridDBBandedColumn;
    cxGrid5DBBandedTableView1date_act: TcxGridDBBandedColumn;
    cxGrid5DBBandedTableView1num_contr: TcxGridDBBandedColumn;
    cxGrid5DBBandedTableView1fact_num: TcxGridDBBandedColumn;
    cxGrid5DBBandedTableView1fact_date: TcxGridDBBandedColumn;
    cxGrid5DBBandedTableView1type_incom: TcxGridDBBandedColumn;
    cxGrid5DBBandedTableView1global_color: TcxGridDBBandedColumn;
    cxGrid5DBBandedTableView1numact_cor: TcxGridDBBandedColumn;
    cxGrid5DBBandedTableView1datact_cor: TcxGridDBBandedColumn;
    cxGrid5DBBandedTableView1date_load_month: TcxGridDBBandedColumn;
    cxGrid5DBBandedTableView1date_load_year: TcxGridDBBandedColumn;
    cxGrid2DBBandedTableView1date_load_year: TcxGridDBBandedColumn;
    cxGrid2DBBandedTableView1date_load_month: TcxGridDBBandedColumn;
    cxGrid2DBBandedTableView1numact_cor: TcxGridDBBandedColumn;
    cxGrid2DBBandedTableView1datact_cor: TcxGridDBBandedColumn;
    ToolButton24: TToolButton;
    ToolButton25: TToolButton;
    ToolButton19: TToolButton;
    cxGrid3DBBandedTableView1date_pr: TcxGridDBBandedColumn;
    cxGrid3DBBandedTableView1global_color: TcxGridDBBandedColumn;
    cxGrid2DBBandedTableView1file_load: TcxGridDBBandedColumn;
    cxGrid3DBBandedTableView1waers: TcxGridDBBandedColumn;
    cxGrid2DBBandedTableView1waers: TcxGridDBBandedColumn;
    cxGrid5DBBandedTableView1waers: TcxGridDBBandedColumn;
    dxBarManager1: TdxBarManager;
    Popup_Agent: TdxBarPopupMenu;
    N30: TdxBarButton;
    N41: TdxBarButton;
    N17: TdxBarButton;
    N18: TdxBarButton;
    N20: TdxBarButton;
    N21: TdxBarButton;
    N16: TdxBarSubItem;
    Popup_Fact_inc: TdxBarPopupMenu;
    N43: TdxBarButton;
    N46: TdxBarButton;
    N44: TdxBarButton;
    N48: TdxBarButton;
    N36: TdxBarButton;
    N37: TdxBarButton;
    N39: TdxBarButton;
    N34: TdxBarSubItem;
    Popup_ZFTO: TdxBarPopupMenu;
    N49: TdxBarButton;
    MenuItem8: TdxBarButton;
    MenuItem9: TdxBarButton;
    MenuItem12: TdxBarButton;
    MenuItem7: TdxBarSubItem;
    Popup_ZFTOScorePeriod: TdxBarPopupMenu;
    N55: TdxBarButton;
    MenuItem17: TdxBarButton;
    MenuItem18: TdxBarButton;
    MenuItem21: TdxBarButton;
    MenuItem16: TdxBarSubItem;
    dxBarManager1Bar1: TdxBar;
    dxBarSubItem1: TdxBarSubItem;
    dxBarButton2: TdxBarButton;
    dxBarButton3: TdxBarButton;
    dxBarButton1: TdxBarButton;
    cxGrid3DBBandedTableView1serv_code: TcxGridDBBandedColumn;
    cxGrid5DBBandedTableView1serv_code: TcxGridDBBandedColumn;
    cxGrid5DBBandedTableView1invoiceid: TcxGridDBBandedColumn;
    cxGrid3DBBandedTableView1invoiceid: TcxGridDBBandedColumn;
    dxBarButton4: TdxBarButton;
    cxGrid2DBBandedTableView1set_grant: TcxGridDBBandedColumn;
    dxBarButton_AddZFTO: TdxBarButton;
    dxBarButton_DelZFTO: TdxBarButton;
    dxBarSubItem_Add: TdxBarSubItem;
    dxBarButton_AddCor: TdxBarButton;
    dxBarSubItem_Del: TdxBarSubItem;
    dxBarButton_DelCorr: TdxBarButton;
    OpenDialog1: TOpenDialog;
    cxGrid2DBBandedTableView1date_load: TcxGridDBBandedColumn;
    dxBarButton_FilterRecords1: TdxBarButton;
    dxBarButton_FilterRecords4: TdxBarButton;
    dxBarButton_FilterRecords3: TdxBarButton;
    dxBarButton_FilterRecords2: TdxBarButton;
    dxBarButton5: TdxBarButton;
    dxBarButtonCopyToFact: TdxBarButton;
    dxBarButton_NoteAdd: TdxBarButton;
    cxGrid2DBBandedTableView1service_kind: TcxGridDBBandedColumn;
    dxBarButton_CopyFactBargainGroup: TdxBarButton;
    dxBarButton6: TdxBarButton;
    Query_Contract: TADOQuery;
    DS_Contract: TDataSource;
    dxBarButton_CopyFactBargain: TdxBarButton;
    cxSplitter1: TcxSplitter;
    dxBarButton_ADDScore: TdxBarButton;
    dxBarButton_EditSF: TdxBarButton;
    cxGrid2DBBandedTableView1zfto_score_act_id: TcxGridDBBandedColumn;
    dxBarButton_DeleteSF: TdxBarButton;
    cxGrid2DBBandedTableView1set_auto: TcxGridDBBandedColumn;
    cxGrid2DBBandedTableView1fact_inc_sum_rub: TcxGridDBBandedColumn;
    dxBarSubItem_Print: TdxBarSubItem;
    dxBarButton_ReportClient: TdxBarButton;
    Panel3: TPanel;
    Label1: TLabel;
    Label8: TLabel;
    cxLookupComboBox1: TcxLookupComboBox;
    cxTextEdit_Contract: TcxTextEdit;
    dxBarButton_AddZFTONew: TdxBarButton;
    dxBarSubItem_AddZFTO: TdxBarSubItem;
    dxBarSubItem_AddCor: TdxBarSubItem;
    dxBarButton_AddCorNew: TdxBarButton;
    cxGrid2DBBandedTableView1fact_num_c: TcxGridDBBandedColumn;
    cxStyleRepository1: TcxStyleRepository;
    cxStyle1: TcxStyle;
    dxBarButton7: TdxBarButton;
    cxGrid2DBBandedTableView1cnt_global_doc: TcxGridDBBandedColumn;
    cxGrid3DBBandedTableView1vidsoob: TcxGridDBBandedColumn;
    cxGrid3DBBandedTableView1type_tr: TcxGridDBBandedColumn;
    cxGrid2DBBandedTableView1service_kind_id: TcxGridDBBandedColumn;
    dxBarButton8: TdxBarButton;
    dxBarSubItem2: TdxBarSubItem;
    dxBarButton10: TdxBarButton;
    dxBarButton11: TdxBarButton;
    cxGrid5DBBandedTableView1date_pr: TcxGridDBBandedColumn;
    dxBarButton9: TdxBarButton;
    dxBarButton16: TdxBarButton;
    dxBarButton17: TdxBarButton;
    procedure MenuItem17Click(Sender: TObject);
    procedure N36Click(Sender: TObject);
    procedure MenuItem8Click(Sender: TObject);
    procedure ToolButton19Click(Sender: TObject);
    procedure ToolButton24Click(Sender: TObject);
    procedure cxGrid2DBBandedTableView1KeyPress(Sender: TObject; var Key: Char);
    procedure MenuItem21Click(Sender: TObject);
    procedure cxGrid4DBBandedTableView1CustomDrawCell(Sender: TcxCustomGridTableView; ACanvas: TcxCanvas; AViewInfo: TcxGridTableDataCellViewInfo; var ADone: Boolean);
    procedure cxPageControl1Change(Sender: TObject);
    procedure N44Click(Sender: TObject);
    procedure N43Click(Sender: TObject);
    procedure N49Click(Sender: TObject);
    procedure N48Click(Sender: TObject);
    procedure N46Click(Sender: TObject);
    procedure N39Click(Sender: TObject);
    procedure cxGrid3DBBandedTableView1FocusedRecordChanged(Sender: TcxCustomGridTableView; APrevFocusedRecord, AFocusedRecord: TcxCustomGridRecord;   ANewItemRecordFocusingChanged: Boolean);
    procedure MenuItem12Click(Sender: TObject);
    procedure cxGrid3DBBandedTableView1CustomDrawCell(Sender: TcxCustomGridTableView; ACanvas: TcxCanvas; AViewInfo: TcxGridTableDataCellViewInfo; var ADone: Boolean);
    procedure N21Click(Sender: TObject);
    procedure cxGrid2DBBandedTableView1CustomDrawCell(Sender: TcxCustomGridTableView; ACanvas: TcxCanvas; AViewInfo: TcxGridTableDataCellViewInfo; var ADone: Boolean);
    procedure N17Click(Sender: TObject);
    procedure cxGrid2DBBandedTableView1FocusedRecordChanged(Sender: TcxCustomGridTableView; APrevFocusedRecord, AFocusedRecord: TcxCustomGridRecord; ANewItemRecordFocusingChanged: Boolean);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure N41Click(Sender: TObject);
    procedure N20Click(Sender: TObject);
    procedure dxBarButton2Click(Sender: TObject);
    procedure dxBarButton3Click(Sender: TObject);
    procedure dxBarButton1Click(Sender: TObject);
    procedure dxBarButton4Click(Sender: TObject);
    procedure dxBarButton_AddZFTOClick(Sender: TObject);
    procedure dxBarButton_DelZFTOClick(Sender: TObject);
    procedure dxBarButton_FilterRecords1Click(Sender: TObject);
    procedure dxBarButton_FilterRecords4Click(Sender: TObject);
    procedure dxBarButton_FilterRecords3Click(Sender: TObject);
    procedure dxBarButton_FilterRecords2Click(Sender: TObject);
    procedure dxBarButton5Click(Sender: TObject);
    procedure dxBarButtonCopyToFactClick(Sender: TObject);
    procedure dxBarButton_NoteAddClick(Sender: TObject);
    procedure dxBarButton_CopyFactBargainGroupClick(Sender: TObject);
    procedure dxBarButton6Click(Sender: TObject);
    procedure cxLookupComboBox1PropertiesEditValueChanged(Sender: TObject);
    procedure dxBarButton_CopyFactBargainClick(Sender: TObject);
    procedure dxBarButton_ADDScoreClick(Sender: TObject);
    procedure dxBarButton_EditSFClick(Sender: TObject);
    procedure dxBarButton_DeleteSFClick(Sender: TObject);
    procedure dxBarButton_ReportClientClick(Sender: TObject);
    procedure dxBarButton_AddZFTONewClick(Sender: TObject);
    procedure dxBarButton7Click(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure dxBarButton8Click(Sender: TObject);
    procedure dxBarButton10Click(Sender: TObject);
    procedure dxBarButton11Click(Sender: TObject);
    procedure dxBarButton9Click(Sender: TObject);
    procedure dxBarButton16Click(Sender: TObject);
    procedure cxGrid2DBBandedTableView1CustomDrawColumnHeader(Sender: TcxGridTableView; ACanvas: TcxCanvas; AViewInfo: TcxGridColumnHeaderViewInfo;
      var ADone: Boolean);
    procedure cxGrid2DBBandedTableView1FocusedItemChanged(Sender: TcxCustomGridTableView; APrevFocusedItem, AFocusedItem: TcxCustomGridTableItem);
    procedure cxGrid2DBBandedTableView1DataControllerFilterChanged(Sender: TObject);
  private
    Fdate1, Fdate2       : TDateTime;
    FcxGridView          : TcxGridDBBandedTableView;
    Fzfto_score_table_id : integer;
    Fzfto_score_id       : integer;
    Fcontract_id         : integer;
    procedure FilterOfSearch(number_doc, fact_num: string);
    procedure FactIncModify(str_fact_inc_id : string; type_action : integer);
    procedure SetFindZFTOScore(set_find: boolean);
  public
    constructor Create(AOwner: TApplication; flag: boolean);
  published
    property  _GetZFTOScoreId : integer read Fzfto_score_id;
    property  _GetZFTOScoreTableId : integer read Fzfto_score_table_id;
    property  _SetFindZFTOScore : boolean write SetFindZFTOScore;
    procedure _SetFactInc(zfto_score_id: integer);
    procedure _SetFactIncTable(zfto_score_table_id: integer);
  end;

var
  fmZFTOScore: TfmZFTOScore;

implementation
    uses Main, Period, Other, ComObj, Filter, FactIncCard, FactInc,
    cxGridDBDataDefinitions, Fact, ZFTOScoreAdd;
{$R *.DFM}

constructor TfmZFTOScore.Create(AOwner: TApplication; flag: boolean);
var Q : TADOQuery;
i: integer;
s: string;
begin
  Screen.Cursor := crHourglass;
  inherited Create(AOwner);

  if flag then begin
    FormStyle := fsNormal;
    dxBarButton6.Visible := ivAlways;
  end else begin
    FormStyle := fsMDIChild;
    WindowState := wsMaximized;
  end;
  Query_Contract.Open;
  Fcontract_id := -9;

  dxBarSubItem1.Caption := StoreRegistryDate(rgLoad, '\Software\Lis1\DateTime\ZFTOScore', Fdate1, Fdate2);

  FcxGridView :=  cxGrid2DBBandedTableView1;

  cxPageControl1.OnChange := nil;
  cxPageControl1.ActivePageIndex := 0;
  cxPageControl1.OnChange := cxPageControl1Change;

  StoreRegistryGrid(rgLoad, '\Software\Lis1\ZFTOScore_Grids', cxGrid2DBBandedTableView1,1);
  StoreRegistryGrid(rgLoad, '\Software\Lis1\ZFTOScore_Grids', cxGrid3DBBandedTableView1,2);
  StoreRegistryGrid(rgLoad, '\Software\Lis1\ZFTOScore_Grids', cxGrid4DBBandedTableView1);
  StoreRegistryGrid(rgLoad, '\Software\Lis1\ZFTOScore_Grids', cxGrid5DBBandedTableView1);


  Q := TADOQuery.Create(nil);
  Q.Connection := fmMain.Lis;
  Q.SQL.Add('SELECT TOP(1) c.contract_id, c.contract_cod FROM view_zfto_score_rights s, contract c WHERE s.contract_id = c.contract_id ORDER BY date_load DESC');
  Q.Open;

  cxLookupComboBox1.Properties.OnEditValueChanged := nil;
  Fcontract_id := Q.FieldByName('contract_id').AsInteger;
  cxLookupComboBox1.EditValue := Q.FieldByName('contract_id').Value;
  cxTextEdit_Contract.EditValue := Q.FieldByName('contract_cod').AsString;
  cxLookupComboBox1.Properties.OnEditValueChanged := cxLookupComboBox1PropertiesEditValueChanged;
  Q.Free;

  cxPageControl1Change(self);
  SetUsersModuleRights(self, fmMain.Lis);

  Screen.Cursor := crDefault;
end;

Procedure TfmZFTOScore._SetFactInc(zfto_score_id:integer);
var Q : TADOQuery;
    fact_num : string;
begin
  Screen.Cursor := crHourglass;
  Q := TADOQuery.Create(nil);
  Q.Connection := fmMain.Lis;
  Q.SQL.Add('SELECT fact_num, zfto_score_id, fact_date, contract_id, date_load FROM view_zfto_score_rights WHERE zfto_score_id = '+IntToStr(zfto_score_id));
  Q.Open;
  if Q.RecordCount = 0 then begin
    fact_num := '';
  end else begin
    fact_num := Q.FieldByName('fact_num').AsString;
    if Fdate1 <> StrToDate('01.'+FormatDateTime('mm.yy', Q.FieldByName('date_load').AsDateTime)) then begin
      Fdate1 := StrToDate('01.'+FormatDateTime('mm.yy', Q.FieldByName('date_load').AsDateTime));
      Fdate2 := IncMonth(Fdate1, 1) - 1;
      dxBarSubItem1.Caption := FormatDateTime('mmmm yyyy', Fdate1);
      cxLookupComboBox1.Properties.OnEditValueChanged := nil;
      cxLookupComboBox1.EditValue := Q.FieldByName('contract_id').Value;
      Fcontract_id := Q.FieldByName('contract_id').AsInteger;
      if (cxLookupComboBox1.EditValue <> null) AND (Query_Contract.Locate('contract_id', cxLookupComboBox1.EditValue, [])) then begin
        cxTextEdit_Contract.EditValue := Query_Contract.FieldByName('contract_cod').Value;
      end else begin
        cxTextEdit_Contract.EditValue := NULL;
      end;
      cxLookupComboBox1.Properties.OnEditValueChanged := cxLookupComboBox1PropertiesEditValueChanged;
      cxPageControl1Change(cxPageControl1);
    end;
    Q.Free;
    RefreshQueryGrid(FcxGridView, 'zfto_score_id', zfto_score_id);
    if ToolButton19.Down then
      RefreshQueryGrid(cxGrid4DBBandedTableView1, 'fact_inc_id', fmFactInc.cxGrid1DBBandedTableView1fact_inc_id.DataBinding.Field.AsInteger);
  end;
  FilterOfSearch('', fact_num);
end;

procedure TfmZFTOScore._SetFactIncTable(zfto_score_table_id: integer);
begin
  RefreshQueryGrid(cxGrid3DBBandedTableView1, 'zfto_score_table_id', zfto_score_table_id);
end;


procedure TfmZFTOScore.FactIncModify(str_fact_inc_id : string; type_action : integer);
var SP : TADOStoredProc;
    i  : integer;
    Q  : TADOQuery;
begin
  if str_fact_inc_id = '' then
    exit;

  Screen.Cursor := crHourglass;
  Q := TADOQuery.Create(nil);
  Q.Connection := fmMain.Lis;
  Q.SQL.Add('SELECT fact_inc_id FROM fact_inc WHERE fact_inc_id IN (' + str_fact_inc_id + ')');
  Q.Open;
  SP := TADOStoredProc.Create(nil);
  SP.Connection := fmMain.Lis;
  SP.ProcedureName := 'sp_load_link_dbf;1';
  SP.Parameters.Refresh;
  while not Q.Eof do begin
    case type_action of
      1 : ShowTextMessage(Format('Идет удаление нарастающего факта: строка %0:s из %1:s. ' + Chr(13) + '                       Подождите пожалуйста...', [IntToStr(Q.RecNo), IntToStr(Q.RecordCount)]), False);
      2 : ShowTextMessage(Format('Идет добавление нарастающего факта: строка %0:s из %1:s. ' + Chr(13) + '                       Подождите пожалуйста...', [IntToStr(Q.RecNo), IntToStr(Q.RecordCount)]), False);
    end;
    Sp.Close;
    SP.Parameters.ParamByName('@type_action').Value := type_action;
    SP.Parameters.ParamByName('@zfto_score_id').Value := cxGrid2DBBandedTableView1zfto_score_id.DataBinding.Field.Value;
    SP.Parameters.ParamByName('@fact_inc_id').Value := Q.FieldByName('fact_inc_id').AsInteger;
    SP.ExecProc;
    Q.Next;
  end;
  ShowTextMessage;
  Q.Free;
  SP.Free;
  Screen.Cursor := crDefault;
end;


procedure TfmZFTOScore.MenuItem12Click(Sender: TObject);
begin
  cxGrid3DBBandedTableView1.OptionsView.GroupByBox := not cxGrid3DBBandedTableView1.OptionsView.GroupByBox;
end;

procedure TfmZFTOScore.MenuItem17Click(Sender: TObject);
begin
  SetRecordColor('zfto_score_table_id', cxGrid5DBBandedTableView1, 'ZFTO_SCORE_TABLE', (TMenuItem(Sender).Tag=1));
  RefreshQueryGrid(cxGrid5DBBandedTableView1, 'zfto_score_table_id', cxGrid5DBBandedTableView1zfto_score_table_id.DataBinding.Field.AsInteger);
end;

procedure TfmZFTOScore.MenuItem21Click(Sender: TObject);
begin
  cxGrid5DBBandedTableView1.OptionsView.GroupByBox := not cxGrid5DBBandedTableView1.OptionsView.GroupByBox;
end;

procedure TfmZFTOScore.MenuItem8Click(Sender: TObject);
begin
  SetRecordColor('zfto_score_table_id', cxGrid3DBBandedTableView1, 'ZFTO_SCORE_TABLE', (TMenuItem(Sender).Tag=1));
  RefreshQueryGrid(cxGrid3DBBandedTableView1, 'zfto_score_table_id', cxGrid3DBBandedTableView1zfto_score_table_id.DataBinding.Field.AsInteger);
end;

procedure TfmZFTOScore.N36Click(Sender: TObject);
begin
  SetRecordColor('fact_inc_id', cxGrid4DBBandedTableView1, 'FACT_INC_TEMP', TMenuItem(Sender).Tag=1, 'fact_inc_color');
  RefreshQueryGrid(cxGrid4DBBandedTableView1, 'fact_inc_id', cxGrid4DBBandedTableView1fact_inc_id.DataBinding.Field.AsInteger);
end;

procedure TfmZFTOScore.N39Click(Sender: TObject);
begin
  cxGrid4DBBandedTableView1.OptionsView.GroupByBox := not cxGrid4DBBandedTableView1.OptionsView.GroupByBox;
end;

procedure TfmZFTOScore.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action := caFree;
end;

procedure TfmZFTOScore.FormDestroy(Sender: TObject);
begin
  StoreRegistryDate(rgSave, '\Software\Lis1\DateTime\ZFTOScore', Fdate1, Fdate2);

  StoreRegistryGrid(rgSave, '\Software\Lis1\ZFTOScore_Grids', cxGrid2DBBandedTableView1);
  StoreRegistryGrid(rgSave, '\Software\Lis1\ZFTOScore_Grids', cxGrid3DBBandedTableView1);
  StoreRegistryGrid(rgSave, '\Software\Lis1\ZFTOScore_Grids', cxGrid4DBBandedTableView1);
  StoreRegistryGrid(rgSave, '\Software\Lis1\ZFTOScore_Grids', cxGrid5DBBandedTableView1);
end;

procedure TfmZFTOScore.FilterOfSearch(number_doc, fact_num :string);
begin
  if fact_num <> '' then begin
    cxGrid2DBBandedTableView1.DataController.ClearSelection;
    cxGrid2DBBandedTableView1.DataController.Filter.Clear;
    cxGrid2DBBandedTableView1.DataController.Filter.AddItem(nil, cxGrid2DBBandedTableView1fact_num, foEqual, fact_num, fact_num);
    cxGrid2DBBandedTableView1.DataController.Filter.Active := True;
  end;

  if number_doc <> '' then begin
    cxGrid3DBBandedTableView1.DataController.ClearSelection;
    cxGrid3DBBandedTableView1.DataController.Filter.Clear;
    cxGrid3DBBandedTableView1.DataController.Filter.AddItem(nil, cxGrid3DBBandedTableView1number_doc, foEqual, number_doc, number_doc);
    cxGrid3DBBandedTableView1.DataController.Filter.Active := True;
  end;
end;


procedure TfmZFTOScore.cxGrid2DBBandedTableView1CustomDrawCell(Sender: TcxCustomGridTableView; ACanvas: TcxCanvas; AViewInfo: TcxGridTableDataCellViewInfo; var ADone: Boolean);
begin
  if (AViewInfo.GridRecord.Values[cxGrid2DBBandedTableView1global_color.Index] <> NULL) then ACanvas.Brush.Color := AViewInfo.GridRecord.Values[cxGrid2DBBandedTableView1global_color.Index];
  if AViewInfo.GridRecord.Focused then begin
    ACanvas.Brush.Color := clNavy;
    ACanvas.Font.Color := clWhite;
  end;
  if AViewInfo.GridRecord.Focused OR AViewInfo.GridRecord.Selected then  ACanvas.Brush.Color := clNavy;
  if AViewInfo.Focused then ACanvas.Brush.Color := clBlue;
end;

procedure TfmZFTOScore.cxGrid2DBBandedTableView1CustomDrawColumnHeader(Sender: TcxGridTableView; ACanvas: TcxCanvas; AViewInfo: TcxGridColumnHeaderViewInfo;  var ADone: Boolean);
begin
  DrawcxGridColumnOnFocused(Sender, ACanvas, AViewInfo);
end;

procedure TfmZFTOScore.cxGrid2DBBandedTableView1DataControllerFilterChanged(Sender: TObject);
begin
  DrawcxGridColumnOnFiltered(Sender);
end;

procedure TfmZFTOScore.cxGrid2DBBandedTableView1FocusedItemChanged(Sender: TcxCustomGridTableView; APrevFocusedItem, AFocusedItem: TcxCustomGridTableItem);
begin
  Sender.Painter.Invalidate;
end;

procedure TfmZFTOScore.cxGrid2DBBandedTableView1FocusedRecordChanged(Sender: TcxCustomGridTableView; APrevFocusedRecord, AFocusedRecord: TcxCustomGridRecord; ANewItemRecordFocusingChanged: Boolean);
var number_doc : string;
begin
  Screen.Cursor := crHourglass;
  Query_ZFTOScoreTable.Close;
  Query_FactIncDBF.Close;
  if (AFocusedRecord<>nil) AND ((cxGrid2DBBandedTableView1.GroupedColumnCount = 0) OR (AFocusedRecord.Level <> 0)) then begin
    Query_ZFTOScoreTable.Parameters.ParamByName('zfto_score_id').Value := AFocusedRecord.Values[cxGrid2DBBandedTableView1zfto_score_id.Index];
    Query_ZFTOScoreTable.Open;
    if ToolButton19.Down then begin
      if (ToolButton24.Down) then begin
        number_doc := cxGrid3DBBandedTableView1number_doc.DataBinding.Field.Value;
        number_doc := Copy(number_doc, Length(number_doc)-5, 6);
        Query_FactIncDBF.Parameters.ParamByName('ndnum').Value := StrToInt(number_doc);
      end;
      Query_FactIncDBF.Parameters.ParamByName('zfto_score_id').Value := cxGrid2DBBandedTableView1zfto_score_id.DataBinding.Field.Value;
      Query_FactIncDBF.Open;
    end;
  end;
  Screen.Cursor := crDefault;
end;

procedure TfmZFTOScore.cxGrid2DBBandedTableView1KeyPress(Sender: TObject; var Key: Char);
begin
  FilterColumnGridOnKeyPress(TcxGridDBBandedTableView(TcxGridSite(Sender).GridView), Key);
end;

procedure TfmZFTOScore.cxGrid3DBBandedTableView1CustomDrawCell(Sender: TcxCustomGridTableView; ACanvas: TcxCanvas; AViewInfo: TcxGridTableDataCellViewInfo; var ADone: Boolean);
begin
  if (AViewInfo.GridRecord.Values[cxGrid3DBBandedTableView1global_color.Index] <> NULL) then ACanvas.Brush.Color := AViewInfo.GridRecord.Values[cxGrid3DBBandedTableView1global_color.Index];
  if AViewInfo.GridRecord.Focused then begin
    ACanvas.Brush.Color := clNavy;
    ACanvas.Font.Color := clWhite;
  end;
  if AViewInfo.GridRecord.Focused OR AViewInfo.GridRecord.Selected then  ACanvas.Brush.Color := clNavy;
  if AViewInfo.Focused then ACanvas.Brush.Color := clBlue;
end;

procedure TfmZFTOScore.cxGrid3DBBandedTableView1FocusedRecordChanged(Sender: TcxCustomGridTableView; APrevFocusedRecord, AFocusedRecord: TcxCustomGridRecord; ANewItemRecordFocusingChanged: Boolean);
var number_doc : string;
begin
  Screen.Cursor := crHourglass;
  if (AFocusedRecord<>nil) AND (ToolButton19.Down) then begin
    if (ToolButton24.Down) then begin
      Query_FactIncDBF.Close;
      number_doc := cxGrid3DBBandedTableView1number_doc.DataBinding.Field.Value;
      number_doc := Copy(number_doc, Length(number_doc)-5, 6);
      Query_FactIncDBF.Parameters.ParamByName('ndnum').Value := StrToInt(number_doc);
      Query_FactIncDBF.Parameters.ParamByName('zfto_score_id').Value := cxGrid2DBBandedTableView1zfto_score_id.DataBinding.Field.Value;
      Query_FactIncDBF.Open;
    end;
  end;
  Screen.Cursor := crDefault;
end;

procedure TfmZFTOScore.cxGrid4DBBandedTableView1CustomDrawCell(Sender: TcxCustomGridTableView; ACanvas: TcxCanvas; AViewInfo: TcxGridTableDataCellViewInfo; var ADone: Boolean);
begin
  if (AViewInfo.GridRecord.Values[cxGrid4DBBandedTableView1fact_inc_color.Index] <> NULL) then ACanvas.Brush.Color := AViewInfo.GridRecord.Values[cxGrid4DBBandedTableView1fact_inc_color.Index];
  if AViewInfo.GridRecord.Focused then begin
    ACanvas.Brush.Color := clNavy;
    ACanvas.Font.Color := clWhite;
  end;
  if AViewInfo.GridRecord.Focused OR AViewInfo.GridRecord.Selected then  ACanvas.Brush.Color := clNavy;
  if AViewInfo.Focused then ACanvas.Brush.Color := clBlue;
end;

procedure TfmZFTOScore.cxLookupComboBox1PropertiesEditValueChanged(  Sender: TObject);
begin
  if (cxLookupComboBox1.EditValue <> null) AND (Query_Contract.Locate('contract_id', cxLookupComboBox1.EditValue, [])) then begin
    cxTextEdit_Contract.EditValue := Query_Contract.FieldByName('contract_cod').Value;
    Fcontract_id := Query_Contract.FieldByName('contract_id').AsInteger;
  end else begin
    cxTextEdit_Contract.EditValue := NULL;
    Fcontract_id := -9;
  end;

  case cxPageControl1.ActivePageIndex of
    0 : begin
          SP_ZFTOScoreGet.Parameters.ParamByName('@contract_id').Value := Fcontract_id;
          SP_ZFTOScoreGet.Parameters.ParamByName('@date1').Value := Fdate1;
          SP_ZFTOScoreGet.Parameters.ParamByName('@date2').Value := Fdate2;
          RefreshQueryGrid(FcxGridView, 'zfto_score_id');
        end;
    1 : begin
          Query_ZFTOScorePeriod.Parameters.ParamByName('contract_id').Value := Fcontract_id;
          Query_ZFTOScorePeriod.Parameters.ParamByName('date1').Value := Fdate1;
          Query_ZFTOScorePeriod.Parameters.ParamByName('date2').Value := Fdate2;
          RefreshQueryGrid(FcxGridView, 'zfto_score_table_id');
        end;
  end;
end;

procedure TfmZFTOScore.cxPageControl1Change(Sender: TObject);
begin
  Screen.Cursor := crHourglass;
  case cxPageControl1.ActivePageIndex of
    0 : begin
          FcxGridView :=  cxGrid2DBBandedTableView1;
          SP_ZFTOScoreGet.Close;
          SP_ZFTOScoreGet.Parameters.Refresh;
          SP_ZFTOScoreGet.Parameters.ParamByName('@date1').Value := Fdate1;
          SP_ZFTOScoreGet.Parameters.ParamByName('@date2').Value := Fdate2;
          SP_ZFTOScoreGet.Parameters.ParamByName('@contract_id').Value := Fcontract_id;
          SP_ZFTOScoreGet.Open;
        end;
    1 : begin
          FcxGridView :=  cxGrid5DBBandedTableView1;
          Query_ZFTOScorePeriod.Close;
          Query_ZFTOScorePeriod.Parameters.ParamByName('date1').Value := Fdate1;
          Query_ZFTOScorePeriod.Parameters.ParamByName('date2').Value := Fdate2;
          Query_ZFTOScorePeriod.Parameters.ParamByName('contract_id').Value := Fcontract_id;
          Query_ZFTOScorePeriod.Open;
        end;
  end;
  Screen.Cursor := crDefault;
end;


procedure TfmZFTOScore.dxBarButton10Click(Sender: TObject);
var       connect : TADOConnection;
                Q : TADOQuery;
       users_name : string;
zfto_score_act_id : integer;
      SP_load_dbf : TADOStoredProc;
          val_int : integer;
begin
  Q := TADOQuery.Create(nil);
  Q.Connection := fmMain.Lis;
  Q.SQL.Add('SELECT users_name FROM users WHERE set_users_etran_modify = 1 and users_group_id = (SELECT users_group_id FROM users WHERE users_name = system_user)');
  Q.Open;

  users_name := Q.FieldByName('users_name').AsString;
  Q.Free;

  connect := TADOConnection.Create(nil);
  connect.ConnectionString := 'Persist Security Info=True;Provider=SQLOLEDB.1;User ID='+ users_name +';Password='+'etran'+';Initial Catalog='+'lis_etran'+';Data Source=' + usr_pwd.server+';';
  connect.KeepConnection := False;
  connect.LoginPrompt    := False;
  connect.Open;

  Q := TADOQuery.Create(nil);
  Q.Connection := connect;
  Q.SQL.Add('SELECT	DISTINCT etran_act.zfto_score_act_id,');
  Q.SQL.Add('       etran_act.number_act,');
  Q.SQL.Add('       etran_act.date_act');
//  Q.SQL.Add('       etran_score.five_days_zfto');
  Q.SQL.Add('FROM	  lis_etran..ZFTO_SCORE_ACT etran_act');
  Q.SQL.Add('       inner join lis_etran..ZFTO_SCORE etran_score on etran_act.zfto_score_act_id = etran_score.zfto_score_act_id');
  Q.SQL.Add('       inner join lis_etran..etran_global_id on etran_global_id.global_id = etran_act.zfto_score_act_id');
  Q.SQL.Add('       left join lis1..zfto_score_act on  etran_act.number_act COLLATE Cyrillic_General_CI_AS = zfto_score_act.number_act COLLATE Cyrillic_General_CI_AS');
  Q.SQL.Add('WHERE	zfto_score_act.zfto_score_act_id is null');
  Q.SQL.Add('       and users_owner_id in (SELECT users2.users_id FROM lis_etran..etran_users users1 inner join lis_etran..etran_users users2 on users1.users_group_id = users2.users_group_id WHERE users1.users_name = system_user)');
  Q.Open;


  fmFilter := TfmFilter.Create(0, Q, 'zfto_score_act_id', 'number_act', 'date_act');
  fmFilter._SetEtranZFTO := True;
  if fmFilter.ShowModal = mrOk then begin
    zfto_score_act_id := fmFilter.GetId;

    SP_load_dbf := TADOStoredProc.Create(nil);
    SP_load_dbf.Connection := fmMain.Lis;
    SP_load_dbf.ProcedureName := 'sp_load_dbf';
    SP_load_dbf.Parameters.Refresh;

    Q.Close;
    Q.SQL.Clear;
    Q.SQL.Add('SELECT	date_load, file_load, fact_num, fact_num_c, fact_date, numact_cor, datact_cor, number_act, locco, fact_date, inn, kpp, deb_name, num_contr, null type_incom, ktgrm_text,');
    Q.SQL.Add('		    date_dep, date_serv, date_pr, carddoctyp, rr_src, st_src, rr_tgt, st_tgt, number_doc, vagon_num, cont_num, fr_code, fr_weight, sum_wnds_rub, nds_rub, sum_rub, sum_wnds_usd,');
    Q.SQL.Add('		    nds_usd, sum_usd, vidsoob, type_tr, waers, serv_code, invoiceid, service_kind_name, date_act, act_type');
    Q.SQL.Add('FROM	  zfto_score_act');
    Q.SQL.Add('		    inner join zfto_score on zfto_score_act.zfto_score_act_id = zfto_score.zfto_score_act_id');
    Q.SQL.Add('		    inner join zfto_score_table on zfto_score_table.zfto_score_id = zfto_score.zfto_score_id');
    Q.SQL.Add('WHERE  zfto_score_act.zfto_score_act_id = ' + IntToStr(zfto_score_act_id));
    Q.Open;

    while not Q.Eof do begin
      ShowTextMessage('Осталось загрузить ' + IntToStr(Q.RecordCount - Q.RecNo + 1) + ' вагонов ...', False);

      SP_load_dbf.Parameters.Refresh;
      SP_load_dbf.Parameters.ParamByName('@type_action'  ).Value := 0;
      SP_load_dbf.Parameters.ParamByName('@date_load'    ).Value := Q.FieldByName('date_load').Value;
      SP_load_dbf.Parameters.ParamByName('@file_load'    ).Value := Q.FieldByName('file_load').Value;
      SP_load_dbf.Parameters.ParamByName('@contract_id'  ).Value := cxLookupComboBox1.EditValue;
      SP_load_dbf.Parameters.ParamByName('@fact_num'     ).Value := Q.FieldByName('fact_num').Value;
      SP_load_dbf.Parameters.ParamByName('@fact_num_c'   ).Value := Q.FieldByName('fact_num_c').Value;
      SP_load_dbf.Parameters.ParamByName('@fact_date'    ).Value := Q.FieldByName('fact_date').Value;
      SP_load_dbf.Parameters.ParamByName('@numact_cor'   ).Value := Q.FieldByName('numact_cor').Value;
      SP_load_dbf.Parameters.ParamByName('@datact_cor'   ).Value := Q.FieldByName('datact_cor').Value;
      SP_load_dbf.Parameters.ParamByName('@sum_r_prev'   ).Value := null;
      SP_load_dbf.Parameters.ParamByName('@nds_r_prev'   ).Value := null;
      SP_load_dbf.Parameters.ParamByName('@sum_r_diff'   ).Value := Q.FieldByName('sum_rub').Value;
      SP_load_dbf.Parameters.ParamByName('@nds_r_diff'   ).Value := Q.FieldByName('nds_rub').Value;
      SP_load_dbf.Parameters.ParamByName('@sum_diff'     ).Value := Q.FieldByName('sum_usd').Value;
      SP_load_dbf.Parameters.ParamByName('@nds_diff'     ).Value := Q.FieldByName('nds_usd').Value;
      SP_load_dbf.Parameters.ParamByName('@number_act'   ).Value := Q.FieldByName('number_act').Value;
      SP_load_dbf.Parameters.ParamByName('@locco'        ).Value := Q.FieldByName('locco').Value;
      SP_load_dbf.Parameters.ParamByName('@date_act'     ).Value := Q.FieldByName('date_act').Value;
      SP_load_dbf.Parameters.ParamByName('@inn'          ).Value := Q.FieldByName('inn').Value;
      SP_load_dbf.Parameters.ParamByName('@kpp'          ).Value := Q.FieldByName('kpp').Value;
      SP_load_dbf.Parameters.ParamByName('@deb_name'     ).Value := Q.FieldByName('deb_name').Value;
      SP_load_dbf.Parameters.ParamByName('@num_contr'    ).Value := Q.FieldByName('num_contr').Value;
      SP_load_dbf.Parameters.ParamByName('@type_incom'   ).Value := null;
      SP_load_dbf.Parameters.ParamByName('@ktgrm_text'   ).Value := Q.FieldByName('ktgrm_text').Value;
      SP_load_dbf.Parameters.ParamByName('@date_dep'     ).Value := Q.FieldByName('date_dep').Value;
      SP_load_dbf.Parameters.ParamByName('@date_serv'    ).Value := Q.FieldByName('date_serv').Value;
      SP_load_dbf.Parameters.ParamByName('@date_pr'      ).Value := Q.FieldByName('date_pr').Value;
      SP_load_dbf.Parameters.ParamByName('@carddoctyp'   ).Value := Q.FieldByName('carddoctyp').Value;

      if TryStrToInt(Q.FieldByName('rr_src').AsString, val_int) then
        SP_load_dbf.Parameters.ParamByName('@rr_src').Value := val_int
      else
        SP_load_dbf.Parameters.ParamByName('@rr_src').Value := null;

      if TryStrToInt(Q.FieldByName('st_src').AsString, val_int) then
        SP_load_dbf.Parameters.ParamByName('@st_src').Value := val_int
      else
        SP_load_dbf.Parameters.ParamByName('@st_src').Value := null;

      if TryStrToInt(Q.FieldByName('rr_tgt').AsString, val_int) then
        SP_load_dbf.Parameters.ParamByName('@rr_tgt').Value := val_int
      else
        SP_load_dbf.Parameters.ParamByName('@rr_tgt').Value := null;

      if TryStrToInt(Q.FieldByName('st_tgt').AsString, val_int) then
        SP_load_dbf.Parameters.ParamByName('@st_tgt').Value := val_int
      else
        SP_load_dbf.Parameters.ParamByName('@st_tgt').Value := null;

      SP_load_dbf.Parameters.ParamByName('@number_doc'   ).Value := Q.FieldByName('number_doc').Value;
      SP_load_dbf.Parameters.ParamByName('@vagon_num'    ).Value := Q.FieldByName('vagon_num').Value;
      SP_load_dbf.Parameters.ParamByName('@cont_num'     ).Value := Q.FieldByName('cont_num').Value;
      SP_load_dbf.Parameters.ParamByName('@fr_code'      ).Value := Q.FieldByName('fr_code').Value;
      SP_load_dbf.Parameters.ParamByName('@fr_weight'    ).Value := Q.FieldByName('fr_weight').Value;
      SP_load_dbf.Parameters.ParamByName('@sum_wnds_rub' ).Value := Q.FieldByName('sum_wnds_rub').Value;
      SP_load_dbf.Parameters.ParamByName('@nds_rub'      ).Value := Q.FieldByName('nds_rub').Value;
      SP_load_dbf.Parameters.ParamByName('@sum_rub'      ).Value := Q.FieldByName('sum_rub').Value;
      SP_load_dbf.Parameters.ParamByName('@sum_wnds_usd' ).Value := Q.FieldByName('sum_wnds_usd').Value;
      SP_load_dbf.Parameters.ParamByName('@nds_usd'      ).Value := Q.FieldByName('nds_usd').Value;
      SP_load_dbf.Parameters.ParamByName('@sum_usd'      ).Value := Q.FieldByName('sum_usd').Value;
      SP_load_dbf.Parameters.ParamByName('@vidsoob'      ).Value := Q.FieldByName('vidsoob').Value;
      SP_load_dbf.Parameters.ParamByName('@type_tr'      ).Value := Q.FieldByName('type_tr').Value;
      SP_load_dbf.Parameters.ParamByName('@waers'        ).Value := Q.FieldByName('waers').Value;
      SP_load_dbf.Parameters.ParamByName('@serv_code'    ).Value := Q.FieldByName('serv_code').Value;
      SP_load_dbf.Parameters.ParamByName('@invoiceid'    ).Value := Q.FieldByName('invoiceid').Value;
      SP_load_dbf.Parameters.ParamByName('@act_type'     ).Value := Q.FieldByName('act_type').Value;
      SP_load_dbf.Parameters.ParamByName('@set_grant'    ).Value := 0;
      SP_load_dbf.Parameters.ParamByName('@service_kind_name').Value := Q.FieldByName('service_kind_name').Value;
      SP_load_dbf.ExecProc;

      Q.Next;
    end;
    SP_load_dbf.Free;
  end;

  Q.Free;
  connect.Free;
  ShowTextMessage();

  Screen.Cursor := crDefault;
  case cxPageControl1.ActivePageIndex of
    0 : begin
          SP_ZFTOScoreGet.Parameters.ParamByName('@contract_id').Value := Fcontract_id;
          RefreshQueryGrid(FcxGridView, 'zfto_score_id');
        end;
    1 : begin
          Query_ZFTOScorePeriod.Parameters.ParamByName('contract_id').Value := Fcontract_id;
          RefreshQueryGrid(FcxGridView, 'zfto_score_table_id');
        end;
  end;
end;

procedure TfmZFTOScore.dxBarButton11Click(Sender: TObject);
type
  TFunc = function(AHandle: THandle; users_group_cod: string; usr_pwd:PUser_pwd) : variant;
var
           FEtran : TFunc;
           handle : THandle;
                v : variant;
            Query : TADOQuery;
  users_group_cod : string;
begin
  Screen.Cursor := crHourglass;

  Query := TADOQuery.Create(nil);
  Query.Connection := fmMain.Lis;
  Query.SQL.Add('SELECT	inf_obj_cod as users_group_cod');
  Query.SQL.Add('FROM	  users INNER JOIN inf_obj on users.users_group_id = inf_obj.inf_obj_id');
  Query.SQL.Add('WHERE	users_name = system_user');
  Query.Open;
  users_group_cod := Query.FieldByName('users_group_cod').AsString;
  Query.Free;

  Screen.Cursor := crDefault;

  handle := LoadLibrary('etran.dll');
  @FEtran := GetProcAddress(handle, 'CreateWndEtranActUslug');
  v := FEtran(Application.Handle, users_group_cod, usr_pwd);
  FreeLibrary(handle);
end;

procedure TfmZFTOScore.dxBarButton16Click(Sender: TObject);
begin
  Screen.Cursor := crHourglass;

  case TControl(Sender).Tag of
    1 : Fdate1 := IncMonth(Fdate1, 1);
    2 : Fdate1 := IncMonth(Fdate1, -1);
  end;

  Fdate2 := IncMonth(Fdate1, 1) - 1;
  dxBarSubItem1.Caption := FormatDateTime('mmmm yyyy', Fdate1);
  dxBarManager1Bar1.Reset;

  dxBarButton16.Caption := FormatDateTime('mmmm yyyy', IncMonth(Fdate1,-1));
  dxBarButton17.Caption := FormatDateTime('mmmm yyyy', IncMonth(Fdate1,1));

  cxPageControl1Change(cxPageControl1);
  Screen.Cursor := crDefault;
end;

procedure TfmZFTOScore.dxBarButton1Click(Sender: TObject);
begin
  Screen.Cursor := crHourglass;
  case cxPageControl1.ActivePageIndex of
    0 : begin
          RefreshQueryGrid(FcxGridView, 'zfto_score_id');
        end;
    1 : begin
          RefreshQueryGrid(FcxGridView, 'zfto_score_table_id');
        end;
  end;
  Screen.Cursor := crDefault;
end;

procedure TfmZFTOScore.dxBarButton2Click(Sender: TObject);
begin
  fmPeriod := TfmPeriod.Create(Application, Fdate1, Fdate2, 3);
  if fmPeriod.ShowModal=mrOK then begin
    Screen.Cursor := crHourglass;
    Fdate1 := fmPeriod._GetMonth;
    Fdate2 := IncMonth(Fdate1, 1) - 1;
    dxBarSubItem1.Caption := FormatDateTime('mmmm yyyy', Fdate1);

    cxPageControl1Change(cxPageControl1);
    Screen.Cursor := crDefault;
  end;
end;

procedure TfmZFTOScore.dxBarButton3Click(Sender: TObject);
begin
  fmPeriod := TfmPeriod.Create(Application, Fdate1, Fdate2, 2);
  if fmPeriod.ShowModal=mrOK then begin
    Screen.Cursor := crHourglass;
    Fdate1 := fmPeriod._GetMonthBegin;
    Fdate2 := fmPeriod._GetMonthEnd;
    dxBarSubItem1.Caption := FormatDateTime('mmm yy', Fdate1) + ' - ' + FormatDateTime('mmm yy', Fdate2);

    cxPageControl1Change(cxPageControl1);
    Screen.Cursor := crDefault;
  end;
end;

procedure TfmZFTOScore.N20Click(Sender: TObject);
begin
  case TdxBarButton(Sender).ClickItemLink.Owner.Owner.Tag of
    2 : SetdxDBGridColumns(cxGrid2DBBandedTableView1);
    3 : SetdxDBGridColumns(cxGrid3DBBandedTableView1);
    4 : SetdxDBGridColumns(cxGrid4DBBandedTableView1);
    5 : SetdxDBGridColumns(cxGrid5DBBandedTableView1);
  end;
end;

procedure TfmZFTOScore.N21Click(Sender: TObject);
begin
  cxGrid2DBBandedTableView1.OptionsView.GroupByBox := not cxGrid2DBBandedTableView1.OptionsView.GroupByBox;
end;

procedure TfmZFTOScore.N17Click(Sender: TObject);
begin
  SetRecordColor('zfto_score_id', cxGrid2DBBandedTableView1, 'ZFTO_SCORE', (TMenuItem(Sender).Tag=1));
  RefreshQueryGrid(FcxGridView, 'zfto_score_id', FcxGridView.Columns[0].DataBinding.Field.AsInteger);
end;

procedure TfmZFTOScore.N41Click(Sender: TObject);
var new_str, number_doc, fact_num : string;
                                Q : TADOQuery;
begin
  if InputMemo('Поиск', 'Введите номер накладной:', new_str) then begin
    if new_str = '' then Exit;

    new_str := ReplaceStr(new_str, #13, '');
    new_str := ReplaceStr(new_str, #10, ',');
    new_str := ReplaceStr(new_str, '''', '''''');

    Screen.Cursor := crHourglass;
    Q := TADOQuery.Create(nil);
    Q.Connection := fmMain.Lis;
    Q.SQL.Add('SELECT DISTINCT v.number_doc, v.zfto_score_id, v.fact_num, ROW_NUMBER() OVER (ORDER BY v.number_doc ASC) row_num, v.fact_date, v.number_doc, v.number_act, v.zfto_score_act_id, c.firm_customer_name FROM view_ZFTO_score_table v');
    Q.SQL.Add(' INNER JOIN view_contract c ON v.contract_id = c.contract_id');
    Q.SQL.Add(' INNER JOIN dbo.StrToTbl(''' + new_str + ''', default) nn ON v.number_doc LIKE ''%'' + RIGHT(nn.cod, 6) AND LEN(nn.cod) >= 3 ');
//    Q.SQL.Add(' WHERE v.number_doc LIKE ''%'+new_str+'%''');
    Q.SQL.Add(' GROUP BY v.number_doc, v.zfto_score_id, v.fact_num, v.fact_date, v.number_doc, v.number_act, v.zfto_score_act_id, c.firm_customer_name');
    Q.Open;
    Screen.Cursor := crDefault;

    case Q.RecordCount of
      0 : begin
          Application.MessageBox('ПОИСК НЕ ДАЛ РЕЗУЛЬТАТОВ ', 'ВНИМАНИЕ', MB_OK);
          end;
      else begin
           fmFilter := TfmFilter.Create(0, Q, 'row_num', 'number_doc', 'zfto_score_id');
           fmFilter._SetInvoiceScoreZFTO('row_num', 'number_doc', 'zfto_score_id', 'fact_date','fact_num','','number_act', 'firm_customer_name');

           if fmFilter.ShowModal = mrOk then begin
             Screen.Cursor := crHourglass;

             Q.Locate('row_num', fmFilter.GetId, [loCaseInsensitive]);
             number_doc := Q.FieldByName('number_doc').AsString;
             fact_num := Q.FieldByName('fact_num').AsString;
             Q.Close;
             Q.SQL.Clear;
             Q.SQL.Add('SELECT date_load, contract_id FROM view_ZFTO_score_table WHERE zfto_score_id =' + fmFilter.Getname);
             Q.Open;

             cxLookupComboBox1.Properties.OnEditValueChanged := nil;
             cxLookupComboBox1.EditValue := Q.FieldByName('contract_id').Value;
             Fcontract_id := Q.FieldByName('contract_id').AsInteger;
             cxLookupComboBox1.Properties.OnEditValueChanged := cxLookupComboBox1PropertiesEditValueChanged;

             Fdate1 := Q.FieldByName('date_load').AsDateTime - DayOfTheMonth(Q.FieldByName('date_load').AsDateTime) + 1;
             Fdate2 := IncMonth(Fdate1) - 1;
             dxBarSubItem1.Caption := FormatDateTime('mmmm yyyy', Fdate1);

             cxPageControl1.OnChange := nil;
             cxPageControl1.ActivePageIndex := 0;
             cxPageControl1.OnChange := cxPageControl1Change;
             cxPageControl1Change(cxPageControl1);

             //---- Устанавливаем фильтр в Gride -----------------------------
             FilterOfSearch(number_doc, fact_num);

             SP_ZFTOScoreGet.Locate('zfto_score_id', fmFilter.GetName, [loCaseInsensitive]);
             Screen.Cursor := crDefault;
           end;

      end;
    end;

    Q.Free;
  end;

end;

procedure TfmZFTOScore.N43Click(Sender: TObject);
type
  TFunc =  function(AppHandle: THandle; user_pwd: PUser_pwd; ValueList: PChar; ValueListType: integer; TypeSelf: integer; WindowSearchStyle: integer): variant;
var
  FactIncDlgHandle            : THandle;
  FFactIncDlg                 : TFunc;
  v                           : variant;
begin
  FactIncDlgHandle := LoadLibrary('Search.dll');
  @FFactIncDlg := GetProcAddress(FactIncDlgHandle, 'CreateWndFactIncDlg');
  v := FFactIncDlg(Application.Handle, usr_pwd, '', 2, -9, 0);
  if v[0] = idOk then begin
    fmFactInc := TfmFactInc.Create(Application, True);
    fmFactInc.Change_SQL_Procedures(v);
    if fmFactInc.ShowModal = MrOk then begin
      Screen.Cursor := crHourglass;
      FactIncModify(fmFactInc._GetStrFactId, 2);
      ShowTextMessage('Обновление данных. Подождите пожалуйста...', False);
      RefreshQueryGrid(cxGrid4DBBandedTableView1, 'fact_inc_id');
      Screen.Cursor := crDefault;
      ShowTextMessage;
    end;
  end;
  FreeLibrary(FactIncDlgHandle);
end;


procedure TfmZFTOScore.N44Click(Sender: TObject);
var i             : integer;
begin
  if cxGrid4DBBandedTableView1.DataController.RowCount = 0 then Exit;
  Screen.Cursor := crHourglass;
  FactIncModify(GetStrId(cxGrid4DBBandedTableView1fact_inc_id, ','), 1);
  RefreshQueryGrid(cxGrid4DBBandedTableView1, 'fact_inc_id');
  ShowTextMessage;
  Screen.Cursor := crDefault;
end;

procedure TfmZFTOScore.N46Click(Sender: TObject);
var i : integer;
begin
  if cxGrid4DBBandedTableView1.DataController.RowCount = 0 then Exit;
  for i:=0 to fmMain.MDIChildCount-1 Do
    if (fmMain.MDIChildren[i].ClassName = 'fmFactIncCard') then begin
      fmMain.MDIChildren[i].Free;
      break;
    end;
  fmFactIncCard := TfmFactIncCard.Create(self, cxGrid4DBBandedTableView1fact_inc_id.DataBinding.Field.AsInteger);
  fmFactIncCard.ShowModal;
end;

procedure TfmZFTOScore.N48Click(Sender: TObject);
var v : variant;
begin
  if cxGrid4DBBandedTableView1.DataController.RowCount = 0 then Exit;

  v := VarArrayOf([1, 0, 'SELECT * FROM view_fact_inc_temp WITH (NOLOCK) WHERE (users_group_id = ' + IntToStr(usr_pwd.user_group_id) + ') AND (type_self=' + cxGrid4DBBandedTableView1type_self.DataBinding.Field.AsString + ') AND (dataot >= ''01.' + FormatDateTime('mm.yy', cxGrid4DBBandedTableView1dataot.DataBinding.Field.AsDateTime) + ''' AND dataot <= ''' + FormatDateTime('dd.mm.yy', IncMonth(StrToDate(FormatDateTime('01.mm.yy', cxGrid4DBBandedTableView1dataot.DataBinding.Field.AsDateTime)), 1)-1) + ''') AND max_load_id = ' + cxGrid4DBBandedTableView1max_load_id.DataBinding.Field.AsString, cxGrid4DBBandedTableView1fact_inc_id.DataBinding.Field.AsInteger]);

  fmFactInc := TfmFactInc.Create(Application, True);
  fmFactInc.Change_SQL_Procedures(v);
  RefreshQueryGrid(fmFactInc.cxGrid1DBBandedTableView1, 'fact_inc_id', cxGrid4DBBandedTableView1fact_inc_id.DataBinding.Field.AsInteger);
  fmFactInc.ShowModal;
end;

procedure TfmZFTOScore.N49Click(Sender: TObject);
type
  TFunc =  function(AppHandle: THandle; user_pwd: PUser_pwd; ValueList: PChar; ValueListType: integer; TypeSelf: integer; WindowSearchStyle: integer): variant;
var
  FactIncDlgHandle : THandle;
  FFactIncDlg      : TFunc;
  v                : variant;
begin
  FactIncDlgHandle := LoadLibrary('Search.dll');
  @FFactIncDlg := GetProcAddress(FactIncDlgHandle, 'CreateWndFactIncDlg');
  v :=FFactIncDlg(Application.Handle, usr_pwd, PChar(GetStrIdNumDoc(cxGrid3DBBandedTableView1number_doc , ',')), 2, -9, 0);
  FreeLibrary(FactIncDlgHandle);

  if v[0] = idOk then begin
    fmFactInc := TfmFactInc.Create(Application, True);
    fmFactInc.Change_SQL_Procedures(v);
    if fmFactInc.ShowModal = MrOk then begin
      Screen.Cursor := crHourglass;
      FactIncModify(fmFactInc._GetStrFactId,2);
      ShowTextMessage('Обновление данных. Подождите пожалуйста...', False);
      RefreshQueryGrid(cxGrid4DBBandedTableView1, 'fact_inc_id');
      Screen.Cursor := crDefault;
      ShowTextMessage;
    end;
  end;

end;


procedure TfmZFTOScore.ToolButton19Click(Sender: TObject);
var number_doc : string;
begin
  GroupBox2.Visible := ToolButton19.Down;
  Splitter2.Visible := ToolButton19.Down;
  Query_FactIncDBF.Close;
  if ToolButton19.Down then begin
    if (ToolButton24.Down) then begin
      number_doc := cxGrid3DBBandedTableView1number_doc.DataBinding.Field.Value;
      number_doc := Copy(number_doc, Length(number_doc)-5, 6);
      Query_FactIncDBF.Parameters.ParamByName('ndnum').Value := StrToInt(number_doc);
    end;
    Query_FactIncDBF.Parameters.ParamByName('zfto_score_id').Value := cxGrid2DBBandedTableView1zfto_score_id.DataBinding.Field.Value;
    Query_FactIncDBF.Open;
  end;
end;

procedure TfmZFTOScore.ToolButton24Click(Sender: TObject);
var number_doc : string;
begin
  Screen.Cursor := crHourglass;
  Query_FactIncDBF.Close;
  Query_FactIncDBF.SQL.Clear;

  if ToolButton24.Down then begin
    Query_FactIncDBF.SQL.Add('SELECT * FROM view_zfto_score_fact_inc WHERE zfto_score_id = :zfto_score_id and ndnum = :ndnum');
    number_doc := cxGrid3DBBandedTableView1number_doc.DataBinding.Field.Value;
    number_doc := Copy(number_doc, Length(number_doc)-5, 6);
    Query_FactIncDBF.Parameters.ParamByName('ndnum').Value := StrToInt(number_doc);
  end else begin
    Query_FactIncDBF.SQL.Add('SELECT * FROM view_zfto_score_fact_inc WHERE zfto_score_id = :zfto_score_id');
  end;

  Query_FactIncDBF.Parameters.ParamByName('zfto_score_id').Value := cxGrid2DBBandedTableView1zfto_score_id.DataBinding.Field.Value;
  Query_FactIncDBF.Open;
  Screen.Cursor := crDefault;

end;

procedure TfmZFTOScore.dxBarButton4Click(Sender: TObject);
begin
  case TdxBarButton(Sender).ClickItemLink.Owner.Owner.Tag of
    2 : PrintcxGrid(cxGrid2DBBandedTableView1);
    3 : PrintcxGrid(cxGrid3DBBandedTableView1);
    4 : PrintcxGrid(cxGrid4DBBandedTableView1);
    5 : PrintcxGrid(cxGrid5DBBandedTableView1);
  end;
end;


procedure TfmZFTOScore.dxBarButton5Click(Sender: TObject);
var              i : integer;
  str_num_document : string;
       str_fact_id : string;
                 Q : TADOQuery;
begin
  if cxGrid3DBBandedTableView1.Controller.SelectedRecordCount = 0 then
    exit;

  Screen.Cursor := crHourglass;

  str_num_document := '';
  for i:=0 to cxGrid3DBBandedTableView1.Controller.SelectedRecordCount - 1 do
    str_num_document := str_num_document + ',''' + AnsiReplaceStr(VarToStr(cxGrid3DBBandedTableView1.Controller.SelectedRows[i].Values[cxGrid3DBBandedTableView1number_doc.Index]), '''', '''''') + '''';
  Delete(str_num_document, 1, 1);

  Q := TADOQuery.Create(nil);
  Q.Connection := fmMain.Lis;
  Q.SQL.Add('SELECT fact_id FROM fact WHERE isnull(num_document_pref, '''') + num_document in (' + str_num_document + ')');
  Q.Open;

  str_fact_id := '';
  while not Q.Eof do begin
    str_fact_id := str_fact_id + ',' + Q.Fields[0].AsString;
    Q.Next;
  end;
  Delete(str_fact_id, 1, 1);

  Screen.Cursor := crDefault;

  if str_fact_id <> '' then begin
    for i:=0 to fmMain.MDIChildCount-1 Do
      if (fmMain.MDIChildren[i].ClassName = 'TfmFact') then  fmMain.MDIChildren[i].Free;

    fmFact := TfmFact.Create(self, False);
    fmFact._SetStrFactid := str_fact_id;
  end else begin
    Application.MessageBox('Накладная не найдена!', 'Внимание', MB_ICONWARNING or MB_OK);
  end;

  Q.Free;
end;

procedure TfmZFTOScore.dxBarButton6Click(Sender: TObject);
begin
  if cxPageControl1.ActivePage = cxTabSheet2 then begin
    Fzfto_score_table_id := cxGrid3DBBandedTableView1zfto_score_table_id.DataBinding.Field.AsInteger;
    Fzfto_score_id := cxGrid2DBBandedTableView1zfto_score_id.DataBinding.Field.AsInteger;
  end else begin
    Fzfto_score_table_id := cxGrid5DBBandedTableView1zfto_score_table_id.DataBinding.Field.AsInteger;
    Fzfto_score_id := cxGrid5DBBandedTableView1zfto_score_id.DataBinding.Field.AsInteger;
  end;
  ModalResult := mrOk;
end;

procedure TfmZFTOScore.dxBarButton7Click(Sender: TObject);
type
  TFunc = function(AppHand: THandle; global_id: integer; caption: string; usr_pwd: PUser_pwd): variant;
var
  FShablon  : TFunc;
  handle    : THandle;
  v         : Variant;
begin
   handle := LoadLibrary('dictionary.dll');
   @FShablon := GetProcAddress(handle,'CreateWndDocBlob');
   v := FShablon(Application.Handle, cxGrid2DBBandedTableView1zfto_score_id.DataBinding.Field.AsInteger, 'Документы связанные с СФ ЦФТО №'+cxGrid2DBBandedTableView1fact_num.DataBinding.Field.AsString + ' [' + cxGrid2DBBandedTableView1zfto_score_id.DataBinding.Field.AsString + ']', usr_pwd);
   FreeLibrary(handle);

   RefreshQueryGrid(cxGrid2DBBandedTableView1, 'zfto_score_id');
end;

procedure TfmZFTOScore.dxBarButton8Click(Sender: TObject);
var
  i: integer;
  zfto_score_id: integer;
  file_name_dbf : string;
  Q : TADOQuery;
  SP: TADOStoredProc;

  bln_err : Boolean;
  str_file_name_dbf : string; // список имен файлов для открытbz в форме нарастающего факта
  str_msg : string;
begin
  //Копировать в нарастающий факт
  if Application.MessageBox('Копировать выбранные сч-ф в нарастающий факт?', 'ВНИМАНИЕ', MB_YESNO + MB_ICONQUESTION) = ID_YES then begin
    Screen.Cursor := crHourglass;

    str_file_name_dbf := '';
    bln_err := False;

    SP := TADOStoredProc.Create(nil);
    SP.Connection := fmMain.Lis;
    SP.CommandTimeout := 150;
    SP.ProcedureName := 'sp_zfto_copy_into_fact_inc2';
    SP.Parameters.Refresh;

    Q := TADOQuery.Create(nil);
    Q.Connection := fmMain.Lis;

    for i := 0 to cxGrid2DBBandedTableView1.Controller.SelectedRecordCount - 1 do begin
      str_msg := 'Счет-Фактура: ' + IntToStr(i + 1) + ' из ' + IntToStr(cxGrid2DBBandedTableView1.Controller.SelectedRecordCount) + #10;

      zfto_score_id := cxGrid2DBBandedTableView1.Controller.SelectedRecords[i].Values[cxGrid2DBBandedTableView1zfto_score_id.Index];
      file_name_dbf := '';

      Q.Close;
      Q.SQL.Text := 'select zfto_score_table_id from ZFTO_SCORE_TABLE where zfto_score_id = ' + IntToStr(zfto_score_id);
      Q.Open;

      while not Q.Eof do begin
        ShowTextMessage(str_msg + 'Вагон: ' + IntToStr(Q.RecNo) + ' из ' + IntToStr(Q.RecordCount), False);

        SP.Close;
        SP.Parameters.ParamByName('@file_name_dbf').Value := file_name_dbf;
        SP.Parameters.ParamByName('@zfto_score_table_id').Value := Q.FieldByName('zfto_score_table_id').Value;

        try
          SP.ExecProc;
          // получим назад имя файла
          // его будем передавать в качестве параметра для загрузки следующих вагонов
          // наличие имени файла будет сигнализировать о загрузке в рамках одной задачи
          // т.к. проводим проверку на повторную загрузку по имени файла,
          // то если не передать имя файла,
          // уже второй вагон будет отвергнут системой (такая СчФ уже скопирована)
          file_name_dbf := SP.Parameters.ParamByName('@file_name_dbf').Value;
          if Q.RecNo = 1 then begin
            if str_file_name_dbf <> '' then
              str_file_name_dbf := str_file_name_dbf + ', ';
            str_file_name_dbf := str_file_name_dbf + '''' + file_name_dbf + '''';
          end;

        except on E: Exception do begin
          bln_err := True;
          Break;
        end;
        end;

        Q.Next;
      end;

      if bln_err then Break;
    end;

    Q.Free;
    SP.Free;
    ShowTextMessage;
    Screen.Cursor := crDefault;

    // открываем окно
    if str_file_name_dbf <> '' then begin
      fmFactInc := nil;
      for i := 0 to fmMain.MDIChildCount - 1 do
        if fmMain.MDIChildren[i].ClassName = TfmFactInc.ClassName then
          fmFactInc := TfmFactInc(fmMain.MDIChildren[i]);
      if fmFactInc = nil then
        fmFactInc := TfmFactInc.Create(Application, False);

      fmFactInc.Show;
      str_file_name_dbf :=
        'SELECT * FROM view_fact_inc_temp' +
        ' WHERE (users_group_id = ' + IntToStr(usr_pwd.user_group_id) + ')' +
        ' AND (type_self = 7)' +
        ' AND (file_name_dbf in (' + str_file_name_dbf + '))';
      fmFactInc._GetData_DBF := str_file_name_dbf;
    end;


  end;
end;

{$REGION 'Копировать вагоны в оперативный факт'}
procedure TfmZFTOScore.dxBarButtonCopyToFactClick(Sender: TObject);
var    i : integer;
    SP : TADOStoredProc;
begin
  if Application.MessageBox('Действительно копировать вагоны в оперативный факт?', 'ВНИМАНИЕ', MB_OKCANCEL+MB_ICONWARNING) = IDOK then begin
    Screen.Cursor := crHourglass;
    SP := TADOStoredProc.Create(nil);
    SP.Connection := fmMain.Lis;
    SP.ProcedureName := 'sp_ZFTO_score_table_to_fact;1';
    SP.Parameters.Refresh;
    for i := 0 to cxGrid3DBBandedTableView1.Controller.SelectedRowCount - 1 do begin
      SP.Close;
      SP.Parameters.ParamByName('@zfto_score_table_id').Value := cxGrid3DBBandedTableView1.Controller.SelectedRows[i].Values[cxGrid3DBBandedTableView1zfto_score_table_id.Index];
      SP.ExecProc;
      ShowTextMessage('Осталось ' + IntToStr(cxGrid3DBBandedTableView1.Controller.SelectedRowCount - i) + ' записей...',  False);
    end;
    SP.Free;
    ShowTextMessage;
    Screen.Cursor := crDefault;
  end;
end;
{$ENDREGION 'Копировать вагоны в оперативный факт'}

procedure TfmZFTOScore.dxBarButton9Click(Sender: TObject);
begin
  if cxGrid5DBBandedTableView1zfto_score_id.DataBinding.Field.IsNull then
    exit;

  fmZFTOScoreAdd := TfmZFTOScoreAdd.Create(Application);
  fmZFTOScoreAdd._SetUpdate := cxGrid5DBBandedTableView1zfto_score_id.DataBinding.Field.AsInteger;
  if fmZFTOScoreAdd.ShowModal = mrOk then begin
    RefreshQueryGrid(FcxGridView, 'zfto_score_table_id');
  end;
end;

procedure TfmZFTOScore.dxBarButton_ADDScoreClick(Sender: TObject);
begin
  fmZFTOScoreAdd := TfmZFTOScoreAdd.Create(Application);
  fmZFTOScoreAdd._SetContract := StrToInt(VarToStr(iif(cxLookupComboBox1.EditValue = NULL, -9, cxLookupComboBox1.EditValue)));
  if fmZFTOScoreAdd.ShowModal = mrOk then begin
    RefreshQueryGrid(FcxGridView, 'zfto_score_id');
  end;
end;

procedure TfmZFTOScore.dxBarButton_AddZFTOClick(Sender: TObject);
type
  TFunc = function(AppHand: THandle; usr_pwd: PUser_pwd; type_table_cod, alias_name: string) : variant;
var OpenDialog      : TOpenDialog;
    Client_Records  : TClientDataSet;
    str_error       : string;
    Q               : TADOQuery;
    SP              : TADOStoredProc;
    FGlobalAlias    : TFunc;
    handle          : THandle;
    v               : Variant;
    d1, d2, d3      : TDateTime;
    type_file       : integer;
    filename        : string;
begin
  OpenDialog           := TOpenDialog.Create(self);
  OpenDialog.Filter    := 'Файлы dbf|*.dbf';
  OpenDialog.DefaultExt:= 'dbf';
  OpenDialog.Options   := [ofHideReadOnly,ofAllowMultiSelect,ofEnableSizing];
  d1 := Date();
  fmPeriod := TfmPeriod.Create(Application, d1, d2, 3);
  if fmPeriod.ShowModal<>mrOK then begin
    exit;
  end;
  d1 := fmPeriod._GetMonth;
  d2 := IncMonth(d1, 1) - 1;

  if not OpenDialog.Execute then begin
    OpenDialog.Free;
    exit;
  end;
  filename := OpenDialog.FileName;
  OpenDialog.Free;

  Q := TADOQuery.Create(nil);
  Q.Connection := fmMain.Lis;
  Q.SQL.Add('SELECT file_load FROM view_zfto_score_rights WHERE file_load = ''' + ExtractFileName(filename) + '''');
  Q.Open;
  if Q.RecordCount > 0 then begin
    Application.MessageBox('Информация из файла уже загружена!!!','Внимание',MB_OK);
    Q.Free;
    exit;
  end;

  Screen.Cursor := crHourglass;

  Client_Records := TClientDataSet.Create(nil);

  ShowTextMessage('Чтение информации из файла.', False);
  if ParserDBF(filename, Client_Records, str_error) = False then begin
    Application.MessageBox(Pchar(str_error),'Внимание',MB_OK);
    Q.Free;
    Client_Records.Free;
    Screen.Cursor := crDefault;
    ShowTextMessage();
    exit;
  end;

  if not checkFileDBF(iif((Client_Records.FindField('numact_cor') <> nil),2,1), Client_Records) then begin
    Q.Free;
    Client_Records.Free;
    Screen.Cursor := crDefault;
    exit;
  end;

  SP := TADOStoredProc.Create(nil);
  SP.Connection := fmMain.Lis;
  SP.CommandTimeout := 120;
  SP.ProcedureName := 'sp_load_dbf';
  SP.Parameters.Refresh;
  SP.Parameters.ParamByName('@type_action').Value := 4;
  SP.Parameters.ParamByName('@str_xml_load_dbf').Value := FormatXMLData(Client_Records.XMLData);
  SP.Parameters.ParamByName('@contract_id'  ).Value := cxLookupComboBox1.EditValue;
  try
    ShowTextMessage('Проверка информации.', False);
    SP.ExecProc;
  except
    Q.Free;
    Client_Records.Free;
    SP.Free;
    ShowTextMessage();
    Screen.Cursor := crDefault;
    exit;
  end;
  Client_Records.First;
  try
    while not Client_Records.Eof do begin
      ShowTextMessage('Осталось загрузить ' + IntToStr(Client_Records.RecordCount - Client_Records.RecNo + 1) + ' вагонов ...', False);
      SP.Parameters.Refresh;
      SP.Parameters.ParamByName('@type_action'  ).Value := 0;
      SP.Parameters.ParamByName('@date_load'    ).Value := d1;
      SP.Parameters.ParamByName('@file_load'    ).Value := ExtractFileName(filename);
      SP.Parameters.ParamByName('@contract_id'  ).Value := cxLookupComboBox1.EditValue;
      SP.Parameters.ParamByName('@fact_num'     ).Value := Client_Records.FieldByName('fact_num').Value;
      if TryStrToDate(COPY(Client_Records.FieldByName('fact_date').AsString, 7, 2) + '.' + COPY(Client_Records.FieldByName('fact_date').AsString, 5, 2) + '.' + COPY(Client_Records.FieldByName('fact_date').AsString, 1, 4),d3) then
        SP.Parameters.ParamByName('@fact_date'  ).Value := d3;
      if Client_Records.FindField('numact_cor') <> nil then
        SP.Parameters.ParamByName('@numact_cor' ).Value := Client_Records.FieldByName('numact_cor').Value;
      if Client_Records.FindField('datact_cor') <> nil then
        SP.Parameters.ParamByName('@datact_cor' ).Value := StrToDate(COPY(Client_Records.FieldByName('datact_cor').AsString, 7, 2) + '.' + COPY(Client_Records.FieldByName('datact_cor').AsString, 5, 2) + '.' + COPY(Client_Records.FieldByName('datact_cor').AsString, 1, 4));
      if Client_Records.FindField('sum_r_prev') <> nil then
        SP.Parameters.ParamByName('@sum_r_prev' ).Value := StrToCurr(ReplaceStr(Trim(VarToSTR(Client_Records.FieldByName('sum_r_prev').Value)),'.',','));
      if Client_Records.FindField('nds_r_prev') <> nil then
        SP.Parameters.ParamByName('@nds_r_prev' ).Value := StrToCurr(ReplaceStr(Trim(VarToSTR(Client_Records.FieldByName('nds_r_prev').Value)),'.',','));
      if Client_Records.FindField('sum_r_diff') <> nil then
        SP.Parameters.ParamByName('@sum_r_diff' ).Value := StrToCurr(ReplaceStr(Trim(VarToSTR(Client_Records.FieldByName('sum_r_diff').Value)),'.',','));
      if Client_Records.FindField('nds_r_diff') <> nil then
        SP.Parameters.ParamByName('@nds_r_diff' ).Value := StrToCurr(ReplaceStr(Trim(VarToSTR(Client_Records.FieldByName('nds_r_diff').Value)),'.',','));
      if Client_Records.FindField('sum_diff') <> nil then
        SP.Parameters.ParamByName('@sum_diff'   ).Value := StrToCurr(ReplaceStr(Trim(VarToSTR(Client_Records.FieldByName('sum_diff').Value)),'.',','));
      if Client_Records.FindField('nds_diff') <> nil then
        SP.Parameters.ParamByName('@nds_diff'   ).Value := StrToCurr(ReplaceStr(Trim(VarToSTR(Client_Records.FieldByName('nds_diff').Value)),'.',','));
      SP.Parameters.ParamByName('@number_act'   ).Value := Client_Records.FieldByName('number_act').Value;
      SP.Parameters.ParamByName('@locco'        ).Value := Client_Records.FieldByName('locco').Value;
      if TryStrToDate(COPY(Client_Records.FieldByName('date_act').AsString, 7, 2) + '.' + COPY(Client_Records.FieldByName('date_act').AsString, 5, 2) + '.' + COPY(Client_Records.FieldByName('date_act').AsString, 1, 4),d3) then
        SP.Parameters.ParamByName('@date_act'   ).Value := d3;
      SP.Parameters.ParamByName('@inn'          ).Value := Client_Records.FieldByName('inn').Value;
      SP.Parameters.ParamByName('@kpp'          ).Value := Client_Records.FieldByName('kpp').Value;
      SP.Parameters.ParamByName('@deb_name'     ).Value := Client_Records.FieldByName('deb_name').Value;
      SP.Parameters.ParamByName('@num_contr'    ).Value := Client_Records.FieldByName('num_contr').Value;
      SP.Parameters.ParamByName('@type_incom'   ).Value := Client_Records.FieldByName('type_incom').Value;
      if Client_Records.FindField('ktgrm_text') <> nil then
        SP.Parameters.ParamByName('@ktgrm_text'   ).Value := Client_Records.FieldByName('ktgrm_text').Value;
      if Client_Records.FindField('date_dep') <> nil then
        if TryStrToDate(COPY(Client_Records.FieldByName('date_dep').AsString, 7, 2) + '.' + COPY(Client_Records.FieldByName('date_dep').AsString, 5, 2) + '.' + COPY(Client_Records.FieldByName('date_dep').AsString, 1, 4),d3) then
          SP.Parameters.ParamByName('@date_dep'   ).Value := d3;
      if Client_Records.FindField('date_serv') <> nil then
        if TryStrToDate(COPY(Client_Records.FieldByName('date_serv').AsString, 7, 2) + '.' + COPY(Client_Records.FieldByName('date_serv').AsString, 5, 2) + '.' + COPY(Client_Records.FieldByName('date_serv').AsString, 1, 4),d3) then
          SP.Parameters.ParamByName('@date_serv'  ).Value := d3;
      if Client_Records.FindField('date_pr') <> nil then
        if TryStrToDate(COPY(Client_Records.FieldByName('date_pr').AsString, 7, 2) + '.' + COPY(Client_Records.FieldByName('date_pr').AsString, 5, 2) + '.' + COPY(Client_Records.FieldByName('date_pr').AsString, 1, 4),d3) then
          SP.Parameters.ParamByName('@date_pr'    ).Value := d3;
      if Client_Records.FindField('carddoctyp') <> nil then
        SP.Parameters.ParamByName('@carddoctyp'   ).Value := Client_Records.FieldByName('carddoctyp').Value;
      if Client_Records.FindField('rr_src') <> nil then
        SP.Parameters.ParamByName('@rr_src'       ).Value := Client_Records.FieldByName('rr_src').Value;
      if Client_Records.FindField('st_src') <> nil then
        SP.Parameters.ParamByName('@st_src'       ).Value := Client_Records.FieldByName('st_src').Value;
      if Client_Records.FindField('rr_tgt') <> nil then
        SP.Parameters.ParamByName('@rr_tgt'       ).Value := Client_Records.FieldByName('rr_tgt').Value;
      if Client_Records.FindField('st_tgt') <> nil then
        SP.Parameters.ParamByName('@st_tgt'       ).Value := Client_Records.FieldByName('st_tgt').Value;
      if Client_Records.FindField('number_doc') <> nil then
        SP.Parameters.ParamByName('@number_doc'   ).Value := Client_Records.FieldByName('number_doc').Value;
      if Client_Records.FindField('vagon_num') <> nil then
        SP.Parameters.ParamByName('@vagon_num'    ).Value := Client_Records.FieldByName('vagon_num').Value;
      if Client_Records.FindField('cont_num') <> nil then
        SP.Parameters.ParamByName('@cont_num'     ).Value := Client_Records.FieldByName('cont_num').Value;
      if Client_Records.FindField('fr_code') <> nil then
        SP.Parameters.ParamByName('@fr_code'      ).Value := Client_Records.FieldByName('fr_code').Value;
      if Client_Records.FindField('fr_weight') <> nil then
        SP.Parameters.ParamByName('@fr_weight'    ).Value := StrToFloat(Trim(ReplaceStr(VarToSTR(Client_Records.FieldByName('fr_weight').Value),'.',',')));
      if Client_Records.FindField('sum_wnds_rub') <> nil then
        SP.Parameters.ParamByName('@sum_wnds_rub' ).Value := StrToCurr(ReplaceStr(Trim(VarToSTR(Client_Records.FieldByName('sum_wnds_r').Value)),'.',','));
      if Client_Records.FindField('nds_rub') <> nil then
        SP.Parameters.ParamByName('@nds_rub'      ).Value := StrToCurr(Trim(ReplaceStr(VarToSTR(Client_Records.FieldByName('nds_rub').Value),'.',',')));
      if Client_Records.FindField('sum_rub') <> nil then
        SP.Parameters.ParamByName('@sum_rub'      ).Value := StrToCurr(Trim(ReplaceStr(VarToSTR(Client_Records.FieldByName('sum_rub').Value),'.',',')));
      if Client_Records.FindField('sum_wnds_usd') <> nil then
        SP.Parameters.ParamByName('@sum_wnds_usd' ).Value := StrToCurr(Trim(ReplaceStr(VarToSTR(Client_Records.FieldByName('sum_wnds_u').Value),'.',',')));
      if Client_Records.FindField('nds_usd') <> nil then
        SP.Parameters.ParamByName('@nds_usd'      ).Value := StrToCurr(Trim(ReplaceStr(VarToSTR(Client_Records.FieldByName('nds_usd').Value),'.',',')));
      if Client_Records.FindField('sum_usd') <> nil then
        SP.Parameters.ParamByName('@sum_usd'      ).Value := StrToCurr(Trim(ReplaceStr(VarToSTR(Client_Records.FieldByName('sum_usd').Value),'.',',')));
      if Client_Records.FindField('vidsoob') <> nil then
        SP.Parameters.ParamByName('@vidsoob'      ).Value := Client_Records.FieldByName('vidsoob').Value;
      if Client_Records.FindField('type_tr') <> nil then
        SP.Parameters.ParamByName('@type_tr'      ).Value := Client_Records.FieldByName('type_tr').Value;
      if Client_Records.FindField('waers') <> nil then
        SP.Parameters.ParamByName('@waers'        ).Value := Client_Records.FieldByName('waers').Value;
      if Client_Records.FindField('serv_code') <> nil then
        SP.Parameters.ParamByName('@serv_code'    ).Value := Client_Records.FieldByName('serv_code').Value;
      if Client_Records.FindField('invoiceidc') <> nil then
        SP.Parameters.ParamByName('@invoiceid'    ).Value := Client_Records.FieldByName('invoiceidc').Value;
      SP.Parameters.ParamByName('@set_grant'      ).Value := TdxBarButton(sender).Tag;

      SP.ExecProc;
      Client_Records.Next;
    end;
  except
    on E: Exception do begin
      Application.MessageBox(Pchar('Непредвиденная ошибка, обратитесь к разработчикам.' + #10 + E.Message),'Внимание',MB_OK);
      SP.Parameters.Refresh;
      SP.Parameters.ParamByName('@type_action'  ).Value := 2;
      SP.Parameters.ParamByName('@date_load'    ).Value := d1;
      SP.Parameters.ParamByName('@file_load'    ).Value := ExtractFileName(filename);
      SP.Parameters.ParamByName('@contract_id'  ).Value := cxLookupComboBox1.EditValue;
      try
        SP.ExecProc;
      except
      end;
    end;
  end;
  ShowTextMessage();
  Q.Free;
  Client_Records.Free;
  Screen.Cursor := crDefault;
  case cxPageControl1.ActivePageIndex of
    0 : begin
          SP_ZFTOScoreGet.Parameters.ParamByName('@contract_id').Value := Fcontract_id;
          RefreshQueryGrid(FcxGridView, 'zfto_score_id');
        end;
    1 : begin
          Query_ZFTOScorePeriod.Parameters.ParamByName('contract_id').Value := Fcontract_id;
          RefreshQueryGrid(FcxGridView, 'zfto_score_table_id');
        end;
  end;
end;

procedure TfmZFTOScore.dxBarButton_AddZFTONewClick(Sender: TObject);
type
  TFunc = function(AppHand: THandle; usr_pwd: PUser_pwd; type_table_cod, alias_name: string) : variant;
var OpenDialog      : TOpenDialog;
    Client_Records  : TClientDataSet;
    str_error       : string;
    Q               : TADOQuery;
    SP              : TADOStoredProc;
    FGlobalAlias    : TFunc;
    handle          : THandle;
    v               : Variant;
    d1, d2, d3      : TDateTime;
    type_file       : integer;
    filename        : string;
begin
  OpenDialog           := TOpenDialog.Create(self);
  OpenDialog.Filter    := 'Файлы dbf|*.dbf';
  OpenDialog.DefaultExt:= 'dbf';
  OpenDialog.Options   := [ofHideReadOnly,ofAllowMultiSelect,ofEnableSizing];
  d1 := Date();
  fmPeriod := TfmPeriod.Create(Application, d1, d2, 3);
  if fmPeriod.ShowModal<>mrOK then begin
    exit;
  end;
  d1 := fmPeriod._GetMonth;
  d2 := IncMonth(d1, 1) - 1;

  if not OpenDialog.Execute then begin
    OpenDialog.Free;
    exit;
  end;
  filename := OpenDialog.FileName;
  OpenDialog.Free;

  Q := TADOQuery.Create(nil);
  Q.Connection := fmMain.Lis;
  Q.SQL.Add('SELECT file_load FROM view_zfto_score_rights WHERE file_load = ''' + ExtractFileName(filename) + '''');
  Q.Open;
  if Q.RecordCount > 0 then begin
    Application.MessageBox('Информация из файла уже загружена!!!','Внимание',MB_OK);
    Q.Free;
    exit;
  end;

  Screen.Cursor := crHourglass;

  Client_Records := TClientDataSet.Create(nil);

  ShowTextMessage('Чтение информации из файла.', False);
  if ParserDBF(filename, Client_Records, str_error) = False then begin
    Application.MessageBox(Pchar(str_error),'Внимание',MB_OK);
    Q.Free;
    Client_Records.Free;
    Screen.Cursor := crDefault;
    ShowTextMessage();
    exit;
  end;

  if not checkFileDBF(iif((Client_Records.FindField('numact_cor') <> nil),5,1), Client_Records) then begin
    Q.Free;
    Client_Records.Free;
    Screen.Cursor := crDefault;
    exit;
  end;

  SP := TADOStoredProc.Create(nil);
  SP.Connection := fmMain.Lis;
  SP.CommandTimeout := 120;
  SP.ProcedureName := 'sp_load_dbf';
  SP.Parameters.Refresh;
  SP.Parameters.ParamByName('@type_action').Value := 4;
  SP.Parameters.ParamByName('@str_xml_load_dbf').Value := FormatXMLData(Client_Records.XMLData);
  SP.Parameters.ParamByName('@contract_id'  ).Value := cxLookupComboBox1.EditValue;
  try
    ShowTextMessage('Проверка информации.', False);
    SP.ExecProc;
  except
    Q.Free;
    Client_Records.Free;
    SP.Free;
    ShowTextMessage();
    Screen.Cursor := crDefault;
    exit;
  end;
  Client_Records.First;
  try
    while not Client_Records.Eof do begin
      ShowTextMessage('Осталось загрузить ' + IntToStr(Client_Records.RecordCount - Client_Records.RecNo + 1) + ' вагонов ...', False);
      SP.Parameters.Refresh;
      SP.Parameters.ParamByName('@type_action'  ).Value := 0;
      SP.Parameters.ParamByName('@date_load'    ).Value := d1;
      SP.Parameters.ParamByName('@file_load'    ).Value := ExtractFileName(filename);
      SP.Parameters.ParamByName('@contract_id'  ).Value := cxLookupComboBox1.EditValue;
      SP.Parameters.ParamByName('@fact_num'     ).Value := Client_Records.FieldByName('fact_num').Value;
      if Client_Records.FindField('fact_num_c') <> nil then
        SP.Parameters.ParamByName('@fact_num_c' ).Value := Client_Records.FieldByName('fact_num_c').Value;
      if TryStrToDate(COPY(Client_Records.FieldByName('fact_date').AsString, 7, 2) + '.' + COPY(Client_Records.FieldByName('fact_date').AsString, 5, 2) + '.' + COPY(Client_Records.FieldByName('fact_date').AsString, 1, 4),d3) then
        SP.Parameters.ParamByName('@fact_date'  ).Value := d3;
      if Client_Records.FindField('numact_cor') <> nil then
        SP.Parameters.ParamByName('@numact_cor' ).Value := Client_Records.FieldByName('numact_cor').Value;
      if Client_Records.FindField('datact_cor') <> nil then
        SP.Parameters.ParamByName('@datact_cor' ).Value := StrToDate(COPY(Client_Records.FieldByName('datact_cor').AsString, 7, 2) + '.' + COPY(Client_Records.FieldByName('datact_cor').AsString, 5, 2) + '.' + COPY(Client_Records.FieldByName('datact_cor').AsString, 1, 4));
      if Client_Records.FindField('sum_r_prev') <> nil then
        SP.Parameters.ParamByName('@sum_r_prev' ).Value := StrToCurr(ReplaceStr(Trim(VarToSTR(Client_Records.FieldByName('sum_r_prev').Value)),'.',','));
      if Client_Records.FindField('nds_r_prev') <> nil then
        SP.Parameters.ParamByName('@nds_r_prev' ).Value := StrToCurr(ReplaceStr(Trim(VarToSTR(Client_Records.FieldByName('nds_r_prev').Value)),'.',','));
      if Client_Records.FindField('sum_r_diff') <> nil then
        SP.Parameters.ParamByName('@sum_r_diff' ).Value := StrToCurr(ReplaceStr(Trim(VarToSTR(Client_Records.FieldByName('sum_r_diff').Value)),'.',','));
      if Client_Records.FindField('nds_r_diff') <> nil then
        SP.Parameters.ParamByName('@nds_r_diff' ).Value := StrToCurr(ReplaceStr(Trim(VarToSTR(Client_Records.FieldByName('nds_r_diff').Value)),'.',','));
      if Client_Records.FindField('sum_diff') <> nil then
        SP.Parameters.ParamByName('@sum_diff'   ).Value := StrToCurr(ReplaceStr(Trim(VarToSTR(Client_Records.FieldByName('sum_diff').Value)),'.',','));
      if Client_Records.FindField('nds_diff') <> nil then
        SP.Parameters.ParamByName('@nds_diff'   ).Value := StrToCurr(ReplaceStr(Trim(VarToSTR(Client_Records.FieldByName('nds_diff').Value)),'.',','));
      SP.Parameters.ParamByName('@number_act'   ).Value := Client_Records.FieldByName('number_act').Value;
      SP.Parameters.ParamByName('@locco'        ).Value := Client_Records.FieldByName('locco').Value;
      if TryStrToDate(COPY(Client_Records.FieldByName('date_act').AsString, 7, 2) + '.' + COPY(Client_Records.FieldByName('date_act').AsString, 5, 2) + '.' + COPY(Client_Records.FieldByName('date_act').AsString, 1, 4),d3) then
        SP.Parameters.ParamByName('@date_act'   ).Value := d3;
      SP.Parameters.ParamByName('@inn'          ).Value := Client_Records.FieldByName('inn').Value;
      SP.Parameters.ParamByName('@kpp'          ).Value := Client_Records.FieldByName('kpp').Value;
      SP.Parameters.ParamByName('@deb_name'     ).Value := Client_Records.FieldByName('deb_name').Value;
      SP.Parameters.ParamByName('@num_contr'    ).Value := Client_Records.FieldByName('num_contr').Value;
      SP.Parameters.ParamByName('@type_incom'   ).Value := Client_Records.FieldByName('type_incom').Value;
      if Client_Records.FindField('ktgrm_text') <> nil then
        SP.Parameters.ParamByName('@ktgrm_text'   ).Value := Client_Records.FieldByName('ktgrm_text').Value;
      if Client_Records.FindField('date_dep') <> nil then
        if TryStrToDate(COPY(Client_Records.FieldByName('date_dep').AsString, 7, 2) + '.' + COPY(Client_Records.FieldByName('date_dep').AsString, 5, 2) + '.' + COPY(Client_Records.FieldByName('date_dep').AsString, 1, 4),d3) then
          SP.Parameters.ParamByName('@date_dep'   ).Value := d3;
      if Client_Records.FindField('date_serv') <> nil then
        if TryStrToDate(COPY(Client_Records.FieldByName('date_serv').AsString, 7, 2) + '.' + COPY(Client_Records.FieldByName('date_serv').AsString, 5, 2) + '.' + COPY(Client_Records.FieldByName('date_serv').AsString, 1, 4),d3) then
          SP.Parameters.ParamByName('@date_serv'  ).Value := d3;
      if Client_Records.FindField('date_pr') <> nil then
        if TryStrToDate(COPY(Client_Records.FieldByName('date_pr').AsString, 7, 2) + '.' + COPY(Client_Records.FieldByName('date_pr').AsString, 5, 2) + '.' + COPY(Client_Records.FieldByName('date_pr').AsString, 1, 4),d3) then
          SP.Parameters.ParamByName('@date_pr'    ).Value := d3;
      if Client_Records.FindField('carddoctyp') <> nil then
        SP.Parameters.ParamByName('@carddoctyp'   ).Value := Client_Records.FieldByName('carddoctyp').Value;
      if Client_Records.FindField('rr_src') <> nil then
        SP.Parameters.ParamByName('@rr_src'       ).Value := Client_Records.FieldByName('rr_src').Value;
      if Client_Records.FindField('st_src') <> nil then
        SP.Parameters.ParamByName('@st_src'       ).Value := Client_Records.FieldByName('st_src').Value;
      if Client_Records.FindField('rr_tgt') <> nil then
        SP.Parameters.ParamByName('@rr_tgt'       ).Value := Client_Records.FieldByName('rr_tgt').Value;
      if Client_Records.FindField('st_tgt') <> nil then
        SP.Parameters.ParamByName('@st_tgt'       ).Value := Client_Records.FieldByName('st_tgt').Value;
      if Client_Records.FindField('number_doc') <> nil then
        SP.Parameters.ParamByName('@number_doc'   ).Value := Client_Records.FieldByName('number_doc').Value;
      if Client_Records.FindField('vagon_num') <> nil then
        SP.Parameters.ParamByName('@vagon_num'    ).Value := Client_Records.FieldByName('vagon_num').Value;
      if Client_Records.FindField('cont_num') <> nil then
        SP.Parameters.ParamByName('@cont_num'     ).Value := Client_Records.FieldByName('cont_num').Value;
      if Client_Records.FindField('fr_code') <> nil then
        SP.Parameters.ParamByName('@fr_code'      ).Value := Client_Records.FieldByName('fr_code').Value;
      if Client_Records.FindField('fr_weight') <> nil then
        SP.Parameters.ParamByName('@fr_weight'    ).Value := StrToFloat(Trim(ReplaceStr(VarToSTR(Client_Records.FieldByName('fr_weight').Value),'.',',')));
      if Client_Records.FindField('sum_wnds_rub') <> nil then
        SP.Parameters.ParamByName('@sum_wnds_rub' ).Value := StrToCurr(ReplaceStr(Trim(VarToSTR(Client_Records.FieldByName('sum_wnds_r').Value)),'.',','));
      if Client_Records.FindField('nds_rub') <> nil then
        SP.Parameters.ParamByName('@nds_rub'      ).Value := StrToCurr(Trim(ReplaceStr(VarToSTR(Client_Records.FieldByName('nds_rub').Value),'.',',')));
      if Client_Records.FindField('sum_rub') <> nil then
        SP.Parameters.ParamByName('@sum_rub'      ).Value := StrToCurr(Trim(ReplaceStr(VarToSTR(Client_Records.FieldByName('sum_rub').Value),'.',',')));
      if Client_Records.FindField('sum_wnds_usd') <> nil then
        SP.Parameters.ParamByName('@sum_wnds_usd' ).Value := StrToCurr(Trim(ReplaceStr(VarToSTR(Client_Records.FieldByName('sum_wnds_u').Value),'.',',')));
      if Client_Records.FindField('nds_usd') <> nil then
        SP.Parameters.ParamByName('@nds_usd'      ).Value := StrToCurr(Trim(ReplaceStr(VarToSTR(Client_Records.FieldByName('nds_usd').Value),'.',',')));
      if Client_Records.FindField('sum_usd') <> nil then
        SP.Parameters.ParamByName('@sum_usd'      ).Value := StrToCurr(Trim(ReplaceStr(VarToSTR(Client_Records.FieldByName('sum_usd').Value),'.',',')));
      if Client_Records.FindField('vidsoob') <> nil then
        SP.Parameters.ParamByName('@vidsoob'      ).Value := Client_Records.FieldByName('vidsoob').Value;
      if Client_Records.FindField('type_tr') <> nil then
        SP.Parameters.ParamByName('@type_tr'      ).Value := Client_Records.FieldByName('type_tr').Value;
      if Client_Records.FindField('waers') <> nil then
        SP.Parameters.ParamByName('@waers'        ).Value := Client_Records.FieldByName('waers').Value;
      if Client_Records.FindField('serv_code') <> nil then
        SP.Parameters.ParamByName('@serv_code'    ).Value := Client_Records.FieldByName('serv_code').Value;
      if Client_Records.FindField('invoiceidc') <> nil then
        SP.Parameters.ParamByName('@invoiceid'    ).Value := Client_Records.FieldByName('invoiceidc').Value;
      SP.Parameters.ParamByName('@set_grant'      ).Value := TdxBarButton(sender).Tag;

      SP.ExecProc;
      Client_Records.Next;
    end;
  except
    on E: Exception do begin
      Application.MessageBox(Pchar('Непредвиденная ошибка, обратитесь к разработчикам.' + #10 + E.Message),'Внимание',MB_OK);
      SP.Parameters.Refresh;
      SP.Parameters.ParamByName('@type_action'  ).Value := 2;
      SP.Parameters.ParamByName('@date_load'    ).Value := d1;
      SP.Parameters.ParamByName('@file_load'    ).Value := ExtractFileName(filename);
      SP.Parameters.ParamByName('@contract_id'  ).Value := cxLookupComboBox1.EditValue;
      try
        SP.ExecProc;
      except
      end;
    end;
  end;
  ShowTextMessage();
  Q.Free;
  Client_Records.Free;
  Screen.Cursor := crDefault;
  case cxPageControl1.ActivePageIndex of
    0 : begin
          SP_ZFTOScoreGet.Parameters.ParamByName('@contract_id').Value := Fcontract_id;
          RefreshQueryGrid(FcxGridView, 'zfto_score_id');
        end;
    1 : begin
          Query_ZFTOScorePeriod.Parameters.ParamByName('contract_id').Value := Fcontract_id;
          RefreshQueryGrid(FcxGridView, 'zfto_score_table_id');
        end;
  end;
end;

{$REGION 'Копировать в перевозку другой группы'}
procedure TfmZFTOScore.dxBarButton_CopyFactBargainClick(Sender: TObject);
var new_str : string;
    i       : integer;
    SP      : TADOStoredProc;begin
  if InputQuery('Копировать в перевозку', '№ приложения (последняя колонка)', new_str) then begin
    Screen.Cursor := crHourglass;
    SP := TADOStoredProc.Create(nil);
    SP.Connection := fmMain.Lis;
    SP.ProcedureName := 'sp_ZFTO_score_table_to_fact;1';
    SP.Parameters.Refresh;
    try
      for i := 0 to cxGrid3DBBandedTableView1.Controller.SelectedRowCount - 1 do begin
        SP.Close;
        SP.Parameters.ParamByName('@zfto_score_table_id').Value := cxGrid3DBBandedTableView1.Controller.SelectedRows[i].Values[cxGrid3DBBandedTableView1zfto_score_table_id.Index];
        SP.Parameters.ParamByName('@bargain_id').Value := StrToInt(new_str);
        SP.ExecProc;
        ShowTextMessage('Осталось ' + IntToStr(cxGrid3DBBandedTableView1.Controller.SelectedRowCount - i) + ' записей...',  False);
      end;
      SP.Free;
    finally
      ShowTextMessage;
      Screen.Cursor := crDefault;
    end;
  end;

end;

procedure TfmZFTOScore.dxBarButton_CopyFactBargainGroupClick(Sender: TObject);
var   i               : integer;
      SP              : TADOStoredProc;
      new_users_id    : integer;
      new_str         : string;
      new_users_name  : string;
begin
  if Application.MessageBox('Действительно копировать вагоны в перевозку другой группы?', 'ВНИМАНИЕ', MB_OKCANCEL+MB_ICONWARNING) = IDOK then begin
    if not SetFirmSelf(new_users_id, new_users_name, fmMain.Lis, usr_pwd) then begin
      Application.MessageBox('Не выбрана организация.', 'Ошибка', MB_OK+MB_ICONERROR);
      exit;
    end;
    if not InputQuery('Копировать факт в перевозку', '№ записи перевозки', new_str) then
      exit;
      // проверим наличие перевозки
    if not checkBargain(StrToInt(new_str), new_users_name, usr_pwd) then begin
      Application.MessageBox('Перевозка не найдена','Внимание',MB_OK+MB_ICONERROR);
      Exit;
    end;
    Screen.Cursor := crHourglass;
    SP := TADOStoredProc.Create(nil);
    SP.Connection := fmMain.Lis;
    SP.ProcedureName := 'sp_ZFTO_score_table_to_fact;1';
    SP.Parameters.Refresh;
    for i := 0 to cxGrid3DBBandedTableView1.Controller.SelectedRowCount - 1 do begin
      SP.Close;
      SP.Parameters.ParamByName('@zfto_score_table_id').Value := cxGrid3DBBandedTableView1.Controller.SelectedRows[i].Values[cxGrid3DBBandedTableView1zfto_score_table_id.Index];
      SP.ExecProc;
      copyFactBargain(SP.Parameters.ParamByName('@fact_id').Value, StrToInt(new_str), new_users_id, fmMain.Lis);
      ShowTextMessage('Осталось ' + IntToStr(cxGrid3DBBandedTableView1.Controller.SelectedRowCount - i) + ' записей...',  False);
    end;
    SP.Free;
    ShowTextMessage;
    Screen.Cursor := crDefault;
  end;
end;
{$ENDREGION 'Копировать в перевозку другой группы'}

procedure TfmZFTOScore.SetFindZFTOScore(set_find: boolean);
begin
  if set_find = True then begin
    cxPageControl1.ActivePage := cxTabSheet3;
  end;
end;

{$REGION 'Удалить инф-цию ЦФТО'}
procedure TfmZFTOScore.dxBarButton_DelZFTOClick(Sender: TObject);
var SP : TADOStoredProc;
     Q : TADOQuery;
begin
  if (cxGrid2DBBandedTableView1.DataController.DataSource.DataSet.Active) and (not cxGrid2DBBandedTableView1file_load.DataBinding.Field.IsNull) then begin
    if Application.MessageBox(PChar('Удалить информацию загруженную из файла?'), 'Внимание', MB_OKCANCEL) = ID_OK then begin
      Q := TADOQuery.Create(nil);
      Q.Connection := fmMain.Lis;
      Q.SQL.Add('SELECT ROW_NUMBER() OVER (ORDER BY date_load desc) AS [id], date_load as cod, file_load as name FROM view_ZFTO_SCORE_rights ' +
                ' WHERE (date_load BETWEEN :date_begin and :date_end ) AND (contract_id = :contract_id)'+
                ' GROUP BY file_load, date_load');
      Q.Parameters.ParamByName('date_begin' ).Value := Fdate1;
      Q.Parameters.ParamByName('date_end'   ).Value := Fdate2;
      Q.Parameters.ParamByName('contract_id').Value := cxLookupComboBox1.EditValue;
      Q.Open;

      fmFilter := TfmFilter.Create(0, Q, 'id', 'cod', 'name');
      fmFilter._SetFileZFTO := True;
      if fmFilter.ShowModal <> mrOk then begin
  //        SP_BargainCopy.Parameters.ParamByName('@contract_id').Value := fmFilter.GetId;
        Q.Free;
        exit;
      end;
      Q.Free;
      try
        Screen.Cursor := crHourglass;
        SP := TADOStoredProc.Create(nil);
        SP.Connection := fmMain.Lis;
        SP.CommandTimeout := 120;
        SP.ProcedureName := 'sp_load_dbf';
        SP.Parameters.Refresh;
        SP.Parameters.ParamByName('@type_action'  ).Value := 2;
        SP.Parameters.ParamByName('@date_load'    ).Value := StrToDate(fmFilter.GetCod);
        SP.Parameters.ParamByName('@file_load'    ).Value := fmFilter.GetName;
        SP.Parameters.ParamByName('@contract_id'  ).Value := cxLookupComboBox1.EditValue;
        SP.ExecProc;
        RefreshQueryGrid(FcxGridView, 'zfto_score_id');
        Screen.Cursor := crDefault;
      finally
        SP.Free;
      end;
    end;
  end;
end;
{$ENDREGION 'Удалить инф-цию ЦФТО'}

{$REGION 'Фильтр по всем записям'}
procedure TfmZFTOScore.dxBarButton_FilterRecords1Click(Sender: TObject);
begin
  cxGrid2DBBandedTableView1.Filtering.ColumnFilteredItemsList := not dxBarButton_FilterRecords1.Down;
end;

procedure TfmZFTOScore.dxBarButton_FilterRecords2Click(Sender: TObject);
begin
  cxGrid4DBBandedTableView1.Filtering.ColumnFilteredItemsList := not dxBarButton_FilterRecords2.Down;
end;

procedure TfmZFTOScore.dxBarButton_FilterRecords3Click(Sender: TObject);
begin
  cxGrid3DBBandedTableView1.Filtering.ColumnFilteredItemsList := not dxBarButton_FilterRecords3.Down;
end;

procedure TfmZFTOScore.dxBarButton_FilterRecords4Click(Sender: TObject);
begin
  cxGrid5DBBandedTableView1.Filtering.ColumnFilteredItemsList := not dxBarButton_FilterRecords4.Down;
end;
{$ENDREGION 'Фильтр по всем записям'}

{$REGION 'Добавить примечание'}
procedure TfmZFTOScore.dxBarButton_NoteAddClick(Sender: TObject);
var i  : integer;
    SP : TADOStoredProc;
    Query_NameService : TADOQuery;
    service_kind_id : integer;
begin
  if cxGrid2DBBandedTableView1.Controller.SelectedRecordCount  = 0 then
    exit;

  // выбор услуги
  service_kind_id := -9;
  if cxGrid2DBBandedTableView1.Controller.SelectedRows[0].Values[cxGrid2DBBandedTableView1service_kind_id.Index] <> null then
    service_kind_id := cxGrid2DBBandedTableView1.Controller.SelectedRows[0].Values[cxGrid2DBBandedTableView1service_kind_id.Index];

  Query_NameService := TADOQuery.Create(nil);
  Query_NameService.Connection := fmMain.Lis;
  Query_NameService.SQL.Text := 'select * from inf_obj where type_inf_id = 128 AND (dbo.GetInfObjVisible(str_group_visible) = 1) order by inf_obj_name';
  Query_NameService.Open;

  fmFilter := TfmFilter.Create(0, Query_NameService, 'inf_obj_id', 'inf_obj_cod', 'inf_obj_name_full');
  fmFilter.SetId := service_kind_id;
  fmFilter._SetServiceKind := True;
  fmFilter._SelectIndexColumn := 1;

  service_kind_id := -9;
  if fmFilter.ShowModal = mrOk then
    service_kind_id := fmFilter.GetId;

  Query_NameService.Free;

  // Обновление
  if service_kind_id <> -9 then begin
    SP := TADOStoredProc.Create(nil);
    SP.Connection := fmMain.Lis;
    SP.ProcedureName := 'sp_zfto_score_note2';
    SP.Parameters.Refresh;

    try

      Screen.Cursor := crHourglass;
      for i := 0 to cxGrid2DBBandedTableView1.Controller.SelectedRecordCount - 1 do begin
        SP.Close;
        SP.Parameters.ParamByName('@zfto_score_id'   ).Value := cxGrid2DBBandedTableView1.Controller.SelectedRows[i].Values[cxGrid2DBBandedTableView1zfto_score_id.Index];
        SP.Parameters.ParamByName('@service_kind_id' ).Value := service_kind_id;
        SP.ExecProc;
        ShowTextMessage('Осталось '+IntToStr(cxGrid2DBBandedTableView1.Controller.SelectedRowCount - i)+' строк...', False);
      end;

      case cxPageControl1.ActivePageIndex of
        0 : begin
              SP_ZFTOScoreGet.Parameters.ParamByName('@contract_id').Value := Fcontract_id;
              RefreshQueryGrid(FcxGridView, 'zfto_score_id');
            end;
        1 : begin
              Query_ZFTOScorePeriod.Parameters.ParamByName('contract_id').Value := Fcontract_id;
              RefreshQueryGrid(FcxGridView, 'zfto_score_table_id');
            end;
      end;
    finally
      ShowTextMessage();
      SP.Free;
      Screen.Cursor := crDefault;
    end;
  end;
end;
{$ENDREGION 'Добавить примечание'}

{$REGION 'Редактировать счет-фактуру'}
procedure TfmZFTOScore.dxBarButton_EditSFClick(Sender: TObject);
begin
  if cxGrid2DBBandedTableView1zfto_score_id.DataBinding.Field.IsNull then
    exit;

  fmZFTOScoreAdd := TfmZFTOScoreAdd.Create(Application);
  fmZFTOScoreAdd._SetUpdate := cxGrid2DBBandedTableView1zfto_score_id.DataBinding.Field.AsInteger;
  if fmZFTOScoreAdd.ShowModal = mrOk then begin
    RefreshQueryGrid(FcxGridView, 'zfto_score_id');
  end;
end;
{$ENDREGION 'Редактировать счет-фактуру'}

{$REGION 'Удалить счет-фактуру'}
procedure TfmZFTOScore.dxBarButton_DeleteSFClick(Sender: TObject);
var  i : integer;
    SP : TADOStoredProc;
begin
  if Application.MessageBox('Вы уверены, что хотите удалить счет-фактуру?', 'Внимание', MB_OKCANCEL) = IDOK then begin
    Screen.Cursor := crHourglass;

    SP := TADOStoredProc.Create(nil);
    SP.Connection := fmMain.Lis;
    SP.ProcedureName := 'sp_zfto_score_modify;1';
    SP.Parameters.Refresh;

    for i := 0 to FcxGridView.Controller.SelectedRowCount - 1 do begin
      if cxGrid2DBBandedTableView1.Controller.SelectedRows[i].Values[cxGrid2DBBandedTableView1.GetColumnByFieldName('set_auto').Index] = False then begin
        SP.Close;
        SP.Parameters.ParamByName('@type_action').Value := 2;
        SP.Parameters.ParamByName('@zfto_score_id').Value := cxGrid2DBBandedTableView1.Controller.SelectedRows[i].Values[cxGrid2DBBandedTableView1.GetColumnByFieldName('zfto_score_id').Index];
        SP.Parameters.ParamByName('@zfto_score_act_id').Value := cxGrid2DBBandedTableView1.Controller.SelectedRows[i].Values[cxGrid2DBBandedTableView1.GetColumnByFieldName('zfto_score_act_id').Index];
        SP.Parameters.ParamByName('@contract_id').Value := cxLookupComboBox1.EditValue;
        try
          SP.ExecProc;
        except
        end;
      end;
      ShowTextMessage('Осталось '+IntToStr(FcxGridView.Controller.SelectedRowCount - i)+' строк...', False);
    end;
    RefreshQueryGrid(FcxGridView, 'zfto_score_id');
    SP.Free;
    ShowTextMessage;
    Screen.Cursor := crDefault;
  end;
end;
{$ENDREGION 'Удалить счет-фактуру'}

{$REGION 'Отчёт по сч-ф в разрезе клиентов'}
procedure TfmZFTOScore.dxBarButton_ReportClientClick(Sender: TObject);
var    exApp,exWkb, exWks : variant;
                 line_cnt : integer;
     date_begin, date_end : TDateTime;
     str_firm_customer_id : string;
          str_contract_id : string;
                        i : integer;
                       Q  : TADOQuery;
            zfto_score_id : integer;
              count_group : integer;
begin
  date_begin := Fdate1;
  date_end   := Fdate2;
  fmPeriod := TfmPeriod.Create(Application, date_begin, date_end, 2);
  if fmPeriod.ShowModal=mrOK then begin
    date_begin := fmPeriod._GetMonthBegin;
    date_end   := fmPeriod._GetMonthEnd;
  end else exit;
  Screen.Cursor := crHourglass;
  Q := TADOQuery.Create(nil);
  Q.Connection := fmMain.Lis;
  Q.SQL.Add('SELECT zs.zfto_score_id, itog_ndsr = CASE WHEN ISNULL(zst.serv_code, ''-8'') = ''048'' THEN NULL ELSE SUM(zsf.itog_ndsr) END, ' +
                  ' itogr = CASE WHEN ISNULL(zst.serv_code, ''-8'') = ''048'' THEN SUM(ISNULL(zsf.itog_TD, 0)) ELSE SUM(ISNULL(zsf.itogr,0)-ISNULL(zsf.itog_TD, 0)) END, ' +
                  ' zsf.firm_customer_name, ISNULL(zs.fact_num_c, zs.fact_num) as fact_num, CASE WHEN zs.fact_num_c is NULL THEN zs.fact_date ELSE za.date_act END as fact_date, g.comment, ss.sum_rub FROM ZFTO_SCORE zs ' +
            ' INNER JOIN ZFTO_SCORE_ACT za ON za.zfto_score_act_id = zs.zfto_score_act_id ' +
            ' INNER JOIN GLOBAL_ID g ON zs.zfto_score_id = g.global_id ' +
            ' INNER JOIN (SELECT zfto_score_id, SUM(sum_rub) AS sum_rub, SUM(sum_usd) AS sum_usd, waers FROM zfto_score_table GROUP BY zfto_score_id, waers) ss ON zs.zfto_score_id = ss.zfto_score_id ' +
            ' INNER JOIN (SELECT serv_code = CASE WHEN ISNULL(serv_code, ''-8'') = ''048'' THEN ''048'' ELSE ''-8'' END, zfto_score_id ' +
                          ' FROM zfto_score_table GROUP BY zfto_score_id, CASE WHEN ISNULL(serv_code, ''-8'') = ''048'' THEN ''048'' ELSE ''-8'' END) zst ON zs.zfto_score_id = zst.zfto_score_id ' +
            ' LEFT JOIN view_zfto_score_fact_inc zsf ON zs.zfto_score_id = zsf.zfto_score_id ' +
            ' WHERE (zs.date_load >= :date_begin AND zs.date_load <= :date_end)  AND za.set_grant = 0 AND za.contract_id = '  + VarToStr(cxLookupComboBox1.EditValue) +
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

end.




