unit OrdersAgree;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Vcl.Graphics, Vcl.Controls, Vcl.Forms,
  Vcl.Dialogs, cxPropertiesStore, dxBar, cxClasses, cxControls, cxSplitter, Vcl.ExtCtrls,
  cxContainer, cxEdit, cxLabel, cxStyles, cxCustomData, cxGraphics, cxFilter, cxData,
  cxDataStorage, DB, cxDBData, cxCurrencyEdit, cxCheckBox, cxColorComboBox, cxGridLevel,
  cxGridCustomTableView, cxGridTableView, DateUtils, System.Win.ComObj, Default,
  cxGridBandedTableView, cxGridDBBandedTableView, cxGridCustomView, cxGrid, ADODB, cxRadioGroup, cxBarEditItem, cxPC, Vcl.ImgList,
  cxLookAndFeels, cxLookAndFeelPainters, dxSkinsCore, dxSkinBlack, dxSkinBlue, dxSkinBlueprint, dxSkinCaramel, dxSkinCoffee, dxSkinDarkRoom,
  dxSkinDarkSide, dxSkinDevExpressDarkStyle, dxSkinDevExpressStyle, dxSkinFoggy, dxSkinGlassOceans, dxSkinHighContrast, dxSkiniMaginary, dxSkinLilian,
  dxSkinLiquidSky, dxSkinLondonLiquidSky, dxSkinMcSkin, dxSkinMetropolis, dxSkinMetropolisDark, dxSkinMoneyTwins, dxSkinOffice2007Black,
  dxSkinOffice2007Blue, dxSkinOffice2007Green, dxSkinOffice2007Pink, dxSkinOffice2007Silver, dxSkinOffice2010Black, dxSkinOffice2010Blue,
  dxSkinOffice2010Silver, dxSkinOffice2013DarkGray, dxSkinOffice2013LightGray, dxSkinOffice2013White, dxSkinPumpkin, dxSkinSeven, dxSkinSevenClassic,
  dxSkinSharp, dxSkinSharpPlus, dxSkinSilver, dxSkinSpringTime, dxSkinStardust, dxSkinSummer2008, dxSkinTheAsphaltWorld, dxSkinsDefaultPainters,
  dxSkinValentine, dxSkinVS2010, dxSkinWhiteprint, dxSkinXmas2008Blue, dxSkinscxPCPainter, dxBarBuiltInMenu, cxNavigator, dxSkinsdxBarPainter,
  dxSkinOffice2016Colorful, dxSkinOffice2016Dark, dxSkinVisualStudio2013Blue,
  dxSkinVisualStudio2013Dark, dxSkinVisualStudio2013Light, System.ImageList,
  cxImageList, cxCalendar,
  cxDataControllerConditionalFormattingRulesManagerDialog, dxSkinTheBezier, dxDateRanges, dxSkinOffice2019Colorful, dxScrollbarAnnotations;

type
  TfmOrdersAgree = class(TForm)
    cxPropertiesStore1: TcxPropertiesStore;
    dxBarManager1: TdxBarManager;
    dxBarManager1Bar1: TdxBar;
    dxBarButton1: TdxBarButton;
    dxBarButton3: TdxBarButton;
    dxBarButton4: TdxBarButton;
    dxBarButton5: TdxBarButton;
    dxBarButton6: TdxBarButton;
    dxBarSubItem1: TdxBarSubItem;
    dxBarSubItem2: TdxBarSubItem;
    dxBarSubItem3: TdxBarSubItem;
    dxBarButton7: TdxBarButton;
    dxBarButton8: TdxBarButton;
    dxBarButton9: TdxBarButton;
    Panel1: TPanel;
    cxSplitter4: TcxSplitter;
    cxGrid1: TcxGrid;
    cxGrid1DBBandedTableView1: TcxGridDBBandedTableView;
    cxGrid1Level1: TcxGridLevel;
    cxPageControl1: TcxPageControl;
    cxTabSheet1: TcxTabSheet;
    cxTabSheet2: TcxTabSheet;
    dxBarPopupMenu1: TdxBarPopupMenu;
    dxBarSubItem4: TdxBarSubItem;
    dxBarButton15: TdxBarButton;
    dxBarButton16: TdxBarButton;
    dxBarButton17: TdxBarButton;
    dxBarButton18: TdxBarButton;
    dxBarButton19: TdxBarButton;
    dxBarButton20: TdxBarButton;
    cxGrid3: TcxGrid;
    cxGrid3DBBandedTableView1: TcxGridDBBandedTableView;
    cxGridLevel2: TcxGridLevel;
    Query_OrdersAgreeRail: TADOQuery;
    DS_OrdersAgreeRail: TDataSource;
    DS_OrdersAgree: TDataSource;
    dxBarButton22: TdxBarButton;
    dxBarSeparator1: TdxBarSeparator;
    DS_OrdersAgreeRail_List: TDataSource;
    dxBarPopupMenu2: TdxBarPopupMenu;
    dxBarSubItem6: TdxBarSubItem;
    dxBarPopupMenu3: TdxBarPopupMenu;
    dxBarSubItem7: TdxBarSubItem;
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
    dxBarButton14: TdxBarButton;
    Query_Bargain: TADOQuery;
    DS_Bargain: TDataSource;
    dxBarButton_FilterRecords1: TdxBarButton;
    dxBarButton_FilterRecords2: TdxBarButton;
    dxBarButton_FilterRecords3: TdxBarButton;
    dxBarButton21: TdxBarButton;
    dxBarButton23: TdxBarButton;
    cxImageList1: TcxImageList;
    Query_OrdersAgree: TADOQuery;
    cxGrid1DBBandedTableView1orders_agree_id: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1FIO_users_owner: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1date_enter: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1global_color: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1orders_agree_cod: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1contract_id: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1contract_cod: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1firm_self: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1firm_self_name: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1firm_customer: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1firm_customer_name: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1currency_id: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1brief_name: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1date_period: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1kargoGNG_name: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1kargoETSNG_name: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1kargoETSNG_group_name: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1state_begin_name: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1state_end_name: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1node_begin_name: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1node_end_name: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1orders_client_sum: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1orders_agent_sum: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1orders_comiss_sum: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1count_vagon: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1count_weight: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1count_day_vagon: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1global_copy: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1firm_sender_name: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1firm_reciever_name: TcxGridDBBandedColumn;
    Panel2: TPanel;
    cxPageControl2: TcxPageControl;
    cxTabSheet3: TcxTabSheet;
    cxGrid2: TcxGrid;
    cxGrid2DBBandedTableView1: TcxGridDBBandedTableView;
    cxGrid2DBBandedTableView1orders_agree_rail_id: TcxGridDBBandedColumn;
    cxGrid2DBBandedTableView1FIO_users_owner: TcxGridDBBandedColumn;
    cxGrid2DBBandedTableView1contract_cod: TcxGridDBBandedColumn;
    cxGrid2DBBandedTableView1firm_self_name: TcxGridDBBandedColumn;
    cxGrid2DBBandedTableView1firm_customer_name: TcxGridDBBandedColumn;
    cxGrid2DBBandedTableView1brief_name: TcxGridDBBandedColumn;
    cxGrid2DBBandedTableView1service_type_name: TcxGridDBBandedColumn;
    cxGrid2DBBandedTableView1date_plan_pay: TcxGridDBBandedColumn;
    cxGrid2DBBandedTableView1date_plan_send: TcxGridDBBandedColumn;
    cxGrid2DBBandedTableView1budget_name: TcxGridDBBandedColumn;
    cxGrid2DBBandedTableView1add_count: TcxGridDBBandedColumn;
    cxGrid2DBBandedTableView1add_sum: TcxGridDBBandedColumn;
    cxGrid2DBBandedTableView1add_rate: TcxGridDBBandedColumn;
    cxGrid2DBBandedTableView1count_vagon: TcxGridDBBandedColumn;
    cxGrid2DBBandedTableView1count_weight: TcxGridDBBandedColumn;
    cxGrid2DBBandedTableView1count_day_vagon: TcxGridDBBandedColumn;
    cxGrid2DBBandedTableView1kargoETSNG_name: TcxGridDBBandedColumn;
    cxGrid2DBBandedTableView1kargoGNG_name: TcxGridDBBandedColumn;
    cxGrid2DBBandedTableView1state_begin_name: TcxGridDBBandedColumn;
    cxGrid2DBBandedTableView1state_end_name: TcxGridDBBandedColumn;
    cxGrid2DBBandedTableView1node_begin_name: TcxGridDBBandedColumn;
    cxGrid2DBBandedTableView1node_end_name: TcxGridDBBandedColumn;
    cxGrid2DBBandedTableView1type_kontener_name: TcxGridDBBandedColumn;
    cxGrid2DBBandedTableView1ed_izm_name: TcxGridDBBandedColumn;
    cxGrid2DBBandedTableView1firm_sender_name: TcxGridDBBandedColumn;
    cxGrid2DBBandedTableView1firm_reciever_name: TcxGridDBBandedColumn;
    cxGridLevel1: TcxGridLevel;
    cxTabSheet4: TcxTabSheet;
    cxGrid2DBBandedTableView1service_type: TcxGridDBBandedColumn;
    cxGrid4: TcxGrid;
    cxGrid4DBBandedTableView1: TcxGridDBBandedTableView;
    cxGrid4DBBandedTableView1bargain_id: TcxGridDBBandedColumn;
    cxGrid4DBBandedTableView1bargain_cod: TcxGridDBBandedColumn;
    cxGrid4DBBandedTableView1firm_customer_name: TcxGridDBBandedColumn;
    cxGrid4DBBandedTableView1firm_self_name: TcxGridDBBandedColumn;
    cxGrid4DBBandedTableView1FIO_users_owner: TcxGridDBBandedColumn;
    cxGrid4DBBandedTableView1users_group_name: TcxGridDBBandedColumn;
    cxGrid4DBBandedTableView1node_begin_name: TcxGridDBBandedColumn;
    cxGrid4DBBandedTableView1node_end_name: TcxGridDBBandedColumn;
    cxGrid4DBBandedTableView1bargain_sum: TcxGridDBBandedColumn;
    cxGrid4DBBandedTableView1brief_name: TcxGridDBBandedColumn;
    cxGrid4DBBandedTableView1kargoETSNG_name: TcxGridDBBandedColumn;
    cxGrid4DBBandedTableView1kargoETSNG_group_name: TcxGridDBBandedColumn;
    cxGrid4DBBandedTableView1vid_transfer_name: TcxGridDBBandedColumn;
    cxGrid4DBBandedTableView1bargain_nds_name: TcxGridDBBandedColumn;
    cxGrid4DBBandedTableView1our_rate_val: TcxGridDBBandedColumn;
    cxGrid4DBBandedTableView1quantity: TcxGridDBBandedColumn;
    cxGrid4DBBandedTableView1quantity_units: TcxGridDBBandedColumn;
    cxGrid4DBBandedTableView1ed_izm_name: TcxGridDBBandedColumn;
    cxGrid4DBBandedTableView1fact_weight: TcxGridDBBandedColumn;
    cxGrid4DBBandedTableView1amount_fact: TcxGridDBBandedColumn;
    cxGrid4DBBandedTableView1amount_units_fact: TcxGridDBBandedColumn;
    cxGrid4DBBandedTableView1bargain_sum_fact: TcxGridDBBandedColumn;
    cxGrid4DBBandedTableView1bargain_sum_fact_USD: TcxGridDBBandedColumn;
    cxGrid4DBBandedTableView1bargain_comiss_USD: TcxGridDBBandedColumn;
    cxGrid4DBBandedTableView1bargain_sum_fact_RUB: TcxGridDBBandedColumn;
    cxGrid4DBBandedTableView1bargain_comiss_RUB: TcxGridDBBandedColumn;
    cxGrid4DBBandedTableView1bargain_comiss: TcxGridDBBandedColumn;
    cxGrid4DBBandedTableView1state_begin_name: TcxGridDBBandedColumn;
    cxGrid4DBBandedTableView1date_enter: TcxGridDBBandedColumn;
    cxGrid4DBBandedTableView1state_end_name: TcxGridDBBandedColumn;
    cxGrid4DBBandedTableView1date_modify: TcxGridDBBandedColumn;
    cxGrid4DBBandedTableView1contract_cod: TcxGridDBBandedColumn;
    cxGrid4DBBandedTableView1set_bargain_block: TcxGridDBBandedColumn;
    cxGrid4DBBandedTableView1bargain_correct_group: TcxGridDBBandedColumn;
    cxGrid4DBBandedTableView1bargain_correct_type_name: TcxGridDBBandedColumn;
    cxGrid4DBBandedTableView1bargain_correct_type: TcxGridDBBandedColumn;
    cxGrid4DBBandedTableView1bargain_note_not_enter: TcxGridDBBandedColumn;
    cxGrid4DBBandedTableView1contract_id: TcxGridDBBandedColumn;
    cxGrid4DBBandedTableView1date_period: TcxGridDBBandedColumn;
    cxGrid4DBBandedTableView1date_period_finance: TcxGridDBBandedColumn;
    cxGrid4DBBandedTableView1date_period_service: TcxGridDBBandedColumn;
    cxGrid4DBBandedTableView1bargain_num: TcxGridDBBandedColumn;
    cxGrid4DBBandedTableView1ed_izm_cod: TcxGridDBBandedColumn;
    cxGrid4DBBandedTableView1our_rate_vid_send: TcxGridDBBandedColumn;
    cxGrid4DBBandedTableView1our_rate_comiss_val: TcxGridDBBandedColumn;
    cxGrid4DBBandedTableView1vid_transfer_cod: TcxGridDBBandedColumn;
    cxGrid4DBBandedTableView1users_owner_id: TcxGridDBBandedColumn;
    cxGrid4DBBandedTableView1currency_id: TcxGridDBBandedColumn;
    cxGrid4DBBandedTableView1global_color: TcxGridDBBandedColumn;
    cxGrid4DBBandedTableView1global_copy: TcxGridDBBandedColumn;
    cxGrid4DBBandedTableView1bargain_rights: TcxGridDBBandedColumn;
    cxGrid4DBBandedTableView1firm_self: TcxGridDBBandedColumn;
    cxGrid4DBBandedTableView1firm_customer: TcxGridDBBandedColumn;
    cxGrid4DBBandedTableView1agreement_id: TcxGridDBBandedColumn;
    cxGrid4DBBandedTableView1agreement_describe: TcxGridDBBandedColumn;
    cxGrid4DBBandedTableView1agreement_note: TcxGridDBBandedColumn;
    cxGrid4DBBandedTableView1set_return: TcxGridDBBandedColumn;
    cxGrid4DBBandedTableView1return_name: TcxGridDBBandedColumn;
    cxGrid4DBBandedTableView1kargoETSNG_cod: TcxGridDBBandedColumn;
    cxGrid4DBBandedTableView1day_rent: TcxGridDBBandedColumn;
    cxGrid4DBBandedTableView1five_days_zfto_name: TcxGridDBBandedColumn;
    cxGrid4DBBandedTableView1client_NDS_RUB: TcxGridDBBandedColumn;
    cxGrid4DBBandedTableView1client_notNDS_RUB: TcxGridDBBandedColumn;
    cxGrid4DBBandedTableView1comiss_notNDS_RUB: TcxGridDBBandedColumn;
    cxGrid4DBBandedTableView1comiss_NDS_RUB: TcxGridDBBandedColumn;
    cxGrid4DBBandedTableView1kargoGNG_name: TcxGridDBBandedColumn;
    cxGrid4DBBandedTableView1road_begin_name: TcxGridDBBandedColumn;
    cxGrid4DBBandedTableView1road_end_name: TcxGridDBBandedColumn;
    cxGrid4DBBandedTableView1set_bargain_weight: TcxGridDBBandedColumn;
    cxGrid4DBBandedTableView1FIO_users_modify: TcxGridDBBandedColumn;
    cxGrid4DBBandedTableView1budget_cod: TcxGridDBBandedColumn;
    cxGrid4DBBandedTableView1budget_name: TcxGridDBBandedColumn;
    cxGrid4DBBandedTableView1rod_vagon_name: TcxGridDBBandedColumn;
    cxGrid4Level1: TcxGridLevel;
    dxBarPopupMenu4: TdxBarPopupMenu;
    dxBarButton10: TdxBarButton;
    dxBarSubItem9: TdxBarSubItem;
    dxBarButton25: TdxBarButton;
    dxBarButton26: TdxBarButton;
    Query_OrdersAgreeRail_List: TADOQuery;
    cxGrid3DBBandedTableView1orders_agree_rail_id: TcxGridDBBandedColumn;
    cxGrid3DBBandedTableView1FIO_users_owner: TcxGridDBBandedColumn;
    cxGrid3DBBandedTableView1global_color: TcxGridDBBandedColumn;
    cxGrid3DBBandedTableView1orders_agree_id: TcxGridDBBandedColumn;
    cxGrid3DBBandedTableView1orders_agree_cod: TcxGridDBBandedColumn;
    cxGrid3DBBandedTableView1date_period: TcxGridDBBandedColumn;
    cxGrid3DBBandedTableView1contract_cod: TcxGridDBBandedColumn;
    cxGrid3DBBandedTableView1firm_self_name: TcxGridDBBandedColumn;
    cxGrid3DBBandedTableView1firm_customer_name: TcxGridDBBandedColumn;
    cxGrid3DBBandedTableView1brief_name: TcxGridDBBandedColumn;
    cxGrid3DBBandedTableView1service_type: TcxGridDBBandedColumn;
    cxGrid3DBBandedTableView1service_type_name: TcxGridDBBandedColumn;
    cxGrid3DBBandedTableView1date_plan_pay: TcxGridDBBandedColumn;
    cxGrid3DBBandedTableView1date_plan_send: TcxGridDBBandedColumn;
    cxGrid3DBBandedTableView1budget_name: TcxGridDBBandedColumn;
    cxGrid3DBBandedTableView1add_count: TcxGridDBBandedColumn;
    cxGrid3DBBandedTableView1add_sum: TcxGridDBBandedColumn;
    cxGrid3DBBandedTableView1add_rate: TcxGridDBBandedColumn;
    cxGrid3DBBandedTableView1count_vagon: TcxGridDBBandedColumn;
    cxGrid3DBBandedTableView1count_weight: TcxGridDBBandedColumn;
    cxGrid3DBBandedTableView1count_day_vagon: TcxGridDBBandedColumn;
    cxGrid3DBBandedTableView1kargoETSNG_name: TcxGridDBBandedColumn;
    cxGrid3DBBandedTableView1kargoGNG_name: TcxGridDBBandedColumn;
    cxGrid3DBBandedTableView1state_begin_name: TcxGridDBBandedColumn;
    cxGrid3DBBandedTableView1state_end_name: TcxGridDBBandedColumn;
    cxGrid3DBBandedTableView1node_begin_name: TcxGridDBBandedColumn;
    cxGrid3DBBandedTableView1node_end_name: TcxGridDBBandedColumn;
    cxGrid3DBBandedTableView1type_kontener_name: TcxGridDBBandedColumn;
    cxGrid3DBBandedTableView1ed_izm_name: TcxGridDBBandedColumn;
    cxGrid3DBBandedTableView1firm_sender_name: TcxGridDBBandedColumn;
    cxGrid3DBBandedTableView1firm_reciever_name: TcxGridDBBandedColumn;
    cxGrid2DBBandedTableView1orders_agree_id: TcxGridDBBandedColumn;
    cxGrid2DBBandedTableView1orders_agree_cod: TcxGridDBBandedColumn;
    dxBarButton2: TdxBarButton;
    dxBarButton11: TdxBarButton;
    dxBarButton12: TdxBarButton;
    dxBarButton13: TdxBarButton;
    dxBarSubItem5: TdxBarSubItem;
    dxBarSubItem8: TdxBarSubItem;
    dxBarButton24: TdxBarButton;
    dxBarButton27: TdxBarButton;
    cxGrid1DBBandedTableView1rod_vagon_id: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1rod_vagon_name: TcxGridDBBandedColumn;
    procedure dxBarButton7Click(Sender: TObject);
    procedure dxBarButton20Click(Sender: TObject);
    procedure cxGrid3DBBandedTableView1CustomDrawCell(Sender: TcxCustomGridTableView; ACanvas: TcxCanvas; AViewInfo: TcxGridTableDataCellViewInfo; var ADone: Boolean);
    procedure cxGrid3DBBandedTableView1KeyPress(Sender: TObject; var Key: Char);
    procedure cxGrid3DBBandedTableView1DataControllerFilterChanged(Sender: TObject);
    procedure cxGrid1DBBandedTableView1KeyPress(Sender: TObject; var Key: Char);
    procedure cxGrid2DBBandedTableView1KeyPress(Sender: TObject; var Key: Char);
    procedure cxGrid2DBBandedTableView1CustomDrawCell(Sender: TcxCustomGridTableView; ACanvas: TcxCanvas; AViewInfo: TcxGridTableDataCellViewInfo; var ADone: Boolean);
    procedure cxGrid2DBBandedTableView1DataControllerFilterChanged(Sender: TObject);
    procedure cxPageControl1Change(Sender: TObject);
    procedure OnMenuUsersClick(Sender: TObject);
    procedure dxBarSubItem3Popup(Sender: TObject);
    procedure cxGrid1DBBandedTableView1DataControllerFilterChanged(Sender: TObject);
    procedure cxGrid1DBBandedTableView1CustomDrawCell(Sender: TcxCustomGridTableView; ACanvas: TcxCanvas; AViewInfo: TcxGridTableDataCellViewInfo; var ADone: Boolean);
    procedure cxGrid1DBBandedTableView1CustomDrawFooterCell(Sender: TcxGridTableView; ACanvas: TcxCanvas; AViewInfo: TcxGridColumnHeaderViewInfo; var ADone: Boolean);
    procedure dxBarButton18Click(Sender: TObject);
    procedure dxBarButton17Click(Sender: TObject);
    procedure dxBarButton15Click(Sender: TObject);
    procedure dxBarButton19Click(Sender: TObject);
    procedure cxGrid1DBBandedTableView1FocusedItemChanged(Sender: TcxCustomGridTableView; APrevFocusedItem, AFocusedItem: TcxCustomGridTableItem);
    procedure FormDestroy(Sender: TObject);
    procedure dxBarButton9Click(Sender: TObject);
    procedure dxBarButton8Click(Sender: TObject);
    procedure dxBarButton4Click(Sender: TObject);
    procedure dxBarButton3Click(Sender: TObject);
    procedure dxBarButton2Click(Sender: TObject);
    procedure dxBarButton1Click(Sender: TObject);
    procedure dxBarButton6Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure dxBarButton5Click(Sender: TObject);
    procedure dxBarButton14Click(Sender: TObject);
    procedure dxBarButton_FilterRecords1Click(Sender: TObject);
    procedure dxBarButton_FilterRecords2Click(Sender: TObject);
    procedure dxBarButton_FilterRecords3Click(Sender: TObject);
    procedure dxBarButton23Click(Sender: TObject);
    procedure cxGrid1DBBandedTableView1SelectionChanged(Sender: TcxCustomGridTableView);
    procedure cxGrid4DBBandedTableView1CustomDrawCell(Sender: TcxCustomGridTableView; ACanvas: TcxCanvas;AViewInfo: TcxGridTableDataCellViewInfo; var ADone: Boolean);
    procedure cxGrid4DBBandedTableView1CustomDrawColumnHeader(Sender: TcxGridTableView; ACanvas: TcxCanvas;AViewInfo: TcxGridColumnHeaderViewInfo; var ADone: Boolean);
    procedure cxGrid4DBBandedTableView1FocusedItemChanged(Sender: TcxCustomGridTableView; APrevFocusedItem,AFocusedItem: TcxCustomGridTableItem);
    procedure cxGrid4DBBandedTableView1KeyPress(Sender: TObject; var Key: Char);
    procedure dxBarButton10Click(Sender: TObject);
    procedure dxBarButton25Click(Sender: TObject);
    procedure dxBarButton26Click(Sender: TObject);
    procedure dxBarButton12Click(Sender: TObject);
    procedure dxBarButton24Click(Sender: TObject);
    procedure cxPageControl2Change(Sender: TObject);
    procedure cxGrid4DBBandedTableView1DataControllerFilterChanged(Sender: TObject);
    procedure cxGrid2DBBandedTableView1CustomDrawColumnHeader(Sender: TcxGridTableView; ACanvas: TcxCanvas;AViewInfo: TcxGridColumnHeaderViewInfo; var ADone: Boolean);
    procedure cxGrid2DBBandedTableView1FocusedItemChanged(Sender: TcxCustomGridTableView; APrevFocusedItem,AFocusedItem: TcxCustomGridTableItem);
  private
    Fdate1, Fdate2    : TDateTime;
    Fusers_id         : integer;

    Fstr_orders_agree_rail_id : string;
    procedure RefreshProcedure();
    procedure SetSelectArticle(set_select_article: boolean);
    procedure SetContractCod(contract_cod: string);
    function  PrintOrdersLine(exWks : Variant; line_cnt: integer; field_caption: string; field_value: variant; font_bold: boolean = False; color_index: integer = 0): integer;
    function  CheckOrdersAgree(orders_agree_id : integer) : boolean;
  public
    constructor Create(AOwner: TApplication; flag: boolean); reintroduce;
  published
    property  _SetSelectArticle     : boolean write SetSelectArticle;
    property  _SetContractCod       : string  write SetContractCod;
    property  _GetOrdersAgreeRailId : string  read Fstr_orders_agree_rail_id;
  end;

var
  fmOrdersAgree: TfmOrdersAgree;

implementation

uses main, OrdersAgreeAdd, Other, Raznoe, Period, Agree2, AgreeAdd2, OrdersAgreeRailAdd;

{$R *.dfm}

constructor TfmOrdersAgree.Create(AOwner: TApplication; flag: boolean);
begin
  Screen.Cursor := crHourglass;
  inherited Create(AOwner);

  Fstr_orders_agree_rail_id := '';

  dxBarSubItem2.Caption := StoreRegistryDate(rgLoad, '\Software\Lis1\DateTime\OrdersAgree', Fdate1, Fdate2);

  if flag then begin
    FormStyle   := fsNormal;
    WindowState := wsMaximized;
    dxBarButton5.Visible  := ivAlways;
    cxGrid3DBBandedTableView1.OnDblClick := dxBarButton5Click;
  end else begin
    FormStyle   := fsMDIChild;
    WindowState := wsMaximized;
    dxBarButton5.Visible  := ivNever;
  end;

//  StoreRegistryGrid(rgLoad, '\Software\Lis1\OrdersAgree_Grids', cxGrid1DBBandedTableView1);
//  StoreRegistryGrid(rgLoad, '\Software\Lis1\OrdersAgree_Grids', cxGrid2DBBandedTableView1);
//  StoreRegistryGrid(rgLoad, '\Software\Lis1\OrdersAgree_Grids', cxGrid3DBBandedTableView1);

  Fusers_id := usr_pwd.users_id;

  dxBarButton6Click(nil);

  RefreshProcedure();

  MonitorEventFormOpen('OPEN_FORM', self.Name, fmMain.Lis, -9);
  Screen.Cursor := crDefault;
end;

procedure TfmOrdersAgree.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action := caFree;
end;

procedure TfmOrdersAgree.FormDestroy(Sender: TObject);
begin
  StoreRegistryDate(rgSave, '\Software\Lis1\DateTime\OrdersAgree', Fdate1, Fdate2);

//  StoreRegistryGrid(rgSave,'\Software\Lis1\OrdersAgree_Grids', cxGrid1DBBandedTableView1);
//  StoreRegistryGrid(rgSave,'\Software\Lis1\OrdersAgree_Grids', cxGrid2DBBandedTableView1);
//  StoreRegistryGrid(rgSave,'\Software\Lis1\OrdersAgree_Grids', cxGrid3DBBandedTableView1);

  StoreRegistryCheck(rgSave, '\Software\Lis1\OrdersAgree_Check', 'Rail', dxBarButton6.Down);
end;


procedure TfmOrdersAgree.SetSelectArticle(set_select_article: boolean);
begin
  cxTabSheet1.TabVisible := False;
  cxPageControl1.ActivePage := cxTabSheet2;

  dxBarButton1.Visible  := ivNever;
  dxBarButton3.Visible  := ivNever;
  dxBarButton6.Visible  := ivNever;
end;

procedure TfmOrdersAgree.SetContractCod(contract_cod: string);
begin
  if contract_cod <> '' then begin
    cxGrid3DBBandedTableView1.DataController.Filter.Options := cxGrid3DBBandedTableView1.DataController.Filter.Options + [fcoCaseInsensitive];
    cxGrid3DBBandedTableView1.DataController.Filter.Root.BoolOperatorKind := fboAnd;

    cxGrid3DBBandedTableView1.DataController.Filter.Root.AddItem(cxGrid3DBBandedTableView1contract_cod, foLike, '%' + contract_cod + '%', '[' + contract_cod + ']');
    cxGrid3DBBandedTableView1.DataController.Filter.Active := True;
  end;
end;


procedure TfmOrdersAgree.OnMenuUsersClick(Sender: TObject);
begin
  Fusers_id := TdxBarItem(Sender).Tag;
  Caption   := 'Заявки на перевозку (' + TdxBarItem(Sender).Caption +')';
  RefreshProcedure();
end;

procedure TfmOrdersAgree.dxBarButton6Click(Sender: TObject);
begin
  Panel2.Visible      := dxBarButton6.Down;
  cxSplitter4.Visible := dxBarButton6.Down;
end;

function TfmOrdersAgree.PrintOrdersLine(exWks : Variant; line_cnt: integer; field_caption: string; field_value: variant; font_bold: boolean = False; color_index: integer = 0): integer;
begin
  exWks.Range['B' + IntToStr(line_cnt)].Value := field_caption;
  exWks.Range['C' + IntToStr(line_cnt)].Value := VarToStr(field_value);

  exWks.Range['B' + IntToStr(line_cnt)].HorizontalAlignment := -4131;
  exWks.Range['B' + IntToStr(line_cnt)].VerticalAlignment   := -4160;
  exWks.Range['B' + IntToStr(line_cnt)].WrapText            := True;
  exWks.Range['B' + IntToStr(line_cnt)].Borders[1].LineStyle:= 1;
  exWks.Range['B' + IntToStr(line_cnt)].Borders[2].LineStyle:= 1;
  exWks.Range['B' + IntToStr(line_cnt)].Borders[3].LineStyle:= 1;
  exWks.Range['B' + IntToStr(line_cnt)].Borders[4].LineStyle:= 1;
  exWks.Range['B' + IntToStr(line_cnt)].Interior.ColorIndex := color_index;
  exWks.Range['B' + IntToStr(line_cnt)].Font.Bold           := font_bold;

  exWks.Range['C' + IntToStr(line_cnt)].HorizontalAlignment := -4131;
  exWks.Range['C' + IntToStr(line_cnt)].VerticalAlignment   := -4160;
  exWks.Range['C' + IntToStr(line_cnt)].WrapText            := True;
  exWks.Range['C' + IntToStr(line_cnt)].Borders[1].LineStyle:= 1;
  exWks.Range['C' + IntToStr(line_cnt)].Borders[2].LineStyle:= 1;
  exWks.Range['C' + IntToStr(line_cnt)].Borders[3].LineStyle:= 1;
  exWks.Range['C' + IntToStr(line_cnt)].Borders[4].LineStyle:= 1;
  exWks.Range['C' + IntToStr(line_cnt)].Interior.ColorIndex := color_index;
  exWks.Range['C' + IntToStr(line_cnt)].Font.Bold           := font_bold;

  Result := line_cnt + 1;
end;

procedure TfmOrdersAgree.dxBarButton7Click(Sender: TObject);
var   exApp, exWkb, exWks : Variant;
     line_cnt, line_begin : integer;
                   Q1, Q2 : TADOQuery;
str_temp, FIO_users_owner : string;
                 BarCode  : TmyBarCode;
begin
//  Screen.Cursor := crHourGlass;
//
//  Q1 := TADOQuery.Create(nil);
//  Q1.Connection := Fconnect;
//  Q1.SQL.Add('SELECT * FROM view_orders_agree WHERE orders_agree_id = ' + IntToStr(cxGrid1DBBandedTableView1orders_agree_id.DataBinding.Field.Value));
//  Q1.Open;
//
//  BarCode.object_id := 91;
//  BarCode.date      := Q1.FieldByName('date_period_orders').AsDateTime;
//  BarCode.global_id := Q1.FieldByName('orders_agree_id').AsInteger;
//  BarCode.user_id   := Q1.FieldByName('users_owner_id').AsInteger;
//  FIO_users_owner   := Q1.FieldByName('FIO_users_owner').AsString;
//
//  Q2 := TADOQuery.Create(nil);
//  Q2.Connection := Fconnect;
//
//  ShowTextMessage('Запуск Excel ...', False);
//  exApp := CreateOleObject('Excel.Application');
//  exWkb := exApp.Workbooks.Add(GetDocBlob(fmMain.Lis, 100));
//  exWkb := exApp.ActiveWorkbook;
//  exWks := exWkb.WorkSheets[1];
//
//  exWks.Range['B12'].Value := 'Заявка на перевозку №' + Q1.FieldByName('orders_agree_id').AsString + ' для ' + Chr(10) + Q1.FieldByName('firm_customer_name').AsString + Chr(10) + ' на ' + Q1.FieldByName('date_period_orders_month').AsString + ' ' + Q1.FieldByName('date_period_orders_year').AsString;
//
//  line_cnt := 14;
//
//  ShowTextMessage('Услуги клиенту ...', False);
//  line_cnt := PrintOrdersLine(exWks, line_cnt, 'Клиент',                    Q1.FieldByName('firm_customer_name').AsString, True);
//  line_cnt := PrintOrdersLine(exWks, line_cnt, 'Договор',                   Q1.FieldByName('contract_cod').AsString);
//  line_cnt := PrintOrdersLine(exWks, line_cnt, 'Вид сообщения',             Q1.FieldByName('type_bargain_name').AsString);
//  line_cnt := PrintOrdersLine(exWks, line_cnt, 'Станция отправления',       '(' + Q1.FieldByName('node_begin_cod').AsString + ') ' + Q1.FieldByName('node_begin_name').AsString);
//  line_cnt := PrintOrdersLine(exWks, line_cnt, 'Станция назначения',        '(' + Q1.FieldByName('node_end_cod').AsString + ') ' + Q1.FieldByName('node_end_name').AsString);
//  line_cnt := PrintOrdersLine(exWks, line_cnt, 'Группа груза (груз ЕТСНГ)', Q1.FieldByName('kargoETSNG_group_name').AsString + '(' + Q1.FieldByName('kargoETSNG_name').AsString + ')');
//  line_cnt := PrintOrdersLine(exWks, line_cnt, 'Объём перевозки, тонн',     Q1.FieldByName('count_weight').AsString);
//  line_cnt := PrintOrdersLine(exWks, line_cnt, 'Кол-во вагонов/контейнеров',Q1.FieldByName('count_vagon').AsString);
//  line_cnt := PrintOrdersLine(exWks, line_cnt, 'Вагон-сутки',               Q1.FieldByName('count_day_vagon').AsString);
//
//  Q2.Close;
//  Q2.SQL.Add('SELECT	type_add_name, add_rate, brief_name, ed_izm_name');
//  Q2.SQL.Add('FROM	  view_orders_agree_rail');
//  Q2.SQL.Add('WHERE   type_contract = 0');
//  Q2.SQL.Add('        AND orders_agree_id = ' + IntToStr(cxGrid1DBBandedTableView1orders_agree_id.DataBinding.Field.Value));
//  Q2.Open;
//
//  while not Q2.Eof do begin
//    line_cnt := PrintOrdersLine(exWks, line_cnt, '   ' + Q2.FieldByName('type_add_name').AsString, FormatFloat('#,##0.00', Q2.FieldByName('add_rate').AsCurrency) + ' ' +
//                                                                                                   Q2.FieldByName('brief_name').AsString + '/' +
//                                                                                                   Q2.FieldByName('ed_izm_name').AsString, True);
//    Q2.Next;
//  end;
//
//  line_cnt := PrintOrdersLine(exWks, line_cnt, '', '');
//  line_cnt := PrintOrdersLine(exWks, line_cnt, 'Баланс клиента до перевозки', '---', False, 15);
//  line_cnt := PrintOrdersLine(exWks, line_cnt, 'Стоимость перевозки клиенту', FormatFloat('#,##0.00',Q1.FieldByName('orders_client_sum').AsCurrency) + ' ' + Q1.FieldByName('brief_name').AsString, True, 15);
//
//  Q2.Close;
//  Q2.SQL.Clear;
//  Q2.SQL.Add('SELECT	contract_id, firm_customer_name, brief_orders_name,');
//  Q2.SQL.Add('        sum(round(add_sum * dbo.func_GetExchangeNew(currency_orders_id, currency_id, exchange_USD_val, exchange_CHF_val, exchange_EUR_val),2)) as add_sum');
//  Q2.SQL.Add('FROM	  view_orders_agree_rail_all');
//  Q2.SQL.Add('WHERE   type_contract = 1');
//  Q2.SQL.Add('        AND orders_agree_id = ' + IntToStr(cxGrid1DBBandedTableView1orders_agree_id.DataBinding.Field.Value));
//  Q2.SQL.Add('GROUP BY contract_id, contract_set, firm_customer_name, brief_orders_name');
//  Q2.SQL.Add('ORDER BY isnull(contract_set,2), firm_customer_name');
//  Q2.Open;
//
//  while not Q2.Eof do begin
//    exWks.Range['B' + IntToStr(line_cnt)].Font.ColorIndex := 10;
//    exWks.Range['B' + IntToStr(line_cnt)].Font.Italic     := True;
//    exWks.Range['C' + IntToStr(line_cnt)].Font.ColorIndex := 10;
//    exWks.Range['C' + IntToStr(line_cnt)].Font.Italic     := True;
//
//    line_cnt := PrintOrdersLine(exWks, line_cnt, ' - Расходы по ' + Q2.FieldByName('firm_customer_name').AsString, FormatFloat('#,##0.00', Q2.FieldByName('add_sum').AsCurrency) + ' ' + Q2.FieldByName('brief_orders_name').AsString, False, 15);
//    Q2.Next;
//  end;
//
//  line_cnt := PrintOrdersLine(exWks, line_cnt, 'Баланс клиента включая перевозку', '---', False, 15);
//  line_cnt := PrintOrdersLine(exWks, line_cnt, 'Комиссия', FormatFloat('#,##0.00',Q1.FieldByName('orders_comiss_sum').AsCurrency) + ' ' + Q1.FieldByName('brief_name').AsString, True, 15);
//
//  line_cnt := line_cnt + 4;
//
//  Q1.Close;
//  Q1.SQL.Clear;
//  Q1.SQL.Add('SELECT * FROM view_orders_agree_rail WHERE type_contract = 1 AND orders_agree_id = ' + IntToStr(cxGrid1DBBandedTableView1orders_agree_id.DataBinding.Field.Value));
//  Q1.SQL.Add('ORDER BY isnull(contract_set,2), firm_customer_name');
//  Q1.Open;
//
//
//  ShowTextMessage('Услуги агента ...', False);
//  while not Q1.Eof do begin
//    ShowTextMessage('Услуги агента ...' + chr(10) + 'Осталось ' + IntToStr(Q1.RecordCount - Q1.RecNo) + '...', False);
//
//    exWks.Range['B' + IntToStr(line_cnt-2) + ':C' + IntToStr(line_cnt-2)].WrapText   := True;
//    exWks.Range['B' + IntToStr(line_cnt-2) + ':C' + IntToStr(line_cnt-2)].MergeCells := True;
//    exWks.Range['B' + IntToStr(line_cnt-2)].Value := 'Расходы ' + Q1.FieldByName('firm_customer_name').AsString;
//    exWks.Range['B' + IntToStr(line_cnt-2)].Font.ColorIndex     := 10;
//    exWks.Range['B' + IntToStr(line_cnt-2)].HorizontalAlignment := -4131;
//    exWks.Range['B' + IntToStr(line_cnt-2)].Font.Bold           := True;
//    line_cnt := line_cnt + 1;
//    exWks.Range['B' + IntToStr(line_cnt-2)].Value := Q1.FieldByName('type_add_name').AsString;
//    exWks.Range['C' + IntToStr(line_cnt-2)].Value := FormatFloat('#,##0.00',Q1.FieldByName('add_sum').AsCurrency) + ' ' + Q1.FieldByName('brief_name').AsString;
//    exWks.Range['B' + IntToStr(line_cnt-2)].Font.ColorIndex     := 10;
//    exWks.Range['C' + IntToStr(line_cnt-2)].Font.ColorIndex     := 10;
//
//    line_begin := line_cnt - 1;
//
//    line_cnt := PrintOrdersLine(exWks, line_cnt, '№ договора с Агентом', Q1.FieldByName('contract_cod').AsString);
//    line_cnt := PrintOrdersLine(exWks, line_cnt, 'Дата план. платежа', iif(Q1.FieldByName('date_plan_pay').IsNull, null, Q1.FieldByName('date_plan_pay').AsDateTime));
//
//    if (Q1.FieldByName('contract_set').AsInteger = 1) AND (Q1.FieldByName('type_add_cod').AsString = '777') then begin
//      Q2.Close;
//      Q2.SQL.Clear;
//      Q2.SQL.Add('SELECT firm_name_short, cod_okpo FROM view_firm WHERE firm_id = ' + IntToStr(Q1.FieldByName('firm_sender_id').AsInteger));
//      Q2.Open;
//      line_cnt := PrintOrdersLine(exWks, line_cnt, 'Отправитель', Q2.FieldByName('firm_name_short').AsString);
//      line_cnt := PrintOrdersLine(exWks, line_cnt, 'Код ОКПО отправителя', Q2.FieldByName('cod_okpo').AsString);
//
//      Q2.Close;
//      Q2.SQL.Clear;
//      Q2.SQL.Add('SELECT firm_name_short, cod_okpo FROM view_firm WHERE firm_id = ' + IntToStr(Q1.FieldByName('firm_reciever_id').AsInteger));
//      Q2.Open;
//      line_cnt := PrintOrdersLine(exWks, line_cnt, 'Получатель', Q2.FieldByName('firm_name_short').AsString);
//      line_cnt := PrintOrdersLine(exWks, line_cnt, 'Код ОКПО получателя', Q2.FieldByName('cod_okpo').AsString);
//    end;
//
//    line_cnt := PrintOrdersLine(exWks, line_cnt, 'Страна отправления', '(' + Q1.FieldByName('state_begin_cod').AsString + ') ' + Q1.FieldByName('state_begin_name').AsString);
//    line_cnt := PrintOrdersLine(exWks, line_cnt, 'Страна назначения',  '(' + Q1.FieldByName('state_end_cod').AsString + ') ' + Q1.FieldByName('state_end_name').AsString);
//    line_cnt := PrintOrdersLine(exWks, line_cnt, 'Станция отправления','(' + Q1.FieldByName('node_begin_cod').AsString + ') ' + Q1.FieldByName('node_begin_name').AsString);
//    line_cnt := PrintOrdersLine(exWks, line_cnt, 'Станция назначения', '(' + Q1.FieldByName('node_end_cod').AsString + ') ' + Q1.FieldByName('node_end_name').AsString);
//
//    Q2.Close;
//    Q2.SQL.Clear;
//    Q2.SQL.Add('SELECT * FROM view_add_distance ');
//    Q2.SQL.Add('WHERE global_id = ' + IntToStr(Q1.FieldByName('orders_agree_rail_id').AsInteger));
//    Q2.SQL.Add('ORDER BY distance_num');
//    Q2.Open;
//
//    str_temp := '';
//    while not Q2.Eof do begin
//      if str_temp <> '' then str_temp := str_temp + ' / ';
//      str_temp := str_temp + Q2.FieldByName('node_name').AsString;
//      Q2.Next;
//    end;
//    line_cnt := PrintOrdersLine(exWks, line_cnt, 'Маршрут', str_temp);
//
//
//
//    if (Q1.FieldByName('contract_set').AsInteger = 1) AND (Q1.FieldByName('type_add_cod').AsString = '777') then begin
//      Q2.Close;
//      Q2.SQL.Clear;
//      Q2.SQL.Add('SELECT * FROM inf_obj WHERE inf_obj_id = ' + iif(Q1.FieldByName('cit_id').IsNull, '-9', Q1.FieldByName('cit_id').AsString));
//      Q2.Open;
//      line_cnt := PrintOrdersLine(exWks, line_cnt, 'Код исключительного тарифа',Q2.FieldByName('inf_obj_name').AsString);
//    end;
//
//    line_cnt := PrintOrdersLine(exWks, line_cnt, 'Груз ЕТСНГ','(' + Q1.FieldByName('kargoETSNG_cod').AsString + ') ' + Q1.FieldByName('kargoETSNG_name').AsString);
//    line_cnt := PrintOrdersLine(exWks, line_cnt, 'Груз ГНГ','(' + Q1.FieldByName('kargoGNG_cod').AsString + ') ' + Q1.FieldByName('kargoGNG_name').AsString);
//
//    Q2.Close;
//    Q2.SQL.Clear;
//    Q2.SQL.Add('SELECT * FROM inf_obj WHERE inf_obj_id = ' + iif(Q1.FieldByName('type_kontener_id').IsNull, '-9', Q1.FieldByName('type_kontener_id').AsString));
//    Q2.Open;
//    line_cnt := PrintOrdersLine(exWks, line_cnt, 'Тип подвижного состава',Q2.FieldByName('inf_obj_name').AsString);
//
//    line_cnt := PrintOrdersLine(exWks, line_cnt, 'Принадлежность вагонов/контейнеров',iif(Q1.FieldByName('set_attr_self').Value, 'СПС', 'МПС'));
//
//    Q2.Close;
//    Q2.SQL.Clear;
//    Q2.SQL.Add('SELECT * FROM view_add_payers ');
//    Q2.SQL.Add('WHERE  global_id = ' + IntToStr(Q1.FieldByName('orders_agree_rail_id').AsInteger));
//    Q2.Open;
//    str_temp := '';
//    while not Q2.Eof do begin
//      if str_temp <> '' then str_temp := str_temp + ' / ';
//      str_temp := str_temp + Q2.FieldByName('firm_name').AsString;
//      Q2.Next;
//    end;
//
//    line_cnt := PrintOrdersLine(exWks, line_cnt, 'Плательщики по странам СНГ и Балтии', str_temp);
//    line_cnt := PrintOrdersLine(exWks, line_cnt, 'Примечание', Q1.FieldByName('comment').AsString);
//    line_cnt := PrintOrdersLine(exWks, line_cnt, 'Ставка',FormatFloat('#,##0.00',Q1.FieldByName('add_rate').AsCurrency) + ' ' + Q1.FieldByName('brief_name').AsString + '/' + Q1.FieldByName('ed_izm_name').AsString);
//    line_cnt := PrintOrdersLine(exWks, line_cnt, 'Сумма заявки',FormatFloat('#,##0.00',Q1.FieldByName('add_sum').AsCurrency) + ' ' + Q1.FieldByName('brief_name').AsString, True);
//
//    exWks.Rows[IntToStr(line_begin) + ':' + IntToStr(line_cnt - 1)].Group;
//    exWks.Outline.AutomaticStyles := False;
//    exWks.Outline.SummaryRow      := 0;
//    exWks.Outline.SummaryColumn   := -4152;
//    exWks.Outline.ShowLevels(1);
//
//    line_cnt := line_cnt + 4;
//    Q1.Next;
//  end;
//
//  exWks.Range['B' + IntToStr(line_cnt-2)].Value := 'С уважением,';
//  exWks.Range['C' + IntToStr(line_cnt-2)].Value := FIO_users_owner;
//  exWks.Range['C' + IntToStr(line_cnt-2)].HorizontalAlignment := -4152;
//
//
//  PrintBarCode2of5(BarCode, exWks, NULL);
//
//  ShowTextMessage();
//  exApp.Visible := True;
////  exWkb.PrintPreview;
//
//  Q1.Free; Q2.Free;
//  VarClear(exWks); VarClear(exWkb); VarClear(exApp);
//
//  Screen.Cursor := crDefault;
end;

procedure TfmOrdersAgree.dxBarButton8Click(Sender: TObject);
begin
  fmPeriod := TfmPeriod.Create(Application, Fdate1, Fdate2, 3);
  if fmPeriod.ShowModal=mrOK then begin
    Fdate1 := fmPeriod._GetMonth;
    Fdate2 := IncMonth(Fdate1, 1);
    dxBarSubItem2.Caption := FormatDateTime('mmmm yyyy', Fdate1);
    RefreshProcedure();
  end;
end;

procedure TfmOrdersAgree.dxBarButton9Click(Sender: TObject);
begin
  fmPeriod := TfmPeriod.Create(Application, Fdate1, Fdate2, 2);
  if fmPeriod.ShowModal=mrOK then begin
    Fdate1 := fmPeriod._GetMonthBegin;
    Fdate2 := fmPeriod._GetMonthEnd;
    dxBarSubItem2.Caption := FormatDateTime('mmm yy', Fdate1) + ' - ' + FormatDateTime('mmm yy', Fdate2);

    RefreshProcedure();
  end;
end;

procedure TfmOrdersAgree.dxBarButton_FilterRecords1Click(Sender: TObject);
begin
  cxGrid1DBBandedTableView1.Filtering.ColumnFilteredItemsList := not dxBarButton_FilterRecords1.Down;
end;

procedure TfmOrdersAgree.dxBarButton_FilterRecords2Click(Sender: TObject);
begin
  cxGrid2DBBandedTableView1.Filtering.ColumnFilteredItemsList := not dxBarButton_FilterRecords2.Down;
end;

procedure TfmOrdersAgree.dxBarButton_FilterRecords3Click(Sender: TObject);
begin
  cxGrid3DBBandedTableView1.Filtering.ColumnFilteredItemsList := not dxBarButton_FilterRecords3.Down;
end;

procedure TfmOrdersAgree.dxBarSubItem3Popup(Sender: TObject);
var   i, cnt : integer;
  bar_button : TdxBarButton;
           Q : TADOQuery;
begin
  Screen.Cursor := crHourglass;

  cnt := dxBarSubItem3.ItemLinks.Count;
  for i := 2 to cnt-1 do dxBarSubItem3.ItemLinks.Items[cnt-i+1].Destroy;

  Q := TADOQuery.Create(nil);
  Q.Connection := fmMain.Lis;
  Q.SQL.Add('SELECT DISTINCT users_owner_id, FIO_users_owner FROM view_orders_agree_rights');
  Q.SQL.Add('WHERE date_period between ' + DateToSQL(Fdate1) + ' AND ' + DateToSQL(Fdate2));
  Q.SQL.Add('ORDER BY FIO_users_owner');
  Q.Open;

  while not Q.Eof do begin
    bar_button := TdxBarButton.Create(nil);
    bar_button.ImageIndex := 39;
    bar_button.Caption    := Q.FieldByName('FIO_users_owner').AsString;
    bar_button.Tag        := Q.FieldByName('users_owner_id').AsInteger;
    bar_button.OnClick    := OnMenuUsersClick;
    with dxBarSubItem3.ItemLinks.Add do begin
      Index := 1 + Q.RecNo;
      Item  := bar_button;
    end;
    Q.Next;
  end;

  Q.Free;
  Screen.Cursor := crDefault;
end;

procedure TfmOrdersAgree.cxGrid1DBBandedTableView1CustomDrawCell(Sender: TcxCustomGridTableView; ACanvas: TcxCanvas; AViewInfo: TcxGridTableDataCellViewInfo; var ADone: Boolean);
begin
  if (AViewInfo.GridRecord.Values[cxGrid1DBBandedTableView1global_copy.Index]<>NULL)
      AND (AViewInfo.GridRecord.Values[cxGrid1DBBandedTableView1global_copy.Index]<>0) then ACanvas.Font.Color := clRed;

  if (AViewInfo.GridRecord.Values[cxGrid1DBBandedTableView1global_color.Index]<>NULL) then
    ACanvas.Brush.Color := AViewInfo.GridRecord.Values[cxGrid1DBBandedTableView1global_color.Index];

  if AViewInfo.GridRecord.Selected or AViewInfo.GridRecord.Focused then begin
    ACanvas.Brush.Color := clNavy;
    ACanvas.Font.Color := clWhite;
    if AViewInfo.Focused then ACanvas.Brush.Color := clBlue;
  end;
end;

procedure TfmOrdersAgree.cxGrid1DBBandedTableView1CustomDrawFooterCell(Sender: TcxGridTableView; ACanvas: TcxCanvas; AViewInfo: TcxGridColumnHeaderViewInfo; var ADone: Boolean);
begin
  if AViewInfo.Column.Focused then begin
    ACanvas.Brush.Color := clNavy;
    ACanvas.Font.Color := clWhite;
  end;
end;

procedure TfmOrdersAgree.cxGrid1DBBandedTableView1DataControllerFilterChanged(Sender: TObject);
begin
  DrawcxGridColumnOnFiltered(Sender);
end;

procedure TfmOrdersAgree.cxGrid1DBBandedTableView1FocusedItemChanged(Sender: TcxCustomGridTableView; APrevFocusedItem, AFocusedItem: TcxCustomGridTableItem);
begin
  Sender.Painter.Invalidate;
end;

procedure TfmOrdersAgree.cxGrid1DBBandedTableView1KeyPress(Sender: TObject; var Key: Char);
begin
  FilterColumnGridOnKeyPress(cxGrid1DBBandedTableView1, Key);
end;

procedure TfmOrdersAgree.cxGrid1DBBandedTableView1SelectionChanged(Sender: TcxCustomGridTableView);
begin
  cxPageControl2Change(nil);
end;

procedure TfmOrdersAgree.cxGrid2DBBandedTableView1CustomDrawCell(Sender: TcxCustomGridTableView; ACanvas: TcxCanvas; AViewInfo: TcxGridTableDataCellViewInfo; var ADone: Boolean);
begin
  if (cxGrid2DBBandedTableView1service_type_name.Index = AViewInfo.Item.ID) then begin
    if (AViewInfo.GridRecord.Values[cxGrid2DBBandedTableView1service_type.Index] = 0) then begin
      ACanvas.Font.Color := clRed;
      ACanvas.Font.Style := [fsBold];
    end;

    if (AViewInfo.GridRecord.Values[cxGrid2DBBandedTableView1service_type.Index] = 1) then begin
      ACanvas.Font.Color := clGreen;
      ACanvas.Font.Style := [fsBold];
    end;
  end;

  if AViewInfo.GridRecord.Selected or AViewInfo.GridRecord.Focused then begin
    ACanvas.Brush.Color := clNavy;
    ACanvas.Font.Color := clWhite;
    if AViewInfo.Focused then ACanvas.Brush.Color := clBlue;
  end;
end;

procedure TfmOrdersAgree.cxGrid2DBBandedTableView1CustomDrawColumnHeader(Sender: TcxGridTableView; ACanvas: TcxCanvas;AViewInfo: TcxGridColumnHeaderViewInfo; var ADone: Boolean);
begin
  if AViewInfo.Column.Focused then begin
    ACanvas.Brush.Color := clNavy;
    ACanvas.Font.Color := clWhite;
  end;
end;

procedure TfmOrdersAgree.cxGrid2DBBandedTableView1DataControllerFilterChanged(Sender: TObject);
begin
  DrawcxGridColumnOnFiltered(Sender);
end;

procedure TfmOrdersAgree.cxGrid2DBBandedTableView1FocusedItemChanged(Sender: TcxCustomGridTableView; APrevFocusedItem,AFocusedItem: TcxCustomGridTableItem);
begin
  Sender.Painter.Invalidate;
end;

procedure TfmOrdersAgree.cxGrid2DBBandedTableView1KeyPress(Sender: TObject; var Key: Char);
begin
  FilterColumnGridOnKeyPress(cxGrid2DBBandedTableView1, Key);
end;

procedure TfmOrdersAgree.cxGrid3DBBandedTableView1CustomDrawCell(Sender: TcxCustomGridTableView; ACanvas: TcxCanvas; AViewInfo: TcxGridTableDataCellViewInfo; var ADone: Boolean);
begin
  if (AViewInfo.GridRecord.Values[cxGrid3DBBandedTableView1global_color.Index]<>NULL) then
    ACanvas.Brush.Color := AViewInfo.GridRecord.Values[cxGrid3DBBandedTableView1global_color.Index];

  if (cxGrid3DBBandedTableView1service_type_name.Index = AViewInfo.Item.ID) then begin
    if (AViewInfo.GridRecord.Values[cxGrid3DBBandedTableView1service_type.Index] = 0) then begin
      ACanvas.Font.Color := clRed;
      ACanvas.Font.Style := [fsBold];
    end;

    if (AViewInfo.GridRecord.Values[cxGrid3DBBandedTableView1service_type.Index] = 1) then begin
      ACanvas.Font.Color := clGreen;
      ACanvas.Font.Style := [fsBold];
    end;
  end;

  if AViewInfo.GridRecord.Selected or AViewInfo.GridRecord.Focused then begin
    ACanvas.Brush.Color := clNavy;
    ACanvas.Font.Color := clWhite;
    if AViewInfo.Focused then ACanvas.Brush.Color := clBlue;
  end;
end;

procedure TfmOrdersAgree.cxGrid3DBBandedTableView1DataControllerFilterChanged(Sender: TObject);
begin
  DrawcxGridColumnOnFiltered(Sender);
end;

procedure TfmOrdersAgree.cxGrid3DBBandedTableView1KeyPress(Sender: TObject; var Key: Char);
begin
  FilterColumnGridOnKeyPress(cxGrid3DBBandedTableView1, Key);
end;

procedure TfmOrdersAgree.cxGrid4DBBandedTableView1CustomDrawCell(Sender: TcxCustomGridTableView; ACanvas: TcxCanvas; AViewInfo: TcxGridTableDataCellViewInfo; var ADone: Boolean);
begin
  if (AViewInfo.GridRecord.Values[cxGrid4DBBandedTableView1currency_id.Index] = 3) then ACanvas.Font.Color := clBlue
  else if (AViewInfo.GridRecord.Values[cxGrid4DBBandedTableView1currency_id.Index] <> 3) then ACanvas.Font.Color := clBlack;

  if (AViewInfo.GridRecord.Values[cxGrid4DBBandedTableView1global_copy.Index]<>NULL)
      AND (AViewInfo.GridRecord.Values[cxGrid4DBBandedTableView1global_copy.Index]<>0) then ACanvas.Font.Color := clRed;

  if (AViewInfo.GridRecord.Values[cxGrid4DBBandedTableView1global_color.Index]<>NULL) then ACanvas.Brush.Color := AViewInfo.GridRecord.Values[cxGrid4DBBandedTableView1global_color.Index];

  if (AViewInfo.GridRecord.Values[cxGrid4DBBandedTableView1date_period_finance.Index] <> NULL) then begin
    ACanvas.Font.Color := clPurple; //clMoneyGreen - $00AF0AAA;
    ACanvas.Font.Style := [fsBold];
  end;

  if AViewInfo.GridRecord.Selected or AViewInfo.GridRecord.Focused then begin
    ACanvas.Brush.Color := clNavy;
    if (AViewInfo.GridRecord.Values[cxGrid4DBBandedTableView1global_copy.Index]<>NULL)
      AND (AViewInfo.GridRecord.Values[cxGrid4DBBandedTableView1global_copy.Index]<>0) then ACanvas.Font.Color := clRed
    else ACanvas.Font.Color := clWhite;
    if AViewInfo.Focused then ACanvas.Brush.Color := clBlue;
  end;
end;

procedure TfmOrdersAgree.cxGrid4DBBandedTableView1CustomDrawColumnHeader(Sender: TcxGridTableView; ACanvas: TcxCanvas; AViewInfo: TcxGridColumnHeaderViewInfo; var ADone: Boolean);
begin
	if AViewInfo.Column.Focused then begin
		ACanvas.Brush.Color := clNavy;
		ACanvas.Font.Color := clWhite;
	end;
end;

procedure TfmOrdersAgree.cxGrid4DBBandedTableView1DataControllerFilterChanged(Sender: TObject);
begin
  DrawcxGridColumnOnFiltered(Sender);
end;

procedure TfmOrdersAgree.cxGrid4DBBandedTableView1FocusedItemChanged(Sender: TcxCustomGridTableView; APrevFocusedItem, AFocusedItem: TcxCustomGridTableItem);
begin
	cxGrid4DBBandedTableView1.Painter.Invalidate;
end;

procedure TfmOrdersAgree.cxGrid4DBBandedTableView1KeyPress(Sender: TObject;
  var Key: Char);
begin
	FilterColumnGridOnKeyPress(cxGrid4DBBandedTableView1, Key);
end;

procedure TfmOrdersAgree.cxPageControl1Change(Sender: TObject);
begin
  RefreshProcedure();
end;

procedure TfmOrdersAgree.cxPageControl2Change(Sender: TObject);
begin
  Screen.Cursor := crHourGlass;

  Query_OrdersAgreeRail.Close;
  Query_Bargain.Close;

  if (dxBarButton6.Down) AND (cxGrid1DBBandedTableView1orders_agree_id.DataBinding.Field <> nil) AND
      (cxGrid1DBBandedTableView1orders_agree_id.DataBinding.Field.Value <> null) then begin
    if cxPageControl2.ActivePageIndex = 0 then begin
      Query_OrdersAgreeRail.Parameters.ParamByName('orders_agree_id').Value := cxGrid1DBBandedTableView1orders_agree_id.DataBinding.Field.Value;
      Query_OrdersAgreeRail.Open;
    end;

    if cxPageControl2.ActivePageIndex = 1 then begin
      Query_Bargain.Parameters.ParamByName('orders_agree_id').Value := cxGrid1DBBandedTableView1orders_agree_id.DataBinding.Field.Value;
      Query_Bargain.Open;
    end;
  end;

  Screen.Cursor := crDefault;
end;

function TfmOrdersAgree.CheckOrdersAgree(orders_agree_id: integer): boolean;
var Q : TADOQuery;
begin
  Q := TADOQuery.Create(nil);
  Q.Connection := fmMain.Lis;
  Q.SQL.Text := 'SELECT bargain_id, orders_agree_id FROM view_bargain WHERE orders_agree_id = :orders_agree_id ';
  Q.Parameters.ParamByName('orders_agree_id').Value := orders_agree_id;
  Q.Open;

  if Q.fieldbyname('orders_agree_id').Value <> Null then begin
    Application.MessageBox('Создание ПЕРЕВОЗКИ или редактирование ЗАЯВКИ невозможно!!!' + #10#13 + 'На основании выбранной ЗАЯВКИ,' + #10#13 + 'уже создана ПЕРЕВОЗКА.', 'ВНИМАНИЕ', MB_OK+MB_ICONWARNING);
    Result := False
  end else
    Result := True;

  Q.Free;
end;

procedure TfmOrdersAgree.dxBarButton14Click(Sender: TObject);
begin
//Создание "перевозки" по "заявке на перевозку"
  if CheckOrdersAgree(cxGrid1DBBandedTableView1orders_agree_id.DataBinding.Field.AsInteger) then begin
    fmAgreeAdd2 := TfmAgreeAdd2.Create(Application);
    fmAgreeAdd2._SetInsertFromOrders := cxGrid1DBBandedTableView1orders_agree_id.DataBinding.Field.AsInteger;
    if fmAgreeAdd2.ShowModal = mrOk then begin
      fmAgree2 := TfmAgree2.Create(Application, False);
    end else
      exit;
  end;
end;

procedure TfmOrdersAgree.dxBarButton15Click(Sender: TObject);
begin
  case TdxBarButton(Sender).ClickItemLink.Owner.Owner.Tag of
    0:  SetRecordColor('orders_agree_id'     , cxGrid1DBBandedTableView1, 'ORDERS_AGREE'     , TComponent(Sender).Tag=1);
    1:  SetRecordColor('orders_agree_rail_id', cxGrid2DBBandedTableView1, 'ORDERS_AGREE_RAIL', TComponent(Sender).Tag=1);
    2:  SetRecordColor('orders_agree_rail_id', cxGrid3DBBandedTableView1, 'ORDERS_AGREE_RAIL', TComponent(Sender).Tag=1);
  end;

  case TdxBarButton(Sender).ClickItemLink.Owner.Owner.Tag of
    0:  RefreshQueryGrid(cxGrid1DBBandedTableView1, 'orders_agree_id');
    1:  RefreshQueryGrid(cxGrid2DBBandedTableView1, 'orders_agree_rail_id');
    2:  RefreshQueryGrid(cxGrid3DBBandedTableView1, 'orders_agree_rail_id');
  end;
end;

procedure TfmOrdersAgree.dxBarButton17Click(Sender: TObject);
begin
  case TdxBarButton(Sender).ClickItemLink.Owner.Owner.Tag of
    0: SetdxDBGridColumns(cxGrid1DBBandedTableView1);
    1: SetdxDBGridColumns(cxGrid2DBBandedTableView1);
    2: SetdxDBGridColumns(cxGrid3DBBandedTableView1);
  end;
end;

procedure TfmOrdersAgree.dxBarButton18Click(Sender: TObject);
begin
  case TdxBarButton(Sender).ClickItemLink.Owner.Owner.Tag of
    0: cxGrid1DBBandedTableView1.OptionsView.GroupByBox := not cxGrid1DBBandedTableView1.OptionsView.GroupByBox;
    1: cxGrid2DBBandedTableView1.OptionsView.GroupByBox := not cxGrid2DBBandedTableView1.OptionsView.GroupByBox;
    2: cxGrid3DBBandedTableView1.OptionsView.GroupByBox := not cxGrid3DBBandedTableView1.OptionsView.GroupByBox;
  end;
end;

procedure TfmOrdersAgree.dxBarButton19Click(Sender: TObject);
begin
  case TdxBarButton(Sender).ClickItemLink.Owner.Owner.Tag of
    0: PrintcxGrid(cxGrid1DBBandedTableView1);
    1: PrintcxGrid(cxGrid2DBBandedTableView1);
    2: PrintcxGrid(cxGrid3DBBandedTableView1);
  end;
end;

procedure TfmOrdersAgree.dxBarButton1Click(Sender: TObject);
begin
  fmOrdersAgreeAdd := TfmOrdersAgreeAdd.Create(Application);
  fmOrdersAgreeAdd._SetInsert := True;

  if fmOrdersAgreeAdd.ShowModal = mrOk then begin
    if cxPageControl1.ActivePageIndex = 0 then
      RefreshQueryGrid(cxGrid1DBBandedTableView1, 'orders_agree_id', fmOrdersAgreeAdd._GetOrdersAgreeID)
    else
      RefreshQueryGrid(cxGrid3DBBandedTableView1, 'orders_agree_rail_id');
    ShowTextMessage;
  end;
end;

procedure TfmOrdersAgree.dxBarButton20Click(Sender: TObject);
var SP_orders_agree_modify : TADOStoredProc;
                         i : integer;
                         Q : TADOQuery;
begin
  if Application.MessageBox('Копировать заявки?', 'Внимание', MB_ICONQUESTION or MB_OKCANCEL) = ID_OK then begin
    Screen.Cursor := crHourGlass;

    SP_orders_agree_modify := TADOStoredProc.Create(nil);
    SP_orders_agree_modify.Connection    := fmMain.Lis;
    SP_orders_agree_modify.ProcedureName := 'sp_orders_agree_modify';
    for i:=0 to cxGrid1DBBandedTableView1.Controller.SelectedRecordCount - 1 do begin
      ShowTextMessage('Осталось ' + IntToStr(cxGrid1DBBandedTableView1.Controller.SelectedRecordCount - i)+ '...',False);
      SP_orders_agree_modify.Parameters.Refresh;
      SP_orders_agree_modify.Parameters.ParamByName('@orders_agree_id').Value := cxGrid1DBBandedTableView1.Controller.SelectedRows[i].Values[cxGrid1DBBandedTableView1orders_agree_id.Index];
      SP_orders_agree_modify.Parameters.ParamByName('@type_action'    ).Value := 4;

      try
        SP_orders_agree_modify.ExecProc;
      except
      end;

    end;

    if SP_orders_agree_modify.Parameters.ParamByName('@orders_agree_id').Value <> -9 then begin
      Q := TADOQuery.Create(nil);
      Q.Connection := fmMain.Lis;
      Q.SQL.Add('SELECT * FROM view_orders_agree WHERE orders_agree_id = ' + IntToStr(SP_orders_agree_modify.Parameters.ParamByName('@orders_agree_id').Value));
      Q.Open;

      Fdate1 := Q.FieldByName('date_period_orders').AsDateTime - DayOf(Q.FieldByName('date_period_orders').AsDateTime) + 1;
      Fdate2 := IncMonth(Fdate1) - 1;
      Fusers_id := Q.FieldByName('users_owner_id').AsInteger;
      Caption   := 'Заявки на перевозку (' + Q.FieldByName('FIO_users_owner').AsString + ')';

      RefreshProcedure;
    end;
    ShowTextMessage();
    Screen.Cursor := crDefault;
  end;
end;

procedure TfmOrdersAgree.dxBarButton23Click(Sender: TObject);
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

  RefreshProcedure();

  Screen.Cursor := crDefault;
end;

procedure TfmOrdersAgree.dxBarButton24Click(Sender: TObject);
type
    TFunc = function(AppHand:THandle; f:boolean; usr_pwd:PUser_pwd; budget_type_cod: string; budget_id: integer) : variant;
var
    FDic     : TFunc;
    handle   : THandle;
    v        : Variant;
    SP       : TADOStoredProc;
    i        : integer;
    Fview    : TcxGridDBBandedTableView;
begin
  if Sender is TdxBarButton then begin
    case TdxBarButton(Sender).ClickItemLink.Owner.Owner.Tag of
      2 : Fview := cxGrid3DBBandedTableView1;
      1 : Fview := cxGrid2DBBandedTableView1;
    end;
  end else begin
    Fview := TcxGridDBBandedTableView(TcxGridSite(Sender).GridView);
  end;

  if Fview.Controller.SelectedRecordCount = 0 then
    exit;

  handle := LoadLibrary('dictionary.dll');
  @FDic := GetProcAddress(handle, 'CreateWndDictService');
  v := FDic(Application.Handle, True, usr_pwd, '', -9);
  FreeLibrary(handle);

  if v[0] <> -9 then begin
    SP := TADOStoredProc.Create(nil);
    SP.Connection := fmMain.Lis;
    SP.ProcedureName := 'sp_bargain_change_budget';
    SP.Parameters.Refresh;

    Screen.Cursor := crHourglass;
    for i := 0 to Fview.Controller.SelectedRecordCount - 1 do begin
      SP.Close;
      SP.Parameters.ParamByName('@type_action'          ).Value := 2;
      SP.Parameters.ParamByName('@orders_agree_rail_id' ).Value := Fview.Controller.SelectedRows[i].Values[Fview.GetColumnByFieldName('orders_agree_rail_id').Index];
      SP.Parameters.ParamByName('@budget_id'            ).Value := v[0];
      SP.ExecProc;

      ShowTextMessage('Осталось '+IntToStr(Fview.Controller.SelectedRowCount - i)+' строк...', False);
    end;
    RefreshQueryGrid(Fview, 'orders_agree_rail_id');

    ShowTextMessage();
    SP.Free;
    Screen.Cursor := crDefault;
  end;

end;

procedure TfmOrdersAgree.dxBarButton10Click(Sender: TObject);
begin
	PrintcxGrid(cxGrid4DBBandedTableView1);
end;

procedure TfmOrdersAgree.dxBarButton12Click(Sender: TObject);
var  Fview : TcxGridDBBandedTableView;
begin
  if Sender is TdxBarButton then begin
    case TdxBarButton(Sender).ClickItemLink.Owner.Owner.Tag of
      2 : Fview := cxGrid3DBBandedTableView1;
      1 : Fview := cxGrid2DBBandedTableView1;
    end;
  end else begin
    Fview := TcxGridDBBandedTableView(TcxGridSite(Sender).GridView);
  end;

  if Fview.Controller.SelectedRecordCount = 0 then
      exit;

  if CheckOrdersAgree(Fview.GetColumnByFieldName('orders_agree_id').DataBinding.Field.AsInteger) then begin
    fmOrdersAgreeAdd := TfmOrdersAgreeAdd.Create(Application);
    fmOrdersAgreeAdd._SetUpdateOrderAgreeRail := Fview.GetColumnByFieldName('orders_agree_rail_id').DataBinding.Field.AsInteger;
    if fmOrdersAgreeAdd.ShowModal = mrOk then begin
      RefreshProcedure();
    end;
  end;
end;

procedure TfmOrdersAgree.dxBarButton25Click(Sender: TObject);
begin
	SetdxDBGridColumns(cxGrid4DBBandedTableView1);
end;

procedure TfmOrdersAgree.dxBarButton26Click(Sender: TObject);
begin
	cxGrid4DBBandedTableView1.OptionsView.GroupByBox := not cxGrid4DBBandedTableView1.OptionsView.GroupByBox;
end;

procedure TfmOrdersAgree.dxBarButton2Click(Sender: TObject);
begin
  if CheckOrdersAgree(cxGrid1DBBandedTableView1orders_agree_id.DataBinding.Field.AsInteger) then begin
    fmOrdersAgreeAdd := TfmOrdersAgreeAdd.Create(Application);
    fmOrdersAgreeAdd._SetUpdate := cxGrid1DBBandedTableView1orders_agree_id.DataBinding.Field.Value;
    if fmOrdersAgreeAdd.ShowModal = mrOk then begin
      RefreshProcedure;
    end;
  end;
end;

procedure TfmOrdersAgree.dxBarButton3Click(Sender: TObject);
var SP_orders_agree_modify : TADOStoredProc;
                         i : integer;
begin
  if Application.MessageBox('Удалить выбранные заявки?', 'Вниамние', MB_ICONWARNING or MB_OKCANCEL) = ID_OK then begin
    Screen.Cursor := crHourGlass;

    SP_orders_agree_modify := TADOStoredProc.Create(nil);
    SP_orders_agree_modify.Connection    := fmMain.Lis;
    SP_orders_agree_modify.ProcedureName := 'sp_orders_agree_modify';
    for i:=0 to cxGrid1DBBandedTableView1.Controller.SelectedRecordCount - 1 do begin
      ShowTextMessage('Осталось ' + IntToStr(cxGrid1DBBandedTableView1.Controller.SelectedRecordCount - i)+ '...',False);
      SP_orders_agree_modify.Parameters.Refresh;
      SP_orders_agree_modify.Parameters.ParamByName('@orders_agree_id').Value := cxGrid1DBBandedTableView1.Controller.SelectedRows[i].Values[cxGrid1DBBandedTableView1orders_agree_id.Index];
      SP_orders_agree_modify.Parameters.ParamByName('@type_action'    ).Value := 2;

      SP_orders_agree_modify.ExecProc;
    end;
    SP_orders_agree_modify.Free;

    ShowTextMessage();
    RefreshQueryGrid(cxGrid1DBBandedTableView1, 'orders_agree_id');

    Screen.Cursor := crDefault;
  end;
end;

procedure TfmOrdersAgree.dxBarButton4Click(Sender: TObject);
begin
  RefreshProcedure;
end;

procedure TfmOrdersAgree.dxBarButton5Click(Sender: TObject);
var str_orders_agree_rail_id : string;
                           i : integer;
begin
  str_orders_agree_rail_id := '';
  for i:=0 to cxGrid3DBBandedTableView1.Controller.SelectedRecordCount - 1 do begin
    cxGrid3DBBandedTableView1.Controller.SelectedRows[i].Focused := True;
    str_orders_agree_rail_id := str_orders_agree_rail_id + ', ' + IntToStr(cxGrid3DBBandedTableView1orders_agree_rail_id.DataBinding.Field.AsInteger);
  end;
  Delete(str_orders_agree_rail_id, 1, 2);
  Fstr_orders_agree_rail_id := str_orders_agree_rail_id;

  ModalResult := mrOk;
end;

procedure TfmOrdersAgree.RefreshProcedure();
var id: integer;
begin
  Screen.Cursor := crHourGlass;
  if cxPageControl1.ActivePageIndex = 0 then begin

    if Query_OrdersAgree.Active then begin
      if cxGrid1DBBandedTableView1orders_agree_id.DataBinding.Field.IsNull then id:=-9
      else id := cxGrid1DBBandedTableView1orders_agree_id.DataBinding.Field.Value;
    end else id:=-9;

    Query_OrdersAgree.Close;
    Query_OrdersAgree.Parameters.ParamByName('date1'   ).Value := Fdate1;
    Query_OrdersAgree.Parameters.ParamByName('date2'   ).Value := Fdate2;
    Query_OrdersAgree.Parameters.ParamByName('users_id').Value := Fusers_id;
    Query_OrdersAgree.Open;

    if id <> -9 then begin
      cxGrid1DBBandedTableView1.Controller.ClearSelection;
      if cxGrid1DBBandedTableView1.DataController.LocateByKey(id) = False then cxGrid1DBBandedTableView1.Controller.GoToFirst;
      if cxGrid1DBBandedTableView1.Controller.FocusedRecord <> nil then  cxGrid1DBBandedTableView1.Controller.FocusedRecord.Selected := True;
    end;

    cxGrid1DBBandedTableView1SelectionChanged(nil);
  end else begin
    if Query_OrdersAgreeRail_List.Active then begin
      if cxGrid3DBBandedTableView1orders_agree_rail_id.DataBinding.Field.IsNull then id:=-9
      else id := cxGrid3DBBandedTableView1orders_agree_rail_id.DataBinding.Field.Value;
    end else id:=-9;

    Query_OrdersAgreeRail_List.Close;
    Query_OrdersAgreeRail_List.Parameters.ParamByName('date1'   ).Value := Fdate1;
    Query_OrdersAgreeRail_List.Parameters.ParamByName('date2'   ).Value := Fdate2;
    Query_OrdersAgreeRail_List.Parameters.ParamByName('users_id').Value := Fusers_id;
    Query_OrdersAgreeRail_List.Open;

    if id <> -9 then begin
      cxGrid3DBBandedTableView1.Controller.ClearSelection;
      if cxGrid3DBBandedTableView1.DataController.LocateByKey(id) = False then cxGrid3DBBandedTableView1.Controller.GoToFirst;
      if cxGrid3DBBandedTableView1.Controller.FocusedRecord <> nil        then cxGrid3DBBandedTableView1.Controller.FocusedRecord.Selected := True;
    end;
  end;
  Screen.Cursor := crDefault;
end;

end.

