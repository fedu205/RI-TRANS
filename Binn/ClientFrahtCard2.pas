unit ClientFrahtCard2;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics, Default,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, dxSkinsCore, dxSkinBlack, dxSkinBlue, dxSkinBlueprint, dxSkinCaramel, dxSkinCoffee, dxSkinDarkRoom,
  dxSkinDarkSide, dxSkinDevExpressDarkStyle, dxSkinDevExpressStyle, dxSkinFoggy, dxSkinGlassOceans, dxSkinHighContrast, dxSkiniMaginary, dxSkinLilian,
  dxSkinLiquidSky, dxSkinLondonLiquidSky, dxSkinMcSkin, dxSkinMetropolis, dxSkinMetropolisDark, dxSkinMoneyTwins, dxSkinOffice2007Black,
  dxSkinOffice2007Blue, dxSkinOffice2007Green, dxSkinOffice2007Pink, dxSkinOffice2007Silver, dxSkinOffice2010Black, dxSkinOffice2010Blue,
  dxSkinOffice2010Silver, dxSkinOffice2013DarkGray, dxSkinOffice2013LightGray, dxSkinOffice2013White, dxSkinOffice2016Colorful, dxSkinOffice2016Dark,
  dxSkinPumpkin, dxSkinSeven, dxSkinSevenClassic, dxSkinSharp, dxSkinSharpPlus, dxSkinSilver, dxSkinSpringTime, dxSkinStardust, dxSkinSummer2008,
  dxSkinTheAsphaltWorld, dxSkinsDefaultPainters, dxSkinValentine, dxSkinVisualStudio2013Blue, dxSkinVisualStudio2013Dark, dxSkinVisualStudio2013Light,
  dxSkinVS2010, dxSkinWhiteprint, dxSkinXmas2008Blue, dxSkinscxPCPainter, dxSkinsdxBarPainter, dxBar, cxClasses, dxBarBuiltInMenu, cxGraphics,
  cxControls, cxLookAndFeels, cxLookAndFeelPainters, cxPC, cxStyles, cxCustomData, cxFilter, cxData, cxDataStorage, cxEdit, cxNavigator, Data.DB, cxDBData,
  cxCurrencyEdit, cxSplitter, cxGridLevel, cxGridCustomTableView, cxGridTableView, cxGridBandedTableView, cxGridDBBandedTableView, cxGridCustomView,
  cxGrid, Data.Win.ADODB, cxCalendar, cxGridChartView, cxCustomPivotGrid, cxDBPivotGrid, Vcl.ExtCtrls, dxmdaset, cxPivotGridCustomDataSet,
  cxPivotGridDrillDownDataSet, cxPivotGridChartConnection, cxCheckBox, cxContainer, Vcl.Menus, Vcl.StdCtrls, cxButtons, cxButtonEdit, cxTextEdit,
  cxMaskEdit, cxDropDownEdit, cxCheckComboBox, Datasnap.DBClient, ComObj, dxSkinTheBezier,
  cxPropertiesStore, cxColorComboBox, dxDateRanges, dxSkinOffice2019Colorful, cxExportPivotGridLink, dxScrollbarAnnotations, dxCoreGraphics;

type
  TfmClientFrahtCard2 = class(TForm)
    dxBarManager1: TdxBarManager;
    dxBarManager1Bar1: TdxBar;
    dxBarButton1: TdxBarButton;
    dxBarButton2: TdxBarButton;
    dxBarSubItem1: TdxBarSubItem;
    dxBarSubItem2: TdxBarSubItem;
    dxBarButton3: TdxBarButton;
    dxBarButton4: TdxBarButton;
    dxBarSubItem3: TdxBarSubItem;
    dxBarSubItem4: TdxBarSubItem;
    cxPageControl1: TcxPageControl;
    cxTabSheet2: TcxTabSheet;
    cxTabSheet5: TcxTabSheet;
    cxTabSheet6: TcxTabSheet;
    cxTabSheet7: TcxTabSheet;
    cxTabSheet3: TcxTabSheet;
    cxGrid3: TcxGrid;
    cxGrid3DBBandedTableView1: TcxGridDBBandedTableView;
    cxGrid3DBBandedTableView1shaping_rate_id: TcxGridDBBandedColumn;
    cxGrid3DBBandedTableView1bargain_id: TcxGridDBBandedColumn;
    cxGrid3DBBandedTableView1bargain_date_period: TcxGridDBBandedColumn;
    cxGrid3DBBandedTableView1bargain_date_period_finance: TcxGridDBBandedColumn;
    cxGrid3DBBandedTableView1bargain_date_period_service: TcxGridDBBandedColumn;
    cxGrid3DBBandedTableView1bargain_correct_group: TcxGridDBBandedColumn;
    cxGrid3DBBandedTableView1bargain_correct_type_name: TcxGridDBBandedColumn;
    cxGrid3DBBandedTableView1contract_agent_cod: TcxGridDBBandedColumn;
    cxGrid3DBBandedTableView1firm_self_agent_name: TcxGridDBBandedColumn;
    cxGrid3DBBandedTableView1firm_customer_agent_name: TcxGridDBBandedColumn;
    cxGrid3DBBandedTableView1contract_agent_date_begin: TcxGridDBBandedColumn;
    cxGrid3DBBandedTableView1set_return: TcxGridDBBandedColumn;
    cxGrid3DBBandedTableView1set_self_rate: TcxGridDBBandedColumn;
    cxGrid3DBBandedTableView1service_type: TcxGridDBBandedColumn;
    cxGrid3DBBandedTableView1shaping_rate_count: TcxGridDBBandedColumn;
    cxGrid3DBBandedTableView1shaping_rate_sum: TcxGridDBBandedColumn;
    cxGrid3DBBandedTableView1service_type_name: TcxGridDBBandedColumn;
    cxGrid3DBBandedTableView1shaping_rate_type_name: TcxGridDBBandedColumn;
    cxGrid3DBBandedTableView1type_calc_sum_name: TcxGridDBBandedColumn;
    cxGrid3DBBandedTableView1agent_amount_fact_calc: TcxGridDBBandedColumn;
    cxGrid3DBBandedTableView1agent_amount_units_fact: TcxGridDBBandedColumn;
    cxGrid3DBBandedTableView1agent_sum_fact_real: TcxGridDBBandedColumn;
    cxGrid3DBBandedTableView1agent_sum_fact_NDS_real: TcxGridDBBandedColumn;
    cxGrid3DBBandedTableView1agent_sum_fact_notNDS_real: TcxGridDBBandedColumn;
    cxGrid3DBBandedTableView1agent_sum_fact: TcxGridDBBandedColumn;
    cxGrid3DBBandedTableView1agent_sum_fact_NDS: TcxGridDBBandedColumn;
    cxGrid3DBBandedTableView1agent_sum_fact_notNDS: TcxGridDBBandedColumn;
    cxGrid3DBBandedTableView1agent_sum_fact_RUB: TcxGridDBBandedColumn;
    cxGrid3DBBandedTableView1agent_NDS_RUB: TcxGridDBBandedColumn;
    cxGrid3DBBandedTableView1agent_notNDS_RUB: TcxGridDBBandedColumn;
    cxGrid3DBBandedTableView1brief_name: TcxGridDBBandedColumn;
    cxGrid3DBBandedTableView1node_begin_name: TcxGridDBBandedColumn;
    cxGrid3DBBandedTableView1node_end_name: TcxGridDBBandedColumn;
    cxGrid3DBBandedTableView1state_begin_name: TcxGridDBBandedColumn;
    cxGrid3DBBandedTableView1state_end_name: TcxGridDBBandedColumn;
    cxGrid3DBBandedTableView1agreement_name: TcxGridDBBandedColumn;
    cxGrid3DBBandedTableView1kargoETSNG_name: TcxGridDBBandedColumn;
    cxGrid3DBBandedTableView1kargoETSNG_group_name: TcxGridDBBandedColumn;
    cxGrid3DBBandedTableView1budget_name: TcxGridDBBandedColumn;
    cxGrid3DBBandedTableView1ed_izm_name: TcxGridDBBandedColumn;
    cxGrid3DBBandedTableView1return_name: TcxGridDBBandedColumn;
    cxGrid3DBBandedTableView1shaping_rate_nds_name: TcxGridDBBandedColumn;
    cxGrid3DBBandedTableView1date_enter: TcxGridDBBandedColumn;
    cxGrid3DBBandedTableView1global_color: TcxGridDBBandedColumn;
    cxGrid3DBBandedTableView1FIO_users: TcxGridDBBandedColumn;
    cxGrid3DBBandedTableView1currency_id: TcxGridDBBandedColumn;
    cxGrid3DBBandedTableView1bargain_contract_cod: TcxGridDBBandedColumn;
    cxGrid3DBBandedTableView1bargain_firm_customer_name: TcxGridDBBandedColumn;
    cxGrid3DBBandedTableView1bargain_firm_self_name: TcxGridDBBandedColumn;
    cxGrid3DBBandedTableView1set_bargain_block: TcxGridDBBandedColumn;
    cxGrid3DBBandedTableView1bargain_cod: TcxGridDBBandedColumn;
    cxGrid3DBBandedTableView1five_days_zfto_name: TcxGridDBBandedColumn;
    cxGrid3DBBandedTableView1contract_agent_id: TcxGridDBBandedColumn;
    cxGrid3Level1: TcxGridLevel;
    cxGrid6: TcxGrid;
    cxGrid6DBBandedTableView1: TcxGridDBBandedTableView;
    cxGrid6DBBandedTableView1fact_id: TcxGridDBBandedColumn;
    cxGrid6DBBandedTableView1num_document: TcxGridDBBandedColumn;
    cxGrid6DBBandedTableView1num_vagon: TcxGridDBBandedColumn;
    cxGrid6DBBandedTableView1sum_fact_RUB: TcxGridDBBandedColumn;
    cxGrid6Level1: TcxGridLevel;
    cxSplitter1: TcxSplitter;
    cxGrid1: TcxGrid;
    cxGrid1DBBandedTableView1: TcxGridDBBandedTableView;
    cxGrid1DBBandedTableView1shaping_rate_id: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1bargain_id: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1bargain_date_period: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1bargain_date_period_finance: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1bargain_date_period_service: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1bargain_correct_group: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1bargain_correct_type_name: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1contract_agent_cod: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1firm_self_agent_name: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1firm_customer_agent_name: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1contract_agent_date_begin: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1set_return: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1set_self_rate: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1service_type: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1shaping_rate_count: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1shaping_rate_sum: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1service_type_name: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1shaping_rate_type_name: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1type_calc_sum_name: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1agent_amount_fact_calc: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1agent_amount_units_fact: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1agent_sum_fact_real: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1agent_sum_fact_NDS_real: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1agent_sum_fact_notNDS_real: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1agent_sum_fact: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1agent_sum_fact_NDS: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1agent_sum_fact_notNDS: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1agent_sum_fact_RUB: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1agent_NDS_RUB: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1agent_notNDS_RUB: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1brief_name: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1node_begin_name: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1node_end_name: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1state_begin_name: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1state_end_name: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1agreement_name: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1kargoETSNG_name: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1kargoETSNG_group_name: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1budget_name: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1ed_izm_name: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1return_name: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1shaping_rate_nds_name: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1date_enter: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1global_color: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1FIO_users: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1currency_id: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1bargain_contract_cod: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1bargain_firm_customer_name: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1bargain_firm_self_name: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1set_bargain_block: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1bargain_cod: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1five_days_zfto_name: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1contract_agent_id: TcxGridDBBandedColumn;
    cxGrid1Level1: TcxGridLevel;
    cxGrid2: TcxGrid;
    cxGrid2DBBandedTableView1: TcxGridDBBandedTableView;
    cxGrid2DBBandedTableView1fact_id: TcxGridDBBandedColumn;
    cxGrid2DBBandedTableView1num_document: TcxGridDBBandedColumn;
    cxGrid2DBBandedTableView1num_vagon: TcxGridDBBandedColumn;
    cxGrid2DBBandedTableView1sum_fact_RUB: TcxGridDBBandedColumn;
    cxGrid2Level2: TcxGridLevel;
    cxSplitter2: TcxSplitter;
    SP_shaping_rate_get_list_client: TADOStoredProc;
    DS_shaping_rate_get_list_client: TDataSource;
    SP_shaping_rate_get_list_agent: TADOStoredProc;
    DS_shaping_rate_get_list_agent: TDataSource;
    dxBarButton5: TdxBarButton;
    dxBarPopupMenu_3: TdxBarPopupMenu;
    dxBarSubItem5: TdxBarSubItem;
    dxBarPopupMenu_6: TdxBarPopupMenu;
    dxBarSubItem6: TdxBarSubItem;
    dxBarPopupMenu_1: TdxBarPopupMenu;
    dxBarButton12: TdxBarButton;
    dxBarSubItem7: TdxBarSubItem;
    dxBarButton13: TdxBarButton;
    dxBarButton14: TdxBarButton;
    dxBarPopupMenu_2: TdxBarPopupMenu;
    dxBarSubItem8: TdxBarSubItem;
    dxBarButton18: TdxBarButton;
    dxBarButton19: TdxBarButton;
    cxGrid3DBBandedTableView1vested_remainder: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1vested_remainder: TcxGridDBBandedColumn;
    dxBarButton20: TdxBarButton;
    dxBarSubItem9: TdxBarSubItem;
    dxBarButton22: TdxBarButton;
    dxBarButton23: TdxBarButton;
    dxBarButton24: TdxBarButton;
    dxBarButton25: TdxBarButton;
    dxBarButton26: TdxBarButton;
    dxBarButton27: TdxBarButton;
    Query_FactClient: TADOQuery;
    DS_FactClient: TDataSource;
    Query_FactAgent: TADOQuery;
    DS_FactAgent: TDataSource;
    DS_shaping_rate_pivot: TDataSource;
    SP_shaping_rate_pivot: TADOStoredProc;
    cxPivotGridChartConnection1: TcxPivotGridChartConnection;
    cxPivotGridDrillDownDataSet1: TcxPivotGridDrillDownDataSet;
    DataSource1: TDataSource;
    cxSplitter3: TcxSplitter;
    Panel2: TPanel;
    cxGrid8: TcxGrid;
    cxGrid8DBBandedTableView1: TcxGridDBBandedTableView;
    cxGrid8DBBandedTableView1RecId: TcxGridDBBandedColumn;
    cxGrid8DBBandedTableView1DBBandedColumn: TcxGridDBBandedColumn;
    cxGrid8DBBandedTableView1DBBandedColumn1: TcxGridDBBandedColumn;
    cxGrid8DBBandedTableView1DBBandedColumn2: TcxGridDBBandedColumn;
    cxGrid8DBBandedTableView1DBBandedColumn3: TcxGridDBBandedColumn;
    cxGrid8DBBandedTableView1DBBandedColumn4: TcxGridDBBandedColumn;
    cxGrid8DBBandedTableView1DBBandedColumn5: TcxGridDBBandedColumn;
    cxGrid8DBBandedTableView1DBBandedColumn6: TcxGridDBBandedColumn;
    cxGrid8DBBandedTableView1DBBandedColumn7: TcxGridDBBandedColumn;
    cxGrid8DBBandedTableView1DBBandedColumn8: TcxGridDBBandedColumn;
    cxGrid8DBBandedTableView1DBBandedColumn9: TcxGridDBBandedColumn;
    cxGrid8DBBandedTableView1DBBandedColumn10: TcxGridDBBandedColumn;
    cxGrid8DBBandedTableView1RUB: TcxGridDBBandedColumn;
    cxGrid8DBBandedTableView1DBBandedColumn11: TcxGridDBBandedColumn;
    cxGrid8DBBandedTableView1DBBandedColumn12: TcxGridDBBandedColumn;
    cxGrid8DBBandedTableView1DBBandedColumn13: TcxGridDBBandedColumn;
    cxGrid8DBBandedTableView1DBBandedColumn14: TcxGridDBBandedColumn;
    cxGrid8DBBandedTableView1DBBandedColumn15: TcxGridDBBandedColumn;
    cxGrid8DBBandedTableView1DBBandedColumn16: TcxGridDBBandedColumn;
    cxGrid8DBBandedTableView1service_type: TcxGridDBBandedColumn;
    cxGrid8Level2: TcxGridLevel;
    Panel3: TPanel;
    cxDBPivotGrid1: TcxDBPivotGrid;
    cxDBPivotGrid1bargain_date_period: TcxDBPivotGridField;
    cxDBPivotGrid1bargain_date_period_finance: TcxDBPivotGridField;
    cxDBPivotGrid1bargain_contract_cod: TcxDBPivotGridField;
    cxDBPivotGrid1bargain_firm_customer_name: TcxDBPivotGridField;
    cxDBPivotGrid1bargain_firm_self_name: TcxDBPivotGridField;
    cxDBPivotGrid1contract_agent_cod: TcxDBPivotGridField;
    cxDBPivotGrid1firm_self_agent_name: TcxDBPivotGridField;
    cxDBPivotGrid1firm_customer_agent_name: TcxDBPivotGridField;
    cxDBPivotGrid1service_type_name: TcxDBPivotGridField;
    cxDBPivotGrid1agent_amount_fact_calc: TcxDBPivotGridField;
    cxDBPivotGrid1agent_amount_units_fact: TcxDBPivotGridField;
    cxDBPivotGrid1agent_sum_fact_RUB: TcxDBPivotGridField;
    cxDBPivotGrid1node_begin_name: TcxDBPivotGridField;
    cxDBPivotGrid1node_end_name: TcxDBPivotGridField;
    cxDBPivotGrid1kargoETSNG_name: TcxDBPivotGridField;
    cxDBPivotGrid1kargoETSNG_group_name: TcxDBPivotGridField;
    cxDBPivotGrid1budget_name: TcxDBPivotGridField;
    cxDBPivotGrid1FIO_users: TcxDBPivotGridField;
    cxDBPivotGrid1Field1: TcxDBPivotGridField;
    Panel4: TPanel;
    cxGrid7: TcxGrid;
    cxGrid7ChartView1: TcxGridChartView;
    cxGrid7Level1: TcxGridLevel;
    cxSplitter4: TcxSplitter;
    cxDBPivotGrid2: TcxDBPivotGrid;
    DS_ClientFrahtCard_Vagon_Pivot: TDataSource;
    sp_ClientFrahtCard_Vagon_Pivot: TADOStoredProc;
    cxGrid4Level1: TcxGridLevel;
    cxGrid4: TcxGrid;
    Panel1: TPanel;
    cxCheckComboBox2: TcxCheckComboBox;
    cxButtonEdit5: TcxButtonEdit;
    cxButtonEdit2: TcxButtonEdit;
    cxButton4: TcxButton;
    cxGrid4DBBandedTableView1: TcxGridDBBandedTableView;
    sp_ClientFrahtCard_Vagon_1: TADOStoredProc;
    DS_ClientFrahtCard_Vagon_1: TDataSource;
    cxGrid4DBBandedTableView1bargain_id: TcxGridDBBandedColumn;
    cxGrid4DBBandedTableView1fact_id: TcxGridDBBandedColumn;
    cxGrid4DBBandedTableView1num_document: TcxGridDBBandedColumn;
    cxGrid4DBBandedTableView1num_vagon: TcxGridDBBandedColumn;
    cxGrid4DBBandedTableView1num_konten: TcxGridDBBandedColumn;
    cxGrid4DBBandedTableView1date_from_to: TcxGridDBBandedColumn;
    cxGrid4DBBandedTableView1datpr: TcxGridDBBandedColumn;
    cxGrid4DBBandedTableView1date_delivery: TcxGridDBBandedColumn;
    cxGrid4DBBandedTableView1kargo_capacity: TcxGridDBBandedColumn;
    cxGrid4DBBandedTableView1fact_node_begin_name: TcxGridDBBandedColumn;
    cxGrid4DBBandedTableView1fact_node_begin_cod: TcxGridDBBandedColumn;
    cxGrid4DBBandedTableView1fact_node_end_name: TcxGridDBBandedColumn;
    cxGrid4DBBandedTableView1fact_node_end_cod: TcxGridDBBandedColumn;
    cxGrid4DBBandedTableView1fact_users_comment: TcxGridDBBandedColumn;
    cxGrid4DBBandedTableView1fact_weight: TcxGridDBBandedColumn;
    cxGrid4DBBandedTableView1consolidated_weight: TcxGridDBBandedColumn;
    cxGrid4DBBandedTableView1bargain_cod: TcxGridDBBandedColumn;
    cxGrid4DBBandedTableView1date_period: TcxGridDBBandedColumn;
    cxGrid4DBBandedTableView1date_period_finance: TcxGridDBBandedColumn;
    cxGrid4DBBandedTableView1contract_id: TcxGridDBBandedColumn;
    cxGrid4DBBandedTableView1node_begin_name: TcxGridDBBandedColumn;
    cxGrid4DBBandedTableView1node_begin_cod: TcxGridDBBandedColumn;
    cxGrid4DBBandedTableView1node_end_name: TcxGridDBBandedColumn;
    cxGrid4DBBandedTableView1node_end_cod: TcxGridDBBandedColumn;
    cxGrid4DBBandedTableView1contract_cod: TcxGridDBBandedColumn;
    cxGrid4DBBandedTableView1firm_self_name: TcxGridDBBandedColumn;
    cxGrid4DBBandedTableView1firm_customer_name: TcxGridDBBandedColumn;
    cxGrid4DBBandedTableView1calc_weight: TcxGridDBBandedColumn;
    cxGrid4DBBandedTableView1sum_fact_RUB: TcxGridDBBandedColumn;
    cxGrid4DBBandedTableView1sum_fact_nds_RUB: TcxGridDBBandedColumn;
    cxGrid4DBBandedTableView1sum_fact_not_nds_RUB: TcxGridDBBandedColumn;
    cxGrid4DBBandedTableView1rate_val: TcxGridDBBandedColumn;
    cxGrid4DBBandedTableView1five_days_zfto_name: TcxGridDBBandedColumn;
    cxGrid4DBBandedTableView1nds_name: TcxGridDBBandedColumn;
    cxGrid4DBBandedTableView1bargain_note: TcxGridDBBandedColumn;
    cxGrid4DBBandedTableView1budget_name: TcxGridDBBandedColumn;
    cxGrid4DBBandedTableView1budget_type_cod: TcxGridDBBandedColumn;
    cxGrid4DBBandedTableView1budget_type_name: TcxGridDBBandedColumn;
    cxGrid4DBBandedTableView1service_type: TcxGridDBBandedColumn;
    cxGrid4DBBandedTableView1service_type_name: TcxGridDBBandedColumn;
    cxGrid4DBBandedTableView1kargoETSNG_name: TcxGridDBBandedColumn;
    cxGrid4DBBandedTableView1kargoETSNG_cod: TcxGridDBBandedColumn;
    cxGrid4DBBandedTableView1vagon_id: TcxGridDBBandedColumn;
    cxGrid4DBBandedTableView1rod_vagon_name: TcxGridDBBandedColumn;
    cxGrid4DBBandedTableView1owner_name: TcxGridDBBandedColumn;
    cxGrid4DBBandedTableView1owner_contract_cod: TcxGridDBBandedColumn;
    cxGrid4DBBandedTableView1type_park_name: TcxGridDBBandedColumn;
    cxGrid4DBBandedTableView1type_sps_name: TcxGridDBBandedColumn;
    dxBarPopupMenu_4: TdxBarPopupMenu;
    dxBarSubItem10: TdxBarSubItem;
    sp_ClientFrahtCard_Vagon_2: TADOStoredProc;
    DS_ClientFrahtCard_Vagon_2: TDataSource;
    cxTabSheet1: TcxTabSheet;
    Panel5: TPanel;
    cxCheckComboBox1: TcxCheckComboBox;
    cxButtonEdit1: TcxButtonEdit;
    cxButtonEdit3: TcxButtonEdit;
    cxButton1: TcxButton;
    cxGrid5Level1: TcxGridLevel;
    cxGrid5: TcxGrid;
    cxGrid5DBBandedTableView1: TcxGridDBBandedTableView;
    cxGrid5DBBandedTableView1bargain_id: TcxGridDBBandedColumn;
    cxGrid5DBBandedTableView1fact_id: TcxGridDBBandedColumn;
    cxGrid5DBBandedTableView1num_document: TcxGridDBBandedColumn;
    cxGrid5DBBandedTableView1num_vagon: TcxGridDBBandedColumn;
    cxGrid5DBBandedTableView1num_konten: TcxGridDBBandedColumn;
    cxGrid5DBBandedTableView1date_from_to: TcxGridDBBandedColumn;
    cxGrid5DBBandedTableView1datpr: TcxGridDBBandedColumn;
    cxGrid5DBBandedTableView1date_delivery: TcxGridDBBandedColumn;
    cxGrid5DBBandedTableView1kargo_capacity: TcxGridDBBandedColumn;
    cxGrid5DBBandedTableView1fact_node_begin_name: TcxGridDBBandedColumn;
    cxGrid5DBBandedTableView1fact_node_begin_cod: TcxGridDBBandedColumn;
    cxGrid5DBBandedTableView1fact_node_end_name: TcxGridDBBandedColumn;
    cxGrid5DBBandedTableView1fact_node_end_cod: TcxGridDBBandedColumn;
    cxGrid5DBBandedTableView1fact_users_comment: TcxGridDBBandedColumn;
    cxGrid5DBBandedTableView1fact_weight: TcxGridDBBandedColumn;
    cxGrid5DBBandedTableView1consolidated_weight: TcxGridDBBandedColumn;
    cxGrid5DBBandedTableView1bargain_cod: TcxGridDBBandedColumn;
    cxGrid5DBBandedTableView1date_period: TcxGridDBBandedColumn;
    cxGrid5DBBandedTableView1date_period_finance: TcxGridDBBandedColumn;
    cxGrid5DBBandedTableView1contract_id: TcxGridDBBandedColumn;
    cxGrid5DBBandedTableView1node_begin_name: TcxGridDBBandedColumn;
    cxGrid5DBBandedTableView1node_begin_cod: TcxGridDBBandedColumn;
    cxGrid5DBBandedTableView1node_end_name: TcxGridDBBandedColumn;
    cxGrid5DBBandedTableView1node_end_cod: TcxGridDBBandedColumn;
    cxGrid5DBBandedTableView1contract_cod: TcxGridDBBandedColumn;
    cxGrid5DBBandedTableView1firm_self_name: TcxGridDBBandedColumn;
    cxGrid5DBBandedTableView1firm_customer_name: TcxGridDBBandedColumn;
    cxGrid5DBBandedTableView1bargain_note: TcxGridDBBandedColumn;
    cxGrid5DBBandedTableView1kargoETSNG_name: TcxGridDBBandedColumn;
    cxGrid5DBBandedTableView1kargoETSNG_cod: TcxGridDBBandedColumn;
    cxGrid5DBBandedTableView1vagon_id: TcxGridDBBandedColumn;
    cxGrid5DBBandedTableView1rod_vagon_name: TcxGridDBBandedColumn;
    cxGrid5DBBandedTableView1owner_name: TcxGridDBBandedColumn;
    cxGrid5DBBandedTableView1owner_contract_cod: TcxGridDBBandedColumn;
    cxGrid5DBBandedTableView1type_park_name: TcxGridDBBandedColumn;
    cxGrid5DBBandedTableView1type_sps_name: TcxGridDBBandedColumn;
    cxGrid5DBBandedTableView1client_sum_RUB: TcxGridDBBandedColumn;
    cxGrid5DBBandedTableView1agent_sum_RUB: TcxGridDBBandedColumn;
    cxGrid5DBBandedTableView1comiss_sum_RUB: TcxGridDBBandedColumn;
    cxGrid5DBBandedTableView1client_sum_not_nds_RUB: TcxGridDBBandedColumn;
    cxGrid5DBBandedTableView1agent_sum_not_nds_RUB: TcxGridDBBandedColumn;
    cxGrid5DBBandedTableView1comiss_sum_not_nds_RUB: TcxGridDBBandedColumn;
    dxBarPopupMenu_5: TdxBarPopupMenu;
    dxBarSubItem11: TdxBarSubItem;
    dxBarButton34: TdxBarButton;
    dxBarButton35: TdxBarButton;
    dxBarButton36: TdxBarButton;
    cxDBPivotGrid2fact_id: TcxDBPivotGridField;
    cxDBPivotGrid2num_document: TcxDBPivotGridField;
    cxDBPivotGrid2num_vagon: TcxDBPivotGridField;
    cxDBPivotGrid2num_konten: TcxDBPivotGridField;
    cxDBPivotGrid2date_from_to: TcxDBPivotGridField;
    cxDBPivotGrid2datpr: TcxDBPivotGridField;
    cxDBPivotGrid2date_delivery: TcxDBPivotGridField;
    cxDBPivotGrid2kargo_capacity: TcxDBPivotGridField;
    cxDBPivotGrid2fact_node_begin_name: TcxDBPivotGridField;
    cxDBPivotGrid2fact_node_end_name: TcxDBPivotGridField;
    cxDBPivotGrid2fact_users_comment: TcxDBPivotGridField;
    cxDBPivotGrid2fact_weight: TcxDBPivotGridField;
    cxDBPivotGrid2consolidated_weight: TcxDBPivotGridField;
    cxDBPivotGrid2bargain_cod: TcxDBPivotGridField;
    cxDBPivotGrid2date_period: TcxDBPivotGridField;
    cxDBPivotGrid2date_period_finance: TcxDBPivotGridField;
    cxDBPivotGrid2node_begin_name: TcxDBPivotGridField;
    cxDBPivotGrid2node_end_name: TcxDBPivotGridField;
    cxDBPivotGrid2contract_cod: TcxDBPivotGridField;
    cxDBPivotGrid2firm_self_name: TcxDBPivotGridField;
    cxDBPivotGrid2firm_customer_name: TcxDBPivotGridField;
    cxDBPivotGrid2calc_weight: TcxDBPivotGridField;
    cxDBPivotGrid2sum_fact_RUB: TcxDBPivotGridField;
    cxDBPivotGrid2sum_fact_nds_RUB: TcxDBPivotGridField;
    cxDBPivotGrid2sum_fact_not_nds_RUB: TcxDBPivotGridField;
    cxDBPivotGrid2rate_val: TcxDBPivotGridField;
    cxDBPivotGrid2five_days_zfto_name: TcxDBPivotGridField;
    cxDBPivotGrid2nds_name: TcxDBPivotGridField;
    cxDBPivotGrid2bargain_note: TcxDBPivotGridField;
    cxDBPivotGrid2budget_name: TcxDBPivotGridField;
    cxDBPivotGrid2service_type_name: TcxDBPivotGridField;
    cxDBPivotGrid2kargoETSNG_name: TcxDBPivotGridField;
    cxDBPivotGrid2rod_vagon_name: TcxDBPivotGridField;
    cxDBPivotGrid2owner_name: TcxDBPivotGridField;
    cxDBPivotGrid2owner_contract_cod: TcxDBPivotGridField;
    cxDBPivotGrid2type_park_name: TcxDBPivotGridField;
    cxDBPivotGrid2type_sps_name: TcxDBPivotGridField;
    Panel6: TPanel;
    cxCheckComboBox3: TcxCheckComboBox;
    cxButtonEdit4: TcxButtonEdit;
    cxButtonEdit6: TcxButtonEdit;
    cxButton2: TcxButton;
    dxBarButton37: TdxBarButton;
    dxBarButton38: TdxBarButton;
    dxBarButton39: TdxBarButton;
    dxBarButton40: TdxBarButton;
    dxBarButton41: TdxBarButton;
    dxBarButton42: TdxBarButton;
    dxBarButton43: TdxBarButton;
    dxBarButton44: TdxBarButton;
    dxBarButton45: TdxBarButton;
    dxBarButton46: TdxBarButton;
    cxTabSheet4: TcxTabSheet;
    SP_vagon_full_info: TADOStoredProc;
    DS_Vagon_full_info: TDataSource;
    Panel7: TPanel;
    cxButtonEdit7: TcxButtonEdit;
    cxButton3: TcxButton;
    cxCheckComboBox4: TcxCheckComboBox;
    cxButtonEdit8: TcxButtonEdit;
    cxGrid9: TcxGrid;
    cxGrid9DBBandedTableView1: TcxGridDBBandedTableView;
    cxGrid9DBBandedTableView1id: TcxGridDBBandedColumn;
    cxGrid9DBBandedTableView1bargain_id: TcxGridDBBandedColumn;
    cxGrid9DBBandedTableView1fact_id: TcxGridDBBandedColumn;
    cxGrid9DBBandedTableView1fact_node_begin_cod: TcxGridDBBandedColumn;
    cxGrid9DBBandedTableView1client_firm_name: TcxGridDBBandedColumn;
    cxGrid9DBBandedTableView1agent_contract_cod: TcxGridDBBandedColumn;
    cxGrid9DBBandedTableView1fact_node_begin_name: TcxGridDBBandedColumn;
    cxGrid9DBBandedTableView1fact_node_end_name: TcxGridDBBandedColumn;
    cxGrid9DBBandedTableView1kargoETSNG_name: TcxGridDBBandedColumn;
    cxGrid9DBBandedTableView1kargoETSNG_group_name: TcxGridDBBandedColumn;
    cxGrid9DBBandedTableView1date_from_to: TcxGridDBBandedColumn;
    cxGrid9DBBandedTableView1set_bargain_weight: TcxGridDBBandedColumn;
    cxGrid9DBBandedTableView1budget_name: TcxGridDBBandedColumn;
    cxGrid9DBBandedTableView1rate_budget_cod: TcxGridDBBandedColumn;
    cxGrid9DBBandedTableView1sum_fact_not_nds_RUB: TcxGridDBBandedColumn;
    cxGrid9DBBandedTableView1sum_fact_nds_RUB: TcxGridDBBandedColumn;
    cxGrid9DBBandedTableView1sum_fact_RUB: TcxGridDBBandedColumn;
    cxGrid9DBBandedTableView1client_contract_cod: TcxGridDBBandedColumn;
    cxGrid9DBBandedTableView1date_period: TcxGridDBBandedColumn;
    cxGrid9DBBandedTableView1date_period_finance: TcxGridDBBandedColumn;
    cxGrid9DBBandedTableView1agent_firm_name: TcxGridDBBandedColumn;
    cxGrid9DBBandedTableView1FIO_users: TcxGridDBBandedColumn;
    cxGrid9DBBandedTableView1bargain_cod: TcxGridDBBandedColumn;
    cxGrid9DBBandedTableView1datpr: TcxGridDBBandedColumn;
    cxGrid9DBBandedTableView1fact_weight: TcxGridDBBandedColumn;
    cxGrid9DBBandedTableView1fact_node_end_cod: TcxGridDBBandedColumn;
    cxGrid9DBBandedTableView1vagon_owner_name: TcxGridDBBandedColumn;
    cxGrid9DBBandedTableView1bargain_budget_cod: TcxGridDBBandedColumn;
    cxGrid9DBBandedTableView1rod_vagon_name: TcxGridDBBandedColumn;
    cxGrid9DBBandedTableView1model_name: TcxGridDBBandedColumn;
    cxGrid9DBBandedTableView1vagon_id: TcxGridDBBandedColumn;
    cxGrid9DBBandedTableView1num_vagon: TcxGridDBBandedColumn;
    cxGrid9DBBandedTableView1type_park_name: TcxGridDBBandedColumn;
    cxGrid9DBBandedTableView1calc_weight: TcxGridDBBandedColumn;
    cxGrid9DBBandedTableView1brief_name: TcxGridDBBandedColumn;
    cxGrid9DBBandedTableView1comment6: TcxGridDBBandedColumn;
    cxGrid9DBBandedTableView1contract_id: TcxGridDBBandedColumn;
    cxGrid9DBBandedTableView1acontract_agent_id: TcxGridDBBandedColumn;
    cxGrid9Level1: TcxGridLevel;
    dxBarPopupMenu_9: TdxBarPopupMenu;
    dxBarSubItem12: TdxBarSubItem;
    dxBarButton51: TdxBarButton;
    dxBarButton52: TdxBarButton;
    dxBarButton53: TdxBarButton;
    dxBarButton54: TdxBarButton;
    dxBarButton55: TdxBarButton;
    dxBarSubItem13: TdxBarSubItem;
    dxBarButton56: TdxBarButton;
    dxBarButton57: TdxBarButton;
    dxBarButton58: TdxBarButton;
    dxBarButton59: TdxBarButton;
    cxGrid1DBBandedTableView1subdivision_name: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1zfto_sum_fact: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1calc_profit: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1calc_profit_USD: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1agreement_note: TcxGridDBBandedColumn;
    cxGrid3DBBandedTableView1calc_profit: TcxGridDBBandedColumn;
    cxGrid3DBBandedTableView1calc_profit_usd: TcxGridDBBandedColumn;
    cxGrid3DBBandedTableView1zfto_sum_fact: TcxGridDBBandedColumn;
    cxGrid3DBBandedTableView1agreement_note: TcxGridDBBandedColumn;
    cxGrid3DBBandedTableView1subdivision_name: TcxGridDBBandedColumn;
    cxGrid3DBBandedTableView1rod_vagon_name: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1rod_vagon_name: TcxGridDBBandedColumn;
    cxPropertiesStore1: TcxPropertiesStore;
    Panel8: TPanel;
    cxCheckComboBox5: TcxCheckComboBox;
    cxButtonEdit9: TcxButtonEdit;
    cxButton5: TcxButton;
    Panel9: TPanel;
    cxCheckComboBox6: TcxCheckComboBox;
    cxButtonEdit11: TcxButtonEdit;
    cxButton6: TcxButton;
    cxGrid1DBBandedTableView1shaping_rate_comment: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1agent_comment: TcxGridDBBandedColumn;
    cxTabSheet8: TcxTabSheet;
    SP_Agree: TADOStoredProc;
    DS_Agree: TDataSource;
    cxGrid10: TcxGrid;
    cxGrid10DBBandedTableView1: TcxGridDBBandedTableView;
    cxGrid10DBBandedTableView1bargain_id: TcxGridDBBandedColumn;
    cxGrid10DBBandedTableView1bargain_cod: TcxGridDBBandedColumn;
    cxGrid10DBBandedTableView1firm_customer_name: TcxGridDBBandedColumn;
    cxGrid10DBBandedTableView1firm_self_name: TcxGridDBBandedColumn;
    cxGrid10DBBandedTableView1FIO_users_owner: TcxGridDBBandedColumn;
    cxGrid10DBBandedTableView1users_group_name: TcxGridDBBandedColumn;
    cxGrid10DBBandedTableView1node_begin_name: TcxGridDBBandedColumn;
    cxGrid10DBBandedTableView1node_end_name: TcxGridDBBandedColumn;
    cxGrid10DBBandedTableView1bargain_sum: TcxGridDBBandedColumn;
    cxGrid10DBBandedTableView1brief_name: TcxGridDBBandedColumn;
    cxGrid10DBBandedTableView1kargoETSNG_name: TcxGridDBBandedColumn;
    cxGrid10DBBandedTableView1kargoETSNG_group_name: TcxGridDBBandedColumn;
    cxGrid10DBBandedTableView1vid_transfer_name: TcxGridDBBandedColumn;
    cxGrid10DBBandedTableView1our_rate_val: TcxGridDBBandedColumn;
    cxGrid10DBBandedTableView1quantity: TcxGridDBBandedColumn;
    cxGrid10DBBandedTableView1quantity_units: TcxGridDBBandedColumn;
    cxGrid10DBBandedTableView1ed_izm_name: TcxGridDBBandedColumn;
    cxGrid10DBBandedTableView1fact_weight: TcxGridDBBandedColumn;
    cxGrid10DBBandedTableView1amount_fact: TcxGridDBBandedColumn;
    cxGrid10DBBandedTableView1amount_units_fact: TcxGridDBBandedColumn;
    cxGrid10DBBandedTableView1bargain_sum_fact: TcxGridDBBandedColumn;
    cxGrid10DBBandedTableView1bargain_sum_fact_USD: TcxGridDBBandedColumn;
    cxGrid10DBBandedTableView1bargain_comiss_USD: TcxGridDBBandedColumn;
    cxGrid10DBBandedTableView1bargain_sum_fact_RUB: TcxGridDBBandedColumn;
    cxGrid10DBBandedTableView1bargain_comiss_RUB: TcxGridDBBandedColumn;
    cxGrid10DBBandedTableView1bargain_comiss: TcxGridDBBandedColumn;
    cxGrid10DBBandedTableView1state_begin_name: TcxGridDBBandedColumn;
    cxGrid10DBBandedTableView1date_enter: TcxGridDBBandedColumn;
    cxGrid10DBBandedTableView1state_end_name: TcxGridDBBandedColumn;
    cxGrid10DBBandedTableView1date_modify: TcxGridDBBandedColumn;
    cxGrid10DBBandedTableView1contract_cod: TcxGridDBBandedColumn;
    cxGrid10DBBandedTableView1set_bargain_block: TcxGridDBBandedColumn;
    cxGrid10DBBandedTableView1bargain_correct_group: TcxGridDBBandedColumn;
    cxGrid10DBBandedTableView1bargain_correct_type_name: TcxGridDBBandedColumn;
    cxGrid10DBBandedTableView1bargain_correct_type: TcxGridDBBandedColumn;
    cxGrid10DBBandedTableView1bargain_note_not_enter: TcxGridDBBandedColumn;
    cxGrid10DBBandedTableView1contract_id: TcxGridDBBandedColumn;
    cxGrid10DBBandedTableView1date_period: TcxGridDBBandedColumn;
    cxGrid10DBBandedTableView1date_period_finance: TcxGridDBBandedColumn;
    cxGrid10DBBandedTableView1date_period_service: TcxGridDBBandedColumn;
    cxGrid10DBBandedTableView1bargain_num: TcxGridDBBandedColumn;
    cxGrid10DBBandedTableView1ed_izm_cod: TcxGridDBBandedColumn;
    cxGrid10DBBandedTableView1our_rate_vid_send: TcxGridDBBandedColumn;
    cxGrid10DBBandedTableView1our_rate_comiss_val: TcxGridDBBandedColumn;
    cxGrid10DBBandedTableView1vid_transfer_cod: TcxGridDBBandedColumn;
    cxGrid10DBBandedTableView1users_owner_id: TcxGridDBBandedColumn;
    cxGrid10DBBandedTableView1currency_id: TcxGridDBBandedColumn;
    cxGrid10DBBandedTableView1global_color: TcxGridDBBandedColumn;
    cxGrid10DBBandedTableView1global_copy: TcxGridDBBandedColumn;
    cxGrid10DBBandedTableView1bargain_rights: TcxGridDBBandedColumn;
    cxGrid10DBBandedTableView1firm_self: TcxGridDBBandedColumn;
    cxGrid10DBBandedTableView1firm_customer: TcxGridDBBandedColumn;
    cxGrid10DBBandedTableView1agreement_id: TcxGridDBBandedColumn;
    cxGrid10DBBandedTableView1agreement_describe: TcxGridDBBandedColumn;
    cxGrid10DBBandedTableView1set_return: TcxGridDBBandedColumn;
    cxGrid10DBBandedTableView1return_name: TcxGridDBBandedColumn;
    cxGrid10DBBandedTableView1kargoETSNG_cod: TcxGridDBBandedColumn;
    cxGrid10DBBandedTableView1day_rent: TcxGridDBBandedColumn;
    cxGrid10DBBandedTableView1five_days_zfto_name: TcxGridDBBandedColumn;
    cxGrid10DBBandedTableView1client_NDS_RUB: TcxGridDBBandedColumn;
    cxGrid10DBBandedTableView1client_notNDS_RUB: TcxGridDBBandedColumn;
    cxGrid10DBBandedTableView1comiss_notNDS_RUB: TcxGridDBBandedColumn;
    cxGrid10DBBandedTableView1comiss_NDS_RUB: TcxGridDBBandedColumn;
    cxGrid10DBBandedTableView1kargoGNG_name: TcxGridDBBandedColumn;
    cxGrid10DBBandedTableView1road_begin_name: TcxGridDBBandedColumn;
    cxGrid10DBBandedTableView1road_end_name: TcxGridDBBandedColumn;
    cxGrid10DBBandedTableView1set_bargain_weight: TcxGridDBBandedColumn;
    cxGrid10DBBandedTableView1FIO_users_modify: TcxGridDBBandedColumn;
    cxGrid10DBBandedTableView1budget_cod: TcxGridDBBandedColumn;
    cxGrid10DBBandedTableView1budget_name: TcxGridDBBandedColumn;
    cxGrid10DBBandedTableView1rod_vagon_name: TcxGridDBBandedColumn;
    cxGrid10DBBandedTableView1agreement_note: TcxGridDBBandedColumn;
    cxGrid10Level1: TcxGridLevel;
    dxBarPopupMenu_10: TdxBarPopupMenu;
    dxBarSubItem14: TdxBarSubItem;
    dxBarButton64: TdxBarButton;
    dxBarButton65: TdxBarButton;
    cxTabSheet9: TcxTabSheet;
    cxTabSheet10: TcxTabSheet;
    sp_shp_bargain_add_GET_Client: TADOStoredProc;
    DS_shp_bargain_add_GET_Client: TDataSource;
    sp_shp_bargain_add_GET_Agent: TADOStoredProc;
    DS_shp_bargain_add_GET_Agent: TDataSource;
    cxGrid11: TcxGrid;
    cxGrid11DBBandedTableView1: TcxGridDBBandedTableView;
    cxGrid11DBBandedTableView1bargain_add_id: TcxGridDBBandedColumn;
    cxGrid11DBBandedTableView1bargain_id: TcxGridDBBandedColumn;
    cxGrid11DBBandedTableView1agent_id: TcxGridDBBandedColumn;
    cxGrid11DBBandedTableView1agent_name: TcxGridDBBandedColumn;
    cxGrid11DBBandedTableView1currency_id: TcxGridDBBandedColumn;
    cxGrid11DBBandedTableView1brief_name: TcxGridDBBandedColumn;
    cxGrid11DBBandedTableView1type_nds_id: TcxGridDBBandedColumn;
    cxGrid11DBBandedTableView1type_nds_name: TcxGridDBBandedColumn;
    cxGrid11DBBandedTableView1set_include_nds: TcxGridDBBandedColumn;
    cxGrid11DBBandedTableView1date_period: TcxGridDBBandedColumn;
    cxGrid11DBBandedTableView1date_period_finance: TcxGridDBBandedColumn;
    cxGrid11DBBandedTableView1date_period_service: TcxGridDBBandedColumn;
    cxGrid11DBBandedTableView1add_count: TcxGridDBBandedColumn;
    cxGrid11DBBandedTableView1add_rate: TcxGridDBBandedColumn;
    cxGrid11DBBandedTableView1ed_izm_id: TcxGridDBBandedColumn;
    cxGrid11DBBandedTableView1ed_izm_name: TcxGridDBBandedColumn;
    cxGrid11DBBandedTableView1contract_id: TcxGridDBBandedColumn;
    cxGrid11DBBandedTableView1contract_cod: TcxGridDBBandedColumn;
    cxGrid11DBBandedTableView1firm_self: TcxGridDBBandedColumn;
    cxGrid11DBBandedTableView1type_contract: TcxGridDBBandedColumn;
    cxGrid11DBBandedTableView1firm_customer: TcxGridDBBandedColumn;
    cxGrid11DBBandedTableView1firm_self_name: TcxGridDBBandedColumn;
    cxGrid11DBBandedTableView1firm_customer_name: TcxGridDBBandedColumn;
    cxGrid11DBBandedTableView1add_sum: TcxGridDBBandedColumn;
    cxGrid11DBBandedTableView1add_NDS_sum: TcxGridDBBandedColumn;
    cxGrid11DBBandedTableView1add_notNDS_sum: TcxGridDBBandedColumn;
    cxGrid11DBBandedTableView1add_sum_RUB: TcxGridDBBandedColumn;
    cxGrid11DBBandedTableView1add_NDS_sum_RUB: TcxGridDBBandedColumn;
    cxGrid11DBBandedTableView1add_notNDS_sum_RUB: TcxGridDBBandedColumn;
    cxGrid11DBBandedTableView1service_kind_id: TcxGridDBBandedColumn;
    cxGrid11DBBandedTableView1service_kind_rep_id: TcxGridDBBandedColumn;
    cxGrid11DBBandedTableView1acts_note: TcxGridDBBandedColumn;
    cxGrid11DBBandedTableView1service_id: TcxGridDBBandedColumn;
    cxGrid11DBBandedTableView1service_cod: TcxGridDBBandedColumn;
    cxGrid11DBBandedTableView1service_name: TcxGridDBBandedColumn;
    cxGrid11DBBandedTableView1service_type_name: TcxGridDBBandedColumn;
    cxGrid11DBBandedTableView1budget_name: TcxGridDBBandedColumn;
    cxGrid11DBBandedTableView1budget_cod: TcxGridDBBandedColumn;
    cxGrid11DBBandedTableView1service_type: TcxGridDBBandedColumn;
    cxGrid11DBBandedTableView1bargain_contract_id: TcxGridDBBandedColumn;
    cxGrid11DBBandedTableView1bargain_contract_cod: TcxGridDBBandedColumn;
    cxGrid11DBBandedTableView1bargain_firm_self: TcxGridDBBandedColumn;
    cxGrid11DBBandedTableView1bargain_firm_customer: TcxGridDBBandedColumn;
    cxGrid11DBBandedTableView1bargain_firm_self_name: TcxGridDBBandedColumn;
    cxGrid11DBBandedTableView1bargain_firm_customer_name: TcxGridDBBandedColumn;
    cxGrid11DBBandedTableView1bargain_cod: TcxGridDBBandedColumn;
    cxGrid11DBBandedTableView1type_bargain_name: TcxGridDBBandedColumn;
    cxGrid11DBBandedTableView1agreement_name: TcxGridDBBandedColumn;
    cxGrid11DBBandedTableView1date_period_month: TcxGridDBBandedColumn;
    cxGrid11DBBandedTableView1date_period_year: TcxGridDBBandedColumn;
    cxGrid11DBBandedTableView1date_period_finance_month: TcxGridDBBandedColumn;
    cxGrid11DBBandedTableView1date_period_finance_year: TcxGridDBBandedColumn;
    cxGrid11DBBandedTableView1curator_FIO_users: TcxGridDBBandedColumn;
    cxGrid11DBBandedTableView1status_name: TcxGridDBBandedColumn;
    cxGrid11DBBandedTableView1port_name: TcxGridDBBandedColumn;
    cxGrid11DBBandedTableView1ship_name: TcxGridDBBandedColumn;
    cxGrid11DBBandedTableView1set_bargain_block: TcxGridDBBandedColumn;
    cxGrid11DBBandedTableView1orders_num: TcxGridDBBandedColumn;
    cxGrid11DBBandedTableView1orders_date: TcxGridDBBandedColumn;
    cxGrid11DBBandedTableView1date_begin: TcxGridDBBandedColumn;
    cxGrid11DBBandedTableView1date_end: TcxGridDBBandedColumn;
    cxGrid11DBBandedTableView1bargain_correct_group: TcxGridDBBandedColumn;
    cxGrid11DBBandedTableView1bargain_correct_type_name: TcxGridDBBandedColumn;
    cxGrid11DBBandedTableView1subdivision_name: TcxGridDBBandedColumn;
    cxGrid11DBBandedTableView1FIO_users_owner: TcxGridDBBandedColumn;
    cxGrid11Level1: TcxGridLevel;
    cxGrid12: TcxGrid;
    cxGrid12DBBandedTableView1: TcxGridDBBandedTableView;
    cxGrid12DBBandedTableView1bargain_add_id: TcxGridDBBandedColumn;
    cxGrid12DBBandedTableView1bargain_id: TcxGridDBBandedColumn;
    cxGrid12DBBandedTableView1agent_id: TcxGridDBBandedColumn;
    cxGrid12DBBandedTableView1agent_name: TcxGridDBBandedColumn;
    cxGrid12DBBandedTableView1currency_id: TcxGridDBBandedColumn;
    cxGrid12DBBandedTableView1brief_name: TcxGridDBBandedColumn;
    cxGrid12DBBandedTableView1type_nds_id: TcxGridDBBandedColumn;
    cxGrid12DBBandedTableView1type_nds_name: TcxGridDBBandedColumn;
    cxGrid12DBBandedTableView1set_include_nds: TcxGridDBBandedColumn;
    cxGrid12DBBandedTableView1date_period: TcxGridDBBandedColumn;
    cxGrid12DBBandedTableView1date_period_finance: TcxGridDBBandedColumn;
    cxGrid12DBBandedTableView1date_period_service: TcxGridDBBandedColumn;
    cxGrid12DBBandedTableView1add_count: TcxGridDBBandedColumn;
    cxGrid12DBBandedTableView1add_rate: TcxGridDBBandedColumn;
    cxGrid12DBBandedTableView1ed_izm_id: TcxGridDBBandedColumn;
    cxGrid12DBBandedTableView1ed_izm_name: TcxGridDBBandedColumn;
    cxGrid12DBBandedTableView1contract_id: TcxGridDBBandedColumn;
    cxGrid12DBBandedTableView1contract_cod: TcxGridDBBandedColumn;
    cxGrid12DBBandedTableView1firm_self: TcxGridDBBandedColumn;
    cxGrid12DBBandedTableView1type_contract: TcxGridDBBandedColumn;
    cxGrid12DBBandedTableView1firm_customer: TcxGridDBBandedColumn;
    cxGrid12DBBandedTableView1firm_self_name: TcxGridDBBandedColumn;
    cxGrid12DBBandedTableView1firm_customer_name: TcxGridDBBandedColumn;
    cxGrid12DBBandedTableView1add_sum: TcxGridDBBandedColumn;
    cxGrid12DBBandedTableView1add_NDS_sum: TcxGridDBBandedColumn;
    cxGrid12DBBandedTableView1add_notNDS_sum: TcxGridDBBandedColumn;
    cxGrid12DBBandedTableView1add_sum_RUB: TcxGridDBBandedColumn;
    cxGrid12DBBandedTableView1add_NDS_sum_RUB: TcxGridDBBandedColumn;
    cxGrid12DBBandedTableView1add_notNDS_sum_RUB: TcxGridDBBandedColumn;
    cxGrid12DBBandedTableView1service_kind_id: TcxGridDBBandedColumn;
    cxGrid12DBBandedTableView1service_kind_rep_id: TcxGridDBBandedColumn;
    cxGrid12DBBandedTableView1acts_note: TcxGridDBBandedColumn;
    cxGrid12DBBandedTableView1service_id: TcxGridDBBandedColumn;
    cxGrid12DBBandedTableView1service_cod: TcxGridDBBandedColumn;
    cxGrid12DBBandedTableView1service_name: TcxGridDBBandedColumn;
    cxGrid12DBBandedTableView1service_type_name: TcxGridDBBandedColumn;
    cxGrid12DBBandedTableView1budget_name: TcxGridDBBandedColumn;
    cxGrid12DBBandedTableView1budget_cod: TcxGridDBBandedColumn;
    cxGridDBBandedColumn1: TcxGridDBBandedColumn;
    cxGrid12DBBandedTableView1bargain_contract_id: TcxGridDBBandedColumn;
    cxGrid12DBBandedTableView1bargain_contract_cod: TcxGridDBBandedColumn;
    cxGrid12DBBandedTableView1bargain_firm_self: TcxGridDBBandedColumn;
    cxGrid12DBBandedTableView1bargain_firm_customer: TcxGridDBBandedColumn;
    cxGrid12DBBandedTableView1bargain_firm_self_name: TcxGridDBBandedColumn;
    cxGrid12DBBandedTableView1bargain_firm_customer_name: TcxGridDBBandedColumn;
    cxGrid12DBBandedTableView1bargain_cod: TcxGridDBBandedColumn;
    cxGrid12DBBandedTableView1type_bargain_name: TcxGridDBBandedColumn;
    cxGrid12DBBandedTableView1agreement_name: TcxGridDBBandedColumn;
    cxGrid12DBBandedTableView1date_period_month: TcxGridDBBandedColumn;
    cxGrid12DBBandedTableView1date_period_year: TcxGridDBBandedColumn;
    cxGrid12DBBandedTableView1date_period_finance_month: TcxGridDBBandedColumn;
    cxGrid12DBBandedTableView1date_period_finance_year: TcxGridDBBandedColumn;
    cxGrid12DBBandedTableView1curator_FIO_users: TcxGridDBBandedColumn;
    cxGrid12DBBandedTableView1status_name: TcxGridDBBandedColumn;
    cxGrid12DBBandedTableView1port_name: TcxGridDBBandedColumn;
    cxGrid12DBBandedTableView1ship_name: TcxGridDBBandedColumn;
    cxGrid12DBBandedTableView1set_bargain_block: TcxGridDBBandedColumn;
    cxGrid12DBBandedTableView1orders_num: TcxGridDBBandedColumn;
    cxGrid12DBBandedTableView1orders_date: TcxGridDBBandedColumn;
    cxGrid12DBBandedTableView1date_begin: TcxGridDBBandedColumn;
    cxGrid12DBBandedTableView1date_end: TcxGridDBBandedColumn;
    cxGrid12DBBandedTableView1bargain_correct_group: TcxGridDBBandedColumn;
    cxGrid12DBBandedTableView1bargain_correct_type_name: TcxGridDBBandedColumn;
    cxGrid12DBBandedTableView1subdivision_name: TcxGridDBBandedColumn;
    cxGrid12DBBandedTableView1FIO_users_owner: TcxGridDBBandedColumn;
    cxGrid12Level3: TcxGridLevel;
    dxBarPopupMenu_11: TdxBarPopupMenu;
    dxBarSubItem15: TdxBarSubItem;
    dxBarPopupMenu_12: TdxBarPopupMenu;
    dxBarSubItem16: TdxBarSubItem;
    cxGrid3DBBandedTableView1shaping_rate_note: TcxGridDBBandedColumn;
    cxGrid3DBBandedTableView1bargain_note: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1bargain_note: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1shaping_rate_note: TcxGridDBBandedColumn;
    dxBarButton72: TdxBarButton;
    dxBarButton73: TdxBarButton;
    dxBarButton74: TdxBarButton;
    dxBarButton75: TdxBarButton;
    dxBarButton76: TdxBarButton;
    dxBarButton77: TdxBarButton;
    cxGrid3DBBandedTableView1bargain_node_begin_name: TcxGridDBBandedColumn;
    cxGrid3DBBandedTableView1bargain_node_end_name: TcxGridDBBandedColumn;
    cxGrid3DBBandedTableView1bargain_kargoETSNG_name: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1bargain_node_begin_name: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1bargain_node_end_name: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1bargain_kargoETSNG_name: TcxGridDBBandedColumn;
    cxTabSheet11: TcxTabSheet;
    cxGrid13: TcxGrid;
    cxGrid13DBBandedTableView1: TcxGridDBBandedTableView;
    cxGrid13DBBandedTableView1shaping_rate_id: TcxGridDBBandedColumn;
    cxGrid13DBBandedTableView1bargain_id: TcxGridDBBandedColumn;
    cxGrid13DBBandedTableView1bargain_date_period: TcxGridDBBandedColumn;
    cxGrid13DBBandedTableView1bargain_date_period_finance: TcxGridDBBandedColumn;
    cxGrid13DBBandedTableView1bargain_date_period_service: TcxGridDBBandedColumn;
    cxGrid13DBBandedTableView1bargain_correct_group: TcxGridDBBandedColumn;
    cxGrid13DBBandedTableView1bargain_correct_type_name: TcxGridDBBandedColumn;
    cxGrid13DBBandedTableView1contract_agent_cod: TcxGridDBBandedColumn;
    cxGrid13DBBandedTableView1firm_self_agent_name: TcxGridDBBandedColumn;
    cxGrid13DBBandedTableView1firm_customer_agent_name: TcxGridDBBandedColumn;
    cxGrid13DBBandedTableView1contract_agent_date_begin: TcxGridDBBandedColumn;
    cxGrid13DBBandedTableView1set_self_rate: TcxGridDBBandedColumn;
    cxGrid13DBBandedTableView1service_type: TcxGridDBBandedColumn;
    cxGrid13DBBandedTableView1shaping_rate_count: TcxGridDBBandedColumn;
    cxGrid13DBBandedTableView1shaping_rate_sum: TcxGridDBBandedColumn;
    cxGrid13DBBandedTableView1service_type_name: TcxGridDBBandedColumn;
    cxGrid13DBBandedTableView1shaping_rate_type_name: TcxGridDBBandedColumn;
    cxGrid13DBBandedTableView1type_calc_sum_name: TcxGridDBBandedColumn;
    cxGrid13DBBandedTableView1agent_amount_fact_calc: TcxGridDBBandedColumn;
    cxGrid13DBBandedTableView1agent_amount_units_fact: TcxGridDBBandedColumn;
    cxGrid13DBBandedTableView1agent_sum_fact_real: TcxGridDBBandedColumn;
    cxGrid13DBBandedTableView1agent_sum_fact_RUB: TcxGridDBBandedColumn;
    cxGrid13DBBandedTableView1agent_NDS_RUB: TcxGridDBBandedColumn;
    cxGrid13DBBandedTableView1agent_notNDS_RUB: TcxGridDBBandedColumn;
    cxGrid13DBBandedTableView1brief_name: TcxGridDBBandedColumn;
    cxGrid13DBBandedTableView1node_begin_name: TcxGridDBBandedColumn;
    cxGrid13DBBandedTableView1node_end_name: TcxGridDBBandedColumn;
    cxGrid13DBBandedTableView1kargoETSNG_name: TcxGridDBBandedColumn;
    cxGrid13DBBandedTableView1kargoETSNG_group_name: TcxGridDBBandedColumn;
    cxGrid13DBBandedTableView1ed_izm_name: TcxGridDBBandedColumn;
    cxGrid13DBBandedTableView1shaping_rate_nds_name: TcxGridDBBandedColumn;
    cxGrid13DBBandedTableView1date_enter: TcxGridDBBandedColumn;
    cxGrid13DBBandedTableView1global_color: TcxGridDBBandedColumn;
    cxGrid13DBBandedTableView1FIO_users: TcxGridDBBandedColumn;
    cxGrid13DBBandedTableView1currency_id: TcxGridDBBandedColumn;
    cxGrid13DBBandedTableView1bargain_contract_cod: TcxGridDBBandedColumn;
    cxGrid13DBBandedTableView1bargain_firm_customer_name: TcxGridDBBandedColumn;
    cxGrid13DBBandedTableView1bargain_firm_self_name: TcxGridDBBandedColumn;
    cxGrid13DBBandedTableView1set_bargain_block: TcxGridDBBandedColumn;
    cxGrid13DBBandedTableView1bargain_cod: TcxGridDBBandedColumn;
    cxGrid13DBBandedTableView1five_days_zfto_name: TcxGridDBBandedColumn;
    cxGrid13DBBandedTableView1contract_agent_id: TcxGridDBBandedColumn;
    cxGrid13DBBandedTableView1zfto_sum_fact: TcxGridDBBandedColumn;
    cxGrid13DBBandedTableView1calc_profit: TcxGridDBBandedColumn;
    cxGrid13DBBandedTableView1rod_vagon_name: TcxGridDBBandedColumn;
    cxGrid13DBBandedTableView1shaping_rate_comment: TcxGridDBBandedColumn;
    cxGrid13DBBandedTableView1shaping_rate_note: TcxGridDBBandedColumn;
    cxGrid13Level1: TcxGridLevel;
    Panel10: TPanel;
    cxCheckComboBox7: TcxCheckComboBox;
    cxButtonEdit10: TcxButtonEdit;
    cxButton7: TcxButton;
    DS_shaping_rate_get_list_agent_sverka: TDataSource;
    SP_shaping_rate_get_list_agent_sverka: TADOStoredProc;
    dxBarPopupMenu_13: TdxBarPopupMenu;
    cxGrid1DBBandedTableView1users_color: TcxGridDBBandedColumn;
    cxGrid13DBBandedTableView1users_color: TcxGridDBBandedColumn;
    dxBarButton60: TdxBarButton;
    dxBarButton78: TdxBarButton;
    cxGrid2DBBandedTableView1date_from_to: TcxGridDBBandedColumn;
    cxGrid2DBBandedTableView1node_begin_name: TcxGridDBBandedColumn;
    cxGrid2DBBandedTableView1node_end_name: TcxGridDBBandedColumn;
    cxGrid6DBBandedTableView1date_from_to: TcxGridDBBandedColumn;
    cxGrid6DBBandedTableView1node_begin_name: TcxGridDBBandedColumn;
    cxGrid6DBBandedTableView1node_end_name: TcxGridDBBandedColumn;
    cxGrid4DBBandedTableView1contract_client_cod: TcxGridDBBandedColumn;
    cxGrid4DBBandedTableView1firm_client_name: TcxGridDBBandedColumn;
    cxGrid5DBBandedTableView1contract_client_cod: TcxGridDBBandedColumn;
    cxGrid5DBBandedTableView1firm_client_name: TcxGridDBBandedColumn;
    cxDBPivotGrid2contract_client_cod: TcxDBPivotGridField;
    cxDBPivotGrid2firm_client_name: TcxDBPivotGridField;
    dxBarButton79: TdxBarButton;
    dxBarButton50: TdxBarButton;
    dxBarButton80: TdxBarButton;
    cxGrid5DBBandedTableView1fact_kargoETSNG_name: TcxGridDBBandedColumn;
    dxBarButton81: TdxBarButton;
    dxBarButton82: TdxBarButton;
    dxBarButton83: TdxBarButton;
    cxDBPivotGrid1agent_notNDS_RUB: TcxDBPivotGridField;
    cxGrid4DBBandedTableView1bargain_correct_group: TcxGridDBBandedColumn;
    cxGrid4DBBandedTableView1bargain_correct_type_name: TcxGridDBBandedColumn;
    cxGrid5DBBandedTableView1bargain_correct_group: TcxGridDBBandedColumn;
    cxGrid5DBBandedTableView1bargain_correct_type_name: TcxGridDBBandedColumn;
    dxBarPopupMenu12: TdxBarPopupMenu;
    dxBarButton105: TdxBarButton;
    dxBarButton106: TdxBarButton;
    cxGrid9DBBandedTableView1service_type_name: TcxGridDBBandedColumn;
    cxGrid9DBBandedTableView1rate_val: TcxGridDBBandedColumn;
    dxBarSubItem17: TdxBarSubItem;
    dxBarSeparator1: TdxBarSeparator;
    cxDBPivotGrid2firm_agent_name: TcxDBPivotGridField;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure dxBarButton4Click(Sender: TObject);
    procedure dxBarButton5Click(Sender: TObject);
    procedure cxGrid3DBBandedTableView1CustomDrawCell(Sender: TcxCustomGridTableView; ACanvas: TcxCanvas;AViewInfo: TcxGridTableDataCellViewInfo; var ADone: Boolean);
    procedure cxGrid6DBBandedTableView1CustomDrawCell(Sender: TcxCustomGridTableView; ACanvas: TcxCanvas;AViewInfo: TcxGridTableDataCellViewInfo; var ADone: Boolean);
    procedure cxGrid1DBBandedTableView1CustomDrawCell(Sender: TcxCustomGridTableView; ACanvas: TcxCanvas;AViewInfo: TcxGridTableDataCellViewInfo; var ADone: Boolean);
    procedure cxGrid1DBBandedTableView1CustomDrawColumnHeader(Sender: TcxGridTableView; ACanvas: TcxCanvas;AViewInfo: TcxGridColumnHeaderViewInfo; var ADone: Boolean);
    procedure cxGrid1DBBandedTableView1FocusedItemChanged(Sender: TcxCustomGridTableView; APrevFocusedItem,AFocusedItem: TcxCustomGridTableItem);
    procedure cxGrid1DBBandedTableView1KeyPress(Sender: TObject; var Key: Char);
    procedure cxGrid2DBBandedTableView1CustomDrawCell(Sender: TcxCustomGridTableView; ACanvas: TcxCanvas;AViewInfo: TcxGridTableDataCellViewInfo; var ADone: Boolean);
    procedure dxBarButton12Click(Sender: TObject);
    procedure dxBarButton13Click(Sender: TObject);
    procedure dxBarButton14Click(Sender: TObject);
    procedure dxBarSubItem3Popup(Sender: TObject);
    procedure dxBarButton1Click(Sender: TObject);
    procedure cxPageControl1Change(Sender: TObject);
    procedure dxBarButton2Click(Sender: TObject);
    procedure cxGrid3DBBandedTableView1SelectionChanged(Sender: TcxCustomGridTableView);
    procedure cxGrid1DBBandedTableView1SelectionChanged(Sender: TcxCustomGridTableView);
    procedure cxGrid4DBBandedTableView1CustomDrawCell(Sender: TcxCustomGridTableView; ACanvas: TcxCanvas;AViewInfo: TcxGridTableDataCellViewInfo; var ADone: Boolean);
    procedure cxGrid5DBBandedTableView1CustomDrawCell(Sender: TcxCustomGridTableView; ACanvas: TcxCanvas;AViewInfo: TcxGridTableDataCellViewInfo; var ADone: Boolean);
    procedure dxBarButton18Click(Sender: TObject);
    procedure dxBarButton19Click(Sender: TObject);
    procedure cxButtonEdit5PropertiesButtonClick(Sender: TObject;AButtonIndex: Integer);
    procedure cxButtonEdit1PropertiesButtonClick(Sender: TObject;AButtonIndex: Integer);
    procedure cxButtonEdit3PropertiesButtonClick(Sender: TObject;AButtonIndex: Integer);
    procedure cxButton1Click(Sender: TObject);
    procedure cxButton4Click(Sender: TObject);
    procedure dxBarButton34Click(Sender: TObject);
    procedure cxButtonEdit4PropertiesButtonClick(Sender: TObject;AButtonIndex: Integer);
    procedure dxBarButton37Click(Sender: TObject);
    procedure dxBarButton38Click(Sender: TObject);
    procedure dxBarButton39Click(Sender: TObject);
    procedure dxBarButton40Click(Sender: TObject);
    procedure dxBarButton41Click(Sender: TObject);
    procedure dxBarButton42Click(Sender: TObject);
    procedure dxBarButton43Click(Sender: TObject);
    procedure dxBarButton45Click(Sender: TObject);
    procedure dxBarButton46Click(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure cxButtonEdit8PropertiesButtonClick(Sender: TObject;AButtonIndex: Integer);
    procedure cxButtonEdit7PropertiesButtonClick(Sender: TObject;AButtonIndex: Integer);
    procedure cxButton3Click(Sender: TObject);
    procedure cxGrid9DBBandedTableView1CustomDrawCell(Sender: TcxCustomGridTableView; ACanvas: TcxCanvas;AViewInfo: TcxGridTableDataCellViewInfo; var ADone: Boolean);
    procedure dxBarButton51Click(Sender: TObject);
    procedure dxBarButton52Click(Sender: TObject);
    procedure dxBarButton53Click(Sender: TObject);
    procedure dxBarButton54Click(Sender: TObject);
    procedure dxBarButton55Click(Sender: TObject);
    procedure dxBarButton56Click(Sender: TObject);
    procedure dxBarButton59Click(Sender: TObject);
    procedure dxBarButton57Click(Sender: TObject);
    procedure dxBarButton25Click(Sender: TObject);
    procedure dxBarButton24Click(Sender: TObject);
    procedure cxButtonEdit11PropertiesButtonClick(Sender: TObject;AButtonIndex: Integer);
    procedure cxButtonEdit9PropertiesButtonClick(Sender: TObject;AButtonIndex: Integer);
    procedure cxGrid10DBBandedTableView1CustomDrawCell(Sender: TcxCustomGridTableView; ACanvas: TcxCanvas;AViewInfo: TcxGridTableDataCellViewInfo; var ADone: Boolean);
    procedure dxBarButton64Click(Sender: TObject);
    procedure dxBarButton65Click(Sender: TObject);
    procedure cxGrid12DBBandedTableView1CustomDrawCell(Sender: TcxCustomGridTableView; ACanvas: TcxCanvas;AViewInfo: TcxGridTableDataCellViewInfo; var ADone: Boolean);
    procedure cxGrid11DBBandedTableView1CustomDrawCell(Sender: TcxCustomGridTableView; ACanvas: TcxCanvas;AViewInfo: TcxGridTableDataCellViewInfo; var ADone: Boolean);
    procedure dxBarButton27Click(Sender: TObject);
    procedure dxBarButton72Click(Sender: TObject);
    procedure dxBarButton73Click(Sender: TObject);
    procedure dxBarButton74Click(Sender: TObject);
    procedure dxBarButton75Click(Sender: TObject);
    procedure dxBarButton76Click(Sender: TObject);
    procedure dxBarButton77Click(Sender: TObject);
    procedure dxBarButton20Click(Sender: TObject);
    procedure cxButtonEdit10PropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
    procedure dxBarButton60Click(Sender: TObject);
    procedure dxBarButton50Click(Sender: TObject);
    procedure dxBarButton80Click(Sender: TObject);
    procedure dxBarButton81Click(Sender: TObject);
    procedure dxBarButton105Click(Sender: TObject);
    procedure cxGrid1DBBandedTableView1DataControllerFilterChanged(Sender: TObject);
  private
    Fdate1, Fdate2 : TDateTime;
    Fusers_id      : integer;
    Fstr_vagon_num : string;
    FView : TcxGridDBBandedTableView;
    function  GetStrId(cxCheckComboBox: TcxCheckComboBox): string;
    procedure RefreshProcedure(id: integer);
    procedure RefreshProcedureDetail();
    procedure RefreshContract();
    procedure cxGridChange;
  public
    constructor Create(AOwner: TApplication; flag: boolean);
  end;

var
  fmClientFrahtCard2: TfmClientFrahtCard2;

implementation
  uses main, Raznoe, Period, Other, Filter, AgreeFactInc, DateUtils, StrUtils, ShellApi;
{$R *.dfm}



constructor TfmClientFrahtCard2.Create(AOwner: TApplication; flag: boolean);
var Q : TADOQuery;
    users_group_cod : string;
begin
  Screen.Cursor := crHourglass;
  inherited Create(AOwner);

  Fdate1 := Date - DayOf(Date) + 1;
  Fdate2 := IncMonth(Fdate1, 1) - 1;
  dxBarSubItem2.Caption := FormatDateTime('mmmm yyyy', Fdate1);

  if flag then begin
    FormStyle := fsNormal;
    WindowState := wsMaximized;
  end else begin
    FormStyle := fsMDIChild;
    WindowState := wsMaximized;
  end;

  Fstr_vagon_num := '';
  Fusers_id := usr_pwd^.users_id;

  StoreRegistryGrid(rgLoad,'\Software\Lis1\ClientFrahtCard_Grids2', cxGrid1DBBandedTableView1);
  StoreRegistryGrid(rgLoad,'\Software\Lis1\ClientFrahtCard_Grids2', cxGrid2DBBandedTableView1);
  StoreRegistryGrid(rgLoad,'\Software\Lis1\ClientFrahtCard_Grids2', cxGrid3DBBandedTableView1);
  StoreRegistryGrid(rgLoad,'\Software\Lis1\ClientFrahtCard_Grids2', cxGrid4DBBandedTableView1);
  StoreRegistryGrid(rgLoad,'\Software\Lis1\ClientFrahtCard_Grids2', cxGrid5DBBandedTableView1);
  StoreRegistryGrid(rgLoad,'\Software\Lis1\ClientFrahtCard_Grids2', cxGrid6DBBandedTableView1);
  StoreRegistryGrid(rgLoad,'\Software\Lis1\ClientFrahtCard_Grids2', cxGrid9DBBandedTableView1);
  StoreRegistryGrid(rgLoad,'\Software\Lis1\ClientFrahtCard_Grids2', cxGrid10DBBandedTableView1);
  StoreRegistryGrid(rgLoad,'\Software\Lis1\ClientFrahtCard_Grids2', cxGrid11DBBandedTableView1);
  StoreRegistryGrid(rgLoad,'\Software\Lis1\ClientFrahtCard_Grids2', cxGrid12DBBandedTableView1);
  StoreRegistryGrid(rgLoad,'\Software\Lis1\ClientFrahtCard_Grids2', cxGrid13DBBandedTableView1);

  cxGrid1DBBandedTableView1calc_profit.Styles.Content := fmMain.cxStyle_ClientFrahtCard_Profitt;
  cxGrid1DBBandedTableView1calc_profit_USD.Styles.Content := fmMain.cxStyle_ClientFrahtCard_Profitt;
  cxGrid1DBBandedTableView1agent_sum_fact.Styles.Content := fmMain.cxStyle_BoldBlue;

  Q := TADOQuery.Create(nil);
  Q.Connection := fmMain.Lis;
  Q.SQL.Add('SELECT	inf_obj_cod as users_group_cod, FIO_users');
  Q.SQL.Add('FROM	  users INNER JOIN inf_obj on users.users_group_id = inf_obj.inf_obj_id');
  Q.SQL.Add('WHERE	users_name = system_user');
  Q.Open;
  users_group_cod := Q.FieldByName('users_group_cod').AsString;
  Q.Free;

  if IndexText(users_group_cod, ['28','29','32','34','36','40','8','9', '38']) <> -1 then begin
    cxTabSheet1.TabVisible := False;
    cxTabSheet2.TabVisible := False;
    cxTabSheet3.TabVisible := False;
    cxTabSheet4.TabVisible := False;
    cxTabSheet5.TabVisible := False;
    cxTabSheet6.TabVisible := False;
    cxTabSheet7.TabVisible := False;
    cxTabSheet8.TabVisible := False;
    cxTabSheet9.TabVisible := True;
    cxTabSheet10.TabVisible := True;
    cxPageControl1.ActivePage := cxTabSheet9;
  end else if IndexText(users_group_cod, ['1', '33']) <> -1 then begin
    cxTabSheet1.TabVisible := True;
    cxTabSheet2.TabVisible := True;
    cxTabSheet3.TabVisible := True;
    cxTabSheet4.TabVisible := True;
    cxTabSheet5.TabVisible := True;
    cxTabSheet6.TabVisible := True;
    cxTabSheet7.TabVisible := True;
    cxTabSheet8.TabVisible := True;
    cxTabSheet9.TabVisible := True;
    cxTabSheet10.TabVisible := True;
    cxPageControl1.ActivePage := cxTabSheet8;
  end else begin
    cxTabSheet1.TabVisible := True;
    cxTabSheet2.TabVisible := True;
    cxTabSheet3.TabVisible := True;
    cxTabSheet4.TabVisible := True;
    cxTabSheet5.TabVisible := True;
    cxTabSheet6.TabVisible := True;
    cxTabSheet7.TabVisible := True;
    cxTabSheet8.TabVisible := True;
    cxTabSheet9.TabVisible := False;
    cxTabSheet10.TabVisible := False;
    cxPageControl1.ActivePage := cxTabSheet8;
  end;

  SetUsersModuleRights(self, fmMain.Lis);
  MonitorEventFormOpen('OPEN_FORM', self.Name, fmMain.Lis, -9);

  RefreshContract();
  RefreshProcedure(-9);

  Screen.Cursor := crDefault;
end;

procedure TfmClientFrahtCard2.cxButton1Click(Sender: TObject);
begin
  RefreshProcedure(-9);
end;

procedure TfmClientFrahtCard2.cxButton3Click(Sender: TObject);
begin
  RefreshProcedure(-9);
end;

procedure TfmClientFrahtCard2.cxButton4Click(Sender: TObject);
begin
  RefreshProcedure(-9);
end;

procedure TfmClientFrahtCard2.cxButtonEdit10PropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
var i : integer;
begin
  Screen.Cursor := crHourglass;
  case AButtonIndex of
    0 : for i := 0 to cxCheckComboBox7.Properties.Items.Count - 1 do
          cxCheckComboBox7.States[i] := cbsChecked;
    1 : for i := 0 to cxCheckComboBox7.Properties.Items.Count - 1 do
          cxCheckComboBox7.States[i] := cbsUnchecked;
  end;
  Screen.Cursor := crDefault;
end;

procedure TfmClientFrahtCard2.cxButtonEdit11PropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
var i : integer;
begin
  Screen.Cursor := crHourglass;
  case AButtonIndex of
    0 : for i := 0 to cxCheckComboBox6.Properties.Items.Count - 1 do
          cxCheckComboBox6.States[i] := cbsChecked;
    1 : for i := 0 to cxCheckComboBox6.Properties.Items.Count - 1 do
          cxCheckComboBox6.States[i] := cbsUnchecked;
  end;
  Screen.Cursor := crDefault;
end;

procedure TfmClientFrahtCard2.cxButtonEdit1PropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
var i : integer;
begin
  Screen.Cursor := crHourglass;
  case AButtonIndex of
    0 : for i := 0 to cxCheckComboBox1.Properties.Items.Count - 1 do
          cxCheckComboBox1.States[i] := cbsChecked;
    1 : for i := 0 to cxCheckComboBox1.Properties.Items.Count - 1 do
          cxCheckComboBox1.States[i] := cbsUnchecked;
  end;
  Screen.Cursor := crDefault;
end;

procedure TfmClientFrahtCard2.cxButtonEdit3PropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
type
  TFunc = function(AppHand : THandle; str_vagon_num : string) : Variant;
var
  FDic   : TFunc;
  handle : THandle;
  v      : Variant;
  tmp    : string;
begin
  case AButtonIndex of
    0 : begin
          handle := LoadLibrary('dictionary.dll');
          @FDic := GetProcAddress(handle, 'CreateWndChoose_Ext');
          v := FDic(Application.Handle, Fstr_vagon_num);
          FreeLibrary(handle);

          Screen.Cursor := crHourglass;

          if v[1] = True then begin
            Fstr_vagon_num := v[0];

            if Fstr_vagon_num = '' then begin
              cxButtonEdit2.EditValue := 'Вагоны: (Все)';
              cxButtonEdit3.EditValue := 'Вагоны: (Все)';
              cxButtonEdit6.EditValue := 'Вагоны: (Все)';
            end else begin
              tmp := ReplaceStr(Trim(Fstr_vagon_num), #13#10, ', ');
              Fstr_vagon_num := ReplaceStr(Trim(Fstr_vagon_num), #13#10, ',');
              cxButtonEdit2.EditValue := 'Вагоны: ' + tmp;
              cxButtonEdit3.EditValue := 'Вагоны: ' + tmp;
              cxButtonEdit6.EditValue := 'Вагоны: ' + tmp;
            end;
          end;
          Screen.Cursor := crDefault;
        end;
    1 : begin
          cxButtonEdit2.EditValue := 'Вагоны: (Все)';
          cxButtonEdit3.EditValue := 'Вагоны: (Все)';
          cxButtonEdit6.EditValue := 'Вагоны: (Все)';

          Fstr_vagon_num := '';
        end;
  end;
end;

procedure TfmClientFrahtCard2.cxButtonEdit4PropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
var i : integer;
begin
  Screen.Cursor := crHourglass;
  case AButtonIndex of
    0 : for i := 0 to cxCheckComboBox3.Properties.Items.Count - 1 do
          cxCheckComboBox3.States[i] := cbsChecked;
    1 : for i := 0 to cxCheckComboBox3.Properties.Items.Count - 1 do
          cxCheckComboBox3.States[i] := cbsUnchecked;
  end;
  Screen.Cursor := crDefault;
end;

procedure TfmClientFrahtCard2.cxButtonEdit5PropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
var i : integer;
begin
  Screen.Cursor := crHourglass;
  case AButtonIndex of
    0 : for i := 0 to cxCheckComboBox2.Properties.Items.Count - 1 do
          cxCheckComboBox2.States[i] := cbsChecked;
    1 : for i := 0 to cxCheckComboBox2.Properties.Items.Count - 1 do
          cxCheckComboBox2.States[i] := cbsUnchecked;
  end;
  Screen.Cursor := crDefault;
end;

procedure TfmClientFrahtCard2.cxButtonEdit7PropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
type
  TFunc = function(AppHand : THandle; str_vagon_num : string) : Variant;
var
  FDic   : TFunc;
  handle : THandle;
  v      : Variant;
  tmp    : string;
begin
  case AButtonIndex of
    0 : begin
          handle := LoadLibrary('dictionary.dll');
          @FDic := GetProcAddress(handle, 'CreateWndChoose_Ext');
          v := FDic(Application.Handle, Fstr_vagon_num);
          FreeLibrary(handle);

          Screen.Cursor := crHourglass;

          if v[1] = True then begin
            Fstr_vagon_num := v[0];
            VarClear(v);

            if Fstr_vagon_num = '' then begin
              cxButtonEdit1.EditValue := 'Вагоны: (Все)';
              cxButtonEdit2.EditValue := cxButtonEdit1.EditValue;
              cxButtonEdit3.EditValue := cxButtonEdit1.EditValue;
              cxButtonEdit4.EditValue := cxButtonEdit1.EditValue;
            end else begin
              tmp := ReplaceStr(Trim(Fstr_vagon_num), #13#10, ', ');
              cxButtonEdit1.EditValue := 'Вагоны: ' + tmp;
              cxButtonEdit2.EditValue := cxButtonEdit1.EditValue;
              cxButtonEdit3.EditValue := cxButtonEdit1.EditValue;
              cxButtonEdit7.EditValue := cxButtonEdit1.EditValue;
            end;
          end;

          VarClear(v);
          Screen.Cursor := crDefault;
        end;
    1 : begin
          cxButtonEdit1.EditValue := 'Вагоны: (Все)';
          cxButtonEdit2.EditValue := cxButtonEdit1.EditValue;
          cxButtonEdit3.EditValue := cxButtonEdit1.EditValue;
          cxButtonEdit7.EditValue := cxButtonEdit1.EditValue;

          Fstr_vagon_num := '';
        end;
  end;
end;

procedure TfmClientFrahtCard2.cxButtonEdit8PropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
var i : integer;
begin
  Screen.Cursor := crHourglass;
  case AButtonIndex of
    0 : for i := 0 to cxCheckComboBox4.Properties.Items.Count - 1 do
          cxCheckComboBox4.States[i] := cbsChecked;
    1 : for i := 0 to cxCheckComboBox4.Properties.Items.Count - 1 do
          cxCheckComboBox4.States[i] := cbsUnchecked;
  end;
  Screen.Cursor := crDefault;
end;

procedure TfmClientFrahtCard2.cxButtonEdit9PropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
var i : integer;
begin
  Screen.Cursor := crHourglass;
  case AButtonIndex of
    0 : for i := 0 to cxCheckComboBox5.Properties.Items.Count - 1 do
          cxCheckComboBox5.States[i] := cbsChecked;
    1 : for i := 0 to cxCheckComboBox5.Properties.Items.Count - 1 do
          cxCheckComboBox5.States[i] := cbsUnchecked;
  end;
  Screen.Cursor := crDefault;
end;

procedure TfmClientFrahtCard2.cxGrid10DBBandedTableView1CustomDrawCell(Sender: TcxCustomGridTableView; ACanvas: TcxCanvas; AViewInfo: TcxGridTableDataCellViewInfo; var ADone: Boolean);
begin
  if (AViewInfo.GridRecord.Values[cxGrid1DBBandedTableView1currency_id.Index] = 3) then ACanvas.Font.Color := clBlue
  else if (AViewInfo.GridRecord.Values[cxGrid10DBBandedTableView1currency_id.Index] <> 3) then ACanvas.Font.Color := clBlack;

  if (AViewInfo.GridRecord.Values[cxGrid10DBBandedTableView1global_copy.Index]<>NULL)
      AND (AViewInfo.GridRecord.Values[cxGrid10DBBandedTableView1global_copy.Index]<>0) then ACanvas.Font.Color := clRed;

  if (AViewInfo.GridRecord.Values[cxGrid10DBBandedTableView1global_color.Index]<>NULL) then ACanvas.Brush.Color := AViewInfo.GridRecord.Values[cxGrid10DBBandedTableView1global_color.Index];

  if (AViewInfo.GridRecord.Values[cxGrid10DBBandedTableView1date_period_finance.Index] <> NULL) then begin
    ACanvas.Font.Color := clPurple; //clMoneyGreen - $00AF0AAA;
    ACanvas.Font.Style := [fsBold];
  end;

  if AViewInfo.GridRecord.Selected or AViewInfo.GridRecord.Focused then begin
    ACanvas.Brush.Color := clNavy;
    if (AViewInfo.GridRecord.Values[cxGrid10DBBandedTableView1global_copy.Index]<>NULL)
      AND (AViewInfo.GridRecord.Values[cxGrid10DBBandedTableView1global_copy.Index]<>0) then ACanvas.Font.Color := clRed
    else ACanvas.Font.Color := clWhite;
    if AViewInfo.Focused then ACanvas.Brush.Color := clBlue;
  end;

end;

procedure TfmClientFrahtCard2.cxGrid1DBBandedTableView1CustomDrawCell(Sender: TcxCustomGridTableView; ACanvas: TcxCanvas; AViewInfo: TcxGridTableDataCellViewInfo; var ADone: Boolean);
begin
  if (AViewInfo.GridRecord.Values[TcxGridDBBandedTableView(Sender).GetColumnByFieldName('users_color').Index]<>NULL) then begin
    ACanvas.Brush.Color := AViewInfo.GridRecord.Values[TcxGridDBBandedTableView(Sender).GetColumnByFieldName('users_color').Index];
  end;

  if (AViewInfo.GridRecord.Values[TcxGridDBBandedTableView(Sender).GetColumnByFieldName('bargain_date_period_finance').Index] <> NULL) then begin
    ACanvas.Font.Color := clPurple;
    ACanvas.Font.Style := [fsBold];
  end;

	if AViewInfo.GridRecord.Selected or AViewInfo.GridRecord.Focused then begin
		ACanvas.Brush.Color := clNavy;
		ACanvas.Font.Color := clWhite;
		if AViewInfo.Focused then ACanvas.Brush.Color := clBlue;
	end;
end;

procedure TfmClientFrahtCard2.cxGrid1DBBandedTableView1CustomDrawColumnHeader(Sender: TcxGridTableView; ACanvas: TcxCanvas; AViewInfo: TcxGridColumnHeaderViewInfo; var ADone: Boolean);
begin
  DrawcxGridColumnOnFocused(Sender, ACanvas, AViewInfo);
end;

procedure TfmClientFrahtCard2.cxGrid1DBBandedTableView1DataControllerFilterChanged(Sender: TObject);
begin
	DrawcxGridColumnOnFiltered(Sender);
end;

procedure TfmClientFrahtCard2.cxGrid1DBBandedTableView1FocusedItemChanged(Sender: TcxCustomGridTableView; APrevFocusedItem, AFocusedItem: TcxCustomGridTableItem);
begin
	Sender.Painter.Invalidate;
end;

procedure TfmClientFrahtCard2.cxGrid1DBBandedTableView1KeyPress(Sender: TObject; var Key: Char);
begin
  FilterColumnGridOnKeyPress(TcxGridDBBandedTableView(TcxGridSite(Sender).GridView), Key);
end;

procedure TfmClientFrahtCard2.cxGrid1DBBandedTableView1SelectionChanged(Sender: TcxCustomGridTableView);
begin
  RefreshProcedureDetail;
end;

procedure TfmClientFrahtCard2.cxGrid2DBBandedTableView1CustomDrawCell(Sender: TcxCustomGridTableView; ACanvas: TcxCanvas; AViewInfo: TcxGridTableDataCellViewInfo; var ADone: Boolean);
begin
	if AViewInfo.GridRecord.Selected or AViewInfo.GridRecord.Focused then begin
		ACanvas.Brush.Color := clNavy;
		ACanvas.Font.Color := clWhite;
		if AViewInfo.Focused then ACanvas.Brush.Color := clBlue;
	end;
end;

procedure TfmClientFrahtCard2.cxGrid3DBBandedTableView1CustomDrawCell(Sender: TcxCustomGridTableView; ACanvas: TcxCanvas; AViewInfo: TcxGridTableDataCellViewInfo; var ADone: Boolean);
begin
  if (AViewInfo.GridRecord.Values[cxGrid3DBBandedTableView1bargain_date_period_finance.Index] <> NULL) then begin
    ACanvas.Font.Color := clPurple;
    ACanvas.Font.Style := [fsBold];
  end;

  if (AViewInfo.GridRecord.Values[cxGrid3DBBandedTableView1service_type.Index] = 0) then begin
    if  (AViewInfo.Item.ID = cxGrid3DBBandedTableView1service_type_name.Index) OR
        (AViewInfo.Item.ID = cxGrid3DBBandedTableView1agent_sum_fact_real.Index) OR
        (AViewInfo.Item.ID = cxGrid3DBBandedTableView1agent_sum_fact.Index) OR
        (AViewInfo.Item.ID = cxGrid3DBBandedTableView1agent_sum_fact_RUB.Index) then begin
      ACanvas.Font.Color := clRed;
      ACanvas.Font.Style := [fsBold];
    end;
  end;

  if (AViewInfo.GridRecord.Values[cxGrid3DBBandedTableView1service_type.Index] = 1) then begin
    if  (AViewInfo.Item.ID = cxGrid3DBBandedTableView1service_type_name.Index) OR
        (AViewInfo.Item.ID = cxGrid3DBBandedTableView1agent_sum_fact_real.Index) OR
        (AViewInfo.Item.ID = cxGrid3DBBandedTableView1agent_sum_fact.Index) OR
        (AViewInfo.Item.ID = cxGrid3DBBandedTableView1agent_sum_fact_RUB.Index) then begin
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

procedure TfmClientFrahtCard2.cxGrid3DBBandedTableView1SelectionChanged(Sender: TcxCustomGridTableView);
begin
  RefreshProcedureDetail;
end;

procedure TfmClientFrahtCard2.cxGrid4DBBandedTableView1CustomDrawCell(Sender: TcxCustomGridTableView; ACanvas: TcxCanvas; AViewInfo: TcxGridTableDataCellViewInfo; var ADone: Boolean);
begin
	if AViewInfo.GridRecord.Selected or AViewInfo.GridRecord.Focused then begin
		ACanvas.Brush.Color := clNavy;
		ACanvas.Font.Color := clWhite;
		if AViewInfo.Focused then ACanvas.Brush.Color := clBlue;
	end;
end;

procedure TfmClientFrahtCard2.cxGrid5DBBandedTableView1CustomDrawCell(Sender: TcxCustomGridTableView; ACanvas: TcxCanvas; AViewInfo: TcxGridTableDataCellViewInfo; var ADone: Boolean);
begin
	if AViewInfo.GridRecord.Selected or AViewInfo.GridRecord.Focused then begin
		ACanvas.Brush.Color := clNavy;
		ACanvas.Font.Color := clWhite;
		if AViewInfo.Focused then ACanvas.Brush.Color := clBlue;
	end;
end;

procedure TfmClientFrahtCard2.cxGrid6DBBandedTableView1CustomDrawCell(Sender: TcxCustomGridTableView; ACanvas: TcxCanvas; AViewInfo: TcxGridTableDataCellViewInfo; var ADone: Boolean);
begin
	if AViewInfo.GridRecord.Selected or AViewInfo.GridRecord.Focused then begin
		ACanvas.Brush.Color := clNavy;
		ACanvas.Font.Color := clWhite;
		if AViewInfo.Focused then ACanvas.Brush.Color := clBlue;
	end;
end;

procedure TfmClientFrahtCard2.cxGrid9DBBandedTableView1CustomDrawCell(Sender: TcxCustomGridTableView; ACanvas: TcxCanvas; AViewInfo: TcxGridTableDataCellViewInfo; var ADone: Boolean);
begin
	if AViewInfo.GridRecord.Selected or AViewInfo.GridRecord.Focused then begin
		ACanvas.Brush.Color := clNavy;
		ACanvas.Font.Color := clWhite;
		if AViewInfo.Focused then ACanvas.Brush.Color := clBlue;
	end;
end;

procedure TfmClientFrahtCard2.cxGridChange;
begin
  case cxPageControl1.ActivePage.Tag of
    0  : FView := cxGrid3DBBandedTableView1;  //Клиенты
    1  : FView := cxGrid1DBBandedTableView1;  //Субподрядчики
    3  : FView := cxGrid4DBBandedTableView1;  //Вагоны (перевозки)
    4  : FView := cxGrid5DBBandedTableView1;  //Вагоны (доход+расход)
    6  : FView := cxGrid9DBBandedTableView1;  // Вагоны (полная инф)
    7  : FView := cxGrid10DBBandedTableView1;  //Комиссия
    8  : FView := cxGrid13DBBandedTableView1;  //Субподрядчики (сверка)
    9  : FView := cxGrid11DBBandedTableView1;  //Услуги клиентам
    10 : FView := cxGrid12DBBandedTableView1;  //Услуги подрядчиков
  end;
end;

procedure TfmClientFrahtCard2.cxGrid11DBBandedTableView1CustomDrawCell(Sender: TcxCustomGridTableView; ACanvas: TcxCanvas; AViewInfo: TcxGridTableDataCellViewInfo; var ADone: Boolean);
begin
	if AViewInfo.GridRecord.Selected or AViewInfo.GridRecord.Focused then begin
		ACanvas.Brush.Color := clNavy;
		ACanvas.Font.Color := clWhite;
		if AViewInfo.Focused then ACanvas.Brush.Color := clBlue;
	end;
end;

procedure TfmClientFrahtCard2.cxGrid12DBBandedTableView1CustomDrawCell(Sender: TcxCustomGridTableView; ACanvas: TcxCanvas; AViewInfo: TcxGridTableDataCellViewInfo; var ADone: Boolean);
begin
	if AViewInfo.GridRecord.Selected or AViewInfo.GridRecord.Focused then begin
		ACanvas.Brush.Color := clNavy;
		ACanvas.Font.Color := clWhite;
		if AViewInfo.Focused then ACanvas.Brush.Color := clBlue;
	end;
end;

procedure TfmClientFrahtCard2.cxPageControl1Change(Sender: TObject);
begin
  if (dxBarButton36.Down) and (cxPageControl1.ActivePage.Tag in [0,1,2,7,8]) then begin
    dxBarButton34.Down := True;
  end;

  if cxPageControl1.ActivePage.Tag in [0,1,2,7,8] then begin
    dxBarButton36.Enabled := False;
  end else begin
    dxBarButton36.Enabled := True;
  end;

  if dxBarButton34.Down then begin
    dxBarSubItem4.ImageIndex := dxBarButton34.ImageIndex;
    dxBarManager1Bar1.Color  := clDefault;
  end else if dxBarButton35.Down then begin
    dxBarSubItem4.ImageIndex := dxBarButton35.ImageIndex;
    dxBarManager1Bar1.Color  := $00D4F0D4;
  end else if dxBarButton36.Down then begin
    dxBarSubItem4.ImageIndex := dxBarButton36.ImageIndex;
    dxBarManager1Bar1.Color  := $00FFE0C0;
  end;

  RefreshProcedure(-9);

  MonitorEventFormOpen('OPEN_FORM', self.Name + '\' + cxPageControl1.ActivePage.Caption, fmMain.Lis, -9);
end;

procedure TfmClientFrahtCard2.dxBarButton105Click(Sender: TObject);
var
  tmp_path, file_name : string;
begin
  tmp_path := ExtractFilePath(ParamStr(0)) + 'Temp' + '\';

  DeleteFileFromDir();
  repeat
    file_name := 'xls_' + IntToStr(GetTickCount) + '.xls';
  until not FileExists(tmp_path + file_name);

  if TControl(Sender).Tag = 1 then
    cxExportPivotGridToExcel(tmp_path + file_name, cxDBPivotGrid1, True)
  else
    cxExportPivotGridToExcel(tmp_path + file_name, cxDBPivotGrid1, False);

  ShellExecute(HWND(nil), 'open', PChar(file_name), nil, PChar(tmp_path), SW_SHOWNORMAL);
end;

procedure TfmClientFrahtCard2.dxBarButton12Click(Sender: TObject);
begin
  case TdxBarButton(Sender).ClickItemLink.Owner.Owner.Tag of
    1 : PrintcxGrid(cxGrid1DBBandedTableView1);
    2 : PrintcxGrid(cxGrid2DBBandedTableView1);
    3 : PrintcxGrid(cxGrid3DBBandedTableView1);
    4 : PrintcxGrid(cxGrid4DBBandedTableView1);
    5 : PrintcxGrid(cxGrid5DBBandedTableView1);
    6 : PrintcxGrid(cxGrid6DBBandedTableView1);
    9 : PrintcxGrid(cxGrid9DBBandedTableView1);
    10: PrintcxGrid(cxGrid10DBBandedTableView1);
    11: PrintcxGrid(cxGrid11DBBandedTableView1);
    12: PrintcxGrid(cxGrid12DBBandedTableView1);
    13: PrintcxGrid(cxGrid13DBBandedTableView1);
  end;
end;

procedure TfmClientFrahtCard2.dxBarButton13Click(Sender: TObject);
begin
  case TdxBarButton(Sender).ClickItemLink.Owner.Owner.Tag of
    1 : SetdxDBGridColumns(cxGrid1DBBandedTableView1);
    2 : SetdxDBGridColumns(cxGrid2DBBandedTableView1);
    3 : SetdxDBGridColumns(cxGrid3DBBandedTableView1);
    4 : SetdxDBGridColumns(cxGrid4DBBandedTableView1);
    5 : SetdxDBGridColumns(cxGrid5DBBandedTableView1);
    6 : SetdxDBGridColumns(cxGrid6DBBandedTableView1);
    9 : SetdxDBGridColumns(cxGrid9DBBandedTableView1);
    10: SetdxDBGridColumns(cxGrid10DBBandedTableView1);
    11: SetdxDBGridColumns(cxGrid11DBBandedTableView1);
    12: SetdxDBGridColumns(cxGrid12DBBandedTableView1);
    13: SetdxDBGridColumns(cxGrid13DBBandedTableView1);
  end;

end;

procedure TfmClientFrahtCard2.dxBarButton14Click(Sender: TObject);
begin
  case TdxBarButton(Sender).ClickItemLink.Owner.Owner.Tag of
    1 : cxGrid1DBBandedTableView1.OptionsView.GroupByBox := not cxGrid1DBBandedTableView1.OptionsView.GroupByBox;
    2 : cxGrid2DBBandedTableView1.OptionsView.GroupByBox := not cxGrid2DBBandedTableView1.OptionsView.GroupByBox;
    3 : cxGrid3DBBandedTableView1.OptionsView.GroupByBox := not cxGrid3DBBandedTableView1.OptionsView.GroupByBox;
    4 : cxGrid4DBBandedTableView1.OptionsView.GroupByBox := not cxGrid4DBBandedTableView1.OptionsView.GroupByBox;
    5 : cxGrid5DBBandedTableView1.OptionsView.GroupByBox := not cxGrid5DBBandedTableView1.OptionsView.GroupByBox;
    6 : cxGrid6DBBandedTableView1.OptionsView.GroupByBox := not cxGrid6DBBandedTableView1.OptionsView.GroupByBox;
    9 : cxGrid9DBBandedTableView1.OptionsView.GroupByBox := not cxGrid9DBBandedTableView1.OptionsView.GroupByBox;
    10: cxGrid10DBBandedTableView1.OptionsView.GroupByBox := not cxGrid10DBBandedTableView1.OptionsView.GroupByBox;
    11: cxGrid11DBBandedTableView1.OptionsView.GroupByBox := not cxGrid11DBBandedTableView1.OptionsView.GroupByBox;
    12: cxGrid12DBBandedTableView1.OptionsView.GroupByBox := not cxGrid12DBBandedTableView1.OptionsView.GroupByBox;
    13: cxGrid13DBBandedTableView1.OptionsView.GroupByBox := not cxGrid13DBBandedTableView1.OptionsView.GroupByBox;
  end;
end;

procedure TfmClientFrahtCard2.dxBarButton18Click(Sender: TObject);
begin
  fmPeriod := TfmPeriod.Create(Application, Fdate1, Fdate2, 3);
  if fmPeriod.ShowModal=mrOK then begin
    Screen.Cursor := crHourglass;
    Fdate1 := fmPeriod._GetMonth;
    Fdate2 := IncMonth(Fdate1, 1) - 1;
    dxBarSubItem2.Caption := FormatDateTime('mmmm yyyy', Fdate1);

    RefreshContract;
    RefreshProcedure(-9);

    Screen.Cursor := crDefault;
  end;
end;

procedure TfmClientFrahtCard2.dxBarButton19Click(Sender: TObject);
begin
  fmPeriod := TfmPeriod.Create(Application, Fdate1, Fdate2, 2);
  if fmPeriod.ShowModal=mrOK then begin
    Screen.Cursor := crHourglass;
    Fdate1 := fmPeriod._GetMonthBegin;
    Fdate2 := fmPeriod._GetMonthEnd;
    dxBarSubItem2.Caption := FormatDateTime('mmm yy', Fdate1) + ' - ' + FormatDateTime('mmm yy', Fdate2);

    RefreshContract;
    RefreshProcedure(-9);

    Screen.Cursor := crDefault;
  end;
end;

procedure TfmClientFrahtCard2.dxBarButton1Click(Sender: TObject);
begin
  RefreshContract();
  RefreshProcedure(-9);
end;

procedure TfmClientFrahtCard2.dxBarButton20Click(Sender: TObject);
var            i : integer;
  str_bargain_id : string;
begin
  cxGridChange;
  if FView.Controller.SelectedRowCount < 1 then exit;

  str_bargain_id := '';

  try
    for i := 0 to FView.Controller.SelectedRecordCount - 1 do
      str_bargain_id := str_bargain_id + ',' + IntToStr(FView.Controller.SelectedRows[i].Values[FView.GetColumnByFieldName('bargain_id').Index]);
  except
    Application.MessageBox('Отсутствует значение поля "№ записи перевозки"!', 'Внимание', MB_ICONWARNING or MB_OK);
    Exit;
  end;

  Delete(str_bargain_id, 1, 1);

  OpenAgree4List(Fdate1, Fdate2, dxBarButton35.Down, str_bargain_id);
end;


procedure TfmClientFrahtCard2.dxBarButton24Click(Sender: TObject);
var SP_Bargain_Block : TADOStoredProc;
                   i : integer;
 date_period_finance : TDateTime;
                   Q : TADOQuery;
begin
  Q := TADOQuery.Create(nil);
  Q.Connection := fmMain.Lis;
  Q.SQL.Add('SELECT TOP 1 cast(cast(year(dateadd(mm,1,max(finance_date))) as varchar)+'+
                      'RIGHT(''0''+cast(month(dateadd(mm,1,max(finance_date))) as varchar),2)+''01'' as datetime) AS finance_date '+
                      'FROM view_finance_period ORDER BY finance_date DESC');
  Q.Open;

  fmPeriod := TfmPeriod.Create(Application, Q.FieldByName('finance_date').AsDateTime, Q.FieldByName('finance_date').AsDateTime, 3 );
  if fmPeriod.ShowModal = mrOk then begin
    Screen.Cursor := crHourglass;
    date_period_finance := fmPeriod._GetMonth;

    if Q.FieldByName('finance_date').AsDateTime > date_period_finance then begin
      if Application.MessageBox(PChar('Финансовый месяц "'+ FormatDateTime('mmmm yyyy', date_period_finance) + '" закрыт.'+#13+'Вы уверены?'), 'Внимание', MB_OKCANCEL) = IDCANCEL then begin
        Screen.Cursor := crDefault;
        exit;
      end;
    end;

    SP_Bargain_Block := TADOStoredProc.Create(Application);
    SP_Bargain_Block.Connection := fmMain.Lis;
    SP_Bargain_Block.ProcedureName := 'sp_Bargain_Block;1';
    SP_Bargain_Block.Parameters.Refresh;
    for i := 0 to cxGrid3DBBandedTableView1.Controller.SelectedRowCount-1 do begin
      try
        SP_Bargain_Block.Parameters.ParamByName('@bargain_id').Value := cxGrid3DBBandedTableView1.Controller.SelectedRows[i].Values[cxGrid3DBBandedTableView1.GetColumnByFieldName('bargain_id').Index];
        SP_Bargain_Block.Parameters.ParamByName('@set_bargain_block').Value   := 1;
        SP_Bargain_Block.Parameters.ParamByName('@date_period_finance').Value := date_period_finance;
        SP_Bargain_Block.ExecProc;
      except
      end;
    end;
    SP_Bargain_Block.Free;

    RefreshProcedure(-9);
    Screen.Cursor := crDefault;
  end;

  Q.Free;
end;

procedure TfmClientFrahtCard2.dxBarButton25Click(Sender: TObject);
var              i : integer;
  SP_Bargain_Block : TADOStoredProc;
begin
  if Application.MessageBox('Вы точно уверены?', 'Внимание', MB_OKCANCEL) = ID_OK then begin;
    Screen.Cursor := crHourglass;

    SP_Bargain_Block := TADOStoredProc.Create(Application);
    SP_Bargain_Block.Connection := fmMain.Lis;
    SP_Bargain_Block.ProcedureName := 'sp_Bargain_Block;1';
    SP_Bargain_Block.Parameters.Refresh;
    for i := 0 to cxGrid3DBBandedTableView1.Controller.SelectedRowCount-1 do begin
      try
        SP_Bargain_Block.Parameters.ParamByName('@bargain_id').Value := cxGrid3DBBandedTableView1.Controller.SelectedRows[i].Values[cxGrid3DBBandedTableView1.GetColumnByFieldName('bargain_id').Index];
        SP_Bargain_Block.Parameters.ParamByName('@set_bargain_block').Value   := 0;
        SP_Bargain_Block.Parameters.ParamByName('@date_period_finance').Value := null;
        SP_Bargain_Block.ExecProc;
      except
      end;
    end;
    SP_Bargain_Block.Free;
    RefreshProcedure(-9);
  end;

end;

procedure TfmClientFrahtCard2.dxBarButton27Click(Sender: TObject);
var str_bargain_id : string;
    i : integer;
    Q_bargain : TADOQuery;
    Q : TADOQuery;
    users_group_cod : string;
    sp_fact_by_rate_SAVE : TADOStoredProc;
begin
  str_bargain_id := '';
  for i:=0 to cxGrid3DBBandedTableView1.Controller.SelectedRecordCount - 1 do
    str_bargain_id := str_bargain_id + ', ' + IntToStr(cxGrid3DBBandedTableView1.Controller.SelectedRows[i].Values[cxGrid3DBBandedTableView1bargain_id.Index]);
  Delete(str_bargain_id, 1, 2);

  Q := TADOQuery.Create(nil);
  Q.Connection := fmMain.Lis;
  Q.SQL.Add('SELECT users_group_cod FROM view_users WHERE users_name = SYSTEM_USER;');
  Q.Open;
  users_group_cod := Q.FieldByName('users_group_cod').AsString;
  Q.Free;

  Q_bargain := TADOQuery.Create(nil);
  Q_bargain.Connection := fmMain.Lis;
  Q_bargain.SQL.Add('SELECT * FROM view_bargain WHERE bargain_id in (' + str_bargain_id + ')');
  Q_bargain.Open;

  sp_fact_by_rate_SAVE := TADOStoredProc.Create(nil);
  sp_fact_by_rate_SAVE.Connection := fmMain.Lis;
  sp_fact_by_rate_SAVE.ProcedureName := 'sp_fact_by_rate_SAVE';

  while not Q_bargain.Eof do begin
    ShowTextMessage('Сохранение фрахтовой карточки №' + Q_bargain.FieldByName('bargain_cod').AsString + '...' + #10 + 'Осталось ' + IntToStr(Q_bargain.RecordCount - Q_bargain.RecNo) + '...', False);

//    if (Q_bargain['date_period_finance']<>NULL) OR (Q_bargain.FieldByName('set_bargain_block').AsBoolean) then begin
//      // Перевозка закрыта
//      Application.MessageBox(PChar('Данные по фрахтовой карточке № '+Q_bargain.FieldByName('bargain_cod').AsString+' не будут сохранены! Перевозка закрыта в финансовом месяце'), 'Ошибка', MB_OK+MB_ICONWARNING);
//    end else if ((Q_bargain['agreement_id'] = NULL) AND (Q_bargain['agreement_note'] = NULL)) AND (Q_bargain['date_period'] >= EncodeDate(2009, 3, 1)) then begin
//      // Нет приложение && Перевозочный месяц от марта 2009
//      Application.MessageBox(PChar('Данные по фрахтовой карточке № '+Q_bargain.FieldByName('bargain_cod').AsString+' не будут сохранены! В перевозке не указано приложение'), 'Ошибка', MB_OK+MB_ICONWARNING);
//    end else if (Q_bargain['set_bargain_weight'] = NULL) AND (users_group_cod  = '0') then begin
//      // (Признак "Вес в сводный отчет + только для СФХ)"
//      Application.MessageBox(PChar('Данные по фрахтовой карточке № '+Q_bargain.FieldByName('bargain_cod').AsString+' не будут сохранены! В перевозке не указан признак "Вес для сводного отчёта"'), 'Ошибка', MB_OK+MB_ICONWARNING);
//    end else begin


      sp_fact_by_rate_SAVE.Parameters.Refresh;
      sp_fact_by_rate_SAVE.Parameters.ParamByName('@bargain_id').Value := Q_bargain.FieldByName('bargain_id').Value;
      try
        sp_fact_by_rate_SAVE.ExecProc;
      except
      end;
//    end;

    Q_bargain.Next;
  end;

  sp_fact_by_rate_SAVE.Free;
  Q_bargain.Free;
  ShowTextMessage;

  RefreshProcedure(-9);
end;

procedure TfmClientFrahtCard2.dxBarButton2Click(Sender: TObject);
begin
  cxGrid6.Visible     := dxBarButton2.Down;
  cxSplitter1.Visible := dxBarButton2.Down;
  cxGrid2.Visible     := dxBarButton2.Down;
  cxSplitter2.Visible := dxBarButton2.Down;

  if dxBarButton2.Down then begin
//    RefreshProcedureDetail;
  end;
end;

procedure TfmClientFrahtCard2.dxBarButton34Click(Sender: TObject);
begin
  if dxBarButton34.Down then begin
    dxBarSubItem4.ImageIndex := dxBarButton34.ImageIndex;
    dxBarManager1Bar1.Color  := clDefault;
    dxBarButton18.Caption := 'Месяц перевозки';
    dxBarButton19.Caption := 'Период перевозки';
  end else if dxBarButton35.Down then begin
    dxBarSubItem4.ImageIndex := dxBarButton35.ImageIndex;
    dxBarManager1Bar1.Color  := $00D4F0D4;
    dxBarButton18.Caption := 'Финансовый месяц';
    dxBarButton19.Caption := 'Финансовый период';
  end else if dxBarButton36.Down then begin
    dxBarSubItem4.ImageIndex := dxBarButton36.ImageIndex;
    dxBarManager1Bar1.Color  := $00FFE0C0;
    dxBarButton18.Caption := 'Месяц отправления';
    dxBarButton19.Caption := 'Период отправления';
  end;
  RefreshContract();
  RefreshProcedure(-9);
end;


procedure TfmClientFrahtCard2.dxBarButton50Click(Sender: TObject);
var i                        : integer;
    row_0                    : integer;
    col_0                    : integer;

    exApp,exWkb, exWks       : variant;
    array_data               : Variant;
    range, cell1, cell2      : Variant;

    str_bargain_id1          : string;
    str_bargain_id2          : string;
    user_name                : string;

    str_sum_gr5              : string;
    str_sum_gr6              : string;

    str_sum5                 : string;
    str_sum6                 : string;
    str_sum7                 : string;
    str_sum8                 : string;

    Q_UsersList              : TADOQuery;
    Q_bargain                : TADOQuery;

    SP_report_comparison_revenues_period
                             : TADOStoredProc;

    Fdate3                   : TDateTime;
    Fdate4                   : TDateTime;

    UsersList                : TStringList;
    ListGrp                  : TStringList;

    d                        : TDateTime;
begin
  UsersList := TStringList.Create;
  if usr_pwd.user_func.Locate('func_name', 'set_consolidate_reports', [loCaseInsensitive]) then begin
    // найдеи имя пользователя без постфикса
    user_name := usr_pwd.user_name;
    user_name := ReverseString(user_name);
    user_name := RightStr(user_name, Length(user_name) - Pos('_', user_name));
    user_name := ReverseString(user_name);
    // консолидированный отчет - необходимо выбрать СОбственные организации
    Q_UsersList := TADOQuery.Create(nil);
    Q_UsersList.Connection := fmMain.Lis;
    Q_UsersList.SQL.Add('select users_id, users_name, users_group_id, users_group_cod = inf_obj_name_full, firm_name = inf_obj_name');
    Q_UsersList.SQL.Add('from users');
    Q_UsersList.SQL.Add('left join inf_obj i on users_group_id = inf_obj_id');
    Q_UsersList.SQL.Add('where users_name in (''' + user_name + ''', ''' + user_name + ''' + ''_'' + inf_obj_name_full) AND i.date_end IS NULL');
    Q_UsersList.SQL.Add('order by 1;');
    Q_UsersList.Open;

    fmFilter := TfmFilter.Create(0, Q_UsersList, 'users_id', 'users_group_cod', 'firm_name');
    fmFilter._SetSelfFirmChoose := True;
    if fmFilter.ShowModal = mrOk then begin
      UsersList.CommaText := fmFilter._GetStrId;

      // преобразуем список ID в список имен
      for i := 0 to UsersList.Count - 1 do begin
        Q_UsersList.Locate('users_id', StrToInt(UsersList.Strings[i]), []);
        UsersList.Strings[i] := Q_UsersList.FieldByName('users_name').AsString;
      end;
    end;
    Q_UsersList.Free;
  end else begin
    // обычный отчет - только для текущей собственной организации
    UsersList.Add(usr_pwd.user_name);
  end;

  Screen.Cursor := crHourglass;

  ShowTextMessage('Подготовка данных ...'#10'Формирование списка перевозок ...', False);

  //Получаем набор перевозок за ПЕРВЫЙ интервал дат  1111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111

  str_bargain_id1 := '';
  Q_bargain := TADOQuery.Create(nil);
  Q_bargain.SQL.Text := 'SELECT bargain_id FROM view_bargain_rights ' +
  'WHERE date_period_finance BETWEEN ' + DateToSQL(Fdate1) + ' AND ' + DateToSQL(Fdate2) + ' AND (bargain_sum_fact IS NOT NULL)';
  // Цикл по списку собственных организаций
  for i := 0 to UsersList.Count - 1 do begin
    Q_bargain.ConnectionString := 'Persist Security Info=True;Provider=SQLOLEDB.1;User ID=' + UsersList.Strings[i] + ';Password=' + usr_pwd^.user_pass + ';Initial Catalog=' + usr_pwd^.catalog + ';Data Source=' + usr_pwd^.server+';';
    Q_bargain.Open;
    while not Q_bargain.Eof do begin
      if str_bargain_id1 <> '' then str_bargain_id1 := str_bargain_id1 + ',';
      str_bargain_id1 := str_bargain_id1 + Q_bargain.FieldByName('bargain_id').AsString;
      Q_bargain.Next;
    end;
    Q_bargain.Close;
  end;

  if str_bargain_id1 = ''  then begin
    ShowMessage('Нет данных.');
    ShowTextMessage();
    Screen.Cursor := crDefault;
    Exit;
  end;

  //Получаем набор перевозок за ВТОРОЙ интервал дат  222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222
  //получаем даты второго интервала для сравнения суммарных данных

  fmPeriod := TfmPeriod.Create(Application, Fdate1, Fdate2, 2);
  if fmPeriod.ShowModal = mrOK then begin
    Fdate3 := fmPeriod._GetMonthBegin;
    Fdate4 := fmPeriod._GetMonthEnd;

    str_bargain_id2 := '';
    Q_bargain.Close;
    Q_bargain.SQL.Text := 'SELECT bargain_id FROM view_bargain_rights ' +
    'WHERE date_period_finance BETWEEN ' + DateToSQL(Fdate3) + ' AND ' + DateToSQL(Fdate4) + ' AND (bargain_sum_fact IS NOT NULL)';
    // Цикл по списку собственных организаций
    for i := 0 to UsersList.Count - 1 do begin
      Q_bargain.ConnectionString := 'Persist Security Info=True;Provider=SQLOLEDB.1;User ID=' + UsersList.Strings[i] + ';Password=' + usr_pwd^.user_pass + ';Initial Catalog=' + usr_pwd^.catalog + ';Data Source=' + usr_pwd^.server+';';
      Q_bargain.Open;
      while not Q_bargain.Eof do begin
        if str_bargain_id2 <> '' then str_bargain_id2 := str_bargain_id2 + ',';
        str_bargain_id2 := str_bargain_id2 + Q_bargain.FieldByName('bargain_id').AsString;
        Q_bargain.Next;
      end;
      Q_bargain.Close;
    end;
  end;

  Q_bargain.Free;
  d := Now;
  ShowTextMessage('Подготовка данных ...'#10'Получение данных с сервера ...', False);

  //Формирование набора данных для выгрузки в EXCEL 333333333333333333333333333333333333333333333333333333333333333333333333333333333333333333333333333
  // на этапе получения данных использование представления view_fraht_agent_rights не имеет смысла,
  // т.к. отбор ведется по списку уже отобранных перевозок
  SP_report_comparison_revenues_period := TADOStoredProc.Create(nil);
  SP_report_comparison_revenues_period.Connection := fmMain.Lis;
  SP_report_comparison_revenues_period.CommandTimeout := 300;
  SP_report_comparison_revenues_period.ProcedureName := 'sp_report_comparison_revenues_period';
  SP_report_comparison_revenues_period.Parameters.Refresh;
  SP_report_comparison_revenues_period.Parameters.ParamByName('@type_action'    ).Value := 0;
  SP_report_comparison_revenues_period.Parameters.ParamByName('@str_bargain_id1').Value := str_bargain_id1;
  SP_report_comparison_revenues_period.Parameters.ParamByName('@str_bargain_id2').Value := str_bargain_id2;
  SP_report_comparison_revenues_period.Open;
  SP_report_comparison_revenues_period.First;
  SP_report_comparison_revenues_period.Next;
  ShowTextMessage('Запуск сервера автоматизации ...', False);

  exApp := CreateOleObject('Excel.Application');
  exWkb := exApp.Workbooks.Add(GetDocBlob(fmMain.Lis, 47));
  exWks := exApp.ActiveWorkbook.WorkSheets[1];

  str_sum_gr5 := '='; str_sum_gr6 := '='; //обнуляем для новой группы
  str_sum5    := '='; str_sum6    := '='; str_sum7 := '='; str_sum8 := '=';

  row_0 := 1;
  col_0 := 1;
  array_data := VarArrayCreate([1, SP_report_comparison_revenues_period.RecordCount, 0, 8], varVariant);

  ListGrp := TStringList.Create;

  while not SP_report_comparison_revenues_period.Eof do begin

    if (SP_report_comparison_revenues_period.RecordCount - SP_report_comparison_revenues_period.RecNo) mod 50 = 0 then
      ShowTextMessage('Осталось '+ IntToStr(SP_report_comparison_revenues_period.RecordCount - SP_report_comparison_revenues_period.RecNo) + ' записей...', False);

    if (SP_report_comparison_revenues_period.FieldByName('client_notnds_RUB').Asinteger = 0) AND
       (SP_report_comparison_revenues_period.FieldByName('agent_notNDS_RUB').Asinteger = 0)  then begin
      SP_report_comparison_revenues_period.Next;
    end else begin
      array_data[row_0, 0] := SP_report_comparison_revenues_period.FieldByName('rod_vagon_name'       ).Value;
      array_data[row_0, 1] := SP_report_comparison_revenues_period.FieldByName('firm_self_name'       ).Value;
      array_data[row_0, 2] := SP_report_comparison_revenues_period.FieldByName('firm_customer_name'   ).Value;
      array_data[row_0, 3] := SP_report_comparison_revenues_period.FieldByName('budget_name'          ).Value;
      array_data[row_0, 4] := iif(SP_report_comparison_revenues_period.FieldByName('client_notnds_RUB'    ).Value = 0, '', SP_report_comparison_revenues_period.FieldByName('client_notnds_RUB'    ).Value);
      array_data[row_0, 5] := iif(SP_report_comparison_revenues_period.FieldByName('agent_notNDS_RUB'     ).Value = 0, '', SP_report_comparison_revenues_period.FieldByName('agent_notNDS_RUB'     ).Value);
      array_data[row_0, 6] := iif(SP_report_comparison_revenues_period.FieldByName('comis_sum_notnds_RUB1').Value = 0, '', SP_report_comparison_revenues_period.FieldByName('comis_sum_notnds_RUB1').Value);
      array_data[row_0, 7] := iif(SP_report_comparison_revenues_period.FieldByName('comis_sum_notnds_RUB2').Value = 0, '', SP_report_comparison_revenues_period.FieldByName('comis_sum_notnds_RUB2').Value);

      //запись формулы расчета итоговой суммы по суммам строк услуг
      if SP_report_comparison_revenues_period.FieldByName('npp').Asinteger <> 1 then begin
        str_sum_gr5 := str_sum_gr5 + '+E' + IntToStr(row_0 + 2);
        str_sum_gr6 := str_sum_gr6 + '+F' + IntToStr(row_0 + 2);
      end;

      if SP_report_comparison_revenues_period.FieldByName('npp').Asinteger = 1 then begin

        ListGrp.Add(IntToStr(row_0 + 2));

        array_data[row_0, 4] := str_sum_gr5;
        array_data[row_0, 5] := str_sum_gr6;
        array_data[row_0, 6] := '=E' + IntToStr(row_0 + 2) + '-F' + IntToStr(row_0 + 2);
        array_data[row_0, 8] := '=G' + IntToStr(row_0 + 2) + '-H' + IntToStr(row_0 + 2);

        str_sum_gr5 := '='; str_sum_gr6 := '='; //обнуляем для новой группы

        //запись формулы расчета итоговой суммы по суммам строк услуг
        str_sum5 := str_sum5 + '+E' + IntToStr(row_0 + 2);
        str_sum6 := str_sum6 + '+F' + IntToStr(row_0 + 2);
        str_sum7 := str_sum7 + '+G' + IntToStr(row_0 + 2);
        str_sum8 := str_sum8 + '+H' + IntToStr(row_0 + 2);
      end;

      row_0 := row_0 + 1;
      SP_report_comparison_revenues_period.Next;
    end;
  end;

  // Левая верхняя ячейка области, в которую будем выводить данные
  cell1 := exWks.Cells[3, 1];
  // Правая нижняя ячейка области, в которую будем выводить данные
  cell2 := exWks.Cells[SP_report_comparison_revenues_period.RecordCount + 2, 9];
  // Область, в которую будем выводить данные
  range := exWks.Range[cell1, cell2];
  // Вывод данных
  range.Value := array_data;

  VarClear(array_data);

  //формируев шапку с необходимыми датами
  exWks.Cells[2, 5] := 'выручка без НДС, руб. с '          + FormatDateTime('dd.mm.yyyy', Fdate1) + ' по ' + FormatDateTime('dd.mm.yyyy', Fdate2);
  exWks.Cells[2, 6] := 'себестоимость без НДС, руб. с '    + FormatDateTime('dd.mm.yyyy', Fdate1) + ' по ' + FormatDateTime('dd.mm.yyyy', Fdate2);
  exWks.Cells[2, 7] := 'валовая комиссия без НДС, руб. с ' + FormatDateTime('dd.mm.yyyy', Fdate1) + ' по ' + FormatDateTime('dd.mm.yyyy', Fdate2);
  exWks.Cells[2, 8] := 'валовая комиссия без НДС, руб. с ' + FormatDateTime('dd.mm.yyyy', Fdate3) + ' по ' + FormatDateTime('dd.mm.yyyy', Fdate4);

  exWks.Range['A2:H2'].AutoFilter;

  {устанавливаем черное выделение границ области данны}
  exWks.Range['A3:H' + IntToStr(row_0 + 1)].Borders[1].LineStyle := 1;
  exWks.Range['A3:H' + IntToStr(row_0 + 1)].Borders[2].LineStyle := 1;
  exWks.Range['A3:H' + IntToStr(row_0 + 1)].Borders[3].LineStyle := 1;
  exWks.Range['A3:H' + IntToStr(row_0 + 1)].Borders[4].LineStyle := 1;

  //вывод строки с итоговой суммой над шапкой
  exWks.Cells[1, col_0 + 3] := '   ИТОГО :';
  exWks.Cells[1, col_0 + 4].Formula := str_sum5;
  exWks.Cells[1, col_0 + 5].Formula := str_sum6;
  exWks.Cells[1, col_0 + 6].Formula := str_sum7;
  exWks.Cells[1, col_0 + 7].Formula := str_sum8;

  //вывод строки с итоговой суммой в конце
  exWks.Cells[row_0 + 2, col_0 + 3] := '   ИТОГО :';
  exWks.Cells[row_0 + 2, col_0 + 4].Formula := str_sum5;
  exWks.Cells[row_0 + 2, col_0 + 5].Formula := str_sum6;
  exWks.Cells[row_0 + 2, col_0 + 6].Formula := str_sum7;
  exWks.Cells[row_0 + 2, col_0 + 7].Formula := str_sum8;

  ShowTextMessage('Настройка оформления 2 ...', False);
  {устанавливаем суммы групп}
  for i := 0 to ListGrp.Count - 1 do begin
    exWks.Range['A' + ListGrp.Strings[i] + ':H' + ListGrp.Strings[i]].Interior.Color := RGB(255, 242, 204);
    exWks.Range['A' + ListGrp.Strings[i] + ':H' + ListGrp.Strings[i]].Font.Bold := True;
  end;

  ShowTextMessage();
  exApp.Visible := True;
  exWks := Null; exWkb := Null; exApp := Null;
  VarClear(exWks); VarClear(exWkb);  VarClear(exApp);
  SP_report_comparison_revenues_period.Free;
  UsersList.Free;
  ListGrp.Free;
  fmMain.dxStatusBar1.Panels[3].Text := IntToStr(SecondsBetween(now, d)) + ' сек.';
  Screen.Cursor := crDefault;
end;

procedure TfmClientFrahtCard2.dxBarButton37Click(Sender: TObject);
var Fbargain_id, agent_count : integer;
    exApp,exWkb, exWks       : variant;
    str_bargain_id           : string;
    field_date_name          : string;
    Q_bargain                : TADOQuery;
    sp_balance               : TADOStoredProc;
    cnt_record               : integer;
    cnt_column               : integer;
    array_data               : Variant;
    range, cell1, cell2      : Variant;

    Ffirm_self_id, firm_cnt  : integer;
    i                        : integer;
    user_name                : string;
    Q_UsersList              : TADOQuery;
    UsersList                : TStringList;
begin
  if dxBarButton35.Down then begin
    if Application.MessageBox('Баланс будет построен по ФИНАНСОВОМУ месяцу.', 'Внимание', MB_ICONQUESTION or MB_OKCANCEL) <> ID_OK then Exit;
  end else begin
    if Application.MessageBox('Баланс будет построен по ПЕРЕВОЗОЧНОМУ месяцу.', 'Внимание', MB_ICONQUESTION or MB_OKCANCEL) <> ID_OK then Exit;
  end;

  field_date_name := iif(dxBarButton35.Down, 'date_period_finance', 'date_period');

  UsersList := TStringList.Create;
  if usr_pwd.user_func.Locate('func_name', 'set_consolidate_reports', [loCaseInsensitive]) then begin
    // найдеи имя пользователя без постфикса
    user_name := usr_pwd.user_name;
    user_name := ReverseString(user_name);
    user_name := RightStr(user_name, Length(user_name) - Pos('_', user_name));
    user_name := ReverseString(user_name);
    // консолидированный отчет - необходимо выбрать СОбственные организации
    Q_UsersList := TADOQuery.Create(nil);
    Q_UsersList.Connection := fmMain.Lis;
    Q_UsersList.SQL.Add('select users_id, users_name, users_group_id, users_group_cod = inf_obj_name_full, firm_name = inf_obj_name');
    Q_UsersList.SQL.Add('from users');
    Q_UsersList.SQL.Add('left join inf_obj on users_group_id = inf_obj_id');
    Q_UsersList.SQL.Add('where users_name in (''' + user_name + ''', ''' + user_name + ''' + ''_'' + inf_obj_name_full)');
    Q_UsersList.SQL.Add('order by 1;');
    Q_UsersList.Open;

    fmFilter := TfmFilter.Create(0, Q_UsersList, 'users_id', 'users_group_cod', 'firm_name');
    fmFilter._SetSelfFirmChoose := True;
    if fmFilter.ShowModal = mrOk then begin
      UsersList.CommaText := fmFilter._GetStrId;

      // преобразуем список ID в список имен
      for i := 0 to UsersList.Count - 1 do begin
        Q_UsersList.Locate('users_id', StrToInt(UsersList.Strings[i]), []);
        UsersList.Strings[i] := Q_UsersList.FieldByName('users_name').AsString;
      end;
    end;

    Q_UsersList.Free;
  end else begin
    // обычный отчет - только для текущей собственной организации
    UsersList.Add(usr_pwd.user_name);
  end;

  Screen.Cursor := crHourglass;

  ShowTextMessage('Подготовка данных ...'#10'Формирование списка перевозок ...', False);

  str_bargain_id := '';
  Q_bargain := TADOQuery.Create(nil);
  Q_bargain.SQL.Add('SELECT bargain_id FROM view_bargain_rights');
  Q_bargain.SQL.Add('WHERE ' + field_date_name + ' BETWEEN ' + DateToSQL(Fdate1) + ' AND ' + DateToSQL(Fdate2));
  Q_bargain.SQL.Add('AND (bargain_sum_fact is NOT NULL)');
  // Цикл по списку собственных организаций
  for i := 0 to UsersList.Count - 1 do begin
    Q_bargain.ConnectionString := 'Persist Security Info=True;Provider=SQLOLEDB.1;User ID=' + UsersList.Strings[i] + ';Password=' + usr_pwd^.user_pass + ';Initial Catalog=' + usr_pwd^.catalog + ';Data Source=' + usr_pwd^.server+';';
    Q_bargain.Open;
    while not Q_bargain.Eof do begin
      if str_bargain_id <> '' then str_bargain_id := str_bargain_id + ',';
      str_bargain_id := str_bargain_id + Q_bargain.FieldByName('bargain_id').AsString;
      Q_bargain.Next;
    end;

    Q_bargain.Close;
  end;
  Q_bargain.Free;

  if str_bargain_id = ''  then begin
    ShowMessage('Нет данных.');
    ShowTextMessage();
    Screen.Cursor := crDefault;
    Exit;
  end;

  ShowTextMessage('Подготовка данных ...'#10'Получение данных с сервера ...', False);
  // на этапе получения данных использование представления view_fraht_agent_rights не имеет смысла,
  // т.к. отбор ведется по списку уже отобранных перевозок
  sp_balance := TADOStoredProc.Create(nil);
  sp_balance.Connection := fmMain.Lis;
  sp_balance.CommandTimeout := 300;
  sp_balance.ProcedureName := 'sp_Report_balance';
  sp_balance.Parameters.Refresh;
  sp_balance.Parameters.ParamByName('@str_bargain_id').Value := str_bargain_id;
  sp_balance.Open;

  ShowTextMessage('Запуск сервера автоматизации ...', False);

  exApp := CreateOleObject('Excel.Application');
  exWkb := exApp.Workbooks.Add(GetDocBlob(fmMain.Lis, 26)); // 'Баланс расч-эк отдел.xls'
  exWks := exApp.ActiveWorkbook.WorkSheets[1];
//  exApp.Visible := True;


  cnt_record := sp_balance.RecordCount;
  cnt_column := 50;
  array_data := VarArrayCreate([1, cnt_record, 0, cnt_column], varVariant);

  Fbargain_id := -9;
  agent_count := 0;
  Ffirm_self_id := -9;
  firm_cnt := 0;
  sp_balance.First;

  while not sp_balance.Eof do begin

    if (sp_balance.RecordCount - sp_balance.RecNo) mod 10 = 0 then
      ShowTextMessage('Осталось '+ IntToStr(sp_balance.RecordCount - sp_balance.RecNo) + ' записей...', False);
    try
      if Ffirm_self_id <> sp_balance['firm_self'] then begin
        Ffirm_self_id := sp_balance['firm_self'];
        inc(firm_cnt);
      end;
      // Выделим цветом каждую вторую организацию
      if (firm_cnt mod 2) = 0 then
        exWks.Range['B'+IntToStr(sp_balance.RecNo+5)+':AN'+IntToStr(sp_balance.RecNo+5)].Interior.Color := RGB(218, 238, 243);

      array_data[sp_balance.RecNo, 0] := sp_balance.FieldByName('bargain_id').Value;

      array_data[sp_balance.RecNo, 1] := sp_balance.FieldByName('FIO_users_owner').Value;
      array_data[sp_balance.RecNo, 2] := sp_balance.FieldByName('vid_transfer_name').Value;
      array_data[sp_balance.RecNo, 3] := sp_balance.FieldByName('kargoETSNG_name').Value;
      array_data[sp_balance.RecNo, 4] := sp_balance.FieldByName('kargoETSNG_group_name').Value;
      array_data[sp_balance.RecNo, 5] := sp_balance.FieldByName('node_begin_name').Value;
      array_data[sp_balance.RecNo, 6] := sp_balance.FieldByName('node_end_name').Value;
//      array_data[sp_balance.RecNo, 7] := sp_balance.FieldByName('amount_fact').Value;
//      array_data[sp_balance.RecNo, 8] := iif(sp_balance.FieldByName('set_bargain_weight').AsBoolean, sp_balance.FieldByName('amount_fact').Value, null);
      array_data[sp_balance.RecNo, 9] := sp_balance.FieldByName('amount_units_fact').Value;

      array_data[sp_balance.RecNo,11] := sp_balance.FieldByName('firm_self_name_short').Value;
      array_data[sp_balance.RecNo,12] := null; //'''' + sp_balance.FieldByName('invoice_cod').Value;
      array_data[sp_balance.RecNo,13] := sp_balance.FieldByName('firm_customer_name_short').Value;
      array_data[sp_balance.RecNo,14] := sp_balance.FieldByName('client_contract_cod').Value;

      if (Fbargain_id <> sp_balance['bargain_id']) then begin
        // комиссия  (считаем для предыдущего блока)
        if agent_count > 0 then begin
          array_data[sp_balance.RecNo - agent_count,30] := '=RC[-14]-SUM((RC[-6]:R['+IntToStr(agent_count-1)+']C[-6]))';
          array_data[sp_balance.RecNo - agent_count,31] := '=RC[-14]-SUM((RC[-6]:R['+IntToStr(agent_count-1)+']C[-6]))';
          array_data[sp_balance.RecNo - agent_count,32] := '=RC[-14]-SUM((RC[-6]:R['+IntToStr(agent_count-1)+']C[-6]))';
        end;

        if (sp_balance.FieldByName('ed_izm_cod').AsString = '0') OR (sp_balance.FieldByName('ed_izm_cod').AsString = '2') then
          array_data[sp_balance.RecNo,10] := 'вагон';
        if sp_balance.FieldByName('ed_izm_cod').AsString = '1'  then
          array_data[sp_balance.RecNo,10] := 'контейнер';
        if sp_balance.FieldByName('ed_izm_cod').AsString = '3'  then
          array_data[sp_balance.RecNo,10] := 'автомобиль';

        // вес только для клиента, для подрядчика вес не устанавливаем
        array_data[sp_balance.RecNo, 7] := sp_balance.FieldByName('amount_fact').Value;
        array_data[sp_balance.RecNo, 8] := iif(sp_balance.FieldByName('set_bargain_weight').AsBoolean, sp_balance.FieldByName('amount_fact').Value, null);
        array_data[sp_balance.RecNo,38] := iif(sp_balance.FieldByName('set_bargain_weight').AsBoolean, sp_balance.FieldByName('self_park_weight').Value, null);
        array_data[sp_balance.RecNo,39] := iif(sp_balance.FieldByName('set_bargain_weight').AsBoolean, sp_balance.FieldByName('other_park_weight').Value, null);

        array_data[sp_balance.RecNo,15] := sp_balance.FieldByName('client_budget_name').Value; // Услуга Доход
        array_data[sp_balance.RecNo,16] := sp_balance.FieldByName('client_notNDS_RUB').Value;
        array_data[sp_balance.RecNo,17] := sp_balance.FieldByName('client_NDS_RUB').Value;
        array_data[sp_balance.RecNo,18] := sp_balance.FieldByName('bargain_sum_fact_RUB').Value;

        exWks.Range['B'+IntToStr(sp_balance.RecNo+5)+':U'+IntToStr(sp_balance.RecNo+5)].Font.Bold := 1;
        Fbargain_id := sp_balance['bargain_id'];
        agent_count := 1;
      end else begin
        agent_count := agent_count + 1;
//        array_data[sp_balance.RecNo,15] := ''' ';
//        array_data[sp_balance.RecNo,16] := ''' ';
//        array_data[sp_balance.RecNo,17] := ''' ';
//
//        array_data[sp_balance.RecNo,28] := ''' ';
//        array_data[sp_balance.RecNo,29] := ''' ';
//        array_data[sp_balance.RecNo,30] := ''' ';
      end;

      array_data[sp_balance.RecNo, 21] := sp_balance.FieldByName('firm_agent_name_short').Value;
      array_data[sp_balance.RecNo, 22] := sp_balance.FieldByName('agent_contract_cod').Value;

      array_data[sp_balance.RecNo, 23] := sp_balance.FieldByName('agent_budget_name').Value; // Услуга Расход
      array_data[sp_balance.RecNo, 24] := sp_balance.FieldByName('agent_notNDS_RUB').Value;
      array_data[sp_balance.RecNo, 25] := sp_balance.FieldByName('agent_NDS_RUB').Value;
      array_data[sp_balance.RecNo, 26] := sp_balance.FieldByName('agent_sum_fact_RUB').Value;

      array_data[sp_balance.RecNo, 27] := sp_balance.FieldByName('brief_name').Value;//'RUB';
      array_data[sp_balance.RecNo, 33] := sp_balance.FieldByName('users_group_name').Value;
      if not sp_balance.FieldByName('date_period_finance').IsNull then array_data[sp_balance.RecNo,34] := sp_balance.FieldByName('date_period_finance').Value;
      if not sp_balance.FieldByName('date_period'        ).IsNull then array_data[sp_balance.RecNo,35] := sp_balance.FieldByName('date_period').Value;
      array_data[sp_balance.RecNo, 36] := sp_balance.FieldByName('firm_agent_self_name').Value;
      array_data[sp_balance.RecNo, 37] := sp_balance.FieldByName('rod_vagon_name').Value;

      array_data[sp_balance.RecNo, 46] := sp_balance.FieldByName('client_contract_id').Value;
      array_data[sp_balance.RecNo, 47] := sp_balance.FieldByName('contract_agent_id').Value;
      array_data[sp_balance.RecNo, 48] := sp_balance.FieldByName('client_budget_id').Value;
      array_data[sp_balance.RecNo, 49] := sp_balance.FieldByName('agent_budget_id').Value;
    except
    end;
    sp_balance.Next;
  end;
  ShowTextMessage('Осталось '+ IntToStr(sp_balance.RecordCount - sp_balance.RecNo) + ' записей...', False);

  // комиссия  (считаем для последнего блока)
  if agent_count > 0 then begin
    array_data[cnt_record + 1 - agent_count,30] := '=RC[-14]-SUM((RC[-6]:R['+IntToStr(agent_count-1)+']C[-6]))';
    array_data[cnt_record + 1 - agent_count,31] := '=RC[-14]-SUM((RC[-6]:R['+IntToStr(agent_count-1)+']C[-6]))';
    array_data[cnt_record + 1 - agent_count,32] := '=RC[-14]-SUM((RC[-6]:R['+IntToStr(agent_count-1)+']C[-6]))';
  end;

  // Левая верхняя ячейка области, в которую будем выводить данные
  cell1 := exWks.Cells[6, 1];
  // Правая нижняя ячейка области, в которую будем выводить данные
  cell2 := exWks.Cells[cnt_record + 5, cnt_column + 1];
  // Область, в которую будем выводить данные
  range := exWks.Range[cell1, cell2];
  // Вывод данных
  range.Value := array_data;

  VarClear(array_data);

// -------- ИТОГИ
  if FormatDateTime('m', Fdate1)=FormatDateTime('m', Fdate2) then exWks.Range['B2'].Value := FormatDateTime('mmmm yyyy г.', Fdate2)
  else exWks.Range['B2'].Value := 'Период: с '+ FormatDateTime('mmmm', Fdate1)+' - '+FormatDateTime('mmmm yyyy', Fdate2);

  exWks.Rows[5].AutoFilter;
  exWks.Range['H'+IntToStr(cnt_record + 6)].Formula  := '=SUBTOTAL(9,R[-'+IntToStr(cnt_record)+']C:R[-1]C)';
  exWks.Range['I'+IntToStr(cnt_record + 6)].Formula  := '=SUBTOTAL(9,R[-'+IntToStr(cnt_record)+']C:R[-1]C)';
  exWks.Range['Q'+IntToStr(cnt_record + 6)].Formula  := '=SUBTOTAL(9,R[-'+IntToStr(cnt_record)+']C:R[-1]C)';
  exWks.Range['R'+IntToStr(cnt_record + 6)].Formula  := '=SUBTOTAL(9,R[-'+IntToStr(cnt_record)+']C:R[-1]C)';
  exWks.Range['S'+IntToStr(cnt_record + 6)].Formula  := '=SUBTOTAL(9,R[-'+IntToStr(cnt_record)+']C:R[-1]C)';
  exWks.Range['Y'+IntToStr(cnt_record + 6)].Formula  := '=SUBTOTAL(9,R[-'+IntToStr(cnt_record)+']C:R[-1]C)';
  exWks.Range['Z'+IntToStr(cnt_record + 6)].Formula  := '=SUBTOTAL(9,R[-'+IntToStr(cnt_record)+']C:R[-1]C)';
  exWks.Range['AA'+IntToStr(cnt_record + 6)].Formula  := '=SUBTOTAL(9,R[-'+IntToStr(cnt_record)+']C:R[-1]C)';
  exWks.Range['AE'+IntToStr(cnt_record + 6)].Formula := '=SUBTOTAL(9,R[-'+IntToStr(cnt_record)+']C:R[-1]C)';
  exWks.Range['AF'+IntToStr(cnt_record + 6)].Formula := '=SUBTOTAL(9,R[-'+IntToStr(cnt_record)+']C:R[-1]C)';
  exWks.Range['AG'+IntToStr(cnt_record + 6)].Formula := '=SUBTOTAL(9,R[-'+IntToStr(cnt_record)+']C:R[-1]C)';
  exWks.Range['AM'+IntToStr(cnt_record + 6)].Formula  := '=SUBTOTAL(9,R[-'+IntToStr(cnt_record)+']C:R[-1]C)';
  exWks.Range['AN'+IntToStr(cnt_record + 6)].Formula  := '=SUBTOTAL(9,R[-'+IntToStr(cnt_record)+']C:R[-1]C)';

  exWks.Range['B6:AN'+IntToStr(cnt_record + 5)].Borders[7].LineStyle := 1;
  exWks.Range['B6:AN'+IntToStr(cnt_record + 5)].Borders[8].LineStyle := 1;
  exWks.Range['B6:AN'+IntToStr(cnt_record + 5)].Borders[9].LineStyle := 1;
  exWks.Range['B6:AN'+IntToStr(cnt_record + 5)].Borders[10].LineStyle := 1;
  exWks.Range['B6:AN'+IntToStr(cnt_record + 5)].Borders[11].LineStyle := 1;

  exWks.Range['S5:U'+IntToStr(cnt_record + 5)].Borders[10].LineStyle := 1;
  exWks.Range['S5:U'+IntToStr(cnt_record + 5)].Borders[10].Weight := 4;

  ShowTextMessage();
  exApp.Visible := True;
  exWks := Null; exWkb := Null; exApp := Null;
  VarClear(exWks); VarClear(exWkb);  VarClear(exApp);
  sp_balance.Free;
  UsersList.Free;
  Screen.Cursor := crDefault;
end;

procedure TfmClientFrahtCard2.dxBarButton38Click(Sender: TObject);
var Fbargain_id, agent_count    : integer;
    exApp,exWkb, exWks          : variant;
    str_bargain_id              : string;
    sp_shp_bargain_add_GET      : TADOStoredProc;
    cnt_record   : integer;
    client_count : integer;
    cnt_column   : integer;
    array_data   : Variant;
    range, cell1, cell2 : Variant;

begin
  if dxBarButton35.Down then begin
    if Application.MessageBox('Баланс будет построен по ФИНАНСОВОМУ месяцу.', 'Внимание', MB_ICONQUESTION or MB_OKCANCEL) <> ID_OK then Exit;
  end else begin
    if Application.MessageBox('Баланс будет построен по ПЕРЕВОЗОЧНОМУ месяцу.', 'Внимание', MB_ICONQUESTION or MB_OKCANCEL) <> ID_OK then Exit;
  end;

  Screen.Cursor := crHourglass;

  ShowTextMessage('Подготовка данных ...', False);
  sp_shp_bargain_add_GET := TADOStoredProc.Create(nil);
  sp_shp_bargain_add_GET.Connection    := fmMain.Lis;
  sp_shp_bargain_add_GET.ProcedureName := 'sp_shp_bargain_add_GET';
  sp_shp_bargain_add_GET.Parameters.Refresh;
  sp_shp_bargain_add_GET.Parameters.ParamByName('@bargain_id'  ).Value := null;
  sp_shp_bargain_add_GET.Parameters.ParamByName('@date_begin'  ).Value := Fdate1;
  sp_shp_bargain_add_GET.Parameters.ParamByName('@date_end'    ).Value := Fdate2;
  sp_shp_bargain_add_GET.Parameters.ParamByName('@users_id'    ).Value := -9;
  sp_shp_bargain_add_GET.Parameters.ParamByName('@currency_id' ).Value := 3;
  sp_shp_bargain_add_GET.Parameters.ParamByName('@set_correct_view'  ).Value := 1;
  sp_shp_bargain_add_GET.Parameters.ParamByName('@set_period_finance').Value := dxBarButton35.Down;
  sp_shp_bargain_add_GET.Parameters.ParamByName('@type_client_agent' ).Value := 0;
  sp_shp_bargain_add_GET.Parameters.ParamByName('@set_balans'        ).Value := 1;
  sp_shp_bargain_add_GET.Open;


  ShowTextMessage('Запуск сервера автоматизации ...', False);

  exApp := CreateOleObject('Excel.Application');
  exWkb := exApp.Workbooks.Add(GetDocBlob(fmMain.Lis, 22)); // 'Баланс расч-эк отдел.xls' (Сделки)
  exWks := exApp.ActiveWorkbook.WorkSheets[1];
//  exApp.Visible := True;


  cnt_record := sp_shp_bargain_add_GET.RecordCount + 1;
  cnt_column := 35;
  array_data := VarArrayCreate([1, cnt_record, 0, cnt_column], varVariant);

  Fbargain_id := 0;
  agent_count := 1;
  client_count:= 1;
  sp_shp_bargain_add_GET.First;

  array_data[sp_shp_bargain_add_GET.RecNo, 0] := sp_shp_bargain_add_GET.FieldByName('bargain_id').Value;
  array_data[sp_shp_bargain_add_GET.RecNo, 35] := sp_shp_bargain_add_GET.FieldByName('bargain_id').Value;
  // Клиент
  array_data[sp_shp_bargain_add_GET.RecNo, 1] := sp_shp_bargain_add_GET.FieldByName('FIO_users_owner').Value;
  array_data[sp_shp_bargain_add_GET.RecNo, 2] := sp_shp_bargain_add_GET.FieldByName('type_bargain_name').Value;
//  array_data[sp_shp_bargain_add_GET.RecNo, 3] := sp_shp_bargain_add_GET.FieldByName('kargoETSNG_name').Value;
//  array_data[sp_shp_bargain_add_GET.RecNo, 4] := sp_shp_bargain_add_GET.FieldByName('kargoETSNG_group_name').Value;
//  array_data[sp_shp_bargain_add_GET.RecNo, 5] := sp_shp_bargain_add_GET.FieldByName('node_begin_name').Value;
//  array_data[sp_shp_bargain_add_GET.RecNo, 6] := sp_shp_bargain_add_GET.FieldByName('node_end_name').Value;
//  array_data[sp_shp_bargain_add_GET.RecNo, 7] := sp_shp_bargain_add_GET.FieldByName('amount_fact').Value;
//  array_data[sp_shp_bargain_add_GET.RecNo, 8] := null; // вес для сводного отчета
  array_data[sp_shp_bargain_add_GET.RecNo, 9] := sp_shp_bargain_add_GET.FieldByName('add_count').Value;
  array_data[sp_shp_bargain_add_GET.RecNo, 10] := sp_shp_bargain_add_GET.FieldByName('ed_izm_name').Value;
  array_data[sp_shp_bargain_add_GET.RecNo, 11] := sp_shp_bargain_add_GET.FieldByName('firm_self_name_short').Value;
  array_data[sp_shp_bargain_add_GET.RecNo, 12] := null;
  array_data[sp_shp_bargain_add_GET.RecNo, 13] := sp_shp_bargain_add_GET.FieldByName('firm_customer_name_short').Value;
  array_data[sp_shp_bargain_add_GET.RecNo, 14] := sp_shp_bargain_add_GET.FieldByName('contract_cod').Value;
  array_data[sp_shp_bargain_add_GET.RecNo, 15] := sp_shp_bargain_add_GET.FieldByName('client_add_notNDS_sum_RUB').Value;
  array_data[sp_shp_bargain_add_GET.RecNo, 16] := sp_shp_bargain_add_GET.FieldByName('client_add_NDS_sum_RUB').Value;
  array_data[sp_shp_bargain_add_GET.RecNo, 17] := sp_shp_bargain_add_GET.FieldByName('client_add_sum_RUB').Value;

  // Агент
  array_data[sp_shp_bargain_add_GET.RecNo, 20] := sp_shp_bargain_add_GET.FieldByName('firm_agent_name_short').Value;
  array_data[sp_shp_bargain_add_GET.RecNo, 21] := sp_shp_bargain_add_GET.FieldByName('contract_agent_cod').Value;
  array_data[sp_shp_bargain_add_GET.RecNo, 22] := sp_shp_bargain_add_GET.FieldByName('agent_add_notNDS_sum_RUB').Value;
  array_data[sp_shp_bargain_add_GET.RecNo, 23] := sp_shp_bargain_add_GET.FieldByName('agent_add_NDS_sum_RUB').Value;
  array_data[sp_shp_bargain_add_GET.RecNo, 24] := sp_shp_bargain_add_GET.FieldByName('agent_add_sum_RUB').Value;
  array_data[sp_shp_bargain_add_GET.RecNo, 25] := sp_shp_bargain_add_GET.FieldByName('agent_brief_name_RUB').Value;
  array_data[sp_shp_bargain_add_GET.RecNo, 31] := sp_shp_bargain_add_GET.FieldByName('users_group_name').Value;
  array_data[sp_shp_bargain_add_GET.RecNo, 32] := sp_shp_bargain_add_GET.FieldByName('date_period_finance').Value;
  array_data[sp_shp_bargain_add_GET.RecNo, 33] := sp_shp_bargain_add_GET.FieldByName('date_period').Value;
  array_data[sp_shp_bargain_add_GET.RecNo, 34] := sp_shp_bargain_add_GET.FieldByName('firm_agent_self_name').Value;

  exWks.Range['B'+IntToStr(sp_shp_bargain_add_GET.RecNo+5)+':T'+IntToStr(sp_shp_bargain_add_GET.RecNo+5)].Font.Bold := 1;
  Fbargain_id := sp_shp_bargain_add_GET.FieldByName('bargain_id').AsInteger;
  sp_shp_bargain_add_GET.Next;

  while not sp_shp_bargain_add_GET.Eof do begin
    if (sp_shp_bargain_add_GET.RecNo mod 10) = 0 then  ShowTextMessage('Осталось '+ IntToStr(sp_shp_bargain_add_GET.RecordCount-sp_shp_bargain_add_GET.RecNo) + ' записей...', False);

    try
      array_data[sp_shp_bargain_add_GET.RecNo, 0] := sp_shp_bargain_add_GET.FieldByName('bargain_id').Value;
      array_data[sp_shp_bargain_add_GET.RecNo, 35] := sp_shp_bargain_add_GET.FieldByName('bargain_id').Value;

      // Клиент
      array_data[sp_shp_bargain_add_GET.RecNo, 1] := sp_shp_bargain_add_GET.FieldByName('FIO_users_owner').Value;
      array_data[sp_shp_bargain_add_GET.RecNo, 2] := sp_shp_bargain_add_GET.FieldByName('type_bargain_name').Value;
    //  array_data[sp_shp_bargain_add_GET.RecNo, 3] := sp_shp_bargain_add_GET.FieldByName('kargoETSNG_name').Value;
    //  array_data[sp_shp_bargain_add_GET.RecNo, 4] := sp_shp_bargain_add_GET.FieldByName('kargoETSNG_group_name').Value;
    //  array_data[sp_shp_bargain_add_GET.RecNo, 5] := sp_shp_bargain_add_GET.FieldByName('node_begin_name').Value;
    //  array_data[sp_shp_bargain_add_GET.RecNo, 6] := sp_shp_bargain_add_GET.FieldByName('node_end_name').Value;
    //  array_data[sp_shp_bargain_add_GET.RecNo, 7] := sp_shp_bargain_add_GET.FieldByName('amount_fact').Value;
    //  array_data[sp_shp_bargain_add_GET.RecNo, 8] := null; // вес для сводного отчета
      array_data[sp_shp_bargain_add_GET.RecNo, 9] := sp_shp_bargain_add_GET.FieldByName('add_count').Value;
      array_data[sp_shp_bargain_add_GET.RecNo, 10] := sp_shp_bargain_add_GET.FieldByName('ed_izm_name').Value;
      array_data[sp_shp_bargain_add_GET.RecNo, 11] := sp_shp_bargain_add_GET.FieldByName('firm_self_name_short').Value;
      array_data[sp_shp_bargain_add_GET.RecNo, 12] := null;
      array_data[sp_shp_bargain_add_GET.RecNo, 13] := sp_shp_bargain_add_GET.FieldByName('firm_customer_name_short').Value;
      array_data[sp_shp_bargain_add_GET.RecNo, 14] := sp_shp_bargain_add_GET.FieldByName('contract_cod').Value;

      array_data[sp_shp_bargain_add_GET.RecNo, 15] := sp_shp_bargain_add_GET.FieldByName('client_add_notNDS_sum_RUB').Value;
      array_data[sp_shp_bargain_add_GET.RecNo, 16] := sp_shp_bargain_add_GET.FieldByName('client_add_NDS_sum_RUB').Value;
      array_data[sp_shp_bargain_add_GET.RecNo, 17] := sp_shp_bargain_add_GET.FieldByName('client_add_sum_RUB').Value;
      if sp_shp_bargain_add_GET.FieldByName('client_add_notNDS_sum_RUB').IsNull then array_data[sp_shp_bargain_add_GET.RecNo, 15] := ''' ';
      if sp_shp_bargain_add_GET.FieldByName('client_add_NDS_sum_RUB').IsNull then array_data[sp_shp_bargain_add_GET.RecNo, 16] := ''' ';
      if sp_shp_bargain_add_GET.FieldByName('client_add_sum_RUB').IsNull then array_data[sp_shp_bargain_add_GET.RecNo, 17] := ''' ';

      // Агент
      array_data[sp_shp_bargain_add_GET.RecNo, 20] := sp_shp_bargain_add_GET.FieldByName('firm_agent_name_short').Value;
      array_data[sp_shp_bargain_add_GET.RecNo, 21] := sp_shp_bargain_add_GET.FieldByName('contract_agent_cod').Value;
      array_data[sp_shp_bargain_add_GET.RecNo, 22] := sp_shp_bargain_add_GET.FieldByName('agent_add_notNDS_sum_RUB').Value;
      array_data[sp_shp_bargain_add_GET.RecNo, 23] := sp_shp_bargain_add_GET.FieldByName('agent_add_NDS_sum_RUB').Value;
      array_data[sp_shp_bargain_add_GET.RecNo, 24] := sp_shp_bargain_add_GET.FieldByName('agent_add_sum_RUB').Value;
      array_data[sp_shp_bargain_add_GET.RecNo, 25] := sp_shp_bargain_add_GET.FieldByName('agent_brief_name_RUB').Value;
      array_data[sp_shp_bargain_add_GET.RecNo, 31] := sp_shp_bargain_add_GET.FieldByName('users_group_name').Value;
      array_data[sp_shp_bargain_add_GET.RecNo, 32] := sp_shp_bargain_add_GET.FieldByName('date_period_finance').Value;
      array_data[sp_shp_bargain_add_GET.RecNo, 33] := sp_shp_bargain_add_GET.FieldByName('date_period').Value;
      array_data[sp_shp_bargain_add_GET.RecNo, 34] := sp_shp_bargain_add_GET.FieldByName('firm_agent_self_name').Value;

      if (Fbargain_id <> sp_shp_bargain_add_GET.FieldByName('bargain_id').AsInteger) then begin
        exWks.Range['B'+IntToStr(sp_shp_bargain_add_GET.RecNo+5)+':T'+IntToStr(sp_shp_bargain_add_GET.RecNo+5)].Font.Bold := 1;
        array_data[sp_shp_bargain_add_GET.RecNo-agent_count,28] := '=SUM(RC[-13]:R['+IntToStr(agent_count-1)+']C[-13])-SUM((RC[-6]:R['+IntToStr(agent_count-1)+']C[-6]))';
        array_data[sp_shp_bargain_add_GET.RecNo-agent_count,29] := '=SUM(RC[-13]:R['+IntToStr(agent_count-1)+']C[-13])-SUM((RC[-6]:R['+IntToStr(agent_count-1)+']C[-6]))';
        array_data[sp_shp_bargain_add_GET.RecNo-agent_count,30] := '=SUM(RC[-13]:R['+IntToStr(agent_count-1)+']C[-13])-SUM((RC[-6]:R['+IntToStr(agent_count-1)+']C[-6]))';
        agent_count := 1;
      end else begin
        exWks.Range['B'+IntToStr(sp_shp_bargain_add_GET.RecNo+5)+':T'+IntToStr(sp_shp_bargain_add_GET.RecNo+5)].Font.Bold := 0;
        agent_count := agent_count + 1;
        array_data[sp_shp_bargain_add_GET.RecNo,28] := ''' ';
        array_data[sp_shp_bargain_add_GET.RecNo,29] := ''' ';
        array_data[sp_shp_bargain_add_GET.RecNo,30] := ''' ';
      end;

    except
    end;
    Fbargain_id := sp_shp_bargain_add_GET['bargain_id'];
    sp_shp_bargain_add_GET.Next;
  end;
  ShowTextMessage('Осталось '+ IntToStr(sp_shp_bargain_add_GET.RecordCount-sp_shp_bargain_add_GET.RecNo) + ' записей...', False);

  // Левая верхняя ячейка области, в которую будем выводить данные
  cell1 := exWks.Cells[6, 1];
  // Правая нижняя ячейка области, в которую будем выводить данные
  cell2 := exWks.Cells[cnt_record + 5, cnt_column + 1];
  // Область, в которую будем выводить данные
  range := exWks.Range[cell1, cell2];
  // Вывод данных
  range.Value := array_data;

  VarClear(array_data);

  exWks.Range['AC'+IntToStr(sp_shp_bargain_add_GET.RecNo+5-(agent_count-1))].Value := '=SUM(RC[-13]:R['+IntToStr(agent_count-1)+']C[-13])-SUM((RC[-6]:R['+IntToStr(agent_count-1)+']C[-6]))';
  exWks.Range['AD'+IntToStr(sp_shp_bargain_add_GET.RecNo+5-(agent_count-1))].Value := '=SUM(RC[-13]:R['+IntToStr(agent_count-1)+']C[-13])-SUM((RC[-6]:R['+IntToStr(agent_count-1)+']C[-6]))';
  exWks.Range['AE'+IntToStr(sp_shp_bargain_add_GET.RecNo+5-(agent_count-1))].Value := '=SUM(RC[-13]:R['+IntToStr(agent_count-1)+']C[-13])-SUM((RC[-6]:R['+IntToStr(agent_count-1)+']C[-6]))';

// -----------------------------------------------------------------------------------------
  if FormatDateTime('m', Fdate1)=FormatDateTime('m', Fdate2) then exWks.Range['B2'].Value := FormatDateTime('mmmm yyyy г.', Fdate2)
  else exWks.Range['B2'].Value := 'Период: с '+ FormatDateTime('mmmm', Fdate1)+' - '+FormatDateTime('mmmm yyyy', Fdate2);

  exWks.Rows[5].AutoFilter;
  exWks.Range['P'+IntToStr(sp_shp_bargain_add_GET.RecordCount+7)].Formula := '=SUBTOTAL(9,R[-'+IntToStr(sp_shp_bargain_add_GET.RecordCount+1)+']C:R[-2]C)';
  exWks.Range['Q'+IntToStr(sp_shp_bargain_add_GET.RecordCount+7)].Formula := '=SUBTOTAL(9,R[-'+IntToStr(sp_shp_bargain_add_GET.RecordCount+1)+']C:R[-2]C)';
  exWks.Range['R'+IntToStr(sp_shp_bargain_add_GET.RecordCount+7)].Formula := '=SUBTOTAL(9,R[-'+IntToStr(sp_shp_bargain_add_GET.RecordCount+1)+']C:R[-2]C)';
  exWks.Range['W'+IntToStr(sp_shp_bargain_add_GET.RecordCount+7)].Formula := '=SUBTOTAL(9,R[-'+IntToStr(sp_shp_bargain_add_GET.RecordCount+1)+']C:R[-2]C)';
  exWks.Range['X'+IntToStr(sp_shp_bargain_add_GET.RecordCount+7)].Formula := '=SUBTOTAL(9,R[-'+IntToStr(sp_shp_bargain_add_GET.RecordCount+1)+']C:R[-2]C)';
  exWks.Range['Y'+IntToStr(sp_shp_bargain_add_GET.RecordCount+7)].Formula := '=SUBTOTAL(9,R[-'+IntToStr(sp_shp_bargain_add_GET.RecordCount+1)+']C:R[-2]C)';
  exWks.Range['AC'+IntToStr(sp_shp_bargain_add_GET.RecordCount+7)].Formula := '=SUBTOTAL(9,R[-'+IntToStr(sp_shp_bargain_add_GET.RecordCount+1)+']C:R[-2]C)';
  exWks.Range['AD'+IntToStr(sp_shp_bargain_add_GET.RecordCount+7)].Formula := '=SUBTOTAL(9,R[-'+IntToStr(sp_shp_bargain_add_GET.RecordCount+1)+']C:R[-2]C)';
  exWks.Range['AE'+IntToStr(sp_shp_bargain_add_GET.RecordCount+7)].Formula := '=SUBTOTAL(9,R[-'+IntToStr(sp_shp_bargain_add_GET.RecordCount+1)+']C:R[-2]C)';

  exWks.Range['B6:AJ'+IntToStr(sp_shp_bargain_add_GET.RecordCount+6)].Borders[7].LineStyle := 1;
  exWks.Range['B6:AJ'+IntToStr(sp_shp_bargain_add_GET.RecordCount+6)].Borders[8].LineStyle := 1;
  exWks.Range['B6:AJ'+IntToStr(sp_shp_bargain_add_GET.RecordCount+6)].Borders[9].LineStyle := 1;
  exWks.Range['B6:AJ'+IntToStr(sp_shp_bargain_add_GET.RecordCount+6)].Borders[10].LineStyle := 1;
  exWks.Range['B6:AJ'+IntToStr(sp_shp_bargain_add_GET.RecordCount+6)].Borders[11].LineStyle := 1;

  exWks.Range['S5:T'+IntToStr(sp_shp_bargain_add_GET.RecordCount+6)].Borders[10].LineStyle := 1;
  exWks.Range['S5:T'+IntToStr(sp_shp_bargain_add_GET.RecordCount+6)].Borders[10].Weight := 4;
  exWks.Columns[cnt_column + 1].ColumnWidth := 0.000;

  ShowTextMessage();
  exApp.Visible := True;
  exWks := Null; exWkb := Null; exApp := Null;
  VarClear(exWks); VarClear(exWkb);  VarClear(exApp);
  sp_shp_bargain_add_GET.Free;
  Screen.Cursor := crDefault;
end;

procedure TfmClientFrahtCard2.dxBarButton39Click(Sender: TObject);
var
    exApp, exWkb, exWks         : variant;
    SP                          : TADOStoredProc;
    RS                          : _Recordset;
    month_report, group_cod, k  : integer;
    dd                          : TDate;
    str_firm_id                 : string;
    str_bargain_id              : string;
    set_finance                 : Boolean;
    date_begin, date_end        : TDateTime;
    Q, Q_Option, Q_Users        : TADOQuery;
begin

  date_begin := Fdate1;
  date_end   := Fdate2;

//  fmPeriod := TfmPeriod.Create(Application, date_begin, date_end, 2);
//  if fmPeriod.ShowModal=mrOK then begin
//    date_begin := fmPeriod._GetMonthBegin;
//    date_end   := fmPeriod._GetMonthEnd;
//  end else exit;
  if not OpenActsOption('38', fmMain.Lis, usr_pwd, date_begin, date_end, 2) then
    exit;

  if YearOf(date_begin) <> YearOf(date_end) then begin
    Application.MessageBox('Выбран не корректный период отчета'#10'Отчет может быть сформирован в пределах одного года', 'Внимание', MB_OK or MB_ICONERROR);
    exit;
  end;

  Q_Option := TADOQuery(GetActsOption('38', fmMain.Lis));

  Screen.Cursor := crHourglass;
  ShowTextMessage('Формирование списка перевозок (шаг 1 из 6)', False);

  // Возможность использования консолидированного отчета проверяется в ХП sp_acts_option_modify
  // Нам уже приходит либо список пользователей(организаций) которые следует консолилдировать,
  // либо только ИД текущего пользователя, если возможность консолидации отсутсвует
  Q_Users := TADOQuery.Create(nil);
  Q_Users.Connection := fmMain.Lis;
  Q_Users.SQL.Add('select users_id, users_name');
  Q_Users.SQL.Add('from users');
  if Q_Option.Locate('option_name', 'str_users_id', [])
  and (Q_Option.FieldByName('option_value').AsString <> '') then
    Q_Users.SQL.Add('where users_id in (' + Q_Option.FieldByName('option_value').AsString + ')')
  else
    Q_Users.SQL.Add('where users_id in (-9)');
  Q_Users.Open;

  // Получим из настроек - какой период Финансовый или Перевозочный
  set_finance := True;
  if Q_Option.Locate('option_name', 'str_users_id', [])
  and (Q_Option.FieldByName('option_value').AsString = '0') then
    set_finance := False;

  // Пробежимся по списку пользователей и составим общий список исключений
  str_firm_id := '-9';
  while not Q_Users.Eof do begin
    if Q_Option.Locate('option_name;users_id', VarArrayOf(['firm_not', Q_Users.FieldByName('users_id').AsInteger]), [])
    and (Q_Option.FieldByName('option_value').AsString <> '') then begin
      str_firm_id := str_firm_id + ',' + Q_Option.FieldByName('option_value').AsString;
    end;
    Q_Users.Next;
  end;

  Q := TADOQuery.Create(nil);
  Q.SQL.Add('SELECT str_bargain_id = REPLACE(');
  Q.SQL.Add('(SELECT bargain_id as ''data()''');
  Q.SQL.Add('FROM view_bargain_rights ');
  Q.SQL.Add('WHERE bargain_sum_fact IS NOT NULL');
  Q.SQL.Add('AND (' + iif(set_finance, 'date_period_finance', 'date_period') + ' BETWEEN ' + DateToSQL(date_begin) + ' AND ' + DateToSQL(date_end) + ')');
//  Q.SQL.Add('AND (firm_customer NOT IN (' + str_firm_id + '))');
  // Исключения передаем в ХП - пусть сама разбирается
  // Нас интересуют все карточки, т.к.:
//	-- В случае Клиентских сумм мы исключаем сумму перевозки
//	-- В случае агентских сумм - исключаем порядчиков
//	-- Таким образом допустима ситуация, когда перевозка не учитывается, но учитываются расходы по ней,
//	-- и наоборот, учитывается сумма Клиенту, а расходы полностью или частично не попадают в отчет

  Q.SQL.Add('FOR XML PATH('''') )');
  Q.SQL.Add(', '' '', '','')');

  // Составим список перевозок входящих в отчет
  str_bargain_id := '';
  Q_Users.First;
  while not Q_Users.Eof do begin
    Q.ConnectionString := 'Persist Security Info=True;Provider=SQLOLEDB.1;User ID=' + Q_Users.FieldByName('users_name').AsString + ';Password=' + usr_pwd^.user_pass + ';Initial Catalog=' + usr_pwd^.catalog + ';Data Source=' + usr_pwd^.server+';';
    Q.Open;
//    while not Q.Eof do begin
    if not Q.Fields[0].IsNull then begin
      if str_bargain_id <> '' then str_bargain_id := str_bargain_id + ',';
      str_bargain_id := str_bargain_id + Q.Fields[0].AsString;
    end;
//      Q.Next;
//    end;
    Q.Close;
    Q_Users.Next;
  end;

  Q_Users.Free;
  Q_Option.Free;
  Q.Free;

  if (str_bargain_id = '') then begin
    Screen.Cursor := crDefault;
    ShowTextMessage;
    Application.MessageBox('В указанный период нет данных для формирования отчета', 'Внимание', MB_OK or MB_ICONEXCLAMATION);
    Exit;
  end;

  ShowTextMessage('Подготовка данных (шаг 2 из 6)', False);

  SP := TADOStoredProc.Create(nil);
  SP.Connection := fmMain.Lis;
  SP.ProcedureName := 'sp_report_kargo_group';
  SP.Parameters.Refresh;
  SP.Parameters.ParamByName('@str_bargain_id').Value  := str_bargain_id;
  SP.Parameters.ParamByName('@str_firm_not_id').Value := str_firm_id;

  SP.Open;

  ShowTextMessage('Создание отчета (шаг 3 из 6)', False);
  // Открываем xls и делаем предватительные натсройки
  exApp := CreateOleObject('Excel.Application');
  exWkb := exApp.Workbooks.Add(GetDocBlob(fmMain.Lis, 38)); // 'Отчет по категоримя груза.xls'
  exWkb := exApp.ActiveWorkbook;
  // Удалим лишнюи страницу
  exApp.DisplayAlerts := False;
  exWkb.WorkSheets[2].Delete;
  exApp.DisplayAlerts := True;
  // Нужный нам лист
  exWks := exWkb.WorkSheets[1];

  // Заполним шапку (даты)
  k := YearOf(date_end);
  for month_report := 1 to 12 do begin
    dd := DateOf(EndOfAMonth(k, month_report));
    exWks.Cells[4, 2 + month_report].Value := dd;
  end;
  exWks.Cells[4, 15].Value := 'за ' + IntToStr(k) + ' год';

  ShowTextMessage('Создание отчета (шаг 4 из 6)', False);
  // Заполнение 2 части отчета (сумма с агентов)
  RS := SP.Recordset;
  while not RS.EOF do begin
    month_report := RS.Fields['month_report'].Value;
    group_cod := RS.Fields['kargoETSNG_group_cod'].Value;

    exWks.Cells[20 + group_cod, 2 + month_report].Value := RS.Fields['agent_sum_fact_RUB'].Value;

    RS.MoveNext;
  end;

  ShowTextMessage('Создание отчета (шаг 5 из 6)', False);
  // Заполнение 1 части отчета (сумма с клиентов)
  RS := SP.NextRecordset(k);
  while not RS.EOF do begin
    month_report := RS.Fields['month_report'].Value;
    group_cod := RS.Fields['kargoETSNG_group_cod'].Value;

    exWks.Cells[6 + group_cod, 2 + month_report].Value := RS.Fields['bargain_sum_fact_RUB'].Value;

    RS.MoveNext;
  end;

  ShowTextMessage('Создание отчета (шаг 6 из 6)', False);
  // Заполнение 3 части отчета (тоннаж)
  if not RS.BOF then RS.MoveFirst;
  while not RS.EOF do begin
    month_report := RS.Fields['month_report'].Value;
    group_cod := RS.Fields['kargoETSNG_group_cod'].Value;

    if (group_cod in [1, 2, 3, 4, 5, 6, 7, 8, 10, 13]) then begin
      // Кроме Возврата порожних вагонов, Контейнерных перевозок и Аредны вагонов
      // Вес в тоннах
      if group_cod = 10 then group_cod := 9; // Прочие грузы; код = 10, номер в отчете = 2.1.9
      if group_cod = 13 then group_cod := 10; // Прочие услуги по экспедированию; код = 13, номер в отчете = 2.1.10
      exWks.Cells[64 + group_cod, 2 + month_report].Value := RS.Fields['fact_weight'].Value;
    end else if (group_cod in [9, 11, 12]) then begin
      // Возврат порожних вагонов, Контейнерные перевозоки и Аредна вагонов
      // Кол-во вагонов
      case group_cod of
        9: group_cod := 1; // Возврат порожних вагонов; код = 9, номер в отчете = 2.2.1
        11: group_cod := 2; // Контейнерные перевозоки; код = 11, номер в отчете = 2.2.2
        12: group_cod := 3; // Аредна вагонов; код = 12, номер в отчете = 2.2.3
      end;
      exWks.Cells[75 + group_cod, 2 + month_report].Value := RS.Fields['amount_units_fact'].Value;
    end;

    RS.MoveNext;
  end;

  // Позиционируем на первую ячейку
  exApp.CutCopyMode := False;
  exWks.Select;
  exWks.Cells[1, 1].Select;

  ShowTextMessage();

  exApp.Visible := True;

  exWks := Null; exWkb := Null; exApp := Null;
  VarClear(exWks); VarClear(exWkb);  VarClear(exApp);
  RS.Close;
  SP.Free;

  Screen.Cursor := crDefault;
end;

procedure TfmClientFrahtCard2.dxBarButton40Click(Sender: TObject);
var
    exApp, exWkb, exWks         : variant;
    Q                           : TADOQuery;
    SP                          : TADOStoredProc;
    RS                          : _Recordset;
    month_report, k             : integer;
    firm_self_cod               : string;
    str_tmp                     : string;
    dd                          : TDate;
    str_bargain_id              : string;
begin
  case cxPageControl1.ActivePage.Tag of
    0 : str_bargain_id := cx_GetSelectedValues(cxGrid3, 'bargain_id');
    7 : str_bargain_id := cx_GetSelectedValues(cxGrid10, 'bargain_id');
    else str_bargain_id := '';
  end;

  if (str_bargain_id = '') then begin
    Application.MessageBox('Нет выбранных перевозок', 'Внимание', MB_OK or MB_ICONINFORMATION);
    Exit;
  end;

  Screen.Cursor := crHourglass;

  ShowTextMessage('Подготовка данных ...', False);

  SP := TADOStoredProc.Create(nil);
  SP.Connection := fmMain.Lis;
  SP.ProcedureName := 'sp_report_kargo_group_firm';
  SP.Parameters.Refresh;
  SP.Parameters.ParamByName('@str_bargain_id').Value := str_bargain_id;

  SP.Open;

  ShowTextMessage('Создание отчета (шаг 1 из 4)', False);
  // Открываем xls и делаем предватительные натсройки
  exApp := CreateOleObject('Excel.Application');
  exWkb := exApp.Workbooks.Add(GetDocBlob(fmMain.Lis, 38)); // 'Отчет по категоримя груза.xls'
  exWkb := exApp.ActiveWorkbook;
  // Удалим лишнюи страницу
  exApp.DisplayAlerts := False;
  exWkb.WorkSheets[1].Delete;
  exApp.DisplayAlerts := True;
  // Нужный нам лист
  exWks := exWkb.WorkSheets[1];

  // Заполним шапку (даты)
  k := YearOf(Fdate2);
  for month_report := 1 to 12 do begin
    dd := DateOf(EndOfAMonth(k, month_report));
    exWks.Cells[5, 2 + month_report].Value := dd;
  end;
  exWks.Cells[5, 15].Value := 'за ' + IntToStr(k) + ' год';

  // Наименования Компаний
  ShowTextMessage('Создание отчета (шаг 2 из 4)', False);
  Q := TADOQuery.Create(nil);
  Q.Connection := fmMain.Lis;
  Q.SQL.Add('SELECT firm_cod, firm_name_short FROM view_firm WHERE type_self = 1 and firm_cod is not null ORDER BY firm_cod');
  Q.Open;

  str_tmp := 'Конвертация';
  while not Q.Eof do begin
    firm_self_cod := Q.FieldByName('firm_cod').AsString;

    k := -9;
    if (firm_self_cod = '00') then k := 1;
    if (firm_self_cod = '05') then k := 2;
    if (firm_self_cod = '01') then k := 3;
    if (firm_self_cod = '11') then k := 4;
    if (firm_self_cod = '12') then k := 5;

    if (firm_self_cod = '00') or (firm_self_cod = '01') then str_tmp := str_tmp + ', ' + Q.FieldByName('firm_name_short').AsString;


    if k <> -9 then begin
      exWks.Cells[8 + k, 2].Value := Q.FieldByName('firm_name_short').AsString;
      exWks.Cells[15 + k, 2].Value := Q.FieldByName('firm_name_short').AsString;
      exWks.Cells[22 + k, 2].Value := Q.FieldByName('firm_name_short').AsString;
      exWks.Cells[48 + k, 2].Value := Q.FieldByName('firm_name_short').AsString;
    end;

    Q.Next;
  end;
  exWks.Cells[34, 2].Value := str_tmp;
  Q.Close;

  ShowTextMessage('Создание отчета (шаг 3 из 4)', False);
  // Заполнение 2 части отчета (сумма с агентов)
  RS := SP.Recordset;
  while not RS.EOF do begin
    month_report := RS.Fields['month_report'].Value;
    firm_self_cod := VarToStr(RS.Fields['firm_agent_self_cod'].Value);

    k := -9;
    if (firm_self_cod = '00') then k := 1; // СФХ      =  2.1
    if (firm_self_cod = '05') then k := 2; // СФХ-Т    =  2.2
    if (firm_self_cod = '01') then k := 3; // СОТРА    =  2.3
    if (firm_self_cod = '11') then k := 4; // WWT      =  2.4
    if (firm_self_cod = '12') then k := 5; // DT       =  2.5

    if k <> -9 then
      exWks.Cells[15 + k, 2 + month_report].Value := RS.Fields['agent_sum_fact_RUB'].Value;

    RS.MoveNext;
  end;

  ShowTextMessage('Создание отчета (шаг 4 из 4)', False);
  // Заполнение 1 части отчета (сумма с клиентов)
  // Заполнение 3 части отчета (тоннаж)
  RS := SP.NextRecordset(k);
  while not RS.EOF do begin
    month_report := RS.Fields['month_report'].Value;
    firm_self_cod := VarToStr(RS.Fields['firm_self_cod'].Value);

    k := -9;
    if (firm_self_cod = '00') then k := 1; // 1.1 и 8.1
    if (firm_self_cod = '05') then k := 2; // 1.2 и 8.2
    if (firm_self_cod = '01') then k := 3; // 1.3 и 8.3
    if (firm_self_cod = '11') then k := 4; // 1.4 и 8.4
    if (firm_self_cod = '12') then k := 5; // 1.5 и 8.5

    if k <> -9 then begin
      exWks.Cells[8 + k, 2 + month_report].Value := RS.Fields['bargain_sum_fact_RUB'].Value;
      exWks.Cells[48 + k, 2 + month_report].Value := RS.Fields['fact_weight'].Value;
    end;

    RS.MoveNext;
  end;

  // Позиционируем на первую ячейку
  exApp.CutCopyMode := False;
  exWks.Select;
  exWks.Cells[1, 1].Select;

  ShowTextMessage();

  exApp.Visible := True;

  exWks := Null; exWkb := Null; exApp := Null;
  VarClear(exWks); VarClear(exWkb);  VarClear(exApp);
  RS.Close;
  SP.Free;
  Q.Free;

  Screen.Cursor := crDefault;
end;

procedure TfmClientFrahtCard2.dxBarButton41Click(Sender: TObject);
var exApp,exWkb, exWks   : variant;
    line_cnt             : integer;
    date_begin, date_end : TDateTime;
    str_contract_id      : string;
    i                    : integer;
    SP                   : TADOStoredProc;
    Q, Q_Option, Q_Users : TADOQuery;
    set_finance          : Boolean;
begin

  date_begin := Fdate1;
  date_end   := Fdate2;

//  fmPeriod := TfmPeriod.Create(Application, date_begin, date_end, 2);
//  if fmPeriod.ShowModal=mrOK then begin
//    date_begin := fmPeriod._GetMonthBegin;
//    date_end   := fmPeriod._GetMonthEnd;
//  end else exit;
  if not OpenActsOption('174', fmMain.Lis, usr_pwd, date_begin, date_end, 2) then
    exit;

  Q_Option := TADOQuery(GetActsOption('174', fmMain.Lis));

  // Возможность использования консолидированного отчета проверяется в ХП sp_acts_option_modify
  // Нам уже приходит либо список пользователей(организаций) которые следует консолилдировать,
  // либо только ИД текущего пользователя, если возможность консолидации отсутсвует
  Q_Users := TADOQuery.Create(nil);
  Q_Users.Connection := fmMain.Lis;
  Q_Users.SQL.Add('select users_id, users_name');
  Q_Users.SQL.Add('from users');
  if Q_Option.Locate('option_name', 'str_users_id', [])
  and (Q_Option.FieldByName('option_value').AsString <> '') then
    Q_Users.SQL.Add('where users_id in (' + Q_Option.FieldByName('option_value').AsString + ')')
  else
    Q_Users.SQL.Add('where users_id in (-9)');
  Q_Users.Open;

  // Получим из настроек - какой период Финансовый или Перевозочный
  set_finance := True;
  if Q_Option.Locate('option_name', 'str_users_id', [])
  and (Q_Option.FieldByName('option_value').AsString = '0') then
    set_finance := False;

  // Пробежимся по списку пользователей и составим общий список исключений
  str_contract_id := '-9';
  while not Q_Users.Eof do begin
    if Q_Option.Locate('option_name;users_id', VarArrayOf(['contract_not', Q_Users.FieldByName('users_id').AsInteger]), [])
    and (Q_Option.FieldByName('option_value').AsString <> '') then begin
      str_contract_id := str_contract_id + ',' + Q_Option.FieldByName('option_value').AsString;
    end;
    Q_Users.Next;
  end;

  Q := TADOQuery.Create(nil);
  Q.SQL.Add('SELECT DISTINCT contract_id');
  Q.SQL.Add('FROM view_bargain_rights ');
  Q.SQL.Add('WHERE bargain_sum_fact IS NOT NULL');
  Q.SQL.Add('AND (' + iif(set_finance, 'date_period_finance', 'date_period') + ' BETWEEN ' + DateToSQL(date_begin) + ' AND ' + DateToSQL(date_end) + ')');
  Q.SQL.Add('AND (contract_id NOT IN (' + str_contract_id + '))');

  // Составим список договоров входящих в отчет
  str_contract_id := '';
  Q_Users.First;
  while not Q_Users.Eof do begin
    Q.ConnectionString := 'Persist Security Info=True;Provider=SQLOLEDB.1;User ID=' + Q_Users.FieldByName('users_name').AsString + ';Password=' + usr_pwd^.user_pass + ';Initial Catalog=' + usr_pwd^.catalog + ';Data Source=' + usr_pwd^.server+';';
    Q.Open;
    while not Q.Eof do begin
      if str_contract_id <> '' then str_contract_id := str_contract_id + ',';
      str_contract_id := str_contract_id + Q.FieldByName('contract_id').AsString;
      Q.Next;
    end;
    Q.Close;
    Q_Users.Next;
  end;

  Q_Users.Free;
  Q_Option.Free;
  Q.Free;

  if str_contract_id = '' then begin
    Application.MessageBox('В указанный период нет данных для формирования отчета', 'Внимание', MB_OK or MB_ICONEXCLAMATION);
    exit;
  end;


  SP := TADOStoredProc.Create(nil);
  SP.Connection := fmMain.Lis;
  SP.ProcedureName := 'sp_Report_tonnage1';
  SP.Parameters.Refresh;
  SP.Parameters.ParamByName('@str_contract_id'  ).Value := str_contract_id;
  SP.Parameters.ParamByName('@date_period_begin').Value := date_begin;
  SP.Parameters.ParamByName('@date_period_end'  ).Value := date_end;
  SP.Parameters.ParamByName('@set_finance'      ).Value := set_finance;
  try
    SP.Open;
  except
    SP.Free;
    exit;
  end;

  try
    Screen.Cursor := crHourglass;
    ShowTextMessage('Формирование отчёта...', False);

    exApp := CreateOleObject('Excel.Application');
    exWkb := exApp.Workbooks.Add(GetDocBlob(fmMain.Lis, 174));
    exWkb := exApp.ActiveWorkbook;
    exWks := exWkb.WorkSheets[1];

    if dxBarButton35.Down then
      exWks.Range['B2'].Value := 'Итоговый отчет по финансовому месяцу в долларах за период с ' + DateToStr(date_begin) + 'г. по ' + DateToStr(date_end) + 'г.'
    else
      exWks.Range['B2'].Value := 'Итоговый отчет по перевозочному месяцу в долларах за период с ' + DateToStr(date_begin) + 'г. по ' + DateToStr(date_end) + 'г.';


    line_cnt := 5;
    while not SP.EOF do begin
      ShowTextMessage('Осталось '+IntToStr(SP.RecordCount - SP.RecNo), False);
      exWks.Range['B' + IntToStr(line_cnt+1) + ':G' + IntToStr(line_cnt+1)].Select;
      exWks.Range['B' + IntToStr(line_cnt+1) + ':G' + IntToStr(line_cnt+1)].Insert(-4121);

      exWks.Range['B'+IntToStr(line_cnt)].Value := SP.FieldByName('firm_customer_name').AsString;
      if not SP.FieldByName('fact_weight').IsNull then
        exWks.Range['C'+IntToStr(line_cnt)].Value := SP.FieldByName('fact_weight').AsFloat
      else
        exWks.Range['C'+IntToStr(line_cnt)].Value := 0;
      exWks.Range['D'+IntToStr(line_cnt)].Value := SP.FieldByName('amount_units_fact').Value;
      exWks.Range['E'+IntToStr(line_cnt)].Value := SP.FieldByName('kargoETSNG_group_name').AsString;
      exWks.Range['F'+IntToStr(line_cnt)].Value := SP.FieldByName('client_notNDS_RUB').Value;
      exWks.Range['G'+IntToStr(line_cnt)].Value := SP.FieldByName('comiss_notNDS_RUB').Value;
      line_cnt := line_cnt + 1;
      SP.Next;
    end;
    exWks.Range['B' + IntToStr(line_cnt+1) + ':G' + IntToStr(line_cnt+1)].Delete(-4162);
    exWks.Range['B4'].Select;
    exApp.Selection.subtotal(1, -4157, VarArrayOf([2,3,5,6]), True, False, False);
    line_cnt := exWks.UsedRange.Rows.Item[exWks.UsedRange.Rows.Count].Row;
    exWks.Range['B' + IntToStr(line_cnt) + ':G' + IntToStr(line_cnt)].Delete(-4162);
    exWks.PageSetup.PrintArea := exWks.Range[exWks.Cells[1,1], exWks.Cells[line_cnt+3, 7]].Address;

    exApp.Visible := True;
  finally
    SP.Free;
    exWks := Null; exWkb := Null; exApp := Null;
    VarClear(exWks); VarClear(exWkb); VarClear(exApp);

    ShowTextMessage();
    Screen.Cursor := crDefault;
  end;
end;

procedure TfmClientFrahtCard2.dxBarButton42Click(Sender: TObject);
var    exApp,exWkb, exWks : variant;
                    Query : TADOQuery;
                 line_cnt : integer;
     date_begin, date_end : TDateTime;
begin

  date_begin := Fdate1;
  date_end   := Fdate2;

  fmPeriod := TfmPeriod.Create(Application, date_begin, date_end, 2);
  if fmPeriod.ShowModal=mrOK then begin
    date_begin := fmPeriod._GetMonthBegin;
    date_end   := fmPeriod._GetMonthEnd;
  end else exit;

  Screen.Cursor := crHourglass;
  ShowTextMessage('Запуск сервера автоматизации...', False);


  exApp := CreateOleObject('Excel.Application');
  exWkb := exApp.Workbooks.Add(GetDocBlob(fmMain.Lis, 57));
  exWkb := exApp.ActiveWorkbook;
  exWks := exWkb.WorkSheets[1];

  Query := TADOQuery.Create(nil);
  Query.Connection := fmMain.Lis;
  Query.SQL.Add('SELECT	firm_customer_name, contract_cod, sum(bargain_sum_fact_USD) as bargain_sum_fact_USD, sum(bargain_comiss_USD) as bargain_comiss_USD');
  Query.SQL.Add('FROM	  view_bargain_rights ');
  Query.SQL.Add('WHERE  date_period between ' + DateToSQL(date_begin) + ' and ' + DateToSQL(date_end));
  Query.SQL.Add('       AND bargain_sum_fact_USD is not null');
  Query.SQL.Add('GROUP BY firm_customer_name, contract_cod');
  Query.SQL.Add('ORDER BY firm_customer_name');
  Query.Open;

  line_cnt := 4;
  while not Query.EOF do begin
    ShowTextMessage('Осталось '+IntToStr(Query.RecordCount - Query.RecNo), False);
    exWks.Range['B' + IntToStr(line_cnt+1) + ':E' + IntToStr(line_cnt+1)].Select;
    exWks.Range['B' + IntToStr(line_cnt+1) + ':E' + IntToStr(line_cnt+1)].Insert(-4121);

    exWks.Range['B'+IntToStr(line_cnt)].Value := Query.FieldByName('firm_customer_name').AsString;
    exWks.Range['C'+IntToStr(line_cnt)].Value := Query.FieldByName('contract_cod').AsString;
    exWks.Range['D'+IntToStr(line_cnt)].Value := Query.FieldByName('bargain_sum_fact_USD').Value;
    exWks.Range['E'+IntToStr(line_cnt)].Value := Query.FieldByName('bargain_comiss_USD').Value;
    line_cnt := line_cnt + 1;
  	Query.Next;
  end;
  exWks.Range['B' + IntToStr(line_cnt) + ':E' + IntToStr(line_cnt)].Delete(-4162);
  exWks.Range['B' + IntToStr(line_cnt) + ':E' + IntToStr(line_cnt)].Delete(-4162);

  Query.Free;
  exWks.Range['A1'].Select;
  exApp.Visible := True;
  exWks := Null; exWkb := Null; exApp := Null;
  VarClear(exWks); VarClear(exWkb); VarClear(exApp);

  ShowTextMessage();
  Screen.Cursor := crDefault;
end;

procedure TfmClientFrahtCard2.dxBarButton43Click(Sender: TObject);
type
  TFunc    = function (AppHand: THandle; flag: boolean; usr_pwd: PUser_pwd; date_begin, date_end: TDate) : variant;
  TFuncRep = function (usr_pwd: PUser_pwd; type_report: integer; date_begin, date_end: TDate; str_list_id: string) : variant;
var
  FRepTransSFH    : TFunc;
  FRepTransSFHExt : TFuncRep;
  handle          : THandle;
  str_bargain_id  : string;
begin
  handle := LoadLibrary('reports.dll');
  @FRepTransSFH    := GetProcAddress(handle, 'CreateWndRepTransSFH');
  @FRepTransSFHExt := GetProcAddress(handle, 'RepTransSFH2Xls');

  case TComponent(Sender).Tag of
    0: FRepTransSFH(Application.Handle, False, usr_pwd, Fdate1, Fdate2);
    1: begin
      case cxPageControl1.ActivePage.Tag of
        0 : str_bargain_id := cx_GetSelectedValues(cxGrid3, 'bargain_id');
        7 : str_bargain_id := cx_GetSelectedValues(cxGrid10, 'bargain_id');
        else str_bargain_id := '';
      end;
      if (str_bargain_id = '') then Application.MessageBox('Нет выбранных перевозко', 'Внимание', MB_OK or MB_ICONINFORMATION)
      else FRepTransSFHExt(usr_pwd, 1, Date, Date, str_bargain_id);
    end;
  end;
  FreeLibrary(handle);
end;

procedure TfmClientFrahtCard2.dxBarButton45Click(Sender: TObject);
var  exApp, exWkb, exWks : Variant;
                       Q : TADOQuery;
                fact_num : string;
                  row, i : integer;
          str_bargain_id : string;
                      SP : TADOStoredProc;
begin
  Screen.Cursor := crHourglass;
  ShowTextMessage('Формирование отчёта...', False);

  case cxPageControl1.ActivePage.Tag of
    0 : str_bargain_id := cx_GetSelectedValues(cxGrid3, 'bargain_id');
    1 : str_bargain_id := cx_GetSelectedValues(cxGrid1, 'bargain_id');
    7 : str_bargain_id := cx_GetSelectedValues(cxGrid10, 'bargain_id');
    8 : str_bargain_id := cx_GetSelectedValues(cxGrid13, 'bargain_id');
    else str_bargain_id := '';
  end;

  if str_bargain_id = '' then begin
    Screen.Cursor := crDefault;
    ShowTextMessage();
    Application.MessageBox('Выберите перевозки!', 'Ошибка', MB_ICONWARNING or MB_OK);
    Exit;
  end;


  ShowTextMessage('Запуск Excel ...', False);
  exApp := CreateOleObject('Excel.Application');
  exWkb := exApp.Workbooks.Add(GetDocBlob(fmMain.Lis, 139));
  exWkb := exApp.ActiveWorkbook;
  exWks := exWkb.WorkSheets[1];
//  exApp.Visible := True;

  SP := TADOStoredProc.Create(nil);
  SP.Connection := fmMain.Lis;
  SP.ProcedureName := 'sp_Report_BuhInf';
  SP.Parameters.Refresh;
  SP.Parameters.ParamByName('@str_bargain_id'  ).Value := str_bargain_id;
  try
    SP.Open;
  except
    SP.Free;
    exit;
  end;
  row := 11;

  if SP.RecordCount > 0 then
    fact_num := SP.FieldByName('fact_num').AsString;
  while not SP.Eof do begin
    if fact_num <> SP.FieldByName('fact_num').AsString then begin
      exWks.Rows[IntToStr(row + 0) + ':' + IntToStr(row +  6)].Copy;
      exWks.Rows[IntToStr(row + 9) + ':' + IntToStr(row + 15)].PasteSpecial(1);
      row := row + 9;
      fact_num := SP.FieldByName('fact_num').AsString;
    end;
    SP.Next;
  end;

  SP.First;
  row := 15;
  if SP.RecordCount > 0 then
    fact_num := SP.FieldByName('fact_num').AsString;
  exWks.Range['D' + IntToStr(row - 4)].Value := fact_num + ' от ' + FormatDateTime('dd.mm.yyyy', SP.FieldByName('fact_date').AsDateTime);
  while not SP.Eof do begin
    ShowTextMessage('Осталось '+IntToStr(SP.RecordCount - SP.RecNo)+' строк...', False);

    if fact_num <> SP.FieldByName('fact_num').AsString then begin
      exWks.Rows[IntToStr(row)].Delete;
      exWks.Rows[IntToStr(row)].Delete;
      row := row + 7;
      fact_num := SP.FieldByName('fact_num').AsString;
      exWks.Range['D' + IntToStr(row - 4)].Value := fact_num + ' от ' + FormatDateTime('dd.mm.yyyy', SP.FieldByName('fact_date').AsDateTime);
    end;

    exWks.Rows[IntToStr(row + 1)].Insert;
    exWks.Rows[IntToStr(row + 0)].Copy;
    exWks.Rows[IntToStr(row + 1)].PasteSpecial(1);

    exWks.Range['B' + IntToStr(row)].Value := SP.FieldByName('ktgrm_text').AsString;
    exWks.Range['C' + IntToStr(row)].Value := SP.FieldByName('number_act').AsString;
    exWks.Range['D' + IntToStr(row)].Value := SP.FieldByName('date_dep').Value;
    exWks.Range['E' + IntToStr(row)].Value := SP.FieldByName('date_serv').Value;
    exWks.Range['G' + IntToStr(row)].Value := SP.FieldByName('number_doc').AsString;
    exWks.Range['H' + IntToStr(row)].Value := SP.FieldByName('vagon_num').AsString;
    exWks.Range['I' + IntToStr(row)].Value := SP.FieldByName('sum_wnds_rub').Value;
    exWks.Range['J' + IntToStr(row)].Value := SP.FieldByName('nds_rub').Value;
    exWks.Range['K' + IntToStr(row)].Value := SP.FieldByName('sum_rub').Value;

    row := row + 1;
    SP.Next;
  end;

  exWks.Rows[IntToStr(row)].Delete;
  exWks.Rows[IntToStr(row)].Delete;


  Q := TADOQuery.Create(nil);
  Q.Connection := fmMain.Lis;
  Q.SQL.Add('SELECT FIO_users FROM view_users WHERE users_name = system_user');
  Q.Open;

  exWks.Range['G' + IntToStr(row+5)].Value := 'Исполнитель';
  exWks.Range['H' + IntToStr(row+5)].Value := '____________';
  exWks.Range['J' + IntToStr(row+5)].Value := Q.FieldByName('FIO_users').AsString;


  exWks.Range['A1'].Select;
  Screen.Cursor := crDefault;
  ShowTextMessage('', True);
  exApp.Visible := True;
  VarClear(exWks); VarClear(exWkb); VarClear(exApp);
  Q.Free;
  SP.Free;
end;

procedure TfmClientFrahtCard2.dxBarButton46Click(Sender: TObject);
var
   exApp, exWkb, exWks   : variant;
   SP                    : TADOStoredProc;
   Q_trip                : TADOQuery;
   fact_id               : string;

begin
   Q_trip := TADOQuery.Create(nil);
   Q_trip.Connection := fmMain.Lis;
   Q_trip.SQL.Add('SELECT MAX(fact_id) as fact_id, datpr, num_document, num_document_pref, date_from_to FROM view_fact_all WITH (NOLOCK) ');
   Q_trip.SQL.Add('WHERE (num_document_pref IS NOT NULL) AND (date_from_to BETWEEN :Fdate1 AND :Fdate2) AND users_group_id = :users_group_id GROUP BY datpr, num_document, num_document_pref, date_from_to');
   Q_trip.Parameters.ParamByName('Fdate1').Value:= Fdate1;
   Q_trip.Parameters.ParamByName('Fdate2').Value:= Fdate2;
   Q_trip.Parameters.ParamByName('users_group_id').Value := usr_pwd.user_group_id;
   Q_trip.Open;
   fmFilter := TfmFilter.Create(0, Q_trip, 'fact_id', 'num_document', 'num_document_pref');
   fmFilter._SetTripReport := True;

    if fmFilter.ShowModal=mrOk then begin
       fact_id := fmFilter._GetStrId;

       Q_trip.Locate('fact_id', fact_id, []);

       if (fact_id = '') then begin
         Application.MessageBox('Нет выбранных рейсов', 'Внимание', MB_OK or MB_ICONINFORMATION);
         Exit;
       end;

       Screen.Cursor := crHourglass;
       ShowTextMessage('Подготовка данных ...', False);

       SP := TADOStoredProc.Create(nil);
       SP.Connection := fmMain.Lis;
       SP.ProcedureName := 'sp_Report_trip';
       SP.Parameters.Refresh;
       SP.Parameters.ParamByName('@fact_id').Value := fact_id;
       SP.Parameters.ParamByName('@date_from').Value := Fdate1;
       SP.Parameters.ParamByName('@date_to').Value := Fdate2;

       SP.Open;

//       if SP.RecordCount = 0 then exit;

       ShowTextMessage('Создание отчета', False);

       exApp := CreateOleObject('Excel.Application');
       exWkb := exApp.Workbooks.Add(GetDocBlob(fmMain.Lis, 270));
       exWkb := exApp.ActiveWorkbook;
       exWks := exWkb.WorkSheets[1];

       exWks.Range['B6'].Value := Q_trip.FieldByName('date_from_to').Value;
       exWks.Range['c6'].Value := Q_trip.FieldByName('datpr').Value;
       exWks.Range['C4'].Value := Q_trip.FieldByName('num_document').AsString;
       exWks.Range['C5'].Value := Q_trip.FieldByName('num_document_pref').AsString;

       if SP.Locate('bargain_GNG', '-9000017',[]) then exWks.Range['C8'].Value  := SP.FieldByName('client_notNDS_RUB').Value;
       if SP.Locate('bargain_GNG', '-9000024',[]) then exWks.Range['C9'].Value  := SP.FieldByName('client_notNDS_RUB').Value;
       if SP.Locate('bargain_GNG', '-9000025',[]) then exWks.Range['C10'].Value := SP.FieldByName('client_notNDS_RUB').Value;
       if SP.Locate('shaping_GNG', '-9000003',[]) then exWks.Range['C12'].Value := SP.FieldByName('agent_notNDS_RUB').Value;
       if SP.Locate('shaping_GNG', '-9000008',[]) then exWks.Range['C13'].Value := SP.FieldByName('agent_notNDS_RUB').Value;
       if SP.Locate('shaping_GNG', '-9000034',[]) then exWks.Range['C14'].Value := SP.FieldByName('agent_notNDS_RUB').Value;
       if SP.Locate('shaping_GNG', '-9000026',[]) then exWks.Range['C21'].Value := SP.FieldByName('agent_notNDS_RUB').Value;
       if SP.Locate('shaping_GNG', '-9000027',[]) then exWks.Range['C22'].Value := SP.FieldByName('agent_notNDS_RUB').Value;
       if SP.Locate('shaping_GNG', '-9000028',[]) then exWks.Range['C23'].Value := SP.FieldByName('agent_notNDS_RUB').Value;
       if SP.Locate('shaping_GNG', '-9000029',[]) then exWks.Range['C24'].Value := SP.FieldByName('agent_notNDS_RUB').Value;
       if SP.Locate('shaping_GNG', '-9000030',[]) then exWks.Range['C25'].Value := SP.FieldByName('agent_notNDS_RUB').Value;
       if SP.Locate('shaping_GNG', '-9000009',[]) then exWks.Range['C26'].Value := SP.FieldByName('agent_notNDS_RUB').Value;
       if SP.Locate('shaping_GNG', '-9000015',[]) then exWks.Range['C28'].Value := SP.FieldByName('agent_notNDS_RUB').Value;
       if SP.Locate('shaping_GNG', '-9000016',[]) then exWks.Range['C29'].Value := SP.FieldByName('agent_notNDS_RUB').Value;
       if SP.Locate('shaping_GNG', '-9000031',[]) then exWks.Range['C30'].Value := SP.FieldByName('agent_notNDS_RUB').Value;
       if SP.Locate('shaping_GNG', '-9000012',[]) then exWks.Range['C31'].Value := SP.FieldByName('agent_notNDS_RUB').Value;
       if SP.Locate('shaping_GNG', '-9000011',[]) then exWks.Range['C32'].Value := SP.FieldByName('agent_notNDS_RUB').Value;
       if SP.Locate('shaping_GNG', '-9000014',[]) then exWks.Range['C33'].Value := SP.FieldByName('agent_notNDS_RUB').Value;
       if SP.Locate('shaping_GNG', '-9000005',[]) then exWks.Range['C34'].Value := SP.FieldByName('agent_notNDS_RUB').Value;
       if SP.Locate('shaping_GNG', '-9000002',[]) then exWks.Range['C35'].Value := SP.FieldByName('agent_notNDS_RUB').Value;
       if SP.Locate('shaping_GNG', '-9000035',[]) then exWks.Range['C36'].Value := SP.FieldByName('agent_notNDS_RUB').Value;
       if SP.Locate('shaping_GNG', '-9000004',[]) then exWks.Range['C37'].Value := SP.FieldByName('agent_notNDS_RUB').Value;
       if SP.Locate('shaping_GNG', '-9000032',[]) then exWks.Range['C39'].Value := SP.FieldByName('agent_notNDS_RUB').Value;
       if SP.Locate('shaping_GNG', '-9000033',[]) then exWks.Range['C40'].Value := SP.FieldByName('agent_notNDS_RUB').Value;


       exApp.Visible := True;
    end;

   ShowTextMessage('', True);
   exWks := Null; exWkb := Null; exApp := Null;
   VarClear(exWks); VarClear(exWkb);  VarClear(exApp);
   SP.Free;
   Q_trip.Free;
//   fmFilter.Free;
end;

procedure TfmClientFrahtCard2.dxBarButton4Click(Sender: TObject);
begin
  Screen.Cursor := crHourglass;
  case TControl(Sender).Tag of
    1 : Fdate1 := IncMonth(Fdate1, 1);
    2 : Fdate1 := IncMonth(Fdate1, -1);
  end;

  Fdate2 := IncMonth(Fdate1, 1) - 1;
  dxBarSubItem2.Caption := FormatDateTime('mmmm yyyy', Fdate1);
  dxBarManager1Bar1.Reset;

  dxBarButton4.Caption := FormatDateTime('mmmm yyyy', IncMonth(Fdate1,-1));
  dxBarButton3.Caption := FormatDateTime('mmmm yyyy', IncMonth(Fdate1,1));

  RefreshContract();
  RefreshProcedure(-9);

  Screen.Cursor := crDefault;
end;

procedure TfmClientFrahtCard2.dxBarButton51Click(Sender: TObject);
var str_bargain_id : string;
                 i : integer;
begin
  cxGridChange;

  str_bargain_id := '';
  for i:=0 to FView.Controller.SelectedRecordCount - 1 do
    str_bargain_id := str_bargain_id + ', ' + IntToStr(FView.Controller.SelectedRows[i].Values[FView.GetColumnByFieldName('bargain_id').Index]);
  Delete(str_bargain_id, 1, 2);

  if str_bargain_id <> '' then
    PrintFrahtCardWeight_Multi2(fmMain.Lis, str_bargain_id);

end;

procedure TfmClientFrahtCard2.dxBarButton52Click(Sender: TObject);
begin
  cxGridChange;

  fmAgreeFactInc := TfmAgreeFactInc.Create(Application, FView.GetColumnByFieldName('bargain_id').DataBinding.Field.AsInteger);
  if fmAgreeFactInc.SetFrahtFact() = mrOk then
    fmAgreeFactInc.ShowModal
  else
    fmAgreeFactInc.Close;
end;

procedure TfmClientFrahtCard2.dxBarButton53Click(Sender: TObject);
var new_str : string;
    i       : integer;
    Query1  : TADOQuery;
begin
  cxGridChange;

  Query1 := TADOQuery.Create(nil);
  Query1.Connection := fmMain.Lis;
  Query1.SQL.Add('SELECT comment FROM global_id WHERE global_id='+IntToStr(FView.GetColumnByFieldName('shaping_rate_id').DataBinding.Field.AsInteger));
  Query1.Open;
  new_str := Query1.FieldByName('comment').AsString;
  if InputQuery('Примечание', 'Текст примечания:', new_str) then begin
    Query1.Close;
    Query1.SQL.Clear;
    Query1.SQL.Add('UPDATE global_id SET comment=:comment WHERE global_id=:shaping_rate_id');
    if new_str <> '' then Query1.Parameters.ParamByName('comment').Value := new_str
    else Query1.Parameters.ParamByName('comment').Value := null;
    for i := 0 to FView.Controller.SelectedRowCount - 1 do begin
      FView.Controller.SelectedRows[i].Focused := True;
      Query1.Close;
      Query1.Parameters.ParamByName('shaping_rate_id').Value := FView.GetColumnByFieldName('shaping_rate_id').DataBinding.Field.AsInteger;
      Query1.ExecSQL;
    end;
    RefreshQueryGrid(FView, 'shaping_rate_id', FView.GetColumnByFieldName('shaping_rate_id').DataBinding.Field.AsInteger);
  end;
  Query1.Free;
end;

procedure TfmClientFrahtCard2.dxBarButton54Click(Sender: TObject);
var new_str : string;
    i       : integer;
    Query1  : TADOQuery;
begin
  cxGridChange;

  Query1 := TADOQuery.Create(nil);
  Query1.Connection := fmMain.Lis;
  Query1.SQL.Add('SELECT agent_comment FROM fraht_agent WHERE shaping_rate_id='+IntToStr(FView.GetColumnByFieldName('shaping_rate_id').DataBinding.Field.AsInteger));
  Query1.Open;
  new_str := Query1.FieldByName('agent_comment').AsString;
  if InputQuery('Примечание', 'Текст примечания:', new_str) then begin
    Query1.Close;
    Query1.SQL.Clear;
    Query1.SQL.Add('UPDATE fraht_agent SET agent_comment=:agent_comment WHERE shaping_rate_id=:shaping_rate_id');
    if new_str <> '' then Query1.Parameters.ParamByName('agent_comment').Value := new_str
    else Query1.Parameters.ParamByName('agent_comment').Value := null;
    for i := 0 to FView.Controller.SelectedRowCount - 1 do begin
      FView.Controller.SelectedRows[i].Focused := True;
      Query1.Close;
      Query1.Parameters.ParamByName('shaping_rate_id').Value := FView.GetColumnByFieldName('shaping_rate_id').DataBinding.Field.AsInteger;
      Query1.ExecSQL;
    end;
    Query1.Free;
    RefreshQueryGrid(FView, 'shaping_rate_id', FView.GetColumnByFieldName('shaping_rate_id').DataBinding.Field.AsInteger);
  end;
end;

procedure TfmClientFrahtCard2.dxBarButton55Click(Sender: TObject);
var       new_str : string;
                i : integer;
 vested_remainder : Currency;
       tmp_double : Double;
           Query1 : TADOQuery;
begin
  cxGridChange;

  if usr_pwd.user_func.Locate('func_name', 'set_shaping_rate_vested_remainder_modify', [loCaseInsensitive]) then begin
    Query1 := TADOQuery.Create(nil);
    Query1.Connection := fmMain.Lis;
    Query1.SQL.Add('SELECT vested_remainder FROM shaping_rate WHERE shaping_rate_id='+IntToStr(FView.GetColumnByFieldName('shaping_rate_id').DataBinding.Field.AsInteger));
    Query1.Open;
    new_str := Query1.FieldByName('vested_remainder').AsString;
    if InputQuery('Переходящий остаток', 'Переходящий остаток = ', new_str) then begin

      vested_remainder := 0;
      if new_str <> '' then begin
        new_str := ReplaceStr(new_str, '.', FormatSettings.DecimalSeparator);
        new_str := ReplaceStr(new_str, ',', FormatSettings.DecimalSeparator);
        if not TryStrToFloat(new_str, tmp_double) then begin
          Application.MessageBox('Требуется число', 'Переходящий остаток', MB_OK or MB_ICONERROR);
          exit;
        end;
        vested_remainder := RoundCurr(tmp_double, -2);
      end;

      Query1.Close;
      Query1.SQL.Clear;
      Query1.SQL.Add('UPDATE shaping_rate SET vested_remainder=:vested_remainder WHERE shaping_rate_id=:shaping_rate_id');
      Query1.Parameters.ParamByName('vested_remainder').Value := iif(new_str = '', null, vested_remainder);
      for i := 0 to FView.Controller.SelectedRowCount - 1 do begin
        FView.Controller.SelectedRows[i].Focused := True;
        Query1.Close;
        Query1.Parameters.ParamByName('shaping_rate_id').Value := FView.GetColumnByFieldName('shaping_rate_id').DataBinding.Field.AsInteger;
        Query1.ExecSQL;
      end;
      Query1.Free;
      RefreshQueryGrid(FView, 'shaping_rate_id', FView.GetColumnByFieldName('shaping_rate_id').DataBinding.Field.AsInteger);
    end;
  end else
    Application.MessageBox('Недостаточно прав для изменения', 'Переходящий остаток', MB_OK or MB_ICONERROR);
end;

procedure TfmClientFrahtCard2.dxBarButton56Click(Sender: TObject);
var sp_shaping_rate_block : TADOStoredProc;
                   i : integer;
 date_period_finance : TDateTime;
                   Q : TADOQuery;
        dt, dt2, dt3 : TDateTime;
begin

  Q := TADOQuery.Create(nil);
  Q.Connection := fmMain.Lis;
  Q.SQL.Add('SELECT TOP 1 cast(cast(year(dateadd(mm,1,max(finance_date))) as varchar)+'+
                      'RIGHT(''0''+cast(month(dateadd(mm,1,max(finance_date))) as varchar),2)+''01'' as datetime) AS finance_date '+
                      'FROM view_finance_period ORDER BY finance_date DESC');
  Q.Open;

  dt := Q.FieldByName('finance_date').AsDateTime;

  StoreRegistryDate(rgLoad, '\Software\Lis1\DateTime\FinDate', dt2, dt3);

  if dt2 > dt then dt := dt2;


  fmPeriod := TfmPeriod.Create(Application, dt, dt, 3);
  if fmPeriod.ShowModal = mrOk then begin
    Screen.Cursor := crHourglass;
    date_period_finance := fmPeriod._GetMonth;

    if dt > date_period_finance then begin
      if Application.MessageBox(PChar('Финансовый месяц "'+ FormatDateTime('mmmm yyyy', date_period_finance) + '" закрыт.'+#13+'Вы уверены?'), 'Внимание', MB_OKCANCEL) = IDCANCEL then begin
        Screen.Cursor := crDefault;
        exit;
      end;
    end;

    sp_shaping_rate_block := TADOStoredProc.Create(Application);
    sp_shaping_rate_block.Connection := fmMain.Lis;
    sp_shaping_rate_block.ProcedureName := 'sp_shaping_rate_block';
    sp_shaping_rate_block.Parameters.Refresh;
    for i := 0 to cxGrid1DBBandedTableView1.Controller.SelectedRowCount-1 do begin
      try
        sp_shaping_rate_block.Parameters.ParamByName('@shaping_rate_id'    ).Value := cxGrid1DBBandedTableView1.Controller.SelectedRows[i].Values[cxGrid1DBBandedTableView1.GetColumnByFieldName('shaping_rate_id').Index];
        sp_shaping_rate_block.Parameters.ParamByName('@date_period_finance').Value := date_period_finance;
        sp_shaping_rate_block.ExecProc;
      except
      end;
    end;
    sp_shaping_rate_block.Free;


    StoreRegistryDate(rgSave, '\Software\Lis1\DateTime\FinDate', date_period_finance, date_period_finance);

    RefreshProcedure(-9);
    Screen.Cursor := crDefault;
  end;

  Q.Free;


//  cxGridChange;
//
//  Q := TADOQuery.Create(nil);
//  Q.Connection := fmMain.Lis;
//  Q.SQL.Add('SELECT TOP 1 cast(cast(year(dateadd(mm,1,max(finance_date))) as varchar)+'+
//                      'RIGHT(''0''+cast(month(dateadd(mm,1,max(finance_date))) as varchar),2)+''01'' as datetime) AS finance_date '+
//                      'FROM view_finance_period ORDER BY finance_date DESC');
//  Q.Open;
//
//  fmPeriod := TfmPeriod.Create(Application, Q.FieldByName('finance_date').AsDateTime, Q.FieldByName('finance_date').AsDateTime, 3 );
//  if fmPeriod.ShowModal = mrOk then begin
//    Screen.Cursor := crHourglass;
//    date_period_finance := fmPeriod._GetMonth;
//
//    if Q.FieldByName('finance_date').AsDateTime > date_period_finance then begin
//      if Application.MessageBox(PChar('Финансовый месяц "'+ FormatDateTime('mmmm yyyy', date_period_finance) + '" закрыт.'+#13+'Вы уверены?'), 'Внимание', MB_OKCANCEL) = IDCANCEL then begin
//        Screen.Cursor := crDefault;
//        exit;
//      end;
//    end;
//
//    SP_Bargain_Block := TADOStoredProc.Create(Application);
//    SP_Bargain_Block.Connection := fmMain.Lis;
//    SP_Bargain_Block.ProcedureName := 'sp_Bargain_Block;1';
//    SP_Bargain_Block.Parameters.Refresh;
//    for i := 0 to FView.Controller.SelectedRowCount-1 do begin
//      try
//        SP_Bargain_Block.Parameters.ParamByName('@bargain_id').Value := FView.Controller.SelectedRows[i].Values[FView.GetColumnByFieldName('bargain_id').Index];
//        SP_Bargain_Block.Parameters.ParamByName('@set_bargain_block').Value   := 1;
//        SP_Bargain_Block.Parameters.ParamByName('@date_period_finance').Value := date_period_finance;
//        SP_Bargain_Block.ExecProc;
//      except
//      end;
//    end;
//    SP_Bargain_Block.Free;
//
//    RefreshProcedure(-9);
//    Screen.Cursor := crDefault;
//  end;
//
//  Q.Free;
end;

procedure TfmClientFrahtCard2.dxBarButton57Click(Sender: TObject);
var              i : integer;
  sp_shaping_rate_block : TADOStoredProc;
begin
  if Application.MessageBox('Вы точно уверены?', 'Внимание', MB_OKCANCEL) = ID_OK then begin;
    Screen.Cursor := crHourglass;

    sp_shaping_rate_block := TADOStoredProc.Create(Application);
    sp_shaping_rate_block.Connection := fmMain.Lis;
    sp_shaping_rate_block.ProcedureName := 'sp_shaping_rate_block';
    sp_shaping_rate_block.Parameters.Refresh;
    for i := 0 to cxGrid1DBBandedTableView1.Controller.SelectedRowCount-1 do begin
      try
        sp_shaping_rate_block.Parameters.ParamByName('@shaping_rate_id'    ).Value := cxGrid1DBBandedTableView1.Controller.SelectedRows[i].Values[cxGrid1DBBandedTableView1.GetColumnByFieldName('shaping_rate_id').Index];
        sp_shaping_rate_block.Parameters.ParamByName('@date_period_finance').Value := null;
        sp_shaping_rate_block.ExecProc;
      except
      end;
    end;
    sp_shaping_rate_block.Free;
    RefreshProcedureDetail();
  end;

//  cxGridChange;
//
//  if Application.MessageBox('Вы точно уверены?', 'Внимание', MB_OKCANCEL) = ID_OK then begin;
//    Screen.Cursor := crHourglass;
//
//    SP_Bargain_Block := TADOStoredProc.Create(Application);
//    SP_Bargain_Block.Connection := fmMain.Lis;
//    SP_Bargain_Block.ProcedureName := 'sp_Bargain_Block;1';
//    SP_Bargain_Block.Parameters.Refresh;
//    for i := 0 to FView.Controller.SelectedRowCount-1 do begin
//      try
//        SP_Bargain_Block.Parameters.ParamByName('@bargain_id').Value := FView.Controller.SelectedRows[i].Values[FView.GetColumnByFieldName('bargain_id').Index];
//        SP_Bargain_Block.Parameters.ParamByName('@set_bargain_block').Value   := 0;
//        SP_Bargain_Block.Parameters.ParamByName('@date_period_finance').Value := null;
//        SP_Bargain_Block.ExecProc;
//      except
//      end;
//    end;
//    SP_Bargain_Block.Free;
//    RefreshProcedure(-9);
//  end;
end;

procedure TfmClientFrahtCard2.dxBarButton59Click(Sender: TObject);
var   Q : TADOQuery;
begin
  cxGridChange;

  Screen.Cursor := crHourglass;
  Q := TADOQuery.Create(nil);
  Q.Connection := fmMain.Lis;
  Q.SQL.Text := 'SELECT node_begin_cod, node_end_cod FROM view_bargain_rights WHERE bargain_id = '+IntToStr(FView.GetColumnByFieldName('bargain_id').DataBinding.Field.AsInteger);
  Q.Open;
  Screen.Cursor := crDefault;
  RailAtlas_ShowRoute(fmMain.Lis, Q.FieldByName('node_begin_cod').AsString, Q.FieldByName('node_end_cod').AsString);
  Q.Free;
end;

procedure TfmClientFrahtCard2.dxBarButton5Click(Sender: TObject);
begin
  Screen.Cursor := crHourglass;

  Fusers_id := TdxBarItem(Sender).Tag;
  Caption := 'Суммы по фрахтовым карточкам (' + TdxBarItem(Sender).Caption +')';

  RefreshProcedure(-9);

  Screen.Cursor := crDefault;
end;

procedure TfmClientFrahtCard2.dxBarButton60Click(Sender: TObject);
begin
  cxGridChange;

  SetRecordUsersColor('shaping_rate_id', FView, 'SHAPING_RATE', TdxBarButton(Sender).Tag = 1);
  RefreshQueryGrid(FView, 'shaping_rate_id', FView.GetColumnByFieldName('shaping_rate_id').DataBinding.Field.AsInteger);
end;

procedure TfmClientFrahtCard2.dxBarButton64Click(Sender: TObject);
begin
  cxGrid1DBBandedTableView1.Filtering.ColumnFilteredItemsList := not dxBarButton64.Down;
  cxGrid2DBBandedTableView1.Filtering.ColumnFilteredItemsList := not dxBarButton64.Down;
  cxGrid3DBBandedTableView1.Filtering.ColumnFilteredItemsList := not dxBarButton64.Down;
  cxGrid4DBBandedTableView1.Filtering.ColumnFilteredItemsList := not dxBarButton64.Down;
  cxGrid5DBBandedTableView1.Filtering.ColumnFilteredItemsList := not dxBarButton64.Down;
  cxGrid6DBBandedTableView1.Filtering.ColumnFilteredItemsList := not dxBarButton64.Down;
  cxGrid9DBBandedTableView1.Filtering.ColumnFilteredItemsList := not dxBarButton64.Down;
  cxGrid10DBBandedTableView1.Filtering.ColumnFilteredItemsList := not dxBarButton64.Down;
  cxGrid13DBBandedTableView1.Filtering.ColumnFilteredItemsList := not dxBarButton64.Down;
end;

procedure TfmClientFrahtCard2.dxBarButton65Click(Sender: TObject);
type
  TFunc = function(AppHand:THandle; usr_pwd:PUser_pwd) : variant;
var
  FRepBuh  : TFunc;
  handle   : THandle;
begin
  handle := LoadLibrary('reports.dll');
  @FRepBuh := GetProcAddress(handle, 'CreateWndFrahtBuhDlg');
  FRepBuh(Application.Handle, usr_pwd);
  FreeLibrary(handle);
end;

procedure TfmClientFrahtCard2.dxBarButton72Click(Sender: TObject);
begin
  Screen.Cursor := crHourglass;
  FiltercxGrid4ListID(cxGrid9DBBandedTableView1, 'id');
  Screen.Cursor := crDefault;
end;

procedure TfmClientFrahtCard2.dxBarButton73Click(Sender: TObject);
begin
  Screen.Cursor := crHourglass;
  FiltercxGrid4ListID(cxGrid10DBBandedTableView1, 'bargain_id');
  Screen.Cursor := crDefault;
end;

procedure TfmClientFrahtCard2.dxBarButton74Click(Sender: TObject);
begin
  Screen.Cursor := crHourglass;
  FiltercxGrid4ListID(cxGrid3DBBandedTableView1, 'shaping_rate_id');
  Screen.Cursor := crDefault;
end;

procedure TfmClientFrahtCard2.dxBarButton75Click(Sender: TObject);
begin
  cxGridChange;

  Screen.Cursor := crHourglass;
  FiltercxGrid4ListID(FView, 'shaping_rate_id');
  Screen.Cursor := crDefault;
end;

procedure TfmClientFrahtCard2.dxBarButton76Click(Sender: TObject);
begin
  Screen.Cursor := crHourglass;
  FiltercxGrid4ListID(cxGrid4DBBandedTableView1, 'fact_id');
  Screen.Cursor := crDefault;
end;

procedure TfmClientFrahtCard2.dxBarButton77Click(Sender: TObject);
begin
  Screen.Cursor := crHourglass;
  FiltercxGrid4ListID(cxGrid5DBBandedTableView1, 'fact_id');
  Screen.Cursor := crDefault;
end;

procedure TfmClientFrahtCard2.dxBarButton80Click(Sender: TObject);
var i                        ,
    row_0                    ,
    col_0                    ,
    row_beg                  : integer;

    exApp,exWkb, exWks       ,
    array_data               ,
    range, cell1, cell2      : Variant;

    str_bargain_id1          ,
    str_bargain_id2          ,
    user_name                : string;

    Q_UsersList              ,
    Q_bargain                : TADOQuery;

    SP_report_comparison_revenues_period
                             : TADOStoredProc;

    Fdate3                   ,
    Fdate4                   : TDateTime;

    UsersList                ,
    ListGrp                  : TStringList;

    d                        : TDateTime;
begin
  UsersList := TStringList.Create;
  if usr_pwd.user_func.Locate('func_name', 'set_consolidate_reports', [loCaseInsensitive]) then begin
    // найдеи имя пользователя без постфикса
    user_name := usr_pwd.user_name;
    user_name := ReverseString(user_name);
    user_name := RightStr(user_name, Length(user_name) - Pos('_', user_name));
    user_name := ReverseString(user_name);
    // консолидированный отчет - необходимо выбрать СОбственные организации
    Q_UsersList := TADOQuery.Create(nil);
    Q_UsersList.Connection := fmMain.Lis;
    Q_UsersList.SQL.Add('select users_id, users_name, users_group_id, users_group_cod = inf_obj_name_full, firm_name = inf_obj_name');
    Q_UsersList.SQL.Add('from users');
    Q_UsersList.SQL.Add('left join inf_obj i on users_group_id = inf_obj_id');
    Q_UsersList.SQL.Add('where users_name in (''' + user_name + ''', ''' + user_name + ''' + ''_'' + inf_obj_name_full) AND i.date_end IS NULL');
    Q_UsersList.SQL.Add('order by 1;');
    Q_UsersList.Open;

    fmFilter := TfmFilter.Create(0, Q_UsersList, 'users_id', 'users_group_cod', 'firm_name');
    fmFilter._SetSelfFirmChoose := True;
    if fmFilter.ShowModal = mrOk then begin
      UsersList.CommaText := fmFilter._GetStrId;

      // преобразуем список ID в список имен
      for i := 0 to UsersList.Count - 1 do begin
        Q_UsersList.Locate('users_id', StrToInt(UsersList.Strings[i]), []);
        UsersList.Strings[i] := Q_UsersList.FieldByName('users_name').AsString;
      end;
    end;
    Q_UsersList.Free;
  end else begin
    // обычный отчет - только для текущей собственной организации
    UsersList.Add(usr_pwd.user_name);
  end;

  Screen.Cursor := crHourglass;

  ShowTextMessage('Подготовка данных ...'#10'Формирование списка перевозок ...', False);

  //Получаем набор перевозок за ПЕРВЫЙ интервал дат  1111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111

  str_bargain_id1 := '';
  Q_bargain := TADOQuery.Create(nil);
  Q_bargain.SQL.Text := 'SELECT bargain_id FROM view_bargain_rights ' +
  'WHERE date_period_finance BETWEEN ' + DateToSQL(Fdate1) + ' AND ' + DateToSQL(Fdate2) + ' AND (bargain_sum_fact IS NOT NULL)';
  // Цикл по списку собственных организаций
  for i := 0 to UsersList.Count - 1 do begin
    Q_bargain.ConnectionString := 'Persist Security Info=True;Provider=SQLOLEDB.1;User ID=' + UsersList.Strings[i] + ';Password=' + usr_pwd^.user_pass + ';Initial Catalog=' + usr_pwd^.catalog + ';Data Source=' + usr_pwd^.server+';';
    Q_bargain.Open;
    while not Q_bargain.Eof do begin
      if str_bargain_id1 <> '' then str_bargain_id1 := str_bargain_id1 + ',';
      str_bargain_id1 := str_bargain_id1 + Q_bargain.FieldByName('bargain_id').AsString;
      Q_bargain.Next;
    end;
    Q_bargain.Close;
  end;

  if str_bargain_id1 = ''  then begin
    ShowMessage('Нет данных.');
    ShowTextMessage();
    Screen.Cursor := crDefault;
    Exit;
  end;

  //Получаем набор перевозок за ВТОРОЙ интервал дат  222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222
  //получаем даты второго интервала для сравнения суммарных данных

  fmPeriod := TfmPeriod.Create(Application, Fdate1, Fdate2, 2);
  if fmPeriod.ShowModal = mrOK then begin
    Fdate3 := fmPeriod._GetMonthBegin;
    Fdate4 := fmPeriod._GetMonthEnd;

    str_bargain_id2 := '';
    Q_bargain.Close;
    Q_bargain.SQL.Text := 'SELECT bargain_id FROM view_bargain_rights ' +
    'WHERE date_period_finance BETWEEN ' + DateToSQL(Fdate3) + ' AND ' + DateToSQL(Fdate4) + ' AND (bargain_sum_fact IS NOT NULL)';
    // Цикл по списку собственных организаций
    for i := 0 to UsersList.Count - 1 do begin
      Q_bargain.ConnectionString := 'Persist Security Info=True;Provider=SQLOLEDB.1;User ID=' + UsersList.Strings[i] + ';Password=' + usr_pwd^.user_pass + ';Initial Catalog=' + usr_pwd^.catalog + ';Data Source=' + usr_pwd^.server+';';
      Q_bargain.Open;
      while not Q_bargain.Eof do begin
        if str_bargain_id2 <> '' then str_bargain_id2 := str_bargain_id2 + ',';
        str_bargain_id2 := str_bargain_id2 + Q_bargain.FieldByName('bargain_id').AsString;
        Q_bargain.Next;
      end;
      Q_bargain.Close;
    end;
  end;

  Q_bargain.Free;
  d := Now;
  ShowTextMessage('Подготовка данных ...'#10'Получение данных с сервера ...', False);

  //Формирование набора данных для выгрузки в EXCEL 333333333333333333333333333333333333333333333333333333333333333333333333333333333333333333333333333
  // на этапе получения данных использование представления view_fraht_agent_rights не имеет смысла,
  // т.к. отбор ведется по списку уже отобранных перевозок
  SP_report_comparison_revenues_period := TADOStoredProc.Create(nil);
  SP_report_comparison_revenues_period.Connection := fmMain.Lis;
  SP_report_comparison_revenues_period.CommandTimeout := 300;
  SP_report_comparison_revenues_period.ProcedureName := 'sp_report_comparison_revenues_period';
  SP_report_comparison_revenues_period.Parameters.Refresh;
  SP_report_comparison_revenues_period.Parameters.ParamByName('@type_action'    ).Value := 1;
  SP_report_comparison_revenues_period.Parameters.ParamByName('@str_bargain_id1').Value := str_bargain_id1;
  SP_report_comparison_revenues_period.Parameters.ParamByName('@str_bargain_id2').Value := str_bargain_id2;
  SP_report_comparison_revenues_period.Open;
  SP_report_comparison_revenues_period.First;

  ShowTextMessage('Запуск сервера автоматизации ...', False);

  exApp := CreateOleObject('Excel.Application');
  exWkb := exApp.Workbooks.Add(GetDocBlob(fmMain.Lis, 48));
  exWks := exApp.ActiveWorkbook.WorkSheets[1];

  row_0 := 1;
  col_0 := 1;
  array_data := VarArrayCreate([1, SP_report_comparison_revenues_period.RecordCount, 0, 21], varVariant);

  ListGrp := TStringList.Create;

  while not SP_report_comparison_revenues_period.Eof do begin

    if (SP_report_comparison_revenues_period.RecordCount - SP_report_comparison_revenues_period.RecNo) mod 50 = 0 then
      ShowTextMessage('Осталось '+ IntToStr(SP_report_comparison_revenues_period.RecordCount - SP_report_comparison_revenues_period.RecNo) + ' записей...', False);

      array_data[row_0, 0]  := SP_report_comparison_revenues_period.FieldByName('rod_vagon_name'    ).Value;
      array_data[row_0, 1]  := SP_report_comparison_revenues_period.FieldByName('firm_self_name'    ).Value;
      array_data[row_0, 2]  := SP_report_comparison_revenues_period.FieldByName('firm_customer_name').Value;
      array_data[row_0, 3]  := SP_report_comparison_revenues_period.FieldByName('budget_name'       ).Value;

      array_data[row_0, 4]  := iif(SP_report_comparison_revenues_period.FieldByName('fact_weight1'      ).Value = 0, '', SP_report_comparison_revenues_period.FieldByName('fact_weight1'      ).Value);
			array_data[row_0, 5]  := iif(SP_report_comparison_revenues_period.FieldByName('client_notnds_RUB1').Value = 0, '', SP_report_comparison_revenues_period.FieldByName('client_notnds_RUB1').Value);
			array_data[row_0, 6]  := iif(SP_report_comparison_revenues_period.FieldByName('agent_notNDS_RUB1' ).Value = 0, '', SP_report_comparison_revenues_period.FieldByName('agent_notNDS_RUB1' ).Value);
			array_data[row_0, 7]  := SP_report_comparison_revenues_period.FieldByName('col1_1'            ).Value;
			array_data[row_0, 8]  := SP_report_comparison_revenues_period.FieldByName('col1_2'            ).Value;
			array_data[row_0, 9]  := SP_report_comparison_revenues_period.FieldByName('col1_3'            ).Value;
			array_data[row_0, 10] := SP_report_comparison_revenues_period.FieldByName('col1_4'            ).Value;
			array_data[row_0, 11] := SP_report_comparison_revenues_period.FieldByName('col1_5'            ).Value;
			array_data[row_0, 12] := SP_report_comparison_revenues_period.FieldByName('col1_6'            ).Value;

      array_data[row_0, 13] := iif(SP_report_comparison_revenues_period.FieldByName('fact_weight2'      ).Value = 0, '', SP_report_comparison_revenues_period.FieldByName('fact_weight2'      ).Value);
			array_data[row_0, 14] := iif(SP_report_comparison_revenues_period.FieldByName('client_notnds_RUB2').Value = 0, '', SP_report_comparison_revenues_period.FieldByName('client_notnds_RUB2').Value);
			array_data[row_0, 15] := iif(SP_report_comparison_revenues_period.FieldByName('agent_notNDS_RUB2' ).Value = 0, '', SP_report_comparison_revenues_period.FieldByName('agent_notNDS_RUB2' ).Value);
			array_data[row_0, 16] := SP_report_comparison_revenues_period.FieldByName('col2_1'            ).Value;
			array_data[row_0, 17] := SP_report_comparison_revenues_period.FieldByName('col2_2'            ).Value;
			array_data[row_0, 18] := SP_report_comparison_revenues_period.FieldByName('col2_3'            ).Value;
			array_data[row_0, 19] := SP_report_comparison_revenues_period.FieldByName('col2_4'            ).Value;
			array_data[row_0, 20] := SP_report_comparison_revenues_period.FieldByName('col2_5'            ).Value;
			array_data[row_0, 21] := SP_report_comparison_revenues_period.FieldByName('col2_6'            ).Value;

      //запись формулы расчета итоговой суммы по суммам строк услуг
      if (SP_report_comparison_revenues_period.FieldByName('npp').Asinteger <> 1) and (row_beg = 0) then begin
        row_beg := row_0 + 2;
      end;

      if SP_report_comparison_revenues_period.FieldByName('npp').Asinteger = 1 then begin

        ListGrp.Add(IntToStr(row_0 + 2));//для установки заливки и выделения жирным шрифтом

        array_data[row_0,  4] := '=SUM(E' + IntToStr(row_beg) + ':E' + IntToStr(row_0 + 1) + ')';
        array_data[row_0,  5] := '=SUM(F' + IntToStr(row_beg) + ':F' + IntToStr(row_0 + 1) + ')';
        array_data[row_0,  6] := '=SUM(G' + IntToStr(row_beg) + ':G' + IntToStr(row_0 + 1) + ')';

        array_data[row_0,  7] := '=F' + IntToStr(row_0 + 2) + '-G' + IntToStr(row_0 + 2);
        array_data[row_0,  8] := '=IF(E' + IntToStr(row_0 + 2) + ' = 0, 0, F' + IntToStr(row_0 + 2) + '/E' + IntToStr(row_0 + 2) + ')';
        array_data[row_0,  9] := '=IF(E' + IntToStr(row_0 + 2) + ' = 0, 0, G' + IntToStr(row_0 + 2) + '/E' + IntToStr(row_0 + 2) + ')';
        array_data[row_0, 10] := '=IF(E' + IntToStr(row_0 + 2) + ' = 0, 0, H' + IntToStr(row_0 + 2) + '/E' + IntToStr(row_0 + 2) + ')';
        array_data[row_0, 11] := '=IF(H' + IntToStr(row_0 + 2) + ' = 0, 0, F' + IntToStr(row_0 + 2) + '/H' + IntToStr(row_0 + 2) + ')';
        array_data[row_0, 12] := '=IF(H' + IntToStr(row_0 + 2) + ' = 0, 0, G' + IntToStr(row_0 + 2) + '/H' + IntToStr(row_0 + 2) + ')';

        array_data[row_0, 13] := '=SUM(N' + IntToStr(row_beg) + ':N' + IntToStr(row_0 + 1) + ')';
        array_data[row_0, 14] := '=SUM(O' + IntToStr(row_beg) + ':O' + IntToStr(row_0 + 1) + ')';
        array_data[row_0, 15] := '=SUM(P' + IntToStr(row_beg) + ':P' + IntToStr(row_0 + 1) + ')';

        array_data[row_0, 16] := '=O' + IntToStr(row_0 + 2) + '-P' + IntToStr(row_0 + 2);
        array_data[row_0, 17] := '=IF(N' + IntToStr(row_0 + 2) + '= 0, 0, O' + IntToStr(row_0 + 2) + '/N' + IntToStr(row_0 + 2);
        array_data[row_0, 18] := '=IF(N' + IntToStr(row_0 + 2) + '= 0, 0, P' + IntToStr(row_0 + 2) + '/N' + IntToStr(row_0 + 2);
        array_data[row_0, 19] := '=IF(N' + IntToStr(row_0 + 2) + '= 0, 0, Q' + IntToStr(row_0 + 2) + '/N' + IntToStr(row_0 + 2);
        array_data[row_0, 20] := '=IF(Q' + IntToStr(row_0 + 2) + '= 0, 0, O' + IntToStr(row_0 + 2) + '/Q' + IntToStr(row_0 + 2);
        array_data[row_0, 21] := '=IF(Q' + IntToStr(row_0 + 2) + '= 0, 0, P' + IntToStr(row_0 + 2) + '/Q' + IntToStr(row_0 + 2);

        row_beg := 0;
      end;

      row_0 := row_0 + 1;
      SP_report_comparison_revenues_period.Next;
//    end;
  end;

  // Левая верхняя ячейка области, в которую будем выводить данные
  cell1 := exWks.Cells[3, 1];
  // Правая нижняя ячейка области, в которую будем выводить данные
  cell2 := exWks.Cells[SP_report_comparison_revenues_period.RecordCount + 2, 22];
  // Область, в которую будем выводить данные
  range := exWks.Range[cell1, cell2];
  // Вывод данных
  range.Value := array_data;

  VarClear(array_data);

  ShowTextMessage('Настройка оформления 1 ...', False);

  //вывод строки с итоговой суммой над шапкой
  exWks.Cells[1, col_0 +  3] := '   ИТОГО :';

  exWks.Cells[1, col_0 +  4].Formula := '=SUMIF(D3:D' + IntToStr(row_0 + 1) + ', "ИТОГО :", E3:E' + IntToStr(row_0 + 1) + ')';
  exWks.Cells[1, col_0 +  5].Formula := '=SUMIF(D3:D' + IntToStr(row_0 + 1) + ', "ИТОГО :", F3:F' + IntToStr(row_0 + 1) + ')';
  exWks.Cells[1, col_0 +  6].Formula := '=SUMIF(D3:D' + IntToStr(row_0 + 1) + ', "ИТОГО :", G3:G' + IntToStr(row_0 + 1) + ')';
  exWks.Cells[1, col_0 +  7].Formula := '=SUM(H3:H' + IntToStr(row_0 + 1) + ')';
  exWks.Cells[1, col_0 + 13].Formula := '=SUMIF(D3:D' + IntToStr(row_0 + 1) + ', "ИТОГО :", N3:N' + IntToStr(row_0 + 1) + ')';
  exWks.Cells[1, col_0 + 14].Formula := '=SUMIF(D3:D' + IntToStr(row_0 + 1) + ', "ИТОГО :", O3:O' + IntToStr(row_0 + 1) + ')';
  exWks.Cells[1, col_0 + 15].Formula := '=SUMIF(D3:D' + IntToStr(row_0 + 1) + ', "ИТОГО :", P3:P' + IntToStr(row_0 + 1) + ')';
  exWks.Cells[1, col_0 + 16].Formula := '=SUM(Q3:Q' + IntToStr(row_0 + 1) + ')';


  //вывод строки с итоговой суммой в начале и в конце
  exWks.Cells[row_0 + 2, col_0 +  3] := '   ИТОГО :';

  exWks.Cells[row_0 + 2, col_0 +  4].Formula := '=SUMIF(D3:D' + IntToStr(row_0 + 1) + ', "ИТОГО :", E3:E' + IntToStr(row_0 + 1) + ')';
  exWks.Cells[row_0 + 2, col_0 +  5].Formula := '=SUMIF(D3:D' + IntToStr(row_0 + 1) + ', "ИТОГО :", F3:F' + IntToStr(row_0 + 1) + ')';
  exWks.Cells[row_0 + 2, col_0 +  6].Formula := '=SUMIF(D3:D' + IntToStr(row_0 + 1) + ', "ИТОГО :", G3:G' + IntToStr(row_0 + 1) + ')';

  exWks.Cells[row_0 + 2, col_0 +  7].Formula := '=SUM(H3:H' + IntToStr(row_0 + 1) + ')';
  exWks.Cells[row_0 + 2, col_0 + 13].Formula := '=SUMIF(D3:D' + IntToStr(row_0 + 1) + ', "ИТОГО :", N3:N' + IntToStr(row_0 + 1) + ')';
  exWks.Cells[row_0 + 2, col_0 + 14].Formula := '=SUMIF(D3:D' + IntToStr(row_0 + 1) + ', "ИТОГО :", O3:O' + IntToStr(row_0 + 1) + ')';
  exWks.Cells[row_0 + 2, col_0 + 15].Formula := '=SUMIF(D3:D' + IntToStr(row_0 + 1) + ', "ИТОГО :", P3:P' + IntToStr(row_0 + 1) + ')';
  exWks.Cells[row_0 + 2, col_0 + 16].Formula := '=SUM(Q3:Q' + IntToStr(row_0 + 1) + ')';

  //формируев шапку с необходимыми датами
  exWks.Cells[2, 5]  := 'фактический вес, тн. c '           + FormatDateTime('dd.mm.yyyy', Fdate1) + ' по ' + FormatDateTime('dd.mm.yyyy', Fdate2);
  exWks.Cells[2, 6]  := 'выручка без НДС, руб. с '          + FormatDateTime('dd.mm.yyyy', Fdate1) + ' по ' + FormatDateTime('dd.mm.yyyy', Fdate2);
  exWks.Cells[2, 7]  := 'себестоимость без НДС, руб. с '    + FormatDateTime('dd.mm.yyyy', Fdate1) + ' по ' + FormatDateTime('dd.mm.yyyy', Fdate2);
  exWks.Cells[2, 8]  := 'валовая комиссия без НДС, руб. с ' + FormatDateTime('dd.mm.yyyy', Fdate1) + ' по ' + FormatDateTime('dd.mm.yyyy', Fdate2);
  exWks.Cells[2, 9]  := 'выручка на 1 тн., руб. с '         + FormatDateTime('dd.mm.yyyy', Fdate1) + ' по ' + FormatDateTime('dd.mm.yyyy', Fdate2);
  exWks.Cells[2, 10] := 'себестоимость на 1 тн., руб. с '   + FormatDateTime('dd.mm.yyyy', Fdate1) + ' по ' + FormatDateTime('dd.mm.yyyy', Fdate2);
  exWks.Cells[2, 11] := 'комиссия на 1 тн., руб. с '        + FormatDateTime('dd.mm.yyyy', Fdate1) + ' по ' + FormatDateTime('dd.mm.yyyy', Fdate2);
  exWks.Cells[2, 12] := 'рентабельность продаж, % с '       + FormatDateTime('dd.mm.yyyy', Fdate1) + ' по ' + FormatDateTime('dd.mm.yyyy', Fdate2);
  exWks.Cells[2, 13] := 'рентабельность производства, % с ' + FormatDateTime('dd.mm.yyyy', Fdate1) + ' по ' + FormatDateTime('dd.mm.yyyy', Fdate2);

  exWks.Cells[2, 14] := 'фактический вес, тн. c '           + FormatDateTime('dd.mm.yyyy', Fdate3) + ' по ' + FormatDateTime('dd.mm.yyyy', Fdate4);
  exWks.Cells[2, 15] := 'выручка без НДС, руб. с '          + FormatDateTime('dd.mm.yyyy', Fdate3) + ' по ' + FormatDateTime('dd.mm.yyyy', Fdate4);
  exWks.Cells[2, 16] := 'себестоимость без НДС, руб. с '    + FormatDateTime('dd.mm.yyyy', Fdate3) + ' по ' + FormatDateTime('dd.mm.yyyy', Fdate4);
  exWks.Cells[2, 17] := 'валовая комиссия без НДС, руб. с ' + FormatDateTime('dd.mm.yyyy', Fdate3) + ' по ' + FormatDateTime('dd.mm.yyyy', Fdate4);
  exWks.Cells[2, 18] := 'выручка на 1 тн., руб. с '         + FormatDateTime('dd.mm.yyyy', Fdate3) + ' по ' + FormatDateTime('dd.mm.yyyy', Fdate4);
  exWks.Cells[2, 19] := 'себестоимость на 1 тн., руб. с '   + FormatDateTime('dd.mm.yyyy', Fdate3) + ' по ' + FormatDateTime('dd.mm.yyyy', Fdate4);
  exWks.Cells[2, 20] := 'комиссия на 1 тн., руб. с '        + FormatDateTime('dd.mm.yyyy', Fdate3) + ' по ' + FormatDateTime('dd.mm.yyyy', Fdate4);
  exWks.Cells[2, 21] := 'рентабельность продаж, % с '       + FormatDateTime('dd.mm.yyyy', Fdate3) + ' по ' + FormatDateTime('dd.mm.yyyy', Fdate4);
  exWks.Cells[2, 22] := 'рентабельность производства, % с ' + FormatDateTime('dd.mm.yyyy', Fdate3) + ' по ' + FormatDateTime('dd.mm.yyyy', Fdate4);

  exWks.Range['A2:V2'].AutoFilter;

  {устанавливаем черное выделение границ области данны}
  exWks.Range['A3:V' + IntToStr(row_0 + 1)].Borders[1].LineStyle := 1;
  exWks.Range['A3:V' + IntToStr(row_0 + 1)].Borders[2].LineStyle := 1;
  exWks.Range['A3:V' + IntToStr(row_0 + 1)].Borders[3].LineStyle := 1;
  exWks.Range['A3:V' + IntToStr(row_0 + 1)].Borders[4].LineStyle := 1;

  ShowTextMessage('Настройка оформления 2 ...', False);

  {оформление сумм групп}
  for i := 0 to ListGrp.Count - 1 do begin
    exWks.Range['A' + ListGrp.Strings[i] + ':M' + ListGrp.Strings[i]].Interior.Color := RGB(255, 242, 204);
    exWks.Range['N' + ListGrp.Strings[i] + ':V' + ListGrp.Strings[i]].Interior.Color := RGB(217, 225, 242);
    exWks.Range['A' + ListGrp.Strings[i] + ':V' + ListGrp.Strings[i]].Font.Bold := True;
  end;

  ShowTextMessage();
  exApp.Visible := True;
  exWks := Null; exWkb := Null; exApp := Null;
  VarClear(exWks); VarClear(exWkb);  VarClear(exApp);
  SP_report_comparison_revenues_period.Free;
  UsersList.Free;
  ListGrp.Free;
  fmMain.dxStatusBar1.Panels[3].Text := IntToStr(SecondsBetween(now, d)) + ' сек.';
  Screen.Cursor := crDefault;
end;

procedure TfmClientFrahtCard2.dxBarButton81Click(Sender: TObject);
begin
  case TdxBarButton(Sender).ClickItemLink.Owner.Owner.Tag of
    1 : UsersSettingModify(TComponent(Sender).Tag, TForm(self).Name, TcxControl(cxGrid1DBBandedTableView1), fmMain.Lis);
    2 : UsersSettingModify(TComponent(Sender).Tag, TForm(self).Name, TcxControl(cxGrid2DBBandedTableView1), fmMain.Lis);
    3 : UsersSettingModify(TComponent(Sender).Tag, TForm(self).Name, TcxControl(cxGrid3DBBandedTableView1), fmMain.Lis);
    4 : UsersSettingModify(TComponent(Sender).Tag, TForm(self).Name, TcxControl(cxGrid4DBBandedTableView1), fmMain.Lis);
    5 : UsersSettingModify(TComponent(Sender).Tag, TForm(self).Name, TcxControl(cxGrid5DBBandedTableView1), fmMain.Lis);
    6 : UsersSettingModify(TComponent(Sender).Tag, TForm(self).Name, TcxControl(cxGrid6DBBandedTableView1), fmMain.Lis);
    9 : UsersSettingModify(TComponent(Sender).Tag, TForm(self).Name, TcxControl(cxGrid9DBBandedTableView1), fmMain.Lis);
    10: UsersSettingModify(TComponent(Sender).Tag, TForm(self).Name, TcxControl(cxGrid10DBBandedTableView1), fmMain.Lis);
    11: UsersSettingModify(TComponent(Sender).Tag, TForm(self).Name, TcxControl(cxGrid11DBBandedTableView1), fmMain.Lis);
    12: UsersSettingModify(TComponent(Sender).Tag, TForm(self).Name, TcxControl(cxGrid12DBBandedTableView1), fmMain.Lis);
    13: UsersSettingModify(TComponent(Sender).Tag, TForm(self).Name, TcxControl(cxGrid13DBBandedTableView1), fmMain.Lis);
  end;
end;

procedure TfmClientFrahtCard2.dxBarSubItem3Popup(Sender: TObject);
var   i, cnt : integer;
  bar_button : TdxBarButton;
           Q : TADOQuery;
begin
  Screen.Cursor := crHourglass;

  cnt := dxBarSubItem3.ItemLinks.Count;
  for i := 2 to cnt-1 do dxBarSubItem3.ItemLinks.Items[cnt-i+1].Destroy;

  Q := TADOQuery.Create(nil);
  Q.Connection := fmMain.Lis;

  if cxPageControl1.ActivePage.Tag in [9,10] then begin
    Q.SQL.Add('SELECT DISTINCT users_owner_id, FIO_users_owner FROM dbo.view_shp_bargain_rights');
    Q.SQL.Add('WHERE date_period between ' + DateToSQL(Fdate1) + ' AND ' + DateToSQL(Fdate2));
    Q.SQL.Add('ORDER BY FIO_users_owner');
  end else begin
    Q.SQL.Add('SELECT DISTINCT users_owner_id, FIO_users_owner FROM dbo.view_bargain_rights');
    if dxBarButton35.Down then begin
      Q.SQL.Add('WHERE date_period_finance between ' + DateToSQL(Fdate1) + ' AND ' + DateToSQL(Fdate2));
    end else begin
      Q.SQL.Add('WHERE date_period between ' + DateToSQL(Fdate1) + ' AND ' + DateToSQL(Fdate2));
    end;

    Q.SQL.Add('ORDER BY FIO_users_owner');
  end;
  Q.Open;

  while not Q.Eof do begin
    bar_button := TdxBarButton.Create(nil);
    bar_button.ImageIndex := 39;
    bar_button.Caption    := Q.FieldByName('FIO_users_owner').AsString;
    bar_button.Tag        := Q.FieldByName('users_owner_id').AsInteger;
    bar_button.OnClick    := dxBarButton5Click;
    with dxBarSubItem3.ItemLinks.Add do begin
      Index := 1 + Q.RecNo;
      Item := bar_button;
    end;
    Q.Next;
  end;

  Q.Free;
  Screen.Cursor := crDefault;
end;

procedure TfmClientFrahtCard2.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action := caFree;
end;


procedure TfmClientFrahtCard2.FormDestroy(Sender: TObject);
begin
  StoreRegistryGrid(rgSave,'\Software\Lis1\ClientFrahtCard_Grids2', cxGrid1DBBandedTableView1);
  StoreRegistryGrid(rgSave,'\Software\Lis1\ClientFrahtCard_Grids2', cxGrid2DBBandedTableView1);
  StoreRegistryGrid(rgSave,'\Software\Lis1\ClientFrahtCard_Grids2', cxGrid3DBBandedTableView1);
  StoreRegistryGrid(rgSave,'\Software\Lis1\ClientFrahtCard_Grids2', cxGrid4DBBandedTableView1);
  StoreRegistryGrid(rgSave,'\Software\Lis1\ClientFrahtCard_Grids2', cxGrid5DBBandedTableView1);
  StoreRegistryGrid(rgSave,'\Software\Lis1\ClientFrahtCard_Grids2', cxGrid6DBBandedTableView1);
  StoreRegistryGrid(rgSave,'\Software\Lis1\ClientFrahtCard_Grids2', cxGrid9DBBandedTableView1);
  StoreRegistryGrid(rgSave,'\Software\Lis1\ClientFrahtCard_Grids2', cxGrid10DBBandedTableView1);
  StoreRegistryGrid(rgSave,'\Software\Lis1\ClientFrahtCard_Grids2', cxGrid11DBBandedTableView1);
  StoreRegistryGrid(rgSave,'\Software\Lis1\ClientFrahtCard_Grids2', cxGrid12DBBandedTableView1);
  StoreRegistryGrid(rgSave,'\Software\Lis1\ClientFrahtCard_Grids2', cxGrid13DBBandedTableView1);
end;


procedure TfmClientFrahtCard2.RefreshProcedureDetail();
begin
  Screen.Cursor := crHourGlass;

  Query_FactClient.Close;
  Query_FactAgent.Close;


  if dxBarButton2.Down then begin
    if cxPageControl1.ActivePage.Tag = 0 then begin
      if cxGrid3DBBandedTableView1bargain_id.DataBinding.Field <> nil then
        if cxGrid3DBBandedTableView1bargain_id.DataBinding.Field.Value <> null then begin
          Query_FactClient.Parameters.ParamByName('client_agent_id').Value := cxGrid3DBBandedTableView1shaping_rate_id.DataBinding.Field.Value;
          Query_FactClient.Open;
        end;
    end;


    if cxPageControl1.ActivePage.Tag = 1 then begin
      if cxGrid1DBBandedTableView1bargain_id.DataBinding.Field <> nil then
        if cxGrid1DBBandedTableView1bargain_id.DataBinding.Field.Value <> null then begin
          Query_FactAgent.Parameters.ParamByName('client_agent_id').Value := cxGrid1DBBandedTableView1shaping_rate_id.DataBinding.Field.Value;
          Query_FactAgent.Open;
        end;
    end;
  end;


  Screen.Cursor := crDefault;
end;

function  TfmClientFrahtCard2.GetStrId(cxCheckComboBox: TcxCheckComboBox): string;
var i : integer;
begin
  for i := 0 to cxCheckComboBox.Properties.Items.Count - 1 do
    if cxCheckComboBox.States[i] = cbsChecked then begin
      if Result <> '' then Result := Result + ',';
      Result := Result + IntToStr(cxCheckComboBox.Properties.Items[i].Tag);
    end;
end;

procedure TfmClientFrahtCard2.RefreshContract();
var Q: TADOQuery;
    ClientDS1 : TClientDataSet;
    ClientDS2 : TClientDataSet;
    ClientDS3 : TClientDataSet;
    ClientDS4 : TClientDataSet;
    ClientDS5 : TClientDataSet;
    ClientDS6 : TClientDataSet;
    ClientDS7 : TClientDataSet;
    i : integer;
begin
  Screen.Cursor := crHourGlass;

  ClientDS1 := TClientDataSet.Create(nil);
  ClientDS1.FieldDefs.Add('contract_id', ftInteger);
  ClientDS1.CreateDataSet;
  ClientDS1.LogChanges := False;

  ClientDS2 := TClientDataSet.Create(nil);
  ClientDS2.FieldDefs.Add('contract_id', ftInteger);
  ClientDS2.CreateDataSet;
  ClientDS2.LogChanges := False;

  ClientDS3 := TClientDataSet.Create(nil);
  ClientDS3.FieldDefs.Add('contract_id', ftInteger);
  ClientDS3.CreateDataSet;
  ClientDS3.LogChanges := False;

  ClientDS4 := TClientDataSet.Create(nil);
  ClientDS4.FieldDefs.Add('contract_id', ftInteger);
  ClientDS4.CreateDataSet;
  ClientDS4.LogChanges := False;

  ClientDS5 := TClientDataSet.Create(nil);
  ClientDS5.FieldDefs.Add('contract_id', ftInteger);
  ClientDS5.CreateDataSet;
  ClientDS5.LogChanges := False;

  ClientDS6 := TClientDataSet.Create(nil);
  ClientDS6.FieldDefs.Add('contract_id', ftInteger);
  ClientDS6.CreateDataSet;
  ClientDS6.LogChanges := False;

  ClientDS7 := TClientDataSet.Create(nil);
  ClientDS7.FieldDefs.Add('contract_id', ftInteger);
  ClientDS7.CreateDataSet;
  ClientDS7.LogChanges := False;

  for i:=0 to cxCheckComboBox1.Properties.Items.Count - 1 do
    if cxCheckComboBox1.States[i] = cbsChecked then ClientDS1.AppendRecord([cxCheckComboBox1.Properties.Items[i].Tag]);

  for i:=0 to cxCheckComboBox2.Properties.Items.Count - 1 do
    if cxCheckComboBox2.States[i] = cbsChecked then ClientDS2.AppendRecord([cxCheckComboBox2.Properties.Items[i].Tag]);

  for i:=0 to cxCheckComboBox3.Properties.Items.Count - 1 do
    if cxCheckComboBox3.States[i] = cbsChecked then ClientDS3.AppendRecord([cxCheckComboBox3.Properties.Items[i].Tag]);

  for i:=0 to cxCheckComboBox4.Properties.Items.Count - 1 do
    if cxCheckComboBox4.States[i] = cbsChecked then ClientDS4.AppendRecord([cxCheckComboBox4.Properties.Items[i].Tag]);

  for i:=0 to cxCheckComboBox5.Properties.Items.Count - 1 do
    if cxCheckComboBox5.States[i] = cbsChecked then ClientDS5.AppendRecord([cxCheckComboBox5.Properties.Items[i].Tag]);

  for i:=0 to cxCheckComboBox6.Properties.Items.Count - 1 do
    if cxCheckComboBox6.States[i] = cbsChecked then ClientDS6.AppendRecord([cxCheckComboBox6.Properties.Items[i].Tag]);

  for i:=0 to cxCheckComboBox7.Properties.Items.Count - 1 do
    if cxCheckComboBox7.States[i] = cbsChecked then ClientDS7.AppendRecord([cxCheckComboBox6.Properties.Items[i].Tag]);

  Q := TADOQuery.Create(nil);
  Q.Connection := fmMain.Lis;
  if dxBarButton35.Down then begin
    Q.SQL.Add('SELECT	contract_id, type_contract,  case when type_contract = 0 then ''Клиент'' when type_contract = 1 then ''Агент'' else null end type_contract_name,');
    Q.SQL.Add('       view_contract.firm_customer_name + '' ('' + view_contract.contract_cod + '')'' as contract_cod');
    Q.SQL.Add('FROM	  view_contract_rights view_contract');
    Q.SQL.Add('WHERE	contract_id in (SELECT DISTINCT contract_agent_id FROM view_shaping_rate WHERE bargain_date_period_finance between ' + DateToSQL(Fdate1) + ' and ' + DateToSQL(Fdate2) + ')');
    Q.SQL.Add('ORDER BY 4');
  end else begin
    Q.SQL.Add('SELECT	contract_id, type_contract,  case when type_contract = 0 then ''Клиент'' when type_contract = 1 then ''Агент'' else null end type_contract_name,');
    Q.SQL.Add('       view_contract.firm_customer_name + '' ('' + view_contract.contract_cod + '')'' as contract_cod');
    Q.SQL.Add('FROM	  view_contract_rights view_contract');
    Q.SQL.Add('WHERE	contract_id in (SELECT DISTINCT contract_agent_id FROM view_shaping_rate WHERE bargain_date_period between ' + DateToSQL(Fdate1) + ' and ' + DateToSQL(Fdate2) + ')');
    Q.SQL.Add('ORDER BY 4');
  end;
  Q.Open;

  cxCheckComboBox1.Properties.Items.Clear;
  cxCheckComboBox2.Properties.Items.Clear;
  cxCheckComboBox3.Properties.Items.Clear;
  cxCheckComboBox4.Properties.Items.Clear;
  while not Q.Eof do begin

    // Вагоны (Доход-Расход) - только Клиенты
    if Q.FieldByName('type_contract').AsInteger = 0 then begin
      with cxCheckComboBox1.Properties.Items.Add do begin
        Description := Q.FieldByName('contract_cod').AsString + ' (' + Q.FieldByName('type_contract_name').AsString + ')';
        Tag         := Q.FieldByName('contract_id').AsInteger;
        if ClientDS1.Locate('contract_id', Q.FieldByName('contract_id').Value, []) then
          cxCheckComboBox1.States[Index] := cbsChecked;
      end;
    end;

    with cxCheckComboBox2.Properties.Items.Add do begin
      Description := Q.FieldByName('contract_cod').AsString + ' (' + Q.FieldByName('type_contract_name').AsString + ')';
      Tag         := Q.FieldByName('contract_id').AsInteger;
      if ClientDS2.Locate('contract_id', Q.FieldByName('contract_id').Value, []) then
        cxCheckComboBox2.States[Index] := cbsChecked;
    end;

    with cxCheckComboBox3.Properties.Items.Add do begin
      Description := Q.FieldByName('contract_cod').AsString + ' (' + Q.FieldByName('type_contract_name').AsString + ')';
      Tag         := Q.FieldByName('contract_id').AsInteger;
      if ClientDS3.Locate('contract_id', Q.FieldByName('contract_id').Value, []) then
        cxCheckComboBox3.States[Index] := cbsChecked;
    end;

    with cxCheckComboBox4.Properties.Items.Add do begin
      Description := Q.FieldByName('contract_cod').AsString + ' (' + Q.FieldByName('type_contract_name').AsString + ')';
      Tag         := Q.FieldByName('contract_id').AsInteger;
      if ClientDS4.Locate('contract_id', Q.FieldByName('contract_id').Value, []) then
        cxCheckComboBox4.States[Index] := cbsChecked;
    end;

    Q.Next;
  end;




  Q.SQL.Clear;
  if dxBarButton35.Down then begin
    Q.SQL.Add('SELECT	DISTINCT view_contract.contract_id, type_contract,  case when type_contract = 0 then ''Клиент'' when type_contract = 1 then ''Агент'' else null end type_contract_name,');
    Q.SQL.Add('		view_contract.firm_customer_name + '' ('' + view_contract.contract_cod + '')'' as contract_cod, service_type');
    Q.SQL.Add('FROM	view_contract_rights view_contract');
    Q.SQL.Add('		inner join view_shaping_rate on view_contract.contract_id = view_shaping_rate.contract_agent_id');
    Q.SQL.Add('WHERE	bargain_date_period_finance between ' + DateToSQL(Fdate1) + ' and ' + DateToSQL(Fdate2));
    Q.SQL.Add('ORDER BY 4');
  end else begin
    Q.SQL.Add('SELECT	DISTINCT view_contract.contract_id, type_contract,  case when type_contract = 0 then ''Клиент'' when type_contract = 1 then ''Агент'' else null end type_contract_name,');
    Q.SQL.Add('		view_contract.firm_customer_name + '' ('' + view_contract.contract_cod + '')'' as contract_cod, service_type');
    Q.SQL.Add('FROM	view_contract_rights view_contract');
    Q.SQL.Add('		inner join view_shaping_rate on view_contract.contract_id = view_shaping_rate.contract_agent_id');
    Q.SQL.Add('WHERE	bargain_date_period between ' + DateToSQL(Fdate1) + ' and ' + DateToSQL(Fdate2));
    Q.SQL.Add('ORDER BY 4');
  end;
  Q.Open;

  cxCheckComboBox5.Properties.Items.Clear;
  cxCheckComboBox6.Properties.Items.Clear;
  cxCheckComboBox7.Properties.Items.Clear;
  while not Q.Eof do begin

    if Q.FieldByName('service_type').AsInteger = 0 then begin
      with cxCheckComboBox5.Properties.Items.Add do begin
        Description := Q.FieldByName('contract_cod').AsString + ' (' + Q.FieldByName('type_contract_name').AsString + ')';
        Tag         := Q.FieldByName('contract_id').AsInteger;
        if ClientDS5.Locate('contract_id', Q.FieldByName('contract_id').Value, []) then
          cxCheckComboBox5.States[Index] := cbsChecked;
      end;
    end;

    if Q.FieldByName('service_type').AsInteger = 1 then begin
      with cxCheckComboBox6.Properties.Items.Add do begin
        Description := Q.FieldByName('contract_cod').AsString + ' (' + Q.FieldByName('type_contract_name').AsString + ')';
        Tag         := Q.FieldByName('contract_id').AsInteger;
        if ClientDS6.Locate('contract_id', Q.FieldByName('contract_id').Value, []) then
          cxCheckComboBox6.States[Index] := cbsChecked;
      end;

      with cxCheckComboBox7.Properties.Items.Add do begin
        Description := Q.FieldByName('contract_cod').AsString + ' (' + Q.FieldByName('type_contract_name').AsString + ')';
        Tag         := Q.FieldByName('contract_id').AsInteger;
        if ClientDS7.Locate('contract_id', Q.FieldByName('contract_id').Value, []) then
          cxCheckComboBox7.States[Index] := cbsChecked;
      end;
    end;

    Q.Next;
  end;

  Q.Free;
  ClientDS1.Free;
  ClientDS2.Free;
  ClientDS3.Free;
  ClientDS4.Free;
  ClientDS5.Free;
  ClientDS6.Free;
  ClientDS7.Free;

  Screen.Cursor := crDefault;
end;

procedure TfmClientFrahtCard2.RefreshProcedure(id: integer);
var d : TDateTime;
begin
  Screen.Cursor := crHourGlass;
  d := Now;
  if cxPageControl1.ActivePage.Tag = 0 then begin
    if id = -9 then begin
      if SP_shaping_rate_get_list_client.Active then begin
        if cxGrid3DBBandedTableView1shaping_rate_id.DataBinding.Field.IsNull then id:=-9
        else  id := cxGrid3DBBandedTableView1shaping_rate_id.DataBinding.Field.Value;
      end else id:=-9;
    end;

    cxGrid3DBBandedTableView1.OnSelectionChanged := nil;

    SP_shaping_rate_get_list_client.Close;
    SP_shaping_rate_get_list_client.Parameters.Refresh;
    SP_shaping_rate_get_list_client.Parameters.ParamByName('@bargain_id'  ).Value := null;
    SP_shaping_rate_get_list_client.Parameters.ParamByName('@date_begin'  ).Value := Fdate1;
    SP_shaping_rate_get_list_client.Parameters.ParamByName('@date_end'    ).Value := Fdate2;
    SP_shaping_rate_get_list_client.Parameters.ParamByName('@users_id'    ).Value := Fusers_id;
    SP_shaping_rate_get_list_client.Parameters.ParamByName('@service_type').Value := 0;
//    SP_shaping_rate_get_list_client.Parameters.ParamByName('@set_sum_sign').Value := dxBarButton44.Down;
    SP_shaping_rate_get_list_client.Parameters.ParamByName('@set_period_finance').Value := dxBarButton35.Down;
    SP_shaping_rate_get_list_client.Parameters.ParamByName('@str_contract_id').Value := GetStrId(cxCheckComboBox5);
    SP_shaping_rate_get_list_client.Parameters.ParamByName('@set_fraht_card' ).Value := True;
    SP_shaping_rate_get_list_client.Open;

    if id <> -9 then begin
      cxGrid3DBBandedTableView1.Controller.ClearSelection;
      if cxGrid3DBBandedTableView1.DataController.LocateByKey(id) = False then
          cxGrid3DBBandedTableView1.Controller.GoToFirst;
      if cxGrid3DBBandedTableView1.Controller.FocusedRecord <> nil then
          cxGrid3DBBandedTableView1.Controller.FocusedRecord.Selected := True;
    end;

    cxGrid3DBBandedTableView1.OnSelectionChanged := cxGrid3DBBandedTableView1SelectionChanged;
    cxGrid3DBBandedTableView1SelectionChanged(nil);
  end;


  if cxPageControl1.ActivePage.Tag = 1 then begin
    if id = -9 then begin
      if SP_shaping_rate_get_list_agent.Active then begin
        if cxGrid1DBBandedTableView1shaping_rate_id.DataBinding.Field.IsNull then id:=-9
        else  id := cxGrid1DBBandedTableView1shaping_rate_id.DataBinding.Field.Value;
      end else id:=-9;
    end;

    cxGrid1DBBandedTableView1.OnSelectionChanged := nil;

    SP_shaping_rate_get_list_agent.Close;
    SP_shaping_rate_get_list_agent.Parameters.Refresh;
    SP_shaping_rate_get_list_agent.Parameters.ParamByName('@bargain_id'  ).Value := null;
    SP_shaping_rate_get_list_agent.Parameters.ParamByName('@date_begin'  ).Value := Fdate1;
    SP_shaping_rate_get_list_agent.Parameters.ParamByName('@date_end'    ).Value := Fdate2;
    SP_shaping_rate_get_list_agent.Parameters.ParamByName('@users_id'    ).Value := Fusers_id;
    SP_shaping_rate_get_list_agent.Parameters.ParamByName('@service_type').Value := 1;
//    SP_shaping_rate_get_list_agent.Parameters.ParamByName('@set_sum_sign').Value := dxBarButton44.Down;
    SP_shaping_rate_get_list_agent.Parameters.ParamByName('@set_period_finance').Value := dxBarButton35.Down;
    SP_shaping_rate_get_list_agent.Parameters.ParamByName('@str_contract_id').Value := GetStrId(cxCheckComboBox6);
    SP_shaping_rate_get_list_agent.Parameters.ParamByName('@set_fraht_card' ).Value := True;
    SP_shaping_rate_get_list_agent.Open;

    if id <> -9 then begin
      cxGrid1DBBandedTableView1.Controller.ClearSelection;
      if cxGrid1DBBandedTableView1.DataController.LocateByKey(id) = False then
          cxGrid1DBBandedTableView1.Controller.GoToFirst;
      if cxGrid1DBBandedTableView1.Controller.FocusedRecord <> nil then
          cxGrid1DBBandedTableView1.Controller.FocusedRecord.Selected := True;
    end;

    cxGrid1DBBandedTableView1.OnSelectionChanged := cxGrid1DBBandedTableView1SelectionChanged;
    cxGrid1DBBandedTableView1SelectionChanged(nil);
  end;


  if cxPageControl1.ActivePage.Tag = 2 then begin
    SP_shaping_rate_pivot.Close;
    SP_shaping_rate_pivot.Parameters.Refresh;
    SP_shaping_rate_pivot.Parameters.ParamByName('@bargain_id'  ).Value := null;
    SP_shaping_rate_pivot.Parameters.ParamByName('@date_begin'  ).Value := Fdate1;
    SP_shaping_rate_pivot.Parameters.ParamByName('@date_end'    ).Value := Fdate2;
    SP_shaping_rate_pivot.Parameters.ParamByName('@users_id'    ).Value := Fusers_id;
//    SP_shaping_rate_pivot.Parameters.ParamByName('@set_sum_sign').Value := dxBarButton68.Down;
    SP_shaping_rate_pivot.Parameters.ParamByName('@set_period_finance').Value := dxBarButton35.Down;
    SP_shaping_rate_pivot.Open;
  end;


  if cxPageControl1.ActivePage.Tag = 3 then begin

    sp_ClientFrahtCard_Vagon_1.Close;
    sp_ClientFrahtCard_Vagon_1.Parameters.Refresh;
    sp_ClientFrahtCard_Vagon_1.Parameters.ParamByName('@type_result'     ).Value := 0;
    sp_ClientFrahtCard_Vagon_1.Parameters.ParamByName('@str_contract_id' ).Value := GetStrId(cxCheckComboBox2);
    sp_ClientFrahtCard_Vagon_1.Parameters.ParamByName('@str_vagon_num'   ).Value := Fstr_vagon_num;
    sp_ClientFrahtCard_Vagon_1.Parameters.ParamByName('@date1'           ).Value := Fdate1;
    sp_ClientFrahtCard_Vagon_1.Parameters.ParamByName('@date2'           ).Value := Fdate2;
    if dxBarButton34.Down then sp_ClientFrahtCard_Vagon_1.Parameters.ParamByName('@type_date').Value := 0;
    if dxBarButton35.Down then sp_ClientFrahtCard_Vagon_1.Parameters.ParamByName('@type_date').Value := 1;
    if dxBarButton36.Down then sp_ClientFrahtCard_Vagon_1.Parameters.ParamByName('@type_date').Value := 2;
    sp_ClientFrahtCard_Vagon_1.Open;
  end;

  if cxPageControl1.ActivePage.Tag = 4 then begin
    sp_ClientFrahtCard_Vagon_2.Close;
    sp_ClientFrahtCard_Vagon_2.Parameters.Refresh;
    sp_ClientFrahtCard_Vagon_2.Parameters.ParamByName('@type_result'     ).Value := 1;
    sp_ClientFrahtCard_Vagon_2.Parameters.ParamByName('@str_contract_id' ).Value := GetStrId(cxCheckComboBox1);
    sp_ClientFrahtCard_Vagon_2.Parameters.ParamByName('@str_vagon_num'   ).Value := Fstr_vagon_num;
    sp_ClientFrahtCard_Vagon_2.Parameters.ParamByName('@date1'           ).Value := Fdate1;
    sp_ClientFrahtCard_Vagon_2.Parameters.ParamByName('@date2'           ).Value := Fdate2;
    if dxBarButton34.Down then sp_ClientFrahtCard_Vagon_2.Parameters.ParamByName('@type_date').Value := 0;
    if dxBarButton35.Down then sp_ClientFrahtCard_Vagon_2.Parameters.ParamByName('@type_date').Value := 1;
    if dxBarButton36.Down then sp_ClientFrahtCard_Vagon_2.Parameters.ParamByName('@type_date').Value := 2;
    sp_ClientFrahtCard_Vagon_2.Open;
  end;


  if cxPageControl1.ActivePage.Tag = 5 then begin
    sp_ClientFrahtCard_Vagon_Pivot.Close;
    sp_ClientFrahtCard_Vagon_Pivot.Parameters.Refresh;
    sp_ClientFrahtCard_Vagon_Pivot.Parameters.ParamByName('@type_result'     ).Value := 0;
    sp_ClientFrahtCard_Vagon_Pivot.Parameters.ParamByName('@str_contract_id' ).Value := GetStrId(cxCheckComboBox3);
    sp_ClientFrahtCard_Vagon_Pivot.Parameters.ParamByName('@str_vagon_num'   ).Value := Fstr_vagon_num;
    sp_ClientFrahtCard_Vagon_Pivot.Parameters.ParamByName('@date1'           ).Value := Fdate1;
    sp_ClientFrahtCard_Vagon_Pivot.Parameters.ParamByName('@date2'           ).Value := Fdate2;
    if dxBarButton34.Down then sp_ClientFrahtCard_Vagon_Pivot.Parameters.ParamByName('@type_date').Value := 0;
    if dxBarButton35.Down then sp_ClientFrahtCard_Vagon_Pivot.Parameters.ParamByName('@type_date').Value := 1;
    if dxBarButton36.Down then sp_ClientFrahtCard_Vagon_Pivot.Parameters.ParamByName('@type_date').Value := 2;
    sp_ClientFrahtCard_Vagon_Pivot.Open;
  end;

  if cxPageControl1.ActivePage.Tag = 6 then begin
    SP_vagon_full_info.Close;
    SP_vagon_full_info.Parameters.Refresh;
    SP_vagon_full_info.Parameters.ParamByName('@str_contract_id').Value := GetStrId(cxCheckComboBox4);
    SP_vagon_full_info.Parameters.ParamByName('@date_from'      ).Value := Fdate1;
    SP_vagon_full_info.Parameters.ParamByName('@date_to'        ).Value := Fdate2;
    if dxBarButton35.Down then begin
      SP_vagon_full_info.Parameters.ParamByName('@set_finance'    ).Value := True;
      SP_vagon_full_info.Parameters.ParamByName('@set_factdate'   ).Value := False;
    end else begin
      SP_vagon_full_info.Parameters.ParamByName('@set_finance'    ).Value := False;
      SP_vagon_full_info.Parameters.ParamByName('@set_factdate'   ).Value := True;
    end;
    SP_vagon_full_info.Parameters.ParamByName('@str_vagon_num'  ).Value := Fstr_vagon_num;
    SP_vagon_full_info.Open;
  end;


  if cxPageControl1.ActivePage.Tag = 7 then begin
    if id = -9 then begin
      if SP_Agree.Active then begin
        if cxGrid10DBBandedTableView1bargain_id.DataBinding.Field.IsNull then id:=-9
        else  id := cxGrid10DBBandedTableView1bargain_id.DataBinding.Field.Value;
      end else id:=-9;
    end;

    //cxGrid10DBBandedTableView1.OnSelectionChanged := nil;

    SP_Agree.Close;
    SP_Agree.Parameters.Refresh;
    SP_Agree.Parameters.ParamByName('@date_begin'        ).Value := Fdate1;
    SP_Agree.Parameters.ParamByName('@date_end'          ).Value := Fdate2;
    SP_Agree.Parameters.ParamByName('@users_owner_id'    ).Value := Fusers_id;
    SP_Agree.Parameters.ParamByName('@set_period_finance').Value := dxBarButton35.Down;
    SP_Agree.Parameters.ParamByName('@set_fraht_card'    ).Value := True;
    SP_Agree.Open;

    if id <> -9 then begin
      cxGrid10DBBandedTableView1.Controller.ClearSelection;
      if cxGrid10DBBandedTableView1.DataController.LocateByKey(id) = False then cxGrid10DBBandedTableView1.Controller.GoToFirst;;
      if cxGrid10DBBandedTableView1.Controller.FocusedRecord <> nil then  cxGrid10DBBandedTableView1.Controller.FocusedRecord.Selected := True;
    end;

    //cxGrid1DBBandedTableView1.OnSelectionChanged := cxGrid1DBBandedTableView1SelectionChanged;
    //cxGrid1DBBandedTableView1SelectionChanged(nil);
  end;

  if cxPageControl1.ActivePage.Tag = 8 then begin
    if id = -9 then begin
      if SP_shaping_rate_get_list_agent_sverka.Active then begin
        if cxGrid13DBBandedTableView1shaping_rate_id.DataBinding.Field.IsNull then id:=-9
        else  id := cxGrid13DBBandedTableView1shaping_rate_id.DataBinding.Field.Value;
      end else id:=-9;
    end;

//    cxGrid13DBBandedTableView1.OnSelectionChanged := nil;

    SP_shaping_rate_get_list_agent_sverka.Close;
    SP_shaping_rate_get_list_agent_sverka.Parameters.Refresh;
    SP_shaping_rate_get_list_agent_sverka.Parameters.ParamByName('@bargain_id'  ).Value := null;
    SP_shaping_rate_get_list_agent_sverka.Parameters.ParamByName('@date_begin'  ).Value := Fdate1;
    SP_shaping_rate_get_list_agent_sverka.Parameters.ParamByName('@date_end'    ).Value := Fdate2;
    SP_shaping_rate_get_list_agent_sverka.Parameters.ParamByName('@users_id'    ).Value := Fusers_id;
    SP_shaping_rate_get_list_agent_sverka.Parameters.ParamByName('@service_type').Value := 1;
//    SP_shaping_rate_get_list_agent_sverka.Parameters.ParamByName('@set_sum_sign').Value := dxBarButton44.Down;
    SP_shaping_rate_get_list_agent_sverka.Parameters.ParamByName('@set_period_finance').Value := dxBarButton35.Down;
    SP_shaping_rate_get_list_agent_sverka.Parameters.ParamByName('@str_contract_id').Value := GetStrId(cxCheckComboBox7);
    SP_shaping_rate_get_list_agent_sverka.Parameters.ParamByName('@set_fraht_card' ).Value := True;
    SP_shaping_rate_get_list_agent_sverka.Parameters.ParamByName('@set_group4fact_inc' ).Value := True;
    SP_shaping_rate_get_list_agent_sverka.Open;

    if id <> -9 then begin
      cxGrid13DBBandedTableView1.Controller.ClearSelection;
      if cxGrid13DBBandedTableView1.DataController.LocateByKey(id) = False then
          cxGrid13DBBandedTableView1.Controller.GoToFirst;
      if cxGrid13DBBandedTableView1.Controller.FocusedRecord <> nil then
          cxGrid13DBBandedTableView1.Controller.FocusedRecord.Selected := True;
    end;

//    cxGrid13DBBandedTableView1.OnSelectionChanged := cxGrid1DBBandedTableView1SelectionChanged;
//    cxGrid1DBBandedTableView1SelectionChanged(nil);
  end;

  if cxPageControl1.ActivePage.Tag = 9 then begin
    sp_shp_bargain_add_GET_Client.Close;
    sp_shp_bargain_add_GET_Client.Parameters.Refresh;
    sp_shp_bargain_add_GET_Client.Parameters.ParamByName('@bargain_id'  ).Value := null;
    sp_shp_bargain_add_GET_Client.Parameters.ParamByName('@date_begin'  ).Value := Fdate1;
    sp_shp_bargain_add_GET_Client.Parameters.ParamByName('@date_end'    ).Value := Fdate2;
    sp_shp_bargain_add_GET_Client.Parameters.ParamByName('@users_id'    ).Value := Fusers_id;
    sp_shp_bargain_add_GET_Client.Parameters.ParamByName('@currency_id' ).Value := 3;
    sp_shp_bargain_add_GET_Client.Parameters.ParamByName('@set_correct_view').Value := 1;
    sp_shp_bargain_add_GET_Client.Parameters.ParamByName('@set_period_finance').Value := dxBarButton35.Down;
    sp_shp_bargain_add_GET_Client.Parameters.ParamByName('@type_client_agent' ).Value := 1;
    sp_shp_bargain_add_GET_Client.Open;
  end;
  if cxPageControl1.ActivePage.Tag = 10 then begin
    sp_shp_bargain_add_GET_Agent.Close;
    sp_shp_bargain_add_GET_Agent.Parameters.Refresh;
    sp_shp_bargain_add_GET_Agent.Parameters.ParamByName('@bargain_id'  ).Value := null;
    sp_shp_bargain_add_GET_Agent.Parameters.ParamByName('@date_begin'  ).Value := Fdate1;
    sp_shp_bargain_add_GET_Agent.Parameters.ParamByName('@date_end'    ).Value := Fdate2;
    sp_shp_bargain_add_GET_Agent.Parameters.ParamByName('@users_id'    ).Value := Fusers_id;
    sp_shp_bargain_add_GET_Agent.Parameters.ParamByName('@currency_id' ).Value := 3;
    sp_shp_bargain_add_GET_Agent.Parameters.ParamByName('@set_correct_view'  ).Value := 1;
    sp_shp_bargain_add_GET_Agent.Parameters.ParamByName('@set_period_finance').Value := dxBarButton35.Down;
    sp_shp_bargain_add_GET_Agent.Parameters.ParamByName('@type_client_agent' ).Value := 2;
    sp_shp_bargain_add_GET_Agent.Open;
  end;

  fmMain.dxStatusBar1.Panels[3].Text := IntToStr(SecondsBetween(now, d)) + ' сек.';
  Screen.Cursor := crDefault;
end;

end.

