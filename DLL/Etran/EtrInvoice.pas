unit EtrInvoice;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, ADODB, ComObj, ImageList, StrUtils, ExtCtrls, Menus, Default, DBClient, DateUtils, ImgList,
  cxStyles, cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters, cxContainer, cxEdit, cxCustomData, cxFilter,
  cxData, cxDataStorage, cxDBData, cxCurrencyEdit, dxGDIPlusClasses, cxPC, cxGridLevel, cxGridCustomTableView, cxGridTableView,
  cxGridBandedTableView, cxGridDBBandedTableView, cxClasses, cxGridCustomView,  cxGrid, StdCtrls, cxButtons, cxMaskEdit, cxDropDownEdit, cxCalendar,
  cxTextEdit, cxLabel, dxBar, cxSplitter, dxSkinsCore, dxSkinBlack, dxSkinBlue, dxSkinBlueprint, dxSkinCaramel, dxSkinCoffee, dxSkinDarkRoom,
  dxSkinDarkSide, dxSkinDevExpressDarkStyle, dxSkinDevExpressStyle, dxSkinFoggy, dxSkinGlassOceans, dxSkinHighContrast, dxSkiniMaginary,
  dxSkinLilian, dxSkinLiquidSky, dxSkinLondonLiquidSky, dxSkinMcSkin, dxSkinMetropolis, dxSkinMetropolisDark, dxSkinMoneyTwins,
  dxSkinOffice2007Black, dxSkinOffice2007Blue, dxSkinOffice2007Green, dxSkinOffice2007Pink, dxSkinOffice2007Silver, dxSkinOffice2010Black,
  dxSkinOffice2010Blue, dxSkinOffice2010Silver, dxSkinOffice2013DarkGray, dxSkinOffice2013LightGray, dxSkinOffice2013White, dxSkinPumpkin,
  dxSkinSeven, dxSkinSevenClassic, dxSkinSharp, dxSkinSharpPlus, dxSkinSilver, dxSkinSpringTime, dxSkinStardust, dxSkinSummer2008,
  dxSkinTheAsphaltWorld, dxSkinsDefaultPainters, dxSkinValentine, dxSkinVS2010, dxSkinWhiteprint, dxSkinXmas2008Blue, ComCtrls, dxCore,
  cxDateUtils, dxSkinscxPCPainter, cxNavigator, dxBarBuiltInMenu, dxSkinsdxBarPainter, dxSkinOffice2016Colorful, dxSkinOffice2016Dark,
  dxSkinVisualStudio2013Blue, dxSkinVisualStudio2013Dark, dxSkinVisualStudio2013Light, cxPropertiesStore, cxImageList, dxSkinTheBezier,
  dxDateRanges, dxSkinOffice2019Colorful, dxSkinBasic, dxScrollbarAnnotations,
  dxSkinOffice2019Black, dxSkinOffice2019DarkGray, dxSkinOffice2019White,
  dxSkinWXI;

type
  TfmEtrInvoice = class(TForm)
    ADOEtran: TADOConnection;
    DS_Invoice: TDataSource;
    cxStyleRepository1: TcxStyleRepository;
    cxStyle1: TcxStyle;
    SP_XML_parser_view: TADOStoredProc;
    DS_XML_parser_view: TDataSource;
    SP_XML_parser: TADOStoredProc;
    cxSplitter1: TcxSplitter;
    Panel2: TPanel;
    cxGrid1: TcxGrid;
    cxGrid1DBBandedTableView1: TcxGridDBBandedTableView;
    cxGrid1Level1: TcxGridLevel;
    Panel3: TPanel;
    cxPageControl2: TcxPageControl;
    cxTabSheet3: TcxTabSheet;
    ScrollBox1: TScrollBox;
    GridPanel3: TGridPanel;
    Panel23: TPanel;
    cxLabel24: TcxLabel;
    cxTextEdit_invLastOper: TcxTextEdit;
    cxLabel26: TcxLabel;
    cxTextEdit_invBlankTypeName: TcxTextEdit;
    cxLabel32: TcxLabel;
    cxTextEdit_invFromLoadWay: TcxTextEdit;
    cxLabel28: TcxLabel;
    cxTextEdit_invToLoadWay: TcxTextEdit;
    cxTextEdit_invFromPortCode: TcxTextEdit;
    cxTextEdit_invToPortCode: TcxTextEdit;
    cxTextEdit_invFromPortName: TcxTextEdit;
    cxTextEdit_invToPortName: TcxTextEdit;
    cxLabel69: TcxLabel;
    cxLabel37: TcxLabel;
    cxTextEdit_invSendSpeedName: TcxTextEdit;
    cxLabel70: TcxLabel;
    cxLabel71: TcxLabel;
    cxTextEdit_invPayPlaceName: TcxTextEdit;
    cxLabel72: TcxLabel;
    cxTextEdit_invPayFormName: TcxTextEdit;
    cxTextEdit_invPlanContTonnage: TcxTextEdit;
    cxLabel73: TcxLabel;
    cxTextEdit_invContPlanSizeBig: TcxTextEdit;
    cxLabel74: TcxLabel;
    cxTextEdit_invPlanContCount: TcxTextEdit;
    cxLabel75: TcxLabel;
    cxTextEdit_invPlanContOwnerTypeName: TcxTextEdit;
    cxLabel76: TcxLabel;
    cxLabel77: TcxLabel;
    cxLabel78: TcxLabel;
    cxLabel79: TcxLabel;
    cxLabel80: TcxLabel;
    cxTextEdit_invRespPerson: TcxTextEdit;
    cxTextEdit_invLoadAssetsName: TcxTextEdit;
    cxTextEdit_invAnnounceValue: TcxTextEdit;
    cxTextEdit_invLoadTypeName: TcxTextEdit;
    cxLabel81: TcxLabel;
    cxTextEdit_invPayPlaceRwName: TcxTextEdit;
    cxTextEdit_invPayPlaceRwCode: TcxTextEdit;
    cxLabel103: TcxLabel;
    cxLabel104: TcxLabel;
    cxLabel105: TcxLabel;
    cxLabel106: TcxLabel;
    cxTextEdit_invDepCond: TcxTextEdit;
    cxTextEdit_invDepSec: TcxTextEdit;
    cxTextEdit_invDepArc: TcxTextEdit;
    cxTextEdit_invDepPart: TcxTextEdit;
    cxLabel107: TcxLabel;
    Panel24: TPanel;
    cxLabel82: TcxLabel;
    cxTextEdit_invVizaNumber: TcxTextEdit;
    cxLabel83: TcxLabel;
    cxTextEdit_invVizaOrg: TcxTextEdit;
    cxLabel84: TcxLabel;
    cxTextEdit_invVizaPerson: TcxTextEdit;
    cxLabel85: TcxLabel;
    cxTextEdit_invVizaPost: TcxTextEdit;
    cxLabel86: TcxLabel;
    cxLabel87: TcxLabel;
    cxLabel88: TcxLabel;
    cxLabel89: TcxLabel;
    cxTextEdit_invVizaNote: TcxTextEdit;
    cxTextEdit_invDateExpire: TcxTextEdit;
    cxTextEdit_invScaleTypeName: TcxTextEdit;
    cxTextEdit_invScalePersonName: TcxTextEdit;
    cxTextEdit_invScalePrecision: TcxTextEdit;
    cxTextEdit_invCheckDepName: TcxTextEdit;
    cxTextEdit_invDeplPerson: TcxTextEdit;
    cxTextEdit_invDepNormDocName: TcxTextEdit;
    cxTextEdit_invFIOAccept: TcxTextEdit;
    cxTextEdit_invSignRouteNumCirc: TcxTextEdit;
    cxTextEdit_invRouteNumCirc: TcxTextEdit;
    cxTextEdit_invRouteName: TcxTextEdit;
    cxLabel90: TcxLabel;
    cxLabel91: TcxLabel;
    cxLabel92: TcxLabel;
    cxLabel93: TcxLabel;
    cxLabel94: TcxLabel;
    cxLabel95: TcxLabel;
    cxLabel96: TcxLabel;
    cxLabel97: TcxLabel;
    cxLabel98: TcxLabel;
    cxLabel99: TcxLabel;
    cxLabel100: TcxLabel;
    cxLabel101: TcxLabel;
    cxTextEdit_invRouteTypeName: TcxTextEdit;
    cxTextEdit_invGoodsCashier: TcxTextEdit;
    cxTextEdit_invGoodsCashierPost: TcxTextEdit;
    cxTextEdit_invNum410: TcxTextEdit;
    cxLabel102: TcxLabel;
    cxTextEdit_invKPZ: TcxTextEdit;
    cxTabSheet4: TcxTabSheet;
    cxGrid13: TcxGrid;
    cxGridDBBandedTableView11: TcxGridDBBandedTableView;
    cxGridDBBandedTableView11operDate: TcxGridDBBandedColumn;
    cxGridDBBandedTableView11operFactDate: TcxGridDBBandedColumn;
    cxGridDBBandedTableView11operOrgId: TcxGridDBBandedColumn;
    cxGridDBBandedTableView11operOrgName: TcxGridDBBandedColumn;
    cxGridDBBandedTableView11operPost: TcxGridDBBandedColumn;
    cxGridDBBandedTableView11operPerson: TcxGridDBBandedColumn;
    cxGridDBBandedTableView11operText: TcxGridDBBandedColumn;
    cxGridDBBandedTableView11operResult: TcxGridDBBandedColumn;
    cxGridDBBandedTableView11operRemark: TcxGridDBBandedColumn;
    cxGridDBBandedTableView11operWorkPlace: TcxGridDBBandedColumn;
    cxGridDBBandedTableView11operOperID: TcxGridDBBandedColumn;
    cxGridLevel11: TcxGridLevel;
    cxTabSheet14: TcxTabSheet;
    cxGrid12: TcxGrid;
    cxGridDBBandedTableView10: TcxGridDBBandedTableView;
    cxGridDBBandedTableView10invoiceID: TcxGridDBBandedColumn;
    cxGridDBBandedTableView10freightCode: TcxGridDBBandedColumn;
    cxGridDBBandedTableView10freightName: TcxGridDBBandedColumn;
    cxGridDBBandedTableView10freightExactName: TcxGridDBBandedColumn;
    cxGridDBBandedTableView10freightGNGID: TcxGridDBBandedColumn;
    cxGridDBBandedTableView10freightGNGCode: TcxGridDBBandedColumn;
    cxGridDBBandedTableView10freightGNGName: TcxGridDBBandedColumn;
    cxGridDBBandedTableView10freightPackTypeID: TcxGridDBBandedColumn;
    cxGridDBBandedTableView10freightPackTypeName: TcxGridDBBandedColumn;
    cxGridDBBandedTableView10freightPocketCount: TcxGridDBBandedColumn;
    cxGridDBBandedTableView10freightPackageCount: TcxGridDBBandedColumn;
    cxGridDBBandedTableView10freightWeight: TcxGridDBBandedColumn;
    cxGridDBBandedTableView10freightWeightStdGross: TcxGridDBBandedColumn;
    cxGridDBBandedTableView10freightWeightStdNet: TcxGridDBBandedColumn;
    cxGridDBBandedTableView10freightMaxLength: TcxGridDBBandedColumn;
    cxGridDBBandedTableView10freightMaxWidth: TcxGridDBBandedColumn;
    cxGridDBBandedTableView10freightMaxHeight: TcxGridDBBandedColumn;
    cxGridDBBandedTableView10freightSendersMark: TcxGridDBBandedColumn;
    cxGridDBBandedTableView10freightDangerSignID: TcxGridDBBandedColumn;
    cxGridDBBandedTableView10freightDangerSignName: TcxGridDBBandedColumn;
    cxGridDBBandedTableView10freightDangerID: TcxGridDBBandedColumn;
    cxGridDBBandedTableView10freightDangerName: TcxGridDBBandedColumn;
    cxGridDBBandedTableView10freightDangerCodeRus: TcxGridDBBandedColumn;
    cxGridDBBandedTableView10freightDangerCodeOON: TcxGridDBBandedColumn;
    cxGridDBBandedTableView10freightAccidentCardID: TcxGridDBBandedColumn;
    cxGridDBBandedTableView10freightRealWeight: TcxGridDBBandedColumn;
    cxGridDBBandedTableView10freightAccidentCard: TcxGridDBBandedColumn;
    cxGridDBBandedTableView10freightAdditional: TcxGridDBBandedColumn;
    cxGridLevel10: TcxGridLevel;
    cxTabSheet5: TcxTabSheet;
    cxGrid3: TcxGrid;
    cxGrid3DBBandedTableView1: TcxGridDBBandedTableView;
    cxGrid3DBBandedTableView1invoiceID: TcxGridDBBandedColumn;
    cxGrid3DBBandedTableView1distCountryCode: TcxGridDBBandedColumn;
    cxGrid3DBBandedTableView1distCountryName: TcxGridDBBandedColumn;
    cxGrid3DBBandedTableView1distStationCode: TcxGridDBBandedColumn;
    cxGrid3DBBandedTableView1distStationName: TcxGridDBBandedColumn;
    cxGrid3DBBandedTableView1distPortCode: TcxGridDBBandedColumn;
    cxGrid3DBBandedTableView1distPortName: TcxGridDBBandedColumn;
    cxGrid3DBBandedTableView1distLoadWay: TcxGridDBBandedColumn;
    cxGrid3DBBandedTableView1distTrackTypeID: TcxGridDBBandedColumn;
    cxGrid3DBBandedTableView1distTrackTypeName: TcxGridDBBandedColumn;
    cxGrid3DBBandedTableView1distTranspTypeID: TcxGridDBBandedColumn;
    cxGrid3DBBandedTableView1distTranspTypeName: TcxGridDBBandedColumn;
    cxGrid3DBBandedTableView1distMinWay: TcxGridDBBandedColumn;
    cxGrid3DBBandedTableView1distRecipID: TcxGridDBBandedColumn;
    cxGrid3DBBandedTableView1distRecipOKPO: TcxGridDBBandedColumn;
    cxGrid3DBBandedTableView1distRecipName: TcxGridDBBandedColumn;
    cxGrid3DBBandedTableView1distRecipAddressID: TcxGridDBBandedColumn;
    cxGrid3DBBandedTableView1distRecipAddress: TcxGridDBBandedColumn;
    cxGrid3DBBandedTableView1distRecipTGNL: TcxGridDBBandedColumn;
    cxGrid3DBBandedTableView1distPayerID: TcxGridDBBandedColumn;
    cxGrid3DBBandedTableView1distPayerCode: TcxGridDBBandedColumn;
    cxGrid3DBBandedTableView1distPayerName: TcxGridDBBandedColumn;
    cxGrid3DBBandedTableView1distFRWSubCode: TcxGridDBBandedColumn;
    cxGrid3DBBandedTableView1distSign: TcxGridDBBandedColumn;
    cxGrid3Level1: TcxGridLevel;
    cxTabSheet6: TcxTabSheet;
    cxGrid4: TcxGrid;
    cxGridDBBandedTableView2: TcxGridDBBandedTableView;
    cxGridDBBandedTableView2invoiceID: TcxGridDBBandedColumn;
    cxGridDBBandedTableView2spcTranspClauseID: TcxGridDBBandedColumn;
    cxGridDBBandedTableView2spcTranspClauseDesc: TcxGridDBBandedColumn;
    cxGridDBBandedTableView2spcCustomText: TcxGridDBBandedColumn;
    cxGridLevel2: TcxGridLevel;
    cxTabSheet7: TcxTabSheet;
    cxGrid5: TcxGrid;
    cxGridDBBandedTableView3: TcxGridDBBandedTableView;
    cxGridDBBandedTableView3invoiceID: TcxGridDBBandedColumn;
    cxGridDBBandedTableView3docTypeID: TcxGridDBBandedColumn;
    cxGridDBBandedTableView3docNumber: TcxGridDBBandedColumn;
    cxGridLevel3: TcxGridLevel;
    cxTabSheet8: TcxTabSheet;
    cxGrid6: TcxGrid;
    cxGridDBBandedTableView4: TcxGridDBBandedTableView;
    cxGridDBBandedTableView4invoiceID: TcxGridDBBandedColumn;
    cxGridDBBandedTableView4devTypeID: TcxGridDBBandedColumn;
    cxGridDBBandedTableView4devTypeName: TcxGridDBBandedColumn;
    cxGridDBBandedTableView4devNumber: TcxGridDBBandedColumn;
    cxGridDBBandedTableView4devOwnerCountryCode: TcxGridDBBandedColumn;
    cxGridDBBandedTableView4devOwnerCountryName: TcxGridDBBandedColumn;
    cxGridDBBandedTableView4devOwnerTypeID: TcxGridDBBandedColumn;
    cxGridDBBandedTableView4devOwnerTypeName: TcxGridDBBandedColumn;
    cxGridDBBandedTableView4devOwnerOKPO: TcxGridDBBandedColumn;
    cxGridDBBandedTableView4devOwnerName: TcxGridDBBandedColumn;
    cxGridDBBandedTableView4devQuantity: TcxGridDBBandedColumn;
    cxGridDBBandedTableView4devReturn: TcxGridDBBandedColumn;
    cxGridLevel4: TcxGridLevel;
    cxTabSheet9: TcxTabSheet;
    cxGrid7: TcxGrid;
    cxGridDBBandedTableView5: TcxGridDBBandedTableView;
    cxGridDBBandedTableView5invoiceID: TcxGridDBBandedColumn;
    cxGridDBBandedTableView5contNumber: TcxGridDBBandedColumn;
    cxGridDBBandedTableView5contTonnage: TcxGridDBBandedColumn;
    cxGridDBBandedTableView5contCarOrder: TcxGridDBBandedColumn;
    cxGridDBBandedTableView5contTypeBig: TcxGridDBBandedColumn;
    cxGridDBBandedTableView5contTypeBigName: TcxGridDBBandedColumn;
    cxGridDBBandedTableView5contSizeBig: TcxGridDBBandedColumn;
    cxGridDBBandedTableView5contWidthFoot: TcxGridDBBandedColumn;
    cxGridDBBandedTableView5contWeightDep: TcxGridDBBandedColumn;
    cxGridDBBandedTableView5contPlacesCount: TcxGridDBBandedColumn;
    cxGridDBBandedTableView5contWeightGross: TcxGridDBBandedColumn;
    cxGridDBBandedTableView5contWeightNet: TcxGridDBBandedColumn;
    cxGridDBBandedTableView5contVolume: TcxGridDBBandedColumn;
    cxGridDBBandedTableView5contOwnerCountryCode: TcxGridDBBandedColumn;
    cxGridDBBandedTableView5contOwnerCountryName: TcxGridDBBandedColumn;
    cxGridDBBandedTableView5contOwnerTypeID: TcxGridDBBandedColumn;
    cxGridDBBandedTableView5contOwnerTypeName: TcxGridDBBandedColumn;
    cxGridDBBandedTableView5contOwnerOKPO: TcxGridDBBandedColumn;
    cxGridDBBandedTableView5contOwnerName: TcxGridDBBandedColumn;
    cxGridLevel5: TcxGridLevel;
    cxTabSheet10: TcxTabSheet;
    cxGrid8: TcxGrid;
    cxGridDBBandedTableView6: TcxGridDBBandedTableView;
    cxGridDBBandedTableView6invoiceID: TcxGridDBBandedColumn;
    cxGridDBBandedTableView6carTypeID: TcxGridDBBandedColumn;
    cxGridDBBandedTableView6carTypeCode: TcxGridDBBandedColumn;
    cxGridDBBandedTableView6carTypeName: TcxGridDBBandedColumn;
    cxGridDBBandedTableView6carNumber: TcxGridDBBandedColumn;
    cxGridDBBandedTableView6carOrder: TcxGridDBBandedColumn;
    cxGridDBBandedTableView6carOwnerCountryCode: TcxGridDBBandedColumn;
    cxGridDBBandedTableView6carOwnerCountryName: TcxGridDBBandedColumn;
    cxGridDBBandedTableView6carOwnerTypeID: TcxGridDBBandedColumn;
    cxGridDBBandedTableView6carOwnerTypeName: TcxGridDBBandedColumn;
    cxGridDBBandedTableView6carOwnerOKPO: TcxGridDBBandedColumn;
    cxGridDBBandedTableView6carOwnerName: TcxGridDBBandedColumn;
    cxGridDBBandedTableView6carPlacesCount: TcxGridDBBandedColumn;
    cxGridDBBandedTableView6carTonnage: TcxGridDBBandedColumn;
    cxGridDBBandedTableView6carAxles: TcxGridDBBandedColumn;
    cxGridDBBandedTableView6carVolume: TcxGridDBBandedColumn;
    cxGridDBBandedTableView6carWeightDep: TcxGridDBBandedColumn;
    cxGridDBBandedTableView6carWeightDepReal: TcxGridDBBandedColumn;
    cxGridDBBandedTableView6carWeightGross: TcxGridDBBandedColumn;
    cxGridDBBandedTableView6carWeightNet: TcxGridDBBandedColumn;
    cxGridDBBandedTableView6carWeightAddDev: TcxGridDBBandedColumn;
    cxGridDBBandedTableView6carPriorFreightCode: TcxGridDBBandedColumn;
    cxGridDBBandedTableView6carPriorFreightName: TcxGridDBBandedColumn;
    cxGridDBBandedTableView6carGuideCount: TcxGridDBBandedColumn;
    cxGridDBBandedTableView6carOutsizeCode: TcxGridDBBandedColumn;
    cxGridDBBandedTableView6carFrameWeight: TcxGridDBBandedColumn;
    cxGridDBBandedTableView6carFrameWagNum: TcxGridDBBandedColumn;
    cxGridDBBandedTableView6carTopHeight: TcxGridDBBandedColumn;
    cxGridDBBandedTableView6carMainShtabQuantity: TcxGridDBBandedColumn;
    cxGridDBBandedTableView6carMainShtabHeight: TcxGridDBBandedColumn;
    cxGridDBBandedTableView6carHeadShtabQuantity: TcxGridDBBandedColumn;
    cxGridDBBandedTableView6carLiquidTemperature: TcxGridDBBandedColumn;
    cxGridDBBandedTableView6carLiquidHeight: TcxGridDBBandedColumn;
    cxGridDBBandedTableView6carLiquidDensity: TcxGridDBBandedColumn;
    cxGridDBBandedTableView6carLiquidVolume: TcxGridDBBandedColumn;
    cxGridDBBandedTableView6carTankType: TcxGridDBBandedColumn;
    cxGridDBBandedTableView6carRefNum: TcxGridDBBandedColumn;
    cxGridDBBandedTableView6carRefCount: TcxGridDBBandedColumn;
    cxGridDBBandedTableView6carRolls: TcxGridDBBandedColumn;
    cxGridDBBandedTableView6carConnectCode: TcxGridDBBandedColumn;
    cxGridDBBandedTableView6carIsCover: TcxGridDBBandedColumn;
    cxGridDBBandedTableView6carSign: TcxGridDBBandedColumn;
    cxGridLevel6: TcxGridLevel;
    cxTabSheet11: TcxTabSheet;
    cxGrid9: TcxGrid;
    cxGridDBBandedTableView7: TcxGridDBBandedTableView;
    cxGridDBBandedTableView7invoiceID: TcxGridDBBandedColumn;
    cxGridDBBandedTableView7dueTypeID: TcxGridDBBandedColumn;
    cxGridDBBandedTableView7dueType: TcxGridDBBandedColumn;
    cxGridDBBandedTableView7carNumber: TcxGridDBBandedColumn;
    cxGridDBBandedTableView7contNumber: TcxGridDBBandedColumn;
    cxGridDBBandedTableView7dueDistanceName: TcxGridDBBandedColumn;
    cxGridDBBandedTableView7dueCalcDistanceName: TcxGridDBBandedColumn;
    cxGridDBBandedTableView7distMinWay: TcxGridDBBandedColumn;
    cxGridDBBandedTableView7dueWeightCalc: TcxGridDBBandedColumn;
    cxGridDBBandedTableView7dueAmount: TcxGridDBBandedColumn;
    cxGridDBBandedTableView7dueCurrencyId: TcxGridDBBandedColumn;
    cxGridDBBandedTableView7dueCurrency: TcxGridDBBandedColumn;
    cxGridDBBandedTableView7dueScheme: TcxGridDBBandedColumn;
    cxGridDBBandedTableView7dueTarifRate: TcxGridDBBandedColumn;
    cxGridDBBandedTableView7dueSumInfr: TcxGridDBBandedColumn;
    cxGridDBBandedTableView7dueSchemeNumWag: TcxGridDBBandedColumn;
    cxGridDBBandedTableView7dueTarifRateWag: TcxGridDBBandedColumn;
    cxGridDBBandedTableView7dueSumWag: TcxGridDBBandedColumn;
    cxGridDBBandedTableView7dueTarifCoef: TcxGridDBBandedColumn;
    cxGridDBBandedTableView7dueTaxSum: TcxGridDBBandedColumn;
    cxGridDBBandedTableView7dueTaxAble: TcxGridDBBandedColumn;
    cxGridDBBandedTableView7dueTaxVal: TcxGridDBBandedColumn;
    cxGridDBBandedTableView7dueFreightTarifClass: TcxGridDBBandedColumn;
    cxGridDBBandedTableView7dueTarifDiscount: TcxGridDBBandedColumn;
    cxGridDBBandedTableView7dueTarifPercent: TcxGridDBBandedColumn;
    cxGridDBBandedTableView7dueTarifCode: TcxGridDBBandedColumn;
    cxGridDBBandedTableView7dueCurrencyRate: TcxGridDBBandedColumn;
    cxGridLevel7: TcxGridLevel;
    cxTabSheet12: TcxTabSheet;
    cxGrid10: TcxGrid;
    cxGridDBBandedTableView8: TcxGridDBBandedTableView;
    cxGridDBBandedTableView8invoiceID: TcxGridDBBandedColumn;
    cxGridDBBandedTableView8dueTypeID: TcxGridDBBandedColumn;
    cxGridDBBandedTableView8dueType: TcxGridDBBandedColumn;
    cxGridDBBandedTableView8carNumber: TcxGridDBBandedColumn;
    cxGridDBBandedTableView8contNumber: TcxGridDBBandedColumn;
    cxGridDBBandedTableView8dueDistanceName: TcxGridDBBandedColumn;
    cxGridDBBandedTableView8dueCalcDistanceName: TcxGridDBBandedColumn;
    cxGridDBBandedTableView8distMinWay: TcxGridDBBandedColumn;
    cxGridDBBandedTableView8dueWeightCalc: TcxGridDBBandedColumn;
    cxGridDBBandedTableView8dueAmount: TcxGridDBBandedColumn;
    cxGridDBBandedTableView8dueCurrencyId: TcxGridDBBandedColumn;
    cxGridDBBandedTableView8dueCurrency: TcxGridDBBandedColumn;
    cxGridDBBandedTableView8dueScheme: TcxGridDBBandedColumn;
    cxGridDBBandedTableView8dueTarifRate: TcxGridDBBandedColumn;
    cxGridDBBandedColumn24: TcxGridDBBandedColumn;
    cxGridDBBandedColumn25: TcxGridDBBandedColumn;
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
    cxGridLevel8: TcxGridLevel;
    cxTabSheet13: TcxTabSheet;
    cxGrid11: TcxGrid;
    cxGridDBBandedTableView9: TcxGridDBBandedTableView;
    cxGridDBBandedTableView9invoiceID: TcxGridDBBandedColumn;
    cxGridDBBandedTableView9jntDate: TcxGridDBBandedColumn;
    cxGridDBBandedTableView9jntStationCode: TcxGridDBBandedColumn;
    cxGridDBBandedTableView9jntStationName: TcxGridDBBandedColumn;
    cxGridLevel9: TcxGridLevel;
    cxTabSheet27: TcxTabSheet;
    cxGrid28: TcxGrid;
    cxGridDBBandedTableView25: TcxGridDBBandedTableView;
    cxGridDBBandedColumn40: TcxGridDBBandedColumn;
    cxGridDBBandedColumn41: TcxGridDBBandedColumn;
    cxGridDBBandedColumn42: TcxGridDBBandedColumn;
    cxGridDBBandedColumn49: TcxGridDBBandedColumn;
    cxGridDBBandedColumn51: TcxGridDBBandedColumn;
    cxGridDBBandedColumn54: TcxGridDBBandedColumn;
    cxGridDBBandedColumn60: TcxGridDBBandedColumn;
    cxGridDBBandedColumn61: TcxGridDBBandedColumn;
    cxGridDBBandedColumn66: TcxGridDBBandedColumn;
    cxGridLevel25: TcxGridLevel;
    Panel31: TPanel;
    cxLabel109: TcxLabel;
    cxSplitter4: TcxSplitter;
    cxSplitter5: TcxSplitter;
    cxSplitter6: TcxSplitter;
    cxSplitter7: TcxSplitter;
    cxSplitter8: TcxSplitter;
    GridPanel2: TGridPanel;
    Panel9: TPanel;
    cxLabel35: TcxLabel;
    cxTextEdit_invoiceID: TcxTextEdit;
    cxLabel21: TcxLabel;
    cxTextEdit_invNumber: TcxTextEdit;
    cxLabel22: TcxLabel;
    cxTextEdit_invUniqueNumber: TcxTextEdit;
    Panel10: TPanel;
    cxLabel25: TcxLabel;
    cxTextEdit_invTypeName: TcxTextEdit;
    cxLabel36: TcxLabel;
    cxTextEdit_invSendKindName: TcxTextEdit;
    cxLabel23: TcxLabel;
    cxTextEdit_invoiceState: TcxTextEdit;
    Panel12: TPanel;
    cxLabel38: TcxLabel;
    cxLabel39: TcxLabel;
    cxLabel40: TcxLabel;
    cxTextEdit_invDispKindID: TcxTextEdit;
    cxTextEdit_invIxTariffCode: TcxTextEdit;
    cxTextEdit_invFRWSubCode: TcxTextEdit;
    GridPanel5: TGridPanel;
    Panel17: TPanel;
    cxLabel53: TcxLabel;
    cxLabel54: TcxLabel;
    cxLabel52: TcxLabel;
    cxTextEdit_invSenderName: TcxTextEdit;
    cxTextEdit_invSenderAddress: TcxTextEdit;
    cxTextEdit_invSenderOKPO: TcxTextEdit;
    cxTextEdit_invSenderTGNL: TcxTextEdit;
    Panel18: TPanel;
    cxLabel56: TcxLabel;
    cxLabel57: TcxLabel;
    cxLabel55: TcxLabel;
    cxTextEdit_invRecipName: TcxTextEdit;
    cxTextEdit_invRecipAddress: TcxTextEdit;
    cxTextEdit_invRecipOKPO: TcxTextEdit;
    cxTextEdit_invRecipTGNL: TcxTextEdit;
    Panel19: TPanel;
    cxLabel59: TcxLabel;
    cxLabel60: TcxLabel;
    cxLabel61: TcxLabel;
    cxLabel58: TcxLabel;
    cxTextEdit_invPayerName: TcxTextEdit;
    cxTextEdit_invPayerCode: TcxTextEdit;
    cxTextEdit_invPayerBank: TcxTextEdit;
    cxTextEdit_invPayerAccount: TcxTextEdit;
    GridPanel6: TGridPanel;
    Panel7: TPanel;
    cxLabel27: TcxLabel;
    cxLabel34: TcxLabel;
    cxLabel33: TcxLabel;
    cxTextEdit_invFromCountryName: TcxTextEdit;
    cxTextEdit_invFromCountryCode: TcxTextEdit;
    cxTextEdit_invFromPointCode: TcxTextEdit;
    cxTextEdit_invFromPointName: TcxTextEdit;
    cxTextEdit_invFromStationName: TcxTextEdit;
    cxTextEdit_invFromStationCode: TcxTextEdit;
    Panel8: TPanel;
    cxLabel31: TcxLabel;
    cxLabel30: TcxLabel;
    cxTextEdit_invToCountryCode: TcxTextEdit;
    cxTextEdit_invToCountryName: TcxTextEdit;
    cxTextEdit_invToPointName: TcxTextEdit;
    cxTextEdit_invToPointCode: TcxTextEdit;
    cxLabel29: TcxLabel;
    cxTextEdit_invToStationName: TcxTextEdit;
    cxTextEdit_invToStationCode: TcxTextEdit;
    Panel13: TPanel;
    cxLabel41: TcxLabel;
    cxLabel42: TcxLabel;
    cxTextEdit_freightGNGName: TcxTextEdit;
    cxTextEdit_freightName: TcxTextEdit;
    cxTextEdit_freightCode: TcxTextEdit;
    cxTextEdit_freightGNGCode: TcxTextEdit;
    GridPanel7: TGridPanel;
    Panel15: TPanel;
    cxLabel45: TcxLabel;
    cxLabel44: TcxLabel;
    cxLabel43: TcxLabel;
    cxTextEdit_invDateReady: TcxTextEdit;
    cxTextEdit_invDateDeparture: TcxTextEdit;
    cxTextEdit_invDateCustom: TcxTextEdit;
    Panel14: TPanel;
    cxLabel46: TcxLabel;
    cxTextEdit_invDateRegister: TcxTextEdit;
    cxLabel47: TcxLabel;
    cxLabel48: TcxLabel;
    cxTextEdit_invDateArrive: TcxTextEdit;
    cxTextEdit_invDateDelivery: TcxTextEdit;
    Panel16: TPanel;
    cxLabel49: TcxLabel;
    cxLabel50: TcxLabel;
    cxLabel51: TcxLabel;
    cxTextEdit_invFactDateAccept: TcxTextEdit;
    cxTextEdit_invFactDateToLoad: TcxTextEdit;
    cxTextEdit_invVizaDate: TcxTextEdit;
    GridPanel8: TGridPanel;
    Panel20: TPanel;
    cxLabel64: TcxLabel;
    cxLabel63: TcxLabel;
    cxTextEdit_invClaimNumber: TcxTextEdit;
    cxTextEdit_invOtprNum: TcxTextEdit;
    cxTextEdit_invPodNum: TcxTextEdit;
    Panel21: TPanel;
    cxLabel65: TcxLabel;
    cxTextEdit_invPlanCarTypeName: TcxTextEdit;
    cxLabel62: TcxLabel;
    cxTextEdit_invPlanCarCount: TcxTextEdit;
    cxLabel66: TcxLabel;
    cxTextEdit_invPlanCarOwnerTypeName: TcxTextEdit;
    Panel22: TPanel;
    cxLabel67: TcxLabel;
    cxTextEdit_invPlanOutsizeCode: TcxTextEdit;
    cxLabel68: TcxLabel;
    cxTextEdit_invDateLoad: TcxTextEdit;
    ClientDataSet1: TClientDataSet;
    ClientDataSet1invoiceID: TStringField;
    ClientDataSet1invNumber: TStringField;
    ClientDataSet1invUniqueNumber: TStringField;
    ClientDataSet1invoiceState: TStringField;
    ClientDataSet1invLastOper: TDateTimeField;
    ClientDataSet1invTypeName: TStringField;
    ClientDataSet1invBlankTypeName: TStringField;
    ClientDataSet1invFromCountryCode: TStringField;
    ClientDataSet1invFromCountryName: TStringField;
    ClientDataSet1invFromPointCode: TStringField;
    ClientDataSet1invFromPointName: TStringField;
    ClientDataSet1invFromStationCode: TStringField;
    ClientDataSet1invFromStationName: TStringField;
    ClientDataSet1invFromLoadWay: TStringField;
    ClientDataSet1invToCountryName: TStringField;
    ClientDataSet1invToCountryCode: TStringField;
    ClientDataSet1invToPointCode: TStringField;
    ClientDataSet1invToPointName: TStringField;
    ClientDataSet1invToStationName: TStringField;
    ClientDataSet1invToStationCode: TStringField;
    ClientDataSet1invToLoadWay: TStringField;
    ClientDataSet1invSendKindName: TStringField;
    ClientDataSet1cnt_invDistance: TIntegerField;
    ClientDataSet1cnt_invSPC: TIntegerField;
    ClientDataSet1cnt_invDOC: TIntegerField;
    ClientDataSet1cnt_invDev: TIntegerField;
    ClientDataSet1cnt_invCont: TIntegerField;
    ClientDataSet1cnt_invCar: TIntegerField;
    ClientDataSet1cnt_invDue: TIntegerField;
    ClientDataSet1cnt_invDueArrive: TIntegerField;
    ClientDataSet1cnt_invJoint: TIntegerField;
    ClientDataSet1cnt_invFreight: TIntegerField;
    ClientDataSet1freightCode: TStringField;
    ClientDataSet1freightName: TStringField;
    ClientDataSet1freightGNGCode: TStringField;
    ClientDataSet1freightGNGName: TStringField;
    ClientDataSet1invDateReady: TDateTimeField;
    ClientDataSet1invDateDeparture: TDateTimeField;
    ClientDataSet1invDateCustom: TDateTimeField;
    ClientDataSet1invDateArrive: TDateTimeField;
    ClientDataSet1invDateDelivery: TDateTimeField;
    ClientDataSet1invDateRegister: TDateTimeField;
    ClientDataSet1invFromPortCode: TStringField;
    ClientDataSet1invFromPortName: TStringField;
    ClientDataSet1invToPortCode: TStringField;
    ClientDataSet1invToPortName: TStringField;
    ClientDataSet1invSenderOKPO: TStringField;
    ClientDataSet1invSenderName: TStringField;
    ClientDataSet1invSenderAddress: TStringField;
    ClientDataSet1invSenderTGNL: TStringField;
    ClientDataSet1invRecipOKPO: TStringField;
    ClientDataSet1invRecipName: TStringField;
    ClientDataSet1invRecipAddress: TStringField;
    ClientDataSet1invRecipTGNL: TStringField;
    ClientDataSet1invPayerCode: TStringField;
    ClientDataSet1invPayerName: TStringField;
    ClientDataSet1invPayerAccount: TStringField;
    ClientDataSet1invPayerBank: TStringField;
    ClientDataSet1invClaimNumber: TStringField;
    ClientDataSet1invOtprNum: TStringField;
    ClientDataSet1invPodNum: TStringField;
    ClientDataSet1invSendSpeedName: TStringField;
    ClientDataSet1invPayPlaceName: TStringField;
    ClientDataSet1invPayFormName: TStringField;
    ClientDataSet1invIxTariffCode: TStringField;
    ClientDataSet1invPlanCarTypeCode: TStringField;
    ClientDataSet1invPlanCarTypeName: TStringField;
    ClientDataSet1invPlanCarCount: TStringField;
    ClientDataSet1invPlanCarOwnerTypeName: TStringField;
    ClientDataSet1invPlanContTonnage: TStringField;
    ClientDataSet1invContPlanSizeBig: TStringField;
    ClientDataSet1invPlanContCount: TStringField;
    ClientDataSet1invPlanContOwnerTypeName: TStringField;
    ClientDataSet1invLoadTypeName: TStringField;
    ClientDataSet1invAnnounceValue: TStringField;
    ClientDataSet1invLoadAssetsName: TStringField;
    ClientDataSet1invPlanOutsizeCode: TStringField;
    ClientDataSet1invDispKindID: TStringField;
    ClientDataSet1invRespPerson: TStringField;
    ClientDataSet1invPayPlaceRwCode: TStringField;
    ClientDataSet1invPayPlaceRwName: TStringField;
    ClientDataSet1invFRWSubCode: TStringField;
    ClientDataSet1invVizaNumber: TStringField;
    ClientDataSet1invVizaDate: TStringField;
    ClientDataSet1invVizaOrg: TStringField;
    ClientDataSet1invVizaPerson: TStringField;
    ClientDataSet1invVizaPost: TStringField;
    ClientDataSet1invVizaNote: TStringField;
    ClientDataSet1invDateExpire: TStringField;
    ClientDataSet1invScaleTypeName: TStringField;
    ClientDataSet1invScalePersonName: TStringField;
    ClientDataSet1invScalePrecision: TStringField;
    ClientDataSet1invCheckDepName: TStringField;
    ClientDataSet1invDeplPerson: TStringField;
    ClientDataSet1invDepNormDocName: TStringField;
    ClientDataSet1invDepPart: TStringField;
    ClientDataSet1invDepArc: TStringField;
    ClientDataSet1invDepSec: TStringField;
    ClientDataSet1invDepCond: TStringField;
    ClientDataSet1invDateLoad: TStringField;
    ClientDataSet1invFactDateToLoad: TStringField;
    ClientDataSet1invFactDateAccept: TStringField;
    ClientDataSet1invFIOAccept: TStringField;
    ClientDataSet1invSignRouteNumCirc: TStringField;
    ClientDataSet1invRouteNumCirc: TStringField;
    ClientDataSet1invRouteName: TStringField;
    ClientDataSet1invRouteTypeName: TStringField;
    ClientDataSet1invGoodsCashier: TStringField;
    ClientDataSet1invGoodsCashierPost: TStringField;
    ClientDataSet1invNum410: TStringField;
    ClientDataSet1invKPZ: TStringField;
    ClientDataSet1xml_reply_id: TIntegerField;
    ClientDataSet1invoice_id: TIntegerField;
    ClientDataSet1cnt_invDueEnter: TIntegerField;
    dxBarManager1: TdxBarManager;
    dxBarManager1Bar1: TdxBar;
    dxBarButton1: TdxBarButton;
    dxBarButton2: TdxBarButton;
    dxBarPopupMenu2: TdxBarPopupMenu;
    dxBarButton3: TdxBarButton;
    dxBarSubItem1: TdxBarSubItem;
    dxBarButton4: TdxBarButton;
    dxBarButton5: TdxBarButton;
    dxBarButton6: TdxBarButton;
    dxBarButton7: TdxBarButton;
    dxBarPopupMenu3: TdxBarPopupMenu;
    dxBarButton8: TdxBarButton;
    dxBarSubItem2: TdxBarSubItem;
    dxBarButton9: TdxBarButton;
    dxBarButton10: TdxBarButton;
    dxBarButton11: TdxBarButton;
    dxBarButton12: TdxBarButton;
    dxBarPopupMenu4: TdxBarPopupMenu;
    dxBarButton13: TdxBarButton;
    dxBarSubItem3: TdxBarSubItem;
    dxBarButton14: TdxBarButton;
    dxBarButton15: TdxBarButton;
    dxBarButton16: TdxBarButton;
    dxBarButton17: TdxBarButton;
    dxBarPopupMenu5: TdxBarPopupMenu;
    dxBarButton18: TdxBarButton;
    dxBarSubItem4: TdxBarSubItem;
    dxBarButton19: TdxBarButton;
    dxBarButton20: TdxBarButton;
    dxBarButton21: TdxBarButton;
    dxBarButton22: TdxBarButton;
    dxBarPopupMenu6: TdxBarPopupMenu;
    dxBarButton23: TdxBarButton;
    dxBarSubItem5: TdxBarSubItem;
    dxBarButton24: TdxBarButton;
    dxBarButton25: TdxBarButton;
    dxBarButton26: TdxBarButton;
    dxBarButton27: TdxBarButton;
    dxBarPopupMenu7: TdxBarPopupMenu;
    dxBarButton28: TdxBarButton;
    dxBarSubItem6: TdxBarSubItem;
    dxBarButton29: TdxBarButton;
    dxBarButton30: TdxBarButton;
    dxBarButton31: TdxBarButton;
    dxBarButton32: TdxBarButton;
    dxBarPopupMenu8: TdxBarPopupMenu;
    dxBarButton33: TdxBarButton;
    dxBarSubItem7: TdxBarSubItem;
    dxBarButton34: TdxBarButton;
    dxBarButton35: TdxBarButton;
    dxBarButton36: TdxBarButton;
    dxBarButton37: TdxBarButton;
    dxBarPopupMenu9: TdxBarPopupMenu;
    dxBarButton38: TdxBarButton;
    dxBarSubItem8: TdxBarSubItem;
    dxBarButton39: TdxBarButton;
    dxBarButton40: TdxBarButton;
    dxBarButton41: TdxBarButton;
    dxBarButton42: TdxBarButton;
    dxBarPopupMenu10: TdxBarPopupMenu;
    dxBarButton43: TdxBarButton;
    dxBarSubItem9: TdxBarSubItem;
    dxBarButton44: TdxBarButton;
    dxBarButton45: TdxBarButton;
    dxBarButton46: TdxBarButton;
    dxBarButton47: TdxBarButton;
    dxBarPopupMenu11: TdxBarPopupMenu;
    dxBarButton48: TdxBarButton;
    dxBarSubItem10: TdxBarSubItem;
    dxBarButton49: TdxBarButton;
    dxBarButton50: TdxBarButton;
    dxBarButton51: TdxBarButton;
    dxBarButton52: TdxBarButton;
    dxBarPopupMenu12: TdxBarPopupMenu;
    dxBarButton53: TdxBarButton;
    dxBarSubItem11: TdxBarSubItem;
    dxBarButton54: TdxBarButton;
    dxBarButton55: TdxBarButton;
    dxBarButton56: TdxBarButton;
    dxBarButton57: TdxBarButton;
    dxBarPopupMenu13: TdxBarPopupMenu;
    dxBarButton58: TdxBarButton;
    dxBarSubItem12: TdxBarSubItem;
    dxBarButton59: TdxBarButton;
    dxBarButton60: TdxBarButton;
    dxBarButton61: TdxBarButton;
    dxBarButton62: TdxBarButton;
    dxBarPopupMenu14: TdxBarPopupMenu;
    dxBarButton63: TdxBarButton;
    dxBarSubItem13: TdxBarSubItem;
    dxBarButton64: TdxBarButton;
    dxBarButton65: TdxBarButton;
    dxBarButton66: TdxBarButton;
    dxBarButton67: TdxBarButton;
    cxTabSheet1: TcxTabSheet;
    cxGrid2: TcxGrid;
    cxGridDBBandedTableView1: TcxGridDBBandedTableView;
    cxGridLevel1: TcxGridLevel;
    cxGridDBBandedTableView1wayCLS_id: TcxGridDBBandedColumn;
    cxGridDBBandedTableView1invoice_id: TcxGridDBBandedColumn;
    cxGridDBBandedTableView1wayTranspClauseID: TcxGridDBBandedColumn;
    cxGridDBBandedTableView1wayTranspClauseName: TcxGridDBBandedColumn;
    cxGridDBBandedTableView1wayCustomText: TcxGridDBBandedColumn;
    cxGridDBBandedTableView1wayWagNumber: TcxGridDBBandedColumn;
    cxGridDBBandedTableView1wayRwPanish: TcxGridDBBandedColumn;
    dxBarPopupMenu1: TdxBarPopupMenu;
    dxBarButton68: TdxBarButton;
    dxBarSubItem14: TdxBarSubItem;
    dxBarButton69: TdxBarButton;
    dxBarButton70: TdxBarButton;
    dxBarButton71: TdxBarButton;
    dxBarButton72: TdxBarButton;
    dxBarButton73: TdxBarButton;
    cxImageList2: TcxImageList;
    dxBarSubItem15: TdxBarSubItem;
    dxBarButton74: TdxBarButton;
    dxBarButton76: TdxBarButton;
    dxBarButton77: TdxBarButton;
    sp_invoice_GET: TADOStoredProc;
    cxGrid1DBBandedTableView1date_from_to: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1datpr: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1ELS_cod: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1invoice_id: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1invoiceID: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1invoiceState: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1invLastOper: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1invNumber: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1vid_transfer: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1vid_transfer_name: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1operDate: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1operFactDate: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1operOrgName: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1operPerson: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1operPost: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1operRemark: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1operResult: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1operText: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1dueAmount: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1dueTaxSum: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1dueWeightCalc: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1dueAmount_arrive: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1dueTaxSum_arrive: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1dueWeightCalc_arrive: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1dueAmount_enter: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1dueTaxSum_enter: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1invDateExpire: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1invDateLoad: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1invDateReady: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1invDateDeparture: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1invDateArrive: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1invDateDelivery: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1invDateRegister: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1invDateCreate: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1invDateNotification: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1invDateRaskrEl: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1invDateReceiving: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1invTypeName: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1invBlankTypeName: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1invSenderOKPO: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1invSenderName: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1invSenderAddress: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1invSenderTGNL: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1invClaimNumber: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1invOtprNum: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1invPodNum: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1invFromCountryCode: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1invFromCountryName: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1invFromPointCode: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1invFromPointName: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1invFromStationCode: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1invFromStationName: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1invFromPortCode: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1invFromPortName: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1invFromLoadWay: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1invRecipOKPO: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1invRecipName: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1invRecipAddress: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1invRecipTGNL: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1invToCountryCode: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1invToCountryName: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1invToPointCode: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1invToPointName: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1invToStationCode: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1invToStationName: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1invToPortCode: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1invToPortName: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1invToLoadWay: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1invSendSpeedName: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1invSendKindName: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1invPayPlaceName: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1invPayFormName: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1invIxTariffCode: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1invPlanCarTypeCode: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1invPlanCarTypeName: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1invPlanCarCount: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1invPlanCarOwnerTypeName: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1invPlanContTonnage: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1invContPlanSizeBig: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1invPlanContCount: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1invPlanContOwnerTypeName: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1invLoadTypeName: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1invAnnounceValue: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1invLoadAssetsName: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1invPlanOutsizeCode: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1invRespPerson: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1invPayPlaceRwCode: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1invPayPlaceRwName: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1invPayerCode: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1invPayerName: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1invPayerAccount: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1invPayerBank: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1invFRWSubCode: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1invVizaNumber: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1invVizaDate: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1invVizaOrg: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1invVizaPerson: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1invVizaPost: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1invVizaNote: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1invScaleTypeName: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1invScalePersonName: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1invScalePrecision: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1invCheckDepName: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1invDeplPerson: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1invDepNormDocName: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1invDepPart: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1invDepArc: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1invDepSec: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1invDepCond: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1invFactDateToLoad: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1invFactDateAccept: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1invFIOAccept: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1invUniqueNumber: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1invSignRouteNumCirc: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1invRouteNumCirc: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1invRouteName: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1invRouteTypeName: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1invGoodsCashier: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1invGoodsCashierPost: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1invNum410: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1invKPZ: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1invNotification: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1invRtId: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1invUNP: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1invVizaNumberFull: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1invVizaOrgName: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1invDateCustom: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1invLoadClaim_Number: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1invLoadClaim_ID: TcxGridDBBandedColumn;
    cxStyle2: TcxStyle;
    cxGrid1DBBandedTableView1vagon_cnt: TcxGridDBBandedColumn;
    cxStyle3: TcxStyle;
    dxBarButton78: TdxBarButton;
    dxBarButton79: TdxBarButton;
    Panel1: TPanel;
    Panel4: TPanel;
    cxSplitter3: TcxSplitter;
    cxPropertiesStore1: TcxPropertiesStore;
    dxBarSubItem16: TdxBarSubItem;
    dxBarButton75: TdxBarButton;
    dxBarButton80: TdxBarButton;
    dxBarButton81: TdxBarButton;
    cxGrid1DBBandedTableView1invoice_sum: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1invoice_nds_sum: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1invoice_sum_with_nds: TcxGridDBBandedColumn;
    cxStyle4: TcxStyle;
    dxBarButton82: TdxBarButton;
    dxBarButton83: TdxBarButton;
    cxImageList1: TcxImageList;
    cxGrid1DBBandedTableView1num_vagon: TcxGridDBBandedColumn;
    cxGridDBBandedTableView8Column1: TcxGridDBBandedColumn;
    cxGridDBBandedTableView8Column2: TcxGridDBBandedColumn;
    cxGridDBBandedTableView7dueCalcDistStCode: TcxGridDBBandedColumn;
    cxGridDBBandedTableView7dueCalcDistStName: TcxGridDBBandedColumn;
    cxGridDBBandedTableView11operFromStateId: TcxGridDBBandedColumn;
    cxGridDBBandedTableView11operResultId: TcxGridDBBandedColumn;
    cxGridDBBandedTableView10freightGTDNumber: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1freightGTDNumber: TcxGridDBBandedColumn;
    cxGridDBBandedTableView25Column1: TcxGridDBBandedColumn;
    cxPageControl1: TcxPageControl;
    cxTabSheet2: TcxTabSheet;
    cxTabSheet15: TcxTabSheet;
    cxTabSheet16: TcxTabSheet;
    dxBarSubItem17: TdxBarSubItem;
    dxBarButton84: TdxBarButton;
    dxBarButton85: TdxBarButton;
    dxBarButton86: TdxBarButton;
    cxStyle_WhiteColor: TcxStyle;
    procedure cxPageControl2Change(Sender: TObject);
    procedure cxPageControl2DrawTabEx(AControl: TcxCustomTabControl;
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
    procedure dxBarButton51Click(Sender: TObject);
    procedure dxBarButton52Click(Sender: TObject);
    procedure dxBarButton53Click(Sender: TObject);
    procedure dxBarButton54Click(Sender: TObject);
    procedure dxBarButton55Click(Sender: TObject);
    procedure dxBarButton56Click(Sender: TObject);
    procedure dxBarButton57Click(Sender: TObject);
    procedure dxBarButton58Click(Sender: TObject);
    procedure dxBarButton59Click(Sender: TObject);
    procedure dxBarButton60Click(Sender: TObject);
    procedure dxBarButton61Click(Sender: TObject);
    procedure dxBarButton62Click(Sender: TObject);
    procedure dxBarButton63Click(Sender: TObject);
    procedure dxBarButton64Click(Sender: TObject);
    procedure dxBarButton65Click(Sender: TObject);
    procedure dxBarButton66Click(Sender: TObject);
    procedure dxBarButton67Click(Sender: TObject);
    procedure dxBarButton68Click(Sender: TObject);
    procedure dxBarButton69Click(Sender: TObject);
    procedure dxBarButton70Click(Sender: TObject);
    procedure dxBarButton71Click(Sender: TObject);
    procedure dxBarButton72Click(Sender: TObject);
    procedure dxBarButton73Click(Sender: TObject);
    procedure cxGrid1DBBandedTableView1FilterOnChanged(Sender: TObject);
    procedure cxGrid1DBBandedTableView1CustomDrawCell(Sender: TcxCustomGridTableView; ACanvas: TcxCanvas; AViewInfo: TcxGridTableDataCellViewInfo; var ADone: Boolean);
    procedure cxGrid1DBBandedTableView1CustomDrawColumnHeader(Sender: TcxGridTableView; ACanvas: TcxCanvas; AViewInfo: TcxGridColumnHeaderViewInfo; var ADone: Boolean);
    procedure cxGrid1DBBandedTableView1FocusedItemChanged(Sender: TcxCustomGridTableView; APrevFocusedItem, AFocusedItem: TcxCustomGridTableItem);
    procedure cxGrid1DBBandedTableView1KeyPress(Sender: TObject; var Key: Char);
    procedure dxBarButton78Click(Sender: TObject);
    procedure dxBarButton79Click(Sender: TObject);
    procedure cxGrid1DBBandedTableView1SelectionChanged(Sender: TcxCustomGridTableView);
    procedure dxBarButton74Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormDestroy(Sender: TObject);
    procedure dxBarButton77Click(Sender: TObject);
    procedure dxBarButton76Click(Sender: TObject);
    procedure dxBarButton80Click(Sender: TObject);
    procedure dxBarButton75Click(Sender: TObject);
    procedure dxBarButton82Click(Sender: TObject);
    procedure dxBarButton81Click(Sender: TObject);
    procedure dxBarButton83Click(Sender: TObject);
    procedure cxPageControl1Change(Sender: TObject);
    procedure dxBarButton84Click(Sender: TObject);
    procedure dxBarButton85Click(Sender: TObject);
    procedure dxBarButton86Click(Sender: TObject);
  private
    Fusr_pwd         : PUser_pwd;
    Fusers_group_cod : string;
    Fdate1, Fdate2   : TDateTime;
    Fnum_vagon       : integer;
    procedure   SetPeriodInv(period_begin: TDateTime; period_end: TDateTime; inv_number: string = '');
    procedure   SaveInvoiceToXML(invoice_id: integer; invNumber: string);
    procedure   ChangeView();
  public
    constructor Create(AOwner: TApplication; flag: boolean; users_group_cod: string; usr_pwd:PUser_pwd; open_query: boolean);
    procedure SetInvoiceID(invoiceID: integer);
    procedure SetNumVagon(num_vagon: integer);
  published
    property _SetInvoiceID : integer write SetInvoiceID;
    property _SetNumVagon  : integer write SetNumVagon;
  end;

var
  fmEtrInvoice: TfmEtrInvoice;


function CreateWndEtranInvoice(AppHand: THandle; flag: boolean; users_group_cod: string; usr_pwd:PUser_pwd) : variant; export;
function CreateWndEtranFindInvoice(AppHand: THandle; doc_id:integer; num_vagon: integer; users_group_cod: string; usr_pwd:PUser_pwd) : variant; export;

implementation
  uses Raznoe, EtrFilter, EtrUtils, EtrXMLView, EtrConnectAdd, Period, Filter;
{$R *.dfm}

function CreateWndEtranFindInvoice(AppHand: THandle; doc_id:integer; num_vagon: integer; users_group_cod: string; usr_pwd:PUser_pwd) : variant;
begin
  Application.Handle := AppHand;
  try
    fmEtrInvoice := TfmEtrInvoice.Create(Application, False, users_group_cod, usr_pwd, False);
    fmEtrInvoice._SetInvoiceID := doc_id;
    fmEtrInvoice._SetNumVagon  := num_vagon;

    //-- изменить по мере необходимости возвращаемых параметров
    if  fmEtrInvoice.ShowModal = mrOk then result := VarArrayOf([-9, '']);
  finally
    fmEtrInvoice.Free;
  end;
end;



function CreateWndEtranInvoice(AppHand: THandle; flag: boolean; users_group_cod: string; usr_pwd: PUser_pwd) : variant;
begin
  Application.Handle := AppHand;
  try
    fmEtrInvoice := TfmEtrInvoice.Create(Application, flag, users_group_cod, usr_pwd, True);
    //-- изменить по мере необходимости возвращаемых параметров
    if  fmEtrInvoice.ShowModal = mrOk then result := VarArrayOf([-9, '']);
  finally
    fmEtrInvoice.Free;
  end;
end;

constructor TfmEtrInvoice.Create(AOwner:TApplication; flag: boolean; users_group_cod: string; usr_pwd:PUser_pwd; open_query: boolean);
begin
  Screen.Cursor := -11;
  inherited Create(nil);

  WindowState := wsMaximized;

  Fusr_pwd := usr_pwd;
  Fusers_group_cod := users_group_cod;
  Fnum_vagon := -9;

  ClientDataSet1.CreateDataSet;

  StoreRegistryGrid(rgLoad,'\Software\Lis1\Etran\Inv_Grids', cxGrid1DBBandedTableView1);
  dxBarButton78.Down := StoreRegistryCheck(rgLoad, '\Software\Lis1\Etran\Inv_Grids', 'ViewDown',  False);
  dxBarButton79.Down := StoreRegistryCheck(rgLoad, '\Software\Lis1\Etran\Inv_Grids', 'ViewRight', True);

  ADOEtran.Connected := False;
  ADOEtran.ConnectionString := GetEtranConnect(Fusers_group_cod, Fusr_pwd);
  ADOEtran.Connected := True;
  cxPageControl2.ActivePageIndex := 8;

  Fdate1 := Date-7;
  Fdate2 := Date;

  if Fdate1 <> Fdate2 then
    dxBarSubItem15.Caption := FormatDateTime('dd.mm.yy', Fdate1) + ' - ' + FormatDateTime('dd.mm.yy', Fdate2)
  else
    dxBarSubItem15.Caption := FormatDateTime('dd.mm.yyyy', Fdate1);

  sp_invoice_GET.Parameters.Refresh;
  sp_invoice_GET.Parameters.ParamByName('@date_begin').Value := Fdate1;
  sp_invoice_GET.Parameters.ParamByName('@date_end'  ).Value := Fdate2;
  sp_invoice_GET.Parameters.ParamByName('@num_vagon' ).Value := iif(Fnum_vagon = -9, null, Fnum_vagon);
  case cxPageControl1.ActivePageIndex of
    0: sp_invoice_GET.Parameters.ParamByName('@els_cod').Value := '1004653067';
    1: sp_invoice_GET.Parameters.ParamByName('@els_cod').Value := '1006059161';
    2: sp_invoice_GET.Parameters.ParamByName('@els_cod').Value := '1006062218';
  end;
  if open_query = True then begin
    sp_invoice_GET.Open;
  end;

  ChangeView;

  Screen.Cursor := 0;
end;

procedure TfmEtrInvoice.SetInvoiceID(invoiceID: integer);
var Q : TADOQuery;
begin
  Q := TADOQuery.Create(nil);
  Q.Connection := ADOEtran;
  Q.SQL.Add(' SELECT invoice_id, cast(convert(varchar(8), ISNULL(invDateDeparture, ISNULL(invDateReady, ISNULL(invFactDateAccept, ISNULL(invFactDateToLoad, invDateLoad)))), 112) as datetime) as date_from_to, ' +
            ' CASE WHEN len(invNumber) IN (8, 7) THEN RIGHT(invNumber, 6) ELSE invNumber END AS num_document '+
            ' FROM  invoice inner join etran_global_id on invoice.invoice_id = etran_global_id.global_id '+
            ' WHERE invoiceID = '+IntToStr(invoiceID) +
            ' AND users_owner_id in (SELECT users2.users_id FROM etran_users users1 inner join etran_users users2 on users1.users_group_id = users2.users_group_id WHERE users1.users_name = system_user)');
  Q.Open;

  if Q.RecordCount > 0 then begin
    Fdate1 := Q.FieldByName('date_from_to').AsDateTime;
    Fdate2 := Q.FieldByName('date_from_to').AsDateTime;
    if Fdate1 <> Fdate2 then
      dxBarSubItem15.Caption := FormatDateTime('dd.mm.yy', Fdate1) + ' - ' + FormatDateTime('dd.mm.yy', Fdate2)
    else
      dxBarSubItem15.Caption := FormatDateTime('dd.mm.yyyy', Fdate1);

    sp_invoice_GET.Close;
    sp_invoice_GET.Parameters.ParamByName('@date_begin').Value := Fdate1;
    sp_invoice_GET.Parameters.ParamByName('@date_end'  ).Value := Fdate2;
    sp_invoice_GET.Parameters.ParamByName('@num_vagon' ).Value := iif(Fnum_vagon = -9, null, Fnum_vagon);
    case cxPageControl1.ActivePageIndex of
      0: sp_invoice_GET.Parameters.ParamByName('@els_cod').Value := '1004653067';
      1: sp_invoice_GET.Parameters.ParamByName('@els_cod').Value := '1006059161';
      2: sp_invoice_GET.Parameters.ParamByName('@els_cod').Value := '1006062218';
    end;
    sp_invoice_GET.Open;

    if cxGrid1DBBandedTableView1.DataController.LocateByKey(Q.FieldByName('invoice_id').AsInteger) = False then begin
      Application.MessageBox('Накладная не найдена!', 'Внимание!', MB_ICONWARNING or MB_OK);
    end;
    if cxGrid1DBBandedTableView1.Controller.FocusedRecord <> nil then
      cxGrid1DBBandedTableView1.Controller.FocusedRecord.Selected := True;
  end else
    Application.MessageBox('Накладная не найдена!', 'Внимание!', MB_ICONWARNING or MB_OK);
end;

procedure TfmEtrInvoice.SetNumVagon(num_vagon: integer);
begin
  cxGridDBBandedTableView6.DataController.LocateByKey(num_vagon);
  if cxGridDBBandedTableView6.Controller.FocusedRecord <> nil then
    cxGridDBBandedTableView6.Controller.FocusedRecord.Selected := True;
end;

procedure TfmEtrInvoice.cxGrid1DBBandedTableView1CustomDrawCell(Sender: TcxCustomGridTableView; ACanvas: TcxCanvas; AViewInfo: TcxGridTableDataCellViewInfo; var ADone: Boolean);
begin
	if AViewInfo.GridRecord.Selected or AViewInfo.GridRecord.Focused then begin
		ACanvas.Brush.Color := clNavy;
		ACanvas.Font.Color := clWhite;
		if AViewInfo.Focused then ACanvas.Brush.Color := clBlue;
	end;
end;

procedure TfmEtrInvoice.cxGrid1DBBandedTableView1CustomDrawColumnHeader(Sender: TcxGridTableView; ACanvas: TcxCanvas; AViewInfo: TcxGridColumnHeaderViewInfo; var ADone: Boolean);
begin
  DrawcxGridColumnOnFocused(Sender, ACanvas, AViewInfo);
end;

procedure TfmEtrInvoice.cxGrid1DBBandedTableView1FilterOnChanged(Sender: TObject);
begin
	DrawcxGridColumnOnFiltered(Sender);
end;

procedure TfmEtrInvoice.cxGrid1DBBandedTableView1FocusedItemChanged(Sender: TcxCustomGridTableView; APrevFocusedItem,  AFocusedItem: TcxCustomGridTableItem);
begin
	Sender.Painter.Invalidate;
end;

procedure TfmEtrInvoice.cxGrid1DBBandedTableView1KeyPress(Sender: TObject; var Key: Char);
begin
  FilterColumnGridOnKeyPress(TcxGridDBBandedTableView(TcxGridSite(Sender).GridView), Key);
end;

procedure TfmEtrInvoice.cxGrid1DBBandedTableView1SelectionChanged(
  Sender: TcxCustomGridTableView);
begin
  Screen.Cursor := crHourGlass;
  if dxBarButton78.Down or dxBarButton79.Down then begin
    if (sp_invoice_GET.Active) and (not sp_invoice_GET.Eof) then begin
      if ClientDataSet1.FieldByName('invoice_id').Value <> sp_invoice_GET.FieldByName('invoice_id').Value then begin
        SP_XML_parser.Close;
        SP_XML_parser.Parameters.Refresh;
        SP_XML_parser.Parameters.ParamByName('@row_id').Value  := sp_invoice_GET.FieldByName('invoice_id').AsInteger;
        SP_XML_parser.Parameters.ParamByName('@doc_type_id').Value   := 2;
        SP_XML_parser.Parameters.ParamByName('@doc_sub').Value       := 0;
        SP_XML_parser.Open;
        ClientDSFromRecordset(SP_XML_parser.Recordset, ClientDataSet1);
      end;
    end else
      ClientDSClear(ClientDataSet1);
    ClientDSToForm(self, ClientDataSet1);
    cxPageControl2Change(Sender);
    cxPageControl2.Repaint;
  end;
  Screen.Cursor := crDefault;
end;

procedure TfmEtrInvoice.cxPageControl1Change(Sender: TObject);
begin
  Screen.Cursor := crHourGlass;

  sp_invoice_GET.Close;
  sp_invoice_GET.Parameters.ParamByName('@date_begin').Value := Fdate1;
  sp_invoice_GET.Parameters.ParamByName('@date_end'  ).Value := Fdate2;
  sp_invoice_GET.Parameters.ParamByName('@num_vagon' ).Value := iif(Fnum_vagon = -9, null, Fnum_vagon);
  case cxPageControl1.ActivePageIndex of
    0: sp_invoice_GET.Parameters.ParamByName('@els_cod').Value := '1004653067';
    1: sp_invoice_GET.Parameters.ParamByName('@els_cod').Value := '1006059161';
    2: sp_invoice_GET.Parameters.ParamByName('@els_cod').Value := '1006062218';
  end;
  sp_invoice_GET.Open;

  Screen.Cursor := crDefault;
end;

procedure TfmEtrInvoice.cxPageControl2Change(Sender: TObject);
begin
  if (sp_invoice_GET.Active) and (dxBarButton78.Down or dxBarButton79.Down) then begin
    cxGrid3DBBandedTableView1.DataController.DataSource := nil;
    cxGridDBBandedTableView2.DataController.DataSource  := nil;
    cxGridDBBandedTableView3.DataController.DataSource  := nil;
    cxGridDBBandedTableView4.DataController.DataSource  := nil;
    cxGridDBBandedTableView5.DataController.DataSource  := nil;
    cxGridDBBandedTableView6.DataController.DataSource  := nil;
    cxGridDBBandedTableView7.DataController.DataSource  := nil;
    cxGridDBBandedTableView8.DataController.DataSource  := nil;
    cxGridDBBandedTableView9.DataController.DataSource  := nil;
    cxGridDBBandedTableView10.DataController.DataSource := nil;
    cxGridDBBandedTableView25.DataController.DataSource := nil;
    cxGridDBBandedTableView1.DataController.DataSource := nil;

    if cxPageControl2.Pages[cxPageControl2.ActivePageIndex].Tag <> 0 then begin
        SP_XML_parser_view.Close;
        SP_XML_parser_view.Parameters.Refresh;
        SP_XML_parser_view.Parameters.ParamByName('@row_id').Value:=sp_invoice_GET.FieldByName('invoice_id').AsInteger;
        SP_XML_parser_view.Parameters.ParamByName('@doc_type_id').Value :=2;
        SP_XML_parser_view.Parameters.ParamByName('@doc_sub').Value     :=cxPageControl2.Pages[cxPageControl2.ActivePageIndex].Tag;
        SP_XML_parser_view.Open;

        case cxPageControl2.Pages[cxPageControl2.ActivePageIndex].Tag of
           1:  cxGridDBBandedTableView10.DataController.DataSource := DS_XML_parser_view;
           2:  cxGrid3DBBandedTableView1.DataController.DataSource := DS_XML_parser_view;
           3:  cxGridDBBandedTableView2.DataController.DataSource  := DS_XML_parser_view;
           4:  cxGridDBBandedTableView3.DataController.DataSource  := DS_XML_parser_view;
           5:  cxGridDBBandedTableView4.DataController.DataSource  := DS_XML_parser_view;
           6:  cxGridDBBandedTableView5.DataController.DataSource  := DS_XML_parser_view;
           7:  cxGridDBBandedTableView6.DataController.DataSource  := DS_XML_parser_view;
           8:  cxGridDBBandedTableView7.DataController.DataSource  := DS_XML_parser_view;
           9:  cxGridDBBandedTableView8.DataController.DataSource  := DS_XML_parser_view;
          10:  cxGridDBBandedTableView9.DataController.DataSource  := DS_XML_parser_view;
          11:  cxGridDBBandedTableView11.DataController.DataSource := DS_XML_parser_view;
          12:  cxGridDBBandedTableView25.DataController.DataSource := DS_XML_parser_view;
          13:  cxGridDBBandedTableView1.DataController.DataSource  := DS_XML_parser_view;
        end;
    end;
  end;
end;

procedure TfmEtrInvoice.cxPageControl2DrawTabEx(AControl: TcxCustomTabControl; ATab: TcxTab; Font: TFont);
begin
  if (ATab.Index = 0) or (ATab.Index = 1) then Font.Style := [fsBold];
  if (cxPageControl2.Pages[ATab.Index].Tag = 1) and (ClientDataSet1.FieldByName('cnt_invFreight'  ).Value > 0) then Font.Style := [fsBold];
  if (cxPageControl2.Pages[ATab.Index].Tag = 2) and (ClientDataSet1.FieldByName('cnt_invDistance' ).Value > 0) then Font.Style := [fsBold];
  if (cxPageControl2.Pages[ATab.Index].Tag = 3) and (ClientDataSet1.FieldByName('cnt_invSPC'      ).Value > 0) then Font.Style := [fsBold];
  if (cxPageControl2.Pages[ATab.Index].Tag = 4) and (ClientDataSet1.FieldByName('cnt_invDOC'      ).Value > 0) then Font.Style := [fsBold];
  if (cxPageControl2.Pages[ATab.Index].Tag = 5) and (ClientDataSet1.FieldByName('cnt_invDev'      ).Value > 0) then Font.Style := [fsBold];
  if (cxPageControl2.Pages[ATab.Index].Tag = 6) and (ClientDataSet1.FieldByName('cnt_invCont'     ).Value > 0) then Font.Style := [fsBold];
  if (cxPageControl2.Pages[ATab.Index].Tag = 7) and (ClientDataSet1.FieldByName('cnt_invCar'      ).Value > 0) then Font.Style := [fsBold];
  if (cxPageControl2.Pages[ATab.Index].Tag = 8) and (ClientDataSet1.FieldByName('cnt_invDue'      ).Value > 0) then Font.Style := [fsBold];
  if (cxPageControl2.Pages[ATab.Index].Tag = 9) and (ClientDataSet1.FieldByName('cnt_invDueArrive').Value > 0) then Font.Style := [fsBold];
  if (cxPageControl2.Pages[ATab.Index].Tag =10) and (ClientDataSet1.FieldByName('cnt_invJoint'    ).Value > 0) then Font.Style := [fsBold];
  if (cxPageControl2.Pages[ATab.Index].Tag =12) and (ClientDataSet1.FieldByName('cnt_invDueEnter' ).Value > 0) then Font.Style := [fsBold];
  if (cxPageControl2.Pages[ATab.Index].Tag =13) and (ClientDataSet1.FieldByName('cnt_wayCLS'      ).Value > 0) then Font.Style := [fsBold];
end;

procedure TfmEtrInvoice.dxBarButton10Click(Sender: TObject);
begin
	cxGridDBBandedTableView11.OptionsView.GroupByBox := not cxGridDBBandedTableView11.OptionsView.GroupByBox;
end;

procedure TfmEtrInvoice.dxBarButton11Click(Sender: TObject);
begin
	FiltercxGrid4ListID(cxGridDBBandedTableView11);
end;

procedure TfmEtrInvoice.dxBarButton12Click(Sender: TObject);
begin
	cxGridDBBandedTableView11.Filtering.ColumnFilteredItemsList := not dxBarButton12.Down;
end;

procedure TfmEtrInvoice.dxBarButton13Click(Sender: TObject);
begin
	PrintcxGrid(cxGridDBBandedTableView10);
end;

procedure TfmEtrInvoice.dxBarButton14Click(Sender: TObject);
begin
	SetdxDBGridColumns(cxGridDBBandedTableView10);
end;

procedure TfmEtrInvoice.dxBarButton15Click(Sender: TObject);
begin
	cxGridDBBandedTableView10.OptionsView.GroupByBox := not cxGridDBBandedTableView10.OptionsView.GroupByBox;
end;

procedure TfmEtrInvoice.dxBarButton16Click(Sender: TObject);
begin
	FiltercxGrid4ListID(cxGridDBBandedTableView10);
end;

procedure TfmEtrInvoice.dxBarButton17Click(Sender: TObject);
begin
	cxGridDBBandedTableView10.Filtering.ColumnFilteredItemsList := not dxBarButton17.Down;
end;

procedure TfmEtrInvoice.dxBarButton18Click(Sender: TObject);
begin
	PrintcxGrid(cxGrid3DBBandedTableView1);
end;

procedure TfmEtrInvoice.dxBarButton19Click(Sender: TObject);
begin
	SetdxDBGridColumns(cxGrid3DBBandedTableView1);
end;

procedure TfmEtrInvoice.dxBarButton1Click(Sender: TObject);
begin
  RefreshQueryGrid(cxGrid1DBBandedTableView1 , 'invoice_id');
end;

procedure TfmEtrInvoice.dxBarButton20Click(Sender: TObject);
begin
	cxGrid3DBBandedTableView1.OptionsView.GroupByBox := not cxGrid3DBBandedTableView1.OptionsView.GroupByBox;
end;

procedure TfmEtrInvoice.dxBarButton21Click(Sender: TObject);
begin
	FiltercxGrid4ListID(cxGrid3DBBandedTableView1);
end;

procedure TfmEtrInvoice.dxBarButton22Click(Sender: TObject);
begin
	cxGrid3DBBandedTableView1.Filtering.ColumnFilteredItemsList := not dxBarButton22.Down;
end;

procedure TfmEtrInvoice.dxBarButton23Click(Sender: TObject);
begin
	PrintcxGrid(cxGridDBBandedTableView2);
end;

procedure TfmEtrInvoice.dxBarButton24Click(Sender: TObject);
begin
	SetdxDBGridColumns(cxGridDBBandedTableView2);
end;

procedure TfmEtrInvoice.dxBarButton25Click(Sender: TObject);
begin
	cxGridDBBandedTableView2.OptionsView.GroupByBox := not cxGridDBBandedTableView2.OptionsView.GroupByBox;
end;

procedure TfmEtrInvoice.dxBarButton26Click(Sender: TObject);
begin
	FiltercxGrid4ListID(cxGridDBBandedTableView2);
end;

procedure TfmEtrInvoice.dxBarButton27Click(Sender: TObject);
begin
	cxGridDBBandedTableView2.Filtering.ColumnFilteredItemsList := not dxBarButton27.Down;
end;

procedure TfmEtrInvoice.dxBarButton28Click(Sender: TObject);
begin
	PrintcxGrid(cxGridDBBandedTableView3);
end;

procedure TfmEtrInvoice.dxBarButton29Click(Sender: TObject);
begin
	SetdxDBGridColumns(cxGridDBBandedTableView3);
end;

procedure TfmEtrInvoice.dxBarButton2Click(Sender: TObject);
var  exApp, exWkb, exWks, exWks1 : Variant;
    i : integer;
  str : string;
begin
  if cxGrid1DBBandedTableView1.Controller.SelectedRowCount > 0 then begin
    exApp := CreateOleObject('Excel.Application');
    exWkb := exApp.Workbooks.Add(GetEtranDocBlob(ADOEtran, 144, 9, True)); // 'ГУ-12.xls'
    exWkb := exApp.ActiveWorkbook;
    exWks1 := exWkb.WorkSheets[1];
    exWkb.Application.DisplayAlerts := False;
    //exApp.Visible := True;

    for i:=0 to cxGrid1DBBandedTableView1.Controller.SelectedRowCount - 1 do begin
      exWks := exWkb.WorkSheets.Add;

      str := VarToStr(cxGrid1DBBandedTableView1.Controller.SelectedRows[i].Values[cxGrid1DBBandedTableView1invNumber.Index]);

      exWks.Name := str;
      exWks1.Cells.Copy;
      exWks.Cells.PasteSpecial(-4122);
      exWks1.Cells.Copy;
      exWks.Cells.PasteSpecial(1);

      PrintInvoice_ETRAN(cxGrid1DBBandedTableView1.Controller.SelectedRows[i].Values[cxGrid1DBBandedTableView1invoice_id.Index], ADOEtran, exWks)
    end;
    exWks1.Delete;

    exApp.CutCopyMode := False;
    exApp.Visible := True;

    VarClear(exWks);
    VarClear(exWks1);
    VarClear(exWkb);
    VarClear(exApp);
  end else
    ShowMessage('Нет выделенных накладных.');
end;

procedure TfmEtrInvoice.dxBarButton30Click(Sender: TObject);
begin
	cxGridDBBandedTableView3.OptionsView.GroupByBox := not cxGridDBBandedTableView3.OptionsView.GroupByBox;
end;

procedure TfmEtrInvoice.dxBarButton31Click(Sender: TObject);
begin
	FiltercxGrid4ListID(cxGridDBBandedTableView3);
end;

procedure TfmEtrInvoice.dxBarButton32Click(Sender: TObject);
begin
	cxGridDBBandedTableView3.Filtering.ColumnFilteredItemsList := not dxBarButton32.Down;
end;

procedure TfmEtrInvoice.dxBarButton33Click(Sender: TObject);
begin
	PrintcxGrid(cxGridDBBandedTableView4);
end;

procedure TfmEtrInvoice.dxBarButton34Click(Sender: TObject);
begin
	SetdxDBGridColumns(cxGridDBBandedTableView4);
end;

procedure TfmEtrInvoice.dxBarButton35Click(Sender: TObject);
begin
	cxGridDBBandedTableView4.OptionsView.GroupByBox := not cxGridDBBandedTableView4.OptionsView.GroupByBox;
end;

procedure TfmEtrInvoice.dxBarButton36Click(Sender: TObject);
begin
	FiltercxGrid4ListID(cxGridDBBandedTableView4);
end;

procedure TfmEtrInvoice.dxBarButton37Click(Sender: TObject);
begin
	cxGridDBBandedTableView4.Filtering.ColumnFilteredItemsList := not dxBarButton37.Down;
end;

procedure TfmEtrInvoice.dxBarButton38Click(Sender: TObject);
begin
	PrintcxGrid(cxGridDBBandedTableView5);
end;

procedure TfmEtrInvoice.dxBarButton39Click(Sender: TObject);
begin
	SetdxDBGridColumns(cxGridDBBandedTableView5);
end;

procedure TfmEtrInvoice.dxBarButton3Click(Sender: TObject);
begin
	PrintcxGrid(cxGrid1DBBandedTableView1);
end;

procedure TfmEtrInvoice.dxBarButton40Click(Sender: TObject);
begin
	cxGridDBBandedTableView5.OptionsView.GroupByBox := not cxGridDBBandedTableView5.OptionsView.GroupByBox;
end;

procedure TfmEtrInvoice.dxBarButton41Click(Sender: TObject);
begin
	FiltercxGrid4ListID(cxGridDBBandedTableView5);
end;

procedure TfmEtrInvoice.dxBarButton42Click(Sender: TObject);
begin
	cxGridDBBandedTableView5.Filtering.ColumnFilteredItemsList := not dxBarButton42.Down;
end;

procedure TfmEtrInvoice.dxBarButton43Click(Sender: TObject);
begin
	PrintcxGrid(cxGridDBBandedTableView6);
end;

procedure TfmEtrInvoice.dxBarButton44Click(Sender: TObject);
begin
	SetdxDBGridColumns(cxGridDBBandedTableView6);
end;

procedure TfmEtrInvoice.dxBarButton45Click(Sender: TObject);
begin
	cxGridDBBandedTableView6.OptionsView.GroupByBox := not cxGridDBBandedTableView6.OptionsView.GroupByBox;
end;

procedure TfmEtrInvoice.dxBarButton46Click(Sender: TObject);
begin
	FiltercxGrid4ListID(cxGridDBBandedTableView6);
end;

procedure TfmEtrInvoice.dxBarButton47Click(Sender: TObject);
begin
	cxGridDBBandedTableView6.Filtering.ColumnFilteredItemsList := not dxBarButton47.Down;
end;

procedure TfmEtrInvoice.dxBarButton48Click(Sender: TObject);
begin
	PrintcxGrid(cxGridDBBandedTableView7);
end;

procedure TfmEtrInvoice.dxBarButton49Click(Sender: TObject);
begin
	SetdxDBGridColumns(cxGridDBBandedTableView7);
end;

procedure TfmEtrInvoice.dxBarButton4Click(Sender: TObject);
begin
	SetdxDBGridColumns(cxGrid1DBBandedTableView1);
end;

procedure TfmEtrInvoice.dxBarButton50Click(Sender: TObject);
begin
	cxGridDBBandedTableView7.OptionsView.GroupByBox := not cxGridDBBandedTableView7.OptionsView.GroupByBox;
end;

procedure TfmEtrInvoice.dxBarButton51Click(Sender: TObject);
begin
	FiltercxGrid4ListID(cxGridDBBandedTableView7);
end;

procedure TfmEtrInvoice.dxBarButton52Click(Sender: TObject);
begin
	cxGridDBBandedTableView7.Filtering.ColumnFilteredItemsList := not dxBarButton52.Down;
end;

procedure TfmEtrInvoice.dxBarButton53Click(Sender: TObject);
begin
	PrintcxGrid(cxGridDBBandedTableView8);
end;

procedure TfmEtrInvoice.dxBarButton54Click(Sender: TObject);
begin
	SetdxDBGridColumns(cxGridDBBandedTableView8);
end;

procedure TfmEtrInvoice.dxBarButton55Click(Sender: TObject);
begin
	cxGridDBBandedTableView8.OptionsView.GroupByBox := not cxGridDBBandedTableView8.OptionsView.GroupByBox;
end;

procedure TfmEtrInvoice.dxBarButton56Click(Sender: TObject);
begin
	FiltercxGrid4ListID(cxGridDBBandedTableView8);
end;

procedure TfmEtrInvoice.dxBarButton57Click(Sender: TObject);
begin
	cxGridDBBandedTableView8.Filtering.ColumnFilteredItemsList := not dxBarButton57.Down;
end;

procedure TfmEtrInvoice.dxBarButton58Click(Sender: TObject);
begin
	PrintcxGrid(cxGridDBBandedTableView9);
end;

procedure TfmEtrInvoice.dxBarButton59Click(Sender: TObject);
begin
	SetdxDBGridColumns(cxGridDBBandedTableView9);
end;

procedure TfmEtrInvoice.dxBarButton5Click(Sender: TObject);
begin
	cxGrid1DBBandedTableView1.OptionsView.GroupByBox := not cxGrid1DBBandedTableView1.OptionsView.GroupByBox;
end;

procedure TfmEtrInvoice.dxBarButton60Click(Sender: TObject);
begin
	cxGridDBBandedTableView9.OptionsView.GroupByBox := not cxGridDBBandedTableView9.OptionsView.GroupByBox;
end;

procedure TfmEtrInvoice.dxBarButton61Click(Sender: TObject);
begin
	FiltercxGrid4ListID(cxGridDBBandedTableView9);
end;

procedure TfmEtrInvoice.dxBarButton62Click(Sender: TObject);
begin
	cxGridDBBandedTableView9.Filtering.ColumnFilteredItemsList := not dxBarButton62.Down;
end;

procedure TfmEtrInvoice.dxBarButton63Click(Sender: TObject);
begin
	PrintcxGrid(cxGridDBBandedTableView25);
end;

procedure TfmEtrInvoice.dxBarButton64Click(Sender: TObject);
begin
	SetdxDBGridColumns(cxGridDBBandedTableView25);
end;

procedure TfmEtrInvoice.dxBarButton65Click(Sender: TObject);
begin
	cxGridDBBandedTableView25.OptionsView.GroupByBox := not cxGridDBBandedTableView25.OptionsView.GroupByBox;
end;

procedure TfmEtrInvoice.dxBarButton66Click(Sender: TObject);
begin
	FiltercxGrid4ListID(cxGridDBBandedTableView25);
end;

procedure TfmEtrInvoice.dxBarButton67Click(Sender: TObject);
begin
	cxGridDBBandedTableView25.Filtering.ColumnFilteredItemsList := not dxBarButton67.Down;
end;

procedure TfmEtrInvoice.dxBarButton68Click(Sender: TObject);
begin
	PrintcxGrid(cxGridDBBandedTableView1);
end;

procedure TfmEtrInvoice.dxBarButton69Click(Sender: TObject);
begin
	SetdxDBGridColumns(cxGridDBBandedTableView1);
end;

procedure TfmEtrInvoice.dxBarButton6Click(Sender: TObject);
begin
	FiltercxGrid4ListID(cxGrid1DBBandedTableView1);
end;

procedure TfmEtrInvoice.dxBarButton70Click(Sender: TObject);
begin
	cxGridDBBandedTableView1.OptionsView.GroupByBox := not cxGridDBBandedTableView1.OptionsView.GroupByBox;
end;

procedure TfmEtrInvoice.dxBarButton71Click(Sender: TObject);
begin
	FiltercxGrid4ListID(cxGridDBBandedTableView1);
end;

procedure TfmEtrInvoice.dxBarButton72Click(Sender: TObject);
begin
	cxGridDBBandedTableView1.Filtering.ColumnFilteredItemsList := not dxBarButton72.Down;
end;

procedure TfmEtrInvoice.dxBarButton73Click(Sender: TObject);
begin
  if not sp_invoice_GET.FieldByName('invoice_id').IsNull then
    SaveInvoiceToXML(sp_invoice_GET.FieldByName('invoice_id').AsInteger, cxGrid1DBBandedTableView1invNumber.DataBinding.Field.AsString)
  else
    ShowMessage('Накладная не найдена.');
end;

procedure TfmEtrInvoice.dxBarButton74Click(Sender: TObject);
begin
  fmPeriod := TfmPeriod.Create(Application, Fdate1, Fdate2, 1);
  if fmPeriod.ShowModal=mrOK then begin
    Screen.Cursor := crHourglass;
    Fdate1 := fmPeriod._GetDateBegin;
    Fdate2 := fmPeriod._GetDateEnd;
    if Fdate1 <> Fdate2 then
      dxBarSubItem15.Caption := FormatDateTime('dd.mm.yy', Fdate1) + ' - ' + FormatDateTime('dd.mm.yy', Fdate2)
    else
      dxBarSubItem15.Caption := FormatDateTime('dd.mm.yyyy', Fdate1);

    sp_invoice_GET.Close;
    sp_invoice_GET.Parameters.ParamByName('@date_begin').Value := Fdate1;
    sp_invoice_GET.Parameters.ParamByName('@date_end'  ).Value := Fdate2;
    sp_invoice_GET.Parameters.ParamByName('@num_vagon' ).Value := iif(Fnum_vagon = -9, null, Fnum_vagon);
    case cxPageControl1.ActivePageIndex of
      0: sp_invoice_GET.Parameters.ParamByName('@els_cod').Value := '1004653067';
      1: sp_invoice_GET.Parameters.ParamByName('@els_cod').Value := '1006059161';
      2: sp_invoice_GET.Parameters.ParamByName('@els_cod').Value := '1006062218';
    end;
    sp_invoice_GET.Open;

    Screen.Cursor := crDefault;
  end;
end;

procedure TfmEtrInvoice.dxBarButton75Click(Sender: TObject);
var Q: TADOQuery;
begin
  Q := TADOQuery.Create(nil);
  Q.Connection := ADOEtran;
  Q.SQL.Add('SELECT doc_xml_info FROM ETRAN_XML_REPLY WHERE doc_references_id = ' + cxGrid1DBBandedTableView1invoice_id.DataBinding.Field.AsString);
  Q.Open;

  fmEtrXMLView := TfmEtrXMLView.Create(Application);
  fmEtrXMLView._SetXML := Q.FieldByName('doc_xml_info').AsString;
  fmEtrXMLView.ShowModal;

  Q.Free;
end;

procedure TfmEtrInvoice.dxBarButton76Click(Sender: TObject);
begin
  Screen.Cursor := crHourglass;
  Fdate1 := Fdate1 + 1;
  Fdate2 := Fdate2 + 1;
  if Fdate1 <> Fdate2 then
    dxBarSubItem15.Caption := FormatDateTime('dd.mm.yy', Fdate1) + ' - ' + FormatDateTime('dd.mm.yy', Fdate2)
  else
    dxBarSubItem15.Caption := FormatDateTime('dd.mm.yyyy', Fdate1);

  sp_invoice_GET.Close;
  sp_invoice_GET.Parameters.ParamByName('@date_begin').Value := Fdate1;
  sp_invoice_GET.Parameters.ParamByName('@date_end'  ).Value := Fdate2;
  sp_invoice_GET.Parameters.ParamByName('@num_vagon' ).Value := iif(Fnum_vagon = -9, null, Fnum_vagon);
    case cxPageControl1.ActivePageIndex of
      0: sp_invoice_GET.Parameters.ParamByName('@els_cod').Value := '1004653067';
      1: sp_invoice_GET.Parameters.ParamByName('@els_cod').Value := '1006059161';
      2: sp_invoice_GET.Parameters.ParamByName('@els_cod').Value := '1006062218';
    end;
  sp_invoice_GET.Open;

  Screen.Cursor := crDefault;
end;

procedure TfmEtrInvoice.dxBarButton77Click(Sender: TObject);
begin
  Screen.Cursor := crHourglass;
  Fdate1 := Fdate1 - 1;
  Fdate2 := Fdate2 - 1;
  if Fdate1 <> Fdate2 then
    dxBarSubItem15.Caption := FormatDateTime('dd.mm.yy', Fdate1) + ' - ' + FormatDateTime('dd.mm.yy', Fdate2)
  else
    dxBarSubItem15.Caption := FormatDateTime('dd.mm.yyyy', Fdate1);

  sp_invoice_GET.Close;
  sp_invoice_GET.Parameters.ParamByName('@date_begin').Value := Fdate1;
  sp_invoice_GET.Parameters.ParamByName('@date_end'  ).Value := Fdate2;
  sp_invoice_GET.Parameters.ParamByName('@num_vagon' ).Value := iif(Fnum_vagon = -9, null, Fnum_vagon);
    case cxPageControl1.ActivePageIndex of
      0: sp_invoice_GET.Parameters.ParamByName('@els_cod').Value := '1004653067';
      1: sp_invoice_GET.Parameters.ParamByName('@els_cod').Value := '1006059161';
      2: sp_invoice_GET.Parameters.ParamByName('@els_cod').Value := '1006062218';
    end;
  sp_invoice_GET.Open;

  Screen.Cursor := crDefault;
end;

procedure TfmEtrInvoice.ChangeView();
begin
  if dxBarButton78.Down = True then begin
    Panel1.Visible := True;
    cxPageControl2.Parent := Panel1;
    cxSplitter3.Visible := True;
  end else begin
    Panel1.Visible := False;
    cxPageControl2.Parent := Panel4;
    cxSplitter3.Visible := False;
  end;

  if dxBarButton79.Down = True then begin
    Panel2.Align := alLeft;
    Panel2.Width := 320;
    Panel3.Visible := True;
    cxSplitter1.Visible := True;
  end else begin
    Panel2.Align := alClient;
    Panel3.Visible := False;
    cxSplitter1.Visible := False;
  end;

  Repaint;
  cxGrid1DBBandedTableView1SelectionChanged(nil);
end;

procedure TfmEtrInvoice.dxBarButton78Click(Sender: TObject);
begin
  if dxBarButton78.Down = True then begin
    dxBarButton79.Down := False;
  end;
  ChangeView;
end;

procedure TfmEtrInvoice.dxBarButton79Click(Sender: TObject);
begin
  if dxBarButton79.Down = True then begin
    dxBarButton78.Down := False;
  end;
  ChangeView;
end;

procedure TfmEtrInvoice.SaveInvoiceToXML(invoice_id: integer; invNumber: string);
var         Q : TADOQuery;
      SaveDlg : TSaveDialog;
     FileName : string;
begin

  FileName := invNumber + '_' + FormatDateTime('yyyymmdd', Date());

  SaveDlg := TSaveDialog.Create(nil);
  SaveDlg.FileName := FileName;
  SaveDlg.Filter   := '*.xml|xml';

  if SaveDlg.Execute() then  begin
    FileName := SaveDlg.FileName;
    FileName := LeftStr(FileName, Length(FileName) - Length(ExtractFileExt(FileName)));
    FileName := FileName + '.xml';

    Q := TADOQuery.Create(nil);
    Q.Connection := ADOEtran;
    Q.SQL.Add('SELECT doc_xml_info FROM etran_xml_reply WHERE doc_references_id = ' + IntToStr(invoice_id));
    Q.Open;
    TADOBlobStream.Create(Q.FieldByName('doc_xml_info') as TBlobField, bmRead).SaveToFile(FileName);
    Q.Free;
  end;

  SaveDlg.Free;
end;


procedure TfmEtrInvoice.dxBarButton7Click(Sender: TObject);
begin
	cxGrid1DBBandedTableView1.Filtering.ColumnFilteredItemsList := not dxBarButton7.Down;
end;

procedure TfmEtrInvoice.dxBarButton80Click(Sender: TObject);
var Q: TADOQuery;
begin
  Q := TADOQuery.Create(nil);
  Q.Connection := ADOEtran;
  Q.SQL.Add('SELECT	view_connect.users_group_name, view_connect.etran_login, etran_query_new.period_begin, etran_query_new.period_end, etran_query_new.query_date_load,');
  Q.SQL.Add('		    etran_query_docs_new.doc_date_load, etran_query_docs_new.query_docs_id');
  Q.SQL.Add('FROM	  etran_query_docs_new');
  Q.SQL.Add('		    inner join etran_query_new on etran_query_docs_new.query_id = etran_query_new.query_id');
  Q.SQL.Add('		    inner join view_connect on etran_query_new.connect_id = view_connect.connect_id');
  Q.SQL.Add('WHERE	xml_reply_id in (SELECT xml_reply_id FROM ETRAN_XML_REPLY WHERE doc_references_id = ' + cxGrid1DBBandedTableView1invoice_id.DataBinding.Field.AsString + ')');
  Q.Open;

  fmFilter := TfmFilter.Create(0, Q, 'query_docs_id', 'query_docs_id', 'query_docs_id');
  fmFilter._SetEtranHistory := True;
  fmFilter.ShowModal;

  Q.Free;
end;

procedure TfmEtrInvoice.dxBarButton81Click(Sender: TObject);
type
  TFunc = function(etran_ip: string; users_name: string; users_password: string; ip_address: string; query_xml: string): variant;
var
        FEtran : TFunc;
        handle : THandle;
             v : variant;
             Q : TADOQuery;
  connect_save : TADOConnection;
     query_xml : string;
sp_doc_save_multi : TADOStoredProc;
begin
  Q := TADOQuery.Create(nil);
  Q.Connection := ADOEtran;

  Q.SQL.Add('SELECT	TOP 1 view_connect.*, etran_query_docs_new.doc_id');
  Q.SQL.Add('FROM	  etran_query_docs_new');
  Q.SQL.Add('		    inner join etran_query_new on etran_query_docs_new.query_id = etran_query_new.query_id');
  Q.SQL.Add('		    inner join view_connect on etran_query_new.connect_id = view_connect.connect_id');
  Q.SQL.Add('WHERE	xml_reply_id in (SELECT xml_reply_id FROM ETRAN_XML_REPLY WHERE doc_references_id = ' + cxGrid1DBBandedTableView1invoice_id.DataBinding.Field.AsString + ')');
  Q.SQL.Add('ORDER BY etran_query_docs_new.query_docs_id DESC');
  Q.Open;

  query_xml := '<getInvoice version="1.0"><invoiceID value="' + Q.FieldByName('doc_id').AsString + '"/><useMod11/></getInvoice>';

  handle := LoadLibrary('etranECP.dll');
  @FEtran := GetProcAddress(handle, 'CreateWndGetQuery');
  v := FEtran('172.25.45.4', Q.FieldByName('etran_login').AsString, PasswordFromCode(Q.FieldByName('etran_password').AsAnsiString), Q.FieldByName('etran_ip').AsString, query_xml);
  FreeLibrary(handle);

  if v[0] = True then begin

    connect_save := TADOConnection.Create(nil);
    connect_save.ConnectionString := 'Persist Security Info=True;Provider=SQLOLEDB.1;User ID='+ Q.FieldByName('users_name').AsString + ';' +
                                     'Password='''+ PasswordFromCode(Q.FieldByName('db_password').AsAnsiString) + ''';' +
                                     'Initial Catalog='+ Q.FieldByName('db_name').AsString + ';' +
                                     'Data Source='+ Q.FieldByName('db_server').AsString +';';
    connect_save.LoginPrompt      := False;
    connect_save.KeepConnection   := False;

    sp_doc_save_multi := TADOStoredProc.Create(nil);
    sp_doc_save_multi.Connection := connect_save;
    sp_doc_save_multi.ProcedureName := 'sp_doc_save_multi';

    sp_doc_save_multi.Parameters.Refresh;
    sp_doc_save_multi.Parameters.ParamByName('@xml_reply_id' ).Value := null;
    sp_doc_save_multi.Parameters.ParamByName('@doc_type_id'  ).Value := 2; // Накладная
    sp_doc_save_multi.Parameters.ParamByName('@doc_xml_info' ).Value := v[1];
    sp_doc_save_multi.ExecProc;
    sp_doc_save_multi.Free;
    connect_save.Free;

    RefreshQueryGrid(cxGrid1DBBandedTableView1 , 'invoice_id');
  end;

  Q.Free;
end;

procedure TfmEtrInvoice.dxBarButton82Click(Sender: TObject);
var Q: TADOQuery;
begin
  Q := TADOQuery.Create(nil);
  Q.Connection := ADOEtran;
  Q.SQL.Add('SELECT	doc_xml_info');
  Q.SQL.Add('FROM	  etran_xml_reply');
  Q.SQL.Add('		    inner join (SELECT doc_id, users_id FROM etran_xml_reply WHERE doc_references_id = ' + cxGrid1DBBandedTableView1invoice_id.DataBinding.Field.AsString + ') x1 on etran_xml_reply.doc_id = x1.doc_id and etran_xml_reply.users_id = x1.users_id');
  Q.SQL.Add('WHERE	doc_type_id = -2');
  Q.Open;

  fmEtrXMLView := TfmEtrXMLView.Create(Application);
  fmEtrXMLView._SetXML := Q.FieldByName('doc_xml_info').AsString;
  fmEtrXMLView.ShowModal;

  Q.Free;
end;

procedure TfmEtrInvoice.dxBarButton83Click(Sender: TObject);
var num_vagon : string;
begin
  num_vagon := StoreRegistryString(rgLoad, '\Software\Lis1\Etran_param', 'num_vagon_find',  '');

  if not InputQuery('Номер вагона', 'Номер вагона:', num_vagon) then begin
    Exit;
  end;

  StoreRegistryString(rgSave, '\Software\Lis1\Etran_param', 'num_vagon_find',  num_vagon);

  if TryStrToInt(num_vagon, Fnum_vagon) = False then begin
    Application.MessageBox('Неправильный номер вагона!', 'Ошибка', MB_ICONSTOP or MB_OK);
    Exit;
  end;



  sp_invoice_GET.Close;
  sp_invoice_GET.Parameters.ParamByName('@date_begin').Value := Fdate1;
  sp_invoice_GET.Parameters.ParamByName('@date_end'  ).Value := Fdate2;
  sp_invoice_GET.Parameters.ParamByName('@num_vagon' ).Value := iif(Fnum_vagon = -9, null, Fnum_vagon);
    case cxPageControl1.ActivePageIndex of
      0: sp_invoice_GET.Parameters.ParamByName('@els_cod').Value := '1004653067';
      1: sp_invoice_GET.Parameters.ParamByName('@els_cod').Value := '1006059161';
      2: sp_invoice_GET.Parameters.ParamByName('@els_cod').Value := '1006062218';
    end;
  sp_invoice_GET.Open;
end;

procedure TfmEtrInvoice.dxBarButton84Click(Sender: TObject);
var  exApp, exWkb, exWks, exWks1 : Variant;
    i : integer;
  str : string;
begin
  if cxGrid1DBBandedTableView1.Controller.SelectedRowCount > 0 then begin
    exApp := CreateOleObject('Excel.Application');
    exWkb := exApp.Workbooks.Add(GetEtranDocBlob(ADOEtran, 29, 9, True)); // 'ГУ-12.xls'
    exWkb := exApp.ActiveWorkbook;
    exWks1 := exWkb.WorkSheets[1];
    exWkb.Application.DisplayAlerts := False;
//    exApp.Visible := True;

    for i:=0 to cxGrid1DBBandedTableView1.Controller.SelectedRowCount - 1 do begin
      exWks := exWkb.WorkSheets.Add;
      str := VarToStr(cxGrid1DBBandedTableView1.Controller.SelectedRows[i].Values[cxGrid1DBBandedTableView1invNumber.Index]);
      exWks.Name := str;
      exWks1.Cells.Copy;
      exWks.Cells.PasteSpecial(-4122);

      PrintInvoice_ETRAN29(cxGrid1DBBandedTableView1.Controller.SelectedRows[i].Values[cxGrid1DBBandedTableView1invoice_id.Index], ADOEtran, exWks)
    end;
    exWks1.Delete;

    exApp.CutCopyMode := False;
    exApp.Visible := True;

    VarClear(exWks);
    VarClear(exWks1);
    VarClear(exWkb);
    VarClear(exApp);
  end else
    ShowMessage('Нет выделенных накладных.');

end;

procedure TfmEtrInvoice.dxBarButton85Click(Sender: TObject);
begin
  if not sp_invoice_GET.FieldByName('invoice_id').IsNull then
    PrintInvoice_ETRAN_SMGS1(sp_invoice_GET.FieldByName('invoice_id').AsInteger, ADOEtran)
  else
    ShowMessage('Накладная не найдена.');
end;

procedure TfmEtrInvoice.dxBarButton86Click(Sender: TObject);
begin
  if not sp_invoice_GET.FieldByName('invoice_id').IsNull then
    PrintInvoice_ETRAN_SMGS2(sp_invoice_GET.FieldByName('invoice_id').AsInteger, ADOEtran)
  else
    ShowMessage('Накладная не найдена.');
end;

procedure TfmEtrInvoice.dxBarButton8Click(Sender: TObject);
begin
	PrintcxGrid(cxGridDBBandedTableView11);
end;

procedure TfmEtrInvoice.dxBarButton9Click(Sender: TObject);
begin
	SetdxDBGridColumns(cxGridDBBandedTableView11);
end;

procedure TfmEtrInvoice.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action := caFree;
end;

procedure TfmEtrInvoice.FormDestroy(Sender: TObject);
begin
  StoreRegistryGrid(rgSave,'\Software\Lis1\Etran\Inv_Grids', cxGrid1DBBandedTableView1);
  StoreRegistryCheck(rgSave, '\Software\Lis1\Etran\Inv_Grids', 'ViewDown',   dxBarButton78.Down);
  StoreRegistryCheck(rgSave, '\Software\Lis1\Etran\Inv_Grids', 'ViewRight',  dxBarButton79.Down);
end;

procedure TfmEtrInvoice.SetPeriodInv(period_begin: TDateTime; period_end: TDateTime; inv_number: string = '');
var dt: TDateTime;
begin
//  Query_Invoice.SQL[19] := ' convert(varchar(8),date_from_to,112) >= '+DateToSQL(period_begin) + ' AND ' +
//                           ' convert(varchar(8),date_from_to,112) <= '+DateToSQL(period_begin);
//
//  if inv_number <> '' then Query_Invoice.SQL[19] := Query_Invoice.SQL[19] + ' AND num_document like ''%'+inv_number+'%''';
//
//  Query_Invoice.Open;
//  cxDateEdit1.Date :=period_begin;
//  cxDateEdit2.Date :=period_end;
//  cxTextEdit1.Text :=inv_number;
//  if not Query_Invoice.Eof then begin
//    SP_XML_parser.Close;
//    SP_XML_parser.Parameters.Refresh;
//    SP_XML_parser.Parameters.ParamByName('@row_id').Value  := Query_Invoice.FieldByName('invoice_id').AsInteger;
//    SP_XML_parser.Parameters.ParamByName('@doc_type_id').Value   := 2;
//    SP_XML_parser.Parameters.ParamByName('@doc_sub').Value       := 0;
//    SP_XML_parser.Open;
//    ClientDSFromRecordset(SP_XML_parser.Recordset, ClientDataSet1);
//  end else
//    ClientDSClear(ClientDataSet1);
//  ClientDSToForm(self, ClientDataSet1);
//  cxPageControl2Change(nil);
end;

initialization
  dxInitialize;

finalization
  dxFinalize;

end.
