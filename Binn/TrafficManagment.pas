unit TrafficManagment;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms, Default,
  Dialogs, ComCtrls, ToolWin, cxStyles, cxCustomData, cxGraphics, cxFilter, cxData, cxDataStorage, cxEdit, DB, cxDBData,
  cxGridLevel, cxClasses, cxControls, cxGridCustomView, cxGridCustomTableView, cxGridTableView, cxGridBandedTableView,
  cxGridDBBandedTableView, cxGrid, cxPropertiesStore, Menus, ADODB, cxLookAndFeelPainters, StdCtrls,
  cxButtons, ExtCtrls, dxBar, dxBarExtItems, cxLookAndFeels, cxCalendar, cxColorComboBox, cxBarEditItem, cxTextEdit,
  cxTimeEdit, cxCheckBox, cxPC, ComObj, cxDropDownEdit, cxNavigator, dxSkinsCore, dxSkinBlack, dxSkinBlue, dxSkinBlueprint, dxSkinCaramel,
  dxSkinCoffee, dxSkinDarkRoom, dxSkinDarkSide, dxSkinDevExpressDarkStyle, dxSkinDevExpressStyle, dxSkinFoggy, dxSkinGlassOceans, dxSkinHighContrast,
  dxSkiniMaginary, dxSkinLilian, dxSkinLiquidSky, dxSkinLondonLiquidSky, dxSkinMcSkin, dxSkinMetropolis, dxSkinMetropolisDark, dxSkinMoneyTwins,
  dxSkinOffice2007Black, dxSkinOffice2007Blue, dxSkinOffice2007Green, dxSkinOffice2007Pink, dxSkinOffice2007Silver, dxSkinOffice2010Black,
  dxSkinOffice2010Blue, dxSkinOffice2010Silver, dxSkinOffice2013DarkGray, dxSkinOffice2013LightGray, dxSkinOffice2013White, dxSkinPumpkin,
  dxSkinSeven, dxSkinSevenClassic, dxSkinSharp, dxSkinSharpPlus, dxSkinSilver, dxSkinSpringTime, dxSkinStardust, dxSkinSummer2008,
  dxSkinTheAsphaltWorld, dxSkinsDefaultPainters, dxSkinValentine, dxSkinVS2010, dxSkinWhiteprint, dxSkinXmas2008Blue, dxSkinscxPCPainter,
  dxSkinsdxBarPainter, dxSkinOffice2016Colorful, dxSkinOffice2016Dark,
  dxSkinVisualStudio2013Blue, dxSkinVisualStudio2013Dark,
  dxSkinVisualStudio2013Light, cxCurrencyEdit, DateUtils, cxContainer, cxLabel, dxSkinTheBezier,
  dxDateRanges, cxDataControllerConditionalFormattingRulesManagerDialog,
  cxCustomPivotGrid, cxDBPivotGrid, Winapi.ShellAPI, cxExportPivotGridLink, cxPivotGridCustomDataSet, cxPivotGridDrillDownDataSet, dxSkinOffice2019Colorful;

type
  TfmTrafficManagment = class(TForm)
    cxPropertiesStore1: TcxPropertiesStore;
    dxBarManager1: TdxBarManager;
    dxBarManager1Bar1: TdxBar;
    dxBarButton2: TdxBarButton;
    Excel3: TdxBarButton;
    N82: TdxBarButton;
    N83: TdxBarButton;
    N14: TdxBarButton;
    N74: TdxBarButton;
    N100: TdxBarButton;
    N10: TdxBarSubItem;
    dxBarSubItem3: TdxBarSubItem;
    dxBarButton4: TdxBarButton;
    dxBarButton_FilterRecords1: TdxBarButton;
    dxBarPopupMenu1: TdxBarPopupMenu;
    dxBarButton12: TdxBarButton;
    SP_Reps: TADOStoredProc;
    dxBarButton20: TdxBarButton;
    cxStyleRepository1: TcxStyleRepository;
    cxStyle1: TcxStyle;
    dxBarButton23: TdxBarButton;
    dxBarButton24: TdxBarButton;
    dxBarButton25: TdxBarButton;
    DS_Reps: TDataSource;
    dxBarPopupMenu2: TdxBarPopupMenu;
    dxBarButton28: TdxBarButton;
    dxBarButton29: TdxBarButton;
    SP_Info: TADOStoredProc;
    DS_info: TDataSource;
    dxBarButton34: TdxBarButton;
    SP_Info2: TADOStoredProc;
    DS_Info2: TDataSource;
    dxBarPopupMenu3: TdxBarPopupMenu;
    dxBarButton1: TdxBarButton;
    dxBarButton3: TdxBarButton;
    PageControl2: TPageControl;
    TabSheet2: TTabSheet;
    Splitter1: TSplitter;
    Splitter4: TSplitter;
    GroupBox1: TGroupBox;
    cxLabel4: TcxLabel;
    GroupBox5: TGroupBox;
    cxLabel5: TcxLabel;
    GroupBox6: TGroupBox;
    cxLabel6: TcxLabel;
    TabSheet4: TTabSheet;
    Panel2: TPanel;
    cxGrid1: TcxGrid;
    cxGrid1DBBandedTableView1: TcxGridDBBandedTableView;
    cxGrid1DBBandedTableView1road_name: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1count_repair: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1sum_count_stay: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1before_count_stay: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1in_count_stay: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1after_count_stay: TcxGridDBBandedColumn;
    cxGrid1Level1: TcxGridLevel;
    cxGrid3: TcxGrid;
    cxGrid3DBBandedTableView1: TcxGridDBBandedTableView;
    cxGrid3DBBandedTableView1r_node_operation_name: TcxGridDBBandedColumn;
    cxGrid3DBBandedTableView1r_road_operation_name: TcxGridDBBandedColumn;
    cxGrid3DBBandedTableView1in_count_stay: TcxGridDBBandedColumn;
    cxGrid3DBBandedTableView1cnt_vagon: TcxGridDBBandedColumn;
    cxGrid3Level1: TcxGridLevel;
    cxGrid2: TcxGrid;
    cxGrid2DBBandedTableView1: TcxGridDBBandedTableView;
    cxGrid2DBBandedTableView1road_name: TcxGridDBBandedColumn;
    cxGrid2DBBandedTableView1r_road_operation_name: TcxGridDBBandedColumn;
    cxGrid2DBBandedTableView1r_node_operation_name: TcxGridDBBandedColumn;
    cxGrid2DBBandedTableView1date_breakage: TcxGridDBBandedColumn;
    cxGrid2DBBandedTableView1date_in: TcxGridDBBandedColumn;
    cxGrid2DBBandedTableView1date_repare_end: TcxGridDBBandedColumn;
    cxGrid2DBBandedTableView1date_out: TcxGridDBBandedColumn;
    cxGrid2DBBandedTableView1before_count_stay: TcxGridDBBandedColumn;
    cxGrid2DBBandedTableView1in_count_stay: TcxGridDBBandedColumn;
    cxGrid2DBBandedTableView1after_count_stay: TcxGridDBBandedColumn;
    cxGrid2DBBandedTableView1sum_count_stay: TcxGridDBBandedColumn;
    cxGrid2DBBandedTableView1num_vagon: TcxGridDBBandedColumn;
    cxGrid2DBBandedTableView1date_in_total: TcxGridDBBandedColumn;
    cxGrid2DBBandedTableView1date_out_total: TcxGridDBBandedColumn;
    cxGrid2DBBandedTableView1breakage_name: TcxGridDBBandedColumn;
    cxGrid2Level1: TcxGridLevel;
    cxLabel1: TcxLabel;
    Splitter3: TSplitter;
    cxLabel2: TcxLabel;
    cxGrid4: TcxGrid;
    cxGrid4DBBandedTableView1: TcxGridDBBandedTableView;
    cxGrid4Level1: TcxGridLevel;
    Panel3: TPanel;
    cxGrid4DBBandedTableView1comment6: TcxGridDBBandedColumn;
    cxGrid4DBBandedTableView1vagon_owner_name: TcxGridDBBandedColumn;
    cxGrid4DBBandedTableView1num_vagon: TcxGridDBBandedColumn;
    cxGrid4DBBandedTableView1node_name: TcxGridDBBandedColumn;
    cxGrid4DBBandedTableView1road_name: TcxGridDBBandedColumn;
    cxGrid4DBBandedTableView1count_stay: TcxGridDBBandedColumn;
    cxGrid4DBBandedTableView1fact_weight: TcxGridDBBandedColumn;
    cxGrid4DBBandedTableView1comment12: TcxGridDBBandedColumn;
    cxGrid4DBBandedTableView1date_breakage: TcxGridDBBandedColumn;
    cxGrid5: TcxGrid;
    cxGrid5DBBandedTableView1: TcxGridDBBandedTableView;
    cxGridDBBandedColumn1: TcxGridDBBandedColumn;
    cxGridDBBandedColumn2: TcxGridDBBandedColumn;
    cxGridDBBandedColumn3: TcxGridDBBandedColumn;
    cxGridDBBandedColumn4: TcxGridDBBandedColumn;
    cxGridDBBandedColumn5: TcxGridDBBandedColumn;
    cxGridDBBandedColumn6: TcxGridDBBandedColumn;
    cxGridDBBandedColumn7: TcxGridDBBandedColumn;
    cxGridDBBandedColumn8: TcxGridDBBandedColumn;
    cxGridDBBandedColumn9: TcxGridDBBandedColumn;
    cxGrid5Level1: TcxGridLevel;
    cxGrid4DBBandedTableView1date_repare_end: TcxGridDBBandedColumn;
    cxGrid5DBBandedTableView1date_repare_end: TcxGridDBBandedColumn;
    dxBarPopupMenu4: TdxBarPopupMenu;
    dxBarPopupMenu5: TdxBarPopupMenu;
    dxBarButton5: TdxBarButton;
    dxBarButton6: TdxBarButton;
    TabSheet5: TTabSheet;
    TabSheet6: TTabSheet;
    TabSheet7: TTabSheet;
    TabSheet8: TTabSheet;
    Panel4: TPanel;
    Splitter2: TSplitter;
    cxLabel3: TcxLabel;
    cxGrid6: TcxGrid;
    cxGrid6DBBandedTableView1: TcxGridDBBandedTableView;
    cxGrid6Level1: TcxGridLevel;
    Panel5: TPanel;
    cxLabel7: TcxLabel;
    cxGrid7: TcxGrid;
    cxGrid7DBBandedTableView1: TcxGridDBBandedTableView;
    cxGrid7Level1: TcxGridLevel;
    cxGrid7DBBandedTableView1fact_repair_table_id: TcxGridDBBandedColumn;
    cxGrid7DBBandedTableView1score_date: TcxGridDBBandedColumn;
    cxGrid7DBBandedTableView1score_cod: TcxGridDBBandedColumn;
    cxGrid7DBBandedTableView1depo_name: TcxGridDBBandedColumn;
    cxGrid7DBBandedTableView1firm_customer_name_short: TcxGridDBBandedColumn;
    cxGrid7DBBandedTableView1contract_cod: TcxGridDBBandedColumn;
    cxGrid7DBBandedTableView1rod_vagon_name: TcxGridDBBandedColumn;
    cxGrid7DBBandedTableView1service_name: TcxGridDBBandedColumn;
    cxGrid7DBBandedTableView1sum: TcxGridDBBandedColumn;
    cxGrid7DBBandedTableView1num_vagon: TcxGridDBBandedColumn;
    dxBarPopupMenu6: TdxBarPopupMenu;
    dxBarPopupMenu7: TdxBarPopupMenu;
    dxBarButton7: TdxBarButton;
    dxBarButton8: TdxBarButton;
    cxGrid7DBBandedTableView1type_park_name: TcxGridDBBandedColumn;
    cxGrid6DBBandedTableView1rod_vagon_name: TcxGridDBBandedColumn;
    cxGrid6DBBandedTableView1type_park_name: TcxGridDBBandedColumn;
    cxGrid6DBBandedTableView1rep_count: TcxGridDBBandedColumn;
    cxGrid6DBBandedTableView1sum: TcxGridDBBandedColumn;
    cxGrid6DBBandedTableView1AVG_sum: TcxGridDBBandedColumn;
    dxBarButton9: TdxBarButton;
    Panel6: TPanel;
    Splitter5: TSplitter;
    cxLabel8: TcxLabel;
    cxGrid8: TcxGrid;
    cxGrid8DBBandedTableView1: TcxGridDBBandedTableView;
    cxGrid8Level1: TcxGridLevel;
    Panel7: TPanel;
    cxLabel9: TcxLabel;
    cxGrid8DBBandedTableView1type_park_name: TcxGridDBBandedColumn;
    cxGrid8DBBandedTableView1rod_vagon_name: TcxGridDBBandedColumn;
    cxGrid8DBBandedTableView1avg_sum_dr: TcxGridDBBandedColumn;
    cxGrid8DBBandedTableView1avg_sum_pdr: TcxGridDBBandedColumn;
    cxGrid8DBBandedTableView1sum_r: TcxGridDBBandedColumn;
    cxGrid9: TcxGrid;
    cxGrid9DBBandedTableView1: TcxGridDBBandedTableView;
    cxGridDBBandedColumn10: TcxGridDBBandedColumn;
    cxGridDBBandedColumn11: TcxGridDBBandedColumn;
    cxGridDBBandedColumn12: TcxGridDBBandedColumn;
    cxGridDBBandedColumn13: TcxGridDBBandedColumn;
    cxGridDBBandedColumn14: TcxGridDBBandedColumn;
    cxGridDBBandedColumn15: TcxGridDBBandedColumn;
    cxGridDBBandedColumn16: TcxGridDBBandedColumn;
    cxGridDBBandedColumn17: TcxGridDBBandedColumn;
    cxGridDBBandedColumn18: TcxGridDBBandedColumn;
    cxGridDBBandedColumn21: TcxGridDBBandedColumn;
    cxGridDBBandedColumn22: TcxGridDBBandedColumn;
    cxGrid9Level1: TcxGridLevel;
    Panel8: TPanel;
    Splitter6: TSplitter;
    cxLabel11: TcxLabel;
    cxGrid10: TcxGrid;
    cxGrid10DBBandedTableView1: TcxGridDBBandedTableView;
    cxGridDBBandedColumn20: TcxGridDBBandedColumn;
    cxGridDBBandedColumn24: TcxGridDBBandedColumn;
    cxGridDBBandedColumn25: TcxGridDBBandedColumn;
    cxGrid10Level1: TcxGridLevel;
    Panel9: TPanel;
    cxLabel12: TcxLabel;
    cxGrid11: TcxGrid;
    cxGrid11DBBandedTableView1: TcxGridDBBandedTableView;
    cxGridDBBandedColumn26: TcxGridDBBandedColumn;
    cxGridDBBandedColumn27: TcxGridDBBandedColumn;
    cxGridDBBandedColumn28: TcxGridDBBandedColumn;
    cxGridDBBandedColumn29: TcxGridDBBandedColumn;
    cxGridDBBandedColumn30: TcxGridDBBandedColumn;
    cxGridDBBandedColumn31: TcxGridDBBandedColumn;
    cxGridDBBandedColumn32: TcxGridDBBandedColumn;
    cxGridDBBandedColumn33: TcxGridDBBandedColumn;
    cxGridDBBandedColumn34: TcxGridDBBandedColumn;
    cxGridDBBandedColumn35: TcxGridDBBandedColumn;
    cxGridDBBandedColumn36: TcxGridDBBandedColumn;
    cxGrid11Level1: TcxGridLevel;
    cxGrid8DBBandedTableView1rep_count: TcxGridDBBandedColumn;
    Panel10: TPanel;
    Splitter7: TSplitter;
    cxLabel10: TcxLabel;
    cxGrid12: TcxGrid;
    cxGrid12DBBandedTableView1: TcxGridDBBandedTableView;
    cxGridDBBandedColumn38: TcxGridDBBandedColumn;
    cxGridDBBandedColumn39: TcxGridDBBandedColumn;
    cxGridDBBandedColumn40: TcxGridDBBandedColumn;
    cxGridDBBandedColumn41: TcxGridDBBandedColumn;
    cxGrid12Level1: TcxGridLevel;
    Panel11: TPanel;
    cxLabel13: TcxLabel;
    cxGrid13: TcxGrid;
    cxGrid13DBBandedTableView1: TcxGridDBBandedTableView;
    cxGridDBBandedColumn42: TcxGridDBBandedColumn;
    cxGridDBBandedColumn43: TcxGridDBBandedColumn;
    cxGridDBBandedColumn44: TcxGridDBBandedColumn;
    cxGridDBBandedColumn45: TcxGridDBBandedColumn;
    cxGridDBBandedColumn46: TcxGridDBBandedColumn;
    cxGridDBBandedColumn47: TcxGridDBBandedColumn;
    cxGridDBBandedColumn48: TcxGridDBBandedColumn;
    cxGridDBBandedColumn49: TcxGridDBBandedColumn;
    cxGridDBBandedColumn50: TcxGridDBBandedColumn;
    cxGridDBBandedColumn51: TcxGridDBBandedColumn;
    cxGridDBBandedColumn52: TcxGridDBBandedColumn;
    cxGrid13Level1: TcxGridLevel;
    cxGrid12DBBandedTableView1sum_avg_sum_pdr: TcxGridDBBandedColumn;
    cxGrid8DBBandedTableView1sum_avg_sum_pdr: TcxGridDBBandedColumn;
    cxGrid12DBBandedTableView1node_name: TcxGridDBBandedColumn;
    cxGrid12DBBandedTableView1avg_sum_u: TcxGridDBBandedColumn;
    cxGrid10DBBandedTableView1rep_count: TcxGridDBBandedColumn;
    cxGrid10DBBandedTableView1avg_sum: TcxGridDBBandedColumn;
    cxGrid11DBBandedTableView1node_name: TcxGridDBBandedColumn;
    cxGrid13DBBandedTableView1node_name: TcxGridDBBandedColumn;
    cxGrid12DBBandedTableView1rep_count_dr: TcxGridDBBandedColumn;
    cxGrid12DBBandedTableView1rep_count_pdr: TcxGridDBBandedColumn;
    cxGrid12DBBandedTableView1rep_count_u: TcxGridDBBandedColumn;
    cxGrid12DBBandedTableView1sum_dr: TcxGridDBBandedColumn;
    cxGrid12DBBandedTableView1sum_pdr: TcxGridDBBandedColumn;
    cxGrid12DBBandedTableView1sum_u: TcxGridDBBandedColumn;
    cxGrid8DBBandedTableView1sum_dr: TcxGridDBBandedColumn;
    cxGrid8DBBandedTableView1rep_count_dr: TcxGridDBBandedColumn;
    cxGrid8DBBandedTableView1sum_pdr: TcxGridDBBandedColumn;
    cxGrid8DBBandedTableView1rep_count_pdr: TcxGridDBBandedColumn;
    DS_info3: TDataSource;
    SP_Info3: TADOStoredProc;
    SP_Reps1: TADOStoredProc;
    DS_Reps1: TDataSource;
    dxBarPopupMenu14: TdxBarPopupMenu;
    dxBarButton10: TdxBarButton;
    dxBarButton11: TdxBarButton;
    dxBarPopupMenu15: TdxBarPopupMenu;
    dxBarButton13: TdxBarButton;
    TabSheet9: TTabSheet;
    Panel12: TPanel;
    Splitter8: TSplitter;
    cxLabel14: TcxLabel;
    cxGrid16: TcxGrid;
    cxGrid16DBBandedTableView1: TcxGridDBBandedTableView;
    cxGridDBBandedColumn19: TcxGridDBBandedColumn;
    cxGridDBBandedColumn23: TcxGridDBBandedColumn;
    cxGridDBBandedColumn37: TcxGridDBBandedColumn;
    cxGridDBBandedColumn53: TcxGridDBBandedColumn;
    cxGrid16DBBandedavg_rep: TcxGridDBBandedColumn;
    cxGrid16Level1: TcxGridLevel;
    Panel13: TPanel;
    cxLabel15: TcxLabel;
    cxGrid17: TcxGrid;
    cxGrid17DBBandedTableView1: TcxGridDBBandedTableView;
    cxGridDBBandedColumn56: TcxGridDBBandedColumn;
    cxGridDBBandedColumn57: TcxGridDBBandedColumn;
    cxGridDBBandedColumn58: TcxGridDBBandedColumn;
    cxGridDBBandedColumn59: TcxGridDBBandedColumn;
    cxGridDBBandedColumn60: TcxGridDBBandedColumn;
    cxGridDBBandedColumn61: TcxGridDBBandedColumn;
    cxGridDBBandedColumn62: TcxGridDBBandedColumn;
    cxGridDBBandedColumn64: TcxGridDBBandedColumn;
    cxGrid17Level1: TcxGridLevel;
    TabSheet10: TTabSheet;
    Panel14: TPanel;
    Splitter9: TSplitter;
    Panel15: TPanel;
    cxLabel17: TcxLabel;
    cxGrid19: TcxGrid;
    cxGrid19DBBandedTableView1: TcxGridDBBandedTableView;
    cxGrid19Level1: TcxGridLevel;
    cxGrid19DBBandedTableView1num_vagon: TcxGridDBBandedColumn;
    cxGrid19DBBandedTableView1com3_date_repair_end: TcxGridDBBandedColumn;
    cxGrid19DBBandedTableView1comment5: TcxGridDBBandedColumn;
    cxGrid19DBBandedTableView1node_operation_name: TcxGridDBBandedColumn;
    cxGrid19DBBandedTableView1depo_name: TcxGridDBBandedColumn;
    cxGrid19DBBandedTableView1firm_depo_name: TcxGridDBBandedColumn;
    cxGrid19DBBandedTableView1date_period: TcxGridDBBandedColumn;
    cxGrid19DBBandedTableView1type_park_name: TcxGridDBBandedColumn;
    cxGrid19DBBandedTableView1firm_customer_name: TcxGridDBBandedColumn;
    GroupBox2: TGroupBox;
    GroupBox3: TGroupBox;
    cxGrid18: TcxGrid;
    cxGrid18DBBandedTableView1: TcxGridDBBandedTableView;
    cxGrid18DBBandedTableView1firm_depo_name: TcxGridDBBandedColumn;
    cxGrid18DBBandedTableView1depo_name: TcxGridDBBandedColumn;
    cxGrid18DBBandedTableView1m1: TcxGridDBBandedColumn;
    cxGrid18DBBandedTableView1m2: TcxGridDBBandedColumn;
    cxGrid18DBBandedTableView1m3: TcxGridDBBandedColumn;
    cxGrid18DBBandedTableView1m4: TcxGridDBBandedColumn;
    cxGrid18DBBandedTableView1m5: TcxGridDBBandedColumn;
    cxGrid18DBBandedTableView1m6: TcxGridDBBandedColumn;
    cxGrid18DBBandedTableView1m8: TcxGridDBBandedColumn;
    cxGrid18DBBandedTableView1m9: TcxGridDBBandedColumn;
    cxGrid18DBBandedTableView1m10: TcxGridDBBandedColumn;
    cxGrid18DBBandedTableView1m11: TcxGridDBBandedColumn;
    cxGrid18DBBandedTableView1m12: TcxGridDBBandedColumn;
    cxGrid18DBBandedTableView1rep_count: TcxGridDBBandedColumn;
    cxGrid18Level1: TcxGridLevel;
    cxLabel16: TcxLabel;
    Splitter10: TSplitter;
    cxGrid20: TcxGrid;
    cxGrid20DBBandedTableView1: TcxGridDBBandedTableView;
    cxGridDBBandedColumn63: TcxGridDBBandedColumn;
    cxGridDBBandedColumn65: TcxGridDBBandedColumn;
    cxGridDBBandedColumn66: TcxGridDBBandedColumn;
    cxGridDBBandedColumn67: TcxGridDBBandedColumn;
    cxGridDBBandedColumn68: TcxGridDBBandedColumn;
    cxGridDBBandedColumn69: TcxGridDBBandedColumn;
    cxGridDBBandedColumn70: TcxGridDBBandedColumn;
    cxGridDBBandedColumn71: TcxGridDBBandedColumn;
    cxGridDBBandedColumn72: TcxGridDBBandedColumn;
    cxGridDBBandedColumn73: TcxGridDBBandedColumn;
    cxGridDBBandedColumn74: TcxGridDBBandedColumn;
    cxGridDBBandedColumn75: TcxGridDBBandedColumn;
    cxGridDBBandedColumn76: TcxGridDBBandedColumn;
    cxGridDBBandedColumn77: TcxGridDBBandedColumn;
    cxGrid20Level1: TcxGridLevel;
    cxLabel18: TcxLabel;
    SP_Reps2: TADOStoredProc;
    DS_Reps2: TDataSource;
    dxBarPopupMenu19: TdxBarPopupMenu;
    dxBarButton14: TdxBarButton;
    cxGrid7DBBandedTableView1cost_contract_cod: TcxGridDBBandedColumn;
    cxGrid11DBBandedTableView1cost_contract_cod: TcxGridDBBandedColumn;
    TabSheet11: TTabSheet;
    Panel16: TPanel;
    Splitter11: TSplitter;
    cxLabel19: TcxLabel;
    cxGrid21: TcxGrid;
    cxGrid21DBBandedTableView1: TcxGridDBBandedTableView;
    cxGrid21Level1: TcxGridLevel;
    Panel17: TPanel;
    cxLabel20: TcxLabel;
    cxGrid22: TcxGrid;
    cxGrid22DBBandedTableView1: TcxGridDBBandedTableView;
    cxGrid22Level1: TcxGridLevel;
    cxGrid21DBBandedTableView1sum1: TcxGridDBBandedColumn;
    cxGrid21DBBandedTableView1comis1: TcxGridDBBandedColumn;
    cxGrid21DBBandedTableView1comis_pct1: TcxGridDBBandedColumn;
    cxGrid21DBBandedTableView1sum2: TcxGridDBBandedColumn;
    cxGrid21DBBandedTableView1comis2: TcxGridDBBandedColumn;
    cxGrid21DBBandedTableView1comis_pct2: TcxGridDBBandedColumn;
    cxGrid21DBBandedTableView1sum3: TcxGridDBBandedColumn;
    cxGrid21DBBandedTableView1comis3: TcxGridDBBandedColumn;
    cxGrid21DBBandedTableView1comis_pct3: TcxGridDBBandedColumn;
    cxGrid21DBBandedTableView1sum4: TcxGridDBBandedColumn;
    cxGrid21DBBandedTableView1comis4: TcxGridDBBandedColumn;
    cxGrid21DBBandedTableView1comis_pct4: TcxGridDBBandedColumn;
    cxGrid21DBBandedTableView1sum5: TcxGridDBBandedColumn;
    cxGrid21DBBandedTableView1comis5: TcxGridDBBandedColumn;
    cxGrid21DBBandedTableView1comis_pct5: TcxGridDBBandedColumn;
    cxGrid21DBBandedTableView1sum6: TcxGridDBBandedColumn;
    cxGrid21DBBandedTableView1comis6: TcxGridDBBandedColumn;
    cxGrid21DBBandedTableView1comis_pct6: TcxGridDBBandedColumn;
    cxGrid21DBBandedTableView1sum: TcxGridDBBandedColumn;
    cxGrid21DBBandedTableView1comis: TcxGridDBBandedColumn;
    cxGrid21DBBandedTableView1comis_pct: TcxGridDBBandedColumn;
    cxGrid21DBBandedTableView1delta: TcxGridDBBandedColumn;
    cxGrid21DBBandedTableView1cost_firm_customer_name_short: TcxGridDBBandedColumn;
    cxGrid22DBBandedTableView1fact_repair_table_id: TcxGridDBBandedColumn;
    cxGrid22DBBandedTableView1score_date: TcxGridDBBandedColumn;
    cxGrid22DBBandedTableView1score_cod: TcxGridDBBandedColumn;
    cxGrid22DBBandedTableView1num_vagon: TcxGridDBBandedColumn;
    cxGrid22DBBandedTableView1service_name: TcxGridDBBandedColumn;
    cxGrid22DBBandedTableView1cost_acts_cod: TcxGridDBBandedColumn;
    cxGrid22DBBandedTableView1cost_acts_date: TcxGridDBBandedColumn;
    cxGrid22DBBandedTableView1cost_firm_customer_name_short: TcxGridDBBandedColumn;
    cxGrid22DBBandedTableView1sum: TcxGridDBBandedColumn;
    cxGrid22DBBandedTableView1comis: TcxGridDBBandedColumn;
    cxGrid22DBBandedTableView1comis_pct: TcxGridDBBandedColumn;
    dxBarButton15: TdxBarButton;
    cxGrid12DBBandedTableView1cost_firm_customer_name_short: TcxGridDBBandedColumn;
    cxGrid13DBBandedTableView1cost_firm_customer_name_short: TcxGridDBBandedColumn;
    cxGrid13DBBandedTableView1cost_contract_cod: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1total_count_stay: TcxGridDBBandedColumn;
    cxGrid2DBBandedTableView1rod_vagon_name: TcxGridDBBandedColumn;
    cxGrid2DBBandedTableView1firm_customer_name: TcxGridDBBandedColumn;
    cxGrid2DBBandedTableView1type_park_name: TcxGridDBBandedColumn;
    cxGrid7DBBandedTableView1breakage_name: TcxGridDBBandedColumn;
    cxGrid4DBBandedTableView1breakage_name: TcxGridDBBandedColumn;
    cxGrid5DBBandedTableView1breakage_name: TcxGridDBBandedColumn;
    cxGrid4DBBandedTableView1type_park_name: TcxGridDBBandedColumn;
    cxGrid5DBBandedTableView1type_park_name: TcxGridDBBandedColumn;
    cxGrid4DBBandedTableView1node_begin_name: TcxGridDBBandedColumn;
    cxGrid4DBBandedTableView1node_end_name: TcxGridDBBandedColumn;
    cxGrid5DBBandedTableView1node_begin_name: TcxGridDBBandedColumn;
    cxGrid5DBBandedTableView1node_end_name: TcxGridDBBandedColumn;
    cxGrid4DBBandedTableView1date_otpr: TcxGridDBBandedColumn;
    cxGrid5DBBandedTableView1date_otpr: TcxGridDBBandedColumn;
    dxBarButton16: TdxBarButton;
    cxGrid18DBBandedTableView1m7: TcxGridDBBandedColumn;
    cxGridDBBandedColumn78: TcxGridDBBandedColumn;
    cxGrid19DBBandedTableView1doc_number_emty: TcxGridDBBandedColumn;
    dxBarButton17: TdxBarButton;
    dxBarPopupMenu8: TdxBarPopupMenu;
    dxBarButton18: TdxBarButton;
    dxBarPopupMenu10: TdxBarPopupMenu;
    dxBarButton19: TdxBarButton;
    dxBarPopupMenu16: TdxBarPopupMenu;
    dxBarButton21: TdxBarButton;
    dxBarPopupMenu18: TdxBarPopupMenu;
    dxBarButton22: TdxBarButton;
    dxBarPopupMenu21: TdxBarPopupMenu;
    dxBarButton26: TdxBarButton;
    cxGrid4DBBandedTableView1comment13: TcxGridDBBandedColumn;
    cxGrid4DBBandedTableView1rod_vagon_name: TcxGridDBBandedColumn;
    dxBarPopupMenu12: TdxBarPopupMenu;
    dxBarButton27: TdxBarButton;
    dxBarPopupMenu13: TdxBarPopupMenu;
    dxBarButton30: TdxBarButton;
    dxBarPopupMenu7_1: TdxBarPopupMenu;
    dxBarButton31: TdxBarButton;
    TabSheet1: TTabSheet;
    Panel1: TPanel;
    Splitter12: TSplitter;
    cxLabel21: TcxLabel;
    Panel18: TPanel;
    cxLabel22: TcxLabel;
    cxGrid15: TcxGrid;
    cxGrid15DBBandedTableView1: TcxGridDBBandedTableView;
    cxGridLevel2: TcxGridLevel;
    cxDBPivotGrid1: TcxDBPivotGrid;
    cxDBPivotGrid1num_vagon: TcxDBPivotGridField;
    Query_tmp: TADOQuery;
    cxDBPivotGrid1rod_vagon_name: TcxDBPivotGridField;
    cxDBPivotGrid1repaire_owner_name: TcxDBPivotGridField;
    cxDBPivotGrid1comment4_type_repare: TcxDBPivotGridField;
    cxDBPivotGrid1comment4: TcxDBPivotGridField;
    cxDBPivotGrid1cnt: TcxDBPivotGridField;
    cxGrid15DBBandedTableView1num_vagon: TcxGridDBBandedColumn;
    cxGrid15DBBandedTableView1firm_customer_name: TcxGridDBBandedColumn;
    cxGrid15DBBandedTableView1type_park_name: TcxGridDBBandedColumn;
    cxGrid15DBBandedTableView1rod_vagon_name: TcxGridDBBandedColumn;
    cxGrid15DBBandedTableView1type_park_vagon_name: TcxGridDBBandedColumn;
    cxGrid15DBBandedTableView1date_build: TcxGridDBBandedColumn;
    cxGrid15DBBandedTableView1next_date_repair: TcxGridDBBandedColumn;
    cxGrid15DBBandedTableView1date_last_place: TcxGridDBBandedColumn;
    cxGrid15DBBandedTableView1milage_passed: TcxGridDBBandedColumn;
    cxGrid15DBBandedTableView1milage_rest: TcxGridDBBandedColumn;
    cxGrid15DBBandedTableView1model_name: TcxGridDBBandedColumn;
    cxGrid15DBBandedTableView1node_begin_name: TcxGridDBBandedColumn;
    cxGrid15DBBandedTableView1road_begin_name: TcxGridDBBandedColumn;
    cxGrid15DBBandedTableView1node_end_name: TcxGridDBBandedColumn;
    cxGrid15DBBandedTableView1date_otpr: TcxGridDBBandedColumn;
    cxGrid15DBBandedTableView1time_otpr: TcxGridDBBandedColumn;
    cxGrid15DBBandedTableView1fact_weight: TcxGridDBBandedColumn;
    cxGrid15DBBandedTableView1kargoETSNG_name: TcxGridDBBandedColumn;
    cxGrid15DBBandedTableView1comment6: TcxGridDBBandedColumn;
    cxGrid15DBBandedTableView1comment13: TcxGridDBBandedColumn;
    cxGrid15DBBandedTableView1arenda_firm_name: TcxGridDBBandedColumn;
    cxGrid15DBBandedTableView1comment4: TcxGridDBBandedColumn;
    cxGrid15DBBandedTableView1comment4_type_repare: TcxGridDBBandedColumn;
    cxGrid15DBBandedTableView1repaire_owner_name: TcxGridDBBandedColumn;
    dxBarPopupMenu_10_1: TdxBarPopupMenu;
    dxBarPopupMenu_10_2: TdxBarPopupMenu;
    dxBarButton32: TdxBarButton;
    dxBarButton33: TdxBarButton;
    dxBarButton35: TdxBarButton;
    cxGrid15DBBandedTableView1node_operation_nam: TcxGridDBBandedColumn;
    cxDBPivotGrid1node_operation_name: TcxDBPivotGridField;
    procedure cxGrid1DBBandedTableView1FocusedItemChanged(Sender: TcxCustomGridTableView; APrevFocusedItem, AFocusedItem: TcxCustomGridTableItem);
    procedure cxGrid1DBBandedTableView1CustomDrawColumnHeader(Sender: TcxGridTableView; ACanvas: TcxCanvas; AViewInfo: TcxGridColumnHeaderViewInfo; var ADone: Boolean);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure N14Click(Sender: TObject);
    procedure N74Click(Sender: TObject);
    procedure ToolButton12Click(Sender: TObject);
    procedure cxGrid1DBBandedTableView1DataControllerFilterChanged(Sender: TObject);
    procedure Excel3Click(Sender: TObject);
    procedure Action_FindExecute(Sender: TObject);
    procedure cxGrid1DBBandedTableView1KeyPress(Sender: TObject; var Key: Char);
    procedure dxBarButton4Click(Sender: TObject);
    procedure cxGrid1DBBandedTableView1CustomDrawCell(Sender: TcxCustomGridTableView; ACanvas: TcxCanvas; AViewInfo: TcxGridTableDataCellViewInfo; var ADone: Boolean);
    procedure dxBarButton_FilterRecords1Click(Sender: TObject);
    procedure cxGrid2DBBandedTableView2CustomDrawCell(Sender: TcxCustomGridTableView; ACanvas: TcxCanvas;AViewInfo: TcxGridTableDataCellViewInfo; var ADone: Boolean);
    procedure cxGrid2DBBandedTableView2KeyPress(Sender: TObject; var Key: Char);
    procedure dxBarSubItem2Click(Sender: TObject);
    procedure dxBarButton12Click(Sender: TObject);
    procedure dxBarButton20Click(Sender: TObject);
    procedure dxBarButton2Click(Sender: TObject);
    procedure dxBarButton23Click(Sender: TObject);
    procedure dxBarButton24Click(Sender: TObject);
    procedure cxGrid3DBBandedTableView1KeyPress(Sender: TObject; var Key: Char);
    procedure dxBarButton29Click(Sender: TObject);
    procedure dxBarButton34Click(Sender: TObject);
    procedure dxBarButton3Click(Sender: TObject);
    procedure dxBarButton1Click(Sender: TObject);
    procedure PageControl2Change(Sender: TObject);
    procedure dxBarButton5Click(Sender: TObject);
    procedure dxBarButton6Click(Sender: TObject);
    procedure cxGrid2DBBandedTableView1KeyPress(Sender: TObject; var Key: Char);
    procedure cxGrid4DBBandedTableView1KeyPress(Sender: TObject; var Key: Char);
    procedure cxGrid5DBBandedTableView1KeyPress(Sender: TObject; var Key: Char);
    procedure dxBarButton8Click(Sender: TObject);
    procedure dxBarButton7Click(Sender: TObject);
    procedure dxBarButton9Click(Sender: TObject);
    procedure cxGrid10DBBandedTableView1TcxGridDBDataControllerTcxDataSummaryFooterSummaryItems19GetText(Sender: TcxDataSummaryItem; const AValue: Variant; AIsFooter: Boolean;   var AText: string);
    procedure cxGrid8DBBandedTableView1TcxGridDBDataControllerTcxDataSummaryFooterSummaryItems19GetText(Sender: TcxDataSummaryItem; const AValue: Variant; AIsFooter: Boolean;  var AText: string);
    procedure cxGridDBBandedTableView1TcxGridDBDataControllerTcxDataSummaryFooterSummaryItems20GetText(Sender: TcxDataSummaryItem; const AValue: Variant; AIsFooter: Boolean;  var AText: string);
    procedure cxGrid10DBBandedTableView1TcxGridDBDataControllerTcxDataSummaryFooterSummaryItems15GetText(Sender: TcxDataSummaryItem; const AValue: Variant; AIsFooter: Boolean;  var AText: string);
    procedure cxGrid10DBBandedTableView1TcxGridDBDataControllerTcxDataSummaryFooterSummaryItems16GetText(Sender: TcxDataSummaryItem; const AValue: Variant; AIsFooter: Boolean; var AText: string);
    procedure cxGrid10DBBandedTableView1TcxGridDBDataControllerTcxDataSummaryFooterSummaryItems21GetText(Sender: TcxDataSummaryItem; const AValue: Variant; AIsFooter: Boolean; var AText: string);
    procedure cxGrid8DBBandedTableView1TcxGridDBDataControllerTcxDataSummaryFooterSummaryItems15GetText(Sender: TcxDataSummaryItem; const AValue: Variant; AIsFooter: Boolean; var AText: string);
    procedure cxGrid8DBBandedTableView1TcxGridDBDataControllerTcxDataSummaryFooterSummaryItems16GetText(Sender: TcxDataSummaryItem; const AValue: Variant; AIsFooter: Boolean; var AText: string);
    procedure cxGrid6DBBandedTableView1TcxGridDBDataControllerTcxDataSummaryFooterSummaryItems13GetText(Sender: TcxDataSummaryItem; const AValue: Variant; AIsFooter: Boolean; var AText: string);
    procedure cxGrid16DBBandedTableView1TcxGridDBDataControllerTcxDataSummaryFooterSummaryItems13GetText(Sender: TcxDataSummaryItem; const AValue: Variant; AIsFooter: Boolean; var AText: string);
    procedure dxBarButton14Click(Sender: TObject);
    procedure dxBarButton16Click(Sender: TObject);
    procedure cxGrid19DBBandedTableView1KeyPress(Sender: TObject; var Key: Char);
    procedure dxBarButton17Click(Sender: TObject);
    procedure dxBarButton18Click(Sender: TObject);
    procedure dxBarButton19Click(Sender: TObject);
    procedure dxBarButton21Click(Sender: TObject);
    procedure dxBarButton22Click(Sender: TObject);
    procedure dxBarButton26Click(Sender: TObject);
    procedure GetNorm();
    procedure dxBarButton27Click(Sender: TObject);
    procedure dxBarButton30Click(Sender: TObject);
    procedure dxBarButton31Click(Sender: TObject);
    procedure dxBarButton32Click(Sender: TObject);
    procedure dxBarButton35Click(Sender: TObject);
  private
    Fdate1, Fdate2 : TDateTime;
    //Нормы затрат
    FN_1_3_1 : Integer;
    FN_1_4_1 : Integer;
    FN_1_4_2  : Integer;
    FN_1_5_1  : Integer;
    FN_1_6_1  : Integer;
    procedure SetActivePageIdex(page_idex: integer);
    procedure Refresh_info();
  public
    constructor Create(AOwner : TApplication; flag: boolean);
  published
    property _Fdate1            : TDateTime  write Fdate1;
    property _Fdate2            : TDateTime  write Fdate2;
    property _SetActivePageIdex : integer write SetActivePageIdex;
  end;

var
  fmTrafficManagment: TfmTrafficManagment;

implementation
  uses Raznoe, Other, Main, Period, FactTrack;
{$R *.dfm}

constructor TfmTrafficManagment.Create(AOwner: TApplication; flag: boolean);
begin
  Screen.Cursor := crHourglass;

  inherited Create(AOwner);

//  Fdate1 := StartOfTheMonth(IncMonth(Date,-1));
//  Fdate2 := EndOfTheMonth(IncMonth(Date,-1));

  FN_1_3_1 := 0;
  FN_1_4_1 := 0;
  FN_1_4_2 := 0;
  FN_1_5_1 := 0;
  FN_1_6_1 := 0;

 // StoreRegistryGrid(rgLoad,'\Software\Lis1\TrafficManagment_Grids', cxGrid1DBBandedTableView1, 1);
  StoreRegistryGrid(rgLoad,'\Software\Lis1\TrafficManagment_Grids', cxGrid2DBBandedTableView1, 1);
  StoreRegistryGrid(rgLoad,'\Software\Lis1\TrafficManagment_Grids', cxGrid3DBBandedTableView1, 1);
  StoreRegistryGrid(rgLoad,'\Software\Lis1\TrafficManagment_Grids', cxGrid4DBBandedTableView1, 1);
  StoreRegistryGrid(rgLoad,'\Software\Lis1\TrafficManagment_Grids', cxGrid5DBBandedTableView1, 1);
  StoreRegistryGrid(rgLoad,'\Software\Lis1\TrafficManagment_Grids', cxGrid6DBBandedTableView1, 1);
  StoreRegistryGrid(rgLoad,'\Software\Lis1\TrafficManagment_Grids', cxGrid7DBBandedTableView1, 1);
  StoreRegistryGrid(rgLoad,'\Software\Lis1\TrafficManagment_Grids', cxGrid9DBBandedTableView1, 1);
  StoreRegistryGrid(rgLoad,'\Software\Lis1\TrafficManagment_Grids', cxGrid11DBBandedTableView1, 1);
  StoreRegistryGrid(rgLoad,'\Software\Lis1\TrafficManagment_Grids', cxGrid13DBBandedTableView1, 1);
  StoreRegistryGrid(rgLoad,'\Software\Lis1\TrafficManagment_Grids', cxGrid17DBBandedTableView1, 1);
  StoreRegistryGrid(rgLoad,'\Software\Lis1\TrafficManagment_Grids', cxGrid19DBBandedTableView1, 1);
  StoreRegistryGrid(rgLoad,'\Software\Lis1\TrafficManagment_Grids', cxGrid22DBBandedTableView1, 1);
  StoreRegistryGrid(rgLoad,'\Software\Lis1\TrafficManagment_Grids', cxGrid15DBBandedTableView1, 1);

  //LoadRegistryDate_('\Software\LIS1\DateTime\TrafficManagment', Fdate1, Fdate2);

  Fdate1 := StartOfTheYear(Date);
  Fdate2 := EndOfTheYear(Date);

  if flag then begin
    FormStyle := fsMDIChild;
  end else begin
   FormStyle := fsMDIChild;
   //PageControl2.ActivePage := TabSheet2;
   //PageControl2Change(nil);
  end;

  dxBarSubItem3.Caption := PeriodToStr(Fdate1, Fdate2, True);
  SetUsersModuleRights(self, fmMain.Lis);

  MonitorEventFormOpen('OPEN_FORM', self.Name, fmMain.Lis, -9);

  GetNorm;
  Screen.Cursor := crDefault;
end;

procedure TfmTrafficManagment.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  StoreRegistryGrid(rgSave,'\Software\Lis1\TrafficManagment_Grids', cxGrid1DBBandedTableView1, 1);
  StoreRegistryGrid(rgSave,'\Software\Lis1\TrafficManagment_Grids', cxGrid2DBBandedTableView1, 1);
  StoreRegistryGrid(rgSave,'\Software\Lis1\TrafficManagment_Grids', cxGrid3DBBandedTableView1, 1);
  StoreRegistryGrid(rgSave,'\Software\Lis1\TrafficManagment_Grids', cxGrid4DBBandedTableView1, 1);
  StoreRegistryGrid(rgSave,'\Software\Lis1\TrafficManagment_Grids', cxGrid5DBBandedTableView1, 1);
  StoreRegistryGrid(rgSave,'\Software\Lis1\TrafficManagment_Grids', cxGrid6DBBandedTableView1, 1);
  StoreRegistryGrid(rgSave,'\Software\Lis1\TrafficManagment_Grids', cxGrid7DBBandedTableView1, 1);
  StoreRegistryGrid(rgSave,'\Software\Lis1\TrafficManagment_Grids', cxGrid9DBBandedTableView1, 1);
  StoreRegistryGrid(rgSave,'\Software\Lis1\TrafficManagment_Grids', cxGrid11DBBandedTableView1, 1);
  StoreRegistryGrid(rgSave,'\Software\Lis1\TrafficManagment_Grids', cxGrid13DBBandedTableView1, 1);
  StoreRegistryGrid(rgSave,'\Software\Lis1\TrafficManagment_Grids', cxGrid17DBBandedTableView1, 1);
  StoreRegistryGrid(rgSave,'\Software\Lis1\TrafficManagment_Grids', cxGrid19DBBandedTableView1, 1);
  StoreRegistryGrid(rgSave,'\Software\Lis1\TrafficManagment_Grids', cxGrid22DBBandedTableView1, 1);
  StoreRegistryGrid(rgSave,'\Software\Lis1\TrafficManagment_Grids', cxGrid15DBBandedTableView1, 1);


  SavePositionForm(self, '\Software\LIS1\DateTime\TrafficManagment', Fdate1, Fdate2);
  Action := caFree;
end;

procedure TfmTrafficManagment.GetNorm();
var Q : TADOQuery;
begin
  Q := TADOQuery.Create(nil);
  Q.Connection := fmMain.Lis;
  Q.SQL.Add('DECLARE @date_end datetime ');
  Q.SQL.Add('SELECT @date_end = :date_end ');
  Q.SQL.Add('SELECT ');
  Q.SQL.Add('(SELECT TOP 1 ISNULL(inf_obj_name_translit, 0) FROM inf_obj WITH (NOLOCK) WHERE type_inf_id = 163 AND inf_obj_cod = ''1.3.1'' AND @date_end BETWEEN date_begin AND ISNULL(date_end, @date_end)) as N_1_3_1, ');
  Q.SQL.Add('(SELECT TOP 1 ISNULL(inf_obj_name_translit, 0) FROM inf_obj WITH (NOLOCK) WHERE type_inf_id = 163 AND inf_obj_cod = ''1.4.1'' AND @date_end BETWEEN date_begin AND ISNULL(date_end, @date_end)) as N_1_4_1, ');
  Q.SQL.Add('(SELECT TOP 1 ISNULL(inf_obj_name_translit, 0) FROM inf_obj WITH (NOLOCK) WHERE type_inf_id = 163 AND inf_obj_cod = ''1.4.2'' AND @date_end BETWEEN date_begin AND ISNULL(date_end, @date_end)) as N_1_4_2, ');
  Q.SQL.Add('(SELECT TOP 1 ISNULL(inf_obj_name_translit, 0) FROM inf_obj WITH (NOLOCK) WHERE type_inf_id = 163 AND inf_obj_cod = ''1.5.1'' AND @date_end BETWEEN date_begin AND ISNULL(date_end, @date_end)) as N_1_5_1, ');
  Q.SQL.Add('(SELECT TOP 1 ISNULL(inf_obj_name_translit, 0) FROM inf_obj WITH (NOLOCK) WHERE type_inf_id = 163 AND inf_obj_cod = ''1.6.1'' AND @date_end BETWEEN date_begin AND ISNULL(date_end, @date_end)) as N_1_6_1 ');
  Q.Parameters.ParamByName('date_end').Value :=  Fdate2;
  Q.Open;
  FN_1_3_1 := Q.FieldByName('N_1_3_1').Value;
  FN_1_4_1 := Q.FieldByName('N_1_4_1').Value;
  FN_1_4_2 := Q.FieldByName('N_1_4_2').Value;
  FN_1_5_1 := Q.FieldByName('N_1_3_1').Value;
  FN_1_6_1 := Q.FieldByName('N_1_3_1').Value;

  //1.3
  cxGrid6DBBandedTableView1.Bands[1].Caption := 'Норма = ' + IntToStr(FN_1_3_1);
  //1.4
  cxGrid8DBBandedTableView1.Bands[0].Caption := 'Норма = ' + IntToStr(FN_1_4_1 + FN_1_4_2);
  cxGrid8DBBandedTableView1.Bands[1].Caption := 'Норма = ' + IntToStr(FN_1_4_1);
  cxGrid8DBBandedTableView1.Bands[2].Caption := 'Норма = ' + IntToStr(FN_1_4_2);
  //1.5
  cxGrid10DBBandedTableView1.Bands[0].Caption := 'Норма = ' + IntToStr(FN_1_5_1);
  //1.6
  cxGrid10DBBandedTableView1.Bands[0].Caption := 'Норма = ' + IntToStr(FN_1_6_1);
end;

procedure TfmTrafficManagment.Action_FindExecute(Sender: TObject);
var S: string;
begin
  S := ShowFactTrackVagonDlg(Application.Handle, usr_pwd, 0);
  if Trim(S)='' then exit;
end;

procedure TfmTrafficManagment.cxGrid10DBBandedTableView1TcxGridDBDataControllerTcxDataSummaryFooterSummaryItems15GetText(Sender: TcxDataSummaryItem; const AValue: Variant; AIsFooter: Boolean; var AText: string);
begin
  // ------ "Сумма "/"Кол-во вагонов"
  if (cxGrid10DBBandedTableView1.DataController.Summary.FooterSummaryValues[25] = null) OR
    (cxGrid10DBBandedTableView1.DataController.Summary.FooterSummaryValues[22] = null) OR
    (cxGrid10DBBandedTableView1.DataController.Summary.FooterSummaryValues[22] = 0)
    then exit
  else
    AText := FormatFloat('средн=# ##0.00', cxGrid10DBBandedTableView1.DataController.Summary.FooterSummaryValues[25] /
                                           cxGrid10DBBandedTableView1.DataController.Summary.FooterSummaryValues[22]);
end;


procedure TfmTrafficManagment.cxGrid10DBBandedTableView1TcxGridDBDataControllerTcxDataSummaryFooterSummaryItems16GetText(Sender: TcxDataSummaryItem; const AValue: Variant; AIsFooter: Boolean; var AText: string);
begin
  // ------ "Сумма "/"Кол-во вагонов"
  if (cxGrid10DBBandedTableView1.DataController.Summary.FooterSummaryValues[26] = null) OR
    (cxGrid10DBBandedTableView1.DataController.Summary.FooterSummaryValues[23] = null) OR
    (cxGrid10DBBandedTableView1.DataController.Summary.FooterSummaryValues[23] = 0)
    then exit
  else
    AText := FormatFloat('средн=#.##0.00', cxGrid10DBBandedTableView1.DataController.Summary.FooterSummaryValues[26] /
                                           cxGrid10DBBandedTableView1.DataController.Summary.FooterSummaryValues[23]);
end;

procedure TfmTrafficManagment.cxGrid10DBBandedTableView1TcxGridDBDataControllerTcxDataSummaryFooterSummaryItems19GetText(Sender: TcxDataSummaryItem; const AValue: Variant; AIsFooter: Boolean; var AText: string);
begin
  if (cxGrid10DBBandedTableView1.DataController.Summary.FooterSummaryValues[17] = null) OR
    (cxGrid10DBBandedTableView1.DataController.Summary.FooterSummaryValues[18] = null) OR
    (cxGrid10DBBandedTableView1.DataController.Summary.FooterSummaryValues[18] = 0)
    then exit
  else
    AText := FormatFloat('средн=#.##0.00', cxGrid10DBBandedTableView1.DataController.Summary.FooterSummaryValues[17] /
                                           cxGrid10DBBandedTableView1.DataController.Summary.FooterSummaryValues[18]);
end;

procedure TfmTrafficManagment.cxGrid10DBBandedTableView1TcxGridDBDataControllerTcxDataSummaryFooterSummaryItems21GetText(Sender: TcxDataSummaryItem; const AValue: Variant; AIsFooter: Boolean; var AText: string);
begin
  if (cxGrid10DBBandedTableView1.DataController.Summary.FooterSummaryValues[27] = null) OR
      (cxGrid10DBBandedTableView1.DataController.Summary.FooterSummaryValues[24] = null) OR
      (cxGrid10DBBandedTableView1.DataController.Summary.FooterSummaryValues[24] = 0)
      then exit
  else
    AText := FormatFloat('средн=#.##0.00', cxGrid10DBBandedTableView1.DataController.Summary.FooterSummaryValues[27] /
                                             cxGrid10DBBandedTableView1.DataController.Summary.FooterSummaryValues[24]);


end;

procedure TfmTrafficManagment.cxGrid1DBBandedTableView1CustomDrawCell(Sender: TcxCustomGridTableView; ACanvas: TcxCanvas; AViewInfo: TcxGridTableDataCellViewInfo; var ADone: Boolean);
begin

  if AViewInfo.GridRecord.Selected or AViewInfo.GridRecord.Focused then begin
    ACanvas.Brush.Color := clNavy;
    ACanvas.Font.Color := clWhite;
    if AViewInfo.Focused then ACanvas.Brush.Color := clBlue;
  end;

  //4.1
  if (Sender = cxGrid8DBBandedTableView1) then begin
     if (cxGrid8DBBandedTableView1avg_sum_dr.Index = AViewInfo.Item.ID) then begin
       if (AViewInfo.GridRecord.Values[cxGrid8DBBandedTableView1avg_sum_dr.Index] < FN_1_4_1 ) then
         ACanvas.Font.Color := clGreen;

       if (AViewInfo.GridRecord.Values[cxGrid8DBBandedTableView1avg_sum_dr.Index] = FN_1_4_1 ) then
         ACanvas.Font.Color := RGB(255,128,0);

       if (AViewInfo.GridRecord.Values[cxGrid8DBBandedTableView1avg_sum_dr.Index] > FN_1_4_1 ) then begin
         ACanvas.Font.Color := clRed;
         ACanvas.Font.Style := [fsBold];
       end;
     end;

     if (cxGrid8DBBandedTableView1avg_sum_pdr.Index = AViewInfo.Item.ID) then begin
       if (AViewInfo.GridRecord.Values[cxGrid8DBBandedTableView1avg_sum_pdr.Index] < FN_1_4_2 ) then
         ACanvas.Font.Color := clGreen;

       if (AViewInfo.GridRecord.Values[cxGrid8DBBandedTableView1avg_sum_pdr.Index] = FN_1_4_2 ) then
         ACanvas.Font.Color := RGB(255,128,0);

       if (AViewInfo.GridRecord.Values[cxGrid8DBBandedTableView1avg_sum_pdr.Index] > FN_1_4_2 ) then begin
         ACanvas.Font.Color := clRed;
         ACanvas.Font.Style := [fsBold];
       end;
     end;

     if (cxGrid8DBBandedTableView1sum_avg_sum_pdr.Index = AViewInfo.Item.ID) then begin
       if (AViewInfo.GridRecord.Values[cxGrid8DBBandedTableView1sum_avg_sum_pdr.Index] < (FN_1_4_1 + FN_1_4_2) ) then
         ACanvas.Font.Color := clGreen;

       if (AViewInfo.GridRecord.Values[cxGrid8DBBandedTableView1sum_avg_sum_pdr.Index] = (FN_1_4_1 + FN_1_4_2) ) then
         ACanvas.Font.Color := RGB(255,128,0);

       if (AViewInfo.GridRecord.Values[cxGrid8DBBandedTableView1sum_avg_sum_pdr.Index] > (FN_1_4_1 + FN_1_4_2) ) then begin
         ACanvas.Font.Color := clRed;
         ACanvas.Font.Style := [fsBold];
       end;
     end;

  end;

  if (Sender = cxGrid1DBBandedTableView1) then begin

    if (cxGrid1DBBandedTableView1before_count_stay.Index = AViewInfo.Item.ID) then begin
      if (AViewInfo.GridRecord.Values[cxGrid1DBBandedTableView1before_count_stay.Index] < 2 ) then
        ACanvas.Font.Color := clGreen;

      if (AViewInfo.GridRecord.Values[cxGrid1DBBandedTableView1before_count_stay.Index] = 2 ) then
        ACanvas.Font.Color := RGB(255,128,0);

      if (AViewInfo.GridRecord.Values[cxGrid1DBBandedTableView1before_count_stay.Index] > 2 ) then begin
        ACanvas.Font.Color := clRed;
        ACanvas.Font.Style := [fsBold];
      end;
    end;


    if (cxGrid1DBBandedTableView1in_count_stay.Index = AViewInfo.Item.ID) then begin
      if (AViewInfo.GridRecord.Values[cxGrid1DBBandedTableView1in_count_stay.Index] < 6 ) then
        ACanvas.Font.Color := clGreen;

      if (AViewInfo.GridRecord.Values[cxGrid1DBBandedTableView1in_count_stay.Index] = 6 ) then
        ACanvas.Font.Color := RGB(255,128,0);

      if (AViewInfo.GridRecord.Values[cxGrid1DBBandedTableView1in_count_stay.Index] > 6 ) then begin
        ACanvas.Font.Color := clRed;
        ACanvas.Font.Style := [fsBold];
      end;
    end;

    if (cxGrid1DBBandedTableView1after_count_stay.Index = AViewInfo.Item.ID) then begin
      if (AViewInfo.GridRecord.Values[cxGrid1DBBandedTableView1after_count_stay.Index] < 3 ) then
        ACanvas.Font.Color := clGreen;

      if (AViewInfo.GridRecord.Values[cxGrid1DBBandedTableView1after_count_stay.Index] = 3 ) then
        ACanvas.Font.Color := RGB(255,128,0);

      if (AViewInfo.GridRecord.Values[cxGrid1DBBandedTableView1after_count_stay.Index] > 3 ) then begin
        ACanvas.Font.Color := clRed;
        ACanvas.Font.Style := [fsBold];
      end;
    end;

    if (cxGrid1DBBandedTableView1total_count_stay.Index = AViewInfo.Item.ID) then begin
      if (AViewInfo.GridRecord.Values[cxGrid1DBBandedTableView1total_count_stay.Index] < 11 ) then
        ACanvas.Font.Color := clGreen;

      if (AViewInfo.GridRecord.Values[cxGrid1DBBandedTableView1total_count_stay.Index] = 11 ) then
        ACanvas.Font.Color := RGB(255,128,0);

      if (AViewInfo.GridRecord.Values[cxGrid1DBBandedTableView1total_count_stay.Index] > 11 ) then begin
        ACanvas.Font.Color := clRed;
        ACanvas.Font.Style := [fsBold];
      end;
    end;

    if (AViewInfo.GridRecord.Values[cxGrid1DBBandedTableView1before_count_stay.Index] > 2 )
    and (AViewInfo.GridRecord.Values[cxGrid1DBBandedTableView1in_count_stay.Index] > 6 )
    and (AViewInfo.GridRecord.Values[cxGrid1DBBandedTableView1after_count_stay.Index] > 3 )then
      if (cxGrid1DBBandedTableView1road_name.Index = AViewInfo.Item.ID) then begin
       ACanvas.Font.Color := clRed;
      end;

  end;

  if (Sender = cxGrid16DBBandedTableView1) then begin
     if (cxGrid16DBBandedavg_rep.Index = AViewInfo.Item.ID) then begin
       if (AViewInfo.GridRecord.Values[cxGrid16DBBandedavg_rep.Index] < 8 ) then
         ACanvas.Font.Color := clGreen;

       if (AViewInfo.GridRecord.Values[cxGrid16DBBandedavg_rep.Index] = 8 ) then
         ACanvas.Font.Color := RGB(255,128,0);

       if (AViewInfo.GridRecord.Values[cxGrid16DBBandedavg_rep.Index] > 8 ) then begin
         ACanvas.Font.Color := clRed;
         ACanvas.Font.Style := [fsBold];
       end;
     end;
  end;

  //1.3
  if (Sender = cxGrid6DBBandedTableView1) then begin
   if (cxGrid6DBBandedTableView1AVG_sum.Index = AViewInfo.Item.ID) then begin
     if (AViewInfo.GridRecord.Values[cxGrid6DBBandedTableView1AVG_sum.Index] < FN_1_3_1 ) then
       ACanvas.Font.Color := clGreen;

     if (AViewInfo.GridRecord.Values[cxGrid6DBBandedTableView1AVG_sum.Index] = FN_1_3_1 ) then
       ACanvas.Font.Color := RGB(255,128,0);

     if (AViewInfo.GridRecord.Values[cxGrid6DBBandedTableView1AVG_sum.Index] > FN_1_3_1 ) then begin
       ACanvas.Font.Color := clRed;
       ACanvas.Font.Style := [fsBold];
     end;
   end;
  end;
  //1.5
  if (Sender = cxGrid10DBBandedTableView1) then begin
   if (cxGrid10DBBandedTableView1avg_sum.Index = AViewInfo.Item.ID) then begin
     if (AViewInfo.GridRecord.Values[cxGrid10DBBandedTableView1avg_sum.Index] < FN_1_5_1 ) then
       ACanvas.Font.Color := clGreen;

     if (AViewInfo.GridRecord.Values[cxGrid10DBBandedTableView1avg_sum.Index] = FN_1_5_1 ) then
       ACanvas.Font.Color := RGB(255,128,0);

     if (AViewInfo.GridRecord.Values[cxGrid10DBBandedTableView1avg_sum.Index] > FN_1_5_1 ) then begin
       ACanvas.Font.Color := clRed;
       ACanvas.Font.Style := [fsBold];
     end;
   end;
  end;
  //1.6
  if (Sender = cxGrid10DBBandedTableView1) then begin
   if (cxGrid12DBBandedTableView1sum_avg_sum_pdr.Index = AViewInfo.Item.ID) then begin
     if (AViewInfo.GridRecord.Values[cxGrid12DBBandedTableView1sum_avg_sum_pdr.Index] < FN_1_6_1 ) then
       ACanvas.Font.Color := clGreen;

     if (AViewInfo.GridRecord.Values[cxGrid12DBBandedTableView1sum_avg_sum_pdr.Index] = FN_1_6_1 ) then
       ACanvas.Font.Color := RGB(255,128,0);

     if (AViewInfo.GridRecord.Values[cxGrid12DBBandedTableView1sum_avg_sum_pdr.Index] > FN_1_6_1 ) then begin
       ACanvas.Font.Color := clRed;
       ACanvas.Font.Style := [fsBold];
     end;
   end;
  end;
end;

procedure TfmTrafficManagment.cxGrid1DBBandedTableView1CustomDrawColumnHeader(Sender: TcxGridTableView; ACanvas: TcxCanvas; AViewInfo: TcxGridColumnHeaderViewInfo; var ADone: Boolean);
begin
  if AViewInfo.Column.Focused then begin
    ACanvas.Brush.Color := clNavy;
    ACanvas.Font.Color := clWhite;
  end;
end;

procedure TfmTrafficManagment.cxGrid1DBBandedTableView1DataControllerFilterChanged(Sender: TObject);
begin
  DrawcxGridColumnOnFiltered(Sender);
end;

procedure TfmTrafficManagment.cxGrid1DBBandedTableView1FocusedItemChanged(Sender: TcxCustomGridTableView; APrevFocusedItem, AFocusedItem: TcxCustomGridTableItem);
begin
  cxGrid1DBBandedTableView1.Painter.Invalidate;
end;

procedure TfmTrafficManagment.cxGrid1DBBandedTableView1KeyPress(Sender: TObject; var Key: Char);
begin
  FilterColumnGridOnKeyPress(cxGrid1DBBandedTableView1, Key);
end;

procedure TfmTrafficManagment.cxGrid2DBBandedTableView1KeyPress(Sender: TObject;var Key: Char);
begin
  FilterColumnGridOnKeyPress(cxGrid2DBBandedTableView1, Key);
end;

procedure TfmTrafficManagment.cxGrid2DBBandedTableView2CustomDrawCell(Sender: TcxCustomGridTableView; ACanvas: TcxCanvas;AViewInfo: TcxGridTableDataCellViewInfo; var ADone: Boolean);
begin
  if AViewInfo.GridRecord.Selected or AViewInfo.GridRecord.Focused then begin
    ACanvas.Brush.Color := clNavy;
    ACanvas.Font.Color := clWhite;
    if AViewInfo.Focused then ACanvas.Brush.Color := clBlue;
  end;

end;

procedure TfmTrafficManagment.cxGrid2DBBandedTableView2KeyPress(Sender: TObject; var Key: Char);
begin
   //FilterColumnGridOnKeyPress(cxGrid2DBBandedTableView2, Key);
end;

procedure TfmTrafficManagment.cxGrid3DBBandedTableView1KeyPress(Sender: TObject;  var Key: Char);
begin
 //FilterColumnGridOnKeyPress(cxGrid3DBBandedTableView1, Key);
end;

procedure TfmTrafficManagment.cxGrid4DBBandedTableView1KeyPress(Sender: TObject;var Key: Char);
begin
  FilterColumnGridOnKeyPress(cxGrid4DBBandedTableView1, Key);
end;

procedure TfmTrafficManagment.cxGrid5DBBandedTableView1KeyPress(Sender: TObject;var Key: Char);
begin
  FilterColumnGridOnKeyPress(cxGrid5DBBandedTableView1, Key);
end;

procedure TfmTrafficManagment.cxGrid6DBBandedTableView1TcxGridDBDataControllerTcxDataSummaryFooterSummaryItems13GetText(Sender: TcxDataSummaryItem; const AValue: Variant; AIsFooter: Boolean; var AText: string);
begin
  if (cxGrid6DBBandedTableView1.DataController.Summary.FooterSummaryValues[12] = null) OR
    (cxGrid6DBBandedTableView1.DataController.Summary.FooterSummaryValues[11] = null) OR
    (cxGrid6DBBandedTableView1.DataController.Summary.FooterSummaryValues[11] = 0)
    then exit
  else
    AText := FormatFloat('средн=# ##0.00', cxGrid6DBBandedTableView1.DataController.Summary.FooterSummaryValues[12] /
                                           cxGrid6DBBandedTableView1.DataController.Summary.FooterSummaryValues[11]);
end;

procedure TfmTrafficManagment.cxGrid8DBBandedTableView1TcxGridDBDataControllerTcxDataSummaryFooterSummaryItems15GetText(Sender: TcxDataSummaryItem; const AValue: Variant; AIsFooter: Boolean;var AText: string);
begin
  if (cxGrid8DBBandedTableView1.DataController.Summary.FooterSummaryValues[22] = null) OR
     (cxGrid8DBBandedTableView1.DataController.Summary.FooterSummaryValues[24] = null) OR
     (cxGrid8DBBandedTableView1.DataController.Summary.FooterSummaryValues[24] = 0)
     then exit
  else
    AText := FormatFloat('средн=# ##0.00', cxGrid8DBBandedTableView1.DataController.Summary.FooterSummaryValues[22] /
                                           cxGrid8DBBandedTableView1.DataController.Summary.FooterSummaryValues[24]);
end;

procedure TfmTrafficManagment.cxGrid8DBBandedTableView1TcxGridDBDataControllerTcxDataSummaryFooterSummaryItems16GetText(Sender: TcxDataSummaryItem; const AValue: Variant; AIsFooter: Boolean;var AText: string);
begin
   if (cxGrid8DBBandedTableView1.DataController.Summary.FooterSummaryValues[23] = null) OR
      (cxGrid8DBBandedTableView1.DataController.Summary.FooterSummaryValues[21] = null) OR
      (cxGrid8DBBandedTableView1.DataController.Summary.FooterSummaryValues[21] = 0)
      then exit
   else
     AText := FormatFloat('средн=# ##0.00', cxGrid8DBBandedTableView1.DataController.Summary.FooterSummaryValues[23] /
                                             cxGrid8DBBandedTableView1.DataController.Summary.FooterSummaryValues[21]);
end;

procedure TfmTrafficManagment.cxGrid8DBBandedTableView1TcxGridDBDataControllerTcxDataSummaryFooterSummaryItems19GetText(Sender: TcxDataSummaryItem; const AValue: Variant; AIsFooter: Boolean;var AText: string);
begin
   if (cxGrid8DBBandedTableView1.DataController.Summary.FooterSummaryValues[17] = null) OR
      (cxGrid8DBBandedTableView1.DataController.Summary.FooterSummaryValues[18] = null) OR
      (cxGrid8DBBandedTableView1.DataController.Summary.FooterSummaryValues[18] = 0)
      then exit
   else
     AText := FormatFloat('средн=# ##0.00', cxGrid8DBBandedTableView1.DataController.Summary.FooterSummaryValues[17] /
                                             cxGrid8DBBandedTableView1.DataController.Summary.FooterSummaryValues[18]);
end;


procedure TfmTrafficManagment.cxGridDBBandedTableView1TcxGridDBDataControllerTcxDataSummaryFooterSummaryItems20GetText(Sender: TcxDataSummaryItem; const AValue: Variant; AIsFooter: Boolean; var AText: string);
begin
   if (cxGrid10DBBandedTableView1.DataController.Summary.FooterSummaryValues[17] = null) OR
      (cxGrid10DBBandedTableView1.DataController.Summary.FooterSummaryValues[19] = null) OR
      (cxGrid10DBBandedTableView1.DataController.Summary.FooterSummaryValues[19] = 0)
      then exit
   else
     AText := FormatFloat('средн=# ##0.00', cxGrid10DBBandedTableView1.DataController.Summary.FooterSummaryValues[17] /
                                             cxGrid10DBBandedTableView1.DataController.Summary.FooterSummaryValues[19]);
end;

procedure TfmTrafficManagment.cxGrid16DBBandedTableView1TcxGridDBDataControllerTcxDataSummaryFooterSummaryItems13GetText(Sender: TcxDataSummaryItem; const AValue: Variant; AIsFooter: Boolean;var AText: string);
begin
if (cxGrid16DBBandedTableView1.DataController.Summary.FooterSummaryValues[12] = null) OR
      (cxGrid16DBBandedTableView1.DataController.Summary.FooterSummaryValues[11] = null) OR
      (cxGrid16DBBandedTableView1.DataController.Summary.FooterSummaryValues[11] = 0)
      then exit
   else
     AText := FormatFloat('средн=# ##0.00', cxGrid16DBBandedTableView1.DataController.Summary.FooterSummaryValues[12] /
                                             cxGrid16DBBandedTableView1.DataController.Summary.FooterSummaryValues[11]);
end;

procedure TfmTrafficManagment.cxGrid19DBBandedTableView1KeyPress(Sender: TObject; var Key: Char);
begin
   FilterColumnGridOnKeyPress(cxGrid19DBBandedTableView1, Key);
end;

procedure TfmTrafficManagment.PageControl2Change(Sender: TObject);
var d : TDateTime;
    i : integer;
begin
  Screen.Cursor := crHourglass;
  d := Now;
  SP_Reps.CommandTimeout := 600;
  SP_Info.CommandTimeout := 600;
  SP_Info2.CommandTimeout := 600;

  case PageControl2.ActivePageIndex of
    0 : begin
          SP_Reps.DisableControls;
          SP_Reps.Close;
          SP_Reps.Parameters.Refresh;
          SP_Reps.Parameters.ParamByName('@type_report'   ).Value := PageControl2.ActivePageIndex;
          SP_Reps.Parameters.ParamByName('@date_begin'    ).Value := Fdate1;
          SP_Reps.Parameters.ParamByName('@date_end'      ).Value := Fdate2;
          SP_Reps.Parameters.ParamByName('@users_group_id').Value := usr_pwd.user_group_id;
          SP_Reps.Open;
          SP_Reps.EnableControls;

          SP_Info2.DisableControls;
          SP_Info2.Recordset := SP_Reps.NextRecordset(i);
          SP_Info2.EnableControls;

          if dxBarButton34.Down then begin
            dxBarButton34Click(nil);
          end;
        end;

    1 : begin
          cxGrid4DBBandedTableView1.DataController.BeginFullUpdate;
          SP_Reps.Close;
          SP_Reps.Parameters.Refresh;
          SP_Reps.Parameters.ParamByName('@type_report').Value :=  PageControl2.ActivePageIndex;
          SP_Reps.Parameters.ParamByName('@date_begin').Value := Fdate1;
          SP_Reps.Parameters.ParamByName('@date_end').Value := Fdate2;
          SP_Reps.Parameters.ParamByName('@users_group_id').Value := usr_pwd.user_group_id;
          SP_Reps.Open;
          cxGrid4DBBandedTableView1.DataController.EndFullUpdate;

          cxGrid5DBBandedTableView1.DataController.BeginFullUpdate;
          Refresh_info;
          cxGrid5DBBandedTableView1.DataController.EndFullUpdate;
        end;

    2 : begin
          cxGrid6DBBandedTableView1.DataController.BeginFullUpdate;
          SP_Reps.Close;
          SP_Reps.Parameters.Refresh;
          SP_Reps.Parameters.ParamByName('@type_report').Value :=  PageControl2.ActivePageIndex;
          SP_Reps.Parameters.ParamByName('@date_begin').Value := Fdate1;
          SP_Reps.Parameters.ParamByName('@date_end').Value := Fdate2;
          SP_Reps.Parameters.ParamByName('@users_group_id').Value := usr_pwd.user_group_id;
          SP_Reps.Open;
          cxGrid6DBBandedTableView1.DataController.EndFullUpdate;

          if dxBarButton34.Down then begin
            cxGrid7DBBandedTableView1.DataController.BeginFullUpdate;
            dxBarButton34Click(nil);
            cxGrid7DBBandedTableView1.DataController.EndFullUpdate;
          end;
        end;

    3 : begin
          cxGrid8DBBandedTableView1.DataController.BeginFullUpdate;
          SP_Reps.Close;
          SP_Reps.Parameters.Refresh;
          SP_Reps.Parameters.ParamByName('@type_report').Value :=  PageControl2.ActivePageIndex;
          SP_Reps.Parameters.ParamByName('@date_begin').Value := Fdate1;
          SP_Reps.Parameters.ParamByName('@date_end').Value := Fdate2;
          SP_Reps.Parameters.ParamByName('@users_group_id').Value := usr_pwd.user_group_id;
          SP_Reps.Open;
          cxGrid8DBBandedTableView1.DataController.EndFullUpdate;
          if dxBarButton34.Down then begin
            cxGrid9DBBandedTableView1.DataController.BeginFullUpdate;
            dxBarButton34Click(nil);
            cxGrid9DBBandedTableView1.DataController.EndFullUpdate;
          end;
        end;

    4 : begin
          cxGrid8DBBandedTableView1.DataController.BeginFullUpdate;
          SP_Reps.Close;
          SP_Reps.Parameters.Refresh;
          SP_Reps.Parameters.ParamByName('@type_report').Value :=  PageControl2.ActivePageIndex;
          SP_Reps.Parameters.ParamByName('@date_begin').Value := Fdate1;
          SP_Reps.Parameters.ParamByName('@date_end').Value := Fdate2;
          SP_Reps.Parameters.ParamByName('@users_group_id').Value := usr_pwd.user_group_id;
          SP_Reps.Open;
          cxGrid8DBBandedTableView1.DataController.EndFullUpdate;
          if dxBarButton34.Down then begin
            cxGrid9DBBandedTableView1.DataController.BeginFullUpdate;
            dxBarButton34Click(nil);
            cxGrid9DBBandedTableView1.DataController.EndFullUpdate;
          end;
        end;

    5 : begin
          cxGrid12DBBandedTableView1.DataController.BeginFullUpdate;
          SP_Reps.Close;
          SP_Reps.Connection.CommandTimeout := 600;
          SP_Reps.Parameters.Refresh;
          SP_Reps.Parameters.ParamByName('@type_report').Value :=  PageControl2.ActivePageIndex;
          SP_Reps.Parameters.ParamByName('@date_begin').Value := Fdate1;
          SP_Reps.Parameters.ParamByName('@date_end').Value := Fdate2;
          SP_Reps.Parameters.ParamByName('@users_group_id').Value := usr_pwd.user_group_id;
          SP_Reps.Open;
          cxGrid12DBBandedTableView1.DataController.EndFullUpdate;

          if dxBarButton34.Down then begin
            cxGrid13DBBandedTableView1.DataController.BeginFullUpdate;
            dxBarButton34Click(nil);
            cxGrid13DBBandedTableView1.DataController.EndFullUpdate;
          end;
        end;

    6 : begin
          cxGrid16DBBandedTableView1.DataController.BeginFullUpdate;
          SP_Reps.Close;
          SP_Reps.Parameters.Refresh;
          SP_Reps.Parameters.ParamByName('@type_report').Value :=  PageControl2.ActivePageIndex;
          SP_Reps.Parameters.ParamByName('@date_begin').Value := Fdate1;
          SP_Reps.Parameters.ParamByName('@date_end').Value := Fdate2;
          SP_Reps.Parameters.ParamByName('@users_group_id').Value := usr_pwd.user_group_id;
          SP_Reps.Open;
          cxGrid16DBBandedTableView1.DataController.EndFullUpdate;

          if dxBarButton34.Down then begin
            cxGrid17DBBandedTableView1.DataController.BeginFullUpdate;
            dxBarButton34Click(nil);
            cxGrid17DBBandedTableView1.DataController.EndFullUpdate;
          end;
        end;

    7 : begin
          cxLabel16.Caption := 'Количество проведенных ДК, КР по ВЧДр за '+ FormatDateTime('yyyy', Fdate1) + ' год';
          cxGrid18DBBandedTableView1.DataController.BeginFullUpdate;
          SP_Reps.Close;
          SP_Reps.Connection.CommandTimeout := 600;
          SP_Reps.Parameters.Refresh;
          SP_Reps.Parameters.ParamByName('@type_report').Value := PageControl2.ActivePageIndex;
          SP_Reps.Parameters.ParamByName('@date_begin').Value  := StartOfTheYear(Fdate1);
          SP_Reps.Parameters.ParamByName('@date_end').Value    := EndOfTheYear(Fdate1);
          SP_Reps.Parameters.ParamByName('@users_group_id').Value := usr_pwd.user_group_id;
          SP_Reps.Open;
          cxGrid18DBBandedTableView1.DataController.EndFullUpdate;

          cxLabel18.Caption := 'Количество проведенных ДК, КР по владельцам за '+ FormatDateTime('yyyy', Fdate1) + ' год';

          SP_Info2.DisableControls;
          SP_Info2.Recordset := SP_Reps.NextRecordset(i);
          SP_Info2.EnableControls;

          if dxBarButton34.Down then begin
            dxBarButton34Click(nil);
          end;
        end;

    8 : begin
          cxGrid21DBBandedTableView1.DataController.BeginFullUpdate;
          SP_Reps.Close;
          SP_Reps.Connection.CommandTimeout := 600;
          SP_Reps.Parameters.Refresh;
          SP_Reps.Parameters.ParamByName('@type_report').Value := PageControl2.ActivePageIndex;
          SP_Reps.Parameters.ParamByName('@date_begin').Value  := Fdate1;
          SP_Reps.Parameters.ParamByName('@date_end').Value    := Fdate2;
          SP_Reps.Parameters.ParamByName('@users_group_id').Value := usr_pwd.user_group_id;
          SP_Reps.Open;
          cxGrid21DBBandedTableView1.DataController.EndFullUpdate;

          if dxBarButton34.Down then begin
            cxGrid22DBBandedTableView1.DataController.BeginFullUpdate;
            dxBarButton34Click(nil);
            cxGrid22DBBandedTableView1.DataController.EndFullUpdate;
          end;
        end;

    9 : begin
          cxGrid21DBBandedTableView1.DataController.BeginFullUpdate;
          SP_Reps.Close;
          SP_Reps.Connection.CommandTimeout := 600;
          SP_Reps.Parameters.Refresh;
          SP_Reps.Parameters.ParamByName('@type_report').Value := PageControl2.ActivePageIndex;
          SP_Reps.Parameters.ParamByName('@date_begin').Value  := Fdate1;
          SP_Reps.Parameters.ParamByName('@date_end').Value    := Fdate2;
          SP_Reps.Parameters.ParamByName('@users_group_id').Value := usr_pwd.user_group_id;
          SP_Reps.Open;
          cxGrid21DBBandedTableView1.DataController.EndFullUpdate;

        end;
      end;

  dxBarSubItem3.Caption := PeriodToStr(Fdate1, Fdate2, True);
  fmMain.dxStatusBar1.Panels[3].Text := IntToStr(SecondsBetween(now, d)) + ' сек.';
  Screen.Cursor := crDefault;
end;

procedure TfmTrafficManagment.Refresh_info();
begin
  Screen.Cursor := crHourglass;
  SP_Info.DisableControls;
  SP_Info.Close;
  SP_Info.Parameters.Refresh;
  SP_Info.Parameters.ParamByName('@type_report'   ).Value := PageControl2.ActivePageIndex + 100;
  SP_Info.Parameters.ParamByName('@date_begin'    ).Value := Fdate1;
  SP_Info.Parameters.ParamByName('@date_end'      ).Value := Fdate2;
  SP_Info.Parameters.ParamByName('@users_group_id').Value := usr_pwd.user_group_id;
  SP_Info.Open;
  SP_Info.EnableControls;
  Screen.Cursor := crDefault;
end;

procedure TfmTrafficManagment.SetActivePageIdex(page_idex: integer);
begin
  PageControl2.OnChange := nil;
  PageControl2.ActivePageIndex := page_idex;
  PageControl2.OnChange := PageControl2Change;
  PageControl2Change(nil);
end;

{$REGION 'Фильтр по всем записям'}
procedure TfmTrafficManagment.dxBarButton_FilterRecords1Click(Sender: TObject);
begin
  cxGrid1DBBandedTableView1.Filtering.ColumnFilteredItemsList := not dxBarButton_FilterRecords1.Down;
end;

procedure TfmTrafficManagment.dxBarSubItem2Click(Sender: TObject);
begin

end;

{$ENDREGION 'Фильтр по всем записям'}

procedure TfmTrafficManagment.Excel3Click(Sender: TObject);
begin
  PrintcxGrid(cxGrid1DBBandedTableView1);
end;

procedure TfmTrafficManagment.N14Click(Sender: TObject);
begin
   SetdxDBGridColumns(cxGrid1DBBandedTableView1);
end;

procedure TfmTrafficManagment.N74Click(Sender: TObject);
begin
  cxGrid1DBBandedTableView1.OptionsView.GroupByBox := not cxGrid1DBBandedTableView1.OptionsView.GroupByBox;
end;


procedure TfmTrafficManagment.ToolButton12Click(Sender: TObject);
begin
  Close;
end;

procedure TfmTrafficManagment.dxBarButton12Click(Sender: TObject);
begin
  PrintcxGrid(cxGrid1DBBandedTableView1);
end;

procedure TfmTrafficManagment.dxBarButton14Click(Sender: TObject);
begin
 PrintcxGrid(cxGrid19DBBandedTableView1);
end;

procedure TfmTrafficManagment.dxBarButton16Click(Sender: TObject);
var QuerySettings : Variant;
                i : integer;
    str_num_vagon : string;
               qs : TStringList;
     _fmFactTrack : TfmFactTrack;
begin

  qs := TStringList.Create;
  qs.Add('SELECT * FROM view_fact_track_vagon WHERE users_group_id = ' + IntToStr(usr_pwd.user_group_id));
  qs.Add(' AND num_vagon = ' + cxGrid4DBBandedTableView1num_vagon.DataBinding.Field.AsString);
  qs.Add(' AND date_otpr > ' + DateToSQL(Fdate1-60));
  QuerySettings :=  VarArrayOf([0, qs.Text, '']);
  qs.Free;

  Screen.Cursor := crHourglass;
  for i:=0 to MDIChildCount-1 Do
    if (MDIChildren[i].ClassName='TfmFactTrack') then
      MDIChildren[i].Free;
  _fmFactTrack := TfmFactTrack.Create(Application, False, 0);
  _fmFactTrack._SetVagonSQL := QuerySettings;
  Screen.Cursor := crDefault;
end;

procedure TfmTrafficManagment.dxBarButton17Click(Sender: TObject);
type
  TFunc = function(AppHand:THandle) : Variant;
var                List : TStringList;
                      i : integer;
cxGridDBBandedTableView : TcxGridDBBandedTableView;
                 FDic   : TFunc;
                 handle : THandle;
                 v      : Variant;
                 str    : string;
begin
  cxGridDBBandedTableView := cxGrid19DBBandedTableView1;

  handle := LoadLibrary('dictionary.dll');
  @FDic := GetProcAddress(handle, 'CreateWndChoose');
  v := FDic(Application.Handle);
  str := v[0];
  List := TStringList.Create;
  List.Text := str;
  FreeLibrary(handle);

  cxGridDBBandedTableView.DataController.DataSet.DisableControls;

  with cxGridDBBandedTableView.DataController.Filter do begin
    Clear;
    Options := Options + [fcoCaseInsensitive];
    Root.BoolOperatorKind := fboOr;
    BeginUpdate;
    for i := 0 to List.Count - 1 do if (Trim(List.Strings[i])<>'') then
      Root.AddItem(cxGridDBBandedTableView.GetColumnByFieldName('num_vagon'), foEqual, Trim(List.Strings[i]),Trim(List.Strings[i]) );
    EndUpdate;
    Active := True;
  end;
  cxGridDBBandedTableView.DataController.DataSet.EnableControls;
  List.Free;
  Screen.Cursor := crDefault;
end;

procedure TfmTrafficManagment.dxBarButton18Click(Sender: TObject);
begin
  PrintcxGrid(cxGrid8DBBandedTableView1);
end;

procedure TfmTrafficManagment.dxBarButton19Click(Sender: TObject);
begin
  PrintcxGrid(cxGrid10DBBandedTableView1);
end;

procedure TfmTrafficManagment.dxBarButton1Click(Sender: TObject);
begin
  PrintcxGrid(cxGrid3DBBandedTableView1);
end;

procedure TfmTrafficManagment.dxBarButton20Click(Sender: TObject);
begin
  fmPeriod := TfmPeriod.Create(Application, Fdate1, Fdate1, 3);
  if fmPeriod.ShowModal = mrOk then begin
    Fdate1 := fmPeriod._GetMonth;
    Fdate2 := IncMonth(Fdate1, 1)-1;
    dxBarButton2Click(nil);
    dxBarSubItem3.Caption := PeriodToStr(Fdate1, Fdate2, True);
    GetNorm;
  end;
end;

procedure TfmTrafficManagment.dxBarButton21Click(Sender: TObject);
begin
  PrintcxGrid(cxGrid16DBBandedTableView1);
end;

procedure TfmTrafficManagment.dxBarButton22Click(Sender: TObject);
begin
  PrintcxGrid(cxGrid18DBBandedTableView1);
end;

procedure TfmTrafficManagment.dxBarButton4Click(Sender: TObject);
begin
  fmPeriod := TfmPeriod.Create(Application, Fdate1, Fdate2,TComponent(Sender).Tag);
  if fmPeriod.ShowModal=mrOK then begin
    Screen.Cursor := crHourglass;
    Fdate1 := fmPeriod._GetDateBegin;
    Fdate2 := fmPeriod._GetDateEnd;
    dxBarButton2Click(nil);
    Screen.Cursor := crDefault;
    dxBarSubItem3.Caption := PeriodToStr(Fdate1, Fdate2, True);
  end;
end;

procedure TfmTrafficManagment.dxBarButton5Click(Sender: TObject);
begin
  PrintcxGrid(cxGrid4DBBandedTableView1);
end;

procedure TfmTrafficManagment.dxBarButton6Click(Sender: TObject);
begin
  PrintcxGrid(cxGrid5DBBandedTableView1);
end;

procedure TfmTrafficManagment.dxBarButton7Click(Sender: TObject);
begin
PrintcxGrid(cxGrid6DBBandedTableView1);
end;

procedure TfmTrafficManagment.dxBarButton8Click(Sender: TObject);
begin
  PrintcxGrid(cxGrid9DBBandedTableView1);
end;

procedure TfmTrafficManagment.dxBarButton9Click(Sender: TObject);
begin
  cxGrid6DBBandedTableView1.OptionsView.GroupByBox := not cxGrid6DBBandedTableView1.OptionsView.GroupByBox;
end;

procedure TfmTrafficManagment.dxBarButton23Click(Sender: TObject);
begin
  // SetdxDBGridColumns(cxGrid2DBBandedTableView2);
end;

procedure TfmTrafficManagment.dxBarButton24Click(Sender: TObject);
begin
 // cxGrid2DBBandedTableView2.OptionsView.GroupByBox := not cxGrid2DBBandedTableView2.OptionsView.GroupByBox;
end;

procedure TfmTrafficManagment.dxBarButton26Click(Sender: TObject);
begin
  PrintcxGrid(cxGrid21DBBandedTableView1);
end;

procedure TfmTrafficManagment.dxBarButton27Click(Sender: TObject);
begin
  PrintcxGrid(cxGrid12DBBandedTableView1);
end;

procedure TfmTrafficManagment.dxBarButton2Click(Sender: TObject);
begin
  PageControl2Change(nil);
end;

procedure TfmTrafficManagment.dxBarButton30Click(Sender: TObject);
begin
  PrintcxGrid(cxGrid13DBBandedTableView1);
end;

procedure TfmTrafficManagment.dxBarButton31Click(Sender: TObject);
begin
  PrintcxGrid(cxGrid17DBBandedTableView1);
end;

procedure TfmTrafficManagment.dxBarButton32Click(Sender: TObject);
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

procedure TfmTrafficManagment.dxBarButton34Click(Sender: TObject);
begin
  Screen.Cursor := crHourglass;
  case PageControl2.ActivePageIndex of
     0 : begin
        if dxBarButton34.Down then begin
         GroupBox1.Visible := True;
         Splitter1.Visible := True;
         Refresh_info;
        end else begin
         GroupBox1.Visible := False;
         Splitter1.Visible := False;
        end;
     end;
     1 : begin
      ///
     end;
     2 : begin
        if dxBarButton34.Down then begin
         Panel5.Visible    := True;
         Splitter2.Visible := True;
         Refresh_info;
        end else begin
         Panel5.Visible    := False;
         Splitter2.Visible := False;
        end;
     end;
     3 : begin
        if dxBarButton34.Down then begin
         Panel7.Visible    := True;
         Splitter5.Visible := True;
         Refresh_info;
        end else begin
         Panel7.Visible    := False;
         Splitter5.Visible := False;
        end;
     end;
     4 : begin
        if dxBarButton34.Down then begin
         Panel9.Visible    := True;
         Splitter6.Visible := True;
         Refresh_info;
        end else begin
         Panel9.Visible    := False;
         Splitter6.Visible := False;
        end;
     end;
     5 : begin
        if dxBarButton34.Down then begin
         Panel11.Visible    := True;
         Splitter7.Visible := True;
         Refresh_info;
        end else begin
         Panel11.Visible    := False;
         Splitter7.Visible := False;
        end;
     end;
     6 : begin
        if dxBarButton34.Down then begin
         Panel13.Visible    := True;
         Splitter8.Visible := True;
         Refresh_info;
        end else begin
         Panel13.Visible    := False;
         Splitter8.Visible := False;
        end;
     end;
     7 : begin
        if dxBarButton34.Down then begin
         Panel15.Visible    := True;
         Splitter9.Visible := True;
         Refresh_info;
        end else begin
         Panel15.Visible    := False;
         Splitter9.Visible := False;
        end;
     end;
       8 : begin
        if dxBarButton34.Down then begin
         Panel17.Visible    := True;
         Splitter11.Visible := True;
         Refresh_info;
        end else begin
         Panel17.Visible    := False;
         Splitter11.Visible := False;
        end;
     end;
  end;
  Screen.Cursor := crDefault;
end;

procedure TfmTrafficManagment.dxBarButton35Click(Sender: TObject);
begin
  PrintcxGrid(cxGrid15DBBandedTableView1);
end;

procedure TfmTrafficManagment.dxBarButton3Click(Sender: TObject);
begin
  PrintcxGrid(cxGrid2DBBandedTableView1);
end;

procedure TfmTrafficManagment.dxBarButton29Click(Sender: TObject);
begin
  Screen.Cursor := crHourglass;
  if TControl(Sender).Tag = 1 then begin
    Fdate1 := IncMonth(Fdate1, -1);
  end;

  if TControl(Sender).Tag = 2 then begin
    Fdate1 := IncMonth(Fdate1, 1);
  end;

  Fdate2 := IncMonth(Fdate1, 1) - 1;
  dxBarButton2Click(nil);
  dxBarSubItem3.Caption := PeriodToStr(Fdate1, Fdate2, True);

  Screen.Cursor := crDefault;
end;

end.
