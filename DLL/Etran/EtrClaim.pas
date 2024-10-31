unit EtrClaim;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters,
  cxStyles, cxCustomData, cxFilter, cxData, cxDataStorage, cxEdit, DB, cxDBData,
  cxCurrencyEdit, cxContainer, Menus, ADODB, cxPropertiesStore, ImgList, cxMemo,
  dxBar, dxGDIPlusClasses, ExtCtrls, Buttons, cxMaskEdit, cxDropDownEdit,
  cxCalendar, StdCtrls, cxButtons, cxGridDBTableView, cxTextEdit, cxLabel,
  cxSplitter, cxGridLevel, cxGridCustomTableView, cxGridTableView,
  cxGridBandedTableView, cxGridDBBandedTableView, cxClasses, cxGridCustomView,
  cxGrid, ComCtrls, ToolWin, cxPC, Default, DBClient, Raznoe, StrUtils,
  dxSkinsCore, dxSkinBlack, dxSkinBlue, dxSkinBlueprint, dxSkinCaramel,
  dxSkinCoffee, dxSkinDarkRoom, dxSkinDarkSide, dxSkinDevExpressDarkStyle,
  dxSkinDevExpressStyle, dxSkinFoggy, dxSkinGlassOceans, dxSkinHighContrast,
  dxSkiniMaginary, dxSkinLilian, dxSkinLiquidSky, dxSkinLondonLiquidSky,
  dxSkinMcSkin, dxSkinMetropolis, dxSkinMetropolisDark, dxSkinMoneyTwins,
  dxSkinOffice2007Black, dxSkinOffice2007Blue, dxSkinOffice2007Green,
  dxSkinOffice2007Pink, dxSkinOffice2007Silver, dxSkinOffice2010Black,
  dxSkinOffice2010Blue, dxSkinOffice2010Silver, dxSkinOffice2013DarkGray,
  dxSkinOffice2013LightGray, dxSkinOffice2013White, dxSkinPumpkin, dxSkinSeven,
  dxSkinSevenClassic, dxSkinSharp, dxSkinSharpPlus, dxSkinSilver,
  dxSkinSpringTime, dxSkinStardust, dxSkinSummer2008, dxSkinTheAsphaltWorld,
  dxSkinsDefaultPainters, dxSkinValentine, dxSkinVS2010, dxSkinWhiteprint,
  dxSkinXmas2008Blue, dxSkinscxPCPainter, dxBarBuiltInMenu, cxNavigator, dxCore,
  cxDateUtils, dxSkinsdxBarPainter, dxSkinOffice2016Colorful,
  dxSkinOffice2016Dark, dxSkinVisualStudio2013Blue, dxSkinVisualStudio2013Dark,
  dxSkinVisualStudio2013Light, System.ImageList,
  cxDataControllerConditionalFormattingRulesManagerDialog, cxImageList, dxSkinTheBezier, dxDateRanges, dxSkinOffice2019Colorful;

type
  TfmEtrClaim = class(TForm)
    ADOEtran: TADOConnection;
    cxPropertiesStore1: TcxPropertiesStore;
    Query_Claim: TADOQuery;
    DS_Claim: TDataSource;
    SP_XML_parser: TADOStoredProc;
    SP_XML_parser_view: TADOStoredProc;
    Query_otprStyk: TADOQuery;
    DS_otprStyk: TDataSource;
    DS_XML_parser_view: TDataSource;
    Query_otprGraphPod: TADOQuery;
    DS_otprGraphPod: TDataSource;
    SP_XML_parser_payer: TADOStoredProc;
    DS_XML_parser_payer: TDataSource;
    cxSplitter2: TcxSplitter;
    Panel11: TPanel;
    Panel49: TPanel;
    cxLabel249: TcxLabel;
    GridPanel1: TGridPanel;
    Panel33: TPanel;
    cxLabel18: TcxLabel;
    cxTextEdit_claimID: TcxTextEdit;
    cxLabel19: TcxLabel;
    cxTextEdit_claimNumber: TcxTextEdit;
    cxLabel20: TcxLabel;
    cxTextEdit_claimState: TcxTextEdit;
    cxLabel124: TcxLabel;
    cxTextEdit_clmDogNumber: TcxTextEdit;
    Panel34: TPanel;
    cxLabel112: TcxLabel;
    cxTextEdit_clmSendKindName: TcxTextEdit;
    cxLabel118: TcxLabel;
    cxTextEdit_clmMsgKindName: TcxTextEdit;
    cxLabel119: TcxLabel;
    cxTextEdit_clmLastOper: TcxTextEdit;
    cxLabel125: TcxLabel;
    cxTextEdit_clmCarOwnerTypeName: TcxTextEdit;
    Panel35: TPanel;
    cxLabel126: TcxLabel;
    cxTextEdit_clmTypePodName: TcxTextEdit;
    cxLabel171: TcxLabel;
    cxTextEdit_claimVersion: TcxTextEdit;
    cxLabel172: TcxLabel;
    cxTextEdit_claimRegDate: TcxTextEdit;
    cxLabel173: TcxLabel;
    cxTextEdit_clmPlanType: TcxTextEdit;
    GridPanel9: TGridPanel;
    Panel36: TPanel;
    cxLabel174: TcxLabel;
    cxLabel175: TcxLabel;
    cxLabel176: TcxLabel;
    cxTextEdit_clmSenderName: TcxTextEdit;
    cxTextEdit_clmSenderAddress: TcxTextEdit;
    cxTextEdit_clmSenderOKPO: TcxTextEdit;
    cxTextEdit_clmSenderTGNL: TcxTextEdit;
    Panel37: TPanel;
    cxLabel177: TcxLabel;
    cxLabel178: TcxLabel;
    cxLabel179: TcxLabel;
    cxTextEdit_clmFromCountryName: TcxTextEdit;
    cxTextEdit_clmFromCountryCode: TcxTextEdit;
    cxTextEdit_clmFromStationCode: TcxTextEdit;
    cxTextEdit_clmFromStationName: TcxTextEdit;
    cxTextEdit_clmEnterStationName: TcxTextEdit;
    cxTextEdit_clmEnterStationCode: TcxTextEdit;
    cxLabel183: TcxLabel;
    cxTextEdit_clmFreightGroupName: TcxTextEdit;
    cxTextEdit_clmFreightGroupCode: TcxTextEdit;
    GridPanel10: TGridPanel;
    Panel38: TPanel;
    cxLabel180: TcxLabel;
    cxLabel182: TcxLabel;
    cxTextEdit_clmLoadWayOwnerName: TcxTextEdit;
    cxTextEdit_clmLoadWayOwnerAgreementDate: TcxTextEdit;
    cxLabel181: TcxLabel;
    cxLabel184: TcxLabel;
    cxTextEdit_clmLoadWayOwnerSoglType: TcxTextEdit;
    cxTextEdit_clmLoadWayOwnerNote: TcxTextEdit;
    cxTextEdit_clmLoadWayOwnerOKPO: TcxTextEdit;
    Panel39: TPanel;
    cxLabel185: TcxLabel;
    cxLabel186: TcxLabel;
    cxTextEdit_clmStartDate: TcxTextEdit;
    cxTextEdit_clmFinishDate: TcxTextEdit;
    cxMemo_clmNote: TcxMemo;
    cxSplitter9: TcxSplitter;
    cxSplitter10: TcxSplitter;
    cxSplitter11: TcxSplitter;
    cxPageControl4: TcxPageControl;
    cxTabSheet2: TcxTabSheet;
    Panel40: TPanel;
    Panel41: TPanel;
    cxGrid23: TcxGrid;
    cxGridDBBandedTableView20: TcxGridDBBandedTableView;
    cxGridDBBandedTableView20otprStyk_id: TcxGridDBBandedColumn;
    cxGridDBBandedTableView20clmOtpr_id: TcxGridDBBandedColumn;
    cxGridDBBandedTableView20gpPodNum: TcxGridDBBandedColumn;
    cxGridDBBandedTableView20gpPodDate: TcxGridDBBandedColumn;
    cxGridDBBandedTableView20gpWeight: TcxGridDBBandedColumn;
    cxGridDBBandedTableView20gpCarCount: TcxGridDBBandedColumn;
    cxGridDBBandedTableView20gpWeightRefuse: TcxGridDBBandedColumn;
    cxGridDBBandedTableView20gpCarCountRefuse: TcxGridDBBandedColumn;
    cxGridLevel20: TcxGridLevel;
    Panel42: TPanel;
    cxGrid24: TcxGrid;
    cxGridDBBandedTableView21: TcxGridDBBandedTableView;
    cxGridDBBandedTableView21otprStyk_id: TcxGridDBBandedColumn;
    cxGridDBBandedTableView21clmOtpr_id: TcxGridDBBandedColumn;
    cxGridDBBandedTableView21stykStationCode: TcxGridDBBandedColumn;
    cxGridDBBandedTableView21stykStationName: TcxGridDBBandedColumn;
    cxGridDBBandedTableView21stykCountryName: TcxGridDBBandedColumn;
    cxGridLevel21: TcxGridLevel;
    cxSplitter13: TcxSplitter;
    Panel32: TPanel;
    cxGrid16: TcxGrid;
    cxGridDBBandedTableView12: TcxGridDBBandedTableView;
    cxGridDBBandedTableView12clmOtpr_id: TcxGridDBBandedColumn;
    cxGridDBBandedTableView12claim_id: TcxGridDBBandedColumn;
    cxGridDBBandedTableView12otprNom: TcxGridDBBandedColumn;
    cxGridDBBandedTableView12otprTypeID: TcxGridDBBandedColumn;
    cxGridDBBandedTableView12otprTypeName: TcxGridDBBandedColumn;
    cxGridDBBandedTableView12otprRecipID: TcxGridDBBandedColumn;
    cxGridDBBandedTableView12otprRecipOKPO: TcxGridDBBandedColumn;
    cxGridDBBandedTableView12otprRecipName: TcxGridDBBandedColumn;
    cxGridDBBandedTableView12otprToCountryCode: TcxGridDBBandedColumn;
    cxGridDBBandedTableView12otprToCountryName: TcxGridDBBandedColumn;
    cxGridDBBandedTableView12otprToStationCode: TcxGridDBBandedColumn;
    cxGridDBBandedTableView12otprToStationName: TcxGridDBBandedColumn;
    cxGridDBBandedTableView12otprExitStationCode: TcxGridDBBandedColumn;
    cxGridDBBandedTableView12otprExitStationName: TcxGridDBBandedColumn;
    cxGridDBBandedTableView12otprToPortID: TcxGridDBBandedColumn;
    cxGridDBBandedTableView12otprToPortCode: TcxGridDBBandedColumn;
    cxGridDBBandedTableView12otprToPortName: TcxGridDBBandedColumn;
    cxGridDBBandedTableView12otprToHolderCode: TcxGridDBBandedColumn;
    cxGridDBBandedTableView12otprToHolderName: TcxGridDBBandedColumn;
    cxGridDBBandedTableView12otprFreightCode: TcxGridDBBandedColumn;
    cxGridDBBandedTableView12otprFreightName: TcxGridDBBandedColumn;
    cxGridDBBandedTableView12otprFreightGNGID2001: TcxGridDBBandedColumn;
    cxGridDBBandedTableView12otprFreightGNGCode: TcxGridDBBandedColumn;
    cxGridDBBandedTableView12otprFreightGNGName: TcxGridDBBandedColumn;
    cxGridDBBandedTableView12otprFreightWeight: TcxGridDBBandedColumn;
    cxGridDBBandedTableView12otprPackKindID: TcxGridDBBandedColumn;
    cxGridDBBandedTableView12otprPackKindName: TcxGridDBBandedColumn;
    cxGridDBBandedTableView12otprFreightSpecID: TcxGridDBBandedColumn;
    cxGridDBBandedTableView12otprFreightSpecName: TcxGridDBBandedColumn;
    cxGridDBBandedTableView12otprCarTypeID: TcxGridDBBandedColumn;
    cxGridDBBandedTableView12otprCarTypeName: TcxGridDBBandedColumn;
    cxGridDBBandedTableView12otprCarTypeCODE: TcxGridDBBandedColumn;
    cxGridDBBandedTableView12otprCarTypeCODEName: TcxGridDBBandedColumn;
    cxGridDBBandedTableView12otprCarCount: TcxGridDBBandedColumn;
    cxGridDBBandedTableView12otprCarAxles: TcxGridDBBandedColumn;
    cxGridDBBandedTableView12otprIxTariffCode: TcxGridDBBandedColumn;
    cxGridDBBandedTableView12otprIsFerry: TcxGridDBBandedColumn;
    cxGridDBBandedTableView12otprTargetCode: TcxGridDBBandedColumn;
    cxGridDBBandedTableView12otprTargetName: TcxGridDBBandedColumn;
    cxGridDBBandedTableView12otprOrgContID: TcxGridDBBandedColumn;
    cxGridDBBandedTableView12otprOrgContOKPO: TcxGridDBBandedColumn;
    cxGridDBBandedTableView12otprOrgContName: TcxGridDBBandedColumn;
    cxGridDBBandedTableView12otprOrgContAddressID: TcxGridDBBandedColumn;
    cxGridDBBandedTableView12otprOrgContAddress: TcxGridDBBandedColumn;
    cxGridDBBandedTableView12otprCarContOwnerTypeID: TcxGridDBBandedColumn;
    cxGridDBBandedTableView12otprCarContOwnerTypeName: TcxGridDBBandedColumn;
    cxGridDBBandedTableView12otprContFoot: TcxGridDBBandedColumn;
    cxGridDBBandedTableView12otprContOwnerCountryID: TcxGridDBBandedColumn;
    cxGridDBBandedTableView12otprContOwnerCountryCode: TcxGridDBBandedColumn;
    cxGridDBBandedTableView12otprContOwnerCountryName: TcxGridDBBandedColumn;
    cxGridDBBandedTableView12otprContPrefix: TcxGridDBBandedColumn;
    cxGridDBBandedTableView12otprNote: TcxGridDBBandedColumn;
    cxGridDBBandedTableView12otprCorr: TcxGridDBBandedColumn;
    cxGridDBBandedTableView12otprAmount: TcxGridDBBandedColumn;
    cxGridDBBandedTableView12otprDistWay: TcxGridDBBandedColumn;
    cxGridLevel12: TcxGridLevel;
    cxSplitter12: TcxSplitter;
    cxTabSheet17: TcxTabSheet;
    cxGrid18: TcxGrid;
    cxGridDBBandedTableView15: TcxGridDBBandedTableView;
    cxGridDBBandedTableView15clmPayer_id: TcxGridDBBandedColumn;
    cxGridDBBandedTableView15claim_id: TcxGridDBBandedColumn;
    cxGridDBBandedTableView15payerTypeID: TcxGridDBBandedColumn;
    cxGridDBBandedTableView15payerTypeName: TcxGridDBBandedColumn;
    cxGridDBBandedTableView15payerID: TcxGridDBBandedColumn;
    cxGridDBBandedTableView15payerCode: TcxGridDBBandedColumn;
    cxGridDBBandedTableView15payerOKPO: TcxGridDBBandedColumn;
    cxGridDBBandedTableView15payerName: TcxGridDBBandedColumn;
    cxGridDBBandedTableView15payerAddress: TcxGridDBBandedColumn;
    cxGridDBBandedTableView15payerCountryCode: TcxGridDBBandedColumn;
    cxGridDBBandedTableView15payerCountryName: TcxGridDBBandedColumn;
    cxGridLevel15: TcxGridLevel;
    cxTabSheet18: TcxTabSheet;
    cxGrid19: TcxGrid;
    cxGridDBBandedTableView16: TcxGridDBBandedTableView;
    cxGridDBBandedTableView16clmDoc_id: TcxGridDBBandedColumn;
    cxGridDBBandedTableView16claim_id: TcxGridDBBandedColumn;
    cxGridDBBandedTableView16docId: TcxGridDBBandedColumn;
    cxGridDBBandedTableView16docTypeID: TcxGridDBBandedColumn;
    cxGridDBBandedTableView16docType: TcxGridDBBandedColumn;
    cxGridDBBandedTableView16docLink: TcxGridDBBandedColumn;
    cxGridDBBandedTableView16docDate: TcxGridDBBandedColumn;
    cxGridLevel16: TcxGridLevel;
    cxTabSheet19: TcxTabSheet;
    cxGrid20: TcxGrid;
    cxGridDBBandedTableView17: TcxGridDBBandedTableView;
    cxGridDBBandedTableView17clmAgreement_id: TcxGridDBBandedColumn;
    cxGridDBBandedTableView17claim_id: TcxGridDBBandedColumn;
    cxGridDBBandedTableView17agrName: TcxGridDBBandedColumn;
    cxGridDBBandedTableView17agrOrgId: TcxGridDBBandedColumn;
    cxGridDBBandedTableView17agrOrgName: TcxGridDBBandedColumn;
    cxGridDBBandedTableView17agrState: TcxGridDBBandedColumn;
    cxGridDBBandedTableView17agrDate: TcxGridDBBandedColumn;
    cxGridDBBandedTableView17agrRemark: TcxGridDBBandedColumn;
    cxGridDBBandedTableView17agrPost: TcxGridDBBandedColumn;
    cxGridDBBandedTableView17agrPerson: TcxGridDBBandedColumn;
    cxGridLevel17: TcxGridLevel;
    cxTabSheet20: TcxTabSheet;
    cxGrid21: TcxGrid;
    cxGridDBBandedTableView18: TcxGridDBBandedTableView;
    cxGridDBBandedTableView18clmInv_id: TcxGridDBBandedColumn;
    cxGridDBBandedTableView18claim_id: TcxGridDBBandedColumn;
    cxGridDBBandedTableView18invOtprNom: TcxGridDBBandedColumn;
    cxGridDBBandedTableView18invId: TcxGridDBBandedColumn;
    cxGridDBBandedTableView18invNumber: TcxGridDBBandedColumn;
    cxGridDBBandedTableView18invStateID: TcxGridDBBandedColumn;
    cxGridDBBandedTableView18invState: TcxGridDBBandedColumn;
    cxGridDBBandedTableView18invCarCount: TcxGridDBBandedColumn;
    cxGridDBBandedTableView18invToStationCode: TcxGridDBBandedColumn;
    cxGridDBBandedTableView18invToStationName: TcxGridDBBandedColumn;
    cxGridDBBandedTableView18invDateReady: TcxGridDBBandedColumn;
    cxGridLevel18: TcxGridLevel;
    cxTabSheet21: TcxTabSheet;
    cxGrid17: TcxGrid;
    cxGridDBBandedTableView14: TcxGridDBBandedTableView;
    cxGridDBBandedColumn1: TcxGridDBBandedColumn;
    cxGridDBBandedColumn2: TcxGridDBBandedColumn;
    cxGridDBBandedColumn3: TcxGridDBBandedColumn;
    cxGridDBBandedColumn4: TcxGridDBBandedColumn;
    cxGridDBBandedColumn5: TcxGridDBBandedColumn;
    cxGridDBBandedColumn6: TcxGridDBBandedColumn;
    cxGridDBBandedColumn7: TcxGridDBBandedColumn;
    cxGridDBBandedColumn8: TcxGridDBBandedColumn;
    cxGridDBBandedColumn9: TcxGridDBBandedColumn;
    cxGridDBBandedColumn10: TcxGridDBBandedColumn;
    cxGridDBBandedColumn11: TcxGridDBBandedColumn;
    cxGridLevel14: TcxGridLevel;
    cxTabSheet22: TcxTabSheet;
    cxGrid22: TcxGrid;
    cxGridDBBandedTableView19: TcxGridDBBandedTableView;
    cxGridDBBandedTableView19clmRoute_id: TcxGridDBBandedColumn;
    cxGridDBBandedTableView19claim_id: TcxGridDBBandedColumn;
    cxGridDBBandedTableView19routeDatePod: TcxGridDBBandedColumn;
    cxGridDBBandedTableView19routeType: TcxGridDBBandedColumn;
    cxGridDBBandedTableView19routeTypeName: TcxGridDBBandedColumn;
    cxGridDBBandedTableView19routeStationCode: TcxGridDBBandedColumn;
    cxGridDBBandedTableView19routeStationName: TcxGridDBBandedColumn;
    cxGridDBBandedTableView19routeCount: TcxGridDBBandedColumn;
    cxGridDBBandedTableView19routeCarCount: TcxGridDBBandedColumn;
    cxGridLevel19: TcxGridLevel;
    Panel4: TPanel;
    Image3: TImage;
    cxLabel7: TcxLabel;
    Panel5: TPanel;
    GroupBox5: TGroupBox;
    cxLabel8: TcxLabel;
    cxLabel11: TcxLabel;
    cxTextEdit3: TcxTextEdit;
    cxTextEdit11: TcxTextEdit;
    cxLabel12: TcxLabel;
    cxLabel13: TcxLabel;
    cxDateEdit7: TcxDateEdit;
    cxDateEdit8: TcxDateEdit;
    cxLabel14: TcxLabel;
    cxLabel15: TcxLabel;
    cxDateEdit9: TcxDateEdit;
    cxDateEdit10: TcxDateEdit;
    cxLabel16: TcxLabel;
    cxLabel17: TcxLabel;
    cxTextEdit12: TcxTextEdit;
    cxTextEdit13: TcxTextEdit;
    cxTextEdit14: TcxTextEdit;
    cxTextEdit15: TcxTextEdit;
    cxLabel151: TcxLabel;
    cxTextEdit89: TcxTextEdit;
    cxTextEdit90: TcxTextEdit;
    cxLabel220: TcxLabel;
    cxDateEdit11: TcxDateEdit;
    cxLabel221: TcxLabel;
    cxDateEdit12: TcxDateEdit;
    GroupBox6: TGroupBox;
    cxButton3: TcxButton;
    Panel6: TPanel;
    cxGrid2: TcxGrid;
    cxGridDBBandedTableView1: TcxGridDBBandedTableView;
    cxGridDBBandedTableView1xml_reply_id: TcxGridDBBandedColumn;
    cxGridDBBandedTableView1claim_id: TcxGridDBBandedColumn;
    cxGridDBBandedTableView1claimNumber: TcxGridDBBandedColumn;
    cxGridDBBandedTableView1claimState: TcxGridDBBandedColumn;
    cxGridDBBandedTableView1claimRegDate: TcxGridDBBandedColumn;
    cxGridDBBandedTableView1clmStartDate: TcxGridDBBandedColumn;
    cxGridDBBandedTableView1clmFinishDate: TcxGridDBBandedColumn;
    cxGridDBBandedTableView1clmFromStationName: TcxGridDBBandedColumn;
    cxGridDBBandedTableView1clmFreightGroupName: TcxGridDBBandedColumn;
    cxGridDBBandedTableView1otprToStationName: TcxGridDBBandedColumn;
    cxGridDBBandedTableView1otprFreightName: TcxGridDBBandedColumn;
    cxGridDBBandedTableView1invNumber: TcxGridDBBandedColumn;
    cxGridDBBandedTableView1otprFreightWeight: TcxGridDBBandedColumn;
    cxGridDBBandedTableView1otprCarCount: TcxGridDBBandedColumn;
    cxGridLevel1: TcxGridLevel;
    ClientDataSet3: TClientDataSet;
    ClientDataSet3xml_reply_id: TIntegerField;
    ClientDataSet3claimID: TIntegerField;
    ClientDataSet3claimNumber: TStringField;
    ClientDataSet3claimState: TStringField;
    ClientDataSet3clmDogNumber: TStringField;
    ClientDataSet3clmSendKindName: TStringField;
    ClientDataSet3clmMsgKindName: TStringField;
    ClientDataSet3clmLastOper: TDateTimeField;
    ClientDataSet3clmCarOwnerTypeName: TStringField;
    ClientDataSet3clmTypePodName: TStringField;
    ClientDataSet3claimVersion: TStringField;
    ClientDataSet3claimRegDate: TDateTimeField;
    ClientDataSet3clmPlanType: TStringField;
    ClientDataSet3clmSenderOKPO: TStringField;
    ClientDataSet3clmSenderName: TStringField;
    ClientDataSet3clmSenderAddress: TStringField;
    ClientDataSet3clmSenderTGNL: TStringField;
    ClientDataSet3clmFromCountryCode: TStringField;
    ClientDataSet3clmFromStationCode: TStringField;
    ClientDataSet3clmEnterStationCode: TStringField;
    ClientDataSet3clmFreightGroupCode: TStringField;
    ClientDataSet3clmFromCountryName: TStringField;
    ClientDataSet3clmFromStationName: TStringField;
    ClientDataSet3clmEnterStationName: TStringField;
    ClientDataSet3clmFreightGroupName: TStringField;
    ClientDataSet3clmLoadWayOwnerOKPO: TStringField;
    ClientDataSet3clmLoadWayOwnerName: TStringField;
    ClientDataSet3clmLoadWayOwnerAgreementDate: TDateTimeField;
    ClientDataSet3clmLoadWayOwnerSoglType: TStringField;
    ClientDataSet3clmLoadWayOwnerNote: TStringField;
    ClientDataSet3clmStartDate: TDateTimeField;
    ClientDataSet3clmFinishDate: TDateTimeField;
    ClientDataSet3clmNote: TStringField;
    ClientDataSet3cnt_clmOtpr: TIntegerField;
    ClientDataSet3cnt_clmRoute: TIntegerField;
    ClientDataSet3cnt_clmPayer: TIntegerField;
    ClientDataSet3cnt_clmDoc: TIntegerField;
    ClientDataSet3cnt_clmAgreement: TIntegerField;
    ClientDataSet3cnt_clmInv: TIntegerField;
    ClientDataSet3claim_id: TIntegerField;
    dxBarManager1: TdxBarManager;
    dxBarPopupMenu1: TdxBarPopupMenu;
    dxBarButton1: TdxBarButton;
    dxBarSubItem1: TdxBarSubItem;
    dxBarButton2: TdxBarButton;
    dxBarButton3: TdxBarButton;
    dxBarButton4: TdxBarButton;
    dxBarButton5: TdxBarButton;
    dxBarPopupMenu2: TdxBarPopupMenu;
    dxBarButton6: TdxBarButton;
    dxBarSubItem2: TdxBarSubItem;
    dxBarButton7: TdxBarButton;
    dxBarButton8: TdxBarButton;
    dxBarButton9: TdxBarButton;
    dxBarButton10: TdxBarButton;
    dxBarPopupMenu3: TdxBarPopupMenu;
    dxBarButton11: TdxBarButton;
    dxBarSubItem3: TdxBarSubItem;
    dxBarButton12: TdxBarButton;
    dxBarButton13: TdxBarButton;
    dxBarButton14: TdxBarButton;
    dxBarButton15: TdxBarButton;
    dxBarPopupMenu4: TdxBarPopupMenu;
    dxBarButton16: TdxBarButton;
    dxBarSubItem4: TdxBarSubItem;
    dxBarButton17: TdxBarButton;
    dxBarButton18: TdxBarButton;
    dxBarButton19: TdxBarButton;
    dxBarButton20: TdxBarButton;
    dxBarPopupMenu5: TdxBarPopupMenu;
    dxBarButton21: TdxBarButton;
    dxBarSubItem5: TdxBarSubItem;
    dxBarButton22: TdxBarButton;
    dxBarButton23: TdxBarButton;
    dxBarButton24: TdxBarButton;
    dxBarButton25: TdxBarButton;
    dxBarPopupMenu6: TdxBarPopupMenu;
    dxBarButton26: TdxBarButton;
    dxBarSubItem6: TdxBarSubItem;
    dxBarButton27: TdxBarButton;
    dxBarButton28: TdxBarButton;
    dxBarButton29: TdxBarButton;
    dxBarButton30: TdxBarButton;
    dxBarPopupMenu7: TdxBarPopupMenu;
    dxBarButton31: TdxBarButton;
    dxBarSubItem7: TdxBarSubItem;
    dxBarButton32: TdxBarButton;
    dxBarButton33: TdxBarButton;
    dxBarButton34: TdxBarButton;
    dxBarButton35: TdxBarButton;
    dxBarPopupMenu8: TdxBarPopupMenu;
    dxBarButton36: TdxBarButton;
    dxBarSubItem8: TdxBarSubItem;
    dxBarButton37: TdxBarButton;
    dxBarButton38: TdxBarButton;
    dxBarButton39: TdxBarButton;
    dxBarButton40: TdxBarButton;
    dxBarPopupMenu9: TdxBarPopupMenu;
    dxBarButton41: TdxBarButton;
    dxBarSubItem9: TdxBarSubItem;
    dxBarButton42: TdxBarButton;
    dxBarButton43: TdxBarButton;
    dxBarButton44: TdxBarButton;
    dxBarButton45: TdxBarButton;
    dxBarPopupMenu10: TdxBarPopupMenu;
    dxBarButton46: TdxBarButton;
    dxBarSubItem10: TdxBarSubItem;
    dxBarButton47: TdxBarButton;
    dxBarButton48: TdxBarButton;
    dxBarButton49: TdxBarButton;
    dxBarButton50: TdxBarButton;
    cxImageList2: TcxImageList;
    dxBarManager1Bar1: TdxBar;
    dxBarDockControl1: TdxBarDockControl;
    dxBarButton51: TdxBarButton;
    dxBarButton52: TdxBarButton;
    dxBarButton53: TdxBarButton;
    cxGridDBBandedTableView12otprCarOwnerName: TcxGridDBBandedColumn;
    cxGridDBBandedTableView1ELS_cod: TcxGridDBBandedColumn;
    cxPageControl2: TcxPageControl;
    cxTabSheet4: TcxTabSheet;
    cxTabSheet5: TcxTabSheet;
    cxTabSheet6: TcxTabSheet;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure cxGridDBBandedTableView12FocusedRecordChanged(
      Sender: TcxCustomGridTableView; APrevFocusedRecord,
      AFocusedRecord: TcxCustomGridRecord;
      ANewItemRecordFocusingChanged: Boolean);
    procedure cxGridDBBandedTableView1FocusedRecordChanged(
      Sender: TcxCustomGridTableView; APrevFocusedRecord,
      AFocusedRecord: TcxCustomGridRecord;
      ANewItemRecordFocusingChanged: Boolean);
    procedure cxPageControl4Change(Sender: TObject);
    procedure cxPageControl4DrawTabEx(AControl: TcxCustomTabControl;
      ATab: TcxTab; Font: TFont);
    procedure dxBarButton1Click(Sender: TObject);
    procedure dxBarButton2Click(Sender: TObject);
    procedure dxBarButton3Click(Sender: TObject);
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
    procedure dxBarButton19Click(Sender: TObject);
    procedure dxBarButton20Click(Sender: TObject);
    procedure dxBarButton21Click(Sender: TObject);
    procedure dxBarButton22Click(Sender: TObject);
    procedure dxBarButton23Click(Sender: TObject);
    procedure dxBarButton24Click(Sender: TObject);
    procedure dxBarButton25Click(Sender: TObject);
    procedure dxBarButton26Click(Sender: TObject);
    procedure dxBarButton27Click(Sender: TObject);
    procedure dxBarButton28Click(Sender: TObject);
    procedure dxBarButton29Click(Sender: TObject);
    procedure dxBarButton30Click(Sender: TObject);
    procedure dxBarButton31Click(Sender: TObject);
    procedure dxBarButton32Click(Sender: TObject);
    procedure dxBarButton33Click(Sender: TObject);
    procedure dxBarButton34Click(Sender: TObject);
    procedure dxBarButton35Click(Sender: TObject);
    procedure dxBarButton36Click(Sender: TObject);
    procedure dxBarButton37Click(Sender: TObject);
    procedure dxBarButton38Click(Sender: TObject);
    procedure dxBarButton39Click(Sender: TObject);
    procedure dxBarButton40Click(Sender: TObject);
    procedure dxBarButton41Click(Sender: TObject);
    procedure dxBarButton42Click(Sender: TObject);
    procedure dxBarButton43Click(Sender: TObject);
    procedure dxBarButton44Click(Sender: TObject);
    procedure dxBarButton45Click(Sender: TObject);
    procedure dxBarButton46Click(Sender: TObject);
    procedure dxBarButton47Click(Sender: TObject);
    procedure dxBarButton48Click(Sender: TObject);
    procedure dxBarButton49Click(Sender: TObject);
    procedure dxBarButton50Click(Sender: TObject);
    procedure cxButton3Click(Sender: TObject);
    procedure dxBarButton52Click(Sender: TObject);
    procedure dxBarButton51Click(Sender: TObject);
    procedure cxGridDBBandedTableView20FilterOnChanged(Sender: TObject);
    procedure cxGridDBBandedTableView20CustomDrawCell(
      Sender: TcxCustomGridTableView; ACanvas: TcxCanvas;
      AViewInfo: TcxGridTableDataCellViewInfo; var ADone: Boolean);
    procedure cxGridDBBandedTableView20CustomDrawColumnHeader(
      Sender: TcxGridTableView; ACanvas: TcxCanvas;
      AViewInfo: TcxGridColumnHeaderViewInfo; var ADone: Boolean);
    procedure cxGridDBBandedTableView20FocusedItemChanged(
      Sender: TcxCustomGridTableView; APrevFocusedItem,
      AFocusedItem: TcxCustomGridTableItem);
    procedure cxGridDBBandedTableView20KeyPress(Sender: TObject; var Key: Char);
    procedure cxGridDBBandedTableView21FilterOnChanged(Sender: TObject);
    procedure cxGridDBBandedTableView12FilterOnChanged(Sender: TObject);
    procedure cxGridDBBandedTableView16FilterOnChanged(Sender: TObject);
    procedure cxGridDBBandedTableView16CustomDrawColumnHeader(
      Sender: TcxGridTableView; ACanvas: TcxCanvas;
      AViewInfo: TcxGridColumnHeaderViewInfo; var ADone: Boolean);
    procedure cxGridDBBandedTableView16FocusedItemChanged(
      Sender: TcxCustomGridTableView; APrevFocusedItem,
      AFocusedItem: TcxCustomGridTableItem);
    procedure cxGridDBBandedTableView17FilterOnChanged(Sender: TObject);
    procedure cxGridDBBandedTableView18FilterOnChanged(Sender: TObject);
    procedure cxGridDBBandedTableView14FilterOnChanged(Sender: TObject);
    procedure cxGridDBBandedTableView19FilterOnChanged(Sender: TObject);
    procedure cxGridDBBandedTableView1FilterOnChanged(Sender: TObject);
    procedure cxGridDBBandedTableView1CustomDrawCell(
      Sender: TcxCustomGridTableView; ACanvas: TcxCanvas;
      AViewInfo: TcxGridTableDataCellViewInfo; var ADone: Boolean);
    procedure cxGridDBBandedTableView19CustomDrawColumnHeader(
      Sender: TcxGridTableView; ACanvas: TcxCanvas;
      AViewInfo: TcxGridColumnHeaderViewInfo; var ADone: Boolean);
    procedure cxGridDBBandedTableView19FocusedItemChanged(
      Sender: TcxCustomGridTableView; APrevFocusedItem,
      AFocusedItem: TcxCustomGridTableItem);
    procedure cxGridDBBandedTableView14CustomDrawColumnHeader(
      Sender: TcxGridTableView; ACanvas: TcxCanvas;
      AViewInfo: TcxGridColumnHeaderViewInfo; var ADone: Boolean);
    procedure cxGridDBBandedTableView18CustomDrawColumnHeader(
      Sender: TcxGridTableView; ACanvas: TcxCanvas;
      AViewInfo: TcxGridColumnHeaderViewInfo; var ADone: Boolean);
    procedure cxGridDBBandedTableView18FocusedItemChanged(
      Sender: TcxCustomGridTableView; APrevFocusedItem,
      AFocusedItem: TcxCustomGridTableItem);
    procedure cxGridDBBandedTableView17CustomDrawColumnHeader(
      Sender: TcxGridTableView; ACanvas: TcxCanvas;
      AViewInfo: TcxGridColumnHeaderViewInfo; var ADone: Boolean);
    procedure cxGridDBBandedTableView17FocusedItemChanged(
      Sender: TcxCustomGridTableView; APrevFocusedItem,
      AFocusedItem: TcxCustomGridTableItem);
    procedure cxGridDBBandedTableView12CustomDrawColumnHeader(
      Sender: TcxGridTableView; ACanvas: TcxCanvas;
      AViewInfo: TcxGridColumnHeaderViewInfo; var ADone: Boolean);
    procedure cxGridDBBandedTableView12FocusedItemChanged(
      Sender: TcxCustomGridTableView; APrevFocusedItem,
      AFocusedItem: TcxCustomGridTableItem);
    procedure cxGridDBBandedTableView21CustomDrawColumnHeader(
      Sender: TcxGridTableView; ACanvas: TcxCanvas;
      AViewInfo: TcxGridColumnHeaderViewInfo; var ADone: Boolean);
    procedure cxGridDBBandedTableView21FocusedItemChanged(
      Sender: TcxCustomGridTableView; APrevFocusedItem,
      AFocusedItem: TcxCustomGridTableItem);
    procedure cxGridDBBandedTableView21KeyPress(Sender: TObject; var Key: Char);
    procedure cxGridDBBandedTableView15FilterOnChanged(Sender: TObject);
    procedure cxGridDBBandedTableView15CustomDrawCell(
      Sender: TcxCustomGridTableView; ACanvas: TcxCanvas;
      AViewInfo: TcxGridTableDataCellViewInfo; var ADone: Boolean);
    procedure cxGridDBBandedTableView15CustomDrawColumnHeader(
      Sender: TcxGridTableView; ACanvas: TcxCanvas;
      AViewInfo: TcxGridColumnHeaderViewInfo; var ADone: Boolean);
    procedure cxGridDBBandedTableView15FocusedItemChanged(
      Sender: TcxCustomGridTableView; APrevFocusedItem,
      AFocusedItem: TcxCustomGridTableItem);
    procedure cxGridDBBandedTableView15KeyPress(Sender: TObject; var Key: Char);
    procedure cxGridDBBandedTableView1CustomDrawColumnHeader(
      Sender: TcxGridTableView; ACanvas: TcxCanvas;
      AViewInfo: TcxGridColumnHeaderViewInfo; var ADone: Boolean);
    procedure cxGridDBBandedTableView1FocusedItemChanged(
      Sender: TcxCustomGridTableView; APrevFocusedItem,
      AFocusedItem: TcxCustomGridTableItem);
    procedure cxGridDBBandedTableView1KeyPress(Sender: TObject; var Key: Char);
    procedure cxGridDBBandedTableView21CustomDrawCell(
      Sender: TcxCustomGridTableView; ACanvas: TcxCanvas;
      AViewInfo: TcxGridTableDataCellViewInfo; var ADone: Boolean);
    procedure cxGridDBBandedTableView12CustomDrawCell(
      Sender: TcxCustomGridTableView; ACanvas: TcxCanvas;
      AViewInfo: TcxGridTableDataCellViewInfo; var ADone: Boolean);
    procedure cxGridDBBandedTableView12KeyPress(Sender: TObject; var Key: Char);
    procedure cxGridDBBandedTableView16CustomDrawCell(
      Sender: TcxCustomGridTableView; ACanvas: TcxCanvas;
      AViewInfo: TcxGridTableDataCellViewInfo; var ADone: Boolean);
    procedure cxGridDBBandedTableView16KeyPress(Sender: TObject; var Key: Char);
    procedure cxGridDBBandedTableView17CustomDrawCell(
      Sender: TcxCustomGridTableView; ACanvas: TcxCanvas;
      AViewInfo: TcxGridTableDataCellViewInfo; var ADone: Boolean);
    procedure cxGridDBBandedTableView17KeyPress(Sender: TObject; var Key: Char);
    procedure cxGridDBBandedTableView18CustomDrawCell(
      Sender: TcxCustomGridTableView; ACanvas: TcxCanvas;
      AViewInfo: TcxGridTableDataCellViewInfo; var ADone: Boolean);
    procedure cxGridDBBandedTableView18KeyPress(Sender: TObject; var Key: Char);
    procedure cxGridDBBandedTableView14CustomDrawCell(
      Sender: TcxCustomGridTableView; ACanvas: TcxCanvas;
      AViewInfo: TcxGridTableDataCellViewInfo; var ADone: Boolean);
    procedure cxGridDBBandedTableView14FocusedItemChanged(
      Sender: TcxCustomGridTableView; APrevFocusedItem,
      AFocusedItem: TcxCustomGridTableItem);
    procedure cxGridDBBandedTableView14KeyPress(Sender: TObject; var Key: Char);
    procedure cxGridDBBandedTableView19CustomDrawCell(
      Sender: TcxCustomGridTableView; ACanvas: TcxCanvas;
      AViewInfo: TcxGridTableDataCellViewInfo; var ADone: Boolean);
    procedure cxGridDBBandedTableView19KeyPress(Sender: TObject; var Key: Char);
    procedure dxBarButton53Click(Sender: TObject);
    procedure cxPageControl2Change(Sender: TObject);
  private
    Fusr_pwd         : PUser_pwd;
    Fusers_group_cod : string;
    procedure SaveClaimToXML(claim_id: integer; claim_cod: string);
  public
    constructor Create(AOwner: TApplication; flag: boolean; users_group_cod: string; usr_pwd:PUser_pwd);
    procedure   SetPeriodClm(period_begin: TDateTime; period_end: TDateTime);
  end;

var
  fmEtrClaim: TfmEtrClaim;

function CreateWndEtranClaim(AppHand: THandle; flag: boolean; users_group_cod: string; usr_pwd:PUser_pwd) : variant; export;
function CreateWndEtranFindClaim(AppHand: THandle; doc_id:integer; num_vagon: integer; users_group_cod: string; usr_pwd:PUser_pwd) : variant; export;

implementation


uses EtrFilter, EtrUtils;
{$R *.dfm}

function CreateWndEtranFindClaim(AppHand: THandle; doc_id:integer; num_vagon: integer; users_group_cod: string; usr_pwd:PUser_pwd) : variant; export;
var Query: TADOQuery;
begin
  Application.Handle := AppHand;
  try
    fmEtrClaim := TfmEtrClaim.Create(Application, False, users_group_cod, usr_pwd);
    Screen.Cursor := -11;


    Query := TADOQuery.Create(nil);
    Query.Connection := fmEtrClaim.ADOEtran;
    Query.SQL.Add(' SELECT * ' +
                  ' FROM  claim '+
                  ' WHERE claimID = '+IntToStr(doc_id));
    Query.Open;

    fmEtrClaim.SetPeriodClm(Query.FieldByName('claimRegDate').AsDateTime,Query.FieldByName('claimRegDate').AsDateTime);
    fmEtrClaim.Query_Claim.Locate('claim_id', Query.FieldByName('claim_id').AsInteger, [loCaseInsensitive]);

    Query.Free;

    Screen.Cursor := 0;
    //-- изменить по мере необходимости возвращаемых параметров
    if  fmEtrClaim.ShowModal = mrOk then result := VarArrayOf([-9, '']);
  finally
    fmEtrClaim.Free;
  end;
end;


function CreateWndEtranClaim(AppHand: THandle; flag: boolean; users_group_cod: string; usr_pwd:PUser_pwd) : variant;
begin
  Application.Handle := AppHand;
  try
    fmEtrClaim := TfmEtrClaim.Create(Application, flag, users_group_cod, usr_pwd);
    Screen.Cursor := -11;
    fmEtrClaim.SetPeriodClm(Date-1,Date);
    Screen.Cursor := 0;
    //-- изменить по мере необходимости возвращаемых параметров
    if  fmEtrClaim.ShowModal = mrOk then result := VarArrayOf([-9, '']);
  finally
    fmEtrClaim.Free;
  end;
end;

constructor TfmEtrClaim.Create(AOwner:TApplication; flag: boolean; users_group_cod: string; usr_pwd:PUser_pwd);
begin
  Screen.Cursor := -11;
  inherited Create(nil);

  WindowState := wsMaximized;

  Fusr_pwd := usr_pwd;
  Fusers_group_cod := users_group_cod;

  ClientDataSet3.CreateDataSet;

  StoreRegistryGrid(rgLoad,'\Software\Lis1\Etran\Clm_Grids', cxGridDBBandedTableView1);


  ADOEtran.Connected := False;
  ADOEtran.ConnectionString := GetEtranConnect(Fusers_group_cod, Fusr_pwd);
  ADOEtran.Connected := True;

  cxPageControl4.ActivePageIndex := 0;

  Screen.Cursor := 0;
end;

procedure TfmEtrClaim.cxButton3Click(Sender: TObject);
var
  str_filter : string;
  set_ETRAN_clmInv : boolean;
  set_ETRAN_clmOtpr: boolean;
begin

  fmEtrFilter := TfmEtrFilter.Create(1, ADOEtran);

  fmEtrFilter._SetClmNumber           := cxTextEdit11.Text;
  fmEtrFilter._SetClmInvNum           := cxTextEdit3.Text;
  fmEtrFilter._SetClmRegBegin         := cxDateEdit11.Date;
  fmEtrFilter._SetClmRegEnd           := cxDateEdit12.Date;
  fmEtrFilter._SetClmDateStartBegin   := cxDateEdit7.Date;
  fmEtrFilter._SetClmDateStartEnd     := cxDateEdit9.Date;
  fmEtrFilter._SetClmDateFinishBegin  := cxDateEdit8.Date;
  fmEtrFilter._SetClmDateFinishEnd    := cxDateEdit10.Date;
  fmEtrFilter._SetClmNodeBeginName    := cxTextEdit12.Text;
  fmEtrFilter._SetClmNodeBeginCod     := cxTextEdit15.Text;
  fmEtrFilter._SetClmNodeEndName      := cxTextEdit13.Text;
  fmEtrFilter._SetClmNodeEndCod       := cxTextEdit14.Text;
  fmEtrFilter._SetClmKargoETSNGCod    := cxTextEdit89.Text;
  fmEtrFilter._SetClmKargoETSNGName   := cxTextEdit90.Text;

  if fmEtrFilter.ShowModal = mrOK then begin
    cxTextEdit11.Text := fmEtrFilter._GetClmNumber;
    cxTextEdit3.Text  := fmEtrFilter._GetClmInvNum;
    cxDateEdit11.Date := fmEtrFilter._GetClmRegBegin;
    cxDateEdit12.Date := fmEtrFilter._GetClmRegEnd;
    cxDateEdit7.Date  := fmEtrFilter._GetClmDateStartBegin;
    cxDateEdit9.Date  := fmEtrFilter._GetClmDateStartEnd;
    cxDateEdit8.Date  := fmEtrFilter._GetClmDateFinishBegin;
    cxDateEdit10.Date := fmEtrFilter._GetClmDateFinishEnd;
    cxTextEdit12.Text := fmEtrFilter._GetClmNodeBeginName;
    cxTextEdit15.Text := fmEtrFilter._GetClmNodeBeginCod;
    cxTextEdit13.Text := fmEtrFilter._GetClmNodeEndName;
    cxTextEdit14.Text := fmEtrFilter._GetClmNodeEndCod;
    cxTextEdit89.Text := fmEtrFilter._GetClmKargoETSNGCod;
    cxTextEdit90.Text := fmEtrFilter._GetClmKargoETSNGName;


    // Номер накладной (список накладных)
    // Станция назначения, груз ЕТСНГ (отправки)
    // cxTextEdit3.Text  - Накладная
    // cxTextEdit14.Text - Ст. назн.
    // cxTextEdit89.Text - ЕТСНГ

    str_filter := '1=1';

    if cxTextEdit11.Text <> '' then str_filter := str_filter + ' and claimNumber like ''%'+cxTextEdit11.Text+'%''';
    if cxTextEdit15.Text <> '' then str_filter := str_filter + ' and clmFromStationCode like ''%'+cxTextEdit15.Text+'%''';
    if cxTextEdit3.Text  <> '' then str_filter := str_filter + ' and invNumber like ''%'+cxTextEdit3.Text+'%''';
    if cxTextEdit14.Text <> '' then str_filter := str_filter + ' and otprToStationName like ''%'+cxTextEdit14.Text+'%''';
    if cxTextEdit89.Text <> '' then str_filter := str_filter + ' and otprFreightName like ''%'+cxTextEdit89.Text+'%''';

    if cxDateEdit11.Date<>-700000 then str_filter := str_filter + ' and convert(varchar(8),claimRegDate,112) >= ' + DateToSQL(cxDateEdit11.Date);
    if cxDateEdit12.Date<>-700000 then str_filter := str_filter + ' and convert(varchar(8),claimRegDate,112) <= ' + DateToSQL(cxDateEdit12.Date);
    if cxDateEdit7.Date<>-700000  then str_filter := str_filter + ' and convert(varchar(8),clmStartDate,112) >= ' + DateToSQL(cxDateEdit7.Date);
    if cxDateEdit9.Date<>-700000  then str_filter := str_filter + ' and convert(varchar(8),clmStartDate,112) <= ' + DateToSQL(cxDateEdit9.Date);
    if cxDateEdit8.Date<>-700000  then str_filter := str_filter + ' and convert(varchar(8),clmFinishDate,112) >= ' + DateToSQL(cxDateEdit8.Date);
    if cxDateEdit10.Date<>-700000 then str_filter := str_filter + ' and convert(varchar(8),clmFinishDate,112) <= ' + DateToSQL(cxDateEdit10.Date);

    if str_filter = '1=1' then str_filter := '1=0';
//    if Fcompany_id <> -1  then str_filter := str_filter + ' AND company_id = ' + IntToStr(Fcompany_id);


    if (cxTextEdit14.Text <> '') or (cxTextEdit89.Text <> '') then set_ETRAN_clmOtpr := True
    else set_ETRAN_clmOtpr := False;

    if (cxTextEdit3.Text <> '') then set_ETRAN_clmInv := True
    else set_ETRAN_clmInv := False;


    Screen.Cursor := crHourglass;

    Query_Claim.Close;
    Query_Claim.SQL.Clear;

    Query_Claim.SQL.Add('SELECT DISTINCT claim.claim_id, claimNumber, claimState, claimRegDate, clmStartDate, clmFinishDate, clmFromStationName, clmFreightGroupName, ');
    Query_Claim.SQL.Add('(SELECT sum(otprFreightWeight) otprFreightWeight FROM clmOtpr WHERE clmOtpr.claim_id = claim.claim_id) as otprFreightWeight, ');
    Query_Claim.SQL.Add('(SELECT sum(otprCarCount) otprCarCount FROM clmOtpr WHERE clmOtpr.claim_id = claim.claim_id) as otprCarCount, ');


    if cxTextEdit3.Text <> '' then Query_Claim.SQL.Add('invNumber,')
    else Query_Claim.SQL.Add(' '''' AS invNumber,');

    if cxTextEdit14.Text <> '' then Query_Claim.SQL.Add('otprToStationName,')
    else Query_Claim.SQL.Add(' CASE WHEN (SELECT count(DISTINCT otprToStationName) FROM clmotpr WHERE clmotpr.claim_id = claim.claim_id) = 1 ' +
                             '		  THEN (SELECT TOP 1 otprToStationName FROM clmotpr WHERE clmotpr.claim_id = claim.claim_id) ' +
                             '      ELSE '''' END AS otprToStationName,');

    if cxTextEdit89.Text <> '' then Query_Claim.SQL.Add('otprFreightName,')
    else Query_Claim.SQL.Add(' CASE WHEN (SELECT count(DISTINCT otprFreightName) FROM clmotpr WHERE clmotpr.claim_id = claim.claim_id) = 1 ' +
                             '      THEN (SELECT TOP 1 otprFreightName FROM clmotpr WHERE clmotpr.claim_id = claim.claim_id)' +
                             '      ELSE '''' END AS otprFreightName,');

    if (set_ETRAN_clmOtpr = False) and (set_ETRAN_clmInv = False) then Query_Claim.SQL.Add('claim.claim_id as calc_id');
    if (set_ETRAN_clmOtpr = True)  and (set_ETRAN_clmInv = False) then Query_Claim.SQL.Add('cast(claim.claim_id as varchar(10)) + right(''00000000''+cast(clmOtpr_id as varchar(10)),8)  as calc_id');
    if (set_ETRAN_clmOtpr = False) and (set_ETRAN_clmInv = True)  then Query_Claim.SQL.Add('cast(claim.claim_id as varchar(10)) + right(''00000000''+cast(clmInv_id as varchar(10)),8) as calc_id');
    if (set_ETRAN_clmOtpr = True)  and (set_ETRAN_clmInv = True)  then Query_Claim.SQL.Add('cast(claim.claim_id as varchar(10)) + right(''00000000''+cast(clmInv_id as varchar(10)),8) + right(''00000000''+cast(clmInv_id as varchar(10)),8)  as calc_id');


    Query_Claim.SQL.Add('FROM claim INNER JOIN etran_global_id on claim.claim_id = etran_global_id.global_id');
    Query_Claim.SQL.Add('INNER JOIN etran_users on etran_global_id.users_owner_id = etran_users.users_id');



//    Query_Claim.SQL.Add('INNER JOIN etran_xml_reply ON etran_xml_reply.xml_reply_id = etran_link_xml.xml_reply_id');
//    Query_Claim.SQL.Add('INNER JOIN etran_query on etran_xml_reply.query_id = etran_query.query_id');
    if set_ETRAN_clmOtpr then Query_Claim.SQL.Add('INNER JOIN clmotpr ON claim.claim_id = clmotpr.claim_id');
    if set_ETRAN_clmInv  then Query_Claim.SQL.Add('INNER JOIN clminv  ON claim.claim_id = clminv.claim_id');

    Query_Claim.SQL.Add('WHERE  ' + str_filter + ' AND users_owner_id in (SELECT users2.users_id FROM etran_users users1 inner join etran_users users2 on users1.users_group_id = users2.users_group_id WHERE users1.users_name = system_user)');

    case cxPageControl2.ActivePageIndex of
      0: Query_Claim.SQL.Add('AND etran_users.els_cod = ''1004653067''');
      1: Query_Claim.SQL.Add('AND etran_users.els_cod = ''1006059161''');
      2: Query_Claim.SQL.Add('AND etran_users.els_cod = ''1006062218''');
    end;

    Query_Claim.Open;

    Screen.Cursor := crDefault;
  end;
end;

procedure TfmEtrClaim.cxGridDBBandedTableView12CustomDrawCell(
  Sender: TcxCustomGridTableView; ACanvas: TcxCanvas;
  AViewInfo: TcxGridTableDataCellViewInfo; var ADone: Boolean);
begin
	if AViewInfo.GridRecord.Selected or AViewInfo.GridRecord.Focused then begin
		ACanvas.Brush.Color := clNavy;
		ACanvas.Font.Color := clWhite;
		if AViewInfo.Focused then ACanvas.Brush.Color := clBlue;
	end;
end;

procedure TfmEtrClaim.cxGridDBBandedTableView12CustomDrawColumnHeader(
  Sender: TcxGridTableView; ACanvas: TcxCanvas;
  AViewInfo: TcxGridColumnHeaderViewInfo; var ADone: Boolean);
begin
	if AViewInfo.Column.Focused then begin
		ACanvas.Brush.Color := clNavy;
		ACanvas.Font.Color := clWhite;
	end;
end;

procedure TfmEtrClaim.cxGridDBBandedTableView12FilterOnChanged(Sender: TObject);
begin
	DrawcxGridColumnOnFiltered(Sender);
end;

procedure TfmEtrClaim.cxGridDBBandedTableView12FocusedItemChanged(
  Sender: TcxCustomGridTableView; APrevFocusedItem,
  AFocusedItem: TcxCustomGridTableItem);
begin
	cxGridDBBandedTableView12.Painter.Invalidate;
end;

procedure TfmEtrClaim.cxGridDBBandedTableView12FocusedRecordChanged(
  Sender: TcxCustomGridTableView; APrevFocusedRecord,
  AFocusedRecord: TcxCustomGridRecord; ANewItemRecordFocusingChanged: Boolean);
begin
 if Query_otprGraphPod.Parameters.ParamByName('clmOtpr_id').Value <> SP_XML_parser_view.FieldByName('clmOtpr_id').Value then begin
    Query_otprGraphPod.Close;
    Query_otprStyk.Close;
    Query_otprGraphPod.Parameters.ParamByName('clmOtpr_id').Value := SP_XML_parser_view.FieldByName('clmOtpr_id').AsInteger;
    Query_otprStyk.Parameters.ParamByName('clmOtpr_id').Value := SP_XML_parser_view.FieldByName('clmOtpr_id').AsInteger;
    Query_otprGraphPod.Open;
    Query_otprStyk.Open;
 end;
end;

procedure TfmEtrClaim.cxGridDBBandedTableView12KeyPress(Sender: TObject;
  var Key: Char);
begin
	FilterColumnGridOnKeyPress(cxGridDBBandedTableView12, Key);
end;

procedure TfmEtrClaim.cxGridDBBandedTableView14CustomDrawCell(
  Sender: TcxCustomGridTableView; ACanvas: TcxCanvas;
  AViewInfo: TcxGridTableDataCellViewInfo; var ADone: Boolean);
begin
	if AViewInfo.GridRecord.Selected or AViewInfo.GridRecord.Focused then begin
		ACanvas.Brush.Color := clNavy;
		ACanvas.Font.Color := clWhite;
		if AViewInfo.Focused then ACanvas.Brush.Color := clBlue;
	end;
end;

procedure TfmEtrClaim.cxGridDBBandedTableView14CustomDrawColumnHeader(
  Sender: TcxGridTableView; ACanvas: TcxCanvas;
  AViewInfo: TcxGridColumnHeaderViewInfo; var ADone: Boolean);
begin
	if AViewInfo.Column.Focused then begin
		ACanvas.Brush.Color := clNavy;
		ACanvas.Font.Color := clWhite;
	end;
end;

procedure TfmEtrClaim.cxGridDBBandedTableView14FilterOnChanged(Sender: TObject);
begin
	DrawcxGridColumnOnFiltered(Sender);
end;

procedure TfmEtrClaim.cxGridDBBandedTableView14FocusedItemChanged(
  Sender: TcxCustomGridTableView; APrevFocusedItem,
  AFocusedItem: TcxCustomGridTableItem);
begin
	cxGridDBBandedTableView14.Painter.Invalidate;
end;

procedure TfmEtrClaim.cxGridDBBandedTableView14KeyPress(Sender: TObject;
  var Key: Char);
begin
	FilterColumnGridOnKeyPress(cxGridDBBandedTableView14, Key);
end;

procedure TfmEtrClaim.cxGridDBBandedTableView15CustomDrawCell(
  Sender: TcxCustomGridTableView; ACanvas: TcxCanvas;
  AViewInfo: TcxGridTableDataCellViewInfo; var ADone: Boolean);
begin
	if AViewInfo.GridRecord.Selected or AViewInfo.GridRecord.Focused then begin
		ACanvas.Brush.Color := clNavy;
		ACanvas.Font.Color := clWhite;
		if AViewInfo.Focused then ACanvas.Brush.Color := clBlue;
	end;
end;

procedure TfmEtrClaim.cxGridDBBandedTableView15CustomDrawColumnHeader(
  Sender: TcxGridTableView; ACanvas: TcxCanvas;
  AViewInfo: TcxGridColumnHeaderViewInfo; var ADone: Boolean);
begin
	if AViewInfo.Column.Focused then begin
		ACanvas.Brush.Color := clNavy;
		ACanvas.Font.Color := clWhite;
	end;
end;

procedure TfmEtrClaim.cxGridDBBandedTableView15FilterOnChanged(Sender: TObject);
begin
	DrawcxGridColumnOnFiltered(Sender);
end;

procedure TfmEtrClaim.cxGridDBBandedTableView15FocusedItemChanged(
  Sender: TcxCustomGridTableView; APrevFocusedItem,
  AFocusedItem: TcxCustomGridTableItem);
begin
	cxGridDBBandedTableView15.Painter.Invalidate;
end;

procedure TfmEtrClaim.cxGridDBBandedTableView16CustomDrawCell(
  Sender: TcxCustomGridTableView; ACanvas: TcxCanvas;
  AViewInfo: TcxGridTableDataCellViewInfo; var ADone: Boolean);
begin
	if AViewInfo.GridRecord.Selected or AViewInfo.GridRecord.Focused then begin
		ACanvas.Brush.Color := clNavy;
		ACanvas.Font.Color := clWhite;
		if AViewInfo.Focused then ACanvas.Brush.Color := clBlue;
	end;
end;

procedure TfmEtrClaim.cxGridDBBandedTableView16CustomDrawColumnHeader(
  Sender: TcxGridTableView; ACanvas: TcxCanvas;
  AViewInfo: TcxGridColumnHeaderViewInfo; var ADone: Boolean);
begin
	if AViewInfo.Column.Focused then begin
		ACanvas.Brush.Color := clNavy;
		ACanvas.Font.Color := clWhite;
	end;
end;

procedure TfmEtrClaim.cxGridDBBandedTableView16FilterOnChanged(Sender: TObject);
begin
	DrawcxGridColumnOnFiltered(Sender);
end;

procedure TfmEtrClaim.cxGridDBBandedTableView16FocusedItemChanged(
  Sender: TcxCustomGridTableView; APrevFocusedItem,
  AFocusedItem: TcxCustomGridTableItem);
begin
	cxGridDBBandedTableView16.Painter.Invalidate;
end;

procedure TfmEtrClaim.cxGridDBBandedTableView16KeyPress(Sender: TObject;
  var Key: Char);
begin
	FilterColumnGridOnKeyPress(cxGridDBBandedTableView16, Key);
end;

procedure TfmEtrClaim.cxGridDBBandedTableView1FocusedItemChanged(
  Sender: TcxCustomGridTableView; APrevFocusedItem,
  AFocusedItem: TcxCustomGridTableItem);
begin
	cxGridDBBandedTableView1.Painter.Invalidate;
end;

procedure TfmEtrClaim.cxGridDBBandedTableView1FocusedRecordChanged(
  Sender: TcxCustomGridTableView; APrevFocusedRecord,
  AFocusedRecord: TcxCustomGridRecord; ANewItemRecordFocusingChanged: Boolean);
begin
  Screen.Cursor := crHourGlass;
  if (Query_Claim.Active) and (not Query_Claim.Eof) then begin
    if ClientDataSet3.FieldByName('claim_id').Value <> Query_Claim.FieldByName('claim_id').Value then begin
      SP_XML_parser.Close;
      SP_XML_parser.Parameters.Refresh;
      SP_XML_parser.Parameters.ParamByName('@row_id').Value  := Query_Claim.FieldByName('claim_id').AsInteger;
      SP_XML_parser.Parameters.ParamByName('@doc_type_id').Value   := 1;
      SP_XML_parser.Parameters.ParamByName('@doc_sub').Value       := 0;
      SP_XML_parser.Open;
      ClientDSFromRecordset(SP_XML_parser.Recordset, ClientDataSet3);
    end;
  end else
    ClientDSClear(ClientDataSet3);
  ClientDSToForm(self, ClientDataSet3);
  cxPageControl4Change(Sender);
  cxPageControl4.Repaint;
  Screen.Cursor := crDefault;
end;

procedure TfmEtrClaim.cxGridDBBandedTableView1KeyPress(Sender: TObject;
  var Key: Char);
begin
	FilterColumnGridOnKeyPress(cxGridDBBandedTableView1, Key);
end;

procedure TfmEtrClaim.cxGridDBBandedTableView20CustomDrawCell(
  Sender: TcxCustomGridTableView; ACanvas: TcxCanvas;
  AViewInfo: TcxGridTableDataCellViewInfo; var ADone: Boolean);
begin
	if AViewInfo.GridRecord.Selected or AViewInfo.GridRecord.Focused then begin
		ACanvas.Brush.Color := clNavy;
		ACanvas.Font.Color := clWhite;
		if AViewInfo.Focused then ACanvas.Brush.Color := clBlue;
	end;
end;

procedure TfmEtrClaim.cxGridDBBandedTableView20CustomDrawColumnHeader(
  Sender: TcxGridTableView; ACanvas: TcxCanvas;
  AViewInfo: TcxGridColumnHeaderViewInfo; var ADone: Boolean);
begin
	if AViewInfo.Column.Focused then begin
		ACanvas.Brush.Color := clNavy;
		ACanvas.Font.Color := clWhite;
	end;
end;

procedure TfmEtrClaim.cxGridDBBandedTableView20FilterOnChanged(Sender: TObject);
begin
	DrawcxGridColumnOnFiltered(Sender);
end;

procedure TfmEtrClaim.cxGridDBBandedTableView20FocusedItemChanged(
  Sender: TcxCustomGridTableView; APrevFocusedItem,
  AFocusedItem: TcxCustomGridTableItem);
begin
	cxGridDBBandedTableView20.Painter.Invalidate;
end;

procedure TfmEtrClaim.cxPageControl2Change(Sender: TObject);
begin
  Screen.Cursor := crHourGlass;

  Query_Claim.SQL.Strings[Query_Claim.SQL.Count-1] := '';
  case cxPageControl2.ActivePageIndex of
    0: Query_Claim.SQL.Add('AND etran_users.els_cod = ''1004653067''');
    1: Query_Claim.SQL.Add('AND etran_users.els_cod = ''1006059161''');
    2: Query_Claim.SQL.Add('AND etran_users.els_cod = ''1006062218''');
  end;

  Query_Claim.Open;

  Screen.Cursor := crDefault;
end;

procedure TfmEtrClaim.cxPageControl4Change(Sender: TObject);
begin
  if Query_Claim.Active then begin
    cxGridDBBandedTableView12.DataController.DataSource  := nil;
    cxGridDBBandedTableView15.DataController.DataSource  := nil;
    cxGridDBBandedTableView16.DataController.DataSource  := nil;
    cxGridDBBandedTableView17.DataController.DataSource  := nil;
    cxGridDBBandedTableView18.DataController.DataSource  := nil;
    cxGridDBBandedTableView14.DataController.DataSource  := nil;
    cxGridDBBandedTableView19.DataController.DataSource  := nil;

    if cxPageControl4.Pages[cxPageControl4.ActivePageIndex].Tag <> 0 then begin
        SP_XML_parser_view.Close;
        SP_XML_parser_view.Parameters.Refresh;
        SP_XML_parser_view.Parameters.ParamByName('@row_id').Value:=Query_Claim.FieldByName('claim_id').AsInteger;
        SP_XML_parser_view.Parameters.ParamByName('@doc_type_id').Value :=1;
        SP_XML_parser_view.Parameters.ParamByName('@doc_sub').Value     :=cxPageControl4.Pages[cxPageControl4.ActivePageIndex].Tag;
        SP_XML_parser_view.Open;

        case cxPageControl4.Pages[cxPageControl4.ActivePageIndex].Tag of
          1: cxGridDBBandedTableView12.DataController.DataSource  := DS_XML_parser_view;
          2: cxGridDBBandedTableView15.DataController.DataSource  := DS_XML_parser_view;
          3: cxGridDBBandedTableView16.DataController.DataSource  := DS_XML_parser_view;
          4: cxGridDBBandedTableView17.DataController.DataSource  := DS_XML_parser_view;
          5: cxGridDBBandedTableView18.DataController.DataSource  := DS_XML_parser_view;
          6: cxGridDBBandedTableView14.DataController.DataSource  := DS_XML_parser_view;
          7: cxGridDBBandedTableView19.DataController.DataSource  := DS_XML_parser_view;
        end;
    end;

  end;
end;

procedure TfmEtrClaim.cxPageControl4DrawTabEx(AControl: TcxCustomTabControl; ATab: TcxTab; Font: TFont);
begin
  if (cxPageControl4.Pages[ATab.Index].Tag = 1) and (ClientDataSet3.FieldByName('cnt_clmOtpr'      ).Value > 0) then Font.Style := [fsBold];
  if (cxPageControl4.Pages[ATab.Index].Tag = 2) and (ClientDataSet3.FieldByName('cnt_clmPayer'     ).Value > 0) then Font.Style := [fsBold];
  if (cxPageControl4.Pages[ATab.Index].Tag = 3) and (ClientDataSet3.FieldByName('cnt_clmDoc'       ).Value > 0) then Font.Style := [fsBold];
  if (cxPageControl4.Pages[ATab.Index].Tag = 4) and (ClientDataSet3.FieldByName('cnt_clmAgreement' ).Value > 0) then Font.Style := [fsBold];
  if (cxPageControl4.Pages[ATab.Index].Tag = 5) and (ClientDataSet3.FieldByName('cnt_clmInv'       ).Value > 0) then Font.Style := [fsBold];
  if (cxPageControl4.Pages[ATab.Index].Tag = 6) then Font.Style := [fsBold];
  if (cxPageControl4.Pages[ATab.Index].Tag = 7) and (ClientDataSet3.FieldByName('cnt_clmRoute'     ).Value > 0) then Font.Style := [fsBold];
end;

procedure TfmEtrClaim.dxBarButton10Click(Sender: TObject);
begin
	cxGridDBBandedTableView21.Filtering.ColumnFilteredItemsList := not dxBarButton10.Down;
end;

procedure TfmEtrClaim.dxBarButton11Click(Sender: TObject);
begin
	PrintcxGrid(cxGridDBBandedTableView12);
end;

procedure TfmEtrClaim.dxBarButton12Click(Sender: TObject);
begin
	SetdxDBGridColumns(cxGridDBBandedTableView12);
end;

procedure TfmEtrClaim.dxBarButton13Click(Sender: TObject);
begin
	cxGridDBBandedTableView12.OptionsView.GroupByBox := not cxGridDBBandedTableView12.OptionsView.GroupByBox;
end;

procedure TfmEtrClaim.dxBarButton14Click(Sender: TObject);
begin
	FiltercxGrid4ListID(cxGridDBBandedTableView12);
end;

procedure TfmEtrClaim.dxBarButton15Click(Sender: TObject);
begin
	cxGridDBBandedTableView12.Filtering.ColumnFilteredItemsList := not dxBarButton15.Down;
end;

procedure TfmEtrClaim.dxBarButton16Click(Sender: TObject);
begin
	PrintcxGrid(cxGridDBBandedTableView15);
end;

procedure TfmEtrClaim.dxBarButton17Click(Sender: TObject);
begin
	SetdxDBGridColumns(cxGridDBBandedTableView15);
end;

procedure TfmEtrClaim.dxBarButton18Click(Sender: TObject);
begin
	cxGridDBBandedTableView15.OptionsView.GroupByBox := not cxGridDBBandedTableView15.OptionsView.GroupByBox;
end;

procedure TfmEtrClaim.dxBarButton19Click(Sender: TObject);
begin
	FiltercxGrid4ListID(cxGridDBBandedTableView15);
end;

procedure TfmEtrClaim.dxBarButton1Click(Sender: TObject);
begin
	PrintcxGrid(cxGridDBBandedTableView20);
end;

procedure TfmEtrClaim.dxBarButton20Click(Sender: TObject);
begin
	cxGridDBBandedTableView15.Filtering.ColumnFilteredItemsList := not dxBarButton20.Down;
end;

procedure TfmEtrClaim.dxBarButton21Click(Sender: TObject);
begin
	PrintcxGrid(cxGridDBBandedTableView16);
end;

procedure TfmEtrClaim.dxBarButton22Click(Sender: TObject);
begin
	SetdxDBGridColumns(cxGridDBBandedTableView16);
end;

procedure TfmEtrClaim.dxBarButton23Click(Sender: TObject);
begin
	cxGridDBBandedTableView16.OptionsView.GroupByBox := not cxGridDBBandedTableView16.OptionsView.GroupByBox;
end;

procedure TfmEtrClaim.dxBarButton24Click(Sender: TObject);
begin
	FiltercxGrid4ListID(cxGridDBBandedTableView16);
end;

procedure TfmEtrClaim.dxBarButton25Click(Sender: TObject);
begin
	cxGridDBBandedTableView16.Filtering.ColumnFilteredItemsList := not dxBarButton25.Down;
end;

procedure TfmEtrClaim.dxBarButton26Click(Sender: TObject);
begin
	PrintcxGrid(cxGridDBBandedTableView17);
end;

procedure TfmEtrClaim.dxBarButton27Click(Sender: TObject);
begin
	SetdxDBGridColumns(cxGridDBBandedTableView17);
end;

procedure TfmEtrClaim.dxBarButton28Click(Sender: TObject);
begin
	cxGridDBBandedTableView17.OptionsView.GroupByBox := not cxGridDBBandedTableView17.OptionsView.GroupByBox;
end;

procedure TfmEtrClaim.dxBarButton29Click(Sender: TObject);
begin
	FiltercxGrid4ListID(cxGridDBBandedTableView17);
end;

procedure TfmEtrClaim.dxBarButton2Click(Sender: TObject);
begin
	SetdxDBGridColumns(cxGridDBBandedTableView20);
end;

procedure TfmEtrClaim.dxBarButton30Click(Sender: TObject);
begin
	cxGridDBBandedTableView17.Filtering.ColumnFilteredItemsList := not dxBarButton30.Down;
end;

procedure TfmEtrClaim.dxBarButton31Click(Sender: TObject);
begin
	PrintcxGrid(cxGridDBBandedTableView18);
end;

procedure TfmEtrClaim.dxBarButton32Click(Sender: TObject);
begin
	SetdxDBGridColumns(cxGridDBBandedTableView18);
end;

procedure TfmEtrClaim.dxBarButton33Click(Sender: TObject);
begin
	cxGridDBBandedTableView18.OptionsView.GroupByBox := not cxGridDBBandedTableView18.OptionsView.GroupByBox;
end;

procedure TfmEtrClaim.dxBarButton34Click(Sender: TObject);
begin
	FiltercxGrid4ListID(cxGridDBBandedTableView18);
end;

procedure TfmEtrClaim.dxBarButton35Click(Sender: TObject);
begin
	cxGridDBBandedTableView18.Filtering.ColumnFilteredItemsList := not dxBarButton35.Down;
end;

procedure TfmEtrClaim.dxBarButton36Click(Sender: TObject);
begin
	PrintcxGrid(cxGridDBBandedTableView14);
end;

procedure TfmEtrClaim.dxBarButton37Click(Sender: TObject);
begin
	SetdxDBGridColumns(cxGridDBBandedTableView14);
end;

procedure TfmEtrClaim.dxBarButton38Click(Sender: TObject);
begin
	cxGridDBBandedTableView14.OptionsView.GroupByBox := not cxGridDBBandedTableView14.OptionsView.GroupByBox;
end;

procedure TfmEtrClaim.dxBarButton39Click(Sender: TObject);
begin
	FiltercxGrid4ListID(cxGridDBBandedTableView14);
end;

procedure TfmEtrClaim.dxBarButton3Click(Sender: TObject);
begin
	cxGridDBBandedTableView20.OptionsView.GroupByBox := not cxGridDBBandedTableView20.OptionsView.GroupByBox;
end;

procedure TfmEtrClaim.dxBarButton40Click(Sender: TObject);
begin
	cxGridDBBandedTableView14.Filtering.ColumnFilteredItemsList := not dxBarButton40.Down;
end;

procedure TfmEtrClaim.dxBarButton41Click(Sender: TObject);
begin
	PrintcxGrid(cxGridDBBandedTableView19);
end;

procedure TfmEtrClaim.dxBarButton42Click(Sender: TObject);
begin
	SetdxDBGridColumns(cxGridDBBandedTableView19);
end;

procedure TfmEtrClaim.dxBarButton43Click(Sender: TObject);
begin
	cxGridDBBandedTableView19.OptionsView.GroupByBox := not cxGridDBBandedTableView19.OptionsView.GroupByBox;
end;

procedure TfmEtrClaim.dxBarButton44Click(Sender: TObject);
begin
	FiltercxGrid4ListID(cxGridDBBandedTableView19);
end;

procedure TfmEtrClaim.dxBarButton45Click(Sender: TObject);
begin
	cxGridDBBandedTableView19.Filtering.ColumnFilteredItemsList := not dxBarButton45.Down;
end;

procedure TfmEtrClaim.dxBarButton46Click(Sender: TObject);
begin
	PrintcxGrid(cxGridDBBandedTableView1);
end;

procedure TfmEtrClaim.dxBarButton47Click(Sender: TObject);
begin
	SetdxDBGridColumns(cxGridDBBandedTableView1);
end;

procedure TfmEtrClaim.dxBarButton48Click(Sender: TObject);
begin
	cxGridDBBandedTableView1.OptionsView.GroupByBox := not cxGridDBBandedTableView1.OptionsView.GroupByBox;
end;

procedure TfmEtrClaim.dxBarButton49Click(Sender: TObject);
begin
	FiltercxGrid4ListID(cxGridDBBandedTableView1);
end;

procedure TfmEtrClaim.dxBarButton4Click(Sender: TObject);
begin
	FiltercxGrid4ListID(cxGridDBBandedTableView20);
end;

procedure TfmEtrClaim.dxBarButton50Click(Sender: TObject);
begin
	cxGridDBBandedTableView1.Filtering.ColumnFilteredItemsList := not dxBarButton50.Down;
end;

procedure TfmEtrClaim.dxBarButton51Click(Sender: TObject);
begin
  RefreshQueryGrid(cxGridDBBandedTableView1  , 'xml_reply_id');
end;

procedure TfmEtrClaim.dxBarButton52Click(Sender: TObject);
begin
  if not Query_Claim.FieldByName('claim_id').IsNull then PrintClaim(Query_Claim.FieldByName('claim_id').AsInteger, ADOEtran)
  else ShowMessage('Заявка не найдена.');
end;

procedure TfmEtrClaim.dxBarButton53Click(Sender: TObject);
begin
  if not Query_Claim.FieldByName('claim_id').IsNull then SaveClaimToXML(Query_Claim.FieldByName('claim_id').AsInteger, cxGridDBBandedTableView1claimNumber.DataBinding.Field.AsString)
  else ShowMessage('Заявка не найдена.');
end;

procedure TfmEtrClaim.dxBarButton5Click(Sender: TObject);
begin
	cxGridDBBandedTableView20.Filtering.ColumnFilteredItemsList := not dxBarButton5.Down;
end;

procedure TfmEtrClaim.dxBarButton6Click(Sender: TObject);
begin
	PrintcxGrid(cxGridDBBandedTableView21);
end;

procedure TfmEtrClaim.dxBarButton7Click(Sender: TObject);
begin
	SetdxDBGridColumns(cxGridDBBandedTableView21);
end;

procedure TfmEtrClaim.dxBarButton8Click(Sender: TObject);
begin
	cxGridDBBandedTableView21.OptionsView.GroupByBox := not cxGridDBBandedTableView21.OptionsView.GroupByBox;
end;

procedure TfmEtrClaim.dxBarButton9Click(Sender: TObject);
begin
	FiltercxGrid4ListID(cxGridDBBandedTableView21);
end;

procedure TfmEtrClaim.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  StoreRegistryGrid(rgSave,'\Software\Lis1\Etran\Clm_Grids', cxGridDBBandedTableView1);
  Action := caFree;
end;

procedure TfmEtrClaim.SetPeriodClm(period_begin: TDateTime; period_end: TDateTime);
begin
  Query_Claim.SQL.Clear;
  Query_Claim.SQL.Add(
      'SELECT	claim_id as calc_id, claim_id, claimNumber, claimState, claimRegDate, ' +
		  'clmStartDate, clmFinishDate, clmFromStationName, clmFreightGroupName, ' +
      ' CASE WHEN (SELECT count(DISTINCT otprToStationName) FROM clmotpr WHERE clmotpr.claim_id = claim.claim_id) = 1 ' +
			' THEN (SELECT TOP 1 otprToStationName FROM clmotpr WHERE clmotpr.claim_id = claim.claim_id) ' +
      '       ELSE '''' END AS otprToStationName, ' +
  		'CASE WHEN (SELECT count(DISTINCT otprFreightName) FROM clmotpr WHERE clmotpr.claim_id = claim.claim_id) = 1 ' +
			' THEN (SELECT TOP 1 otprFreightName FROM clmotpr WHERE clmotpr.claim_id = claim.claim_id) ' +
      '       ELSE '''' END AS otprFreightName, ' +
      ' '''' as invNumber, (SELECT sum(otprFreightWeight) otprFreightWeight FROM clmOtpr WHERE clmOtpr.claim_id = claim.claim_id) as otprFreightWeight, (SELECT sum(otprCarCount) otprCarCount FROM clmOtpr WHERE clmOtpr.claim_id = claim.claim_id) as otprCarCount ' +
      'FROM 	Claim ' +
      'inner join etran_global_id on claim.claim_id = etran_global_id.global_id ' +
      'inner join etran_users on etran_global_id.users_owner_id = etran_users.users_id ' +
      'WHERE convert(varchar(8),claimRegDate,112) between '+DateToSQL(period_begin)+' AND '+DateToSQL(period_end) +
      ' AND users_owner_id in (SELECT users2.users_id FROM etran_users users1 inner join etran_users users2 on users1.users_group_id = users2.users_group_id WHERE users1.users_name = system_user)');

  case cxPageControl2.ActivePageIndex of
    0: Query_Claim.SQL.Add('AND etran_users.els_cod = ''1004653067''');
    1: Query_Claim.SQL.Add('AND etran_users.els_cod = ''1006059161''');
    2: Query_Claim.SQL.Add('AND etran_users.els_cod = ''1006062218''');
  end;

  Query_Claim.Open;
  cxDateEdit11.Date :=period_begin;
  cxDateEdit12.Date :=period_end;
  if not Query_Claim.Eof then begin
    SP_XML_parser.Close;
    SP_XML_parser.Parameters.Refresh;
    SP_XML_parser.Parameters.ParamByName('@row_id').Value  := Query_Claim.FieldByName('claim_id').AsInteger;
    SP_XML_parser.Parameters.ParamByName('@doc_type_id').Value   := 1;
    SP_XML_parser.Parameters.ParamByName('@doc_sub').Value       := 0;
    SP_XML_parser.Open;
    ClientDSFromRecordset(SP_XML_parser.Recordset, ClientDataSet3);
  end else
    ClientDSClear(ClientDataSet3);
  ClientDSToForm(self, ClientDataSet3);
  cxPageControl4Change(nil);
end;


procedure TfmEtrClaim.SaveClaimToXML(claim_id: integer; claim_cod: string);
var         Q : TADOQuery;
      SaveDlg : TSaveDialog;
     FileName : string;
begin

  FileName := claim_cod + '_' + FormatDateTime('yyyymmdd', Date());

  SaveDlg := TSaveDialog.Create(nil);
  SaveDlg.FileName := FileName;
  SaveDlg.Filter   := '*.xml|xml';

  if SaveDlg.Execute() then  begin
    FileName := SaveDlg.FileName;
    FileName := LeftStr(FileName, Length(FileName) - Length(ExtractFileExt(FileName)));
    FileName := FileName + '.xml';

    Q := TADOQuery.Create(nil);
    Q.Connection := ADOEtran;
    Q.SQL.Add('SELECT doc_xml_info FROM etran_xml_reply WHERE doc_references_id = ' + IntToStr(claim_id));
    Q.Open;
    TADOBlobStream.Create(Q.FieldByName('doc_xml_info') as TBlobField, bmRead).SaveToFile(FileName);
    Q.Free;
  end;

  SaveDlg.Free;
end;


procedure TfmEtrClaim.cxGridDBBandedTableView20KeyPress(Sender: TObject;
  var Key: Char);
begin
	FilterColumnGridOnKeyPress(cxGridDBBandedTableView20, Key);
end;

procedure TfmEtrClaim.cxGridDBBandedTableView21CustomDrawCell(
  Sender: TcxCustomGridTableView; ACanvas: TcxCanvas;
  AViewInfo: TcxGridTableDataCellViewInfo; var ADone: Boolean);
begin
	if AViewInfo.GridRecord.Selected or AViewInfo.GridRecord.Focused then begin
		ACanvas.Brush.Color := clNavy;
		ACanvas.Font.Color := clWhite;
		if AViewInfo.Focused then ACanvas.Brush.Color := clBlue;
	end;
end;

procedure TfmEtrClaim.cxGridDBBandedTableView21CustomDrawColumnHeader(
  Sender: TcxGridTableView; ACanvas: TcxCanvas;
  AViewInfo: TcxGridColumnHeaderViewInfo; var ADone: Boolean);
begin
	if AViewInfo.Column.Focused then begin
		ACanvas.Brush.Color := clNavy;
		ACanvas.Font.Color := clWhite;
	end;
end;

procedure TfmEtrClaim.cxGridDBBandedTableView21FilterOnChanged(Sender: TObject);
begin
	DrawcxGridColumnOnFiltered(Sender);
end;

procedure TfmEtrClaim.cxGridDBBandedTableView21FocusedItemChanged(
  Sender: TcxCustomGridTableView; APrevFocusedItem,
  AFocusedItem: TcxCustomGridTableItem);
begin
	cxGridDBBandedTableView21.Painter.Invalidate;
end;

procedure TfmEtrClaim.cxGridDBBandedTableView17CustomDrawCell(
  Sender: TcxCustomGridTableView; ACanvas: TcxCanvas;
  AViewInfo: TcxGridTableDataCellViewInfo; var ADone: Boolean);
begin
	if AViewInfo.GridRecord.Selected or AViewInfo.GridRecord.Focused then begin
		ACanvas.Brush.Color := clNavy;
		ACanvas.Font.Color := clWhite;
		if AViewInfo.Focused then ACanvas.Brush.Color := clBlue;
	end;
end;

procedure TfmEtrClaim.cxGridDBBandedTableView17CustomDrawColumnHeader(
  Sender: TcxGridTableView; ACanvas: TcxCanvas;
  AViewInfo: TcxGridColumnHeaderViewInfo; var ADone: Boolean);
begin
	if AViewInfo.Column.Focused then begin
		ACanvas.Brush.Color := clNavy;
		ACanvas.Font.Color := clWhite;
	end;
end;

procedure TfmEtrClaim.cxGridDBBandedTableView17FilterOnChanged(Sender: TObject);
begin
	DrawcxGridColumnOnFiltered(Sender);
end;

procedure TfmEtrClaim.cxGridDBBandedTableView17FocusedItemChanged(
  Sender: TcxCustomGridTableView; APrevFocusedItem,
  AFocusedItem: TcxCustomGridTableItem);
begin
	cxGridDBBandedTableView17.Painter.Invalidate;
end;

procedure TfmEtrClaim.cxGridDBBandedTableView17KeyPress(Sender: TObject;
  var Key: Char);
begin
	FilterColumnGridOnKeyPress(cxGridDBBandedTableView17, Key);
end;

procedure TfmEtrClaim.cxGridDBBandedTableView18CustomDrawCell(
  Sender: TcxCustomGridTableView; ACanvas: TcxCanvas;
  AViewInfo: TcxGridTableDataCellViewInfo; var ADone: Boolean);
begin
	if AViewInfo.GridRecord.Selected or AViewInfo.GridRecord.Focused then begin
		ACanvas.Brush.Color := clNavy;
		ACanvas.Font.Color := clWhite;
		if AViewInfo.Focused then ACanvas.Brush.Color := clBlue;
	end;
end;

procedure TfmEtrClaim.cxGridDBBandedTableView18CustomDrawColumnHeader(
  Sender: TcxGridTableView; ACanvas: TcxCanvas;
  AViewInfo: TcxGridColumnHeaderViewInfo; var ADone: Boolean);
begin
	if AViewInfo.Column.Focused then begin
		ACanvas.Brush.Color := clNavy;
		ACanvas.Font.Color := clWhite;
	end;
end;

procedure TfmEtrClaim.cxGridDBBandedTableView18FilterOnChanged(Sender: TObject);
begin
	DrawcxGridColumnOnFiltered(Sender);
end;

procedure TfmEtrClaim.cxGridDBBandedTableView18FocusedItemChanged(
  Sender: TcxCustomGridTableView; APrevFocusedItem,
  AFocusedItem: TcxCustomGridTableItem);
begin
	cxGridDBBandedTableView18.Painter.Invalidate;
end;

procedure TfmEtrClaim.cxGridDBBandedTableView18KeyPress(Sender: TObject;
  var Key: Char);
begin
	FilterColumnGridOnKeyPress(cxGridDBBandedTableView18, Key);
end;

procedure TfmEtrClaim.cxGridDBBandedTableView19CustomDrawCell(
  Sender: TcxCustomGridTableView; ACanvas: TcxCanvas;
  AViewInfo: TcxGridTableDataCellViewInfo; var ADone: Boolean);
begin
	if AViewInfo.GridRecord.Selected or AViewInfo.GridRecord.Focused then begin
		ACanvas.Brush.Color := clNavy;
		ACanvas.Font.Color := clWhite;
		if AViewInfo.Focused then ACanvas.Brush.Color := clBlue;
	end;
end;

procedure TfmEtrClaim.cxGridDBBandedTableView19CustomDrawColumnHeader(
  Sender: TcxGridTableView; ACanvas: TcxCanvas;
  AViewInfo: TcxGridColumnHeaderViewInfo; var ADone: Boolean);
begin
	if AViewInfo.Column.Focused then begin
		ACanvas.Brush.Color := clNavy;
		ACanvas.Font.Color := clWhite;
	end;
end;

procedure TfmEtrClaim.cxGridDBBandedTableView19FilterOnChanged(Sender: TObject);
begin
	DrawcxGridColumnOnFiltered(Sender);
end;

 procedure TfmEtrClaim.cxGridDBBandedTableView19FocusedItemChanged(
  Sender: TcxCustomGridTableView; APrevFocusedItem,
  AFocusedItem: TcxCustomGridTableItem);
begin
	cxGridDBBandedTableView19.Painter.Invalidate;
end;

procedure TfmEtrClaim.cxGridDBBandedTableView19KeyPress(Sender: TObject;
  var Key: Char);
begin
	FilterColumnGridOnKeyPress(cxGridDBBandedTableView19, Key);
end;

procedure TfmEtrClaim.cxGridDBBandedTableView1CustomDrawCell(
  Sender: TcxCustomGridTableView; ACanvas: TcxCanvas;
  AViewInfo: TcxGridTableDataCellViewInfo; var ADone: Boolean);
begin
	if AViewInfo.GridRecord.Selected or AViewInfo.GridRecord.Focused then begin
		ACanvas.Brush.Color := clNavy;
		ACanvas.Font.Color := clWhite;
		if AViewInfo.Focused then ACanvas.Brush.Color := clBlue;
	end;
end;

procedure TfmEtrClaim.cxGridDBBandedTableView1CustomDrawColumnHeader(
  Sender: TcxGridTableView; ACanvas: TcxCanvas;
  AViewInfo: TcxGridColumnHeaderViewInfo; var ADone: Boolean);
begin
	if AViewInfo.Column.Focused then begin
		ACanvas.Brush.Color := clNavy;
		ACanvas.Font.Color := clWhite;
	end;
end;

procedure TfmEtrClaim.cxGridDBBandedTableView1FilterOnChanged(Sender: TObject);
begin
	DrawcxGridColumnOnFiltered(Sender);
end;

procedure TfmEtrClaim.cxGridDBBandedTableView21KeyPress(Sender: TObject; var Key: Char);
begin
	FilterColumnGridOnKeyPress(cxGridDBBandedTableView21, Key);
end;



procedure TfmEtrClaim.cxGridDBBandedTableView15KeyPress(Sender: TObject; var Key: Char);
begin
	FilterColumnGridOnKeyPress(cxGridDBBandedTableView15, Key);
end;

end.
