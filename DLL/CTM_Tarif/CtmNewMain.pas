unit CtmNewMain;

interface

uses
  RailTariff_TLB, TariffSupportFunctions, Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Default, dxBar, ImgList, cxGraphics, cxClasses, cxControls, dxCore,
  cxLookAndFeels, cxLookAndFeelPainters, cxContainer, cxEdit, cxLabel, ExtCtrls,
  DB, DBClient, Menus, cxDropDownEdit, cxSpinEdit, StdCtrls, cxButtons,
  ComCtrls, ToolWin, cxTextEdit, cxMaskEdit, cxCalendar, cxPropertiesStore,
  ADODB, cxCustomData, cxStyles, cxTL, cxTLdxBarBuiltInMenu, cxFilter, cxData,
  cxDataStorage, cxDBData, cxCurrencyEdit, cxCheckBox, cxImageComboBox,
  cxCustomPivotGrid, cxDBPivotGrid, cxCheckListBox, cxGridLevel,
  cxGridCustomTableView, cxGridTableView, cxGridBandedTableView,
  cxGridDBBandedTableView, cxGridCustomView, cxGrid, cxInplaceContainer, cxPC,
  Buttons, cxSplitter, cxMemo, Other, cxExportPivotGridLink, ShellApi, dxGDIPlusClasses,
  dxGDIPlusAPI, DateUtils, dxSkinsCore, dxSkinBlack, dxSkinBlue,
  dxSkinBlueprint, dxSkinCaramel, dxSkinCoffee, dxSkinDarkRoom, dxSkinDarkSide,
  dxSkinDevExpressDarkStyle, dxSkinDevExpressStyle, dxSkinFoggy,
  dxSkinGlassOceans, dxSkinHighContrast, dxSkiniMaginary, dxSkinLilian,
  dxSkinLiquidSky, dxSkinLondonLiquidSky, dxSkinMcSkin, dxSkinMetropolis,
  dxSkinMetropolisDark, dxSkinMoneyTwins, dxSkinOffice2007Black,
  dxSkinOffice2007Blue, dxSkinOffice2007Green, dxSkinOffice2007Pink,
  dxSkinOffice2007Silver, dxSkinOffice2010Black, dxSkinOffice2010Blue,
  dxSkinOffice2010Silver, dxSkinOffice2013DarkGray, dxSkinOffice2013LightGray,
  dxSkinOffice2013White, dxSkinPumpkin, dxSkinSeven, dxSkinSevenClassic,
  dxSkinSharp, dxSkinSharpPlus, dxSkinSilver, dxSkinSpringTime, dxSkinStardust,
  dxSkinSummer2008, dxSkinTheAsphaltWorld, dxSkinsDefaultPainters,
  dxSkinValentine, dxSkinVS2010, dxSkinWhiteprint, dxSkinXmas2008Blue,
  cxDateUtils, dxSkinscxPCPainter, dxBarBuiltInMenu, cxNavigator,
  dxSkinsdxBarPainter, ComObj, dxSkinOffice2016Colorful, dxSkinOffice2016Dark,
  dxSkinVisualStudio2013Blue, dxSkinVisualStudio2013Dark, Xml.XMLDoc, Vcl.Clipbrd,
  dxSkinVisualStudio2013Light, System.ImageList, dxSkinsForm, cxDBTL, cxTLData,
  cxImageList, cxButtonEdit, cxEditRepositoryItems,
  cxDataControllerConditionalFormattingRulesManagerDialog, cxCustomListBox,
  dxSkinTheBezier, dxDateRanges, Raznoe, dxScrollbarAnnotations;

type
  TfmCtmNewMain = class(TForm)
    dxBarManager1: TdxBarManager;
    dxBarManager1Bar1: TdxBar;
    cxImageList_32: TcxImageList;
    dxBarLargeButton1: TdxBarLargeButton;
    dxBarLargeButton2: TdxBarLargeButton;
    dxBarLargeButton3: TdxBarLargeButton;
    dxBarLargeButton4: TdxBarLargeButton;
    dxBarLargeButton5: TdxBarLargeButton;
    dxBarLargeButton6: TdxBarLargeButton;
    dxBarLargeButton7: TdxBarLargeButton;
    dxBarLargeButton8: TdxBarLargeButton;
    dxBarLargeButton9: TdxBarLargeButton;
    dxBarLargeButton10: TdxBarLargeButton;
    dxBarLargeButton11: TdxBarLargeButton;
    dxBarLargeButton12: TdxBarLargeButton;
    dxBarLargeButton13: TdxBarLargeButton;
    dxBarLargeButton14: TdxBarLargeButton;
    GridPanel1: TGridPanel;
    Panel3: TPanel;
    cxLabel2: TcxLabel;
    cxLabel3: TcxLabel;
    cxLabel4: TcxLabel;
    cxLabel5: TcxLabel;
    cxLabel6: TcxLabel;
    cxLabel7: TcxLabel;
    cxLabel8: TcxLabel;
    cxLabel21: TcxLabel;
    cxLabel22: TcxLabel;
    Panel2: TPanel;
    cxLabel11: TcxLabel;
    cxLabel12: TcxLabel;
    cxLabel13: TcxLabel;
    cxLabel14: TcxLabel;
    cxLabel15: TcxLabel;
    cxLabel16: TcxLabel;
    cxLabel17: TcxLabel;
    cxLabel23: TcxLabel;
    cxLabel24: TcxLabel;
    Panel17: TPanel;
    cxLabel25: TcxLabel;
    cxLabel_distanc: TcxLabel;
    Client_CalcParametrs: TClientDataSet;
    Client_CalcParametrsdate_from_to: TDateField;
    Client_CalcParametrsnode_begin_cod: TStringField;
    Client_CalcParametrsnode_begin_name: TStringField;
    Client_CalcParametrsnode_end_cod: TStringField;
    Client_CalcParametrsnode_end_name: TStringField;
    Client_CalcParametrsPPLand: TIntegerField;
    Client_CalcParametrsnode_begin_land_name: TStringField;
    Client_CalcParametrsnode_begin_road_name: TStringField;
    Client_CalcParametrsNode_begin_PPland: TIntegerField;
    Client_CalcParametrsnode_begin_PPland_name: TStringField;
    Client_CalcParametrsnode_end_land_name: TStringField;
    Client_CalcParametrsnode_end_road_name: TStringField;
    Client_CalcParametrsnode_end_PPland: TIntegerField;
    Client_CalcParametrsnode_end_PPland_name: TStringField;
    Client_CalcParametrsETSNG_cod: TStringField;
    Client_CalcParametrsETSNG_name: TStringField;
    Client_CalcParametrsETSNG_klass: TStringField;
    Client_CalcParametrsGNG_cod: TStringField;
    Client_CalcParametrsGNG_name: TStringField;
    Client_CalcParametrsGNG_klass: TStringField;
    Client_CalcParametrsWeight: TFloatField;
    Client_CalcParametrsOtpr_name: TStringField;
    Client_CalcParametrsOtpr_id: TIntegerField;
    Client_CalcParametrsSend_id: TIntegerField;
    Client_CalcParametrsSend_name: TStringField;
    Client_CalcParametrsGroupSend: TBooleanField;
    Client_CalcParametrsGrupVag: TBooleanField;
    Client_CalcParametrsCars_id: TIntegerField;
    Client_CalcParametrsCars_name: TStringField;
    Client_CalcParametrsCars_gp: TFloatField;
    Client_CalcParametrsCars_axis: TIntegerField;
    Client_CalcParametrsCars_TareW: TFloatField;
    Client_CalcParametrsCars_Volume: TFloatField;
    Client_CalcParametrsKol_PS: TIntegerField;
    Client_CalcParametrsVag_otpr: TIntegerField;
    Client_CalcParametrsOwners_id: TIntegerField;
    Client_CalcParametrsLandOwn_id: TIntegerField;
    Client_CalcParametrsLandOwn_name: TStringField;
    Client_CalcParametrsOption4: TBooleanField;
    Client_CalcParametrsOption6: TBooleanField;
    Client_CalcParametrsOption8: TBooleanField;
    Client_CalcParametrsOption10: TBooleanField;
    Client_CalcParametrsOption12: TBooleanField;
    Client_CalcParametrsSupport_id: TIntegerField;
    Client_CalcParametrsSupport_Caption: TStringField;
    Client_CalcParametrsSupport_Kol_Conductor: TIntegerField;
    Client_CalcParametrsSupport_Axis: TIntegerField;
    Client_CalcParametrsSupport_Vochr: TCurrencyField;
    Client_CalcParametrsEmpty_GNG_cod: TStringField;
    Client_CalcParametrsEmpty_GNG_name: TStringField;
    Client_CalcParametrsEmpty_ETSNG_cod: TStringField;
    Client_CalcParametrsEmpty_ETSNG_name: TStringField;
    Client_CalcParametrsEmpty_loading: TBooleanField;
    Client_CalcParametrsVCGuard: TIntegerField;
    Client_CalcParametrsComment: TMemoField;
    Client_CalcParametrsBulkiness: TStringField;
    Client_CalcParametrsBulkiness_name: TStringField;
    Client_CalcParametrsContainer_name: TStringField;
    Client_CalcParametrsContainer_id: TIntegerField;
    Client_CalcParametrsKit_id: TIntegerField;
    Client_CalcParametrsMultiple_kit: TBooleanField;
    Client_CalcParametrsExitRoute_id: TIntegerField;
    Client_CalcParametrsExitRoute_name: TStringField;
    Client_CalcParametrsroute_name: TStringField;
    Client_CalcParametrsdistance: TIntegerField;
    GridPanel2: TGridPanel;
    cxDateEdit1: TcxDateEdit;
    cxLabel1: TcxLabel;
    ToolBar1: TToolBar;
    ToolButton1: TToolButton;
    ToolButton5: TToolButton;
    ToolButton8: TToolButton;
    cxLabel19: TcxLabel;
    cxButton2: TcxButton;
    cxLabel20: TcxLabel;
    cxSpinEdit4: TcxSpinEdit;
    cxComboBox2: TcxComboBox;
    cxPropertiesStore1: TcxPropertiesStore;
    CTMConnect: TADOConnection;
    cxSplitter1: TcxSplitter;
    Panel18: TPanel;
    BitBtn_Ok: TBitBtn;
    BitBtn_Cancel: TBitBtn;
    cxStyleRepository1: TcxStyleRepository;
    cxStyle1: TcxStyle;
    cxStyle2: TcxStyle;
    cxStyle3: TcxStyle;
    cxPageControl1: TcxPageControl;
    cxTabSheet1: TcxTabSheet;
    cxSplitter3: TcxSplitter;
    Panel14: TPanel;
    Panel1: TPanel;
    Splitter1: TSplitter;
    cxGrid1: TcxGrid;
    cxGrid1DBBandedTableView1: TcxGridDBBandedTableView;
    cxGrid1DBBandedTableView1LandName: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1Direction: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1Direction_id: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1LandId: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1CalcDsc: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1BasePrice: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1TotalPrice: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1NDS: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1GuardNDS: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1PerT: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1ABBR: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1id: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1RecId: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1CurrencyID: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1PerT_PP: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1Distance: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1Vohr: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1GuardPrice: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1ShemaNo: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1SoprPrice: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1AddDues: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1TotalPriceWoNDS: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1PerTwoNDS: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1Column1: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1FromNewCode: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1ToNewCode: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1KIT: TcxGridDBBandedColumn;
    cxGrid1Level1: TcxGridLevel;
    Panel4: TPanel;
    Splitter4: TSplitter;
    cxGrid2: TcxGrid;
    cxGridDBBandedTableView1: TcxGridDBBandedTableView;
    cxGridDBBandedTableView1Column1: TcxGridDBBandedColumn;
    cxGridDBBandedTableView1id: TcxGridDBBandedColumn;
    cxGridDBBandedTableView1State: TcxGridDBBandedColumn;
    cxGridDBBandedTableView1Type: TcxGridDBBandedColumn;
    cxGridDBBandedTableView1Stavka: TcxGridDBBandedColumn;
    cxGridDBBandedTableView1Description: TcxGridDBBandedColumn;
    cxGridDBBandedTableView1Value: TcxGridDBBandedColumn;
    cxGridDBBandedTableView1ABBR: TcxGridDBBandedColumn;
    cxGridDBBandedTableView1Document: TcxGridDBBandedColumn;
    cxGridDBBandedTableView1id_Result: TcxGridDBBandedColumn;
    cxGridDBBandedTableView1id_Taxes: TcxGridDBBandedColumn;
    cxGridDBBandedTableView1CategoryId: TcxGridDBBandedColumn;
    cxGridDBBandedTableView1VisibleState: TcxGridDBBandedColumn;
    cxGridLevel1: TcxGridLevel;
    GroupBox1: TGroupBox;
    Panel5: TPanel;
    Panel6: TPanel;
    cxCheckBox2: TcxCheckBox;
    cxSpinEdit1: TcxSpinEdit;
    cxLabel9: TcxLabel;
    cxLabel10: TcxLabel;
    cxSpinEdit2: TcxSpinEdit;
    cxLabel18: TcxLabel;
    cxSpinEdit3: TcxSpinEdit;
    cxCheckBox1: TcxCheckBox;
    cxSpinEdit5: TcxSpinEdit;
    cxSpinEdit6: TcxSpinEdit;
    cxSpinEdit7: TcxSpinEdit;
    cxCheckBox3: TcxCheckBox;
    Panel7: TPanel;
    cxCheckListBox1: TcxCheckListBox;
    Panel8: TPanel;
    cxCheckListBox2: TcxCheckListBox;
    Panel9: TPanel;
    cxButton3: TcxButton;
    cxButton4: TcxButton;
    Panel12: TPanel;
    cxCheckListBox3: TcxCheckListBox;
    FlowPanel1: TFlowPanel;
    Panel10: TPanel;
    cxTabSheet2: TcxTabSheet;
    cxGrid6: TcxGrid;
    cxGrid6cxGridDBBandedTableView3: TcxGridDBBandedTableView;
    cxGrid6cxGridDBBandedTableView3Direction_id: TcxGridDBBandedColumn;
    cxGrid6cxGridDBBandedTableView3PID: TcxGridDBBandedColumn;
    cxGrid6cxGridDBBandedTableView3Code: TcxGridDBBandedColumn;
    cxGrid6cxGridDBBandedTableView3NewCode: TcxGridDBBandedColumn;
    cxGrid6cxGridDBBandedTableView3Name: TcxGridDBBandedColumn;
    cxGrid6cxGridDBBandedTableView3Distance: TcxGridDBBandedColumn;
    cxGrid6cxGridDBBandedTableView3LandId: TcxGridDBBandedColumn;
    cxGrid6cxGridDBBandedTableView3LandName: TcxGridDBBandedColumn;
    cxGrid6cxGridDBBandedTableView3LandABBR: TcxGridDBBandedColumn;
    cxGrid6cxGridDBBandedTableView3RegionID: TcxGridDBBandedColumn;
    cxGrid6cxGridDBBandedTableView3RoadId: TcxGridDBBandedColumn;
    cxGrid6cxGridDBBandedTableView3RoadName: TcxGridDBBandedColumn;
    cxGrid6cxGridDBBandedTableView3RoadABBR: TcxGridDBBandedColumn;
    cxGrid6cxGridDBBandedTableView3NewParaT: TcxGridDBBandedColumn;
    cxGrid6cxGridDBBandedTableView3DP: TcxGridDBBandedColumn;
    cxGrid6cxGridLevel3: TcxGridLevel;
    GridPanel3: TGridPanel;
    cxGrid4: TcxGrid;
    cxGrid4DBBandedTableView1: TcxGridDBBandedTableView;
    cxGrid4DBBandedTableView1id: TcxGridDBBandedColumn;
    cxGrid4DBBandedTableView1Direction_id: TcxGridDBBandedColumn;
    cxGrid4DBBandedTableView1PID: TcxGridDBBandedColumn;
    cxGrid4DBBandedTableView1Code: TcxGridDBBandedColumn;
    cxGrid4DBBandedTableView1NewCode: TcxGridDBBandedColumn;
    cxGrid4DBBandedTableView1Name: TcxGridDBBandedColumn;
    cxGrid4DBBandedTableView1Distance: TcxGridDBBandedColumn;
    cxGrid4DBBandedTableView1LandId: TcxGridDBBandedColumn;
    cxGrid4DBBandedTableView1LandName: TcxGridDBBandedColumn;
    cxGrid4DBBandedTableView1LandABBR: TcxGridDBBandedColumn;
    cxGrid4DBBandedTableView1RegionID: TcxGridDBBandedColumn;
    cxGrid4DBBandedTableView1RoadId: TcxGridDBBandedColumn;
    cxGrid4DBBandedTableView1RoadName: TcxGridDBBandedColumn;
    cxGrid4DBBandedTableView1RoadABBR: TcxGridDBBandedColumn;
    cxGrid4Level1: TcxGridLevel;
    cxGrid5: TcxGrid;
    cxGridDBBandedTableView4: TcxGridDBBandedTableView;
    cxGridDBBandedColumn1: TcxGridDBBandedColumn;
    cxGridDBBandedColumn2: TcxGridDBBandedColumn;
    cxGridDBBandedColumn3: TcxGridDBBandedColumn;
    cxGridDBBandedColumn17: TcxGridDBBandedColumn;
    cxGridDBBandedColumn18: TcxGridDBBandedColumn;
    cxGridDBBandedColumn19: TcxGridDBBandedColumn;
    cxGridDBBandedColumn20: TcxGridDBBandedColumn;
    cxGridDBBandedColumn21: TcxGridDBBandedColumn;
    cxGridDBBandedColumn22: TcxGridDBBandedColumn;
    cxGridDBBandedColumn23: TcxGridDBBandedColumn;
    cxGridDBBandedColumn24: TcxGridDBBandedColumn;
    cxGridDBBandedColumn25: TcxGridDBBandedColumn;
    cxGridDBBandedColumn26: TcxGridDBBandedColumn;
    cxGridLevel4: TcxGridLevel;
    GridPanel4: TGridPanel;
    Panel15: TPanel;
    FlowPanel2: TFlowPanel;
    cxButton5: TcxButton;
    cxButton6: TcxButton;
    cxButton7: TcxButton;
    cxButton8: TcxButton;
    cxGrid3: TcxGrid;
    cxGridDBBandedTableView2: TcxGridDBBandedTableView;
    cxGridDBBandedTableView2id: TcxGridDBBandedColumn;
    cxGridDBBandedTableView2cod: TcxGridDBBandedColumn;
    cxGridDBBandedTableView2SecondCode: TcxGridDBBandedColumn;
    cxGridDBBandedTableView2Activ: TcxGridDBBandedColumn;
    cxGridDBBandedTableView2name: TcxGridDBBandedColumn;
    cxGridLevel2: TcxGridLevel;
    cxSplitter2: TcxSplitter;
    cxSplitter4: TcxSplitter;
    cxGrid7: TcxGrid;
    cxGridDBBandedTableView3: TcxGridDBBandedTableView;
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
    cxGridDBBandedColumn37: TcxGridDBBandedColumn;
    cxGridDBBandedColumn38: TcxGridDBBandedColumn;
    cxGridDBBandedColumn39: TcxGridDBBandedColumn;
    cxGridDBBandedColumn40: TcxGridDBBandedColumn;
    cxGridDBBandedColumn41: TcxGridDBBandedColumn;
    cxGridDBBandedColumn42: TcxGridDBBandedColumn;
    cxGridDBBandedColumn43: TcxGridDBBandedColumn;
    cxGridDBBandedColumn44: TcxGridDBBandedColumn;
    cxGridDBBandedColumn45: TcxGridDBBandedColumn;
    cxGridDBBandedColumn46: TcxGridDBBandedColumn;
    cxGridDBBandedColumn47: TcxGridDBBandedColumn;
    cxGridDBBandedColumn48: TcxGridDBBandedColumn;
    cxGridDBBandedColumn49: TcxGridDBBandedColumn;
    cxGridDBBandedColumn50: TcxGridDBBandedColumn;
    cxGridLevel3: TcxGridLevel;
    cxSplitter5: TcxSplitter;
    DS_Result: TDataSource;
    Client_Result: TClientDataSet;
    Client_ResultLandName: TStringField;
    Client_ResultDirection_id: TIntegerField;
    Client_ResultLandId: TIntegerField;
    Client_ResultCalcDsc: TStringField;
    Client_ResultBasePrice: TCurrencyField;
    Client_ResultTotalPrice: TCurrencyField;
    Client_ResultNDS: TCurrencyField;
    Client_ResultGuardNDS: TCurrencyField;
    Client_ResultPerT: TCurrencyField;
    Client_ResultABBR: TStringField;
    Client_ResultDirection: TStringField;
    Client_Resultid: TIntegerField;
    Client_ResultCurrencyID: TIntegerField;
    Client_ResultPerT_PP: TCurrencyField;
    Client_ResultDistance: TFloatField;
    Client_ResultVohr: TBooleanField;
    Client_ResultGuardPrice: TCurrencyField;
    Client_ResultShemaNo: TStringField;
    Client_ResultSoprPrice: TCurrencyField;
    Client_ResultAddDues: TCurrencyField;
    Client_ResultTotalPriceWoNDS: TCurrencyField;
    Client_ResultPerTwoNDS: TCurrencyField;
    Client_ResultFromNewCode: TStringField;
    Client_ResultToNewCode: TStringField;
    Client_ResultOrderId: TIntegerField;
    Client_Resultset_distance: TBooleanField;
    cxImageList_16: TcxImageList;
    Client_Routes: TClientDataSet;
    Client_Routesid: TAutoIncField;
    Client_RoutesDirection_id: TIntegerField;
    Client_RoutesPID: TIntegerField;
    Client_RoutesCode: TStringField;
    Client_RoutesNewCode: TStringField;
    Client_RoutesName: TStringField;
    Client_RoutesDistance: TIntegerField;
    Client_RoutesLandId: TIntegerField;
    Client_RoutesLandName: TStringField;
    Client_RoutesLandABBR: TStringField;
    Client_RoutesRegionID: TIntegerField;
    Client_RoutesRoadId: TIntegerField;
    Client_RoutesRoadName: TStringField;
    Client_RoutesRoadABBR: TStringField;
    DS_Routes: TDataSource;
    DS_BackRoutes: TDataSource;
    Client_BackRoutes: TClientDataSet;
    IntegerField7: TIntegerField;
    IntegerField8: TIntegerField;
    StringField8: TStringField;
    StringField9: TStringField;
    StringField10: TStringField;
    IntegerField9: TIntegerField;
    IntegerField10: TIntegerField;
    StringField11: TStringField;
    StringField12: TStringField;
    IntegerField11: TIntegerField;
    IntegerField12: TIntegerField;
    StringField13: TStringField;
    StringField14: TStringField;
    AutoIncField1: TAutoIncField;
    DS_LandTaxes: TDataSource;
    Client_LandTaxes: TClientDataSet;
    Client_LandTaxesid: TIntegerField;
    Client_LandTaxesState: TIntegerField;
    Client_LandTaxesType: TIntegerField;
    Client_LandTaxesStavka: TCurrencyField;
    Client_LandTaxesDescription: TStringField;
    Client_LandTaxesValue: TCurrencyField;
    Client_LandTaxesABBR: TStringField;
    Client_LandTaxesDocument: TStringField;
    Client_LandTaxesid_Result: TIntegerField;
    Client_LandTaxesid_Taxes: TAutoIncField;
    Client_LandTaxesCategoryId: TIntegerField;
    Client_LandTaxesVisibleState: TIntegerField;
    Panel16: TPanel;
    cxMemo2: TcxMemo;
    Client_Taxes_id: TClientDataSet;
    Client_Taxes_idLandId: TIntegerField;
    Client_Taxes_idTaxesId: TIntegerField;
    Client_Taxes_idAutomatic: TBooleanField;
    Client_Taxes_idActive: TBooleanField;
    Client_Taxes_idStavka: TCurrencyField;
    Client_Taxes_idParam: TStringField;
    Client_Taxes_idType: TIntegerField;
    Client_Taxes_idrate: TCurrencyField;
    Client_Stations: TClientDataSet;
    Client_Stationsid: TAutoIncField;
    Client_Stationscod: TStringField;
    Client_Stationsname: TStringField;
    Client_StationsSecondCode: TStringField;
    Client_StationsActiv: TBooleanField;
    DS_Stations: TDataSource;
    Client_CargoMulti: TClientDataSet;
    Client_CargoMultiid: TAutoIncField;
    Client_CargoMultiEtnCode: TStringField;
    Client_CargoMultiEtnCaption: TStringField;
    Client_CargoMultiGngCode: TStringField;
    Client_CargoMultiGngCaption: TStringField;
    Client_CargoMultiWeight: TFloatField;
    Client_CargoMultiIsGuard: TBooleanField;
    Query_Stations: TADOQuery;
    Client_FullRoutes: TClientDataSet;
    IntegerField1: TIntegerField;
    IntegerField2: TIntegerField;
    StringField1: TStringField;
    StringField2: TStringField;
    StringField3: TStringField;
    IntegerField3: TIntegerField;
    IntegerField4: TIntegerField;
    StringField4: TStringField;
    StringField5: TStringField;
    IntegerField5: TIntegerField;
    IntegerField6: TIntegerField;
    StringField6: TStringField;
    StringField7: TStringField;
    Client_FullRoutesNewParaT: TStringField;
    Client_FullRoutesDP: TStringField;
    Client_FullRoutesid: TAutoIncField;
    DS_FullRoutes: TDataSource;
    Client_CalcParametrscurrency_id: TIntegerField;
    Panel13: TPanel;
    cxMemo1: TcxMemo;
    cxPropertiesStore2: TcxPropertiesStore;
    dxBarPopupMenu1: TdxBarPopupMenu;
    dxBarButton1: TdxBarButton;
    Client_Account: TClientDataSet;
    Client_AccountPerT: TCurrencyField;
    Client_AccountBasePrice: TCurrencyField;
    Client_AccountTotalPrice: TCurrencyField;
    Client_AccountPerTwoNDS: TCurrencyField;
    Client_AccountBasePerT: TCurrencyField;
    Client_Accountinf_obj_cod: TIntegerField;
    Client_AccountWeight: TFloatField;
    Client_AccountLandId: TIntegerField;
    Client_AccountLandName: TStringField;
    Client_AccountKol_vag: TStringField;
    Client_Accountdistance: TIntegerField;
    Client_AccountOwnerID: TIntegerField;
    Client_AccountOwnerName: TStringField;
    DS_Account: TDataSource;
    PopupMenu2: TPopupMenu;
    Client_CalcParametrsenable_alt_route: TBooleanField;
    Client_CalcParametrsroute_id: TIntegerField;
    dxBarButton2: TdxBarButton;
    dxBarPopupMenu2: TdxBarPopupMenu;
    dxBarButton3: TdxBarButton;
    Client_CalcParametrsnode_washing_cod: TStringField;
    Client_CalcParametrsnode_washing_name: TStringField;
    Client_CalcParametrsnode_washing_ppland: TStringField;
    Client_CalcParametrsnode_washing_road: TStringField;
    dxBarButton4: TdxBarButton;
    dxBarButton5: TdxBarButton;
    dxBarPopupMenu3: TdxBarPopupMenu;
    Client_ResultWashingState: TIntegerField;
    Client_ResultFromStationPID: TIntegerField;
    Client_ResultToStationPID: TIntegerField;
    cxGrid8: TcxGrid;
    cxGridDBBandedTableView5: TcxGridDBBandedTableView;
    cxGridLevel5: TcxGridLevel;
    cxGridDBBandedTableView5PerT: TcxGridDBBandedColumn;
    cxGridDBBandedTableView5BasePrice: TcxGridDBBandedColumn;
    cxGridDBBandedTableView5TotalPrice: TcxGridDBBandedColumn;
    cxGridDBBandedTableView5PerTwoNDS: TcxGridDBBandedColumn;
    cxGridDBBandedTableView5BasePerT: TcxGridDBBandedColumn;
    cxGridDBBandedTableView5inf_obj_cod: TcxGridDBBandedColumn;
    cxGridDBBandedTableView5Weight: TcxGridDBBandedColumn;
    cxGridDBBandedTableView5LandId: TcxGridDBBandedColumn;
    cxGridDBBandedTableView5LandName: TcxGridDBBandedColumn;
    cxGridDBBandedTableView5Kol_vag: TcxGridDBBandedColumn;
    cxGridDBBandedTableView5distance: TcxGridDBBandedColumn;
    cxGridDBBandedTableView5OwnerID: TcxGridDBBandedColumn;
    cxGridDBBandedTableView5OwnerName: TcxGridDBBandedColumn;
    Client_Accountid: TAutoIncField;
    cxGridDBBandedTableView5id: TcxGridDBBandedColumn;
    dxBarPopupMenu4: TdxBarPopupMenu;
    dxBarButton6: TdxBarButton;
    cxGrid1DBBandedTableView1Column2: TcxGridDBBandedColumn;
    dxBarPopupMenu5: TdxBarPopupMenu;
    dxBarButton7: TdxBarButton;
    dxBarPopupMenu6: TdxBarPopupMenu;
    dxBarButton10: TdxBarButton;
    dxBarPopupMenu7: TdxBarPopupMenu;
    dxBarButton13: TdxBarButton;
    dxBarPopupMenu8: TdxBarPopupMenu;
    dxBarButton16: TdxBarButton;
    dxBarPopupMenu9: TdxBarPopupMenu;
    dxBarButton19: TdxBarButton;
    Client_CalcParametrsBulkiness_param: TStringField;
    Client_CalcParametrsOption14: TBooleanField;
    ClientDS_AltRoute: TClientDataSet;
    ClientDS_AltRouteid: TIntegerField;
    ClientDS_AltRouteCaption: TStringField;
    Client_CalcParametrsProject_Tariff_Index_2017: TBooleanField;
    Client_CalcParametrsNEW_DISTANCES: TBooleanField;
    Client_CalcParametrsPROJECT_TARIF_2017: TBooleanField;
    cxLookAndFeelController1: TcxLookAndFeelController;
    dxSkinController1: TdxSkinController;
    dxBarSubItem1: TdxBarSubItem;
    dxBarButton8: TdxBarButton;
    dxBarButton9: TdxBarButton;
    Client_MainTree: TClientDataSet;
    DS_MainTree: TDataSource;
    Client_MainTreeid: TAutoIncField;
    Client_MainTreeparent_id: TIntegerField;
    Client_MainTreenode_name: TStringField;
    Client_MainTreenode_value: TStringField;
    Client_MainTreenode_cod: TStringField;
    cxPageControl2: TcxPageControl;
    cxTabSheet4: TcxTabSheet;
    cxDBTreeList1: TcxDBTreeList;
    cxDBTreeList1id: TcxDBTreeListColumn;
    cxDBTreeList1parent_id: TcxDBTreeListColumn;
    cxDBTreeList1node_name: TcxDBTreeListColumn;
    cxDBTreeList1node_value: TcxDBTreeListColumn;
    cxDBTreeList1node_cod: TcxDBTreeListColumn;
    cxDBTreeList1node_image_id: TcxDBTreeListColumn;
    Client_MainTreenode_image_id: TIntegerField;
    dxBarButton11: TdxBarButton;
    dxBarButton14: TdxBarButton;
    cxImageList1: TcxImageList;
    Client_MainTreenode_tag: TIntegerField;
    Client_CalcParametrsbuffer_TranspId: TIntegerField;
    Client_CalcParametrsbuffer_OwnerId: TIntegerField;
    Client_CalcParametrsbuffer_Count: TIntegerField;
    Client_CalcParametrsbuffer_Axis: TIntegerField;
    Client_CalcParametrsbuffer_ID: TIntegerField;
    Client_CalcParametrsbuffer_ControlFrameWeight: TIntegerField;
    Client_CalcParametrsbuffer_Name: TStringField;
    Client_CalcParametrsbuffer_TranspName: TStringField;
    Client_CalcParametrsbuffer_OwnerName: TStringField;
    dxBarButton12: TdxBarButton;
    dxBarButton15: TdxBarButton;
    dxBarButton17: TdxBarButton;
    Client_CalcParametrsFlatWagonId: TIntegerField;
    Client_CalcParametrsFlatWagonCaption: TStringField;
    Client_CalcParametrsFWCount: TIntegerField;
    Client_CalcParametrsFWOwnP: TIntegerField;
    Client_CalcParametrsFWOwnD: TIntegerField;
    Client_CalcParametrsFWOCE: TIntegerField;
    dxBarButton18: TdxBarButton;
    dxBarButton20: TdxBarButton;
    dxBarButton21: TdxBarButton;
    Client_CalcParametrsFWOwnPCaption: TStringField;
    cxGrid1DBBandedTableView1Column3: TcxGridDBBandedColumn;
    dxBarButton22: TdxBarButton;
    Client_CalcParametrsTARIFFMARK64: TBooleanField;
    Client_CalcParametrsADDSTATION: TBooleanField;
    Client_CalcParametrsMODELOW: TBooleanField;
    Client_CalcParametrsMODELOWN: TBooleanField;
    Client_CalcParametrsMODELOWND: TBooleanField;
    Client_DopParam: TClientDataSet;
    Client_DopParamparam_name: TStringField;
    Client_DopParamparam_desc: TStringField;
    Client_DopParamparam_type: TIntegerField;
    Client_DopParamparam_val: TBooleanField;
    dxBarButton23: TdxBarButton;
    Client_AccountTotalPriceWoNDS: TCurrencyField;
    cxGridDBBandedTableView5TotalPriceWoNDS: TcxGridDBBandedColumn;
    Client_CalcParametrsProject_Tariff_AddIndex_2018: TBooleanField;
    Client_CalcParametrsProject_Tariff_Index_2018: TBooleanField;
    Client_CalcParametrsreturn_type: TIntegerField;
    Client_CalcParametrsreturn_node_cod: TStringField;
    Client_CalcParametrsreturn_node_name: TStringField;
    Client_CalcParametrsreturn_land_id: TIntegerField;
    Client_CalcParametrsreturn_land_name: TStringField;
    Client_CalcParametrsZhur_Miller: TBooleanField;
    dxBarButton24: TdxBarButton;
    Client_KIT: TClientDataSet;
    Client_KITKIT: TStringField;
    Client_KITCaption: TStringField;
    Client_KITFromDate: TDateTimeField;
    Client_KITToDate: TDateTimeField;
    Client_KITDocument: TStringField;
    Client_KITKITNum: TStringField;
    Client_ResultKIT: TStringField;
    Client_ResultKIT_name: TStringField;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure Panel3Click(Sender: TObject);
    procedure Panel2Click(Sender: TObject);
    procedure cxDateEdit1PropertiesEditValueChanged(Sender: TObject);
    procedure cxTreeList1CustomDrawDataCell(Sender: TcxCustomTreeList;
      ACanvas: TcxCanvas; AViewInfo: TcxTreeListEditCellViewInfo;
      var ADone: Boolean);
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
    procedure cxGridDBBandedTableView1FocusedItemChanged(
      Sender: TcxCustomGridTableView; APrevFocusedItem,
      AFocusedItem: TcxCustomGridTableItem);
    procedure cxGridDBBandedTableView1KeyPress(Sender: TObject; var Key: Char);
    procedure dxBarLargeButton5Click(Sender: TObject);
    procedure cxGrid1DBBandedTableView1VohrPropertiesEditValueChanged(
      Sender: TObject);
    procedure dxBarLargeButton10Click(Sender: TObject);
    procedure dxBarLargeButton6Click(Sender: TObject);
    procedure cxComboBox2PropertiesChange(Sender: TObject);
    procedure dxBarLargeButton14Click(Sender: TObject);
    procedure dxBarLargeButton12Click(Sender: TObject);
    procedure dxBarLargeButton11Click(Sender: TObject);
    procedure dxBarLargeButton4Click(Sender: TObject);
    procedure dxBarLargeButton1Click(Sender: TObject);
    procedure dxBarLargeButton3Click(Sender: TObject);
    procedure dxBarLargeButton2Click(Sender: TObject);
    procedure dxBarLargeButton13Click(Sender: TObject);
    procedure dxBarButton1Click(Sender: TObject);
    procedure dxBarLargeButton7Click(Sender: TObject);
    procedure cxButton4Click(Sender: TObject);
    procedure cxCheckBox1PropertiesChange(Sender: TObject);
    procedure cxCheckBox2PropertiesChange(Sender: TObject);
    procedure cxCheckListBox1ClickCheck(Sender: TObject; AIndex: Integer;
      APrevState, ANewState: TcxCheckBoxState);
    procedure cxCheckListBox2ClickCheck(Sender: TObject; AIndex: Integer;
      APrevState, ANewState: TcxCheckBoxState);
    procedure cxButton5Click(Sender: TObject);
    procedure cxButton6Click(Sender: TObject);
    procedure cxButton2Click(Sender: TObject);
    procedure dxBarButton2Click(Sender: TObject);
    procedure dxBarButton3Click(Sender: TObject);
    procedure dxBarButton5Click(Sender: TObject);
    procedure dxBarButton6Click(Sender: TObject);
    procedure dxBarButton7Click(Sender: TObject);
    procedure dxBarButton10Click(Sender: TObject);
    procedure dxBarButton13Click(Sender: TObject);
    procedure dxBarButton16Click(Sender: TObject);
    procedure dxBarButton19Click(Sender: TObject);
    procedure dxBarButton8Click(Sender: TObject);
    procedure dxBarButton9Click(Sender: TObject);
    procedure dxBarButton11Click(Sender: TObject);
    procedure dxBarButton14Click(Sender: TObject);
    procedure cxDBTreeList1Collapsing(Sender: TcxCustomTreeList;
      ANode: TcxTreeListNode; var Allow: Boolean);
    procedure cxDBTreeList1CustomDrawDataCell(Sender: TcxCustomTreeList;
      ACanvas: TcxCanvas; AViewInfo: TcxTreeListEditCellViewInfo;
      var ADone: Boolean);
    procedure cxDBTreeList1Click(Sender: TObject);
    procedure dxBarButton12Click(Sender: TObject);
    procedure dxBarButton15Click(Sender: TObject);
    procedure dxBarButton17Click(Sender: TObject);
    procedure dxBarButton18Click(Sender: TObject);
    procedure dxBarButton21Click(Sender: TObject);
    procedure cxGrid1DBBandedTableView1Column3PropertiesButtonClick(
      Sender: TObject; AButtonIndex: Integer);
    procedure dxBarButton22Click(Sender: TObject);
    procedure dxBarButton23Click(Sender: TObject);
    procedure dxBarButton24Click(Sender: TObject);
    procedure cxGrid1DBBandedTableView1KITPropertiesButtonClick(Sender: TObject;
      AButtonIndex: Integer);
  private
    Fusr_pwd : PUser_pwd;
    FRTXApplication : IApplication;
    FRTXDocument    : RailTariff_TLB.IDocument;
    FQueryStation   : TADOQuery;
    Fctm_save_name  : string;
    Fctm_save_id    : integer;

    procedure OnPopupMenu2Click(Sender:TObject);
    procedure OnPopupMenuClickFullRate(Sender:TObject);
    procedure OnPopupMenuClickNDS(Sender:TObject);
    procedure OnPopupMenuClickFullRateNDS(Sender:TObject);
    procedure ExportGirdToExcelEx(grid: TcxDBPivotGrid; prefix: string = '');
    procedure DeleteFileFromDir(folder : string = '');

    procedure FillTree();
    procedure GetDopParam();
    procedure CalcRate();  // Расчет ставки
    procedure GetResult(); // Вывод результата
    procedure ClearForm(); // Отчистить форму
    function  CalcDistance(): integer;
    function  CheckParametrs(set_show_message: boolean): boolean;
    procedure SetClientFullRoutes();
    function  cxCheckListBoxChecked : boolean;
    procedure CreatePopupMenu2(flag : integer);
    procedure ExportPivotToExcel(Sender:TObject);
    procedure CreateTree;
  public
    constructor Create(AOwner: TApplication; usr_pwd: PUser_pwd); reintroduce;
  end;

var
  fmCtmNewMain: TfmCtmNewMain;

function CreateWndNewCtm(AppHand: THandle; usr_pwd: PUser_pwd): variant; export;

implementation

uses CtmNewNode, CtmNewOtpr, CtmNewCargo, CtmNewCars, CtmNewOption,
  CtmNewSupport, CtmNewCargoMulti, CtmNewPrint, CtmNewSave, CtmLoadDictoinary,
  CtmRaznoe, CtmNewExchange, CtmNewTaxes, CtmNewWashing, CtmNewBulkiness,
  CtmNewBuffer, CtmNewFlat, CtmNewBackRoute, CtmNewKIT;

{$R *.dfm}

function CreateWndNewCtm(AppHand: THandle; usr_pwd: PUser_pwd): variant;
begin
  Application.Handle := AppHand;

  fmCtmNewMain := TfmCtmNewMain.Create(Application, usr_pwd);
  try
    if fmCtmNewMain.ShowModal = mrOk then  result := VarArrayOf([''])
    else result := VarArrayOf(['']);
  finally
    fmCtmNewMain.Free;
  end;
end;

constructor TfmCtmNewMain.Create(AOwner: TApplication; usr_pwd: PUser_pwd);
begin
  Screen.Cursor := crHourglass;
  inherited Create(AOwner);
  Fusr_pwd := usr_pwd;

  CTMConnect.ConnectionString := 'Persist Security Info=True;Provider=SQLOLEDB.1;User ID='+Fusr_pwd^.user_name+';Password='+Fusr_pwd^.user_pass+';Initial Catalog='+Fusr_pwd^.catalog+';Data Source='+Fusr_pwd^.server+';';
  CTMConnect.KeepConnection   := False;
  CTMConnect.LoginPrompt      := False;
  CTMConnect.Open;

//  if LowerCase(Fusr_pwd^.user_name) = 'admin_sfh' then begin
//    dxBarSubItem1.Visible := ivAlways;
//  end;


  FQueryStation := TADOQuery.Create(nil);
  Fctm_save_name := '';
  Fctm_save_id   := -9;


  Client_CalcParametrs.CreateDataSet;
  Client_CalcParametrs.LogChanges := False;

  Client_Account.CreateDataSet;
  Client_Account.LogChanges := False;


  Client_Result.CreateDataSet;
  Client_Result.LogChanges := False;

  Client_Routes.CreateDataSet;
  Client_Routes.LogChanges := False;

  Client_BackRoutes.CreateDataSet;
  Client_BackRoutes.LogChanges := False;

  Client_LandTaxes.CreateDataSet;
  Client_LandTaxes.LogChanges := False;

  Client_Taxes_id.CreateDataSet;
  Client_Taxes_id.LogChanges := False;

  Client_Stations.CreateDataSet;
  Client_Stations.LogChanges := False;

  Client_CargoMulti.CreateDataSet;
  Client_CargoMulti.LogChanges := False;

  Client_FullRoutes.CreateDataSet;
  Client_FullRoutes.LogChanges := False;

  ClientDS_AltRoute.CreateDataSet;
  ClientDS_AltRoute.LogChanges := False;


  Client_MainTree.CreateDataSet;
  Client_MainTree.LogChanges := False;

  Client_DopParam.CreateDataSet;
  Client_DopParam.LogChanges := False;


  Client_KIT.CreateDataSet;
  Client_KIT.LogChanges := False;

  cxDateEdit1.Date := Date;

  //Client_CalcParametrs.FieldByName('ETSNG_cod').AsString

  ClearForm();

  try
    FRTXApplication := RTXCreate2(CTM_Server, CTM_User, CTM_Password);
    FRTXApplication.Initialize('');
  except
    on E: Exception do begin
      Application.MessageBox(PChar('Application.Initialize:' + E.Message), 'Ошибка', MB_OK or MB_ICONSTOP);
      FRTXApplication := nil;
      exit;
    end;
  end;
  FRTXDocument := FRTXApplication.CreateDocument;

  Caption := 'Расчёт тарифа в Rail-Сервер (' + (FRTXApplication as IApplicationInfo).Version + ')';

  FillTree;

  Screen.Cursor := crDefault;
end;

procedure TfmCtmNewMain.GetDopParam();
var parament  : I2DimArrayHelper;
    parament2 : ICalcParameter;
    i : integer;

    param_name : string;
    param_desc : string;
    param_type : integer;
    param_val  : Variant;

    type_CUSTOM   : integer;
    type_MILITARY : integer;
begin
  if FRTXDocument <> nil then begin
    Client_DopParam.EmptyDataSet;
    parament := (FRTXDocument as IDocumentAttr17).GetCalcParameters;
    for i:= 0 to parament.Count-1 do begin

      parament2 := (FRTXDocument as IDocumentAttr17).CalcParameter[parament.Name[i]];
      if parament2 <> nil then begin
        if parament2.type_ = 1 then begin
          Client_DopParam.Append;
          Client_DopParam.FieldByName('param_name').Value := parament2.Name;
          Client_DopParam.FieldByName('param_desc').Value := parament2.Description;
          Client_DopParam.FieldByName('param_type').Value := parament2.type_;
          Client_DopParam.FieldByName('param_val' ).Value := iif(parament2.Value=0, False, True);
          Client_DopParam.Post;
        end;
      end;
    end;


    // Под таможенным контролем
    if Client_DopParam.Locate('param_name', 'CUSTOM', [loCaseInsensitive]) then begin

      if Client_CalcParametrs.FieldByName('Option12').IsNull then begin
        Client_CalcParametrs.Edit;
        Client_CalcParametrs.FieldByName('Option12').Value := Client_DopParam.FieldByName('param_val').Value;
        Client_CalcParametrs.Post;
      end;

    end else begin
      Client_CalcParametrs.Edit;
      Client_CalcParametrs.FieldByName('Option12').Value := null;
      Client_CalcParametrs.Post;
    end;

    // Воинские перевозки
    if Client_DopParam.Locate('param_name', 'MILITARY', [loCaseInsensitive]) then begin

      if Client_CalcParametrs.FieldByName('Option6').IsNull then begin
        Client_CalcParametrs.Edit;
        Client_CalcParametrs.FieldByName('Option6').Value := Client_DopParam.FieldByName('param_val').Value;
        Client_CalcParametrs.Post;
      end;

    end else begin
      Client_CalcParametrs.Edit;
      Client_CalcParametrs.FieldByName('Option6').Value := null;
      Client_CalcParametrs.Post;
    end;

    // Тар. отметка 64. Выполнение жд одной операции погрузки или выгрузки в местах общего пользования
    if Client_DopParam.Locate('param_name', 'TARIFFMARK64', [loCaseInsensitive]) then begin
      if Client_CalcParametrs.FieldByName('TARIFFMARK64').IsNull then begin
        Client_CalcParametrs.Edit;
        Client_CalcParametrs.FieldByName('TARIFFMARK64').Value := Client_DopParam.FieldByName('param_val').Value;
        Client_CalcParametrs.Post;
      end;
    end else begin
      Client_CalcParametrs.Edit;
      Client_CalcParametrs.FieldByName('TARIFFMARK64').Value := null;
      Client_CalcParametrs.Post;
    end;

    // Вагон приписан к станции погрузки/выгрузки
    if Client_DopParam.Locate('param_name', 'ADDSTATION', [loCaseInsensitive]) then begin
      if Client_CalcParametrs.FieldByName('ADDSTATION').IsNull then begin
        Client_CalcParametrs.Edit;
        Client_CalcParametrs.FieldByName('ADDSTATION').Value := Client_DopParam.FieldByName('param_val').Value;
        Client_CalcParametrs.Post;
      end;
    end else begin
      Client_CalcParametrs.Edit;
      Client_CalcParametrs.FieldByName('ADDSTATION').Value := null;
      Client_CalcParametrs.Post;
    end;

    // Полувагоны моделей 12-9761-02, 12-9833-01, 12-9853, 12-9869
    if Client_DopParam.Locate('param_name', 'MODELOW', [loCaseInsensitive]) then begin
      if Client_CalcParametrs.FieldByName('MODELOW').IsNull then begin
        Client_CalcParametrs.Edit;
        Client_CalcParametrs.FieldByName('MODELOW').Value := Client_DopParam.FieldByName('param_val').Value;
        Client_CalcParametrs.Post;
      end;
    end else begin
      Client_CalcParametrs.Edit;
      Client_CalcParametrs.FieldByName('MODELOW').Value := null;
      Client_CalcParametrs.Post;
    end;

    // Полувагоны моделей 12-196-01, 12-196-02
    if Client_DopParam.Locate('param_name', 'MODELOWN', [loCaseInsensitive]) then begin
      if Client_CalcParametrs.FieldByName('MODELOWN').IsNull then begin
        Client_CalcParametrs.Edit;
        Client_CalcParametrs.FieldByName('MODELOWN').Value := Client_DopParam.FieldByName('param_val').Value;
        Client_CalcParametrs.Post;
      end;
    end else begin
      Client_CalcParametrs.Edit;
      Client_CalcParametrs.FieldByName('MODELOWN').Value := null;
      Client_CalcParametrs.Post;
    end;

    // Полувагоны модели 12-2143
    if Client_DopParam.Locate('param_name', 'MODELOWND', [loCaseInsensitive]) then begin
      if Client_CalcParametrs.FieldByName('MODELOWND').IsNull then begin
        Client_CalcParametrs.Edit;
        Client_CalcParametrs.FieldByName('MODELOWND').Value := Client_DopParam.FieldByName('param_val').Value;
        Client_CalcParametrs.Post;
      end;
    end else begin
      Client_CalcParametrs.Edit;
      Client_CalcParametrs.FieldByName('MODELOWND').Value := null;
      Client_CalcParametrs.Post;
    end;

    // Расчет расстояний по приказу № 9 от 22.01.2014 г.
    if Client_DopParam.Locate('param_name', 'NEW_DISTANCES', [loCaseInsensitive]) then begin
      if Client_CalcParametrs.FieldByName('NEW_DISTANCES').IsNull then begin
        Client_CalcParametrs.Edit;
        Client_CalcParametrs.FieldByName('NEW_DISTANCES').Value := Client_DopParam.FieldByName('param_val').Value;
        Client_CalcParametrs.Post;
      end;
    end else begin
      Client_CalcParametrs.Edit;
      Client_CalcParametrs.FieldByName('NEW_DISTANCES').Value := null;
      Client_CalcParametrs.Post;
    end;

    // Project_Tariff_Index_2018
    if Client_DopParam.Locate('param_name', 'PROJECT_TARIF_INDEX_2018', [loCaseInsensitive]) then begin
      if Client_CalcParametrs.FieldByName('Project_Tariff_Index_2018').IsNull then begin
        Client_CalcParametrs.Edit;
        Client_CalcParametrs.FieldByName('Project_Tariff_Index_2018').Value := Client_DopParam.FieldByName('param_val').Value;
        Client_CalcParametrs.Post;
      end;
    end else begin
      Client_CalcParametrs.Edit;
      Client_CalcParametrs.FieldByName('Project_Tariff_Index_2018').Value := null;
      Client_CalcParametrs.Post;
    end;

    // Project_Tariff_AddIndex_2018
    if Client_DopParam.Locate('param_name', 'PROJECT_TARIF_ADDINDEX_2018', [loCaseInsensitive]) then begin
      if Client_CalcParametrs.FieldByName('Project_Tariff_AddIndex_2018').IsNull then begin
        Client_CalcParametrs.Edit;
        Client_CalcParametrs.FieldByName('Project_Tariff_AddIndex_2018').Value := Client_DopParam.FieldByName('param_val').Value;
        Client_CalcParametrs.Post;
      end;
    end else begin
      Client_CalcParametrs.Edit;
      Client_CalcParametrs.FieldByName('Project_Tariff_AddIndex_2018').Value := null;
      Client_CalcParametrs.Post;
    end;

    // Zhur_Miller
    if Client_DopParam.Locate('param_name', 'Zhur_Miller', [loCaseInsensitive]) then begin
      if Client_CalcParametrs.FieldByName('Zhur_Miller').IsNull then begin
        Client_CalcParametrs.Edit;
        Client_CalcParametrs.FieldByName('Zhur_Miller').Value := Client_DopParam.FieldByName('param_val').Value;
        Client_CalcParametrs.Post;
      end;
    end else begin
      Client_CalcParametrs.Edit;
      Client_CalcParametrs.FieldByName('Zhur_Miller').Value := null;
      Client_CalcParametrs.Post;
    end;
  end;
end;

procedure TfmCtmNewMain.CreateTree();
var id1, id2, id3 : integer;
    save_cod : integer;
begin
  GetDopParam();

  // Станции
  cxLabel3.Caption  := Client_CalcParametrs.FieldByName('node_begin_cod').AsString;
  cxLabel4.Caption  := Client_CalcParametrs.FieldByName('node_begin_name').AsString;
  cxLabel6.Caption  := Client_CalcParametrs.FieldByName('node_begin_land_name').AsString;
  cxLabel8.Caption  := Client_CalcParametrs.FieldByName('node_begin_road_name').AsString;
  cxLabel22.Caption := Client_CalcParametrs.FieldByName('node_begin_PPland_name').AsString;
  cxLabel5.Caption  := iif(Client_CalcParametrs.FieldByName('node_begin_land_name').IsNull, '', 'Страна:');
  cxLabel7.Caption  := iif(Client_CalcParametrs.FieldByName('node_begin_road_name').IsNull, '', 'Дорога:');
  cxLabel21.Caption := iif(Client_CalcParametrs.FieldByName('node_begin_PPland_name').IsNull, '', 'Страна отправления:');

  cxLabel12.Caption := Client_CalcParametrs.FieldByName('node_end_cod').AsString;
  cxLabel13.Caption := Client_CalcParametrs.FieldByName('node_end_name').AsString;
  cxLabel15.Caption := Client_CalcParametrs.FieldByName('node_end_land_name').AsString;
  cxLabel17.Caption := Client_CalcParametrs.FieldByName('node_end_road_name').AsString;
  cxLabel24.Caption := Client_CalcParametrs.FieldByName('node_end_PPland_name').AsString;
  cxLabel14.Caption := iif(Client_CalcParametrs.FieldByName('node_end_land_name').IsNull, '', 'Страна:');
  cxLabel16.Caption := iif(Client_CalcParametrs.FieldByName('node_end_road_name').IsNull, '', 'Дорога:');
  cxLabel23.Caption := iif(Client_CalcParametrs.FieldByName('node_end_PPland_name').IsNull, '', 'Страна назначения:');
  //

  if Client_MainTree.RecordCount > 0 then
    save_cod := Client_MainTree.FieldByName('node_cod').AsInteger
  else
    save_cod := -9;

  Client_MainTree.EmptyDataSet;
  Client_MainTree.DisableControls;

  if not Client_CalcParametrs.FieldByName('Project_Tariff_Index_2018').IsNull then begin
    Client_MainTree.Append;
    Client_MainTree.FieldByName('parent_id'     ).Value := null;
    Client_MainTree.FieldByName('node_name'     ).Value := 'Проект приаза по доп. индексации 1,5% по России на 2018';
    Client_MainTree.FieldByName('node_value'    ).Value := null;
    Client_MainTree.FieldByName('node_cod'      ).Value := '5';
    Client_MainTree.FieldByName('node_image_id' ).Value := iif(Client_CalcParametrs.FieldByName('Project_Tariff_Index_2018').AsBoolean = True, 2, 3);
    Client_MainTree.Post;
  end;

  if not Client_CalcParametrs.FieldByName('Project_Tariff_AddIndex_2018').IsNull then begin
    Client_MainTree.Append;
    Client_MainTree.FieldByName('parent_id'     ).Value := null;
    Client_MainTree.FieldByName('node_name'     ).Value := 'Проект приаза по доп. индексации 2% по России на 2018';
    Client_MainTree.FieldByName('node_value'    ).Value := null;
    Client_MainTree.FieldByName('node_cod'      ).Value := '6';
    Client_MainTree.FieldByName('node_image_id' ).Value := iif(Client_CalcParametrs.FieldByName('Project_Tariff_AddIndex_2018').AsBoolean = True, 2, 3);
    Client_MainTree.Post;
  end;

  if not Client_CalcParametrs.FieldByName('Zhur_Miller').IsNull then begin
    Client_MainTree.Append;
    Client_MainTree.FieldByName('parent_id'     ).Value := null;
    Client_MainTree.FieldByName('node_name'     ).Value := 'По участку Журавка-Чертково-Миллерово';
    Client_MainTree.FieldByName('node_value'    ).Value := null;
    Client_MainTree.FieldByName('node_cod'      ).Value := '7';
    Client_MainTree.FieldByName('node_image_id' ).Value := iif(Client_CalcParametrs.FieldByName('Zhur_Miller').AsBoolean = True, 2, 3);
    Client_MainTree.Post;
  end;

  if not Client_CalcParametrs.FieldByName('NEW_DISTANCES').IsNull then begin
    Client_MainTree.Append;
    Client_MainTree.FieldByName('parent_id'     ).Value := null;
    Client_MainTree.FieldByName('node_name'     ).Value := 'Расчет расстояний по приказу № 9 от 22.01.2014 г.';
    Client_MainTree.FieldByName('node_value'    ).Value := null;
    Client_MainTree.FieldByName('node_cod'      ).Value := '10';
    Client_MainTree.FieldByName('node_image_id' ).Value := iif(Client_CalcParametrs.FieldByName('NEW_DISTANCES').AsBoolean = True, 2, 3);
    Client_MainTree.Post;
  end;


  Client_MainTree.Append;
  Client_MainTree.FieldByName('parent_id'     ).Value := null;
  Client_MainTree.FieldByName('node_name'     ).Value := 'Отправка';
  Client_MainTree.FieldByName('node_value'    ).Value := null;
  Client_MainTree.FieldByName('node_cod'      ).Value := '100';
  Client_MainTree.FieldByName('node_image_id' ).Value := 0;
  Client_MainTree.Post;
  id1 := Client_MainTree.FieldByName('id').AsInteger;

    Client_MainTree.Append;
    Client_MainTree.FieldByName('parent_id'     ).Value := id1;
    Client_MainTree.FieldByName('node_name'     ).Value := Client_CalcParametrs.FieldByName('Otpr_name').AsString;
    Client_MainTree.FieldByName('node_value'    ).Value := Client_CalcParametrs.FieldByName('Otpr_name').AsString;
    Client_MainTree.FieldByName('node_cod'      ).Value := '101';
    Client_MainTree.FieldByName('node_image_id' ).Value := 1;
    Client_MainTree.Post;

    Client_MainTree.Append;
    Client_MainTree.FieldByName('parent_id'     ).Value := id1;
    Client_MainTree.FieldByName('node_name'     ).Value := Client_CalcParametrs.FieldByName('Send_name').AsString;
    Client_MainTree.FieldByName('node_value'    ).Value := Client_CalcParametrs.FieldByName('Send_name').AsString;
    Client_MainTree.FieldByName('node_cod'      ).Value := '102';
    Client_MainTree.FieldByName('node_image_id' ).Value := 1;
    Client_MainTree.Post;

    if not Client_CalcParametrs.FieldByName('ExitRoute_name').IsNull then begin
      Client_MainTree.Append;
      Client_MainTree.FieldByName('parent_id'     ).Value := id1;
      Client_MainTree.FieldByName('node_name'     ).Value := Client_CalcParametrs.FieldByName('ExitRoute_name').AsString;
      Client_MainTree.FieldByName('node_value'    ).Value := Client_CalcParametrs.FieldByName('ExitRoute_name').AsString;
      Client_MainTree.FieldByName('node_cod'      ).Value := '103';
      Client_MainTree.FieldByName('node_image_id' ).Value := 1;
      Client_MainTree.Post;
    end;

  if Client_CalcParametrs.FieldByName('Send_id').AsInteger <> 1900 then begin // Вагон прикрытия

    Client_MainTree.Append;
    Client_MainTree.FieldByName('parent_id'     ).Value := null;
    Client_MainTree.FieldByName('node_name'     ).Value := 'Груз';
    Client_MainTree.FieldByName('node_value'    ).Value := null;
    Client_MainTree.FieldByName('node_cod'      ).Value := '200';
    Client_MainTree.FieldByName('node_image_id' ).Value := 0;
    Client_MainTree.Post;
    id1 := Client_MainTree.FieldByName('id').AsInteger;

      Client_MainTree.Append;
      Client_MainTree.FieldByName('parent_id'     ).Value := id1;
      Client_MainTree.FieldByName('node_name'     ).Value := 'Груз ЕТСНГ';
      Client_MainTree.FieldByName('node_value'    ).Value := Client_CalcParametrs.FieldByName('ETSNG_cod').AsString;
      Client_MainTree.FieldByName('node_cod'      ).Value := '201';
      Client_MainTree.FieldByName('node_image_id' ).Value := 1;
      Client_MainTree.Post;
      id2 := Client_MainTree.FieldByName('id').AsInteger;

        Client_MainTree.Append;
        Client_MainTree.FieldByName('parent_id'     ).Value := id2;
        Client_MainTree.FieldByName('node_name'     ).Value := Client_CalcParametrs.FieldByName('ETSNG_name').AsString;
        Client_MainTree.FieldByName('node_value'    ).Value := Client_CalcParametrs.FieldByName('ETSNG_name').AsString;
        Client_MainTree.FieldByName('node_cod'      ).Value := '202';
        Client_MainTree.FieldByName('node_image_id' ).Value := 1;
        Client_MainTree.Post;

        Client_MainTree.Append;
        Client_MainTree.FieldByName('parent_id'     ).Value := id2;
        Client_MainTree.FieldByName('node_name'     ).Value := 'Тарифный класс ';
        Client_MainTree.FieldByName('node_value'    ).Value := Client_CalcParametrs.FieldByName('ETSNG_klass').AsString;
        Client_MainTree.FieldByName('node_cod'      ).Value := '203';
        Client_MainTree.FieldByName('node_image_id' ).Value := 1;
        Client_MainTree.Post;

      Client_MainTree.Append;
      Client_MainTree.FieldByName('parent_id'     ).Value := id1;
      Client_MainTree.FieldByName('node_name'     ).Value := 'Груз ГНГ';
      Client_MainTree.FieldByName('node_value'    ).Value := Client_CalcParametrs.FieldByName('GNG_cod').AsString;
      Client_MainTree.FieldByName('node_cod'      ).Value := '211';
      Client_MainTree.FieldByName('node_image_id' ).Value := 1;
      Client_MainTree.Post;
      id2 := Client_MainTree.FieldByName('id').AsInteger;

        Client_MainTree.Append;
        Client_MainTree.FieldByName('parent_id'     ).Value := id2;
        Client_MainTree.FieldByName('node_name'     ).Value := Client_CalcParametrs.FieldByName('GNG_name').AsString;
        Client_MainTree.FieldByName('node_value'    ).Value := Client_CalcParametrs.FieldByName('GNG_name').AsString;
        Client_MainTree.FieldByName('node_cod'      ).Value := '212';
        Client_MainTree.FieldByName('node_image_id' ).Value := 1;
        Client_MainTree.Post;

        Client_MainTree.Append;
        Client_MainTree.FieldByName('parent_id'     ).Value := id2;
        Client_MainTree.FieldByName('node_name'     ).Value := 'Класс ЕТТ ';
        Client_MainTree.FieldByName('node_value'    ).Value := Client_CalcParametrs.FieldByName('GNG_klass').AsString;
        Client_MainTree.FieldByName('node_cod'      ).Value := '213';
        Client_MainTree.FieldByName('node_image_id' ).Value := 1;
        Client_MainTree.Post;

      if Client_CalcParametrs.FieldByName('Send_id').AsInteger <> 100 then begin
        Client_MainTree.Append;
        Client_MainTree.FieldByName('parent_id'     ).Value := id1;
        if Client_CalcParametrs.FieldByName('Otpr_id').AsInteger = 3000 then begin
          Client_MainTree.FieldByName('node_name'     ).Value := 'Вес груза в одном контейнере,т ';
        end else begin
          Client_MainTree.FieldByName('node_name'     ).Value := 'Вес груза в одном вагоне,т ';
        end;
        Client_MainTree.FieldByName('node_value'    ).Value := Client_CalcParametrs.FieldByName('Weight').AsString;
        Client_MainTree.FieldByName('node_cod'      ).Value := '220';
        Client_MainTree.FieldByName('node_image_id' ).Value := 0;
        Client_MainTree.Post;
      end;

      if not Client_CalcParametrs.FieldByName('Send_id').IsNull then
        if Client_CalcParametrs.FieldByName('Send_id').AsInteger = 5 then begin

          Client_MainTree.Append;
          Client_MainTree.FieldByName('parent_id'     ).Value := id1;
          Client_MainTree.FieldByName('node_name'     ).Value := 'Негабаритность ';
          if Client_CalcParametrs.FieldByName('Bulkiness_name').AsString <> '' then
            Client_MainTree.FieldByName('node_value'    ).Value := Client_CalcParametrs.FieldByName('Bulkiness_name').AsString
          else
            Client_MainTree.FieldByName('node_value'    ).Value := 'Габаритный';
          Client_MainTree.FieldByName('node_cod'      ).Value := '230';
          Client_MainTree.FieldByName('node_image_id' ).Value := 0;
          Client_MainTree.Post;

        end;


    Client_MainTree.Append;
    Client_MainTree.FieldByName('parent_id'     ).Value := null;
    Client_MainTree.FieldByName('node_name'     ).Value := 'Род подвижного средства';
    Client_MainTree.FieldByName('node_value'    ).Value := null;
    Client_MainTree.FieldByName('node_cod'      ).Value := '300';
    Client_MainTree.FieldByName('node_image_id' ).Value := 0;
    Client_MainTree.Post;
    id1 := Client_MainTree.FieldByName('id').AsInteger;

      Client_MainTree.Append;
      Client_MainTree.FieldByName('parent_id'     ).Value := id1;
      Client_MainTree.FieldByName('node_name'     ).Value := Client_CalcParametrs.FieldByName('Cars_name').AsString;
      Client_MainTree.FieldByName('node_value'    ).Value := Client_CalcParametrs.FieldByName('Cars_name').AsString;
      Client_MainTree.FieldByName('node_cod'      ).Value := '310';
      Client_MainTree.FieldByName('node_image_id' ).Value := 1;
      Client_MainTree.Post;

      if not Client_CalcParametrs.FieldByName('MODELOW').IsNull then begin
        Client_MainTree.Append;
        Client_MainTree.FieldByName('parent_id'     ).Value := id1;
        Client_MainTree.FieldByName('node_name'     ).Value := 'Полувагоны моделей 12-9761-02, 12-9833-01, 12-9853, 12-9869';
        Client_MainTree.FieldByName('node_value'    ).Value := null;
        Client_MainTree.FieldByName('node_cod'      ).Value := '314';
        Client_MainTree.FieldByName('node_image_id' ).Value := iif(Client_CalcParametrs.FieldByName('MODELOW').AsBoolean = True, 2, 3);
        Client_MainTree.Post;
      end;

      if not Client_CalcParametrs.FieldByName('MODELOWN').IsNull then begin
        Client_MainTree.Append;
        Client_MainTree.FieldByName('parent_id'     ).Value := id1;
        Client_MainTree.FieldByName('node_name'     ).Value := 'Полувагоны моделей 12-196-01, 12-196-02';
        Client_MainTree.FieldByName('node_value'    ).Value := null;
        Client_MainTree.FieldByName('node_cod'      ).Value := '315';
        Client_MainTree.FieldByName('node_image_id' ).Value := iif(Client_CalcParametrs.FieldByName('MODELOWN').AsBoolean = True, 2, 3);
        Client_MainTree.Post;
      end;

      if not Client_CalcParametrs.FieldByName('MODELOWND').IsNull then begin
        Client_MainTree.Append;
        Client_MainTree.FieldByName('parent_id'     ).Value := id1;
        Client_MainTree.FieldByName('node_name'     ).Value := 'Полувагоны модели 12-2143';
        Client_MainTree.FieldByName('node_value'    ).Value := null;
        Client_MainTree.FieldByName('node_cod'      ).Value := '316';
        Client_MainTree.FieldByName('node_image_id' ).Value := iif(Client_CalcParametrs.FieldByName('MODELOWND').AsBoolean = True, 2, 3);
        Client_MainTree.Post;
      end;

      if Client_CalcParametrs.FieldByName('Otpr_id').AsInteger = 3000 then begin
        Client_MainTree.Append;
        Client_MainTree.FieldByName('parent_id'     ).Value := id1;
        Client_MainTree.FieldByName('node_name'     ).Value := 'Параметры ';
        if Client_CalcParametrs.FieldByName('Container_id').IsNull then
          Client_MainTree.FieldByName('node_value'    ).Value := 'не совпадают с универсальными'
        else
          Client_MainTree.FieldByName('node_value'    ).Value := Client_CalcParametrs.FieldByName('Container_name').AsString;

        Client_MainTree.FieldByName('node_cod'      ).Value := '311';
        Client_MainTree.FieldByName('node_image_id' ).Value := 1;
        Client_MainTree.Post;

        Client_MainTree.Append;
        Client_MainTree.FieldByName('parent_id'     ).Value := id1;
        Client_MainTree.FieldByName('node_name'     ).Value := 'Ко-во контейнеров ';
        Client_MainTree.FieldByName('node_value'    ).Value := Client_CalcParametrs.FieldByName('Vag_otpr').AsString;
        Client_MainTree.FieldByName('node_cod'      ).Value := '330';
        Client_MainTree.FieldByName('node_image_id' ).Value := 1;
        Client_MainTree.Post;

        Client_MainTree.Append;
        Client_MainTree.FieldByName('parent_id'     ).Value := id1;
        Client_MainTree.FieldByName('node_name'     ).Value := 'Принадлежность ';
        case Client_CalcParametrs.FieldByName('Owners_id').AsInteger of
          1: Client_MainTree.FieldByName('node_value').Value := 'Общего парка';
          2: Client_MainTree.FieldByName('node_value').Value := 'Собственный';
          3: Client_MainTree.FieldByName('node_value').Value := 'Арендованный';
          7: Client_MainTree.FieldByName('node_value').Value := 'Привлеченный ОАО РЖД';
        end;
        Client_MainTree.FieldByName('node_cod'      ).Value := '360';
        Client_MainTree.FieldByName('node_image_id' ).Value := 1;
        Client_MainTree.Post;

      end else begin
        Client_MainTree.Append;
        Client_MainTree.FieldByName('parent_id'     ).Value := id1;
        Client_MainTree.FieldByName('node_name'     ).Value := 'Кол-во ПС ';
        Client_MainTree.FieldByName('node_value'    ).Value := Client_CalcParametrs.FieldByName('Kol_PS').AsString;
        Client_MainTree.FieldByName('node_cod'      ).Value := '320';
        Client_MainTree.FieldByName('node_image_id' ).Value := 1;
        Client_MainTree.Post;

        Client_MainTree.Append;
        Client_MainTree.FieldByName('parent_id'     ).Value := id1;
        Client_MainTree.FieldByName('node_name'     ).Value := 'Ко-во вагонов в отправке ';
        Client_MainTree.FieldByName('node_value'    ).Value := Client_CalcParametrs.FieldByName('Vag_otpr').AsString;
        Client_MainTree.FieldByName('node_cod'      ).Value := '330';
        Client_MainTree.FieldByName('node_image_id' ).Value := 1;
        Client_MainTree.Post;

        Client_MainTree.Append;
        Client_MainTree.FieldByName('parent_id'     ).Value := id1;
        Client_MainTree.FieldByName('node_name'     ).Value := 'Грузоподъемность, т ';
        Client_MainTree.FieldByName('node_value'    ).Value := Client_CalcParametrs.FieldByName('Cars_gp').AsString;
        Client_MainTree.FieldByName('node_cod'      ).Value := '340';
        Client_MainTree.FieldByName('node_image_id' ).Value := 1;
        Client_MainTree.Post;

        Client_MainTree.Append;
        Client_MainTree.FieldByName('parent_id'     ).Value := id1;
        Client_MainTree.FieldByName('node_name'     ).Value := 'Кол-во осей ';
        Client_MainTree.FieldByName('node_value'    ).Value := Client_CalcParametrs.FieldByName('Cars_axis').AsString;
        Client_MainTree.FieldByName('node_cod'      ).Value := '350';
        Client_MainTree.FieldByName('node_image_id' ).Value := 0;
        Client_MainTree.Post;

        Client_MainTree.Append;
        Client_MainTree.FieldByName('parent_id'     ).Value := id1;
        Client_MainTree.FieldByName('node_name'     ).Value := 'Принадлежность ';
        case Client_CalcParametrs.FieldByName('Owners_id').AsInteger of
          1: Client_MainTree.FieldByName('node_value').Value := 'Общего парка';
          2: Client_MainTree.FieldByName('node_value').Value := 'Собственный';
          3: Client_MainTree.FieldByName('node_value').Value := 'Арендованный';
          7: Client_MainTree.FieldByName('node_value').Value := 'Привлеченный ОАО РЖД';
        end;
        Client_MainTree.FieldByName('node_cod'      ).Value := '360';
        Client_MainTree.FieldByName('node_image_id' ).Value := 1;
        Client_MainTree.Post;

        if not Client_CalcParametrs.FieldByName('Empty_loading').IsNull then
          if Client_CalcParametrs.FieldByName('Send_id').AsInteger = 100 then begin

            Client_MainTree.Append;
            Client_MainTree.FieldByName('parent_id'     ).Value := id1;
            if Client_CalcParametrs.FieldByName('Empty_loading').AsBoolean then
              Client_MainTree.FieldByName('node_name').Value := 'Из-под выгрузки'
            else
              Client_MainTree.FieldByName('node_name').Value := 'Под погрузку';
            Client_MainTree.FieldByName('node_value'    ).Value := null;
            Client_MainTree.FieldByName('node_cod'      ).Value := '370';
            Client_MainTree.FieldByName('node_image_id' ).Value := 1;
            Client_MainTree.Post;
            id2 := Client_MainTree.FieldByName('id').AsInteger;


            Client_MainTree.Append;
            Client_MainTree.FieldByName('parent_id'     ).Value := id2;
            Client_MainTree.FieldByName('node_name'     ).Value := 'Код ЕТСНГ ';
            Client_MainTree.FieldByName('node_value'    ).Value := Client_CalcParametrs.FieldByName('Empty_ETSNG_cod').AsString;
            Client_MainTree.FieldByName('node_cod'      ).Value := '371';
            Client_MainTree.FieldByName('node_image_id' ).Value := 1;
            Client_MainTree.Post;

            Client_MainTree.Append;
            Client_MainTree.FieldByName('parent_id'     ).Value := id2;
            Client_MainTree.FieldByName('node_name'     ).Value := '';
            Client_MainTree.FieldByName('node_value'    ).Value := Client_CalcParametrs.FieldByName('Empty_ETSNG_name').AsString;
            Client_MainTree.FieldByName('node_cod'      ).Value := '372';
            Client_MainTree.FieldByName('node_image_id' ).Value := 1;
            Client_MainTree.Post;

            Client_MainTree.Append;
            Client_MainTree.FieldByName('parent_id'     ).Value := id2;
            Client_MainTree.FieldByName('node_name'     ).Value := 'Год ГНГ ';
            Client_MainTree.FieldByName('node_value'    ).Value := Client_CalcParametrs.FieldByName('Empty_GNG_cod').AsString;
            Client_MainTree.FieldByName('node_cod'      ).Value := '373';
            Client_MainTree.FieldByName('node_image_id' ).Value := 1;
            Client_MainTree.Post;

            Client_MainTree.Append;
            Client_MainTree.FieldByName('parent_id'     ).Value := id2;
            Client_MainTree.FieldByName('node_name'     ).Value := '';
            Client_MainTree.FieldByName('node_value'    ).Value := Client_CalcParametrs.FieldByName('Empty_GNG_name').AsString;
            Client_MainTree.FieldByName('node_cod'      ).Value := '374';
            Client_MainTree.FieldByName('node_image_id' ).Value := 1;
            Client_MainTree.Post;
          end;
      end;

      if not Client_CalcParametrs.FieldByName('ADDSTATION').IsNull then begin
        Client_MainTree.Append;
        Client_MainTree.FieldByName('parent_id'     ).Value := id1;
        Client_MainTree.FieldByName('node_name'     ).Value := 'Вагон приписан к станции погрузки/выгрузки';
        Client_MainTree.FieldByName('node_value'    ).Value := null;
        Client_MainTree.FieldByName('node_cod'      ).Value := '385';
        Client_MainTree.FieldByName('node_image_id' ).Value := iif(Client_CalcParametrs.FieldByName('ADDSTATION').AsBoolean = True, 2, 3);
        Client_MainTree.Post;
      end;

  //  Client_MainTree.Append;
  //  Client_MainTree.FieldByName('parent_id'     ).Value := null;
  //  Client_MainTree.FieldByName('node_name'     ).Value := 'Дополнительное оборудование';
  //  Client_MainTree.FieldByName('node_value'    ).Value := null;
  //  Client_MainTree.FieldByName('node_cod'      ).Value := '400';
  //  Client_MainTree.FieldByName('node_image_id' ).Value := 0;
  //  Client_MainTree.Post;


    if Client_CalcParametrs.FieldByName('Otpr_id').AsInteger = 3000 then begin
      Client_MainTree.Append;
      Client_MainTree.FieldByName('parent_id'     ).Value := null;
      Client_MainTree.FieldByName('node_name'     ).Value := 'Тип платформы';
      Client_MainTree.FieldByName('node_value'    ).Value := null;
      Client_MainTree.FieldByName('node_cod'      ).Value := '400';
      Client_MainTree.FieldByName('node_image_id' ).Value := 0;
      Client_MainTree.Post;
      id1 := Client_MainTree.FieldByName('id').AsInteger;

      Client_MainTree.Append;
      Client_MainTree.FieldByName('parent_id'     ).Value := id1;
      Client_MainTree.FieldByName('node_name'     ).Value := '';
      Client_MainTree.FieldByName('node_value'    ).Value := Client_CalcParametrs.FieldByName('FlatWagonCaption').AsString;
      Client_MainTree.FieldByName('node_cod'      ).Value := '410';
      Client_MainTree.FieldByName('node_image_id' ).Value := 1;
      Client_MainTree.Post;

      Client_MainTree.Append;
      Client_MainTree.FieldByName('parent_id'     ).Value := id1;
      Client_MainTree.FieldByName('node_name'     ).Value := 'Количество платформ ';
      Client_MainTree.FieldByName('node_value'    ).Value := Client_CalcParametrs.FieldByName('FWCount').AsString;
      Client_MainTree.FieldByName('node_cod'      ).Value := '420';
      Client_MainTree.FieldByName('node_image_id' ).Value := 1;
      Client_MainTree.Post;

      Client_MainTree.Append;
      Client_MainTree.FieldByName('parent_id'     ).Value := id1;
      Client_MainTree.FieldByName('node_name'     ).Value := 'Принадлежность платформы ';
      case Client_CalcParametrs.FieldByName('FWOwnP').AsInteger of
          1: Client_MainTree.FieldByName('node_value').Value := 'Общего парка';
          2: Client_MainTree.FieldByName('node_value').Value := 'Собственный';
          3: Client_MainTree.FieldByName('node_value').Value := 'Арендованный';
          7: Client_MainTree.FieldByName('node_value').Value := 'Привлеченный ОАО РЖД';
      end;
      Client_MainTree.FieldByName('node_cod'      ).Value := '430';
      Client_MainTree.FieldByName('node_image_id' ).Value := 1;
      Client_MainTree.Post;

      Client_MainTree.Append;
      Client_MainTree.FieldByName('parent_id'     ).Value := id1;
      Client_MainTree.FieldByName('node_name'     ).Value := 'Собственник ';
      Client_MainTree.FieldByName('node_value'    ).Value := 'Любой, кроме перечисленных';
      Client_MainTree.FieldByName('node_cod'      ).Value := '440';
      Client_MainTree.FieldByName('node_image_id' ).Value := 1;
      Client_MainTree.Post;

      Client_MainTree.Append;
      Client_MainTree.FieldByName('parent_id'     ).Value := id1;
      Client_MainTree.FieldByName('node_name'     ).Value := 'Вес груза и тары (на 1 платформе) ';
      Client_MainTree.FieldByName('node_value'    ).Value := Client_CalcParametrs.FieldByName('FWOCE').AsString;
      Client_MainTree.FieldByName('node_cod'      ).Value := '450';
      Client_MainTree.FieldByName('node_image_id' ).Value := 0;
      Client_MainTree.Post;
    end;


    if (Client_CalcParametrs.FieldByName('Owners_id').AsInteger = 2) or
       (Client_CalcParametrs.FieldByName('Owners_id').AsInteger = 3) then begin

      Client_MainTree.Append;
      Client_MainTree.FieldByName('parent_id'     ).Value := null;
      Client_MainTree.FieldByName('node_name'     ).Value := 'Возврат порожних вагонов/контейнеров';
      Client_MainTree.FieldByName('node_value'    ).Value := null;
      Client_MainTree.FieldByName('node_cod'      ).Value := '700';
      Client_MainTree.FieldByName('node_image_id' ).Value := 0;
      Client_MainTree.Post;
      id1 := Client_MainTree.FieldByName('id').AsInteger;

      case Client_CalcParametrs.FieldByName('return_type').AsInteger of
      0 : begin
            Client_MainTree.Append;
            Client_MainTree.FieldByName('parent_id'     ).Value := id1;
            Client_MainTree.FieldByName('node_name'     ).Value := 'Не учитывать';
            Client_MainTree.FieldByName('node_value'    ).Value := 'Не учитывать';
            Client_MainTree.FieldByName('node_cod'      ).Value := '710';
            Client_MainTree.FieldByName('node_image_id' ).Value := 3;
            Client_MainTree.Post;
          end;
      1 : begin
            Client_MainTree.Append;
            Client_MainTree.FieldByName('parent_id'     ).Value := id1;
            Client_MainTree.FieldByName('node_name'     ).Value := 'Станция возврата';
            Client_MainTree.FieldByName('node_value'    ).Value := Client_CalcParametrs.FieldByName('node_begin_name').AsString;
            Client_MainTree.FieldByName('node_cod'      ).Value := '710';
            Client_MainTree.FieldByName('node_image_id' ).Value := 2;
            Client_MainTree.Post;
          end;
      2 : begin
            Client_MainTree.Append;
            Client_MainTree.FieldByName('parent_id'     ).Value := id1;
            Client_MainTree.FieldByName('node_name'     ).Value := 'Станция возврата';
            Client_MainTree.FieldByName('node_value'    ).Value := Client_CalcParametrs.FieldByName('return_node_name').AsString;
            Client_MainTree.FieldByName('node_cod'      ).Value := '710';
            Client_MainTree.FieldByName('node_image_id' ).Value := 2;
            Client_MainTree.Post;
          end;
      end;
    end;

    if not Client_CalcParametrs.FieldByName('route_name').IsNull then begin
      if ClientDS_AltRoute.RecordCount > 0 then begin
        Client_MainTree.Append;
        Client_MainTree.FieldByName('parent_id'     ).Value := null;
        Client_MainTree.FieldByName('node_name'     ).Value := 'Маршрут';
        Client_MainTree.FieldByName('node_value'    ).Value := null;
        Client_MainTree.FieldByName('node_cod'      ).Value := '750';
        Client_MainTree.FieldByName('node_image_id' ).Value := 0;
        Client_MainTree.Post;
        id1 := Client_MainTree.FieldByName('id').AsInteger;

        ClientDS_AltRoute.First;
        while not ClientDS_AltRoute.Eof do begin
          Client_MainTree.Append;
          Client_MainTree.FieldByName('parent_id'     ).Value := id1;
          Client_MainTree.FieldByName('node_name'     ).Value := ClientDS_AltRoute.FieldByName('Caption').AsString;
          Client_MainTree.FieldByName('node_value'    ).Value := null;
          Client_MainTree.FieldByName('node_cod'      ).Value := 760 + ClientDS_AltRoute.RecNo;
          Client_MainTree.FieldByName('node_tag'      ).Value := ClientDS_AltRoute.FieldByName('Id').AsInteger;

          if (Client_CalcParametrs.FieldByName('route_id').AsInteger = ClientDS_AltRoute.FieldByName('Id').AsInteger) and (Client_CalcParametrs.FieldByName('enable_alt_route').AsBoolean = True) then
            Client_MainTree.FieldByName('node_image_id' ).Value := 2
          else
            Client_MainTree.FieldByName('node_image_id' ).Value := 3;
          Client_MainTree.Post;

          ClientDS_AltRoute.Next;
        end;

      end;
    end;
  end;


  if Client_CalcParametrs.FieldByName('Send_id').AsInteger = 1900 then begin // Вагон прикрытия
    Client_MainTree.Append;
    Client_MainTree.FieldByName('parent_id'     ).Value := null;
    Client_MainTree.FieldByName('node_name'     ).Value := 'Вагон прикрытия';
    Client_MainTree.FieldByName('node_value'    ).Value := null;
    Client_MainTree.FieldByName('node_cod'      ).Value := '1000';
    Client_MainTree.FieldByName('node_image_id' ).Value := 0;
    Client_MainTree.Post;
    id1 := Client_MainTree.FieldByName('id').AsInteger;

      Client_MainTree.Append;
      Client_MainTree.FieldByName('parent_id'     ).Value := id1;
      Client_MainTree.FieldByName('node_name'     ).Value := Client_CalcParametrs.FieldByName('buffer_Name').AsString;
      Client_MainTree.FieldByName('node_value'    ).Value := Client_CalcParametrs.FieldByName('buffer_Name').AsString;
      Client_MainTree.FieldByName('node_cod'      ).Value := '1010';
      Client_MainTree.FieldByName('node_image_id' ).Value := 1;
      Client_MainTree.Post;

      if Client_CalcParametrs.FieldByName('buffer_ID').Value <> 1 then begin
        Client_MainTree.Append;
        Client_MainTree.FieldByName('parent_id'     ).Value := id1;
        Client_MainTree.FieldByName('node_name'     ).Value := Client_CalcParametrs.FieldByName('buffer_TranspName').AsString;
        Client_MainTree.FieldByName('node_value'    ).Value := Client_CalcParametrs.FieldByName('buffer_TranspName').AsString;
        Client_MainTree.FieldByName('node_cod'      ).Value := '1020';
        Client_MainTree.FieldByName('node_image_id' ).Value := 1;
        Client_MainTree.Post;

        Client_MainTree.Append;
        Client_MainTree.FieldByName('parent_id'     ).Value := id1;
        Client_MainTree.FieldByName('node_name'     ).Value := 'Количество вагонов прикрытия';
        Client_MainTree.FieldByName('node_value'    ).Value := Client_CalcParametrs.FieldByName('buffer_Count').AsString;
        Client_MainTree.FieldByName('node_cod'      ).Value := '1030';
        Client_MainTree.FieldByName('node_image_id' ).Value := 1;
        Client_MainTree.Post;

        Client_MainTree.Append;
        Client_MainTree.FieldByName('parent_id'     ).Value := id1;
        Client_MainTree.FieldByName('node_name'     ).Value := 'Количество осей';
        Client_MainTree.FieldByName('node_value'    ).Value := Client_CalcParametrs.FieldByName('buffer_Axis').AsString;
        Client_MainTree.FieldByName('node_cod'      ).Value := '1040';
        Client_MainTree.FieldByName('node_image_id' ).Value := 0;
        Client_MainTree.Post;

        Client_MainTree.Append;
        Client_MainTree.FieldByName('parent_id'     ).Value := id1;
        Client_MainTree.FieldByName('node_name'     ).Value := 'Принадлежность';
        Client_MainTree.FieldByName('node_value'    ).Value := Client_CalcParametrs.FieldByName('buffer_OwnerName').AsString;
        Client_MainTree.FieldByName('node_cod'      ).Value := '1050';
        Client_MainTree.FieldByName('node_image_id' ).Value := 1;
        Client_MainTree.Post;

        if Client_CalcParametrs.FieldByName('buffer_ControlFrameWeight' ).Value <> null then begin
          Client_MainTree.Append;
          Client_MainTree.FieldByName('parent_id'     ).Value := id1;
          Client_MainTree.FieldByName('node_name'     ).Value := 'Вес контрольной рамы';
          Client_MainTree.FieldByName('node_value'    ).Value := Client_CalcParametrs.FieldByName('buffer_ControlFrameWeight').AsString;
          Client_MainTree.FieldByName('node_cod'      ).Value := '1050';
          Client_MainTree.FieldByName('node_image_id' ).Value := 1;
          Client_MainTree.Post;
        end;
      end;



  end;



  Client_MainTree.Append;
  Client_MainTree.FieldByName('parent_id'     ).Value := null;
  Client_MainTree.FieldByName('node_name'     ).Value := 'Дополнительно';
  Client_MainTree.FieldByName('node_value'    ).Value := null;
  Client_MainTree.FieldByName('node_cod'      ).Value := '500';
  Client_MainTree.FieldByName('node_image_id' ).Value := 1;
  Client_MainTree.Post;
  id1 := Client_MainTree.FieldByName('id').AsInteger;

  if not Client_CalcParametrs.FieldByName('Option6').IsNull then begin
    Client_MainTree.Append;
    Client_MainTree.FieldByName('parent_id'     ).Value := id1;
    Client_MainTree.FieldByName('node_name'     ).Value := 'Воинские перевозки';
    Client_MainTree.FieldByName('node_value'    ).Value := null;
    Client_MainTree.FieldByName('node_cod'      ).Value := '510';
    if Client_CalcParametrs.FieldByName('Option6').AsBoolean = True then
      Client_MainTree.FieldByName('node_image_id' ).Value := 2
    else
      Client_MainTree.FieldByName('node_image_id' ).Value := 3;

    Client_MainTree.Post;
  end;

  if not Client_CalcParametrs.FieldByName('Option12').IsNull then begin
    Client_MainTree.Append;
    Client_MainTree.FieldByName('parent_id'     ).Value := id1;
    Client_MainTree.FieldByName('node_name'     ).Value := 'Под таможенным контролем';
    Client_MainTree.FieldByName('node_value'    ).Value := null;
    Client_MainTree.FieldByName('node_cod'      ).Value := '520';
    if Client_CalcParametrs.FieldByName('Option12').AsBoolean = True then
      Client_MainTree.FieldByName('node_image_id' ).Value := 2
    else
      Client_MainTree.FieldByName('node_image_id' ).Value := 3;

    Client_MainTree.Post;
  end;

  if not Client_CalcParametrs.FieldByName('TARIFFMARK64').IsNull then begin
      Client_MainTree.Append;
      Client_MainTree.FieldByName('parent_id'     ).Value := id1;
      Client_MainTree.FieldByName('node_name'     ).Value := 'Тар. отметка 64. Выполнение жд одной операции погрузки или выгрузки в местах общего пользования';
      Client_MainTree.FieldByName('node_value'    ).Value := null;
      Client_MainTree.FieldByName('node_cod'      ).Value := '530';
      Client_MainTree.FieldByName('node_image_id' ).Value := iif(Client_CalcParametrs.FieldByName('TARIFFMARK64').AsBoolean = True, 2, 3);
      Client_MainTree.Post;
    end;

  if Client_CalcParametrs.FieldByName('Send_id').AsInteger <> 1900 then begin // Вагон прикрытия
    Client_MainTree.Append;
    Client_MainTree.FieldByName('parent_id'     ).Value := null;
    Client_MainTree.FieldByName('node_name'     ).Value := 'Сопровождение';
    Client_MainTree.FieldByName('node_value'    ).Value := null;
    Client_MainTree.FieldByName('node_cod'      ).Value := '600';
    Client_MainTree.FieldByName('node_image_id' ).Value := 0;
    Client_MainTree.Post;
    id1 := Client_MainTree.FieldByName('id').AsInteger;

      Client_MainTree.Append;
      Client_MainTree.FieldByName('parent_id'     ).Value := id1;
      Client_MainTree.FieldByName('node_name'     ).Value := Client_CalcParametrs.FieldByName('Support_Caption').AsString;
      Client_MainTree.FieldByName('node_value'    ).Value := Client_CalcParametrs.FieldByName('Support_Caption').AsString;
      Client_MainTree.FieldByName('node_cod'      ).Value := '610';
      Client_MainTree.FieldByName('node_image_id' ).Value := 1;
      Client_MainTree.Post;


    if Client_CalcParametrs.FindField('VCGuard') <> nil then
    if not Client_CalcParametrs.FieldByName('VCGuard').IsNull then begin
      Client_MainTree.Append;
      Client_MainTree.FieldByName('parent_id'     ).Value := null;
      Client_MainTree.FieldByName('node_name'     ).Value := 'Охрана';
      Client_MainTree.FieldByName('node_value'    ).Value := null;
      Client_MainTree.FieldByName('node_cod'      ).Value := '800';
      Client_MainTree.FieldByName('node_image_id' ).Value := 0;
      Client_MainTree.Post;
      id1 := Client_MainTree.FieldByName('id').AsInteger;

        Client_MainTree.Append;
        Client_MainTree.FieldByName('parent_id'     ).Value := id1;
        Client_MainTree.FieldByName('node_name'     ).Value := 'Кол-во вагонов в охраняемой группе';
        Client_MainTree.FieldByName('node_value'    ).Value := Client_CalcParametrs.FieldByName('VCGuard').AsString;
        Client_MainTree.FieldByName('node_cod'      ).Value := '810';
        Client_MainTree.FieldByName('node_image_id' ).Value := 1;
        Client_MainTree.Post;
    end;


    Client_MainTree.Append;
    Client_MainTree.FieldByName('parent_id'     ).Value := null;
    Client_MainTree.FieldByName('node_name'     ).Value := 'Промывочно-пропарочная станция';
    Client_MainTree.FieldByName('node_value'    ).Value := null;
    Client_MainTree.FieldByName('node_cod'      ).Value := '900';
    Client_MainTree.FieldByName('node_image_id' ).Value := 0;
    Client_MainTree.Post;
    id1 := Client_MainTree.FieldByName('id').AsInteger;


      Client_MainTree.Append;
      Client_MainTree.FieldByName('parent_id'     ).Value := id1;
      if not Client_CalcParametrs.FieldByName('node_washing_cod').IsNull then begin
        Client_MainTree.FieldByName('node_name'     ).Value := Client_CalcParametrs.FieldByName('node_washing_cod').AsString + ' ' + Client_CalcParametrs.FieldByName('node_washing_name').AsString;
        Client_MainTree.FieldByName('node_value'    ).Value := Client_CalcParametrs.FieldByName('node_washing_cod').AsString + ' ' + Client_CalcParametrs.FieldByName('node_washing_name').AsString;
      end else begin
        Client_MainTree.FieldByName('node_name'     ).Value := 'Не учитывать';
        Client_MainTree.FieldByName('node_value'    ).Value := 'Не учитывать';
      end;
      Client_MainTree.FieldByName('node_cod'      ).Value := '910';
      Client_MainTree.FieldByName('node_image_id' ).Value := 1;
      Client_MainTree.Post;
  end;


  Client_MainTree.Locate('node_cod', save_cod, []);
  Client_MainTree.EnableControls;

  cxDBTreeList1.FullExpand;
end;

procedure TfmCtmNewMain.cxButton2Click(Sender: TObject);
begin
  fmCtmNewExchange := TfmCtmNewExchange.Create(Application, Fusr_pwd, cxDateEdit1.Date);
  fmCtmNewExchange._SetRTXDocument := FRTXDocument;
  if fmCtmNewExchange.ShowModal = mrOk then begin
    cxButton2.Caption := FloatToStr(fmCtmNewExchange._GetExchangeUSD);
  end;
end;

procedure TfmCtmNewMain.cxButton4Click(Sender: TObject);
var RTXApplication : RailTariff_TLB.IApplication;
    RTXDocument : RailTariff_TLB.IDocument;
    RTXResult  : RailTariff_TLB.IDocNode;
    i,j : integer;

    dist_1,   dist_2,   dist_inc,   dist_cnt : integer;
    weight_1, weight_2, weight_inc, weight_cnt : integer;
    vagon_cnt : integer;
    str_cnt_vag : string;
    cnt_vag     : integer;
    owner_id   : integer;
    owner_name : string;
    owner_cnt  : integer;

    animate_cnt : integer;
    animate_no  : integer;
    land_id     : integer;
    land_name   : string;
begin
  ShowTextMessage('Подготовка данных...', False);
  Client_Account.DisableControls;
  CreatePopupMenu2(1);

  weight_1   := cxSpinEdit1.Value;
  weight_2   := cxSpinEdit3.Value;
  weight_inc := cxSpinEdit2.Value;
  dist_1   := cxSpinEdit5.Value;
  dist_2   := cxSpinEdit6.Value;
  dist_inc := cxSpinEdit7.Value;

  for i:=0 to cxCheckListBox3.Count-1 do begin
    if cxCheckListBox3.Items[i].Checked = True then begin
      land_id   := cxCheckListBox3.Items[i].Tag;
      land_name := cxCheckListBox3.Items[i].Text;
    end;
  end;

  if cxCheckBox2.Checked = True then
    weight_cnt := Round((weight_2-weight_1)/weight_inc) + 1
  else
    weight_cnt := 1;

  if cxCheckBox1.Checked = True then
    dist_cnt   := Round((dist_2-dist_1)/dist_inc) + 1
  else
    dist_cnt   := 1;

  vagon_cnt  := 0;
  for i := 0 to cxCheckListBox1.Count-1 do
    if cxCheckListBox1.Items[i].Checked = True then
      vagon_cnt := vagon_cnt + 1;

  animate_cnt := weight_cnt * dist_cnt * vagon_cnt;
  animate_no  := 0;


  if cxCheckBox3.Checked = True then begin
    animate_cnt := animate_cnt * 3;
    owner_cnt := 2;
    cxGridDBBandedTableView5OwnerName.Visible := True;
  end else begin
    owner_cnt := 0;
    cxGridDBBandedTableView5OwnerName.Visible := False;
  end;

  Client_Account.EmptyDataSet;
  try
    RTXApplication := RTXCreate2(CTM_Server, CTM_User, CTM_Password);
    RTXApplication.Initialize('');
  except
    RTXApplication := nil;
    exit;
  end;

  RTXDocument := RTXApplication.CreateDocument;
  (RTXDocument as IDocumentAttr).OnDate(cxDateEdit1.Date);
  (RTXDocument as IDocumentAttr).FromStation(Client_CalcParametrs.FieldByName('node_begin_cod').AsString, 0);
  (RTXDocument as IDocumentAttr).ToStation  (Client_CalcParametrs.FieldByName('node_end_cod'  ).AsString, 0);

  (RTXDocument as IDocumentAttr ).Send     (Client_CalcParametrs.FieldByName('Otpr_id').AsInteger, Client_CalcParametrs.FieldByName('Send_id').AsInteger, Client_CalcParametrs.FieldByName('ExitRoute_id').AsInteger, 2);
  (RTXDocument as IDocumentAttr5).FreightEx(Client_CalcParametrs.FieldByName('ETSNG_cod').AsString, '', Client_CalcParametrs.FieldByName('GNG_cod').AsString, Client_CalcParametrs.FieldByName('Weight').AsFloat);

  case Client_CalcParametrs.FieldByName('Otpr_id').AsInteger of
    3000 : begin
      (RTXDocument as IDocumentAttr).Container(Client_CalcParametrs.FieldByName('Cars_id').AsInteger, Client_CalcParametrs.FieldByName('Owners_id').AsInteger, Client_CalcParametrs.FieldByName('Kol_PS').AsInteger, Client_CalcParametrs.FieldByName('Cars_TareW').AsFloat);
    end else begin
        {Установка вагона}
      case Client_CalcParametrs.FieldByName('Send_id').AsInteger of
        100 : begin
          case Client_CalcParametrs.FieldByName('Owners_id').AsInteger of
            1   : (RTXDocument as IDocumentAttr8).EmptyWagonEx(Client_CalcParametrs.FieldByName('Cars_id').AsInteger, 1, Client_CalcParametrs.FieldByName('Kol_PS').AsInteger, Client_CalcParametrs.FieldByName('Empty_ETSNG_cod').AsString, Client_CalcParametrs.FieldByName('Empty_GNG_cod').AsString, Client_CalcParametrs.FieldByName('Cars_axis').AsInteger, Client_CalcParametrs.FieldByName('Cars_TareW').AsFloat);
            2   : (RTXDocument as IDocumentAttr8).EmptyWagonEx(Client_CalcParametrs.FieldByName('Cars_id').AsInteger, 2, Client_CalcParametrs.FieldByName('Kol_PS').AsInteger, Client_CalcParametrs.FieldByName('Empty_ETSNG_cod').AsString, Client_CalcParametrs.FieldByName('Empty_GNG_cod').AsString, Client_CalcParametrs.FieldByName('Cars_axis').AsInteger, Client_CalcParametrs.FieldByName('Cars_TareW').AsFloat);
            3   : (RTXDocument as IDocumentAttr8).EmptyWagonEx(Client_CalcParametrs.FieldByName('Cars_id').AsInteger, 3, Client_CalcParametrs.FieldByName('Kol_PS').AsInteger, Client_CalcParametrs.FieldByName('Empty_ETSNG_cod').AsString, Client_CalcParametrs.FieldByName('Empty_GNG_cod').AsString, Client_CalcParametrs.FieldByName('Cars_axis').AsInteger, Client_CalcParametrs.FieldByName('Cars_TareW').AsFloat);
            7   : (RTXDocument as IDocumentAttr8).EmptyWagonEx(Client_CalcParametrs.FieldByName('Cars_id').AsInteger, 7, Client_CalcParametrs.FieldByName('Kol_PS').AsInteger, Client_CalcParametrs.FieldByName('Empty_ETSNG_cod').AsString, Client_CalcParametrs.FieldByName('Empty_GNG_cod').AsString, Client_CalcParametrs.FieldByName('Cars_axis').AsInteger, Client_CalcParametrs.FieldByName('Cars_TareW').AsFloat);
          end;
        end;
        5 : begin
           {Определение принадлежности}
          case Client_CalcParametrs.FieldByName('Owners_id').AsInteger of
            1,7 : RTXDocument.Data.Value['RouteProperties\IsBackRoutePresent'] := 0;
            2,3 : RTXDocument.Data.Value['RouteProperties\IsBackRoutePresent'] := 1;
          end;
          (RTXDocument as IDocumentAttr).Wagon(Client_CalcParametrs.FieldByName('Cars_id').AsInteger, Client_CalcParametrs.FieldByName('Owners_id').AsInteger, Client_CalcParametrs.FieldByName('Kol_PS').AsInteger, Client_CalcParametrs.FieldByName('Cars_gp').AsInteger);
          if not Client_CalcParametrs.FieldByName('Bulkiness').IsNull then (RTXDocument as IDocumentAttr9).Bulkiness(Client_CalcParametrs.FieldByName('Bulkiness').AsString)
          else (RTXDocument as IDocumentAttr9).Bulkiness('Н0000');
        end
        else begin
           {Определение принадлежности}
          case Client_CalcParametrs.FieldByName('Owners_id').AsInteger of
            1,7 : RTXDocument.Data.Value['RouteProperties\IsBackRoutePresent'] := 0;
            2,3 : RTXDocument.Data.Value['RouteProperties\IsBackRoutePresent'] := 1;
          end;
          (RTXDocument as IDocumentAttr).Wagon(Client_CalcParametrs.FieldByName('Cars_id').AsInteger, Client_CalcParametrs.FieldByName('Owners_id').AsInteger, Client_CalcParametrs.FieldByName('Kol_PS').AsInteger, Client_CalcParametrs.FieldByName('Cars_gp').AsInteger);
        end;
      end;
    end;

  end;

  (RTXDocument as IDocumentControl).DoCalcDistance;
  //RTXDocument.Result.Value

  ShowTextMessage('Расчет ставок...', False);
  while owner_cnt >= 0 do begin

    if cxCheckBox3.Checked = True then begin
      case owner_cnt of
        2: begin owner_id := 1; owner_name := 'Общего парка'; end;
        1: begin owner_id := 2; owner_name := 'Собственный';  end;
        0: begin owner_id := 3; owner_name := 'Арендованный'; end;
      end;
    end;

    for i := 0 to cxCheckListBox1.Count-1 do begin
      if cxCheckListBox1.Items[i].Checked = True then begin
        case i of
          0 : begin str_cnt_vag := '1 вагон';      cnt_vag :=  1; end;
          1 : begin str_cnt_vag := '2 вагона';     cnt_vag :=  2; end;
          2 : begin str_cnt_vag := '3-5 вагонов';  cnt_vag :=  3; end;
          3 : begin str_cnt_vag := '6-20 вагонов'; cnt_vag :=  6; end;
          4 : begin str_cnt_vag := 'Больше 20';    cnt_vag := 21; end;
        end;


        if cxCheckBox2.Checked = True then begin
          weight_1   := cxSpinEdit1.Value;
          weight_2   := cxSpinEdit3.Value;
          weight_inc := cxSpinEdit2.Value;
        end else begin
          weight_1   := Client_CalcParametrs.FieldByName('Weight').AsInteger;
          weight_2   := Client_CalcParametrs.FieldByName('Weight').AsInteger;
          weight_inc := 1;
        end;

        while weight_1 <= weight_2 do begin

          if cxCheckBox1.Checked = True then begin
            dist_1   := cxSpinEdit5.Value;
            dist_2   := cxSpinEdit6.Value;
            dist_inc := cxSpinEdit7.Value;
          end else begin
            dist_1   := 0;
            dist_2   := 0;
            dist_inc := 1;
          end;

          while dist_1 <= dist_2 do begin


            if cxCheckBox3.Checked = True then begin
              RTXDocument.Data.Value['Vagon\OwnerId'] := owner_id;
            end;

            RTXDocument.Data.Value['LandTrf\LandId' ] := land_id;
            if cxCheckBox2.Checked = True then begin
              RTXDocument.Data.Value['TN\Weight\User'] := weight_1;
            end;
            RTXDocument.Data.Value['Vagon\VSCount']   := cnt_vag;
            if cxCheckBox1.Checked = True then begin
              RTXDocument.Data.Value['LandTrf\Distance\ActualValue'] := True;
              RTXDocument.Data.Value['LandTrf\Distance'] := dist_1;
            end;
            (RTXDocument as IDocumentControl).DoCalcTariff;

            Client_Account.Insert;
            Client_Account.FieldByName('LandName'   ).AsVariant := land_name;
            Client_Account.FieldByName('LandId'     ).AsVariant := RTXDocument.Result.Value['LandId'];
            Client_Account.FieldByName('BasePrice'  ).AsVariant := RTXDocument.Result.Value['BasePrice'];
            Client_Account.FieldByName('TotalPrice' ).AsVariant := RTXDocument.Result.Value['TotalPrice'];
            Client_Account.FieldByName('PerTwoNDS'  ).AsVariant := RTXDocument.Result.Value['PerTwoNDS'];
            Client_Account.FieldByName('BasePerT'   ).AsVariant := RTXDocument.Result.Value['BasePerT'];
            Client_Account.FieldByName('PerT'       ).AsVariant := RTXDocument.Result.Value['PerT'];
            Client_Account.FieldByName('Distance'   ).AsVariant := RTXDocument.Result.Value['Distance'];
            Client_Account.FieldByName('TotalPriceWoNDS').Value := RTXDocument.Result.Value['TotalPriceWoNDS'];
            if cxCheckBox3.Checked = True then begin
              Client_Account.FieldByName('OwnerID'  ).AsVariant := owner_id;
              Client_Account.FieldByName('OwnerName').AsVariant := owner_name;
            end;

            Client_Account.FieldByName('Weight'     ).AsVariant := weight_1;
            Client_Account.FieldByName('Kol_vag'    ).AsVariant := str_cnt_vag;
            Client_Account.FieldByName('inf_obj_cod').AsVariant := '001';
            Client_Account.Post;

            dist_1 := dist_1 + dist_inc;

            animate_no := animate_no + 1;
            ShowTextMessage('Расчет ставок...' + #13 + 'Осталось ' + IntToStr(animate_cnt - animate_no) + ' из ' + IntToStr(animate_cnt) + '...', False);
          end;

          weight_1 := weight_1 + weight_inc;
        end;
      end;
    end;
    owner_cnt := owner_cnt - 1;
  end;

  Client_Account.EnableControls;

  ShowTextMessage;
end;

procedure TfmCtmNewMain.cxButton5Click(Sender: TObject);
begin
  fmCtmNewNode := TfmCtmNewNode.Create(Application, Fusr_pwd, cxDateEdit1.Date);
  fmCtmNewNode._SetQueryStation := Query_Stations;
  if fmCtmNewNode.ShowModal = mrOk then begin
    Client_Stations.Append;
    if fmCtmNewNode._GetLinkCode<>'' then begin
      Client_Stations.FieldByName('Activ'     ).AsBoolean := True;
      Client_Stations.FieldByName('SecondCode').AsVariant := fmCtmNewNode._GetLinkCode;
    end else begin
      Client_Stations.FieldByName('Activ'     ).AsBoolean := False;
    end;
    Client_Stations.FieldByName('cod' ).Value := fmCtmNewNode._GetNodeCod;
    Client_Stations.FieldByName('name').Value := fmCtmNewNode._GetNodeName;
    Client_Stations.Post;

    CreateTree;
    if CheckParametrs(False) = True then CalcRate;
  end;
end;

procedure TfmCtmNewMain.cxButton6Click(Sender: TObject);
begin
  if Client_Stations.RecordCount > 0 then begin
    Client_Stations.Delete;
    CreateTree;
    if CheckParametrs(False) = True then CalcRate;
  end;
end;

procedure TfmCtmNewMain.cxCheckBox1PropertiesChange(Sender: TObject);
begin
  if ((not cxCheckListBoxChecked) and (not cxCheckBox1.Checked)) or (cxCheckBox1.Checked) then begin
    cxSpinEdit5.Enabled := cxCheckBox1.Checked;
    cxSpinEdit6.Enabled := cxCheckBox1.Checked;
    cxSpinEdit7.Enabled := cxCheckBox1.Checked;
    cxCheckListBox3.Enabled := cxCheckBox1.Checked;
    cxCheckListBox2.Enabled := cxCheckBox1.Checked;
    cxButton4.Enabled := cxCheckBox1.Checked;
  end else begin
    cxSpinEdit5.Enabled := cxCheckBox1.Checked;
    cxSpinEdit6.Enabled := cxCheckBox1.Checked;
    cxSpinEdit7.Enabled := cxCheckBox1.Checked;
  end;
end;

procedure TfmCtmNewMain.cxCheckBox2PropertiesChange(Sender: TObject);
begin
  if ((not cxCheckListBoxChecked) and (not cxCheckBox2.Checked)) or (cxCheckBox2.Checked) then begin
    cxSpinEdit1.Enabled := cxCheckBox2.Checked;
    cxSpinEdit2.Enabled := cxCheckBox2.Checked;
    cxSpinEdit3.Enabled := cxCheckBox2.Checked;
    cxCheckListBox3.Enabled := cxCheckBox2.Checked;
    cxCheckListBox2.Enabled := cxCheckBox2.Checked;
    cxButton4.Enabled := cxCheckBox2.Checked;
  end else begin
    cxSpinEdit1.Enabled := cxCheckBox2.Checked;
    cxSpinEdit2.Enabled := cxCheckBox2.Checked;
    cxSpinEdit3.Enabled := cxCheckBox2.Checked;
  end;
end;

procedure TfmCtmNewMain.cxCheckListBox1ClickCheck(Sender: TObject;
  AIndex: Integer; APrevState, ANewState: TcxCheckBoxState);
begin
  if (not cxCheckListBoxChecked) and (not cxCheckBox2.Checked) then begin
    cxSpinEdit1.Enabled := False;
    cxSpinEdit2.Enabled := False;
    cxSpinEdit3.Enabled := False;
    cxCheckListBox3.Enabled := False;
    cxCheckListBox2.Enabled := False;
    cxButton4.Enabled := False;
  end;
  if cxCheckListBoxChecked then begin
    cxCheckListBox3.Enabled := True;
    cxCheckListBox2.Enabled := True;
    cxButton4.Enabled := True;
  end;
end;

procedure TfmCtmNewMain.cxCheckListBox2ClickCheck(Sender: TObject;
  AIndex: Integer; APrevState, ANewState: TcxCheckBoxState);
var b       : boolean;
begin
  if ANewState = cbsChecked then b := True
  else b := False;

  case AIndex of
    0: cxGridDBBandedTableView5PerT.Visible := b;
    1: cxGridDBBandedTableView5BasePerT.Visible := b;
    2: cxGridDBBandedTableView5PerTwoNDS.Visible := b;
    3: cxGridDBBandedTableView5TotalPriceWoNDS.Visible := b;
    4: cxGridDBBandedTableView5BasePrice.Visible := b;
  end;
  CreatePopupMenu2(1);
end;

procedure TfmCtmNewMain.cxComboBox2PropertiesChange(Sender: TObject);
begin
  Client_CalcParametrs.Edit;
  Client_CalcParametrs.FieldByName('currency_id').AsInteger := cxComboBox2.ItemIndex;
  Client_CalcParametrs.Post;
//  CalcRate;
  CreateTree;
  if CheckParametrs(False) = True then CalcRate;
end;

procedure TfmCtmNewMain.cxDateEdit1PropertiesEditValueChanged(Sender: TObject);
begin
//  if YearOf(cxDateEdit1.Date) = 2017 then begin
//    Client_CalcParametrs.Edit;
//    Client_CalcParametrs.FieldByName('NEW_DISTANCES'            ).AsBoolean := True;
//    Client_CalcParametrs.FieldByName('Project_Tariff_Index_2017').AsBoolean := True;
//    Client_CalcParametrs.FieldByName('PROJECT_TARIF_2017'       ).AsBoolean := True;
//    Client_CalcParametrs.Post;
//  end else begin
//    Client_CalcParametrs.Edit;
//    Client_CalcParametrs.FieldByName('NEW_DISTANCES'            ).AsBoolean := False;
//    Client_CalcParametrs.FieldByName('Project_Tariff_Index_2017').AsBoolean := False;
//    Client_CalcParametrs.FieldByName('PROJECT_TARIF_2017'       ).AsBoolean := False;
//    Client_CalcParametrs.Post;
//  end;

  CreateTree;
  if CheckParametrs(False) = True then CalcRate;
end;

procedure TfmCtmNewMain.cxDBTreeList1Click(Sender: TObject);
var cod_id : integer;
    s : string;
begin
  if cxDBTreeList1.FocusedNode.Values[cxDBTreeList1node_cod.ItemIndex] <> null then
    cod_id := StrToInt(cxDBTreeList1.FocusedNode.Values[cxDBTreeList1node_cod.ItemIndex]);

  case cod_id of
     5:
      begin
        Client_CalcParametrs.Edit;
        Client_CalcParametrs.FieldByName('Project_Tariff_Index_2018').AsBoolean := not Client_CalcParametrs.FieldByName('Project_Tariff_Index_2018').AsBoolean;
        Client_CalcParametrs.Post;
        CreateTree;
        if CheckParametrs(False) = True then CalcRate;
      end;
     6:
      begin
        Client_CalcParametrs.Edit;
        Client_CalcParametrs.FieldByName('Project_Tariff_AddIndex_2018').AsBoolean := not Client_CalcParametrs.FieldByName('Project_Tariff_AddIndex_2018').AsBoolean;
        Client_CalcParametrs.Post;
        CreateTree;
        if CheckParametrs(False) = True then CalcRate;
      end;
     7:
      begin
        Client_CalcParametrs.Edit;
        Client_CalcParametrs.FieldByName('Zhur_Miller').AsBoolean := not Client_CalcParametrs.FieldByName('Zhur_Miller').AsBoolean;
        Client_CalcParametrs.Post;
        CreateTree;
        if CheckParametrs(False) = True then CalcRate;
      end;
    10:
      begin
        Client_CalcParametrs.Edit;
        Client_CalcParametrs.FieldByName('NEW_DISTANCES').AsBoolean := not Client_CalcParametrs.FieldByName('NEW_DISTANCES').AsBoolean;
        Client_CalcParametrs.Post;
        CreateTree;
        if CheckParametrs(False) = True then CalcRate;
      end;
    100, 101, 102, 103:
      begin
        fmCtmNewOtpr := TfmCtmNewOtpr.Create(Application, Fusr_pwd, cxDateEdit1.Date);
        fmCtmNewOtpr._SetNodeBeginCod := Client_CalcParametrs.FieldByName('node_begin_cod').AsString;
        fmCtmNewOtpr._SetNodeEndCod   := Client_CalcParametrs.FieldByName('node_end_cod').AsString;
        fmCtmNewOtpr._SetRTXDocument  := FRTXDocument;
        if  (not Client_CalcParametrs.FieldByName('Otpr_id').IsNull) AND
            (not Client_CalcParametrs.FieldByName('Send_id').IsNull) then begin
          fmCtmNewOtpr._SetOtprId := Client_CalcParametrs.FieldByName('Otpr_id').Value;
          fmCtmNewOtpr._SetSendId := Client_CalcParametrs.FieldByName('Send_id').Value;
        end;
        if not Client_CalcParametrs.FieldByName('GroupSend').IsNull then begin
          fmCtmNewOtpr._SetGroupSend := Client_CalcParametrs.FieldByName('GroupSend').Value;
        end;
        if not Client_CalcParametrs.FieldByName('ExitRoute_id').IsNull then begin
          fmCtmNewOtpr._SetExitRouteId := Client_CalcParametrs.FieldByName('ExitRoute_id').Value;
        end;

        fmCtmNewOtpr.CalcExRtType;
        if fmCtmNewOtpr.ShowModal = mrOk then begin
          Client_CalcParametrs.Edit;
          Client_CalcParametrs.FieldByName('Otpr_name'      ).Value := fmCtmNewOtpr._GetOtprName;
          Client_CalcParametrs.FieldByName('Otpr_id'        ).Value := fmCtmNewOtpr._GetOtprId;
          Client_CalcParametrs.FieldByName('Send_name'      ).Value := fmCtmNewOtpr._GetSendName;
          Client_CalcParametrs.FieldByName('Send_id'        ).Value := fmCtmNewOtpr._GetSendId;
          Client_CalcParametrs.FieldByName('GroupSend'      ).Value := fmCtmNewOtpr._GetGroupSend;
          Client_CalcParametrs.FieldByName('ExitRoute_id'   ).Value := fmCtmNewOtpr._GetExitRouteId;
          Client_CalcParametrs.FieldByName('ExitRoute_name' ).Value := fmCtmNewOtpr._GetExitRouteName;
          Client_CalcParametrs.Post;

          if fmCtmNewOtpr._GetSendId = 9 then begin
            Client_CalcParametrs.Edit;
            Client_CalcParametrs.FieldByName('ETSNG_cod').Value    := '693227';
            Client_CalcParametrs.FieldByName('GNG_cod').Value      := '99020000';
            Client_CalcParametrs.FieldByName('ETSNG_name').Value   := 'Сборная повагонная отправка';
            Client_CalcParametrs.FieldByName('GNG_name').Value     := '';
            Client_CalcParametrs.FieldByName('ETSNG_klass').Value  := 3;
            Client_CalcParametrs.FieldByName('GNG_klass').Value    := 3;
            Client_CalcParametrs.FieldByName('Weight').Value       := 0;
            Client_CalcParametrs.Post;
          end;

          if fmCtmNewOtpr._GetSendId = 100 then begin
            Client_CalcParametrs.Edit;
            Client_CalcParametrs.FieldByName('ETSNG_cod').Value    := '';
            Client_CalcParametrs.FieldByName('GNG_cod').Value      := '';
            Client_CalcParametrs.FieldByName('ETSNG_name').Value   := '';
            Client_CalcParametrs.FieldByName('GNG_name').Value     := '';
            Client_CalcParametrs.FieldByName('ETSNG_klass').Value  := 0;
            Client_CalcParametrs.FieldByName('GNG_klass').Value    := 0;
            Client_CalcParametrs.FieldByName('Weight').Value       := 0;
            Client_CalcParametrs.Post;
          end;

          if fmCtmNewOtpr._GetSendId = 1900 then begin
            Client_CalcParametrs.Edit;
            Client_CalcParametrs.FieldByName('buffer_ID'                 ).Value := 1;
            Client_CalcParametrs.FieldByName('buffer_Name'               ).Value := 'Без использования';
            Client_CalcParametrs.FieldByName('buffer_TranspId'           ).Value := 1;
            Client_CalcParametrs.FieldByName('buffer_TranspName'         ).Value := 'крытый';
            Client_CalcParametrs.FieldByName('buffer_OwnerId'            ).Value := 1;
            Client_CalcParametrs.FieldByName('buffer_OwnerName'          ).Value := 'Общий парк';
            Client_CalcParametrs.FieldByName('buffer_Count'              ).Value := 1;
            Client_CalcParametrs.FieldByName('buffer_Axis'               ).Value := 4;
            Client_CalcParametrs.FieldByName('buffer_ControlFrameWeight' ).Value := null;
            Client_CalcParametrs.Post;
          end;

          CreateTree;
          if CheckParametrs(False) = True then CalcRate;
        end;
      end;
    200, 201, 202, 203, 211, 212, 213:
      begin
        fmCtmNewCargo := TfmCtmNewCargo.Create(Application, Fusr_pwd, cxDateEdit1.Date);

        if Client_CalcParametrs.FieldByName('ETSNG_cod').AsString <> '000000' then begin

          if not Client_CalcParametrs.FieldByName('Send_id').IsNull then
            fmCtmNewCargo._SetSendID := Client_CalcParametrs.FieldByName('Send_id').Value;

          if not Client_CalcParametrs.FieldByName('ETSNG_cod').IsNull then
            fmCtmNewCargo._SetETSNGCod := Client_CalcParametrs.FieldByName('ETSNG_cod').Value;


          if not Client_CalcParametrs.FieldByName('GNG_cod').IsNull then
            fmCtmNewCargo._SetGNGCod := Client_CalcParametrs.FieldByName('GNG_cod').Value;


          if not Client_CalcParametrs.FieldByName('Weight').IsNull then
            fmCtmNewCargo._SetWeight := Client_CalcParametrs.FieldByName('Weight').Value;
        end;

        fmCtmNewCargo._OpenQueryETSNG := True;

        if fmCtmNewCargo.ShowModal = mrOk then begin
          Client_CalcParametrs.Edit;
          Client_CalcParametrs.FieldByName('ETSNG_cod'  ).Value := fmCtmNewCargo._GetETSNGCod;
          Client_CalcParametrs.FieldByName('GNG_cod'    ).Value := fmCtmNewCargo._GetGNGCod;
          Client_CalcParametrs.FieldByName('ETSNG_name' ).Value := fmCtmNewCargo._GetETSNGName;
          Client_CalcParametrs.FieldByName('GNG_name'   ).Value := fmCtmNewCargo._GetGNGName;
          Client_CalcParametrs.FieldByName('ETSNG_klass').Value := fmCtmNewCargo._GetETSNGClass;
          Client_CalcParametrs.FieldByName('GNG_klass'  ).Value := fmCtmNewCargo._GetGNGClass;
          Client_CalcParametrs.FieldByName('Weight'     ).Value := fmCtmNewCargo._GetWeight;
          Client_CalcParametrs.Post;

          CreateTree;
          if CheckParametrs(False) = True then CalcRate;
        end;
      end;
    220:
      begin
        s := InputBox('','Введите вес груза в одном вагоне.т', Client_CalcParametrs.FieldByName('Weight').AsString);
        if s <> '' then begin
          try
            Client_CalcParametrs.Edit;
            Client_CalcParametrs.FieldByName('Weight').AsVariant  := s;
            Client_CalcParametrs.Post;
          except
            Application.MessageBox('Вес введен не правильно!', 'Внимание', MB_ICONSTOP or MB_OK);
          end;
        end;
        CreateTree;
        if CheckParametrs(False) = True then CalcRate;
      end;
    230:
      begin
        fmCtmNewBulkiness := TfmCtmNewBulkiness.Create(Application, Fusr_pwd);
        fmCtmNewBulkiness._SetBulkiness      := Client_CalcParametrs.FieldByName('Bulkiness').AsString;
        fmCtmNewBulkiness._SetBulkinessParam := Client_CalcParametrs.FieldByName('Bulkiness_param').AsString;
        if fmCtmNewBulkiness.ShowModal = mrOk then begin
          Client_CalcParametrs.Edit;
          Client_CalcParametrs.FieldByName('Bulkiness'      ).Value := fmCtmNewBulkiness._GetBulkiness;
          Client_CalcParametrs.FieldByName('Bulkiness_name' ).Value := fmCtmNewBulkiness._GetBulkinessName;
          Client_CalcParametrs.FieldByName('Bulkiness_param').Value := fmCtmNewBulkiness._GetBulkinessParam;
          Client_CalcParametrs.Post;

          CreateTree;
          if CheckParametrs(False) = True then CalcRate;
        end;
      end;
    300, 310, 311, 330, 320, 340, 360, 370, 371, 372, 373, 374:
      begin
      fmCtmNewCars := TfmCtmNewCars.Create(Application, Fusr_pwd, cxDateEdit1.Date);
        if not Client_CalcParametrs.FieldByName('Send_id').IsNull then
          fmCtmNewCars._SetSendID := Client_CalcParametrs.FieldByName('Send_id').Value;

        if not Client_CalcParametrs.FieldByName('Otpr_id').IsNull then
          fmCtmNewCars._SetOtprID := Client_CalcParametrs.FieldByName('Otpr_id').Value;

        if not Client_CalcParametrs.FieldByName('ETSNG_cod').IsNull then
          fmCtmNewCars._SetCargoCod := Client_CalcParametrs.FieldByName('ETSNG_cod').Value;

        fmCtmNewCars._OpenQuery := True;

        if not Client_CalcParametrs.FieldByName('Cars_id').IsNull then
          fmCtmNewCars._SetCarID := Client_CalcParametrs.FieldByName('Cars_id').Value;

        if not Client_CalcParametrs.FieldByName('Cars_gp').IsNull then
          fmCtmNewCars._SetCarID := Client_CalcParametrs.FieldByName('Cars_gp').Value;

        if not Client_CalcParametrs.FieldByName('Kol_PS').IsNull then
          fmCtmNewCars._SetCountPS := Client_CalcParametrs.FieldByName('Kol_PS').Value;

        if not Client_CalcParametrs.FieldByName('Vag_otpr').IsNull then
          fmCtmNewCars._SetVagOtpr := Client_CalcParametrs.FieldByName('Vag_otpr').Value;

        if not Client_CalcParametrs.FieldByName('Owners_id').IsNull then
          fmCtmNewCars._SetOwners_id := Client_CalcParametrs.FieldByName('Owners_id').Value;

        if not Client_CalcParametrs.FieldByName('LandOwn_id').IsNull then
          fmCtmNewCars._SetLandOwn_id := Client_CalcParametrs.FieldByName('LandOwn_id').Value;

        if not Client_CalcParametrs.FieldByName('Container_id').IsNull then
          fmCtmNewCars._SetContainer_id := Client_CalcParametrs.FieldByName('Container_id').Value;

        if not Client_CalcParametrs.FieldByName('Empty_ETSNG_cod').IsNull then begin
          fmCtmNewCars._SetEmpty_ETSNG_cod  := Client_CalcParametrs.FieldByName('Empty_ETSNG_cod').AsString;
          fmCtmNewCars._SetEmpty_GNG_cod    := Client_CalcParametrs.FieldByName('Empty_GNG_cod').AsString;
          fmCtmNewCars._SetEmpty_ETSNG_name := Client_CalcParametrs.FieldByName('Empty_ETSNG_name').AsString;
          fmCtmNewCars._SetEmpty_GNG_name   := Client_CalcParametrs.FieldByName('Empty_GNG_name').AsString;
          fmCtmNewCars._SetEmpty_loading    := Client_CalcParametrs.FieldByName('Empty_loading').Value;
        end;

        if fmCtmNewCars.ShowModal = mrOk then begin
          Client_CalcParametrs.Edit;
          Client_CalcParametrs.FieldByName('Cars_id'     ).Value := fmCtmNewCars._GetCarID;
          Client_CalcParametrs.FieldByName('Cars_name'   ).Value := fmCtmNewCars._GetName;
          Client_CalcParametrs.FieldByName('Cars_gp'     ).Value := fmCtmNewCars._GetGP;
          Client_CalcParametrs.FieldByName('Cars_axis'   ).Value := fmCtmNewCars._GetAxis;
          Client_CalcParametrs.FieldByName('Cars_TareW'  ).Value := fmCtmNewCars._GetTareW;
          Client_CalcParametrs.FieldByName('Cars_Volume' ).Value := fmCtmNewCars._GetVolume;
          Client_CalcParametrs.FieldByName('Kol_PS'      ).Value := fmCtmNewCars._GetCountPS;
          Client_CalcParametrs.FieldByName('Vag_otpr'    ).Value := fmCtmNewCars._GetVagOtpr;
          Client_CalcParametrs.FieldByName('Owners_id'   ).Value := fmCtmNewCars._GetOwners_id;
          Client_CalcParametrs.FieldByName('LandOwn_id'  ).Value := fmCtmNewCars._GetLandOwn_id;
          Client_CalcParametrs.FieldByName('LandOwn_name').Value := fmCtmNewCars._GetLandOwn_name;

          if fmCtmNewCars._GetContainer_id <> -9 then begin
            Client_CalcParametrs.FieldByName('Container_id'  ).Value := fmCtmNewCars._GetContainer_id;
            Client_CalcParametrs.FieldByName('Container_name').Value := fmCtmNewCars._GetContainer_name;
          end else begin
            Client_CalcParametrs.FieldByName('Container_id'  ).Value := null;
            Client_CalcParametrs.FieldByName('Container_name').Value := null;
          end;

          if fmCtmNewCars._GetSetEmpty then begin
            Client_CalcParametrs.FieldByName('Empty_ETSNG_cod' ).Value := fmCtmNewCars._GetEmpty_ETSNG_cod;
            Client_CalcParametrs.FieldByName('Empty_GNG_cod'   ).Value := fmCtmNewCars._GetEmpty_GNG_cod;
            Client_CalcParametrs.FieldByName('Empty_ETSNG_name').Value := fmCtmNewCars._GetEmpty_ETSNG_name;
            Client_CalcParametrs.FieldByName('Empty_GNG_name'  ).Value := fmCtmNewCars._GetEmpty_GNG_name;
            Client_CalcParametrs.FieldByName('Empty_loading'   ).Value := fmCtmNewCars._GetEmpty_loading;
          end else begin
            Client_CalcParametrs.FieldByName('Empty_ETSNG_cod' ).Value := null;
            Client_CalcParametrs.FieldByName('Empty_GNG_cod'   ).Value := null;
            Client_CalcParametrs.FieldByName('Empty_ETSNG_name').Value := null;
            Client_CalcParametrs.FieldByName('Empty_GNG_name'  ).Value := null;
            Client_CalcParametrs.FieldByName('Empty_loading'   ).Value := False;
          end;
          if fmCtmNewCars._GetOption2 = null then Client_CalcParametrs.FieldByName('return_type').Value := 0;
          Client_CalcParametrs.Post;

          CreateTree;
          if CheckParametrs(False) = True then CalcRate;
        end;
      end;
    314:
      begin
        Client_CalcParametrs.Edit;
        Client_CalcParametrs.FieldByName('MODELOW').AsBoolean := not Client_CalcParametrs.FieldByName('MODELOW').AsBoolean;
        Client_CalcParametrs.Post;
        CreateTree;
        if CheckParametrs(False) = True then CalcRate;
      end;
    315:
      begin
        Client_CalcParametrs.Edit;
        Client_CalcParametrs.FieldByName('MODELOWN').AsBoolean := not Client_CalcParametrs.FieldByName('MODELOWN').AsBoolean;
        Client_CalcParametrs.Post;
        CreateTree;
        if CheckParametrs(False) = True then CalcRate;
      end;
    316:
      begin
        Client_CalcParametrs.Edit;
        Client_CalcParametrs.FieldByName('MODELOWND').AsBoolean := not Client_CalcParametrs.FieldByName('MODELOWND').AsBoolean;
        Client_CalcParametrs.Post;
        CreateTree;
        if CheckParametrs(False) = True then CalcRate;
      end;
    385:
      begin
        Client_CalcParametrs.Edit;
        Client_CalcParametrs.FieldByName('ADDSTATION').AsBoolean := not Client_CalcParametrs.FieldByName('ADDSTATION').AsBoolean;
        Client_CalcParametrs.Post;
        CreateTree;
        if CheckParametrs(False) = True then CalcRate;
      end;
    350:
      begin
        s := InputBox('','Введите кол-во осей', Client_CalcParametrs.FieldByName('Cars_axis').AsString);
        if s <> '' then begin
          try
            Client_CalcParametrs.Edit;
            Client_CalcParametrs.FieldByName('Cars_axis').AsVariant  := s;
            Client_CalcParametrs.Post;
            CreateTree;
            if CheckParametrs(False) = True then CalcRate;
          except
            Application.MessageBox('Кол-во осей введено не правильно!', 'Внимание', MB_ICONSTOP or MB_OK);
          end;
        end;
      end;

    400, 410, 420, 430, 440, 450:
      begin
        fmCtmNewFlat := TfmCtmNewFlat.Create(Application, Fusr_pwd, cxDateEdit1.Date);
        if not Client_CalcParametrs.FieldByName('Send_id').IsNull then
          fmCtmNewFlat._SetSendID := Client_CalcParametrs.FieldByName('Send_id').Value;

        if not Client_CalcParametrs.FieldByName('Otpr_id').IsNull then
          fmCtmNewFlat._SetOtprID := Client_CalcParametrs.FieldByName('Otpr_id').Value;

        if not Client_CalcParametrs.FieldByName('Container_id').IsNull then
          fmCtmNewFlat._SetTranspID := Client_CalcParametrs.FieldByName('Container_id').Value;

        fmCtmNewFlat._OpenQuery := True;

        if fmCtmNewFlat.ShowModal = mrOk then begin
          Client_CalcParametrs.Edit;
          Client_CalcParametrs.FieldByName('FlatWagonId'     ).Value := fmCtmNewFlat._GetFlatWagonId;
          Client_CalcParametrs.FieldByName('FlatWagonCaption').Value := fmCtmNewFlat._GetFlatWagonCaption;
          Client_CalcParametrs.FieldByName('FWOwnP'          ).Value := fmCtmNewFlat._GetFWOwnP;
          Client_CalcParametrs.FieldByName('FWOwnPCaption'   ).Value := fmCtmNewFlat._GetFWOwnPCaption;
          Client_CalcParametrs.Post;

          CreateTree;
          if CheckParametrs(False) = True then CalcRate;
        end;
      end;

    500: begin (* Ничего не делаем *) end;
    510:
      begin
        Client_CalcParametrs.Edit;
        Client_CalcParametrs.FieldByName('Option6').AsBoolean := not Client_CalcParametrs.FieldByName('Option6').AsBoolean;
        Client_CalcParametrs.Post;
        CreateTree;
        if CheckParametrs(False) = True then CalcRate;
      end;
    520:
      begin
        Client_CalcParametrs.Edit;
        Client_CalcParametrs.FieldByName('Option12').AsBoolean := not Client_CalcParametrs.FieldByName('Option12').AsBoolean;
        Client_CalcParametrs.Post;
        CreateTree;
        if CheckParametrs(False) = True then CalcRate;
      end;
    530:
      begin
        Client_CalcParametrs.Edit;
        Client_CalcParametrs.FieldByName('TARIFFMARK64').AsBoolean := not Client_CalcParametrs.FieldByName('TARIFFMARK64').AsBoolean;
        Client_CalcParametrs.Post;
        CreateTree;
        if CheckParametrs(False) = True then CalcRate;
      end;
    600, 610:
      begin
        fmCtmNewSupport := TfmCtmNewSupport.Create(Application, Fusr_pwd, cxDateEdit1.Date);
        if fmCtmNewSupport.ShowModal = mrOk then begin
          Client_CalcParametrs.Edit;
          Client_CalcParametrs.FieldByName('Support_id'            ).Value := fmCtmNewSupport._GetId;
          Client_CalcParametrs.FieldByName('Support_Caption'       ).Value := fmCtmNewSupport._GetCaption;
          Client_CalcParametrs.FieldByName('Support_Axis'          ).Value := fmCtmNewSupport._GetAxis;
          Client_CalcParametrs.FieldByName('Support_Kol_Conductor' ).Value := fmCtmNewSupport._GetKolConductor;
          Client_CalcParametrs.FieldByName('Support_Vochr'         ).Value := fmCtmNewSupport._GetVochr;
          Client_CalcParametrs.Post;
          CreateTree;
          if CheckParametrs(False) = True then CalcRate;
        end;
      end;
    700: begin (* Ничего не делаем *) end;
    710:
      begin
        fmCtmNewBackRoute := TfmCtmNewBackRoute.Create(Application, Fusr_pwd, cxDateEdit1.Date);
        fmCtmNewBackRoute._SetQueryStation := Query_Stations;


        if (Client_CalcParametrs.FieldByName('return_type').AsInteger = 2) AND (Query_Stations.Active = True) then begin
          fmCtmNewBackRoute._SetNodeCod      := Client_CalcParametrs.FieldByName('return_node_cod'   ).AsString;
          fmCtmNewBackRoute._SetNodeName     := Client_CalcParametrs.FieldByName('return_node_name'  ).AsString;
          fmCtmNewBackRoute._SetNodeLandId   := Client_CalcParametrs.FieldByName('return_land_id'  ).AsInteger;
          fmCtmNewBackRoute._SetNodeLandName := Client_CalcParametrs.FieldByName('return_land_name').AsString;
        end;

        if fmCtmNewBackRoute.ShowModal = mrOk then begin
          Client_CalcParametrs.Edit;
          Client_CalcParametrs.FieldByName('return_type').Value := fmCtmNewBackRoute._GetReturnType;
          case fmCtmNewBackRoute._GetReturnType of
            0 : begin
                  Client_CalcParametrs.FieldByName('return_node_cod'   ).Value := null;
                  Client_CalcParametrs.FieldByName('return_node_name'  ).Value := null;
                  Client_CalcParametrs.FieldByName('return_land_id'    ).Value := null;
                  Client_CalcParametrs.FieldByName('return_land_name'  ).Value := null;
                end;
            1 : begin
                  Client_CalcParametrs.FieldByName('return_node_cod'   ).Value := null;
                  Client_CalcParametrs.FieldByName('return_node_name'  ).Value := null;
                  Client_CalcParametrs.FieldByName('return_land_id'    ).Value := null;
                  Client_CalcParametrs.FieldByName('return_land_name'  ).Value := null;
                end;
            2 : begin
                  Client_CalcParametrs.FieldByName('return_node_cod'   ).Value := fmCtmNewBackRoute._GetNodeCod;
                  Client_CalcParametrs.FieldByName('return_node_name'  ).Value := fmCtmNewBackRoute._GetNodeName;
                  Client_CalcParametrs.FieldByName('return_land_id'    ).Value := fmCtmNewBackRoute._GetNodeLandId;
                  Client_CalcParametrs.FieldByName('return_land_name'  ).Value := fmCtmNewBackRoute._GetNodeLandName;
                end;
          end;

          Client_CalcParametrs.Post;
          CreateTree;
          if CheckParametrs(False) = True then CalcRate;
        end;
      end;
    750: begin (* Ничего не делаем *) end;
    760..770:
      begin
        if not Client_CalcParametrs.FieldByName('route_name').IsNull then begin
          Client_CalcParametrs.Edit;
          Client_CalcParametrs.FieldByName('route_id'        ).AsInteger := Client_MainTree.FieldByName('node_tag').AsInteger;
          Client_CalcParametrs.FieldByName('enable_alt_route').AsBoolean := not Client_CalcParametrs.FieldByName('enable_alt_route').AsBoolean;
          Client_CalcParametrs.Post;
          CreateTree;
          if CheckParametrs(False) = True then CalcRate;
        end;
      end;
    800: begin (* Ничего не делаем *) end;
    810:
      begin
        if Client_CalcParametrs.FindField('VCGuard') <> nil then begin
          s := InputBox('','Введите кол-во вагонов в охраняемой группе', Client_CalcParametrs.FieldByName('VCGuard').AsString);
          if s <> '' then begin
            try
              Client_CalcParametrs.Edit;
              Client_CalcParametrs.FieldByName('VCGuard').AsVariant := s;
              Client_CalcParametrs.Post;
              CreateTree;
              if CheckParametrs(False) = True then CalcRate;
            except
              Application.MessageBox('Кол-во вагонов введено не правильно!', 'Внимание', MB_ICONSTOP or MB_OK);
            end;
          end;
        end;
      end;
    900: begin (* Ничего не делаем *) end;
    910:
      begin
        fmCtmNewWashing := TfmCtmNewWashing.Create(Application, Fusr_pwd, cxDateEdit1.Date);
        fmCtmNewWashing._SetQueryStation := Query_Stations;
        if (not Client_CalcParametrs.FieldByName('node_washing_cod').IsNull) AND (Query_Stations.Active = True) then begin
          fmCtmNewWashing._SetNodeCod    := Client_CalcParametrs.FieldByName('node_washing_cod'   ).AsString;
          fmCtmNewWashing._SetNodeName   := Client_CalcParametrs.FieldByName('node_washing_name'  ).AsString;
          fmCtmNewWashing._SetNodeRoad   := Client_CalcParametrs.FieldByName('node_washing_road'  ).AsString;
          fmCtmNewWashing._SetNodePPLand := Client_CalcParametrs.FieldByName('node_washing_ppland').AsString;
        end;

        if fmCtmNewWashing.ShowModal = mrOk then begin
          Client_CalcParametrs.Edit;
          if fmCtmNewWashing._GetNodeCod <> '' then begin
            Client_CalcParametrs.FieldByName('node_washing_cod'   ).Value := fmCtmNewWashing._GetNodeCod;
            Client_CalcParametrs.FieldByName('node_washing_name'  ).Value := fmCtmNewWashing._GetNodeName;
            Client_CalcParametrs.FieldByName('node_washing_road'  ).Value := fmCtmNewWashing._GetNodeRoad;
            Client_CalcParametrs.FieldByName('node_washing_ppland').Value := fmCtmNewWashing._GetNodePPLand;
          end else begin
            Client_CalcParametrs.FieldByName('node_washing_cod'   ).Value := null;
            Client_CalcParametrs.FieldByName('node_washing_name'  ).Value := null;
            Client_CalcParametrs.FieldByName('node_washing_road'  ).Value := null;
            Client_CalcParametrs.FieldByName('node_washing_ppland').Value := null;
          end;
          Client_CalcParametrs.Post;
          CreateTree;
          if CheckParametrs(False) = True then CalcRate;
        end;
      end;
    1000, 1010, 1020, 1030, 1050:
      begin
        fmCtmNewBuffer := TfmCtmNewBuffer.Create(Application, Fusr_pwd, cxDateEdit1.Date);

        fmCtmNewBuffer._SetBufferID         := Client_CalcParametrs.FieldByName('buffer_ID').AsInteger;
        fmCtmNewBuffer._SetBufferTranspId   := Client_CalcParametrs.FieldByName('buffer_TranspId').AsInteger;
        fmCtmNewBuffer._SetBufferOwnerId    := Client_CalcParametrs.FieldByName('buffer_OwnerId').AsInteger;
        fmCtmNewBuffer._SetBufferCount      := Client_CalcParametrs.FieldByName('buffer_Count').AsInteger;
        fmCtmNewBuffer._SetBufferAxis       := Client_CalcParametrs.FieldByName('buffer_Axis').AsInteger;
        fmCtmNewBuffer._SetBufferControlFrameWeight :=  Client_CalcParametrs.FieldByName('buffer_ControlFrameWeight').AsInteger;

        if fmCtmNewBuffer.ShowModal = mrOk then begin

          Client_CalcParametrs.Edit;
          Client_CalcParametrs.FieldByName('buffer_ID'                 ).Value := fmCtmNewBuffer._GetBufferID;
          Client_CalcParametrs.FieldByName('buffer_Name'               ).Value := fmCtmNewBuffer._GetBufferName;
          Client_CalcParametrs.FieldByName('buffer_TranspId'           ).Value := fmCtmNewBuffer._GetBufferTranspId;
          Client_CalcParametrs.FieldByName('buffer_TranspName'         ).Value := fmCtmNewBuffer._GetBufferTranspName;
          Client_CalcParametrs.FieldByName('buffer_OwnerId'            ).Value := fmCtmNewBuffer._GetBufferOwnerId;
          Client_CalcParametrs.FieldByName('buffer_OwnerName'          ).Value := fmCtmNewBuffer._GetBufferOwnerName;
          Client_CalcParametrs.FieldByName('buffer_Count'              ).Value := fmCtmNewBuffer._GetBufferCount;
          Client_CalcParametrs.FieldByName('buffer_Axis'               ).Value := fmCtmNewBuffer._GetBufferAxis;
          if fmCtmNewBuffer._GetBufferControlFrameWeight <> -9 then
            Client_CalcParametrs.FieldByName('buffer_ControlFrameWeight' ).Value := fmCtmNewBuffer._GetBufferControlFrameWeight
          else
            Client_CalcParametrs.FieldByName('buffer_ControlFrameWeight' ).Value := null;
          Client_CalcParametrs.Post;


          CreateTree;
          if CheckParametrs(False) = True then CalcRate;
        end;
      end;
    1040:
      begin
        s := InputBox('','Введите кол-во осей', Client_CalcParametrs.FieldByName('buffer_Axis').AsString);
        if s <> '' then begin
          try
            Client_CalcParametrs.Edit;
            Client_CalcParametrs.FieldByName('buffer_Axis').AsVariant  := s;
            Client_CalcParametrs.Post;
            CreateTree;
            if CheckParametrs(False) = True then CalcRate;
          except
            Application.MessageBox('Кол-во осей введено не правильно!', 'Внимание', MB_ICONSTOP or MB_OK);
          end;
        end;
      end;
  else
    ShowMessage(IntToStr(cod_id));
  end;
end;

procedure TfmCtmNewMain.cxDBTreeList1Collapsing(Sender: TcxCustomTreeList;
  ANode: TcxTreeListNode; var Allow: Boolean);
begin
  Allow := False;
end;

procedure TfmCtmNewMain.cxDBTreeList1CustomDrawDataCell(
  Sender: TcxCustomTreeList; ACanvas: TcxCanvas;
  AViewInfo: TcxTreeListEditCellViewInfo; var ADone: Boolean);
var
  VisibleRect : TRect;
  RectCaption : TRect;
  RectCnt     : TRect;
  RectAgree   : TRect;
  sz_value    : TSize;

  str_caption : string;
  str_value   : string;
  color_caption : TColor;
  style_caption : TFontStyles;
begin
  if AViewInfo.Column.Name = 'cxDBTreeList1node_name' then
    if AViewInfo.Node.Values[cxDBTreeList1node_name.ItemIndex] <> null then begin
        ACanvas.Font.Name := 'Tahoma';
        ACanvas.Font.Size := 8;

        VisibleRect := AViewInfo.VisibleRect;
        str_caption := AViewInfo.Node.Texts[cxDBTreeList1node_name.ItemIndex];
        str_value   := AViewInfo.Node.Texts[cxDBTreeList1node_value.ItemIndex];

        if AViewInfo.Node.Values[cxDBTreeList1parent_id.ItemIndex] = Null then
          style_caption := [fsBold]
        else
          style_caption := [];

        if str_caption = str_value then begin
          color_caption := clBlue;
          str_value     := '';
        end else begin
          color_caption := clBlack;
          if str_caption <> '' then
            str_value := ' ' + str_value;

        end;


        ACanvas.Font.Style := [];
        sz_value := ACanvas.TextExtent(str_value);

        ACanvas.Font.Style := style_caption;
        RectCaption := VisibleRect;
        RectCaption.Left := RectCaption.Left + 2;
        RectCaption.Top  := RectCaption.Top  + 2;
        RectCaption.Right := RectCaption.Right - sz_value.cx;
        ACanvas.TextExtent(str_caption, RectCaption, cxShowEndEllipsis or cxAlignLeft);

        if AViewInfo.Node.Selected then begin
          ACanvas.FillRect(VisibleRect, clActiveCaption);
          ACanvas.Font.Color := clWhite;
        end else begin
          ACanvas.FillRect(VisibleRect, clWhite);
          ACanvas.Font.Color := color_caption;
        end;
        ACanvas.DrawTexT(str_caption, RectCaption, cxShowEndEllipsis or cxAlignLeft);

        if str_value <> '' then begin
          RectAgree := VisibleRect;
          RectAgree.Top  := RectAgree.Top + 2;
          RectAgree.Left := RectCaption.Right;

          ACanvas.Font.Style := [];
          if AViewInfo.Node.Selected then begin
            ACanvas.Font.Color := clWhite;
          end else begin
            ACanvas.Font.Color := clBlue;
          end;

          ACanvas.DrawTexT(str_value, RectAgree, 0);
          ACanvas.TextExtent(str_value, RectAgree, 0);
        end;

        ADone := True;
    end;
end;

procedure TfmCtmNewMain.cxGrid1DBBandedTableView1Column3PropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
begin
  fmCtmNewTaxes := TfmCtmNewTaxes.Create(Application, Fusr_pwd, cxDateEdit1.Date);
  fmCtmNewTaxes._SetLandId           := Client_Result.FieldByName('LandId').AsInteger;
  fmCtmNewTaxes._SetClient_Taxes_id  := Client_Taxes_id;
  fmCtmNewTaxes._SetRTXDocument      := FRTXDocument;
  if fmCtmNewTaxes.ShowModal = mrOk then begin
    if CheckParametrs(False) = True then CalcRate;
  end;
end;

procedure TfmCtmNewMain.cxGrid1DBBandedTableView1CustomDrawCell(
  Sender: TcxCustomGridTableView; ACanvas: TcxCanvas;
  AViewInfo: TcxGridTableDataCellViewInfo; var ADone: Boolean);
begin
//	if AViewInfo.GridRecord.Selected or AViewInfo.GridRecord.Focused then begin
//		ACanvas.Brush.Color := clNavy;
//		ACanvas.Font.Color := clWhite;
//		if AViewInfo.Focused then ACanvas.Brush.Color := clBlue;
//	end;
end;

procedure TfmCtmNewMain.cxGrid1DBBandedTableView1CustomDrawColumnHeader(
  Sender: TcxGridTableView; ACanvas: TcxCanvas;
  AViewInfo: TcxGridColumnHeaderViewInfo; var ADone: Boolean);
begin
	if AViewInfo.Column.Focused then begin
		ACanvas.Brush.Color := clNavy;
		ACanvas.Font.Color := clWhite;
	end;          
end;

procedure TfmCtmNewMain.cxGrid1DBBandedTableView1FilterOnChanged(
  Sender: TObject);
begin
	DrawcxGridColumnOnFiltered(cxGrid1DBBandedTableView1, Sender);
end;

procedure TfmCtmNewMain.cxGrid1DBBandedTableView1FocusedItemChanged(
  Sender: TcxCustomGridTableView; APrevFocusedItem,
  AFocusedItem: TcxCustomGridTableItem);
begin
	cxGrid1DBBandedTableView1.Painter.Invalidate;
end;

procedure TfmCtmNewMain.cxGrid1DBBandedTableView1KeyPress(Sender: TObject;
  var Key: Char);
begin
	FilterColumnGridOnKeyPress(cxGrid1DBBandedTableView1, Key);
end;

procedure TfmCtmNewMain.cxGrid1DBBandedTableView1KITPropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
begin
  fmCtmNewKIT := TfmCtmNewKIT.Create(Application);
  fmCtmNewKIT._SetClientKIT := Client_KIT;
  if fmCtmNewKIT.ShowModal = mrOk then begin
    Client_CalcParametrs.Edit;
    Client_CalcParametrs.FieldByName('KIT_id'  ).Value := fmCtmNewKIT._GetKIT;
    Client_CalcParametrs.Post;

    Client_Result.Edit;
    Client_Result.FieldByName('KIT'     ).Value := fmCtmNewKIT._GetKIT;
    Client_Result.FieldByName('KIT_name').Value := fmCtmNewKIT._GetKITName;
    Client_Result.Post;

    if CheckParametrs(False) = True then CalcRate;
  end;
end;

procedure TfmCtmNewMain.cxGrid1DBBandedTableView1VohrPropertiesEditValueChanged(Sender: TObject);
var LandId : integer;
begin
  LandId := Client_Result.FieldByName('LandId').AsInteger;
  if Client_Taxes_id.Locate('LandId;Automatic', VarArrayOf([Client_Result.FieldByName('LandId').AsInteger, False]), [loCaseInsensitive]) then begin
    Client_Taxes_id.Edit;
    Client_Taxes_id.FieldByName('Active').AsBoolean := (Client_Result.FieldByName('Vohr').AsBoolean = False);
    Client_Taxes_id.Post;
  end else begin
    Client_Taxes_id.Insert;
    Client_Taxes_id.FieldByName('LandId').AsInteger := Client_Result.FieldByName('LandId').AsInteger;
    Client_Taxes_id.FieldByName('Automatic').AsBoolean := False;
    Client_Taxes_id.FieldByName('Active').AsBoolean := (Client_Result.FieldByName('Vohr').AsBoolean = False);
    Client_Taxes_id.Post;
  end;
  if Client_CalcParametrs.FieldByName('VCGuard').IsNull then begin
    Client_CalcParametrs.Edit;
    Client_CalcParametrs.FieldByName('VCGuard').AsInteger := Client_CalcParametrs.FieldByName('Vag_otpr').AsInteger;
    Client_CalcParametrs.Post;
  end;
//  ToolButton5.Click;
  CalcRate;
  Client_Result.Locate('LandId', LandId, [loCaseInsensitive]);
//  RefreshTreeList(5);
end;

procedure TfmCtmNewMain.cxGridDBBandedTableView1CustomDrawCell(
  Sender: TcxCustomGridTableView; ACanvas: TcxCanvas;
  AViewInfo: TcxGridTableDataCellViewInfo; var ADone: Boolean);
begin
	if AViewInfo.GridRecord.Selected or AViewInfo.GridRecord.Focused then begin
		ACanvas.Brush.Color := clNavy;
		ACanvas.Font.Color := clWhite;
		if AViewInfo.Focused then ACanvas.Brush.Color := clBlue;
	end;
end;

procedure TfmCtmNewMain.cxGridDBBandedTableView1CustomDrawColumnHeader(
  Sender: TcxGridTableView; ACanvas: TcxCanvas;
  AViewInfo: TcxGridColumnHeaderViewInfo; var ADone: Boolean);
begin
	if AViewInfo.Column.Focused then begin
		ACanvas.Brush.Color := clNavy;
		ACanvas.Font.Color := clWhite;
	end;
end;

procedure TfmCtmNewMain.cxGridDBBandedTableView1FilterOnChanged(
  Sender: TObject);
begin
	DrawcxGridColumnOnFiltered(cxGridDBBandedTableView1, Sender);
end;

procedure TfmCtmNewMain.cxGridDBBandedTableView1FocusedItemChanged(
  Sender: TcxCustomGridTableView; APrevFocusedItem,
  AFocusedItem: TcxCustomGridTableItem);
begin
	cxGridDBBandedTableView1.Painter.Invalidate;
end;

procedure TfmCtmNewMain.cxGridDBBandedTableView1KeyPress(Sender: TObject;
  var Key: Char);
begin
	FilterColumnGridOnKeyPress(cxGridDBBandedTableView1, Key);
end;

procedure TfmCtmNewMain.cxTreeList1CustomDrawDataCell(Sender: TcxCustomTreeList; ACanvas: TcxCanvas; AViewInfo: TcxTreeListEditCellViewInfo; var ADone: Boolean);
var TreeListNode : TcxTreeListNode;
begin
  case AViewInfo.Node.Level of
    0: ACanvas.Font.Style := [fsBold];
    1: begin
         if (AViewInfo.Node.Texts[0] <> 'Группа вагонов') then begin
           TreeListNode := AViewInfo.Node.GetPrevVisible;
           while TreeListNode.Level <> 0 do TreeListNode := TreeListNode.GetPrevVisible;

           if (VarToStr(TreeListNode.Values[1]) = '0') or (VarToStr(TreeListNode.Values[1]) = '4') then
              ACanvas.Font.Color := clBlue;
         end;
       end;
    2: if (AViewInfo.Node.Texts[0] <> 'Код ГНГ') and (AViewInfo.Node.Texts[0] <> 'Код ЕТСНГ') then ACanvas.Font.Color := clBlue;
    3: ACanvas.Font.Color := clBlue;
  end;
end;

procedure TfmCtmNewMain.dxBarButton10Click(Sender: TObject);
begin
	PrintcxGrid(cxGridDBBandedTableView2);
end;

procedure TfmCtmNewMain.dxBarButton11Click(Sender: TObject);
begin
  CreateTree;
end;

procedure TfmCtmNewMain.dxBarButton12Click(Sender: TObject);
begin
  FRTXDocument.Load('f:\www\4.trf');
end;

procedure TfmCtmNewMain.FillTree();
begin
  Client_CalcParametrs.Edit;
  Client_CalcParametrs.FieldByName('Otpr_name'      ).Value := FRTXDocument.Data.Value['Send\OTPRCaption'];
  Client_CalcParametrs.FieldByName('Otpr_id'        ).Value := FRTXDocument.Data.Value['Send\OTPRId'];
  Client_CalcParametrs.FieldByName('Send_name'      ).Value := FRTXDocument.Data.Value['Send\SendCaption'];
  Client_CalcParametrs.FieldByName('Send_id'        ).Value := FRTXDocument.Data.Value['Send\SendId'];
  if FRTXDocument.Data.Value['RouteProperties\ExitRouteType'] <> 0 then begin
    Client_CalcParametrs.FieldByName('ExitRoute_name' ).Value := FRTXDocument.Data.Value['RouteProperties\ExitRouteText'];
    Client_CalcParametrs.FieldByName('ExitRoute_id'   ).Value := FRTXDocument.Data.Value['RouteProperties\ExitRouteType'];
  end;
  Client_CalcParametrs.FieldByName('ETSNG_cod'  ).Value := FRTXDocument.Data.Value['TN\ETSNG'];
  Client_CalcParametrs.FieldByName('GNG_cod'    ).Value := FRTXDocument.Data.Value['TN\GNG2004'];
  Client_CalcParametrs.FieldByName('ETSNG_name' ).Value := FRTXDocument.Data.Value['TN\ETDesc'];
  Client_CalcParametrs.FieldByName('GNG_name'   ).Value := FRTXDocument.Data.Value['TN\GNG2004\Desc'];
  Client_CalcParametrs.FieldByName('Weight'     ).Value := 0;

  Client_CalcParametrs.FieldByName('Cars_id'   ).Value := FRTXDocument.Data.Value['Vagon\VagonId'];
  Client_CalcParametrs.FieldByName('Cars_name' ).Value := FRTXDocument.Data.Value['Vagon\VagonDsc'];
  Client_CalcParametrs.FieldByName('Kol_PS'    ).Value := FRTXDocument.Data.Value['Vagon\Count'];
  Client_CalcParametrs.FieldByName('Vag_otpr'  ).Value := FRTXDocument.Data.Value['Vagon\VSCount'];
  Client_CalcParametrs.FieldByName('Cars_gp'   ).Value := FRTXDocument.Data.Value['Vagon\GP'];
  Client_CalcParametrs.FieldByName('Cars_axis' ).Value := FRTXDocument.Data.Value['Vagon\OCE'];
  Client_CalcParametrs.FieldByName('Owners_id' ).Value := FRTXDocument.Data.Value['Vagon\OwnerId'];

  Client_CalcParametrs.FieldByName('FlatWagonId'      ).Value := FRTXDocument.Data.Value['Vagon\FlatWagonId'];
  Client_CalcParametrs.FieldByName('FlatWagonCaption' ).Value := FRTXDocument.Data.Value['Vagon\FlatWagonCaption'];
//  Client_CalcParametrs.FieldByName('FWCount'          ).Value := FRTXDocument.Data.Value['Vagon\Count'];
//  Client_CalcParametrs.FieldByName('FWOwnP'           ).Value := FRTXDocument.Data.Value['Vagon\FWOwnP'];
//  Client_CalcParametrs.FieldByName('FWOwnD'           ).Value := FRTXDocument.Data.Value['Vagon\FWOwnD'];
//  Client_CalcParametrs.FieldByName('FWOCE'            ).Value := FRTXDocument.Data.Value['Vagon\OCE'];

  Client_CalcParametrs.FieldByName('Support_id'            ).Value := FRTXDocument.Data.Value['Support\Type'];
  Client_CalcParametrs.FieldByName('Support_Caption'       ).Value := FRTXDocument.Data.Value['Support\Desc'];
  Client_CalcParametrs.FieldByName('Support_Axis'          ).Value := FRTXDocument.Data.Value['Support\VagonOCE'];
  Client_CalcParametrs.FieldByName('Support_Kol_Conductor' ).Value := FRTXDocument.Data.Value['Support\ConductorCount'];

  Client_CalcParametrs.Post;

  CreateTree;
end;

procedure TfmCtmNewMain.dxBarButton13Click(Sender: TObject);
begin
	PrintcxGrid(cxGrid4DBBandedTableView1);
end;

procedure TfmCtmNewMain.dxBarButton14Click(Sender: TObject);
var      ss : string;
  clipboard : TClipboard;
begin
  ss := (FRTXDocument as IDocument1).DataAsXML;
  clipboard := TClipboard.Create;
  clipboard.AsText := FormatXMLData(ss);
  Application.MessageBox(PChar('Данные скопированы в буфер обмена.'), 'Внимание', MB_OK);
  clipboard.Free;
end;

procedure TfmCtmNewMain.dxBarButton15Click(Sender: TObject);
var RTXApplication : RailTariff_TLB.IApplication;
    RTXDocument    : RailTariff_TLB.IDocument;
    RTXResult      : RailTariff_TLB.IDocNode;
    RTXLandNode    : RailTariff_TLB.IDocNode;
    RTXTaxesNode   : RailTariff_TLB.IDocNode;
    distance, i    : integer;
    days_run       : integer;
    days_dop       : integer;
begin
  try
    RTXApplication := RTXCreate2(CTM_Server, CTM_User, CTM_Password);
    RTXApplication.Initialize('');
  except
    RTXApplication := nil;
    exit;
  end;

  RTXDocument := RTXApplication.CreateDocument;
  (RTXDocument as IDocumentAttr).OnDate(Date);
  (RTXDocument as IDocumentAttr).FromStation('520901', 0);
  (RTXDocument as IDocumentAttr).ToStation  ('194507', 0);

  (RTXDocument as IDocumentAttr).Send(1000, 2, 0, 2);
  (RTXDocument as IDocumentAttr5).FreightEx('011005', '', '10019000', 60);
  (RTXDocument as IDocumentAttr).Wagon(21, 2, 1, 60);
  RTXDocument.Calculate;
  days_run := (RTXDocument as IDocumentAttr26).GetRunDays(1);
  days_dop := (RTXDocument as IDocumentAttr26).GetDopDays(1);

  ShowMessage(IntToStr(days_run));
  ShowMessage(IntToStr(days_dop));
end;

procedure TfmCtmNewMain.dxBarButton16Click(Sender: TObject);
begin
	PrintcxGrid(cxGridDBBandedTableView4);
end;

procedure TfmCtmNewMain.dxBarButton17Click(Sender: TObject);
var Doc_Kont : RailTariff_TLB.IDocument;
    EqUCont_RB  : RailTariff_TLB.IDocumentRefBook;
    EqUCont_RB2 : RailTariff_TLB._RefBook2;
    str: TStringList;
begin
    str := TStringList.Create;

///   (FRTXDocument as IDocumentAttr).QueryInterface(IdocumentRefBook, EqUCont_RB);

    Doc_Kont  := FRTXApplication.CreateDocument;
    (Doc_Kont as IDocumentAttr).FromStation('648202', 20);
    (Doc_Kont as IDocumentAttr).ToStation('742809', 29);
    (Doc_Kont as IDocumentControl).DoCalcDistance;
    (Doc_Kont as IDocumentAttr).Send(3000, 15, 0, 2);
    (Doc_Kont as IDocumentAttr).Container(64, 1, 1, 0);

    (Doc_Kont as IDocumentAttr).QueryInterface(IdocumentRefBook, EqUCont_RB);
    //EqUCont_RB2 := EqUCont_RB.FilteredRefBook('EqUCont', Chr(0)) as _RefBook2;
    EqUCont_RB2 := EqUCont_RB.FilteredRefBook('FlatCars', Chr(0)) as _RefBook2;

    EqUCont_RB2.First;
    while not EqUCont_RB2.EOF do begin
      str.AddObject(EqUCont_RB2.FieldValue['Name'], pointer(StrToInt(EqUCont_RB2.FieldValue['CarID'])));
      EqUCont_RB2.Next;
    end;

    ShowMessage(str.Text);
end;

procedure TfmCtmNewMain.dxBarButton18Click(Sender: TObject);
begin
  FillTree;
end;

procedure TfmCtmNewMain.dxBarButton19Click(Sender: TObject);
begin
	PrintcxGrid(cxGrid6cxGridDBBandedTableView3);
end;

procedure TfmCtmNewMain.dxBarButton1Click(Sender: TObject);
var new_distance : string;
begin
  new_distance := Client_CalcParametrs.FieldByName('Distance').AsString;
  if InputQuery('Расстояние', 'Расстояние:', new_distance) then begin
    Client_Result.Edit;
    Client_Result.FieldByName('Distance').Value := StrToIntDef(new_distance, 0);
    Client_Result.FieldByName('set_distance').Value := True;
    Client_Result.Post;
    CreateTree;
    if CheckParametrs(False) = True then CalcRate;
  end;
end;

procedure TfmCtmNewMain.dxBarButton21Click(Sender: TObject);
begin
  FRTXDocument.Save('f:\www\3.trf');
end;

procedure TfmCtmNewMain.dxBarButton22Click(Sender: TObject);
var RTXApplication : IApplication;
    RTXDocument    : RailTariff_TLB.IDocument;
    RB_GNGcode     : RailTariff_TLB._RefBook;
    v : variant;
begin
  try
    RTXApplication := RTXCreate2(CTM_Server, CTM_User, CTM_Password);
    RTXApplication.Initialize('');
  except
    on E: Exception do begin
      Application.MessageBox(PChar('Application.Initialize:' + E.Message), 'Ошибка', MB_OK or MB_ICONSTOP);
      RTXApplication := nil;
      exit;
    end;
  end;
  RTXDocument := FRTXApplication.CreateDocument;
  RTXDocument.Initialize('');
  (RTXDocument as IDocumentAttr).Freight('017001', 0);
//  (RTXDocument as IDocumentAttr5).FreightEx(Client_CalcParametrs.FieldByName('ETSNG_cod').AsString, '', Client_CalcParametrs.FieldByName('GNG_cod').AsString, Client_CalcParametrs.FieldByName('Weight').AsFloat);
end;

procedure TfmCtmNewMain.dxBarButton23Click(Sender: TObject);
begin
  cxGridDBBandedTableView5.CopyToClipboard(False);
end;

procedure TfmCtmNewMain.dxBarButton24Click(Sender: TObject);
var x : RailTariff_TLB.IStationFindAround;
begin
//  x.FindStationsAround('')
//  FRTXDocument.FindStationsAround();
end;

procedure TfmCtmNewMain.dxBarButton2Click(Sender: TObject);
begin
  PrintcxGrid(cxGrid1DBBandedTableView1);
end;

procedure TfmCtmNewMain.dxBarButton3Click(Sender: TObject);
begin
  PrintcxGrid(cxGridDBBandedTableView1);
end;

procedure TfmCtmNewMain.dxBarButton5Click(Sender: TObject);
var exApp, exWks, exWkb : Variant;
    line_cnt : integer;
begin
  ShowTextMessage('Вывод в Excel...', False);
  exApp := CreateOleObject('Excel.Application');
  exWkb := exApp.Workbooks.Add;
  exWkb := exApp.ActiveWorkbook;
  exWks := exWkb.WorkSheets[1];

  exApp.ActiveWindow.DisplayGridlines := False;
  exWks.Cells.Font.Size := 8;
  exWks.Cells.Font.Name := 'MS Sans Serif';


  exWks.Range['B2'].Value := 'Страна';

  exWks.Range['C2'].Value := 'Станция отпр.';
  exWks.Range['D2'].Value := 'Станция назн.';
  exWks.Range['E2'].Value := 'Код груза (груз)';
  exWks.Range['F2'].Value := 'Наименование (груз)';
  exWks.Range['G2'].Value := 'Вес (груз)';

  exWks.Range['H2'].Value := 'Направление';
  exWks.Range['I2'].Value := 'Расстояние';
  exWks.Range['J2'].Value := 'ВИД';
  exWks.Range['K2'].Value := 'Пров. пл.';
  exWks.Range['L2'].Value := 'за 1 т. Пров. пл.';
  exWks.Range['M2'].Value := 'Сопр.';
  exWks.Range['N2'].Value := 'Охрана';
  exWks.Range['O2'].Value := 'Сумма охраны';
  exWks.Range['P2'].Value := 'Доп. сборы';
  exWks.Range['Q2'].Value := 'Итого без НДС';
  exWks.Range['R2'].Value := 'НДС';
  exWks.Range['S2'].Value := 'Итого';
  exWks.Range['T2'].Value := 'за 1 т. (без НДС)';
  exWks.Range['U2'].Value := 'за 1т.';
  exWks.Range['V2'].Value := 'Вал.';


  exWks.Range['W2'].Value := 'Из под выгрузки';
  exWks.Range['X2'].Value := 'Состояние для участка с промывкой-пропаркой';
  exWks.Range['Y2'].Value := 'Промывочно-пропарочная станция';


  exWks.Range['B2:Y2'].Interior.Color := $CCFFCC;


  Client_Result.DisableControls;
  Client_Result.First;
  line_cnt := 3;
  while not Client_Result.Eof do begin

    exWks.Range['B' + IntToStr(line_cnt)].Value := Client_Result.FieldByName('LandName').Value;

    if Client_Result.FieldByName('Direction_id').AsInteger = 1 then begin
      exWks.Range['H' + IntToStr(line_cnt)].Value := 'прямое';

      if Client_Routes.Locate('PID', Client_Result.FieldByName('FromStationPID').Value, []) then
        exWks.Range['C' + IntToStr(line_cnt)].Value := Client_Routes.FieldByName('Name').Value;

      if Client_Routes.Locate('PID', Client_Result.FieldByName('ToStationPID').Value, []) then
        exWks.Range['D' + IntToStr(line_cnt)].Value := Client_Routes.FieldByName('Name').Value;
    end else begin
      exWks.Range['H' + IntToStr(line_cnt)].Value := 'возврат';

      if Client_BackRoutes.Locate('PID', Client_Result.FieldByName('FromStationPID').Value, []) then
        exWks.Range['C' + IntToStr(line_cnt)].Value := Client_BackRoutes.FieldByName('Name').Value;

      if Client_BackRoutes.Locate('PID', Client_Result.FieldByName('ToStationPID').Value, []) then
        exWks.Range['D' + IntToStr(line_cnt)].Value := Client_BackRoutes.FieldByName('Name').Value;
    end;

    exWks.Range['E' + IntToStr(line_cnt)].Value := Client_CalcParametrs.FieldByName('ETSNG_cod').Value;
    exWks.Range['F' + IntToStr(line_cnt)].Value := Client_CalcParametrs.FieldByName('ETSNG_name').Value;
    exWks.Range['G' + IntToStr(line_cnt)].Value := Client_CalcParametrs.FieldByName('Weight').Value;

    exWks.Range['I' + IntToStr(line_cnt)].Value := Client_Result.FieldByName('Distance').Value;
    exWks.Range['J' + IntToStr(line_cnt)].Value := Client_Result.FieldByName('CalcDsc').Value;
    exWks.Range['K' + IntToStr(line_cnt)].Value := Client_Result.FieldByName('BasePrice').Value;
    exWks.Range['L' + IntToStr(line_cnt)].Value := Client_Result.FieldByName('PerT_PP').Value;
    exWks.Range['M' + IntToStr(line_cnt)].Value := Client_Result.FieldByName('SoprPrice').Value;
    exWks.Range['N' + IntToStr(line_cnt)].Value := Client_Result.FieldByName('Vohr').Value;
    exWks.Range['O' + IntToStr(line_cnt)].Value := Client_Result.FieldByName('GuardPrice').Value;
    exWks.Range['P' + IntToStr(line_cnt)].Value := Client_Result.FieldByName('AddDues').Value;
    exWks.Range['Q' + IntToStr(line_cnt)].Value := Client_Result.FieldByName('TotalPriceWoNDS').Value;
    exWks.Range['R' + IntToStr(line_cnt)].Value := Client_Result.FieldByName('NDS').Value;
    exWks.Range['S' + IntToStr(line_cnt)].Value := Client_Result.FieldByName('TotalPrice').Value;
    exWks.Range['T' + IntToStr(line_cnt)].Value := Client_Result.FieldByName('PerTwoNDS').Value;
    exWks.Range['U' + IntToStr(line_cnt)].Value := Client_Result.FieldByName('PerT').Value;
    exWks.Range['V' + IntToStr(line_cnt)].Value := Client_Result.FieldByName('ABBR').Value;


    if not Client_CalcParametrs.FieldByName('Empty_loading').IsNull then begin
      if Client_CalcParametrs.FieldByName('Empty_loading').AsBoolean then begin
        exWks.Range['W'+ IntToStr(line_cnt)].Value := Client_CalcParametrs.FieldByName('Empty_ETSNG_name').Value;
      end;
    end;


    if not Client_CalcParametrs.FieldByName('node_washing_cod').IsNull then begin
      if Client_Result.FieldByName('WashingState').AsInteger = 1 then begin
        exWks.Range['X'+ IntToStr(line_cnt)].Value := 'до промывки-пропарки';
        exWks.Range['Y'+ IntToStr(line_cnt)].Value := Client_CalcParametrs.FieldByName('node_washing_name').Value;
      end;
      if Client_Result.FieldByName('WashingState').AsInteger = 2 then begin
        exWks.Range['X'+ IntToStr(line_cnt)].Value := 'после промывки-пропарки';
        exWks.Range['Y'+ IntToStr(line_cnt)].Value := Client_CalcParametrs.FieldByName('node_washing_name').Value;
      end;
    end;


    line_cnt := line_cnt + 1;
    Client_Result.Next;
  end;
  Client_Result.EnableControls;

  exWks.Range['B2:Y' + IntToStr(line_cnt)].Borders[7].LineStyle := 1;
  exWks.Range['B2:Y' + IntToStr(line_cnt)].Borders[8].LineStyle := 1;
  exWks.Range['B2:Y' + IntToStr(line_cnt)].Borders[9].LineStyle := 1;
  exWks.Range['B2:Y' + IntToStr(line_cnt)].Borders[10].LineStyle := 1;
  exWks.Range['B2:Y' + IntToStr(line_cnt)].Borders[11].LineStyle := 1;
  exWks.Range['B2:Y' + IntToStr(line_cnt)].Borders[12].LineStyle := 1;
  exWks.Range['B2:Y' + IntToStr(line_cnt)].Borders[12].LineStyle := 1;

  exWks.Range['B2:Y' + IntToStr(line_cnt)].Borders[7].Color := $C0C0C0;
  exWks.Range['B2:Y' + IntToStr(line_cnt)].Borders[8].Color := $C0C0C0;
  exWks.Range['B2:Y' + IntToStr(line_cnt)].Borders[9].Color := $C0C0C0;
  exWks.Range['B2:Y' + IntToStr(line_cnt)].Borders[10].Color := $C0C0C0;
  exWks.Range['B2:Y' + IntToStr(line_cnt)].Borders[11].Color := $C0C0C0;
  exWks.Range['B2:Y' + IntToStr(line_cnt)].Borders[12].Color := $C0C0C0;

  exWks.Range['B2:Y' + IntToStr(line_cnt)].Columns.AutoFit;

  exWks.Range['B' + IntToStr(line_cnt) + ':Y' + IntToStr(line_cnt)].Interior.Color := $CCFFCC;
  exWks.Range['K3:U' + IntToStr(line_cnt)].NumberFormat := '# ##0,00';
  exWks.Range['I3:I' + IntToStr(line_cnt)].NumberFormat := '# ##0';

  exWks.Range['I' + IntToStr(line_cnt)].Value := '=SUM(I3:I' + IntToStr(line_cnt-1) + ')';
  exWks.Range['K' + IntToStr(line_cnt)].Value := '=SUM(K3:K' + IntToStr(line_cnt-1) + ')';
  exWks.Range['L' + IntToStr(line_cnt)].Value := '=SUM(L3:L' + IntToStr(line_cnt-1) + ')';
  exWks.Range['M' + IntToStr(line_cnt)].Value := '=SUM(M3:M' + IntToStr(line_cnt-1) + ')';
  exWks.Range['O' + IntToStr(line_cnt)].Value := '=SUM(O3:O' + IntToStr(line_cnt-1) + ')';
  exWks.Range['P' + IntToStr(line_cnt)].Value := '=SUM(P3:P' + IntToStr(line_cnt-1) + ')';
  exWks.Range['Q' + IntToStr(line_cnt)].Value := '=SUM(Q3:Q' + IntToStr(line_cnt-1) + ')';
  exWks.Range['R' + IntToStr(line_cnt)].Value := '=SUM(R3:R' + IntToStr(line_cnt-1) + ')';
  exWks.Range['S' + IntToStr(line_cnt)].Value := '=SUM(S3:S' + IntToStr(line_cnt-1) + ')';
  exWks.Range['T' + IntToStr(line_cnt)].Value := '=SUM(T3:T' + IntToStr(line_cnt-1) + ')';
  exWks.Range['U' + IntToStr(line_cnt)].Value := '=SUM(U3:U' + IntToStr(line_cnt-1) + ')';


  exApp.Visible := True;
  exWks := Null; exWkb := Null; exApp := Null;
  VarClear(exWks); VarClear(exWkb); VarClear(exApp);

  ShowTextMessage;
end;

procedure TfmCtmNewMain.dxBarButton6Click(Sender: TObject);
begin
  PrintcxGrid(cxGridDBBandedTableView5);
end;

procedure TfmCtmNewMain.dxBarButton7Click(Sender: TObject);
begin
	PrintcxGrid(cxGridDBBandedTableView3);
end;

procedure TfmCtmNewMain.dxBarButton8Click(Sender: TObject);
var parament  : I2DimArrayHelper;
    parament2 : ICalcParameter;
    i : integer;
    str_result  : string;
    str_result2 : string;

    param_name : string;
    param_desc : string;
    param_type : integer;

begin
  str_result  := '';
  str_result2 := '';
  parament := (FRTXDocument as IDocumentAttr17).GetAllCalcParameters;
  for i:= 0 to parament.Count-1 do begin
    str_result := str_result + parament.Name[i] + #10;

    parament2 := (FRTXDocument as IDocumentAttr17).CalcParameter[parament.Name[i]];
    if parament2 <> nil then begin
      param_name := parament2.Name;
      param_desc := parament2.Description;
      param_type := parament2.type_;


      str_result2 := str_result2 + param_name + ';' + param_desc + ';';
      if param_type = 0 then str_result2 := str_result2 + 'информационный' + #10;
      if param_type = 1 then str_result2 := str_result2 + 'checked' + #10;
      if param_type = 2 then str_result2 := str_result2 + 'нужно ввести значение' + #10;
    end else begin
      str_result2 := str_result2 + parament.Name[i] + ';NULL' + #10;
    end;
  end;

  ShowMessage(str_result);
  ShowMessage(str_result2);


//  parament := (FRTXDocument as IDocumentAttr17).GetCalcParameters;
//  for i:= 0 to parament.Count-1 do begin
//////    ShowMessage(parament.Name[i] + ':' + VarToStr(parament.Value[i]));
//    ShowMessage(
//      (FRTXDocument as IDocumentAttr17).CalcParameter[parament.Name[i]].Name + char(10) +
//      (FRTXDocument as IDocumentAttr17).CalcParameter[parament.Name[i]].Description + char(10) +
//      IntToStr((FRTXDocument as IDocumentAttr17).CalcParameter[parament.Name[i]].type_) + char(10) +
//      VarToStr((FRTXDocument as IDocumentAttr17).CalcParameter[parament.Name[i]].Value)
//     );
//  end;

end;

procedure TfmCtmNewMain.dxBarButton9Click(Sender: TObject);
var parament  : I2DimArrayHelper;
    parament2 : ICalcParameter;
    i : integer;
    str_result  : string;
    str_result2 : string;

    param_name : string;
    param_desc : string;
    param_type : integer;
    param_val  : Variant;
begin
  str_result  := '';
  str_result2 := '';
  parament := (FRTXDocument as IDocumentAttr17).GetCalcParameters;
  for i:= 0 to parament.Count-1 do begin
    str_result := str_result + parament.Name[i] + #10;

    parament2 := (FRTXDocument as IDocumentAttr17).CalcParameter[parament.Name[i]];
    if parament2 <> nil then begin
      param_name := parament2.Name;
      param_desc := parament2.Description;
      param_type := parament2.type_;
      param_val  := parament2.Value;


      str_result2 := str_result2 + param_name + ';' + param_desc + ';' + VarToStr(param_val) + ';';
      if param_type = 0 then str_result2 := str_result2 + 'информационный' + #10;
      if param_type = 1 then str_result2 := str_result2 + 'checked' + #10;
      if param_type = 2 then str_result2 := str_result2 + 'нужно ввести значение' + #10;
    end else begin
      str_result2 := str_result2 + parament.Name[i] + ';NULL' + #10;
    end;
  end;

//  ShowMessage(str_result);
  ShowMessage(str_result2);
end;


procedure TfmCtmNewMain.dxBarLargeButton10Click(Sender: TObject);
begin
  fmCtmNewPrint := TfmCtmNewPrint.Create(Application, Fusr_pwd, cxDateEdit1.Date);
  fmCtmNewPrint._SetCalcParam  := Client_CalcParametrs;
  fmCtmNewPrint._SetRoutes     := Client_Routes;
  fmCtmNewPrint._SetBackRoutes := Client_BackRoutes;
  fmCtmNewPrint._SetResult     := Client_Result;
  fmCtmNewPrint._SetLandTaxes  := Client_LandTaxes;
  fmCtmNewPrint.ShowModal;
end;

procedure TfmCtmNewMain.dxBarLargeButton11Click(Sender: TObject);
begin
  if (Client_CalcParametrs.FieldByName('node_begin_cod').IsNull) and (Client_CalcParametrs.FieldByName('node_end_cod').IsNull) then begin
    Application.MessageBox('Выберите маршрут', 'Внимание', MB_OK);
    exit;
  end;
  //RailAtlas_ShowRoute(CTMConnect, Client_CalcParametrs.FieldByName('node_begin_cod').AsString, Client_CalcParametrs.FieldByName('node_end_cod').AsString);
end;

procedure TfmCtmNewMain.dxBarLargeButton12Click(Sender: TObject);
begin
  CtmRaznoe.OpenRealInfo('-9');
end;

procedure TfmCtmNewMain.dxBarLargeButton13Click(Sender: TObject);
begin
  fmCtmLoadDictoinary := TfmCtmLoadDictoinary.Create(Application, Fusr_pwd);
  fmCtmLoadDictoinary.ShowModal;
end;

procedure TfmCtmNewMain.dxBarLargeButton14Click(Sender: TObject);
begin
  ModalResult := mrCancel;
end;

procedure TfmCtmNewMain.dxBarLargeButton1Click(Sender: TObject);
begin
  cxDateEdit1.Date := Date;
  FRTXDocument.New;
  ClearForm;
  FillTree;

  Query_Stations.Close;
  Query_Stations.SQL.Clear;
  Query_Stations.SQL.Add('SELECT');
  Query_Stations.SQL.Add('ref_book_xml.value(''(/ROW/@NewCode)[1]'',''varchar(200)'') as NewCode,');
  Query_Stations.SQL.Add('ref_book_xml.value(''(/ROW/@NewName)[1]'',''varchar(200)'') as NewName,');
  Query_Stations.SQL.Add('ref_book_xml.value(''(/ROW/@NewParaT)[1]'',''varchar(200)'') as NewParaT,');
  Query_Stations.SQL.Add('ref_book_xml.value(''(/ROW/@ROAD)[1]'',''varchar(200)'') as ROAD,');
  Query_Stations.SQL.Add('ref_book_xml.value(''(/ROW/@LAND)[1]'',''varchar(200)'') as LAND,');
  Query_Stations.SQL.Add('ref_book_xml.value(''(/ROW/@FromDate)[1]'',''varchar(200)'') as FromDate,');
  Query_Stations.SQL.Add('ref_book_xml.value(''(/ROW/@ToDate)[1]'',''varchar(200)'') as ToDate,');
  Query_Stations.SQL.Add('ref_book_xml.value(''(/ROW/@RoadID)[1]'',''varchar(200)'') as RoadID,');
  Query_Stations.SQL.Add('ref_book_xml.value(''(/ROW/@LandID)[1]'',''varchar(200)'') as LandID,');
  Query_Stations.SQL.Add('ref_book_xml.value(''(/ROW/@LinkCode)[1]'',''varchar(200)'') as LinkCode,');
  Query_Stations.SQL.Add('ref_book_xml.value(''(/ROW/@PPLand)[1]'',''varchar(200)'') as PPLand');
  Query_Stations.SQL.Add('FROM	CTM_REFBOOK2');
  Query_Stations.SQL.Add('WHERE');
  Query_Stations.SQL.Add('ref_book_name = ''stations''');
  Query_Stations.SQL.Add('AND :date_from_to between ref_book_xml.value(''(/ROW/@FromDate)[1]'',''datetime'') and ref_book_xml.value(''(/ROW/@ToDate)[1]'',''datetime'')');
end;

procedure TfmCtmNewMain.dxBarLargeButton2Click(Sender: TObject);
var Q : TADOQuery;
    ClientDS : TClientDataSet;
begin
  fmCtmNewSave := TfmCtmNewSave.Create(Application, Fusr_pwd);
  if fmCtmNewSave.ShowModal = mrOk then begin
    Fctm_save_id   := fmCtmNewSave._GetCTMSaveId;
    Fctm_save_name := fmCtmNewSave._GetCTMSaveName;
    Caption := 'Расчёт тарифа в Rail-Сервер (' + (FRTXApplication as IApplicationInfo).Version + ') [' + fctm_save_name + ']';

    Q := TADOQuery.Create(nil);
    Q.Connection := CTMConnect;
    Q.SQL.Add('SELECT * FROM view_ctm_new_save  WHERE ctm_save_id = ' + IntToStr(Fctm_save_id));
    Q.Open;

    ClearForm;

    ClientDS := TClientDataSet.Create(nil);
    ClientDS.XMLData := Q.FieldByName('Client_CalcParametrs').Value;

    CopyClientDataSet(Client_CalcParametrs, ClientDS);

    Client_Taxes_id.XMLData := Q.FieldByName('Client_Taxes_id').Value;
    //cxDateEdit1.Date := Q.FieldByName('calc_date').Value;
    cxDateEdit1.Date := Date;

    ClientDS.Free;
    Q.Free;
    CreateTree;
    if CheckParametrs(False) = True then CalcRate;
  end;
end;

procedure TfmCtmNewMain.dxBarLargeButton3Click(Sender: TObject);
var Q: TADOQuery;
    sp_CTM_NEW_SAVE_modify : TADOStoredProc;
begin
  if fctm_save_name = '' then
      fctm_save_name := Client_CalcParametrs.FieldByName('node_begin_name').AsString + '_' + Client_CalcParametrs.FieldByName('node_end_name').AsString + '_' + Client_CalcParametrs.FieldByName('ETSNG_name').AsString;
  if not InputQuery('', 'Введите название расчета', fctm_save_name) then exit;


  if fctm_save_id <> -9 then begin
    Q := TADOQuery.Create(nil);
    Q.Connection := CTMConnect;
    Q.SQL.Add('SELECT * FROM view_ctm_new_save');
    Q.SQL.Add('WHERE ctm_save_id = ' + IntTostr(fctm_save_id));
    Q.Open;

    if Q.FieldByName('ctm_save_name').AsString <> fctm_save_name then begin
      fctm_save_id := -9;
    end;
    Q.Free;
  end;

  sp_CTM_NEW_SAVE_modify := TADOStoredProc.Create(nil);
  sp_CTM_NEW_SAVE_modify.Connection := CTMConnect;
  sp_CTM_NEW_SAVE_modify.ProcedureName := 'sp_CTM_NEW_SAVE_modify';
  sp_CTM_NEW_SAVE_modify.Parameters.Refresh;
  sp_CTM_NEW_SAVE_modify.Parameters.ParamByName('@ctm_save_id'          ).Value := iif(Fctm_save_id = -9, null, Fctm_save_id);
  sp_CTM_NEW_SAVE_modify.Parameters.ParamByName('@type_action'          ).Value := iif(Fctm_save_id = -9, 0, 1);
  sp_CTM_NEW_SAVE_modify.Parameters.ParamByName('@ctm_save_name'        ).Value := Fctm_save_name;
  sp_CTM_NEW_SAVE_modify.Parameters.ParamByName('@node_begin_cod'       ).Value := Client_CalcParametrs.FieldByName('node_begin_cod').AsString;
  sp_CTM_NEW_SAVE_modify.Parameters.ParamByName('@node_end_cod'         ).Value := Client_CalcParametrs.FieldByName('node_end_cod').AsString;
  sp_CTM_NEW_SAVE_modify.Parameters.ParamByName('@kargoETSNG_cod'       ).Value := Client_CalcParametrs.FieldByName('ETSNG_cod').AsString;
  sp_CTM_NEW_SAVE_modify.Parameters.ParamByName('@Client_Taxes_id'      ).Value := DataXMLToSQL(Client_Taxes_id);
  sp_CTM_NEW_SAVE_modify.Parameters.ParamByName('@Client_CalcParametrs' ).Value := DataXMLToSQL(Client_CalcParametrs);
  sp_CTM_NEW_SAVE_modify.Parameters.ParamByName('@calc_date'            ).Value := cxDateEdit1.EditValue;
  try
    sp_CTM_NEW_SAVE_modify.ExecProc;
    if sp_CTM_NEW_SAVE_modify.Parameters.ParamByName('@ctm_save_id').Value <> '-9' then
      fctm_save_id := sp_CTM_NEW_SAVE_modify.Parameters.ParamByName('@ctm_save_id').Value;
  except
  end;

  Caption := 'Расчёт тарифа в Rail-Сервер (' + (FRTXApplication as IApplicationInfo).Version + ') [' + fctm_save_name + ']';
  sp_CTM_NEW_SAVE_modify.Free;
end;

procedure TfmCtmNewMain.dxBarLargeButton4Click(Sender: TObject);
var s: string;
begin
  s := Client_CalcParametrs.FieldByName('Comment').AsString;
  if InputQuery('', 'Введите название расчета', s) then begin
    cxMemo1.Text := s;
    if s = '' then Panel13.Visible := False
    else Panel13.Visible := True;

    Client_CalcParametrs.Edit;
    Client_CalcParametrs.FieldByName('Comment').AsString := s;
    Client_CalcParametrs.Post
  end;
end;

procedure TfmCtmNewMain.dxBarLargeButton5Click(Sender: TObject);
begin
  CreateTree;
  if CheckParametrs(False) = True then CalcRate;
end;

procedure TfmCtmNewMain.dxBarLargeButton6Click(Sender: TObject);
begin
  Screen.Cursor := crHourGlass;
  if dxBarLargeButton6.Down then begin
    cxPageControl1.ActivePageIndex := 1;
    SetClientFullRoutes;
  end else begin
    cxPageControl1.ActivePageIndex := 0;
  end;
  Screen.Cursor := crDefault;
end;

procedure TfmCtmNewMain.dxBarLargeButton7Click(Sender: TObject);
begin
  GroupBox1.Visible := dxBarLargeButton7.Down;
  Splitter4.Visible := dxBarLargeButton7.Down;
end;

procedure TfmCtmNewMain.ClearForm();
begin
  Client_Result.EmptyDataSet;
  Client_Routes.EmptyDataSet;
  Client_BackRoutes.EmptyDataSet;
  Client_LandTaxes.EmptyDataSet;
  Client_Taxes_id.EmptyDataSet;
  Client_Stations.EmptyDataSet;
  Client_CargoMulti.EmptyDataSet;
  Client_FullRoutes.EmptyDataSet;

  cxComboBox2.ItemIndex := 0;
  cxDateEdit1.Date := Date;

  Client_CalcParametrs.EmptyDataSet;
  Client_CalcParametrs.Edit;
  Client_CalcParametrs.FieldByName('currency_id').AsInteger := 0;
  Client_CalcParametrs.FieldByName('Option6').AsBoolean := False;
  Client_CalcParametrs.Post;

  CreateTree;
end;

procedure TfmCtmNewMain.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  FQueryStation.Free;
  FRTXDocument    := nil;
  FRTXApplication := nil;
  Action := caFree;
end;

procedure TfmCtmNewMain.Panel2Click(Sender: TObject);
begin
  // Станция назначения
  fmCtmNewNode := TfmCtmNewNode.Create(Application, Fusr_pwd, cxDateEdit1.Date);
  fmCtmNewNode._SetQueryStation := Query_Stations;
  if (not Client_CalcParametrs.FieldByName('node_end_cod').IsNull) AND (Query_Stations.Active = True) then
    fmCtmNewNode._SetNodeCod := Client_CalcParametrs.FieldByName('node_end_cod').AsString;

  if fmCtmNewNode.ShowModal = mrOk then begin
    Client_CalcParametrs.Edit;
    Client_CalcParametrs.FieldByName('node_end_cod'         ).Value := fmCtmNewNode._GetNodeCod;
    Client_CalcParametrs.FieldByName('node_end_name'        ).Value := fmCtmNewNode._GetNodeName;
    Client_CalcParametrs.FieldByName('node_end_land_name'   ).Value := fmCtmNewNode._GetLandName;
    Client_CalcParametrs.FieldByName('node_end_PPland'      ).Value := fmCtmNewNode._GetPPLand;
    Client_CalcParametrs.FieldByName('node_end_PPland_name' ).Value := fmCtmNewNode._GetPPLandName;
    Client_CalcParametrs.FieldByName('node_end_road_name'   ).Value := fmCtmNewNode._GetRoadName;
    Client_CalcParametrs.Post;

    CreateTree;
    if CheckParametrs(False) = True then CalcRate;
    if (not Client_CalcParametrs.FieldByName('node_end_cod').IsNull) AND
       (not Client_CalcParametrs.FieldByName('node_begin_cod').IsNull)  then begin
      cxLabel_distanc.Caption := IntToStr(CalcDistance());
    end;
  end;
end;

procedure TfmCtmNewMain.Panel3Click(Sender: TObject);
begin
  // Станция отправления
  fmCtmNewNode := TfmCtmNewNode.Create(Application, Fusr_pwd, cxDateEdit1.Date);
  fmCtmNewNode._SetQueryStation := Query_Stations;
  if (not Client_CalcParametrs.FieldByName('node_begin_cod').IsNull) AND (Query_Stations.Active = True) then
    fmCtmNewNode._SetNodeCod := Client_CalcParametrs.FieldByName('node_begin_cod').AsString;

  if fmCtmNewNode.ShowModal = mrOk then begin
    Client_CalcParametrs.Edit;
    Client_CalcParametrs.FieldByName('node_begin_cod'         ).Value := fmCtmNewNode._GetNodeCod;
    Client_CalcParametrs.FieldByName('node_begin_name'        ).Value := fmCtmNewNode._GetNodeName;
    Client_CalcParametrs.FieldByName('node_begin_land_name'   ).Value := fmCtmNewNode._GetLandName;
    Client_CalcParametrs.FieldByName('node_begin_PPland'      ).Value := fmCtmNewNode._GetPPLand;
    Client_CalcParametrs.FieldByName('node_begin_PPland_name' ).Value := fmCtmNewNode._GetPPLandName;
    Client_CalcParametrs.FieldByName('node_begin_road_name'   ).Value := fmCtmNewNode._GetRoadName;
    Client_CalcParametrs.Post;

    CreateTree;
    if CheckParametrs(False) = True then CalcRate;
    if (not Client_CalcParametrs.FieldByName('node_end_cod').IsNull) AND
       (not Client_CalcParametrs.FieldByName('node_begin_cod').IsNull)  then begin
      cxLabel_distanc.Caption := IntToStr(CalcDistance());
    end;
  end;
end;

function TfmCtmNewMain.CheckParametrs(set_show_message: boolean): boolean;
begin
  if Client_CalcParametrs.FieldByName('node_begin_cod').IsNull then begin
    if set_show_message then Application.MessageBox('Введите станцию отправления', 'Ошибка', MB_OK + MB_ICONSTOP);
    result := false;
    exit;
  end;
  if Client_CalcParametrs.FieldByName('node_end_cod').IsNull then begin
    if set_show_message then Application.MessageBox('Введите станцию назначения ', 'Ошибка', MB_OK + MB_ICONSTOP);
    result := false;
    exit;
  end;

  if Client_CalcParametrs.FieldByName('Send_id').AsInteger = 1900 then begin

  end else begin
    if Client_CalcParametrs.FieldByName('ETSNG_cod').AsString = '' then begin
      if set_show_message then Application.MessageBox('Введите груз ЕТСНГ', 'Ошибка', MB_OK + MB_ICONSTOP);
      result := false;
      exit;
    end;
    if Client_CalcParametrs.FieldByName('GNG_cod').AsString = '' then begin
      if set_show_message then Application.MessageBox('Введите груз ГНГ', 'Ошибка', MB_OK + MB_ICONSTOP);
      result := false;
      exit;
    end;
    if Client_CalcParametrs.FieldByName('Send_id').IsNull then begin
      if set_show_message then Application.MessageBox('Введите параметры отправки', 'Ошибка', MB_OK + MB_ICONSTOP);
      result := false;
      exit;
    end;
    if Client_CalcParametrs.FieldByName('Cars_id').IsNull then begin
      if set_show_message then Application.MessageBox('Введите род подвижного средства', 'Ошибка', MB_OK + MB_ICONSTOP);
      result := false;
      exit;
    end;
  end;
  result := True;
end;

function TfmCtmNewMain.CalcDistance(): integer;
var RTXResult   : RailTariff_TLB.IDocNode;
    RTXDocument : RailTariff_TLB.IDocument;
    SP_inf_obj_distance_modify : TADOStoredProc;
    Direction : integer;
begin
  Result    := 0;

  (FRTXDocument as IDocumentAttr).FromStation(Client_CalcParametrs.FieldByName('node_begin_cod').AsString, Client_CalcParametrs.FieldByName('node_begin_PPland').AsInteger);
  (FRTXDocument as IDocumentAttr).ToStation  (Client_CalcParametrs.FieldByName('node_end_cod').AsString  , Client_CalcParametrs.FieldByName('node_end_PPland').AsInteger);
  (FRTXDocument as IDocumentControl).DoCalcDistance;

  RTXResult := FRTXDocument.Result;
  RTXResult.AsTable.First;
  while not RTXResult.AsTable.EOF do  begin
    Direction := RTXResult.Value['Direction'];
    if Direction = 1 then
      Result := Result + RTXResult.Value['Distance'];

    RTXResult.AsTable.Next;
  end;

  if Result >= 0 then begin
    SP_inf_obj_distance_modify := TADOStoredProc.Create(nil);
    SP_inf_obj_distance_modify.Connection := CTMConnect;
    SP_inf_obj_distance_modify.ProcedureName := 'sp_inf_obj_distance_modify';
    SP_inf_obj_distance_modify.Parameters.Refresh;
    SP_inf_obj_distance_modify.Parameters.ParamByName('@type_action'   ).Value := 0;
    SP_inf_obj_distance_modify.Parameters.ParamByName('@node_begin_cod').Value := Client_CalcParametrs.FieldByName('node_begin_cod').AsString;
    SP_inf_obj_distance_modify.Parameters.ParamByName('@node_end_cod'  ).Value := Client_CalcParametrs.FieldByName('node_end_cod').AsString;
    SP_inf_obj_distance_modify.Parameters.ParamByName('@distance'      ).Value := Result;
    SP_inf_obj_distance_modify.ExecProc;
    SP_inf_obj_distance_modify.Free;
  end;


  RTXResult   := nil;
end;

procedure TfmCtmNewMain.CalcRate();
var set_distance: boolean;
    RTXTax     : RailTariff_TLB._RefBook;
    RTXRefBook : RailTariff_TLB._RefBook2;
    multi_cargo_index : OLEvariant;
    dt : TDateTime;
    ExitRouteEnabled : boolean;
begin
  Screen.Cursor := crHourGlass;
  FRTXDocument.New;
  ExitRouteEnabled := False;

  // Установка даты
  (FRTXDocument as IDocumentAttr).OnDate(cxDateEdit1.Date);

  // Установка валюты
  case Client_CalcParametrs.FieldByName('currency_id').AsInteger of
    0 : FRTXDocument.Data.Value['CommonForCalc\ReqCurrencyCode'] := 0;
    1 : FRTXDocument.Data.Value['CommonForCalc\ReqCurrencyCode'] := 840;
    2 : FRTXDocument.Data.Value['CommonForCalc\ReqCurrencyCode'] := 978;
    3 : FRTXDocument.Data.Value['CommonForCalc\ReqCurrencyCode'] := 810;
    4 : FRTXDocument.Data.Value['CommonForCalc\ReqCurrencyCode'] := 756;
  end;

  //Установить "Расчет расстояний по приказу № 9 от 22.01.2014 г."
  if not Client_CalcParametrs.FieldByName('NEW_DISTANCES').IsNull  then
    FRTXDocument.Data.Value['NEW_DISTANCES'] := Ord(Client_CalcParametrs.FieldByName('NEW_DISTANCES').AsBoolean)
  else
    FRTXDocument.Data.Value['NEW_DISTANCES'] := 1;

  //Project_Tariff_Index_2018
  if not Client_CalcParametrs.FieldByName('Project_Tariff_Index_2018').IsNull  then
    FRTXDocument.Data.Value['Project_Tariff_Index_2018'] := Ord(Client_CalcParametrs.FieldByName('Project_Tariff_Index_2018').AsBoolean)
  else
    FRTXDocument.Data.Value['Project_Tariff_Index_2018'] := 0;

  //Project_Tariff_AddIndex_2018
  if not Client_CalcParametrs.FieldByName('Project_Tariff_AddIndex_2018').IsNull  then
    FRTXDocument.Data.Value['Project_Tariff_AddIndex_2018'] := Ord(Client_CalcParametrs.FieldByName('Project_Tariff_AddIndex_2018').AsBoolean)
  else
    FRTXDocument.Data.Value['Project_Tariff_AddIndex_2018'] := 0;

  //Zhur_Miller
  if not Client_CalcParametrs.FieldByName('Zhur_Miller').IsNull  then
    FRTXDocument.Data.Value['Zhur_Miller'] := Ord(Client_CalcParametrs.FieldByName('Zhur_Miller').AsBoolean)
  else
    FRTXDocument.Data.Value['Zhur_Miller'] := 0;

  FRTXDocument.Data.Value['Comments'] := Client_CalcParametrs.FieldByName('comment').AsString;

  // Установка станций отправления
  (FRTXDocument as IDocumentAttr).FromStation(Client_CalcParametrs.FieldByName('node_begin_cod').AsString, Client_CalcParametrs.FieldByName('node_begin_PPland').AsInteger);

  //Установка станций назначения
  (FRTXDocument as IDocumentAttr).ToStation(Client_CalcParametrs.FieldByName('node_end_cod').AsString, Client_CalcParametrs.FieldByName('node_end_PPland').AsInteger);

  if Client_CalcParametrs.FieldByName('Send_id').AsInteger = 1900 then begin
    (FRTXDocument as IDocumentAttr).Send(Client_CalcParametrs.FieldByName('Otpr_id').AsInteger, Client_CalcParametrs.FieldByName('Send_id').AsInteger, 0, 2);

    FRTXDocument.Data.Value['BufferCar'] := 0;
    FRTXDocument.Data.Value['BufferCar\UsageMode'] := Client_CalcParametrs.FieldByName('buffer_ID').AsInteger;       //3
    FRTXDocument.Data.Value['BufferCar\VagonId'  ] := Client_CalcParametrs.FieldByName('buffer_TranspId').AsInteger; //1
    FRTXDocument.Data.Value['BufferCar\VagonPID' ] := Client_CalcParametrs.FieldByName('buffer_TranspId').AsInteger; //1


    FRTXDocument.Data.Value['BufferCar\Axis' ] := Client_CalcParametrs.FieldByName('buffer_Axis').AsInteger;
    FRTXDocument.Data.Value['BufferCar\Count' ] := Client_CalcParametrs.FieldByName('buffer_Count').AsInteger;
    FRTXDocument.Data.Value['BufferCar\OwnerId' ] := Client_CalcParametrs.FieldByName('buffer_OwnerId').AsInteger; // 2;
    FRTXDocument.Data.Value['BufferCar\OwnerLand' ] := 99;
    if Client_CalcParametrs.FieldByName('buffer_ControlFrameWeight').IsNull then
      FRTXDocument.Data.Value['BufferCar\ControlFrameWeight' ] := 1
    else
      FRTXDocument.Data.Value['BufferCar\ControlFrameWeight' ] := Client_CalcParametrs.FieldByName('buffer_ControlFrameWeight').AsInteger;

    FRTXDocument.Calculate;
  end else begin
    //Установка промежуточных станций
    (FRTXDocument as IThruRoutes).Clear;
    if Client_Stations.RecordCount > 0 then begin
      Client_Stations.First;
      while not Client_Stations.Eof do begin
        if Client_Stations.FieldByName('Activ').AsBoolean then (FRTXDocument as IThruRoutes).AddPP(Client_Stations.FieldByName('cod').AsString, Client_Stations.FieldByName('SecondCode').AsString)
        else (FRTXDocument as IThruRoutes).AddStation(Client_Stations.FieldByName('cod').AsString);
        Client_Stations.Next;
      end;
    end;

    //Установка параметров отправки
    (FRTXDocument as IDocumentAttr).Send(
    Client_CalcParametrs.FieldByName('Otpr_id').AsInteger,
    Client_CalcParametrs.FieldByName('Send_id').AsInteger,
    Client_CalcParametrs.FieldByName('ExitRoute_id').AsInteger, 2);

    //Установка груза

//    if UsersCheck(Fusr_pwd.user_name, Fusr_pwd.user_group_id) = 0 then
      (FRTXDocument as IDocumentAttr5).FreightEx(Client_CalcParametrs.FieldByName('ETSNG_cod').AsString, '', Client_CalcParametrs.FieldByName('GNG_cod').AsString, Client_CalcParametrs.FieldByName('Weight').AsFloat);
//    else
//      (FRTXDocument as IDocumentAttr5).FreightEx(Client_CalcParametrs.FieldByName('ETSNG_cod').AsString, '', Client_CalcParametrs.FieldByName('GNG_cod').AsString, 5);

    try
      (FRTXDocument as IDocumentAttr2).WagonOwnerLand(Client_CalcParametrs.FieldByName('LandOwn_id').AsInteger, True);
    except
    end;

    case Client_CalcParametrs.FieldByName('Otpr_id').AsInteger of
      3000 :  begin
                (FRTXDocument as IDocumentAttr).Container(Client_CalcParametrs.FieldByName('Cars_id').AsInteger, Client_CalcParametrs.FieldByName('Owners_id').AsInteger, Client_CalcParametrs.FieldByName('Kol_PS').AsInteger, Client_CalcParametrs.FieldByName('Cars_TareW').AsFloat);

                if not Client_CalcParametrs.FieldByName('FlatWagonId').IsNull then begin
                  FRTXDocument.Data.Value['Vagon\FlatWagonId'] := Client_CalcParametrs.FieldByName('FlatWagonId').AsInteger;
                  FRTXDocument.Data.Value['Vagon\OwnerFirmV'  ] := Client_CalcParametrs.FieldByName('Owners_id').AsInteger; // Собственник вагона
                  FRTXDocument.Data.Value['Vagon\FWOwnP'      ] := Client_CalcParametrs.FieldByName('FWOwnP').AsInteger; // Принадлежность платформы
                  FRTXDocument.Data.Value['Vagon\FWOwnerFirmP'] := 0;  //Собственник платформы   (Любой, кроме перечисленных)

                end;

              end;
      else    begin
                {Установка вагона}
                case Client_CalcParametrs.FieldByName('Send_id').AsInteger of
                  100 : begin
                          (FRTXDocument as IDocumentAttr8).EmptyWagonEx(Client_CalcParametrs.FieldByName('Cars_id').AsInteger, Client_CalcParametrs.FieldByName('Owners_id').AsInteger, Client_CalcParametrs.FieldByName('Kol_PS').AsInteger, Client_CalcParametrs.FieldByName('Empty_ETSNG_cod').AsString, '', Client_CalcParametrs.FieldByName('Cars_axis').AsInteger, Client_CalcParametrs.FieldByName('Cars_TareW').AsFloat);
                        end;
                 1900 : begin
                          (FRTXDocument as IDocumentAttr11).BufferWagon(Client_CalcParametrs.FieldByName('buffer_TranspId').AsInteger, Client_CalcParametrs.FieldByName('buffer_OwnerId').AsInteger, Client_CalcParametrs.FieldByName('buffer_Count').AsInteger, Client_CalcParametrs.FieldByName('buffer_Axis').AsInteger);
                          (FRTXDocument as IDocumentAttr11).BufferWagonUsageMode(Client_CalcParametrs.FieldByName('buffer_ID').AsInteger, Client_CalcParametrs.FieldByName('buffer_ControlFrameWeight').AsInteger);
                        end;
                    5 : begin
                          {Определение принадлежности}
                          case Client_CalcParametrs.FieldByName('Owners_id').AsInteger of
                            1,7 : FRTXDocument.Data.Value['RouteProperties\IsBackRoutePresent'] := 0;
                            2,3 : FRTXDocument.Data.Value['RouteProperties\IsBackRoutePresent'] := 1;
                          end;
                          (FRTXDocument as IDocumentAttr).Wagon(Client_CalcParametrs.FieldByName('Cars_id').AsInteger, Client_CalcParametrs.FieldByName('Owners_id').AsInteger, Client_CalcParametrs.FieldByName('Kol_PS').AsInteger, Client_CalcParametrs.FieldByName('Cars_gp').AsInteger);
                          if not Client_CalcParametrs.FieldByName('Bulkiness').IsNull then
                              (FRTXDocument as IDocumentAttr9).Bulkiness(Client_CalcParametrs.FieldByName('Bulkiness').AsString)
                          else
                              (FRTXDocument as IDocumentAttr9).Bulkiness('Н0000');
                        end
                  else  begin
                          {Определение принадлежности}
                          case Client_CalcParametrs.FieldByName('Owners_id').AsInteger of
                            1,7 : FRTXDocument.Data.Value['RouteProperties\IsBackRoutePresent'] := 0;
                            2,3 : FRTXDocument.Data.Value['RouteProperties\IsBackRoutePresent'] := 1;
                          end;
                          (FRTXDocument as IDocumentAttr).Wagon(Client_CalcParametrs.FieldByName('Cars_id').AsInteger, Client_CalcParametrs.FieldByName('Owners_id').AsInteger, Client_CalcParametrs.FieldByName('Kol_PS').AsInteger, Client_CalcParametrs.FieldByName('Cars_gp').AsInteger);
                        end;
                end;
              end;
    end;

    //---------------------------------------------------------------------------------------
    // Установка сборного груза
    if Client_CargoMulti.RecordCount > 0 then begin
      if  Client_CalcParametrs.FieldByName('Send_id').AsInteger = 9 then begin
        (FRTXDocument as IDocumentAttr3).MXFreightClear;
        Client_CargoMulti.First;
        while not Client_CargoMulti.Eof do begin
          (FRTXDocument as IDocumentAttr8).MXFreightAddEx(Client_CargoMulti.FieldByName('EtnCode').AsString, Client_CargoMulti.FieldByName('GngCode').AsString, Client_CargoMulti.FieldByName('Weight').AsFloat, 0, multi_cargo_index);
          Client_CargoMulti.Next;
        end;
      end;
    end;

    // Установить Код универ. контейнера, с параметрами кот. совпадает специализированный
    if not Client_CalcParametrs.FieldByName('Container_id').IsNull then
      FRTXDocument.Data.Value['Vagon\EqUContId'] := Client_CalcParametrs.FieldByName('Container_id').AsInteger
    else
      FRTXDocument.Data.Value['Vagon\EqUContId'] := 0;

    //Установка кол-ва вагонов в отправке
//    if UsersCheck(Fusr_pwd.user_name, Fusr_pwd.user_group_id) = 0 then begin
      FRTXDocument.Data.Value['Vagon\VSCount']  := Client_CalcParametrs.FieldByName('Vag_otpr').AsInteger;
      FRTXDocument.Data.Value['Vagon\TareW']    := Client_CalcParametrs.FieldByName('Cars_TareW').AsInteger;
      FRTXDocument.Data.Value['Vagon\OCE']      := Client_CalcParametrs.FieldByName('Cars_axis').AsInteger;
//    end else begin
//      FRTXDocument.Data.Value['Vagon\VSCount']  := 20;
//      FRTXDocument.Data.Value['Vagon\TareW']    := 10;
//      FRTXDocument.Data.Value['Vagon\OCE']      := 8;
//    end;

    //Установить "Под таможенным контролем"
    if not Client_CalcParametrs.FieldByName('Option12').IsNull  then
      FRTXDocument.Data.Value['TN\Commodity\Custom'] := Ord(Client_CalcParametrs.FieldByName('Option12').AsBoolean)
    else
      FRTXDocument.Data.Value['TN\Commodity\Custom'] := 1;

    //Установить "Тар. отметка 64. Выполнение жд одной операции погрузки или выгрузки в местах общего пользования"
    if not Client_CalcParametrs.FieldByName('TARIFFMARK64').IsNull  then
      FRTXDocument.Data.Value['TN\Commodity\OneOperat'] := Ord(Client_CalcParametrs.FieldByName('TARIFFMARK64').AsBoolean)
    else
      FRTXDocument.Data.Value['TN\Commodity\OneOperat'] := 0;

    //Установить "Вагон приписан к станции погрузки/выгрузки"
    if not Client_CalcParametrs.FieldByName('ADDSTATION').IsNull  then
      FRTXDocument.Data.Value['Vagon\RegSt'] := Ord(Client_CalcParametrs.FieldByName('ADDSTATION').AsBoolean)
    else
      FRTXDocument.Data.Value['Vagon\RegSt'] := 0;

    //Установить "Полувагоны моделей 12-9761-02, 12-9833-01, 12-9853, 12-9869"
    if not Client_CalcParametrs.FieldByName('MODELOW').IsNull  then
      FRTXDocument.Data.Value['Vagon\ModelOw'] := Ord(Client_CalcParametrs.FieldByName('MODELOW').AsBoolean)
    else
      FRTXDocument.Data.Value['Vagon\ModelOw'] := 0;

    //Установить "Полувагоны моделей 12-196-01, 12-196-02"
    if not Client_CalcParametrs.FieldByName('MODELOWN').IsNull  then
      FRTXDocument.Data.Value['Vagon\ModelOwN'] := Ord(Client_CalcParametrs.FieldByName('MODELOWN').AsBoolean)
    else
      FRTXDocument.Data.Value['Vagon\ModelOwN'] := 0;

    //Установить "Полувагоны модели 12-2143"
    if not Client_CalcParametrs.FieldByName('MODELOWND').IsNull  then
      FRTXDocument.Data.Value['Vagon\ModelOwNd'] := Ord(Client_CalcParametrs.FieldByName('MODELOWND').AsBoolean)
    else
      FRTXDocument.Data.Value['Vagon\ModelOwNd'] := 0;

    //Воинские перевозки
    if not Client_CalcParametrs.FieldByName('Option6').IsNull  then
      FRTXDocument.Data.Value['TN\Commodity\Military'] := Ord(Client_CalcParametrs.FieldByName('Option6').AsBoolean)
    else
      FRTXDocument.Data.Value['TN\Commodity\Military'] := 0;

    //Дополнительное оборудование
    if not Client_CalcParametrs.FieldByName('Option8').IsNull  then
      FRTXDocument.Data.Value['Vagon\VDop'] := Ord(not Client_CalcParametrs.FieldByName('Option8').AsBoolean)
    else
      FRTXDocument.Data.Value['Vagon\VDop'] := 0;

    //Установить "Из-под опасного груза без очистки и промывки"
    if not Client_CalcParametrs.FieldByName('Option14').IsNull  then
      FRTXDocument.Data.Value['Vagon\FrDang'] := Ord(Client_CalcParametrs.FieldByName('Option14').AsBoolean);


    //Возврат порожних вагонов/контейнеров (Initialization)
    FRTXDocument.Data.Value['RouteProperties\IsBackRoutePresent']:= 0;

    //Промывка-пропарка
    //FRTXDocument.Data.Value['RouteProperties\IsWashingSteaming']:= 0;
    if not Client_CalcParametrs.FieldByName('node_washing_cod').IsNull then begin
      (FRTXDocument as IDocumentAttr19).SetWashingStation(Client_CalcParametrs.FieldByName('node_washing_cod').AsString, 20);
      (FRTXDocument as IDocumentAttr19).WashingEnabled := True;
    end;


    //Установка сопровождения
    if not Client_CalcParametrs.FieldByName('Support_id').IsNull  then
      (FRTXDocument as IDocumentAttr).Support(Client_CalcParametrs.FieldByName('Support_id').AsInteger, Client_CalcParametrs.FieldByName('Support_Kol_Conductor').AsInteger, Client_CalcParametrs.FieldByName('Support_Axis').AsInteger)
    else
      (FRTXDocument as IDocumentAttr).Support(0, 0, 0);

    //Установка кол_во вагонов в охране
    if not Client_CalcParametrs.FieldByName('VCGuard').IsNull then
      FRTXDocument.Data.Value['Vagon\VCGuard'] := Client_CalcParametrs.FieldByName('VCGuard').AsInteger
    else if not Client_CalcParametrs.FieldByName('Vag_otpr').IsNull then
      FRTXDocument.Data.Value['Vagon\VCGuard'] := Client_CalcParametrs.FieldByName('Vag_otpr').AsInteger
    else
      FRTXDocument.Data.Value['Vagon\VCGuard'] := 1;


    FRTXDocument.Data.Value['RouteProperties\ExitRouteEnabled'] := 0;
    FRTXDocument.Data.Value['Vagon\FlatWagonId'] := 0;
    FRTXDocument.Data.Value['Vagon\VagonPID' ]   := 1;
    FRTXDocument.Data.Value['SubsidyKLG' ]       := 0;


    //Проверка на КИТ
    (FRTXDocument as IDocumentControl).DoCalcDistance;
    FRTXDocument.Result.AsTable.First;

    Client_CalcParametrs.Edit;
    Client_CalcParametrs.FieldByName('Multiple_kit').AsBoolean := False;
    Client_CalcParametrs.Post;

    while not FRTXDocument.Result.AsTable.EOF do  begin
      if (FRTXDocument as ISpecialTariff).IsSTExists then begin
        Client_CalcParametrs.Edit;
        Client_CalcParametrs.FieldByName('Multiple_kit').AsBoolean := True;
        Client_CalcParametrs.Post;
        break;
      end;
      FRTXDocument.Result.AsTable.Next;
    end;

    // Установка КИТ
    FRTXDocument.Data.Node['LandTrf'].AsTable.First;
    while not FRTXDocument.Data.Node['LandTrf'].AsTable.EOF do begin
      Client_Result.Locate('OrderId', FRTXDocument.Data.Node['LandTrf'].Value['OrderId'], []);
      if (Client_Result.FieldByName('KIT').AsString <> '') and (Client_Result.FieldByName('KIT').AsString <> '0') then begin
        FRTXDocument.Data.Value['LandTrf\KIT\GroupID1'] := Client_Result.FieldByName('KIT').AsInteger;
      end;
      FRTXDocument.Data.Node['LandTrf'].AsTable.Next;
    end;



    // Проверка маршрута
    if (FRTXDocument as IDocumentAttr21).AltRoutesAvail then begin
      if (Client_CalcParametrs.FieldByName('route_id').AsInteger <> 0) AND (Client_CalcParametrs.FieldByName('enable_alt_route').AsBoolean = True) then begin
        RTXRefBook := (FRTXDocument as IDocumentAttr21).GetAltRoutesRefBook as _RefBook2;
        RTXRefBook.SeekByKey('ID', Client_CalcParametrs.FieldByName('route_id').AsInteger);
        if (not RTXRefBook.EOF) and (RTXRefBook.FieldValue['ID'] = Client_CalcParametrs.FieldByName('route_id').AsInteger) then begin
          (FRTXDocument as IDocumentAttr21).EnableAltRoute(Client_CalcParametrs.FieldByName('route_id').AsInteger);
          ExitRouteEnabled := True;
        end;
      end;
    end;

    // Расчет дополнительных сборов
    if Client_Taxes_id.RecordCount <> 0 then begin

       if Client_CalcParametrs.FieldByName('return_type').AsInteger = 0 then
         (FRTXDocument as IDocumentAttr12).BackRoutePresent := False
       else if Client_CalcParametrs.FieldByName('return_type').AsInteger = 1 then
         (FRTXDocument as IDocumentAttr12).BackRoutePresent := True
       else if Client_CalcParametrs.FieldByName('return_type').AsInteger = 2 then
         (FRTXDocument as IDocumentAttr18).SetReturnStation(Client_CalcParametrs.FieldByName('return_node_cod').AsString, Client_CalcParametrs.FieldByName('return_land_id').AsInteger);


      RTXTax := FRTXApplication.RefBook['Tax'];
      (FRTXDocument as IDocumentControl).DoCalcDistance;
      FRTXDocument.Data.Node['LandTrf'].AsTable.First;
      while not FRTXDocument.Data.Node['LandTrf'].AsTable.EOF do begin
        Client_Taxes_id.Filter := 'LandId = ' + IntToStr(FRTXDocument.Data.Node['LandTrf'].Value['LandId']);
        Client_Taxes_id.Filtered := True;
        Client_Taxes_id.First;
        while not Client_Taxes_id.Eof do begin
          if Client_Taxes_id.FieldByName('Automatic').AsBoolean then begin
            RTXTax.SeekByKey('TaxID', Client_Taxes_id.FieldByName('TaxesId').AsString);
            if RTXTax.FieldValue['TaxID'] = Client_Taxes_id.FieldByName('TaxesId').AsString then begin
              case Client_Taxes_id.FieldByName('Type').AsInteger of
                0 : (FRTXDocument as ITaxes).SetTax(RTXTax.FieldValue['TaxID'], True, RTXTax.FieldValue['ParamType']);
                1 : if not Client_Taxes_id.FieldByName('Param').IsNull then
                      (FRTXDocument as ITaxes).SetTax(RTXTax.FieldValue['TaxID'], True, Client_Taxes_id.FieldByName('Param').AsString)
                    else
                      (FRTXDocument as ITaxes).SetTax(RTXTax.FieldValue['TaxID'], True, RTXTax.FieldValue['ParamType']);
                else
                    if not Client_Taxes_id.FieldByName('rate').IsNull then
                      (FRTXDocument as ITaxes).SetTax(RTXTax.FieldValue['TaxID'], True, Client_Taxes_id.FieldByName('rate').AsString)
                    else
                      (FRTXDocument as ITaxes).SetTax(RTXTax.FieldValue['TaxID'], True, RTXTax.FieldValue['ParamType']);
              end;
            end;
          end else begin
            // Установка охраны
            FRTXDocument.Data.Node['LandTrf'].Value['GuardPrice\Enabled'] := ord(Client_Taxes_id.FieldByName('Active').AsBoolean);
          end;
          Client_Taxes_id.Next;
        end;
        Client_Taxes_id.Filtered := False;
        FRTXDocument.Data.Node['LandTrf'].AsTable.Next;
      end;

      set_distance := False;
      Client_Result.First;
      while not Client_Result.Eof do begin
        if Client_Result.FieldByName('set_distance').AsBoolean = True then begin
          set_distance := True;
        end;
        Client_Result.Next;
      end;

      // Возврат порожних вагонов/контейнеров
      if Client_CalcParametrs.FieldByName('return_type').AsInteger = 0 then
        (FRTXDocument as IDocumentAttr12).BackRoutePresent := False
      else if Client_CalcParametrs.FieldByName('return_type').AsInteger = 1 then
        (FRTXDocument as IDocumentAttr12).BackRoutePresent := True
      else if Client_CalcParametrs.FieldByName('return_type').AsInteger = 2 then
        (FRTXDocument as IDocumentAttr18).SetReturnStation(Client_CalcParametrs.FieldByName('return_node_cod').AsString, Client_CalcParametrs.FieldByName('return_land_id').AsInteger);
//      if not Client_CalcParametrs.FieldByName('Option2').IsNull  then
//        (FRTXDocument as IDocumentAttr12).BackRoutePresent := Client_CalcParametrs.FieldByName('Option2').AsBoolean
//      else
//        (FRTXDocument as IDocumentAttr12).BackRoutePresent := False;

      if set_distance = True then begin
        FRTXDocument.Data.Node['LandTrf'].AsTable.First;
        while not FRTXDocument.Data.Node['LandTrf'].AsTable.EOF do begin
          Client_Result.Locate('OrderId', FRTXDocument.Data.Node['LandTrf'].Value['OrderId'], []);
          if Client_Result.FieldByName('set_distance').AsBoolean = True then begin
            FRTXDocument.Data.Value['LandTrf\Distance\ActualValue'] := True;
            FRTXDocument.Data.Value['LandTrf\Distance'] := Client_Result.FieldByName('Distance').Value;
          end;
          FRTXDocument.Data.Node['LandTrf'].AsTable.Next;
        end;
      end;
      (FRTXDocument as IDocumentControl).DoCalcTariff;
      {Расчет тарифа}
    end else  begin
      set_distance := False;
      Client_Result.First;
      while not Client_Result.Eof do begin
        if Client_Result.FieldByName('set_distance').AsBoolean = True then begin
          set_distance := True;
        end;
        Client_Result.Next;
      end;

      if set_distance = True then begin
        (FRTXDocument as IDocumentControl).DoCalcDistance;

        // Возврат порожних вагонов/контейнеров
        if Client_CalcParametrs.FieldByName('return_type').AsInteger = 0 then
          (FRTXDocument as IDocumentAttr12).BackRoutePresent := False
        else if Client_CalcParametrs.FieldByName('return_type').AsInteger = 1 then
          (FRTXDocument as IDocumentAttr12).BackRoutePresent := True
        else if Client_CalcParametrs.FieldByName('return_type').AsInteger = 2 then
          (FRTXDocument as IDocumentAttr18).SetReturnStation(Client_CalcParametrs.FieldByName('return_node_cod').AsString, Client_CalcParametrs.FieldByName('return_land_id').AsInteger);
//        if not Client_CalcParametrs.FieldByName('Option2').IsNull  then
//          if Client_CalcParametrs.FieldByName('Option2').Value = True then
//            FRTXDocument.Data.Value['RouteProperties\IsBackRoutePresent'] := 1
//          else
//            (FRTXDocument as IDocumentAttr12).BackRoutePresent := False
//        else
//          (FRTXDocument as IDocumentAttr12).BackRoutePresent := False;

       (FRTXDocument as IDocumentControl).DoCalcDistance;

        FRTXDocument.Data.Node['LandTrf'].AsTable.First;
        while not FRTXDocument.Data.Node['LandTrf'].AsTable.EOF do begin
          Client_Result.Locate('OrderId', FRTXDocument.Data.Node['LandTrf'].Value['OrderId'], []);
          if Client_Result.FieldByName('set_distance').AsBoolean = True then begin
            FRTXDocument.Data.Value['LandTrf\Distance\ActualValue'] := True;
            FRTXDocument.Data.Value['LandTrf\Distance'] := Client_Result.FieldByName('Distance').Value;
          end;
          FRTXDocument.Data.Node['LandTrf'].AsTable.Next;
        end;


        (FRTXDocument as IDocumentControl).DoCalcTariff;
      end else begin
        // Возврат порожних вагонов/контейнеров
        if Client_CalcParametrs.FieldByName('return_type').AsInteger = 0 then
          (FRTXDocument as IDocumentAttr12).BackRoutePresent := False
        else if Client_CalcParametrs.FieldByName('return_type').AsInteger = 1 then
          (FRTXDocument as IDocumentAttr12).BackRoutePresent := True
        else if Client_CalcParametrs.FieldByName('return_type').AsInteger = 2 then
          (FRTXDocument as IDocumentAttr18).SetReturnStation(Client_CalcParametrs.FieldByName('return_node_cod').AsString, Client_CalcParametrs.FieldByName('return_land_id').AsInteger);

//        if not Client_CalcParametrs.FieldByName('Option2').IsNull  then
//          (FRTXDocument as IDocumentAttr12).BackRoutePresent := Client_CalcParametrs.FieldByName('Option2').AsBoolean
//        else
//          (FRTXDocument as IDocumentAttr12).BackRoutePresent := False;



        if ExitRouteEnabled = True then
          FRTXDocument.Data.Value['RouteProperties\ExitRouteEnabled'] := 1
        else
          FRTXDocument.Data.Value['RouteProperties\ExitRouteEnabled'] := 0;
        FRTXDocument.Calculate;
      end;
    end;
  end;

  FRTXDocument.Data.Node['Routes'].AsTable.First;

  GetResult;
  CreateTree;

  RTXTax := nil;
  Screen.Cursor := crDefault;
end;


procedure TfmCtmNewMain.SetClientFullRoutes();
var RTXBackRoutes : RailTariff_TLB.IDocNode;
begin
  Client_FullRoutes.EmptyDataSet;
  Client_FullRoutes.DisableControls;

  RTXBackRoutes := (FRTXDocument as IDocumentAttr19).FullRoute;
  RTXBackRoutes.AsTable.First;
  while not RTXBackRoutes.AsTable.EOF do begin
    Client_FullRoutes.Append;
    try
      Client_FullRoutes.FieldByName('Direction_id').Value := 0;
      Client_FullRoutes.FieldByName('PID').Value          := RTXBackRoutes.Value['PID'];
      Client_FullRoutes.FieldByName('NewCode').Value      := RTXBackRoutes.Value['NewCode'];
      Client_FullRoutes.FieldByName('Name').Value         := RTXBackRoutes.Value['NewName'];
      Client_FullRoutes.FieldByName('Distance').Value     := RTXBackRoutes.Value['Distance'];
      Client_FullRoutes.FieldByName('LandId').Value       := RTXBackRoutes.Value['LandId'];
      Client_FullRoutes.FieldByName('LandName').Value     := RTXBackRoutes.Value['Land'];
      Client_FullRoutes.FieldByName('LandABBR').Value     := RTXBackRoutes.Value['LandAbbr'];
      Client_FullRoutes.FieldByName('RoadId').Value       := RTXBackRoutes.Value['RoadId'];
      Client_FullRoutes.FieldByName('RoadName').Value     := RTXBackRoutes.Value['Road'];
      Client_FullRoutes.FieldByName('RoadABBR').Value     := RTXBackRoutes.Value['RoadAbbr'];
      Client_FullRoutes.FieldByName('NewParaT').Value     := RTXBackRoutes.Value['NewParaT'];
      Client_FullRoutes.FieldByName('DP').Value           := RTXBackRoutes.Value['DP'];
      Client_FullRoutes.Post;
    except
      Client_FullRoutes.Post;
    end;

    RTXBackRoutes.AsTable.Next;
  end;

  Client_FullRoutes.First;
  Client_FullRoutes.EnableControls;

  RTXBackRoutes := nil;
end;

procedure TfmCtmNewMain.GetResult();
var  RTXResult : RailTariff_TLB.IDocNode;
     RTXRoutes : RailTariff_TLB.IDocNode;
    RTXLandTrf : RailTariff_TLB.IDocNode;
      RTXTaxes : RailTariff_TLB.IDocNode;
    RTXRefBook : RailTariff_TLB._RefBook2;
 RTXRefBookKIT : RailTariff_TLB._RefBook2;
 RTXRefBookDoc : RailTariff_TLB.IDocumentRefBook;
 i, Land_Index : integer;
  distinctLand : boolean;
             s : variant;

      ClisntDS : TClientDataSet;

      s_xml : TStringList;
      ss : string;
      parament : I2DimArrayHelper;
      x: Variant;
begin
  ClisntDS := TClientDataSet.Create(nil);
  ClisntDS.Data := Client_Result.Data;

  Client_Result.EmptyDataSet;

//  s_xml := TStringList.Create;
//  ss := (FRTXDocument as IDocument1).DataAsXML;
//  s_xml.Text := ss;
//  s_xml.SaveToFile('d:\_calc.xml');
//  s_xml.Free;


//  parament := (FRTXDocument as IDocumentAttr17).GetCalcParameters;
//  for i:= 0 to parament.Count-1 do begin
//////    ShowMessage(parament.Name[i] + ':' + VarToStr(parament.Value[i]));
//    ShowMessage(
//      (FRTXDocument as IDocumentAttr17).CalcParameter[parament.Name[i]].Name + char(10) +
//      (FRTXDocument as IDocumentAttr17).CalcParameter[parament.Name[i]].Description + char(10) +
//      IntToStr((FRTXDocument as IDocumentAttr17).CalcParameter[parament.Name[i]].type_) + char(10) +
//      VarToStr((FRTXDocument as IDocumentAttr17).CalcParameter[parament.Name[i]].Value)
//     );
//  end;


  Client_CalcParametrs.Edit;
  Client_CalcParametrs.FieldByName('Option12').AsVariant := null;
  Client_CalcParametrs.Post;

  parament := (FRTXDocument as IDocumentAttr17).GetCalcParameters;
  for i:= 0 to parament.Count-1 do begin
    // Вагон следует из-под выгрузки опасного груза без очистки и промывки
    if parament.Name[i] = 'FROMUNDERDANGER' then begin
      Client_CalcParametrs.Edit;
      Client_CalcParametrs.FieldByName('Option14').AsVariant := (FRTXDocument as IDocumentAttr17).CalcParameter[parament.Name[i]].Value;
      Client_CalcParametrs.Post;
    end;
//    ShowMessage(
//      (FRTXDocument as IDocumentAttr17).CalcParameter[parament.Name[i]].Name + char(10) +
//      (FRTXDocument as IDocumentAttr17).CalcParameter[parament.Name[i]].Description + char(10) +
//      IntToStr((FRTXDocument as IDocumentAttr17).CalcParameter[parament.Name[i]].type_) + char(10) +
//      VarToStr((FRTXDocument as IDocumentAttr17).CalcParameter[parament.Name[i]].Value)
//     );
  end;




  RTXResult := FRTXDocument.Result;
  RTXResult.AsTable.First;

  Client_Result.DisableControls;
  i := 0;
  while not RTXResult.AsTable.EOF do  begin
    Client_Result.Append;

    Client_Result.FieldByName('id'              ).Value := i;
    Client_Result.FieldByName('OrderId'         ).Value := RTXResult.Value['OrderId'];
    Client_Result.FieldByName('LandName'        ).Value := RTXResult.Value['LandName'];
    Client_Result.FieldByName('Direction_id'    ).Value := RTXResult.Value['Direction'];
    Client_Result.FieldByName('Distance'        ).Value := RTXResult.Value['Distance'];
//    ShowMessage(
//      'Расстояние, которое пойдет в расчет: ' + VarToStr(RTXResult.Value['Distance']) + #10 +
//      'Транзитное расстояние (если есть): ' + VarToStr(RTXResult.Value['Distance\Transit']) + #10 +
//      'Расстояние по ТР№4: ' +  VarToStr(RTXResult.Value['Distance\Real'])
//    );


    if ClisntDS.Locate('Distance;Direction_id;LandId;set_distance', VarArrayOf([RTXResult.Value['Distance'], RTXResult.Value['Direction'], RTXResult.Value['LandId'], True]), []) then begin
      Client_Result.FieldByName('set_distance').Value := True;
    end else begin
      Client_Result.FieldByName('set_distance').Value := False;
    end;

    Client_Result.FieldByName('LandId'          ).Value := RTXResult.Value['LandId'];
    Client_Result.FieldByName('CalcDsc'         ).Value := RTXResult.Value['CalcDsc'];
    Client_Result.FieldByName('BasePrice'       ).Value := RTXResult.Value['BasePrice'];
    Client_Result.FieldByName('TotalPrice'      ).Value := RTXResult.Value['TotalPrice'];
    Client_Result.FieldByName('NDS'             ).Value := RTXResult.Value['NDS'];
    Client_Result.FieldByName('GuardPrice'      ).Value := RTXResult.Value['GuardPrice'];
    Client_Result.FieldByName('GuardNDS'        ).Value := RTXResult.Value['GuardNDS'];
    Client_Result.FieldByName('PerT'            ).Value := RTXResult.Value['PerT'];
    Client_Result.FieldByName('PerT_PP'         ).Value := RTXResult.Value['BasePerT'];
    Client_Result.FieldByName('ABBR'            ).Value := RTXResult.Value['ABBR'];
    Client_Result.FieldByName('CurrencyID'      ).Value := RTXResult.Value['CurrencyID'];
    Client_Result.FieldByName('GuardPrice'      ).Value := RTXResult.Value['GuardPrice'];
    Client_Result.FieldByName('ShemaNo'         ).Value := RTXResult.Value['ShemaNo'];
    Client_Result.FieldByName('SoprPrice'       ).Value := RTXResult.Value['SoprPrice'];
    Client_Result.FieldByName('AddDues'         ).Value := RTXResult.Value['AddDues'];
    Client_Result.FieldByName('PerTwoNDS'       ).Value := RTXResult.Value['PerTwoNDS'];
    Client_Result.FieldByName('TotalPriceWoNDS' ).Value := RTXResult.Value['TotalPriceWoNDS'];
    Client_Result.FieldByName('WashingState'    ).Value := RTXResult.Value['WashingState'];
    Client_Result.FieldByName('FromStationPID'  ).Value := RTXResult.Value['FromStationPID'];
    Client_Result.FieldByName('ToStationPID'    ).Value := RTXResult.Value['ToStationPID'];


    if RTXResult.Value['Direction'] = 1 then Client_Result.FieldByName('Direction').Value := '==>'
    else Client_Result.FieldByName('Direction').Value := '<==';

    if (RTXResult.Value['GuardPrice\Enabled'] = 1) and (RTXResult.Value['Direction'] = 1) then Client_Result.FieldByName('Vohr').Value := True
    else Client_Result.FieldByName('Vohr').Value := False;


    if (FRTXDocument as ISpecialTariff).IsSTExists then begin
      // Если может быть КИТ, то загружаем справочник для данного расчета
      Client_Result.FieldByName('KIT'     ).AsString := RTXResult.Value['KIT\GroupID1'];
      if (Client_Result.FieldByName('KIT').AsString = '') or (Client_Result.FieldByName('KIT').AsString = '0') then
        Client_Result.FieldByName('KIT_name').AsString := 'Базовый расчет'
      else
        Client_Result.FieldByName('KIT_name').AsString := Client_Result.FieldByName('KIT').AsString;
      FRTXDocument.QueryInterface(IdocumentRefBook, RTXRefBookDoc);
      RTXRefBookKIT := RTXRefBookDoc.FilteredRefBook('KIT', Chr(0)) as _RefBook2;
      //ShowMessage(IntToStr(RTXRefBookKIT.RecordCount));

      Client_KIT.EmptyDataSet;
      RTXRefBookKIT.First;
      while not RTXRefBookKIT.EOF do begin

        Client_KIT.Append;
        Client_KIT.FieldByName('KIT'      ).Value := RTXRefBookKIT.FieldValue['KIT'];
        Client_KIT.FieldByName('Caption'  ).Value := RTXRefBookKIT.FieldValue['Caption'];
        Client_KIT.FieldByName('FromDate' ).Value := RTXRefBookKIT.FieldValue['FromDate'];
        Client_KIT.FieldByName('ToDate'   ).Value := RTXRefBookKIT.FieldValue['ToDate'];
        Client_KIT.FieldByName('Document' ).Value := RTXRefBookKIT.FieldValue['Document'];
        Client_KIT.FieldByName('KITNum'   ).Value := RTXRefBookKIT.FieldValue['KITNum'];
        Client_KIT.Post;

        RTXRefBookKIT.Next;
      end;

    end else begin
      Client_Result.FieldByName('KIT').AsInteger := 0;
      Client_KIT.EmptyDataSet;
    end;
    
    Client_Result.Post;
    
    i := i + 1;
    RTXResult.AsTable.Next;
  end;
  RTXResult := nil;
  Client_Result.EnableControls;


  Client_Routes.DisableControls;
  
  Client_Routes.EmptyDataSet;
  RTXRoutes := FRTXDocument.Data.Node['Routes'];
  RTXRoutes.AsTable.First;
  while not RTXRoutes.AsTable.EOF do begin
    Client_Routes.Append;
    Client_Routes.FieldByName('Direction_id' ).Value := 1;
    Client_Routes.FieldByName('PID'          ).Value := RTXRoutes.Value['PID'];
    Client_Routes.FieldByName('Code'         ).Value := RTXRoutes.Value['Code'];
    Client_Routes.FieldByName('NewCode'      ).Value := RTXRoutes.Value['NewCode'];
    Client_Routes.FieldByName('Name'         ).Value := RTXRoutes.Value['Name'];
    Client_Routes.FieldByName('Distance'     ).Value := RTXRoutes.Value['Distance'];
    Client_Routes.FieldByName('LandId'       ).Value := RTXRoutes.Value['LandId'];
    Client_Routes.FieldByName('LandName'     ).Value := RTXRoutes.Value['LandName'];
    Client_Routes.FieldByName('LandABBR'     ).Value := RTXRoutes.Value['LandABBR'];
    Client_Routes.FieldByName('RegionID'     ).Value := RTXRoutes.Value['RegionID'];
    Client_Routes.FieldByName('RoadId'       ).Value := RTXRoutes.Value['RoadId'];
    Client_Routes.FieldByName('RoadName'     ).Value := RTXRoutes.Value['RoadName'];
    Client_Routes.FieldByName('RoadABBR'     ).Value := RTXRoutes.Value['RoadABBR'];
    Client_Routes.Post;
    RTXRoutes.AsTable.Next;
  end;
  RTXRoutes := nil;

  Client_Routes.EnableControls;


  Client_BackRoutes.DisableControls;
  Client_BackRoutes.EmptyDataSet;
  RTXRoutes := FRTXDocument.Data.Node['BackRoutes'];
  RTXRoutes.AsTable.First;
  while not RTXRoutes.AsTable.EOF do begin
    Client_BackRoutes.Append;
    Client_BackRoutes.FieldByName('Direction_id' ).AsVariant := 1;
    Client_BackRoutes.FieldByName('PID'          ).AsVariant := RTXRoutes.Value['PID'];
    Client_BackRoutes.FieldByName('Code'         ).AsVariant := RTXRoutes.Value['Code'];
    Client_BackRoutes.FieldByName('NewCode'      ).AsVariant := RTXRoutes.Value['NewCode'];
    Client_BackRoutes.FieldByName('Name'         ).AsVariant := RTXRoutes.Value['Name'];
    Client_BackRoutes.FieldByName('Distance'     ).AsVariant := RTXRoutes.Value['Distance'];
    Client_BackRoutes.FieldByName('LandId'       ).AsVariant := RTXRoutes.Value['LandId'];
    Client_BackRoutes.FieldByName('LandName'     ).AsVariant := RTXRoutes.Value['LandName'];
    Client_BackRoutes.FieldByName('LandABBR'     ).AsVariant := RTXRoutes.Value['LandABBR'];
    Client_BackRoutes.FieldByName('RegionID'     ).AsVariant := RTXRoutes.Value['RegionID'];
    Client_BackRoutes.FieldByName('RoadId'       ).AsVariant := RTXRoutes.Value['RoadId'];
    Client_BackRoutes.FieldByName('RoadName'     ).AsVariant := RTXRoutes.Value['RoadName'];
    Client_BackRoutes.FieldByName('RoadABBR'     ).AsVariant := RTXRoutes.Value['RoadABBR'];
    Client_BackRoutes.Post;
    RTXRoutes.AsTable.Next;
  end;
  RTXRoutes := nil;

  Client_BackRoutes.EnableControls;


  Client_LandTaxes.DisableControls;
  Client_Result.DisableControls;

  Client_LandTaxes.MasterFields := '';
  Client_LandTaxes.MasterSource := nil;
  Client_LandTaxes.EmptyDataSet;

  if Client_Result.RecordCount > 0 then begin
    Client_Result.First;
    while not Client_Result.Eof do begin
      RTXLandTrf := FRTXDocument.Data.Node['LandTrf'];
      RTXLandTrf.AsTable.First;
      Land_Index := Client_Result.FieldByName('id').AsVariant;
      while (Land_Index > 0) and not RTXLandTrf.AsTable.EOF do begin
        dec(Land_Index);
        RTXLandTrf.AsTable.Next;
      end;
      if not RTXLandTrf.AsTable.EOF then begin
        Client_Result.Edit;
        Client_Result.FieldByName('FromNewCode').AsString := RTXLandTrf.Value['FromPP\NewCode'];
        Client_Result.FieldByName('ToNewCode').AsString   := RTXLandTrf.Value['ToPP\NewCode'];
        Client_Result.Post;

        RTXTaxes := RTXLandTrf.Node['Taxes'];
        RTXTaxes.AsTable.First;
        while not RTXTaxes.AsTable.EOF do begin
          Client_LandTaxes.Insert;
          Client_LandTaxes.FieldByName('Id').AsVariant           := RTXTaxes.Value['Id'];
          Client_LandTaxes.FieldByName('State').AsVariant        := RTXTaxes.Value['State'];
          Client_LandTaxes.FieldByName('Type').AsVariant         := RTXTaxes.Value['Type'];
          Client_LandTaxes.FieldByName('Stavka').AsVariant       := RTXTaxes.Value['Stavka'];
          Client_LandTaxes.FieldByName('Description').AsVariant  := RTXTaxes.Value['Description'];
          Client_LandTaxes.FieldByName('Value').AsVariant        := RTXTaxes.Value['Value'];
          Client_LandTaxes.FieldByName('ABBR').AsVariant         := RTXTaxes.Value['ABBR'];
          Client_LandTaxes.FieldByName('Document').AsVariant     := RTXTaxes.Value['Document'];
          Client_LandTaxes.FieldByName('id_Result').AsVariant    := Client_Result.FieldByName('id').AsVariant;
          Client_LandTaxes.FieldByName('CategoryId').AsVariant   := RTXTaxes.Value['CategoryId'];
          Client_LandTaxes.FieldByName('VisibleState').AsVariant := RTXTaxes.Value['VisibleState'];
          Client_LandTaxes.Post;
          RTXTaxes.AsTable.Next;
        end;
      end;
      Client_Result.Next;
    end;
  end;
  Client_LandTaxes.MasterFields := 'id';
  Client_LandTaxes.MasterSource := DS_Result;

  Client_LandTaxes.EnableControls;
  Client_Result.EnableControls;


  if cxPageControl1.ActivePage.PageIndex = 1 then
    SetClientFullRoutes
  else
    Client_FullRoutes.EmptyDataSet;


//  (FRTXDocument as IDocumentAttr21).EnableAltRoute();



  ClientDS_AltRoute.EmptyDataSet;
  if (FRTXDocument as IDocumentAttr21).AltRouteId <> 0 then begin
    RTXRefBook := (FRTXDocument as IDocumentAttr21).GetAltRoutesRefBook as _RefBook2;
    try
      s := RTXRefBook.FieldValue['Caption'];
    except
      s := null;
    end;
    Client_CalcParametrs.Edit;
    Client_CalcParametrs.FieldByName('route_name').Value := s;
    Client_CalcParametrs.FieldByName('route_id'  ).Value := (FRTXDocument as IDocumentAttr21).AltRouteId;
    Client_CalcParametrs.Post;

    RTXRefBook.First;
    while not RTXRefBook.EOF do begin
      ClientDS_AltRoute.Append;
      ClientDS_AltRoute.FieldByName('Id'     ).Value := RTXRefBook.FieldValue['ID'];
      ClientDS_AltRoute.FieldByName('Caption').Value := RTXRefBook.FieldValue['Caption'];
      ClientDS_AltRoute.Post;
      RTXRefBook.Next;
    end;

  end else begin
    Client_CalcParametrs.Edit;
    Client_CalcParametrs.FieldByName('route_name').Value := null;
    Client_CalcParametrs.FieldByName('route_id'  ).Value := null;
    Client_CalcParametrs.Post;
  end;

  if (FRTXDocument.Data.Value['TN\Commodity\Custom'] = 1) then begin
    if FRTXDocument.Data.Value['LandTrf\Direction'] = 1 then  begin
      Client_CalcParametrs.Edit;
      Client_CalcParametrs.FieldByName('Option12').AsVariant := True;
      Client_CalcParametrs.Post;
    end;
  end;

  RTXResult := FRTXDocument.Result;
  RTXResult.AsTable.First;
  while not RTXResult.AsTable.EOF do  begin

    distinctLand := True;
    for i := 0 to cxCheckListBox3.Count - 1 do
      if cxCheckListBox3.Items[i].Text = RTXResult.Value['LandName'] then
        distinctLand := False;

    for i := 0 to cxCheckListBox1.Count - 1 do cxCheckListBox1.Items[i].Checked := False;
    case Client_CalcParametrs.FieldByName('Vag_otpr').AsInteger of
      1     : cxCheckListBox1.Items[0].Checked := True;
      2     : cxCheckListBox1.Items[1].Checked := True;
      3..5  : cxCheckListBox1.Items[2].Checked := True;
      6..20 : cxCheckListBox1.Items[3].Checked := True;
      else  cxCheckListBox1.Items[4].Checked := True;
    end;

    if distinctLand then begin
      cxCheckListBox3.AddItem(RTXResult.Value['LandName']);
      cxCheckListBox3.Items[cxCheckListBox3.Count-1].Tag := RTXResult.Value['LandId'];
    end;

    RTXResult.AsTable.Next;
  end;
  RTXResult.AsTable.First;

  for i := 0 to cxCheckListBox3.Count - 1 do begin
    if trim(cxCheckListBox3.Items[i].Text) = 'Россия' then cxCheckListBox3.Items[i].Checked := True;
  end;

  RTXResult.AsTable.First;
  if Client_Result.RecordCount = 0 then begin
    cxButton4.Enabled := False;
    cxCheckListBox1.Enabled := False;
    cxCheckBox2.Enabled := False;
    cxCheckBox1.Enabled := False;
    cxCheckBox3.Enabled := False;
  end else begin
   cxButton4.Enabled := True;
   cxCheckListBox1.Enabled := True;
   cxCheckBox2.Enabled := True;
   cxCheckBox1.Enabled := True;
   cxCheckBox3.Enabled := True;
  end;

//  Если охрана не была установленна - очищаем поле охраны
  if Client_Taxes_id.Locate('Automatic;Active;LandId', VarArrayOf([False, False, 20]), [loCaseInsensitive]) then begin
    Client_CalcParametrs.Edit;
    Client_CalcParametrs.FieldByName('VCGuard').Clear;
    Client_CalcParametrs.Post;
  end;

//  Если несколько вариантов расчета (KIT) показать столбец с вариантами
  cxGrid1DBBandedTableView1KIT.Visible := Client_CalcParametrs.FieldByName('Multiple_kit').AsBoolean;

  if Client_CalcParametrs.FieldByName('Multiple_kit').AsBoolean then
    Panel16.Visible := True
  else
    Panel16.Visible := False;

  cxCheckBox2.Checked := True;
  cxCheckBox1.Checked := True;
  cxCheckBox3.Checked := True;
  cxGridDBBandedTableView1.OptionsView.ScrollBars := ssBoth;
  ClisntDS.Free;
  RTXResult := nil;
end;

function TfmCtmNewMain.cxCheckListBoxChecked : boolean;
var i : integer;
begin
  for i := 0 to cxCheckListBox1.Count - 1 do if cxCheckListBox1.Items[i].Checked then begin
    result := True;
    exit;
  end;
  result := False;
end;


procedure TfmCtmNewMain.CreatePopupMenu2(flag : integer);
var i, check  : integer;
    NewItem   : TMenuItem;
    MyP       : TPoint;
    q         : TcxPivotGridField;
begin
//  PopupMenu2.Items.Clear;
//  case flag of
//    1 : begin
//      for I := 0 to cxCheckListBox2.Items.Count - 1 do begin
//        if cxCheckListBox2.Items.Items[i].Checked then begin
//          NewItem := TMenuItem.Create(Self);
//          NewItem.Caption := 'из колонки "' + cxCheckListBox2.Items.Items[i].Text + '"';
//          NewItem.Tag := i;
//          NewItem.OnClick := OnPopupMenu2Click;
//          NewItem.ImageIndex := 14;
//          PopupMenu2.Items.Add(NewItem);
//        end;
//      end;
//    end;
//    2 : begin
//      if Client_Account.RecordCount = 0 then exit;
//      MyP := cxDBPivotGridAccount.ViewData.FocusedCell;
//      if MyP.x > cxDBPivotGridAccount.ViewData.ColumnCount -1 then begin
//        Application.MessageBox('Выберите столбец', 'Внимание', MB_OK);
//        exit;
//      end;
//      q:= cxDBPivotGridAccountKol_vag;
//      if cxDBPivotGridAccount.ViewData.Columns[MyP.X].Field.Name = 'cxDBPivotGridAccountKol_vag' then begin
//        for I := 0 to cxCheckListBox2.Items.Count - 1 do begin
//          if cxCheckListBox2.Items.Items[i].Checked then begin
//            NewItem             := TMenuItem.Create(Self);
//            NewItem.Caption     := '"' + cxCheckListBox2.Items.Items[i].Text  + '" - из ставки "' + cxDBPivotGridAccount.ViewData.Columns[MyP.X].Value + '"';
//            NewItem.Tag         := i;
//            NewItem.OnClick     := OnPopupMenu2Click;
//            NewItem.ImageIndex  := 14;
//            PopupMenu2.Items.Add(NewItem);
//
//            NewItem             := TMenuItem.Create(Self);
//            NewItem.Caption     := '"' + cxCheckListBox2.Items.Items[i].Text  + '" - из ставки "' + cxDBPivotGridAccount.ViewData.Columns[MyP.X].Value + '" + 18%';
//            NewItem.Tag         := i;
//            NewItem.OnClick     := OnPopupMenuClickNDS;
//            NewItem.ImageIndex  := 14;
//            PopupMenu2.Items.Add(NewItem);
//
//            if cxDBPivotGridAccount.ViewData.ColumnCount > 1 then begin
//              NewItem             := TMenuItem.Create(Self);
//              NewItem.Caption     := '"' + cxCheckListBox2.Items.Items[i].Text + '" - все активные ставки';
//              NewItem.Tag         := i;
//              NewItem.OnClick     := OnPopupMenuClickFullRate;
//              NewItem.ImageIndex  := 14;
//              PopupMenu2.Items.Add(NewItem);
//
//              NewItem             := TMenuItem.Create(Self);
//              NewItem.Caption     := '"' + cxCheckListBox2.Items.Items[i].Text + '" - все активные ставки + 18%';
//              NewItem.Tag         := i;
//              NewItem.OnClick     := OnPopupMenuClickFullRateNDS;
//              NewItem.ImageIndex  := 14;
//              PopupMenu2.Items.Add(NewItem);
//
//            end;
//          end;
//        end;
//      end else begin
//        if cxDBPivotGridAccount.ViewData.Columns[MyP.X].Field.Name = 'cxDBPivotGridAccountPerT' then i := 0;
//        if cxDBPivotGridAccount.ViewData.Columns[MyP.X].Field.Name = 'cxDBPivotGridAccountBasePerT' then i := 1;
//        if cxDBPivotGridAccount.ViewData.Columns[MyP.X].Field.Name = 'cxDBPivotGridAccountPerTwoNDS' then i := 2;
//        if cxDBPivotGridAccount.ViewData.Columns[MyP.X].Field.Name = 'cxDBPivotGridAccountTotalPrice' then i := 3;
//        if cxDBPivotGridAccount.ViewData.Columns[MyP.X].Field.Name = 'cxDBPivotGridAccountBasePrice' then i := 4;
//
//        NewItem             := TMenuItem.Create(Self);
//        NewItem.Caption     := '"' + cxCheckListBox2.Items.Items[i].Text + '" - из ставки "' + cxDBPivotGridAccount.ViewData.Columns[MyP.X].GetGroupItem(q).Value + '"';
//        NewItem.Tag         := i;
//        NewItem.OnClick     := OnPopupMenu2Click;
//        NewItem.ImageIndex  := 14;
//        PopupMenu2.Items.Add(NewItem);
//
//        NewItem             := TMenuItem.Create(Self);
//        NewItem.Caption     := '"' + cxCheckListBox2.Items.Items[i].Text + '" - из ставки "' + cxDBPivotGridAccount.ViewData.Columns[MyP.X].GetGroupItem(q).Value + '" + 18%';
//        NewItem.Tag         := i;
//        NewItem.OnClick     := OnPopupMenuClickNDS;
//        NewItem.ImageIndex  := 14;
//        PopupMenu2.Items.Add(NewItem);
//
//        NewItem             := TMenuItem.Create(Self);
//        NewItem.Caption     := '"' + cxCheckListBox2.Items.Items[i].Text + '" - все активные ставки';
//        NewItem.Tag         := i;
//        NewItem.OnClick     := OnPopupMenuClickFullRate;
//        NewItem.ImageIndex  := 14;
//
//        PopupMenu2.Items.Add(NewItem);
//        NewItem             := TMenuItem.Create(Self);
//        NewItem.Caption     := '"' + cxCheckListBox2.Items.Items[i].Text + '" - все активные ставки + 18%';
//        NewItem.Tag         := i;
//        NewItem.OnClick     := OnPopupMenuClickFullRateNDS;
//        NewItem.ImageIndex  := 14;
//        PopupMenu2.Items.Add(NewItem);
//      end;
////      NewItem             := TMenuItem.Create(Self);
////      NewItem.Caption     := 'Экспорт в Excel';
////      NewItem.OnClick     := ExportPivotToExcel;
////      NewItem.Tag         := 0;
////      NewItem.ImageIndex  := 20;
////      PopupMenu2.Items.Add(NewItem);
//    end;
//  end;
//  NewItem             := TMenuItem.Create(Self);
//  NewItem.Caption     := 'Экспорт в Excel';
//  NewItem.OnClick     := ExportPivotToExcel;
//  NewItem.Tag         := 0;
//  NewItem.ImageIndex  := 20;
//  PopupMenu2.Items.Add(NewItem);
end;


procedure TfmCtmNewMain.OnPopupMenu2Click(Sender:TObject);
var strm : TStringStream;
    s    : string;
    MyP  : TPoint;
    q    : TcxPivotGridField;
begin
//  case (Sender as TMenuItem).Tag of
//    0 : FfieldsNames := 'PerT';
//    1 : FfieldsNames := 'BasePerT';
//    2 : FfieldsNames := 'PerTwoNDS';
//    3 : FfieldsNames := 'TotalPrice';
//    4 : FfieldsNames := 'BasePrice';
//  end;
//  MyP := cxDBPivotGridAccount.ViewData.FocusedCell;
//  q:= cxDBPivotGridAccountKol_vag;
//  ftype_rate := cxDBPivotGridAccount.ViewData.Columns[MyP.X].GetGroupItem(q).Value;
//  strm := TStringStream.Create(s);
//  fmCtmDM.Client_Account.SaveToStream(strm, dfXML);
//  FresultXML_Account := strm.DataString;
//  strm.Free;
//  FresultRate := 1;
//  if fbargain_id <> 0 then Open_sp_ctmSaveProcedure;
  ModalResult := mrOk;
end;


procedure TfmCtmNewMain.ExportGirdToExcelEx(grid: TcxDBPivotGrid; prefix: string = '');
var
  tmp_path : string;
  file_name: string;
begin
  tmp_path := ExtractFilePath(ParamStr(0));
  if tmp_path[length(tmp_path)] = '\' then
    tmp_path := tmp_path + 'Temp\'
  else
    tmp_path := tmp_path + '\Temp\';
  // Проверка и создание директории
  ForceDirectories(tmp_path);
  // Попытка удаления мусора из временной директории
  DeleteFileFromDir(tmp_path);
  repeat
    file_name := prefix + '_xls_' + IntToStr(GetTickCount) + '.xls';
  until not FileExists(tmp_path + file_name);
  cxExportPivotGridToExcel( tmp_path + file_name, grid, True, False, 'xls' );
  ShellExecute( 0, 'open', PChar(tmp_path+file_name), '', '', 0 );
end;

{$REGION 'DeleteFileFromDir'}
procedure TfmCtmNewMain.DeleteFileFromDir(folder : string = '');
var fs : TSearchRec;
begin
  if folder = '' then folder := ExtractFilePath(ParamStr(0)) + '\Temp\';

  if FindFirst(folder + '\*.*', faAnyFile - faDirectory - faVolumeID, fs) = 0 then begin
    repeat
      DeleteFile(PChar(folder + '\' + fs.Name))
    until
      FindNext(fs) <> 0;
  Sysutils.FindClose(fs);
  end;
end;

procedure TfmCtmNewMain.ExportPivotToExcel(Sender:TObject);
begin
//  case (Sender as TMenuItem).Tag of
//    0 : ExportGirdToExcelEx(cxDBPivotGridAccount, 'Rate');
//  end;
end;


procedure TfmCtmNewMain.OnPopupMenuClickFullRateNDS(Sender:TObject);
var strm : TStringStream;
    s    : string;
begin
//  case (Sender as TMenuItem).Tag of
//    0 : FfieldsNames := 'PerT';
//    1 : FfieldsNames := 'PerT_PP';
//    2 : FfieldsNames := 'PerTwoNDS';
//    3 : FfieldsNames := 'TotalPrice';
//    4 : FfieldsNames := 'BasePrice';
//  end;
//  ftype_rate := 'Все';
//  fmCtmDM.Client_Account.First;
//  while not fmCtmDM.Client_Account.Eof do begin
//    fmCtmDM.Client_Account.Edit;
//    fmCtmDM.Client_Account.FieldByName(FfieldsNames).AsCurrency := fmCtmDM.Client_Account.FieldByName(FfieldsNames).AsCurrency * 1.18;
//    fmCtmDM.Client_Account.Post;
//    fmCtmDM.Client_Account.Next;
//  end;
//  strm := TStringStream.Create(s);
//  fmCtmDM.Client_Account.SaveToStream(strm, dfXML);
//  FresultXML_Account := strm.DataString;
//  strm.Free;
//  FresultRate := 1;
//  if fbargain_id <> 0 then Open_sp_ctmSaveProcedure;
  ModalResult := mrOk;
end;

procedure TfmCtmNewMain.OnPopupMenuClickFullRate(Sender:TObject);
var strm : TStringStream;
    s    : string;
begin
//  case (Sender as TMenuItem).Tag of
//    0 : FfieldsNames := 'PerT';
//    1 : FfieldsNames := 'PerT_PP';
//    2 : FfieldsNames := 'PerTwoNDS';
//    3 : FfieldsNames := 'TotalPrice';
//    4 : FfieldsNames := 'BasePrice';
//  end;
//  ftype_rate := 'Все';
//  strm := TStringStream.Create(s);
//  fmCtmDM.Client_Account.SaveToStream(strm, dfXML);
//  FresultXML_Account := strm.DataString;
//  strm.Free;
//  FresultRate := 1;
//  if fbargain_id <> 0 then Open_sp_ctmSaveProcedure;
  ModalResult := mrOk;
end;

procedure TfmCtmNewMain.OnPopupMenuClickNDS(Sender:TObject);
var strm : TStringStream;
    s    : string;
    MyP  : TPoint;
    q    : TcxPivotGridField;
begin
//  case (Sender as TMenuItem).Tag of
//    0 : FfieldsNames := 'PerT';
//    1 : FfieldsNames := 'BasePerT';
//    2 : FfieldsNames := 'PerTwoNDS';
//    3 : FfieldsNames := 'TotalPrice';
//    4 : FfieldsNames := 'BasePrice';
//  end;
//  MyP := cxDBPivotGridAccount.ViewData.FocusedCell;
//  q:= cxDBPivotGridAccountKol_vag;
//  ftype_rate := cxDBPivotGridAccount.ViewData.Columns[MyP.X].GetGroupItem(q).Value;
//  fmCtmDM.Client_Account.First;
//  while not fmCtmDM.Client_Account.Eof do begin
//    fmCtmDM.Client_Account.Edit;
//    fmCtmDM.Client_Account.FieldByName(FfieldsNames).AsCurrency := fmCtmDM.Client_Account.FieldByName(FfieldsNames).AsCurrency * 1.18;
//    fmCtmDM.Client_Account.Post;
//    fmCtmDM.Client_Account.Next;
//  end;
//  strm := TStringStream.Create(s);
//  fmCtmDM.Client_Account.SaveToStream(strm, dfXML);
//  FresultXML_Account := strm.DataString;
//  strm.Free;
//  FresultRate := 1;
//  if fbargain_id <> 0 then Open_sp_ctmSaveProcedure;
  ModalResult := mrOk;
end;

initialization
  dxInitialize;
finalization
  dxFinalize;

end.
