unit Fact;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs, Default,
  StdCtrls, Buttons, ExtCtrls, ADODB, Menus, ComCtrls, cxPropertiesStore, cxGridCustomTableView, cxGridTableView, Variants,
  cxGridBandedTableView, cxGridDBBandedTableView, cxClasses, cxControls, cxGridCustomView, cxGridLevel, cxGrid, cxGraphics, Db,
  cxStyles, cxCustomData, cxFilter, cxData, cxDataStorage, cxDBData, cxCurrencyEdit, cxLookAndFeelPainters, cxButtons,
  cxLabel, cxContainer, dxGDIPlusClasses, cxCalendar, cxEdit, cxCheckBox, dxBar, dxSkinsCore, dxSkinBlack, dxSkinBlue,
  dxSkinBlueprint, dxSkinCaramel, dxSkinCoffee, dxSkinDarkroom, dxSkinDarkSide, dxSkinDevExpressDarkStyle, dxSkinDevExpressStyle,
  dxSkinFoggy, dxSkinGlassOceans, dxSkinHighContrast, dxSkiniMaginary, dxSkinLilian, dxSkinLiquidSky, dxSkinLondonLiquidSky, dxSkinMcSkin,
  dxSkinMetropolis, dxSkinMetropolisDark, dxSkinMoneyTwins, dxSkinOffice2007Black, dxSkinOffice2007Blue, dxSkinOffice2007Green,
  dxSkinOffice2007Pink, dxSkinOffice2007Silver, dxSkinOffice2010Black, dxSkinOffice2010Blue, dxSkinOffice2010Silver,
  dxSkinOffice2013DarkGray, dxSkinOffice2013LightGray, dxSkinOffice2013White, dxSkinOffice2016Colorful, dxSkinOffice2016Dark,
  dxSkinPumpkin, dxSkinSeven, dxSkinSevenClassic, dxSkinSharp, dxSkinSharpPlus, dxSkinSilver, dxSkinSpringtime, dxSkinStardust,
  dxSkinSummer2008, dxSkinTheAsphaltWorld, dxSkinTheBezier, dxSkinsDefaultPainters, dxSkinValentine, dxSkinVisualStudio2013Blue,
  dxSkinVisualStudio2013Dark, dxSkinVisualStudio2013Light, dxSkinVS2010, dxSkinWhiteprint, dxSkinXmas2008Blue, dxBarBuiltInMenu,
  cxLookAndFeels, dxDateRanges, cxColorComboBox, Datasnap.DBClient, cxDataControllerConditionalFormattingRulesManagerDialog,
  cxSplitter, cxPC, XMLDoc, XMLIntf, XSBuiltIns, DateUtils, cxNavigator, dxSkinOffice2019Colorful,
  dxScrollbarAnnotations, dxSkinBasic, dxSkinOffice2019Black, dxSkinOffice2019DarkGray, dxSkinOffice2019White, dxSkinWXI;

type
  TfmFact = class(TForm)
    DS_Fact: TDataSource;
    cxPropertiesStore1: TcxPropertiesStore;
    SP_FactFind: TADOStoredProc;
    OpenDialog1: TOpenDialog;
    dxBarManager1: TdxBarManager;
    dxBarManager1Bar1: TdxBar;
    PopupMenu1: TdxBarPopupMenu;
    N49: TdxBarButton;
    N6: TdxBarButton;
    N47: TdxBarButton;
    N8: TdxBarButton;
    N7: TdxBarButton;
    N24: TdxBarButton;
    N43: TdxBarSubItem;
    N52: TdxBarButton;
    Excel6: TdxBarButton;
    N12: TdxBarSubItem;
    N58: TdxBarSubItem;
    N17: TdxBarButton;
    N39: TdxBarButton;
    N40: TdxBarButton;
    Excel3: TdxBarButton;
    N51: TdxBarSubItem;
    N21: TdxBarButton;
    N18: TdxBarButton;
    N30: TdxBarSubItem;
    N42: TdxBarButton;
    N11: TdxBarSubItem;
    Excel2: TdxBarButton;
    N46: TdxBarButton;
    N2: TdxBarButton;
    N3: TdxBarButton;
    N5: TdxBarButton;
    N25: TdxBarButton;
    N1: TdxBarSubItem;
    dxBarButton1: TdxBarButton;
    dxBarButton2: TdxBarButton;
    dxBarButton3: TdxBarButton;
    dxBarSubItem1: TdxBarSubItem;
    dxBarButton5: TdxBarButton;
    dxBarButton6: TdxBarButton;
    dxBarButton7: TdxBarButton;
    dxBarButton8: TdxBarButton;
    dxBarButton9: TdxBarButton;
    dxBarButton12: TdxBarButton;
    Client: TClientDataSet;
    Clientnum_document: TStringField;
    Clientnum_document_pref: TStringField;
    Clientnode_begin: TStringField;
    Clientnode_end: TStringField;
    Clientnode_end_sng: TStringField;
    Clientkargoetsng: TStringField;
    Clientkargogng: TStringField;
    Clientdistance: TStringField;
    Clientstate_begin: TStringField;
    Clientstate_end: TStringField;
    Clientcode_exception: TStringField;
    Clienttransport_pay: TFloatField;
    Clientcurrency: TStringField;
    Clientsumnds: TFloatField;
    Clientnum_vagon: TStringField;
    Clientkargo_capacity: TStringField;
    Clientcalc_weight: TFloatField;
    Clientnum_konten: TStringField;
    Clientdate_from_to: TStringField;
    Clientdate_deliverydatpr: TStringField;
    Clientnode_begin_sng: TStringField;
    Clientinv_vis: TStringField;
    Clientcar_count: TIntegerField;
    Clientkatotr: TIntegerField;
    dxBarButton_Rent: TdxBarButton;
    dxBarButton_LoadDBF: TdxBarButton;
    ClientDS_LoadDBF: TClientDataSet;
    StringField1: TStringField;
    StringField2: TStringField;
    FloatField2: TFloatField;
    StringField14: TStringField;
    StringField15: TStringField;
    StringField17: TStringField;
    ClientDS_LoadDBFrecord_id: TIntegerField;
    ClientDS_LoadDBFnode_begin_id: TIntegerField;
    ClientDS_LoadDBFnode_end_id: TIntegerField;
    ClientDS_LoadDBFkargoETSNG_id: TIntegerField;
    ClientDS_LoadDBFstate_begin_id: TIntegerField;
    ClientDS_LoadDBFstate_end_id: TIntegerField;
    ClientDS_LoadDBFroad_begin_id: TIntegerField;
    ClientDS_LoadDBFroad_end_id: TIntegerField;
    ClientDS_LoadDBFfact_weight: TFloatField;
    ClientDS_LoadDBFtransport_pay: TCurrencyField;
    ClientDS_LoadDBFetran_owner_name: TStringField;
    ClientDS_LoadDBFdate_delivery: TStringField;
    dxBarButton_ReportVagon: TdxBarButton;
    dxBarButton_ToZFTOScore: TdxBarButton;
    dxBarSubItem_ViewFactSum: TdxBarSubItem;
    dxBarButton_GotoSumFact: TdxBarButton;
    dxBarButton_CreateFactSumRecord: TdxBarButton;
    dxBarButton13: TdxBarButton;
    dxBarButton15: TdxBarButton;
    dxBarButton16: TdxBarButton;
    dxBarButton10: TdxBarButton;
    cxPageControl1: TcxPageControl;
    cxTabSheet1: TcxTabSheet;
    cxGrid1: TcxGrid;
    cxGrid1DBBandedTableView1: TcxGridDBBandedTableView;
    cxGrid1DBBandedTableView1fact_id: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1num_vagon: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1date_from_to: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1date_ready: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1datpr: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1bargain_cod: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1firm_customer_name: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1contract_cod: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1num_konten: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1fact_weight: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1kargo_capacity: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1calc_weight: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1transport_pay: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1sub_cod_self: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1node_begin_name: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1node_end_name: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1node_begin_cod: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1node_end_cod: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1node_end_SNG_name: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1node_begin_SNG_name: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1kargoETSNG_name: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1kargoGNG_name: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1state_begin_name: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1state_end_name: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1set_main: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1brief_name: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1firm_info_name: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1file_load_info: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1date_load_file: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1last_bargain_id: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1fact_etran_comment: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1fact_users_comment: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1etran_folder: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1doc_date_last_oper: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1bargain_id: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1calc_weight_check: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1fkv: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1xml_reply_id: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1global_color: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1date_delivery: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1payer_cod: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1claim_num: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1etran_fact_load: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1etran_date_departure: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1etran_date_arrive: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1etran_date_delivery: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1road_begin_name: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1road_end_name: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1plan_client_id: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1etran_owner_name: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1els_cod: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1etran_date_register: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1etran_date_receiving: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1etran_SenderOKPO: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1etran_SenderName: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1etran_RecipOKPO: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1etran_RecipName: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1etran_date_expire: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1date_period_finance_name: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1etran_SendKind: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1etran_invRouteName: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1type_sps_name: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1comment1: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1kargoETSNG_cod: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1nds: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1distance1: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1etran_carTenantName: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1owner_name: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1type_park_name: TcxGridDBBandedColumn;
    cxGrid1Level1: TcxGridLevel;
    ADOFactAll: TADOConnection;
    cxGrid1DBBandedTableView1prev_node_begin_cod: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1prev_node_begin_name: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1prev_node_end_cod: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1prev_node_end_name: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1prev_num_document: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1prev_firm_client_name: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1prev_kargo_ETSNG_name: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1prev_date_otpr: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1prev_date_arrival: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1next_num_document: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1next_date_otpr: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1next_date_arrival: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1next_node_begin_cod: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1next_node_begin_name: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1next_node_end_cod: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1next_node_end_name: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1next_kargo_ETSNG_name: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1next_firm_client_name: TcxGridDBBandedColumn;
    dxBarButton17: TdxBarButton;
    dxBarButton18: TdxBarButton;
    dxBarButton19: TdxBarButton;
    dxBarButton20: TdxBarButton;
    cxGrid1DBBandedTableView1prev_fact_weight: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1next_fact_weight: TcxGridDBBandedColumn;
    dxBarButton21: TdxBarButton;
    dxBarButton22: TdxBarButton;
    cxGrid1DBBandedTableView1prev_num_document_pref: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1next_num_document_pref: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1group_name: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1empty_firm_client_name: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1comment6_client_name: TcxGridDBBandedColumn;
    dxBarButton27: TdxBarButton;
    cxGrid1DBBandedTableView1sps_type: TcxGridDBBandedColumn;
    dxBarSubItem4: TdxBarSubItem;
    cxGrid1DBBandedTableView1rod_vagon_name: TcxGridDBBandedColumn;
    dxBarButton29: TdxBarButton;
    dxBarButton30: TdxBarButton;
    dxBarButton31: TdxBarButton;
    cxGrid1DBBandedTableView1users_name: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1owner_vagon_comment: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1kateg_send_name: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1point_begin_name: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1point_end_name: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1comment6_agent_name: TcxGridDBBandedColumn;
    dxBarButton40: TdxBarButton;
    Query: TADOQuery;
    cxTabSheet3: TcxTabSheet;
    cxGrid3Level1: TcxGridLevel;
    cxGrid3: TcxGrid;
    cxSplitter1: TcxSplitter;
    cxGrid3DBBandedTableView1: TcxGridDBBandedTableView;
    ClientDS_Route: TClientDataSet;
    ClientDS_Routenum_vagon: TIntegerField;
    ClientDS_Routeroute_days: TIntegerField;
    DS_Route: TDataSource;
    cxGrid3DBBandedTableView1id: TcxGridDBBandedColumn;
    cxGrid3DBBandedTableView1num_vagon: TcxGridDBBandedColumn;
    cxGrid3DBBandedTableView1r1_num_document: TcxGridDBBandedColumn;
    cxGrid3DBBandedTableView1r1_date_from_to: TcxGridDBBandedColumn;
    cxGrid3DBBandedTableView1r1_datpr: TcxGridDBBandedColumn;
    cxGrid3DBBandedTableView1r1_node_begin_cod: TcxGridDBBandedColumn;
    cxGrid3DBBandedTableView1r1_node_begin_name: TcxGridDBBandedColumn;
    cxGrid3DBBandedTableView1r1_node_end_cod: TcxGridDBBandedColumn;
    cxGrid3DBBandedTableView1r1_node_end_name: TcxGridDBBandedColumn;
    cxGrid3DBBandedTableView1r1_kargoETSNG_name: TcxGridDBBandedColumn;
    cxGrid3DBBandedTableView1r1_fact_weight: TcxGridDBBandedColumn;
    cxGrid3DBBandedTableView1r2_num_document: TcxGridDBBandedColumn;
    cxGrid3DBBandedTableView1r2_date_from_to: TcxGridDBBandedColumn;
    cxGrid3DBBandedTableView1r2_datpr: TcxGridDBBandedColumn;
    cxGrid3DBBandedTableView1r2_node_begin_cod: TcxGridDBBandedColumn;
    cxGrid3DBBandedTableView1r2_node_begin_name: TcxGridDBBandedColumn;
    cxGrid3DBBandedTableView1r2_node_end_cod: TcxGridDBBandedColumn;
    cxGrid3DBBandedTableView1r2_node_end_name: TcxGridDBBandedColumn;
    cxGrid3DBBandedTableView1r2_kargoETSNG_name: TcxGridDBBandedColumn;
    cxGrid3DBBandedTableView1r2_fact_weight: TcxGridDBBandedColumn;
    cxGrid3DBBandedTableView1r4_num_document: TcxGridDBBandedColumn;
    cxGrid3DBBandedTableView1r4_comment6_client_name: TcxGridDBBandedColumn;
    cxGrid3DBBandedTableView1r4_date_from_to: TcxGridDBBandedColumn;
    cxGrid3DBBandedTableView1r4_datpr: TcxGridDBBandedColumn;
    cxGrid3DBBandedTableView1r4_node_begin_cod: TcxGridDBBandedColumn;
    cxGrid3DBBandedTableView1r4_node_begin_name: TcxGridDBBandedColumn;
    cxGrid3DBBandedTableView1r4_node_end_cod: TcxGridDBBandedColumn;
    cxGrid3DBBandedTableView1r4_node_end_name: TcxGridDBBandedColumn;
    cxGrid3DBBandedTableView1r4_kargoETSNG_name: TcxGridDBBandedColumn;
    cxGrid3DBBandedTableView1r4_fact_weight: TcxGridDBBandedColumn;
    cxGrid3DBBandedTableView1r5_num_document: TcxGridDBBandedColumn;
    cxGrid3DBBandedTableView1r5_comment6_client_name: TcxGridDBBandedColumn;
    cxGrid3DBBandedTableView1r5_date_from_to: TcxGridDBBandedColumn;
    cxGrid3DBBandedTableView1r5_datpr: TcxGridDBBandedColumn;
    cxGrid3DBBandedTableView1r5_node_begin_cod: TcxGridDBBandedColumn;
    cxGrid3DBBandedTableView1r5_node_begin_name: TcxGridDBBandedColumn;
    cxGrid3DBBandedTableView1r5_node_end_cod: TcxGridDBBandedColumn;
    cxGrid3DBBandedTableView1r5_node_end_name: TcxGridDBBandedColumn;
    cxGrid3DBBandedTableView1r5_kargoETSNG_name: TcxGridDBBandedColumn;
    cxGrid3DBBandedTableView1r5_fact_weight: TcxGridDBBandedColumn;
    cxGrid3DBBandedTableView1calc_sum_otpr_empty: TcxGridDBBandedColumn;
    cxGrid3DBBandedTableView1calc_otpr_empty: TcxGridDBBandedColumn;
    cxGrid3DBBandedTableView1route_economy_sum: TcxGridDBBandedColumn;
    cxGrid3DBBandedTableView1route_days: TcxGridDBBandedColumn;
    dxBarPopupMenu1: TdxBarPopupMenu;
    dxBarSubItem14: TdxBarSubItem;
    sp_fact_profit_GET: TADOStoredProc;
    ClientDS_Routeid: TIntegerField;
    ClientDS_Routecalc_otpr_empty: TBCDField;
    ClientDS_Routecalc_sum_otpr_empty: TBCDField;
    ClientDS_Routeroute_economy_sum: TBCDField;
    cxGrid4: TcxGrid;
    cxGrid4DBBandedTableView1: TcxGridDBBandedTableView;
    cxGrid4DBBandedTableView1fact_id: TcxGridDBBandedColumn;
    cxGrid4DBBandedTableView1num_vagon: TcxGridDBBandedColumn;
    cxGrid4DBBandedTableView1num_document_pref: TcxGridDBBandedColumn;
    cxGrid4DBBandedTableView1num_document: TcxGridDBBandedColumn;
    cxGrid4DBBandedTableView1date_from_to: TcxGridDBBandedColumn;
    cxGrid4DBBandedTableView1date_ready: TcxGridDBBandedColumn;
    cxGrid4DBBandedTableView1datpr: TcxGridDBBandedColumn;
    cxGrid4DBBandedTableView1bargain_cod: TcxGridDBBandedColumn;
    cxGrid4DBBandedTableView1firm_customer_name: TcxGridDBBandedColumn;
    cxGrid4DBBandedTableView1contract_cod: TcxGridDBBandedColumn;
    cxGrid4DBBandedTableView1num_konten: TcxGridDBBandedColumn;
    cxGrid4DBBandedTableView1fact_weight: TcxGridDBBandedColumn;
    cxGrid4DBBandedTableView1kargo_capacity: TcxGridDBBandedColumn;
    cxGrid4DBBandedTableView1calc_weight: TcxGridDBBandedColumn;
    cxGrid4DBBandedTableView1transport_pay: TcxGridDBBandedColumn;
    cxGrid4DBBandedTableView1sub_cod_self: TcxGridDBBandedColumn;
    cxGrid4DBBandedTableView1kateg_send_name: TcxGridDBBandedColumn;
    cxGrid4DBBandedTableView1node_begin_name: TcxGridDBBandedColumn;
    cxGrid4DBBandedTableView1node_end_name: TcxGridDBBandedColumn;
    cxGrid4DBBandedTableView1node_begin_cod: TcxGridDBBandedColumn;
    cxGrid4DBBandedTableView1node_end_cod: TcxGridDBBandedColumn;
    cxGrid4DBBandedTableView1node_end_SNG_name: TcxGridDBBandedColumn;
    cxGrid4DBBandedTableView1node_begin_SNG_name: TcxGridDBBandedColumn;
    cxGrid4DBBandedTableView1kargoETSNG_name: TcxGridDBBandedColumn;
    cxGrid4DBBandedTableView1kargoGNG_name: TcxGridDBBandedColumn;
    cxGrid4DBBandedTableView1state_begin_name: TcxGridDBBandedColumn;
    cxGrid4DBBandedTableView1state_end_name: TcxGridDBBandedColumn;
    cxGrid4DBBandedTableView1set_main: TcxGridDBBandedColumn;
    cxGrid4DBBandedTableView1brief_name: TcxGridDBBandedColumn;
    cxGrid4DBBandedTableView1firm_info_name: TcxGridDBBandedColumn;
    cxGrid4DBBandedTableView1file_load_info: TcxGridDBBandedColumn;
    cxGrid4DBBandedTableView1date_load_file: TcxGridDBBandedColumn;
    cxGrid4DBBandedTableView1last_bargain_id: TcxGridDBBandedColumn;
    cxGrid4DBBandedTableView1fact_etran_comment: TcxGridDBBandedColumn;
    cxGrid4DBBandedTableView1fact_users_comment: TcxGridDBBandedColumn;
    cxGrid4DBBandedTableView1etran_folder: TcxGridDBBandedColumn;
    cxGrid4DBBandedTableView1doc_date_last_oper: TcxGridDBBandedColumn;
    cxGrid4DBBandedTableView1bargain_id: TcxGridDBBandedColumn;
    cxGrid4DBBandedTableView1calc_weight_check: TcxGridDBBandedColumn;
    cxGrid4DBBandedTableView1fkv: TcxGridDBBandedColumn;
    cxGrid4DBBandedTableView1xml_reply_id: TcxGridDBBandedColumn;
    cxGrid4DBBandedTableView1global_color: TcxGridDBBandedColumn;
    cxGrid4DBBandedTableView1date_delivery: TcxGridDBBandedColumn;
    cxGrid4DBBandedTableView1payer_cod: TcxGridDBBandedColumn;
    cxGrid4DBBandedTableView1claim_num: TcxGridDBBandedColumn;
    cxGrid4DBBandedTableView1etran_fact_load: TcxGridDBBandedColumn;
    cxGrid4DBBandedTableView1etran_date_departure: TcxGridDBBandedColumn;
    cxGrid4DBBandedTableView1etran_date_arrive: TcxGridDBBandedColumn;
    cxGrid4DBBandedTableView1etran_date_delivery: TcxGridDBBandedColumn;
    cxGrid4DBBandedTableView1road_begin_name: TcxGridDBBandedColumn;
    cxGrid4DBBandedTableView1road_end_name: TcxGridDBBandedColumn;
    cxGrid4DBBandedTableView1plan_client_id: TcxGridDBBandedColumn;
    cxGrid4DBBandedTableView1etran_owner_name: TcxGridDBBandedColumn;
    cxGrid4DBBandedTableView1els_cod: TcxGridDBBandedColumn;
    cxGrid4DBBandedTableView1etran_date_register: TcxGridDBBandedColumn;
    cxGrid4DBBandedTableView1etran_date_receiving: TcxGridDBBandedColumn;
    cxGrid4DBBandedTableView1etran_SenderOKPO: TcxGridDBBandedColumn;
    cxGrid4DBBandedTableView1etran_SenderName: TcxGridDBBandedColumn;
    cxGrid4DBBandedTableView1etran_RecipOKPO: TcxGridDBBandedColumn;
    cxGrid4DBBandedTableView1etran_RecipName: TcxGridDBBandedColumn;
    cxGrid4DBBandedTableView1etran_date_expire: TcxGridDBBandedColumn;
    cxGrid4DBBandedTableView1date_period_finance_name: TcxGridDBBandedColumn;
    cxGrid4DBBandedTableView1etran_SendKind: TcxGridDBBandedColumn;
    cxGrid4DBBandedTableView1etran_invRouteName: TcxGridDBBandedColumn;
    cxGrid4DBBandedTableView1type_sps_name: TcxGridDBBandedColumn;
    cxGrid4DBBandedTableView1comment1: TcxGridDBBandedColumn;
    cxGrid4DBBandedTableView1kargoETSNG_cod: TcxGridDBBandedColumn;
    cxGrid4DBBandedTableView1nds: TcxGridDBBandedColumn;
    cxGrid4DBBandedTableView1distance1: TcxGridDBBandedColumn;
    cxGrid4DBBandedTableView1etran_carTenantName: TcxGridDBBandedColumn;
    cxGrid4DBBandedTableView1owner_name: TcxGridDBBandedColumn;
    cxGrid4DBBandedTableView1type_park_name: TcxGridDBBandedColumn;
    cxGrid4DBBandedTableView1prev_num_document_pref: TcxGridDBBandedColumn;
    cxGrid4DBBandedTableView1prev_num_document: TcxGridDBBandedColumn;
    cxGrid4DBBandedTableView1prev_date_otpr: TcxGridDBBandedColumn;
    cxGrid4DBBandedTableView1prev_date_arrival: TcxGridDBBandedColumn;
    cxGrid4DBBandedTableView1prev_node_begin_cod: TcxGridDBBandedColumn;
    cxGrid4DBBandedTableView1prev_node_begin_name: TcxGridDBBandedColumn;
    cxGrid4DBBandedTableView1prev_node_end_cod: TcxGridDBBandedColumn;
    cxGrid4DBBandedTableView1prev_node_end_name: TcxGridDBBandedColumn;
    cxGrid4DBBandedTableView1prev_kargo_ETSNG_name: TcxGridDBBandedColumn;
    cxGrid4DBBandedTableView1prev_fact_weight: TcxGridDBBandedColumn;
    cxGrid4DBBandedTableView1prev_firm_client_name: TcxGridDBBandedColumn;
    cxGrid4DBBandedTableView1next_num_document_pref: TcxGridDBBandedColumn;
    cxGrid4DBBandedTableView1next_num_document: TcxGridDBBandedColumn;
    cxGrid4DBBandedTableView1next_date_otpr: TcxGridDBBandedColumn;
    cxGrid4DBBandedTableView1next_date_arrival: TcxGridDBBandedColumn;
    cxGrid4DBBandedTableView1next_node_begin_cod: TcxGridDBBandedColumn;
    cxGrid4DBBandedTableView1next_node_begin_name: TcxGridDBBandedColumn;
    cxGrid4DBBandedTableView1next_node_end_cod: TcxGridDBBandedColumn;
    cxGrid4DBBandedTableView1next_node_end_name: TcxGridDBBandedColumn;
    cxGrid4DBBandedTableView1next_kargo_ETSNG_name: TcxGridDBBandedColumn;
    cxGrid4DBBandedTableView1next_fact_weight: TcxGridDBBandedColumn;
    cxGrid4DBBandedTableView1next_firm_client_name: TcxGridDBBandedColumn;
    cxGrid4DBBandedTableView1group_name: TcxGridDBBandedColumn;
    cxGrid4DBBandedTableView1empty_firm_client_name: TcxGridDBBandedColumn;
    cxGrid4DBBandedTableView1comment6_client_name: TcxGridDBBandedColumn;
    cxGrid4DBBandedTableView1comment6_agent_name: TcxGridDBBandedColumn;
    cxGrid4DBBandedTableView1sps_type: TcxGridDBBandedColumn;
    cxGrid4DBBandedTableView1rod_vagon_name: TcxGridDBBandedColumn;
    cxGrid4DBBandedTableView1users_name: TcxGridDBBandedColumn;
    cxGrid4DBBandedTableView1owner_vagon_comment: TcxGridDBBandedColumn;
    cxGrid4DBBandedTableView1point_begin_name: TcxGridDBBandedColumn;
    cxGrid4DBBandedTableView1point_end_name: TcxGridDBBandedColumn;
    cxGrid4Level1: TcxGridLevel;
    Query_RouteDetail: TADOQuery;
    cxGrid4DBBandedTableView1route_name: TcxGridDBBandedColumn;
    cxGrid4DBBandedTableView1route_type: TcxGridDBBandedColumn;
    DS_RouteDetail: TDataSource;
    dxBarPopupMenu2: TdxBarPopupMenu;
    dxBarSubItem6: TdxBarSubItem;
    dxBarButton42: TdxBarButton;
    dxBarButton43: TdxBarButton;
    dxBarButton44: TdxBarButton;
    dxBarButton45: TdxBarButton;
    dxBarButton46: TdxBarButton;
    cxStyleRepository1: TcxStyleRepository;
    cxStyle1: TcxStyle;
    cxStyle2: TcxStyle;
    cxGrid3DBBandedTableView1r4_kargoETSNG_cod: TcxGridDBBandedColumn;
    cxGrid3DBBandedTableView1r4_rod_vagon_cod: TcxGridDBBandedColumn;
    cxGrid3DBBandedTableView1r4_rod_vagon_name: TcxGridDBBandedColumn;
    cxGrid3DBBandedTableView1r4_type_park_name: TcxGridDBBandedColumn;
    dxBarButton47: TdxBarButton;
    dxBarButton48: TdxBarButton;
    dxBarButton49: TdxBarButton;
    dxBarButton53: TdxBarButton;
    dxBarButton54: TdxBarButton;
    dxBarButton55: TdxBarButton;
    cxGrid3DBBandedTableView1r3_num_document: TcxGridDBBandedColumn;
    cxGrid3DBBandedTableView1r3_date_from_to: TcxGridDBBandedColumn;
    cxGrid3DBBandedTableView1r3_datpr: TcxGridDBBandedColumn;
    cxGrid3DBBandedTableView1r3_node_begin_cod: TcxGridDBBandedColumn;
    cxGrid3DBBandedTableView1r3_node_begin_name: TcxGridDBBandedColumn;
    cxGrid3DBBandedTableView1r3_node_end_cod: TcxGridDBBandedColumn;
    cxGrid3DBBandedTableView1r3_node_end_name: TcxGridDBBandedColumn;
    cxGrid3DBBandedTableView1r3_kargoETSNG_name: TcxGridDBBandedColumn;
    cxGrid3DBBandedTableView1r3_fact_weight: TcxGridDBBandedColumn;
    cxGrid3DBBandedTableView1empty_route_days: TcxGridDBBandedColumn;
    cxGrid3DBBandedTableView1full_route_days: TcxGridDBBandedColumn;
    cxGrid3DBBandedTableView1load_days: TcxGridDBBandedColumn;
    cxGrid3DBBandedTableView1unload_days: TcxGridDBBandedColumn;
    cxGrid3DBBandedTableView1calc_distance: TcxGridDBBandedColumn;
    ClientDS_Routeempty_route_days: TIntegerField;
    ClientDS_Routefull_route_days: TIntegerField;
    ClientDS_Routeload_days: TIntegerField;
    ClientDS_Routeunload_days: TIntegerField;
    ClientDS_Routecalc_distance: TIntegerField;
    dxBarButton56: TdxBarButton;
    cxGrid1DBBandedTableView1comment6_name: TcxGridDBBandedColumn;
    cxGrid3DBBandedTableView1r4_transport_pay: TcxGridDBBandedColumn;
    dxBarSubItem7: TdxBarSubItem;
    dxBarButton41: TdxBarButton;
    dxBarButton58: TdxBarButton;
    cxGrid1DBBandedTableView1comment4: TcxGridDBBandedColumn;
    ClientDS_Routefact_id: TIntegerField;
    cxGrid3DBBandedTableView1fact_id: TcxGridDBBandedColumn;
    ClientDS_Router1_date_from_to: TDateField;
    ClientDS_Router1_datpr: TDateField;
    ClientDS_Router1_num_document: TStringField;
    ClientDS_Router1_node_begin_name: TStringField;
    ClientDS_Router1_node_begin_cod: TStringField;
    ClientDS_Router1_node_end_cod: TStringField;
    ClientDS_Router1_node_end_name: TStringField;
    ClientDS_Router1_kargoETSNG_name: TStringField;
    ClientDS_Router1_fact_weight: TFloatField;
    ClientDS_Router2_date_from_to: TDateField;
    ClientDS_Router2_datpr: TDateField;
    ClientDS_Router2_num_document: TStringField;
    ClientDS_Router2_node_begin_cod: TStringField;
    ClientDS_Router2_node_begin_name: TStringField;
    ClientDS_Router2_node_end_cod: TStringField;
    ClientDS_Router2_node_end_name: TStringField;
    ClientDS_Router2_kargoETSNG_name: TStringField;
    ClientDS_Router2_fact_weight: TFloatField;
    ClientDS_Router3_date_from_to: TDateField;
    ClientDS_Router3_datpr: TDateField;
    ClientDS_Router3_num_document: TStringField;
    ClientDS_Router3_node_begin_cod: TStringField;
    ClientDS_Router3_node_begin_name: TStringField;
    ClientDS_Router3_node_end_cod: TStringField;
    ClientDS_Router3_node_end_name: TStringField;
    ClientDS_Router3_kargoETSNG_name: TStringField;
    ClientDS_Router3_fact_weight: TFloatField;
    ClientDS_Router4_date_from_to: TDateField;
    ClientDS_Router4_datpr: TDateField;
    ClientDS_Router4_num_document: TStringField;
    ClientDS_Router4_node_begin_cod: TStringField;
    ClientDS_Router4_node_begin_name: TStringField;
    ClientDS_Router4_node_end_cod: TStringField;
    ClientDS_Router4_node_end_name: TStringField;
    ClientDS_Router4_kargoETSNG_name: TStringField;
    ClientDS_Router4_fact_weight: TFloatField;
    ClientDS_Router4_rod_vagon_cod: TStringField;
    ClientDS_Router4_rod_vagon_name: TStringField;
    ClientDS_Router4_type_park_name: TStringField;
    ClientDS_Router4_comment6_client_name: TStringField;
    ClientDS_Router4_transport_pay: TCurrencyField;
    ClientDS_Router5_date_from_to: TDateField;
    ClientDS_Router5_datpr: TDateField;
    ClientDS_Router5_num_document: TStringField;
    ClientDS_Router5_node_begin_cod: TStringField;
    ClientDS_Router5_node_begin_name: TStringField;
    ClientDS_Router5_node_end_cod: TStringField;
    ClientDS_Router5_node_end_name: TStringField;
    ClientDS_Router5_kargoETSNG_name: TStringField;
    ClientDS_Router5_fact_weight: TFloatField;
    ClientDS_Router5_comment6_client_name: TStringField;
    ClientDS_Routeholiday_empty_route_days: TIntegerField;
    ClientDS_Routeholiday_load_days: TIntegerField;
    ClientDS_Routeholiday_full_route_days: TIntegerField;
    ClientDS_Routeholiday_unload_days: TIntegerField;
    cxGrid3DBBandedTableView1holiday_empty_route_days: TcxGridDBBandedColumn;
    cxGrid3DBBandedTableView1holiday_load_days: TcxGridDBBandedColumn;
    cxGrid3DBBandedTableView1holiday_full_route_days: TcxGridDBBandedColumn;
    cxGrid3DBBandedTableView1holiday_unload_days: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1ID_fact_all: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1fact_track_trip_id: TcxGridDBBandedColumn;
    dxBarButton61: TdxBarButton;
    cxGrid1DBBandedTableView1arenda_firm_name_short: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1arenda_contract_cod: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1arenda_date_begin: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1arenda_date_end: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1etran_orders_type: TcxGridDBBandedColumn;
    cxTabSheet5: TcxTabSheet;
    Panel1: TPanel;
    Panel2: TPanel;
    cxGrid6: TcxGrid;
    cxGrid6DBBandedTableView1: TcxGridDBBandedTableView;
    cxGrid6Level1: TcxGridLevel;
    Panel3: TPanel;
    Splitter1: TSplitter;
    Panel4: TPanel;
    Panel5: TPanel;
    cxGrid7: TcxGrid;
    cxGrid7DBBandedTableView1: TcxGridDBBandedTableView;
    cxGrid7Level1: TcxGridLevel;
    Splitter2: TSplitter;
    cxGrid6DBBandedTableView1date_year: TcxGridDBBandedColumn;
    cxGrid6DBBandedTableView1date_month: TcxGridDBBandedColumn;
    cxGrid6DBBandedTableView1rod_vagon_name: TcxGridDBBandedColumn;
    cxGrid6DBBandedTableView1full_distance: TcxGridDBBandedColumn;
    cxGrid6DBBandedTableView1empty_distance: TcxGridDBBandedColumn;
    cxGrid7DBBandedTableView1date_year: TcxGridDBBandedColumn;
    cxGrid7DBBandedTableView1date_month: TcxGridDBBandedColumn;
    cxGrid7DBBandedTableView1rod_vagon_name: TcxGridDBBandedColumn;
    cxGrid7DBBandedTableView1full_distance: TcxGridDBBandedColumn;
    cxGrid7DBBandedTableView1cnt_vagon: TcxGridDBBandedColumn;
    cxGrid7DBBandedTableView1index_job: TcxGridDBBandedColumn;
    cxGrid6DBBandedTableView1index_job: TcxGridDBBandedColumn;
    Panel6: TPanel;
    Panel7: TPanel;
    cxGrid8: TcxGrid;
    cxGrid8DBBandedTableView1: TcxGridDBBandedTableView;
    cxGrid8DBBandedColumn1num_vagon: TcxGridDBBandedColumn;
    cxGrid8DBBandedTableView1date_from_to: TcxGridDBBandedColumn;
    cxGrid8DBBandedTableView1rod_vagon_name: TcxGridDBBandedColumn;
    cxGrid8DBBandedTableView1fact_weight: TcxGridDBBandedColumn;
    cxGrid8DBBandedTableView1distance: TcxGridDBBandedColumn;
    cxGrid8Level1: TcxGridLevel;
    Splitter3: TSplitter;
    cxGrid9: TcxGrid;
    cxGrid9DBBandedTableView1: TcxGridDBBandedTableView;
    cxGrid9DBBandedTableView1num_vagon: TcxGridDBBandedColumn;
    cxGrid9DBBandedTableView1date_from_to: TcxGridDBBandedColumn;
    cxGrid9DBBandedTableView1rod_vagon_name: TcxGridDBBandedColumn;
    cxGrid9DBBandedTableView1fact_weight: TcxGridDBBandedColumn;
    cxGrid9DBBandedTableView1distance: TcxGridDBBandedColumn;
    cxGrid9Level1: TcxGridLevel;
    SP_Index: TADOStoredProc;
    DS_Index: TDataSource;
    dxBarPopupMenu4: TdxBarPopupMenu;
    dxBarSubItem8: TdxBarSubItem;
    Query_Index1: TADOQuery;
    DS_Index1: TDataSource;
    dxBarButton62: TdxBarButton;
    SP_IndexDetail: TADOStoredProc;
    DS_IndexDetail: TDataSource;
    DS_IndexDetail1: TDataSource;
    Query_IndexDetail1: TADOQuery;
    cxGrid1DBBandedTableView1bargain_correct_type_name: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1sarenda_firm_name_short: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1sarenda_contract_cod: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1sarenda_date_begin: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1sarenda_date_end: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1etran_freightGTDNumber: TcxGridDBBandedColumn;
    SP_Fact_GET_05: TADOStoredProc;
    cxGrid1DBBandedTableView1payer_name: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1date_period: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1empty_date_period: TcxGridDBBandedColumn;
    SP_fact_GET: TADOStoredProc;
    cxGrid1DBBandedTableView1num_document_full: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1num_document1: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1num_document_pref1: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1etran_carTypeCode: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1etran_carTypeName: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1fact_num: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1fact_date: TcxGridDBBandedColumn;
    dxBarButton14: TdxBarButton;
    procedure dxBarButton6Click(Sender: TObject);
    procedure N18Click(Sender: TObject);
    procedure N40Click(Sender: TObject);
    procedure N39Click(Sender: TObject);
    procedure N17Click(Sender: TObject);
    procedure N7Click(Sender: TObject);
    procedure ToolButton12Click(Sender: TObject);
    procedure ToolButton16Click(Sender: TObject);
    procedure cxGrid1DBBandedTableView1KeyPress(Sender: TObject; var Key: Char);
    procedure N2Click(Sender: TObject);
    procedure Excel3Click(Sender: TObject);
    procedure N49Click(Sender: TObject);
    procedure ToolButton5Click(Sender: TObject);
    procedure N46Click(Sender: TObject);
    procedure N42Click(Sender: TObject);
    procedure cxGrid1DBBandedTableView1FocusedItemChanged(Sender: TcxCustomGridTableView; APrevFocusedItem,  AFocusedItem: TcxCustomGridTableItem);
    procedure cxGrid1DBBandedTableView1CustomDrawColumnHeader(Sender: TcxGridTableView; ACanvas: TcxCanvas;  AViewInfo: TcxGridColumnHeaderViewInfo; var ADone: Boolean);
    procedure N21Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure N25Click(Sender: TObject);
    procedure cxGrid1DBBandedTableView1DataControllerFilterChanged(Sender: TObject);
    procedure N5Click(Sender: TObject);
    procedure N8Click(Sender: TObject);
    procedure N6Click(Sender: TObject);
    procedure ToolButton1Click(Sender: TObject);
    procedure MSWord1Click(Sender: TObject);
    procedure ToolButton7Click(Sender: TObject);
    procedure cxGrid1DBBandedTableView1CustomDrawCell(Sender: TcxCustomGridTableView; ACanvas: TcxCanvas; AViewInfo: TcxGridTableDataCellViewInfo; var ADone: Boolean);
    procedure FormDestroy(Sender: TObject);
    procedure dxBarButton7Click(Sender: TObject);
    procedure dxBarButton8Click(Sender: TObject);
    procedure dxBarButton9Click(Sender: TObject);
    procedure dxBarButton12Click(Sender: TObject);
    procedure dxBarButton_LoadDBFClick(Sender: TObject);
    procedure dxBarButton_ReportVagonClick(Sender: TObject);
    procedure dxBarButton_FilterRecords1Click(Sender: TObject);
    procedure dxBarButton_ToZFTOScoreClick(Sender: TObject);
    procedure dxBarButton_GotoSumFactClick(Sender: TObject);
    procedure dxBarButton_CreateFactSumRecordClick(Sender: TObject);
    procedure dxBarButton13Click(Sender: TObject);
    procedure dxBarButton15Click(Sender: TObject);
    procedure dxBarButton16Click(Sender: TObject);
    procedure dxBarButton10Click(Sender: TObject);
    procedure ADOFactAllExecuteComplete(Connection: TADOConnection; RecordsAffected: Integer; const Error: Error; var EventStatus: TEventStatus; const Command: _Command; const Recordset: _Recordset);
    procedure dxBarButton21Click(Sender: TObject);
    procedure dxBarButton22Click(Sender: TObject);
    procedure dxBarButton27Click(Sender: TObject);
    procedure dxBarButton30Click(Sender: TObject);
    procedure dxBarButton31Click(Sender: TObject);
    procedure dxBarButton29Click(Sender: TObject);
    procedure dxBarButton40Click(Sender: TObject);
    procedure cxGrid3DBBandedTableView1CustomDrawCell(Sender: TcxCustomGridTableView; ACanvas: TcxCanvas; AViewInfo: TcxGridTableDataCellViewInfo; var ADone: Boolean);
    procedure cxGrid3DBBandedTableView1SelectionChanged(Sender: TcxCustomGridTableView);
    procedure cxGrid4DBBandedTableView1FilterOnChanged(Sender: TObject);
    procedure cxGrid4DBBandedTableView1CustomDrawCell(Sender: TcxCustomGridTableView; ACanvas: TcxCanvas; AViewInfo: TcxGridTableDataCellViewInfo; var ADone: Boolean);
    procedure dxBarButton42Click(Sender: TObject);
    procedure dxBarButton43Click(Sender: TObject);
    procedure dxBarButton45Click(Sender: TObject);
    procedure dxBarButton44Click(Sender: TObject);
    procedure dxBarButton46Click(Sender: TObject);
    procedure dxBarButton47Click(Sender: TObject);
    procedure dxBarButton53Click(Sender: TObject);
    procedure dxBarButton56Click(Sender: TObject);
    procedure dxBarButton41Click(Sender: TObject);
    procedure dxBarButton58Click(Sender: TObject);
    procedure dxBarButton61Click(Sender: TObject);
    procedure dxBarButton62Click(Sender: TObject);
    procedure dxBarButton14Click(Sender: TObject);
    procedure dxBarButton17Click(Sender: TObject);
  private
    Fflag            : boolean;
    Ftype_fact       : integer; // 0-Опер факт, 1- Все, 2-Оборот вагона, 3-факт всё опер

    {хранит параметры введенные пользователем для выборки данных, нам необходим для формирования запроса
    при ошибках чтобы скопировать и вставить для отладки в менеджере СУБД}
    FstrXMLClientDS  : string;

    FSelectResult    : boolean;

    Fset_plan_client : boolean;
    Fplan_client_id  : integer;

    Fset_bargain_new : boolean; // Привязать к новой перевозки

    procedure SetSQLFilter(ClientDS: TClientDataSet);
    procedure SetSQLFilterReport_05(ClientDS: TClientDataSet);
    procedure SetSQLFilterProfit(ClientDS: TClientDataSet);
    procedure SetSQLFilterIndex(ClientDS: TClientDataSet);

    procedure BargainInsertFromRate(str_fact_id: string; plan_rate_id: integer; set_create_bargain: boolean);

    procedure FSetEtranChange(set_etran_change : boolean);
    function  LoadVohr(stream : TStream; file_name : string): Int64;
    procedure PrintFactFlow0(str_fact_id: string; file_name: string; conn: TADOConnection);
    procedure SetStrFactid(str_fact_id: string);
    procedure SetProfitStrFactid(str_fact_id: string);


    procedure ShowNextTripColumn(set_prev_trip, set_next_trip : boolean);

  public
    constructor Create(AOwner: TForm; flag: boolean); overload;

    property _SetEtranChange: boolean write FSetEtranChange ;
    procedure FactFind(type_find : integer; str_fact_id : string);
  published
    property _SetSQLFilter          : TClientDataSet write SetSQLFilter;
    property _SetSQLFilterReport_05 : TClientDataSet write SetSQLFilterReport_05;
    property _SetSQLFilterProfit    : TClientDataSet write SetSQLFilterProfit;
    property _SetSQLFilterIndex     : TClientDataSet write SetSQLFilterIndex;

    property _SetBargainNew      : boolean write Fset_bargain_new;
    property _SetPlanClient      : boolean write Fset_plan_client;
    property _SetPlanClientId    : integer write Fplan_client_id;
    property _SetStrFactid       : string write SetStrFactid;
    property _SetProfitStrFactid : string write SetProfitStrFactid;
  end;



var
  fmFact: TfmFact;

implementation

uses
    Main, Raznoe, FactCard, Filter, Period, LoadFact, Other, ComObj, Math, ShellApi, StrUtils,
    cxGridDBTableView, AgreeFactInc, FactTrack, ZFTOScore, PlanClient, FactSum, Agree2;

{$R *.DFM}

// Методы формы

constructor TfmFact.Create(AOwner:TForm; flag: boolean);
begin
  Screen.Cursor := crHourglass;

  inherited Create(AOwner);
  Fflag := flag;

  Visible := False;

  StoreRegistryGrid(rgLoad,'\Software\Lis1\Fact_Grids', cxGrid1DBBandedTableView1);
  StoreRegistryGrid(rgLoad,'\Software\Lis1\Fact_Grids', cxGrid3DBBandedTableView1);
  StoreRegistryGrid(rgLoad,'\Software\Lis1\Fact_Grids', cxGrid4DBBandedTableView1);

  _SetBargainNew   := False;
  Fset_plan_client := False;
  Fplan_client_id  := -9;
  FSelectResult    := False;

  Ftype_fact := 0;
  cxPageControl1.ActivePageIndex := 0;
  cxPageControl1.HideTabs := True;


  cxGrid1DBBandedTableView1bargain_cod.Styles.Content         := fmMain.cxStyle_Agree_bargain_cod;
  cxGrid1DBBandedTableView1firm_customer_name.Styles.Content  := fmMain.cxStyle_Agree_bargain_cod;
  cxGrid1DBBandedTableView1contract_cod.Styles.Content        := fmMain.cxStyle_Agree_bargain_cod;
  cxGrid1DBBandedTableView1transport_pay.Styles.Content       := fmMain.cxStyle_AgreeFactInc_Sum;
  cxGrid1DBBandedTableView1date_period.Styles.Content         := fmMain.cxStyle_Agree_bargain_cod;
  cxGrid1DBBandedTableView1num_vagon.Styles.Content           := fmMain.cxStyle_Bold;
  cxGrid1DBBandedTableView1date_period_finance_name.Styles.Content := fmMain.cxStyle_Agree_bargain_cod;

  if flag then begin
    dxBarButton2.Visible := ivAlways;
    FormStyle := fsStayOnTop;
//    Visible := False;
  end else
    FormStyle := fsMDIChild;

  Client.CreateDataSet;
  Client.LogChanges := False;

  ClientDS_LoadDBF.CreateDataSet;

  ClientDS_Route.CreateDataSet;
  ClientDS_Route.LogChanges := False;

  MonitorEventFormOpen('OPEN_FORM', self.Name, fmMain.Lis, -9);

//  WindowState := wsMaximized;
  Screen.Cursor := crDefault;
end;

procedure TfmFact.FSetEtranChange(set_etran_change : boolean);
var Q: TADOQuery;
begin
  Q := TADOQuery.Create(nil);
  Q.Connection := fmMain.Lis;
  Q.SQL.Add('SELECT REPLACE (');
  Q.SQL.Add('(SELECT fact_id as ''data()'' FROM');
  Q.SQL.Add('	etran_link_xml');
  Q.SQL.Add('	INNER JOIN fact ON etran_link_xml.row_id = fact.fact_id');
  Q.SQL.Add('	INNER JOIN bargain ON fact.bargain_id = bargain.bargain_id');
  Q.SQL.Add('	INNER JOIN global_id ON bargain.bargain_id = global_id.global_id');
  Q.SQL.Add('WHERE etran_link_xml.set_change = 1 AND global_id.users_owner = ' + IntToStr(usr_pwd.users_id) + ' FOR XML PATH('''')');
  Q.SQL.Add('), '' '', '','') AS str_fact_id');
  Q.Open;

  Caption   := 'Изменение информации в ЭТРАНе';

  cxGrid1DBBandedTableView1doc_date_last_oper.Position.ColIndex := 1;
  cxGrid1DBBandedTableView1doc_date_last_oper.Visible := True;

  sp_fact_GET.Parameters.Refresh;
  sp_fact_GET.Parameters.ParamByName('@str_fact_id'   ).Value := VarToStr(iif(Q.FieldByName('str_fact_id').AsString <> '',Q.FieldByName('str_fact_id').AsString,'1'));
  sp_fact_GET.Open;

  N6.Visible  := ivNever;
  N7.Visible  := ivNever;
  N24.Visible := ivNever;
  N43.Visible := ivNever;
  N30.Visible := ivNever;
  N11.Visible := ivNever;
  dxBarButton3.Visible := ivNever;

  N47.Visible := ivAlways;

  if (sp_fact_GET.RecordCount>0) then  Caption := Caption + 'Внимание! В привязанном факте есть изменения!';
end;

procedure TfmFact.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action := caFree;
end;

procedure TfmFact.FormDestroy(Sender: TObject);
begin
  RestoreGroupedColumns(cxGrid1DBBandedTableView1);

  StoreRegistryGrid(rgSave,'\Software\Lis1\Fact_Grids', cxGrid1DBBandedTableView1);
  StoreRegistryGrid(rgSave,'\Software\Lis1\Fact_Grids', cxGrid3DBBandedTableView1);
  StoreRegistryGrid(rgSave,'\Software\Lis1\Fact_Grids', cxGrid4DBBandedTableView1);

  fmFact := nil;
end;

procedure TfmFact.N5Click(Sender: TObject);
begin
  case TdxBarButton(Sender).ClickItemLink.Owner.Owner.Tag of
    0 : SetdxDBGridColumns(cxGrid1DBBandedTableView1);
    2 : SetdxDBGridColumns(cxGrid3DBBandedTableView1);
    4 : SetdxDBGridColumns(cxGrid4DBBandedTableView1);
    6 : SetdxDBGridColumns(cxGrid6DBBandedTableView1);
  end;
end;

procedure TfmFact.N25Click(Sender: TObject);
begin
  case TdxBarButton(Sender).ClickItemLink.Owner.Owner.Tag of
    0 : cxGrid1DBBandedTableView1.OptionsView.GroupByBox := not cxGrid1DBBandedTableView1.OptionsView.GroupByBox;
    2 : cxGrid3DBBandedTableView1.OptionsView.GroupByBox := not cxGrid3DBBandedTableView1.OptionsView.GroupByBox;
    4 : cxGrid4DBBandedTableView1.OptionsView.GroupByBox := not cxGrid4DBBandedTableView1.OptionsView.GroupByBox;
    6 : cxGrid6DBBandedTableView1.OptionsView.GroupByBox := not cxGrid6DBBandedTableView1.OptionsView.GroupByBox;
  end;
end;

procedure TfmFact.MSWord1Click(Sender: TObject);
begin
  case TdxBarButton(Sender).ClickItemLink.Owner.Owner.Tag of
    0 : PrintcxGrid(cxGrid1DBBandedTableView1);
    2 : PrintcxGrid(cxGrid3DBBandedTableView1);
    4 : PrintcxGrid(cxGrid4DBBandedTableView1);
    6 : PrintcxGrid(cxGrid6DBBandedTableView1);
  end;
end;

procedure TfmFact.N8Click(Sender: TObject);
begin
  if cxGrid1DBBandedTableView1fact_id.DataBinding.Field.AsInteger = 0 then exit;

  fmFactCard := TfmFactCard.Create(Application, fmMain.Lis);
  fmFactCard._UpdateFact(cxGrid1DBBandedTableView1fact_id.DataBinding.Field.AsInteger);
  if fmFactCard.ShowModal = mrOk then RefreshQueryGrid(cxGrid1DBBandedTableView1, 'fact_id');
end;

procedure TfmFact.N6Click(Sender: TObject);
begin
  fmFactCard := TfmFactCard.Create(Application, fmMain.Lis);
  fmFactCard._InsertFact;
  if fmFactCard.ShowModal = mrOk then RefreshQueryGrid(cxGrid1DBBandedTableView1,'fact_id', fmFactCard._GetFactId);
end;

procedure TfmFact.N7Click(Sender: TObject);
var          i : integer;
 SP_FactDelete : TADOStoredProc;
begin
  if Application.MessageBox('Действительно хотите удалить факт?', 'ВНИМАНИЕ', MB_OKCANCEL+MB_ICONWARNING) = IDOK then begin
    Screen.Cursor := crHourglass;
    SP_FactDelete := TADOStoredProc.Create(nil);
    SP_FactDelete.Connection := fmMain.Lis;
    SP_FactDelete.ProcedureName := 'sp_fact_delete;1';
    SP_FactDelete.Parameters.Refresh;

    for i := 0 to cxGrid1DBBandedTableView1.Controller.SelectedRowCount - 1 do begin
      SP_FactDelete.Close;
      SP_FactDelete.Parameters.ParamByName('@fact_id').Value := cxGrid1DBBandedTableView1.Controller.SelectedRows[i].Values[cxGrid1DBBandedTableView1fact_id.Index];
      SP_FactDelete.ExecProc;
      ShowTextMessage('Осталось ' + IntToStr(cxGrid1DBBandedTableView1.Controller.SelectedRowCount - i) + ' записей...',  False);
    end;
    SP_FactDelete.Free;

    RefreshQueryGrid(cxGrid1DBBandedTableView1, 'fact_id');
    ShowTextMessage;
    Screen.Cursor := crDefault;
  end;
end;

procedure TfmFact.Excel3Click(Sender: TObject);
var        i : integer;
 str_fact_id : string;
begin
  str_fact_id := '';
  for i:=0 to cxGrid1DBBandedTableView1.Controller.SelectedRecordCount - 1 do
    str_fact_id := str_fact_id + ', ' + IntToStr(cxGrid1DBBandedTableView1.Controller.SelectedRows[i].Values[cxGrid1DBBandedTableView1fact_id.Index]);
  Delete(str_fact_id, 1, 2);

  SetPretensionFact(str_fact_id, fmMain.Lis);
end;

procedure TfmFact.ToolButton12Click(Sender: TObject);
var ClientDS : TClientDataSet;
begin
  ClientDS := TClientDataSet.Create(nil);
  if ShowSearchFact(Application.Handle, usr_pwd, ClientDS, Ftype_fact) then begin
    case Ftype_fact of
      0 : begin
            if ClientDS.FieldByName('type_report').Value = 4 then
              _SetSQLFilterReport_05 := ClientDS
            else
              _SetSQLFilter   := ClientDS;
          end;
      2 : _SetSQLFilterProfit := ClientDS;
      4 : _SetSQLFilterIndex  := ClientDS;
    end;
  end;

  ClientDS.Free;
end;

procedure TfmFact.ToolButton16Click(Sender: TObject);
begin
  case Ftype_fact of
    0 : RefreshQueryGrid(cxGrid1DBBandedTableView1, 'fact_id');
    2 : RefreshQueryGrid(cxGrid3DBBandedTableView1, 'id');
  end;
end;

procedure TfmFact.ToolButton1Click(Sender: TObject);
var      list : TStringList;
            i : integer;
  str_fact_id : string;
begin
  if Fset_plan_client = False then begin
      if Application.MessageBox(PChar('Добавить выделенные вагоны в Перевозку '+fmAgree2.SP_Agree.FieldByName('bargain_cod').AsString+'?'), 'Внимание', MB_YESNO or MB_ICONQUESTION)=IDYES then begin
        for i:=0 to cxGrid1DBBandedTableView1.Controller.SelectedRowCount - 1 do begin
          str_fact_id := str_fact_id + #10 + IntToStr(cxGrid1DBBandedTableView1.Controller.SelectedRows[i].Values[cxGrid1DBBandedTableView1fact_id.Index]);
        end;
        Delete(str_fact_id, 1, 1);
        list := TStringList.Create;
        list.Text := str_fact_id;

        fmAgree2._AddFact := list;
        list.Free;

        ModalResult := mrOk;
        RefreshQueryGrid(cxGrid1DBBandedTableView1, 'fact_id');
      end;


  end else begin
    if Application.MessageBox(PChar('Добавить выделенные вагоны в план №' + IntToStr(Fplan_client_id) + '?'), 'Внимание', MB_YESNO or MB_ICONQUESTION)=IDYES then begin
      fmPlanClient._AddFact := cxGrid1DBBandedTableView1;
      ModalResult := mrOk;
      RefreshQueryGrid(cxGrid1DBBandedTableView1, 'fact_id');
    end;
  end;

end;

procedure TfmFact.ToolButton5Click(Sender: TObject);
var row : integer;
      Q : TADOQuery;
begin
  Q := TADOQuery.Create(nil);
  Q.Connection := fmMain.Lis;

  if cxGrid1DBBandedTableView1.Controller.SelectedRowCount = 0 then begin

    sp_fact_GET.First;
    for row := 0 to sp_fact_GET.RecordCount-1 do begin
      ShowTextMessage('Осталось '+IntToStr(sp_fact_GET.RecordCount - row)+' записей...', False);
      Q.SQL.Clear;
      Q.SQL.Add('UPDATE etran_link_xml SET set_change = 0 WHERE row_id = ' + IntToStr(sp_fact_GET.FieldByName('fact_id').AsInteger));
      Q.ExecSQL;
      sp_fact_GET.Next;
    end;

  end else begin

    for row := 0 to cxGrid1DBBandedTableView1.Controller.SelectedRowCount-1 do begin
      ShowTextMessage('Осталось '+IntToStr(cxGrid1DBBandedTableView1.Controller.SelectedRowCount - row)+' записей...', False);
      Q.SQL.Clear;
      Q.SQL.Add('UPDATE etran_link_xml SET set_change = 0 WHERE row_id = ' + IntToStr(cxGrid1DBBandedTableView1.Controller.SelectedRows[row].Values[cxGrid1DBBandedTableView1.GetColumnByFieldName('fact_id').Index]));
      Q.ExecSQL;
    end;

  end;

  Q.Free;

  ShowTextMessage();
  RefreshQueryGrid(cxGrid1DBBandedTableView1, 'fact_id');

  if (sp_fact_GET.RecordCount>0) then
    Caption := Caption + 'Внимание! В привязанном факте есть изменения!';
end;


procedure TfmFact.ToolButton7Click(Sender: TObject);
begin
  fmLoadFact := TfmLoadFact.Create(Application, -9);
  fmLoadFact.SetConnection(fmMain.Lis, usr_pwd);
  if fmLoadFact.ShowModal = mrOk then   RefreshQueryGrid(cxGrid1DBBandedTableView1, 'fact_id');
end;

procedure TfmFact.PrintFactFlow0(str_fact_id: string; file_name: string; conn: TADOConnection);
var    Q_etran, Q : TADOQuery;
         ADOEtran : TADOConnection;
        str_vagon : string;
    FileVagonList : TStringList;
begin
  Screen.Cursor := crHourglass;
  ShowTextMessage('Идет подготовка и извлечение необходимых данных. Подождите пожалуйста...', False);

  ADOEtran := TADOConnection.Create(nil);
  ADOEtran.ConnectionString := 'Provider=SQLOLEDB.1;Persist Security Info=True;User ID=etran_gru;Password=etran;Initial Catalog=lis_etran;Data Source='+usr_pwd^.server+';';
  ADOEtran.KeepConnection   := False;
  ADOEtran.LoginPrompt      := False;

  Q := TADOQuery.Create(nil);
  Q.Connection := conn;

  Q_etran := TADOQuery.Create(nil);
  Q_etran.Connection := ADOEtran;

  FileVagonList := TStringList.Create;


  Q.SQL.Add('SELECT bargain_cod,');
  Q.SQL.Add('       CASE WHEN num_document_pref is not null THEN left(num_document_pref+''  '',2) + right(''000000'' + num_document,6) ');
  Q.SQL.Add('            ELSE right(''00000000'' + ltrim(rtrim(num_document)),8) END AS num_document,');
  Q.SQL.Add('       date_from_to, kargoETSNG_cod, node_begin_cod, node_end_cod, num_vagon, view_fact_all.fact_id,');
  Q.SQL.Add('       (SELECT inf_obj_cod FROM inf_obj_STATE WHERE inf_obj_id = (SELECT top 1 state_id FROM inf_obj_NODE WHERE inf_obj_cod = node_begin_cod)) as state_begin_cod,');
  Q.SQL.Add('       (SELECT inf_obj_cod FROM inf_obj_STATE WHERE inf_obj_id = (SELECT top 1 state_id FROM inf_obj_NODE WHERE inf_obj_cod = node_end_cod)) as state_end_cod,	');
  Q.SQL.Add('       (fact_weight*1000) AS fact_weight,');
  Q.SQL.Add('        CASE WHEN (tip_zap=0) OR (tip_zap is null) THEN 1 WHEN tip_zap=1 THEN 9 END AS tip_zap,');
  Q.SQL.Add('        4076 AS contract_cod, gpt_kargoETSNG_cod_gpt, gpt_firm_reciever_cod, kargo_capacity, xml_reply_id');
  Q.SQL.Add('FROM  view_fact_all LEFT JOIN view_gpt_link_fact ON view_fact_all.fact_id = view_gpt_link_fact.fact_id ');
  Q.SQL.Add('WHERE view_fact_all.fact_id in (' + str_fact_id + ')');
  Q.Open;

  while not Q.EOF do begin
    ShowTextMessage(Format('Идет вывод %0:s вагона из %1:s. Подождите пожалуйста...',  [IntToStr(Q.RecNo), IntToStr(Q.RecordCount)]), False);

    str_vagon := Q.FieldByName('num_document').AsString + ';';
    str_vagon := str_vagon + Q.FieldByName('date_from_to'          ).AsString + ';';
    str_vagon := str_vagon + Q.FieldByName('kargoETSNG_cod'        ).AsString + ';';
    str_vagon := str_vagon + Q.FieldByName('node_begin_cod'        ).AsString + ';';
    str_vagon := str_vagon + Q.FieldByName('state_begin_cod'       ).AsString + ';';
    str_vagon := str_vagon + Q.FieldByName('node_end_cod'          ).AsString + ';';
    str_vagon := str_vagon + Q.FieldByName('state_end_cod'         ).AsString + ';';
    str_vagon := str_vagon + Q.FieldByName('num_vagon'             ).AsString + ';';
    str_vagon := str_vagon + Q.FieldByName('fact_weight'           ).AsString + ';';
    str_vagon := str_vagon + Q.FieldByName('fact_id'               ).AsString + ';';
    str_vagon := str_vagon + Q.FieldByName('tip_zap'               ).AsString + ';';
    str_vagon := str_vagon + Q.FieldByName('contract_cod'          ).AsString + ';';
    str_vagon := str_vagon + Q.FieldByName('gpt_kargoETSNG_cod_gpt').AsString + ';';
    str_vagon := str_vagon + Q.FieldByName('gpt_firm_reciever_cod' ).AsString + ';';
    str_vagon := str_vagon + Q.FieldByName('kargo_capacity'        ).AsString + ';';

    // Информация о маршруте следования
    if not Q.FieldByName('xml_reply_id').IsNull then begin
      Q_etran.SQL.Clear;
      Q_etran.SQL.Add('SELECT	invDistance_id,');
      Q_etran.SQL.Add('       right(''000'' + isnull(distCountryCode,''''),3) AS distCountryCode,');
      Q_etran.SQL.Add('       right(''000000'' + isnull(distStationCode,''''),6) AS distStationCode');
      Q_etran.SQL.Add('FROM	  invoice INNER JOIN invDistance ON invoice.invoice_id = invDistance.invoice_id');
      Q_etran.SQL.Add('WHERE	invoice.invoiceID = ' + Q.FieldByName('xml_reply_id').AsString);
      Q_etran.SQL.Add('       AND invDistance_id <> (SELECT max(invDistance_id) FROM invDistance WHERE invDistance.invoice_id = invoice.invoice_id)');
      Q_etran.SQL.Add('       AND invDistance_id <> (SELECT min(invDistance_id) FROM invDistance WHERE invDistance.invoice_id = invoice.invoice_id)');
      Q_etran.SQL.Add('ORDER BY invDistance_id ');
      Q_etran.Open;
      while not Q_etran.Eof do begin
        str_vagon := str_vagon + Q_etran.FieldByName('distCountryCode').AsString + Q_etran.FieldByName('distStationCode').AsString;
        Q_etran.Next;
      end;
      Q_etran.Close;
    end;
    str_vagon := str_vagon + ';';

    // Признак колибровки
    if not Q.FieldByName('xml_reply_id').IsNull then begin
      Q_etran.SQL.Clear;
      Q_etran.SQL.Add('SELECT invCar_id, carTankType');
      Q_etran.SQL.Add('FROM invoice INNER JOIN invCar ON invoice.invoice_id = invCar.invoice_id');
      Q_etran.SQL.Add('WHERE	invoice.invoiceID = ' + Q.FieldByName('xml_reply_id').AsString);
      Q_etran.SQL.Add('AND invCar.carNumber = ''' + Q.FieldByName('num_vagon').AsString + '''');
      Q_etran.SQL.Add('ORDER BY invCar_id ');
      Q_etran.Open;
      if not Q_etran.FieldByName('carTankType').IsNull then
        str_vagon := str_vagon + Q_etran.FieldByName('carTankType').AsString
      else
        str_vagon := str_vagon + '0';
      Q_etran.Close;
    end else begin
      str_vagon := str_vagon + '0';
    end;

    FileVagonList.Add(str_vagon);

    Q.Next;
  end;

  FileVagonList.SaveToFile(file_name);
  FileVagonList.Free;
  Q.Free;
  Q_etran.Free;
  ADOEtran.Free;
  ShowTextMessage();
  Screen.Cursor := crDefault;
end;


procedure TfmFact.N17Click(Sender: TObject);
var       Q : TADOQuery;
  _fmAgree2 : TfmAgree2;
begin
  if (cxGrid1DBBandedTableView1bargain_id.DataBinding.Field.Value = null) then begin
    Application.MessageBox('Факт не привязан к перевозке.', 'Внимание', MB_OK);
    Exit;
  end;

  Screen.Cursor := crHourglass;

  Q := TADOQuery.Create(nil);
  Q.Connection := fmMain.Lis;
  Q.SQL.Add('SELECT * FROM view_bargain_rights WHERE bargain_id='+IntToStr(cxGrid1DBBandedTableView1bargain_id.DataBinding.Field.AsInteger));
  Q.Open;

  if Q.RecordCount < 1 then begin
    Application.MessageBox('Недостаточно прав.', 'Внимание', MB_OK);
    Exit;
  end;

  _fmAgree2 := TfmAgree2.Create(nil, True);
  _fmAgree2.Factive_users_id := Q.FieldByName('users_owner_id').AsInteger;
  _fmAgree2.SP_Agree.Close;
  _fmAgree2.SP_Agree.Parameters.ParamByName('@date_begin').Value := StrToDate('01.'+FormatDateTime('m', Q.FieldByName('date_period').AsDatetime)+'.'+FormatDateTime('yyyy', Q.FieldByName('date_period').AsDatetime));
  _fmAgree2.SP_Agree.Parameters.ParamByName('@date_end').Value := StrToDate('01.'+FormatDateTime('m', IncMonth(Q.FieldByName('date_period').AsDatetime, 1))+'.'+FormatDateTime('yyyy', IncMonth(Q.FieldByName('date_period').AsDatetime, 1)))-1;
  _fmAgree2.SP_Agree.Parameters.ParamByName('@users_owner_id').Value := Q.FieldByName('users_owner_id').AsInteger;
  _fmAgree2.SP_Agree.Open;

  _fmAgree2.dxBarSubItem3.Caption := FormatDateTime('mmmm yyyy', Q.FieldByName('date_period').AsDatetime);

  _fmAgree2.PeriodDate1 := StrToDate('01.'+FormatDateTime('m', Q.FieldByName('date_period').AsDatetime)+'.'+FormatDateTime('yyyy', Q.FieldByName('date_period').AsDatetime));
  _fmAgree2.PeriodDate2 := IncMonth(_fmAgree2.Fdate1, 1) - 1;

  _fmAgree2.SP_Agree.Locate('bargain_id', Q['bargain_id'], [loCaseInsensitive]);
  Q.Free;

  _fmAgree2.dxBarButton2.Down := True;

  _fmAgree2.cxGrid1DBBandedTableView1.Controller.ClearSelection;
  _fmAgree2.dxBarButton2Click(_fmAgree2.dxBarButton2);
  _fmAgree2.SP_FactClient.Locate('fact_id', cxGrid1DBBandedTableView1fact_id.DataBinding.Field.AsInteger, [loCaseInsensitive]);
  Screen.Cursor := crDefault;

  if _fmAgree2.ShowModal = mrOk then RefreshQueryGrid(cxGrid1DBBandedTableView1, 'fact_id');
end;

procedure TfmFact.N18Click(Sender: TObject);
var        i : integer;
           Q : TADOQuery;
     new_str : string;
 SP_FactCopy : TADOStoredProc;
begin
  if InputQuery('Копировать факт', '№ записи перевозки', new_str) then begin
    Screen.Cursor := crHourglass;

    Q := TADOQuery.Create(Nil);
    Q.Connection := fmMain.Lis;
    Q.SQL.Add('SELECT * FROM view_bargain_rights WHERE bargain_id =:bargain_id');
    Q.Parameters.ParamByName('bargain_id').Value := StrToInt(new_str);
    Q.Open;

    if Q.RecordCount= 0 then begin
      Application.MessageBox('Перевозка не найдена в данной группе','Внимание',MB_OK+MB_ICONERROR);
      Screen.Cursor := crDefault;
      Exit;
    end;

    SP_FactCopy := TADOStoredProc.Create(nil);
    SP_FactCopy.Connection := fmMain.Lis;
    SP_FactCopy.ProcedureName := 'sp_fact_copy_bargain;1';
    SP_FactCopy.Parameters.Refresh;

    for i := 0 to cxGrid1DBBandedTableView1.Controller.SelectedRowCount - 1 do begin
      SP_FactCopy.Close;
      SP_FactCopy.Parameters.ParamByName('@fact_id').Value := cxGrid1DBBandedTableView1.Controller.SelectedRows[i].Values[cxGrid1DBBandedTableView1fact_id.Index];
      SP_FactCopy.Parameters.ParamByName('@bargain_id').Value := StrToInt(new_str);
      try
        SP_FactCopy.ExecProc;
      except
        SP_FactCopy.Free;
        ShowTextMessage;
      end;
      ShowTextMessage('Осталось ' + IntToStr(cxGrid1DBBandedTableView1.Controller.SelectedRowCount - i) + ' записей...',  False);
    end;

    RefreshQueryGrid(cxGrid1DBBandedTableView1, 'fact_id');
    ShowTextMessage;
    SP_FactCopy.Free;

    Screen.Cursor := crDefault;
  end;
end;

procedure TfmFact.FactFind(type_find : integer; str_fact_id : string);
begin
  Screen.Cursor := crHourglass;
  case type_find of
    11: Caption := Caption + ' / [поиск пред. гружёных вагонов]';
    12: Caption := Caption + ' / [поиск пред. порожних вагонов]';
    21: Caption := Caption + ' / [поиск след. гружёных вагонов]';
    22: Caption := Caption + ' / [поиск след. порожних вагонов]';
  end;

  SP_FactFind.Close;
  SP_FactFind.Parameters.Refresh;

  DS_Fact.DataSet := SP_FactFind;
  SP_FactFind.Parameters.ParamByName('@str_fact_id').Value := str_fact_id;
  SP_FactFind.Parameters.ParamByName('@type_find').Value := type_find;
  SP_FactFind.Open;

  ShowNextTripColumn(True, True);

  Screen.Cursor := crDefault;
end;

procedure TfmFact.N21Click(Sender: TObject);
begin
  fmFactCard := TfmFactCard.Create(Application, fmMain.Lis);
  fmFactCard._UpdateFactGroup(cxGrid1DBBandedTableView1);
  if fmFactCard.ShowModal = mrOk then
    RefreshQueryGrid(cxGrid1DBBandedTableView1,'fact_id');
end;

procedure TfmFact.N2Click(Sender: TObject);
begin
  SetRecordColor('fact_id', cxGrid1DBBandedTableView1, 'FACT', TMenuItem(Sender).Tag=1);
  RefreshQueryGrid(cxGrid1DBBandedTableView1, 'fact_id');
end;

procedure TfmFact.N39Click(Sender: TObject);
var           i : integer;
 str_bargain_id : string;
begin
  if TcxGridDBTableView(cxGrid1.ActiveView).Controller.SelectedRowCount < 1 then exit;

  str_bargain_id := '';
  for i:=0 to cxGrid1DBBandedTableView1.Controller.SelectedRecordCount - 1 do
    str_bargain_id := str_bargain_id + ', ' + IntToStr(cxGrid1DBBandedTableView1.Controller.SelectedRows[i].Values[cxGrid1DBBandedTableView1bargain_id.Index]);
  Delete(str_bargain_id, 1, 2);

  PrintFrahtCardWeight_Multi2(fmMain.Lis, str_bargain_id);
end;

procedure TfmFact.N40Click(Sender: TObject);
begin
  fmAgreeFactInc := TfmAgreeFactInc.Create(Application, cxGrid1DBBandedTableView1bargain_id.DataBinding.Field.AsInteger);
  if fmAgreeFactInc.SetFrahtFact() = mrOk then
    fmAgreeFactInc.ShowModal
  else
    fmAgreeFactInc.Close;
end;

procedure TfmFact.N42Click(Sender: TObject);
begin
  Screen.Cursor := crHourglass;
  DS_Fact.DataSet := sp_fact_GET;
  Screen.Cursor := crDefault;

  Caption := 'Оперативный факт';
end;

procedure TfmFact.N46Click(Sender: TObject);
begin
  case TdxBarButton(Sender).ClickItemLink.Owner.Owner.Tag of
    0 : RailAtlas_ShowRoute(fmMain.Lis, cxGrid1DBBandedTableView1node_begin_cod.DataBinding.Field.AsString,   cxGrid1DBBandedTableView1node_end_cod.DataBinding.Field.AsString);
    2 : RailAtlas_ShowRoute(fmMain.Lis, cxGrid3DBBandedTableView1r4_node_begin_cod.DataBinding.Field.AsString, cxGrid3DBBandedTableView1r4_node_end_cod.DataBinding.Field.AsString);
  end;
end;

procedure TfmFact.N49Click(Sender: TObject);
begin
  FindInEtranInvoice(fmMain.Lis, usr_pwd, cxGrid1DBBandedTableView1xml_reply_id.DataBinding.Field.AsInteger, cxGrid1DBBandedTableView1num_vagon.DataBinding.Field.AsInteger, cxGrid1DBBandedTableView1fact_id.DataBinding.Field.AsInteger);
end;

procedure TfmFact.cxGrid1DBBandedTableView1CustomDrawCell(Sender: TcxCustomGridTableView; ACanvas: TcxCanvas; AViewInfo: TcxGridTableDataCellViewInfo; var ADone: Boolean);
begin
  if (AViewInfo.GridRecord.Values[cxGrid1DBBandedTableView1global_color.Index]<>NULL) then ACanvas.Brush.Color := AViewInfo.GridRecord.Values[cxGrid1DBBandedTableView1global_color.Index];

  if (cxGrid1DBBandedTableView1doc_date_last_oper.Index = AViewInfo.Item.ID) then begin
    ACanvas.Brush.Color := clInfoBk;
    ACanvas.Font.Color  := clInfoText;
  end;

  if (cxGrid1DBBandedTableView1etran_folder.Index = AViewInfo.Item.ID) then begin
    if AViewInfo.GridRecord.Values[cxGrid1DBBandedTableView1etran_folder.Index] <> 'Заготовка'       then ACanvas.Font.Style := [fsBold];
    if AViewInfo.GridRecord.Values[cxGrid1DBBandedTableView1etran_folder.Index] = 'Не действительны' then ACanvas.Font.Color := clRed;
  end;

  if AViewInfo.GridRecord.Values[cxGrid1DBBandedTableView1etran_folder.Index] = 'Заготовка' then ACanvas.Font.Color := clGray;

  if AViewInfo.GridRecord.Selected then begin
    ACanvas.Brush.Color := clNavy;
    ACanvas.Font.Color := clWhite;
    if AViewInfo.Focused then ACanvas.Brush.Color := clBlue;
  end;
end;

procedure TfmFact.cxGrid1DBBandedTableView1CustomDrawColumnHeader(Sender: TcxGridTableView; ACanvas: TcxCanvas; AViewInfo: TcxGridColumnHeaderViewInfo; var ADone: Boolean);
begin
  DrawcxGridColumnOnFocused(Sender, ACanvas, AViewInfo);
end;

procedure TfmFact.cxGrid1DBBandedTableView1DataControllerFilterChanged(Sender: TObject);
begin
  DrawcxGridColumnOnFiltered(Sender);
end;

procedure TfmFact.cxGrid1DBBandedTableView1FocusedItemChanged(Sender: TcxCustomGridTableView; APrevFocusedItem, AFocusedItem: TcxCustomGridTableItem);
begin
  Sender.Painter.Invalidate;
end;

procedure TfmFact.cxGrid1DBBandedTableView1KeyPress(Sender: TObject; var Key: Char);
begin
  FilterColumnGridOnKeyPress(TcxGridDBBandedTableView(TcxGridSite(Sender).GridView), Key);
end;

procedure TfmFact.cxGrid3DBBandedTableView1CustomDrawCell(Sender: TcxCustomGridTableView; ACanvas: TcxCanvas; AViewInfo: TcxGridTableDataCellViewInfo; var ADone: Boolean);
begin
	if (AViewInfo.GridRecord.Selected or AViewInfo.GridRecord.Focused) then begin
    if not (AViewInfo.GridRecord is TcxGridFilterRow) then begin
  		ACanvas.Brush.Color := clNavy;
  		ACanvas.Font.Color := clWhite;
  		if AViewInfo.Focused then ACanvas.Brush.Color := clBlue;
    end;
	end;
end;

procedure TfmFact.cxGrid3DBBandedTableView1SelectionChanged(Sender: TcxCustomGridTableView);
var date1, date2 : TDateTime;
begin
  Query_RouteDetail.Close;
  if cxGrid3DBBandedTableView1num_vagon.DataBinding.Field <> nil then
    if cxGrid3DBBandedTableView1num_vagon.DataBinding.Field.Value <> null then begin

      date1 := -9;
      date2 := -9;

      if (cxGrid3DBBandedTableView1r1_date_from_to.DataBinding.Field.Value <> null) then
        date1 := cxGrid3DBBandedTableView1r1_date_from_to.DataBinding.Field.Value
      else if (cxGrid3DBBandedTableView1r2_date_from_to.DataBinding.Field.Value <> null) then
        date1 := cxGrid3DBBandedTableView1r2_date_from_to.DataBinding.Field.Value
      else if (cxGrid3DBBandedTableView1r4_date_from_to.DataBinding.Field.Value <> null) then
        date1 := cxGrid3DBBandedTableView1r4_date_from_to.DataBinding.Field.Value
      else if (cxGrid3DBBandedTableView1r5_date_from_to.DataBinding.Field.Value <> null) then
        date1 := cxGrid3DBBandedTableView1r5_date_from_to.DataBinding.Field.Value;


      if (cxGrid3DBBandedTableView1r5_date_from_to.DataBinding.Field.Value <> null) then
        date2 := cxGrid3DBBandedTableView1r5_date_from_to.DataBinding.Field.Value
      else if (cxGrid3DBBandedTableView1r4_date_from_to.DataBinding.Field.Value <> null) then
        date2 := cxGrid3DBBandedTableView1r4_date_from_to.DataBinding.Field.Value
      else if (cxGrid3DBBandedTableView1r2_date_from_to.DataBinding.Field.Value <> null) then
        date2 := cxGrid3DBBandedTableView1r2_date_from_to.DataBinding.Field.Value
      else if (cxGrid3DBBandedTableView1r1_date_from_to.DataBinding.Field.Value <> null) then
        date2 := cxGrid3DBBandedTableView1r1_date_from_to.DataBinding.Field.Value;


      if (date1 <> -9) and (date2 <> -9) then begin
        Query_RouteDetail.Parameters.ParamByName('num_vagon').Value := cxGrid3DBBandedTableView1num_vagon.DataBinding.Field.Value;
        Query_RouteDetail.Parameters.ParamByName('date1').Value := date1;
        Query_RouteDetail.Parameters.ParamByName('date2').Value := date2;
        Query_RouteDetail.Open;
      end;


    end;

end;

procedure TfmFact.cxGrid4DBBandedTableView1CustomDrawCell(Sender: TcxCustomGridTableView; ACanvas: TcxCanvas; AViewInfo: TcxGridTableDataCellViewInfo; var ADone: Boolean);
begin

  if (AViewInfo.GridRecord.Values[cxGrid4DBBandedTableView1date_from_to.Index] = cxGrid3DBBandedTableView1r4_date_from_to.DataBinding.Field.Value) then
    ACanvas.Brush.Color := $00D1E7FA;

  if (cxGrid4DBBandedTableView1route_name.Index = AViewInfo.Item.ID) then begin
    ACanvas.Font.Style := [fsBold];
    if AViewInfo.GridRecord.Values[cxGrid4DBBandedTableView1route_type.Index] = 0 then ACanvas.Font.Color := clRed;
    if AViewInfo.GridRecord.Values[cxGrid4DBBandedTableView1route_type.Index] = 1 then ACanvas.Font.Color := clBlue;
  end;

  if (cxGrid4DBBandedTableView1doc_date_last_oper.Index = AViewInfo.Item.ID) then begin
    ACanvas.Brush.Color := clInfoBk;
    ACanvas.Font.Color  := clInfoText;
  end;

  if (cxGrid4DBBandedTableView1etran_folder.Index = AViewInfo.Item.ID) then begin
    if AViewInfo.GridRecord.Values[cxGrid4DBBandedTableView1etran_folder.Index] <> 'Заготовка'       then ACanvas.Font.Style := [fsBold];
    if AViewInfo.GridRecord.Values[cxGrid4DBBandedTableView1etran_folder.Index] = 'Не действительны' then ACanvas.Font.Color := clRed;
  end;

  if AViewInfo.GridRecord.Values[cxGrid4DBBandedTableView1route_name.Index]   = null then ACanvas.Font.Color := clGray;
  if AViewInfo.GridRecord.Values[cxGrid4DBBandedTableView1etran_folder.Index] = 'Заготовка' then ACanvas.Font.Color := clGray;

  if AViewInfo.GridRecord.Selected then begin
    ACanvas.Brush.Color := clNavy;
    ACanvas.Font.Color := clWhite;
    if AViewInfo.Focused then ACanvas.Brush.Color := clBlue;
  end;
end;

procedure TfmFact.cxGrid4DBBandedTableView1FilterOnChanged(Sender: TObject);
begin
	DrawcxGridColumnOnFiltered(Sender);
end;

procedure TfmFact.dxBarButton10Click(Sender: TObject);
type
  TFunc = function (AppHand: THandle; usr_pwd: PUser_pwd; var ClientDS: TClientDataSet): variant;
var
         FFunc : TFunc;
        handle : THandle;
             v : Variant;
      ClientDS : TClientDataSet;
             Q : TADOQuery;
kargoETSNG_cod : string;
   str_fact_id : string;
      i, row_0 : integer;
  exApp, exWks : Variant;
begin
  ClientDS := TClientDataSet.Create(nil);
  ClientDS.FieldDefs.Add('fact_id'       , ftInteger);
  ClientDS.FieldDefs.Add('node_begin_cod', ftString, 20);
  ClientDS.FieldDefs.Add('node_end_cod'  , ftString, 20);
  ClientDS.FieldDefs.Add('kargoETSNG_cod', ftString, 20);
  ClientDS.FieldDefs.Add('fact_weight'   , ftFloat);
  ClientDS.FieldDefs.Add('date_from_to'  , ftDate);

  ClientDS.FieldDefs.Add('error_message' , ftString, 300);
  ClientDS.FieldDefs.Add('kargoGNG_cod'  , ftString, 20);
  ClientDS.FieldDefs.Add('otpr_name'     , ftString, 300);
  ClientDS.FieldDefs.Add('send_name'     , ftString, 300);
  ClientDS.FieldDefs.Add('ExitRoute_name', ftString, 300);
  ClientDS.FieldDefs.Add('cars_name'     , ftString, 300);
  ClientDS.FieldDefs.Add('owners_name'   , ftString, 300);
  ClientDS.FieldDefs.Add('distance'      , ftInteger);
  ClientDS.FieldDefs.Add('cars_gp'       , ftFloat);
  ClientDS.FieldDefs.Add('VagOtpr'       , ftFloat);
  ClientDS.FieldDefs.Add('TotalPriceWoNDS_own', ftCurrency);
  ClientDS.FieldDefs.Add('TotalPriceWoNDS_rzd', ftCurrency);
  ClientDS.FieldDefs.Add('TotalPrice_own', ftCurrency);
  ClientDS.FieldDefs.Add('TotalPrice_rzd', ftCurrency);
  ClientDS.FieldDefs.Add('koef'          , ftFloat);

  ClientDS.CreateDataSet;
  ClientDS.LogChanges := False;

  str_fact_id := '';
  for i:=0 to cxGrid1DBBandedTableView1.Controller.SelectedRecordCount - 1 do
    str_fact_id := str_fact_id + ', ' + IntToStr(cxGrid1DBBandedTableView1.Controller.SelectedRows[i].Values[cxGrid1DBBandedTableView1fact_id.Index]);
  Delete(str_fact_id, 1, 2);

  Q := TADOQuery.Create(nil);
  Q.Connection := fmMain.Lis;
  Q.SQL.Add('SELECT * FROM view_fact_all WHERE fact_id in (' + str_fact_id + ')');
  Q.Open;

  kargoETSNG_cod := Q.FieldByName('kargoETSNG_cod').AsString;

  while not Q.Eof do begin

    if (kargoETSNG_cod <> Q.FieldByName('kargoETSNG_cod').AsString) then begin
      Application.MessageBox('В выбранных вагонах груз должен быть одинаковый!', 'Внимание', MB_ICONSTOP or MB_OK);
      Q.Free;
      ClientDS.Free;
      Exit;
    end else begin
      ClientDS.Append;
      ClientDS.FieldByName('fact_id'        ).Value := Q.FieldByName('fact_id').Value;
      ClientDS.FieldByName('node_begin_cod' ).Value := Q.FieldByName('node_begin_cod').Value;
      ClientDS.FieldByName('node_end_cod'   ).Value := Q.FieldByName('node_end_cod').Value;
      ClientDS.FieldByName('fact_weight'    ).Value := Q.FieldByName('fact_weight').Value;
      ClientDS.FieldByName('kargoETSNG_cod' ).Value := Q.FieldByName('kargoETSNG_cod').Value;
      ClientDS.FieldByName('date_from_to'   ).Value := Q.FieldByName('date_from_to').Value;
      ClientDS.Post;
    end;
    Q.Next;
  end;


  handle := LoadLibrary('ctm_tarif.dll');
  @FFunc := GetProcAddress(handle, 'CreateWndCalcParam');
  v := FFunc(Application.Handle, usr_pwd, ClientDS);
  FreeLibrary(handle);

  if v[0] = True then begin

    ShowTextMessage('Запуск Excel...', False);

    exApp := CreateOleObject('Excel.Application');
    exApp.Application.EnableEvents := False;
    exApp.ScreenUpdating := False;
    exApp.Workbooks.Add(GetDocBlob(fmMain.Lis, 315));
    exWks := exApp.ActiveWorkbook.WorkSheets[1];

    row_0 := 3;
    Q.First;
    while not Q.Eof do begin
      exWks.Range['B' + IntToStr(row_0)].Value := Q.FieldByName('fact_id').Value;
      exWks.Range['C' + IntToStr(row_0)].Value := Q.FieldByName('num_vagon').Value;
      exWks.Range['D' + IntToStr(row_0)].Value := Q.FieldByName('num_document').AsString;
      exWks.Range['E' + IntToStr(row_0)].Value := Q.FieldByName('date_from_to').Value;
      exWks.Range['F' + IntToStr(row_0)].Value := Q.FieldByName('datpr').Value;
      exWks.Range['G' + IntToStr(row_0)].Value := Q.FieldByName('bargain_cod').AsString;
      exWks.Range['H' + IntToStr(row_0)].Value := Q.FieldByName('firm_customer_name').AsString;
      exWks.Range['I' + IntToStr(row_0)].Value := Q.FieldByName('node_begin_name').AsString;
      exWks.Range['J' + IntToStr(row_0)].Value := Q.FieldByName('node_end_name').AsString;
      exWks.Range['K' + IntToStr(row_0)].Value := Q.FieldByName('kargoETSNG_name').AsString;
      exWks.Range['L' + IntToStr(row_0)].Value := Q.FieldByName('fact_weight').Value;
      exWks.Range['M' + IntToStr(row_0)].Value := Q.FieldByName('calc_weight').Value;
      exWks.Range['N' + IntToStr(row_0)].Value := Q.FieldByName('kargo_capacity').Value;


      if ClientDS.Locate('fact_id', Q.FieldByName('fact_id').Value, []) then begin
        exWks.Range['O' + IntToStr(row_0)].Value := ClientDS.FieldByName('TotalPriceWoNDS_rzd').Value;
        exWks.Range['P' + IntToStr(row_0)].Value := ClientDS.FieldByName('TotalPriceWoNDS_own').Value;
        exWks.Range['Q' + IntToStr(row_0)].Value := ClientDS.FieldByName('koef').Value;

        exWks.Range['U' + IntToStr(row_0)].Value := ClientDS.FieldByName('node_begin_cod').AsString;
        exWks.Range['V' + IntToStr(row_0)].Value := ClientDS.FieldByName('node_end_cod').AsString;
        exWks.Range['W' + IntToStr(row_0)].Value := ClientDS.FieldByName('kargoETSNG_cod').AsString;
        exWks.Range['X' + IntToStr(row_0)].Value := ClientDS.FieldByName('kargoGNG_cod').AsString;

        exWks.Range['Y' + IntToStr(row_0)].Value := ClientDS.FieldByName('otpr_name').AsString + ': ' + ClientDS.FieldByName('send_name').AsString;
        exWks.Range['Z' + IntToStr(row_0)].Value := ClientDS.FieldByName('cars_name').AsString;
        exWks.Range['AA' + IntToStr(row_0)].Value:= ClientDS.FieldByName('cars_gp').Value;
        exWks.Range['AB' + IntToStr(row_0)].Value:= ClientDS.FieldByName('VagOtpr').Value;
        exWks.Range['AC' + IntToStr(row_0)].Value:= ClientDS.FieldByName('ExitRoute_name').AsString;
        exWks.Range['AD' + IntToStr(row_0)].Value:= ClientDS.FieldByName('distance').Value;
        exWks.Range['AE' + IntToStr(row_0)].Value:= ClientDS.FieldByName('error_message').AsString;
      end;


      ShowTextMessage('Осталось: ' + IntToStr(Q.RecordCount - Q.RecNo) + ' строк.' , False);
      xCopyRow(exApp,row_0 + 1,row_0 +1);
      inc(row_0);
      Q.Next;
    end;
    exApp.ScreenUpdating := True;
    exWks.Rows[IntToStr(row_0)].Delete;
    exWks.Rows[IntToStr(row_0)].Delete;
    exApp.Visible := True;
    exWks.Range['A1'].Select;
    ShowTextMessage();
    VarClear(exWks); VarClear(exApp);
  end;


  ClientDS.Free;
  Q.Free;
end;

procedure TfmFact.dxBarButton12Click(Sender: TObject);
var
  xmlDoc : TXMLDocument;
  inv, car, car_plat: IXMLNodeList;
  i, c, cp,  plat_count, inv_kodval, files: integer;
  car_plat_sum, car_plat_sum_nds,
  inv_plat_sum, inv_plat_sum_nds,
  payment, sum_per_cont, sum_per_cont_nds, razn, razn_nds: currency;
  is_singl_cur : boolean;
            SP : TADOStoredProc;
         fname : string;
  cnt_vagon, cnt_insert, cnt_update, cnt_etran: integer;
begin
  OpenDialog1.Filter := 'Файлы XML|*.xml|Все файлы|*.*';
  OpenDialog1.Options := [ofHideReadOnly,ofAllowMultiSelect,ofPathMustExist,ofFileMustExist,ofEnableSizing];
  if OpenDialog1.Execute(Handle) then begin
    cnt_vagon  := 0;
    cnt_insert := 0;
    cnt_update := 0;
    cnt_etran  := 0;

    Screen.Cursor := crHourglass;
    Client.DisableControls;
    for files := 0 to OpenDialog1.Files.Count - 1 do begin

      xmlDoc := TXMLDocument.Create(Self);
      try
        fname := ExtractFileName(OpenDialog1.Files[files]);
        if xmlDoc.Active then
          xmlDoc.Active := False;
        xmlDoc.LoadFromFile(OpenDialog1.Files[files]);
        xmlDoc.Active := True;
        inv := xmlDoc.ChildNodes.Nodes[1].ChildNodes.Nodes[0].ChildNodes;

        //inv - список накладных.
        for i := 0 to inv.Count - 1 do
          if inv[i].HasChildNodes then begin
            car := inv[i].ChildNodes;
            plat_count := 0;
            inv_plat_sum := 0;
            inv_plat_sum_nds := 0;
            razn := 0;
            razn_nds := 0;
            is_singl_cur := True;
            inv_kodval := -9;

            //пробежимся по платежам накладной, посмотрим в одной валюте или в разных.
            for c := 0 to car.Count - 1 do
              if car[c].NodeName = 'inv_plat' then begin
                if inv_kodval = -9 then
                  inv_kodval := car[c].Attributes['KODVAL'];
                if is_singl_cur and (inv_kodval <> car[c].Attributes['KODVAL']) then begin
                  is_singl_cur := False;
                  break;
                end;
              end;

            //Если валюты одинаковые
            if is_singl_cur then begin
              //Сложим все суммы по платежам.
              for c := 0 to car.Count - 1 do
                if car[c].NodeName = 'inv_plat' then begin
                  if not VarIsNull(car[cp].Attributes['SUMPLAT']) then
                    inv_plat_sum := inv_plat_sum + StrToFloat
                    (
                      ReplaceStr(ReplaceStr(VarToStr(car[c].Attributes['SUMPLAT']), '.', FormatSettings.DecimalSeparator), ',', FormatSettings.DecimalSeparator)
                    );
                  if not VarIsNull(car[cp].Attributes['SUMNDS']) then
                    inv_plat_sum_nds := inv_plat_sum_nds + StrToFloat
                    (
                      ReplaceStr(ReplaceStr(VarToStr(car[c].Attributes['SUMNDS']), '.', FormatSettings.DecimalSeparator), ',', FormatSettings.DecimalSeparator)
                    );
                  inc(plat_count);
                end;
              //Посчитаем сколько идет на каждый контэйнер/вагон.
              //(колво вагонов = общее кол-во тегов в накладной минус кол-во тегов платежей.
              sum_per_cont := RoundCurr(inv_plat_sum / (car.Count-plat_count), -2);
              razn := inv_plat_sum - (sum_per_cont * (car.Count-plat_count));
              sum_per_cont_nds := RoundCurr(inv_plat_sum_nds / (car.Count-plat_count), -2);
              razn_nds := inv_plat_sum_nds - (sum_per_cont_nds * (car.Count-plat_count));
            end
            //Если валюты разные
            else begin
              Client.EmptyDataSet;
              Application.MessageBox(PChar('В файле "'+fname+'" разные валюты. Загрузка не возможна.'), 'Ошибка', MB_OK + MB_ICONERROR);
              Exit;
            end;

            for c := 0 to car.Count - 1 do begin
              //Информация по вагону.
              if car[c].NodeName = 'car' then begin

                Client.Append;
                car_plat_sum := 0;
                car_plat_sum_nds := 0;

                //Если есть платежи по вагону, посчитаем их.
                //Платеж берем только 1 - первый
                if car[c].HasChildNodes then begin
                  car_plat := car[c].ChildNodes;
                  if not VarIsNull(car_plat[0].Attributes['SUMPLAT']) then
                    car_plat_sum := StrToFloat
                    (
                      ReplaceStr(ReplaceStr(VarToStr(car_plat[0].Attributes['SUMPLAT']), '.', FormatSettings.DecimalSeparator), ',', FormatSettings.DecimalSeparator)
                    );
                  if not VarIsNull(car_plat[0].Attributes['SUMNDS']) then
                    car_plat_sum_nds := StrToFloat
                    (
                      ReplaceStr(ReplaceStr(VarToStr(car_plat[0].Attributes['SUMNDS']), '.', FormatSettings.DecimalSeparator), ',', FormatSettings.DecimalSeparator)
                    );
                  Client['currency'] := VarToStr(car_plat[0].Attributes['KODVAL']);
                end;

                //Сложим сумму платежей по вагону и по накладной.
                Client['sumnds'] := sum_per_cont_nds + car_plat_sum_nds + razn_nds;
                Client['transport_pay'] := sum_per_cont + car_plat_sum + razn + Client['sumnds'];
                razn := 0; razn_nds := 0;

                Client['num_document'] := VarToStr(inv[i].Attributes['DocNumber']);
                Client['num_document_pref'] := Copy(Clientnum_document.AsString, 1, 2);
                Client['num_document'] := Copy(Client['num_document'], 3, Length(Client['num_document'])-2);
                if VarToStr(inv[i].Attributes['DTO']) <> '' then
                  Client['date_from_to'] := VarToStr(inv[i].Attributes['DTO']);
                if VarToStr(inv[i].Attributes['Date_R']) <> '' then
                  Client['date_delivery datpr'] := VarToStr(inv[i].Attributes['Date_R']);
                Client['node_begin'] := VarToStr(inv[i].Attributes['StationS']);
                Client['node_end'] := VarToStr(inv[i].Attributes['StationR']);
                Client['node_begin_sng'] := VarToStr(inv[i].Attributes['CisStationS']);
                Client['node_end_sng'] := VarToStr(inv[i].Attributes['CisStationR']);
                Client['kargoetsng'] := VarToStr(inv[i].Attributes['ETSNG']);
                Client['kargogng'] := VarToStr(inv[i].Attributes['KODGRGNG']);
                Client['distance'] := VarToStr(inv[i].Attributes['Distance']);
                Client['state_begin'] := VarToStr(inv[i].Attributes['STRO']);
                Client['state_end'] := VarToStr(inv[i].Attributes['STRN']);
                Client['code_exception'] := VarToStr(inv[i].Attributes['KodTar']);
                Client['num_vagon'] := VarToStr(car[c].Attributes['NomVag']);
                Client['kargo_capacity'] := ReplaceStr(ReplaceStr(VarToStr(car[c].Attributes['GRUZOPOD']), '.', FormatSettings.DecimalSeparator), ',', FormatSettings.DecimalSeparator);
                if VarToStr(car[c].Attributes['CarWeight']) <> '' then
                  Client['calc_weight'] := VarToStr(car[c].Attributes['CarWeight']);
                Client['inv_vis'] := VarToStr(inv[i].Attributes['InvVis']);
                Client['car_count'] := inv[i].Attributes['CarCount'];
                Client['katotr'] := inv[i].Attributes['KATOTP'];

                Client.Post;
              //информация по контейнеру
              end else if car[c].NodeName = 'cont' then begin

                Client.Append;
                car_plat_sum := 0;
                car_plat_sum_nds := 0;
                if car[c].HasChildNodes then begin
                  car_plat := car[c].ChildNodes;
                  //Если есть платежи по контейнеру, посчитаем их.
                  car_plat_sum := 0;
                  car_plat_sum_nds := 0;
                  if not VarIsNull(car_plat[0].Attributes['SUMPLAT']) then
                    car_plat_sum := StrToFloat
                    (
                      ReplaceStr(ReplaceStr(VarToStr(car_plat[0].Attributes['SUMPLAT']), '.', FormatSettings.DecimalSeparator), ',', FormatSettings.DecimalSeparator)
                    );
                  if not VarIsNull(car_plat[cp].Attributes['SUMNDS']) then
                    car_plat_sum_nds := StrToFloat
                    (
                      ReplaceStr(ReplaceStr(VarToStr(car_plat[0].Attributes['SUMNDS']), '.', FormatSettings.DecimalSeparator), ',', FormatSettings.DecimalSeparator)
                    );
                  Client['currency'] := VarToStr(car_plat[0].Attributes['KODVAL']);
                end;

                //Сложим сумму платежей по контейнеру и по накладной.
                Client['sumnds'] := sum_per_cont_nds + car_plat_sum_nds + razn_nds;
                Client['transport_pay'] := sum_per_cont + car_plat_sum + razn + Client['sumnds'];
                razn := 0; razn_nds := 0;

                Client['num_document'] := VarToStr(inv[i].Attributes['DocNumber']);
                Client['num_document_pref'] := Copy(Client['num_document'], 1, 2);
                Client['num_document'] := Copy(Client['num_document'], 3, Length(Client['num_document'])-2);
                if VarToStr(inv[i].Attributes['DTO']) <> '' then
                  Client['date_from_to'] := VarToStr(inv[i].Attributes['DTO']);
                if VarToStr(inv[i].Attributes['Date_R']) <> '' then
                  Client['date_delivery datpr'] := VarToStr(inv[i].Attributes['Date_R']);
                Client['node_begin'] := VarToStr(inv[i].Attributes['StationS']);
                Client['node_end'] := VarToStr(inv[i].Attributes['StationR']);
                Client['node_begin_sng'] := VarToStr(inv[i].Attributes['CisStationS']);
                Client['node_end_sng'] := VarToStr(inv[i].Attributes['CisStationR']);
                Client['kargoetsng'] := VarToStr(inv[i].Attributes['ETSNG']);
                Client['kargogng'] := VarToStr(inv[i].Attributes['KODGRGNG']);
                Client['distance'] := VarToStr(inv[i].Attributes['Distance']);
                Client['state_begin'] := VarToStr(inv[i].Attributes['STRO']);
                Client['state_end'] := VarToStr(inv[i].Attributes['STRN']);
                Client['code_exception'] := VarToStr(inv[i].Attributes['KodTar']);
                Client['num_konten'] := VarToStr(car[c].Attributes['NOMKNT']);
                if VarToStr(car[c].Attributes['CarWeight']) <> '' then
                  Client['calc_weight'] := VarToStr(car[c].Attributes['CarWeight']);
                Client['inv_vis'] := VarToStr(inv[i].Attributes['InvVis']);
                Client['car_count'] := inv[i].Attributes['CarCount'];
                Client['katotr'] := inv[i].Attributes['KATOTP'];

                Client.Post;
              end;
              ShowTextMessage(
              'Файл: "' + fname +
              '" Обработано '+IntToStr((i+1)*(c+1))+' вагонов из ' + IntToStr(inv.Count*car.Count), False);
            end;
          end;

      finally
        xmlDoc.Free;
        Screen.Cursor := crDefault;
      end;

      //Сохранение в базу
      Screen.Cursor := crHourglass;
      SP := TADOStoredProc.Create(nil);
      try
        SP.Connection := fmMain.Lis;
        SP.ProcedureName := 'sp_fact_save_shipping_information';
        SP.Parameters.Refresh;
        Client.First;

        cnt_vagon  := cnt_vagon + Client.RecordCount;
        while not Client.Eof do begin
          SP.Parameters.ParamByName('@num_document'     ).Value := Client['num_document'];
          SP.Parameters.ParamByName('@num_document_pref').Value := Client['num_document_pref'];
          SP.Parameters.ParamByName('@node_begin'       ).Value := Client['node_begin'];
          SP.Parameters.ParamByName('@node_end'         ).Value := Client['node_end'];
          SP.Parameters.ParamByName('@node_begin_sng'   ).Value := Client['node_begin_sng'];
          SP.Parameters.ParamByName('@node_end_sng'     ).Value := Client['node_end_sng'];
          SP.Parameters.ParamByName('@kargoetsng'       ).Value := Client['kargoetsng'];
          SP.Parameters.ParamByName('@kargogng'         ).Value := Client['kargogng'];
          SP.Parameters.ParamByName('@distance'         ).Value := Client['distance'];
          SP.Parameters.ParamByName('@state_begin'      ).Value := Client['state_begin'];
          SP.Parameters.ParamByName('@state_end'        ).Value := Client['state_end'];
          if Client.FieldByName('code_exception').AsString <> '' then
            SP.Parameters.ParamByName('@code_exception').Value := Client['code_exception']
          else
            SP.Parameters.ParamByName('@code_exception').Value := NULL;
          SP.Parameters.ParamByName('@transport_pay' ).Value := Client['transport_pay'];
          SP.Parameters.ParamByName('@currency'      ).Value := Client['currency'];
          SP.Parameters.ParamByName('@sumnds'        ).Value := Client['sumnds'];
          SP.Parameters.ParamByName('@num_vagon'     ).Value := Client['num_vagon'];
          SP.Parameters.ParamByName('@kargo_capacity').Value := Client['kargo_capacity'];
          SP.Parameters.ParamByName('@calc_weight'   ).Value := Client['calc_weight'];
          SP.Parameters.ParamByName('@num_konten'    ).Value := Client['num_konten'];
          SP.Parameters.ParamByName('@date_from_to_str').Value := Client['date_from_to'];
          SP.Parameters.ParamByName('@datpr_str'     ).Value := Client['date_delivery datpr'];
          SP.Parameters.ParamByName('@inv_vis'       ).Value := Client['inv_vis'];
          SP.Parameters.ParamByName('@car_count'     ).Value := Client['car_count'];
          SP.Parameters.ParamByName('@katotr'        ).Value := Client['katotr'];


          SP.Parameters.ParamByName('@file_load_info').Value := ExtractFileName(OpenDialog1.FileName);
          ShowTextMessage('Файл: "' + fname + '" Сохранение в базу... ' + IntToStr(Client.RecNo + 1)
            + ' из ' + IntToStr(Client.RecordCount), False);

          SP.ExecProc;

          cnt_insert := cnt_insert + SP.Parameters.ParamByName('@out_insert').Value;
          cnt_update := cnt_update + SP.Parameters.ParamByName('@out_update').Value;
          cnt_etran  := cnt_etran  + SP.Parameters.ParamByName('@out_etran').Value;

          Client.Next;
        end;

      finally
        SP.Free;
        ShowTextMessage;
        Screen.Cursor := crDefault;
        OpenDialog1.Filter := 'Файлы Excel|*.xls; *.csv|Все файлы|*.*';
        OpenDialog1.Options := [ofHideReadOnly,ofPathMustExist,ofFileMustExist,ofEnableSizing];
      end;
    end;
    ShowTextMessage;
    Client.EnableControls;
    Application.MessageBox(PChar('Загрузка успешно завершена' + #10 +
                        'Обработано ' + IntToStr(cnt_vagon) + ' вагонов' + #10 +
                        ' - загружено ' + IntToStr(cnt_insert) + #10 +
                        ' - обновлено ' + IntToStr(cnt_update) + #10 +
                        ' - вагонов из ЭТРАНа ' + IntToStr(cnt_etran)), 'Информация', MB_OK + MB_ICONINFORMATION);
    dxBarButton1.Click;
  end;
end;

procedure TfmFact.dxBarButton13Click(Sender: TObject);
var i, row_0, cnt_state, cnt_total   : integer;
    exApp, exWkb, exWks   : variant;
    _date1    : TDateTime;
    SP        : TADOStoredProc;
    Q, Q1     : TADOQuery;
    state, str_formula     : string;
    connect : TADOConnection;
begin
  Screen.Cursor := crHourglass;


  ShowTextMessage('Выполнение запроса к базе данных.'+#10#13+'Это может занять несколько секунд. ПОДОЖДИТЕ !!!!!', False);

  connect := TADOConnection.Create(nil);
  connect.ConnectionString := 'Persist Security Info=True;Provider=SQLOLEDB.1;User ID=ETRAN_GRU;Password=etran;Initial Catalog='+usr_pwd^.catalog + ';Data Source='+usr_pwd^.server+';';
  connect.KeepConnection := False;
  connect.LoginPrompt := False;
  connect.Open;



  SP := TADOStoredProc.Create(nil);
  SP.Connection := connect;
  SP.ProcedureName := 'sp_fact_CLAIM_LOAD';
  SP.Parameters.Refresh;
  SP.Parameters.ParamByName('@date').Value := Now;
  SP.Parameters.ParamByName('@set_month').Value := 0;
  SP.Open;

  ShowTextMessage('Запуск сервера автоматизации...', False);
  exApp := CreateOleObject('Excel.Application');
  exWkb := exApp.Workbooks.Add(GetDocBlob(fmMain.Lis, 228));
  exWks := exApp.ActiveWorkbook.WorkSheets[1];
  exWks.Name := FormatDateTime('mmmm yy', Date);
  exApp.Visible := True;
  ShowTextMessage('Формирование отчета...', False);

  exWks.Range['B3'].Value := 'Таблица выполнения погрузки ' +   FormatDateTime('mmmm', Now);

  // ---------------------------------------------------------------------------
  state := SP.FieldByName('claimState').AsString;
  cnt_state := 1;
  while not SP.Eof do begin
    if state <> SP.FieldByName('claimState').AsString then begin
      cnt_state := cnt_state + 1;
      state := SP.FieldByName('claimState').AsString;
    end;
    SP.Next;
  end;

  cnt_total := SP.RecordCount + cnt_state;
  row_0 := 7;
  exWks.Range['B2'].Value := 'Формирование отчёта: ' + FormatDateTime('dd.mm.yy hh:nn', Now);

  for i := 2 to (SP.RecordCount - 1) do begin
    exWks.Rows[IntToStr(row_0+i-1)].Copy;
    exWks.Rows[IntToStr(row_0+i)].Insert;
  end;


  SP.First;
  state := SP.FieldByName('claimState').AsString;
  row_0 := 8;
  cnt_state := 0;
  str_formula := '=SUM(R[-1]C';
  while not SP.Eof do begin
    ShowTextMessage('Осталось ' + IntToStr(SP.RecordCount - SP.RecNo) + ' ', False);
    exWks.Range['B' + IntToStr(row_0)].Value := SP.RecNo;
    exWks.Range['C' + IntToStr(row_0)].Value := '''' + SP.FieldByName('claimNumber').AsString;
    exWks.Range['D' + IntToStr(row_0)].Value := SP.FieldByName('claimState').AsString;
    exWks.Range['E' + IntToStr(row_0)].Value := SP.FieldByName('clmMsgKindName').AsString;

    exWks.Range['F' + IntToStr(row_0)].Value := SP.FieldByName('clmLastOper').AsString;
    exWks.Range['G' + IntToStr(row_0)].Value := SP.FieldByName('clmSenderName').AsString;
    exWks.Range['H' + IntToStr(row_0)].Value := SP.FieldByName('clmFromStationName').AsString;
    exWks.Range['I' + IntToStr(row_0)].Value := SP.FieldByName('otprFreightName').AsString;
    exWks.Range['J' + IntToStr(row_0)].Value := SP.FieldByName('clmNote').AsString;

    exWks.Range['K' + IntToStr(row_0)].Value := SP.FieldByName('otprToStationName').AsString;
    exWks.Range['L' + IntToStr(row_0)].Value := SP.FieldByName('clmStartDate').Value;
    exWks.Range['M' + IntToStr(row_0)].Value := SP.FieldByName('clmFinishDate').Value;
    exWks.Range['N' + IntToStr(row_0)].Value := SP.FieldByName('otprCarCount').Value;
    exWks.Range['O' + IntToStr(row_0)].Value := SP.FieldByName('otprFreightWeight').Value;

    exWks.Range['P' + IntToStr(row_0)].Value := SP.FieldByName('fact_count').Value;
    exWks.Range['Q' + IntToStr(row_0)].Value := SP.FieldByName('fact_weight').Value;

    row_0 := row_0 + 1;
    cnt_state := cnt_state + 1;

    SP.Next;
  end;
  exWks.Range['C'+IntToStr(row_0)].Value := '=SUBTOTAL(3, R[-'+IntToStr(SP.RecordCount)+']C:R[-1]C)';
  exWks.Range['N'+IntToStr(row_0)].Value := '=SUBTOTAL(9, R[-'+IntToStr(SP.RecordCount)+']C:R[-1]C)';
  exWks.Range['O'+IntToStr(row_0)].Value := '=SUBTOTAL(9, R[-'+IntToStr(SP.RecordCount)+']C:R[-1]C)';
  exWks.Range['P'+IntToStr(row_0)].Value := '=SUBTOTAL(9, R[-'+IntToStr(SP.RecordCount)+']C:R[-1]C)';
  exWks.Range['Q'+IntToStr(row_0)].Value := '=SUBTOTAL(9, R[-'+IntToStr(SP.RecordCount)+']C:R[-1]C)';
  exWks.Range['R'+IntToStr(row_0)].Value := '=SUBTOTAL(9, R[-'+IntToStr(SP.RecordCount)+']C:R[-1]C)';
  exWks.Range['S'+IntToStr(row_0)].Value := '=SUBTOTAL(9, R[-'+IntToStr(SP.RecordCount)+']C:R[-1]C)';
  // ---------------------------------------------------------------------------


  exWks := exApp.ActiveWorkbook.WorkSheets[2];
  exWks.Name := FormatDateTime('mmmm yy', IncMonth(Date, 1));
  ShowTextMessage('Формирование отчета...', False);

  SP.Close;
  SP.Parameters.Refresh;
  SP.Parameters.ParamByName('@date').Value := Now;
  SP.Parameters.ParamByName('@set_month').Value := 1;
  SP.Open;

  exWks.Range['B3'].Value := 'Таблица выполнения погрузки ' +   FormatDateTime('mmmm', IncMonth(Date, 1));
  // ---------------------------------------------------------------------------
  state := SP.FieldByName('claimState').AsString;
  cnt_state := 1;
  while not SP.Eof do begin
    if state <> SP.FieldByName('claimState').AsString then begin
      cnt_state := cnt_state + 1;
      state := SP.FieldByName('claimState').AsString;
    end;
    SP.Next;
  end;

  cnt_total := SP.RecordCount + cnt_state;
  row_0 := 7;
  exWks.Range['B2'].Value := 'Формирование отчёта: ' + FormatDateTime('dd.mm.yy hh:nn', Now);

  for i := 2 to (SP.RecordCount - 1) do begin
    exWks.Rows[IntToStr(row_0+i-1)].Copy;
    exWks.Rows[IntToStr(row_0+i)].Insert;
  end;


  SP.First;
  state := SP.FieldByName('claimState').AsString;
  row_0 := 8;
  cnt_state := 0;
  str_formula := '=SUM(R[-1]C';
  while not SP.Eof do begin
    ShowTextMessage('Осталось ' + IntToStr(SP.RecordCount - SP.RecNo) + ' ', False);
    exWks.Range['B' + IntToStr(row_0)].Value := SP.RecNo;
    exWks.Range['C' + IntToStr(row_0)].Value := '''' + SP.FieldByName('claimNumber').AsString;
    exWks.Range['D' + IntToStr(row_0)].Value := SP.FieldByName('claimState').AsString;
    exWks.Range['E' + IntToStr(row_0)].Value := SP.FieldByName('clmMsgKindName').AsString;

    exWks.Range['F' + IntToStr(row_0)].Value := SP.FieldByName('clmLastOper').AsString;
    exWks.Range['G' + IntToStr(row_0)].Value := SP.FieldByName('clmSenderName').AsString;
    exWks.Range['H' + IntToStr(row_0)].Value := SP.FieldByName('clmFromStationName').AsString;
    exWks.Range['I' + IntToStr(row_0)].Value := SP.FieldByName('otprFreightName').AsString;
    exWks.Range['J' + IntToStr(row_0)].Value := SP.FieldByName('clmNote').AsString;

    exWks.Range['K' + IntToStr(row_0)].Value := SP.FieldByName('otprToStationName').AsString;
    exWks.Range['L' + IntToStr(row_0)].Value := SP.FieldByName('clmStartDate').Value;
    exWks.Range['M' + IntToStr(row_0)].Value := SP.FieldByName('clmFinishDate').Value;
    exWks.Range['N' + IntToStr(row_0)].Value := SP.FieldByName('otprCarCount').Value;
    exWks.Range['O' + IntToStr(row_0)].Value := SP.FieldByName('otprFreightWeight').Value;

    exWks.Range['P' + IntToStr(row_0)].Value := SP.FieldByName('fact_count').Value;
    exWks.Range['Q' + IntToStr(row_0)].Value := SP.FieldByName('fact_weight').Value;

    row_0 := row_0 + 1;
    cnt_state := cnt_state + 1;

    SP.Next;
  end;
  exWks.Range['C'+IntToStr(row_0)].Value := '=SUBTOTAL(3, R[-'+IntToStr(SP.RecordCount)+']C:R[-1]C)';
  exWks.Range['N'+IntToStr(row_0)].Value := '=SUBTOTAL(9, R[-'+IntToStr(SP.RecordCount)+']C:R[-1]C)';
  exWks.Range['O'+IntToStr(row_0)].Value := '=SUBTOTAL(9, R[-'+IntToStr(SP.RecordCount)+']C:R[-1]C)';
  exWks.Range['P'+IntToStr(row_0)].Value := '=SUBTOTAL(9, R[-'+IntToStr(SP.RecordCount)+']C:R[-1]C)';
  exWks.Range['Q'+IntToStr(row_0)].Value := '=SUBTOTAL(9, R[-'+IntToStr(SP.RecordCount)+']C:R[-1]C)';
  exWks.Range['R'+IntToStr(row_0)].Value := '=SUBTOTAL(9, R[-'+IntToStr(SP.RecordCount)+']C:R[-1]C)';
  exWks.Range['S'+IntToStr(row_0)].Value := '=SUBTOTAL(9, R[-'+IntToStr(SP.RecordCount)+']C:R[-1]C)';
  // ---------------------------------------------------------------------------


  ShowTextMessage;

  SP.Free;
  connect.Free;
  exWks := exApp.ActiveWorkbook.WorkSheets[1];
  exWks.Range['A1'].Select;
  exApp.CutCopyMode := False;
  exApp.Visible := True;


  exWks := Null; exWkb := Null; exApp := Null;
  VarClear(exWks); VarClear(exWkb); VarClear(exApp);
  Screen.Cursor := crDefault;
end;

procedure TfmFact.dxBarButton14Click(Sender: TObject);
var sp_zfto_vagon_modify: TADOStoredProc;
begin
  sp_zfto_vagon_modify := TADOStoredProc.Create(nil);
  sp_zfto_vagon_modify.Connection := fmMain.Lis;
  sp_zfto_vagon_modify.ProcedureName := 'sp_zfto_vagon_modify';
  sp_zfto_vagon_modify.Parameters.Refresh;
  sp_zfto_vagon_modify.ExecProc;
  sp_zfto_vagon_modify.Free;

  RefreshQueryGrid(cxGrid1DBBandedTableView1, 'fact_id', cxGrid1DBBandedTableView1fact_id.DataBinding.Field.AsInteger);
  Application.MessageBox('С\Ф ЦФТО обновлены.', 'Внимание', MB_OK);

end;

procedure TfmFact.dxBarButton15Click(Sender: TObject);
type
  TFunc = function(AppHand: THandle; connect: TADOConnection; bargain_id: integer; usr_pwd: PUser_pwd; set_rate: boolean; set_param: boolean): Variant;
var
 i, type_kontener, attr_self : integer;
                  bargain_id : integer;
                FBargainRate : TFunc;
                      handle : THandle;
                           v : Variant;
         sp_fact_rate_modify : TADOStoredProc;
begin
  if cxGrid1DBBandedTableView1bargain_id.DataBinding.Field.IsNull then begin
    Application.MessageBox('Оперативный факт ДОЛЖЕН быть связан с перевозкой.', 'Внимание', MB_OK);
    Exit;
  end;

  handle := LoadLibrary('FormsAdd.dll');
  @FBargainRate := GetProcAddress(handle,'CreateWndBargainRate');
  v := FBargainRate(Application.Handle, fmMain.Lis, cxGrid1DBBandedTableView1bargain_id.DataBinding.Field.AsInteger, usr_pwd, False, False);
  FreeLibrary(handle);

  if (v[0]<>-9) and (v[1]<>-9) then begin
    Screen.Cursor := crHourglass;
    type_kontener := v[0];
    attr_self     := v[1];

    sp_fact_rate_modify := TADOStoredProc.Create(nil);
    sp_fact_rate_modify.Connection := fmMain.Lis;
    sp_fact_rate_modify.ProcedureName := 'sp_fact_rate_modify';
    sp_fact_rate_modify.Parameters.Refresh;


    for i:=0 to cxGrid1DBBandedTableView1.Controller.SelectedRowCount -1 do begin
      ShowTextMessage('Осталось '+IntToStr(cxGrid1DBBandedTableView1.Controller.SelectedRowCount - i)+' строк...', False);
      if cxGrid1DBBandedTableView1.Controller.SelectedRows[i].Values[cxGrid1DBBandedTableView1bargain_id.Index] = null then begin
        bargain_id := -9;
      end else begin
        bargain_id := cxGrid1DBBandedTableView1.Controller.SelectedRows[i].Values[cxGrid1DBBandedTableView1bargain_id.Index];
      end;

      if DeleteFrahtCard(bargain_id, fmMain.Lis) = True then begin
        sp_fact_rate_modify.Parameters.Refresh;
        sp_fact_rate_modify.Parameters.ParamByName('@fact_id'      ).Value := cxGrid1DBBandedTableView1.Controller.SelectedRows[i].Values[cxGrid1DBBandedTableView1fact_id.Index];
        sp_fact_rate_modify.Parameters.ParamByName('@type_kontener').Value := type_kontener;
        sp_fact_rate_modify.Parameters.ParamByName('@attr_self'    ).Value := attr_self;
        sp_fact_rate_modify.ExecProc;
      end;
    end;

    sp_fact_rate_modify.Free;

    ShowTextMessage('Обновление данных...', False);
    RefreshQueryGrid(cxGrid1DBBandedTableView1, 'fact_id', cxGrid1DBBandedTableView1fact_id.DataBinding.Field.AsInteger);
    ShowTextMessage;

    Screen.Cursor := crDefault;
  end;
end;

procedure TfmFact.dxBarButton16Click(Sender: TObject);
var exApp, exWkb, exWks : OleVariant;
           i,row_insert : integer;
            str_fact_id : string;
                     SP : TADOStoredProc;
               ClientDS : TClientDataSet;
                     RS : _Recordset;
begin
  Screen.Cursor := crHourGlass;

  str_fact_id := '';
  for i:=0 to cxGrid1DBBandedTableView1.Controller.SelectedRecordCount - 1 do begin
    cxGrid1DBBandedTableView1.Controller.SelectedRows[i].Focused := True;
    str_fact_id := str_fact_id + ', ' + IntToStr(cxGrid1DBBandedTableView1fact_id.DataBinding.Field.AsInteger);
  end;
  Delete(str_fact_id, 1, 2);

  SP := TADOStoredProc.Create(nil);
  SP.Connection := fmMain.Lis;
  SP.CommandTimeout := 120;
  SP.ProcedureName := 'sp_Report_fact_track';
  SP.Parameters.Refresh;
  SP.Parameters.ParamByName('@type_report').Value := 293;
  SP.Parameters.ParamByName('@str_fact_track_id').Value := str_fact_id;

  SP.Open;

  exApp := CreateOleObject('Excel.Application');
  exApp.Workbooks.Add(GetDocBlob(fmMain.Lis, 293));
  exWks := exApp.ActiveWorkbook.WorkSheets[1];

  row_insert := 5;

  while not SP.Eof do begin

    exWks.Range['C'+IntToStr(row_insert)].Value := SP.FieldByName('ff_etran_folder').AsString;
    exWks.Range['D'+IntToStr(row_insert)].Value := SP.FieldByName('ff_date_from_to').Value;
    exWks.Range['E'+IntToStr(row_insert)].Value := SP.FieldByName('ff_num_vagon').Value;
    exWks.Range['F'+IntToStr(row_insert)].Value := SP.FieldByName('ff_num_document_pref').AsString;
    exWks.Range['G'+IntToStr(row_insert)].Value := SP.FieldByName('ff_num_document').AsString;
    exWks.Range['H'+IntToStr(row_insert)].Value := SP.FieldByName('date_arrival').Value;
    exWks.Range['I'+IntToStr(row_insert)].Value := SP.FieldByName('ff_fact_weight').Value;
    exWks.Range['J'+IntToStr(row_insert)].Value := SP.FieldByName('ff_node_end_name').AsString;
    exWks.Range['K'+IntToStr(row_insert)].Value := SP.FieldByName('node_end_name').AsString;
    exWks.Range['L'+IntToStr(row_insert)].Value := SP.FieldByName('date_operation').Value;
    exWks.Range['M'+IntToStr(row_insert)].Value := SP.FieldByName('time_operation').AsString;
    exWks.Range['N'+IntToStr(row_insert)].Value := SP.FieldByName('node_operation_name').AsString;
    exWks.Range['O'+IntToStr(row_insert)].Value := SP.FieldByName('road_begin_name').AsString;
    exWks.Range['P'+IntToStr(row_insert)].Value := SP.FieldByName('road_end_name').AsString;
    exWks.Range['Q'+IntToStr(row_insert)].Value := SP.FieldByName('index_train').AsString;
    exWks.Range['R'+IntToStr(row_insert)].Value := SP.FieldByName('num_train').AsString;
    exWks.Range['S'+IntToStr(row_insert)].Value := SP.FieldByName('kargoETSNG_name').AsString;
    exWks.Range['T'+IntToStr(row_insert)].Value := SP.FieldByName('fact_weight').Value;
    exWks.Range['U'+IntToStr(row_insert)].Value := SP.FieldByName('poluchgr').AsString;
    exWks.Range['V'+IntToStr(row_insert)].Value := SP.FieldByName('node_begin_name').AsString;
    exWks.Range['W'+IntToStr(row_insert)].Value := SP.FieldByName('date_otpr').Value;
    exWks.Range['X'+IntToStr(row_insert)].Value := SP.FieldByName('time_otpr').AsString;
    exWks.Range['Y'+IntToStr(row_insert)].Value := SP.FieldByName('doc_number').AsString;
    exWks.Range['AB'+IntToStr(row_insert)].Value := SP.FieldByName('cod_operation_cod').AsString;
    exWks.Range['AC'+IntToStr(row_insert)].Value := SP.FieldByName('cod_operation_train_name').AsString;
    exWks.Range['AD'+IntToStr(row_insert)].Value := SP.FieldByName('cod_operation_vagon_name').AsString;
    exWks.Range['AE'+IntToStr(row_insert)].Value := SP.FieldByName('type_park_name').AsString;
    exWks.Range['AF'+IntToStr(row_insert)].Value := SP.FieldByName('state_pp1').AsString;
    exWks.Range['AG'+IntToStr(row_insert)].Value := SP.FieldByName('node_pp1').AsString;
    exWks.Range['AH'+IntToStr(row_insert)].Value := SP.FieldByName('date_pp1').Value;
    exWks.Range['AI'+IntToStr(row_insert)].Value := SP.FieldByName('state_pp2').AsString;
    exWks.Range['AJ'+IntToStr(row_insert)].Value := SP.FieldByName('node_pp2').AsString;
    exWks.Range['AK'+IntToStr(row_insert)].Value := SP.FieldByName('date_pp2').Value;
    exWks.Range['AL'+IntToStr(row_insert)].Value := SP.FieldByName('state_pp3').AsString;
    exWks.Range['AM'+IntToStr(row_insert)].Value := SP.FieldByName('node_pp3').AsString;
    exWks.Range['AN'+IntToStr(row_insert)].Value := SP.FieldByName('date_pp3').Value;

    //Расчет расстояний
    try
      exWks.Range['Z'+IntToStr(row_insert)].Value := GetCalcDistanceGroupFast(ClientDS, SP.FieldByName('node_begin_cod').Value, SP.FieldByName('node_operation_cod').Value, False);
      exWks.Range['AA'+IntToStr(row_insert)].Value := GetCalcDistanceGroupFast(ClientDS, SP.FieldByName('node_operation_cod').Value, SP.FieldByName('node_end_cod').Value, False);
    except on E: Exception do begin
    exWks.Range['Z'+IntToStr(row_insert)].Value := '';
    exWks.Range['AA'+IntToStr(row_insert)].Value := '';
    end;
    end;

    ShowTextMessage('Осталось вагонов ' + IntToStr(SP.RecordCount - SP.RecNo) + '...', False);
    SP.Next;
    if not SP.Eof then begin
        xCopyRow(exApp,row_insert + 1,row_insert +1);
        inc(row_insert);
    end;
 end;
  exApp.Rows[IntToStr(row_insert + 1) + ':' + IntToStr(row_insert + 1)].Select;
  exApp.Selection.Delete;

  exApp.Range['A1'].Select;
  exApp.Visible := True;
  SP.Free;
  ClientDS.Free;
  exApp := Null;  exWks := Null;
  ShowTextMessage();

  Screen.Cursor := crDefault;
end;

procedure TfmFact.dxBarButton17Click(Sender: TObject);
var        i : integer;
 str_fact_id : string;
begin
  Screen.Cursor := crHourglass;
  for i := 0 to cxGrid1DBBandedTableView1.Controller.SelectedRowCount - 1 do
    str_fact_id := str_fact_id + ',' + IntToStr(cxGrid1DBBandedTableView1.Controller.SelectedRows[i].Values[cxGrid1DBBandedTableView1fact_id.Index]);
  Delete(str_fact_id, 1, 1);

  FactFind(TControl(Sender).Tag, str_fact_id);
  Screen.Cursor := crDefault;
end;

procedure TfmFact.dxBarButton21Click(Sender: TObject);
var
  FClientDS : TClientDataSet;
          i : Integer;
          s : String;
begin
  FClientDS := TClientDataSet.Create(nil);
  if Assigned(FClientDS) then begin
    FClientDS.XMLData := FstrXMLClientDS;
    for i := 0 to FClientDS.Fields.Count - 1 do begin
      if (FClientDS.FieldList.Fields[i].DataType in [ftDate, ftDateTime]) then
        s := s + #10#13 + '@' + FClientDS.FieldList.Fields[i].FieldName+#9#9+' = '+#9+
      iif(FClientDS.Fields.Fields[i].Value = Null,'Null,', '''' + FormatDateTime('yyyymmdd', FClientDS.Fields.Fields[i].AsDateTime) + ''',')

      else

      if (FClientDS.FieldList.Fields[i].DataType in [ftString, ftBlob]) then
        s := s + #10#13 + '@' + FClientDS.FieldList.Fields[i].FieldName+#9#9+' = '+#9+
      iif((FClientDS.Fields.Fields[i].Value = Null) or (FClientDS.Fields.Fields[i].AsString = ''),'Null,',
      '''' + FClientDS.Fields.Fields[i].AsString + ''',')

      else

        s := s + #10#13 + '@' + FClientDS.FieldList.Fields[i].FieldName+#9#9+' = '+#9+
      iif((FClientDS.Fields.Fields[i].Value = Null) or (FClientDS.Fields.Fields[i].AsString = ''),'Null,',
      FClientDS.Fields.Fields[i].AsString + ',');

    end;

    if cxPageControl1.ActivePageIndex = 0 then
      s := 'EXEC ' + SP_Fact_GET.ProcedureName + #10 + copy(s, 0, Length(s) - 1);

    Application.MessageBox(PChar(s), 'SQL Запрос...', MB_OK);
  end;
end;

function DateTimeToIso8601(const Value: TDateTime): string;
begin
  with TXSDateTime.Create() do
  try
    AsDateTime := Value; // convert from TDateTime
    Result := NativeToXS; // convert to WideString
  finally
    Free();
  end;
end;

procedure TfmFact.dxBarButton22Click(Sender: TObject);
var
             Xml : IXMLDocument;
              SP : TADOStoredProc;
              Q  : TADOQuery;
     str_fact_id : string;
       file_name : string;
 files_format_id : integer;
files_rows_count : integer;
           s, s1 : TStringStream;
      files_data : TArray<Byte>;
               i : integer;
          ListID : string;
begin
  str_fact_id := GetStrId(cxGrid1DBBandedTableView1fact_id, ',');
  if str_fact_id = '' then  exit;

  file_name := 'FromFact_' + usr_pwd.user_name + '_' + FormatDateTime('yyyymmddhhnnss', Now) + '.xml';

  Screen.Cursor := crHourglass;

  SP := TADOStoredProc.Create(nil);
  SP.Connection := fmMain.Lis;
  SP.ProcedureName := 'sp_Fact_Copy_To_Fact_Track';
  SP.Parameters.Refresh;
  SP.Parameters.ParamByName('@str_fact_id').Value    := str_fact_id;
  SP.Parameters.ParamByName('@users_group_id').Value := usr_pwd.user_group_id;
  SP.Open;

  if SP.RecordCount = 0 then begin
     Application.MessageBox('Невозможно скопировать вагоны. Такие рейсы существуют или недостаточно данных для создания рейса.','Внимание',MB_OK);
     SP.Free;
     Screen.Cursor := crHourglass;
     exit;
  end;

  if SP.RecordCount <>  cxGrid1DBBandedTableView1.Controller.SelectedRowCount then begin
   Application.MessageBox('Не все вагоны возможно скопировать.  Показать вагоны, которые можно скопироваь?','Внимание',MB_OK);
   ListID := '';
   while not SP.Eof do begin
      ListID := ListID + ',' + SP.FieldByName('fact_id').AsString;
      SP.Next;
   end;
   FiltercxGrid4ListID(cxGrid1DBBandedTableView1, 'fact_id', ListID);
   cxGrid1DBBandedTableView1.Controller.ClearSelection;
   SP.Free;
   Screen.Cursor := crDefault;
   exit;
  end;

  Xml := TXMLDocument.Create(nil);
  Xml.Active := True;
  Xml.Version := '1.0';
  Xml.Encoding := 'UTF-8';
  with Xml do
    begin
      with AddChild('xml') do
        begin
          with AddChild('Client') do
            begin
               Attributes['idClient'] := '116947';
                while not SP.Eof do begin
                  with AddChild('Car') do begin
                    Attributes['Number']       := SP.FieldByName('num_vagon').AsString;
                    Attributes['DateBegin']    := DateTimeToIso8601(SP.FieldByName('date_from_to').Value);
                    Attributes['StationBegin'] := SP.FieldByName('node_begin_cod').AsString;
                    Attributes['RW_Disl']      := '';
                    Attributes['StationDisl']  := SP.FieldByName('node_end_cod').AsString;
                    Attributes['StationOper']  := SP.FieldByName('node_end_cod').AsString;
                    Attributes['CodeOper']     := '';
                    Attributes['DateOper']     := DateTimeToIso8601(iif(SP.FieldByName('datpr').IsNull, SP.FieldByName('date_from_to').Value, SP.FieldByName('datpr').Value));
                    Attributes['NumTrain']     := '';
                    Attributes['I1']           := '';
                    Attributes['I2']           := '';
                    Attributes['I3']           := '';
                    Attributes['RW_Dest']      := '';
                    Attributes['StationDest']  := SP.FieldByName('node_end_cod').AsString;
                    Attributes['IsFaulty']     := '';
                    Attributes['Weight']       := FloatToStr(SP.FieldByName('fact_weight').Value * 1000);
                    Attributes['CodeCargo']    := SP.FieldByName('kargoETSNG_cod').AsString;
                    Attributes['OKPO_grpol']   := SP.FieldByName('etran_SenderOKPO').AsString;
                    Attributes['OKPO_grotpr']  := SP.FieldByName('etran_RecipOKPO').AsString;
                    Attributes['RW_grpol']     := '';
                    Attributes['RW_grotpr']    := '';
                    Attributes['IsEmpty']      := '';
                    Attributes['DocNumber']    := SP.FieldByName('doc_number').AsString;
                    Attributes['DateLoading']  := '';
                    Attributes['StationLoading'] := '';
                    Attributes['RW_Rash']      := '';
                    Attributes['idReis']       := '';
                    Attributes['DatePrib']     := '';
                    Attributes['DateVygr']     := '';
                  end;
                  SP.Next;
                end;
            end;
        end;
    end;

  files_rows_count :=  SP.RecordCount;
  SP.Close;

  // сохранение файла
  Q := TADOQuery.Create(nil);
  Q.Connection := fmMain.Lis;;
  Q.SQL.Text := 'SELECT * FROM inf_obj WHERE type_inf_id = 130 AND inf_obj_cod = ''00002''';
  Q.Open;
  files_format_id := q.FieldByName('inf_obj_id').AsInteger;
  Q.Free;

  SP.ProcedureName := 'sp_fact_track_files_modify';
  SP.Parameters.Refresh;

  SP.Parameters.ParamByName('@files_track_id').Value   := null;
  SP.Parameters.ParamByName('@type_action').Value      := 0;
  SP.Parameters.ParamByName('@files_format_id').Value  := files_format_id;
  SP.Parameters.ParamByName('@files_name').Value       := file_name;
  SP.Parameters.ParamByName('@files_date').Value       := Now;
  SP.Parameters.ParamByName('@files_rows_count').Value := files_rows_count;
  SP.Parameters.ParamByName('@users_group_id').Value   := usr_pwd.user_group_id;

  s := TStringStream.Create('');
  Xml.SaveToStream(s);
  files_data := LZHPack(s.Bytes, s.Size);
  s1 := TStringStream.Create(files_data);

  sp.Parameters.ParamByName('@doc_image').LoadFromStream(s1,ftBlob);

  try
    sp.ExecProc;
    Application.MessageBox('Файл добавлен в загрузку. Данные будут доступны через 3 минуты.', 'Дислокация', MB_ICONINFORMATION + MB_OK);
  except on E: Exception do
  end;

  s.Free; s1.Free;
  SP.Free;
  Screen.Cursor := crDefault;
end;

procedure TfmFact.BargainInsertFromRate(str_fact_id: string; plan_rate_id: integer; set_create_bargain: boolean);
var        Client_Fact : TClientDataSet; // Список выбранных вагонов
    Client_BargainFact : TClientDataSet; // Список вагонов для одной перевозки
    Client_NumDocument : TClientDataSet; // Временный ClientDS используется для расчета кол-ва вагонов в группе
     Client_ClientRate : TClientDataSet; // Список уникальных ставок (перевозок)
       Client_FactRate : TClientDataSet; // Список вагонов + найденных ставок для каждого вагона
           Client_temp : TClientDataSet;

                      i : integer;
                  Q, Q2 : TADOQuery;
              str_error : string;
         str_bargain_id : string;
 sp_fact_plan_rate_find : TADOStoredProc;
sp_fact_plan_rate_find2 : TADOStoredProc;
              DS_result : TADODataSet;

                bargain_num : integer;
           find_date_period : TDateTime;
   find_plan_client_rate_id : integer;
     find_five_days_zfto_id : integer;
sp_bargain_insert_from_rate : TADOStoredProc;
begin
  Q := TADOQuery.Create(nil);
  Q.Connection := fmMain.Lis;
  Q.SQL.Add('SELECT * FROM view_fact WHERE fact_id in (' + str_fact_id + ')');
  Q.Open;

  Client_temp := TClientDataSet.Create(nil);

  Client_NumDocument := TClientDataSet.Create(nil);
  Client_NumDocument.FieldDefs.Add('num_document', ftString, 50);
  Client_NumDocument.FieldDefs.Add('cnt_vagon'   , ftInteger);
  Client_NumDocument.IndexDefs.Add('ClientDS_Index1', 'num_document', []);
  Client_NumDocument.IndexName := 'ClientDS_Index1';
  Client_NumDocument.CreateDataSet;
  Client_NumDocument.LogChanges := False;

  Client_FactRate := TClientDataSet.Create(nil);
  Client_FactRate.FieldDefs.Add('fact_id'            , ftInteger);
  Client_FactRate.FieldDefs.Add('bargain_num'        , ftInteger); //  Порядковый номер создаваемой перевозки (Уникальные поля date_period, plan_client_rate_id, five_days_zfto_id)
  Client_FactRate.FieldDefs.Add('date_period'        , ftDateTime);
  Client_FactRate.FieldDefs.Add('plan_client_rate_id', ftInteger);
  Client_FactRate.FieldDefs.Add('five_days_zfto_id'  , ftInteger);
  Client_FactRate.FieldDefs.Add('five_days_zfto_cod' , ftString, 200);
  Client_FactRate.FieldDefs.Add('five_days_zfto_name', ftString, 200);
  Client_FactRate.FieldDefs.Add('budget_name'        , ftString, 100);
  Client_FactRate.FieldDefs.Add('set_new_fact'       , ftBoolean); // Признак. Копировать новый вагон или привязывать к перевозки данный fact_id
  Client_FactRate.FieldDefs.Add('agent_cnt'          , ftInteger);
  Client_FactRate.CreateDataSet;
  Client_FactRate.LogChanges := False;

  Client_ClientRate := TClientDataSet.Create(nil);
  Client_ClientRate.FieldDefs.Add('bargain_num'        , ftAutoInc);
  Client_ClientRate.FieldDefs.Add('plan_client_rate_id', ftInteger);
  Client_ClientRate.FieldDefs.Add('date_period'        , ftDateTime);
  Client_ClientRate.FieldDefs.Add('five_days_zfto_id'  , ftInteger);
  Client_ClientRate.CreateDataSet;
  Client_ClientRate.LogChanges := False;

  DS_result := TADODataSet.Create(nil);
  DS_result.FieldDefs.Add('fact_id'         , ftInteger);
  DS_result.FieldDefs.Add('bargain_id'      , ftInteger);
  DS_result.FieldDefs.Add('bargain_num'     , ftInteger);
  DS_result.FieldDefs.Add('num_vagon'       , ftInteger);
  DS_result.FieldDefs.Add('num_document'    , ftString, 50);
  DS_result.FieldDefs.Add('budget_name'     , ftString, 100);
  DS_result.FieldDefs.Add('date_period'     , ftString, 50);
  DS_result.FieldDefs.Add('date_from_to'    , ftDate);
  DS_result.FieldDefs.Add('date_delivery'   , ftDate);
  DS_result.FieldDefs.Add('node_begin_id'   , ftInteger);
  DS_result.FieldDefs.Add('node_begin_cod'  , ftString, 10);
  DS_result.FieldDefs.Add('node_begin_name' , ftString, 100);
  DS_result.FieldDefs.Add('node_end_id'     , ftInteger);
  DS_result.FieldDefs.Add('node_end_cod'    , ftString, 10);
  DS_result.FieldDefs.Add('node_end_name'   , ftString, 100);
  DS_result.FieldDefs.Add('kargoETSNG_id'   , ftInteger);
  DS_result.FieldDefs.Add('kargoETSNG_cod'  , ftString, 10);
  DS_result.FieldDefs.Add('kargoETSNG_name' , ftString, 100);
  DS_result.FieldDefs.Add('kateg_send_id'   , ftInteger);        // Тип отправки
  DS_result.FieldDefs.Add('kateg_send_name' , ftString, 100);    // Тип отправки
  DS_result.FieldDefs.Add('type_park_id'    , ftInteger);        // Тип парка
  DS_result.FieldDefs.Add('type_park_name'  , ftString, 100);    // Тип парка
  DS_result.FieldDefs.Add('next_fact_weight', ftCurrency);       // Следующий рейс (вес)
  DS_result.FieldDefs.Add('cnt_vagon'       , ftInteger);        // Кол-во вагонов в накладной
  DS_result.FieldDefs.Add('distance'        , ftInteger);        // Кол-во вагонов в накладной
  DS_result.FieldDefs.Add('rod_vagon_id'    , ftInteger);        // Род вагона
  DS_result.FieldDefs.Add('rod_vagon_name'  , ftString, 100);    // Род вагона
  DS_result.FieldDefs.Add('vagon_owner_contract_id', ftInteger); // Собственник вагона
  DS_result.FieldDefs.Add('vagon_owner_contract_name', ftString, 100); // Собственник вагона
  DS_result.FieldDefs.Add('plan_client_rate_id', ftInteger);     // Найденая ставка
  DS_result.FieldDefs.Add('els_cod'         , ftString, 50);     // Код ЕЛС
  DS_result.FieldDefs.Add('transport_pay'   , ftCurrency);       // Код ЕЛС
  DS_result.FieldDefs.Add('five_days_zfto_id', ftInteger);       // Пятидневка ЦФТО
  DS_result.FieldDefs.Add('five_days_zfto_name', ftString, 100); // Пятидневка ЦФТО
  DS_result.FieldDefs.Add('set_rate'        , ftBoolean);        // Ставка найдена
  DS_result.FieldDefs.Add('str_error'       , ftString, 1000);
  DS_result.FieldDefs.Add('set_new_fact'    , ftBoolean);        // Создаем новый факт
  DS_result.FieldDefs.Add('agent_cnt'       , ftInteger);
  DS_result.FieldDefs.Add('firm_name'       , ftString, 1000);
  DS_result.CreateDataSet;

  Client_Fact := TClientDataSet.Create(nil);
  Client_Fact.FieldDefs.Add('fact_id'         , ftInteger);
  Client_Fact.FieldDefs.Add('bargain_id'      , ftInteger);
  Client_Fact.FieldDefs.Add('num_vagon'       , ftInteger);
  Client_Fact.FieldDefs.Add('num_document'    , ftString, 50);
  Client_Fact.FieldDefs.Add('budget_name'     , ftString, 100);
  Client_Fact.FieldDefs.Add('date_from_to'    , ftDate);
  Client_Fact.FieldDefs.Add('date_delivery'   , ftDate);
  Client_Fact.FieldDefs.Add('node_begin_id'   , ftInteger);
  Client_Fact.FieldDefs.Add('node_begin_cod'  , ftString, 10);
  Client_Fact.FieldDefs.Add('node_begin_name' , ftString, 100);
  Client_Fact.FieldDefs.Add('node_end_id'     , ftInteger);
  Client_Fact.FieldDefs.Add('node_end_cod'    , ftString, 10);
  Client_Fact.FieldDefs.Add('node_end_name'   , ftString, 100);
  Client_Fact.FieldDefs.Add('kargoETSNG_id'   , ftInteger);
  Client_Fact.FieldDefs.Add('kargoETSNG_cod'  , ftString, 10);
  Client_Fact.FieldDefs.Add('kargoETSNG_name' , ftString, 100);
  Client_Fact.FieldDefs.Add('kateg_send_id'   , ftInteger);        // Тип отправки
  Client_Fact.FieldDefs.Add('kateg_send_name' , ftString, 100);    // Тип отправки
  Client_Fact.FieldDefs.Add('type_park_id'    , ftInteger);        // Тип парка
  Client_Fact.FieldDefs.Add('type_park_name'  , ftString, 100);    // Тип парка
  Client_Fact.FieldDefs.Add('next_fact_weight', ftCurrency);       // Следующий рейс (вес)
  Client_Fact.FieldDefs.Add('cnt_vagon'       , ftInteger);        // Кол-во вагонов в накладной
  Client_Fact.FieldDefs.Add('distance'        , ftInteger);        // Кол-во вагонов в накладной
  Client_Fact.FieldDefs.Add('rod_vagon_id'    , ftInteger);        // Род вагона
  Client_Fact.FieldDefs.Add('rod_vagon_name'  , ftString, 100);    // Род вагона
  Client_Fact.FieldDefs.Add('vagon_owner_contract_id', ftInteger); // Собственник вагона
  Client_Fact.FieldDefs.Add('vagon_owner_contract_name', ftString, 100); // Собственник вагона
  Client_Fact.FieldDefs.Add('plan_client_rate_id', ftInteger);     // Найденая ставка
  Client_Fact.FieldDefs.Add('els_cod'         , ftString, 50);     // Код ЕЛС
  Client_Fact.FieldDefs.Add('transport_pay'   , ftCurrency);       // Код ЕЛС
  Client_Fact.FieldDefs.Add('five_days_zfto_id', ftInteger);       // Пятидневка ЦФТО
  Client_Fact.FieldDefs.Add('five_days_zfto_name', ftString, 100); // Пятидневка ЦФТО
  Client_Fact.FieldDefs.Add('set_rate'        , ftBoolean);        // Ставка найдена
  Client_Fact.FieldDefs.Add('str_error'       , ftString, 1000);
  Client_Fact.FieldDefs.Add('set_new_fact'    , ftBoolean);        // Создаем новый факт
  Client_Fact.CreateDataSet;
  Client_Fact.LogChanges := False;


  Client_BargainFact := TClientDataSet.Create(nil);
  Client_BargainFact.FieldDefs.Add('fact_id'      , ftInteger);
  Client_BargainFact.FieldDefs.Add('date_from_to' , ftDate);
  Client_BargainFact.FieldDefs.Add('date_delivery', ftDate);
  Client_BargainFact.FieldDefs.Add('type_park_id' , ftInteger);     // Тип парка
  Client_BargainFact.FieldDefs.Add('rod_vagon_id' , ftInteger);     // Род вагона
  Client_BargainFact.FieldDefs.Add('distance'     , ftInteger);     // Кол-во вагонов в накладной
  Client_BargainFact.FieldDefs.Add('vagon_owner_contract_id', ftInteger); // Собственник вагона
  Client_BargainFact.FieldDefs.Add('els_cod'      , ftString, 50);        // Код ЕЛС
  Client_BargainFact.FieldDefs.Add('transport_pay', ftCurrency);          // Сумма за вагон
  Client_BargainFact.FieldDefs.Add('set_new_fact' , ftBoolean);
  Client_BargainFact.CreateDataSet;
  Client_BargainFact.LogChanges := False;

  sp_fact_plan_rate_find := TADOStoredProc.Create(nil);
  sp_fact_plan_rate_find.Connection := fmMain.Lis;
  sp_fact_plan_rate_find.ProcedureName := 'sp_fact_plan_rate_find';

  sp_bargain_insert_from_rate := TADOStoredProc.Create(nil);
  sp_bargain_insert_from_rate.Connection := fmMain.Lis;
  sp_bargain_insert_from_rate.ProcedureName := 'sp_bargain_insert_from_rate';


  // Поиск параметров вагона
  Q.First;
  while not Q.Eof do begin
    if (Q.FieldByName('fact_weight').IsNull) or (Q.FieldByName('fact_weight').AsFloat = 0) then begin
      ShowTextMessage;
      Application.MessageBox(PChar('Выделенные вагоны содержат порожние!'), 'Ошибка', MB_ICONSTOP or MB_OK);
      sp_fact_plan_rate_find.Free;
      Client_BargainFact.Free;
      Client_ClientRate.Free;
      Client_Fact.Free;
      Client_NumDocument.Free;
      sp_bargain_insert_from_rate.Free;
      Q.Free;
      exit;
    end;

    sp_fact_plan_rate_find.Close;
    sp_fact_plan_rate_find.Parameters.Refresh;
    sp_fact_plan_rate_find.Parameters.ParamByName('@fact_id'       ).Value := Q.FieldByName('fact_id').Value;
    sp_fact_plan_rate_find.Parameters.ParamByName('@users_group_id').Value := usr_pwd.user_group_id;
    sp_fact_plan_rate_find.Parameters.ParamByName('@type_action'   ).Value := 'FIND_VAGON';
    sp_fact_plan_rate_find.ExecProc;

    Client_Fact.Append;
    Client_Fact.FieldByName('fact_id'                  ).Value := Q.FieldByName('fact_id').Value;
    Client_Fact.FieldByName('bargain_id'               ).Value := sp_fact_plan_rate_find.Parameters.ParamByName('@bargain_id').Value;
    Client_Fact.FieldByName('num_vagon'                ).Value := sp_fact_plan_rate_find.Parameters.ParamByName('@num_vagon').Value;
    Client_Fact.FieldByName('num_document'             ).Value := sp_fact_plan_rate_find.Parameters.ParamByName('@num_document').Value;
    Client_Fact.FieldByName('date_from_to'             ).Value := sp_fact_plan_rate_find.Parameters.ParamByName('@date_from_to').Value;
    Client_Fact.FieldByName('date_delivery'            ).Value := sp_fact_plan_rate_find.Parameters.ParamByName('@date_delivery').Value;
    Client_Fact.FieldByName('node_begin_id'            ).Value := sp_fact_plan_rate_find.Parameters.ParamByName('@node_begin_id').Value;
    Client_Fact.FieldByName('node_begin_cod'           ).Value := sp_fact_plan_rate_find.Parameters.ParamByName('@node_begin_cod').Value;
    Client_Fact.FieldByName('node_begin_name'          ).Value := sp_fact_plan_rate_find.Parameters.ParamByName('@node_begin_name').Value;
    Client_Fact.FieldByName('node_end_id'              ).Value := sp_fact_plan_rate_find.Parameters.ParamByName('@node_end_id').Value;
    Client_Fact.FieldByName('node_end_cod'             ).Value := sp_fact_plan_rate_find.Parameters.ParamByName('@node_end_cod').Value;
    Client_Fact.FieldByName('node_end_name'            ).Value := sp_fact_plan_rate_find.Parameters.ParamByName('@node_end_name').Value;
    Client_Fact.FieldByName('kargoETSNG_id'            ).Value := sp_fact_plan_rate_find.Parameters.ParamByName('@kargoETSNG_id').Value;
    Client_Fact.FieldByName('kargoETSNG_cod'           ).Value := sp_fact_plan_rate_find.Parameters.ParamByName('@kargoETSNG_cod').Value;
    Client_Fact.FieldByName('kargoETSNG_name'          ).Value := sp_fact_plan_rate_find.Parameters.ParamByName('@kargoETSNG_name').Value;
    Client_Fact.FieldByName('rod_vagon_id'             ).Value := sp_fact_plan_rate_find.Parameters.ParamByName('@rod_vagon_id').Value;
    Client_Fact.FieldByName('rod_vagon_name'           ).Value := sp_fact_plan_rate_find.Parameters.ParamByName('@rod_vagon_name').Value;
    Client_Fact.FieldByName('type_park_id'             ).Value := sp_fact_plan_rate_find.Parameters.ParamByName('@type_park_id').Value;
    Client_Fact.FieldByName('type_park_name'           ).Value := sp_fact_plan_rate_find.Parameters.ParamByName('@type_park_name').Value;
    Client_Fact.FieldByName('next_fact_weight'         ).Value := sp_fact_plan_rate_find.Parameters.ParamByName('@next_fact_weight').Value;
    Client_Fact.FieldByName('vagon_owner_contract_id'  ).Value := sp_fact_plan_rate_find.Parameters.ParamByName('@vagon_owner_contract_id').Value;
    Client_Fact.FieldByName('vagon_owner_contract_name').Value := sp_fact_plan_rate_find.Parameters.ParamByName('@vagon_owner_contract_name').Value;
    Client_Fact.FieldByName('els_cod'                  ).Value := sp_fact_plan_rate_find.Parameters.ParamByName('@els_cod').Value;
    Client_Fact.FieldByName('transport_pay'            ).Value := sp_fact_plan_rate_find.Parameters.ParamByName('@transport_pay').Value;
    Client_Fact.FieldByName('five_days_zfto_id'        ).Value := sp_fact_plan_rate_find.Parameters.ParamByName('@five_days_zfto_id').Value;
    Client_Fact.FieldByName('five_days_zfto_name'      ).Value := sp_fact_plan_rate_find.Parameters.ParamByName('@five_days_zfto_name').Value;
    Client_Fact.FieldByName('kateg_send_id'            ).Value := sp_fact_plan_rate_find.Parameters.ParamByName('@kateg_send_id').Value;
    Client_Fact.FieldByName('kateg_send_name'          ).Value := sp_fact_plan_rate_find.Parameters.ParamByName('@kateg_send_name').Value;

    if (sp_fact_plan_rate_find.Parameters.ParamByName('@node_begin_cod').Value <> null) and (sp_fact_plan_rate_find.Parameters.ParamByName('@node_end_cod').Value <> null) then
      Client_Fact.FieldByName('distance').Value := GetCalcDistanceDB(sp_fact_plan_rate_find.Parameters.ParamByName('@node_begin_cod').Value, sp_fact_plan_rate_find.Parameters.ParamByName('@node_end_cod').Value, fmMain.Lis, False, Date)
    else
      Client_Fact.FieldByName('distance').Value := null;
    Client_Fact.Post;

    if Client_NumDocument.Locate('num_document', sp_fact_plan_rate_find.Parameters.ParamByName('@num_document').Value, []) then begin
      Client_NumDocument.Edit;
      Client_NumDocument.FieldByName('cnt_vagon'   ).Value := Client_NumDocument.FieldByName('cnt_vagon').Value + 1;
      Client_NumDocument.Post;
    end else begin
      Client_NumDocument.Append;
      Client_NumDocument.FieldByName('num_document').Value := sp_fact_plan_rate_find.Parameters.ParamByName('@num_document').Value;
      Client_NumDocument.FieldByName('cnt_vagon'   ).Value := 1;
      Client_NumDocument.Post;
    end;

    ShowTextMessage('Подготовка вагонов. Вагонов ' + IntToStr(Q.RecNo) + ' из ' + IntToStr(Q.RecordCount) + '.', False);
    Q.Next;
  end;
  ShowTextMessage('Подготовка вагонов. Вагонов ' + IntToStr(Q.RecNo) + ' из ' + IntToStr(Q.RecordCount) + '.', False);

  // Расчет кол-ва вагонов в группе
  Client_Fact.First;
  while not Client_Fact.Eof do begin
    if Client_NumDocument.FindKey([Client_Fact.FieldByName('num_document').Value]) then begin
      Client_Fact.Edit;
      Client_Fact.FieldByName('cnt_vagon').Value := Client_NumDocument.FieldByName('cnt_vagon').Value;
      Client_Fact.Post;
    end;
    Client_Fact.Next;
  end;

  if (plan_rate_id <> -9) and (set_create_bargain = False) then begin
    // Проверка конкретной ставки
    Client_Fact.First;
    while not Client_Fact.Eof do begin
      sp_fact_plan_rate_find.Close;
      sp_fact_plan_rate_find.Parameters.Refresh;
      sp_fact_plan_rate_find.Parameters.ParamByName('@fact_id'                 ).Value := Client_Fact.FieldByName('fact_id').Value;
      sp_fact_plan_rate_find.Parameters.ParamByName('@plan_client_rate_id'     ).Value := plan_rate_id;
      sp_fact_plan_rate_find.Parameters.ParamByName('@users_group_id'          ).Value := usr_pwd.user_group_id;
      sp_fact_plan_rate_find.Parameters.ParamByName('@type_action'             ).Value := 'CHECK_RATE';
      sp_fact_plan_rate_find.Parameters.ParamByName('@num_vagon'               ).Value := Client_Fact.FieldByName('num_vagon').Value;
      sp_fact_plan_rate_find.Parameters.ParamByName('@num_document'            ).Value := Client_Fact.FieldByName('num_document').Value;
      sp_fact_plan_rate_find.Parameters.ParamByName('@date_from_to'            ).Value := Client_Fact.FieldByName('date_from_to').Value;
      sp_fact_plan_rate_find.Parameters.ParamByName('@date_delivery'           ).Value := Client_Fact.FieldByName('date_delivery').Value;
      sp_fact_plan_rate_find.Parameters.ParamByName('@node_begin_id'           ).Value := Client_Fact.FieldByName('node_begin_id').Value;
      sp_fact_plan_rate_find.Parameters.ParamByName('@node_end_id'             ).Value := Client_Fact.FieldByName('node_end_id').Value;
      sp_fact_plan_rate_find.Parameters.ParamByName('@kargoETSNG_id'           ).Value := Client_Fact.FieldByName('kargoETSNG_id').Value;
      sp_fact_plan_rate_find.Parameters.ParamByName('@rod_vagon_id'            ).Value := Client_Fact.FieldByName('rod_vagon_id').Value;
      sp_fact_plan_rate_find.Parameters.ParamByName('@next_fact_weight'        ).Value := Client_Fact.FieldByName('next_fact_weight').Value;
      sp_fact_plan_rate_find.Parameters.ParamByName('@cnt_vagon'               ).Value := Client_Fact.FieldByName('cnt_vagon').Value;
      sp_fact_plan_rate_find.Parameters.ParamByName('@els_cod'                 ).Value := Client_Fact.FieldByName('els_cod').Value;
      sp_fact_plan_rate_find.Parameters.ParamByName('@five_days_zfto_id'       ).Value := Client_Fact.FieldByName('five_days_zfto_id').Value;
      sp_fact_plan_rate_find.Parameters.ParamByName('@five_days_zfto_name'     ).Value := Client_Fact.FieldByName('five_days_zfto_name').Value;
      sp_fact_plan_rate_find.Parameters.ParamByName('@vagon_owner_contract_id' ).Value := Client_Fact.FieldByName('vagon_owner_contract_id').Value;
      sp_fact_plan_rate_find.Parameters.ParamByName('@kateg_send_id'           ).Value := Client_Fact.FieldByName('kateg_send_id').Value;
      sp_fact_plan_rate_find.Parameters.ParamByName('@kateg_send_name'         ).Value := Client_Fact.FieldByName('kateg_send_name').Value;
      sp_fact_plan_rate_find.ExecProc;

      Client_Fact.Edit;
      Client_Fact.FieldByName('plan_client_rate_id').Value := sp_fact_plan_rate_find.Parameters.ParamByName('@plan_client_rate_id').Value;
      Client_Fact.FieldByName('budget_name'        ).Value := sp_fact_plan_rate_find.Parameters.ParamByName('@budget_name').Value;
      if Client_Fact.FieldByName('plan_client_rate_id').IsNull then begin
        Client_Fact.FieldByName('set_rate' ).Value := False;
        Client_Fact.FieldByName('str_error').Value := sp_fact_plan_rate_find.Parameters.ParamByName('@str_error').Value;
      end else
        Client_Fact.FieldByName('set_rate').Value := True;

      Client_Fact.Post;

      Client_Fact.Next;

      ShowTextMessage('Поиск ставки. Вагонов ' + IntToStr(Client_Fact.RecNo) + ' из ' + IntToStr(Client_Fact.RecordCount) + '.', False);
    end;
    ShowTextMessage('Поиск ставки. Вагонов ' + IntToStr(Client_Fact.RecNo) + ' из ' + IntToStr(Client_Fact.RecordCount) + '.', False);


    ShowTextMessage;
    Client_Fact.Filter := '';
    Client_Fact.Filtered := False;
    Client_Fact.First;
    while not Client_Fact.Eof do begin
      DS_result.Append;
      DS_result.FieldByName('fact_id'                   ).Value := Client_Fact.FieldByName('fact_id').Value;
      DS_result.FieldByName('num_vagon'                 ).Value := Client_Fact.FieldByName('num_vagon').Value;
      DS_result.FieldByName('num_document'              ).Value := Client_Fact.FieldByName('num_document').Value;
      DS_result.FieldByName('date_from_to'              ).Value := Client_Fact.FieldByName('date_from_to').Value;
      DS_result.FieldByName('date_delivery'             ).Value := Client_Fact.FieldByName('date_delivery').Value;
      DS_result.FieldByName('node_begin_id'             ).Value := Client_Fact.FieldByName('node_begin_id').Value;
      DS_result.FieldByName('node_begin_cod'            ).Value := Client_Fact.FieldByName('node_begin_cod').Value;
      DS_result.FieldByName('node_begin_name'           ).Value := Client_Fact.FieldByName('node_begin_name').Value;
      DS_result.FieldByName('node_end_id'               ).Value := Client_Fact.FieldByName('node_end_id').Value;
      DS_result.FieldByName('node_end_cod'              ).Value := Client_Fact.FieldByName('node_end_cod').Value;
      DS_result.FieldByName('node_end_name'             ).Value := Client_Fact.FieldByName('node_end_name').Value;
      DS_result.FieldByName('kargoETSNG_id'             ).Value := Client_Fact.FieldByName('kargoETSNG_id').Value;
      DS_result.FieldByName('kargoETSNG_cod'            ).Value := Client_Fact.FieldByName('kargoETSNG_cod').Value;
      DS_result.FieldByName('kargoETSNG_name'           ).Value := Client_Fact.FieldByName('kargoETSNG_name').Value;
      DS_result.FieldByName('type_park_id'              ).Value := Client_Fact.FieldByName('type_park_id').Value;
      DS_result.FieldByName('type_park_name'            ).Value := Client_Fact.FieldByName('type_park_name').Value;
      DS_result.FieldByName('next_fact_weight'          ).Value := Client_Fact.FieldByName('next_fact_weight').Value;
      DS_result.FieldByName('cnt_vagon'                 ).Value := Client_Fact.FieldByName('cnt_vagon').Value;
      DS_result.FieldByName('distance'                  ).Value := Client_Fact.FieldByName('distance').Value;
      DS_result.FieldByName('rod_vagon_id'              ).Value := Client_Fact.FieldByName('rod_vagon_id').Value;
      DS_result.FieldByName('rod_vagon_name'            ).Value := Client_Fact.FieldByName('rod_vagon_name').Value;
      DS_result.FieldByName('vagon_owner_contract_id'   ).Value := Client_Fact.FieldByName('vagon_owner_contract_id').Value;
      DS_result.FieldByName('vagon_owner_contract_name' ).Value := Client_Fact.FieldByName('vagon_owner_contract_name').Value;
      DS_result.FieldByName('plan_client_rate_id'       ).Value := Client_Fact.FieldByName('plan_client_rate_id').Value;
      DS_result.FieldByName('els_cod'                   ).Value := Client_Fact.FieldByName('els_cod').Value;
      DS_result.FieldByName('transport_pay'             ).Value := Client_Fact.FieldByName('transport_pay').Value;
      DS_result.FieldByName('five_days_zfto_id'         ).Value := Client_Fact.FieldByName('five_days_zfto_id').Value;
      DS_result.FieldByName('five_days_zfto_name'       ).Value := Client_Fact.FieldByName('five_days_zfto_name').Value;
      DS_result.FieldByName('set_rate'                  ).Value := Client_Fact.FieldByName('set_rate').Value;
      DS_result.FieldByName('str_error'                 ).Value := Client_Fact.FieldByName('str_error').Value;
      DS_result.FieldByName('budget_name'               ).Value := Client_Fact.FieldByName('budget_name').Value;
      DS_result.FieldByName('kateg_send_id'             ).Value := Client_Fact.FieldByName('kateg_send_id').Value;
      DS_result.FieldByName('kateg_send_name'           ).Value := Client_Fact.FieldByName('kateg_send_name').Value;
      DS_result.Post;
      Client_Fact.Next;
    end;

    ShowTextMessage();

    fmFilter := TfmFilter.Create(0, DS_result, 'fact_id', 'num_vagon', 'num_vagon');
    fmFilter._SetFactRateCheck := True;
    fmFilter.ShowModal;

    Q.Free;
    DS_result.Free;
    sp_fact_plan_rate_find.Free;
    Client_BargainFact.Free;
    Client_ClientRate.Free;
    Client_Fact.Free;
    Client_NumDocument.Free;
    sp_bargain_insert_from_rate.Free;
    Exit;


  end else begin
    // Поиск ставок
    Client_Fact.First;
    while not Client_Fact.Eof do begin
      sp_fact_plan_rate_find2 := TADOStoredProc.Create(nil);
      sp_fact_plan_rate_find2.Connection := fmMain.Lis;
      sp_fact_plan_rate_find2.ProcedureName := 'sp_fact_plan_rate_find';
      sp_fact_plan_rate_find2.Parameters.Refresh;
      sp_fact_plan_rate_find2.Parameters.ParamByName('@fact_id'                 ).Value := Client_Fact.FieldByName('fact_id').Value;
      sp_fact_plan_rate_find2.Parameters.ParamByName('@users_group_id'          ).Value := usr_pwd.user_group_id;
      sp_fact_plan_rate_find2.Parameters.ParamByName('@type_action'             ).Value := 'FIND_RATE';
      sp_fact_plan_rate_find2.Parameters.ParamByName('@num_vagon'               ).Value := Client_Fact.FieldByName('num_vagon').Value;
      sp_fact_plan_rate_find2.Parameters.ParamByName('@num_document'            ).Value := Client_Fact.FieldByName('num_document').Value;
      sp_fact_plan_rate_find2.Parameters.ParamByName('@date_from_to'            ).Value := Client_Fact.FieldByName('date_from_to').Value;
      sp_fact_plan_rate_find2.Parameters.ParamByName('@date_delivery'           ).Value := Client_Fact.FieldByName('date_delivery').Value;
      sp_fact_plan_rate_find2.Parameters.ParamByName('@node_begin_id'           ).Value := Client_Fact.FieldByName('node_begin_id').Value;
      sp_fact_plan_rate_find2.Parameters.ParamByName('@node_end_id'             ).Value := Client_Fact.FieldByName('node_end_id').Value;
      sp_fact_plan_rate_find2.Parameters.ParamByName('@rod_vagon_id'            ).Value := Client_Fact.FieldByName('rod_vagon_id').Value;
      sp_fact_plan_rate_find2.Parameters.ParamByName('@type_park_id'            ).Value := Client_Fact.FieldByName('type_park_id').Value;
      sp_fact_plan_rate_find2.Parameters.ParamByName('@kargoETSNG_id'           ).Value := Client_Fact.FieldByName('kargoETSNG_id').Value;
      sp_fact_plan_rate_find2.Parameters.ParamByName('@rod_vagon_id'            ).Value := Client_Fact.FieldByName('rod_vagon_id').Value;
      sp_fact_plan_rate_find2.Parameters.ParamByName('@next_fact_weight'        ).Value := Client_Fact.FieldByName('next_fact_weight').Value;
      sp_fact_plan_rate_find2.Parameters.ParamByName('@cnt_vagon'               ).Value := Client_Fact.FieldByName('cnt_vagon').Value;
      sp_fact_plan_rate_find2.Parameters.ParamByName('@els_cod'                 ).Value := Client_Fact.FieldByName('els_cod').Value;
      sp_fact_plan_rate_find2.Parameters.ParamByName('@five_days_zfto_id'       ).Value := Client_Fact.FieldByName('five_days_zfto_id').Value;
      sp_fact_plan_rate_find2.Parameters.ParamByName('@five_days_zfto_name'     ).Value := Client_Fact.FieldByName('five_days_zfto_name').Value;
      sp_fact_plan_rate_find2.Parameters.ParamByName('@vagon_owner_contract_id' ).Value := Client_Fact.FieldByName('vagon_owner_contract_id').Value;
      sp_fact_plan_rate_find2.Parameters.ParamByName('@kateg_send_id'           ).Value := Client_Fact.FieldByName('kateg_send_id').Value;
      sp_fact_plan_rate_find2.Parameters.ParamByName('@kateg_send_name'         ).Value := Client_Fact.FieldByName('kateg_send_name').Value;
      if plan_rate_id <> -9 then sp_fact_plan_rate_find2.Parameters.ParamByName('@plan_client_rate_id').Value := plan_rate_id;
      sp_fact_plan_rate_find2.Open;

      sp_fact_plan_rate_find2.First;
      while not sp_fact_plan_rate_find2.Eof do begin
        find_date_period         := sp_fact_plan_rate_find2.FieldByName('date_period').AsDateTime;
        find_plan_client_rate_id := sp_fact_plan_rate_find2.FieldByName('plan_client_rate_id').AsInteger;
        find_five_days_zfto_id   := iif(sp_fact_plan_rate_find2.FieldByName('five_days_zfto_id').IsNull, -9, sp_fact_plan_rate_find2.FieldByName('five_days_zfto_id').AsInteger);

        if (plan_rate_id = -9) or (plan_rate_id = find_plan_client_rate_id) then begin
          if not Client_ClientRate.Locate('date_period;plan_client_rate_id;five_days_zfto_id', VarArrayOf([find_date_period, find_plan_client_rate_id, find_five_days_zfto_id]), []) then begin
            Client_ClientRate.Append;
            Client_ClientRate.FieldByName('date_period'        ).Value := find_date_period;
            Client_ClientRate.FieldByName('plan_client_rate_id').Value := find_plan_client_rate_id;
            Client_ClientRate.FieldByName('five_days_zfto_id'  ).Value := find_five_days_zfto_id;
            Client_ClientRate.Post;
            bargain_num := Client_ClientRate.FieldByName('bargain_num').Value;
          end else begin
            bargain_num := Client_ClientRate.FieldByName('bargain_num').Value;
          end;

          Client_FactRate.Append;
          Client_FactRate.FieldByName('fact_id'            ).Value := sp_fact_plan_rate_find2.FieldByName('fact_id').Value;
          Client_FactRate.FieldByName('date_period'        ).Value := sp_fact_plan_rate_find2.FieldByName('date_period').Value;
          Client_FactRate.FieldByName('plan_client_rate_id').Value := sp_fact_plan_rate_find2.FieldByName('plan_client_rate_id').Value;
          Client_FactRate.FieldByName('five_days_zfto_id'  ).Value := sp_fact_plan_rate_find2.FieldByName('five_days_zfto_id').Value;
          Client_FactRate.FieldByName('five_days_zfto_cod' ).Value := sp_fact_plan_rate_find2.FieldByName('five_days_zfto_cod').Value;
          Client_FactRate.FieldByName('five_days_zfto_name').Value := sp_fact_plan_rate_find2.FieldByName('five_days_zfto_name').Value;
          Client_FactRate.FieldByName('bargain_num'        ).Value := bargain_num;
          Client_FactRate.FieldByName('budget_name'        ).Value := sp_fact_plan_rate_find2.FieldByName('budget_name').Value;
          Client_FactRate.FieldByName('agent_cnt'          ).Value := sp_fact_plan_rate_find2.FieldByName('agent_cnt').Value;
          Client_FactRate.Post;

          Client_Fact.Locate('fact_id', sp_fact_plan_rate_find2.FieldByName('fact_id').Value, []);
          Client_Fact.Edit;
          Client_Fact.FieldByName('set_rate').Value := True;
          Client_Fact.Post;
        end;


        sp_fact_plan_rate_find2.Next;
      end;

      sp_fact_plan_rate_find2.Free;
      Client_Fact.Next;
      ShowTextMessage('Поиск ставки. Вагонов ' + IntToStr(Client_Fact.RecNo) + ' из ' + IntToStr(Client_Fact.RecordCount) + '.', False);
    end;
    ShowTextMessage('Поиск ставки. Вагонов ' + IntToStr(Client_Fact.RecNo) + ' из ' + IntToStr(Client_Fact.RecordCount) + '.', False);


    Client_temp.Data := Client_FactRate.Data;

    Client_temp.First;
    while not Client_temp.Eof do begin

      Client_FactRate.Filter   := 'fact_id=' + IntToStr(Client_temp.FieldByName('fact_id').AsInteger) + ' and set_new_fact=null';
      Client_FactRate.Filtered := True;

      Client_FactRate.First;

      Client_Fact.Locate('fact_id', Client_temp.FieldByName('fact_id').AsInteger, []);

      Client_FactRate.Edit;
      if Client_Fact.FieldByName('bargain_id').IsNull then
        Client_FactRate.FieldByName('set_new_fact').Value := False
      else
        Client_FactRate.FieldByName('set_new_fact').Value := True;
      Client_FactRate.Post;

      Client_FactRate.Next;
      while not Client_FactRate.Eof do begin

        Client_FactRate.Edit;
        Client_FactRate.FieldByName('set_new_fact').Value := True;
        Client_FactRate.Post;

        Client_FactRate.Next;
      end;

      Client_temp.Next;
    end;


    Client_FactRate.Filter   := '';
    Client_FactRate.Filtered := False;

//    ClientDSView(Client_FactRate);
//    ClientDSView(Client_Fact);
//    Exit;

    ShowTextMessage;
    Client_Fact.Filter := '';
    Client_Fact.Filtered := False;
    Client_Fact.First;
    while not Client_Fact.Eof do begin
      Client_FactRate.Filter   := 'fact_id=' + Client_Fact.FieldByName('fact_id').AsString;
      Client_FactRate.Filtered := True;
      if Client_FactRate.RecordCount > 0 then begin

        Client_FactRate.First;
        while not Client_FactRate.Eof do begin

          DS_result.Append;
          DS_result.FieldByName('fact_id'                   ).Value := Client_Fact.FieldByName('fact_id').Value;
          DS_result.FieldByName('num_vagon'                 ).Value := Client_Fact.FieldByName('num_vagon').Value;
          DS_result.FieldByName('num_document'              ).Value := Client_Fact.FieldByName('num_document').Value;
          DS_result.FieldByName('date_from_to'              ).Value := Client_Fact.FieldByName('date_from_to').Value;
          DS_result.FieldByName('date_delivery'             ).Value := Client_Fact.FieldByName('date_delivery').Value;
          DS_result.FieldByName('node_begin_id'             ).Value := Client_Fact.FieldByName('node_begin_id').Value;
          DS_result.FieldByName('node_begin_cod'            ).Value := Client_Fact.FieldByName('node_begin_cod').Value;
          DS_result.FieldByName('node_begin_name'           ).Value := Client_Fact.FieldByName('node_begin_name').Value;
          DS_result.FieldByName('node_end_id'               ).Value := Client_Fact.FieldByName('node_end_id').Value;
          DS_result.FieldByName('node_end_cod'              ).Value := Client_Fact.FieldByName('node_end_cod').Value;
          DS_result.FieldByName('node_end_name'             ).Value := Client_Fact.FieldByName('node_end_name').Value;
          DS_result.FieldByName('kargoETSNG_id'             ).Value := Client_Fact.FieldByName('kargoETSNG_id').Value;
          DS_result.FieldByName('kargoETSNG_cod'            ).Value := Client_Fact.FieldByName('kargoETSNG_cod').Value;
          DS_result.FieldByName('kargoETSNG_name'           ).Value := Client_Fact.FieldByName('kargoETSNG_name').Value;
          DS_result.FieldByName('type_park_id'              ).Value := Client_Fact.FieldByName('type_park_id').Value;
          DS_result.FieldByName('type_park_name'            ).Value := Client_Fact.FieldByName('type_park_name').Value;
          DS_result.FieldByName('next_fact_weight'          ).Value := Client_Fact.FieldByName('next_fact_weight').Value;
          DS_result.FieldByName('cnt_vagon'                 ).Value := Client_Fact.FieldByName('cnt_vagon').Value;
          DS_result.FieldByName('distance'                  ).Value := Client_Fact.FieldByName('distance').Value;
          DS_result.FieldByName('rod_vagon_id'              ).Value := Client_Fact.FieldByName('rod_vagon_id').Value;
          DS_result.FieldByName('rod_vagon_name'            ).Value := Client_Fact.FieldByName('rod_vagon_name').Value;
          DS_result.FieldByName('vagon_owner_contract_id'   ).Value := Client_Fact.FieldByName('vagon_owner_contract_id').Value;
          DS_result.FieldByName('vagon_owner_contract_name' ).Value := Client_Fact.FieldByName('vagon_owner_contract_name').Value;
          DS_result.FieldByName('els_cod'                   ).Value := Client_Fact.FieldByName('els_cod').Value;
          DS_result.FieldByName('transport_pay'             ).Value := Client_Fact.FieldByName('transport_pay').Value;
          DS_result.FieldByName('set_rate'                  ).Value := iif(Client_Fact.FieldByName('set_rate').IsNull, False, Client_Fact.FieldByName('set_rate').Value);
          DS_result.FieldByName('kateg_send_id'             ).Value := Client_Fact.FieldByName('kateg_send_id').Value;
          DS_result.FieldByName('kateg_send_name'           ).Value := Client_Fact.FieldByName('kateg_send_name').Value;

          Q2 := TADOQuery.Create(nil);
          Q2.Connection := fmMain.Lis;
          Q2.SQL.Add('SELECT firm_customer_name FROM view_plan_client_rate_rights WHERE plan_client_rate_id = ' + Client_FactRate.FieldByName('plan_client_rate_id').AsString);
          Q2.Open;
          DS_result.FieldByName('firm_name'                 ).Value := Q2.FieldByName('firm_customer_name').Value;
          Q2.Free;

          DS_result.FieldByName('plan_client_rate_id'       ).Value := Client_FactRate.FieldByName('plan_client_rate_id').Value;
          DS_result.FieldByName('five_days_zfto_id'         ).Value := Client_FactRate.FieldByName('five_days_zfto_id').Value;
          DS_result.FieldByName('five_days_zfto_name'       ).Value := Client_FactRate.FieldByName('five_days_zfto_name').Value;
          DS_result.FieldByName('set_new_fact'              ).Value := Client_FactRate.FieldByName('set_new_fact').Value;
          DS_result.FieldByName('bargain_num'               ).Value := Client_FactRate.FieldByName('bargain_num').Value;
          DS_result.FieldByName('budget_name'               ).Value := Client_FactRate.FieldByName('budget_name').Value;
          DS_result.FieldByName('date_period'               ).Value := FormatDateTime('mmmm yyyy', Client_FactRate.FieldByName('date_period').AsDateTime);
          DS_result.FieldByName('agent_cnt'                 ).Value := Client_FactRate.FieldByName('agent_cnt').Value;
          DS_result.Post;

          Client_FactRate.Next;
        end;
      end else begin
        DS_result.Append;
        DS_result.FieldByName('fact_id'                   ).Value := Client_Fact.FieldByName('fact_id').Value;
        DS_result.FieldByName('num_vagon'                 ).Value := Client_Fact.FieldByName('num_vagon').Value;
        DS_result.FieldByName('num_document'              ).Value := Client_Fact.FieldByName('num_document').Value;
        DS_result.FieldByName('date_from_to'              ).Value := Client_Fact.FieldByName('date_from_to').Value;
        DS_result.FieldByName('date_delivery'             ).Value := Client_Fact.FieldByName('date_delivery').Value;
        DS_result.FieldByName('node_begin_id'             ).Value := Client_Fact.FieldByName('node_begin_id').Value;
        DS_result.FieldByName('node_begin_cod'            ).Value := Client_Fact.FieldByName('node_begin_cod').Value;
        DS_result.FieldByName('node_begin_name'           ).Value := Client_Fact.FieldByName('node_begin_name').Value;
        DS_result.FieldByName('node_end_id'               ).Value := Client_Fact.FieldByName('node_end_id').Value;
        DS_result.FieldByName('node_end_cod'              ).Value := Client_Fact.FieldByName('node_end_cod').Value;
        DS_result.FieldByName('node_end_name'             ).Value := Client_Fact.FieldByName('node_end_name').Value;
        DS_result.FieldByName('kargoETSNG_id'             ).Value := Client_Fact.FieldByName('kargoETSNG_id').Value;
        DS_result.FieldByName('kargoETSNG_cod'            ).Value := Client_Fact.FieldByName('kargoETSNG_cod').Value;
        DS_result.FieldByName('kargoETSNG_name'           ).Value := Client_Fact.FieldByName('kargoETSNG_name').Value;
        DS_result.FieldByName('type_park_id'              ).Value := Client_Fact.FieldByName('type_park_id').Value;
        DS_result.FieldByName('type_park_name'            ).Value := Client_Fact.FieldByName('type_park_name').Value;
        DS_result.FieldByName('next_fact_weight'          ).Value := Client_Fact.FieldByName('next_fact_weight').Value;
        DS_result.FieldByName('cnt_vagon'                 ).Value := Client_Fact.FieldByName('cnt_vagon').Value;
        DS_result.FieldByName('distance'                  ).Value := Client_Fact.FieldByName('distance').Value;
        DS_result.FieldByName('rod_vagon_id'              ).Value := Client_Fact.FieldByName('rod_vagon_id').Value;
        DS_result.FieldByName('rod_vagon_name'            ).Value := Client_Fact.FieldByName('rod_vagon_name').Value;
        DS_result.FieldByName('vagon_owner_contract_id'   ).Value := Client_Fact.FieldByName('vagon_owner_contract_id').Value;
        DS_result.FieldByName('vagon_owner_contract_name' ).Value := Client_Fact.FieldByName('vagon_owner_contract_name').Value;
        DS_result.FieldByName('els_cod'                   ).Value := Client_Fact.FieldByName('els_cod').Value;
        DS_result.FieldByName('transport_pay'             ).Value := Client_Fact.FieldByName('transport_pay').Value;
        DS_result.FieldByName('set_rate'                  ).Value := iif(Client_Fact.FieldByName('set_rate').IsNull, False, Client_Fact.FieldByName('set_rate').Value);
        DS_result.FieldByName('kateg_send_id'             ).Value := Client_Fact.FieldByName('kateg_send_id').Value;
        DS_result.FieldByName('kateg_send_name'           ).Value := Client_Fact.FieldByName('kateg_send_name').Value;

        DS_result.FieldByName('budget_name'               ).Value := null;
        DS_result.FieldByName('plan_client_rate_id'       ).Value := null;
        DS_result.FieldByName('five_days_zfto_id'         ).Value := null;
        DS_result.FieldByName('five_days_zfto_name'       ).Value := null;
        DS_result.FieldByName('set_new_fact'              ).Value := False;
        DS_result.FieldByName('bargain_num'               ).Value := null;
        DS_result.FieldByName('date_period'               ).Value := null;
        DS_result.FieldByName('agent_cnt'                 ).Value := null;
        DS_result.Post;
      end;

      Client_Fact.Next;
    end;

    Client_FactRate.Filter   := '';
    Client_FactRate.Filtered := False;
    ShowTextMessage();

    fmFilter := TfmFilter.Create(0, DS_result, 'fact_id', 'num_vagon', 'num_vagon');
    fmFilter._SetFactRateFind := True;
    if fmFilter.ShowModal <> mrOk then begin
      ShowTextMessage();
      Q.Free;
      DS_result.Free;
      sp_fact_plan_rate_find.Free;
      Client_BargainFact.Free;
      Client_ClientRate.Free;
      Client_Fact.Free;
      Client_NumDocument.Free;
      sp_bargain_insert_from_rate.Free;
      Exit;
    end;

    if set_create_bargain = False then begin
      ShowTextMessage();
      Q.Free;
      DS_result.Free;
      sp_fact_plan_rate_find.Free;
      Client_BargainFact.Free;
      Client_ClientRate.Free;
      Client_Fact.Free;
      Client_NumDocument.Free;
      sp_bargain_insert_from_rate.Free;
      Exit;
    end;


    Client_Fact.Filter   := '';
    Client_Fact.Filtered := False;

    // Формирование перевозок
    str_bargain_id := '';
    Client_ClientRate.First;
    while not Client_ClientRate.Eof do begin
      ShowTextMessage('Создание перевозок. Перевозка ' + IntToStr(Client_ClientRate.RecNo) + ' из ' + IntToStr(Client_ClientRate.RecordCount) + '.', False);

      Client_BargainFact.EmptyDataSet;
      Client_FactRate.Filter := 'bargain_num=' + IntToStr(Client_ClientRate.FieldByName('bargain_num').AsInteger);
      Client_FactRate.Filtered := True;
      Client_FactRate.First;

      while not Client_FactRate.Eof do begin

        Client_BargainFact.Append;
        Client_BargainFact.FieldByName('fact_id'      ).Value := Client_FactRate.FieldByName('fact_id').Value;
        Client_BargainFact.FieldByName('set_new_fact' ).Value := Client_FactRate.FieldByName('set_new_fact').Value;

        Client_Fact.Locate('fact_id', Client_FactRate.FieldByName('fact_id').Value, []);
        Client_BargainFact.FieldByName('date_from_to' ).Value := Client_Fact.FieldByName('date_from_to').Value;
        Client_BargainFact.FieldByName('date_delivery').Value := Client_Fact.FieldByName('date_delivery').Value;
        Client_BargainFact.FieldByName('type_park_id' ).Value := Client_Fact.FieldByName('type_park_id').Value;
        Client_BargainFact.FieldByName('rod_vagon_id' ).Value := Client_Fact.FieldByName('rod_vagon_id').Value;
        Client_BargainFact.FieldByName('distance'     ).Value := Client_Fact.FieldByName('distance').Value;
        Client_BargainFact.FieldByName('vagon_owner_contract_id').Value := Client_Fact.FieldByName('vagon_owner_contract_id').Value;
        Client_BargainFact.FieldByName('els_cod'      ).Value := Client_Fact.FieldByName('els_cod').Value;
        Client_BargainFact.FieldByName('transport_pay').Value := Client_Fact.FieldByName('transport_pay').Value;

        Client_BargainFact.Post;

        Client_FactRate.Next;
      end;

      //ShowMessage(IntToStr(Client_ClientRate.FieldByName('plan_client_rate_id').AsInteger) + #10 + DataXMLToSQL(Client_BargainFact));

      sp_bargain_insert_from_rate.Close;
      sp_bargain_insert_from_rate.Parameters.Refresh;
      sp_bargain_insert_from_rate.Parameters.ParamByName('@plan_client_rate_id').Value := Client_ClientRate.FieldByName('plan_client_rate_id').AsInteger;
      sp_bargain_insert_from_rate.Parameters.ParamByName('@five_days_zfto_id'  ).Value := iif(Client_ClientRate.FieldByName('five_days_zfto_id').AsInteger = -9, null, Client_ClientRate.FieldByName('five_days_zfto_id').Value);
      sp_bargain_insert_from_rate.Parameters.ParamByName('@fact_xml'           ).Value := DataXMLToSQL(Client_BargainFact);
      sp_bargain_insert_from_rate.ExecProc;

      //ShowMessage(VarToStr(sp_bargain_insert_from_rate.Parameters.ParamByName('@bargain_id').Value) + #10 + IntToStr(Client_ClientRate.FieldByName('plan_client_rate_id').AsInteger) + #10 + DataXMLToSQL(Client_BargainFact));

      if str_bargain_id = '' then
        str_bargain_id := str_bargain_id + VarToStr(sp_bargain_insert_from_rate.Parameters.ParamByName('@bargain_id').Value)
      else
       str_bargain_id := str_bargain_id + ',' + VarToStr(sp_bargain_insert_from_rate.Parameters.ParamByName('@bargain_id').Value);

      Client_ClientRate.Next;
    end;
    ShowTextMessage('Создание перевозок. Перевозка ' + IntToStr(Client_ClientRate.RecNo) + ' из ' + IntToStr(Client_ClientRate.RecordCount) + '.', False);
    ShowTextMessage;



    if Application.MessageBox(PChar('Созданы перевозки №№' + str_bargain_id + '.'+#13+#10 + 'Перейти в перевозки?'), 'Внимание!', MB_ICONQUESTION or MB_YESNO or MB_DEFBUTTON2) = ID_YES then begin
      if str_bargain_id <> '' then begin
        fmAgree2 := TfmAgree2.Create(Application, False);
        fmAgree2._LocateStrBargainID := str_bargain_id;
      end;
    end;

    sp_fact_plan_rate_find.Free;
    Client_BargainFact.Free;
    Client_ClientRate.Free;
    Client_Fact.Free;
    Client_NumDocument.Free;
    sp_bargain_insert_from_rate.Free;
    Q.Free;
    DS_result.Free;
    Client_FactRate.Free;
    ShowTextMessage;
  end;
end;

procedure TfmFact.dxBarButton27Click(Sender: TObject);
var           i : integer;
    str_fact_id : string;
begin
  str_fact_id := '';
  for i:=0 to cxGrid1DBBandedTableView1.Controller.SelectedRecordCount - 1 do
    str_fact_id := str_fact_id + ', ' + IntToStr(cxGrid1DBBandedTableView1.Controller.SelectedRows[i].Values[cxGrid1DBBandedTableView1fact_id.Index]);
  Delete(str_fact_id, 1, 2);

  BargainInsertFromRate(str_fact_id, -9, True);

  RefreshQueryGrid(cxGrid1DBBandedTableView1, 'fact_id');
end;

procedure TfmFact.dxBarButton29Click(Sender: TObject);
var           i : integer;
    str_fact_id : string;
begin
  str_fact_id := '';
  for i:=0 to cxGrid1DBBandedTableView1.Controller.SelectedRecordCount - 1 do
    str_fact_id := str_fact_id + ', ' + IntToStr(cxGrid1DBBandedTableView1.Controller.SelectedRows[i].Values[cxGrid1DBBandedTableView1fact_id.Index]);
  Delete(str_fact_id, 1, 2);

  fmPlanClient := TfmPlanClient.Create(Application, True, 1);
  if fmPlanClient.ShowModal = mrOk then begin
    BargainInsertFromRate(str_fact_id, fmPlanClient._GetPlanClientRateId, True);
    RefreshQueryGrid(cxGrid1DBBandedTableView1, 'fact_id');
  end;
end;

procedure TfmFact.dxBarButton30Click(Sender: TObject);
var           i : integer;
    str_fact_id : string;
begin
  str_fact_id := '';
  for i:=0 to cxGrid1DBBandedTableView1.Controller.SelectedRecordCount - 1 do
    str_fact_id := str_fact_id + ', ' + IntToStr(cxGrid1DBBandedTableView1.Controller.SelectedRows[i].Values[cxGrid1DBBandedTableView1fact_id.Index]);
  Delete(str_fact_id, 1, 2);

  BargainInsertFromRate(str_fact_id, -9, False);

  RefreshQueryGrid(cxGrid1DBBandedTableView1, 'fact_id');
end;

procedure TfmFact.dxBarButton31Click(Sender: TObject);
var           i : integer;
    str_fact_id : string;
begin
  str_fact_id := '';
  for i:=0 to cxGrid1DBBandedTableView1.Controller.SelectedRecordCount - 1 do
    str_fact_id := str_fact_id + ', ' + IntToStr(cxGrid1DBBandedTableView1.Controller.SelectedRows[i].Values[cxGrid1DBBandedTableView1fact_id.Index]);
  Delete(str_fact_id, 1, 2);

  fmPlanClient := TfmPlanClient.Create(Application, True, 1);
  if fmPlanClient.ShowModal = mrOk then begin
    BargainInsertFromRate(str_fact_id, fmPlanClient._GetPlanClientRateId, False);
  end;

end;

procedure TfmFact.dxBarButton40Click(Sender: TObject);
var                 Q : TADOQuery;
                    d : TDateTime;
           array_data : Variant;
           row_insert : integer;
        str_spec_mark : string;
       Fdate1, Fdate2 : TDateTime;
  exApp, exWkb, exWks : OleVariant;
  range, cell1, cell2 : Variant;
begin
   str_spec_mark := '';
  //получаем период выборки
  fmPeriod := TfmPeriod.Create(Application, IncMonth(Date, -1), Date, 1);
  if fmPeriod.ShowModal = mrOK then begin
    Screen.Cursor := crHourglass;
    Fdate1 := fmPeriod._GetDateBegin;
    Fdate2 := fmPeriod._GetDateEnd;
    Screen.Cursor := crDefault;
  end else Exit;

  //получаем спец отметки
  Screen.Cursor := crHourglass;
  Q := TADOQuery.Create(nil);
//  Q.ConnectionString := 'Persist Security Info = True;Provider = SQLOLEDB.1; User ID = admin_sfh; Password = cjnhfkjubcnbrf; Initial Catalog = Lis_Etran; Data Source = srv-lis2;';
  Q.ConnectionString := fmMain.Lis.ConnectionString; //'Persist Security Info = True;Provider = SQLOLEDB.1; User ID = admin_depo; Password = cjnhfkjubcnbrf; Initial Catalog = depo; Data Source = 172.16.30.205;';
  Q.CommandTimeout := 200;
  Q.SQL.Text := 'SELECT inf_obj_id, etran_nsi_id, inf_obj_name FROM [lis_Etran].[dbo].[etran_nsi_inf_obj] ' +
    'WHERE type_inf_id = 24 and inf_obj_cod in (''1'',''4'',''5'') ORDER BY inf_obj_name';
  Q.Open;

  fmFilter := TfmFilter.Create(0, Q, 'inf_obj_id', 'etran_nsi_id', 'inf_obj_name');
  fmFilter._SetETRANSpecMark := True;
  if fmFilter.ShowModal = mrOk then
    str_spec_mark := fmFilter._GetStrCod
  else begin
    Q.Free;
    Exit;
  end;

  d := Now;

  Query.Close;
  Query.ConnectionString := fmMain.Lis.ConnectionString;  //'Persist Security Info = True;Provider = SQLOLEDB.1; User ID = admin_depo; Password = cjnhfkjubcnbrf; Initial Catalog = depo; Data Source = 172.16.30.205;';
  Query.Parameters.ParamByName('Fdate1').Value        := Fdate1;
  Query.Parameters.ParamByName('Fdate2').Value        := Fdate2;
  Query.Parameters.ParamByName('str_spec_mark').Value := str_spec_mark;
  Query.Open;
  Query.First;

  exApp := CreateOleObject('Excel.Application');
  exApp.Workbooks.Add(GetDocBlob(fmMain.Lis, 123));
  exWks := exApp.ActiveWorkbook.WorkSheets[1];

  row_insert := 1;
  array_data := VarArrayCreate([1, Query.RecordCount, 0, 36], varVariant);

  while not Query.Eof do begin

    array_data[row_insert,  0] := Query.FieldByName('num_vagon'               ).Value;
    array_data[row_insert,  1] := Query.FieldByName('num_document_pref'       ).Value;
    array_data[row_insert,  2] := Query.FieldByName('num_document'            ).Value;
    array_data[row_insert,  3] := Query.FieldByName('date_from_to'            ).Value;
    array_data[row_insert,  4] := Query.FieldByName('bargain_cod'             ).Value;
    array_data[row_insert,  5] := Query.FieldByName('firm_customer_name'      ).Value;
    array_data[row_insert,  6] := Query.FieldByName('node_begin_name'         ).Value;
    array_data[row_insert,  7] := Query.FieldByName('node_end_name'           ).Value;
		array_data[row_insert,  8] := Query.FieldByName('kargoETSNG_name'         ).Value;
    array_data[row_insert,  9] := Query.FieldByName('firm_info_name'          ).Value;
    array_data[row_insert, 10] := Query.FieldByName('fact_users_comment'      ).Value;
    array_data[row_insert, 11] := Query.FieldByName('etran_folder'            ).Value;
    array_data[row_insert, 12] := Query.FieldByName('date_delivery'           ).Value;
    array_data[row_insert, 13] := Query.FieldByName('payer_cod'               ).Value;
    array_data[row_insert, 14] := Query.FieldByName('claim_num'               ).Value;
    array_data[row_insert, 15] := Query.FieldByName('date_period_finance_name').Value;
    array_data[row_insert, 16] := Query.FieldByName('comment6_client_name'    ).Value;
    array_data[row_insert, 17] := Query.FieldByName('comment6_agent_name'     ).Value;
    array_data[row_insert, 18] := Query.FieldByName('type_park_name'          ).Value;
    array_data[row_insert, 19] := Query.FieldByName('rod_vagon_name'          ).Value;
    array_data[row_insert, 20] := Query.FieldByName('spcTranspClauseDesc'     ).Value;
    array_data[row_insert, 21] := Query.FieldByName('spcTranspClauseID'       ).Value;

    array_data[row_insert, 22] := Query.FieldByName('prev_date_otpr'       ).Value;//            Пред.рейс: Дата отпр.
    array_data[row_insert, 23] := Query.FieldByName('prev_date_arrival'    ).Value;//            Пред.рейс: Дата приб.
    array_data[row_insert, 24] := Query.FieldByName('prev_node_begin_name' ).Value;//            Пред.рейс: Ст.Отпр
    array_data[row_insert, 25] := Query.FieldByName('prev_node_end_name'   ).Value;//            Пред.рейс: Ст.Назн
    array_data[row_insert, 26] := Query.FieldByName('prev_kargo_ETSNG_name').Value;//            Пред.рейс: Груз
    array_data[row_insert, 27] := Query.FieldByName('prev_firm_client_name').Value;//            Пред.рейс: Клиент

    array_data[row_insert, 28] := Query.FieldByName('next_date_otpr'       ).Value;//             След.рейс: Дата отпр.
    array_data[row_insert, 29] := Query.FieldByName('next_date_arrival'    ).Value;//             Cлед.рейс: Дата приб.
    array_data[row_insert, 30] := Query.FieldByName('next_node_begin_name' ).Value;//             След.рейс: Ст.Отпр
    array_data[row_insert, 31] := Query.FieldByName('next_node_end_name'   ).Value;//             След.рейс: Ст.Назн
    array_data[row_insert, 32] := Query.FieldByName('next_kargo_ETSNG_name').Value;//             След.рейс: Груз
    array_data[row_insert, 33] := Query.FieldByName('next_firm_client_name').Value;//             След.рейс: Клиент

    if (Query.RecordCount - Query.RecNo) mod 5 = 0 then
      ShowTextMessage('Осталось '+ IntToStr(Query.RecordCount - Query.RecNo) + ' записей...', False);

    Query.Next;
    inc(row_insert);
  end;

  // Левая верхняя ячейка области, в которую будем выводить данные
  cell1 := exWks.Cells[3, 2];
  // Правая нижняя ячейка области, в которую будем выводить данные
  cell2 := exWks.Cells[Query.RecordCount + 2, 36];
  // Область, в которую будем выводить данные
  range := exWks.Range[cell1, cell2];
  // Вывод данных
  range.Value := array_data;

  VarClear(array_data);

  exWks.Range['A2:AI2'].AutoFilter;

  exApp.Range['A1'].Select;
  exApp.Visible := True;

  exApp.Visible := True;
  exApp := Null; exWks := Null; exWkb := Null;
  VarClear(exWks);  VarClear(exWkb);  VarClear(exApp);

  ShowTextMessage();

  fmMain.dxStatusBar1.Panels[3].Text := IntToStr(SecondsBetween(now, d)) + ' сек.';
  Screen.Cursor := crDefault;
end;

procedure TfmFact.dxBarButton41Click(Sender: TObject);
type
  TFunc = function(AppHand: THandle; connect: TADOConnection; str_form, str_global_id: string): variant;
var
  FDic   : TFunc;
  handle : THandle;
  v      : Variant;
begin
  handle := LoadLibrary('reports.dll');
  @FDic := GetProcAddress(handle, 'CreateWndMonitorEvent');
  v := FDic(Application.Handle, fmMain.Lis, 'ФАКТ - Отгрузочная информация:', GetStrId(cxGrid1DBBandedTableView1fact_id, ','));
  FreeLibrary(handle);
end;

procedure TfmFact.dxBarButton58Click(Sender: TObject);
type
  TFunc = function(AppHand: THandle; connect: TADOConnection; str_form, str_global_id: string): variant;
var
  FDic   : TFunc;
  handle : THandle;
  v      : Variant;
begin
  handle := LoadLibrary('reports.dll');
  @FDic := GetProcAddress(handle, 'CreateWndMonitorEvent');
  v := FDic(Application.Handle, fmMain.Lis, 'ФАКТ - Оборот вагона:', GetStrId(cxGrid4DBBandedTableView1fact_id, ','));
  FreeLibrary(handle);
end;

procedure TfmFact.dxBarButton53Click(Sender: TObject);
begin
  UsersSettingModify(TComponent(Sender).Tag, TForm(self).Name, TcxControl(cxGrid3DBBandedTableView1), fmMain.Lis);
end;

procedure TfmFact.dxBarButton56Click(Sender: TObject);
var i, fact_id : integer;
    node_begin_cod, node_end_cod : string;
begin
  ClientDS_Route.DisableControls;
  for i:=0 to cxGrid3DBBandedTableView1.Controller.SelectedRecordCount - 1 do begin
    fact_id := cxGrid3DBBandedTableView1.Controller.SelectedRows[i].Values[cxGrid3DBBandedTableView1fact_id.Index];
    node_begin_cod := VarToStr(cxGrid3DBBandedTableView1.Controller.SelectedRows[i].Values[cxGrid3DBBandedTableView1r4_node_begin_cod.Index]);
    node_end_cod   := VarToStr(cxGrid3DBBandedTableView1.Controller.SelectedRows[i].Values[cxGrid3DBBandedTableView1r4_node_end_cod.Index]);

    if ClientDS_Route.Locate('fact_id', fact_id, []) then begin
      ClientDS_Route.Edit;
      ClientDS_Route.FieldByName('calc_distance').Value := GetCalcDistanceDB(node_begin_cod, node_end_cod, fmMain.Lis, False, Date);
      ClientDS_Route.Post;
    end;
    ShowTextMessage('Осталось ' + IntToStr(cxGrid1DBBandedTableView1.Controller.SelectedRowCount - i) + ' записей...',  False);
  end;
  ShowTextMessage;
  ClientDS_Route.EnableControls;
end;


//Аренда
procedure TfmFact.dxBarButton61Click(Sender: TObject);
var sp_fact_update : TADOStoredProc;
        fact_id, i : integer;
begin
  Screen.Cursor := crHourglass;
  sp_fact_update := TADOStoredProc.Create(nil);
  sp_fact_update.Connection := fmMain.Lis;
  sp_fact_update.ProcedureName := 'sp_fact_update';

  for i:=0 to cxGrid1DBBandedTableView1.Controller.SelectedRowCount - 1 do begin
    fact_id := cxGrid1DBBandedTableView1.Controller.SelectedRows[i].Values[cxGrid1DBBandedTableView1fact_id.Index];
    ShowTextMessage('Осталось ' + IntToStr(cxGrid1DBBandedTableView1.Controller.SelectedRowCount - i) + ' записей...', False);

    sp_fact_update.Parameters.Refresh;
    sp_fact_update.Parameters.ParamByName('@fact_id'    ).Value := fact_id;
    sp_fact_update.Parameters.ParamByName('@type_action').Value := 1;
    sp_fact_update.ExecProc;
  end;

  sp_fact_update.Free;
  RefreshQueryGrid(cxGrid1DBBandedTableView1, 'fact_id');
  ShowTextMessage;
  Screen.Cursor := crDefault;
end;

procedure TfmFact.dxBarButton6Click(Sender: TObject);
var                str         : string;
    SP_Fact_Find_Double_Arenda : TADOStoredProc;
    exWks, exApp               : Variant;
    row_0, row_insert, i       : Integer;
    num_vagon                  : integer;
begin
  Screen.Cursor := crHourglass;
  ShowTextMessage('Идет сбор данных. Подождите!');
  str := '';
  str := cx_GetSelectedValues(cxGrid1, 'fact_id');

  if str = '' then begin
    Screen.Cursor := crDefault;
    exit;
  end;

  SP_Fact_Find_Double_Arenda := TADOStoredProc.Create(nil);
  SP_Fact_Find_Double_Arenda.Connection := fmMain.Lis;
  SP_Fact_Find_Double_Arenda.ProcedureName := 'sp_fact_find_double_arenda';
  SP_Fact_Find_Double_Arenda.Parameters.Refresh;
  SP_Fact_Find_Double_Arenda.Parameters.ParamByName('@str').Value := str;
  try
    SP_Fact_Find_Double_Arenda.Open;
  except
  end;

  if SP_Fact_Find_Double_Arenda.RecordCount = 0 then begin
    Application.MessageBox('Повторяющихся вагонов не найдено.','Внимание',MB_OK);
    SP_Fact_Find_Double_Arenda.Free;
    Screen.Cursor := crDefault;
    exit;
  end;


  exApp := CreateOleObject('Excel.Application');
  exApp.Workbooks.Add(GetDocBlob(fmMain.Lis, 89)); // 'Дубли вагонов.xls'
  exWks := exApp.ActiveWorkbook.WorkSheets[1];
  exWks.OutLine.SummaryRow := 0;
  //exApp.Visible := True;
  row_0 := 5;
  row_insert := row_0;
  i := 0;
  SP_Fact_Find_Double_Arenda.First;
  num_vagon :=  SP_Fact_Find_Double_Arenda.FieldByName('num_vagon').AsInteger;
  while not SP_Fact_Find_Double_Arenda.Eof do begin
     if SP_Fact_Find_Double_Arenda.FieldByName('num_vagon').Value = num_vagon then  begin
       exWks.Range['B'+IntToStr(row_insert)].Value := i + 1;
       exWks.Range['C'+IntToStr(row_insert)].Value := SP_Fact_Find_Double_Arenda.FieldByName('fact_id').Value;
       exWks.Range['D'+IntToStr(row_insert)].Value := SP_Fact_Find_Double_Arenda.FieldByName('num_vagon').Value;
       exWks.Range['E'+IntToStr(row_insert)].Value := SP_Fact_Find_Double_Arenda.FieldByName('date_from_to').AsString;
       exWks.Range['F'+IntToStr(row_insert)].Value := SP_Fact_Find_Double_Arenda.FieldByName('datpr').AsString;
       exWks.Range['H'+IntToStr(row_insert)].Value := SP_Fact_Find_Double_Arenda.FieldByName('bargain_cod').AsString;
       xCopyRow(exApp,row_insert +1 ,row_insert + 1);
       inc(row_insert);
       inc(i);
     end else begin
       exApp.Rows[IntToStr(row_insert) + ':' + IntToStr(row_insert+1)].Select;
       exApp.Selection.Delete;
       exWks.Range['D'+IntToStr(row_insert)].Value :=  i;
       row_insert := row_insert + 1;
       i := 0;
       xCopyRange(exApp, row_insert, row_insert + 2,row_insert);
       exWks.Range['B'+IntToStr(row_insert)].Value := i + 1;
       exWks.Range['C'+IntToStr(row_insert)].Value := SP_Fact_Find_Double_Arenda.FieldByName('fact_id').Value;
       exWks.Range['D'+IntToStr(row_insert)].Value := SP_Fact_Find_Double_Arenda.FieldByName('num_vagon').Value;
       exWks.Range['E'+IntToStr(row_insert)].Value := SP_Fact_Find_Double_Arenda.FieldByName('date_from_to').AsString;
       exWks.Range['F'+IntToStr(row_insert)].Value := SP_Fact_Find_Double_Arenda.FieldByName('datpr').AsString;
       exWks.Range['H'+IntToStr(row_insert)].Value := SP_Fact_Find_Double_Arenda.FieldByName('bargain_cod').AsString;
       xCopyRow(exApp,row_insert +1 ,row_insert + 1);
       inc(row_insert);
       inc(i);
     end;
     num_vagon :=  SP_Fact_Find_Double_Arenda.FieldByName('num_vagon').AsInteger;
     SP_Fact_Find_Double_Arenda.Next;
     ShowTextMessage('Идет вывод отчета. Осталось ' + IntToStr(SP_Fact_Find_Double_Arenda.RecordCount - SP_Fact_Find_Double_Arenda.RecNo ) + ' из ' + IntToStr(SP_Fact_Find_Double_Arenda.RecordCount) +#13#10+ 'Подождите пожалуйста...', False);
  end;
  exApp.Rows[IntToStr(row_insert) + ':' + IntToStr(row_insert+1)].Select;
  exApp.Selection.Delete;
  exApp.Rows[IntToStr(row_insert+1) + ':' + IntToStr(row_insert+4)].Select;
  exApp.Selection.Delete;
  ShowTextMessage();
  exApp.Range['A1'].Select;
  exApp.Visible := True;
  exApp := Null;
  exWks := Null;
  SP_Fact_Find_Double_Arenda.Free;
  Screen.Cursor := crDefault;
end;


procedure TfmFact.SetSQLFilter(ClientDS: TClientDataSet);
var dt : TDateTime;
begin
  Screen.Cursor := crHourGlass;
  Ftype_fact := 0;
  Caption := 'Оперативный факт';

  SetUsersModuleRights(self, fmMain.Lis);
  MonitorEventFormOpen('OPEN_FORM', 'fmFact/Отгрузочная информация', fmMain.Lis, -9);

  cxTabSheet3.TabVisible := False;
  cxTabSheet5.TabVisible := False;
  cxPageControl1.ActivePage := cxTabSheet1;

  DS_Fact.DataSet := nil;

  sp_fact_GET.Close;

  dt := Now;
  if Assigned(ClientDS) then begin
    sp_fact_GET.Parameters.Refresh;
    sp_fact_GET.Parameters.ParamByName('@set_date_from_to'   ).Value := ClientDS.FieldByName('set_date_from_to').Value;
    sp_fact_GET.Parameters.ParamByName('@set_date_delivery'  ).Value := ClientDS.FieldByName('set_date_delivery').Value;
    sp_fact_GET.Parameters.ParamByName('@date1'              ).Value := ClientDS.FieldByName('date1').Value;
    sp_fact_GET.Parameters.ParamByName('@date2'              ).Value := ClientDS.FieldByName('date2').Value;

    sp_fact_GET.Parameters.ParamByName('@str_num_vagon'      ).Value := iif(ClientDS.FieldByName('str_num_vagon').AsString = '', Null, ClientDS.FieldByName('str_num_vagon').AsString);
    sp_fact_GET.Parameters.ParamByName('@str_num_document'   ).Value := iif(ClientDS.FieldByName('str_num_document').AsString = '', Null, ClientDS.FieldByName('str_num_document').AsString);
    sp_fact_GET.Parameters.ParamByName('@num_konten'         ).Value := ClientDS.FieldByName('num_konten').Value;

    sp_fact_GET.Parameters.ParamByName('@str_xml_reply_id'   ).Value := iif(ClientDS.FieldByName('str_xml_reply_id').AsString = '', Null, ClientDS.FieldByName('str_xml_reply_id').AsString);

    sp_fact_GET.Parameters.ParamByName('@sub_cod_self'       ).Value := ClientDS.FieldByName('sub_cod_self').Value;
    sp_fact_GET.Parameters.ParamByName('@firm_customer_name' ).Value := ClientDS.FieldByName('firm_customer_name').Value;
    sp_fact_GET.Parameters.ParamByName('@bargain_cod'        ).Value := ClientDS.FieldByName('bargain_cod').Value;
    sp_fact_GET.Parameters.ParamByName('@kexp'               ).Value := ClientDS.FieldByName('kexp').Value;

    sp_fact_GET.Parameters.ParamByName('@set_main'           ).Value := ClientDS.FieldByName('set_main').Value;
    sp_fact_GET.Parameters.ParamByName('@set_bargain_id'     ).Value := ClientDS.FieldByName('set_bargain_id').Value;
    sp_fact_GET.Parameters.ParamByName('@set_full_empty'     ).Value := ClientDS.FieldByName('set_full_empty').Value;

    sp_fact_GET.Parameters.ParamByName('@set_etran_not_valid' ).Value := ClientDS.FieldByName('set_etran_not_valid').Value;
    sp_fact_GET.Parameters.ParamByName('@set_etran_prib'      ).Value := ClientDS.FieldByName('set_etran_prib').Value;
    sp_fact_GET.Parameters.ParamByName('@set_etran_in_way'    ).Value := ClientDS.FieldByName('set_etran_in_way').Value;
    sp_fact_GET.Parameters.ParamByName('@set_etran_otpr'      ).Value := ClientDS.FieldByName('set_etran_otpr').Value;
    sp_fact_GET.Parameters.ParamByName('@set_etran_prepare'   ).Value := ClientDS.FieldByName('set_etran_prepare').Value;
    sp_fact_GET.Parameters.ParamByName('@payer_cod'           ).Value := ClientDS.FieldByName('payer_cod').Value;

    sp_fact_GET.Parameters.ParamByName('@node_begin_cod'     ).Value := ClientDS.FieldByName('node_begin_cod').Value;
    sp_fact_GET.Parameters.ParamByName('@node_end_cod'       ).Value := ClientDS.FieldByName('node_end_cod').Value;
    sp_fact_GET.Parameters.ParamByName('@node_begin_SNG_cod' ).Value := ClientDS.FieldByName('node_begin_SNG_cod').Value;
    sp_fact_GET.Parameters.ParamByName('@node_end_SNG_cod'   ).Value := ClientDS.FieldByName('node_end_SNG_cod').Value;

    sp_fact_GET.Parameters.ParamByName('@kargoETSNG_group_id').Value := iif(ClientDS.FieldByName('kargoETSNG_group_id').AsString = '', Null, ClientDS.FieldByName('kargoETSNG_group_id').AsString);
    sp_fact_GET.Parameters.ParamByName('@kargoETSNG_cod'     ).Value := ClientDS.FieldByName('kargoETSNG_cod').Value;

    sp_fact_GET.Parameters.ParamByName('@date_load_file'     ).Value := ClientDS.FieldByName('date_load_file').Value;
    sp_fact_GET.Parameters.ParamByName('@users_group_id'     ).Value := ClientDS.FieldByName('users_group_id').Value;
    sp_fact_GET.Parameters.ParamByName('@set_prev_trip'      ).Value := ClientDS.FieldByName('set_prev_trip').Value;
    sp_fact_GET.Parameters.ParamByName('@set_next_trip'      ).Value := ClientDS.FieldByName('set_next_trip').Value;

    sp_fact_GET.Parameters.ParamByName('@road_begin_name'    ).Value := ClientDS.FieldByName('road_begin_name').Value;
    sp_fact_GET.Parameters.ParamByName('@road_end_name'      ).Value := ClientDS.FieldByName('road_end_name').Value;
    sp_fact_GET.Parameters.ParamByName('@type_report'        ).Value := ClientDS.FieldByName('type_report').Value;

    sp_fact_GET.Parameters.ParamByName('@str_fact_id'        ).Value := iif(ClientDS.FieldByName('str_fact_id').AsString = '', Null, ClientDS.FieldByName('str_fact_id').AsString);
    sp_fact_GET.Parameters.ParamByName('@rod_vagon_name'     ).Value := ClientDS.FieldByName('rod_vagon_name').Value;

    sp_fact_GET.Open;
  end;
  fmMain.dxStatusBar1.Panels[3].Text := IntToStr(SecondsBetween(now, dt)) + ' сек.';

  dt := Now;
  DS_Fact.DataSet := sp_fact_GET;
  fmMain.dxStatusBar1.Panels[3].Text := fmMain.dxStatusBar1.Panels[3].Text + ' : ' + IntToStr(SecondsBetween(now, dt)) + ' сек.';

  FstrXMLClientDS := ClientDS.XMLData;

  // Видимость опциональных колонок
  // Собственник СПС
//  cxGrid1DBBandedTableView1type_sps_name.Visible         := ClientDS.FieldByName('set_type_sps').AsBoolean;

  // Пред. и След. рейсы
  ShowNextTripColumn(ClientDS.FieldByName('set_prev_trip').AsBoolean, ClientDS.FieldByName('set_next_trip').AsBoolean);

  Screen.Cursor := crDefault;
end;

procedure TfmFact.SetSQLFilterReport_05(ClientDS: TClientDataSet);
var dt : TDateTime;
begin
  Screen.Cursor := -11;

  Ftype_fact := 0;
  Caption := 'Оперативный факт (Незакрытые гружёные отправки - 05)';

  SetUsersModuleRights(self, fmMain.Lis);
  MonitorEventFormOpen('OPEN_FORM', 'fmFact/Отгрузочная информация (Отчёт 05)', fmMain.Lis, -9);

  cxTabSheet3.TabVisible := False;
  cxTabSheet5.TabVisible := False;
  cxPageControl1.ActivePage := cxTabSheet1;

  DS_Fact.DataSet := nil;

  sp_fact_GET_05.Close;

  dt := Now;
  if Assigned(ClientDS) then begin
    SP_Fact_GET_05.Parameters.Refresh;
    SP_Fact_GET_05.Parameters.ParamByName('@date1').Value := ClientDS.FieldByName('date1').Value;
    SP_Fact_GET_05.Parameters.ParamByName('@date2').Value := ClientDS.FieldByName('date2').Value;
    SP_Fact_GET_05.Open;
  end;
  fmMain.dxStatusBar1.Panels[3].Text := IntToStr(SecondsBetween(now, dt)) + ' сек.';

  dt := Now;
  DS_Fact.DataSet := SP_Fact_GET_05;
  fmMain.dxStatusBar1.Panels[3].Text := fmMain.dxStatusBar1.Panels[3].Text + ' : ' + IntToStr(SecondsBetween(now, dt)) + ' сек.';

  FstrXMLClientDS := ClientDS.XMLData;

  Screen.Cursor := 0;
end;

procedure TfmFact.SetSQLFilterProfit(ClientDS: TClientDataSet);
var                   dt : TDateTime;
    sp_fact_profit_vagon : TADOStoredProc;
begin
  Screen.Cursor := crHourGlass;

  MonitorEventFormOpen('OPEN_FORM', 'fmFact/Оборот вагона', fmMain.Lis, -9);

  Ftype_fact := 2;
  Caption := 'Оборот вагона';
  cxTabSheet1.TabVisible := False;
  cxTabSheet5.TabVisible := False;
  cxPageControl1.ActivePage := cxTabSheet3;

  DS_Route.DataSet := nil;

  sp_fact_profit_GET.Close;

  Screen.Cursor := crHourGlass;
  dt := Now;
  if Assigned(ClientDS) then begin
    sp_fact_profit_GET.Parameters.Refresh;
    sp_fact_profit_GET.Parameters.ParamByName('@set_date_from_to'   ).Value := ClientDS.FieldByName('set_date_from_to').Value;
    sp_fact_profit_GET.Parameters.ParamByName('@set_date_delivery'  ).Value := ClientDS.FieldByName('set_date_delivery').Value;
    sp_fact_profit_GET.Parameters.ParamByName('@date1'              ).Value := ClientDS.FieldByName('date1').Value;
    sp_fact_profit_GET.Parameters.ParamByName('@date2'              ).Value := ClientDS.FieldByName('date2').Value;

    sp_fact_profit_GET.Parameters.ParamByName('@str_num_vagon'      ).Value := iif(ClientDS.FieldByName('str_num_vagon').AsString = '', Null, ClientDS.FieldByName('str_num_vagon').AsString);
    sp_fact_profit_GET.Parameters.ParamByName('@str_num_document'   ).Value := iif(ClientDS.FieldByName('str_num_document').AsString = '', Null, ClientDS.FieldByName('str_num_document').AsString);
    sp_fact_profit_GET.Parameters.ParamByName('@num_konten'         ).Value := ClientDS.FieldByName('num_konten').Value;

    sp_fact_profit_GET.Parameters.ParamByName('@str_xml_reply_id'   ).Value := iif(ClientDS.FieldByName('str_xml_reply_id').AsString = '', Null, ClientDS.FieldByName('str_xml_reply_id').AsString);

    sp_fact_profit_GET.Parameters.ParamByName('@sub_cod_self'       ).Value := ClientDS.FieldByName('sub_cod_self').Value;
    sp_fact_profit_GET.Parameters.ParamByName('@firm_customer_name' ).Value := ClientDS.FieldByName('firm_customer_name').Value;
    sp_fact_profit_GET.Parameters.ParamByName('@bargain_cod'        ).Value := ClientDS.FieldByName('bargain_cod').Value;
    sp_fact_profit_GET.Parameters.ParamByName('@kexp'               ).Value := ClientDS.FieldByName('kexp').Value;
    sp_fact_profit_GET.Parameters.ParamByName('@set_main'           ).Value := ClientDS.FieldByName('set_main').Value;
    sp_fact_profit_GET.Parameters.ParamByName('@set_bargain_id'     ).Value := ClientDS.FieldByName('set_bargain_id').Value;
    sp_fact_profit_GET.Parameters.ParamByName('@node_begin_cod'     ).Value := ClientDS.FieldByName('node_begin_cod').Value;
    sp_fact_profit_GET.Parameters.ParamByName('@node_end_cod'       ).Value := ClientDS.FieldByName('node_end_cod').Value;
    sp_fact_profit_GET.Parameters.ParamByName('@node_begin_SNG_cod' ).Value := ClientDS.FieldByName('node_begin_SNG_cod').Value;
    sp_fact_profit_GET.Parameters.ParamByName('@node_end_SNG_cod'   ).Value := ClientDS.FieldByName('node_end_SNG_cod').Value;

    sp_fact_profit_GET.Parameters.ParamByName('@kargoETSNG_group_id').Value := iif(ClientDS.FieldByName('kargoETSNG_group_id').AsString = '', Null, ClientDS.FieldByName('kargoETSNG_group_id').AsString);
    sp_fact_profit_GET.Parameters.ParamByName('@kargoETSNG_cod'     ).Value := ClientDS.FieldByName('kargoETSNG_cod').Value;

    sp_fact_profit_GET.Parameters.ParamByName('@date_load_file'     ).Value := ClientDS.FieldByName('date_load_file').Value;
    sp_fact_profit_GET.Parameters.ParamByName('@users_group_id'     ).Value := ClientDS.FieldByName('users_group_id').Value;
//    sp_fact_profit_GET.Parameters.ParamByName('@set_type_sps'       ).Value := ClientDS.FieldByName('set_type_sps').Value;
    sp_fact_profit_GET.Parameters.ParamByName('@set_prev_trip'      ).Value := ClientDS.FieldByName('set_prev_trip').Value;
    sp_fact_profit_GET.Parameters.ParamByName('@set_next_trip'      ).Value := ClientDS.FieldByName('set_next_trip').Value;

    sp_fact_profit_GET.Parameters.ParamByName('@road_begin_name'    ).Value := ClientDS.FieldByName('road_begin_name').Value;
    sp_fact_profit_GET.Parameters.ParamByName('@road_end_name'      ).Value := ClientDS.FieldByName('road_end_name').Value;
    sp_fact_profit_GET.Parameters.ParamByName('@type_report'        ).Value := ClientDS.FieldByName('type_report').Value;

    sp_fact_profit_GET.Parameters.ParamByName('@str_fact_id'        ).Value := iif(ClientDS.FieldByName('str_fact_id').AsString = '', Null, ClientDS.FieldByName('str_fact_id').AsString);
    sp_fact_profit_GET.Parameters.ParamByName('@rod_vagon_name'     ).Value := ClientDS.FieldByName('rod_vagon_name').Value;

    sp_fact_profit_GET.Open;
  end;
  fmMain.dxStatusBar1.Panels[3].Text := IntToStr(SecondsBetween(now, dt)) + ' сек.';

  dt := Now;

  sp_fact_profit_vagon := TADOStoredProc.Create(nil);
  sp_fact_profit_vagon.Connection := fmMain.Lis;
  sp_fact_profit_vagon.ProcedureName := 'sp_fact_profit_vagon';

  ClientDS_Route.EmptyDataSet;
  sp_fact_profit_GET.First;
  while not sp_fact_profit_GET.Eof do begin
    ShowTextMessage('Осталось ' + IntToStr(sp_fact_profit_GET.RecordCount - sp_fact_profit_GET.RecNo) + ' вагонов...',  False);


    sp_fact_profit_vagon.Close;
    sp_fact_profit_vagon.Parameters.Refresh;
    sp_fact_profit_vagon.Parameters.ParamByName('@fact_id').Value := sp_fact_profit_GET.FieldByName('fact_id').Value;
    sp_fact_profit_vagon.Open;


    ClientDS_Route.Append;
    ClientDS_Route.FieldByName('fact_id'                  ).Value := sp_fact_profit_GET.FieldByName('fact_id').Value;
    ClientDS_Route.FieldByName('num_vagon'                ).Value := sp_fact_profit_vagon.FieldByName('num_vagon').Value;
    ClientDS_Route.FieldByName('r1_date_from_to'          ).Value := sp_fact_profit_vagon.FieldByName('r1_date_from_to').Value;
    ClientDS_Route.FieldByName('r1_datpr'                 ).Value := sp_fact_profit_vagon.FieldByName('r1_datpr').Value;
    ClientDS_Route.FieldByName('r1_num_document'          ).Value := sp_fact_profit_vagon.FieldByName('r1_num_document').Value;
    ClientDS_Route.FieldByName('r1_node_begin_name'       ).Value := sp_fact_profit_vagon.FieldByName('r1_node_begin_name').Value;
    ClientDS_Route.FieldByName('r1_node_begin_cod'        ).Value := sp_fact_profit_vagon.FieldByName('r1_node_begin_cod').Value;
    ClientDS_Route.FieldByName('r1_node_end_cod'          ).Value := sp_fact_profit_vagon.FieldByName('r1_node_end_cod').Value;
    ClientDS_Route.FieldByName('r1_node_end_name'         ).Value := sp_fact_profit_vagon.FieldByName('r1_node_end_name').Value;
    ClientDS_Route.FieldByName('r1_kargoETSNG_name'       ).Value := sp_fact_profit_vagon.FieldByName('r1_kargoETSNG_name').Value;
    ClientDS_Route.FieldByName('r1_fact_weight'           ).Value := sp_fact_profit_vagon.FieldByName('r1_fact_weight').Value;
    ClientDS_Route.FieldByName('r2_date_from_to'          ).Value := sp_fact_profit_vagon.FieldByName('r2_date_from_to').Value;
    ClientDS_Route.FieldByName('r2_datpr'                 ).Value := sp_fact_profit_vagon.FieldByName('r2_datpr').Value;
    ClientDS_Route.FieldByName('r2_num_document'          ).Value := sp_fact_profit_vagon.FieldByName('r2_num_document').Value;
    ClientDS_Route.FieldByName('r2_node_begin_cod'        ).Value := sp_fact_profit_vagon.FieldByName('r2_node_begin_cod').Value;
    ClientDS_Route.FieldByName('r2_node_begin_name'       ).Value := sp_fact_profit_vagon.FieldByName('r2_node_begin_name').Value;
    ClientDS_Route.FieldByName('r2_node_end_cod'          ).Value := sp_fact_profit_vagon.FieldByName('r2_node_end_cod').Value;
    ClientDS_Route.FieldByName('r2_node_end_name'         ).Value := sp_fact_profit_vagon.FieldByName('r2_node_end_name').Value;
    ClientDS_Route.FieldByName('r2_kargoETSNG_name'       ).Value := sp_fact_profit_vagon.FieldByName('r2_kargoETSNG_name').Value;
    ClientDS_Route.FieldByName('r2_fact_weight'           ).Value := sp_fact_profit_vagon.FieldByName('r2_fact_weight').Value;
    ClientDS_Route.FieldByName('r3_date_from_to'          ).Value := sp_fact_profit_vagon.FieldByName('r3_date_from_to').Value;
    ClientDS_Route.FieldByName('r3_datpr'                 ).Value := sp_fact_profit_vagon.FieldByName('r3_datpr').Value;
    ClientDS_Route.FieldByName('r3_num_document'          ).Value := sp_fact_profit_vagon.FieldByName('r3_num_document').Value;
    ClientDS_Route.FieldByName('r3_node_begin_cod'        ).Value := sp_fact_profit_vagon.FieldByName('r3_node_begin_cod').Value;
    ClientDS_Route.FieldByName('r3_node_begin_name'       ).Value := sp_fact_profit_vagon.FieldByName('r3_node_begin_name').Value;
    ClientDS_Route.FieldByName('r3_node_end_cod'          ).Value := sp_fact_profit_vagon.FieldByName('r3_node_end_cod').Value;
    ClientDS_Route.FieldByName('r3_node_end_name'         ).Value := sp_fact_profit_vagon.FieldByName('r3_node_end_name').Value;
    ClientDS_Route.FieldByName('r3_kargoETSNG_name'       ).Value := sp_fact_profit_vagon.FieldByName('r3_kargoETSNG_name').Value;
    ClientDS_Route.FieldByName('r3_fact_weight'           ).Value := sp_fact_profit_vagon.FieldByName('r3_fact_weight').Value;
    ClientDS_Route.FieldByName('r4_date_from_to'          ).Value := sp_fact_profit_vagon.FieldByName('r4_date_from_to').Value;
    ClientDS_Route.FieldByName('r4_datpr'                 ).Value := sp_fact_profit_vagon.FieldByName('r4_datpr').Value;
    ClientDS_Route.FieldByName('r4_num_document'          ).Value := sp_fact_profit_vagon.FieldByName('r4_num_document').Value;
    ClientDS_Route.FieldByName('r4_node_begin_cod'        ).Value := sp_fact_profit_vagon.FieldByName('r4_node_begin_cod').Value;
    ClientDS_Route.FieldByName('r4_node_begin_name'       ).Value := sp_fact_profit_vagon.FieldByName('r4_node_begin_name').Value;
    ClientDS_Route.FieldByName('r4_node_end_cod'          ).Value := sp_fact_profit_vagon.FieldByName('r4_node_end_cod').Value;
    ClientDS_Route.FieldByName('r4_node_end_name'         ).Value := sp_fact_profit_vagon.FieldByName('r4_node_end_name').Value;
    ClientDS_Route.FieldByName('r4_kargoETSNG_name'       ).Value := sp_fact_profit_vagon.FieldByName('r4_kargoETSNG_name').Value;
    ClientDS_Route.FieldByName('r4_fact_weight'           ).Value := sp_fact_profit_vagon.FieldByName('r4_fact_weight').Value;
    ClientDS_Route.FieldByName('r4_rod_vagon_cod'         ).Value := sp_fact_profit_vagon.FieldByName('r4_rod_vagon_cod').Value;
    ClientDS_Route.FieldByName('r4_rod_vagon_name'        ).Value := sp_fact_profit_vagon.FieldByName('r4_rod_vagon_name').Value;
    ClientDS_Route.FieldByName('r4_type_park_name'        ).Value := sp_fact_profit_vagon.FieldByName('r4_type_park_name').Value;
    ClientDS_Route.FieldByName('r4_comment6_client_name'  ).Value := sp_fact_profit_vagon.FieldByName('r4_comment6_client_name').Value;
    ClientDS_Route.FieldByName('r4_transport_pay'         ).Value := sp_fact_profit_vagon.FieldByName('r4_transport_pay').Value;
    ClientDS_Route.FieldByName('r5_date_from_to'          ).Value := sp_fact_profit_vagon.FieldByName('r5_date_from_to').Value;
    ClientDS_Route.FieldByName('r5_datpr'                 ).Value := sp_fact_profit_vagon.FieldByName('r5_datpr').Value;
    ClientDS_Route.FieldByName('r5_num_document'          ).Value := sp_fact_profit_vagon.FieldByName('r5_num_document').Value;
    ClientDS_Route.FieldByName('r5_node_begin_cod'        ).Value := sp_fact_profit_vagon.FieldByName('r5_node_begin_cod').Value;
    ClientDS_Route.FieldByName('r5_node_begin_name'       ).Value := sp_fact_profit_vagon.FieldByName('r5_node_begin_name').Value;
    ClientDS_Route.FieldByName('r5_node_end_cod'          ).Value := sp_fact_profit_vagon.FieldByName('r5_node_end_cod').Value;
    ClientDS_Route.FieldByName('r5_node_end_name'         ).Value := sp_fact_profit_vagon.FieldByName('r5_node_end_name').Value;
    ClientDS_Route.FieldByName('r5_kargoETSNG_name'       ).Value := sp_fact_profit_vagon.FieldByName('r5_kargoETSNG_name').Value;
    ClientDS_Route.FieldByName('r5_fact_weight'           ).Value := sp_fact_profit_vagon.FieldByName('r5_fact_weight').Value;
    ClientDS_Route.FieldByName('r5_comment6_client_name'  ).Value := sp_fact_profit_vagon.FieldByName('r5_comment6_client_name').Value;

    ClientDS_Route.FieldByName('calc_sum_otpr_empty'      ).Value := sp_fact_profit_vagon.FieldByName('calc_sum_otpr_empty').Value;
    ClientDS_Route.FieldByName('calc_otpr_empty'          ).Value := sp_fact_profit_vagon.FieldByName('calc_otpr_empty').Value;
    ClientDS_Route.FieldByName('route_economy_sum'        ).Value := sp_fact_profit_vagon.FieldByName('route_economy_sum').Value;
    ClientDS_Route.FieldByName('route_days'               ).Value := sp_fact_profit_vagon.FieldByName('route_days').Value;
    ClientDS_Route.FieldByName('empty_route_days'         ).Value := sp_fact_profit_vagon.FieldByName('empty_route_days').Value;
    ClientDS_Route.FieldByName('full_route_days'          ).Value := sp_fact_profit_vagon.FieldByName('full_route_days').Value;
    ClientDS_Route.FieldByName('load_days'                ).Value := sp_fact_profit_vagon.FieldByName('load_days').Value;
    ClientDS_Route.FieldByName('unload_days'              ).Value := sp_fact_profit_vagon.FieldByName('unload_days').Value;
    ClientDS_Route.FieldByName('calc_distance'            ).Value := sp_fact_profit_vagon.FieldByName('calc_distance').Value;

    ClientDS_Route.FieldByName('holiday_empty_route_days' ).Value := sp_fact_profit_vagon.FieldByName('holiday_empty_route_days').Value;
    ClientDS_Route.FieldByName('holiday_load_days'        ).Value := sp_fact_profit_vagon.FieldByName('holiday_load_days').Value;
    ClientDS_Route.FieldByName('holiday_full_route_days'  ).Value := sp_fact_profit_vagon.FieldByName('holiday_full_route_days').Value;
    ClientDS_Route.FieldByName('holiday_unload_days'      ).Value := sp_fact_profit_vagon.FieldByName('holiday_unload_days').Value;
    ClientDS_Route.Post;


    sp_fact_profit_GET.Next;
  end;


  DS_Route.DataSet := ClientDS_Route;
  cxGrid3DBBandedTableView1SelectionChanged(nil);

  fmMain.dxStatusBar1.Panels[3].Text := fmMain.dxStatusBar1.Panels[3].Text + ' : ' + IntToStr(SecondsBetween(now, dt)) + ' сек.';

  FstrXMLClientDS := ClientDS.XMLData;

  ShowTextMessage;
  Screen.Cursor := crDefault;
end;


procedure TfmFact.ShowNextTripColumn(set_prev_trip, set_next_trip : boolean);
begin
  // Предыдущий рейс
  cxGrid1DBBandedTableView1prev_num_document_pref.Visible:= set_prev_trip;
  cxGrid1DBBandedTableView1prev_num_document.Visible     := set_prev_trip;
  cxGrid1DBBandedTableView1prev_date_otpr.Visible        := set_prev_trip;
  cxGrid1DBBandedTableView1prev_date_arrival.Visible     := set_prev_trip;
  cxGrid1DBBandedTableView1prev_node_begin_cod.Visible   := set_prev_trip;
  cxGrid1DBBandedTableView1prev_node_begin_name.Visible  := set_prev_trip;
  cxGrid1DBBandedTableView1prev_node_end_cod.Visible     := set_prev_trip;
  cxGrid1DBBandedTableView1prev_node_end_name.Visible    := set_prev_trip;
  cxGrid1DBBandedTableView1prev_firm_client_name.Visible := set_prev_trip;
  cxGrid1DBBandedTableView1prev_kargo_ETSNG_name.Visible := set_prev_trip;
  cxGrid1DBBandedTableView1prev_fact_weight.Visible      := set_prev_trip;
  // Следующий рейс
  cxGrid1DBBandedTableView1next_num_document_pref.Visible:= set_next_trip;
  cxGrid1DBBandedTableView1next_num_document.Visible     := set_next_trip;
  cxGrid1DBBandedTableView1next_date_otpr.Visible        := set_next_trip;
  cxGrid1DBBandedTableView1next_date_arrival.Visible     := set_next_trip;
  cxGrid1DBBandedTableView1next_node_begin_cod.Visible   := set_next_trip;
  cxGrid1DBBandedTableView1next_node_begin_name.Visible  := set_next_trip;
  cxGrid1DBBandedTableView1next_node_end_cod.Visible     := set_next_trip;
  cxGrid1DBBandedTableView1next_node_end_name.Visible    := set_next_trip;
  cxGrid1DBBandedTableView1next_firm_client_name.Visible := set_next_trip;
  cxGrid1DBBandedTableView1next_kargo_ETSNG_name.Visible := set_next_trip;
  cxGrid1DBBandedTableView1next_fact_weight.Visible      := set_next_trip;
end;


procedure TfmFact.SetSQLFilterIndex(ClientDS: TClientDataSet);
var dt : TDateTime;
     i : integer;
begin
  Ftype_fact := 4;

  MonitorEventFormOpen('OPEN_FORM', 'fmFact/Показатели работы парка', fmMain.Lis, -9);

  Caption := 'Показатели работы парка';
  cxTabSheet1.TabVisible := False;
  cxTabSheet3.TabVisible := False;
  cxPageControl1.ActivePage := cxTabSheet5;

  Screen.Cursor := crHourglass;

  DS_Index.DataSet := nil;
  SP_Index.Close;
  dt := Now;
  if Assigned(ClientDS) then begin
    SP_Index.Parameters.Refresh;
    SP_Index.Parameters.ParamByName('@type_report'   ).Value := 0;
    SP_Index.Parameters.ParamByName('@str_num_vagon' ).Value := iif(ClientDS.FieldByName('str_num_vagon').AsString = '', Null, ClientDS.FieldByName('str_num_vagon').AsString);
    SP_Index.Parameters.ParamByName('@date1'         ).Value := ClientDS.FieldByName('date1').Value;
    SP_Index.Parameters.ParamByName('@date2'         ).Value := ClientDS.FieldByName('date2').Value;
    SP_Index.Parameters.ParamByName('@users_group_id').Value := ClientDS.FieldByName('users_group_id').Value;
    SP_Index.Open;

    Query_Index1.Recordset := SP_Index.NextRecordset(i);
  end;
  fmMain.dxStatusBar1.Panels[3].Text := IntToStr(SecondsBetween(now, dt)) + ' сек.';

  dt := Now;
  DS_Index.DataSet := SP_Index;
  fmMain.dxStatusBar1.Panels[3].Text := fmMain.dxStatusBar1.Panels[3].Text + ' : ' + IntToStr(SecondsBetween(now, dt)) + ' сек.';

  Screen.Cursor := crDefault;
end;

procedure TfmFact.dxBarButton62Click(Sender: TObject);
var   i : integer;
  date1 : TDatetime;
  date2 : TDatetime;
begin
  Screen.Cursor := crHourglass;

  date1 := EncodeDate(cxGrid6DBBandedTableView1date_year.DataBinding.Field.AsInteger, cxGrid6DBBandedTableView1date_month.DataBinding.Field.AsInteger, 1);
  date2 := IncMonth(date1, 1 ) - 1;
  Panel7.Caption := FormatDateTime('dd.mm.yyyy', date1) + ' - ' + FormatDateTime('dd.mm.yyyy', date2);

  SP_IndexDetail.Close;
  SP_IndexDetail.Parameters.Refresh;
  SP_IndexDetail.Parameters.ParamByName('@type_report'   ).Value := 0;
  SP_IndexDetail.Parameters.ParamByName('@date1'         ).Value := date1;
  SP_IndexDetail.Parameters.ParamByName('@date2'         ).Value := date2;
  SP_IndexDetail.Parameters.ParamByName('@rod_vagon_name').Value := cxGrid6DBBandedTableView1rod_vagon_name.DataBinding.Field.AsString;
  SP_IndexDetail.Parameters.ParamByName('@users_group_id').Value := usr_pwd.user_group_id;
  SP_IndexDetail.Open;

  Query_IndexDetail1.Recordset := SP_IndexDetail.NextRecordset(i);

  Screen.Cursor := crDefault;
end;


procedure TfmFact.SetProfitStrFactid(str_fact_id: string);
var dt : TDateTime;
begin
  Ftype_fact := 2;
  Caption := 'Оборот вагона';
  cxTabSheet1.TabVisible := False;
  cxPageControl1.ActivePage := cxTabSheet3;
  dxBarButton2.Visible := ivNever;


  DS_Route.DataSet := nil;


  sp_fact_profit_GET.Close;

  Screen.Cursor := crHourGlass;
  dt := Now;
  sp_fact_profit_GET.Parameters.Refresh;
  sp_fact_profit_GET.Parameters.ParamByName('@str_fact_id'   ).Value := str_fact_id;
  sp_fact_profit_GET.Parameters.ParamByName('@users_group_id').Value := usr_pwd.user_group_id;
  sp_fact_profit_GET.Open;

  fmMain.dxStatusBar1.Panels[3].Text := IntToStr(SecondsBetween(now, dt)) + ' сек.';

  dt := Now;

  ClientDS_Route.EmptyDataSet;
  sp_fact_profit_GET.First;
  while not sp_fact_profit_GET.Eof do begin
    ClientDS_Route.Append;
    ClientDS_Route.FieldByName('num_vagon'                  ).Value := sp_fact_profit_GET.FieldByName('num_vagon').Value;
    ClientDS_Route.FieldByName('full2_num_document'         ).Value := sp_fact_profit_GET.FieldByName('full2_num_document').Value;
    ClientDS_Route.FieldByName('full2_date_from_to'         ).Value := sp_fact_profit_GET.FieldByName('full2_date_from_to').Value;
    ClientDS_Route.FieldByName('full2_datpr'                ).Value := sp_fact_profit_GET.FieldByName('full2_datpr').Value;
    ClientDS_Route.FieldByName('full2_node_begin_cod'       ).Value := sp_fact_profit_GET.FieldByName('full2_node_begin_cod').Value;
    ClientDS_Route.FieldByName('full2_node_begin_name'      ).Value := sp_fact_profit_GET.FieldByName('full2_node_begin_name').Value;
    ClientDS_Route.FieldByName('full2_node_end_cod'         ).Value := sp_fact_profit_GET.FieldByName('full2_node_end_cod').Value;
    ClientDS_Route.FieldByName('full2_node_end_name'        ).Value := sp_fact_profit_GET.FieldByName('full2_node_end_name').Value;
    ClientDS_Route.FieldByName('full2_kargoETSNG_name'      ).Value := sp_fact_profit_GET.FieldByName('full2_kargoETSNG_name').Value;
    ClientDS_Route.FieldByName('empty1_num_document'        ).Value := sp_fact_profit_GET.FieldByName('empty1_num_document').Value;
    ClientDS_Route.FieldByName('empty1_date_from_to'        ).Value := sp_fact_profit_GET.FieldByName('empty1_date_from_to').Value;
    ClientDS_Route.FieldByName('empty1_datpr'               ).Value := sp_fact_profit_GET.FieldByName('empty1_datpr').Value;
    ClientDS_Route.FieldByName('empty1_node_begin_cod'      ).Value := sp_fact_profit_GET.FieldByName('empty1_node_begin_cod').Value;
    ClientDS_Route.FieldByName('empty1_node_begin_name'     ).Value := sp_fact_profit_GET.FieldByName('empty1_node_begin_name').Value;
    ClientDS_Route.FieldByName('empty1_node_end_cod'        ).Value := sp_fact_profit_GET.FieldByName('empty1_node_end_cod').Value;
    ClientDS_Route.FieldByName('empty1_node_end_name'       ).Value := sp_fact_profit_GET.FieldByName('empty1_node_end_name').Value;
    ClientDS_Route.FieldByName('empty1_kargoETSNG_name'     ).Value := sp_fact_profit_GET.FieldByName('empty1_kargoETSNG_name').Value;
    ClientDS_Route.FieldByName('empty4_num_document'        ).Value := sp_fact_profit_GET.FieldByName('empty4_num_document').Value;
    ClientDS_Route.FieldByName('empty4_date_from_to'        ).Value := sp_fact_profit_GET.FieldByName('empty4_date_from_to').Value;
    ClientDS_Route.FieldByName('empty4_datpr'               ).Value := sp_fact_profit_GET.FieldByName('empty4_datpr').Value;
    ClientDS_Route.FieldByName('empty4_node_begin_cod'      ).Value := sp_fact_profit_GET.FieldByName('empty4_node_begin_cod').Value;
    ClientDS_Route.FieldByName('empty4_node_begin_name'     ).Value := sp_fact_profit_GET.FieldByName('empty4_node_begin_name').Value;
    ClientDS_Route.FieldByName('empty4_node_end_cod'        ).Value := sp_fact_profit_GET.FieldByName('empty4_node_end_cod').Value;
    ClientDS_Route.FieldByName('empty4_node_end_name'       ).Value := sp_fact_profit_GET.FieldByName('empty4_node_end_name').Value;
    ClientDS_Route.FieldByName('empty4_kargoETSNG_name'     ).Value := sp_fact_profit_GET.FieldByName('empty4_kargoETSNG_name').Value;
    ClientDS_Route.FieldByName('full1_num_document'         ).Value := sp_fact_profit_GET.FieldByName('full1_num_document').Value;
    ClientDS_Route.FieldByName('full1_comment6_client_name' ).Value := sp_fact_profit_GET.FieldByName('full1_comment6_client_name').Value;
    ClientDS_Route.FieldByName('full1_date_from_to'         ).Value := sp_fact_profit_GET.FieldByName('full1_date_from_to').Value;
    ClientDS_Route.FieldByName('full1_datpr'                ).Value := sp_fact_profit_GET.FieldByName('full1_datpr').Value;
    ClientDS_Route.FieldByName('full1_node_begin_cod'       ).Value := sp_fact_profit_GET.FieldByName('full1_node_begin_cod').Value;
    ClientDS_Route.FieldByName('full1_node_begin_name'      ).Value := sp_fact_profit_GET.FieldByName('full1_node_begin_name').Value;
    ClientDS_Route.FieldByName('full1_node_end_cod'         ).Value := sp_fact_profit_GET.FieldByName('full1_node_end_cod').Value;
    ClientDS_Route.FieldByName('full1_node_end_name'        ).Value := sp_fact_profit_GET.FieldByName('full1_node_end_name').Value;
    ClientDS_Route.FieldByName('full1_kargoETSNG_name'      ).Value := sp_fact_profit_GET.FieldByName('full1_kargoETSNG_name').Value;
    ClientDS_Route.FieldByName('next_num_document'          ).Value := sp_fact_profit_GET.FieldByName('next_num_document').Value;
    ClientDS_Route.FieldByName('next_comment6_client_name'  ).Value := sp_fact_profit_GET.FieldByName('next_comment6_client_name').Value;
    ClientDS_Route.FieldByName('next_date_from_to'          ).Value := sp_fact_profit_GET.FieldByName('next_date_from_to').Value;
    ClientDS_Route.FieldByName('next_datpr'                 ).Value := sp_fact_profit_GET.FieldByName('next_datpr').Value;
    ClientDS_Route.FieldByName('next_node_begin_cod'        ).Value := sp_fact_profit_GET.FieldByName('next_node_begin_cod').Value;
    ClientDS_Route.FieldByName('next_node_begin_name'       ).Value := sp_fact_profit_GET.FieldByName('next_node_begin_name').Value;
    ClientDS_Route.FieldByName('next_node_end_cod'          ).Value := sp_fact_profit_GET.FieldByName('next_node_end_cod').Value;
    ClientDS_Route.FieldByName('next_node_end_name'         ).Value := sp_fact_profit_GET.FieldByName('next_node_end_name').Value;
    ClientDS_Route.FieldByName('next_kargoETSNG_name'       ).Value := sp_fact_profit_GET.FieldByName('next_kargoETSNG_name').Value;
    ClientDS_Route.FieldByName('route_days'                 ).Value := sp_fact_profit_GET.FieldByName('route_days').Value;
    ClientDS_Route.FieldByName('id'                         ).Value := sp_fact_profit_GET.FieldByName('id').Value;
    ClientDS_Route.FieldByName('full2_fact_weight'          ).Value := sp_fact_profit_GET.FieldByName('full2_fact_weight').Value;
    ClientDS_Route.FieldByName('empty1_fact_weight'         ).Value := sp_fact_profit_GET.FieldByName('empty1_fact_weight').Value;
    ClientDS_Route.FieldByName('empty4_fact_weight'         ).Value := sp_fact_profit_GET.FieldByName('empty4_fact_weight').Value;
    ClientDS_Route.FieldByName('full1_fact_weight'          ).Value := sp_fact_profit_GET.FieldByName('full1_fact_weight').Value;
    ClientDS_Route.FieldByName('next_fact_weight'           ).Value := sp_fact_profit_GET.FieldByName('next_fact_weight').Value;
    ClientDS_Route.FieldByName('calc_otpr_empty'            ).Value := sp_fact_profit_GET.FieldByName('calc_otpr_empty').Value;
    ClientDS_Route.FieldByName('calc_sum_otpr_empty'        ).Value := sp_fact_profit_GET.FieldByName('calc_sum_otpr_empty').Value;
    ClientDS_Route.FieldByName('route_economy_sum'          ).Value := sp_fact_profit_GET.FieldByName('route_economy_sum').Value;
    ClientDS_Route.FieldByName('full1_kargoETSNG_cod'       ).Value := sp_fact_profit_GET.FieldByName('full1_kargoETSNG_cod').Value;
    ClientDS_Route.FieldByName('full1_rod_vagon_cod'        ).Value := sp_fact_profit_GET.FieldByName('full1_rod_vagon_cod').Value;
    ClientDS_Route.FieldByName('full1_rod_vagon_name'       ).Value := sp_fact_profit_GET.FieldByName('full1_rod_vagon_name').Value;
    ClientDS_Route.FieldByName('full1_type_park_name'       ).Value := sp_fact_profit_GET.FieldByName('full1_type_park_name').Value;

    ClientDS_Route.FieldByName('calc_distance'    ).Value := sp_fact_profit_GET.FieldByName('calc_distance').Value;
    ClientDS_Route.FieldByName('empty_route_days' ).Value := sp_fact_profit_GET.FieldByName('empty_route_days').Value;
    ClientDS_Route.FieldByName('full_route_days'  ).Value := sp_fact_profit_GET.FieldByName('full_route_days').Value;
    ClientDS_Route.FieldByName('load_days'        ).Value := sp_fact_profit_GET.FieldByName('load_days').Value;
    ClientDS_Route.FieldByName('unload_days'      ).Value := sp_fact_profit_GET.FieldByName('unload_days').Value;

    ClientDS_Route.Post;
    sp_fact_profit_GET.Next;
  end;


  DS_Route.DataSet := ClientDS_Route;
  cxGrid3DBBandedTableView1SelectionChanged(nil);
  fmMain.dxStatusBar1.Panels[3].Text := fmMain.dxStatusBar1.Panels[3].Text + ' : ' + IntToStr(SecondsBetween(now, dt)) + ' сек.';

  Screen.Cursor := crDefault;
end;

procedure TfmFact.SetStrFactid(str_fact_id: string);
var dt : TDateTime;
begin
  Screen.Cursor := crHourGlass;
  DS_Fact.DataSet := nil;

  sp_fact_GET.Close;

  dt := Now;
  dxBarButton2.Visible := ivNever;

  sp_fact_GET.Parameters.Refresh;
  sp_fact_GET.Parameters.ParamByName('@str_fact_id'   ).Value := str_fact_id;
  sp_fact_GET.Parameters.ParamByName('@set_prev_trip' ).Value := True;
  sp_fact_GET.Parameters.ParamByName('@set_next_trip' ).Value := True;
  sp_fact_GET.Open;

  ShowNextTripColumn(True, True);

  fmMain.dxStatusBar1.Panels[3].Text := IntToStr(SecondsBetween(now, dt)) + ' сек.';

  dt := Now;
  DS_Fact.DataSet := sp_fact_GET;
  fmMain.dxStatusBar1.Panels[3].Text := fmMain.dxStatusBar1.Panels[3].Text + ' : ' + IntToStr(SecondsBetween(now, dt)) + ' сек.';

  Screen.Cursor := crDefault;
end;

function TfmFact.LoadVohr(stream : TStream; file_name : string): Int64;
var
  StringList_File  : TStringList;
  StringList_Vagon : TStringList;
  i, j             : integer;
  cnt_error        : integer;
  cnt_noload       : integer;
  SP               : TADOStoredProc;
  Query            : TADOQuery;
  num_vag          : int64;
begin
  Result := -9;

  Screen.Cursor := crHourglass;

  ShowTextMessage('Анализ повторной загрузки ...', False);
  // проверка на файл в базе
  Query := TADOQuery.Create(nil);
  Query.Connection := fmMain.Lis;
  Query.SQL.Add('SELECT count(*) as cnt FROM fact WHERE (file_load_info=''' + file_name + ''') AND (firm_info_id = 96699)');
  Query.Open;
  if Query.FieldByName('cnt').AsInteger > 0 then begin
    Application.MessageBox('ДАННЫЙ ФАЙЛ УЖЕ ЗАГРУЖЕН В БАЗУ ДАННЫХ', 'ВНИМАНИЕ', MB_OK);
    ShowTextMessage;
    Screen.Cursor := crDefault;
    exit;
  end;

  ShowTextMessage('Проверка полученных данных ...', False);

  StringList_File := TStringList.Create;
  StringList_File.LoadFromStream(stream);

  StringList_Vagon := TStringList.Create;
  StringList_Vagon.Text := ReplaceStr(StringList_File.Strings[0], ' ', #10);
  if (StringList_Vagon.Count <> 3) then begin
    StringList_File.Free;
    StringList_Vagon.Free;
    Query.Free;
    Application.MessageBox('Не верный формат полученных данных', 'Ошибка', MB_OK or MB_ICONERROR);
    Exit;
  end;
  if (LeftStr(StringList_Vagon.Strings[0], 2) <> '(:') or (RightStr(StringList_Vagon.Strings[2], 2) <> ':)') then begin
    StringList_File.Free;
    StringList_Vagon.Free;
    Query.Free;
    Application.MessageBox('Не верный формат полученных данных', 'Ошибка', MB_OK or MB_ICONERROR);
    Exit;
  end;
  Result := StrToInt64(ReplaceStr(StringList_Vagon.Strings[2], ':)', ''));
  if Result = 0 then begin
    StringList_File.Free;
    StringList_Vagon.Free;
    Query.Free;
    Application.MessageBox('Новых данных нет', 'Нет данных', MB_OK or MB_ICONINFORMATION);
    Result := -9;
    Exit;
  end;

  Query.Close;
  Query.SQL.Clear;
  Query.SQL.Add('SELECT * FROM inf_obj WHERE type_inf_id = 1');
  Query.Open;

  SP := TADOStoredProc.Create(nil);
  SP.Connection := fmMain.Lis;
  SP.ProcedureName := 'sp_fact_insert_GVC_otpr;1';
  SP.Parameters.Refresh;

  for i := 1 to StringList_File.Count - 1 do begin
    ShowTextMessage('Осталось ' + IntToStr(StringList_File.Count - i) + ' вагонов', False);

    StringList_Vagon.Text := ReplaceStr(StringList_File.Strings[i], ' ', #10);

    SP.Close;
    for j := 0 to SP.Parameters.Count - 1 do SP.Parameters[j].Value := NULL;

    SP.Parameters.ParamByName('@fact_id').Value           := NULL;
    SP.Parameters.ParamByName('@num_document').Value      := RightStr(StringList_Vagon.Strings[3], 6);
    SP.Parameters.ParamByName('@num_document_pref').Value := LeftStr(StringList_Vagon.Strings[3], Length(StringList_Vagon.Strings[3]) - 6);
    if (Length(StringList_Vagon.Strings[19]) <= 8) AND (TryStrToInt64(StringList_Vagon.Strings[19], num_vag)) then begin
      SP.Parameters.ParamByName('@num_vagon').Value       := StringList_Vagon.Strings[19];
      SP.Parameters.ParamByName('@num_konten').Value      := NULL;
    end else begin
      SP.Parameters.ParamByName('@num_vagon').Value       := NULL;
      SP.Parameters.ParamByName('@num_konten').Value      := StringList_Vagon.Strings[19];
    end;

    SP.Parameters.ParamByName('@kexp').Value              := StringList_Vagon.Strings[2];
    SP.Parameters.ParamByName('@cod_exception').Value     := NULL;
    SP.Parameters.ParamByName('@fkv').Value               := 1;
    SP.Parameters.ParamByName('@from_to').Value           := StrToInt(StringList_Vagon.Strings[4]);
    SP.Parameters.ParamByName('@date_from_to').Value      := StrToDate(StringList_Vagon.Strings[9]);

// Это условие временно не обрабатывается, т.к. в файле не проставляется дата прибытия !!!
//    if StringList_Vagon.Strings[4] = '1' then
//      SP.Parameters.ParamByName('@datpr').Value           := StrToDate(StringList_Vagon.Strings[10])
//    else
    SP.Parameters.ParamByName('@datpr').Value           := NULL;

    if StringList_Vagon.Strings[5] = '0' then Query.Locate('inf_obj_cod', 5, []);
    if StringList_Vagon.Strings[5] = '1' then Query.Locate('inf_obj_cod', 1, []);
    if StringList_Vagon.Strings[5] = '2' then Query.Locate('inf_obj_cod', 2, []);
    if StringList_Vagon.Strings[5] = '3' then Query.Locate('inf_obj_cod', 4, []);
    SP.Parameters.ParamByName('@vid_transfer').Value      := Query.FieldByName('inf_obj_id').Value;

    SP.Parameters.ParamByName('@fact_weight').Value       := NULL;
    SP.Parameters.ParamByName('@kargo_capacity').Value    := NULL;
    SP.Parameters.ParamByName('@transport_pay').Value     := (StrToCurr(StringList_Vagon.Strings[32]) / 100); //RoundCurr((StrToCurr(StringList_Vagon.Strings[32]) / 100) * 1.18, -2);
    SP.Parameters.ParamByName('@nds').Value               := NULL; //RoundCurr((StrToCurr(StringList_Vagon.Strings[32]) / 100) * 0.18, -2);
    SP.Parameters.ParamByName('@currency_id').Value       := 3;
    SP.Parameters.ParamByName('@tip_zap').Value           := 0;
    SP.Parameters.ParamByName('@kargoETSNG_cod').Value    := LeftStr(StringList_Vagon.Strings[21], 5);
    SP.Parameters.ParamByName('@kargoGNG_cod').Value      := NULL;
    SP.Parameters.ParamByName('@node_begin_cod').Value    := LeftStr(StringList_Vagon.Strings[13], 5);
    SP.Parameters.ParamByName('@node_end_cod').Value      := LeftStr(StringList_Vagon.Strings[17], 5);
    SP.Parameters.ParamByName('@node_end_SNG_cod').Value  := NULL;
    SP.Parameters.ParamByName('@file_load_info').Value    := file_name;
    SP.Parameters.ParamByName('@date_load_file').Value    := NULL;
    SP.Parameters.ParamByName('@firm_info_id').Value      := 96699; // -------- ВОХР --------
    SP.Parameters.ParamByName('@set_nosave_double').Value := True; // Не загрузать ранее загруженные вагоны

    try
      SP.ExecProc;
      if (SP.Parameters.ParamByName('@fact_id').Value = -8) then
        cnt_noload := cnt_noload + 1;
      if (SP.Parameters.ParamByName('@fact_id').Value = 0) OR (SP.Parameters.ParamByName('@fact_id').Value = -9) then
        cnt_error := cnt_error + 1;
    except
      cnt_error := cnt_error + 1;
    end;

  end;

  StringList_File.Free;
  StringList_Vagon.Free;
  SP.Free;
  Query.Free;

  ShowTextMessage;
  if cnt_error <> 0 then Application.MessageBox(PChar('В базу не загрузилось '+ IntToStr(cnt_error) + ' вагонов из-за ошибок.'), 'Внимание', MB_OK + MB_ICONWARNING);
  if cnt_noload <> 0 then Application.MessageBox(PChar('В базу не загрузилось '+ IntToStr(cnt_noload) + ' вагонов, т.к. они были загружены ранее.'), 'Внимание', MB_OK + MB_ICONINFORMATION);

  Screen.Cursor := crDefault;
end;

procedure TfmFact.dxBarButton42Click(Sender: TObject);
var       Q : TADOQuery;
  _fmAgree2 : TfmAgree2;
begin
  if (cxGrid4DBBandedTableView1bargain_id.DataBinding.Field.Value = null) then begin
    Application.MessageBox('Факт не привязан к перевозке.', 'Внимание', MB_OK);
    Exit;
  end;

  Screen.Cursor := crHourglass;

  Q := TADOQuery.Create(nil);
  Q.Connection := fmMain.Lis;
  Q.SQL.Add('SELECT * FROM view_bargain_rights WHERE bargain_id='+IntToStr(cxGrid4DBBandedTableView1bargain_id.DataBinding.Field.AsInteger));
  Q.Open;

  if Q.RecordCount < 1 then begin
    Application.MessageBox('Недостаточно прав.', 'Внимание', MB_OK);
    Exit;
  end;

  _fmAgree2 := TfmAgree2.Create(nil, True);
  _fmAgree2.Factive_users_id := Q.FieldByName('users_owner_id').AsInteger;
  _fmAgree2.SP_Agree.Close;
  _fmAgree2.SP_Agree.Parameters.ParamByName('@date_begin'    ).Value := StrToDate('01.'+FormatDateTime('m', Q.FieldByName('date_period').AsDatetime)+'.'+FormatDateTime('yyyy', Q.FieldByName('date_period').AsDatetime));
  _fmAgree2.SP_Agree.Parameters.ParamByName('@date_end'      ).Value := StrToDate('01.'+FormatDateTime('m', IncMonth(Q.FieldByName('date_period').AsDatetime, 1))+'.'+FormatDateTime('yyyy', IncMonth(Q.FieldByName('date_period').AsDatetime, 1)))-1;
  _fmAgree2.SP_Agree.Parameters.ParamByName('@users_owner_id').Value := Q.FieldByName('users_owner_id').AsInteger;
  _fmAgree2.SP_Agree.Open;

  _fmAgree2.dxBarSubItem3.Caption := FormatDateTime('mmmm yyyy', Q.FieldByName('date_period').AsDatetime);

  _fmAgree2.PeriodDate1 := StrToDate('01.'+FormatDateTime('m', Q.FieldByName('date_period').AsDatetime)+'.'+FormatDateTime('yyyy', Q.FieldByName('date_period').AsDatetime));
  _fmAgree2.PeriodDate2 := IncMonth(_fmAgree2.Fdate1, 1) - 1;

  _fmAgree2.SP_Agree.Locate('bargain_id', Q['bargain_id'], [loCaseInsensitive]);
  Q.Free;

  _fmAgree2.dxBarButton2.Down := True;

  _fmAgree2.cxGrid1DBBandedTableView1.Controller.ClearSelection;
  _fmAgree2.dxBarButton2Click(_fmAgree2.dxBarButton2);
  _fmAgree2.SP_FactClient.Locate('fact_id', cxGrid4DBBandedTableView1fact_id.DataBinding.Field.AsInteger, [loCaseInsensitive]);
  Screen.Cursor := crDefault;

  if _fmAgree2.ShowModal = mrOk then RefreshQueryGrid(cxGrid4DBBandedTableView1, 'fact_id');
end;

procedure TfmFact.dxBarButton43Click(Sender: TObject);
var            i : integer;
  str_bargain_id : string;
begin
  if TcxGridDBTableView(cxGrid4.ActiveView).Controller.SelectedRowCount < 1 then exit;

  str_bargain_id := '';
  for i:=0 to cxGrid4DBBandedTableView1.Controller.SelectedRecordCount - 1 do
    str_bargain_id := str_bargain_id + ', ' + IntToStr(cxGrid4DBBandedTableView1.Controller.SelectedRows[i].Values[cxGrid4DBBandedTableView1bargain_id.Index]);
  Delete(str_bargain_id, 1, 2);

  PrintFrahtCardWeight_Multi2(fmMain.Lis, str_bargain_id);
end;

procedure TfmFact.dxBarButton44Click(Sender: TObject);
type
  TFunc = function(AppHand : THandle; conn: TADOConnection; bargain_id: integer; usr_pwd: PUser_pwd): Variant;
var
  FBargainList : TFunc;
  handle       : THandle;
  v            : Variant;
begin
  handle := LoadLibrary('FormsAdd.dll');
  @FBargainList := GetProcAddress(handle,'CreateWndBargainList2');
  v := FBargainList(Application.Handle, fmMain.Lis, cxGrid4DBBandedTableView1bargain_id.DataBinding.Field.AsInteger, usr_pwd);
  FreeLibrary(handle);
end;

procedure TfmFact.dxBarButton45Click(Sender: TObject);
begin
  if cxGrid4DBBandedTableView1fact_id.DataBinding.Field.AsInteger = 0 then exit;

  fmFactCard := TfmFactCard.Create(Application, fmMain.Lis);
  fmFactCard._UpdateFact(cxGrid4DBBandedTableView1fact_id.DataBinding.Field.AsInteger);
  if fmFactCard.ShowModal = mrOk then RefreshQueryGrid(cxGrid4DBBandedTableView1, 'fact_id');
end;

procedure TfmFact.dxBarButton46Click(Sender: TObject);
type
  TFunc = procedure(date: TDateTime; var ClientDS_param: TClientDataSet; set_show_message: boolean);
var
    FFunc  : TFunc;
    handle : THandle;
    v      : Variant;
    ClientDS : TClientDataSet;
    node_begin_cod : string;
    node_end_cod   : string;
    kargoETSNG_cod : string;
    rod_vagon_cod  : string;
    i : integer;
begin
  ClientDS := TClientDataSet.Create(nil);
  ClientDS.FieldDefs.Add('date_from_to'  , ftDateTime);
  ClientDS.FieldDefs.Add('node_begin_cod', ftString, 10);
  ClientDS.FieldDefs.Add('node_end_cod'  , ftString, 10);
  ClientDS.FieldDefs.Add('kargoETSNG_cod', ftString, 10);
  ClientDS.FieldDefs.Add('rod_vagon_cod' , ftString, 10);
  ClientDS.FieldDefs.Add('calc_otpr_empty',ftCurrency);
  ClientDS.IndexFieldNames := 'node_begin_cod;node_end_cod;kargoETSNG_cod;rod_vagon_cod';
  ClientDS.CreateDataSet;
  ClientDS.LogChanges := False;

  ClientDS_Route.DisableControls;

  for i:=0 to cxGrid3DBBandedTableView1.Controller.SelectedRecordCount - 1 do begin
    node_begin_cod := VarToStr(cxGrid3DBBandedTableView1.Controller.SelectedRows[i].Values[cxGrid3DBBandedTableView1r4_node_begin_cod.Index]);
    node_end_cod   := VarToStr(cxGrid3DBBandedTableView1.Controller.SelectedRows[i].Values[cxGrid3DBBandedTableView1r4_node_end_cod.Index]);
    kargoETSNG_cod := VarToStr(cxGrid3DBBandedTableView1.Controller.SelectedRows[i].Values[cxGrid3DBBandedTableView1r4_kargoETSNG_cod.Index]);
    rod_vagon_cod  := VarToStr(cxGrid3DBBandedTableView1.Controller.SelectedRows[i].Values[cxGrid3DBBandedTableView1r4_rod_vagon_cod.Index]);
    if not ClientDS.FindKey([node_begin_cod, node_end_cod, kargoETSNG_cod, rod_vagon_cod]) then begin
      ClientDS.Append;
      ClientDS.FieldByName('date_from_to'  ).Value := cxGrid3DBBandedTableView1.Controller.SelectedRows[i].Values[cxGrid3DBBandedTableView1r4_date_from_to.Index];
      ClientDS.FieldByName('node_begin_cod').Value := node_begin_cod;
      ClientDS.FieldByName('node_end_cod'  ).Value := node_end_cod;
      ClientDS.FieldByName('kargoETSNG_cod').Value := kargoETSNG_cod;
      ClientDS.FieldByName('rod_vagon_cod' ).Value := rod_vagon_cod;
      ClientDS.Post;
    end;
  end;

  handle := LoadLibrary('ctm_tarif.dll');
  @FFunc := GetProcAddress(handle, 'GetCalcTariffEmpty');
  FFunc(Date, ClientDS, True);
  FreeLibrary(handle);

  ClientDS_Route.IndexFieldNames := 'fact_id';

  for i:=0 to cxGrid3DBBandedTableView1.Controller.SelectedRecordCount - 1 do begin
    node_begin_cod := VarToStr(cxGrid3DBBandedTableView1.Controller.SelectedRows[i].Values[cxGrid3DBBandedTableView1r4_node_begin_cod.Index]);
    node_end_cod   := VarToStr(cxGrid3DBBandedTableView1.Controller.SelectedRows[i].Values[cxGrid3DBBandedTableView1r4_node_end_cod.Index]);
    kargoETSNG_cod := VarToStr(cxGrid3DBBandedTableView1.Controller.SelectedRows[i].Values[cxGrid3DBBandedTableView1r4_kargoETSNG_cod.Index]);
    rod_vagon_cod  := VarToStr(cxGrid3DBBandedTableView1.Controller.SelectedRows[i].Values[cxGrid3DBBandedTableView1r4_rod_vagon_cod.Index]);
    if ClientDS.FindKey([node_begin_cod, node_end_cod, kargoETSNG_cod, rod_vagon_cod]) then begin
      if ClientDS_Route.FindKey([cxGrid3DBBandedTableView1.Controller.SelectedRows[i].Values[cxGrid3DBBandedTableView1fact_id.Index]]) then begin
        ClientDS_Route.Edit;
        if ClientDS.FieldByName('calc_otpr_empty').AsCurrency <> -9 then begin
          ClientDS_Route.FieldByName('route_economy_sum').Value := ClientDS.FieldByName('calc_otpr_empty').Value - ClientDS_Route.FieldByName('calc_sum_otpr_empty').Value;
        end;

        ClientDS_Route.FieldByName('calc_otpr_empty').Value := ClientDS.FieldByName('calc_otpr_empty').Value;
        ClientDS_Route.Post;
      end;
    end;
  end;

  ClientDS_Route.EnableControls;
  ClientDS.Free;
end;

procedure TfmFact.dxBarButton47Click(Sender: TObject);
begin
  UsersSettingModify(TComponent(Sender).Tag, TForm(self).Name, TcxControl(cxGrid1DBBandedTableView1), fmMain.Lis);
end;

procedure TfmFact.dxBarButton7Click(Sender: TObject);
var str_num_vagon : string;
                i : integer;
begin
  str_num_vagon := '';
  case TdxBarButton(Sender).ClickItemLink.Owner.Owner.Tag of
    0 : str_num_vagon := cx_GetSelectedValues(cxGrid1, 'num_vagon');
  end;

  if str_num_vagon = '' then exit;
  str_num_vagon := ReplaceStr(str_num_vagon,',,',',');
  str_num_vagon := ReplaceStr(str_num_vagon,',',#13#10);

  Screen.Cursor := crHourglass;

  for i:=0 to fmMain.MDIChildCount-1 Do
    if (fmMain.MDIChildren[i].ClassName = 'TfmFactTrack') then fmMain.MDIChildren[i].Free;
  fmFactTrack := TfmFactTrack.Create(Application, False, 0);
  fmFactTrack._SetVagonSQL := ShowFactTrackVagonDlg(Application.Handle, usr_pwd, 0, str_num_vagon);

  Screen.Cursor := crDefault;
end;

procedure TfmFact.dxBarButton8Click(Sender: TObject);
var exApp, exWkb, exWks : OleVariant;
    i,row_insert        : integer;
    str_num_vagon       : string;
    date1,date2         : TDateTime;
    SP                  : TADOStoredProc;
begin
    date1 := StartOfTheMonth(Date);
    date2 := EndOfTheMonth(Date);

    fmPeriod := TfmPeriod.Create(Application, date1, date2, 1);
    if fmPeriod.ShowModal=mrOK then begin
      Screen.Cursor := crHourglass;
      date1 := fmPeriod._GetDateBegin;
      date2 := fmPeriod._GetDateEnd;
    end;

    if OpenDialog1.Execute then begin
      exApp := CreateOleObject('Excel.Application');
      exWkb := exApp.Workbooks.Open(OpenDialog1.FileName);
      exWkb := exApp.ActiveWorkbook;
      exWks := exWkb.WorkSheets[1];
      str_num_vagon := '';
      for i := exWks.UsedRange.Rows[1].Row to exWks.UsedRange.Rows[exWks.UsedRange.Rows.Count].Row do begin
        ShowTextMessage('Осталось ' + IntToStr(exWks.UsedRange.Rows[exWks.UsedRange.Rows.Count].Row - i) + ' записей ...', False);
        if i < (exWks.UsedRange.Rows[exWks.UsedRange.Rows.Count].Row)then
          str_num_vagon := str_num_vagon + Trim(exWks.Range['A' + IntToStr(i)].Text) +','
        else  str_num_vagon := str_num_vagon + Trim(exWks.Range['A' + IntToStr(i)].Text);
      end;
    end;

  SP := TADOStoredProc.Create(nil);
  SP.Connection := fmMain.Lis;
  SP.CommandTimeout := 120;
  SP.ProcedureName := 'sp_fact_track_date_arrive';
  SP.Parameters.Refresh;
  SP.Parameters.ParamByName('@str_num_vagon').Value := str_num_vagon;
  SP.Parameters.ParamByName('@date_begin').Value := date1;
  SP.Parameters.ParamByName('@date_end').Value := date2;
  SP.Open;

  exApp := CreateOleObject('Excel.Application');
  exApp.Workbooks.Add(GetDocBlob(fmMain.Lis, 119)); // Слежение вагонов(Дислокация_Прибытие).xls
  exWks := exApp.ActiveWorkbook.WorkSheets[1];

  row_insert := 4;

   while not SP.Eof do begin
      exWks.Range['A'+IntToStr(row_insert)].Value := SP.FieldByName('cod').AsString;
      exWks.Range['B'+IntToStr(row_insert)].Value := SP.FieldByName('invFromStationName').AsString;
      exWks.Range['C'+IntToStr(row_insert)].Value := SP.FieldByName('invToStationName').AsString;
      if not VarIsNull(SP.FieldByName('invDateReady').Value) then exWks.Range['D'+IntToStr(row_insert)].Value := StrToDate(FormatDateTime('dd.mm.yy', SP.FieldByName('invDateReady').Value));
      if not VarIsNull(SP.FieldByName('invDateExpire').Value) then exWks.Range['E'+IntToStr(row_insert)].Value := StrToDate(FormatDateTime('dd.mm.yy', SP.FieldByName('invDateExpire').Value));
      inc(row_insert);
      SP.Next;
   end;

  exWks.Range['B2'].Value := 'Количество вагонов/контейнеров: ' + IntToStr(SP.RecordCount);

  exWks.PageSetup.PrintArea := exWks.Range['A1:E'+IntToStr(row_insert+2)].Address;
  exApp.Range['A1'].Select;
  exApp.Visible := True;

  SP.Free;
  exApp := Null;  exWks := Null;
  ShowTextMessage('', True);

  Screen.Cursor := crDefault;
end;

procedure TfmFact.dxBarButton9Click(Sender: TObject);
var exApp, exWkb, exWks    : OleVariant;
    i,row_insert,gorup_num : integer;
    row_begin              : integer;
    str_num_vagon          : string;
    date1,date2            : TDateTime;
    SP_Report_analiz_route : TADOStoredProc;
begin
  date1 := StartOfTheMonth(Date);
  date2 := EndOfTheMonth(Date);

  fmPeriod := TfmPeriod.Create(Application, date1, date2, 1);
  if fmPeriod.ShowModal=mrOK then begin
    Screen.Cursor := crHourglass;
    date1 := fmPeriod._GetDateBegin;
    date2 := fmPeriod._GetDateEnd;
  end;

  Screen.Cursor := crHourGlass;

  str_num_vagon := '';
  for i:=0 to cxGrid1DBBandedTableView1.Controller.SelectedRecordCount - 1 do begin
    cxGrid1DBBandedTableView1.Controller.SelectedRows[i].Focused := True;
    str_num_vagon := str_num_vagon + ', ' + IntToStr(cxGrid1DBBandedTableView1num_vagon.DataBinding.Field.AsInteger);
  end;
  Delete(str_num_vagon, 1, 2);


  sp_Report_analiz_route := TADOStoredProc.Create(nil);
  sp_Report_analiz_route.Connection := fmMain.Lis;
  sp_Report_analiz_route.CommandTimeout := 120;
  sp_Report_analiz_route.ProcedureName := 'sp_Report_analiz_route';
  sp_Report_analiz_route.Parameters.Refresh;
  sp_Report_analiz_route.Parameters.ParamByName('@date_begin').Value := date1;
  sp_Report_analiz_route.Parameters.ParamByName('@date_end').Value := date2;
  sp_Report_analiz_route.Parameters.ParamByName('@str_num_vagon').Value := str_num_vagon;
  sp_Report_analiz_route.Open;

  exApp := CreateOleObject('Excel.Application');
  exApp.Workbooks.Add(GetDocBlob(fmMain.Lis, 122));
  exWks := exApp.ActiveWorkbook.WorkSheets[1];

  row_insert := 5;
  row_begin  := 5;
  gorup_num  := -1;

  while not sp_Report_analiz_route.Eof do begin

    ShowTextMessage('Осталось вагонов ' + IntToStr(sp_Report_analiz_route.RecordCount - sp_Report_analiz_route.RecNo) + '...', False);

    exWks.Range['C'+IntToStr(row_insert)].Value := sp_Report_analiz_route.FieldByName('date_from_to').Value;
    exWks.Range['D'+IntToStr(row_insert)].Value := sp_Report_analiz_route.FieldByName('datpr').Value;
    exWks.Range['E'+IntToStr(row_insert)].Value := sp_Report_analiz_route.FieldByName('node_begin_name').AsString;
    exWks.Range['F'+IntToStr(row_insert)].Value := sp_Report_analiz_route.FieldByName('node_end_name').AsString;
    exWks.Range['G'+IntToStr(row_insert)].Value := sp_Report_analiz_route.FieldByName('kargo_group_name').AsString;

    if gorup_num <> sp_Report_analiz_route.FieldByName('group_num').Value then begin
      exWks.Range['B'+IntToStr(row_insert)].Value := sp_Report_analiz_route.FieldByName('num_vagon').Value;
      if sp_Report_analiz_route.FieldByName('set_correct').Value = True then begin
        exWks.Range['H'+IntToStr(row_insert)].Value := sp_Report_analiz_route.FieldByName('route_begin_name').AsString;
        exWks.Range['I'+IntToStr(row_insert)].Value := sp_Report_analiz_route.FieldByName('route_end_name').AsString;
        exWks.Range['J'+IntToStr(row_insert)].Value := sp_Report_analiz_route.FieldByName('route_begin_date').Value;
        exWks.Range['K'+IntToStr(row_insert)].Value := sp_Report_analiz_route.FieldByName('route_end_date').Value;
      end;

      if row_begin<>row_insert then begin
        Excel_MergeCells(exWks, 'B', 'B', row_begin, row_insert-1, -4152);
        Excel_MergeCells(exWks, 'H', 'H', row_begin, row_insert-1);
        Excel_MergeCells(exWks, 'I', 'I', row_begin, row_insert-1);
        Excel_MergeCells(exWks, 'J', 'J', row_begin, row_insert-1, -4152);
        Excel_MergeCells(exWks, 'K', 'K', row_begin, row_insert-1, -4152);
      end;

      gorup_num := sp_Report_analiz_route.FieldByName('group_num').Value;
      row_begin := row_insert;
    end;

    exWks.Range['B' + IntToStr(row_insert) + ':K' + IntToStr(row_insert)].Borders[7].LineStyle := 1;
    exWks.Range['B' + IntToStr(row_insert) + ':K' + IntToStr(row_insert)].Borders[8].LineStyle := 1;
    exWks.Range['B' + IntToStr(row_insert) + ':K' + IntToStr(row_insert)].Borders[9].LineStyle := 1;
    exWks.Range['B' + IntToStr(row_insert) + ':K' + IntToStr(row_insert)].Borders[10].LineStyle := 1;
    exWks.Range['B' + IntToStr(row_insert) + ':K' + IntToStr(row_insert)].Borders[11].LineStyle := 1;

    row_insert := row_insert + 1;
    sp_Report_analiz_route.Next;
 end;

  exApp.Range['A1'].Select;
  exApp.Visible := True;
  sp_Report_analiz_route.Free;
  exApp := Null;  exWks := Null;
  ShowTextMessage();

  Screen.Cursor := crDefault;
end;

{$REGION 'Создать начисления'}
procedure TfmFact.dxBarButton_CreateFactSumRecordClick(Sender: TObject);
var      Q, Q2, Q3 : TADOQuery;
    str_bargain_id : string;
       str_fact_id : string;
       contract_id : integer;
SP_fact_sum_modify : TADOStoredProc;
begin
  str_fact_id := GetStrId(cxGrid1DBBandedTableView1fact_id, ',');
  if str_fact_id = '' then  exit;

  Q := TADOQuery.Create(nil);
  Q.Connection := fmMain.Lis;
  Q.SQL.Add('SELECT DISTINCT bargain_id FROM fact WHERE fact_id in (' + str_fact_id + ')');
  Q.Open;


  str_bargain_id := '';
  while not Q.Eof do begin
    str_bargain_id := str_bargain_id + ', ' + IntToStr(Q.FieldByName('bargain_id').AsInteger);
    Q.Next;
  end;
  Delete(str_bargain_id, 1, 2);


  Q.SQL.Clear;
  Q.SQL.Add('SELECT DISTINCT contract_agent_id, contract_agent_cod, firm_agent_name FROM view_shaping_rate WHERE bargain_id in (' + str_bargain_id + ')');
  Q.Open;
  fmFilter := TfmFilter.Create(0, Q, 'contract_agent_id', 'contract_agent_cod', 'firm_agent_name');
  if fmFilter.ShowModal = mrOk then begin
    Screen.Cursor := crHourGlass;
    contract_id := fmFilter.GetId;
    Q.SQL.Clear;
    Q.SQL.Add('SELECT * FROM bargain WHERE bargain_id in (' + str_bargain_id + ')');
    Q.Open;

    SP_fact_sum_modify := TADOStoredProc.Create(nil);
    SP_fact_sum_modify.Connection := fmMain.Lis;
    SP_fact_sum_modify.ProcedureName := 'sp_fact_sum_modify';

    Q2 := TADOQuery.Create(nil);
    Q2.Connection := fmMain.Lis;
    Q3 := TADOQuery.Create(nil);
    Q3.Connection := fmMain.Lis;
    while not Q.Eof do begin

      Q2.SQL.Clear;
      Q2.SQL.Add('SELECT TOP 1 shaping_rate_id FROM shaping_rate WHERE contract_agent_id = ' + IntToStr(contract_id) + ' AND bargain_id = ' + IntToStr(Q.FieldByName('bargain_id').AsInteger));
      Q2.Open;

      Q3.SQL.Clear;
      Q3.SQL.Add('SELECT fact_id FROM view_bargain_fact WHERE bargain_id = ' + IntToStr(Q.FieldByName('bargain_id').AsInteger) + ' and set_main = 1 and xml_reply_id is null AND fact_id in (' + str_fact_id + ')');
      Q3.Open;

      while not Q3.Eof do begin
        SP_fact_sum_modify.Parameters.Refresh;
        SP_fact_sum_modify.Parameters.ParamByName('@type_action'         ).Value := 3;
        SP_fact_sum_modify.Parameters.ParamByName('@fact_id'             ).Value := Q3.FieldByName('fact_id').Value;
        try
          SP_fact_sum_modify.ExecProc;
        except
        end;

        SP_fact_sum_modify.Parameters.Refresh;
        SP_fact_sum_modify.Parameters.ParamByName('@type_action'         ).Value := 5;
        SP_fact_sum_modify.Parameters.ParamByName('@sum_type_name'       ).Value := '(Создано из факта)';
        SP_fact_sum_modify.Parameters.ParamByName('@fact_id'             ).Value := Q3.FieldByName('fact_id').Value;
        SP_fact_sum_modify.Parameters.ParamByName('@shaping_rate_id'     ).Value := Q2.FieldByName('shaping_rate_id').Value;

        try
          SP_fact_sum_modify.ExecProc;
        except
        end;

        ShowTextMessage('Осталось '+IntToStr(Q.RecordCount - Q.RecNo)+' перевозок...' + #10 + 'Осталось '+IntToStr(Q3.RecordCount - Q3.RecNo)+' вагонов...', False);
        Q3.Next;
      end;
      Q.Next;
      ShowTextMessage('Осталось '+IntToStr(Q.RecordCount - Q.RecNo)+' перевозок...', False);
    end;
    Q2.Free;
    Q3.Free;
    SP_fact_sum_modify.Free;
    ShowTextMessage;
    Screen.Cursor := crDefault;
  end;
  Q.Free;
end;
{$ENDREGION 'Создать начисления'}


{$REGION 'Показать в начислениях'}
procedure TfmFact.dxBarButton_GotoSumFactClick(Sender: TObject);
var i : integer;
    str_fact_id : string;
begin
  str_fact_id := GetStrId(cxGrid1DBBandedTableView1fact_id, ',');
  if str_fact_id = '' then
    exit;
  for i:=0 to MDIChildCount-1 Do
    if (MDIChildren[i].ClassName = 'TfmFactSum') then  MDIChildren[i].Free;
  fmFactSum := TfmFactSum.Create(Application, True);
  fmFactSum._SetBargainId := -9;
  fmFactSum._SetFactID := str_fact_id;
  fmFactSum.ShowModal;
end;
{$ENDREGION 'Показать в начислениях'}

{$REGION 'Фильтр по всем записям'}
procedure TfmFact.dxBarButton_FilterRecords1Click(Sender: TObject);
begin

end;
{$ENDREGION 'Фильтр по всем записям'}

procedure TfmFact.dxBarButton_LoadDBFClick(Sender: TObject);
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

begin
  OpenDialog           := TOpenDialog.Create(self);
  OpenDialog.Filter    := 'Файлы dbf|*.dbf';
  OpenDialog.DefaultExt:= 'dbf';
  OpenDialog.Options   := [ofHideReadOnly,ofAllowMultiSelect,ofEnableSizing];
  if OpenDialog.Execute then begin
    Q := TADOQuery.Create(nil);
    Q.Connection := fmMain.Lis;
    Q.SQL.Add('SELECT file_load_info FROM view_fact_all WHERE users_group_id = ' + IntToStr(usr_pwd^.user_group_id) + ' AND file_load_info = ''' + ExtractFileName(OpenDialog.FileName) + '''');
    Q.Open;
    if Q.RecordCount > 0 then begin
      Application.MessageBox('Информация из файла уже загружена!!!','Внимание',MB_OK);
      OpenDialog.Free;
      Q.Free;
      exit;
    end;
    Client_Records := TClientDataSet.Create(nil);
    if ParserDBF(OpenDialog.FileName, Client_Records, str_error) = False then begin
      Application.MessageBox(Pchar(str_error),'Внимание',MB_OK);
      OpenDialog.Free;
      Q.Free;
      Client_Records.Free;
      exit;
    end;
    if not checkFileDBF(4, Client_Records) then begin
      OpenDialog.Free;
      Q.Free;
      Client_Records.Free;
      exit;
    end;
    Client_Records.First;
    ClientDS_LoadDBF.EmptyDataSet;
    try
      while not Client_Records.Eof do begin
        ShowTextMessage('Осталось загрузить ' + IntToStr(Client_Records.RecordCount - Client_Records.RecNo) + ' вагонов ...', False);
        ClientDS_LoadDBF.Append;
        ClientDS_LoadDBF.FieldByName('record_id').AsInteger := Client_Records.FieldByName('record_id').AsInteger;
        ClientDS_LoadDBF.FieldByName('num_vagon').AsString := IntToStr(StrToInt(COPY(Trim(Client_Records.FieldByName('GR1').AsString),0, POS('.',Trim(Client_Records.FieldByName('GR1').AsString))-1)));
        ClientDS_LoadDBF.FieldByName('num_document').AsString := COPY(Client_Records.FieldByName('GR2').AsString, Length(Client_Records.FieldByName('GR2').AsString) - 5, 6);
        ClientDS_LoadDBF.FieldByName('num_document_pref').AsString := COPY(Client_Records.FieldByName('GR2').AsString, 0, Length(Client_Records.FieldByName('GR2').AsString) - 6);

        // Поиск Станции отправления
        Q.Close;
        Q.SQL.Clear;
        Q.SQL.Add('SELECT inf_obj_id, state_id, road_id FROM inf_obj_node WHERE (inf_obj_name = ''' + Client_Records.FieldByName('GR3').AsString + ''') AND (''' + Client_Records.FieldByName('GR5').AsString + ''' BETWEEN date_begin AND ISNULL(date_end, ''20300101''))');
        Q.Open;
        if Q.RecordCount = 0 then begin
          Q.Close;
          Q.SQL.Clear;
          Q.SQL.Add('SELECT ion.inf_obj_id, ion.state_id, ion.road_id FROM inf_obj_node ion INNER JOIN global_alias ga ON ion.inf_obj_id = ga.rows_id');
          Q.SQL.Add('WHERE (ga.alias_name = ''' + Client_Records.FieldByName('GR3').AsString + ''') AND (''' + Client_Records.FieldByName('GR5').AsString + ''' BETWEEN ion.date_begin AND ISNULL(ion.date_end, ''20300101'')) AND (ga.users_group_id = ' + IntToStr(usr_pwd^.user_group_id) + ')');
          Q.Open;
          if Q.RecordCount = 0 then begin
            ShowTextMessage();
            handle := LoadLibrary('dictionary.dll');
            @FGlobalAlias := GetProcAddress(handle,'CreateWndGlobalAlias_New');
            v := FGlobalAlias(Application.Handle, usr_pwd, '16', Client_Records.FieldByName('GR3').AsString);
            FreeLibrary(handle);
            if v[0] = -9  then begin
              Application.MessageBox(Pchar('Неизвестная станция отправления: "' + Client_Records.FieldByName('GR3').AsString + '".' + #13#10 + 'Добавьте название в справочник соответствий'),'Внимание',MB_OK);
              OpenDialog.Free;
              Q.Free;
              Client_Records.Free;
              exit;
            end;
            ShowTextMessage('Осталось загрузить ' + IntToStr(Client_Records.RecordCount - Client_Records.RecNo) + ' вагонов ...', False);
            Q.Close;
            Q.SQL.Clear;
            Q.SQL.Add('SELECT inf_obj_id, state_id, road_id FROM inf_obj_node WHERE inf_obj_id = ' + IntToStr(V[2]));
            Q.Open;
          end;
        end;
        ClientDS_LoadDBF.FieldByName('node_begin_id').AsInteger := Q.FieldByName('inf_obj_id').AsInteger;
        ClientDS_LoadDBF.FieldByName('state_begin_id').AsInteger := Q.FieldByName('state_id').AsInteger;
        ClientDS_LoadDBF.FieldByName('road_begin_id').AsInteger := Q.FieldByName('road_id').AsInteger;

        // Поиск Станции назначения
        Q.Close;
        Q.SQL.Clear;
        Q.SQL.Add('SELECT inf_obj_id, state_id, road_id FROM inf_obj_node WHERE (inf_obj_name = ''' + Client_Records.FieldByName('GR4').AsString + ''') AND (''' + Client_Records.FieldByName('GR5').AsString + ''' BETWEEN date_begin AND ISNULL(date_end, ''20300101''))');
        Q.Open;
        if Q.RecordCount = 0 then begin
          Q.Close;
          Q.SQL.Clear;
          Q.SQL.Add('SELECT ion.inf_obj_id, ion.state_id, ion.road_id FROM inf_obj_node ion INNER JOIN global_alias ga ON ion.inf_obj_id = ga.rows_id');
          Q.SQL.Add('WHERE (ga.alias_name = ''' + Client_Records.FieldByName('GR4').AsString + ''') AND (''' + Client_Records.FieldByName('GR5').AsString + ''' BETWEEN ion.date_begin AND ISNULL(ion.date_end, ''20300101'')) AND (ga.users_group_id = ' + IntToStr(usr_pwd^.user_group_id) + ')');
          Q.Open;
          if Q.RecordCount = 0 then begin
            ShowTextMessage();
            handle := LoadLibrary('dictionary.dll');
            @FGlobalAlias := GetProcAddress(handle,'CreateWndGlobalAlias_New');
            v := FGlobalAlias(Application.Handle, usr_pwd, '16', Client_Records.FieldByName('GR4').AsString);
            FreeLibrary(handle);
            if v[0] = -9  then begin
              Application.MessageBox(Pchar('Неизвестная станция отправления: "' + Client_Records.FieldByName('GR4').AsString + '".' + #13#10 + 'Добавьте название в справочник соответствий'),'Внимание',MB_OK);
              OpenDialog.Free;
              Q.Free;
              Client_Records.Free;
              exit;
            end;
            ShowTextMessage('Осталось загрузить ' + IntToStr(Client_Records.RecordCount - Client_Records.RecNo) + ' вагонов ...', False);
            Q.Close;
            Q.SQL.Clear;
            Q.SQL.Add('SELECT inf_obj_id, state_id, road_id FROM inf_obj_node WHERE inf_obj_id = ' + IntToStr(V[2]));
            Q.Open;
          end;
        end;
        ClientDS_LoadDBF.FieldByName('node_end_id').AsInteger := Q.FieldByName('inf_obj_id').AsInteger;
        ClientDS_LoadDBF.FieldByName('state_end_id').AsInteger := Q.FieldByName('state_id').AsInteger;
        ClientDS_LoadDBF.FieldByName('road_end_id').AsInteger := Q.FieldByName('road_id').AsInteger;
        ClientDS_LoadDBF.FieldByName('date_from_to').Value := Client_Records.FieldByName('GR5').Value;

        // Поиск груза ЕТСНГ
        Q.Close;
        Q.SQL.Clear;
        Q.SQL.Add('SELECT inf_obj_id FROM inf_obj_etsng WHERE (inf_obj_name = ''' + Client_Records.FieldByName('GR6').AsString + ''') AND (''' + Client_Records.FieldByName('GR5').AsString + ''' BETWEEN date_begin AND ISNULL(date_end, ''20300101''))');
        Q.Open;
        if Q.RecordCount = 0 then begin
          Q.Close;
          Q.SQL.Clear;
          Q.SQL.Add('SELECT ion.inf_obj_id FROM inf_obj_etsng ion INNER JOIN global_alias ga ON ion.inf_obj_id = ga.rows_id');
          Q.SQL.Add('WHERE (ga.alias_name = ''' + Client_Records.FieldByName('GR6').AsString + ''') AND (''' + Client_Records.FieldByName('GR5').AsString + ''' BETWEEN ion.date_begin AND ISNULL(ion.date_end, ''20300101'')) AND (ga.users_group_id = ' + IntToStr(usr_pwd^.user_group_id) + ')');
          Q.Open;
          if Q.RecordCount = 0 then begin
            ShowTextMessage();
            handle := LoadLibrary('dictionary.dll');
            @FGlobalAlias := GetProcAddress(handle,'CreateWndGlobalAlias_New');
            v := FGlobalAlias(Application.Handle, usr_pwd, '10', Client_Records.FieldByName('GR6').AsString);
            FreeLibrary(handle);
            if v[0] = -9  then begin
              Application.MessageBox(Pchar('Неизвестный груз: "' + Client_Records.FieldByName('GR6').AsString + '".' + #13#10 + 'Добавьте название в справочник соответствий'),'Внимание',MB_OK);
              OpenDialog.Free;
              Q.Free;
              Client_Records.Free;
              exit;
            end;
            ShowTextMessage('Осталось загрузить ' + IntToStr(Client_Records.RecordCount - Client_Records.RecNo) + ' вагонов ...', False);
            Q.Close;
            Q.SQL.Clear;
            Q.SQL.Add('SELECT inf_obj_id FROM inf_obj_etsng WHERE inf_obj_id = ' + IntToStr(V[2]));
            Q.Open;
          end;
        end;
        ClientDS_LoadDBF.FieldByName('kargoETSNG_id').AsInteger := Q.FieldByName('inf_obj_id').AsInteger;
        ClientDS_LoadDBF.FieldByName('fact_weight').AsFloat := StrToFloat(ReplaceStr(Trim(Client_Records.FieldByName('GR7').AsString),'.',','));
        ClientDS_LoadDBF.FieldByName('transport_pay').AsCurrency := StrToFloat(ReplaceStr(Trim(Client_Records.FieldByName('GR8').AsString),'.',','));
        ClientDS_LoadDBF.FieldByName('sumnds').AsCurrency := StrToFloat(ReplaceStr(Trim(Client_Records.FieldByName('GR9').AsString),'.',','));
        ClientDS_LoadDBF.FieldByName('kargo_capacity').AsFloat := StrToFloat(ReplaceStr(Trim(Client_Records.FieldByName('GR11').AsString),'.',','));
        ClientDS_LoadDBF.FieldByName('date_delivery').Value := Client_Records.FieldByName('GR12').Value;
        ClientDS_LoadDBF.FieldByName('etran_owner_name').Value  := Client_Records.FieldByName('OWN').Value;
        ClientDS_LoadDBF.Append;
        Client_Records.Next;
      end;
      try
        Q.Close;
        Q.SQL.Clear;
        Q.SQL.Add('SELECT firm_id FROM view_firm_rights WHERE firm_cod = ''-121''');
        Q.Open;
        SP := TADOStoredProc.Create(nil);
        SP.Connection := fmMain.Lis;
        SP.CommandTimeout := 120;
        SP.ProcedureName := 'sp_fact_modify';
        ClientDS_LoadDBF.First;
        while not ClientDS_LoadDBF.Eof do begin
          ShowTextMessage('Осталось сохранить ' + IntToStr(Client_Records.RecordCount - Client_Records.RecNo) + ' вагонов ...', False);
          SP.Parameters.Refresh;
          SP.Parameters.ParamByName('@num_document').Value := ClientDS_LoadDBF.FieldByName('num_document').Value;
          SP.Parameters.ParamByName('@num_document_pref').Value := ClientDS_LoadDBF.FieldByName('num_document_pref').Value;
          SP.Parameters.ParamByName('@num_vagon').Value := ClientDS_LoadDBF.FieldByName('num_vagon').Value;
          SP.Parameters.ParamByName('@node_begin_id').Value := ClientDS_LoadDBF.FieldByName('node_begin_id').Value;
          SP.Parameters.ParamByName('@node_end_id').Value := ClientDS_LoadDBF.FieldByName('node_end_id').Value;
          SP.Parameters.ParamByName('@date_from_to').Value := StrToDate(COPY(ClientDS_LoadDBF.FieldByName('date_from_to').AsString, 7, 2) + '.' + COPY(ClientDS_LoadDBF.FieldByName('date_from_to').AsString, 5, 2) + '.' + COPY(ClientDS_LoadDBF.FieldByName('date_from_to').AsString, 1, 4));
          ClientDS_LoadDBF.FieldByName('date_from_to').Value;
          SP.Parameters.ParamByName('@kargoETSNG_id').Value := ClientDS_LoadDBF.FieldByName('kargoETSNG_id').Value;
//          SP.Parameters.ParamByName('@kargoGNG_id').Value := ClientDS_LoadDBF.FieldByName('').Value;
          SP.Parameters.ParamByName('@state_begin_id').Value := ClientDS_LoadDBF.FieldByName('state_begin_id').Value;
          SP.Parameters.ParamByName('@state_end_id').Value := ClientDS_LoadDBF.FieldByName('state_end_id').Value;
          SP.Parameters.ParamByName('@road_begin_id').Value := ClientDS_LoadDBF.FieldByName('road_begin_id').Value;
          SP.Parameters.ParamByName('@road_end_id').Value := ClientDS_LoadDBF.FieldByName('road_end_id').Value;
          SP.Parameters.ParamByName('@fact_weight').Value := ClientDS_LoadDBF.FieldByName('fact_weight').Value;
          SP.Parameters.ParamByName('@transport_pay').Value := ClientDS_LoadDBF.FieldByName('transport_pay').Value;
          SP.Parameters.ParamByName('@nds').Value := ClientDS_LoadDBF.FieldByName('sumnds').Value;
          SP.Parameters.ParamByName('@kargo_capacity').Value := ClientDS_LoadDBF.FieldByName('kargo_capacity').Value;
          SP.Parameters.ParamByName('@date_delivery').Value := StrToDate(COPY(ClientDS_LoadDBF.FieldByName('date_delivery').AsString, 7, 2) + '.' + COPY(ClientDS_LoadDBF.FieldByName('date_delivery').AsString, 5, 2) + '.' + COPY(ClientDS_LoadDBF.FieldByName('date_delivery').AsString, 1, 4));
//          ClientDS_LoadDBF.FieldByName('date_delivery').Value;
          SP.Parameters.ParamByName('@etran_owner_name').Value := ClientDS_LoadDBF.FieldByName('etran_owner_name').Value;
          SP.Parameters.ParamByName('@firm_info_id').Value := Q.FieldByName('firm_id').Value;
          SP.Parameters.ParamByName('@file_load_info').Value := ExtractFileName(OpenDialog.FileName);
          SP.ExecProc;
          ClientDS_LoadDBF.Next;
        end;
      finally
        SP.Free;
        ShowTextMessage();
      end;
    except
      Application.MessageBox(Pchar('Непредвиденная ошибка, обратитесь к разработчикам.'),'Внимание',MB_OK);
    end;
    OpenDialog.Free;
    Q.Free;
    Client_Records.Free;
    RefreshQueryGrid(cxGrid1DBBandedTableView1, 'fact_id');
  end;
end;

procedure TfmFact.dxBarButton_ReportVagonClick(Sender: TObject);
var  exApp, exWks : Variant;
      str_fact_id : string;
        num_vagon : string;
         i, row_0 : integer;
          Q, Q_sf : TADOQuery;
      contract_id : integer;
            ETRAN : TADOConnection;
begin
  str_fact_id := '';
  row_0 := 5;
  num_vagon := '';


  ShowTextMessage('Запуск Excel...', False);

  try
    exApp := CreateOleObject('Excel.Application');
    exApp.Application.EnableEvents := False;
    exApp.ScreenUpdating := False;
    exApp.Workbooks.Add(GetDocBlob(fmMain.Lis, 159));
    exWks := exApp.ActiveWorkbook.WorkSheets[1];

    // ------ коннект для этрана -------
    Q := TADOQuery.Create(nil);
    Q.Connection := fmMain.Lis;
    Q.SQL.Add('SELECT	inf_obj_cod as users_group_cod');
    Q.SQL.Add('FROM	  users INNER JOIN inf_obj on users.users_group_id = inf_obj.inf_obj_id');
    Q.SQL.Add('WHERE	users_name = system_user');
    Q.Open;

    ETRAN := TADOConnection.Create(nil);
    ETRAN.LoginPrompt := False;

    case Q.FieldByName('users_group_cod').AsInteger of
      0 : Etran.ConnectionString := 'Persist Security Info=True;Provider=SQLOLEDB.1;User ID=Etran_GRU;Password=etran;Initial Catalog=lis_etran;Data Source=' + usr_pwd.server + ';';
    end;
    ETRAN.Connected := True;
    // ----------------------------------


    Q.Close;
    Q.SQL.Clear;
    Q.SQL.Add('SELECT DISTINCT contract_id = contract_agent_id, contract_cod = contract_agent_cod, firm_customer_name = firm_agent_name');
    Q.SQL.Add('FROM view_shaping_rate WHERE contract_agent_id IN (SELECT contract_id FROM view_zfto_score_rights GROUP BY contract_id)');
    Q.Open;

    contract_id := -9;
    fmFilter := TfmFilter.Create(0, Q, 'contract_id', 'contract_cod', 'firm_customer_name');
    fmFilter._SetContract4FactIncChoose := True;
    if fmFilter.ShowModal <> mrOk then
      exit;

    contract_id := fmFilter.GetId;
    fmFilter.Free;
    Q.Free;

    Q := TADOQuery.Create(nil);
    Q.Connection := ETRAN;
    Q.SQL.Add('SELECT c.cumTypeName, c.cumDateCreate, c.cumNumber, d.dueSum FROM  cumulative c '+
              '	  INNER JOIN cumDue d on c.Cumulative_id = d.Cumulative_id' +
              '	  INNER JOIN etran_global_id on etran_global_id.global_id = c.cumulative_id' +
              '	WHERE users_owner_id in (	SELECT users2.users_id'+
              '	            							FROM etran_users users1'+
              '	            								INNER JOIN etran_users users2 on users1.users_group_id = users2.users_group_id' +
              '	            							WHERE users1.users_name = system_user)'+
              ' AND (d.dueParentDocNameId = 4)' +
              ' AND RIGHT(cast(d.dueParentDocNum as varchar(50)), 6) = RIGHT(cast(:dueParentDocNum  as varchar(50)), 6)' +
              ' AND (d.dueNote = :dueNote)' +
              ' GROUP BY d.cumulative_id, c.cumTypeName, c.cumDateCreate, c.cumNumber, d.dueSum');

    Q_sf := TADOQuery.Create(nil);
    Q_sf.Connection := fmMain.Lis;
    Q_sf.SQL.Add(' SELECT TOP(1) zs.fact_num, zs.fact_date' +
                 ' FROM ZFTO_SCORE zs' +
                 ' 	INNER JOIN global_id g ON zs.zfto_score_id = g.global_id' +
                 ' 	INNER JOIN view_users_group u ON g.users_owner = u.users_id' +
                 ' 	INNER JOIN zfto_score_table zst ON zs.zfto_score_id = zst.zfto_score_id' +
                 ' 	INNER JOIN zfto_score_act zsa ON zs.zfto_score_act_id = zsa.zfto_score_act_id' +
                 ' WHERE zst.vagon_num = :vagon_num AND zsa.contract_id = ' + IntToStr(contract_id) +
                 ' AND RIGHT(cast(zst.number_doc as varchar(50)), 6) = RIGHT(cast(:number_doc as varchar(50)), 6)' +
                 ' AND ISNULL(zsa.set_grant,0) = :set_grant' +
                 ' GROUP BY zs.fact_num, zs.fact_date');

    for i := 0 to cxGrid1DBBandedTableView1.Controller.SelectedRowCount - 1 do begin
      exWks.Range['B' + IntToStr(row_0)].Value := VarToStr(cxGrid1DBBandedTableView1.Controller.SelectedRows[i].Values[cxGrid1DBBandedTableView1etran_folder.Index]);
      exWks.Range['C' + IntToStr(row_0)].Value := VarToStr(cxGrid1DBBandedTableView1.Controller.SelectedRows[i].Values[cxGrid1DBBandedTableView1firm_info_name.Index]);
      exWks.Range['D' + IntToStr(row_0)].Value := VarToStr(cxGrid1DBBandedTableView1.Controller.SelectedRows[i].Values[cxGrid1DBBandedTableView1num_document_pref1.Index]);
      exWks.Range['E' + IntToStr(row_0)].Value := VarToStr(cxGrid1DBBandedTableView1.Controller.SelectedRows[i].Values[cxGrid1DBBandedTableView1num_document1.Index]);
      exWks.Range['F' + IntToStr(row_0)].Value := VarToStr(cxGrid1DBBandedTableView1.Controller.SelectedRows[i].Values[cxGrid1DBBandedTableView1num_vagon.Index]);

//      exWks.Range['G' + IntToStr(row_0)].Value := SP.FieldByName('kargoETSNG_name').AsString;
      exWks.Range['H' + IntToStr(row_0)].Value := VarToStr(cxGrid1DBBandedTableView1.Controller.SelectedRows[i].Values[cxGrid1DBBandedTableView1date_from_to.Index]);
      exWks.Range['I' + IntToStr(row_0)].Value := VarToStr(cxGrid1DBBandedTableView1.Controller.SelectedRows[i].Values[cxGrid1DBBandedTableView1bargain_cod.Index]);
      exWks.Range['J' + IntToStr(row_0)].Value := VarToStr(cxGrid1DBBandedTableView1.Controller.SelectedRows[i].Values[cxGrid1DBBandedTableView1firm_customer_name.Index]);

      exWks.Range['K' + IntToStr(row_0)].Value := VarToStr(cxGrid1DBBandedTableView1.Controller.SelectedRows[i].Values[cxGrid1DBBandedTableView1fact_users_comment.Index]);
      exWks.Range['l' + IntToStr(row_0)].Value := VarToStr(cxGrid1DBBandedTableView1.Controller.SelectedRows[i].Values[cxGrid1DBBandedTableView1claim_num.Index]);
      exWks.Range['M' + IntToStr(row_0)].Value := VarToStr(cxGrid1DBBandedTableView1.Controller.SelectedRows[i].Values[cxGrid1DBBandedTableView1node_begin_name.Index]);
      exWks.Range['N' + IntToStr(row_0)].Value := VarToStr(cxGrid1DBBandedTableView1.Controller.SelectedRows[i].Values[cxGrid1DBBandedTableView1node_end_name.Index]);
      exWks.Range['O' + IntToStr(row_0)].Value := cxGrid1DBBandedTableView1.Controller.SelectedRows[i].Values[cxGrid1DBBandedTableView1fact_weight.Index];
      exWks.Range['P' + IntToStr(row_0)].Value := cxGrid1DBBandedTableView1.Controller.SelectedRows[i].Values[cxGrid1DBBandedTableView1calc_weight.Index];
      exWks.Range['Q' + IntToStr(row_0)].Value := cxGrid1DBBandedTableView1.Controller.SelectedRows[i].Values[cxGrid1DBBandedTableView1kargo_capacity.Index];
      exWks.Range['R' + IntToStr(row_0)].Value := VarToStr(cxGrid1DBBandedTableView1.Controller.SelectedRows[i].Values[cxGrid1DBBandedTableView1kargoETSNG_name.Index]);
      exWks.Range['S' + IntToStr(row_0)].Value := VarToStr(cxGrid1DBBandedTableView1.Controller.SelectedRows[i].Values[cxGrid1DBBandedTableView1brief_name.Index]);
      exWks.Range['T' + IntToStr(row_0)].Value := cxGrid1DBBandedTableView1.Controller.SelectedRows[i].Values[cxGrid1DBBandedTableView1transport_pay.Index];

      Q_sf.Close;
      Q_sf.Parameters.ParamByName('number_doc').Value := VarToStr(cxGrid1DBBandedTableView1.Controller.SelectedRows[i].Values[cxGrid1DBBandedTableView1num_document_pref1.Index]) + VarToStr(cxGrid1DBBandedTableView1.Controller.SelectedRows[i].Values[cxGrid1DBBandedTableView1num_document1.Index]);
      Q_sf.Parameters.ParamByName('vagon_num').Value := VarToStr(cxGrid1DBBandedTableView1.Controller.SelectedRows[i].Values[cxGrid1DBBandedTableView1num_vagon.Index]);
      Q_sf.Parameters.ParamByName('set_grant').Value := 0;
      Q_sf.Open;
      if Q_sf.RecordCount > 0 then begin
        exWks.Range['U' + IntToStr(row_0)].Value := Q_sf.FieldByName('fact_num').AsString;
        exWks.Range['V' + IntToStr(row_0)].Value := Q_sf.FieldByName('fact_date').Value;
      end;

      Q.Close;
      Q.Parameters.ParamByName('dueParentDocNum').Value := VarToStr(cxGrid1DBBandedTableView1.Controller.SelectedRows[i].Values[cxGrid1DBBandedTableView1num_document_pref1.Index]) + VarToStr(cxGrid1DBBandedTableView1.Controller.SelectedRows[i].Values[cxGrid1DBBandedTableView1num_document1.Index]);
      Q.Parameters.ParamByName('dueNote').Value := VarToStr(cxGrid1DBBandedTableView1.Controller.SelectedRows[i].Values[cxGrid1DBBandedTableView1num_vagon.Index]);
      Q.Open;

      if Q.RecordCount > 0 then begin
        exWks.Range['W' + IntToStr(row_0)].Value := Q.FieldByName('cumTypeName').AsString;
        exWks.Range['X' + IntToStr(row_0)].Value := Q.FieldByName('cumNumber').AsString;
        exWks.Range['Y' + IntToStr(row_0)].Value := Q.FieldByName('cumDateCreate').Value;
        exWks.Range['Z' + IntToStr(row_0)].Value := Q.FieldByName('dueSum').Value;
      end;

      Q_sf.Close;
      Q_sf.Parameters.ParamByName('number_doc').Value := VarToStr(cxGrid1DBBandedTableView1.Controller.SelectedRows[i].Values[cxGrid1DBBandedTableView1num_document_pref1.Index]) + VarToStr(cxGrid1DBBandedTableView1.Controller.SelectedRows[i].Values[cxGrid1DBBandedTableView1num_document1.Index]);
      Q_sf.Parameters.ParamByName('vagon_num').Value := VarToStr(cxGrid1DBBandedTableView1.Controller.SelectedRows[i].Values[cxGrid1DBBandedTableView1num_vagon.Index]);
      Q_sf.Parameters.ParamByName('set_grant').Value := 1;
      Q_sf.Open;
      if Q_sf.RecordCount > 0 then begin
        exWks.Range['AA' + IntToStr(row_0)].Value := Q_sf.FieldByName('fact_num').AsString;
        exWks.Range['AB' + IntToStr(row_0)].Value := Q_sf.FieldByName('fact_date').Value;
      end;

      exWks.Range['AC' + IntToStr(row_0)].Value := VarToStr(cxGrid1DBBandedTableView1.Controller.SelectedRows[i].Values[cxGrid1DBBandedTableView1file_load_info.Index]);
      exWks.Range['AD' + IntToStr(row_0)].Value := VarToStr(cxGrid1DBBandedTableView1.Controller.SelectedRows[i].Values[cxGrid1DBBandedTableView1datpr.Index]);
      exWks.Range['AE' + IntToStr(row_0)].Value := VarToStr(cxGrid1DBBandedTableView1.Controller.SelectedRows[i].Values[cxGrid1DBBandedTableView1node_end_SNG_name.Index]);
      exWks.Range['AF' + IntToStr(row_0)].Value := VarToStr(cxGrid1DBBandedTableView1.Controller.SelectedRows[i].Values[cxGrid1DBBandedTableView1state_begin_name.Index]);
      exWks.Range['AG' + IntToStr(row_0)].Value := VarToStr(cxGrid1DBBandedTableView1.Controller.SelectedRows[i].Values[cxGrid1DBBandedTableView1state_end_name.Index]);
      exWks.Range['AH' + IntToStr(row_0)].Value := VarToStr(cxGrid1DBBandedTableView1.Controller.SelectedRows[i].Values[cxGrid1DBBandedTableView1date_delivery.Index]);
      exWks.Range['AI' + IntToStr(row_0)].Value := VarToStr(cxGrid1DBBandedTableView1.Controller.SelectedRows[i].Values[cxGrid1DBBandedTableView1payer_cod.Index]);
      exWks.Range['AJ' + IntToStr(row_0)].Value := VarToStr(cxGrid1DBBandedTableView1.Controller.SelectedRows[i].Values[cxGrid1DBBandedTableView1road_begin_name.Index]);
      exWks.Range['AK' + IntToStr(row_0)].Value := VarToStr(cxGrid1DBBandedTableView1.Controller.SelectedRows[i].Values[cxGrid1DBBandedTableView1road_end_name.Index]);
      exWks.Range['AL' + IntToStr(row_0)].Value := VarToStr(cxGrid1DBBandedTableView1.Controller.SelectedRows[i].Values[cxGrid1DBBandedTableView1etran_owner_name.Index]);
      exWks.Range['AM' + IntToStr(row_0)].Value := VarToStr(cxGrid1DBBandedTableView1.Controller.SelectedRows[i].Values[cxGrid1DBBandedTableView1els_cod.Index]);

      ShowTextMessage('Осталось: ' + IntToStr(cxGrid1DBBandedTableView1.Controller.SelectedRowCount - 1 - i) + ' строк.' , False);

      if (cxGrid1DBBandedTableView1.Controller.SelectedRowCount - 1 - i) <> 0 then begin
        xCopyRow(exApp,row_0 + 1,row_0 +1);
        inc(row_0);
      end;
    end;
    exApp.Rows[IntToStr(row_0 + 1) + ':' + IntToStr(row_0 + 1)].Select;
    exApp.Selection.Delete;
    exApp.ScreenUpdating := True;
    exApp.Visible := True;
    exWks.Range['A1'].Select;
  finally
    ShowTextMessage();
    Q_sf.Free;
    ETRAN.Free;
    Q.Free;
    VarClear(exWks); VarClear(exApp);
  end;
end;

procedure TfmFact.dxBarButton_ToZFTOScoreClick(Sender: TObject);
var      Q : TADOQuery;
         i : integer;
 show_form : boolean;
begin
  try
    Q := TADOQuery.Create(nil);
    Q.Connection := fmMain.Lis;
    Q.SQL.Add('SELECT * FROM zfto_score_table WHERE vagon_num = :vagon_num AND number_doc = :number_doc');
    Q.Parameters.ParamByName('vagon_num').Value  := cxGrid1DBBandedTableView1num_vagon.DataBinding.Field.AsInteger;
    Q.Parameters.ParamByName('number_doc').Value := cxGrid1DBBandedTableView1num_document_pref1.DataBinding.Field.AsString + cxGrid1DBBandedTableView1num_document1.DataBinding.Field.AsString;
    Q.Open;
    if Q.RecordCount = 0 then begin
      Application.MessageBox('Вагон в перечнях к сч-ф. ЦФТО ненайден!', 'Внимание!!!', MB_OK+MB_ICONWARNING);
    end else begin
      show_form := False;
      for i:=0 to fmMain.MDIChildCount-1 do
        if (fmMain.MDIChildren[i].ClassName = 'TfmZFTOScore') then begin
          fmMain.MDIChildren[i].Show;
          show_form := True;
        end;
      if not show_form then
        fmZFTOScore := TfmZFTOScore.Create(Application, False);
      fmZFTOScore._SetFactInc(Q.FieldByName('zfto_score_id').AsInteger);
      fmZFTOScore._SetFactIncTable(Q.FieldByName('zfto_score_table_id').AsInteger);
    end;
  finally
    Q.Free;
  end;
end;

procedure TfmFact.ADOFactAllExecuteComplete(Connection: TADOConnection; RecordsAffected: Integer; const Error: Error; var EventStatus: TEventStatus; const Command: _Command; const Recordset: _Recordset);
begin
  if EventStatus = esErrorsOccured then begin
    ShowTextMessage('', True);
    Screen.Cursor := crDefault;
  end;
end;


end.


