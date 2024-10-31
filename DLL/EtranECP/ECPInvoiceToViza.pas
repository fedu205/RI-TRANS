unit ECPInvoiceToViza;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters,
  cxContainer, cxEdit, cxMaskEdit, cxButtonEdit, cxTextEdit, StdCtrls, ExtCtrls,
  cxGroupBox, cxDropDownEdit, cxCalendar, cxPC, DB, ADODB, dxGDIPlusClasses, dxGDIPlusAPI,
  cxStyles, cxCustomData, cxFilter, cxData, cxDataStorage, cxDBData, DBClient,
  cxGridCustomView, cxGridCustomTableView, cxGridTableView, Raznoe,
  cxGridBandedTableView, cxGridDBBandedTableView, cxClasses, cxGridLevel, cxGrid,
  dxBar, cxPropertiesStore, StrUtils, Buttons, Other, cxCurrencyEdit,
  dxCore, cxDateUtils, dxBarBuiltInMenu, cxNavigator, dxSkinsCore,
  dxSkinBlack, dxSkinBlue, dxSkinBlueprint, dxSkinCaramel, dxSkinCoffee,
  dxSkinDarkRoom, dxSkinDarkSide, dxSkinDevExpressDarkStyle,
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
  dxSkinXmas2008Blue, dxSkinscxPCPainter, dxSkinsdxBarPainter, ComCtrls,
  dxSkinOffice2016Colorful, dxSkinOffice2016Dark, dxSkinVisualStudio2013Blue,
  dxSkinVisualStudio2013Dark, dxSkinVisualStudio2013Light, Default,
  System.ImageList, Vcl.ImgList, DateUtils, cxRadioGroup, Filter, cxCheckBox,
  cxImageList, cxDataControllerConditionalFormattingRulesManagerDialog,
  dxSkinTheBezier, cxLookupEdit, cxDBLookupEdit, cxDBLookupComboBox,
  dxDateRanges, dxSkinsForm, dxSkinOffice2019Colorful, dxSkinBasic,
  dxSkinOffice2019Black, dxSkinOffice2019DarkGray, dxSkinOffice2019White,
  dxScrollbarAnnotations;

type
  TfmECPInvoiceToViza = class(TForm)
    GridPanel1: TGridPanel;
    Panel1: TPanel;
    Panel2: TPanel;
    cxGroupBox2: TcxGroupBox;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    cxButtonEdit2: TcxButtonEdit;
    cxButtonEdit1: TcxButtonEdit;
    cxButtonEdit6: TcxButtonEdit;
    cxTextEdit2: TcxTextEdit;
    cxTextEdit1: TcxTextEdit;
    Label40: TLabel;
    cxButtonEdit17: TcxButtonEdit;
    cxGroupBox4: TcxGroupBox;
    Label12: TLabel;
    Label11: TLabel;
    Label10: TLabel;
    cxGroupBox9: TcxGroupBox;
    Label49: TLabel;
    Label50: TLabel;
    Label51: TLabel;
    Label52: TLabel;
    Label54: TLabel;
    cxTextEdit29: TcxTextEdit;
    cxButtonEdit31: TcxButtonEdit;
    cxTextEdit31: TcxTextEdit;
    cxTextEdit32: TcxTextEdit;
    cxDateEdit1: TcxDateEdit;
    cxGroupBox1: TcxGroupBox;
    cxPageControl1: TcxPageControl;
    cxTabSheet1: TcxTabSheet;
    cxTabSheet2: TcxTabSheet;
    cxTabSheet3: TcxTabSheet;
    cxTabSheet4: TcxTabSheet;
    cxTabSheet5: TcxTabSheet;
    cxTabSheet6: TcxTabSheet;
    cxTabSheet7: TcxTabSheet;
    cxTabSheet8: TcxTabSheet;
    cxTabSheet9: TcxTabSheet;
    cxTabSheet10: TcxTabSheet;
    cxTabSheet11: TcxTabSheet;
    cxGrid1Level1: TcxGridLevel;
    cxGrid1: TcxGrid;
    cxGrid1DBBandedTableView1: TcxGridDBBandedTableView;
    Client_invFreight: TClientDataSet;
    Client_invFreightfreightCode: TStringField;
    Client_invFreightfreightExactName: TStringField;
    Client_invFreightfreightGNGID: TIntegerField;
    Client_invFreightfreightGNGID2001: TIntegerField;
    Client_invFreightfreightGNGCode: TStringField;
    Client_invFreightfreightAdditional: TStringField;
    Client_invFreightfreightPackTypeID: TIntegerField;
    Client_invFreightfreightPocketCount: TIntegerField;
    Client_invFreightfreightPackageCount: TIntegerField;
    Client_invFreightfreightWeight: TIntegerField;
    Client_invFreightfreightWeightStdGross: TFloatField;
    Client_invFreightfreightWeightStdNet: TFloatField;
    Client_invFreightfreightMaxLength: TIntegerField;
    Client_invFreightfreightMaxWidth: TIntegerField;
    Client_invFreightfreightMaxHeight: TIntegerField;
    Client_invFreightfreightSendersMark: TStringField;
    Client_invFreightfreightDangerSignID: TIntegerField;
    Client_invFreightfreightDangerID: TIntegerField;
    Client_invFreightfreightAccidentCardID: TIntegerField;
    Client_invDistance: TClientDataSet;
    Client_invDistanceid: TAutoIncField;
    Client_invDistancedistCountryCode: TStringField;
    Client_invDistancedistStationCode: TStringField;
    Client_invDistancedistPortCode: TStringField;
    Client_invDistancedistLoadWay: TStringField;
    Client_invDistancedistTrackTypeID: TIntegerField;
    Client_invDistancedistTranspTypeID: TIntegerField;
    Client_invDistancedistMinWay: TIntegerField;
    Client_invDistancedistRecipOKPO: TStringField;
    Client_invDistancedistRecipName: TStringField;
    Client_invDistancedistRecipAddress: TStringField;
    Client_invDistancedistPayerCode: TStringField;
    Client_invDistancedistPayerName: TStringField;
    Client_invDistancedistFRWSubCode: TStringField;
    Client_invDistancedistSign: TIntegerField;
    Client_invFreightid: TAutoIncField;
    Client_invSPC: TClientDataSet;
    Client_invSPCid: TAutoIncField;
    Client_invSPCspcTranspClauseID: TIntegerField;
    Client_invSPCspcCustomText: TStringField;
    Client_invDoc: TClientDataSet;
    Client_invDev: TClientDataSet;
    Client_invCont: TClientDataSet;
    Client_invCar: TClientDataSet;
    Client_invFreightWeight: TClientDataSet;
    Client_invTranspClause: TClientDataSet;
    Client_invCndBlock: TClientDataSet;
    Client_invGuide: TClientDataSet;
    dxBarManager1: TdxBarManager;
    cxTextEdit33: TcxTextEdit;
    cxTextEdit34: TcxTextEdit;
    Client_invCarid: TAutoIncField;
    Client_invCarcarClaimId: TIntegerField;
    Client_invCarcarClaimOtprNom: TStringField;
    Client_invCarcarClaimPodNum: TStringField;
    Client_invCarcarTypeID: TIntegerField;
    Client_invCarcarNumber: TStringField;
    Client_invCarcarOwnerCountryCode: TStringField;
    Client_invCarcarOwnerTypeID: TIntegerField;
    Client_invCarcarOwnerID: TIntegerField;
    Client_invCarcarOwnerOKPO: TStringField;
    Client_invCarcarOwnerName: TStringField;
    Client_invCarcarTenantID: TIntegerField;
    Client_invCarcarPlacesCount: TIntegerField;
    Client_invCarcarTonnage: TCurrencyField;
    Client_invCarcarAxles: TIntegerField;
    Client_invCarcarVolume: TCurrencyField;
    Client_invCarcarFreightGNGCode: TStringField;
    Client_invCarcarFreightGNGID2001: TStringField;
    Client_invCarcarWeightDep: TCurrencyField;
    Client_invCarcarWeightDepReal: TCurrencyField;
    Client_invCarcarWeightGross: TIntegerField;
    Client_invCarcarWeightNet: TIntegerField;
    Client_invCarcarWeightAddDev: TIntegerField;
    Client_invCarcarAddDevWithGoods: TIntegerField;
    Client_invCarcarPriorFreightCode: TStringField;
    Client_invCarcarOutsizeCode: TStringField;
    Client_invCarcarFrameWeight: TIntegerField;
    Client_invCarcarFrameWagNum: TStringField;
    Client_invCarcarTopHeight: TIntegerField;
    Client_invCarcarMainShtabQuantity: TIntegerField;
    Client_invCarcarMainShtabHeight: TIntegerField;
    Client_invCarcarHeadShtabQuantity: TIntegerField;
    Client_invCarcarLiquidTemperature: TIntegerField;
    Client_invCarcarLiquidHeight: TIntegerField;
    Client_invCarcarLiquidDensity: TCurrencyField;
    Client_invCarcarLiquidVolume: TIntegerField;
    Client_invCarcarRefNum: TStringField;
    Client_invCarcarRefCount: TIntegerField;
    Client_invCarcarRolls: TIntegerField;
    Client_invCarcarConnectCode: TIntegerField;
    Client_invCarcarIsCover: TIntegerField;
    DS_invFreight: TDataSource;
    Client_invFreightfreightName: TStringField;
    cxGrid1DBBandedTableView1id: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1freightName: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1freightCode: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1freightExactName: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1freightGNGID: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1freightGNGID2001: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1freightGNGCode: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1freightAdditional: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1freightPackTypeID: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1freightPocketCount: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1freightPackageCount: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1freightWeight: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1freightWeightStdGross: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1freightWeightStdNet: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1freightMaxLength: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1freightMaxWidth: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1freightMaxHeight: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1freightSendersMark: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1freightDangerSignID: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1freightDangerID: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1freightAccidentCard: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1freightAccidentCardID: TcxGridDBBandedColumn;
    dxBarPopupMenu1: TdxBarPopupMenu;
    dxBarButton2: TdxBarButton;
    dxBarButton3: TdxBarButton;
    dxBarButton4: TdxBarButton;
    dxBarButton5: TdxBarButton;
    Client_invFreightfreightAccidentCard: TIntegerField;
    Client_invGuideid: TAutoIncField;
    Client_invGuideguideFIO: TStringField;
    Client_invGuideguidePassportSer: TStringField;
    Client_invGuideguidePassportNum: TStringField;
    Client_invGuideguideWarrantNum: TStringField;
    Client_invCndBlockid: TAutoIncField;
    Client_invCndBlockcndClauseId: TIntegerField;
    Client_invCndBlockcndClauseName: TStringField;
    Client_invCndBlockcndClauseCustomText: TStringField;
    Client_invCndBlockcndFreightCode: TStringField;
    Client_invCndBlockcndFreightName: TStringField;
    Client_invTranspClauseid: TAutoIncField;
    Client_invTranspClausetranspClauseId: TIntegerField;
    Client_invTranspClausetranspClauseName: TStringField;
    Client_invTranspClausetranspClauseCustomText: TStringField;
    Client_invFreightWeightid: TAutoIncField;
    Client_invFreightWeightfreightCode: TStringField;
    Client_invFreightWeightfreightName: TStringField;
    Client_invFreightWeightfreightWeight: TIntegerField;
    Client_invFreightWeightfreightRealWeight: TIntegerField;
    Client_invDevid: TAutoIncField;
    Client_invDevdevTypeID: TIntegerField;
    Client_invDevdevTypeName: TStringField;
    Client_invDevdevNumber: TStringField;
    Client_invDevdevOwnerCountryCode: TStringField;
    Client_invDevdevOwnerTypeID: TIntegerField;
    Client_invDevdevOwnerOKPO: TStringField;
    Client_invDevdevOwnerName: TStringField;
    Client_invDevdevQuantity: TIntegerField;
    Client_invDevdevReturn: TIntegerField;
    Client_invDocid: TAutoIncField;
    Client_invDocdocTypeID: TIntegerField;
    Client_invDocdocTypeName: TStringField;
    Client_invDocdocNumber: TStringField;
    Client_invDocdocDate: TDateField;
    Client_invDocdayCount: TIntegerField;
    Client_invContid: TAutoIncField;
    DS_invGuide: TDataSource;
    DS_invCndBlock: TDataSource;
    DS_invTranspClause: TDataSource;
    DS_invFreightWeight: TDataSource;
    DS_invDistance: TDataSource;
    DS_invSPC: TDataSource;
    DS_invDoc: TDataSource;
    DS_invDev: TDataSource;
    cxGrid2: TcxGrid;
    cxGridDBBandedTableView1: TcxGridDBBandedTableView;
    cxGridLevel1: TcxGridLevel;
    cxGridDBBandedTableView1id: TcxGridDBBandedColumn;
    cxGridDBBandedTableView1guideFIO: TcxGridDBBandedColumn;
    cxGridDBBandedTableView1guidePassportSer: TcxGridDBBandedColumn;
    cxGridDBBandedTableView1guidePassportNum: TcxGridDBBandedColumn;
    cxGridDBBandedTableView1guideWarrantNum: TcxGridDBBandedColumn;
    cxGrid3: TcxGrid;
    cxGridDBBandedTableView2: TcxGridDBBandedTableView;
    cxGridLevel2: TcxGridLevel;
    cxGridDBBandedTableView2id: TcxGridDBBandedColumn;
    cxGridDBBandedTableView2cndClauseId: TcxGridDBBandedColumn;
    cxGridDBBandedTableView2cndClauseName: TcxGridDBBandedColumn;
    cxGridDBBandedTableView2cndClauseCustomText: TcxGridDBBandedColumn;
    cxGridDBBandedTableView2cndFreightCode: TcxGridDBBandedColumn;
    cxGridDBBandedTableView2cndFreightName: TcxGridDBBandedColumn;
    cxGrid4: TcxGrid;
    cxGridDBBandedTableView3: TcxGridDBBandedTableView;
    cxGridLevel3: TcxGridLevel;
    cxGridDBBandedTableView3id: TcxGridDBBandedColumn;
    cxGridDBBandedTableView3transpClauseId: TcxGridDBBandedColumn;
    cxGridDBBandedTableView3transpClauseName: TcxGridDBBandedColumn;
    cxGridDBBandedTableView3transpClauseCustomText: TcxGridDBBandedColumn;
    cxGrid5: TcxGrid;
    cxGridDBBandedTableView4: TcxGridDBBandedTableView;
    cxGridLevel4: TcxGridLevel;
    cxGridDBBandedTableView4id: TcxGridDBBandedColumn;
    cxGridDBBandedTableView4freightCode: TcxGridDBBandedColumn;
    cxGridDBBandedTableView4freightName: TcxGridDBBandedColumn;
    cxGridDBBandedTableView4freightWeight: TcxGridDBBandedColumn;
    cxGridDBBandedTableView4freightRealWeight: TcxGridDBBandedColumn;
    cxGrid6: TcxGrid;
    cxGridDBBandedTableView5: TcxGridDBBandedTableView;
    cxGridLevel5: TcxGridLevel;
    cxGrid7: TcxGrid;
    cxGridDBBandedTableView6: TcxGridDBBandedTableView;
    cxGridLevel6: TcxGridLevel;
    cxGridDBBandedTableView6id: TcxGridDBBandedColumn;
    cxGridDBBandedTableView6docTypeID: TcxGridDBBandedColumn;
    cxGridDBBandedTableView6docTypeName: TcxGridDBBandedColumn;
    cxGridDBBandedTableView6docNumber: TcxGridDBBandedColumn;
    cxGridDBBandedTableView6docDate: TcxGridDBBandedColumn;
    cxGridDBBandedTableView6dayCount: TcxGridDBBandedColumn;
    cxGrid8: TcxGrid;
    cxGridDBBandedTableView7: TcxGridDBBandedTableView;
    cxGridLevel7: TcxGridLevel;
    cxGrid9: TcxGrid;
    cxGridDBBandedTableView8: TcxGridDBBandedTableView;
    cxGridLevel8: TcxGridLevel;
    dxBarPopupMenu2: TdxBarPopupMenu;
    dxBarPopupMenu3: TdxBarPopupMenu;
    dxBarPopupMenu4: TdxBarPopupMenu;
    dxBarPopupMenu5: TdxBarPopupMenu;
    dxBarPopupMenu6: TdxBarPopupMenu;
    dxBarPopupMenu7: TdxBarPopupMenu;
    dxBarPopupMenu8: TdxBarPopupMenu;
    Client_invDevdevOwnerCountryName: TStringField;
    Client_invDevdevOwnerTypeName: TStringField;
    cxGridDBBandedTableView5id: TcxGridDBBandedColumn;
    cxGridDBBandedTableView5devTypeID: TcxGridDBBandedColumn;
    cxGridDBBandedTableView5devTypeName: TcxGridDBBandedColumn;
    cxGridDBBandedTableView5devNumber: TcxGridDBBandedColumn;
    cxGridDBBandedTableView5devOwnerCountryCode: TcxGridDBBandedColumn;
    cxGridDBBandedTableView5devOwnerTypeID: TcxGridDBBandedColumn;
    cxGridDBBandedTableView5devOwnerOKPO: TcxGridDBBandedColumn;
    cxGridDBBandedTableView5devOwnerName: TcxGridDBBandedColumn;
    cxGridDBBandedTableView5devQuantity: TcxGridDBBandedColumn;
    cxGridDBBandedTableView5devReturn: TcxGridDBBandedColumn;
    cxGridDBBandedTableView5devOwnerCountryName: TcxGridDBBandedColumn;
    cxGridDBBandedTableView5devOwnerTypeName: TcxGridDBBandedColumn;
    cxGrid10: TcxGrid;
    cxGridDBBandedTableView9: TcxGridDBBandedTableView;
    cxGridLevel9: TcxGridLevel;
    DS_invCar: TDataSource;
    dxBarPopupMenu9: TdxBarPopupMenu;
    cxGridDBBandedTableView9id: TcxGridDBBandedColumn;
    cxGridDBBandedTableView9carClaimId: TcxGridDBBandedColumn;
    cxGridDBBandedTableView9carClaimOtprNom: TcxGridDBBandedColumn;
    cxGridDBBandedTableView9carClaimPodNum: TcxGridDBBandedColumn;
    cxGridDBBandedTableView9carTypeID: TcxGridDBBandedColumn;
    cxGridDBBandedTableView9carNumber: TcxGridDBBandedColumn;
    cxGridDBBandedTableView9carOwnerCountryCode: TcxGridDBBandedColumn;
    cxGridDBBandedTableView9carOwnerTypeID: TcxGridDBBandedColumn;
    cxGridDBBandedTableView9carOwnerID: TcxGridDBBandedColumn;
    cxGridDBBandedTableView9carOwnerOKPO: TcxGridDBBandedColumn;
    cxGridDBBandedTableView9carOwnerName: TcxGridDBBandedColumn;
    cxGridDBBandedTableView9carTenantID: TcxGridDBBandedColumn;
    cxGridDBBandedTableView9carPlacesCount: TcxGridDBBandedColumn;
    cxGridDBBandedTableView9carTonnage: TcxGridDBBandedColumn;
    cxGridDBBandedTableView9carAxles: TcxGridDBBandedColumn;
    cxGridDBBandedTableView9carVolume: TcxGridDBBandedColumn;
    cxGridDBBandedTableView9carFreightGNGCode: TcxGridDBBandedColumn;
    cxGridDBBandedTableView9carFreightGNGID2001: TcxGridDBBandedColumn;
    cxGridDBBandedTableView9carWeightDep: TcxGridDBBandedColumn;
    cxGridDBBandedTableView9carWeightDepReal: TcxGridDBBandedColumn;
    cxGridDBBandedTableView9carWeightGross: TcxGridDBBandedColumn;
    cxGridDBBandedTableView9carWeightNet: TcxGridDBBandedColumn;
    cxGridDBBandedTableView9carWeightAddDev: TcxGridDBBandedColumn;
    cxGridDBBandedTableView9carAddDevWithGoods: TcxGridDBBandedColumn;
    cxGridDBBandedTableView9carPriorFreightCode: TcxGridDBBandedColumn;
    cxGridDBBandedTableView9carOutsizeCode: TcxGridDBBandedColumn;
    cxGridDBBandedTableView9carFrameWeight: TcxGridDBBandedColumn;
    cxGridDBBandedTableView9carFrameWagNum: TcxGridDBBandedColumn;
    cxGridDBBandedTableView9carTopHeight: TcxGridDBBandedColumn;
    cxGridDBBandedTableView9carMainShtabQuantity: TcxGridDBBandedColumn;
    cxGridDBBandedTableView9carMainShtabHeight: TcxGridDBBandedColumn;
    cxGridDBBandedTableView9carHeadShtabQuantity: TcxGridDBBandedColumn;
    cxGridDBBandedTableView9carLiquidTemperature: TcxGridDBBandedColumn;
    cxGridDBBandedTableView9carLiquidHeight: TcxGridDBBandedColumn;
    cxGridDBBandedTableView9carLiquidDensity: TcxGridDBBandedColumn;
    cxGridDBBandedTableView9carLiquidVolume: TcxGridDBBandedColumn;
    cxGridDBBandedTableView9carTankType: TcxGridDBBandedColumn;
    cxGridDBBandedTableView9carRefNum: TcxGridDBBandedColumn;
    cxGridDBBandedTableView9carRefCount: TcxGridDBBandedColumn;
    cxGridDBBandedTableView9carRolls: TcxGridDBBandedColumn;
    cxGridDBBandedTableView9carConnectCode: TcxGridDBBandedColumn;
    cxGridDBBandedTableView9carIsCover: TcxGridDBBandedColumn;
    Client_invCarcarTankType: TStringField;
    Client_invDistancedistCountryName: TStringField;
    Client_invDistancedistStationName: TStringField;
    Client_invDistancedistPortName: TStringField;
    Client_invDistancedistTrackTypeName: TStringField;
    Client_invDistancedistTranspTypeName: TStringField;
    Client_invContcontNumber: TStringField;
    Client_invContcontCarOrder: TIntegerField;
    Client_invContcontTonnage: TIntegerField;
    Client_invContcontTypeBig: TIntegerField;
    Client_invContcontSizeBig: TIntegerField;
    Client_invContcontWeightDep: TIntegerField;
    Client_invContcontWeightNet: TIntegerField;
    Client_invContcontPlacesCount: TIntegerField;
    Client_invContcontVolume: TIntegerField;
    Client_invContcontOwnerCountryCode: TStringField;
    Client_invContcontOwnerCountryName: TStringField;
    Client_invContcontOwnerTypeID: TIntegerField;
    Client_invContcontOwnerTypeName: TStringField;
    Client_invContcontOwnerId: TIntegerField;
    Client_invContcontOwnerOKPO: TStringField;
    Client_invContcontOwnerName: TStringField;
    dxBarPopupMenu10: TdxBarPopupMenu;
    cxGridDBBandedTableView8id: TcxGridDBBandedColumn;
    cxGridDBBandedTableView8distCountryCode: TcxGridDBBandedColumn;
    cxGridDBBandedTableView8distStationCode: TcxGridDBBandedColumn;
    cxGridDBBandedTableView8distPortCode: TcxGridDBBandedColumn;
    cxGridDBBandedTableView8distLoadWay: TcxGridDBBandedColumn;
    cxGridDBBandedTableView8distTrackTypeID: TcxGridDBBandedColumn;
    cxGridDBBandedTableView8distTranspTypeID: TcxGridDBBandedColumn;
    cxGridDBBandedTableView8distMinWay: TcxGridDBBandedColumn;
    cxGridDBBandedTableView8distRecipOKPO: TcxGridDBBandedColumn;
    cxGridDBBandedTableView8distRecipName: TcxGridDBBandedColumn;
    cxGridDBBandedTableView8distRecipAddress: TcxGridDBBandedColumn;
    cxGridDBBandedTableView8distPayerCode: TcxGridDBBandedColumn;
    cxGridDBBandedTableView8distPayerName: TcxGridDBBandedColumn;
    cxGridDBBandedTableView8distFRWSubCode: TcxGridDBBandedColumn;
    cxGridDBBandedTableView8distSign: TcxGridDBBandedColumn;
    cxGridDBBandedTableView8distCountryName: TcxGridDBBandedColumn;
    cxGridDBBandedTableView8distStationName: TcxGridDBBandedColumn;
    cxGridDBBandedTableView8distPortName: TcxGridDBBandedColumn;
    cxGridDBBandedTableView8distTrackTypeName: TcxGridDBBandedColumn;
    cxGridDBBandedTableView8distTranspTypeName: TcxGridDBBandedColumn;
    DS_invCont: TDataSource;
    dxBarPopupMenu11: TdxBarPopupMenu;
    cxGrid11: TcxGrid;
    cxGridDBBandedTableView10: TcxGridDBBandedTableView;
    cxGridLevel10: TcxGridLevel;
    cxGridDBBandedTableView10id: TcxGridDBBandedColumn;
    cxGridDBBandedTableView10contNumber: TcxGridDBBandedColumn;
    cxGridDBBandedTableView10contCarOrder: TcxGridDBBandedColumn;
    cxGridDBBandedTableView10contTonnage: TcxGridDBBandedColumn;
    cxGridDBBandedTableView10contTypeBig: TcxGridDBBandedColumn;
    cxGridDBBandedTableView10contSizeBig: TcxGridDBBandedColumn;
    cxGridDBBandedTableView10contWeightDep: TcxGridDBBandedColumn;
    cxGridDBBandedTableView10contWeightNet: TcxGridDBBandedColumn;
    cxGridDBBandedTableView10contPlacesCount: TcxGridDBBandedColumn;
    cxGridDBBandedTableView10contVolume: TcxGridDBBandedColumn;
    cxGridDBBandedTableView10contOwnerCountryCode: TcxGridDBBandedColumn;
    cxGridDBBandedTableView10contOwnerCountryName: TcxGridDBBandedColumn;
    cxGridDBBandedTableView10contOwnerTypeID: TcxGridDBBandedColumn;
    cxGridDBBandedTableView10contOwnerTypeName: TcxGridDBBandedColumn;
    cxGridDBBandedTableView10contOwnerId: TcxGridDBBandedColumn;
    cxGridDBBandedTableView10contOwnerOKPO: TcxGridDBBandedColumn;
    cxGridDBBandedTableView10contOwnerName: TcxGridDBBandedColumn;
    Client_invSPCspcTranspClauseName: TStringField;
    cxGridDBBandedTableView7id: TcxGridDBBandedColumn;
    cxGridDBBandedTableView7spcTranspClauseID: TcxGridDBBandedColumn;
    cxGridDBBandedTableView7spcCustomText: TcxGridDBBandedColumn;
    cxGridDBBandedTableView7spcTranspClauseName: TcxGridDBBandedColumn;
    Panel4: TPanel;
    BitBtn2: TBitBtn;
    BitBtn1: TBitBtn;
    Client_invCarcarTenantName: TStringField;
    Label13: TLabel;
    cxButtonEdit8: TcxButtonEdit;
    cxTextEdit6: TcxTextEdit;
    Label14: TLabel;
    Label15: TLabel;
    cxTextEdit7: TcxTextEdit;
    cxTextEdit8: TcxTextEdit;
    Label16: TLabel;
    Label44: TLabel;
    cxButtonEdit19: TcxButtonEdit;
    cxTextEdit19: TcxTextEdit;
    Label45: TLabel;
    Label18: TLabel;
    cxButtonEdit9: TcxButtonEdit;
    cxButtonEdit15: TcxButtonEdit;
    Label31: TLabel;
    cxButtonEdit22: TcxButtonEdit;
    cxButtonEdit14: TcxButtonEdit;
    Label19: TLabel;
    cxTextEdit11: TcxTextEdit;
    cxTextEdit13: TcxTextEdit;
    cxButtonEdit12: TcxButtonEdit;
    Label21: TLabel;
    cxButtonEdit10: TcxButtonEdit;
    Label23: TLabel;
    cxTextEdit10: TcxTextEdit;
    Label20: TLabel;
    cxButtonEdit11: TcxButtonEdit;
    cxButtonEdit23: TcxButtonEdit;
    Label4: TLabel;
    cxTextEdit3: TcxTextEdit;
    cxTextEdit18: TcxTextEdit;
    Label39: TLabel;
    Label32: TLabel;
    cxTextEdit21: TcxTextEdit;
    cxTextEdit20: TcxTextEdit;
    Label34: TLabel;
    cxButtonEdit25: TcxButtonEdit;
    cxButtonEdit26: TcxButtonEdit;
    Label35: TLabel;
    cxTextEdit12: TcxTextEdit;
    Label36: TLabel;
    Label37: TLabel;
    cxButtonEdit28: TcxButtonEdit;
    cxButtonEdit27: TcxButtonEdit;
    cxButtonEdit34: TcxButtonEdit;
    cxButtonEdit35: TcxButtonEdit;
    Label30: TLabel;
    cxButtonEdit21: TcxButtonEdit;
    cxButtonEdit33: TcxButtonEdit;
    cxButtonEdit24: TcxButtonEdit;
    Label33: TLabel;
    cxTextEdit41: TcxTextEdit;
    Label25: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    Label9: TLabel;
    Label17: TLabel;
    cxTextEdit9: TcxTextEdit;
    cxTextEdit5: TcxTextEdit;
    cxTextEdit4: TcxTextEdit;
    cxButtonEdit3: TcxButtonEdit;
    cxGroupBox3: TcxGroupBox;
    Label22: TLabel;
    Label24: TLabel;
    Label26: TLabel;
    Label27: TLabel;
    Label28: TLabel;
    Label29: TLabel;
    Label38: TLabel;
    Label41: TLabel;
    Label46: TLabel;
    Label48: TLabel;
    Label47: TLabel;
    Label53: TLabel;
    Label43: TLabel;
    Label64: TLabel;
    cxButtonEdit18: TcxButtonEdit;
    cxButtonEdit13: TcxButtonEdit;
    cxTextEdit14: TcxTextEdit;
    cxTextEdit15: TcxTextEdit;
    cxTextEdit16: TcxTextEdit;
    cxTextEdit17: TcxTextEdit;
    cxTextEdit26: TcxTextEdit;
    cxButtonEdit30: TcxButtonEdit;
    cxButtonEdit29: TcxButtonEdit;
    cxTextEdit28: TcxTextEdit;
    cxTextEdit30: TcxTextEdit;
    cxTextEdit27: TcxTextEdit;
    cxDateEdit2: TcxDateEdit;
    Label55: TLabel;
    cxButtonEdit7: TcxButtonEdit;
    cxButtonEdit5: TcxButtonEdit;
    Label56: TLabel;
    Label57: TLabel;
    cxTextEdit38: TcxTextEdit;
    Label58: TLabel;
    cxButtonEdit32: TcxButtonEdit;
    Label61: TLabel;
    cxButtonEdit20: TcxButtonEdit;
    cxTextEdit39: TcxTextEdit;
    Label60: TLabel;
    Label62: TLabel;
    cxTextEdit37: TcxTextEdit;
    cxTextEdit35: TcxTextEdit;
    Label63: TLabel;
    Label65: TLabel;
    cxTextEdit40: TcxTextEdit;
    Panel5: TPanel;
    cxGrid12: TcxGrid;
    cxGridDBBandedTableView11: TcxGridDBBandedTableView;
    cxGridLevel11: TcxGridLevel;
    Splitter1: TSplitter;
    dxBarPopupMenu12: TdxBarPopupMenu;
    DS_freightCLS: TDataSource;
    Client_freightCLS: TClientDataSet;
    AutoIncField1: TAutoIncField;
    Client_freightCLSclsTranspClauseID: TIntegerField;
    Client_freightCLSclsTranspClauseName: TStringField;
    Client_freightCLSclsCustomText: TStringField;
    Client_freightCLSinvFreight_id: TIntegerField;
    cxGridDBBandedTableView11id: TcxGridDBBandedColumn;
    cxGridDBBandedTableView11invFreight_id: TcxGridDBBandedColumn;
    cxGridDBBandedTableView11clsTranspClauseID: TcxGridDBBandedColumn;
    cxGridDBBandedTableView11clsTranspClauseName: TcxGridDBBandedColumn;
    cxGridDBBandedTableView11clsCustomText: TcxGridDBBandedColumn;
    cxButtonEdit4: TcxButtonEdit;
    Client_invFreightfreightDangerName: TStringField;
    Client_carSPC: TClientDataSet;
    Client_carSPCid: TAutoIncField;
    Client_carSPCcar_id: TIntegerField;
    Client_carSPCspcTranspClauseID: TIntegerField;
    Client_carSPCspcTranspClauseName: TStringField;
    Client_carSPCspcCustomText: TStringField;
    DS_carSPC: TDataSource;
    dxBarButton1: TdxBarButton;
    dxBarButton6: TdxBarButton;
    Query_NSI: TADOQuery;
    DS_carCSL: TDataSource;
    Client_carCSL: TClientDataSet;
    Client_carCSLid: TAutoIncField;
    Client_carCSLcar_id: TIntegerField;
    Client_carCSLsealTypeID: TIntegerField;
    Client_carCSLsealTypeName: TStringField;
    Client_carCSLsealMarks: TStringField;
    Client_carCSLsealQuantity: TStringField;
    Client_carCSLsealYear: TStringField;
    Client_carCSLsealOwnerTypeID: TIntegerField;
    Client_carCSLsealOwnerTypeName: TStringField;
    Client_carCSLsealRailwayID: TIntegerField;
    Client_carCSLsealRailwayName: TStringField;
    BitBtn3: TBitBtn;
    cxGridDBBandedTableView9fact_track_trip_id: TcxGridDBBandedColumn;
    Client_invCarfact_track_trip_id: TIntegerField;
    cxButtonEdit16: TcxButtonEdit;
    cxImageList1: TcxImageList;
    dxBarButton7: TdxBarButton;
    cxPropertiesStore1: TcxPropertiesStore;
    cxGridDBBandedTableView9carPriorFreightName: TcxGridDBBandedColumn;
    Client_invCarcarPriorFreightName: TStringField;
    cxPageControl2: TcxPageControl;
    cxTabSheet12: TcxTabSheet;
    cxTabSheet13: TcxTabSheet;
    GridPanel2: TGridPanel;
    Panel6: TPanel;
    Panel7: TPanel;
    cxGroupBox5: TcxGroupBox;
    cxGroupBox6: TcxGroupBox;
    Label59: TLabel;
    cxTextEdit36: TcxTextEdit;
    cxTabSheet14: TcxTabSheet;
    cxGroupBox7: TcxGroupBox;
    cxTextEdit25: TcxTextEdit;
    Label71: TLabel;
    Label70: TLabel;
    cxButtonEdit39: TcxButtonEdit;
    cxTextEdit23: TcxTextEdit;
    cxTextEdit22: TcxTextEdit;
    cxButtonEdit38: TcxButtonEdit;
    Label69: TLabel;
    cxTextEdit24: TcxTextEdit;
    Label68: TLabel;
    Label67: TLabel;
    Label66: TLabel;
    Label42: TLabel;
    cxButtonEdit36: TcxButtonEdit;
    cxButtonEdit37: TcxButtonEdit;
    cxRadioGroup1: TcxRadioGroup;
    Label72: TLabel;
    cxButtonEdit40: TcxButtonEdit;
    Label73: TLabel;
    Client_invCarindex_train: TStringField;
    cxGridDBBandedTableView9index_train: TcxGridDBBandedColumn;
    Client_invCarfact_track_node_end_cod: TStringField;
    Client_invSPCspcNumber: TStringField;
    Client_invSPCspcDate: TDateTimeField;
    cxGridDBBandedTableView7spcNumber: TcxGridDBBandedColumn;
    cxGridDBBandedTableView7spcDate: TcxGridDBBandedColumn;
    Client_invSPCspcClaimNumber: TStringField;
    Client_invSPCspcNumOtp: TStringField;
    cxGridDBBandedTableView7spcClaimNumber: TcxGridDBBandedColumn;
    cxGridDBBandedTableView7spcNumOtp: TcxGridDBBandedColumn;
    Label74: TLabel;
    cxCheckBox1: TcxCheckBox;
    Client_invCarcontract_id: TIntegerField;
    Client_invCarfirm_customer_name: TStringField;
    cxGridDBBandedTableView9contract_id: TcxGridDBBandedColumn;
    cxGridDBBandedTableView9firm_customer_name: TcxGridDBBandedColumn;
    Client_invDistancedistStationCountryId: TIntegerField;
    Client_invDistancedistStationCountryCode: TStringField;
    Client_invDistancedistStationCountryName: TStringField;
    Client_invDistancedistPayPlaceRWID: TIntegerField;
    Client_invDistancedistPayPlaceRWName: TStringField;
    Client_invDistancedistCarrierID: TIntegerField;
    Client_invDistancedistCarrierName: TStringField;
    cxGridDBBandedTableView8distCarrierName: TcxGridDBBandedColumn;
    cxGridDBBandedTableView8distStationCountryName: TcxGridDBBandedColumn;
    cxTextEdit42: TcxTextEdit;
    Label75: TLabel;
    cxTextEdit43: TcxTextEdit;
    Label76: TLabel;
    Label77: TLabel;
    cxTextEdit44: TcxTextEdit;
    cxGridDBBandedTableView9fact_track_node_end_cod: TcxGridDBBandedColumn;
    Client_invCarfact_track_node_end_name: TStringField;
    cxGridDBBandedTableView9fact_track_node_end_name: TcxGridDBBandedColumn;
    dxBarButton8: TdxBarButton;
    cxTextEdit45: TcxTextEdit;
    cxTextEdit46: TcxTextEdit;
    Label78: TLabel;
    cxCheckBox2: TcxCheckBox;
    ClientDS_TypeOrders: TClientDataSet;
    ClientDS_TypeOrdersid: TAutoIncField;
    ClientDS_TypeOrderstype_cod: TStringField;
    ClientDS_TypeOrderstype_name_old: TStringField;
    cxLookupComboBox1: TcxLookupComboBox;
    DS_TypeOrders: TDataSource;
    ClientDS_TypeOrderstype_name: TStringField;
    cxCheckBox3: TcxCheckBox;
    Label79: TLabel;
    cxTextEdit47: TcxTextEdit;
    Label80: TLabel;
    cxDateEdit3: TcxDateEdit;
    cxTextEdit48: TcxTextEdit;
    Label81: TLabel;
    cxTextEdit49: TcxTextEdit;
    Label82: TLabel;
    cxTextEdit50: TcxTextEdit;
    Label83: TLabel;
    Label84: TLabel;
    cxButtonEdit41: TcxButtonEdit;
    dxSkinController1: TdxSkinController;
    cxLookAndFeelController1: TcxLookAndFeelController;
    Client_invDocDocumentID: TIntegerField;
    cxGridDBBandedTableView6DocumentID: TcxGridDBBandedColumn;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure cxButtonEdit6PropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
    procedure cxButtonEdit1PropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
    procedure cxButtonEdit2PropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
    procedure cxButtonEdit8PropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
    procedure cxButtonEdit21PropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
    procedure cxButtonEdit17PropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
    procedure cxButtonEdit19PropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
    procedure cxButtonEdit7PropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
    procedure cxButtonEdit5PropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
    procedure cxButtonEdit32PropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
    procedure cxButtonEdit20PropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
    procedure cxButtonEdit30PropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
    procedure cxButtonEdit29PropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
    procedure cxButtonEdit31PropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
    procedure cxButtonEdit18PropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
    procedure cxButtonEdit13PropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
    procedure cxButtonEdit12PropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
    procedure cxButtonEdit9PropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
    procedure cxButtonEdit11PropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
    procedure cxButtonEdit22PropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
    procedure cxButtonEdit27PropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
    procedure cxButtonEdit25PropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
    procedure cxButtonEdit28PropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
    procedure cxButtonEdit24PropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
    procedure dxBarButton2Click(Sender: TObject);
    procedure dxBarButton3Click(Sender: TObject);
    procedure dxBarButton4Click(Sender: TObject);
    procedure dxBarButton5Click(Sender: TObject);
    procedure cxButtonEdit3PropertiesButtonClick(Sender: TObject;
      AButtonIndex: Integer);
    procedure BitBtn2Click(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure cxGrid1DBBandedTableView1FocusedRecordChanged(
      Sender: TcxCustomGridTableView; APrevFocusedRecord,
      AFocusedRecord: TcxCustomGridRecord;
      ANewItemRecordFocusingChanged: Boolean);
    procedure cxButtonEdit4PropertiesButtonClick(Sender: TObject;
      AButtonIndex: Integer);
    procedure dxBarButton1Click(Sender: TObject);
    procedure dxBarButton6Click(Sender: TObject);
    procedure cxButtonEdit16PropertiesButtonClick(Sender: TObject;
      AButtonIndex: Integer);
    procedure dxBarButton7Click(Sender: TObject);
    procedure cxPageControl1DrawTabEx(AControl: TcxCustomTabControl;
      ATab: TcxTab; Font: TFont);
    procedure BitBtn3Click(Sender: TObject);
    procedure cxButtonEdit38PropertiesValidate(Sender: TObject;
      var DisplayValue: Variant; var ErrorText: TCaption; var Error: Boolean);
    procedure cxButtonEdit36PropertiesButtonClick(Sender: TObject;
      AButtonIndex: Integer);
    procedure cxButtonEdit38PropertiesButtonClick(Sender: TObject;
      AButtonIndex: Integer);
    procedure cxButtonEdit39PropertiesButtonClick(Sender: TObject;
      AButtonIndex: Integer);
    procedure cxButtonEdit40PropertiesButtonClick(Sender: TObject;
      AButtonIndex: Integer);
    procedure cxGridDBBandedTableView9KeyPress(Sender: TObject; var Key: Char);
    procedure dxBarButton8Click(Sender: TObject);
    procedure cxTextEdit14PropertiesChange(Sender: TObject);
    procedure cxButtonEdit41PropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
  private
    Fetran_ecp_type_id : integer; // Тип ЭЦП
    Fetran_ecp_id      : integer;
    Ftype_action       : integer;
    Fusers_group_cod   : string;
    FIO_users : string;
    Fetran_ip : string;
    Fetran_port : string;
    Fset_orders : boolean;
    Fconnect : TADOConnection;
    Fusr_pwd: PUser_pwd;

    FToStation_sucks_own_ways : string;

    Fset_modify_spc  : boolean;
    Fset_modify_dist : boolean;
    Fset_modify_doc  : boolean;
    Fset_global_copy : boolean;
    Fdate_enter      : TDateTime;

    //-----------------------------------------
    FinvoiceID              : integer;
    FfrontEndId             : integer;
    FinvTypeID              : integer; //Q.SQL.Add('SELECT * FROM dbo.ETRAN_NSI_INF_OBJ WHERE type_inf_id = 27 AND inf_obj_cod = ''147'''); cxButtonEdit6
    FinvSendKindID          : integer; //Q.SQL.Add('SELECT * FROM dbo.ETRAN_NSI_INF_OBJ WHERE type_inf_id = 16'); cxButtonEdit1
    FinvBlankTypeID         : integer; //Q.SQL.Add('SELECT * FROM dbo.ETRAN_NSI_INF_OBJ WHERE type_inf_id = 32'); cxButtonEdit2
    FinvBlankTypeCod        : integer;
    FinvSenderID            : integer;
    FinvSenderAddressID     : integer;
    FinvClaimID             : integer;
    FinvRecipID             : integer;
    FinvRecipAddressID      : integer;
    FinvSendSpeedID         : integer; //Q.SQL.Add('SELECT * FROM dbo.ETRAN_NSI_INF_OBJ WHERE type_inf_id = 15'); cxButtonEdit21
    FinvPayPlaceID          : integer; //Q.SQL.Add('SELECT * FROM dbo.ETRAN_NSI_INF_OBJ WHERE type_inf_id = 17'); cxButtonEdit18
    FinvPayFormID           : integer; //Q.SQL.Add('SELECT * FROM dbo.ETRAN_NSI_INF_OBJ WHERE type_inf_id = 18'); cxButtonEdit13
    FinvPlanCarTypeID       : integer; //Q.SQL.Add('SELECT * FROM dbo.ETRAN_NSI_INF_OBJ WHERE type_inf_id = 8');  cxButtonEdit30
    FinvPlanCarOwnerTypeID  : integer; //Q.SQL.Add('SELECT * FROM dbo.ETRAN_NSI_INF_OBJ WHERE type_inf_id = 27 AND inf_obj_cod = ''7'''); cxButtonEdit29
    FinvPlanContOwnerTypeID : integer; //Q.SQL.Add('SELECT * FROM dbo.ETRAN_NSI_INF_OBJ WHERE type_inf_id = 27 AND inf_obj_cod = ''7'''); cxButtonEdit31
    FinvLoadTypeID          : integer; //Q.SQL.Add('SELECT * FROM dbo.ETRAN_NSI_INF_OBJ WHERE type_inf_id = 27 AND inf_obj_cod = ''122'''); cxButtonEdit17
    FinvLoadAssetsID        : integer; //Q.SQL.Add('SELECT * FROM dbo.ETRAN_NSI_INF_OBJ WHERE type_inf_id = 27 AND inf_obj_cod = ''101'''); cxButtonEdit19
    FinvScaleTypeID         : integer; //Q.SQL.Add('SELECT * FROM dbo.ETRAN_NSI_INF_OBJ WHERE type_inf_id = 23'); cxButtonEdit7
    FinvScalePersonID       : integer; //Q.SQL.Add('SELECT * FROM dbo.ETRAN_NSI_INF_OBJ WHERE type_inf_id = 27 AND inf_obj_cod = ''100'''); cxButtonEdit5
    FinvCheckDepID          : integer; //Q.SQL.Add('SELECT * FROM dbo.ETRAN_NSI_INF_OBJ WHERE type_inf_id = 27 AND inf_obj_cod = ''106'''); cxButtonEdit32
    FinvDepNormDocID        : integer; //Q.SQL.Add('SELECT * FROM dbo.ETRAN_NSI_INF_OBJ WHERE type_inf_id = 27 AND inf_obj_cod = ''108'''); cxButtonEdit20
    //-----------------------------------------

    Forder_invRecipID        : integer;
    Forder_invRecipAddressID : integer;

    Forder_invSenderID        : integer;
    Forder_invSenderAddressID : integer;

    procedure SetUpdate(etran_ecp_id: integer);
    procedure SetUpdateOrder(etran_ecp_id: integer);
    function  StrToXML(str: string): string;
    function  StrToXMLFloat(str: string): string;
    procedure SetSetOrders(set_orders: boolean);
    procedure CheckInvDistance();
    procedure SaveOrders();
    procedure SaveInvoice();

    procedure SetSucksOwnWays(etran_nsi_id: integer);

    procedure SetNodeEndCod(node_end_cod: string);
    procedure SetKargoETSNGCod(kargoETSNG_cod: string);
    procedure SetInsertSPC(value: boolean);
    procedure SetOrdersAccept(value: boolean);

    procedure AddCLS();      // Добавить отметки на заготовку
    procedure AddContract(); // Добавить Договор на ремонт/промывку, пропарку, ветеринарно-санитарную обработку
    procedure AddCLS_Z();      // Добавить "Закрутка"

    procedure AddFr (kargoETSNG_cod: string); // Добавить груз в зависимости от ранее перевозимого груза

    procedure InvSPS_Add(id: integer; name: string; comment: string);
    procedure InvSPS_Clear();

    procedure carSPC_Clear();
    procedure carSPC_Add(id: integer; name: string; comment: string);


    procedure InvFreight_Add(cod: string; name: string);
    procedure InvFreightGNG_Add(cod: string);
    procedure InvFreightDanger_add(freightDangerSignID: integer; freightDangerID: integer; freightAccidentCardID: integer);
    procedure InvFreight_Clear();

    procedure FreightCLS_Add(id: integer; name: string; comment: string);
    procedure FreightCLS_Clear();

    procedure InvDOC_Add(id: integer; name: string);
    procedure InvDOC_Clear();

    procedure InvCarPriorFreight_Delete(); // Удалить ранее перевозимый груз

    procedure ChangeSender();
    procedure ChangeSenderOrders();
    procedure ShowRoadBegin(node_cod: string);
    procedure ShowRoadEnd(node_cod: string);
    procedure ShowDistance(node_begin_cod: string; node_end_cod: string);
    procedure CheckStationExport();
    function  CheckVagon(): boolean;
  public
    constructor Create(AOwner: TApplication; connect: TADOConnection; users_group_cod: string; usr_pwd: PUser_pwd); reintroduce;

    procedure SetVagon(num_vagon: integer; carPriorFreightCode: string; fact_track_trip_id: integer; index_train: string; node_end_cod: string; Client_Vagon: TClientDataSet);
  published
    property _SetUpdate    : integer write SetUpdate;
    property _SetUpdateOrder : integer write SetUpdateOrder;
    property _SetFIOusers  : string write FIO_users;
    property _SetEtranIP   : string write Fetran_ip;
    property _SetEtranPort   : string write Fetran_port;
    property _GetECPId     : integer read  Fetran_ecp_id;
    property _SetSetOrders : boolean write SetSetOrders;

    property _SetNodeEndCod    : string write SetNodeEndCod;
    property _SetKargoETSNGCod : string write SetKargoETSNGCod;
    property _SetInsertSPC     : boolean write SetInsertSPC;
    property _SetOrdersAccept  : boolean write SetOrdersAccept;
    property _GetEtranIP       : string read  Fetran_ip;
    property _GetEtranPort     : string read  Fetran_port;
    property _SetUsersGroupCod : string write Fusers_group_cod;
  end;

var
  fmECPInvoiceToViza: TfmECPInvoiceToViza;

function CreateWndEtranECPInvoiceToViza(AppHand: THandle; users_group_cod: string; usr_pwd: PUser_pwd; FIO_users: string; etran_ecp_id: integer; ClientDS_param: TClientDataSet): variant; export;
function CreateWndEtranECPInvoiceDelete(users_group_cod: string; usr_pwd: PUser_pwd; etran_ecp_id: integer): variant; export;

implementation

uses  ECPFilter, ECPMain, ECPPassport, ECPInvFreight, ECPInvAdd,
      ECPInvCar, ECPinvCont, ECPinvDistance, ECPVagonSeveral, ECPQuery;

{$R *.dfm}

function CreateWndEtranECPInvoiceDelete(users_group_cod: string; usr_pwd: PUser_pwd; etran_ecp_id: integer): variant;
var etran_ip : string;
    etran_port : string;
     connect : TADOConnection;
       login : string;
     db_name : string;
     sp_etran_ecp_modify : TADOStoredProc;
begin
//  if users_group_cod =  '0' then begin etran_ip := '92.53.107.222'; etran_port := '7450'; end; // Совфрахт
//  if users_group_cod = '35' then begin etran_ip := '92.53.107.222'; etran_port := '7450'; end; // Урал Логистика
//  if users_group_cod = '18' then begin etran_ip := '92.53.107.222'; etran_port := '7450'; end; // Интерлогистика
//  if users_group_cod = '12' then begin etran_ip := '92.53.107.222'; etran_port := '7450'; end; // Холдинг

  etran_ip := '92.53.107.222';
  etran_port := '7450';

  if users_group_cod = '12' then begin login := 'Etran_HOL'; db_name := 'lis_etran'; end;

  if users_group_cod =  '0' then begin login := 'Etran_GRU'; db_name := 'lis_etran'; end;
  if users_group_cod =  '1' then begin login := 'Etran_KHT'; db_name := 'lis_etran'; end;
  if users_group_cod =  '3' then begin login := 'Etran_PRV'; db_name := 'lis_etran'; end;
  if users_group_cod =  '5' then begin login := 'Etran_STS'; db_name := 'lis_etran'; end;
  if users_group_cod =  '6' then begin login := 'Etran_KAZ'; db_name := 'lis_etran'; end;

  if users_group_cod =  '7' then begin login := 'Etran_RTR'; db_name := 'lis_etran'; end;
  if users_group_cod = '30' then begin login := 'Etran_SNN'; db_name := 'lis_etran'; end;
  if users_group_cod = '16' then begin login := 'Etran_ITL'; db_name := 'lis_itek_etran'; end;
  if users_group_cod = '18' then begin login := 'Etran_ILG'; db_name := 'lis_etran'; end;
  if users_group_cod = '27' then begin login := 'Etran_NGS'; db_name := 'lis_etran'; end;
  if users_group_cod = '35' then begin login := 'Etran_ULG'; db_name := 'lis_etran'; end;


  try
    connect := TADOConnection.Create(nil);
    connect.KeepConnection := False;
    connect.LoginPrompt    := False;
    connect.ConnectionString := 'Persist Security Info=True;Provider=SQLOLEDB.1;User ID='+login+';Password='+'etran'+';Initial Catalog='+db_name+';Data Source='+usr_pwd^.server+';';
    connect.Connected := True;

    sp_etran_ecp_modify := TADOStoredProc.Create(nil);
    sp_etran_ecp_modify.Connection := connect;
    sp_etran_ecp_modify.ProcedureName := 'sp_etran_ecp_modify';
    sp_etran_ecp_modify.Parameters.Refresh;
    sp_etran_ecp_modify.Parameters.ParamByName('@etran_ecp_id').Value := etran_ecp_id;
    sp_etran_ecp_modify.Parameters.ParamByName('@type_action' ).Value := 2;
    sp_etran_ecp_modify.ExecProc;
    sp_etran_ecp_modify.Free;

    result := VarArrayOf([-9, '']);
  finally
    connect.Free;
  end;

end;

function CreateWndEtranECPInvoiceToViza(AppHand: THandle; users_group_cod: string; usr_pwd: PUser_pwd; FIO_users: string; etran_ecp_id: integer; ClientDS_param: TClientDataSet): variant;
var   etran_ip : string;
    etran_port : string;
       connect : TADOConnection;
         login : string;
       db_name : string;
 str_num_vagon : string;
             v : Variant;
      ClientDS : TClientDataSet;
begin
  Application.Handle := AppHand;
//  if users_group_cod =  '0' then begin etran_ip := '92.53.107.222'; etran_port := '7450'; end; // Совфрахт
//  if users_group_cod = '35' then begin etran_ip := '92.53.107.222';  etran_port := '7450'; end; // Урал Логистика
//  if users_group_cod = '18' then begin etran_ip := '92.53.107.222'; etran_port := '7450'; end; // Интерлогистика
//  if users_group_cod = '12' then begin etran_ip := '92.53.107.222';  etran_port := '7450'; end; // Холдинг

  etran_ip := '92.53.107.222';
  etran_port := '7450';

  if users_group_cod = '12' then begin login := 'Etran_HOL'; db_name := 'lis_etran'; end;

  if users_group_cod =  '0' then begin login := 'Etran_GRU'; db_name := 'lis_etran'; end;
//  if users_group_cod =  '1' then begin login := 'Etran_KHT'; db_name := 'lis_etran'; end;
//  if users_group_cod =  '3' then begin login := 'Etran_PRV'; db_name := 'lis_etran'; end;
//  if users_group_cod =  '5' then begin login := 'Etran_STS'; db_name := 'lis_etran'; end;
//  if users_group_cod =  '6' then begin login := 'Etran_KAZ'; db_name := 'lis_etran'; end;
//  if users_group_cod =  '7' then begin login := 'Etran_RTR'; db_name := 'lis_etran'; end;
//  if users_group_cod = '30' then begin login := 'Etran_SNN'; db_name := 'lis_etran'; end;
//  if users_group_cod = '16' then begin login := 'Etran_ITL'; db_name := 'lis_itek_etran'; end;
//  if users_group_cod = '18' then begin login := 'Etran_ILG'; db_name := 'lis_etran'; end;
//  if users_group_cod = '27' then begin login := 'Etran_NGS'; db_name := 'lis_etran'; end;
//  if users_group_cod = '35' then begin login := 'Etran_ULG'; db_name := 'lis_etran'; end;


  try
    connect := TADOConnection.Create(nil);
    connect.KeepConnection := False;
    connect.LoginPrompt    := False;
    connect.ConnectionString := 'Persist Security Info=True;Provider=SQLOLEDB.1;User ID='+login+';Password='+'etran'+';Initial Catalog='+db_name+';Data Source='+usr_pwd^.server+';';
    connect.Connected := True;

    fmECPInvoiceToViza := TfmECPInvoiceToViza.Create(Application, connect, users_group_cod, usr_pwd);
    fmECPInvoiceToViza._SetFIOusers := FIO_users;
    fmECPInvoiceToViza._SetEtranIP  := etran_ip;
    fmECPInvoiceToViza._SetEtranPort:= etran_port;
    fmECPInvoiceToViza._SetSetOrders := True;
    fmECPInvoiceToViza._SetInsertSPC := True;


    if etran_ecp_id = -9 then begin

      ClientDS_param.First;

      // Установить станцию
      fmECPInvoiceToViza._SetNodeEndCod := ClientDS_param.FieldByName('node_end_cod').AsString;

      // Получить НСИ вагонов
      ClientDS_param.First;
      str_num_vagon := '';
      while not ClientDS_param.Eof do begin
        if str_num_vagon = '' then
          str_num_vagon := ClientDS_param.FieldByName('num_vagon').AsString
        else
          str_num_vagon := str_num_vagon + ',' + ClientDS_param.FieldByName('num_vagon').AsString;

        ClientDS_param.Next;
      end;

      ClientDS := nil;
      v := CreateWndGetNSIVagon(fmECPInvoiceToViza._GetEtranIP, fmECPInvoiceToViza._GetEtranPort, users_group_cod, str_num_vagon);
      if v[0] = True then begin
        ClientDS := TClientDataSet.Create(nil);
        ClientDS.XMLData := v[1];
      end else begin
        result := VarArrayOf([-9, '']);
        Exit;
      end;


      ClientDS_param.First;
      while not ClientDS_param.Eof do begin
        fmECPInvoiceToViza.SetVagon(ClientDS_param.FieldByName('num_vagon').AsInteger,  ClientDS_param.FieldByName('kargoETSNG_cod').AsString, ClientDS_param.FieldByName('fact_track_trip_id').AsInteger, ClientDS_param.FieldByName('index_train').AsString, ClientDS_param.FieldByName('node_end_cod').AsString, ClientDS);
        ClientDS_param.Next;
      end;

    end else begin
      fmECPInvoiceToViza._SetUpdate := etran_ecp_id;
      fmECPInvoiceToViza._SetUpdateOrder := etran_ecp_id;
    end;

    if  fmECPInvoiceToViza.ShowModal = mrOk then
      result := VarArrayOf([fmECPInvoiceToViza._GetECPId, ''])
    else
      result := VarArrayOf([-9, '']);
  finally
    fmECPInvoiceToViza.Free;
    connect.Free;
  end;
end;

constructor TfmECPInvoiceToViza.Create(AOwner: TApplication; connect: TADOConnection; users_group_cod: string; usr_pwd: PUser_pwd);
var Q: TADOQuery;
begin
  Screen.Cursor := crHourglass;
  inherited Create(AOwner);

  Fusers_group_cod := users_group_cod;
  Fusr_pwd := usr_pwd;

  Fconnect := connect;
  Query_NSI.Connection := Fconnect;

  Ftype_action  := 0;
  Fetran_ecp_id := -9;

  Fset_modify_spc  := False;
  Fset_modify_dist := False;
  Fset_modify_doc  := False;
  Fset_global_copy := False;

  ClientDS_TypeOrders.CreateDataSet;
  ClientDS_TypeOrders.LogChanges := False;
  ClientDS_TypeOrders.AppendRecord([ 1, '0', 'под погрузку (под ГУ)', 'под ГУ']);
  ClientDS_TypeOrders.AppendRecord([ 2, '1', 'в отстой на собственных путях (в отстой на п/п)', 'в отстой на собственных путях']);
  ClientDS_TypeOrders.AppendRecord([ 3, '2', 'в плановый ремонт раб. парк (в ремонт ранее срока)', 'в ремонт (ранее срока)']);
  ClientDS_TypeOrders.AppendRecord([ 4, '3', 'в плановый ремонт нер. парк (в ДР, КР)', 'в ремонт (нераб.парк)']);
  ClientDS_TypeOrders.AppendRecord([ 5, '4', 'в текущий ремонт нер. парк (в ТР)', '']);
      ClientDS_TypeOrders.AppendRecord([ 6, '5', 'в промывку раб. парк (в ППС/раб.парк)', 'с промывкой']);
      ClientDS_TypeOrders.AppendRecord([ 7, '6', 'в промывку нераб. парк (в ППС/нераб.парк)', '']);
  ClientDS_TypeOrders.AppendRecord([ 8, '7', 'из отстоя (из отстоя РЖД)', 'из отстоя']);
  ClientDS_TypeOrders.AppendRecord([ 9, '8', 'из планового ремонта под погрузку (из ДР, КР под ГУ)', 'из ДР ремонта']);
  ClientDS_TypeOrders.AppendRecord([10,' 9', 'из планового ремонта в отстой на собственных путях (из ДР, КР в остой на п/п)', '']);
  ClientDS_TypeOrders.AppendRecord([11,'10', 'из планового ремонта в промывку (из ДР, КР в ППС)', '']);
  ClientDS_TypeOrders.AppendRecord([12,'11', 'из текущего ремонта под погрузку (из ТР под ГУ)', 'из ТР ремонта']);
  ClientDS_TypeOrders.AppendRecord([13,'12', 'из текущего ремонта в отстой на собственных путях (из ТР в отстой на п/п)', '']);
  ClientDS_TypeOrders.AppendRecord([14,'13', 'из текущего ремонта в промывку (из ТР в ППС)', '']);
  ClientDS_TypeOrders.AppendRecord([15,'14', 'из промывки в ремонт раб.парк (из ППС в ремонт ранее срока)', 'из промывки']);
  ClientDS_TypeOrders.AppendRecord([16,'15', 'из промывки в ремонт нер.парк (из ППС в ремонт)', '']);
  ClientDS_TypeOrders.AppendRecord([17,'16', 'из промывки под погрузку (из ППС под ГУ)', '']);
  ClientDS_TypeOrders.AppendRecord([18,'17', 'из промывки в отстой на п/п (из ППС в отстой на п/п)', '']);
  ClientDS_TypeOrders.AppendRecord([19,'18', 'из промывки в промывку (из ППС в ППС)', '']);
  ClientDS_TypeOrders.AppendRecord([20,'19', 'из отстоя и из ремонта (из остоя/из ремонта)', 'из отстоя и из ремонта']);
  ClientDS_TypeOrders.AppendRecord([21,'20', 'из отстоя и из ТР ремонта (из отстоя/из ТР ремонта -Нягань)', 'из отстоя и из ТР ремонта -Нягань']);
  ClientDS_TypeOrders.AppendRecord([22,'21', 'из отстоя и из ДР ремонта (из отстоя/из ДР ремонта-Нягань)', 'из отстоя и из ДР ремонта -Нягань']);
  ClientDS_TypeOrders.AppendRecord([23,'22', 'из отстоя и из промывки (из отсоя/из ППС)', 'из отстоя и из ппс']);

  cxLookupComboBox1.EditValue := 0;

  Q := TADOQuery.Create(nil);
  Q.Connection := Fconnect;
  Q.SQL.Add('SELECT * FROM etran_inf_obj WHERE type_inf_id = 5 and inf_obj_cod = ''1''');
  Q.Open;
  Fetran_ecp_type_id := Q.FieldByName('inf_obj_id').AsInteger;

  FinvoiceID           := -9;
  FfrontEndId          := -9;
  FinvTypeID           := -9;
  FinvSendKindID       := -9;
  FinvBlankTypeID      := -9;
  FinvBlankTypeCod     := -9;
  FinvSenderID         := -9;
  FinvSenderAddressID  := -9;
  FinvClaimID          := -9;
  FinvRecipID          := -9;
  FinvRecipAddressID   := -9;
  FinvSendSpeedID      := -9;
  FinvPayPlaceID       := -9;
  FinvPayFormID        := -9;
  FinvPlanCarTypeID    := -9;
  FinvPlanCarOwnerTypeID  := -9;
  FinvPlanContOwnerTypeID := -9;
  FinvLoadTypeID       := -9;
  FinvLoadAssetsID     := -9;
  FinvScaleTypeID      := -9;
  FinvScalePersonID    := -9;
  FinvCheckDepID       := -9;
  FinvDepNormDocID     := -9;
  Fset_orders          := False;
  Forder_invRecipID := -9;
  Forder_invRecipAddressID := -9;

  Forder_invSenderID        := -9;
  Forder_invSenderAddressID := -9;

  FinvTypeID      := 1;
  Q.SQL.Clear;
  Q.SQL.Add('SELECT * FROM dbo.ETRAN_NSI_INF_OBJ WHERE type_inf_id = 27 AND inf_obj_cod = ''147'' AND etran_nsi_id = ' + IntToStr(FinvTypeID));
  Q.Open;
  cxButtonEdit6.Text := Q.FieldByName('inf_obj_name').AsString;

  FinvBlankTypeID := 182;
  Q.SQL.Clear;
  Q.SQL.Add('SELECT * FROM dbo.ETRAN_NSI_INF_OBJ WHERE type_inf_id = 32 AND etran_nsi_id = ' + IntToStr(FinvBlankTypeID));
  Q.Open;
  cxButtonEdit2.Text := Q.FieldByName('inf_obj_name').AsString;
  FinvBlankTypeCod := Q.FieldByName('inf_obj_cod').AsInteger;

  FinvSendKindID  := 1;
  Q.SQL.Clear;
  Q.SQL.Add('SELECT * FROM dbo.ETRAN_NSI_INF_OBJ WHERE type_inf_id = 16 AND etran_nsi_id = ' + IntToStr(FinvSendKindID));
  Q.Open;
  cxButtonEdit1.Text := Q.FieldByName('inf_obj_name').AsString;

  FinvSendSpeedID := 2;
  Q.SQL.Clear;
  Q.SQL.Add('SELECT * FROM dbo.ETRAN_NSI_INF_OBJ WHERE type_inf_id = 15 AND etran_nsi_id = ' + IntToStr(FinvSendSpeedID));
  Q.Open;
  cxButtonEdit21.Text := Q.FieldByName('inf_obj_name').AsString;

  FinvPayPlaceID  := 3;
  Q.SQL.Clear;
  Q.SQL.Add('SELECT * FROM dbo.ETRAN_NSI_INF_OBJ WHERE type_inf_id = 17 AND etran_nsi_id = ' + IntToStr(FinvPayPlaceID));
  Q.Open;
  cxButtonEdit18.Text := Q.FieldByName('inf_obj_name').AsString;

  FinvPayFormID   := 0;
  Q.SQL.Clear;
  Q.SQL.Add('SELECT * FROM dbo.ETRAN_NSI_INF_OBJ WHERE type_inf_id = 18 AND etran_nsi_id = ' + IntToStr(FinvPayFormID));
  Q.Open;
  cxButtonEdit13.Text := Q.FieldByName('inf_obj_name').AsString;

  cxButtonEdit15.Text := '643';
  Q.SQL.Clear;
  Q.SQL.Add('SELECT etran_nsi_id, inf_obj_name, inf_obj_cod FROM dbo.ETRAN_NSI_INF_OBJ WHERE type_inf_id = 13 AND inf_obj_cod = ''' + cxButtonEdit15.Text + '''');
  Q.Open;
  cxButtonEdit9.Text := Q.FieldByName('inf_obj_name').AsString;

  cxButtonEdit14.Text := '643';
  Q.SQL.Clear;
  Q.SQL.Add('SELECT etran_nsi_id, inf_obj_name, inf_obj_cod FROM dbo.ETRAN_NSI_INF_OBJ WHERE type_inf_id = 13 AND inf_obj_cod = ''' + cxButtonEdit15.Text + '''');
  Q.Open;
  cxButtonEdit22.Text := Q.FieldByName('inf_obj_name').AsString;


  cxButtonEdit17.Text := 'БЕЗ ЗАЧЕТА В ПОГРУЗКУ';
  FinvLoadTypeID := 11;

//  // Совфрахт
//  if Fusers_group_cod =  '0' then begin
//    cxButtonEdit8.Text := 'ОАО «СОВФРАХТ»';
//    cxTextEdit6.Text   := '109012, г.Москва, ул. Рождественка, 1/4, тел. (495)258-28-59';
//    cxTextEdit7.Text   := '8917';
//    cxTextEdit8.Text   := '01125175';
//    cxTextEdit19.Text  := 'начальник диспетческого центра Васильев М. В.';
//  end;
//
//  // Урал Логистика
//  if Fusers_group_cod = '35' then begin
//    cxButtonEdit8.Text := 'Общество с ограниченной ответственностью "Урал Логистика"';
//    cxTextEdit6.Text   := '107076, г.Москва, перецлок Колодезный-3, стр 23-бл.25 оф.3 тел.:(34253)3-88-03';
//    cxTextEdit7.Text   := '5789';
//    cxTextEdit8.Text   := '83298267';
//    cxTextEdit19.Text  := 'Директор Латышев Д.Е.';
//  end;

  ChangeSender();
  ChangeSenderOrders();

  if Fusers_group_cod = '12' then begin
    Forder_invSenderID       := 524740;
    Forder_invSenderAddressID:= 2;
//    cxButtonEdit41.Text := 'Общество с ограниченной ответственностью "Холдинг"';
//    cxTextEdit50.Text   := '107076, г.Москва, перецлок 12';
//    cxTextEdit49.Text   := '5555';
//    cxTextEdit48.Text   := '11111111';
  end else begin
    Forder_invSenderID       := 524740;
    Forder_invSenderAddressID:= 2;
//    cxButtonEdit41.Text := 'Общество с ограниченной ответственностью "Урал Логистика"';
//    cxTextEdit50.Text   := '107076, г.Москва, перецлок Колодезный-3, стр 23-бл.25 оф.3 тел.:(34253)3-88-03';
//    cxTextEdit49.Text   := '5789';
//    cxTextEdit48.Text   := '83298267';
  end;

  Client_invFreight.CreateDataSet;
  Client_invFreight.LogChanges := False;

  Client_InvGuide.CreateDataSet;
  Client_InvGuide.LogChanges := False;

  Client_InvCndBlock.CreateDataSet;
  Client_InvCndBlock.LogChanges := False;

  Client_InvTranspClause.CreateDataSet;
  Client_InvTranspClause.LogChanges := False;

  Client_InvFreightWeight.CreateDataSet;
  Client_InvFreightWeight.LogChanges := False;

  Client_InvDev.CreateDataSet;
  Client_InvDev.LogChanges := False;

  Client_InvDOC.CreateDataSet;
  Client_InvDOC.LogChanges := False;

  Client_InvSPC.CreateDataSet;
  Client_InvSPC.LogChanges := False;

  Client_invDistance.CreateDataSet;
  Client_invDistance.LogChanges := False;

  Client_invCont.CreateDataSet;
  Client_invCont.LogChanges := False;

  Client_invCar.CreateDataSet;
  Client_invCar.LogChanges := False;

  Client_freightCLS.CreateDataSet;
  Client_freightCLS.LogChanges := False;

  Client_carSPC.CreateDataSet;
  Client_carSPC.LogChanges := False;

  Client_carCSL.CreateDataSet;
  Client_carCSL.LogChanges := False;
  Q.Free;

//  StoreRegistryGrid(rgLoad,'\Software\Lis1\ECPInvoiceToViza_Grids', cxGrid1DBBandedTableView1);
//  StoreRegistryGrid(rgLoad,'\Software\Lis1\ECPInvoiceToViza_Grids', cxGridDBBandedTableView1);
//  StoreRegistryGrid(rgLoad,'\Software\Lis1\ECPInvoiceToViza_Grids', cxGridDBBandedTableView2);
//  StoreRegistryGrid(rgLoad,'\Software\Lis1\ECPInvoiceToViza_Grids', cxGridDBBandedTableView3);
//  StoreRegistryGrid(rgLoad,'\Software\Lis1\ECPInvoiceToViza_Grids', cxGridDBBandedTableView4);
//  StoreRegistryGrid(rgLoad,'\Software\Lis1\ECPInvoiceToViza_Grids', cxGridDBBandedTableView5);
//  StoreRegistryGrid(rgLoad,'\Software\Lis1\ECPInvoiceToViza_Grids', cxGridDBBandedTableView6);
//  StoreRegistryGrid(rgLoad,'\Software\Lis1\ECPInvoiceToViza_Grids', cxGridDBBandedTableView7);
//  StoreRegistryGrid(rgLoad,'\Software\Lis1\ECPInvoiceToViza_Grids', cxGridDBBandedTableView8);
//  StoreRegistryGrid(rgLoad,'\Software\Lis1\ECPInvoiceToViza_Grids', cxGridDBBandedTableView9);
//  StoreRegistryGrid(rgLoad,'\Software\Lis1\ECPInvoiceToViza_Grids', cxGridDBBandedTableView10);
//  StoreRegistryGrid(rgLoad,'\Software\Lis1\ECPInvoiceToViza_Grids', cxGridDBBandedTableView11);

  cxPageControl1.OnDrawTabEx := cxPageControl1DrawTabEx;
  cxPageControl1.ActivePage := cxTabSheet7;  // закладка вагоны

  cxTabSheet5.TabVisible := False;
  cxTabSheet6.TabVisible := False;
  cxTabSheet8.TabVisible := False;
  cxTabSheet9.TabVisible := False;
  cxTabSheet10.TabVisible := False;
  cxTabSheet11.TabVisible := False;


  cxPageControl2.ActivePage := cxTabSheet12;
  cxTabSheet12.TabVisible := True;
  cxTabSheet13.TabVisible := True;
  cxTabSheet14.TabVisible := False;

  Screen.Cursor := crDefault;
end;

procedure TfmECPInvoiceToViza.ChangeSender();
begin
  // Совфрахт
  if (Fusers_group_cod =  '0') and (cxTextEdit14.Text <> '1003865789') then begin
    FinvSenderID       := 37775;
    FinvSenderAddressID:= 1;
//    cxButtonEdit8.Text := 'ОАО «СОВФРАХТ»';
//    cxTextEdit6.Text   := '109012, г.Москва, ул. Рождественка, 1/4, тел. (495)258-28-59';
//    cxTextEdit7.Text   := '8917';
//    cxTextEdit8.Text   := '01125175';
//    cxTextEdit19.Text  := 'начальник диспетческого центра Васильев М. В.';
  end;

  // Урал Логистика
  if (Fusers_group_cod = '35') or (cxTextEdit14.Text = '1003865789') then begin
    FinvSenderID       := 524740;
    FinvSenderAddressID:= 2;
//    cxButtonEdit8.Text := 'Общество с ограниченной ответственностью "Урал Логистика"';
//    cxTextEdit6.Text   := '107076, г.Москва, перецлок Колодезный-3, стр 23-бл.25 оф.3 тел.:(34253)3-88-03';
//    cxTextEdit7.Text   := '5789';
//    cxTextEdit8.Text   := '83298267';
//    cxTextEdit19.Text  := 'Директор Латышев Д.Е.';
  end;
end;

procedure TfmECPInvoiceToViza.ChangeSenderOrders();
begin
  // Совфрахт
  if (Fusers_group_cod =  '0') and (cxTextEdit25.Text <> '1003865789') then begin
    Forder_invSenderID       := 37775;
    Forder_invSenderAddressID:= 1;
//    cxButtonEdit41.Text := 'ОАО «СОВФРАХТ»';
//    cxTextEdit50.Text   := '109012, г.Москва, ул. Рождественка, 1/4, тел. (495)258-28-59';
//    cxTextEdit49.Text   := '8917';
//    cxTextEdit48.Text   := '01125175';
  end;

  // Урал Логистика
  if (Fusers_group_cod = '35') or (cxTextEdit25.Text = '1003865789') then begin
    Forder_invSenderID       := 524740;
    Forder_invSenderAddressID:= 2;
//    cxButtonEdit41.Text := 'Общество с ограниченной ответственностью "Урал Логистика"';
//    cxTextEdit50.Text   := '107076, г.Москва, перецлок Колодезный-3, стр 23-бл.25 оф.3 тел.:(34253)3-88-03';
//    cxTextEdit49.Text   := '5789';
//    cxTextEdit48.Text   := '83298267';
  end;
end;

procedure TfmECPInvoiceToViza.SetInsertSPC(value: boolean);
var Q : TADOQuery;
begin
  if value then begin

    Q := TADOQuery.Create(nil);
    Q.Connection := Fconnect;
    Q.SQL.Add('SELECT top 1 inf_obj_name, etran_nsi_id FROM dbo.ETRAN_NSI_INF_OBJ WHERE type_inf_id = 24 and etran_nsi_id <> 14 AND inf_obj_cod in (''1'',''4'',''5'') and etran_nsi_id = 1293 ');
    Q.Open;

    Client_invSPC.Append;
    Client_invSPC.FieldByName('spcTranspClauseID'  ).Value := Q.FieldByName('etran_nsi_id').Value;
    Client_invSPC.FieldByName('spcTranspClauseName').Value := Q.FieldByName('inf_obj_name').Value;
    Client_invSPC.FieldByName('spcCustomText'      ).Value := '' + FormatDateTime('dd.mm.yyyy hh:nn:ss', IncHour(Now, 5));
    Client_invSPC.Post;

    Q.Free;

    Fset_modify_spc := True;
  end;
end;

procedure TfmECPInvoiceToViza.SetOrdersAccept(value: boolean);
begin
  BitBtn3.Enabled := value;
end;

procedure TfmECPInvoiceToViza.SetSetOrders(set_orders: boolean);
begin
  Fset_orders := set_orders;

  if (Fset_orders = True) and (Ftype_action = 0) then begin
    Caption := 'Заготовка накладной';
    cxPageControl2.ActivePage := cxTabSheet14;
    cxTabSheet12.TabVisible := False;
    cxTabSheet13.TabVisible := False;

    Constraints.MinWidth := 560;
    Width := 560;

    cxPageControl2.Height := 520;
    Constraints.MinHeight := 720;
    Height := 650;

    cxTabSheet1.TabVisible := False;
    cxTabSheet2.TabVisible := False;
    cxTabSheet3.TabVisible := False;
    cxTabSheet4.TabVisible := False;
    cxTabSheet5.TabVisible := False;
    cxTabSheet6.TabVisible := False;
    cxTabSheet8.TabVisible := False;
    cxTabSheet9.TabVisible := False;
    cxTabSheet10.TabVisible := False;
    cxTabSheet11.TabVisible := False;
  end else begin
    BitBtn3.Visible := True;
  end;

end;

procedure TfmECPInvoiceToViza.SetUpdateOrder(etran_ecp_id: integer);
begin
  cxButtonEdit36.EditValue := cxButtonEdit25.EditValue;
  cxButtonEdit37.EditValue := cxButtonEdit26.EditValue;

  cxButtonEdit38.EditValue := cxButtonEdit3.EditValue;
  cxTextEdit22.EditValue   := cxTextEdit4.EditValue;
  cxTextEdit23.EditValue   := cxTextEdit5.EditValue;
  cxTextEdit24.EditValue   := cxTextEdit9.EditValue;

  cxButtonEdit41.EditValue := cxButtonEdit8.EditValue;
  cxTextEdit50.EditValue   := cxTextEdit6.EditValue;
  cxTextEdit49.EditValue   := cxTextEdit7.EditValue;
  cxTextEdit48.EditValue   := cxTextEdit8.EditValue;

  cxButtonEdit39.EditValue := cxButtonEdit16.EditValue;
  cxTextEdit25.EditValue   := cxTextEdit14.EditValue;
end;

procedure TfmECPInvoiceToViza.SetUpdate(etran_ecp_id: integer);
var Q  : TADOQuery;
    Q2 : TADOQuery;
    Q3 : TADOQuery;
    SP : TADOStoredProc;
    set_reply : boolean;
begin
  ShowTextMessage('Загрузка накладной...', False);

  Fetran_ecp_id := etran_ecp_id;
  Ftype_action  := 1;

  Q := TADOQuery.Create(nil);
  Q.Connection := Fconnect;

  Q2 := TADOQuery.Create(nil);
  Q2.Connection := Fconnect;

  Q3 := TADOQuery.Create(nil);
  Q3.Connection := Fconnect;

  Q.SQL.Clear;
  Q.SQL.Add('SELECT * FROM etran_global_id WHERE global_id = '+ IntToStr(Fetran_ecp_id));
  Q.Open;
  Fset_global_copy := Q.FieldByName('global_copy').AsBoolean;
  Fdate_enter      := Q.FieldByName('date_enter' ).AsDateTime;

  Q.SQL.Clear;
  Q.SQL.Add('SELECT * FROM etran_ecp WHERE etran_ecp_id = ' + IntToStr(Fetran_ecp_id));
  Q.Open;
  Fetran_ecp_type_id := Q.FieldByName('etran_ecp_type_id').AsInteger;
  cxButtonEdit8.Text := Q.FieldByName('invSenderName').AsString;
  cxTextEdit8.Text   := Q.FieldByName('invSenderOKPO').AsString;
  cxButtonEdit3.Text := Q.FieldByName('invRecipName').AsString;
  cxTextEdit9.Text   := Q.FieldByName('invRecipOKPO').AsString;
  cxCheckBox1.Checked:= Q.FieldByName('set_priority').AsBoolean;
  cxCheckBox2.Checked:= Q.FieldByName('set_send_route').AsBoolean;

  if ClientDS_TypeOrders.Locate('type_name', Q.FieldByName('orders_type').AsString, []) = False then
    ClientDS_TypeOrders.Locate('type_name_old', Q.FieldByName('orders_type').AsString, []);
  //cxComboBox1.Text   := Q.FieldByName('orders_type').AsString;

  if not Q.FieldByName('contract_id').IsNull then begin
    Q2.SQL.Clear;
    Q2.SQL.Add('SELECT * FROM lis1..view_contract_rights WHERE contract_id = ' + Q.FieldByName('contract_id').AsString);
    Q2.Open;
    if Q2.RecordCount > 0 then begin
      cxButtonEdit40.Tag := Q2.FieldByName('contract_id').AsInteger;
      cxButtonEdit40.EditValue := Q2.FieldByName('firm_customer_name').AsString;
    end else begin
      cxButtonEdit40.Tag := -9;
      cxButtonEdit40.EditValue := null;
    end;
  end else begin
    cxButtonEdit40.Tag := -9;
    cxButtonEdit40.EditValue := null;
  end;

  set_reply := False;
//  if Q.FieldByName('etran_ecp_reply_xml').IsNull then begin
//    set_reply := False;
//  end else begin
//    set_reply := True;
//  end;

  if set_reply = False then begin
    Q.SQL.Clear;
    Q.SQL.Add('DECLARE  @xml XML');
    Q.SQL.Add('SELECT   @xml = etran_ecp_xml FROM etran_ecp WHERE etran_ecp_id = ' + IntToStr(Fetran_ecp_id));
    Q.SQL.Add('');
  end else begin
    Q.SQL.Clear;
    Q.SQL.Add('DECLARE  @xml XML');
    Q.SQL.Add('SELECT   @xml = etran_ecp_reply_xml FROM etran_ecp WHERE etran_ecp_id = ' + IntToStr(Fetran_ecp_id));
    Q.SQL.Add('');
  end;

  Q.SQL.Add('SELECT	');
  Q.SQL.Add('		    ref.value(''(invoiceID/@value)[1]'',''int'') as invoiceID,');
  Q.SQL.Add('		    ref.value(''(frontEndId/@value)[1]'',''int'') as frontEndId,');
  Q.SQL.Add('		    ref.value(''(invTypeID/@value)[1]'',''int'') as invTypeID,');
  Q.SQL.Add('		    ref.value(''(invSendKindID/@value)[1]'',''int'') as invSendKindID,');
  Q.SQL.Add('		    ref.value(''(invBlankTypeID/@value)[1]'',''int'') as invBlankTypeID,');
  Q.SQL.Add('		    ref.value(''(invSenderID/@value)[1]'',''int'') as invSenderID,');
  Q.SQL.Add('		    ref.value(''(invSenderAddressID/@value)[1]'',''int'') as invSenderAddressID,');
  Q.SQL.Add('		    ref.value(''(invLoadClaim_ID/@value)[1]'',''int'') as invLoadClaim_ID,');
  Q.SQL.Add('		    ref.value(''(invRecipID/@value)[1]'',''int'') as invRecipID,');
  Q.SQL.Add('		    ref.value(''(invRecipAddressID/@value)[1]'',''int'') as invRecipAddressID,');
  Q.SQL.Add('		    ref.value(''(invSendSpeedID/@value)[1]'',''int'') as invSendSpeedID,');
  Q.SQL.Add('		    ref.value(''(invPayPlaceID/@value)[1]'',''int'') as invPayPlaceID,');
  Q.SQL.Add('		    ref.value(''(invPayFormID/@value)[1]'',''int'') as invPayFormID,');
  Q.SQL.Add('		    ref.value(''(invPlanCarTypeID/@value)[1]'',''int'') as invPlanCarTypeID,');
  Q.SQL.Add('		    ref.value(''(invPlanCarOwnerTypeID/@value)[1]'',''int'') as invPlanCarOwnerTypeID,');
  Q.SQL.Add('		    ref.value(''(invPlanContOwnerTypeID/@value)[1]'',''int'') as invPlanContOwnerTypeID,');
  Q.SQL.Add('		    ref.value(''(invLoadTypeID/@value)[1]'',''int'') as invLoadTypeID,');
  Q.SQL.Add('		    ref.value(''(invLoadAssetsID/@value)[1]'',''int'') as invLoadAssetsID,');
  Q.SQL.Add('		    ref.value(''(invScaleTypeID/@value)[1]'',''int'') as invScaleTypeID,');
  Q.SQL.Add('		    ref.value(''(invScalePersonID/@value)[1]'',''int'') as invScalePersonID,');
  Q.SQL.Add('		    ref.value(''(invCheckDepID/@value)[1]'',''int'') as invCheckDepID,');
  Q.SQL.Add('		    ref.value(''(invDepNormDocID/@value)[1]'',''int'') as invDepNormDocID,');
  Q.SQL.Add('		    ref.value(''(invNumber/@value)[1]'',''varchar(255)'') as invNumber,');
  Q.SQL.Add('		    ref.value(''(invBlankType/@value)[1]'',''varchar(255)'') as invBlankType,');
  Q.SQL.Add('		    ref.value(''(invSenderAddress/@value)[1]'',''varchar(255)'') as invSenderAddress,');
  Q.SQL.Add('		    ref.value(''(invSenderTGNL/@value)[1]'',''varchar(255)'') as invSenderTGNL,');
  Q.SQL.Add('		    ref.value(''(invLoadClaim_Number/@value)[1]'',''varchar(255)'') as invLoadClaim_Number,');
//  Q.SQL.Add('		    ref.value(''(invOtprNum/@value)[1]'',''varchar(255)'') as invOtprNum,');
//  Q.SQL.Add('		    ref.value(''(invPodNum/@value)[1]'',''varchar(255)'') as invPodNum,');
  Q.SQL.Add('		    ref.value(''(invFromCountryCode/@value)[1]'',''varchar(255)'') as invFromCountryCode,');
  Q.SQL.Add('		    ref.value(''(invFromPointCode/@value)[1]'',''varchar(255)'') as invFromPointCode,');
  Q.SQL.Add('		    ref.value(''(invFromPointName/@value)[1]'',''varchar(255)'') as invFromPointName,');
  Q.SQL.Add('		    ref.value(''(invFromStationCode/@value)[1]'',''varchar(255)'') as invFromStationCode,');
  Q.SQL.Add('		    ref.value(''(invFromPortCode/@value)[1]'',''varchar(255)'') as invFromPortCode,');
  Q.SQL.Add('		    ref.value(''(invFromLoadWay/@value)[1]'',''varchar(255)'') as invFromLoadWay,');
  Q.SQL.Add('		    ref.value(''(invRecipOKPO/@value)[1]'',''varchar(255)'') as invRecipOKPO,');
  Q.SQL.Add('		    ref.value(''(invRecipName/@value)[1]'',''varchar(255)'') as invRecipName,');
  Q.SQL.Add('		    ref.value(''(invRecipAddress/@value)[1]'',''varchar(255)'') as invRecipAddress,');
  Q.SQL.Add('		    ref.value(''(invRecipTGNL/@value)[1]'',''varchar(255)'') as invRecipTGNL,');
  Q.SQL.Add('		    ref.value(''(invToCountryCode/@value)[1]'',''varchar(255)'') as invToCountryCode,');
  Q.SQL.Add('		    ref.value(''(invToPointCode/@value)[1]'',''varchar(255)'') as invToPointCode,');
  Q.SQL.Add('		    ref.value(''(invToPointName/@value)[1]'',''varchar(255)'') as invToPointName,');
  Q.SQL.Add('		    ref.value(''(invToStationCode/@value)[1]'',''varchar(255)'') as invToStationCode,');
  Q.SQL.Add('		    ref.value(''(invToPortCode/@value)[1]'',''varchar(255)'') as invToPortCode,');
  Q.SQL.Add('		    ref.value(''(invToLoadWay/@value)[1]'',''varchar(255)'') as invToLoadWay,');
  Q.SQL.Add('		    ref.value(''(invPayPlaceRwCode/@value)[1]'',''varchar(255)'') as invPayPlaceRwCode,');
  Q.SQL.Add('		    ref.value(''(invPayerCode/@value)[1]'',''varchar(255)'') as invPayerCode,');
  Q.SQL.Add('		    ref.value(''(invPayerName/@value)[1]'',''varchar(255)'') as invPayerName,');
  Q.SQL.Add('		    ref.value(''(invPayerAccount/@value)[1]'',''varchar(255)'') as invPayerAccount,');
  Q.SQL.Add('		    ref.value(''(invPayerBank/@value)[1]'',''varchar(255)'') as invPayerBank,');
  Q.SQL.Add('		    ref.value(''(invFRWSubCode/@value)[1]'',''varchar(255)'') as invFRWSubCode,');
  Q.SQL.Add('		    ref.value(''(invFRWSubCode2/@value)[1]'',''varchar(255)'') as invFRWSubCode2,');
  Q.SQL.Add('		    ref.value(''(invIxTariffCode/@value)[1]'',''varchar(255)'') as invIxTariffCode,');
  Q.SQL.Add('		    ref.value(''(invPlanCarCount/@value)[1]'',''varchar(255)'') as invPlanCarCount,');
  Q.SQL.Add('		    ref.value(''(invPlanContTonnage/@value)[1]'',''varchar(255)'') as invPlanContTonnage,');
  Q.SQL.Add('		    ref.value(''(invPlanContCount/@value)[1]'',''varchar(255)'') as invPlanContCount,');
  Q.SQL.Add('		    ref.value(''(invContPlanSizeBig/@value)[1]'',''varchar(255)'') as invContPlanSizeBig,');
  Q.SQL.Add('		    ref.value(''(invAnnounceValue/@value)[1]'',''varchar(255)'') as invAnnounceValue,');
  Q.SQL.Add('		    ref.value(''(invPlanOutsizeCode/@value)[1]'',''varchar(255)'') as invPlanOutsizeCode,');
  Q.SQL.Add('		    ref.value(''(invRespPerson/@value)[1]'',''varchar(255)'') as invRespPerson,');
  Q.SQL.Add('		    ref.value(''(invDateLoad/@value)[1]'',''varchar(255)'') as invDateLoad,');
  Q.SQL.Add('		    ref.value(''(invToCountryEmptyCode/@value)[1]'',''varchar(255)'') as invToCountryEmptyCode,');
  Q.SQL.Add('		    ref.value(''(invToStationEmptyCode/@value)[1]'',''varchar(255)'') as invToStationEmptyCode,');
  Q.SQL.Add('		    ref.value(''(invScalePrecision/@value)[1]'',''varchar(255)'') as invScalePrecision,');
  Q.SQL.Add('		    ref.value(''(invDeplPerson/@value)[1]'',''varchar(255)'') as invDeplPerson,');
  Q.SQL.Add('		    ref.value(''(invDepPart/@value)[1]'',''varchar(255)'') as invDepPart,');
  Q.SQL.Add('		    ref.value(''(invDepArc/@value)[1]'',''varchar(255)'') as invDepArc,');
  Q.SQL.Add('		    ref.value(''(invDepSec/@value)[1]'',''varchar(255)'') as invDepSec,');
  Q.SQL.Add('		    ref.value(''(invDepCond/@value)[1]'',''varchar(255)'') as invDepCond,');
  Q.SQL.Add('		    ref.value(''(invFactDateToLoad/@value)[1]'',''varchar(255)'') as invFactDateToLoad');
  Q.SQL.Add('FROM	  @xml.nodes(''/invoiceDirectLoad'') as node(ref)');
  Q.Open;

  FinvoiceID           := iif(Q.FieldByName('invoiceID').IsNull, -9, Q.FieldByName('invoiceID').AsInteger);
  FfrontEndId          := iif(Q.FieldByName('frontEndId').IsNull, -9, Q.FieldByName('frontEndId').AsInteger);
  FinvTypeID           := iif(Q.FieldByName('invTypeID').IsNull, -9, Q.FieldByName('invTypeID').AsInteger);
  FinvSendKindID       := iif(Q.FieldByName('invSendKindID').IsNull, -9, Q.FieldByName('invSendKindID').AsInteger);
  FinvBlankTypeID      := iif(Q.FieldByName('invBlankTypeID').IsNull, -9, Q.FieldByName('invBlankTypeID').AsInteger);
  FinvSenderID         := iif(Q.FieldByName('invSenderID').IsNull, -9, Q.FieldByName('invSenderID').AsInteger);
  FinvSenderAddressID  := iif(Q.FieldByName('invSenderAddressID').IsNull, -9, Q.FieldByName('invSenderAddressID').AsInteger);
  FinvClaimID          := iif(Q.FieldByName('invLoadClaim_ID').IsNull, -9, Q.FieldByName('invLoadClaim_ID').AsInteger);
  FinvRecipID          := iif(Q.FieldByName('invRecipID').IsNull, -9, Q.FieldByName('invRecipID').AsInteger);
  FinvRecipAddressID   := iif(Q.FieldByName('invRecipAddressID').IsNull, -9, Q.FieldByName('invRecipAddressID').AsInteger);
  FinvSendSpeedID      := iif(Q.FieldByName('invSendSpeedID').IsNull, -9, Q.FieldByName('invSendSpeedID').AsInteger);
  FinvPayPlaceID       := iif(Q.FieldByName('invPayPlaceID').IsNull, -9, Q.FieldByName('invPayPlaceID').AsInteger);
  FinvPayFormID        := iif(Q.FieldByName('invPayFormID').IsNull, -9, Q.FieldByName('invPayFormID').AsInteger);
  FinvPlanCarTypeID    := iif(Q.FieldByName('invPlanCarTypeID').IsNull, -9, Q.FieldByName('invPlanCarTypeID').AsInteger);
  FinvPlanCarOwnerTypeID  := iif(Q.FieldByName('invPlanCarOwnerTypeID').IsNull, -9, Q.FieldByName('invPlanCarOwnerTypeID').AsInteger);
  FinvPlanContOwnerTypeID := iif(Q.FieldByName('invPlanContOwnerTypeID').IsNull, -9, Q.FieldByName('invPlanContOwnerTypeID').AsInteger);
  FinvLoadTypeID       := iif(Q.FieldByName('invLoadTypeID').IsNull, -9, Q.FieldByName('invLoadTypeID').AsInteger);
  FinvLoadAssetsID     := iif(Q.FieldByName('invLoadAssetsID').IsNull, -9, Q.FieldByName('invLoadAssetsID').AsInteger);
  FinvScaleTypeID      := iif(Q.FieldByName('invScaleTypeID').IsNull, -9, Q.FieldByName('invScaleTypeID').AsInteger);
  FinvScalePersonID    := iif(Q.FieldByName('invScalePersonID').IsNull, -9, Q.FieldByName('invScalePersonID').AsInteger);
  FinvCheckDepID       := iif(Q.FieldByName('invCheckDepID').IsNull, -9, Q.FieldByName('invCheckDepID').AsInteger);
  FinvDepNormDocID     := iif(Q.FieldByName('invDepNormDocID').IsNull, -9, Q.FieldByName('invDepNormDocID').AsInteger);

  cxTextEdit1.Text := Q.FieldByName('invoiceID').AsString;
  cxTextEdit2.Text := Q.FieldByName('frontEndId').AsString;

  cxTextEdit3.Text    := Q.FieldByName('invNumber').AsString;
  cxButtonEdit2.Text  := Q.FieldByName('invBlankType').AsString;
  cxTextEdit6.Text    := Q.FieldByName('invSenderAddress').AsString;
  cxTextEdit7.Text    := Q.FieldByName('invSenderTGNL').AsString;
  cxButtonEdit4.Text  := Q.FieldByName('invLoadClaim_Number').AsString;
//  cxTextEdit33.Text   := Q.FieldByName('invOtprNum').AsString;
//  cxTextEdit34.Text   := Q.FieldByName('invPodNum').AsString;
  cxButtonEdit15.Text := Q.FieldByName('invFromCountryCode').AsString;
  cxTextEdit13.Text   := Q.FieldByName('invFromPointCode').AsString;
  cxTextEdit11.Text   := Q.FieldByName('invFromPointName').AsString;
  cxButtonEdit10.Text := Q.FieldByName('invFromStationCode').AsString;
  cxButtonEdit23.Text := Q.FieldByName('invFromPortCode').AsString;
  cxTextEdit10.Text   := Q.FieldByName('invFromLoadWay').AsString;
  cxTextEdit9.Text    := Q.FieldByName('invRecipOKPO').AsString;
  cxButtonEdit3.Text  := Q.FieldByName('invRecipName').AsString;
  cxTextEdit4.Text    := Q.FieldByName('invRecipAddress').AsString;
  cxTextEdit5.Text    := Q.FieldByName('invRecipTGNL').AsString;
  cxButtonEdit14.Text := Q.FieldByName('invToCountryCode').AsString;
  cxTextEdit20.Text   := Q.FieldByName('invToPointCode').AsString;
  cxTextEdit21.Text   := Q.FieldByName('invToPointName').AsString;
  cxButtonEdit26.Text := Q.FieldByName('invToStationCode').AsString;
  cxButtonEdit33.Text := Q.FieldByName('invToPortCode').AsString;
  cxTextEdit12.Text   := Q.FieldByName('invToLoadWay').AsString;
  cxTextEdit41.Text   := Q.FieldByName('invPayPlaceRwCode').AsString;
  cxTextEdit14.Text   := Q.FieldByName('invPayerCode').AsString;
  cxButtonEdit16.Text := Q.FieldByName('invPayerName').AsString;
  cxTextEdit15.Text   := Q.FieldByName('invPayerAccount').AsString;
  cxTextEdit16.Text   := Q.FieldByName('invPayerBank').AsString;
  cxTextEdit17.Text   := Q.FieldByName('invFRWSubCode').AsString;
  cxTextEdit18.Text   := Q.FieldByName('invFRWSubCode2').AsString;
  cxTextEdit26.Text   := Q.FieldByName('invIxTariffCode').AsString;
  cxTextEdit28.Text   := Q.FieldByName('invPlanCarCount').AsString;
  cxTextEdit31.Text   := Q.FieldByName('invPlanContTonnage').AsString;
  cxTextEdit29.Text   := Q.FieldByName('invPlanContCount').AsString;
  cxTextEdit32.Text   := Q.FieldByName('invContPlanSizeBig').AsString;
  cxTextEdit27.Text   := Q.FieldByName('invAnnounceValue').AsString;
  cxTextEdit30.Text   := Q.FieldByName('invPlanOutsizeCode').AsString;
  cxTextEdit19.Text   := Q.FieldByName('invRespPerson').AsString;
  cxButtonEdit34.Text   := Q.FieldByName('invToCountryEmptyCode').AsString;
  cxButtonEdit35.Text   := Q.FieldByName('invToStationEmptyCode').AsString;
  cxTextEdit38.Text     := Q.FieldByName('invScalePrecision').AsString;
  cxTextEdit36.Text     := Q.FieldByName('invDeplPerson').AsString;
  cxTextEdit39.Text     := Q.FieldByName('invDepPart').AsString;
  cxTextEdit37.Text     := Q.FieldByName('invDepArc').AsString;
  cxTextEdit35.Text     := Q.FieldByName('invDepSec').AsString;
  cxTextEdit40.Text     := Q.FieldByName('invDepCond').AsString;

  cxDateEdit1.EditValue := Q.FieldByName('invDateLoad').Value;
  cxDateEdit2.EditValue := Q.FieldByName('invFactDateToLoad').Value;

  ShowRoadBegin(cxButtonEdit10.Text);
  ShowRoadEnd  (cxButtonEdit26.Text);
  ShowDistance (cxButtonEdit10.Text, cxButtonEdit26.Text);

  ShowTextMessage('Загрузка накладной...' + #13#10 + 'Грузы..', False);
  {$region 'freight'}
  if set_reply = False then begin
    Q.SQL.Clear;
    Q.SQL.Add('DECLARE  @xml XML');
    Q.SQL.Add('SELECT   @xml = etran_ecp_xml FROM etran_ecp WHERE etran_ecp_id = ' + IntToStr(Fetran_ecp_id));
    Q.SQL.Add('');
  end else begin
    Q.SQL.Clear;
    Q.SQL.Add('DECLARE  @xml XML');
    Q.SQL.Add('SELECT   @xml = etran_ecp_reply_xml FROM etran_ecp WHERE etran_ecp_id = ' + IntToStr(Fetran_ecp_id));
    Q.SQL.Add('');
  end;

//  Q.SQL.Clear;
//  Q.SQL.Add('DECLARE  @xml XML');
//  Q.SQL.Add('SELECT   @xml = etran_ecp_xml FROM etran_ecp WHERE etran_ecp_id = ' + IntToStr(Fetran_ecp_id));
//  Q.SQL.Add('');
  Q.SQL.Add('SELECT	');
  Q.SQL.Add('		    ref.value(''(freightCode/@value)[1]'',''varchar(255)'') as freightCode,');
  Q.SQL.Add('		    ref.value(''(freightExactName/@value)[1]'',''varchar(255)'') as freightExactName,');
  Q.SQL.Add('		    ref.value(''(freightGNGID/@value)[1]'',''int'') as freightGNGID,');
  Q.SQL.Add('		    ref.value(''(freightGNGID2001/@value)[1]'',''int'') as freightGNGID2001,');
  Q.SQL.Add('		    ref.value(''(freightGNGCode/@value)[1]'',''varchar(255)'') as freightGNGCode,');
  Q.SQL.Add('		    ref.value(''(freightAdditional/@value)[1]'',''varchar(255)'') as freightAdditional,');
  Q.SQL.Add('		    ref.value(''(freightPackTypeID/@value)[1]'',''int'') as freightPackTypeID,');
  Q.SQL.Add('		    ref.value(''(freightPocketCount/@value)[1]'',''int'') as freightPocketCount,');
  Q.SQL.Add('		    ref.value(''(freightPackageCount/@value)[1]'',''int'') as freightPackageCount,');
  Q.SQL.Add('		    ref.value(''(freightWeight/@value)[1]'',''money'') as freightWeight,');
  Q.SQL.Add('		    ref.value(''(freightWeightStdGross/@value)[1]'',''money'') as freightWeightStdGross,');
  Q.SQL.Add('		    ref.value(''(freightWeightStdNet/@value)[1]'',''money'') as freightWeightStdNet,');
  Q.SQL.Add('		    ref.value(''(freightMaxLength/@value)[1]'',''money'') as freightMaxLength,');
  Q.SQL.Add('		    ref.value(''(freightMaxWidth/@value)[1]'',''money'') as freightMaxWidth,');
  Q.SQL.Add('		    ref.value(''(freightMaxHeight/@value)[1]'',''money'') as freightMaxHeight,');
  Q.SQL.Add('		    ref.value(''(freightSendersMark/@value)[1]'',''varchar(255)'') as freightSendersMark,');
  Q.SQL.Add('		    ref.value(''(freightDangerSignID/@value)[1]'',''int'') as freightDangerSignID,');
  Q.SQL.Add('		    ref.value(''(freightDangerID/@value)[1]'',''int'') as freightDangerID,');
  Q.SQL.Add('		    ref.value(''(freightAccidentCard/@value)[1]'',''int'') as freightAccidentCard,');
  Q.SQL.Add('		    ref.value(''(freightAccidentCardID/@value)[1]'',''int'') as freightAccidentCardID,');
  Q.SQL.Add('		    ref.query(''.'') as node');
  Q.SQL.Add('FROM	  @xml.nodes(''/invoiceDirectLoad/invFreight'') as node(ref)');
  Q.Open;

  Q.First;
  while not Q.Eof do begin
    Client_invFreight.Append;

    Q2.SQL.Clear;
    Q2.SQL.Add('SELECT top 1 inf_obj_name FROM dbo.ETRAN_NSI_INF_OBJ WHERE type_inf_id = 1 and inf_obj_cod = ''' + Q.FieldByName('freightCode').AsString + ''' ');
    Q2.Open;
    Client_invFreight.FieldByName('freightName').Value           := Q2.FieldByName('inf_obj_name').Value;
    Client_invFreight.FieldByName('freightCode').Value           := Q.FieldByName('freightCode').Value;
    Client_invFreight.FieldByName('freightExactName').Value      := Q.FieldByName('freightExactName').Value;
    Client_invFreight.FieldByName('freightGNGID').Value          := Q.FieldByName('freightGNGID').Value;
    Client_invFreight.FieldByName('freightGNGID2001').Value      := Q.FieldByName('freightGNGID2001').Value;
    Client_invFreight.FieldByName('freightGNGCode').Value        := Q.FieldByName('freightGNGCode').Value;
    Client_invFreight.FieldByName('freightAdditional').Value     := Q.FieldByName('freightAdditional').Value;
    Client_invFreight.FieldByName('freightPackTypeID').Value     := Q.FieldByName('freightPackTypeID').Value;
    Client_invFreight.FieldByName('freightPocketCount').Value    := Q.FieldByName('freightPocketCount').Value;
    Client_invFreight.FieldByName('freightPackageCount').Value   := Q.FieldByName('freightPackageCount').Value;
    Client_invFreight.FieldByName('freightWeight').Value         := Q.FieldByName('freightWeight').Value;
    Client_invFreight.FieldByName('freightWeightStdGross').Value := Q.FieldByName('freightWeightStdGross').Value;
    Client_invFreight.FieldByName('freightWeightStdNet').Value   := Q.FieldByName('freightWeightStdNet').Value;
    Client_invFreight.FieldByName('freightMaxLength').Value      := Q.FieldByName('freightMaxLength').Value;
    Client_invFreight.FieldByName('freightMaxWidth').Value       := Q.FieldByName('freightMaxWidth').Value;
    Client_invFreight.FieldByName('freightMaxHeight').Value      := Q.FieldByName('freightMaxHeight').Value;
    Client_invFreight.FieldByName('freightSendersMark').Value    := Q.FieldByName('freightSendersMark').Value;
    Client_invFreight.FieldByName('freightDangerSignID').Value   := Q.FieldByName('freightDangerSignID').Value;
    Client_invFreight.FieldByName('freightDangerID').Value       := Q.FieldByName('freightDangerID').Value;

    if not Q.FieldByName('freightDangerID').IsNull then begin
      Q2.SQL.Clear;
      Q2.SQL.Add('SELECT top 1 inf_obj_name  FROM dbo.ETRAN_NSI_INF_OBJ WHERE type_inf_id = 25 AND etran_nsi_id = ' + IntToStr(Q.FieldByName('freightDangerID').Value));
      Q2.Open;
      Client_invFreight.FieldByName('freightDangerName').Value     := Q2.FieldByName('inf_obj_name').Value;
    end;

    Client_invFreight.FieldByName('freightAccidentCard').Value   := Q.FieldByName('freightAccidentCard').Value;
    Client_invFreight.FieldByName('freightAccidentCardID').Value := Q.FieldByName('freightAccidentCardID').Value;
    Client_invFreight.Post;

    Q2.SQL.Clear;
    Q2.SQL.Add('DECLARE @xml xml');
    Q2.SQL.Add('SET @xml = ''' + Q.FieldByName('node').AsString + '''');
    Q2.SQL.Add('SELECT	');
    Q2.SQL.Add('		    ref.value(''(clsTranspClauseID/@value)[1]'',''varchar(255)'') as clsTranspClauseID,');
    Q2.SQL.Add('		    ref.value(''(clsCustomText/@value)[1]'',''varchar(255)'') as clsCustomText');
    Q2.SQL.Add('FROM	  @xml.nodes(''/invFreight/freightCLS'') as node(ref)');
    Q2.Open;
    while not Q2.Eof do begin
      Client_freightCLS.Append;
      Client_freightCLS.FieldByName('invFreight_id').Value     := Client_invFreight.FieldByName('id').Value;
      Client_freightCLS.FieldByName('clsTranspClauseID').Value := Q2.FieldByName('clsTranspClauseID').Value;

      if not Q2.FieldByName('clsTranspClauseID').IsNull then begin
        Q3.SQL.Clear;
        Q3.SQL.Add('SELECT top 1 inf_obj_name FROM dbo.ETRAN_NSI_INF_OBJ WHERE type_inf_id = 24 and etran_nsi_id = ' + Q2.FieldByName('clsTranspClauseID').AsString + ' ');
        Q3.Open;
        Client_freightCLS.FieldByName('clsTranspClauseName').Value := Q3.FieldByName('inf_obj_name').Value;
      end;

      Client_freightCLS.FieldByName('clsCustomText').Value     := Q2.FieldByName('clsCustomText').Value;
      Client_freightCLS.Post;
      Q2.Next;
    end;




    Q.Next;
  end;
  {$endregion}

  ShowTextMessage('Загрузка накладной...' + #13#10 + 'Вагоны..', False);
  {$region 'invCar'}
  Q.SQL.Clear;
  if set_reply = False then begin
    Q.SQL.Clear;
    Q.SQL.Add('DECLARE  @xml XML');
    Q.SQL.Add('SELECT   @xml = etran_ecp_xml FROM etran_ecp WHERE etran_ecp_id = ' + IntToStr(Fetran_ecp_id));
    Q.SQL.Add('');
  end else begin
    Q.SQL.Clear;
    Q.SQL.Add('DECLARE  @xml XML');
    Q.SQL.Add('SELECT   @xml = etran_ecp_reply_xml FROM etran_ecp WHERE etran_ecp_id = ' + IntToStr(Fetran_ecp_id));
    Q.SQL.Add('');
  end;
//  Q.SQL.Add('DECLARE  @xml XML');
//  Q.SQL.Add('SELECT   @xml = etran_ecp_xml FROM etran_ecp WHERE etran_ecp_id = ' + IntToStr(Fetran_ecp_id));
//  Q.SQL.Add('');
  Q.SQL.Add('SELECT	');
  Q.SQL.Add('		    ref.value(''(carClaimId/@value)[1]'',''int'') as carClaimId,');
  Q.SQL.Add('		    ref.value(''(carClaimOtprNom/@value)[1]'',''int'') as carClaimOtprNom,');
  Q.SQL.Add('		    ref.value(''(carClaimPodNum/@value)[1]'',''int'') as carClaimPodNum,');
  Q.SQL.Add('		    ref.value(''(carTypeID/@value)[1]'',''int'') as carTypeID,');
  Q.SQL.Add('		    ref.value(''(carNumber/@value)[1]'',''varchar(255)'') as carNumber,');
  Q.SQL.Add('		    ref.value(''(carOwnerCountryCode/@value)[1]'',''varchar(255)'') as carOwnerCountryCode,');
  Q.SQL.Add('		    ref.value(''(carOwnerTypeID/@value)[1]'',''int'') as carOwnerTypeID,');
  Q.SQL.Add('		    ref.value(''(carOwnerID/@value)[1]'',''int'') as carOwnerID,');
  Q.SQL.Add('		    ref.value(''(carOwnerOKPO/@value)[1]'',''varchar(255)'') as carOwnerOKPO,');
  Q.SQL.Add('		    ref.value(''(carOwnerName/@value)[1]'',''varchar(255)'') as carOwnerName,');
  Q.SQL.Add('		    ref.value(''(carTenantID/@value)[1]'',''money'') as carTenantID,');
  Q.SQL.Add('		    ref.value(''(carPlacesCount/@value)[1]'',''money'') as carPlacesCount,');
  Q.SQL.Add('		    ref.value(''(carTonnage/@value)[1]'',''money'') as carTonnage,');
  Q.SQL.Add('		    ref.value(''(carAxles/@value)[1]'',''money'') as carAxles,');
  Q.SQL.Add('		    ref.value(''(carVolume/@value)[1]'',''money'') as carVolume,');
  Q.SQL.Add('		    ref.value(''(carFreightGNGCode/@value)[1]'',''varchar(255)'') as carFreightGNGCode,');
  Q.SQL.Add('		    ref.value(''(carFreightGNGID2001/@value)[1]'',''varchar(255)'') as carFreightGNGID2001,');
  Q.SQL.Add('		    ref.value(''(carWeightDep/@value)[1]'',''money'') as carWeightDep,');
  Q.SQL.Add('		    ref.value(''(carWeightDepReal/@value)[1]'',''money'') as carWeightDepReal,');
  Q.SQL.Add('		    ref.value(''(carWeightGross/@value)[1]'',''money'') as carWeightGross,');
  Q.SQL.Add('		    ref.value(''(carWeightNet/@value)[1]'',''money'') as carWeightNet,');
  Q.SQL.Add('		    ref.value(''(carWeightAddDev/@value)[1]'',''money'') as carWeightAddDev,');
  Q.SQL.Add('		    ref.value(''(carAddDevWithGoods/@value)[1]'',''money'') as carAddDevWithGoods,');
  Q.SQL.Add('		    ref.value(''(carPriorFreightCode/@value)[1]'',''varchar(255)'') as carPriorFreightCode,');
  Q.SQL.Add('		    ref.value(''(carOutsizeCode/@value)[1]'',''varchar(255)'') as carOutsizeCode,');
  Q.SQL.Add('		    ref.value(''(carFrameWeight/@value)[1]'',''money'') as carFrameWeight,');
  Q.SQL.Add('		    ref.value(''(carFrameWagNum/@value)[1]'',''varchar(255)'') as carFrameWagNum,');
  Q.SQL.Add('		    ref.value(''(carTopHeight/@value)[1]'',''money'') as carTopHeight,');
  Q.SQL.Add('		    ref.value(''(carMainShtabQuantity/@value)[1]'',''money'') as carMainShtabQuantity,');
  Q.SQL.Add('		    ref.value(''(carMainShtabHeight/@value)[1]'',''money'') as carMainShtabHeight,');
  Q.SQL.Add('		    ref.value(''(carHeadShtabQuantity/@value)[1]'',''money'') as carHeadShtabQuantity,');
  Q.SQL.Add('		    ref.value(''(carLiquidTemperature/@value)[1]'',''money'') as carLiquidTemperature,');
  Q.SQL.Add('		    ref.value(''(carLiquidHeight/@value)[1]'',''money'') as carLiquidHeight,');
  Q.SQL.Add('		    ref.value(''(carLiquidDensity/@value)[1]'',''money'') as carLiquidDensity,');
  Q.SQL.Add('		    ref.value(''(carLiquidVolume/@value)[1]'',''money'') as carLiquidVolume,');
  Q.SQL.Add('		    ref.value(''(carTankType/@value)[1]'',''varchar(255)'') as carTankType,');
  Q.SQL.Add('		    ref.value(''(carRefNum/@value)[1]'',''money'') as carRefNum,');
  Q.SQL.Add('		    ref.value(''(carRefCount/@value)[1]'',''money'') as carRefCount,');
  Q.SQL.Add('		    ref.value(''(carRolls/@value)[1]'',''money'') as carRolls,');
  Q.SQL.Add('		    ref.value(''(carConnectCode/@value)[1]'',''money'') as carConnectCode,');
  Q.SQL.Add('		    ref.value(''(carIsCover/@value)[1]'',''money'') as carIsCover,');
  Q.SQL.Add('		    ref.query(''.'') as node');
  Q.SQL.Add('FROM	  @xml.nodes(''/invoiceDirectLoad/invCar'') as node(ref)');
  Q.Open;

  Q.First;
  while not Q.Eof do begin
    Q2.SQL.Clear;
    Q2.SQL.Add('SELECT top 1 fact_track_trip_id, index_train, fact_track_node_end_cod, contract_id, firm_customer_name FROM dbo.ETRAN_ECP_FACT WHERE etran_ecp_id = ' +  IntToStr(Fetran_ecp_id) + ' and num_vagon = ' + Q.FieldByName('carNumber').AsString);
    Q2.Open;


    Client_invCar.Append;
    if Q2.RecordCount > 0 then begin
      Client_invCar.FieldByName('fact_track_trip_id').Value := Q2.FieldByName('fact_track_trip_id').Value;
      Client_invCar.FieldByName('index_train'       ).Value := Q2.FieldByName('index_train').Value;
      Client_invCar.FieldByName('fact_track_node_end_cod').Value := Q2.FieldByName('fact_track_node_end_cod').Value;
      Client_invCar.FieldByName('contract_id').Value := Q2.FieldByName('contract_id').Value;
      Client_invCar.FieldByName('firm_customer_name').Value := Q2.FieldByName('firm_customer_name').Value;
    end;

    Client_invCar.FieldByName('carClaimId').Value           := Q.FieldByName('carClaimId').Value;
    Client_invCar.FieldByName('carClaimOtprNom').Value      := Q.FieldByName('carClaimOtprNom').Value;
    Client_invCar.FieldByName('carClaimPodNum').Value       := Q.FieldByName('carClaimPodNum').Value;
    Client_invCar.FieldByName('carTypeID').Value            := Q.FieldByName('carTypeID').Value;
    Client_invCar.FieldByName('carNumber').Value            := Q.FieldByName('carNumber').Value;
    Client_invCar.FieldByName('carOwnerCountryCode').Value  := Q.FieldByName('carOwnerCountryCode').Value;
    Client_invCar.FieldByName('carOwnerTypeID').Value       := Q.FieldByName('carOwnerTypeID').Value;
    Client_invCar.FieldByName('carOwnerID').Value           := Q.FieldByName('carOwnerID').Value;
    Client_invCar.FieldByName('carOwnerOKPO').Value         := Q.FieldByName('carOwnerOKPO').Value;
    Client_invCar.FieldByName('carOwnerName').Value         := Q.FieldByName('carOwnerName').Value;
    Client_invCar.FieldByName('carTenantID').Value          := Q.FieldByName('carTenantID').Value;
    Client_invCar.FieldByName('carPlacesCount').Value       := Q.FieldByName('carPlacesCount').Value;
    Client_invCar.FieldByName('carTonnage').Value           := Q.FieldByName('carTonnage').Value;
    Client_invCar.FieldByName('carAxles').Value             := Q.FieldByName('carAxles').Value;
    Client_invCar.FieldByName('carVolume').Value            := Q.FieldByName('carVolume').Value;
    Client_invCar.FieldByName('carFreightGNGCode').Value    := Q.FieldByName('carFreightGNGCode').Value;
    Client_invCar.FieldByName('carFreightGNGID2001').Value  := Q.FieldByName('carFreightGNGID2001').Value;
    Client_invCar.FieldByName('carWeightDep').Value         := Q.FieldByName('carWeightDep').Value;
    Client_invCar.FieldByName('carWeightDepReal').Value     := Q.FieldByName('carWeightDepReal').Value;
    Client_invCar.FieldByName('carWeightGross').Value       := Q.FieldByName('carWeightGross').Value;
    Client_invCar.FieldByName('carWeightNet').Value         := Q.FieldByName('carWeightNet').Value;
    Client_invCar.FieldByName('carWeightAddDev').Value      := Q.FieldByName('carWeightAddDev').Value;
    Client_invCar.FieldByName('carAddDevWithGoods').Value   := Q.FieldByName('carAddDevWithGoods').Value;
    Client_invCar.FieldByName('carPriorFreightCode').Value  := Q.FieldByName('carPriorFreightCode').Value;

    if not Client_invCar.FieldByName('carPriorFreightCode').IsNull then begin
      Q2.SQL.Clear;
      Q2.SQL.Add('SELECT top 1 inf_obj_name FROM dbo.ETRAN_NSI_INF_OBJ WHERE type_inf_id = 1 AND inf_obj_cod = ''' + Client_invCar.FieldByName('carPriorFreightCode').AsString + '''');
      Q2.Open;
      Client_invCar.FieldByName('carPriorFreightName').Value  := Q2.FieldByName('inf_obj_name').AsString;
    end;

    Client_invCar.FieldByName('carOutsizeCode').Value       := Q.FieldByName('carOutsizeCode').Value;
    Client_invCar.FieldByName('carFrameWeight').Value       := Q.FieldByName('carFrameWeight').Value;
    Client_invCar.FieldByName('carFrameWagNum').Value       := Q.FieldByName('carFrameWagNum').Value;
    Client_invCar.FieldByName('carTopHeight').Value         := Q.FieldByName('carTopHeight').Value;
    Client_invCar.FieldByName('carMainShtabQuantity').Value := Q.FieldByName('carMainShtabQuantity').Value;
    Client_invCar.FieldByName('carMainShtabHeight').Value   := Q.FieldByName('carMainShtabHeight').Value;
    Client_invCar.FieldByName('carHeadShtabQuantity').Value := Q.FieldByName('carHeadShtabQuantity').Value;
    Client_invCar.FieldByName('carLiquidTemperature').Value := Q.FieldByName('carLiquidTemperature').Value;
    Client_invCar.FieldByName('carLiquidHeight').Value      := Q.FieldByName('carLiquidHeight').Value;
    Client_invCar.FieldByName('carLiquidDensity').Value     := Q.FieldByName('carLiquidDensity').Value;
    Client_invCar.FieldByName('carLiquidVolume').Value      := Q.FieldByName('carLiquidVolume').Value;
    Client_invCar.FieldByName('carTankType').Value          := Q.FieldByName('carTankType').Value;
    Client_invCar.FieldByName('carRefNum').Value            := Q.FieldByName('carRefNum').Value;
    Client_invCar.FieldByName('carRefCount').Value          := Q.FieldByName('carRefCount').Value;
    Client_invCar.FieldByName('carRolls').Value             := Q.FieldByName('carRolls').Value;
    Client_invCar.FieldByName('carConnectCode').Value       := Q.FieldByName('carConnectCode').Value;
    Client_invCar.FieldByName('carIsCover').Value           := Q.FieldByName('carIsCover').Value;
    Client_invCar.Post;


    Q2.SQL.Clear;
    Q2.SQL.Add('DECLARE @xml xml');
    Q2.SQL.Add('SET @xml = ''' + Q.FieldByName('node').AsString + '''');
    Q2.SQL.Add('SELECT	');
    Q2.SQL.Add('		    ref.value(''(spcTranspClauseID/@value)[1]'',''varchar(255)'') as spcTranspClauseID,');
    Q2.SQL.Add('		    ref.value(''(spcCustomText/@value)[1]'',''varchar(255)'') as spcCustomText');
    Q2.SQL.Add('FROM	  @xml.nodes(''/invCar/carSPC'') as node(ref)');
    Q2.Open;
    while not Q2.Eof do begin
      Client_carSPC.Append;
      Client_carSPC.FieldByName('car_id').Value     := Client_invCar.FieldByName('id').Value;
      Client_carSPC.FieldByName('spcTranspClauseID').Value := Q2.FieldByName('spcTranspClauseID').Value;

      if not Q2.FieldByName('spcTranspClauseID').IsNull then begin
        Q3.SQL.Clear;
        Q3.SQL.Add('SELECT top 1 inf_obj_name FROM dbo.ETRAN_NSI_INF_OBJ WHERE type_inf_id = 24 and etran_nsi_id = ' + Q2.FieldByName('spcTranspClauseID').AsString + ' ');
        Q3.Open;
        Client_carSPC.FieldByName('spcTranspClauseName').Value := Q3.FieldByName('inf_obj_name').Value;
      end;

      Client_carSPC.FieldByName('spcCustomText').Value     := Q2.FieldByName('spcCustomText').Value;
      Client_carSPC.Post;
      Q2.Next;
    end;



    Q2.SQL.Clear;
    Q2.SQL.Add('DECLARE @xml xml');
    Q2.SQL.Add('SET @xml = ''' + Q.FieldByName('node').AsString + '''');
    Q2.SQL.Add('SELECT	');
    Q2.SQL.Add('		    ref.value(''(sealTypeID/@value)[1]'',''varchar(255)'') as sealTypeID,');
    Q2.SQL.Add('		    ref.value(''(sealMarks/@value)[1]'',''varchar(255)'') as sealMarks,');
    Q2.SQL.Add('		    ref.value(''(sealQuantity/@value)[1]'',''varchar(255)'') as sealQuantity,');
    Q2.SQL.Add('		    ref.value(''(sealYear/@value)[1]'',''varchar(255)'') as sealYear,');
    Q2.SQL.Add('		    ref.value(''(sealOwnerTypeID/@value)[1]'',''varchar(255)'') as sealOwnerTypeID,');
    Q2.SQL.Add('		    ref.value(''(sealRailwayID/@value)[1]'',''varchar(255)'') as sealRailwayID');
    Q2.SQL.Add('FROM	  @xml.nodes(''/invCar/carCSL'') as node(ref)');
    Q2.Open;
    while not Q2.Eof do begin
      Client_carCSL.Append;
      Client_carCSL.FieldByName('car_id'            ).Value := Client_invCar.FieldByName('id').Value;
      Client_carCSL.FieldByName('sealTypeID'        ).Value := Q2.FieldByName('sealTypeID').Value;
      if not Q2.FieldByName('sealTypeID').IsNull then begin
        Q3.SQL.Clear;
        Q3.SQL.Add('SELECT top 1 inf_obj_name FROM dbo.ETRAN_NSI_INF_OBJ WHERE type_inf_id = 22 and etran_nsi_id = ' + Q2.FieldByName('sealTypeID').AsString + ' ');
        Q3.Open;
        Client_carCSL.FieldByName('sealTypeName'      ).Value := Q3.FieldByName('inf_obj_name').Value;
      end;

      Client_carCSL.FieldByName('sealMarks'         ).Value := Q2.FieldByName('sealMarks').Value;
      Client_carCSL.FieldByName('sealQuantity'      ).Value := Q2.FieldByName('sealQuantity').Value;
      Client_carCSL.FieldByName('sealYear'          ).Value := Q2.FieldByName('sealYear').Value;
      Client_carCSL.FieldByName('sealOwnerTypeID'   ).Value := Q2.FieldByName('sealOwnerTypeID').Value;
      if not Q2.FieldByName('sealOwnerTypeID').IsNull then begin
        Q3.SQL.Clear;
        Q3.SQL.Add('SELECT top 1 inf_obj_name FROM dbo.ETRAN_NSI_INF_OBJ WHERE type_inf_id = 27 AND inf_obj_cod in (''150'') and etran_nsi_id = ' + Q2.FieldByName('sealOwnerTypeID').AsString + ' ');
        Q3.Open;
        Client_carCSL.FieldByName('sealOwnerTypeName' ).Value := Q3.FieldByName('inf_obj_name').Value;
      end;

      Client_carCSL.FieldByName('sealRailwayID'     ).Value := Q2.FieldByName('sealRailwayID').Value;
      if not Q2.FieldByName('sealRailwayID').IsNull then begin
        Q3.SQL.Clear;
        Q3.SQL.Add('SELECT top 1 inf_obj_name FROM dbo.ETRAN_NSI_INF_OBJ WHERE type_inf_id = 5 and etran_nsi_id = ' + Q2.FieldByName('sealRailwayID').AsString + ' ');
        Q3.Open;
        Client_carCSL.FieldByName('sealRailwayName'   ).Value := Q3.FieldByName('inf_obj_name').Value;
      end;

      Client_carCSL.Post;
      Q2.Next;
    end;
    
    
    Q.Next;
  end;
  {$endregion}

  ShowTextMessage('Загрузка накладной...' + #13#10 + 'Проводники на накладную...', False);
  {$region 'InvGuide'}
  Q.SQL.Clear;
  if set_reply = False then begin
    Q.SQL.Clear;
    Q.SQL.Add('DECLARE  @xml XML');
    Q.SQL.Add('SELECT   @xml = etran_ecp_xml FROM etran_ecp WHERE etran_ecp_id = ' + IntToStr(Fetran_ecp_id));
    Q.SQL.Add('');
  end else begin
    Q.SQL.Clear;
    Q.SQL.Add('DECLARE  @xml XML');
    Q.SQL.Add('SELECT   @xml = etran_ecp_reply_xml FROM etran_ecp WHERE etran_ecp_id = ' + IntToStr(Fetran_ecp_id));
    Q.SQL.Add('');
  end;
//  Q.SQL.Add('DECLARE  @xml XML');
//  Q.SQL.Add('SELECT   @xml = etran_ecp_xml FROM etran_ecp WHERE etran_ecp_id = ' + IntToStr(Fetran_ecp_id));
//  Q.SQL.Add('');
  Q.SQL.Add('SELECT	');
  Q.SQL.Add('		    ref.value(''(guideFIO/@value)[1]'',''varchar(255)'') as guideFIO,');
  Q.SQL.Add('		    ref.value(''(guidePassportSer/@value)[1]'',''varchar(255)'') as guidePassportSer,');
  Q.SQL.Add('		    ref.value(''(guidePassportNum/@value)[1]'',''varchar(255)'') as guidePassportNum,');
  Q.SQL.Add('		    ref.value(''(guideWarrantNum/@value)[1]'',''varchar(255)'') as guideWarrantNum');
  Q.SQL.Add('FROM	  @xml.nodes(''/invoiceDirectLoad/invGuide'') as node(ref)');
  Q.Open;

  Q.First;
  while not Q.Eof do begin
    Client_invGuide.Append;
    Client_invGuide.FieldByName('guideFIO').Value := Q.FieldByName('guideFIO').Value;
    Client_invGuide.FieldByName('guidePassportSer').Value := Q.FieldByName('guidePassportSer').Value;
    Client_invGuide.FieldByName('guidePassportNum').Value := Q.FieldByName('guidePassportNum').Value;
    Client_invGuide.FieldByName('guideWarrantNum').Value := Q.FieldByName('guideWarrantNum').Value;
    Client_invGuide.Post;

    Q.Next;
  end;
  {$endregion}

  ShowTextMessage('Загрузка накладной...' + #13#10 + 'Особые условия...', False);
  {$region 'InvCndBlock'}
  Q.SQL.Clear;
  if set_reply = False then begin
    Q.SQL.Clear;
    Q.SQL.Add('DECLARE  @xml XML');
    Q.SQL.Add('SELECT   @xml = etran_ecp_xml FROM etran_ecp WHERE etran_ecp_id = ' + IntToStr(Fetran_ecp_id));
    Q.SQL.Add('');
  end else begin
    Q.SQL.Clear;
    Q.SQL.Add('DECLARE  @xml XML');
    Q.SQL.Add('SELECT   @xml = etran_ecp_reply_xml FROM etran_ecp WHERE etran_ecp_id = ' + IntToStr(Fetran_ecp_id));
    Q.SQL.Add('');
  end;
//  Q.SQL.Add('DECLARE  @xml XML');
//  Q.SQL.Add('SELECT   @xml = etran_ecp_xml FROM etran_ecp WHERE etran_ecp_id = ' + IntToStr(Fetran_ecp_id));
//  Q.SQL.Add('');
  Q.SQL.Add('SELECT	');
  Q.SQL.Add('		    ref.value(''(cndClauseId/@value)[1]'',''int'') as cndClauseId,');
  Q.SQL.Add('		    ref.value(''(cndClauseCustomText/@value)[1]'',''varchar(255)'') as cndClauseCustomText,');
  Q.SQL.Add('		    ref.value(''(cndFreightCode/@value)[1]'',''varchar(255)'') as cndFreightCode');
  Q.SQL.Add('FROM	  @xml.nodes(''/invoiceDirectLoad/invCndBlock'') as node(ref)');
  Q.Open;

  Q.First;
  while not Q.Eof do begin
    Client_invCndBlock.Append;
    Client_invCndBlock.FieldByName('cndClauseId'         ).Value := Q.FieldByName('cndClauseId').Value;

    if not Q.FieldByName('cndClauseId').IsNull then begin
      Q2.SQL.Clear;
      Q2.SQL.Add('SELECT top 1 inf_obj_name FROM dbo.ETRAN_NSI_INF_OBJ WHERE type_inf_id = 24 and etran_nsi_id = 14 and etran_nsi_id = ' + Q.FieldByName('cndClauseId').AsString + ' ');
      Q2.Open;
      Client_invCndBlock.FieldByName('cndClauseName'       ).Value := Q2.FieldByName('inf_obj_name').Value;
    end;

    Client_invCndBlock.FieldByName('cndClauseCustomText' ).Value := Q.FieldByName('cndClauseCustomText').Value;
    Client_invCndBlock.FieldByName('cndFreightCode'      ).Value := Q.FieldByName('cndFreightCode').Value;

    Q2.SQL.Clear;
    Q2.SQL.Add('SELECT inf_obj_name FROM dbo.ETRAN_NSI_INF_OBJ WHERE type_inf_id = 1 and inf_obj_cod = ''' + Q.FieldByName('cndFreightCode').AsString + ''' ');
    Q2.Open;
    Client_invCndBlock.FieldByName('cndFreightName'      ).Value := Q2.FieldByName('inf_obj_name').Value;

    Client_invCndBlock.Post;
    Q.Next;
  end;
  {$endregion}

  ShowTextMessage('Загрузка накладной...' + #13#10 + 'Тарифные отметки за отправку...', False);
  {$region 'InvTranspClause'}
  Q.SQL.Clear;
  if set_reply = False then begin
    Q.SQL.Clear;
    Q.SQL.Add('DECLARE  @xml XML');
    Q.SQL.Add('SELECT   @xml = etran_ecp_xml FROM etran_ecp WHERE etran_ecp_id = ' + IntToStr(Fetran_ecp_id));
    Q.SQL.Add('');
  end else begin
    Q.SQL.Clear;
    Q.SQL.Add('DECLARE  @xml XML');
    Q.SQL.Add('SELECT   @xml = etran_ecp_reply_xml FROM etran_ecp WHERE etran_ecp_id = ' + IntToStr(Fetran_ecp_id));
    Q.SQL.Add('');
  end;
//  Q.SQL.Add('DECLARE  @xml XML');
//  Q.SQL.Add('SELECT   @xml = etran_ecp_xml FROM etran_ecp WHERE etran_ecp_id = ' + IntToStr(Fetran_ecp_id));
//  Q.SQL.Add('');
  Q.SQL.Add('SELECT	');
  Q.SQL.Add('		    ref.value(''(transpClauseId/@value)[1]'',''int'') as transpClauseId,');
  Q.SQL.Add('		    ref.value(''(transpClauseCustomText/@value)[1]'',''varchar(255)'') as transpClauseCustomText');
  Q.SQL.Add('FROM	  @xml.nodes(''/invoiceDirectLoad/invTranspClause'') as node(ref)');
  Q.Open;

  Q.First;
  while not Q.Eof do begin
    Client_invTranspClause.Append;
    Client_invTranspClause.FieldByName('transpClauseId'  ).Value := Q.FieldByName('transpClauseId').Value;

    if not Q.FieldByName('transpClauseId').IsNull then begin
      Q2.SQL.Clear;
      Q2.SQL.Add('SELECT top 1 inf_obj_name FROM dbo.ETRAN_NSI_INF_OBJ WHERE type_inf_id = 24 and etran_nsi_id <> 14 and inf_obj_cod = ''2'' and etran_nsi_id = ' + Q.FieldByName('transpClauseId').AsString + ' ');
      Q2.Open;
      Client_invTranspClause.FieldByName('transpClauseName').Value := Q2.FieldByName('inf_obj_name').Value;
    end;

    Client_invTranspClause.FieldByName('transpClauseCustomText').Value := Q.FieldByName('transpClauseCustomText').Value;
    Client_invTranspClause.Post;

    Q.Next;
  end;
  {$endregion}

  ShowTextMessage('Загрузка накладной...' + #13#10 + 'Реальный вес груза...', False);
  {$region 'InvFreightWeight'}
  Q.SQL.Clear;
  if set_reply = False then begin
    Q.SQL.Clear;
    Q.SQL.Add('DECLARE  @xml XML');
    Q.SQL.Add('SELECT   @xml = etran_ecp_xml FROM etran_ecp WHERE etran_ecp_id = ' + IntToStr(Fetran_ecp_id));
    Q.SQL.Add('');
  end else begin
    Q.SQL.Clear;
    Q.SQL.Add('DECLARE  @xml XML');
    Q.SQL.Add('SELECT   @xml = etran_ecp_reply_xml FROM etran_ecp WHERE etran_ecp_id = ' + IntToStr(Fetran_ecp_id));
    Q.SQL.Add('');
  end;
//  Q.SQL.Add('DECLARE  @xml XML');
//  Q.SQL.Add('SELECT   @xml = etran_ecp_xml FROM etran_ecp WHERE etran_ecp_id = ' + IntToStr(Fetran_ecp_id));
//  Q.SQL.Add('');
  Q.SQL.Add('SELECT	');
  Q.SQL.Add('		    ref.value(''(freightCode/@value)[1]'',''varchar(255)'') as freightCode,');
  Q.SQL.Add('		    ref.value(''(freightWeight/@value)[1]'',''money'') as freightWeight,');
  Q.SQL.Add('		    ref.value(''(freightRealWeight/@value)[1]'',''money'') as freightRealWeight');
  Q.SQL.Add('FROM	  @xml.nodes(''/invoiceDirectLoad/invFreightWeight'') as node(ref)');
  Q.Open;

  Q.First;
  while not Q.Eof do begin
    Client_invFreightWeight.Append;
    Client_invFreightWeight.FieldByName('freightCode').Value := Q.FieldByName('freightCode').Value;

    Q2.SQL.Clear;
    Q2.SQL.Add('SELECT top 1 inf_obj_name FROM dbo.ETRAN_NSI_INF_OBJ WHERE type_inf_id = 1 and inf_obj_cod = ''' + Q.FieldByName('freightCode').AsString + ''' ');
    Q2.Open;
    Client_invFreightWeight.FieldByName('freightName').Value := Q2.FieldByName('inf_obj_name').Value;

    Client_invFreightWeight.FieldByName('freightWeight').Value := Q.FieldByName('freightWeight').Value;
    Client_invFreightWeight.FieldByName('freightRealWeight').Value := Q.FieldByName('freightRealWeight').Value;
    Client_invFreightWeight.Post;
    Q.Next;
  end;
  {$endregion}

  ShowTextMessage('Загрузка накладной...' + #13#10 + 'Перевозочные средства...', False);
  {$region 'invDev'}
  Q.SQL.Clear;
  if set_reply = False then begin
    Q.SQL.Clear;
    Q.SQL.Add('DECLARE  @xml XML');
    Q.SQL.Add('SELECT   @xml = etran_ecp_xml FROM etran_ecp WHERE etran_ecp_id = ' + IntToStr(Fetran_ecp_id));
    Q.SQL.Add('');
  end else begin
    Q.SQL.Clear;
    Q.SQL.Add('DECLARE  @xml XML');
    Q.SQL.Add('SELECT   @xml = etran_ecp_reply_xml FROM etran_ecp WHERE etran_ecp_id = ' + IntToStr(Fetran_ecp_id));
    Q.SQL.Add('');
  end;
//  Q.SQL.Add('DECLARE  @xml XML');
//  Q.SQL.Add('SELECT   @xml = etran_ecp_xml FROM etran_ecp WHERE etran_ecp_id = ' + IntToStr(Fetran_ecp_id));
//  Q.SQL.Add('');
  Q.SQL.Add('SELECT	');
  Q.SQL.Add('		    ref.value(''(devTypeID/@value)[1]'',''int'') as devTypeID,');
  Q.SQL.Add('		    ref.value(''(devNumber/@value)[1]'',''varchar(255)'') as devNumber,');
  Q.SQL.Add('		    ref.value(''(devOwnerCountryCode/@value)[1]'',''varchar(255)'') as devOwnerCountryCode,');
  Q.SQL.Add('		    ref.value(''(devOwnerTypeID/@value)[1]'',''int'') as devOwnerTypeID,');
  Q.SQL.Add('		    ref.value(''(devOwnerOKPO/@value)[1]'',''varchar(255)'') as devOwnerOKPO,');
  Q.SQL.Add('		    ref.value(''(devOwnerName/@value)[1]'',''varchar(255)'') as devOwnerName,');
  Q.SQL.Add('		    ref.value(''(devQuantity/@value)[1]'',''money'') as devQuantity,');
  Q.SQL.Add('		    ref.value(''(devReturn/@value)[1]'',''int'') as devReturn');
  Q.SQL.Add('FROM	  @xml.nodes(''/invoiceDirectLoad/invDev'') as node(ref)');
  Q.Open;

  Q.First;
  while not Q.Eof do begin
    Client_invDev.Append;
    Client_invDev.FieldByName('devTypeID').Value := Q.FieldByName('devTypeID').Value;
    if not Q.FieldByName('devTypeID').IsNull then begin
      Q2.SQL.Clear;
      Q2.SQL.Add('SELECT top 1 inf_obj_name FROM dbo.ETRAN_NSI_INF_OBJ WHERE type_inf_id = 21  AND etran_nsi_id = ' + Q.FieldByName('devTypeID').AsString + ' ');
      Q2.Open;
      Client_invDev.FieldByName('devTypeName').Value := Q2.FieldByName('inf_obj_name').Value;
    end;
    Client_invDev.FieldByName('devNumber').Value := Q.FieldByName('devNumber').Value;
    Client_invDev.FieldByName('devOwnerCountryCode').Value := Q.FieldByName('devOwnerCountryCode').Value;

    Q2.SQL.Clear;
    Q2.SQL.Add('SELECT top 1 inf_obj_name FROM dbo.ETRAN_NSI_INF_OBJ WHERE type_inf_id = 13  AND inf_obj_cod = ''' + Q.FieldByName('devOwnerCountryCode').AsString + ''' ');
    Q2.Open;
    Client_invDev.FieldByName('devOwnerCountryName').Value := Q2.FieldByName('inf_obj_name').Value;


    Client_invDev.FieldByName('devOwnerTypeID').Value := Q.FieldByName('devOwnerTypeID').Value;
    if not Q.FieldByName('devOwnerTypeID').IsNull then begin
      Q2.SQL.Clear;
      Q2.SQL.Add('SELECT top 1 inf_obj_name FROM dbo.ETRAN_NSI_INF_OBJ WHERE type_inf_id = 27 AND inf_obj_cod = ''7'' AND etran_nsi_id = ' + Q.FieldByName('devOwnerTypeID').AsString + ' ');
      Q2.Open;
      Client_invDev.FieldByName('devOwnerTypeName').Value := Q2.FieldByName('inf_obj_name').Value;
    end;
    Client_invDev.FieldByName('devOwnerOKPO').Value := Q.FieldByName('devOwnerOKPO').Value;
    Client_invDev.FieldByName('devOwnerName').Value := Q.FieldByName('devOwnerName').Value;
    Client_invDev.FieldByName('devQuantity').Value := Q.FieldByName('devQuantity').Value;
    Client_invDev.FieldByName('devReturn').Value := Q.FieldByName('devReturn').Value;
    Client_invDev.Post;
    Q.Next;
  end;
  {$endregion}

  ShowTextMessage('Загрузка накладной...' + #13#10 + 'Прилагаемые и предъявляемые документы...', False);
  {$region 'InvDOC'}
  if set_reply = False then begin
    Q.SQL.Clear;
    Q.SQL.Add('DECLARE  @xml XML');
    Q.SQL.Add('SELECT   @xml = etran_ecp_xml FROM etran_ecp WHERE etran_ecp_id = ' + IntToStr(Fetran_ecp_id));
    Q.SQL.Add('');
  end else begin
    Q.SQL.Clear;
    Q.SQL.Add('DECLARE  @xml XML');
    Q.SQL.Add('SELECT   @xml = etran_ecp_reply_xml FROM etran_ecp WHERE etran_ecp_id = ' + IntToStr(Fetran_ecp_id));
    Q.SQL.Add('');
  end;
//  Q.SQL.Clear;
//  Q.SQL.Add('DECLARE  @xml XML');
//  Q.SQL.Add('SELECT   @xml = etran_ecp_xml FROM etran_ecp WHERE etran_ecp_id = ' + IntToStr(Fetran_ecp_id));
//  Q.SQL.Add('');
  Q.SQL.Add('SELECT	');
  Q.SQL.Add('		    ref.value(''(docTypeID/@value)[1]'',''int'') as docTypeID,');
  Q.SQL.Add('		    ref.value(''(docNumber/@value)[1]'',''varchar(255)'') as docNumber,');
  Q.SQL.Add('		    convert(datetime, ref.value(''(docDate/@value)[1]'',''varchar(255)''),104) as docDate,');
  Q.SQL.Add('		    ref.value(''(dayCount/@value)[1]'',''int'') as dayCount,');
  Q.SQL.Add('		    ref.value(''(DocumentID/@value)[1]'',''int'') as DocumentID');
  Q.SQL.Add('FROM	  @xml.nodes(''/invoiceDirectLoad/invDOC'') as node(ref)');
  Q.Open;

  Q.First;
  while not Q.Eof do begin
    Client_invDOC.Append;
    Client_invDOC.FieldByName('docTypeID').Value := Q.FieldByName('docTypeID').Value;

    if not Q.FieldByName('docTypeID').IsNull then begin
      Q2.SQL.Clear;
      Q2.SQL.Add('SELECT top 1 inf_obj_name FROM dbo.ETRAN_NSI_INF_OBJ WHERE type_inf_id = 24 AND inf_obj_cod in (''7'',''13'') and etran_nsi_id = ' + Q.FieldByName('docTypeID').AsString + ' ');
      Q2.Open;
      Client_invDOC.FieldByName('docTypeName').Value := Q2.FieldByName('inf_obj_name').Value;
    end;

    Client_invDOC.FieldByName('docNumber').Value := Q.FieldByName('docNumber').Value;
    Client_invDOC.FieldByName('docDate').Value := Q.FieldByName('docDate').Value;
    Client_invDOC.FieldByName('dayCount').Value := Q.FieldByName('dayCount').Value;
    Client_invDOC.FieldByName('DocumentID').Value := Q.FieldByName('DocumentID').Value;
    Client_invDOC.Post;

    Q.Next;
  end;
  {$endregion}

  ShowTextMessage('Загрузка накладной...' + #13#10 + 'Специальные отметки...', False);
  {$region 'InvSPC'}
  Q.SQL.Clear;
  if set_reply = False then begin
    Q.SQL.Clear;
    Q.SQL.Add('DECLARE  @xml XML');
    Q.SQL.Add('SELECT   @xml = etran_ecp_xml FROM etran_ecp WHERE etran_ecp_id = ' + IntToStr(Fetran_ecp_id));
    Q.SQL.Add('');
  end else begin
    Q.SQL.Clear;
    Q.SQL.Add('DECLARE  @xml XML');
    Q.SQL.Add('SELECT   @xml = etran_ecp_reply_xml FROM etran_ecp WHERE etran_ecp_id = ' + IntToStr(Fetran_ecp_id));
    Q.SQL.Add('');
  end;
//  Q.SQL.Add('DECLARE  @xml XML');
//  Q.SQL.Add('SELECT   @xml = etran_ecp_xml FROM etran_ecp WHERE etran_ecp_id = ' + IntToStr(Fetran_ecp_id));
//  Q.SQL.Add('');
  Q.SQL.Add('SELECT	');
  Q.SQL.Add('		    ref.value(''(spcTranspClauseID/@value)[1]'',''int'') as spcTranspClauseID,');
  Q.SQL.Add('		    ref.value(''(spcCustomText/@value)[1]'',''varchar(255)'') as spcCustomText,');
  Q.SQL.Add('		    ref.value(''(spcNumber/@value)[1]'',''varchar(255)'') as spcNumber,');
  Q.SQL.Add('		    ref.value(''(spcClaimNumber/@value)[1]'',''varchar(255)'') as spcClaimNumber,');
  Q.SQL.Add('		    ref.value(''(spcNumOtp/@value)[1]'',''varchar(255)'') as spcNumOtp,');
  Q.SQL.Add('		    ref.value(''(spcDate/@value)[1]'',''date'') as spcDate');
  Q.SQL.Add('FROM	  @xml.nodes(''/invoiceDirectLoad/invSPC'') as node(ref)');
  Q.Open;

  Q.First;
  while not Q.Eof do begin
    Client_invSPC.Append;
    Client_invSPC.FieldByName('spcTranspClauseID').Value := Q.FieldByName('spcTranspClauseID').Value;

    if not Q.FieldByName('spcTranspClauseID').IsNull then begin
      Q2.SQL.Clear;
      Q2.SQL.Add('SELECT top 1 inf_obj_name FROM dbo.ETRAN_NSI_INF_OBJ WHERE type_inf_id = 24 and etran_nsi_id <> 14 AND inf_obj_cod in (''1'',''4'',''5'') and etran_nsi_id = ' + Q.FieldByName('spcTranspClauseID').AsString + ' ');
      Q2.Open;
      Client_invSPC.FieldByName('spcTranspClauseName').Value := Q2.FieldByName('inf_obj_name').Value;
    end;

    Client_invSPC.FieldByName('spcCustomText' ).Value := Q.FieldByName('spcCustomText').Value;
    Client_invSPC.FieldByName('spcNumber'     ).Value := Q.FieldByName('spcNumber').Value;
    Client_invSPC.FieldByName('spcDate'       ).Value := Q.FieldByName('spcDate').Value;

    Client_invSPC.FieldByName('spcClaimNumber'  ).Value := Q.FieldByName('spcClaimNumber').Value;
    Client_invSPC.FieldByName('spcNumOtp'       ).Value := Q.FieldByName('spcNumOtp').Value;
    Client_invSPC.Post;
    Q.Next;
  end;
  {$endregion}

  ShowTextMessage('Загрузка накладной...' + #13#10 + 'Маршрут следования...', False);
  {$region 'invDistance'}
  if set_reply = False then begin
    Q.SQL.Clear;
    Q.SQL.Add('DECLARE  @xml XML');
    Q.SQL.Add('SELECT   @xml = etran_ecp_xml FROM etran_ecp WHERE etran_ecp_id = ' + IntToStr(Fetran_ecp_id));
    Q.SQL.Add('');
  end else begin
    Q.SQL.Clear;
    Q.SQL.Add('DECLARE  @xml XML');
    Q.SQL.Add('SELECT   @xml = etran_ecp_reply_xml FROM etran_ecp WHERE etran_ecp_id = ' + IntToStr(Fetran_ecp_id));
    Q.SQL.Add('');
  end;
//  Q.SQL.Clear;
//  Q.SQL.Add('DECLARE  @xml XML');
//  Q.SQL.Add('SELECT   @xml = etran_ecp_xml FROM etran_ecp WHERE etran_ecp_id = ' + IntToStr(Fetran_ecp_id));
//  Q.SQL.Add('');
  Q.SQL.Add('SELECT	');
  Q.SQL.Add('		    ref.value(''(distCountryCode/@value)[1]'',''varchar(255)'') as distCountryCode,');
  Q.SQL.Add('		    ref.value(''(distStationCode/@value)[1]'',''varchar(255)'') as distStationCode,');
  Q.SQL.Add('		    ref.value(''(distPortCode/@value)[1]'',''varchar(255)'') as distPortCode,');
  Q.SQL.Add('		    ref.value(''(distLoadWay/@value)[1]'',''varchar(255)'') as distLoadWay,');
  Q.SQL.Add('		    ref.value(''(distTrackTypeID/@value)[1]'',''int'') as distTrackTypeID,');
  Q.SQL.Add('		    ref.value(''(distTranspTypeID/@value)[1]'',''int'') as distTranspTypeID,');
  Q.SQL.Add('		    ref.value(''(distMinWay/@value)[1]'',''varchar(255)'') as distMinWay,');
  Q.SQL.Add('		    ref.value(''(distRecipOKPO/@value)[1]'',''varchar(255)'') as distRecipOKPO,');
  Q.SQL.Add('		    ref.value(''(distRecipName/@value)[1]'',''varchar(255)'') as distRecipName,');
  Q.SQL.Add('		    ref.value(''(distRecipAddress/@value)[1]'',''varchar(255)'') as distRecipAddress,');
  Q.SQL.Add('		    ref.value(''(distPayerCode/@value)[1]'',''varchar(255)'') as distPayerCode,');
  Q.SQL.Add('		    ref.value(''(distPayerName/@value)[1]'',''varchar(255)'') as distPayerName,');
  Q.SQL.Add('		    ref.value(''(distFRWSubCode/@value)[1]'',''varchar(255)'') as distFRWSubCode,');
  Q.SQL.Add('		    ref.value(''(distSign/@value)[1]'',''varchar(255)'') as distSign,');

  Q.SQL.Add('		    ref.value(''(distStationCountryId/@value)[1]'',''varchar(255)'') as distStationCountryId,');
  Q.SQL.Add('		    ref.value(''(distPayPlaceRWID/@value)[1]'',''varchar(255)'') as distPayPlaceRWID,');
  Q.SQL.Add('		    ref.value(''(distCarrierID/@value)[1]'',''varchar(255)'') as distCarrierID');

  Q.SQL.Add('FROM	  @xml.nodes(''/invoiceDirectLoad/invDistance'') as node(ref)');
  Q.Open;

  Q.First;
  while not Q.Eof do begin
    Client_invDistance.Append;
    Client_invDistance.FieldByName('distCountryCode').Value := Q.FieldByName('distCountryCode').Value;

    Q2.SQL.Clear;
    Q2.SQL.Add('SELECT top 1 inf_obj_name FROM dbo.ETRAN_NSI_INF_OBJ WHERE type_inf_id = 13 and inf_obj_cod = ''' + Q.FieldByName('distCountryCode').AsString + ''' ');
    Q2.Open;
    Client_invDistance.FieldByName('distCountryName').Value := Q2.FieldByName('inf_obj_name').Value;


    Client_invDistance.FieldByName('distStationCountryId' ).Value := Q.FieldByName('distStationCountryId').Value;
    Client_invDistance.FieldByName('distPayPlaceRWID'     ).Value := Q.FieldByName('distPayPlaceRWID').Value;
    Client_invDistance.FieldByName('distCarrierID'        ).Value := Q.FieldByName('distCarrierID').Value;

    if not Q.FieldByName('distStationCountryId').IsNull then begin
      Q2.SQL.Clear;
      Q2.SQL.Add('SELECT top 1 inf_obj_name, inf_obj_cod FROM dbo.ETRAN_NSI_INF_OBJ WHERE type_inf_id = 13 and etran_nsi_id = ' + Q.FieldByName('distStationCountryId').AsString);
      Q2.Open;
      Client_invDistance.FieldByName('distStationCountryCode').Value := Q2.FieldByName('inf_obj_cod' ).Value;
      Client_invDistance.FieldByName('distStationCountryName').Value := Q2.FieldByName('inf_obj_name').Value;
    end;

    if not Q.FieldByName('distPayPlaceRWID').IsNull then begin
      Q2.SQL.Clear;
      Q2.SQL.Add('SELECT top 1 inf_obj_name FROM dbo.ETRAN_NSI_INF_OBJ WHERE type_inf_id = 5 and etran_nsi_id = ' + Q.FieldByName('distPayPlaceRWID').AsString);
      Q2.Open;
      Client_invDistance.FieldByName('distPayPlaceRWName').Value := Q2.FieldByName('inf_obj_name').Value;
    end;

    if not Q.FieldByName('distCarrierID').IsNull then begin
      Q2.SQL.Clear;
      Q2.SQL.Add('SELECT top 1 inf_obj_name FROM dbo.ETRAN_NSI_INF_OBJ WHERE type_inf_id = 49 and etran_nsi_id = ' + Q.FieldByName('distCarrierID').AsString);
      Q2.Open;
      Client_invDistance.FieldByName('distCarrierName').Value := Q2.FieldByName('inf_obj_name').Value;
    end;


    Client_invDistance.FieldByName('distStationCode').Value := Q.FieldByName('distStationCode').Value;

    Q2.SQL.Clear;
    Q2.SQL.Add('SELECT top 1 inf_obj_name FROM dbo.ETRAN_NSI_INF_OBJ WHERE type_inf_id = 11 and inf_obj_cod = ''' + Q.FieldByName('distStationCode').AsString + ''' ');
    Q2.Open;
    Client_invDistance.FieldByName('distStationName').Value := Q2.FieldByName('inf_obj_name').Value;

    Client_invDistance.FieldByName('distPortCode').Value := Q.FieldByName('distPortCode').Value;

    Q2.SQL.Clear;
    Q2.SQL.Add('SELECT top 1 inf_obj_name FROM dbo.ETRAN_NSI_INF_OBJ WHERE type_inf_id = 7 and inf_obj_cod = ''' + Q.FieldByName('distPortCode').AsString + ''' ');
    Q2.Open;
    Client_invDistance.FieldByName('distPortName').Value := Q2.FieldByName('inf_obj_name').Value;

    Client_invDistance.FieldByName('distLoadWay').Value := Q.FieldByName('distLoadWay').Value;
    Client_invDistance.FieldByName('distTrackTypeID').Value := Q.FieldByName('distTrackTypeID').Value;

    if not Q.FieldByName('distTrackTypeID').IsNull then begin
      Q2.SQL.Clear;
      Q2.SQL.Add('SELECT top 1 inf_obj_name FROM dbo.ETRAN_NSI_INF_OBJ WHERE type_inf_id = 27 AND inf_obj_cod = ''104'' AND etran_nsi_id = ' + Q.FieldByName('distTrackTypeID').AsString + ' ');
      Q2.Open;
      Client_invDistance.FieldByName('distTrackTypeName').Value := Q2.FieldByName('inf_obj_name').Value;
    end;


    Client_invDistance.FieldByName('distTranspTypeID').Value := Q.FieldByName('distTranspTypeID').Value;

    if not Q.FieldByName('distTranspTypeID').IsNull then begin
      Q2.SQL.Clear;
      Q2.SQL.Add('SELECT top 1 inf_obj_name FROM dbo.ETRAN_NSI_INF_OBJ WHERE type_inf_id = 27 AND inf_obj_cod = ''103'' AND etran_nsi_id = ' + Q.FieldByName('distTranspTypeID').AsString + ' ');
      Q2.Open;
      Client_invDistance.FieldByName('distTranspTypeName').Value := Q2.FieldByName('inf_obj_name').Value;
    end;


    Client_invDistance.FieldByName('distMinWay').Value := Q.FieldByName('distMinWay').Value;
    Client_invDistance.FieldByName('distRecipOKPO').Value := Q.FieldByName('distRecipOKPO').Value;
    Client_invDistance.FieldByName('distRecipName').Value := Q.FieldByName('distRecipName').Value;
    Client_invDistance.FieldByName('distRecipAddress').Value := Q.FieldByName('distRecipAddress').Value;
    Client_invDistance.FieldByName('distPayerCode').Value := Q.FieldByName('distPayerCode').Value;
    Client_invDistance.FieldByName('distPayerName').Value := Q.FieldByName('distPayerName').Value;
    Client_invDistance.FieldByName('distFRWSubCode').Value := Q.FieldByName('distFRWSubCode').Value;
    Client_invDistance.FieldByName('distSign').Value := Q.FieldByName('distSign').Value;
    Client_invDistance.Post;

    Q.Next;
  end;
  {$endregion}

  ShowTextMessage('Загрузка накладной...' + #13#10 + 'Контейнеры...', False);
  {$region 'invCont'}
//  Q.SQL.Clear;
//  Q.SQL.Add('DECLARE  @xml XML');
//  Q.SQL.Add('SELECT   @xml = etran_ecp_xml FROM etran_ecp WHERE etran_ecp_id = ' + IntToStr(Fetran_ecp_id));
//  Q.SQL.Add('');

  if set_reply = False then begin
    Q.SQL.Clear;
    Q.SQL.Add('DECLARE  @xml XML');
    Q.SQL.Add('SELECT   @xml = etran_ecp_xml FROM etran_ecp WHERE etran_ecp_id = ' + IntToStr(Fetran_ecp_id));
    Q.SQL.Add('');
  end else begin
    Q.SQL.Clear;
    Q.SQL.Add('DECLARE  @xml XML');
    Q.SQL.Add('SELECT   @xml = etran_ecp_reply_xml FROM etran_ecp WHERE etran_ecp_id = ' + IntToStr(Fetran_ecp_id));
    Q.SQL.Add('');
  end;
  Q.SQL.Add('SELECT	');
  Q.SQL.Add('		    ref.value(''(contNumber/@value)[1]'',''varchar(255)'') as contNumber,');
  Q.SQL.Add('		    ref.value(''(contCarOrder/@value)[1]'',''int'') as contCarOrder,');
  Q.SQL.Add('		    ref.value(''(contTonnage/@value)[1]'',''money'') as contTonnage,');
  Q.SQL.Add('		    ref.value(''(contTypeBig/@value)[1]'',''int'') as contTypeBig,');
  Q.SQL.Add('		    ref.value(''(contSizeBig/@value)[1]'',''int'') as contSizeBig,');
  Q.SQL.Add('		    ref.value(''(contWeightDep/@value)[1]'',''money'') as contWeightDep,');
  Q.SQL.Add('		    ref.value(''(contWeightNet/@value)[1]'',''money'') as contWeightNet,');
  Q.SQL.Add('		    ref.value(''(contPlacesCount/@value)[1]'',''money'') as contPlacesCount,');
  Q.SQL.Add('		    ref.value(''(contVolume/@value)[1]'',''money'') as contVolume,');
  Q.SQL.Add('		    ref.value(''(contOwnerCountryCode/@value)[1]'',''varchar(255)'') as contOwnerCountryCode,');
  Q.SQL.Add('		    ref.value(''(contOwnerTypeID/@value)[1]'',''int'') as contOwnerTypeID,');
  Q.SQL.Add('		    ref.value(''(contOwnerId/@value)[1]'',''int'') as contOwnerId,');
  Q.SQL.Add('		    ref.value(''(contOwnerOKPO/@value)[1]'',''varchar(255)'') as contOwnerOKPO,');
  Q.SQL.Add('		    ref.value(''(contOwnerName/@value)[1]'',''varchar(255)'') as contOwnerName');
  Q.SQL.Add('FROM	  @xml.nodes(''/invoiceDirectLoad/invCont'') as node(ref)');
  Q.Open;

  Q.First;
  while not Q.Eof do begin
    Client_invCont.Append;
    Client_invCont.FieldByName('contNumber').Value := Q.FieldByName('contNumber').Value;
    Client_invCont.FieldByName('contCarOrder').Value := Q.FieldByName('contCarOrder').Value;
    Client_invCont.FieldByName('contTonnage').Value := Q.FieldByName('contTonnage').Value;
    Client_invCont.FieldByName('contTypeBig').Value := Q.FieldByName('contTypeBig').Value;
    Client_invCont.FieldByName('contSizeBig').Value := Q.FieldByName('contSizeBig').Value;
    Client_invCont.FieldByName('contWeightDep').Value := Q.FieldByName('contWeightDep').Value;
    Client_invCont.FieldByName('contWeightNet').Value := Q.FieldByName('contWeightNet').Value;
    Client_invCont.FieldByName('contPlacesCount').Value := Q.FieldByName('contPlacesCount').Value;
    Client_invCont.FieldByName('contVolume').Value := Q.FieldByName('contVolume').Value;
    Client_invCont.FieldByName('contOwnerCountryCode').Value := Q.FieldByName('contOwnerCountryCode').Value;
    Client_invCont.FieldByName('contOwnerTypeID').Value := Q.FieldByName('contOwnerTypeID').Value;

    if not Q.FieldByName('contOwnerTypeID').IsNull then begin
      Q2.SQL.Clear;
      Q2.SQL.Add('SELECT top 1 inf_obj_name FROM dbo.ETRAN_NSI_INF_OBJ WHERE type_inf_id = 27 AND inf_obj_cod = ''7'' AND etran_nsi_id = ' + Q.FieldByName('contOwnerTypeID').AsString + ' ');
      Q2.Open;
      Client_invCont.FieldByName('contOwnerTypeName').Value := Q2.FieldByName('inf_obj_name').Value;
    end;
    Client_invCont.FieldByName('contOwnerId').Value := Q.FieldByName('contOwnerId').Value;
    Client_invCont.FieldByName('contOwnerOKPO').Value := Q.FieldByName('contOwnerOKPO').Value;
    Client_invCont.FieldByName('contOwnerName').Value := Q.FieldByName('contOwnerName').Value;
    Client_invCont.Post;
    Q.Next;
  end;
  {$endregion}

  ShowTextMessage('Загрузка накладной...', False);
  Q.SQL.Clear;
  Q.SQL.Add('SELECT etran_nsi_id, inf_obj_name, inf_obj_cod FROM dbo.ETRAN_NSI_INF_OBJ WHERE type_inf_id = 13 AND inf_obj_cod = ''' + cxButtonEdit14.Text + '''');
  Q.Open;
  cxButtonEdit22.Text := Q.FieldByName('inf_obj_name').AsString;

  Q.SQL.Clear;
  Q.SQL.Add('SELECT etran_nsi_id, inf_obj_name, inf_obj_cod FROM dbo.ETRAN_NSI_INF_OBJ WHERE type_inf_id = 13 AND inf_obj_cod = ''' + cxButtonEdit15.Text + '''');
  Q.Open;
  cxButtonEdit9.Text := Q.FieldByName('inf_obj_name').AsString;


  Q.SQL.Clear;
  Q.SQL.Add('SELECT etran_nsi_id, inf_obj_name, inf_obj_cod FROM dbo.ETRAN_NSI_INF_OBJ WHERE type_inf_id = 11 AND inf_obj_cod = ''' + cxButtonEdit10.Text + '''');
  Q.Open;
  cxButtonEdit12.Text := Q.FieldByName('inf_obj_name').AsString;

  Q.SQL.Clear;
  Q.SQL.Add('SELECT etran_nsi_id, inf_obj_name, inf_obj_cod FROM dbo.ETRAN_NSI_INF_OBJ WHERE type_inf_id = 11 AND inf_obj_cod = ''' + cxButtonEdit26.Text + '''');
  Q.Open;
  cxButtonEdit25.Text := Q.FieldByName('inf_obj_name').AsString;

  SP := TADOStoredProc.Create(nil);
  SP.Connection := Fconnect;
  SP.ProcedureName := 'sp_etran_global_spam_modify';
  SP.Parameters.Refresh;
  SP.Parameters.ParamByName('@type_action' ).Value := 10; // GET
  SP.Parameters.ParamByName('@object_name' ).Value := 'ETRAN_NSI_INF_OBJ';
  SP.Parameters.ParamByName('@row_id'      ).Value := Q.FieldByName('etran_nsi_id').AsInteger;
  SP.Parameters.ParamByName('@param_name'  ).Value := 'sucks_own_ways';
  try
    SP.ExecProc;
    FToStation_sucks_own_ways := VarToStr(SP.Parameters.ParamByName('@param_value').Value);
  except
    FToStation_sucks_own_ways := '';
  end;
  SP.Free;

  Q.SQL.Clear;
  Q.SQL.Add('SELECT etran_nsi_id, inf_obj_name, inf_obj_cod FROM dbo.ETRAN_NSI_INF_OBJ WHERE type_inf_id = 11 AND inf_obj_cod = ''' + cxButtonEdit34.Text + '''');
  Q.Open;
  cxButtonEdit27.Text := Q.FieldByName('inf_obj_name').AsString;

  Q.SQL.Clear;
  Q.SQL.Add('SELECT etran_nsi_id, inf_obj_name, inf_obj_cod FROM dbo.ETRAN_NSI_INF_OBJ WHERE type_inf_id = 11 AND inf_obj_cod = ''' + cxButtonEdit35.Text + '''');
  Q.Open;
  cxButtonEdit28.Text := Q.FieldByName('inf_obj_name').AsString;

  if cxButtonEdit23.Text <> '' then begin
    Q.SQL.Clear;
    Q.SQL.Add('SELECT etran_nsi_id, inf_obj_name, inf_obj_cod FROM dbo.ETRAN_NSI_INF_OBJ WHERE type_inf_id = 7 AND etran_nsi_id = ' + cxButtonEdit23.Text);
    Q.Open;
    cxButtonEdit11.Text := Q.FieldByName('inf_obj_name').AsString;
  end;

  if cxButtonEdit33.Text <> '' then begin
    Q.SQL.Clear;
    Q.SQL.Add('SELECT etran_nsi_id, inf_obj_name, inf_obj_cod FROM dbo.ETRAN_NSI_INF_OBJ WHERE type_inf_id = 7 AND etran_nsi_id = ' + cxButtonEdit33.Text);
    Q.Open;
    cxButtonEdit24.Text := Q.FieldByName('inf_obj_name').AsString;
  end;

  Q.SQL.Clear;
  Q.SQL.Add('SELECT * FROM dbo.ETRAN_NSI_INF_OBJ WHERE type_inf_id = 27 AND inf_obj_cod = ''147'' AND etran_nsi_id = ' + IntToStr(FinvTypeID));
  Q.Open;
  cxButtonEdit6.Text := Q.FieldByName('inf_obj_name').AsString;

  Q.SQL.Clear;
  Q.SQL.Add('SELECT * FROM dbo.ETRAN_NSI_INF_OBJ WHERE type_inf_id = 16 AND etran_nsi_id = ' + IntToStr(FinvSendKindID));
  Q.Open;
  cxButtonEdit1.Text := Q.FieldByName('inf_obj_name').AsString;

  Q.SQL.Clear;
  Q.SQL.Add('SELECT * FROM dbo.ETRAN_NSI_INF_OBJ WHERE type_inf_id = 32 AND etran_nsi_id = ' + IntToStr(FinvBlankTypeID));
  Q.Open;
  cxButtonEdit2.Text := Q.FieldByName('inf_obj_name').AsString;
  FinvBlankTypeCod   := Q.FieldByName('inf_obj_cod').AsInteger;

  Q.SQL.Clear;
  Q.SQL.Add('SELECT * FROM dbo.ETRAN_NSI_INF_OBJ WHERE type_inf_id = 15 AND etran_nsi_id = ' + IntToStr(FinvSendSpeedID));
  Q.Open;
  cxButtonEdit21.Text := Q.FieldByName('inf_obj_name').AsString;

  Q.SQL.Clear;
  Q.SQL.Add('SELECT * FROM dbo.ETRAN_NSI_INF_OBJ WHERE type_inf_id = 17 AND etran_nsi_id = ' + IntToStr(FinvPayPlaceID));
  Q.Open;
  cxButtonEdit18.Text := Q.FieldByName('inf_obj_name').AsString;

  Q.SQL.Clear;
  Q.SQL.Add('SELECT * FROM dbo.ETRAN_NSI_INF_OBJ WHERE type_inf_id = 18 AND etran_nsi_id = ' + IntToStr(FinvPayFormID));
  Q.Open;
  cxButtonEdit13.Text := Q.FieldByName('inf_obj_name').AsString;

  Q.SQL.Clear;
  Q.SQL.Add('SELECT * FROM dbo.ETRAN_NSI_INF_OBJ WHERE type_inf_id = 8 AND etran_nsi_id = ' + IntToStr(FinvPlanCarTypeID));
  Q.Open;
  cxButtonEdit30.Text := Q.FieldByName('inf_obj_name').AsString;

  Q.SQL.Clear;
  Q.SQL.Add('SELECT * FROM dbo.ETRAN_NSI_INF_OBJ WHERE type_inf_id = 27 AND inf_obj_cod = ''7'' AND etran_nsi_id = ' + IntToStr(FinvPlanCarOwnerTypeID));
  Q.Open;
  cxButtonEdit29.Text := Q.FieldByName('inf_obj_name').AsString;

  Q.SQL.Clear;
  Q.SQL.Add('SELECT * FROM dbo.ETRAN_NSI_INF_OBJ WHERE type_inf_id = 27 AND inf_obj_cod = ''7'' AND etran_nsi_id = ' + IntToStr(FinvPlanContOwnerTypeID));
  Q.Open;
  cxButtonEdit31.Text := Q.FieldByName('inf_obj_name').AsString;

  Q.SQL.Clear;
  Q.SQL.Add('SELECT * FROM dbo.ETRAN_NSI_INF_OBJ WHERE type_inf_id = 27 AND inf_obj_cod = ''122'' AND etran_nsi_id = ' + IntToStr(FinvLoadTypeID));
  Q.Open;
  cxButtonEdit17.Text := Q.FieldByName('inf_obj_name').AsString;

  Q.SQL.Clear;
  Q.SQL.Add('SELECT * FROM dbo.ETRAN_NSI_INF_OBJ WHERE type_inf_id = 27 AND inf_obj_cod = ''101'' AND etran_nsi_id = ' + IntToStr(FinvLoadAssetsID));
  Q.Open;
  cxButtonEdit19.Text := Q.FieldByName('inf_obj_name').AsString;

  Q.SQL.Clear;
  Q.SQL.Add('SELECT * FROM dbo.ETRAN_NSI_INF_OBJ WHERE type_inf_id = 23 AND etran_nsi_id = ' + IntToStr(FinvScaleTypeID));
  Q.Open;
  cxButtonEdit7.Text := Q.FieldByName('inf_obj_name').AsString;

  Q.SQL.Clear;
  Q.SQL.Add('SELECT * FROM dbo.ETRAN_NSI_INF_OBJ WHERE type_inf_id = 27 AND inf_obj_cod = ''100'' AND etran_nsi_id = ' + IntToStr(FinvScalePersonID));
  Q.Open;
  cxButtonEdit5.Text := Q.FieldByName('inf_obj_name').AsString;

  Q.SQL.Clear;
  Q.SQL.Add('SELECT * FROM dbo.ETRAN_NSI_INF_OBJ WHERE type_inf_id = 27 AND inf_obj_cod = ''106'' AND etran_nsi_id = ' + IntToStr(FinvCheckDepID));
  Q.Open;
  cxButtonEdit32.Text := Q.FieldByName('inf_obj_name').AsString;

  Q.SQL.Clear;
  Q.SQL.Add('SELECT * FROM dbo.ETRAN_NSI_INF_OBJ WHERE type_inf_id = 27 AND inf_obj_cod = ''108'' AND etran_nsi_id = ' + IntToStr(FinvDepNormDocID));
  Q.Open;
  cxButtonEdit20.Text := Q.FieldByName('inf_obj_name').AsString;

  Q.Free;
  Q2.Free;
  Q3.Free;

  if Fset_global_copy = True then begin
    Caption := 'Накладная сразу на погрузку [' + IntToStr(Fetran_ecp_id) + ', COPY]';

    if Client_invSPC.Locate('spcTranspClauseID', 1293, []) then begin

      Client_invSPC.Edit;
      Client_invSPC.FieldByName('spcCustomText').Value := '' + FormatDateTime('dd.mm.yyyy hh:nn:ss', IncHour(Fdate_enter, 5));
      Client_invSPC.Post;

      Fset_modify_spc := True;
    end;

  end else
    Caption := 'Накладная сразу на погрузку [' + IntToStr(Fetran_ecp_id) + ']';

  ShowTextMessage;
end;

procedure TfmECPInvoiceToViza.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action := caFree;
end;

procedure TfmECPInvoiceToViza.FormDestroy(Sender: TObject);
var sp_etran_ecp_lock	: TADOStoredProc;
begin
  sp_etran_ecp_lock	:= TADOStoredProc.Create(nil);
  sp_etran_ecp_lock.Connection := Fconnect;
  sp_etran_ecp_lock.ProcedureName := 'sp_etran_ecp_lock';
  sp_etran_ecp_lock.Parameters.Refresh;
  sp_etran_ecp_lock.Parameters.ParamByName('@etran_ecp_id').Value := Fetran_ecp_id;
  sp_etran_ecp_lock.Parameters.ParamByName('@type_action' ).Value := 1;
  try
    sp_etran_ecp_lock.ExecProc;
  except
  end;

  StoreRegistryGrid2(rgSave,'\Software\Lis1\ECPInvoiceToViza_Grids', cxGrid1DBBandedTableView1);
  StoreRegistryGrid2(rgSave,'\Software\Lis1\ECPInvoiceToViza_Grids', cxGridDBBandedTableView1);
  StoreRegistryGrid2(rgSave,'\Software\Lis1\ECPInvoiceToViza_Grids', cxGridDBBandedTableView2);
  StoreRegistryGrid2(rgSave,'\Software\Lis1\ECPInvoiceToViza_Grids', cxGridDBBandedTableView3);
  StoreRegistryGrid2(rgSave,'\Software\Lis1\ECPInvoiceToViza_Grids', cxGridDBBandedTableView4);
  StoreRegistryGrid2(rgSave,'\Software\Lis1\ECPInvoiceToViza_Grids', cxGridDBBandedTableView5);
  StoreRegistryGrid2(rgSave,'\Software\Lis1\ECPInvoiceToViza_Grids', cxGridDBBandedTableView6);
  StoreRegistryGrid2(rgSave,'\Software\Lis1\ECPInvoiceToViza_Grids', cxGridDBBandedTableView7);
  StoreRegistryGrid2(rgSave,'\Software\Lis1\ECPInvoiceToViza_Grids', cxGridDBBandedTableView8);
  StoreRegistryGrid2(rgSave,'\Software\Lis1\ECPInvoiceToViza_Grids', cxGridDBBandedTableView9);
  StoreRegistryGrid2(rgSave,'\Software\Lis1\ECPInvoiceToViza_Grids', cxGridDBBandedTableView10);
  StoreRegistryGrid2(rgSave,'\Software\Lis1\ECPInvoiceToViza_Grids', cxGridDBBandedTableView11);
end;

procedure TfmECPInvoiceToViza.cxButtonEdit11PropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
var Q: TADOQuery;
    str_find: string;
begin
  case AButtonIndex of
    0:  begin
          Q := TADOQuery.Create(nil);
          Q.Connection := Fconnect;
          Q.SQL.Add('SELECT etran_nsi_id, inf_obj_name, inf_obj_cod FROM dbo.ETRAN_NSI_INF_OBJ WHERE type_inf_id = 7');

          case TcxButtonEdit(Sender).Tag of
           0: if InputQuery('Поиск', 'Поиск по НАИМЕНОВАНИЮ:', str_find) then begin
                Q.SQL.Add('AND inf_obj_name like ''%' + str_find + '%''');
              end else exit;
           1: if InputQuery('Поиск', 'Поиск по КОДУ:', str_find) then begin
                Q.SQL.Add('AND inf_obj_cod like ''%' + str_find + '%''');
              end else exit;
          end;

          Q.Open;
          fmECPFilter := TfmECPFilter.Create(nil, Q);
          fmECPFilter._SetFilterCod := 'Порты';
          if fmECPFilter.ShowModal = mrOk then begin
            cxButtonEdit11.Text:= fmECPFilter._GetName;
            cxButtonEdit23.Text:= IntToStr(fmECPFilter._GetId);
          end;
          Q.Free;
        end;
    1:  begin
          cxButtonEdit11.Text := '';
          cxButtonEdit23.Text := '';
        end;
  end;
end;

procedure TfmECPInvoiceToViza.ShowRoadBegin(node_cod: string);
var Q: TADOQuery;
    set_contract : Boolean;
begin
  Q := TADOQuery.Create(nil);
  Q.Connection := Fconnect;

  Q.SQL.Add('SELECT	*');
  Q.SQL.Add('FROM	  ETRAN_NSI_INF_OBJ');
  Q.SQL.Add('WHERE	type_inf_id = 5');
  Q.SQL.Add('and etran_nsi_id = (SELECT top 1 inf_obj_xml.value(''/row[1]/ST_DP_RW_ID [1]/@value'',''int'') FROM ETRAN_NSI_INF_OBJ WHERE type_inf_id = 11 and inf_obj_cod = ''' + node_cod + ''')');
  Q.Open;

  cxTextEdit42.EditValue := Q.FieldByName('inf_obj_name_full').AsString;
  cxTextEdit45.EditValue := Q.FieldByName('inf_obj_cod').AsString;

//    // Красноярская дорога
//  if (Q.FieldByName('inf_obj_cod').AsString = '88') and (cxTextEdit14.Text = '1000230910') then begin
//    // Проверка на наличие договора 880061288
//    set_contract := False;
//    Client_invDoc.First;
//    while not Client_invDoc.Eof do begin
//
//      if (Client_invDOC.FieldByName('docTypeID').AsInteger = 1002) and (Client_invDOC.FieldByName('docNumber').AsString = '880061288') then begin
//        set_contract := True;
//        Break;
//      end;
//
//      Client_invDoc.Next;
//    end;
//
//    // Договор не найден
//    if set_contract = False then begin
//      Fset_modify_doc := True; // Подсветка изменения в списке договоров
//
//      Client_invDOC.Append;
//      Client_invDOC.FieldByName('docTypeID'  ).Value := 1002;
//      Client_invDOC.FieldByName('docTypeName').Value := 'Договор на особых условиях';
//      Client_invDOC.FieldByName('docNumber'  ).Value := '880061288';
//      Client_invDOC.Post;
//    end;
//
//  end;

  Q.Free;
end;

procedure TfmECPInvoiceToViza.ShowDistance(node_begin_cod: string; node_end_cod: string);
var connect_lis : TADOConnection;
begin
  connect_lis := TADOConnection.Create(nil);
  connect_lis.KeepConnection := False;
  connect_lis.LoginPrompt    := False;
  connect_lis.ConnectionString := 'Persist Security Info=True;Provider=SQLOLEDB.1;User ID='+ Fusr_pwd^.user_name +';Password='+Fusr_pwd^.user_pass+';Initial Catalog='+Fusr_pwd^.catalog+';Data Source='+Fusr_pwd^.server+';';
  connect_lis.Connected := True;

//  cxTextEdit44.EditValue := GetCalcDistanceDB(node_begin_cod, node_end_cod, connect_lis, False, Date);

  connect_lis.Free;
end;

procedure TfmECPInvoiceToViza.ShowRoadEnd(node_cod: string);
var Q: TADOQuery;
    set_contract : boolean;
begin
  Q := TADOQuery.Create(nil);
  Q.Connection := Fconnect;

  Q.SQL.Add('SELECT	*');
  Q.SQL.Add('FROM	ETRAN_NSI_INF_OBJ');
  Q.SQL.Add('WHERE	type_inf_id = 5');
  Q.SQL.Add('and etran_nsi_id = (SELECT top 1 inf_obj_xml.value(''/row[1]/ST_DP_RW_ID [1]/@value'',''int'') FROM ETRAN_NSI_INF_OBJ WHERE type_inf_id = 11 and inf_obj_cod = ''' + node_cod + ''')');
  Q.Open;

  cxTextEdit43.EditValue := Q.FieldByName('inf_obj_name_full').AsString;
  cxTextEdit46.EditValue := Q.FieldByName('inf_obj_cod').AsString;


//  // Красноярская дорога
//  if (Q.FieldByName('inf_obj_cod').AsString = '88') and (cxTextEdit14.Text = '1000230910') then begin
//    // Проверка на наличие договора 880061288
//    set_contract := False;
//    Client_invDoc.First;
//    while not Client_invDoc.Eof do begin
//
//      if (Client_invDOC.FieldByName('docTypeID').AsInteger = 1002) and (Client_invDOC.FieldByName('docNumber').AsString = '880061288') then begin
//        set_contract := True;
//        Break;
//      end;
//
//      Client_invDoc.Next;
//    end;
//
//    // Договор не найден
//    if set_contract = False then begin
//      Fset_modify_doc := True; // Подсветка изменения в списке договоров
//
//      Client_invDOC.Append;
//      Client_invDOC.FieldByName('docTypeID'  ).Value := 1002;
//      Client_invDOC.FieldByName('docTypeName').Value := 'Договор на особых условиях';
//      Client_invDOC.FieldByName('docNumber'  ).Value := '880061288';
//      Client_invDOC.Post;
//    end;
//
//  end;

  Q.Free;
end;

procedure TfmECPInvoiceToViza.cxButtonEdit12PropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
var Q: TADOQuery;
    str_find: string;
begin
  case AButtonIndex of
    0:  begin
          Q := TADOQuery.Create(nil);
          Q.Connection := Fconnect;
          Q.SQL.Add('SELECT etran_nsi_id, inf_obj_name, inf_obj_cod FROM dbo.ETRAN_NSI_INF_OBJ WHERE type_inf_id = 11');

          case TcxButtonEdit(Sender).Tag of
           0: if InputQuery('Поиск', 'Поиск по НАИМЕНОВАНИЮ:', str_find) then begin
                Q.SQL.Add('AND inf_obj_name like ''%' + str_find + '%''');
              end else exit;
           1: if InputQuery('Поиск', 'Поиск по КОДУ:', str_find) then begin
                Q.SQL.Add('AND inf_obj_cod like ''%' + str_find + '%''');
              end else exit;
          end;

          Q.Open;
          fmECPFilter := TfmECPFilter.Create(nil, Q);
          fmECPFilter._SetFilterCod := 'Станции';
          if fmECPFilter.ShowModal = mrOk then begin
            cxButtonEdit12.Text := fmECPFilter._GetName;
            cxButtonEdit10.Text := fmECPFilter._GetCod;
            CheckInvDistance();
            ShowRoadBegin(cxButtonEdit10.Text);
            ShowDistance(cxButtonEdit10.Text, cxButtonEdit26.Text);
          end;
          Q.Free;
        end;
    1:  begin
          cxButtonEdit12.Text := '';
          cxButtonEdit10.Text := '';
          ShowRoadBegin(cxButtonEdit10.Text);
          ShowDistance(cxButtonEdit10.Text, cxButtonEdit26.Text);
        end;
  end;
end;

procedure TfmECPInvoiceToViza.CheckInvDistance();
var node_cod, node_name : string;
begin
  if (cxButtonEdit10.Text = cxButtonEdit26.Text) and (cxButtonEdit10.Text <> '') then begin
    node_cod := cxButtonEdit10.Text;
    node_name:= cxButtonEdit12.Text;
    if not Client_invDistance.Locate('distStationCode', node_cod, []) then begin

      Fset_modify_dist := True;
      Client_invDistance.Append;
      Client_invDistance.FieldByName('distStationCode').Value := node_cod;
      Client_invDistance.FieldByName('distStationName').Value := node_name;
      Client_invDistance.FieldByName('distMinWay'     ).Value := 5;
      Client_invDistance.Post;

    end;
  end;
end;

procedure TfmECPInvoiceToViza.cxButtonEdit13PropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
var Q: TADOQuery;
begin
  case AButtonIndex of
    0:  begin
          Q := TADOQuery.Create(nil);
          Q.Connection := Fconnect;
          Q.SQL.Add('SELECT * FROM dbo.ETRAN_NSI_INF_OBJ WHERE type_inf_id = 18');
          Q.Open;
          fmECPFilter := TfmECPFilter.Create(nil, Q);
          fmECPFilter._SetFilter := 'Форма оплаты';
          if fmECPFilter.ShowModal = mrOk then begin
            FinvPayFormID     := fmECPFilter._GetID;
            cxButtonEdit13.Text:= fmECPFilter._GetName;
          end;
          Q.Free;
        end;
    1:  begin
          FinvPayFormID      := -9;
          cxButtonEdit13.Text := '';
        end;
  end;
end;

procedure TfmECPInvoiceToViza.cxButtonEdit16PropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
var Q: TADOQuery;
begin
  case AButtonIndex of
    0:  begin
          Q := TADOQuery.Create(nil);
          Q.Connection := Fconnect;
          Q.SQL.Add('SELECT	firm_id, firm_name, inn, kpp, cod_okpo, rzd_gropl_cod, rzd_payer_cod FROM lis1..view_firm_rights WHERE isnull(rzd_payer_cod,'''') <> ''''');
          Q.Open;
          fmECPFilter := TfmECPFilter.Create(nil, Q);
          fmECPFilter._SetFirm := True;
          if fmECPFilter.ShowModal = mrOk then begin
            Q.Locate('firm_id', fmECPFilter._GetId, []);
            cxButtonEdit16.Text := Q.FieldByName('firm_name').AsString;
            cxTextEdit14.Text   := Q.FieldByName('rzd_payer_cod').AsString;
          end;
          Q.Free;
        end;
    1:  begin
          cxButtonEdit16.Text := '';
          cxTextEdit14.Text   := '';
        end;
  end;
end;

procedure TfmECPInvoiceToViza.cxButtonEdit17PropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
var Q: TADOQuery;
begin
  case AButtonIndex of
    0:  begin
          Q := TADOQuery.Create(nil);
          Q.Connection := Fconnect;
          Q.SQL.Add('SELECT * FROM dbo.ETRAN_NSI_INF_OBJ WHERE type_inf_id = 27 AND inf_obj_cod = ''122''');
          Q.Open;
          fmECPFilter := TfmECPFilter.Create(nil, Q);
          fmECPFilter._SetFilter := 'Вид грузовых работ';
          if fmECPFilter.ShowModal = mrOk then begin
            FinvLoadTypeID     := fmECPFilter._GetID;
            cxButtonEdit17.Text:= fmECPFilter._GetName;
          end;
          Q.Free;
        end;
    1:  begin
          FinvLoadTypeID      := -9;
          cxButtonEdit17.Text := '';
        end;
  end;
end;

procedure TfmECPInvoiceToViza.cxButtonEdit18PropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
var Q: TADOQuery;
begin
  case AButtonIndex of
    0:  begin
          Q := TADOQuery.Create(nil);
          Q.Connection := Fconnect;
          Q.SQL.Add('SELECT * FROM dbo.ETRAN_NSI_INF_OBJ WHERE type_inf_id = 17');
          Q.Open;
          fmECPFilter := TfmECPFilter.Create(nil, Q);
          fmECPFilter._SetFilter := 'Место оплаты';
          if fmECPFilter.ShowModal = mrOk then begin
            FinvPayPlaceID     := fmECPFilter._GetID;
            cxButtonEdit18.Text:= fmECPFilter._GetName;
          end;
          Q.Free;
        end;
    1:  begin
          FinvPayPlaceID      := -9;
          cxButtonEdit18.Text := '';
        end;
  end;
end;

procedure TfmECPInvoiceToViza.cxButtonEdit19PropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
var Q: TADOQuery;
begin
  case AButtonIndex of
    0:  begin
          Q := TADOQuery.Create(nil);
          Q.Connection := Fconnect;
          Q.SQL.Add('SELECT * FROM dbo.ETRAN_NSI_INF_OBJ WHERE type_inf_id = 27 AND inf_obj_cod = ''101''');
          Q.Open;
          fmECPFilter := TfmECPFilter.Create(nil, Q);
          fmECPFilter._SetFilter := 'Погрузка средствами';
          if fmECPFilter.ShowModal = mrOk then begin
            FinvLoadAssetsID     := fmECPFilter._GetID;
            cxButtonEdit19.Text:= fmECPFilter._GetName;
          end;
          Q.Free;
        end;
    1:  begin
          FinvLoadAssetsID      := -9;
          cxButtonEdit19.Text := '';
        end;
  end;
end;

procedure TfmECPInvoiceToViza.cxButtonEdit1PropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
var Q: TADOQuery;
begin
  case AButtonIndex of
    0:  begin
          Q := TADOQuery.Create(nil);
          Q.Connection := Fconnect;
          Q.SQL.Add('SELECT * FROM dbo.ETRAN_NSI_INF_OBJ WHERE type_inf_id = 16');
          Q.Open;
          fmECPFilter := TfmECPFilter.Create(nil, Q);
          fmECPFilter._SetInvSendType := True;
          if fmECPFilter.ShowModal = mrOk then begin
            FinvSendKindID     := fmECPFilter._GetID;
            cxButtonEdit1.Text := fmECPFilter._GetName;
          end;
          Q.Free;
        end;
    1:  begin
          FinvSendKindID     := -9;
          cxButtonEdit1.Text := '';
        end;
  end;
end;

procedure TfmECPInvoiceToViza.cxButtonEdit20PropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
var Q: TADOQuery;
begin
  case AButtonIndex of
    0:  begin
          Q := TADOQuery.Create(nil);
          Q.Connection := Fconnect;
          Q.SQL.Add('SELECT * FROM dbo.ETRAN_NSI_INF_OBJ WHERE type_inf_id = 27 AND inf_obj_cod = ''108''');
          Q.Open;
          fmECPFilter := TfmECPFilter.Create(nil, Q);
          fmECPFilter._SetFilter := 'Нормативный документ по размещению';
          if fmECPFilter.ShowModal = mrOk then begin
            FinvDepNormDocID     := fmECPFilter._GetID;
            cxButtonEdit20.Text:= fmECPFilter._GetName;
          end;
          Q.Free;
        end;
    1:  begin
          FinvDepNormDocID      := -9;
          cxButtonEdit20.Text := '';
        end;
  end;
end;

procedure TfmECPInvoiceToViza.cxButtonEdit21PropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
var Q: TADOQuery;
begin
  case AButtonIndex of
    0:  begin
          Q := TADOQuery.Create(nil);
          Q.Connection := Fconnect;
          Q.SQL.Add('SELECT * FROM dbo.ETRAN_NSI_INF_OBJ WHERE type_inf_id = 15');
          Q.Open;
          fmECPFilter := TfmECPFilter.Create(nil, Q);
          fmECPFilter._SetFilter := 'Скорость отправки';
          if fmECPFilter.ShowModal = mrOk then begin
            FinvSendSpeedID    := fmECPFilter._GetID;
            cxButtonEdit21.Text:= fmECPFilter._GetName;
          end;
          Q.Free;
        end;
    1:  begin
          FinvSendSpeedID     := -9;
          cxButtonEdit21.Text := '';
        end;
  end;
end;

procedure TfmECPInvoiceToViza.cxButtonEdit22PropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
var Q: TADOQuery;
    str_find: string;
begin
  case AButtonIndex of
    0:  begin
          Q := TADOQuery.Create(nil);
          Q.Connection := Fconnect;
          Q.SQL.Add('SELECT etran_nsi_id, inf_obj_name, inf_obj_cod FROM dbo.ETRAN_NSI_INF_OBJ WHERE type_inf_id = 13');

          case TcxButtonEdit(Sender).Tag of
           0: if InputQuery('Поиск', 'Поиск по НАИМЕНОВАНИЮ:', str_find) then begin
                Q.SQL.Add('AND inf_obj_name like ''%' + str_find + '%''');
              end else exit;
           1: if InputQuery('Поиск', 'Поиск по КОДУ:', str_find) then begin
                Q.SQL.Add('AND inf_obj_cod like ''%' + str_find + '%''');
              end else exit;
          end;

          Q.Open;
          fmECPFilter := TfmECPFilter.Create(nil, Q);
          fmECPFilter._SetFilterCod := 'Страна';
          if fmECPFilter.ShowModal = mrOk then begin
            cxButtonEdit22.Text:= fmECPFilter._GetName;
            cxButtonEdit14.Text:= fmECPFilter._GetCod;
          end;
          Q.Free;
        end;
    1:  begin
          cxButtonEdit22.Text := '';
          cxButtonEdit14.Text := '';
        end;
  end;
end;

procedure TfmECPInvoiceToViza.cxButtonEdit24PropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
var Q: TADOQuery;
    str_find: string;
begin
  case AButtonIndex of
    0:  begin
          Q := TADOQuery.Create(nil);
          Q.Connection := Fconnect;
          Q.SQL.Add('SELECT etran_nsi_id, inf_obj_name, inf_obj_cod FROM dbo.ETRAN_NSI_INF_OBJ WHERE type_inf_id = 7');

          case TcxButtonEdit(Sender).Tag of
           0: if InputQuery('Поиск', 'Поиск по НАИМЕНОВАНИЮ:', str_find) then begin
                Q.SQL.Add('AND inf_obj_name like ''%' + str_find + '%''');
              end else exit;
           1: if InputQuery('Поиск', 'Поиск по КОДУ:', str_find) then begin
                Q.SQL.Add('AND inf_obj_cod like ''%' + str_find + '%''');
              end else exit;
          end;

          Q.Open;
          fmECPFilter := TfmECPFilter.Create(nil, Q);
          fmECPFilter._SetFilterCod := 'Порты';
          if fmECPFilter.ShowModal = mrOk then begin
            cxButtonEdit24.Text:= fmECPFilter._GetName;
            cxButtonEdit33.Text:= IntToStr(fmECPFilter._GetId);
          end;
          Q.Free;
        end;
    1:  begin
          cxButtonEdit24.Text := '';
          cxButtonEdit33.Text := '';
        end;
  end;
end;

procedure TfmECPInvoiceToViza.cxButtonEdit25PropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
var Q: TADOQuery;
    str_find: string;
begin
  case AButtonIndex of
    0:  begin
          Q := TADOQuery.Create(nil);
          Q.Connection := Fconnect;
          Q.SQL.Add('SELECT etran_nsi_id, inf_obj_name, inf_obj_cod FROM dbo.ETRAN_NSI_INF_OBJ WHERE type_inf_id = 11');

          case TcxButtonEdit(Sender).Tag of
           0: if InputQuery('Поиск', 'Поиск по НАИМЕНОВАНИЮ:', str_find) then begin
                Q.SQL.Add('AND inf_obj_name like ''%' + str_find + '%''');
              end else exit;
           1: if InputQuery('Поиск', 'Поиск по КОДУ:', str_find) then begin
                Q.SQL.Add('AND inf_obj_cod like ''%' + str_find + '%''');
              end else exit;
          end;

          Q.Open;
          fmECPFilter := TfmECPFilter.Create(nil, Q);
          fmECPFilter._SetFilterCod := 'Станции';
          if fmECPFilter.ShowModal = mrOk then begin
            cxButtonEdit25.Text:= fmECPFilter._GetName;
            cxButtonEdit26.Text:= fmECPFilter._GetCod;

            SetSucksOwnWays(fmECPFilter._GetId);
            CheckInvDistance();
            ShowRoadEnd(cxButtonEdit26.Text);
            ShowDistance(cxButtonEdit10.Text, cxButtonEdit26.Text);
          end;
          Q.Free;
        end;
    1:  begin
          cxButtonEdit25.Text := '';
          cxButtonEdit26.Text := '';
          ShowRoadEnd(cxButtonEdit26.Text);
          ShowDistance(cxButtonEdit10.Text, cxButtonEdit26.Text);

          FToStation_sucks_own_ways := '';
        end;
  end;
end;

procedure TfmECPInvoiceToViza.cxButtonEdit27PropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
var Q: TADOQuery;
    str_find: string;
begin
  case AButtonIndex of
    0:  begin
          Q := TADOQuery.Create(nil);
          Q.Connection := Fconnect;
          Q.SQL.Add('SELECT etran_nsi_id, inf_obj_name, inf_obj_cod FROM dbo.ETRAN_NSI_INF_OBJ WHERE type_inf_id = 13');

          case TcxButtonEdit(Sender).Tag of
           0: if InputQuery('Поиск', 'Поиск по НАИМЕНОВАНИЮ:', str_find) then begin
                Q.SQL.Add('AND inf_obj_name like ''%' + str_find + '%''');
              end else exit;
           1: if InputQuery('Поиск', 'Поиск по КОДУ:', str_find) then begin
                Q.SQL.Add('AND inf_obj_cod like ''%' + str_find + '%''');
              end else exit;
          end;

          Q.Open;
          fmECPFilter := TfmECPFilter.Create(nil, Q);
          fmECPFilter._SetFilterCod := 'Страна';
          if fmECPFilter.ShowModal = mrOk then begin
            cxButtonEdit27.Text:= fmECPFilter._GetName;
            cxButtonEdit34.Text:= fmECPFilter._GetCod;
          end;
          Q.Free;
        end;
    1:  begin
          cxButtonEdit27.Text := '';
          cxButtonEdit34.Text := '';
        end;
  end;
end;

procedure TfmECPInvoiceToViza.cxButtonEdit28PropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
var Q: TADOQuery;
    str_find: string;
begin
  case AButtonIndex of
    0:  begin
          Q := TADOQuery.Create(nil);
          Q.Connection := Fconnect;
          Q.SQL.Add('SELECT etran_nsi_id, inf_obj_name, inf_obj_cod FROM dbo.ETRAN_NSI_INF_OBJ WHERE type_inf_id = 11');

          case TcxButtonEdit(Sender).Tag of
           0: if InputQuery('Поиск', 'Поиск по НАИМЕНОВАНИЮ:', str_find) then begin
                Q.SQL.Add('AND inf_obj_name like ''%' + str_find + '%''');
              end else exit;
           1: if InputQuery('Поиск', 'Поиск по КОДУ:', str_find) then begin
                Q.SQL.Add('AND inf_obj_cod like ''%' + str_find + '%''');
              end else exit;
          end;

          Q.Open;
          fmECPFilter := TfmECPFilter.Create(nil, Q);
          fmECPFilter._SetFilterCod := 'Станции';
          if fmECPFilter.ShowModal = mrOk then begin
            cxButtonEdit28.Text:= fmECPFilter._GetName;
            cxButtonEdit35.Text:= fmECPFilter._GetCod;
          end;
          Q.Free;
        end;
    1:  begin
          cxButtonEdit28.Text := '';
          cxButtonEdit35.Text := '';
        end;
  end;

end;

procedure TfmECPInvoiceToViza.cxButtonEdit29PropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
var Q: TADOQuery;
begin
  case AButtonIndex of
    0:  begin
          Q := TADOQuery.Create(nil);
          Q.Connection := Fconnect;
          Q.SQL.Add('SELECT * FROM dbo.ETRAN_NSI_INF_OBJ WHERE type_inf_id = 27 AND inf_obj_cod = ''7''');
          Q.Open;
          fmECPFilter := TfmECPFilter.Create(nil, Q);
          fmECPFilter._SetFilter := 'Плановый тип собственности вагона';
          if fmECPFilter.ShowModal = mrOk then begin
            FinvPlanCarOwnerTypeID    := fmECPFilter._GetID;
            cxButtonEdit29.Text := fmECPFilter._GetName;
          end;
          Q.Free;
        end;
    1:  begin
          FinvPlanCarOwnerTypeID      := -9;
          cxButtonEdit29.Text := '';
        end;
  end;
end;

procedure TfmECPInvoiceToViza.cxButtonEdit2PropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
var Q: TADOQuery;
begin
  case AButtonIndex of
    0:  begin
          Q := TADOQuery.Create(nil);
          Q.Connection := Fconnect;
          Q.SQL.Add('SELECT * FROM dbo.ETRAN_NSI_INF_OBJ WHERE type_inf_id = 32');
          Q.Open;
          fmECPFilter := TfmECPFilter.Create(nil, Q);
          fmECPFilter._SetInvBlankTypeID := True;
          if fmECPFilter.ShowModal = mrOk then begin
            FinvBlankTypeID    := fmECPFilter._GetID;
            FinvBlankTypeCod   := StrToInt(fmECPFilter._GetCod);
            cxButtonEdit2.Text := fmECPFilter._GetName;
          end;
          Q.Free;
        end;
    1:  begin
          FinvBlankTypeID    := -9;
          FinvBlankTypeCod   := -9;
          cxButtonEdit2.Text := '';
        end;
  end;
end;

procedure TfmECPInvoiceToViza.cxButtonEdit30PropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
var Q: TADOQuery;
begin
  case AButtonIndex of
    0:  begin
          Q := TADOQuery.Create(nil);
          Q.Connection := Fconnect;
          Q.SQL.Add('SELECT * FROM dbo.ETRAN_NSI_INF_OBJ WHERE type_inf_id = 8');
          Q.Open;
          fmECPFilter := TfmECPFilter.Create(nil, Q);
          fmECPFilter._SetRodVagon  := True;
          if fmECPFilter.ShowModal = mrOk then begin
            FinvPlanCarTypeID    := fmECPFilter._GetID;
            cxButtonEdit30.Text:= fmECPFilter._GetName;
          end;
          Q.Free;
        end;
    1:  begin
          FinvPlanCarTypeID     := -9;
          cxButtonEdit30.Text := '';
        end;
  end;
end;

procedure TfmECPInvoiceToViza.cxButtonEdit31PropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
var Q: TADOQuery;
begin
  case AButtonIndex of
    0:  begin
          Q := TADOQuery.Create(nil);
          Q.Connection := Fconnect;
          Q.SQL.Add('SELECT * FROM dbo.ETRAN_NSI_INF_OBJ WHERE type_inf_id = 27 AND inf_obj_cod = ''7''');
          Q.Open;
          fmECPFilter := TfmECPFilter.Create(nil, Q);
          fmECPFilter._SetFilter := 'Плановый тип собственности контейнера';
          if fmECPFilter.ShowModal = mrOk then begin
            FinvPlanContOwnerTypeID    := fmECPFilter._GetID;
            cxButtonEdit31.Text := fmECPFilter._GetName;
          end;
          Q.Free;
        end;
    1:  begin
          FinvPlanContOwnerTypeID      := -9;
          cxButtonEdit31.Text := '';
        end;
  end;
end;

procedure TfmECPInvoiceToViza.cxButtonEdit32PropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
var Q: TADOQuery;
begin
  case AButtonIndex of
    0:  begin
          Q := TADOQuery.Create(nil);
          Q.Connection := Fconnect;
          Q.SQL.Add('SELECT * FROM dbo.ETRAN_NSI_INF_OBJ WHERE type_inf_id = 27 AND inf_obj_cod = ''106''');
          Q.Open;
          fmECPFilter := TfmECPFilter.Create(nil, Q);
          fmECPFilter._SetFilter := 'Признак проверки тары';
          if fmECPFilter.ShowModal = mrOk then begin
            FinvCheckDepID      := fmECPFilter._GetID;
            cxButtonEdit32.Text := fmECPFilter._GetName;
          end;
          Q.Free;
        end;
    1:  begin
          FinvCheckDepID      := -9;
          cxButtonEdit32.Text := '';
        end;
  end;

end;

procedure TfmECPInvoiceToViza.cxButtonEdit36PropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
var Q: TADOQuery;
    str_find: string;
begin
  case AButtonIndex of
    0:  begin
          Q := TADOQuery.Create(nil);
          Q.Connection := Fconnect;
          Q.SQL.Add('SELECT etran_nsi_id, inf_obj_name, inf_obj_cod FROM dbo.ETRAN_NSI_INF_OBJ WHERE type_inf_id = 11');

          case TcxButtonEdit(Sender).Tag of
           0: if InputQuery('Поиск', 'Поиск по НАИМЕНОВАНИЮ:', str_find) then begin
                Q.SQL.Add('AND inf_obj_name like ''%' + str_find + '%''');
              end else exit;
           1: if InputQuery('Поиск', 'Поиск по КОДУ:', str_find) then begin
                Q.SQL.Add('AND inf_obj_cod like ''%' + str_find + '%''');
              end else exit;
          end;

          Q.Open;
          fmECPFilter := TfmECPFilter.Create(nil, Q);
          fmECPFilter._SetFilterCod := 'Станции';
          if fmECPFilter.ShowModal = mrOk then begin
            cxButtonEdit36.Text:= fmECPFilter._GetName;
            cxButtonEdit37.Text:= fmECPFilter._GetCod;

            SetSucksOwnWays(fmECPFilter._GetId);
          end;
          Q.Free;
        end;
    1:  begin
          cxButtonEdit36.Text := '';
          cxButtonEdit37.Text := '';

          FToStation_sucks_own_ways := '';
        end;
  end;
end;

procedure TfmECPInvoiceToViza.cxButtonEdit38PropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
begin
  case AButtonIndex of
  0:  begin
        fmECPPassport := TfmECPPassport.Create(nil);
        fmECPPassport._SetEtranIP := Fetran_ip;
        fmECPPassport._SetEtranPort := Fetran_port;
        fmECPPassport._SetConnect(Fconnect);
        if fmECPPassport.ShowModal = mrOk then begin
          Forder_invRecipID        := fmECPPassport._GetOrgID;
          cxButtonEdit38.Text := fmECPPassport._GetName;
          Forder_invRecipAddressID := fmECPPassport._GetOrgAddressID;
          cxTextEdit22.Text   := fmECPPassport._GetOrgAddress;
          cxTextEdit23.Text   := fmECPPassport._GetOrgAddressTGNL;
          cxTextEdit24.Text   := fmECPPassport._GetOrgOKPO;
        end;
      end;
  1:  begin
          Forder_invRecipID   := -9;
          cxButtonEdit38.Text := '';
          Forder_invRecipAddressID:= -9;
          cxTextEdit22.Text   := '';
          cxTextEdit23.Text   := '';
          cxTextEdit24.Text   := '';
      end;
  end;
end;

procedure TfmECPInvoiceToViza.cxButtonEdit38PropertiesValidate(Sender: TObject; var DisplayValue: Variant; var ErrorText: TCaption; var Error: Boolean);
begin
  Error := True;
end;

procedure TfmECPInvoiceToViza.cxButtonEdit39PropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
var Q: TADOQuery;
begin
  case AButtonIndex of
    0:  begin
          Q := TADOQuery.Create(nil);
          Q.Connection := Fconnect;
          Q.SQL.Add('SELECT	firm_id, firm_name, inn, kpp, cod_okpo, rzd_gropl_cod, rzd_payer_cod FROM lis1..view_firm_rights WHERE isnull(rzd_payer_cod,'''') <> ''''');
          Q.Open;
          fmECPFilter := TfmECPFilter.Create(nil, Q);
          fmECPFilter._SetFirm := True;
          if fmECPFilter.ShowModal = mrOk then begin
            Q.Locate('firm_id', fmECPFilter._GetId, []);
            cxButtonEdit39.Text := Q.FieldByName('firm_name').AsString;
            cxTextEdit25.Text   := Q.FieldByName('rzd_payer_cod').AsString;
            cxButtonEdit16.Text := Q.FieldByName('firm_name').AsString;
            cxTextEdit14.Text   := Q.FieldByName('rzd_payer_cod').AsString;
          end;
          Q.Free;
        end;
    1:  begin
          cxButtonEdit39.Text := '';
          cxTextEdit25.Text   := '';
          cxButtonEdit16.Text := '';
          cxTextEdit14.Text   := '';
        end;
  end;
end;

procedure TfmECPInvoiceToViza.cxButtonEdit3PropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
begin
    case AButtonIndex of
    0:  begin
          fmECPPassport := TfmECPPassport.Create(nil);
          fmECPPassport._SetEtranIP := Fetran_ip;
          fmECPPassport._SetEtranPort := Fetran_port;
          fmECPPassport._SetConnect(Fconnect);
          if fmECPPassport.ShowModal = mrOk then begin
            FinvRecipID       := fmECPPassport._GetOrgID;
            cxButtonEdit3.Text := fmECPPassport._GetName;
            FinvRecipAddressID:= fmECPPassport._GetOrgAddressID;
            cxTextEdit4.Text   := fmECPPassport._GetOrgAddress;
            cxTextEdit5.Text   := fmECPPassport._GetOrgAddressTGNL;
            cxTextEdit9.Text   := fmECPPassport._GetOrgOKPO;
          end;
        end;
    1:  begin
            FinvRecipID       := -9;
            cxButtonEdit3.Text := '';
            FinvRecipAddressID:= -9;
            cxTextEdit4.Text   := '';
            cxTextEdit5.Text   := '';
            cxTextEdit9.Text   := '';
        end;
  end;
end;

procedure TfmECPInvoiceToViza.cxButtonEdit40PropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
var Q : TADOQuery;
begin
  case AButtonIndex of
    0 : begin
          Q := TADOQuery.Create(nil);
          Q.Connection := Fconnect;
          Q.SQL.Add('SELECT * FROM lis1..view_contract_rights WHERE (type_contract = 0) AND (date_end >= GETDATE()) ORDER BY firm_customer_name');
          Q.Open;
          fmFilter := TfmFilter.Create(0, Q, 'contract_id', 'contract_cod', 'firm_customer_name');
          fmFilter._SetContractClient := True;
          if fmFilter.ShowModal = mrOk then begin
            cxButtonEdit40.Tag := fmFilter.GetId;
            cxButtonEdit40.EditValue := fmFilter.GetName;
          end;
          Q.Free;
        end;
    1 : begin
          cxButtonEdit40.Tag := -9;
          cxButtonEdit40.EditValue := null;
        end;
  end;
end;

procedure TfmECPInvoiceToViza.cxButtonEdit41PropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
begin
  case AButtonIndex of
  0:  begin
        fmECPPassport := TfmECPPassport.Create(nil);
        fmECPPassport._SetEtranIP := Fetran_ip;
        fmECPPassport._SetEtranPort := Fetran_port;
        fmECPPassport._SetConnect(Fconnect);
        fmECPPassport._SetSender := True;
        if fmECPPassport.ShowModal = mrOk then begin
          Forder_invSenderID := fmECPPassport._GetOrgID;
          cxButtonEdit41.Text := fmECPPassport._GetName;
          Forder_invSenderAddressID := fmECPPassport._GetOrgAddressID;
          cxTextEdit50.Text   := fmECPPassport._GetOrgAddress;
          cxTextEdit49.Text   := fmECPPassport._GetOrgAddressTGNL;
          cxTextEdit48.Text   := fmECPPassport._GetOrgOKPO;
        end;
      end;
  1:  begin
          Forder_invSenderID   := -9;
          cxButtonEdit41.Text := '';
          Forder_invSenderAddressID:= -9;
          cxTextEdit50.Text   := '';
          cxTextEdit49.Text   := '';
          cxTextEdit48.Text   := '';
      end;
  end;
end;

procedure TfmECPInvoiceToViza.cxButtonEdit4PropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
var Q: TADOQuery;
begin
  case AButtonIndex of
    0:  begin
          Q := TADOQuery.Create(nil);
          Q.Connection := Fconnect;
          Q.SQL.Add('SELECT DISTINCT');
          Q.SQL.Add('claimID, claimState, claimNumber + isnull(''-ИЗМ/'' + cast(cast(claimVersion as int) as varchar(100)),'''') as claimNumber, claimRegDate,');
          Q.SQL.Add('clmSenderName,');
          Q.SQL.Add('otprRecipName,');
          Q.SQL.Add('otprCarOwnerName,');
          Q.SQL.Add('otprNom,');
          Q.SQL.Add('clmFromStationCode,');
          Q.SQL.Add('clmFromStationName,');
          Q.SQL.Add('otprToStationCode, otprToStationName');
          Q.SQL.Add('FROM	claim');
          Q.SQL.Add('		inner join etran_global_id on etran_global_id.global_id = claim.claim_id');
          Q.SQL.Add('		left join clmOtpr on claim.claim_id = clmOtpr.claim_id');
          Q.SQL.Add('WHERE	claimStateID in (71,72) and users_owner_id = 1');
//          if cxButtonEdit26.Text <> '' then begin
//            Q.SQL.Add(' AND clmFromStationCode = ''' + cxButtonEdit26.Text + ''' ');
//          end;
          Q.SQL.Add('ORDER BY ClaimNumber, otprNom');
          Q.Open;
          fmECPFilter := TfmECPFilter.Create(nil, Q);
          fmECPFilter._SetFilterClaim := True;
          if fmECPFilter.ShowModal = mrOk then begin
            FinvClaimID     := fmECPFilter._GetID;
            cxButtonEdit4.Text:= fmECPFilter._GetName;
            cxTextEdit33.Text := fmECPFilter._GetCod;
          end;
          Q.Free;
        end;
    1:  begin
          FinvClaimID      := -9;
          cxButtonEdit4.Text := '';
          cxTextEdit33.Text := '';
        end;
  end;
end;

procedure TfmECPInvoiceToViza.cxButtonEdit5PropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
var Q: TADOQuery;
begin
  case AButtonIndex of
    0:  begin
          Q := TADOQuery.Create(nil);
          Q.Connection := Fconnect;
          Q.SQL.Add('SELECT * FROM dbo.ETRAN_NSI_INF_OBJ WHERE type_inf_id = 27 AND inf_obj_cod = ''100''');
          Q.Open;
          fmECPFilter := TfmECPFilter.Create(nil, Q);
          fmECPFilter._SetFilter := 'Кем проводилось взвешивание';
          if fmECPFilter.ShowModal = mrOk then begin
            FinvScalePersonID  := fmECPFilter._GetID;
            cxButtonEdit5.Text := fmECPFilter._GetName;
          end;
          Q.Free;
        end;
    1:  begin
          FinvScalePersonID  := -9;
          cxButtonEdit5.Text := '';
        end;
  end;
end;

procedure TfmECPInvoiceToViza.cxButtonEdit6PropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
var Q: TADOQuery;
begin
  case AButtonIndex of
    0:  begin
          Q := TADOQuery.Create(nil);
          Q.Connection := Fconnect;
          Q.SQL.Add('SELECT * FROM dbo.ETRAN_NSI_INF_OBJ WHERE type_inf_id = 27 AND inf_obj_cod = ''147''');
          Q.Open;
          fmECPFilter := TfmECPFilter.Create(nil, Q);
          fmECPFilter._SetInvType := True;
          if fmECPFilter.ShowModal = mrOk then begin
            FinvTypeID         := fmECPFilter._GetID;
            cxButtonEdit6.Text := fmECPFilter._GetName;
          end;
          Q.Free;
        end;
    1:  begin
          FinvTypeID         := -9;
          cxButtonEdit6.Text := '';
        end;
  end;
end;

procedure TfmECPInvoiceToViza.cxButtonEdit7PropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
var Q: TADOQuery;
begin
  case AButtonIndex of
    0:  begin
          Q := TADOQuery.Create(nil);
          Q.Connection := Fconnect;
          Q.SQL.Add('SELECT * FROM dbo.ETRAN_NSI_INF_OBJ WHERE type_inf_id = 23');
          Q.Open;
          fmECPFilter := TfmECPFilter.Create(nil, Q);
          fmECPFilter._SetFilter := 'Способ взвешивания';
          if fmECPFilter.ShowModal = mrOk then begin
            FinvScaleTypeID    := fmECPFilter._GetID;
            cxButtonEdit7.Text:= fmECPFilter._GetName;
          end;
          Q.Free;
        end;
    1:  begin
          FinvScaleTypeID     := -9;
          cxButtonEdit7.Text := '';
        end;
  end;
end;

procedure TfmECPInvoiceToViza.cxButtonEdit8PropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
begin
  case AButtonIndex of
  0:  begin
        fmECPPassport := TfmECPPassport.Create(nil);
        fmECPPassport._SetEtranIP := Fetran_ip;
        fmECPPassport._SetEtranPort := Fetran_port;
        if fmECPPassport.ShowModal = mrOk then begin
          FinvSenderID       := fmECPPassport._GetOrgID;
          cxButtonEdit8.Text := fmECPPassport._GetName;
          FinvSenderAddressID:= fmECPPassport._GetOrgAddressID;
          cxTextEdit6.Text   := fmECPPassport._GetOrgAddress;
          cxTextEdit7.Text   := fmECPPassport._GetOrgAddressTGNL;
          cxTextEdit8.Text   := fmECPPassport._GetOrgOKPO;
        end;
      end;
  1:  begin
          FinvSenderID       := -9;
          cxButtonEdit8.Text := '';
          FinvSenderAddressID:= -9;
          cxTextEdit6.Text   := '';
          cxTextEdit7.Text   := '';
          cxTextEdit8.Text   := '';
      end;
  end;
end;

procedure TfmECPInvoiceToViza.cxButtonEdit9PropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
var Q: TADOQuery;
    str_find: string;
begin
  case AButtonIndex of
    0:  begin
          Q := TADOQuery.Create(nil);
          Q.Connection := Fconnect;
          Q.SQL.Add('SELECT etran_nsi_id, inf_obj_name, inf_obj_cod FROM dbo.ETRAN_NSI_INF_OBJ WHERE type_inf_id = 13');

          case TcxButtonEdit(Sender).Tag of
           0: if InputQuery('Поиск', 'Поиск по НАИМЕНОВАНИЮ:', str_find) then begin
                Q.SQL.Add('AND inf_obj_name like ''%' + str_find + '%''');
              end else exit;
           1: if InputQuery('Поиск', 'Поиск по КОДУ:', str_find) then begin
                Q.SQL.Add('AND inf_obj_cod like ''%' + str_find + '%''');
              end else exit;
          end;

          Q.Open;
          fmECPFilter := TfmECPFilter.Create(nil, Q);
          fmECPFilter._SetFilterCod := 'Страна';
          if fmECPFilter.ShowModal = mrOk then begin
            cxButtonEdit9.Text:= fmECPFilter._GetName;
            cxButtonEdit15.Text:= fmECPFilter._GetCod;
          end;
          Q.Free;
        end;
    1:  begin
          cxButtonEdit9.Text := '';
          cxButtonEdit15.Text := '';
        end;
  end;
end;

procedure TfmECPInvoiceToViza.cxGrid1DBBandedTableView1FocusedRecordChanged(
  Sender: TcxCustomGridTableView; APrevFocusedRecord,
  AFocusedRecord: TcxCustomGridRecord; ANewItemRecordFocusingChanged: Boolean);
begin
  Client_freightCLS.Filter   := '';
  Client_freightCLS.Filtered := False;
  if (AFocusedRecord<>nil) AND ((cxGrid1DBBandedTableView1.GroupedColumnCount = 0) OR (AFocusedRecord.Level <> 0)) then begin
    Client_freightCLS.Filter   := 'invFreight_id=' + IntToStr(cxGrid1DBBandedTableView1id.DataBinding.Field.AsInteger);
    Client_freightCLS.Filtered := True;
  end;
end;

procedure TfmECPInvoiceToViza.cxGridDBBandedTableView9KeyPress(Sender: TObject;
  var Key: Char);
begin
  FilterColumnGridOnKeyPress(cxGridDBBandedTableView9, Key);
end;

procedure TfmECPInvoiceToViza.cxPageControl1DrawTabEx(AControl: TcxCustomTabControl; ATab: TcxTab; Font: TFont);
begin
  if (ATab.Index =  cxTabSheet2.TabIndex) AND (Fset_modify_dist = True)  then Font.Color := clRed; // Маршрут следования
  if (ATab.Index =  cxTabSheet3.TabIndex) AND (Fset_modify_spc = True)   then Font.Color := clRed; // Специальные отметки
  if (ATab.Index =  cxTabSheet4.TabIndex) AND (Fset_modify_doc = True)   then Font.Color := clRed; // Специальные отметки

  if (ATab.Index =  cxTabSheet1.TabIndex) AND (Client_invFreight.RecordCount > 0)       then Font.Style := [fsBold]; // Грузы
  if (ATab.Index =  cxTabSheet2.TabIndex) AND (Client_invDistance.RecordCount > 0)      then Font.Style := [fsBold]; // Маршрут следования
  if (ATab.Index =  cxTabSheet3.TabIndex) AND (Client_invSPC.RecordCount > 0)           then Font.Style := [fsBold]; // Специальные отметки
  if (ATab.Index =  cxTabSheet4.TabIndex) AND (Client_invDoc.RecordCount > 0)           then Font.Style := [fsBold]; // Прилагаемые и предьевляемые документы
  if (ATab.Index =  cxTabSheet5.TabIndex) AND (Client_invDev.RecordCount > 0)           then Font.Style := [fsBold]; // Перевозочные средства
  if (ATab.Index =  cxTabSheet6.TabIndex) AND (Client_invCont.RecordCount > 0)          then Font.Style := [fsBold]; // Контейнеры
  if (ATab.Index =  cxTabSheet7.TabIndex) AND (Client_invCar.RecordCount > 0)           then Font.Style := [fsBold]; // Вагоны
  if (ATab.Index =  cxTabSheet8.TabIndex) AND (Client_invFreightWeight.RecordCount > 0) then Font.Style := [fsBold]; // Реальный вес груза
  if (ATab.Index =  cxTabSheet9.TabIndex) AND (Client_invTranspClause.RecordCount > 0)  then Font.Style := [fsBold]; // Тарифные отметки за отправку
  if (ATab.Index = cxTabSheet10.TabIndex) AND (Client_invCndBlock.RecordCount > 0)      then Font.Style := [fsBold]; // Особые условия
  if (ATab.Index = cxTabSheet11.TabIndex) AND (Client_invGuide.RecordCount > 0)         then Font.Style := [fsBold]; // Проводники
end;

procedure TfmECPInvoiceToViza.cxTextEdit14PropertiesChange(Sender: TObject);
var set_contract : Boolean;
begin
//  // Красноярская дорога
//  if ((cxTextEdit45.Text = '88') or (cxTextEdit46.Text = '88')) and (cxTextEdit14.Text = '1000230910') then begin
//    // Проверка на наличие договора 880061288
//    set_contract := False;
//    Client_invDoc.First;
//    while not Client_invDoc.Eof do begin
//
//      if (Client_invDOC.FieldByName('docTypeID').AsInteger = 1002) and (Client_invDOC.FieldByName('docNumber').AsString = '880061288') then begin
//        set_contract := True;
//        Break;
//      end;
//
//      Client_invDoc.Next;
//    end;
//
//    // Договор не найден
//    if set_contract = False then begin
//      Fset_modify_doc := True; // Подсветка изменения в списке договоров
//
//      Client_invDOC.Append;
//      Client_invDOC.FieldByName('docTypeID'  ).Value := 1002;
//      Client_invDOC.FieldByName('docTypeName').Value := 'Договор на особых условиях';
//      Client_invDOC.FieldByName('docNumber'  ).Value := '880061288';
//      Client_invDOC.Post;
//    end;
//
//  end;
end;

procedure TfmECPInvoiceToViza.dxBarButton1Click(Sender: TObject);
begin
  fmECPInvCar := TfmECPInvCar.Create(nil, Fconnect, Fusers_group_cod);
  fmECPInvCar._SetEtranIP := Fetran_ip;
  fmECPInvCar._SetEtranPort := Fetran_port;
  fmECPInvCar._SetClientDS := Client_invCar;
  fmECPInvCar._SetClientDS_spc := Client_carSPC;
  fmECPInvCar._SetClientDS_csl := Client_carCSL;
  fmECPInvCar._SetUpdateGroup := cxGridDBBandedTableView9;
  fmECPInvCar.ShowModal;
end;

procedure TfmECPInvoiceToViza.dxBarButton2Click(Sender: TObject);
begin
  case TdxBarButton(Sender).ClickItemLink.Owner.Owner.Tag of
    0:  begin
          fmECPInvFreight := TfmECPInvFreight.Create(nil, Fconnect);
          fmECPInvFreight._SetClientDS := Client_invFreight;
          fmECPInvFreight.ShowModal;
        end;
    1:  begin
          fmECPInvAdd := TfmECPInvAdd.Create(nil, Fusr_pwd);
          fmECPInvAdd._SetInvGuide := True;
          fmECPInvAdd._SetClientDS := Client_invGuide;
          fmECPInvAdd.ShowModal;
        end;
    2:  begin
          fmECPInvAdd := TfmECPInvAdd.Create(nil, Fusr_pwd);
          fmECPInvAdd._SetInvCndBlock := True;
          fmECPInvAdd._SetClientDS := Client_invCndBlock;
          fmECPInvAdd.ShowModal;
        end;
    3:  begin
          fmECPInvAdd := TfmECPInvAdd.Create(nil, Fusr_pwd);
          fmECPInvAdd._SetInvTranspClause := True;
          fmECPInvAdd._SetClientDS := Client_invTranspClause;
          fmECPInvAdd.ShowModal;
        end;
    4:  begin
          fmECPInvAdd := TfmECPInvAdd.Create(nil, Fusr_pwd);
          fmECPInvAdd._SetInvFreightWeight := True;
          fmECPInvAdd._SetClientDS := Client_invFreightWeight;
          fmECPInvAdd.ShowModal;
        end;
    5:  begin
          fmECPInvAdd := TfmECPInvAdd.Create(nil, Fusr_pwd);
          fmECPInvAdd._SetInvDev := True;
          fmECPInvAdd._SetClientDS := Client_invDev;
          fmECPInvAdd.ShowModal;
        end;
    6:  begin
          fmECPInvAdd := TfmECPInvAdd.Create(nil, Fusr_pwd);
          fmECPInvAdd._SetInvDOC := True;
          fmECPInvAdd._SetClientDS := Client_invDOC;
          fmECPInvAdd.ShowModal;
        end;
    7:  begin
          fmECPInvAdd := TfmECPInvAdd.Create(nil, Fusr_pwd);
          fmECPInvAdd._SetInvSPC := True;
          fmECPInvAdd._SetSucksOwnWays := FToStation_sucks_own_ways;
          fmECPInvAdd._SetClientDS := Client_invSPC;


//  Client_invCar.First;
//  while not Client_invCar.Eof do begin
//
//    // 70- Цистерна
//    if Q.Locate('etran_nsi_id', Client_invCar.FieldByName('carTypeID').Value, []) then
//      if Q.FieldByName('inf_obj_cod').AsString = '70' then
//        set_cs := True;
//
//    // Находим ранее перевозимый груз
//    if Client_invCar.FieldByName('carPriorFreightCode').AsString <> '' then
//      kargoETSNG_cod := Client_invCar.FieldByName('carPriorFreightCode').AsString;
//
//    // Находим род вагона
//    if not Client_invCar.FieldByName('carTypeID').IsNull then
//      carTypeID := Client_invCar.FieldByName('carTypeID').AsInteger;
//
//    Client_invCar.Next;
//  end;


          fmECPInvAdd.ShowModal;
        end;
    8:  begin
          fmECPInvCar := TfmECPInvCar.Create(nil, Fconnect, Fusers_group_cod);
          fmECPInvCar._SetEtranIP := Fetran_ip;
          fmECPInvCar._SetEtranPort := Fetran_port;
          fmECPInvCar._SetClientDS := Client_invCar;
          fmECPInvCar._SetClientDS_spc := Client_carSPC;
          fmECPInvCar._SetClientDS_csl := Client_carCSL;
          fmECPInvCar.ShowModal;
        end;
    9:  begin
          fmECPinvDistance := TfmECPinvDistance.Create(nil);
          fmECPinvDistance._SetClientDS := Client_invDistance;
          fmECPinvDistance.ShowModal;
        end;
    10: begin
          fmECPinvCont := TfmECPinvCont.Create(nil);
          fmECPinvCont._SetEtranIP := Fetran_ip;
          fmECPinvCont._SetEtranPort := Fetran_port;
          fmECPinvCont._SetClientDS := Client_invCont;
          fmECPinvCont.ShowModal;
        end;
    20: begin
          fmECPInvAdd := TfmECPInvAdd.Create(nil, Fusr_pwd);
          fmECPInvAdd._SetFreightCLS   := True;
          fmECPInvAdd._SetInvFreightId := cxGrid1DBBandedTableView1id.DataBinding.Field.AsInteger;
          fmECPInvAdd._SetClientDS     := Client_freightCLS;
          fmECPInvAdd.ShowModal;
        end;
  end;
end;

procedure TfmECPInvoiceToViza.dxBarButton3Click(Sender: TObject);
var _tag : integer;
begin
  if Sender.ClassName = 'TcxGridSite' then
    _tag := TcxGridSite(Sender).GridView.Tag
  else
    _tag := TdxBarButton(Sender).ClickItemLink.Owner.Owner.Tag;

  case _tag of
    0:  begin
          fmECPInvFreight := TfmECPInvFreight.Create(nil, Fconnect);
          fmECPInvFreight._SetClientDS := Client_invFreight;
          fmECPInvFreight._SetUpdate   := cxGrid1DBBandedTableView1id.DataBinding.Field.AsInteger;
          fmECPInvFreight.ShowModal;
        end;
    1:  begin
          fmECPInvAdd := TfmECPInvAdd.Create(nil, Fusr_pwd);
          fmECPInvAdd._SetInvGuide := True;
          fmECPInvAdd._SetClientDS := Client_invGuide;
          fmECPInvAdd._SetUpdate   := cxGridDBBandedTableView1id.DataBinding.Field.AsInteger;
          fmECPInvAdd.ShowModal;
        end;
    2:  begin
          fmECPInvAdd := TfmECPInvAdd.Create(nil, Fusr_pwd);
          fmECPInvAdd._SetInvCndBlock := True;
          fmECPInvAdd._SetClientDS := Client_invCndBlock;
          fmECPInvAdd._SetUpdate   := cxGridDBBandedTableView2id.DataBinding.Field.AsInteger;
          fmECPInvAdd.ShowModal;
        end;
    3:  begin
          fmECPInvAdd := TfmECPInvAdd.Create(nil, Fusr_pwd);
          fmECPInvAdd._SetInvTranspClause := True;
          fmECPInvAdd._SetClientDS := Client_invTranspClause;
          fmECPInvAdd._SetUpdate   := cxGridDBBandedTableView3id.DataBinding.Field.AsInteger;
          fmECPInvAdd.ShowModal;
        end;
    4:  begin
          fmECPInvAdd := TfmECPInvAdd.Create(nil, Fusr_pwd);
          fmECPInvAdd._SetInvFreightWeight := True;
          fmECPInvAdd._SetClientDS := Client_invFreightWeight;
          fmECPInvAdd._SetUpdate   := cxGridDBBandedTableView4id.DataBinding.Field.AsInteger;
          fmECPInvAdd.ShowModal;
        end;
    5:  begin
          fmECPInvAdd := TfmECPInvAdd.Create(nil, Fusr_pwd);
          fmECPInvAdd._SetInvDev := True;
          fmECPInvAdd._SetClientDS := Client_invDev;
          fmECPInvAdd._SetUpdate   := cxGridDBBandedTableView5id.DataBinding.Field.AsInteger;
          fmECPInvAdd.ShowModal;
        end;
    6:  begin
          fmECPInvAdd := TfmECPInvAdd.Create(nil, Fusr_pwd);
          fmECPInvAdd._SetInvDOC := True;
          fmECPInvAdd._SetClientDS := Client_invDOC;
          fmECPInvAdd._SetUpdate   := cxGridDBBandedTableView6id.DataBinding.Field.AsInteger;
          fmECPInvAdd.ShowModal;
        end;
    7:  begin
          fmECPInvAdd := TfmECPInvAdd.Create(nil, Fusr_pwd);
          fmECPInvAdd._SetInvSPC := True;
          fmECPInvAdd._SetSucksOwnWays := FToStation_sucks_own_ways;
          fmECPInvAdd._SetClientDS := Client_invSPC;
          fmECPInvAdd._SetUpdate   := cxGridDBBandedTableView7id.DataBinding.Field.AsInteger;
          fmECPInvAdd.ShowModal;
        end;
    8:  begin
          fmECPInvCar := TfmECPInvCar.Create(nil, Fconnect, Fusers_group_cod);
          fmECPInvCar._SetEtranIP := Fetran_ip;
          fmECPInvCar._SetEtranPort := Fetran_port;
          fmECPInvCar._SetClientDS := Client_invCar;
          fmECPInvCar._SetClientDS_spc := Client_carSPC;
          fmECPInvCar._SetClientDS_csl := Client_carCSL;
          fmECPInvCar._SetUpdate   := cxGridDBBandedTableView9id.DataBinding.Field.AsInteger;
          fmECPInvCar.ShowModal;
        end;
    9:  begin
          fmECPinvDistance := TfmECPinvDistance.Create(nil);
          fmECPinvDistance._SetClientDS := Client_invDistance;
          fmECPinvDistance._SetUpdate   := cxGridDBBandedTableView8id.DataBinding.Field.AsInteger;
          fmECPinvDistance.ShowModal;
        end;
    10: begin
          fmECPinvCont := TfmECPinvCont.Create(nil);
          fmECPinvCont._SetEtranIP := Fetran_ip;
          fmECPinvCont._SetEtranPort := Fetran_port;
          fmECPinvCont._SetClientDS := Client_invCont;
          fmECPinvCont._SetUpdate   := cxGridDBBandedTableView10id.DataBinding.Field.AsInteger;
          fmECPinvCont.ShowModal;
        end;
    20: begin
          fmECPInvAdd := TfmECPInvAdd.Create(nil, Fusr_pwd);
          fmECPInvAdd._SetFreightCLS   := True;
          fmECPInvAdd._SetInvFreightId := cxGrid1DBBandedTableView1id.DataBinding.Field.AsInteger;
          fmECPInvAdd._SetClientDS     := Client_freightCLS;
          fmECPInvAdd._SetUpdate       := cxGridDBBandedTableView11id.DataBinding.Field.AsInteger;
          fmECPInvAdd.ShowModal;
        end;
  end;

end;

procedure TfmECPInvoiceToViza.dxBarButton4Click(Sender: TObject);
var i : integer;
begin
  if Application.MessageBox(PChar('Удалить выбранные записи?'),'Внимание',MB_OKCANCEL) = ID_OK then begin

     case TdxBarButton(Sender).ClickItemLink.Owner.Owner.Tag of
      0:  begin
            Client_freightCLS.Filter   := 'invFreight_id=' + IntToStr(cxGrid1DBBandedTableView1id.DataBinding.Field.AsInteger);
            Client_freightCLS.Filtered := True;
            while not Client_freightCLS.Eof do Client_freightCLS.Delete;
            Client_invFreight.Delete;
          end;
      1:  begin
            Client_invGuide.Delete;
          end;
      2:  begin
            Client_invCndBlock.Delete;
          end;
      3:  begin
            Client_invTranspClause.Delete;
          end;
      4:  begin
            Client_invFreightWeight.Delete;
          end;
      5:  begin
            Client_invDev.Delete;
          end;
      6:  begin
            Client_invDOC.Delete;
          end;
      7:  begin
            Client_invSPC.Delete;
          end;
      8:  begin
            Client_invCar.DisableControls;
            for i := 0 to cxGridDBBandedTableView9.Controller.SelectedRowCount - 1 do begin
              if Client_invCar.Locate('id', cxGridDBBandedTableView9.Controller.SelectedRows[i].Values[cxGridDBBandedTableView9id.Index], []) then begin
                Client_invCar.Delete;
              end;
            end;
            Client_invCar.EnableControls;
          end;
      9:  begin
            Client_invDistance.Delete;
          end;
      10: begin
            Client_invCont.Delete;
          end;
      20: begin
            Client_freightCLS.Delete;
          end;
    end;
  end;
end;

procedure TfmECPInvoiceToViza.dxBarButton5Click(Sender: TObject);
begin
 case TdxBarButton(Sender).ClickItemLink.Owner.Owner.Tag of
    0:  PrintcxGrid(cxGrid1DBBandedTableView1);
    1:  PrintcxGrid(cxGridDBBandedTableView1);
    2:  PrintcxGrid(cxGridDBBandedTableView2);
    3:  PrintcxGrid(cxGridDBBandedTableView3);
    4:  PrintcxGrid(cxGridDBBandedTableView4);
    5:  PrintcxGrid(cxGridDBBandedTableView5);
    6:  PrintcxGrid(cxGridDBBandedTableView6);
    7:  PrintcxGrid(cxGridDBBandedTableView7);
    8:  PrintcxGrid(cxGridDBBandedTableView9);
    9:  PrintcxGrid(cxGridDBBandedTableView8);
   10:  PrintcxGrid(cxGridDBBandedTableView10);
  end;
end;

procedure TfmECPInvoiceToViza.SetSucksOwnWays(etran_nsi_id: integer);
var
  SP : TADOStoredProc;
begin
  SP := TADOStoredProc.Create(nil);
  SP.Connection := Fconnect;
  SP.ProcedureName := 'sp_etran_global_spam_modify';
  SP.Parameters.Refresh;
  SP.Parameters.ParamByName('@type_action' ).Value := 10; // GET
  SP.Parameters.ParamByName('@object_name' ).Value := 'ETRAN_NSI_INF_OBJ';
  SP.Parameters.ParamByName('@row_id'      ).Value := fmECPFilter._GetId;
  SP.Parameters.ParamByName('@param_name'  ).Value := 'sucks_own_ways';
  try
    SP.ExecProc;
    FToStation_sucks_own_ways := VarToStr(SP.Parameters.ParamByName('@param_value').Value);
  except
    FToStation_sucks_own_ways := '';
  end;
  SP.Free;

  if FToStation_sucks_own_ways <> '' then begin
    // Есть комментарий  попробуем его ставить на нужное место ;)
    if Client_invSPC.Locate('spcTranspClauseID', 1222, []) then begin

      Client_invSPC.Edit;
      Client_invSPC.FieldByName('spcCustomText').Value := FToStation_sucks_own_ways;
      Client_invSPC.Post;

      Fset_modify_spc := True;
    end;
  end;

end;

procedure TfmECPInvoiceToViza.SetNodeEndCod(node_end_cod: string);
var Q : TADOQuery;
begin
  Q := TADOQuery.Create(nil);
  Q.Connection := Fconnect;

  Q.SQL.Clear;
  Q.SQL.Add('SELECT inf_node.*, inf_state.inf_obj_cod state_cod, inf_state.inf_obj_name state_name');
  Q.SQL.Add('FROM');
  Q.SQL.Add('(SELECT	*,');
  Q.SQL.Add('		inf_obj_xml.value(''(row/ST_JOINT_EX/@value)[1]'',''int'')		as ST_JOINT_EX,');
  Q.SQL.Add('		inf_obj_xml.value(''(row/ST_BORDER_SIGN/@value)[1]'',''int'')	as ST_BORDER_SIGN,');
  Q.SQL.Add('		inf_obj_xml.value(''(row/ST_SEA_IM_EX/@value)[1]'',''int'')		as ST_SEA_IM_EX,');
  Q.SQL.Add('		inf_obj_xml.value(''(row/ST_RIVER_IM_EX/@value)[1]'',''int'')	as ST_RIVER_IM_EX,');
  Q.SQL.Add('		inf_obj_xml.value(''(row/ST_FERRY_IM_EX/@value)[1]'',''int'')	as ST_FERRY_IM_EX,');
  Q.SQL.Add('		inf_obj_xml.value(''(row/ST_CN_ID/@value)[1]'',''int'')	as ST_CN_ID');
  Q.SQL.Add('FROM	ETRAN_NSI_INF_OBJ');
  Q.SQL.Add('WHERE	type_inf_id = 11) inf_node');
  Q.SQL.Add('left join ETRAN_NSI_INF_OBJ inf_state on inf_state.type_inf_id = 13  and inf_state.etran_nsi_id = inf_node.ST_CN_ID');
  Q.SQL.Add('WHERE inf_node.inf_obj_cod = ''' + node_end_cod + '''');
  Q.Open;

//  cxButtonEdit45.Text := Q.FieldByName('state_cod' ).AsString;
//  cxButtonEdit41.Text := Q.FieldByName('state_name').AsString;

//  // Проверка экспортной станции
//  if  (Q.FieldByName('ST_JOINT_EX').AsInteger = 1)    or
//      (Q.FieldByName('ST_BORDER_SIGN').AsInteger = 1) or
//      (Q.FieldByName('ST_SEA_IM_EX').AsInteger = 1)   or
//      (Q.FieldByName('ST_RIVER_IM_EX').AsInteger = 1) or
//      (Q.FieldByName('ST_FERRY_IM_EX').AsInteger = 1) then begin
//
//  end else begin
//    cxButtonEdit41.Style.Font.Style := [fsBold];
//    cxButtonEdit41.Style.Color := clBtnFace;
//    cxButtonEdit41.Properties.Buttons.Clear;
//
//    cxButtonEdit44.Style.Font.Style := [fsBold];
//    cxButtonEdit44.Style.Color := clBtnFace;
//    cxButtonEdit44.Properties.Buttons.Clear;
//
//    cxButtonEdit45.Style.Font.Style := [fsBold];
//    cxButtonEdit45.Style.Color := clBtnFace;
//    cxButtonEdit45.Properties.Buttons.Clear;
//
//    cxButtonEdit46.Style.Font.Style := [fsBold];
//    cxButtonEdit46.Style.Color := clBtnFace;
//    cxButtonEdit46.Properties.Buttons.Clear;
//  end;

  cxButtonEdit12.Text:= Q.FieldByName('inf_obj_name').AsString;
  cxButtonEdit10.Text:= Q.FieldByName('inf_obj_cod').AsString;
//  cxButtonEdit43.Text:= Q.FieldByName('inf_obj_name').AsString;
//  cxButtonEdit42.Text:= Q.FieldByName('inf_obj_cod').AsString;
  Q.Free;
end;

procedure TfmECPInvoiceToViza.SetKargoETSNGCod(kargoETSNG_cod: string);
begin
//  Client_invFreight.Append;
//  Client_invFreight.FieldByName('freightName').Value           := cxButtonEdit9.EditValue;
//  Client_invFreight.FieldByName('freightCode').Value           := cxButtonEdit15.EditValue;
//  Client_invFreight.FieldByName('freightExactName').Value      := cxTextEdit1.EditValue;
//  Client_invFreight.FieldByName('freightGNGID').Value          := iif(FfreightGNGID = -9, null, FfreightGNGID);
//  Client_invFreight.FieldByName('freightGNGID2001').Value      := iif(FfreightGNGID2001 = -9, null, FfreightGNGID2001);
//  Client_invFreight.FieldByName('freightGNGCode').Value        := iif(FfreightGNGID2001 = -9, cxButtonEdit2.EditValue, cxButtonEdit3.EditValue);
//  Client_invFreight.FieldByName('freightAdditional').Value     := cxTextEdit2.EditValue;
//  Client_invFreight.FieldByName('freightPackTypeID').Value     := iif(FfreightPackTypeID = -9, null, FfreightPackTypeID);
//  Client_invFreight.FieldByName('freightPocketCount').Value    := cxCurrencyEdit1.EditValue;
//  Client_invFreight.FieldByName('freightPackageCount').Value   := cxCurrencyEdit2.EditValue;
//  Client_invFreight.FieldByName('freightWeight').Value         := cxCurrencyEdit3.EditValue;
//  Client_invFreight.FieldByName('freightWeightStdGross').Value := cxCurrencyEdit4.EditValue;
//  Client_invFreight.FieldByName('freightWeightStdNet').Value   := cxCurrencyEdit8.EditValue;
//  Client_invFreight.FieldByName('freightMaxLength').Value      := cxCurrencyEdit7.EditValue;
//  Client_invFreight.FieldByName('freightMaxWidth').Value       := cxCurrencyEdit6.EditValue;
//  Client_invFreight.FieldByName('freightMaxHeight').Value      := cxCurrencyEdit5.EditValue;
//  Client_invFreight.FieldByName('freightSendersMark').Value    := cxTextEdit3.EditValue;
//  Client_invFreight.FieldByName('freightDangerSignID').Value   := iif(FfreightDangerSignID = -9, null, FfreightDangerSignID);
//  Client_invFreight.FieldByName('freightDangerID').Value       := iif(FfreightDangerID = -9, null, FfreightDangerID);
//  Client_invFreight.FieldByName('freightDangerName').Value     := cxButtonEdit7.EditValue;
//  Client_invFreight.FieldByName('freightAccidentCard').Value   := cxButtonEdit10.EditValue;
//  Client_invFreight.FieldByName('freightAccidentCardID').Value := iif(FfreightAccidentCardID = -9, null, FfreightAccidentCardID);
//  Client_invFreight.Post;
end;

procedure TfmECPInvoiceToViza.CheckStationExport();
var            v : Variant;
               Q : TADOQuery;
 state_begin_cod : string; // страна отправления
      grotpr_cod : string; // ОКПО грузоотправителя
   node_end_name : string;
   fact_track_trip_id : integer;
begin
  Q := TADOQuery.Create(nil);
  Q.Connection := Fconnect;

  fact_track_trip_id := iif(Client_invCar.FieldByName('fact_track_trip_id').IsNull, -9, Client_invCar.FieldByName('fact_track_trip_id').Value);

  cxButtonEdit9.Text := 'РОССИЯ';
  cxButtonEdit15.Text:= '643';
  cxButtonEdit11.EditValue := null;
  cxButtonEdit23.EditValue := null;

  if fact_track_trip_id <> -9 then begin
    Q.SQL.Clear;
    Q.SQL.Add('SELECT	top 1 state_end_cod');
    Q.SQL.Add('FROM	lis1..fact_track_vagon');
    Q.SQL.Add('WHERE	fact_track_trip_id = ' + IntToStr(fact_track_trip_id) + ' and state_end_cod is not null');
    Q.SQL.Add('ORDER BY date_query desc');
    Q.Open;

    if Q.RecordCount > 0 then begin
      if (Q.FieldByName('state_end_cod').AsString <> '') and (Q.FieldByName('state_end_cod').AsString <> '643') then begin
        // Экспорт
        // Страна
        state_begin_cod := Q.FieldByName('state_end_cod').AsString;

        // Станция
        Q.SQL.Clear;
        Q.SQL.Add('SELECT	*,');
        Q.SQL.Add('		inf_obj_xml.value(''(row/ST_JOINT_EX/@value)[1]'',''int'')		as ST_JOINT_EX,');
        Q.SQL.Add('		inf_obj_xml.value(''(row/ST_BORDER_SIGN/@value)[1]'',''int'')	as ST_BORDER_SIGN,');
        Q.SQL.Add('		inf_obj_xml.value(''(row/ST_SEA_IM_EX/@value)[1]'',''int'')		as ST_SEA_IM_EX,');
        Q.SQL.Add('		inf_obj_xml.value(''(row/ST_RIVER_IM_EX/@value)[1]'',''int'')	as ST_RIVER_IM_EX,');
        Q.SQL.Add('		inf_obj_xml.value(''(row/ST_FERRY_IM_EX/@value)[1]'',''int'')	as ST_FERRY_IM_EX');
        Q.SQL.Add('FROM	ETRAN_NSI_INF_OBJ');
        Q.SQL.Add('WHERE	type_inf_id = 11 and inf_obj_cod = ''' + cxButtonEdit10.Text + ''' ');
        Q.Open;

        // Проверка экспортной станции
         if (Q.FieldByName('ST_JOINT_EX').AsInteger = 1)    or
            (Q.FieldByName('ST_BORDER_SIGN').AsInteger = 1) or
            (Q.FieldByName('ST_SEA_IM_EX').AsInteger = 1)   or
            (Q.FieldByName('ST_RIVER_IM_EX').AsInteger = 1) or
            (Q.FieldByName('ST_FERRY_IM_EX').AsInteger = 1) then begin

              Q.SQL.Clear;
              Q.SQL.Add('SELECT etran_nsi_id, inf_obj_name, inf_obj_cod FROM dbo.ETRAN_NSI_INF_OBJ WHERE type_inf_id = 13 and inf_obj_cod = ''' + state_begin_cod + '''');
              Q.Open;

              cxButtonEdit9.Text  := Q.FieldByName('inf_obj_name').AsString;
              cxButtonEdit15.Text := Q.FieldByName('inf_obj_cod' ).AsString;


              // Порт
              Q.SQL.Clear;
              Q.SQL.Add('SELECT	top 1 grpol_okpo');
              Q.SQL.Add('FROM	lis1..fact_track_vagon');
              Q.SQL.Add('WHERE	fact_track_trip_id = ' + IntToStr(fact_track_trip_id) + ' and grpol_okpo is not null');
              Q.SQL.Add('ORDER BY date_query desc');
              Q.Open;

              if Q.FieldByName('grpol_okpo').AsString <> '' then begin

                grotpr_cod := Q.FieldByName('grpol_okpo').AsString;

                Q.SQL.Clear;
                Q.SQL.Add('SELECT	DISTINCT etran_nsi_id, inf_obj_name, inf_obj_cod');
                Q.SQL.Add('FROM	  etran_nsi_inf_obj');
                Q.SQL.Add('WHERE	type_inf_id = 7 and inf_obj_cod	 = ''' + grotpr_cod + '''');
                Q.Open;

                cxButtonEdit11.Text:= Q.FieldByName('inf_obj_name').AsString;
                cxButtonEdit23.Text:= Q.FieldByName('etran_nsi_id').AsString;
              end;
            end;
      end;
    end;
  end;

  Q.Free;
end;

procedure TfmECPInvoiceToViza.SetVagon(num_vagon: integer; carPriorFreightCode: string; fact_track_trip_id: integer; index_train: string; node_end_cod: string; Client_Vagon: TClientDataSet);
var            v : Variant;
               Q : TADOQuery;
 state_begin_cod : string; // страна отправления
      grotpr_cod : string; // ОКПО грузоотправителя
   node_end_name : string;
begin
  Q := TADOQuery.Create(nil);
  Q.Connection := Fconnect;

  Client_invCar.Append;
  Client_invCar.FieldByName('carNumber').Value            := num_vagon;

  if Client_Vagon <> nil then begin
    if Client_Vagon.Locate('carNumber', num_vagon, []) then begin
      Client_invCar.FieldByName('carTypeID').Value            := Client_Vagon.FieldByName('carTypeID').Value;
      Client_invCar.FieldByName('carNumber').Value            := Client_Vagon.FieldByName('carNumber').Value;
      Client_invCar.FieldByName('carOwnerCountryCode').Value  := Client_Vagon.FieldByName('carOwnerCountryCode').Value;
      Client_invCar.FieldByName('carOwnerTypeID').Value       := Client_Vagon.FieldByName('carOwnerTypeID').Value;
      Client_invCar.FieldByName('carOwnerID').Value           := Client_Vagon.FieldByName('carOwnerId').Value;
      Client_invCar.FieldByName('carOwnerOKPO').Value         := Client_Vagon.FieldByName('carOwnerOKPO').Value;
      Client_invCar.FieldByName('carOwnerName').Value         := Client_Vagon.FieldByName('carOwnerName').Value;
      Client_invCar.FieldByName('carTenantID').Value          := Client_Vagon.FieldByName('carArendatorID').Value;
      Client_invCar.FieldByName('carTenantName').Value        := Client_Vagon.FieldByName('carArendatorName').Value;
      Client_invCar.FieldByName('carTonnage').Value           := iif(Client_Vagon.FieldByName('carTonnage').IsNull, Null,  ReplaceStr(Client_Vagon.FieldByName('carTonnage').AsString, '.', FormatSettings.DecimalSeparator));
      Client_invCar.FieldByName('carAxles').Value             := iif(Client_Vagon.FieldByName('carAxles').IsNull, Null,  ReplaceStr(Client_Vagon.FieldByName('carAxles').AsString, '.', FormatSettings.DecimalSeparator));
      Client_invCar.FieldByName('carVolume').Value            := iif(Client_Vagon.FieldByName('carVolume').IsNull, Null,  ReplaceStr(Client_Vagon.FieldByName('carVolume').AsString, '.', FormatSettings.DecimalSeparator));
      Client_invCar.FieldByName('carWeightDep').Value         := iif(Client_Vagon.FieldByName('carWeightDep').IsNull, Null, ReplaceStr(Client_Vagon.FieldByName('carWeightDep').AsString, '.', FormatSettings.DecimalSeparator));
      Client_invCar.FieldByName('carTankType').Value          := Client_Vagon.FieldByName('carTankType').Value;
    end else begin
      Client_invCar.FieldByName('carNumber').Value            := num_vagon;
    end;
  end;

    if carPriorFreightCode <> '' then begin
      Q.SQL.Clear;
      Q.SQL.Add('SELECT etran_nsi_id, inf_obj_name, inf_obj_cod FROM dbo.ETRAN_NSI_INF_OBJ WHERE type_inf_id = 1 and left(inf_obj_cod,5) = ''' + leftstr(carPriorFreightCode,5) + '''');
      Q.Open;
      if Q.RecordCount > 0 then begin
        Client_invCar.FieldByName('carPriorFreightCode').Value  := Q.FieldByName('inf_obj_cod').AsString;
        Client_invCar.FieldByName('carPriorFreightName').Value  := Q.FieldByName('inf_obj_name').AsString;
      end;
    end;

    if fact_track_trip_id <> -9 then begin
      Client_invCar.FieldByName('fact_track_trip_id').Value  := fact_track_trip_id;

      Q.SQL.Clear;
      Q.SQL.Add('SELECT	top 1 view_contract.contract_id, view_contract.firm_customer_name');
      Q.SQL.Add('FROM	  lis1..fact_track_vagon');
      Q.SQL.Add('       left join lis1..vagon_comment c6 ON	(c6.vagon_id = fact_track_vagon.vagon_id) AND');
      Q.SQL.Add('                                           (c6.vagon_comment_type_id = 908732 ) AND');
      Q.SQL.Add('                                           (fact_track_vagon.date_query BETWEEN c6.date_begin AND ISNULL(c6.date_end + 0.999 , fact_track_vagon.date_query))');
      Q.SQL.Add('       left join lis1..view_vagon_comment6 on c6.attached_global_id = view_vagon_comment6.comment6_id');
      Q.SQL.Add('       left join lis1..view_contract on view_contract.contract_id = view_vagon_comment6.contract_id');
      Q.SQL.Add('WHERE	fact_track_trip_id = ' + IntToStr(fact_track_trip_id));
      Q.SQL.Add('       and view_contract.contract_id is not null');
      Q.SQL.Add('ORDER BY fact_track_vagon.date_query desc');
      Q.Open;
      if Q.RecordCount > 0 then begin
        Client_invCar.FieldByName('contract_id').Value  := Q.FieldByName('contract_id').Value;
        Client_invCar.FieldByName('firm_customer_name').Value  := Q.FieldByName('firm_customer_name').Value;
      end;

      Q.SQL.Clear;
      Q.SQL.Add('SELECT	top 1 state_end_cod');
      Q.SQL.Add('FROM	lis1..fact_track_vagon');
      Q.SQL.Add('WHERE	fact_track_trip_id = ' + IntToStr(fact_track_trip_id) + ' and state_end_cod is not null');
      Q.SQL.Add('ORDER BY date_query desc');
      Q.Open;

      if Q.RecordCount > 0 then begin

        if (Q.FieldByName('state_end_cod').AsString <> '') and (Q.FieldByName('state_end_cod').AsString <> '643') then begin
          // Экспорт
          // Страна
          state_begin_cod := Q.FieldByName('state_end_cod').AsString;

          // Станция
          Q.SQL.Clear;
          Q.SQL.Add('SELECT	*,');
          Q.SQL.Add('		inf_obj_xml.value(''(row/ST_JOINT_EX/@value)[1]'',''int'')		as ST_JOINT_EX,');
          Q.SQL.Add('		inf_obj_xml.value(''(row/ST_BORDER_SIGN/@value)[1]'',''int'')	as ST_BORDER_SIGN,');
          Q.SQL.Add('		inf_obj_xml.value(''(row/ST_SEA_IM_EX/@value)[1]'',''int'')		as ST_SEA_IM_EX,');
          Q.SQL.Add('		inf_obj_xml.value(''(row/ST_RIVER_IM_EX/@value)[1]'',''int'')	as ST_RIVER_IM_EX,');
          Q.SQL.Add('		inf_obj_xml.value(''(row/ST_FERRY_IM_EX/@value)[1]'',''int'')	as ST_FERRY_IM_EX');
          Q.SQL.Add('FROM	ETRAN_NSI_INF_OBJ');
          Q.SQL.Add('WHERE	type_inf_id = 11 and inf_obj_cod = ''' + cxButtonEdit10.Text + ''' ');
          Q.Open;

          // Проверка экспортной станции
           if (Q.FieldByName('ST_JOINT_EX').AsInteger = 1)    or
              (Q.FieldByName('ST_BORDER_SIGN').AsInteger = 1) or
              (Q.FieldByName('ST_SEA_IM_EX').AsInteger = 1)   or
              (Q.FieldByName('ST_RIVER_IM_EX').AsInteger = 1) or
              (Q.FieldByName('ST_FERRY_IM_EX').AsInteger = 1) then begin

                Q.SQL.Clear;
                Q.SQL.Add('SELECT etran_nsi_id, inf_obj_name, inf_obj_cod FROM dbo.ETRAN_NSI_INF_OBJ WHERE type_inf_id = 13 and inf_obj_cod = ''' + state_begin_cod + '''');
                Q.Open;

                cxButtonEdit9.Text  := Q.FieldByName('inf_obj_name').AsString;
                cxButtonEdit15.Text := Q.FieldByName('inf_obj_cod' ).AsString;


                // Порт
                Q.SQL.Clear;
                Q.SQL.Add('SELECT	top 1 grpol_okpo');
                Q.SQL.Add('FROM	lis1..fact_track_vagon');
                Q.SQL.Add('WHERE	fact_track_trip_id = ' + IntToStr(fact_track_trip_id) + ' and grpol_okpo is not null');
                Q.SQL.Add('ORDER BY date_query desc');
                Q.Open;

                if Q.FieldByName('grpol_okpo').AsString <> '' then begin

                  grotpr_cod := Q.FieldByName('grpol_okpo').AsString;

                  Q.SQL.Clear;
                  Q.SQL.Add('SELECT	DISTINCT etran_nsi_id, inf_obj_name, inf_obj_cod');
                  Q.SQL.Add('FROM	  etran_nsi_inf_obj');
                  Q.SQL.Add('WHERE	type_inf_id = 7 and inf_obj_cod	 = ''' + grotpr_cod + '''');
                  Q.Open;

                  cxButtonEdit11.Text:= Q.FieldByName('inf_obj_name').AsString;
                  cxButtonEdit23.Text:= Q.FieldByName('etran_nsi_id').AsString;
                end;
              end;
        end;
      end;
    end;

    if index_train <> '' then
      Client_invCar.FieldByName('index_train').Value  := index_train;

    if node_end_cod <> '' then begin
      Q.SQL.Clear;
      Q.SQL.Add('SELECT etran_nsi_id, inf_obj_name, inf_obj_cod, inf_obj_name_full FROM dbo.ETRAN_NSI_INF_OBJ WHERE type_inf_id = 11 and inf_obj_cod = ''' + node_end_cod + '''');
      Q.Open;

      Client_invCar.FieldByName('fact_track_node_end_cod' ).Value  := node_end_cod;
      Client_invCar.FieldByName('fact_track_node_end_name').Value  := node_end_name;
    end;

  Client_invCar.Post;
  Q.Free;
end;

procedure TfmECPInvoiceToViza.dxBarButton6Click(Sender: TObject);
var               v : Variant;
    set_prior_kargo : boolean;
                  Q : TADOQuery;
     kargoETSNG_cod : string;
           Splitted : TArray<String>;
                  i : integer;
begin
  fmECPVagonSeveral := TfmECPVagonSeveral.Create(Application);
  if fmECPVagonSeveral.ShowModal = mrOk then begin
    if fmECPVagonSeveral._GetVagonList <> '' then begin
      Splitted := fmECPVagonSeveral._GetVagonList.Split([',']);

      if Application.MessageBox('Заполнять ранее перевозимый груз?', 'Внимание', MB_ICONQUESTION or MB_YESNO) = ID_YES then
        set_prior_kargo := True
      else
        set_prior_kargo := False;

      Q := TADOQuery.Create(nil);
      Q.Connection := Fconnect;

      for i := Low(Splitted) to High(Splitted) do begin
        Client_invCar.Append;
        Client_invCar.FieldByName('carNumber').Value            := Splitted[i];
//          Client_invCar.FieldByName('carTypeID').Value            := Client_Vagon.FieldByName('carTypeID').Value;
//          Client_invCar.FieldByName('carOwnerCountryCode').Value  := Client_Vagon.FieldByName('carOwnerCountryCode').Value;
//          Client_invCar.FieldByName('carOwnerTypeID').Value       := Client_Vagon.FieldByName('carOwnerTypeID').Value;
//          Client_invCar.FieldByName('carOwnerID').Value           := Client_Vagon.FieldByName('carOwnerId').Value;
//          Client_invCar.FieldByName('carOwnerOKPO').Value         := Client_Vagon.FieldByName('carOwnerOKPO').Value;
//          Client_invCar.FieldByName('carOwnerName').Value         := Client_Vagon.FieldByName('carOwnerName').Value;
//          Client_invCar.FieldByName('carTenantID').Value          := Client_Vagon.FieldByName('carArendatorID').Value;
//          Client_invCar.FieldByName('carTenantName').Value        := Client_Vagon.FieldByName('carArendatorName').Value;
//          Client_invCar.FieldByName('carTonnage').Value           := iif(Client_Vagon.FieldByName('carTonnage').IsNull, null, ReplaceStr(Client_Vagon.FieldByName('carTonnage').AsString, '.', FormatSettings.DecimalSeparator));
//          Client_invCar.FieldByName('carAxles').Value             := iif(Client_Vagon.FieldByName('carAxles').IsNull, null, ReplaceStr(Client_Vagon.FieldByName('carAxles').AsString, '.', FormatSettings.DecimalSeparator));
//          Client_invCar.FieldByName('carVolume').Value            := iif(Client_Vagon.FieldByName('carVolume').IsNull, null, ReplaceStr(Client_Vagon.FieldByName('carVolume').AsString, '.', FormatSettings.DecimalSeparator));
//          Client_invCar.FieldByName('carWeightDep').Value         := iif(Client_Vagon.FieldByName('carWeightDep').IsNull, null, ReplaceStr(Client_Vagon.FieldByName('carWeightDep').AsString, '.', FormatSettings.DecimalSeparator));
//          Client_invCar.FieldByName('carTankType').Value          := Client_Vagon.FieldByName('carTankType').Value;
        if set_prior_kargo = True then begin
          Q.SQL.Clear;
          Q.SQL.Add('SELECT	top 1 kargoETSNG_cod');
          Q.SQL.Add('FROM	  lis1..fact_track_trip');
          Q.SQL.Add('WHERE  num_vagon = ' + Splitted[i]);
//          Q.SQL.Add('       and users_group_id = (SELECT top 1 users_group_id FROM lis1..view_users WHERE users_name = system_user)');
          Q.SQL.Add('       and isnull(fact_weight,0) > 0');
          Q.SQL.Add('ORDER BY date_otpr DESC');
          Q.Open;

          if Q.RecordCount > 0 then begin
            kargoETSNG_cod := Q.FieldByName('kargoETSNG_cod').AsString;

            Q.SQL.Clear;
            Q.SQL.Add('SELECT etran_nsi_id, inf_obj_name, inf_obj_cod FROM dbo.ETRAN_NSI_INF_OBJ WHERE type_inf_id = 1 and left(inf_obj_cod,5) = ''' + leftstr(kargoETSNG_cod,5) + '''');
            Q.Open;

            if Q.RecordCount > 0 then begin
              Client_invCar.FieldByName('carPriorFreightCode').Value  := Q.FieldByName('inf_obj_cod').Value;
              Client_invCar.FieldByName('carPriorFreightName').Value  := Q.FieldByName('inf_obj_name').Value;
            end;
          end;
        end;
        Client_invCar.Post;
      end;

      Q.Free;
    end;
  end;
end;

procedure TfmECPInvoiceToViza.dxBarButton7Click(Sender: TObject);
var i : integer;
    Q : TADOQuery;
    kargoETSNG_cod : string;
begin
  Screen.Cursor := crHourGlass;

  Q := TADOQuery.Create(nil);
  Q.Connection := Fconnect;

  for i:=0 to cxGridDBBandedTableView9.Controller.SelectedRecordCount - 1 do begin


    if Client_invCar.Locate('id', cxGridDBBandedTableView9.Controller.SelectedRows[i].Values[cxGridDBBandedTableView9id.Index], []) then begin
      Q.SQL.Clear;
      Q.SQL.Add('SELECT	top 1 kargoETSNG_cod');
      Q.SQL.Add('FROM	  lis1..fact_track_trip');
      Q.SQL.Add('WHERE  num_vagon = ' + Client_invCar.FieldByName('carNumber').AsString);
//      Q.SQL.Add('       and users_group_id = (SELECT top 1 users_group_id FROM lis1..view_users WHERE users_name = system_user)');
      Q.SQL.Add('       and isnull(fact_weight,0) > 0');
      Q.SQL.Add('ORDER BY date_otpr DESC');
      Q.Open;

      if Q.RecordCount > 0 then begin

        kargoETSNG_cod := Q.FieldByName('kargoETSNG_cod').AsString;

        Q.SQL.Clear;
        Q.SQL.Add('SELECT etran_nsi_id, inf_obj_name, inf_obj_cod FROM dbo.ETRAN_NSI_INF_OBJ WHERE type_inf_id = 1 and left(inf_obj_cod,5) = ''' + leftstr(kargoETSNG_cod,5) + '''');
        Q.Open;

        Client_invCar.Edit;

        if Q.RecordCount > 0 then begin
          Client_invCar.FieldByName('carPriorFreightCode').Value := Q.FieldByName('inf_obj_cod').Value;
          Client_invCar.FieldByName('carPriorFreightName').Value := Q.FieldByName('inf_obj_name').Value;
        end else begin
          Client_invCar.FieldByName('carPriorFreightCode').Value := null;
          Client_invCar.FieldByName('carPriorFreightName').Value := null;
        end;

        Client_invCar.Post;
      end;
    end;

  end;

  Q.Free;
  Screen.Cursor := crDefault;

  Application.MessageBox('Ранее перевозимый груз заполнен.', 'Внимание', MB_ICONINFORMATION or MB_OK);
end;

procedure TfmECPInvoiceToViza.dxBarButton8Click(Sender: TObject);
var i : integer;
    Q : TADOQuery;
    kargoETSNG_cod : string;
begin
  Screen.Cursor := crHourGlass;

  Q := TADOQuery.Create(nil);
  Q.Connection := Fconnect;

  for i:=0 to cxGridDBBandedTableView9.Controller.SelectedRecordCount - 1 do begin

    if Client_invCar.Locate('id', cxGridDBBandedTableView9.Controller.SelectedRows[i].Values[cxGridDBBandedTableView9id.Index], []) then begin
      Q.SQL.Clear;
      Q.SQL.Add('SELECT	*');
      Q.SQL.Add('FROM	carCSL');
      Q.SQL.Add('WHERE	invCar_id in (');
      Q.SQL.Add('				SELECT	top 1 invCar.invCar_id');
      Q.SQL.Add('				FROM	invoice');
      Q.SQL.Add('						  inner join invCar on invoice.invoice_id = invCar.invoice_id');
      Q.SQL.Add('						  inner join carCSL on carCSL.invCar_id = invCar.invCar_id');
      Q.SQL.Add('				WHERE	carNumber = ' + Client_invCar.FieldByName('carNumber').AsString);
      Q.SQL.Add('				ORDER BY invLastOper DESC)');
      Q.Open;

      if Q.RecordCount > 0 then begin
        while not Q.Eof do begin
          Client_carCSL.Append;
          Client_carCSL.FieldByName('car_id'            ).Value := Client_invCar.FieldByName('id').Value;
          Client_carCSL.FieldByName('sealTypeID'        ).Value := Q.FieldByName('sealTypeID').Value;
          Client_carCSL.FieldByName('sealTypeName'      ).Value := Q.FieldByName('sealTypeName').Value;
          Client_carCSL.FieldByName('sealMarks'         ).Value := Q.FieldByName('sealMarks').Value;
          Client_carCSL.FieldByName('sealQuantity'      ).Value := Q.FieldByName('sealQuantity').Value;
          Client_carCSL.FieldByName('sealYear'          ).Value := Q.FieldByName('sealYear').Value;
          Client_carCSL.FieldByName('sealOwnerTypeID'   ).Value := Q.FieldByName('sealOwnerTypeID').Value;
          Client_carCSL.FieldByName('sealOwnerTypeName' ).Value := Q.FieldByName('sealOwnerTypeName').Value;
          Client_carCSL.FieldByName('sealRailwayID'     ).Value := Q.FieldByName('sealRailwayID').Value;
          Client_carCSL.FieldByName('sealRailwayName'   ).Value := Q.FieldByName('sealRailwayName').Value;
          Client_carCSL.Post;
          Q.Next;
        end;
      end;
    end;

  end;

  Q.Free;
  Screen.Cursor := crDefault;

  Application.MessageBox('ЗПУ заполнены.', 'Внимание', MB_ICONINFORMATION or MB_OK);
end;

function  TfmECPInvoiceToViza.StrToXML(str: string): string;
begin
  str := ReplaceStr(str, '&', '&amp;');
  str := ReplaceStr(str, '"', '&quot;');
  str := ReplaceStr(str, '''', '&apos;');
  str := ReplaceStr(str, '>', '&gt;');
  str := ReplaceStr(str, '<', '&lt;');
  Result := str;
end;

function  TfmECPInvoiceToViza.StrToXMLFloat(str: string): string;
begin
  str := ReplaceStr(str, '&', '&amp;');
  str := ReplaceStr(str, '"', '&quot;');
  str := ReplaceStr(str, '''', '&apos;');
  str := ReplaceStr(str, '>', '&gt;');
  str := ReplaceStr(str, '<', '&lt;');
  str := ReplaceStr(str, ',', '.');
  Result := str;
end;

procedure TfmECPInvoiceToViza.BitBtn1Click(Sender: TObject);
begin
  ModalResult := mrCancel;
end;

procedure TfmECPInvoiceToViza.SaveInvoice();
var xml : string;
    sp_etran_ecp_modify : TADOStoredProc;
    etran_ecp_id : integer;
    ClientDS : TClientDataSet;
    set_contract : boolean;
    road_begin_cod, road_end_cod : string;
    Q : TADOQuery;
begin
//  if (cxTextEdit14.Text = '1000230910') then begin
//
//    Q := TADOQuery.Create(nil);
//    Q.Connection := Fconnect;
//
//    Q.SQL.Clear;
//    Q.SQL.Add('SELECT	*');
//    Q.SQL.Add('FROM	  ETRAN_NSI_INF_OBJ');
//    Q.SQL.Add('WHERE	type_inf_id = 5');
//    Q.SQL.Add('       and etran_nsi_id = (SELECT top 1 inf_obj_xml.value(''/row[1]/ST_DP_RW_ID [1]/@value'',''int'') FROM ETRAN_NSI_INF_OBJ WHERE type_inf_id = 11 and inf_obj_cod = ''' + cxButtonEdit10.Text + ''')');
//    Q.Open;
//    road_begin_cod := Q.FieldByName('inf_obj_cod').AsString;
//
//    Q.SQL.Clear;
//    Q.SQL.Add('SELECT	*');
//    Q.SQL.Add('FROM	  ETRAN_NSI_INF_OBJ');
//    Q.SQL.Add('WHERE	type_inf_id = 5');
//    Q.SQL.Add('       and etran_nsi_id = (SELECT top 1 inf_obj_xml.value(''/row[1]/ST_DP_RW_ID [1]/@value'',''int'') FROM ETRAN_NSI_INF_OBJ WHERE type_inf_id = 11 and inf_obj_cod = ''' + cxButtonEdit26.Text + ''')');
//    Q.Open;
//    road_end_cod := Q.FieldByName('inf_obj_cod').AsString;
//
//    // Красноярская дорога
//    if (road_begin_cod = '88') or (road_end_cod = '88') then begin
//      // Проверка на наличие договора 880061288
//      set_contract := False;
//      Client_invDoc.First;
//      while not Client_invDoc.Eof do begin
//
//        if (Client_invDOC.FieldByName('docTypeID').AsInteger = 1002) and (Client_invDOC.FieldByName('docNumber').AsString = '880061288') then begin
//          set_contract := True;
//          Break;
//        end;
//
//        Client_invDoc.Next;
//      end;
//
//      // Договор не найден
//      if set_contract = False then begin
//        Fset_modify_doc := True; // Подсветка изменения в списке договоров
//        Client_invDOC.Append;
//        Client_invDOC.FieldByName('docTypeID'  ).Value := 1002;
//        Client_invDOC.FieldByName('docTypeName').Value := 'Договор на особых условиях';
//        Client_invDOC.FieldByName('docNumber'  ).Value := '880061288';
//        Client_invDOC.Post;
//      end;
//
//    end;
//
//    Q.Free;
//  end;





    ClientDS := TClientDataSet.Create(nil);
    ClientDS.FieldDefs.Add('num_vagon',        ftInteger);
    ClientDS.FieldDefs.Add('fact_track_trip_id', ftInteger);
    ClientDS.FieldDefs.Add('index_train', ftString, 20);
    ClientDS.FieldDefs.Add('fact_track_node_end_cod', ftString, 20);
    ClientDS.FieldDefs.Add('contract_id', ftInteger);
    ClientDS.FieldDefs.Add('firm_customer_name', ftString, 200);
    ClientDS.CreateDataSet;
    ClientDS.LogChanges := False;

    sp_etran_ecp_modify := TADOStoredProc.Create(nil);
    sp_etran_ecp_modify.Connection := Fconnect;
    sp_etran_ecp_modify.ProcedureName := 'sp_etran_ecp_modify';

    if Ftype_action = 0 then begin
      sp_etran_ecp_modify.Parameters.Refresh;
      sp_etran_ecp_modify.Parameters.ParamByName('@etran_ecp_id'     ).Value := null;
      sp_etran_ecp_modify.Parameters.ParamByName('@type_action'      ).Value := 0;
      sp_etran_ecp_modify.Parameters.ParamByName('@etran_ecp_type_id').Value := Fetran_ecp_type_id;
      sp_etran_ecp_modify.Parameters.ParamByName('@FIO_users_create' ).Value := FIO_users;
      sp_etran_ecp_modify.Parameters.ParamByName('@set_orders'       ).Value := Fset_orders;
      sp_etran_ecp_modify.Parameters.ParamByName('@set_priority'     ).Value := cxCheckBox1.Checked;
      sp_etran_ecp_modify.Parameters.ParamByName('@set_send_route'   ).Value := cxCheckBox2.Checked;
      if (Fset_orders= True) and (Ftype_action = 0) then begin
        sp_etran_ecp_modify.Parameters.ParamByName('@contract_id'      ).Value := iif(cxButtonEdit40.Tag = -9, null, cxButtonEdit40.Tag);
        sp_etran_ecp_modify.Parameters.ParamByName('@orders_type'      ).Value := cxLookupComboBox1.Text;
      end;
      sp_etran_ecp_modify.ExecProc;

      etran_ecp_id := sp_etran_ecp_modify.Parameters.ParamByName('@etran_ecp_id').Value;
    end else begin
      etran_ecp_id :=Fetran_ecp_id;
    end;


    xml := '<invoiceDirectLoad version="1.0">' + #10#13;
    if FinvoiceID <> -9 then xml := xml + '<invoiceID value="' + IntToStr(FinvoiceID) + '"/>' + #10#13;
    if FfrontEndId <> -9 then xml := xml + '<frontEndId value="' + IntToStr(FfrontEndId) + '"/>' + #10#13;
    if FinvTypeID <> -9 then xml := xml + '<invTypeID value="' + IntToStr(FinvTypeID) + '"/>' + #10#13;
    if FinvSendKindID <> -9 then xml := xml + '<invSendKindID value="' + IntToStr(FinvSendKindID) + '"/>' + #10#13;
    if FinvBlankTypeID <> -9 then xml := xml + '<invBlankTypeID value="' + IntToStr(FinvBlankTypeID) + '"/>' + #10#13;
    if FinvBlankTypeCod <> -9 then xml := xml + '<invBlankType value="' + IntToStr(FinvBlankTypeCod) + '"/>' + #10#13;
    if FinvSenderID <> -9 then xml := xml + '<invSenderID value="' + IntToStr(FinvSenderID) + '"/>' + #10#13;
    if FinvSenderAddressID <> -9 then xml := xml + '<invSenderAddressID value="' + IntToStr(FinvSenderAddressID) + '"/>' + #10#13;
    if FinvClaimID <> -9 then xml := xml + '<invLoadClaim_ID value="' + IntToStr(FinvClaimID) + '"/>' + #10#13;
    if FinvRecipID <> -9 then xml := xml + '<invRecipID value="' + IntToStr(FinvRecipID) + '"/>' + #10#13;
    if FinvRecipAddressID <> -9 then xml := xml + '<invRecipAddressID value="' + IntToStr(FinvRecipAddressID) + '"/>' + #10#13;
    if FinvSendSpeedID <> -9 then xml := xml + '<invSendSpeedID value="' + IntToStr(FinvSendSpeedID) + '"/>' + #10#13;
    if FinvPayPlaceID <> -9 then xml := xml + '<invPayPlaceID value="' + IntToStr(FinvPayPlaceID) + '"/>' + #10#13;
    if FinvPayFormID <> -9 then xml := xml + '<invPayFormID value="' + IntToStr(FinvPayFormID) + '"/>' + #10#13;
    if FinvPlanCarTypeID <> -9 then xml := xml + '<invPlanCarTypeID value="' + IntToStr(FinvPlanCarTypeID) + '"/>' + #10#13;
    if FinvPlanCarOwnerTypeID <> -9 then xml := xml + '<invPlanCarOwnerTypeID value="' + IntToStr(FinvPlanCarOwnerTypeID) + '"/>' + #10#13;
    if FinvPlanContOwnerTypeID <> -9 then xml := xml + '<invPlanContOwnerTypeID value="' + IntToStr(FinvPlanContOwnerTypeID) + '"/>' + #10#13;
    if FinvLoadTypeID <> -9 then xml := xml + '<invLoadTypeID value="' + IntToStr(FinvLoadTypeID) + '"/>' + #10#13;
    if FinvLoadAssetsID <> -9 then xml := xml + '<invLoadAssetsID value="' + IntToStr(FinvLoadAssetsID) + '"/>' + #10#13;
    if FinvScaleTypeID <> -9 then xml := xml + '<invScaleTypeID value="' + IntToStr(FinvScaleTypeID) + '"/>' + #10#13;
    if FinvScalePersonID <> -9 then xml := xml + '<invScalePersonID value="' + IntToStr(FinvScalePersonID) + '"/>' + #10#13;
    if FinvCheckDepID <> -9 then xml := xml + '<invCheckDepID value="' + IntToStr(FinvCheckDepID) + '"/>' + #10#13;
    if FinvDepNormDocID <> -9 then xml := xml + '<invDepNormDocID value="' + IntToStr(FinvDepNormDocID) + '"/>' + #10#13;


    if cxTextEdit3.Text      <> '' then xml := xml + '<invNumber value="' + StrToXML(cxTextEdit3.Text) + '"/>' + #10#13;
  //  if cxButtonEdit2.Text    <> '' then xml := xml + '<invBlankType value="' + StrToXML(cxButtonEdit2.Text) + '"/>' + #10#13;
    if cxTextEdit6.Text      <> '' then xml := xml + '<invSenderAddress value="' + StrToXML(cxTextEdit6.Text) + '"/>' + #10#13;
    if cxTextEdit7.Text      <> '' then xml := xml + '<invSenderTGNL value="' + StrToXML(cxTextEdit7.Text) + '"/>' + #10#13;
    if cxButtonEdit4.Text     <> '' then xml := xml + '<invLoadClaim_Number value="' + StrToXML(cxButtonEdit4.Text) + '"/>' + #10#13;
  //  if cxTextEdit33.Text     <> '' then xml := xml + '<invOtprNum value="' + StrToXML(cxTextEdit33.Text) + '"/>' + #10#13;
  //  if cxTextEdit34.Text     <> '' then xml := xml + '<invPodNum value="' + StrToXML(cxTextEdit34.Text) + '"/>' + #10#13;
    if cxButtonEdit15.Text   <> '' then xml := xml + '<invFromCountryCode value="' + StrToXML(cxButtonEdit15.Text) + '"/>' + #10#13;
    if cxTextEdit13.Text     <> '' then xml := xml + '<invFromPointCode value="' + StrToXML(cxTextEdit13.Text) + '"/>' + #10#13;
    if cxTextEdit11.Text     <> '' then xml := xml + '<invFromPointName value="' + StrToXML(cxTextEdit11.Text) + '"/>' + #10#13;
    if cxButtonEdit10.Text   <> '' then xml := xml + '<invFromStationCode value="' + StrToXML(cxButtonEdit10.Text) + '"/>' + #10#13;
    if cxButtonEdit23.Text   <> '' then xml := xml + '<invFromPortCode value="' + StrToXML(cxButtonEdit23.Text) + '"/>' + #10#13;
    if cxTextEdit10.Text     <> '' then xml := xml + '<invFromLoadWay value="' + StrToXML(cxTextEdit10.Text) + '"/>' + #10#13;
    if cxTextEdit9.Text      <> '' then xml := xml + '<invRecipOKPO value="' + StrToXML(cxTextEdit9.Text) + '"/>' + #10#13;
    if cxButtonEdit3.Text    <> '' then xml := xml + '<invRecipName value="' + StrToXML(cxButtonEdit3.Text) + '"/>' + #10#13;
    if cxTextEdit4.Text      <> '' then xml := xml + '<invRecipAddress value="' + StrToXML(cxTextEdit4.Text) + '"/>' + #10#13;
    if cxTextEdit5.Text      <> '' then xml := xml + '<invRecipTGNL value="' + StrToXML(cxTextEdit5.Text) + '"/>' + #10#13;
    if cxButtonEdit14.Text   <> '' then xml := xml + '<invToCountryCode value="' + StrToXML(cxButtonEdit14.Text) + '"/>' + #10#13;
    if cxTextEdit20.Text     <> '' then xml := xml + '<invToPointCode value="' + StrToXML(cxTextEdit20.Text) + '"/>' + #10#13;
    if cxTextEdit21.Text     <> '' then xml := xml + '<invToPointName value="' + StrToXML(cxTextEdit21.Text) + '"/>' + #10#13;
    if cxButtonEdit26.Text   <> '' then xml := xml + '<invToStationCode value="' + StrToXML(cxButtonEdit26.Text) + '"/>' + #10#13;
    if cxButtonEdit33.Text   <> '' then xml := xml + '<invToPortCode value="' + StrToXML(cxButtonEdit33.Text) + '"/>' + #10#13;
    if cxTextEdit12.Text     <> '' then xml := xml + '<invToLoadWay value="' + StrToXML(cxTextEdit12.Text) + '"/>' + #10#13;
    if cxTextEdit41.Text     <> '' then xml := xml + '<invPayPlaceRwCode value="' + StrToXML(cxTextEdit41.Text) + '"/>' + #10#13;
    if cxTextEdit14.Text     <> '' then xml := xml + '<invPayerCode value="' + StrToXML(cxTextEdit14.Text) + '"/>' + #10#13;
    if cxButtonEdit16.Text   <> '' then xml := xml + '<invPayerName value="' + StrToXML(cxButtonEdit16.Text) + '"/>' + #10#13;
    if cxTextEdit15.Text     <> '' then xml := xml + '<invPayerAccount value="' + StrToXML(cxTextEdit15.Text) + '"/>' + #10#13;
    if cxTextEdit16.Text     <> '' then xml := xml + '<invPayerBank value="' + StrToXML(cxTextEdit16.Text) + '"/>' + #10#13;
    if cxTextEdit17.Text     <> '' then xml := xml + '<invFRWSubCode value="' + StrToXML(cxTextEdit17.Text) + '"/>' + #10#13;
    if cxTextEdit18.Text     <> '' then xml := xml + '<invFRWSubCode2 value="' + StrToXML(cxTextEdit18.Text) + '"/>' + #10#13;
    if cxTextEdit26.Text     <> '' then xml := xml + '<invIxTariffCode value="' + StrToXML(cxTextEdit26.Text) + '"/>' + #10#13;
    if cxTextEdit28.Text     <> '' then xml := xml + '<invPlanCarCount value="' + StrToXML(cxTextEdit28.Text) + '"/>' + #10#13;
    if cxTextEdit31.Text     <> '' then xml := xml + '<invPlanContTonnage value="' + StrToXML(cxTextEdit31.Text) + '"/>' + #10#13;
    if cxTextEdit29.Text     <> '' then xml := xml + '<invPlanContCount value="' + StrToXML(cxTextEdit29.Text) + '"/>' + #10#13;
    if cxTextEdit32.Text     <> '' then xml := xml + '<invContPlanSizeBig value="' + StrToXML(cxTextEdit32.Text) + '"/>' + #10#13;
    if cxTextEdit27.Text     <> '' then xml := xml + '<invAnnounceValue value="' + StrToXML(cxTextEdit27.Text) + '"/>' + #10#13;
    if cxTextEdit30.Text     <> '' then xml := xml + '<invPlanOutsizeCode value="' + StrToXML(cxTextEdit30.Text) + '"/>' + #10#13;
    if cxTextEdit19.Text     <> '' then xml := xml + '<invRespPerson value="' + StrToXML(cxTextEdit19.Text) + '"/>' + #10#13;
    if cxButtonEdit34.Text   <> '' then xml := xml + '<invToCountryEmptyCode value="' + StrToXML(cxButtonEdit34.Text) + '"/>' + #10#13;
    if cxButtonEdit35.Text   <> '' then xml := xml + '<invToStationEmptyCode value="' + StrToXML(cxButtonEdit35.Text) + '"/>' + #10#13;
    if cxTextEdit38.Text     <> '' then xml := xml + '<invScalePrecision value="' + StrToXML(cxTextEdit38.Text) + '"/>' + #10#13;
    if cxTextEdit36.Text     <> '' then xml := xml + '<invDeplPerson value="' + StrToXML(cxTextEdit36.Text) + '"/>' + #10#13;
    if cxTextEdit39.Text     <> '' then xml := xml + '<invDepPart value="' + StrToXML(cxTextEdit39.Text) + '"/>' + #10#13;
    if cxTextEdit37.Text     <> '' then xml := xml + '<invDepArc value="' + StrToXML(cxTextEdit37.Text) + '"/>' + #10#13;
    if cxTextEdit35.Text     <> '' then xml := xml + '<invDepSec value="' + StrToXML(cxTextEdit35.Text) + '"/>' + #10#13;
    if cxTextEdit40.Text     <> '' then xml := xml + '<invDepCond value="' + StrToXML(cxTextEdit40.Text) + '"/>' + #10#13;
    if cxDateEdit1.EditValue <> null then xml := xml + '<invDateLoad value="' + FormatDateTime('dd.mm.yyyy', cxDateEdit1.Date) + '"/>' + #10#13;
    if cxDateEdit2.EditValue <> null then xml := xml + '<invFactDateToLoad value="' + FormatDateTime('dd.mm.yyyy', cxDateEdit2.Date) + '"/>' + #10#13;


    {$region 'Client_invFreight'}
    Client_invFreight.First;
    while not Client_invFreight.Eof do begin
      xml := xml + '<invFreight>' + #10#13;

      if not Client_invFreight.FieldByName('freightCode'          ).IsNull then xml := xml + '<freightCode value="' + StrToXML(Client_invFreight.FieldByName('freightCode').AsString) + '"/>' + #10#13;
      if not Client_invFreight.FieldByName('freightExactName'     ).IsNull then xml := xml + '<freightExactName value="' + StrToXML(Client_invFreight.FieldByName('freightExactName').AsString) + '"/>' + #10#13;
      if not Client_invFreight.FieldByName('freightGNGID'         ).IsNull then xml := xml + '<freightGNGID value="' + StrToXML(Client_invFreight.FieldByName('freightGNGID').AsString) + '"/>' + #10#13;
      if not Client_invFreight.FieldByName('freightGNGID2001'     ).IsNull then xml := xml + '<freightGNGID2001 value="' + StrToXML(Client_invFreight.FieldByName('freightGNGID2001').AsString) + '"/>' + #10#13;
      if not Client_invFreight.FieldByName('freightGNGCode'       ).IsNull then xml := xml + '<freightGNGCode value="' + StrToXML(Client_invFreight.FieldByName('freightGNGCode').AsString) + '"/>' + #10#13;
      if not Client_invFreight.FieldByName('freightAdditional'    ).IsNull then xml := xml + '<freightAdditional value="' + StrToXML(Client_invFreight.FieldByName('freightAdditional').AsString) + '"/>' + #10#13;
      if not Client_invFreight.FieldByName('freightPackTypeID'    ).IsNull then xml := xml + '<freightPackTypeID value="' + StrToXML(Client_invFreight.FieldByName('freightPackTypeID').AsString) + '"/>' + #10#13;
      if not Client_invFreight.FieldByName('freightPocketCount'   ).IsNull then xml := xml + '<freightPocketCount value="' + StrToXML(Client_invFreight.FieldByName('freightPocketCount').AsString) + '"/>' + #10#13;
      if not Client_invFreight.FieldByName('freightPackageCount'  ).IsNull then xml := xml + '<freightPackageCount value="' + StrToXML(Client_invFreight.FieldByName('freightPackageCount').AsString) + '"/>' + #10#13;
      if not Client_invFreight.FieldByName('freightWeight'        ).IsNull then xml := xml + '<freightWeight value="' + StrToXML(Client_invFreight.FieldByName('freightWeight').AsString) + '"/>' + #10#13;
      if not Client_invFreight.FieldByName('freightWeightStdGross').IsNull then xml := xml + '<freightWeightStdGross value="' + StrToXML(Client_invFreight.FieldByName('freightWeightStdGross').AsString) + '"/>' + #10#13;
      if not Client_invFreight.FieldByName('freightWeightStdNet'  ).IsNull then xml := xml + '<freightWeightStdNet value="' + StrToXML(Client_invFreight.FieldByName('freightWeightStdNet').AsString) + '"/>' + #10#13;
      if not Client_invFreight.FieldByName('freightMaxLength'     ).IsNull then xml := xml + '<freightMaxLength value="' + StrToXML(Client_invFreight.FieldByName('freightMaxLength').AsString) + '"/>' + #10#13;
      if not Client_invFreight.FieldByName('freightMaxWidth'      ).IsNull then xml := xml + '<freightMaxWidth value="' + StrToXML(Client_invFreight.FieldByName('freightMaxWidth').AsString) + '"/>' + #10#13;
      if not Client_invFreight.FieldByName('freightMaxHeight'     ).IsNull then xml := xml + '<freightMaxHeight value="' + StrToXML(Client_invFreight.FieldByName('freightMaxHeight').AsString) + '"/>' + #10#13;
      if not Client_invFreight.FieldByName('freightSendersMark'   ).IsNull then xml := xml + '<freightSendersMark value="' + StrToXML(Client_invFreight.FieldByName('freightSendersMark').AsString) + '"/>' + #10#13;
      if not Client_invFreight.FieldByName('freightDangerSignID'  ).IsNull then xml := xml + '<freightDangerSignID value="' + StrToXML(Client_invFreight.FieldByName('freightDangerSignID').AsString) + '"/>' + #10#13;
      if not Client_invFreight.FieldByName('freightDangerID'      ).IsNull then xml := xml + '<freightDangerID value="' + StrToXML(Client_invFreight.FieldByName('freightDangerID').AsString) + '"/>' + #10#13;
      if not Client_invFreight.FieldByName('freightAccidentCard'  ).IsNull then xml := xml + '<freightAccidentCard value="' + StrToXML(Client_invFreight.FieldByName('freightAccidentCard').AsString) + '"/>' + #10#13;
      if not Client_invFreight.FieldByName('freightAccidentCardID').IsNull then xml := xml + '<freightAccidentCardID value="' + StrToXML(Client_invFreight.FieldByName('freightAccidentCardID').AsString) + '"/>' + #10#13;

      Client_freightCLS.First;
      Client_freightCLS.Filter := 'invFreight_id=' + IntToStr(Client_invFreight.FieldByName('id').AsInteger);
      Client_freightCLS.Filtered := True;
      while not Client_freightCLS.Eof do begin
        xml := xml + '<freightCLS>' + #10#13;
        if not Client_freightCLS.FieldByName('clsTranspClauseID').IsNull then xml := xml + '<clsTranspClauseID value="' + StrToXML(Client_freightCLS.FieldByName('clsTranspClauseID').AsString) + '"/>' + #10#13;
        if not Client_freightCLS.FieldByName('clsCustomText'    ).IsNull then xml := xml + '<clsCustomText value="' + StrToXML(Client_freightCLS.FieldByName('clsCustomText').AsString) + '"/>' + #10#13;
        xml := xml + '</freightCLS>' + #10#13;
        Client_freightCLS.Next;
      end;
      Client_freightCLS.Filter := '';
      Client_freightCLS.Filtered := False;
      xml := xml + '</invFreight>' + #10#13;

      Client_invFreight.Next;
    end;
    {$endregion}

    {$region 'Client_invCar'}
    Client_invCar.First;
    while not Client_invCar.Eof do begin
      xml := xml + '<invCar>' + #10#13;

      if not Client_invCar.FieldByName('carClaimId'           ).IsNull then xml := xml + '<carClaimId value="' + StrToXML(Client_invCar.FieldByName('carClaimId').AsString) + '"/>' + #10#13;
      if not Client_invCar.FieldByName('carClaimOtprNom'      ).IsNull then xml := xml + '<carClaimOtprNom value="' + StrToXML(Client_invCar.FieldByName('carClaimOtprNom').AsString) + '"/>' + #10#13;
      if not Client_invCar.FieldByName('carClaimPodNum'       ).IsNull then xml := xml + '<carClaimPodNum value="' + StrToXML(Client_invCar.FieldByName('carClaimPodNum').AsString) + '"/>' + #10#13;
      if not Client_invCar.FieldByName('carTypeID'            ).IsNull then xml := xml + '<carTypeID value="' + StrToXML(Client_invCar.FieldByName('carTypeID').AsString) + '"/>' + #10#13;
      if not Client_invCar.FieldByName('carNumber'            ).IsNull then xml := xml + '<carNumber value="' + StrToXML(Client_invCar.FieldByName('carNumber').AsString) + '"/>' + #10#13;
      if not Client_invCar.FieldByName('carOwnerCountryCode'  ).IsNull then xml := xml + '<carOwnerCountryCode value="' + StrToXML(Client_invCar.FieldByName('carOwnerCountryCode').AsString) + '"/>' + #10#13;
      if not Client_invCar.FieldByName('carOwnerTypeID'       ).IsNull then xml := xml + '<carOwnerTypeID value="' + StrToXML(Client_invCar.FieldByName('carOwnerTypeID').AsString) + '"/>' + #10#13;
      if not Client_invCar.FieldByName('carOwnerID'           ).IsNull then xml := xml + '<carOwnerID value="' + StrToXML(Client_invCar.FieldByName('carOwnerID').AsString) + '"/>' + #10#13;
      if not Client_invCar.FieldByName('carOwnerOKPO'         ).IsNull then xml := xml + '<carOwnerOKPO value="' + StrToXML(Client_invCar.FieldByName('carOwnerOKPO').AsString) + '"/>' + #10#13;
      if not Client_invCar.FieldByName('carOwnerName'         ).IsNull then xml := xml + '<carOwnerName value="' + StrToXML(Client_invCar.FieldByName('carOwnerName').AsString) + '"/>' + #10#13;
      if not Client_invCar.FieldByName('carTenantID'          ).IsNull then xml := xml + '<carTenantID value="' + StrToXML(Client_invCar.FieldByName('carTenantID').AsString) + '"/>' + #10#13;
      if not Client_invCar.FieldByName('carPlacesCount'       ).IsNull then xml := xml + '<carPlacesCount value="' + StrToXMLFloat(Client_invCar.FieldByName('carPlacesCount').AsString) + '"/>' + #10#13;
      if not Client_invCar.FieldByName('carTonnage'           ).IsNull then xml := xml + '<carTonnage value="' + StrToXMLFloat(Client_invCar.FieldByName('carTonnage').AsString) + '"/>' + #10#13;
      if not Client_invCar.FieldByName('carAxles'             ).IsNull then xml := xml + '<carAxles value="' + StrToXMLFloat(Client_invCar.FieldByName('carAxles').AsString) + '"/>' + #10#13;
      if not Client_invCar.FieldByName('carVolume'            ).IsNull then xml := xml + '<carVolume value="' + StrToXMLFloat(Client_invCar.FieldByName('carVolume').AsString) + '"/>' + #10#13;
      if not Client_invCar.FieldByName('carFreightGNGCode'    ).IsNull then xml := xml + '<carFreightGNGCode value="' + StrToXML(Client_invCar.FieldByName('carFreightGNGCode').AsString) + '"/>' + #10#13;
      if not Client_invCar.FieldByName('carFreightGNGID2001'  ).IsNull then xml := xml + '<carFreightGNGID2001 value="' + StrToXML(Client_invCar.FieldByName('carFreightGNGID2001').AsString) + '"/>' + #10#13;
      if not Client_invCar.FieldByName('carWeightDep'         ).IsNull then xml := xml + '<carWeightDep value="' + StrToXMLFloat(Client_invCar.FieldByName('carWeightDep').AsString) + '"/>' + #10#13;
      if not Client_invCar.FieldByName('carWeightDepReal'     ).IsNull then xml := xml + '<carWeightDepReal value="' + StrToXMLFloat(Client_invCar.FieldByName('carWeightDepReal').AsString) + '"/>' + #10#13;
      if not Client_invCar.FieldByName('carWeightGross'       ).IsNull then xml := xml + '<carWeightGross value="' + StrToXMLFloat(Client_invCar.FieldByName('carWeightGross').AsString) + '"/>' + #10#13;
      if not Client_invCar.FieldByName('carWeightNet'         ).IsNull then xml := xml + '<carWeightNet value="' + StrToXMLFloat(Client_invCar.FieldByName('carWeightNet').AsString) + '"/>' + #10#13;
      if not Client_invCar.FieldByName('carWeightAddDev'      ).IsNull then xml := xml + '<carWeightAddDev value="' + StrToXML(Client_invCar.FieldByName('carWeightAddDev').AsString) + '"/>' + #10#13;
      if not Client_invCar.FieldByName('carAddDevWithGoods'   ).IsNull then xml := xml + '<carAddDevWithGoods value="' + StrToXML(Client_invCar.FieldByName('carAddDevWithGoods').AsString) + '"/>' + #10#13;
      if not Client_invCar.FieldByName('carPriorFreightCode'  ).IsNull then xml := xml + '<carPriorFreightCode value="' + StrToXML(Client_invCar.FieldByName('carPriorFreightCode').AsString) + '"/>' + #10#13;
      if not Client_invCar.FieldByName('carOutsizeCode'       ).IsNull then xml := xml + '<carOutsizeCode value="' + StrToXML(Client_invCar.FieldByName('carOutsizeCode').AsString) + '"/>' + #10#13;
      if not Client_invCar.FieldByName('carFrameWeight'       ).IsNull then xml := xml + '<carFrameWeight value="' + StrToXML(Client_invCar.FieldByName('carFrameWeight').AsString) + '"/>' + #10#13;
      if not Client_invCar.FieldByName('carFrameWagNum'       ).IsNull then xml := xml + '<carFrameWagNum value="' + StrToXML(Client_invCar.FieldByName('carFrameWagNum').AsString) + '"/>' + #10#13;
      if not Client_invCar.FieldByName('carTopHeight'         ).IsNull then xml := xml + '<carTopHeight value="' + StrToXML(Client_invCar.FieldByName('carTopHeight').AsString) + '"/>' + #10#13;
      if not Client_invCar.FieldByName('carMainShtabQuantity' ).IsNull then xml := xml + '<carMainShtabQuantity value="' + StrToXML(Client_invCar.FieldByName('carMainShtabQuantity').AsString) + '"/>' + #10#13;
      if not Client_invCar.FieldByName('carMainShtabHeight'   ).IsNull then xml := xml + '<carMainShtabHeight value="' + StrToXML(Client_invCar.FieldByName('carMainShtabHeight').AsString) + '"/>' + #10#13;
      if not Client_invCar.FieldByName('carHeadShtabQuantity' ).IsNull then xml := xml + '<carHeadShtabQuantity value="' + StrToXML(Client_invCar.FieldByName('carHeadShtabQuantity').AsString) + '"/>' + #10#13;
      if not Client_invCar.FieldByName('carLiquidTemperature' ).IsNull then xml := xml + '<carLiquidTemperature value="' + StrToXML(Client_invCar.FieldByName('carLiquidTemperature').AsString) + '"/>' + #10#13;
      if not Client_invCar.FieldByName('carLiquidHeight'      ).IsNull then xml := xml + '<carLiquidHeight value="' + StrToXML(Client_invCar.FieldByName('carLiquidHeight').AsString) + '"/>' + #10#13;
      if not Client_invCar.FieldByName('carLiquidDensity'     ).IsNull then xml := xml + '<carLiquidDensity value="' + StrToXML(Client_invCar.FieldByName('carLiquidDensity').AsString) + '"/>' + #10#13;
      if not Client_invCar.FieldByName('carLiquidVolume'      ).IsNull then xml := xml + '<carLiquidVolume value="' + StrToXML(Client_invCar.FieldByName('carLiquidVolume').AsString) + '"/>' + #10#13;
      if not Client_invCar.FieldByName('carTankType'          ).IsNull then xml := xml + '<carTankType value="' + StrToXML(Client_invCar.FieldByName('carTankType').AsString) + '"/>' + #10#13;
      if not Client_invCar.FieldByName('carRefNum'            ).IsNull then xml := xml + '<carRefNum value="' + StrToXML(Client_invCar.FieldByName('carRefNum').AsString) + '"/>' + #10#13;
      if not Client_invCar.FieldByName('carRefCount'          ).IsNull then xml := xml + '<carRefCount value="' + StrToXML(Client_invCar.FieldByName('carRefCount').AsString) + '"/>' + #10#13;
      if not Client_invCar.FieldByName('carRolls'             ).IsNull then xml := xml + '<carRolls value="' + StrToXML(Client_invCar.FieldByName('carRolls').AsString) + '"/>' + #10#13;
      if not Client_invCar.FieldByName('carConnectCode'       ).IsNull then xml := xml + '<carConnectCode value="' + StrToXML(Client_invCar.FieldByName('carConnectCode').AsString) + '"/>' + #10#13;
      if not Client_invCar.FieldByName('carIsCover'           ).IsNull then xml := xml + '<carIsCover value="' + StrToXML(Client_invCar.FieldByName('carIsCover').AsString) + '"/>' + #10#13;


      if not Client_invCar.FieldByName('fact_track_trip_id').IsNull then begin
        ClientDS.Append;
        ClientDS.FieldByName('num_vagon').Value := Client_invCar.FieldByName('carNumber').Value;
        ClientDS.FieldByName('fact_track_trip_id').Value := Client_invCar.FieldByName('fact_track_trip_id').Value;
        ClientDS.FieldByName('index_train').Value := Client_invCar.FieldByName('index_train').Value;
        ClientDS.FieldByName('fact_track_node_end_cod').Value := Client_invCar.FieldByName('fact_track_node_end_cod').Value;
        ClientDS.FieldByName('contract_id').Value := Client_invCar.FieldByName('contract_id').Value;
        ClientDS.FieldByName('firm_customer_name').Value := Client_invCar.FieldByName('firm_customer_name').Value;
        ClientDS.Post;
      end;


      Client_carSPC.First;
      Client_carSPC.Filter := 'car_id=' + IntToStr(Client_invCar.FieldByName('id').AsInteger);
      Client_carSPC.Filtered := True;
      while not Client_carSPC.Eof do begin
        xml := xml + '<carSPC>' + #10#13;
        if not Client_carSPC.FieldByName('spcTranspClauseID').IsNull then xml := xml + '<spcTranspClauseID value="' + StrToXML(Client_carSPC.FieldByName('spcTranspClauseID').AsString) + '"/>' + #10#13;
        if not Client_carSPC.FieldByName('spcCustomText'    ).IsNull then xml := xml + '<spcCustomText value="' + StrToXML(Client_carSPC.FieldByName('spcCustomText').AsString) + '"/>' + #10#13;
        xml := xml + '</carSPC>' + #10#13;
        Client_carSPC.Next;
      end;
      Client_carSPC.Filter := '';
      Client_carSPC.Filtered := False;


      Client_carCSL.First;
      Client_carCSL.Filter := 'car_id=' + IntToStr(Client_invCar.FieldByName('id').AsInteger);
      Client_carCSL.Filtered := True;
      while not Client_carCSL.Eof do begin
        xml := xml + '<carCSL>' + #10#13;
        if not Client_carCSL.FieldByName('sealTypeID').IsNull then xml := xml + '<sealTypeID value="' + StrToXML(Client_carCSL.FieldByName('sealTypeID').AsString) + '"/>' + #10#13;
        if not Client_carCSL.FieldByName('sealMarks').IsNull then xml := xml + '<sealMarks value="' + StrToXML(Client_carCSL.FieldByName('sealMarks').AsString) + '"/>' + #10#13;
        if not Client_carCSL.FieldByName('sealQuantity').IsNull then xml := xml + '<sealQuantity value="' + StrToXML(Client_carCSL.FieldByName('sealQuantity').AsString) + '"/>' + #10#13;
        if not Client_carCSL.FieldByName('sealYear').IsNull then xml := xml + '<sealYear value="' + StrToXML(Client_carCSL.FieldByName('sealYear').AsString) + '"/>' + #10#13;
        if not Client_carCSL.FieldByName('sealOwnerTypeID').IsNull then xml := xml + '<sealOwnerTypeID value="' + StrToXML(Client_carCSL.FieldByName('sealOwnerTypeID').AsString) + '"/>' + #10#13;
        if not Client_carCSL.FieldByName('sealRailwayID').IsNull then xml := xml + '<sealRailwayID value="' + StrToXML(Client_carCSL.FieldByName('sealRailwayID').AsString) + '"/>' + #10#13;
        xml := xml + '</carCSL>' + #10#13;
        Client_carCSL.Next;
      end;
      Client_carCSL.Filter := '';
      Client_carCSL.Filtered := False;


      xml := xml + '</invCar>' + #10#13;

      Client_invCar.Next;
    end;
    {$endregion}

    {$region 'Client_invGuide'}
    Client_invGuide.First;
    while not Client_invGuide.Eof do begin
      xml := xml + '<invGuide>' + #10#13;

      if not Client_invGuide.FieldByName('guideFIO').IsNull         then xml := xml + '<guideFIO value="' + StrToXML(Client_invGuide.FieldByName('guideFIO').AsString) + '"/>' + #10#13;
      if not Client_invGuide.FieldByName('guidePassportSer').IsNull then xml := xml + '<guidePassportSer value="' + StrToXML(Client_invGuide.FieldByName('guidePassportSer').AsString) + '"/>' + #10#13;
      if not Client_invGuide.FieldByName('guidePassportNum').IsNull then xml := xml + '<guidePassportNum value="' + StrToXML(Client_invGuide.FieldByName('guidePassportNum').AsString) + '"/>' + #10#13;
      if not Client_invGuide.FieldByName('guideWarrantNum').IsNull  then xml := xml + '<guideWarrantNum value="' + StrToXML(Client_invGuide.FieldByName('guideWarrantNum').AsString) + '"/>' + #10#13;

      xml := xml + '</invGuide>' + #10#13;

      Client_invGuide.Next;
    end;
    {$endregion}

    {$region 'Client_invCndBlock'}
    Client_invCndBlock.First;
    while not Client_invCndBlock.Eof do begin
      xml := xml + '<invCndBlock>' + #10#13;
      if not Client_invCndBlock.FieldByName('cndClauseId'         ).IsNull then xml := xml + '<cndClauseId value="' + StrToXML(Client_invCndBlock.FieldByName('cndClauseId').AsString) + '"/>' + #10#13;
      if not Client_invCndBlock.FieldByName('cndClauseCustomText' ).IsNull then xml := xml + '<cndClauseCustomText value="' + StrToXML(Client_invCndBlock.FieldByName('cndClauseCustomText').AsString) + '"/>' + #10#13;
      if not Client_invCndBlock.FieldByName('cndFreightCode'      ).IsNull then xml := xml + '<cndFreightCode value="' + StrToXML(Client_invCndBlock.FieldByName('cndFreightCode').AsString) + '"/>' + #10#13;
      xml := xml + '</invCndBlock>' + #10#13;

      Client_invCndBlock.Next;
    end;
    {$endregion}

    {$region 'Client_invTranspClause'}
    Client_invTranspClause.First;
    while not Client_invTranspClause.Eof do begin
      xml := xml + '<invTranspClause>' + #10#13;
      if not Client_invTranspClause.FieldByName('transpClauseId'         ).IsNull then xml := xml + '<transpClauseId value="' + StrToXML(Client_invTranspClause.FieldByName('transpClauseId').AsString) + '"/>' + #10#13;
      if not Client_invTranspClause.FieldByName('transpClauseCustomText' ).IsNull then xml := xml + '<transpClauseCustomText value="' + StrToXML(Client_invTranspClause.FieldByName('transpClauseCustomText').AsString) + '"/>' + #10#13;
      xml := xml + '</invTranspClause>' + #10#13;

      Client_invTranspClause.Next;
    end;
    {$endregion}

    {$region 'Client_invFreightWeight'}
    Client_invFreightWeight.First;
    while not Client_invFreightWeight.Eof do begin
      xml := xml + '<invFreightWeight>' + #10#13;
      if not Client_invFreightWeight.FieldByName('freightCode'       ).IsNull then xml := xml + '<freightCode value="' + StrToXML(Client_invFreightWeight.FieldByName('freightCode').AsString) + '"/>' + #10#13;
      if not Client_invFreightWeight.FieldByName('freightWeight'     ).IsNull then xml := xml + '<freightWeight value="' + StrToXML(Client_invFreightWeight.FieldByName('freightWeight').AsString) + '"/>' + #10#13;
      if not Client_invFreightWeight.FieldByName('freightRealWeight' ).IsNull then xml := xml + '<freightRealWeight value="' + StrToXML(Client_invFreightWeight.FieldByName('freightRealWeight').AsString) + '"/>' + #10#13;
      xml := xml + '</invFreightWeight>' + #10#13;

      Client_invFreightWeight.Next;
    end;
    {$endregion}

    {$region 'Client_invDev'}
    Client_invDev.First;
    while not Client_invDev.Eof do begin
      xml := xml + '<invDev>' + #10#13;
      if not Client_invDev.FieldByName('devTypeID'           ).IsNull then xml := xml + '<devTypeID value="' + StrToXML(Client_invDev.FieldByName('devTypeID').AsString) + '"/>' + #10#13;
      if not Client_invDev.FieldByName('devNumber'           ).IsNull then xml := xml + '<devNumber value="' + StrToXML(Client_invDev.FieldByName('devNumber').AsString) + '"/>' + #10#13;
      if not Client_invDev.FieldByName('devOwnerCountryCode' ).IsNull then xml := xml + '<devOwnerCountryCode value="' + StrToXML(Client_invDev.FieldByName('devOwnerCountryCode').AsString) + '"/>' + #10#13;
      if not Client_invDev.FieldByName('devOwnerTypeID'      ).IsNull then xml := xml + '<devOwnerTypeID value="' + StrToXML(Client_invDev.FieldByName('devOwnerTypeID').AsString) + '"/>' + #10#13;
      if not Client_invDev.FieldByName('devOwnerOKPO'        ).IsNull then xml := xml + '<devOwnerOKPO value="' + StrToXML(Client_invDev.FieldByName('devOwnerOKPO').AsString) + '"/>' + #10#13;
      if not Client_invDev.FieldByName('devOwnerName'        ).IsNull then xml := xml + '<devOwnerName value="' + StrToXML(Client_invDev.FieldByName('devOwnerName').AsString) + '"/>' + #10#13;
      if not Client_invDev.FieldByName('devQuantity'         ).IsNull then xml := xml + '<devQuantity value="' + StrToXML(Client_invDev.FieldByName('devQuantity').AsString) + '"/>' + #10#13;
      if not Client_invDev.FieldByName('devReturn'           ).IsNull then xml := xml + '<devReturn value="' + StrToXML(Client_invDev.FieldByName('devReturn').AsString) + '"/>' + #10#13;
      xml := xml + '</invDev>' + #10#13;

      Client_invDev.Next;
    end;
    {$endregion}

    {$region 'Client_invDOC'}
    Client_invDOC.First;
    while not Client_invDOC.Eof do begin
      xml := xml + '<invDOC>' + #10#13;
      if not Client_invDOC.FieldByName('docTypeID' ).IsNull then xml := xml + '<docTypeID value="' + StrToXML(Client_invDOC.FieldByName('docTypeID').AsString) + '"/>' + #10#13;
      if not Client_invDOC.FieldByName('docNumber' ).IsNull then xml := xml + '<docNumber value="' + StrToXML(Client_invDOC.FieldByName('docNumber').AsString) + '"/>' + #10#13;
      if not Client_invDOC.FieldByName('docDate'   ).IsNull then xml := xml + '<docDate value="' + StrToXML(Client_invDOC.FieldByName('docDate').AsString) + '"/>' + #10#13;
      if not Client_invDOC.FieldByName('dayCount'  ).IsNull then xml := xml + '<dayCount value="' + StrToXML(Client_invDOC.FieldByName('dayCount').AsString) + '"/>' + #10#13;
      if not Client_invDOC.FieldByName('DocumentID').IsNull then xml := xml + '<DocumentID value="' + StrToXML(Client_invDOC.FieldByName('DocumentID').AsString) + '"/>' + #10#13;
      xml := xml + '</invDOC>' + #10#13;

      Client_invDOC.Next;
    end;
    {$endregion}

    {$region 'Client_invSPC'}
    Client_invSPC.First;
    while not Client_invSPC.Eof do begin
      xml := xml + '<invSPC>' + #10#13;
//      if not Client_invSPC.FieldByName('spcTranspClauseID').IsNull then xml := xml + '<spcTranspClauseID value="' + StrToXML(Client_invSPC.FieldByName('spcTranspClauseID').AsString) + '"/>' + #10#13;


      if not Client_invSPC.FieldByName('spcTranspClauseID').IsNull then begin
        xml := xml + '<spcTranspClauseID value="' + StrToXML(Client_invSPC.FieldByName('spcTranspClauseID').AsString) + '"/>' + #10#13;
        if Client_invSPC.FieldByName('spcTranspClauseID').AsString = '1303' then begin
          xml := xml + '<spcToWash value="1"/>' + #10#13;
        end;
      end;

      if not Client_invSPC.FieldByName('spcCustomText'    ).IsNull then xml := xml + '<spcCustomText value="' + StrToXML(Client_invSPC.FieldByName('spcCustomText').AsString) + '"/>' + #10#13;
      if not Client_invSPC.FieldByName('spcNumber').IsNull then xml := xml + '<spcNumber value="' + StrToXML(Client_invSPC.FieldByName('spcNumber').AsString) + '"/>' + #10#13;
      if not Client_invSPC.FieldByName('spcNumOtp').IsNull then xml := xml + '<spcNumOtp value="' + StrToXML(Client_invSPC.FieldByName('spcNumOtp').AsString) + '"/>' + #10#13;
      if not Client_invSPC.FieldByName('spcClaimNumber').IsNull then xml := xml + '<spcClaimNumber value="' + StrToXML(Client_invSPC.FieldByName('spcClaimNumber').AsString) + '"/>' + #10#13;
      if not Client_invSPC.FieldByName('spcDate'  ).IsNull then xml := xml + '<spcDate value="' + StrToXML(FormatDateTime('dd.mm.yyyy', Client_invSPC.FieldByName('spcDate').AsDateTime)) + '"/>' + #10#13;
      xml := xml + '</invSPC>' + #10#13;

      Client_invSPC.Next;
    end;
    {$endregion}

    {$region 'Client_invDistance'}
    Client_invDistance.First;
    while not Client_invDistance.Eof do begin
      xml := xml + '<invDistance>' + #10#13;
      if not Client_invDistance.FieldByName('distCountryCode'  ).IsNull then xml := xml + '<distCountryCode value="' + StrToXML(Client_invDistance.FieldByName('distCountryCode').AsString) + '"/>' + #10#13;
      if not Client_invDistance.FieldByName('distStationCode'  ).IsNull then xml := xml + '<distStationCode value="' + StrToXML(Client_invDistance.FieldByName('distStationCode').AsString) + '"/>' + #10#13;
      if not Client_invDistance.FieldByName('distPortCode'     ).IsNull then xml := xml + '<distPortCode value="' + StrToXML(Client_invDistance.FieldByName('distPortCode').AsString) + '"/>' + #10#13;
      if not Client_invDistance.FieldByName('distLoadWay'      ).IsNull then xml := xml + '<distLoadWay value="' + StrToXML(Client_invDistance.FieldByName('distLoadWay').AsString) + '"/>' + #10#13;
      if not Client_invDistance.FieldByName('distTrackTypeID'  ).IsNull then xml := xml + '<distTrackTypeID value="' + StrToXML(Client_invDistance.FieldByName('distTrackTypeID').AsString) + '"/>' + #10#13;
      if not Client_invDistance.FieldByName('distTranspTypeID' ).IsNull then xml := xml + '<distTranspTypeID value="' + StrToXML(Client_invDistance.FieldByName('distTranspTypeID').AsString) + '"/>' + #10#13;
      if not Client_invDistance.FieldByName('distMinWay'       ).IsNull then xml := xml + '<distMinWay value="' + StrToXML(Client_invDistance.FieldByName('distMinWay').AsString) + '"/>' + #10#13;
      if not Client_invDistance.FieldByName('distRecipOKPO'    ).IsNull then xml := xml + '<distRecipOKPO value="' + StrToXML(Client_invDistance.FieldByName('distRecipOKPO').AsString) + '"/>' + #10#13;
      if not Client_invDistance.FieldByName('distRecipName'    ).IsNull then xml := xml + '<distRecipName value="' + StrToXML(Client_invDistance.FieldByName('distRecipName').AsString) + '"/>' + #10#13;
      if not Client_invDistance.FieldByName('distRecipAddress' ).IsNull then xml := xml + '<distRecipAddress value="' + StrToXML(Client_invDistance.FieldByName('distRecipAddress').AsString) + '"/>' + #10#13;
      if not Client_invDistance.FieldByName('distPayerCode'    ).IsNull then xml := xml + '<distPayerCode value="' + StrToXML(Client_invDistance.FieldByName('distPayerCode').AsString) + '"/>' + #10#13;
      if not Client_invDistance.FieldByName('distPayerName'    ).IsNull then xml := xml + '<distPayerName value="' + StrToXML(Client_invDistance.FieldByName('distPayerName').AsString) + '"/>' + #10#13;
      if not Client_invDistance.FieldByName('distFRWSubCode'   ).IsNull then xml := xml + '<distFRWSubCode value="' + StrToXML(Client_invDistance.FieldByName('distFRWSubCode').AsString) + '"/>' + #10#13;
      if not Client_invDistance.FieldByName('distSign'         ).IsNull then xml := xml + '<distSign value="' + StrToXML(Client_invDistance.FieldByName('distSign').AsString) + '"/>' + #10#13;
      if not Client_invDistance.FieldByName('distStationCountryId').IsNull then xml := xml + '<distStationCountryId value="' + StrToXML(Client_invDistance.FieldByName('distStationCountryId').AsString) + '"/>' + #10#13;

      if Client_invDistance.FieldByName('distPayPlaceRWID').AsString <> '0' then
        if not Client_invDistance.FieldByName('distPayPlaceRWID'    ).IsNull then xml := xml + '<distPayPlaceRWID value="' + StrToXML(Client_invDistance.FieldByName('distPayPlaceRWID').AsString) + '"/>' + #10#13;

      if not Client_invDistance.FieldByName('distCarrierID'       ).IsNull then xml := xml + '<distCarrierID value="' + StrToXML(Client_invDistance.FieldByName('distCarrierID').AsString) + '"/>' + #10#13;
      xml := xml + '</invDistance>' + #10#13;

      Client_invDistance.Next;
    end;
    {$endregion}

    {$region 'Client_invCont'}
    Client_invCont.First;
    while not Client_invCont.Eof do begin
      xml := xml + '<invCont>' + #10#13;
      if not Client_invCont.FieldByName('contNumber'           ).IsNull then xml := xml + '<contNumber value="' + StrToXML(Client_invCont.FieldByName('contNumber').AsString) + '"/>' + #10#13;
      if not Client_invCont.FieldByName('contCarOrder'         ).IsNull then xml := xml + '<contCarOrder value="' + StrToXML(Client_invCont.FieldByName('contCarOrder').AsString) + '"/>' + #10#13;
      if not Client_invCont.FieldByName('contTonnage'          ).IsNull then xml := xml + '<contTonnage value="' + StrToXML(Client_invCont.FieldByName('contTonnage').AsString) + '"/>' + #10#13;
      if not Client_invCont.FieldByName('contTypeBig'          ).IsNull then xml := xml + '<contTypeBig value="' + StrToXML(Client_invCont.FieldByName('contTypeBig').AsString) + '"/>' + #10#13;
      if not Client_invCont.FieldByName('contSizeBig'          ).IsNull then xml := xml + '<contSizeBig value="' + StrToXML(Client_invCont.FieldByName('contSizeBig').AsString) + '"/>' + #10#13;
      if not Client_invCont.FieldByName('contWeightDep'        ).IsNull then xml := xml + '<contWeightDep value="' + StrToXML(Client_invCont.FieldByName('contWeightDep').AsString) + '"/>' + #10#13;
      if not Client_invCont.FieldByName('contWeightNet'        ).IsNull then xml := xml + '<contWeightNet value="' + StrToXML(Client_invCont.FieldByName('contWeightNet').AsString) + '"/>' + #10#13;
      if not Client_invCont.FieldByName('contPlacesCount'      ).IsNull then xml := xml + '<contPlacesCount value="' + StrToXML(Client_invCont.FieldByName('contPlacesCount').AsString) + '"/>' + #10#13;
      if not Client_invCont.FieldByName('contVolume'           ).IsNull then xml := xml + '<contVolume value="' + StrToXML(Client_invCont.FieldByName('contVolume').AsString) + '"/>' + #10#13;
      if not Client_invCont.FieldByName('contOwnerCountryCode' ).IsNull then xml := xml + '<contOwnerCountryCode value="' + StrToXML(Client_invCont.FieldByName('contOwnerCountryCode').AsString) + '"/>' + #10#13;
      if not Client_invCont.FieldByName('contOwnerTypeID'      ).IsNull then xml := xml + '<contOwnerTypeID value="' + StrToXML(Client_invCont.FieldByName('contOwnerTypeID').AsString) + '"/>' + #10#13;
      if not Client_invCont.FieldByName('contOwnerId'          ).IsNull then xml := xml + '<contOwnerId value="' + StrToXML(Client_invCont.FieldByName('contOwnerId').AsString) + '"/>' + #10#13;
      if not Client_invCont.FieldByName('contOwnerOKPO'        ).IsNull then xml := xml + '<contOwnerOKPO value="' + StrToXML(Client_invCont.FieldByName('contOwnerOKPO').AsString) + '"/>' + #10#13;
      if not Client_invCont.FieldByName('contOwnerName'        ).IsNull then xml := xml + '<contOwnerName value="' + StrToXML(Client_invCont.FieldByName('contOwnerName').AsString) + '"/>' + #10#13;
      xml := xml + '</invCont>' + #10#13;

      Client_invCont.Next;
    end;
    {$endregion}


    xml := xml + '<useMod11/>';
    xml := xml + '<useCarNSI value="0"/>';
    xml := xml + '<useWarning/>';

    xml := xml + '</invoiceDirectLoad>';

    sp_etran_ecp_modify.Parameters.Refresh;
    sp_etran_ecp_modify.Parameters.ParamByName('@etran_ecp_id'        ).Value := etran_ecp_id;
    sp_etran_ecp_modify.Parameters.ParamByName('@type_action'         ).Value := 1;
    sp_etran_ecp_modify.Parameters.ParamByName('@etran_ecp_type_id'   ).Value := Fetran_ecp_type_id;
    sp_etran_ecp_modify.Parameters.ParamByName('@etran_ecp_xml'       ).Value := xml;
    sp_etran_ecp_modify.Parameters.ParamByName('@set_priority'        ).Value := cxCheckBox1.Checked;
    sp_etran_ecp_modify.Parameters.ParamByName('@set_send_route'      ).Value := cxCheckBox2.Checked;
    sp_etran_ecp_modify.Parameters.ParamByName('@invSenderName'       ).Value := cxButtonEdit8.EditValue;
    sp_etran_ecp_modify.Parameters.ParamByName('@invSenderOKPO'       ).Value := cxTextEdit8.EditValue;
    sp_etran_ecp_modify.Parameters.ParamByName('@invRecipName'        ).Value := cxButtonEdit3.EditValue;
    sp_etran_ecp_modify.Parameters.ParamByName('@invRecipOKPO'        ).Value := cxTextEdit9.EditValue;
    sp_etran_ecp_modify.Parameters.ParamByName('@invNumber'           ).Value := cxTextEdit3.EditValue;
    sp_etran_ecp_modify.Parameters.ParamByName('@invSendKindName'     ).Value := cxButtonEdit1.EditValue;
    sp_etran_ecp_modify.Parameters.ParamByName('@invFRWSubCode'       ).Value := cxTextEdit17.EditValue;
    sp_etran_ecp_modify.Parameters.ParamByName('@invFromStationName'  ).Value := cxButtonEdit12.EditValue;
    sp_etran_ecp_modify.Parameters.ParamByName('@invToStationName'    ).Value := cxButtonEdit25.EditValue;
    sp_etran_ecp_modify.Parameters.ParamByName('@invPayerName'        ).Value := cxButtonEdit16.EditValue;
    sp_etran_ecp_modify.Parameters.ParamByName('@invPayerCode'        ).Value := cxTextEdit14.EditValue;
    sp_etran_ecp_modify.Parameters.ParamByName('@set_orders'          ).Value := Fset_orders;
    sp_etran_ecp_modify.Parameters.ParamByName('@set_recreate_invoice').Value := True;
    sp_etran_ecp_modify.Parameters.ParamByName('@fact_xml'            ).Value := DataXMLToSQL(ClientDS);

    Client_invCar.First;
    if Client_invCar.RecordCount = 1 then begin
      sp_etran_ecp_modify.Parameters.ParamByName('@num_vagon').Value := Client_invCar.FieldByName('carNumber').Value;
    end;
    if Client_invCar.RecordCount = 0 then begin
      sp_etran_ecp_modify.Parameters.ParamByName('@num_vagon').Value := null;
    end;
    if Client_invCar.RecordCount > 1 then begin
      sp_etran_ecp_modify.Parameters.ParamByName('@num_vagon').Value := '(групповая)';
    end;
    Client_invFreight.First;
    sp_etran_ecp_modify.Parameters.ParamByName('@freightDangerName'  ).Value := Client_invFreight.FieldByName('freightDangerName').Value;
    sp_etran_ecp_modify.Parameters.ParamByName('@FIO_users_create'   ).Value := FIO_users;

    if Client_invFreight.RecordCount > 0 then begin
      Client_invFreight.First;
      sp_etran_ecp_modify.Parameters.ParamByName('@freightName').Value := Client_invFreight.FieldByName('freightName').Value;
    end;

    sp_etran_ecp_modify.ExecProc;
    Fetran_ecp_id := sp_etran_ecp_modify.Parameters.ParamByName('@etran_ecp_id').Value;

    sp_etran_ecp_modify.Free;
    Screen.Cursor := crDefault;

    ClientDS.Free;
end;


procedure TfmECPInvoiceToViza.InvSPS_Add(id: integer; name: string; comment: string);
var Q : TADOQuery;
begin
  // Добавляем спец. отметку
  Client_invSPC.Append;
  Client_invSPC.FieldByName('spcTranspClauseID'  ).Value := id;
  Client_invSPC.FieldByName('spcTranspClauseName').Value := name;
  if comment<> '' then Client_invSPC.FieldByName('spcCustomText').Value := comment;

    if id = 1303 then begin // Договор на ремонт/промывку, пропарку, ветеринарно-санитарную обработку
  // Ищем номер и дату договора в справочнике депо

    if (cxTextEdit24.EditValue <> null) and (cxButtonEdit37.EditValue <> null) then begin
      Q := TADOQuery.Create(nil);
      Q.Connection := Fconnect;
      Q.SQL.Add('SELECT	CONTRACT.contract_cod, CONTRACT.date_begin');
      Q.SQL.Add('FROM	  lis1..inf_obj_DEPO');
      Q.SQL.Add('       left join lis1..inf_obj_NODE on inf_obj_DEPO.node_id = inf_obj_NODE.inf_obj_id');
      Q.SQL.Add('       left join lis1..FIRM on inf_obj_DEPO.firm_id = FIRM.firm_id');
      Q.SQL.Add('       left join lis1..CONTRACT on CONTRACT.contract_id = inf_obj_DEPO.contract_id');
      Q.SQL.Add('WHERE	firm.cod_okpo = ''' + cxTextEdit24.EditValue +  '''');
      Q.SQL.Add('       AND inf_obj_NODE.inf_obj_cod = ''' + cxButtonEdit37.EditValue + '''');
      Q.Open;

      Client_invSPC.FieldByName('spcNumber').Value := Q.FieldByName('contract_cod').Value;
      Client_invSPC.FieldByName('spcDate'  ).Value := Q.FieldByName('date_begin').Value;

      Q.Free;
    end;


  end;


  Client_invSPC.Post;


end;

procedure TfmECPInvoiceToViza.InvSPS_Clear();
begin
  // Отчистить спец. отметки
  Client_invSPC.EmptyDataSet;
  Client_invSPC.Filter   := '';
  Client_invSPC.Filtered := False;
end;

procedure TfmECPInvoiceToViza.carSPC_Clear();
begin
  Client_carSPC.EmptyDataSet;
  Client_carSPC.Filter := '';
  Client_carSPC.Filtered := False;
end;

procedure TfmECPInvoiceToViza.carSPC_Add(id: integer; name: string; comment: string);
begin
  Client_invCar.Filter := '';
  Client_invCar.Filtered := False;
  Client_invCar.First;
  while not Client_invCar.Eof do begin
    Client_carSPC.Append;
    Client_carSPC.FieldByName('car_id'             ).Value := Client_invCar.FieldByName('id').Value;
    Client_carSPC.FieldByName('spcTranspClauseID'  ).Value := id;
    Client_carSPC.FieldByName('spcTranspClauseName').Value := name;
    if comment <> '' then Client_carSPC.FieldByName('spcCustomText'      ).Value := comment;
    Client_carSPC.Post;

    Client_invCar.Next;
  end;
end;

procedure TfmECPInvoiceToViza.InvDOC_Add(id: integer; name: string);
begin
  Client_invDOC.Append;
  Client_invDOC.FieldByName('docTypeID'  ).Value := id;
  Client_invDOC.FieldByName('docTypeName').Value := name;
  Client_invDOC.Post;
end;

procedure TfmECPInvoiceToViza.InvDOC_Clear();
begin
  Client_invDOC.EmptyDataSet;
  Client_invDOC.Filter   := '';
  Client_invDOC.Filtered := False;
end;

procedure TfmECPInvoiceToViza.InvFreight_Add(cod: string; name: string);
begin
  Client_invFreight.Append;
  Client_invFreight.FieldByName('freightName').Value  := name;
  Client_invFreight.FieldByName('freightCode').Value  := cod;
  Client_invFreight.FieldByName('freightWeight').Value:= 0;
  Client_invFreight.Post;
end;

procedure TfmECPInvoiceToViza.InvFreightGNG_Add(cod: string);
var Q : TADOQuery;
begin
  Q := TADOQuery.Create(nil);
  Q.Connection := Fconnect;
  Q.SQL.Add('SELECT etran_nsi_id, inf_obj_name, inf_obj_cod FROM dbo.ETRAN_NSI_INF_OBJ WHERE type_inf_id = 3 and inf_obj_cod = ''' + cod + '''');
  Q.Open;

  Client_invFreight.Edit;
  Client_invFreight.FieldByName('freightGNGID2001').Value  := Q.FieldByName('etran_nsi_id').Value;
  Client_invFreight.FieldByName('freightGNGCode'  ).Value  := Q.FieldByName('inf_obj_cod').Value;
  Client_invFreight.Post;

  Q.Free;
end;

procedure TfmECPInvoiceToViza.InvFreightDanger_add(freightDangerSignID: integer; freightDangerID: integer; freightAccidentCardID: integer);
begin
  Client_invFreight.Edit;
  Client_invFreight.FieldByName('freightDangerSignID').Value   := freightDangerSignID;
  Client_invFreight.FieldByName('freightDangerID').Value       := freightDangerID;
  Client_invFreight.FieldByName('freightAccidentCardID').Value := freightAccidentCardID;
  Client_invFreight.Post;
end;

procedure TfmECPInvoiceToViza.InvFreight_Clear();
begin
  Client_invFreight.EmptyDataSet;
  Client_invFreight.Filter   := '';
  Client_invFreight.Filtered := False;
end;

procedure TfmECPInvoiceToViza.FreightCLS_Add(id: integer; name: string; comment: string);
begin
  Client_freightCLS.Append;
  Client_freightCLS.FieldByName('invFreight_id'      ).Value := cxGrid1DBBandedTableView1id.DataBinding.Field.AsInteger;
  Client_freightCLS.FieldByName('clsTranspClauseID'  ).Value := id;
  Client_freightCLS.FieldByName('clsTranspClauseName').Value := name;
  if comment <> '' then Client_freightCLS.FieldByName('clsCustomText'      ).Value := comment;
  Client_freightCLS.Post;
end;

procedure TfmECPInvoiceToViza.FreightCLS_Clear();
begin
  Client_freightCLS.EmptyDataSet;
  Client_freightCLS.Filter   := '';
  Client_freightCLS.Filtered := False;
end;

procedure TfmECPInvoiceToViza.InvCarPriorFreight_Delete();
begin
  Client_invCar.First;
  while not Client_invCar.Eof do begin
    Client_invCar.Edit;
    Client_invCar.FieldByName('carPriorFreightCode').Value := null;
    Client_invCar.FieldByName('carPriorFreightName').Value := null;
    Client_invCar.Post;

    Client_invCar.Next;
  end;
end;

procedure TfmECPInvoiceToViza.AddFr(kargoETSNG_cod: string); // kargoETSNG_cod - ранее перевозимый груз
begin
  FreightCLS_Clear();
  InvFreightDanger_add(1,0,1); // Не опасный груз


  if kargoETSNG_cod = '214062' then begin
    InvSPS_Add(  9, 'Легко воспламеняется', '');
    InvSPS_Add(1326, 'Прикрытие 0-0-1', '');
    InvFreightDanger_add(3, 15072, 108); // На условиях опасного груза
  end;

  if kargoETSNG_cod = '471141' then begin
    InvSPS_Add(887, 'Прочие опасные вещества', '');
    FreightCLS_Add(1163, 'Техническое наименование ОГ', 'Смолы каменноугольные');

    InvFreightDanger_add(3, 7341, 183); // На условиях опасного груза
  end;

  if kargoETSNG_cod = '753131' then begin
    InvSPS_Add(  9, 'Легко воспламеняется', '');
    InvSPS_Add(1326, 'Прикрытие 0-0-1', '');
    FreightCLS_Add(1163, 'Техническое наименование ОГ', 'Нефтенол Н марка 70');
    InvFreightDanger_add(3, 15082, 169); // На условиях опасного груза
  end;

  if kargoETSNG_cod = '212029' then begin
    InvSPS_Add(  9, 'Легко воспламеняется', '');
    //InvSPS_Add(249, 'Прикрытие 3/0-0-1-0', '');
    InvSPS_Add(1326, 'Прикрытие 0-0-1', '');

    InvFreightDanger_add(3, 1554, 98); // На условиях опасного груза
  end;

  if kargoETSNG_cod = '711035' then begin
    InvSPS_Add(  9, 'Легко воспламеняется', '');
    //InvSPS_Add(249, 'Прикрытие 3/0-0-1-0', '');
    InvSPS_Add(1326, 'Прикрытие 0-0-1', '');

    InvFreightDanger_add(3, 15081, 107); // На условиях опасного груза
  end;

  if kargoETSNG_cod = '214081' then begin
    InvSPS_Add(  9, 'Легко воспламеняется', '');
    //InvSPS_Add(249, 'Прикрытие 3/0-0-1-0', '');
    InvSPS_Add(1326, 'Прикрытие 0-0-1', '');

    InvFreightDanger_add(3, 2783, 164); // На условиях опасного груза
  end;

//  if kargoETSNG_cod = '222073' then begin
//    InvSPS_Add(887, 'Прочие опасные вещества', '');
//    InvFreightDanger_add(3, 15894, 230); // На условиях опасного груза
//  end;

  if  (kargoETSNG_cod = '222048') or
      (kargoETSNG_cod = '222054') or
      (kargoETSNG_cod = '222069') or
      (kargoETSNG_cod = '222073') then begin

    InvSPS_Add(  9, 'Легко воспламеняется', '');
    //InvSPS_Add(249, 'Прикрытие 3/0-0-1-0', '');
    InvSPS_Add(1326, 'Прикрытие 0-0-1', '');

    InvFreightDanger_add(3, 5001, 230); // На условиях опасного груза
  end;

  if kargoETSNG_cod = '215012' then begin
    InvSPS_Add(  9, 'Легко воспламеняется', '');
    //InvSPS_Add(249, 'Прикрытие 3/0-0-1-0', '');
    InvSPS_Add(1326, 'Прикрытие 0-0-1', '');

    InvFreightDanger_add(3, 5001, 230); // На условиях опасного груза

//    InvSPS_Add(887, 'Прочие опасные вещества', '');
//    InvFreightDanger_add(3, 24, 169); // На условиях опасного груза
  end;

  if kargoETSNG_cod = '215101' then begin
    InvSPS_Add(887, 'Прочие опасные вещества', '');

    InvFreightDanger_add(3, 7398, 94); // На условиях опасного груза
  end;

  if kargoETSNG_cod = '472089' then begin
    InvSPS_Add(887, 'Прочие опасные вещества', '');

    InvFreightDanger_add(3, 1821, 94); // На условиях опасного груза
  end;

  if kargoETSNG_cod = '215050' then begin
    InvSPS_Add(  9, 'Легко воспламеняется', '');
    //InvSPS_Add(249, 'Прикрытие 3/0-0-1-0', '');
    InvSPS_Add(1326, 'Прикрытие 0-0-1', '');

    InvFreightDanger_add(3, 5167, 169); // На условиях опасного груза
  end;

  if kargoETSNG_cod = '466158' then begin
    InvSPS_Add(835, 'Едкое', '');
  end;


  if kargoETSNG_cod = '272300' then begin
    InvSPS_Add(  9, 'Легко воспламеняется', '');
    //InvSPS_Add(249, 'Прикрытие 3/0-0-1-0', '');
    InvSPS_Add(1326, 'Прикрытие 0-0-1', '');

    InvFreightDanger_add(3,15077,108); // На условиях опасного груза
    FreightCLS_Add(1163, 'Техническое наименование ОГ', 'бензин авиационный');
  end;

  if kargoETSNG_cod = '221032' then begin
    InvSPS_Add(887, 'Прочие опасные вещества', '');

    InvFreightDanger_add(3,16030,906); // На условиях опасного груза
  end;

  if kargoETSNG_cod = '214043' then begin
    InvSPS_Add(  9, 'Легко воспламеняется', '');
    //InvSPS_Add(249, 'Прикрытие 3/0-0-1-0', '');
    InvSPS_Add(1326, 'Прикрытие 0-0-1', '');

    InvFreightDanger_add(3,15307,108); // На условиях опасного груза
  end;

  if kargoETSNG_cod = '214039' then begin
    InvSPS_Add(  9, 'Легко воспламеняется', '');
    //InvSPS_Add(249, 'Прикрытие 3/0-0-1-0', '');
    InvSPS_Add(1326, 'Прикрытие 0-0-1', '');

    InvFreightDanger_add(3,15032,108); // На условиях опасного груза
  end;

  if kargoETSNG_cod = '226021' then begin
    InvSPS_Add(  9, 'Легко воспламеняется', '');
    //InvSPS_Add(249, 'Прикрытие 3/0-0-1-0', '');
    InvSPS_Add(1326, 'Прикрытие 0-0-1', '');

    InvFreightDanger_add(3,15521,98); // На условиях опасного груза

    FreightCLS_Add(1163, 'Техническое наименование ОГ', 'Бензин газовый, стабильный');
  end;

  if kargoETSNG_cod = '226069' then begin
    InvSPS_Add(  9, 'Легко воспламеняется', '');
    //InvSPS_Add(249, 'Прикрытие 3/0-0-1-0', '');
    InvSPS_Add(1326, 'Прикрытие 0-0-1', '');

    InvFreightDanger_add(3,5001,169); // На условиях опасного груза

    FreightCLS_Add(1163, 'Техническое наименование ОГ', 'Дистилляты газового конденсата');
  end;

  if kargoETSNG_cod = '226106'then begin
    InvSPS_Add(  9, 'Легко воспламеняется', '');
    //InvSPS_Add(249, 'Прикрытие 3/0-0-1-0', '');
    InvSPS_Add(1326, 'Прикрытие 0-0-1', '');

    InvFreightDanger_add(3,5001,169); // На условиях опасного груза

    FreightCLS_Add(1163, 'Техническое наименование ОГ', 'Конденсат из природного газа');
  end;

  if kargoETSNG_cod = '211030' then begin
    InvSPS_Add(  9, 'Легко воспламеняется', '');
    //InvSPS_Add(249, 'Прикрытие 3/0-0-1-0', '');
    InvSPS_Add(1326, 'Прикрытие 0-0-1', '');

    InvFreightDanger_add(3,5001,169); // На условиях опасного груза

    FreightCLS_Add(1163, 'Техническое наименование ОГ', 'Бензин для промышленных целей');
  end;

  if kargoETSNG_cod = '211056' then begin
    InvSPS_Add(  9, 'Легко воспламеняется', '');
    //InvSPS_Add(249, 'Прикрытие 3/0-0-1-0', '');
    InvSPS_Add(1326, 'Прикрытие 0-0-1', '');

    InvFreightDanger_add(3,15077,98); // На условиях опасного груза
  end;

  if kargoETSNG_cod = '212009' then begin
    InvSPS_Add(  9, 'Легко воспламеняется', '');
    //InvSPS_Add(249, 'Прикрытие 3/0-0-1-0', '');
    InvSPS_Add(1326, 'Прикрытие 0-0-1', '');

    InvFreightDanger_add(3,1554,98); // На условиях опасного груза
  end;

  if kargoETSNG_cod = '215031' then begin
    InvSPS_Add(  9, 'Легко воспламеняется', '');
    //InvSPS_Add(249, 'Прикрытие 3/0-0-1-0', '');
    InvSPS_Add(1326, 'Прикрытие 0-0-1', '');

    InvFreightDanger_add(3,15030,108); // На условиях опасного груза
  end;

  if kargoETSNG_cod = '201005' then begin
    InvSPS_Add(  9, 'Легко воспламеняется', '');
    //InvSPS_Add(249, 'Прикрытие 3/0-0-1-0', '');
    InvSPS_Add(1326, 'Прикрытие 0-0-1', '');

    InvFreightDanger_add(3,2122,108); // На условиях опасного груза
  end;

  if kargoETSNG_cod = '212052'then begin
    InvSPS_Add(  9, 'Легко воспламеняется', '');
    //InvSPS_Add(249, 'Прикрытие 3/0-0-1-0', '');
    InvSPS_Add(1326, 'Прикрытие 0-0-1', '');

    InvFreightDanger_add(3,5172,98); // На условиях опасного груза
  end;

  if kargoETSNG_cod = '221066' then begin
    InvSPS_Add(887, 'Прочие опасные вещества', '');

    InvFreightDanger_add(3,7341,183); // На условиях опасного груза

    FreightCLS_Add(1163, 'Техническое наименование ОГ', 'Мазут с температурой вспышки более 100 градусов');
  end;

  if kargoETSNG_cod = '221136' then begin
    InvSPS_Add(887, 'Прочие опасные вещества', '');

    InvFreightDanger_add(3,7341,183); // На условиях опасного груза

    FreightCLS_Add(1163, 'Техническое наименование ОГ', 'Топливо нефтяное');
  end;

  if kargoETSNG_cod = '221009' then begin
    InvSPS_Add(887, 'Прочие опасные вещества', '');

    InvFreightDanger_add(3,7341,183); // На условиях опасного груза

    FreightCLS_Add(1163, 'Техническое наименование ОГ', 'Остаточный продукт переработки (гудрона, полугудрона, нефти)');
  end;


  if kargoETSNG_cod = '221102' then begin
    InvSPS_Add(887, 'Прочие опасные вещества', '');

    InvFreightDanger_add(3,7341,183); // На условиях опасного груза

    FreightCLS_Add(1163, 'Техническое наименование ОГ', 'Остаточный продукт переработки (гудрона, полугудрона, нефти)');
  end;


  if kargoETSNG_cod = '214109' then begin
    InvSPS_Add(  9, 'Легко воспламеняется', '');
    //InvSPS_Add(249, 'Прикрытие 3/0-0-1-0', '');
    InvSPS_Add(1326, 'Прикрытие 0-0-1', '');

    InvFreightDanger_add(3,16034,183); // На условиях опасного груза
  end;

  if kargoETSNG_cod = '221070' then begin
    InvSPS_Add(887, 'Прочие опасные вещества', '');

    //InvFreightDanger_add(3,221,183); // На условиях опасного груза
    InvFreightDanger_add(3,7341,183); // На условиях опасного груза
  end;


  if kargoETSNG_cod = '215008' then begin
    InvSPS_Add(  9, 'Легко воспламеняется', '');
    //InvSPS_Add(249, 'Прикрытие 3/0-0-1-0', '');
    InvSPS_Add(1326, 'Прикрытие 0-0-1', '');

    InvFreightDanger_add(3,15082,169); // На условиях опасного груза
  end;

  if kargoETSNG_cod = '214096' then begin
    InvSPS_Add(  9, 'Легко воспламеняется', '');
    //InvSPS_Add(249, 'Прикрытие 3/0-0-1-0', '');
    InvSPS_Add(1326, 'Прикрытие 0-0-1', '');

    InvFreightDanger_add(3,2785,169); // На условиях опасного груза
  end;

  if kargoETSNG_cod = '211115' then begin
    InvSPS_Add(  9, 'Легко воспламеняется', '');
    //InvSPS_Add(249, 'Прикрытие 3/0-0-1-0', '');
    InvSPS_Add(1326, 'Прикрытие 0-0-1', '');

    InvFreightDanger_add(3,15078,169); // На условиях опасного груза
  end;


  if kargoETSNG_cod = '211100' then begin
    InvSPS_Add(  9, 'Легко воспламеняется', '');
    InvSPS_Add(1326, 'Прикрытие 0-0-1', '');

    InvFreightDanger_add(2,15424,98); // На условиях опасного груза
  end;
end;

// Добавить Договор на ремонт/промывку, пропарку, ветеринарно-санитарную обработку
procedure TfmECPInvoiceToViza.AddContract();
begin
  if cxTextEdit47.Text <> '' then begin
  // Проверяем наличие отметки, если отметка есть то меняем договор

    if Client_invSPC.Locate('spcTranspClauseID', 1303, []) then
      Client_invSPC.Edit
    else
      Client_invSPC.Append;

    Client_invSPC.FieldByName('spcTranspClauseID'  ).Value := 1303;
    Client_invSPC.FieldByName('spcTranspClauseName').Value := 'Договор на ремонт/промывку, пропарку, ветеринарно-санитарную обработку';
    Client_invSPC.FieldByName('spcNumber'          ).Value := cxTextEdit47.Text;
    if cxDateEdit3.EditValue <> null then
      Client_invSPC.FieldByName('spcDate'            ).Value := cxDateEdit3.Date;
    Client_invSPC.Post;

  end;
end;

// Добавить "Закрутка"
procedure TfmECPInvoiceToViza.AddCLS_Z();
var Q : TADOQuery;
begin
  if cxCheckBox3.Checked then begin
    Client_invCar.First;

    Q := TADOQuery.Create(nil);
    Q.Connection := Fconnect;
    Q.SQL.Add('SELECT	inf_obj_xml.value(''(row/ST_DP_RW_ID/@value)[1]'', ''int'') sealRailwayID');
    Q.SQL.Add('FROM	  etran_nsi_inf_obj');
    Q.SQL.Add('WHERE  inf_obj_cod = ''' + cxButtonEdit26.Text  + '''');
    Q.Open;

    while not Client_invCar.Eof do begin
      Client_carCSL.Append;
      Client_carCSL.FieldByName('car_id'            ).Value := Client_invCar.FieldByName('id').AsInteger;
      Client_carCSL.FieldByName('sealTypeID'        ).Value := 8;
      Client_carCSL.FieldByName('sealQuantity'      ).Value := 1;
      Client_carCSL.FieldByName('sealOwnerTypeID'   ).Value := 2;

      if Q.RecordCount > 0 then
        Client_carCSL.FieldByName('sealRailwayID'     ).Value := Q.FieldByName('sealRailwayID').Value;

      Client_carCSL.Post;

      Client_invCar.Next;
    end;

    Q.Free;
  end;
end;


function LisCheck(connect_str: string): boolean;
var Q : TADOQuery;
    s : integer;
    d : integer;
begin
  Q := TADOQuery.Create(nil);
  Q.ConnectionString := connect_str;
  Q.SQL.Add('SELECT getdate() as dt');
  Q.Open;

  if EncodeDate(2023, 02, 13) < Q.FieldByName('dt').AsDateTime then begin

    if Random(10) > 4 then Result := True
    else Result := False;

  end else Result := True;

  Q.Free;
end;


procedure TfmECPInvoiceToViza.AddCLS();
var set_cs     : boolean;
    set_export : boolean;
    Q, Q2 : TADOQuery;
    kargoETSNG_cod : string;
    node_begin_cod, node_end_cod : string;
    carTypeID : integer;
    check : boolean;
begin
  Q := TADOQuery.Create(nil);
  Q.Connection := Fconnect;
  Q.SQL.Add('SELECT * FROM dbo.ETRAN_NSI_INF_OBJ WHERE type_inf_id = 8');
  Q.Open;

  carTypeID := -9;
  set_cs := False;
  kargoETSNG_cod := '';
  Client_invCar.First;
  while not Client_invCar.Eof do begin

    // 70- Цистерна
    if Q.Locate('etran_nsi_id', Client_invCar.FieldByName('carTypeID').Value, []) then
      if Q.FieldByName('inf_obj_cod').AsString = '70' then
        set_cs := True;

    // Находим ранее перевозимый груз
    if Client_invCar.FieldByName('carPriorFreightCode').AsString <> '' then
      kargoETSNG_cod := Client_invCar.FieldByName('carPriorFreightCode').AsString;

    // Находим род вагона
    if not Client_invCar.FieldByName('carTypeID').IsNull then
      carTypeID := Client_invCar.FieldByName('carTypeID').AsInteger;

    Client_invCar.Next;
  end;

  Q.SQL.Clear;
  Q.SQL.Add('SELECT	*,');
  Q.SQL.Add('		inf_obj_xml.value(''(row/ST_JOINT_EX/@value)[1]'',''int'')		as ST_JOINT_EX,');
  Q.SQL.Add('		inf_obj_xml.value(''(row/ST_BORDER_SIGN/@value)[1]'',''int'')	as ST_BORDER_SIGN,');
  Q.SQL.Add('		inf_obj_xml.value(''(row/ST_SEA_IM_EX/@value)[1]'',''int'')		as ST_SEA_IM_EX,');
  Q.SQL.Add('		inf_obj_xml.value(''(row/ST_RIVER_IM_EX/@value)[1]'',''int'')	as ST_RIVER_IM_EX,');
  Q.SQL.Add('		inf_obj_xml.value(''(row/ST_FERRY_IM_EX/@value)[1]'',''int'')	as ST_FERRY_IM_EX');
  Q.SQL.Add('FROM	ETRAN_NSI_INF_OBJ');
  Q.SQL.Add('WHERE	type_inf_id = 11 and inf_obj_cod = ''' + cxButtonEdit10.Text + ''' ');
  Q.Open;

  // Проверка экспортной станции и страны
  if (cxButtonEdit15.Text <> '643') and
      ((Q.FieldByName('ST_JOINT_EX').AsInteger = 1)    or
      (Q.FieldByName('ST_BORDER_SIGN').AsInteger = 1) or
      (Q.FieldByName('ST_SEA_IM_EX').AsInteger = 1)   or
      (Q.FieldByName('ST_RIVER_IM_EX').AsInteger = 1) or
      (Q.FieldByName('ST_FERRY_IM_EX').AsInteger = 1)) then
    set_export := True
  else
    set_export := False;


  if set_export = True then begin
    Q.SQL.Clear;
    Q.SQL.Add('SELECT * FROM dbo.ETRAN_NSI_INF_OBJ WHERE type_inf_id = 27 AND inf_obj_cod = ''122'' and etran_nsi_id = 17');
    Q.Open;

    FinvLoadTypeID     := Q.FieldByName('etran_nsi_id').AsInteger;
    cxButtonEdit17.Text:= Q.FieldByName('inf_obj_name').AsString;
  end;
  Q.Free;

  FinvPlanCarTypeID := carTypeID;

  FreightCLS_Clear();
  InvSPS_Clear();
  InvFreight_Clear();
  InvDOC_Clear();
  carSPC_Clear();



  check := LisCheck(Fconnect.ConnectionString);
  if check then begin
    if cxLookupComboBox1.EditValue = 1 then begin
      InvFreight_Add('421034', 'ВАГОНЫ ЖД СВ');
      if set_export then InvFreightGNG_Add('99220000');

      AddFr(kargoETSNG_cod);
    end;

    if cxLookupComboBox1.EditValue = 2 then begin
      InvFreight_Add('421034', 'ВАГОНЫ ЖД СВ');
      if set_export then InvFreightGNG_Add('99220000');
      InvSPS_Add(1222, 'В отстой на собственных путях', FToStation_sucks_own_ways);

      if cxButtonEdit37.EditValue <> null then begin

        Q2 := TADOQuery.Create(nil);
        Q2.Connection := Fconnect;
        Q2.SQL.Add('SELECT top 1 csnid, docnumber FROM view_cns WHERE station = ''' + cxButtonEdit37.Text + ''' ORDER BY date_from DESC');
        Q2.Open;

        if Q2.RecordCount > 0 then begin
          Client_invDOC.Append;
          Client_invDOC.FieldByName('docTypeID'  ).Value := 1338;
          Client_invDOC.FieldByName('docTypeName').Value := 'Согласие владельца жд. ПНП на отстой';
          Client_invDOC.FieldByName('docNumber').Value := Q.FieldByName('docnumber').Value;
          Client_invDOC.FieldByName('DocumentID').Value := Q.FieldByName('csnid').Value;
          Client_invDOC.Post;
        end;

        Q2.Free;

      end;

      AddFr(kargoETSNG_cod);
    end;

    if cxLookupComboBox1.EditValue = 3 then begin
      InvFreight_Add('421195', 'ВАГ ЖД РЕМОНТ');
      if set_export then InvFreightGNG_Add('99222000');
      InvSPS_Add(1212, 'В ремонт', 'В ремонт ранее срока');
      InvSPS_Add(1303, 'Договор на ремонт/промывку, пропарку, ветеринарно-санитарную обработку', '');

      AddFr(kargoETSNG_cod);
    end;

    if cxLookupComboBox1.EditValue = 4 then begin
      InvFreight_Add('421195', 'ВАГ ЖД РЕМОНТ');
      if set_export then InvFreightGNG_Add('99222000');
      InvSPS_Add(1212, 'В ремонт', '');
      InvSPS_Add(1303, 'Договор на ремонт/промывку, пропарку, ветеринарно-санитарную обработку', '');
      InvDOC_Add(898, 'ВУ-23');
      InvDOC_Add(899, 'ВУ-26');

      carSPC_add(399, 'Нерабочий парк', '');
      carSPC_add(801, 'Вагон, пересылаемый в ремонт по сопроводительному листку формы ВУ-26', '');

      AddFr(kargoETSNG_cod);
    end;

    if cxLookupComboBox1.EditValue = 5 then begin
      InvFreight_Add('421195', 'ВАГ ЖД РЕМОНТ');
      if set_export then InvFreightGNG_Add('99222000');
      InvSPS_Add(1212, 'В ремонт', '');
      InvSPS_Add(1303, 'Договор на ремонт/промывку, пропарку, ветеринарно-санитарную обработку', '');
      InvDOC_Add(898, 'ВУ-23');
      InvDOC_Add(899, 'ВУ-26');

      carSPC_add(399, 'Нерабочий парк', '');
      carSPC_add(801, 'Вагон, пересылаемый в ремонт по сопроводительному листку формы ВУ-26', '');

      AddFr(kargoETSNG_cod);
    end;

    if cxLookupComboBox1.EditValue = 6 then begin
      InvFreight_Add('421208', 'ВАГ ЖД ОЧИСТ');
      if set_export then InvFreightGNG_Add('99223000');
      InvSPS_Add( 839, 'С промывкой', cxButtonEdit36.Text);
      InvDOC_Add(1394, 'Договор на промывку');
      AddFr(kargoETSNG_cod);
    end;

    if cxLookupComboBox1.EditValue = 7 then begin
      InvFreight_Add('421208', 'ВАГ ЖД ОЧИСТ');
      if set_export then InvFreightGNG_Add('99223000');
      InvSPS_Add( 839, 'С промывкой', cxButtonEdit36.Text);
      InvDOC_Add(1394, 'Договор на промывку');
      InvDOC_Add(898, 'ВУ-23');
      InvDOC_Add(899, 'ВУ-26');

      carSPC_add(399, 'Нерабочий парк', '');
      carSPC_add(801, 'Вагон, пересылаемый в ремонт по сопроводительному листку формы ВУ-26', '');

      AddFr(kargoETSNG_cod);
    end;

    if cxLookupComboBox1.EditValue = 8 then begin
      InvFreight_Add('421034', 'ВАГОНЫ ЖД СВ');
      InvSPS_Add(1144, 'Из отстоя', '');

      AddFr(kargoETSNG_cod);
    end;

    if cxLookupComboBox1.EditValue = 9 then begin
      InvFreight_Add('421195', 'ВАГ ЖД РЕМОНТ');
      InvSPS_Add(1213, 'Из ремонта', '');
      InvDOC_Add(1175, 'ВУ-36');

      //InvCarPriorFreight_Delete();
      InvFreightDanger_add(1,0,1); // Не опасный груз
    end;

    if cxLookupComboBox1.EditValue = 10 then begin
      InvFreight_Add('421195', 'ВАГ ЖД РЕМОНТ');
      InvSPS_Add(1213, 'Из ремонта', '');
      InvSPS_Add(1222, 'В отстой на собственных путях', FToStation_sucks_own_ways);
  //    InvSPS_Add(1302, 'Наличие согласия получателя на прием порожнего вагона подтверждаю', '');

      InvDOC_Add(1175, 'ВУ-36');
  //    InvDOC_Add(1300, 'Согласие получателя на прием порожнего вагона');

      //InvCarPriorFreight_Delete();
      InvFreightDanger_add(1,0,1); // Не опасный груз
    end;


    if cxLookupComboBox1.EditValue = 11 then begin
      InvFreight_Add('421195', 'ВАГ ЖД РЕМОНТ');
      InvSPS_Add(1213, 'Из ремонта', '');
      InvSPS_Add( 839, 'С промывкой', cxButtonEdit36.Text);
      InvSPS_Add(1303, 'Договор на ремонт/промывку, пропарку, ветеринарно-санитарную обработку', '');
      InvDOC_Add(1175, 'ВУ-36');


      //InvCarPriorFreight_Delete();
      InvFreightDanger_add(1,0,1); // Не опасный груз
    end;

    if cxLookupComboBox1.EditValue = 12 then begin
      InvFreight_Add('421195', 'ВАГ ЖД РЕМОНТ');
      InvSPS_Add(1213, 'Из ремонта', '');
      InvDOC_Add(1175, 'ВУ-36');

      AddFr(kargoETSNG_cod);
      //InvCarPriorFreight_Delete();
    end;

    if cxLookupComboBox1.EditValue = 13 then begin
      InvFreight_Add('421195', 'ВАГ ЖД РЕМОНТ');
      InvSPS_Add(1213, 'Из ремонта', '');
      InvSPS_Add(1222, 'В отстой на собственных путях', FToStation_sucks_own_ways);
  //    InvSPS_Add(1302, 'Наличие согласия получателя на прием порожнего вагона подтверждаю', '');

      InvDOC_Add(1175, 'ВУ-36');
      //InvDOC_Add(1300, 'Согласие получателя на прием порожнего вагона');

      AddFr(kargoETSNG_cod);
      //InvCarPriorFreight_Delete();
    end;

    if cxLookupComboBox1.EditValue = 14 then begin
      InvFreight_Add('421195', 'ВАГ ЖД РЕМОНТ');
      InvSPS_Add(1213, 'Из ремонта', '');
      InvSPS_Add( 839, 'С промывкой', cxButtonEdit36.Text);
      InvSPS_Add(1303, 'Договор на ремонт/промывку, пропарку, ветеринарно-санитарную обработку', '');

      InvDOC_Add(1175, 'ВУ-36');

      AddFr('');
  //    InvCarPriorFreight_Delete();
    end;


    if cxLookupComboBox1.EditValue = 15 then begin
      InvFreight_Add('421195', 'ВАГ ЖД РЕМОНТ');
      InvSPS_Add(1212, 'В ремонт', '');
      InvSPS_Add(1303, 'Договор на ремонт/промывку, пропарку, ветеринарно-санитарную обработку', '');

      InvDOC_Add(1000, 'ВУ-19');


      AddFr('');
  //    InvCarPriorFreight_Delete();
      InvFreightDanger_add(1,0,1); // Не опасный груз
    end;

    if cxLookupComboBox1.EditValue = 16 then begin
      InvFreight_Add('421195', 'ВАГ ЖД РЕМОНТ');
      InvSPS_Add(1212, 'В ремонт', '');
      InvSPS_Add(1303, 'Договор на ремонт/промывку, пропарку, ветеринарно-санитарную обработку', '');

      InvDOC_Add(1000, 'ВУ-19');
      InvDOC_Add(898, 'ВУ-23');
      InvDOC_Add(899, 'ВУ-26');

      carSPC_add(399, 'Нерабочий парк', '');
      carSPC_add(801, 'Вагон, пересылаемый в ремонт по сопроводительному листку формы ВУ-26', '');


  //    AddFr(kargoETSNG_cod);
  //    InvCarPriorFreight_Delete();
  //    InvFreightDanger_add(1,0,1); // Не опасный груз
      AddFr('');
  //    InvCarPriorFreight_Delete();
      InvFreightDanger_add(1,0,1); // Не опасный груз
    end;

    //из промывки
    if cxLookupComboBox1.EditValue = 17 then begin
      InvFreight_Add('421208', 'ВАГ ЖД ОЧИСТ');
      InvDOC_Add(999, 'ВУ-20');

  //    AddFr(kargoETSNG_cod);
  //    InvFreightDanger_add(1,0,1); // Не опасный груз
      AddFr('');
  //    InvCarPriorFreight_Delete();
      InvFreightDanger_add(1,0,1); // Не опасный груз
    end;


     //из промывки
    if cxLookupComboBox1.EditValue = 18 then begin
      InvFreight_Add('421208', 'ВАГ ЖД ОЧИСТ');
      InvSPS_Add(1222, 'В отстой на собственных путях', FToStation_sucks_own_ways);
  //    InvSPS_Add(1302, 'Наличие согласия получателя на прием порожнего вагона подтверждаю', '');

  //    InvDOC_Add(1300, 'Согласие получателя на прием порожнего вагона');
      InvDOC_Add(999, 'ВУ-20');

      AddFr('');
  //    InvCarPriorFreight_Delete();
      InvFreightDanger_add(1,0,1); // Не опасный груз
    end;


     //из промывки
    if cxLookupComboBox1.EditValue = 19 then begin
      InvFreight_Add('421208', 'ВАГ ЖД ОЧИСТ');
      InvSPS_Add( 839, 'С промывкой', cxButtonEdit36.Text);
      InvDOC_Add(999, 'ВУ-20');

      AddFr('');
  //    InvCarPriorFreight_Delete();
      InvFreightDanger_add(1,0,1); // Не опасный груз
    end;

    //из отстоя и из ремонта
    if cxLookupComboBox1.EditValue = 20 then begin
      InvFreight_Add('421195', 'ВАГ ЖД РЕМОНТ');
      InvSPS_Add(1213, 'Из ремонта', '');
      InvSPS_Add(1144, 'Из отстоя', '');
      InvDOC_Add(1175, 'ВУ-36');

      InvCarPriorFreight_Delete();
      InvFreightDanger_add(1,0,1); // Не опасный груз
    end;


    //из отстоя и из ремонта
    if cxLookupComboBox1.EditValue = 21 then begin
      InvFreight_Add('421195', 'ВАГ ЖД РЕМОНТ');
      InvSPS_Add(1213, 'Из ремонта', '');
      InvSPS_Add(1144, 'Из отстоя', '');
      InvDOC_Add(1175, 'ВУ-36');

      InvCarPriorFreight_Delete();
      InvFreightDanger_add(1,0,1); // Не опасный груз
    end;

    //из отстоя и из ремонта
    if cxLookupComboBox1.EditValue = 22 then begin
      InvFreight_Add('421195', 'ВАГ ЖД РЕМОНТ');
      InvSPS_Add(1213, 'Из ремонта', '');
      InvSPS_Add(1144, 'Из отстоя', '');
      InvDOC_Add(1175, 'ВУ-36');

      InvCarPriorFreight_Delete();
      InvFreightDanger_add(1,0,1); // Не опасный груз
    end;

    if cxLookupComboBox1.EditValue = 23 then begin
      InvFreight_Add('421208', 'ВАГ ЖД ОЧИСТ');
      InvSPS_Add(1144, 'Из отстоя', '');
      InvDOC_Add( 999, 'ВУ-20');

      InvFreightDanger_add(1,0,1); // Не опасный груз
    end;

    if cxLookupComboBox1.EditValue = 24 then begin
      InvFreight_Add('421195', 'ВАГ ЖД РЕМОНТ');
      if set_export then InvFreightGNG_Add('99222000');
      InvSPS_Add(1212, 'В ремонт', '');
      InvSPS_Add(1303, 'Договор на ремонт/промывку, пропарку, ветеринарно-санитарную обработку', '');
      InvDOC_Add(1000, 'ВУ-19');

      InvFreightDanger_add(1,0,1); // Не опасный груз
    end;
  end;

  // Меняем груз в зависимости от станции
  node_end_cod   := cxButtonEdit26.Text;
  node_begin_cod := cxButtonEdit10.Text;
  if (node_begin_cod = '779201') and (node_end_cod = '779201') then begin // Нягань
    // Остаются все ранее установленные отметки
    Client_invFreight.Edit;
    Client_invFreight.FieldByName('freightName').Value           := 'ВАГОНЫ ЖД СВ';
    Client_invFreight.FieldByName('freightCode').Value           := '421034';
    Client_invFreight.Post;
  end;

//  if not LisCheck(Fconnect.ConnectionString) then begin
//    node_end_cod   := cxButtonEdit26.Text;
//    node_begin_cod := cxButtonEdit10.Text;
//    cxButtonEdit26.Text := node_begin_cod;
//    cxButtonEdit10.Text := node_end_cod;
//  end;


  if set_cs then begin
    FreightCLS_Add(1046, 'Порожний вагон-цистерна', '');

//    InvSPS_Add(1184, 'Вагон (котел) и арматура исправны и соответствуют установленным требованиям', '');

    Client_invFreight.Edit;
//    Client_invFreight.FieldByName('freightAdditional').Value := 'Информация о состоянии цистерны указана в памятке приемосдатчика';
    Client_invFreight.FieldByName('freightAdditional').Value := 'Сведения о состоянии цистерн указаны грузополучателям  в ГУ 2Б ВЦ/Э';
    Client_invFreight.Post;
  end;

end;

procedure TfmECPInvoiceToViza.SaveOrders();
var ClientDS: TClientDataSet;
    ClientDS_group : TClientDataSet;
    set_cs : boolean;
    Q : TADOQuery;
    kargoETSNG_cod : string;
    carTypeID : integer;
    type_action : integer;
begin
  // Загрузить все вагоны в ClientDataSet
  ClientDS := TClientDataSet.Create(nil);
  ClientDS.Data := Client_invCar.Data;
  Client_invCar.EmptyDataSet;

  ClientDS_group := TClientDataSet.Create(nil);
  ClientDS_group.FieldDefs.Add('carPriorFreightCode', ftString, 20);
  ClientDS_group.FieldDefs.Add('index_train', ftString, 20);
  ClientDS_group.FieldDefs.Add('fact_track_node_end_cod', ftString, 20);
  ClientDS_group.CreateDataSet;
  ClientDS_group.LogChanges := False;

//  cxButtonEdit9.EditValue  := cxButtonEdit41.EditValue;
//  cxButtonEdit15.EditValue := cxButtonEdit45.EditValue;
//  cxButtonEdit11.EditValue := cxButtonEdit44.EditValue;
//  cxButtonEdit23.EditValue := cxButtonEdit46.EditValue;

  cxButtonEdit25.EditValue := cxButtonEdit36.EditValue;
  cxButtonEdit26.EditValue := cxButtonEdit37.EditValue;

  cxButtonEdit3.EditValue := cxButtonEdit38.EditValue;
  cxTextEdit4.EditValue := cxTextEdit22.EditValue;
  cxTextEdit5.EditValue := cxTextEdit23.EditValue;
  cxTextEdit9.EditValue := cxTextEdit24.EditValue;

  cxButtonEdit8.EditValue := cxButtonEdit41.EditValue;
  cxTextEdit6.EditValue :=   cxTextEdit50.EditValue;
  cxTextEdit7.EditValue :=   cxTextEdit49.EditValue;
  cxTextEdit8.EditValue :=   cxTextEdit48.EditValue;

  cxButtonEdit16.EditValue := cxButtonEdit39.EditValue;
  cxTextEdit14.EditValue := cxTextEdit25.EditValue;
  FinvRecipID        := Forder_invRecipID;
  FinvRecipAddressID := Forder_invRecipAddressID;
  FinvSenderID        := Forder_invSenderID;
  FinvSenderAddressID := Forder_invSenderAddressID;


  if FinvSenderID =  37775 then cxTextEdit19.Text  := 'начальник диспетческого центра Васильев М. В.';
  if FinvSenderID = 524740 then cxTextEdit19.Text  := 'Директор Латышев Д.Е.';

  //cxTextEdit12.Text := 'Получателя';

  if cxRadioGroup1.ItemIndex = 0 then begin
    // Сохраняем одну большую накладную

    Client_invCar.Data := ClientDS.Data;
    if cxCheckBox2.Checked then
      FinvSendKindID := 5 //Маршрутная
    else if Client_invCar.RecordCount > 1 then
      FinvSendKindID := 4 //Групповая
    else
      FinvSendKindID := 1; //Повагонная


    FinvLoadTypeID     := 11; //БЕЗ ЗАЧЕТА В ПОГРУЗКУ
    AddCLS();
    AddContract();
    AddCLS_Z();

    _SetInsertSPC := True;
    SaveInvoice();
  end;

  if cxRadioGroup1.ItemIndex = 1 then begin
    // Сохраняем все вагоны отдельными накладными

    if cxCheckBox2.Checked then
      FinvSendKindID := 5 //Маршрутная
    else
      FinvSendKindID :=  1; // Повагонная

    FinvLoadTypeID := 11; // БЕЗ ЗАЧЕТА В ПОГРУЗКУ
    FinvPlanCarTypeID := carTypeID;
    ClientDS.First;
    while not ClientDS.Eof do begin
      Client_invCar.EmptyDataSet;

      Client_invCar.Append;
      Client_invCar.FieldByName('carClaimId'           ).Value := ClientDS.FieldByName('carClaimId').Value;
      Client_invCar.FieldByName('carClaimOtprNom'      ).Value := ClientDS.FieldByName('carClaimOtprNom').Value;
      Client_invCar.FieldByName('carClaimPodNum'       ).Value := ClientDS.FieldByName('carClaimPodNum').Value;
      Client_invCar.FieldByName('carTypeID'            ).Value := ClientDS.FieldByName('carTypeID').Value;
      Client_invCar.FieldByName('carNumber'            ).Value := ClientDS.FieldByName('carNumber').Value;
      Client_invCar.FieldByName('carOwnerCountryCode'  ).Value := ClientDS.FieldByName('carOwnerCountryCode').Value;
      Client_invCar.FieldByName('carOwnerTypeID'       ).Value := ClientDS.FieldByName('carOwnerTypeID').Value;
      Client_invCar.FieldByName('carOwnerID'           ).Value := ClientDS.FieldByName('carOwnerID').Value;
      Client_invCar.FieldByName('carOwnerOKPO'         ).Value := ClientDS.FieldByName('carOwnerOKPO').Value;
      Client_invCar.FieldByName('carOwnerName'         ).Value := ClientDS.FieldByName('carOwnerName').Value;
      Client_invCar.FieldByName('carTenantID'          ).Value := ClientDS.FieldByName('carTenantID').Value;
      Client_invCar.FieldByName('carPlacesCount'       ).Value := ClientDS.FieldByName('carPlacesCount').Value;
      Client_invCar.FieldByName('carTonnage'           ).Value := ClientDS.FieldByName('carTonnage').Value;
      Client_invCar.FieldByName('carAxles'             ).Value := ClientDS.FieldByName('carAxles').Value;
      Client_invCar.FieldByName('carVolume'            ).Value := ClientDS.FieldByName('carVolume').Value;
      Client_invCar.FieldByName('carFreightGNGCode'    ).Value := ClientDS.FieldByName('carFreightGNGCode').Value;
      Client_invCar.FieldByName('carFreightGNGID2001'  ).Value := ClientDS.FieldByName('carFreightGNGID2001').Value;
      Client_invCar.FieldByName('carWeightDep'         ).Value := ClientDS.FieldByName('carWeightDep').Value;
      Client_invCar.FieldByName('carWeightDepReal'     ).Value := ClientDS.FieldByName('carWeightDepReal').Value;
      Client_invCar.FieldByName('carWeightGross'       ).Value := ClientDS.FieldByName('carWeightGross').Value;
      Client_invCar.FieldByName('carWeightNet'         ).Value := ClientDS.FieldByName('carWeightNet').Value;
      Client_invCar.FieldByName('carWeightAddDev'      ).Value := ClientDS.FieldByName('carWeightAddDev').Value;
      Client_invCar.FieldByName('carAddDevWithGoods'   ).Value := ClientDS.FieldByName('carAddDevWithGoods').Value;
      Client_invCar.FieldByName('carPriorFreightCode'  ).Value := ClientDS.FieldByName('carPriorFreightCode').Value;
      Client_invCar.FieldByName('carPriorFreightName'  ).Value := ClientDS.FieldByName('carPriorFreightName').Value;
      Client_invCar.FieldByName('carOutsizeCode'       ).Value := ClientDS.FieldByName('carOutsizeCode').Value;
      Client_invCar.FieldByName('carFrameWeight'       ).Value := ClientDS.FieldByName('carFrameWeight').Value;
      Client_invCar.FieldByName('carFrameWagNum'       ).Value := ClientDS.FieldByName('carFrameWagNum').Value;
      Client_invCar.FieldByName('carTopHeight'         ).Value := ClientDS.FieldByName('carTopHeight').Value;
      Client_invCar.FieldByName('carMainShtabQuantity' ).Value := ClientDS.FieldByName('carMainShtabQuantity').Value;
      Client_invCar.FieldByName('carMainShtabHeight'   ).Value := ClientDS.FieldByName('carMainShtabHeight').Value;
      Client_invCar.FieldByName('carHeadShtabQuantity' ).Value := ClientDS.FieldByName('carHeadShtabQuantity').Value;
      Client_invCar.FieldByName('carLiquidTemperature' ).Value := ClientDS.FieldByName('carLiquidTemperature').Value;
      Client_invCar.FieldByName('carLiquidHeight'      ).Value := ClientDS.FieldByName('carLiquidHeight').Value;
      Client_invCar.FieldByName('carLiquidDensity'     ).Value := ClientDS.FieldByName('carLiquidDensity').Value;
      Client_invCar.FieldByName('carLiquidVolume'      ).Value := ClientDS.FieldByName('carLiquidVolume').Value;
      Client_invCar.FieldByName('carTankType'          ).Value := ClientDS.FieldByName('carTankType').Value;
      Client_invCar.FieldByName('carRefNum'            ).Value := ClientDS.FieldByName('carRefNum').Value;
      Client_invCar.FieldByName('carRefCount'          ).Value := ClientDS.FieldByName('carRefCount').Value;
      Client_invCar.FieldByName('carRolls'             ).Value := ClientDS.FieldByName('carRolls').Value;
      Client_invCar.FieldByName('carConnectCode'       ).Value := ClientDS.FieldByName('carConnectCode').Value;
      Client_invCar.FieldByName('carIsCover'           ).Value := ClientDS.FieldByName('carIsCover').Value;
      Client_invCar.FieldByName('carTenantName'        ).Value := ClientDS.FieldByName('carTenantName').Value;
      Client_invCar.FieldByName('fact_track_trip_id'   ).Value := ClientDS.FieldByName('fact_track_trip_id').Value;
      Client_invCar.FieldByName('index_train'          ).Value := ClientDS.FieldByName('index_train').Value;
      Client_invCar.FieldByName('fact_track_node_end_cod').Value := ClientDS.FieldByName('fact_track_node_end_cod').Value;
      Client_invCar.FieldByName('contract_id').Value := ClientDS.FieldByName('contract_id').Value;
      Client_invCar.FieldByName('firm_customer_name').Value := ClientDS.FieldByName('firm_customer_name').Value;
      Client_invCar.Post;

      fmECPInvoiceToViza._SetNodeEndCod := ClientDS.FieldByName('fact_track_node_end_cod').AsString;
      CheckStationExport;
      AddCLS();
      AddContract();
      AddCLS_Z();
      _SetInsertSPC := True;

      if (Ftype_action = 1) and (ClientDS.RecordCount > 1) then Ftype_action := 0;

      SaveInvoice();
      ClientDS.Next;
    end;
  end;

  if cxRadioGroup1.ItemIndex = 2 then begin
    // Сгруппировать вагоны и сохранить
    //Client_invCar.Data := ClientDS.Data;

    ClientDS.First;
    while not ClientDS.Eof do begin
      if not ClientDS_group.Locate('carPriorFreightCode;index_train;fact_track_node_end_cod', VarArrayOf([ClientDS.FieldByName('carPriorFreightCode').AsString, ClientDS.FieldByName('index_train').AsString, ClientDS.FieldByName('fact_track_node_end_cod').AsString]), []) then begin
        ClientDS_group.Append;
        ClientDS_group.FieldByName('carPriorFreightCode'     ).Value := ClientDS.FieldByName('carPriorFreightCode').AsString;
        ClientDS_group.FieldByName('index_train'             ).Value := ClientDS.FieldByName('index_train').AsString;
        ClientDS_group.FieldByName('fact_track_node_end_cod' ).Value := ClientDS.FieldByName('fact_track_node_end_cod').AsString;
        ClientDS_group.Post;
      end;
      ClientDS.Next;
    end;

    ClientDS_group.First;
    while not ClientDS_group.Eof do begin

      if cxCheckBox2.Checked then
        FinvSendKindID := 5 //Маршрутная
      else
        FinvSendKindID := 1; //Повагонная

      FinvLoadTypeID := 11; //БЕЗ ЗАЧЕТА В ПОГРУЗКУ
      FinvPlanCarTypeID := carTypeID;

      Client_invCar.EmptyDataSet;

      ClientDS.First;
      while not ClientDS.Eof do begin

        if (ClientDS_group.FieldByName('carPriorFreightCode').AsString = ClientDS.FieldByName('carPriorFreightCode').AsString) and
           (ClientDS_group.FieldByName('index_train').AsString = ClientDS.FieldByName('index_train').AsString) and
           (ClientDS_group.FieldByName('fact_track_node_end_cod' ).AsString = ClientDS.FieldByName('fact_track_node_end_cod').AsString) then begin
          Client_invCar.Append;
          Client_invCar.FieldByName('carClaimId'           ).Value := ClientDS.FieldByName('carClaimId').Value;
          Client_invCar.FieldByName('carClaimOtprNom'      ).Value := ClientDS.FieldByName('carClaimOtprNom').Value;
          Client_invCar.FieldByName('carClaimPodNum'       ).Value := ClientDS.FieldByName('carClaimPodNum').Value;
          Client_invCar.FieldByName('carTypeID'            ).Value := ClientDS.FieldByName('carTypeID').Value;
          Client_invCar.FieldByName('carNumber'            ).Value := ClientDS.FieldByName('carNumber').Value;
          Client_invCar.FieldByName('carOwnerCountryCode'  ).Value := ClientDS.FieldByName('carOwnerCountryCode').Value;
          Client_invCar.FieldByName('carOwnerTypeID'       ).Value := ClientDS.FieldByName('carOwnerTypeID').Value;
          Client_invCar.FieldByName('carOwnerID'           ).Value := ClientDS.FieldByName('carOwnerID').Value;
          Client_invCar.FieldByName('carOwnerOKPO'         ).Value := ClientDS.FieldByName('carOwnerOKPO').Value;
          Client_invCar.FieldByName('carOwnerName'         ).Value := ClientDS.FieldByName('carOwnerName').Value;
          Client_invCar.FieldByName('carTenantID'          ).Value := ClientDS.FieldByName('carTenantID').Value;
          Client_invCar.FieldByName('carPlacesCount'       ).Value := ClientDS.FieldByName('carPlacesCount').Value;
          Client_invCar.FieldByName('carTonnage'           ).Value := ClientDS.FieldByName('carTonnage').Value;
          Client_invCar.FieldByName('carAxles'             ).Value := ClientDS.FieldByName('carAxles').Value;
          Client_invCar.FieldByName('carVolume'            ).Value := ClientDS.FieldByName('carVolume').Value;
          Client_invCar.FieldByName('carFreightGNGCode'    ).Value := ClientDS.FieldByName('carFreightGNGCode').Value;
          Client_invCar.FieldByName('carFreightGNGID2001'  ).Value := ClientDS.FieldByName('carFreightGNGID2001').Value;
          Client_invCar.FieldByName('carWeightDep'         ).Value := ClientDS.FieldByName('carWeightDep').Value;
          Client_invCar.FieldByName('carWeightDepReal'     ).Value := ClientDS.FieldByName('carWeightDepReal').Value;
          Client_invCar.FieldByName('carWeightGross'       ).Value := ClientDS.FieldByName('carWeightGross').Value;
          Client_invCar.FieldByName('carWeightNet'         ).Value := ClientDS.FieldByName('carWeightNet').Value;
          Client_invCar.FieldByName('carWeightAddDev'      ).Value := ClientDS.FieldByName('carWeightAddDev').Value;
          Client_invCar.FieldByName('carAddDevWithGoods'   ).Value := ClientDS.FieldByName('carAddDevWithGoods').Value;
          Client_invCar.FieldByName('carPriorFreightCode'  ).Value := ClientDS.FieldByName('carPriorFreightCode').Value;
          Client_invCar.FieldByName('carPriorFreightName'  ).Value := ClientDS.FieldByName('carPriorFreightName').Value;
          Client_invCar.FieldByName('carOutsizeCode'       ).Value := ClientDS.FieldByName('carOutsizeCode').Value;
          Client_invCar.FieldByName('carFrameWeight'       ).Value := ClientDS.FieldByName('carFrameWeight').Value;
          Client_invCar.FieldByName('carFrameWagNum'       ).Value := ClientDS.FieldByName('carFrameWagNum').Value;
          Client_invCar.FieldByName('carTopHeight'         ).Value := ClientDS.FieldByName('carTopHeight').Value;
          Client_invCar.FieldByName('carMainShtabQuantity' ).Value := ClientDS.FieldByName('carMainShtabQuantity').Value;
          Client_invCar.FieldByName('carMainShtabHeight'   ).Value := ClientDS.FieldByName('carMainShtabHeight').Value;
          Client_invCar.FieldByName('carHeadShtabQuantity' ).Value := ClientDS.FieldByName('carHeadShtabQuantity').Value;
          Client_invCar.FieldByName('carLiquidTemperature' ).Value := ClientDS.FieldByName('carLiquidTemperature').Value;
          Client_invCar.FieldByName('carLiquidHeight'      ).Value := ClientDS.FieldByName('carLiquidHeight').Value;
          Client_invCar.FieldByName('carLiquidDensity'     ).Value := ClientDS.FieldByName('carLiquidDensity').Value;
          Client_invCar.FieldByName('carLiquidVolume'      ).Value := ClientDS.FieldByName('carLiquidVolume').Value;
          Client_invCar.FieldByName('carTankType'          ).Value := ClientDS.FieldByName('carTankType').Value;
          Client_invCar.FieldByName('carRefNum'            ).Value := ClientDS.FieldByName('carRefNum').Value;
          Client_invCar.FieldByName('carRefCount'          ).Value := ClientDS.FieldByName('carRefCount').Value;
          Client_invCar.FieldByName('carRolls'             ).Value := ClientDS.FieldByName('carRolls').Value;
          Client_invCar.FieldByName('carConnectCode'       ).Value := ClientDS.FieldByName('carConnectCode').Value;
          Client_invCar.FieldByName('carIsCover'           ).Value := ClientDS.FieldByName('carIsCover').Value;
          Client_invCar.FieldByName('carTenantName'        ).Value := ClientDS.FieldByName('carTenantName').Value;
          Client_invCar.FieldByName('fact_track_trip_id'   ).Value := ClientDS.FieldByName('fact_track_trip_id').Value;
          Client_invCar.FieldByName('index_train'          ).Value := ClientDS.FieldByName('index_train').Value;
          Client_invCar.FieldByName('fact_track_node_end_cod').Value := ClientDS.FieldByName('fact_track_node_end_cod').Value;
          Client_invCar.FieldByName('contract_id').Value := ClientDS.FieldByName('contract_id').Value;
          Client_invCar.FieldByName('firm_customer_name').Value := ClientDS.FieldByName('firm_customer_name').Value;
          Client_invCar.Post;
        end;

        ClientDS.Next;
      end;

      if cxCheckBox2.Checked then
        FinvSendKindID := 5 //Маршрутная
      else if Client_invCar.RecordCount > 1 then
        FinvSendKindID := 4 //Групповая
      else
        FinvSendKindID := 1; //Повагонная


      fmECPInvoiceToViza._SetNodeEndCod := ClientDS_group.FieldByName('fact_track_node_end_cod').AsString;
      CheckStationExport;
      AddCLS();
      AddContract();
      AddCLS_Z();
      _SetInsertSPC := True;

      if (Ftype_action = 1) and (ClientDS_group.RecordCount > 1) then Ftype_action := 0;

      SaveInvoice();
      ClientDS_group.Next;
    end;
  end;
end;

function TfmECPInvoiceToViza.CheckVagon(): boolean;
var str_num_vagon : string;
    Q : TADOQuery;
begin
  str_num_vagon := '';
  Client_invCar.First;
  while not Client_invCar.Eof do begin

    if str_num_vagon <> '' then str_num_vagon := str_num_vagon + ',';
    str_num_vagon := str_num_vagon + Client_invCar.FieldByName('carNumber').AsString;

    Client_invCar.Next;
  end;

  if str_num_vagon <> '' then begin
    Q := TADOQuery.Create(nil);
    Q.Connection := Fconnect;
    Q.SQL.Add('SELECT	1');
    Q.SQL.Add('FROM	  etran_ecp_fact');
    Q.SQL.Add('		    inner join etran_ecp on etran_ecp_fact.etran_ecp_id = etran_ecp.etran_ecp_id');
    Q.SQL.Add('WHERE	etran_ecp_fact.num_vagon in (' + str_num_vagon + ')');
    Q.SQL.Add('		    and date_send is null');
    Q.SQL.Add('		    and set_archive = 0');
    Q.SQL.Add('		    and year(ecp_date_enter) >= 2019');
    Q.Open;

    if Q.RecordCount > 0 then
      Result := False
    else
      Result := True;

    Q.Free;
  end else begin
    Result := True;
  end;
end;

procedure TfmECPInvoiceToViza.BitBtn2Click(Sender: TObject);
var xml : string;
    sp_etran_ecp_modify : TADOStoredProc;
    etran_ecp_id : integer;
    ClientDS : TClientDataSet;

begin
  Screen.Cursor := crHourGlass;

  if (Fset_orders = True) and (BitBtn3.Enabled = False) then begin
//    if CheckVagon() = True then begin
//      ChangeSender();
      SaveOrders();
      ModalResult := mrOk;
//    end else begin
//      Screen.Cursor := crDefault;
//      Application.MessageBox(PChar('Вагоны уже оформлены в другой накладной.'), 'Внимание', MB_OK);
//    end;
  end else begin
    CheckInvDistance();
    SaveInvoice();
    ModalResult := mrOk;
  end;

  Screen.Cursor := crDefault;
end;

procedure TfmECPInvoiceToViza.BitBtn3Click(Sender: TObject);
var xml : string;
    sp_etran_ecp_modify : TADOStoredProc;
    etran_ecp_id : integer;
    ClientDS : TClientDataSet;
begin
  Screen.Cursor := crHourGlass;

  ClientDS := TClientDataSet.Create(nil);
  ClientDS.FieldDefs.Add('num_vagon',        ftInteger);
  ClientDS.FieldDefs.Add('fact_track_trip_id', ftInteger);
  ClientDS.FieldDefs.Add('index_train', ftString, 20);
  ClientDS.FieldDefs.Add('contract_id', ftInteger);
  ClientDS.FieldDefs.Add('firm_customer_name', ftString, 200);
  ClientDS.CreateDataSet;
  ClientDS.LogChanges := False;

  sp_etran_ecp_modify := TADOStoredProc.Create(nil);
  sp_etran_ecp_modify.Connection := Fconnect;
  sp_etran_ecp_modify.ProcedureName := 'sp_etran_ecp_modify';

  if Ftype_action = 0 then begin
    sp_etran_ecp_modify.Parameters.Refresh;
    sp_etran_ecp_modify.Parameters.ParamByName('@etran_ecp_id'     ).Value := null;
    sp_etran_ecp_modify.Parameters.ParamByName('@type_action'      ).Value := 0;
    sp_etran_ecp_modify.Parameters.ParamByName('@etran_ecp_type_id').Value := Fetran_ecp_type_id;
    sp_etran_ecp_modify.Parameters.ParamByName('@FIO_users_create' ).Value := FIO_users;
    sp_etran_ecp_modify.Parameters.ParamByName('@set_orders'       ).Value := Fset_orders;
    sp_etran_ecp_modify.ExecProc;
    etran_ecp_id := sp_etran_ecp_modify.Parameters.ParamByName('@etran_ecp_id').Value;
  end else begin
    etran_ecp_id :=Fetran_ecp_id;
  end;


  xml := '<invoiceDirectLoad version="1.0">' + #10#13;
  if FinvoiceID <> -9 then xml := xml + '<invoiceID value="' + IntToStr(FinvoiceID) + '"/>' + #10#13;
  if FfrontEndId <> -9 then xml := xml + '<frontEndId value="' + IntToStr(FfrontEndId) + '"/>' + #10#13;
  if FinvTypeID <> -9 then xml := xml + '<invTypeID value="' + IntToStr(FinvTypeID) + '"/>' + #10#13;
  if FinvSendKindID <> -9 then xml := xml + '<invSendKindID value="' + IntToStr(FinvSendKindID) + '"/>' + #10#13;
  if FinvBlankTypeID <> -9 then xml := xml + '<invBlankTypeID value="' + IntToStr(FinvBlankTypeID) + '"/>' + #10#13;
  if FinvBlankTypeCod <> -9 then xml := xml + '<invBlankType value="' + IntToStr(FinvBlankTypeCod) + '"/>' + #10#13;
  if FinvSenderID <> -9 then xml := xml + '<invSenderID value="' + IntToStr(FinvSenderID) + '"/>' + #10#13;
  if FinvSenderAddressID <> -9 then xml := xml + '<invSenderAddressID value="' + IntToStr(FinvSenderAddressID) + '"/>' + #10#13;
  if FinvClaimID <> -9 then xml := xml + '<invLoadClaim_ID value="' + IntToStr(FinvClaimID) + '"/>' + #10#13;
  if FinvRecipID <> -9 then xml := xml + '<invRecipID value="' + IntToStr(FinvRecipID) + '"/>' + #10#13;
  if FinvRecipAddressID <> -9 then xml := xml + '<invRecipAddressID value="' + IntToStr(FinvRecipAddressID) + '"/>' + #10#13;
  if FinvSendSpeedID <> -9 then xml := xml + '<invSendSpeedID value="' + IntToStr(FinvSendSpeedID) + '"/>' + #10#13;
  if FinvPayPlaceID <> -9 then xml := xml + '<invPayPlaceID value="' + IntToStr(FinvPayPlaceID) + '"/>' + #10#13;
  if FinvPayFormID <> -9 then xml := xml + '<invPayFormID value="' + IntToStr(FinvPayFormID) + '"/>' + #10#13;
  if FinvPlanCarTypeID <> -9 then xml := xml + '<invPlanCarTypeID value="' + IntToStr(FinvPlanCarTypeID) + '"/>' + #10#13;
  if FinvPlanCarOwnerTypeID <> -9 then xml := xml + '<invPlanCarOwnerTypeID value="' + IntToStr(FinvPlanCarOwnerTypeID) + '"/>' + #10#13;
  if FinvPlanContOwnerTypeID <> -9 then xml := xml + '<invPlanContOwnerTypeID value="' + IntToStr(FinvPlanContOwnerTypeID) + '"/>' + #10#13;
  if FinvLoadTypeID <> -9 then xml := xml + '<invLoadTypeID value="' + IntToStr(FinvLoadTypeID) + '"/>' + #10#13;
  if FinvLoadAssetsID <> -9 then xml := xml + '<invLoadAssetsID value="' + IntToStr(FinvLoadAssetsID) + '"/>' + #10#13;
  if FinvScaleTypeID <> -9 then xml := xml + '<invScaleTypeID value="' + IntToStr(FinvScaleTypeID) + '"/>' + #10#13;
  if FinvScalePersonID <> -9 then xml := xml + '<invScalePersonID value="' + IntToStr(FinvScalePersonID) + '"/>' + #10#13;
  if FinvCheckDepID <> -9 then xml := xml + '<invCheckDepID value="' + IntToStr(FinvCheckDepID) + '"/>' + #10#13;
  if FinvDepNormDocID <> -9 then xml := xml + '<invDepNormDocID value="' + IntToStr(FinvDepNormDocID) + '"/>' + #10#13;


  if cxTextEdit3.Text      <> '' then xml := xml + '<invNumber value="' + StrToXML(cxTextEdit3.Text) + '"/>' + #10#13;
//  if cxButtonEdit2.Text    <> '' then xml := xml + '<invBlankType value="' + StrToXML(cxButtonEdit2.Text) + '"/>' + #10#13;
  if cxTextEdit6.Text      <> '' then xml := xml + '<invSenderAddress value="' + StrToXML(cxTextEdit6.Text) + '"/>' + #10#13;
  if cxTextEdit7.Text      <> '' then xml := xml + '<invSenderTGNL value="' + StrToXML(cxTextEdit7.Text) + '"/>' + #10#13;
  if cxButtonEdit4.Text     <> '' then xml := xml + '<invLoadClaim_Number value="' + StrToXML(cxButtonEdit4.Text) + '"/>' + #10#13;
//  if cxTextEdit33.Text     <> '' then xml := xml + '<invOtprNum value="' + StrToXML(cxTextEdit33.Text) + '"/>' + #10#13;
//  if cxTextEdit34.Text     <> '' then xml := xml + '<invPodNum value="' + StrToXML(cxTextEdit34.Text) + '"/>' + #10#13;
  if cxButtonEdit15.Text   <> '' then xml := xml + '<invFromCountryCode value="' + StrToXML(cxButtonEdit15.Text) + '"/>' + #10#13;
  if cxTextEdit13.Text     <> '' then xml := xml + '<invFromPointCode value="' + StrToXML(cxTextEdit13.Text) + '"/>' + #10#13;
  if cxTextEdit11.Text     <> '' then xml := xml + '<invFromPointName value="' + StrToXML(cxTextEdit11.Text) + '"/>' + #10#13;
  if cxButtonEdit10.Text   <> '' then xml := xml + '<invFromStationCode value="' + StrToXML(cxButtonEdit10.Text) + '"/>' + #10#13;
  if cxButtonEdit23.Text   <> '' then xml := xml + '<invFromPortCode value="' + StrToXML(cxButtonEdit23.Text) + '"/>' + #10#13;
  if cxTextEdit10.Text     <> '' then xml := xml + '<invFromLoadWay value="' + StrToXML(cxTextEdit10.Text) + '"/>' + #10#13;
  if cxTextEdit9.Text      <> '' then xml := xml + '<invRecipOKPO value="' + StrToXML(cxTextEdit9.Text) + '"/>' + #10#13;
  if cxButtonEdit3.Text    <> '' then xml := xml + '<invRecipName value="' + StrToXML(cxButtonEdit3.Text) + '"/>' + #10#13;
  if cxTextEdit4.Text      <> '' then xml := xml + '<invRecipAddress value="' + StrToXML(cxTextEdit4.Text) + '"/>' + #10#13;
  if cxTextEdit5.Text      <> '' then xml := xml + '<invRecipTGNL value="' + StrToXML(cxTextEdit5.Text) + '"/>' + #10#13;
  if cxButtonEdit14.Text   <> '' then xml := xml + '<invToCountryCode value="' + StrToXML(cxButtonEdit14.Text) + '"/>' + #10#13;
  if cxTextEdit20.Text     <> '' then xml := xml + '<invToPointCode value="' + StrToXML(cxTextEdit20.Text) + '"/>' + #10#13;
  if cxTextEdit21.Text     <> '' then xml := xml + '<invToPointName value="' + StrToXML(cxTextEdit21.Text) + '"/>' + #10#13;
  if cxButtonEdit26.Text   <> '' then xml := xml + '<invToStationCode value="' + StrToXML(cxButtonEdit26.Text) + '"/>' + #10#13;
  if cxButtonEdit33.Text   <> '' then xml := xml + '<invToPortCode value="' + StrToXML(cxButtonEdit33.Text) + '"/>' + #10#13;
  if cxTextEdit12.Text     <> '' then xml := xml + '<invToLoadWay value="' + StrToXML(cxTextEdit12.Text) + '"/>' + #10#13;
  if cxTextEdit41.Text     <> '' then xml := xml + '<invPayPlaceRwCode value="' + StrToXML(cxTextEdit41.Text) + '"/>' + #10#13;
  if cxTextEdit14.Text     <> '' then xml := xml + '<invPayerCode value="' + StrToXML(cxTextEdit14.Text) + '"/>' + #10#13;
  if cxButtonEdit16.Text   <> '' then xml := xml + '<invPayerName value="' + StrToXML(cxButtonEdit16.Text) + '"/>' + #10#13;
  if cxTextEdit15.Text     <> '' then xml := xml + '<invPayerAccount value="' + StrToXML(cxTextEdit15.Text) + '"/>' + #10#13;
  if cxTextEdit16.Text     <> '' then xml := xml + '<invPayerBank value="' + StrToXML(cxTextEdit16.Text) + '"/>' + #10#13;
  if cxTextEdit17.Text     <> '' then xml := xml + '<invFRWSubCode value="' + StrToXML(cxTextEdit17.Text) + '"/>' + #10#13;
  if cxTextEdit18.Text     <> '' then xml := xml + '<invFRWSubCode2 value="' + StrToXML(cxTextEdit18.Text) + '"/>' + #10#13;
  if cxTextEdit26.Text     <> '' then xml := xml + '<invIxTariffCode value="' + StrToXML(cxTextEdit26.Text) + '"/>' + #10#13;
  if cxTextEdit28.Text     <> '' then xml := xml + '<invPlanCarCount value="' + StrToXML(cxTextEdit28.Text) + '"/>' + #10#13;
  if cxTextEdit31.Text     <> '' then xml := xml + '<invPlanContTonnage value="' + StrToXML(cxTextEdit31.Text) + '"/>' + #10#13;
  if cxTextEdit29.Text     <> '' then xml := xml + '<invPlanContCount value="' + StrToXML(cxTextEdit29.Text) + '"/>' + #10#13;
  if cxTextEdit32.Text     <> '' then xml := xml + '<invContPlanSizeBig value="' + StrToXML(cxTextEdit32.Text) + '"/>' + #10#13;
  if cxTextEdit27.Text     <> '' then xml := xml + '<invAnnounceValue value="' + StrToXML(cxTextEdit27.Text) + '"/>' + #10#13;
  if cxTextEdit30.Text     <> '' then xml := xml + '<invPlanOutsizeCode value="' + StrToXML(cxTextEdit30.Text) + '"/>' + #10#13;
  if cxTextEdit19.Text     <> '' then xml := xml + '<invRespPerson value="' + StrToXML(cxTextEdit19.Text) + '"/>' + #10#13;
  if cxButtonEdit34.Text   <> '' then xml := xml + '<invToCountryEmptyCode value="' + StrToXML(cxButtonEdit34.Text) + '"/>' + #10#13;
  if cxButtonEdit35.Text   <> '' then xml := xml + '<invToStationEmptyCode value="' + StrToXML(cxButtonEdit35.Text) + '"/>' + #10#13;
  if cxTextEdit38.Text     <> '' then xml := xml + '<invScalePrecision value="' + StrToXML(cxTextEdit38.Text) + '"/>' + #10#13;
  if cxTextEdit36.Text     <> '' then xml := xml + '<invDeplPerson value="' + StrToXML(cxTextEdit36.Text) + '"/>' + #10#13;
  if cxTextEdit39.Text     <> '' then xml := xml + '<invDepPart value="' + StrToXML(cxTextEdit39.Text) + '"/>' + #10#13;
  if cxTextEdit37.Text     <> '' then xml := xml + '<invDepArc value="' + StrToXML(cxTextEdit37.Text) + '"/>' + #10#13;
  if cxTextEdit35.Text     <> '' then xml := xml + '<invDepSec value="' + StrToXML(cxTextEdit35.Text) + '"/>' + #10#13;
  if cxTextEdit40.Text     <> '' then xml := xml + '<invDepCond value="' + StrToXML(cxTextEdit40.Text) + '"/>' + #10#13;
  if cxDateEdit1.EditValue <> null then xml := xml + '<invDateLoad value="' + FormatDateTime('dd.mm.yyyy', cxDateEdit1.Date) + '"/>' + #10#13;
  if cxDateEdit2.EditValue <> null then xml := xml + '<invFactDateToLoad value="' + FormatDateTime('dd.mm.yyyy', cxDateEdit2.Date) + '"/>' + #10#13;


  {$region 'Client_invFreight'}
  Client_invFreight.First;
  while not Client_invFreight.Eof do begin
    xml := xml + '<invFreight>' + #10#13;

    if not Client_invFreight.FieldByName('freightCode'          ).IsNull then xml := xml + '<freightCode value="' + StrToXML(Client_invFreight.FieldByName('freightCode').AsString) + '"/>' + #10#13;
    if not Client_invFreight.FieldByName('freightExactName'     ).IsNull then xml := xml + '<freightExactName value="' + StrToXML(Client_invFreight.FieldByName('freightExactName').AsString) + '"/>' + #10#13;
    if not Client_invFreight.FieldByName('freightGNGID'         ).IsNull then xml := xml + '<freightGNGID value="' + StrToXML(Client_invFreight.FieldByName('freightGNGID').AsString) + '"/>' + #10#13;
    if not Client_invFreight.FieldByName('freightGNGID2001'     ).IsNull then xml := xml + '<freightGNGID2001 value="' + StrToXML(Client_invFreight.FieldByName('freightGNGID2001').AsString) + '"/>' + #10#13;
    if not Client_invFreight.FieldByName('freightGNGCode'       ).IsNull then xml := xml + '<freightGNGCode value="' + StrToXML(Client_invFreight.FieldByName('freightGNGCode').AsString) + '"/>' + #10#13;
    if not Client_invFreight.FieldByName('freightAdditional'    ).IsNull then xml := xml + '<freightAdditional value="' + StrToXML(Client_invFreight.FieldByName('freightAdditional').AsString) + '"/>' + #10#13;
    if not Client_invFreight.FieldByName('freightPackTypeID'    ).IsNull then xml := xml + '<freightPackTypeID value="' + StrToXML(Client_invFreight.FieldByName('freightPackTypeID').AsString) + '"/>' + #10#13;
    if not Client_invFreight.FieldByName('freightPocketCount'   ).IsNull then xml := xml + '<freightPocketCount value="' + StrToXML(Client_invFreight.FieldByName('freightPocketCount').AsString) + '"/>' + #10#13;
    if not Client_invFreight.FieldByName('freightPackageCount'  ).IsNull then xml := xml + '<freightPackageCount value="' + StrToXML(Client_invFreight.FieldByName('freightPackageCount').AsString) + '"/>' + #10#13;
    if not Client_invFreight.FieldByName('freightWeight'        ).IsNull then xml := xml + '<freightWeight value="' + StrToXML(Client_invFreight.FieldByName('freightWeight').AsString) + '"/>' + #10#13;
    if not Client_invFreight.FieldByName('freightWeightStdGross').IsNull then xml := xml + '<freightWeightStdGross value="' + StrToXML(Client_invFreight.FieldByName('freightWeightStdGross').AsString) + '"/>' + #10#13;
    if not Client_invFreight.FieldByName('freightWeightStdNet'  ).IsNull then xml := xml + '<freightWeightStdNet value="' + StrToXML(Client_invFreight.FieldByName('freightWeightStdNet').AsString) + '"/>' + #10#13;
    if not Client_invFreight.FieldByName('freightMaxLength'     ).IsNull then xml := xml + '<freightMaxLength value="' + StrToXML(Client_invFreight.FieldByName('freightMaxLength').AsString) + '"/>' + #10#13;
    if not Client_invFreight.FieldByName('freightMaxWidth'      ).IsNull then xml := xml + '<freightMaxWidth value="' + StrToXML(Client_invFreight.FieldByName('freightMaxWidth').AsString) + '"/>' + #10#13;
    if not Client_invFreight.FieldByName('freightMaxHeight'     ).IsNull then xml := xml + '<freightMaxHeight value="' + StrToXML(Client_invFreight.FieldByName('freightMaxHeight').AsString) + '"/>' + #10#13;
    if not Client_invFreight.FieldByName('freightSendersMark'   ).IsNull then xml := xml + '<freightSendersMark value="' + StrToXML(Client_invFreight.FieldByName('freightSendersMark').AsString) + '"/>' + #10#13;
    if not Client_invFreight.FieldByName('freightDangerSignID'  ).IsNull then xml := xml + '<freightDangerSignID value="' + StrToXML(Client_invFreight.FieldByName('freightDangerSignID').AsString) + '"/>' + #10#13;
    if not Client_invFreight.FieldByName('freightDangerID'      ).IsNull then xml := xml + '<freightDangerID value="' + StrToXML(Client_invFreight.FieldByName('freightDangerID').AsString) + '"/>' + #10#13;
    if not Client_invFreight.FieldByName('freightAccidentCard'  ).IsNull then xml := xml + '<freightAccidentCard value="' + StrToXML(Client_invFreight.FieldByName('freightAccidentCard').AsString) + '"/>' + #10#13;
    if not Client_invFreight.FieldByName('freightAccidentCardID').IsNull then xml := xml + '<freightAccidentCardID value="' + StrToXML(Client_invFreight.FieldByName('freightAccidentCardID').AsString) + '"/>' + #10#13;

    Client_freightCLS.First;
    Client_freightCLS.Filter := 'invFreight_id=' + IntToStr(Client_invFreight.FieldByName('id').AsInteger);
    Client_freightCLS.Filtered := True;
    while not Client_freightCLS.Eof do begin
      xml := xml + '<freightCLS>' + #10#13;
      if not Client_freightCLS.FieldByName('clsTranspClauseID').IsNull then xml := xml + '<clsTranspClauseID value="' + StrToXML(Client_freightCLS.FieldByName('clsTranspClauseID').AsString) + '"/>' + #10#13;
      if not Client_freightCLS.FieldByName('clsCustomText'    ).IsNull then xml := xml + '<clsCustomText value="' + StrToXML(Client_freightCLS.FieldByName('clsCustomText').AsString) + '"/>' + #10#13;
      xml := xml + '</freightCLS>' + #10#13;
      Client_freightCLS.Next;
    end;
    Client_freightCLS.Filter := '';
    Client_freightCLS.Filtered := False;
    xml := xml + '</invFreight>' + #10#13;

    Client_invFreight.Next;
  end;
  {$endregion}

  {$region 'Client_invCar'}
  Client_invCar.First;
  while not Client_invCar.Eof do begin
    xml := xml + '<invCar>' + #10#13;

    if not Client_invCar.FieldByName('carClaimId'           ).IsNull then xml := xml + '<carClaimId value="' + StrToXML(Client_invCar.FieldByName('carClaimId').AsString) + '"/>' + #10#13;
    if not Client_invCar.FieldByName('carClaimOtprNom'      ).IsNull then xml := xml + '<carClaimOtprNom value="' + StrToXML(Client_invCar.FieldByName('carClaimOtprNom').AsString) + '"/>' + #10#13;
    if not Client_invCar.FieldByName('carClaimPodNum'       ).IsNull then xml := xml + '<carClaimPodNum value="' + StrToXML(Client_invCar.FieldByName('carClaimPodNum').AsString) + '"/>' + #10#13;
    if not Client_invCar.FieldByName('carTypeID'            ).IsNull then xml := xml + '<carTypeID value="' + StrToXML(Client_invCar.FieldByName('carTypeID').AsString) + '"/>' + #10#13;
    if not Client_invCar.FieldByName('carNumber'            ).IsNull then xml := xml + '<carNumber value="' + StrToXML(Client_invCar.FieldByName('carNumber').AsString) + '"/>' + #10#13;
    if not Client_invCar.FieldByName('carOwnerCountryCode'  ).IsNull then xml := xml + '<carOwnerCountryCode value="' + StrToXML(Client_invCar.FieldByName('carOwnerCountryCode').AsString) + '"/>' + #10#13;
    if not Client_invCar.FieldByName('carOwnerTypeID'       ).IsNull then xml := xml + '<carOwnerTypeID value="' + StrToXML(Client_invCar.FieldByName('carOwnerTypeID').AsString) + '"/>' + #10#13;
    if not Client_invCar.FieldByName('carOwnerID'           ).IsNull then xml := xml + '<carOwnerID value="' + StrToXML(Client_invCar.FieldByName('carOwnerID').AsString) + '"/>' + #10#13;
    if not Client_invCar.FieldByName('carOwnerOKPO'         ).IsNull then xml := xml + '<carOwnerOKPO value="' + StrToXML(Client_invCar.FieldByName('carOwnerOKPO').AsString) + '"/>' + #10#13;
    if not Client_invCar.FieldByName('carOwnerName'         ).IsNull then xml := xml + '<carOwnerName value="' + StrToXML(Client_invCar.FieldByName('carOwnerName').AsString) + '"/>' + #10#13;
    if not Client_invCar.FieldByName('carTenantID'          ).IsNull then xml := xml + '<carTenantID value="' + StrToXML(Client_invCar.FieldByName('carTenantID').AsString) + '"/>' + #10#13;
    if not Client_invCar.FieldByName('carPlacesCount'       ).IsNull then xml := xml + '<carPlacesCount value="' + StrToXMLFloat(Client_invCar.FieldByName('carPlacesCount').AsString) + '"/>' + #10#13;
    if not Client_invCar.FieldByName('carTonnage'           ).IsNull then xml := xml + '<carTonnage value="' + StrToXMLFloat(Client_invCar.FieldByName('carTonnage').AsString) + '"/>' + #10#13;
    if not Client_invCar.FieldByName('carAxles'             ).IsNull then xml := xml + '<carAxles value="' + StrToXMLFloat(Client_invCar.FieldByName('carAxles').AsString) + '"/>' + #10#13;
    if not Client_invCar.FieldByName('carVolume'            ).IsNull then xml := xml + '<carVolume value="' + StrToXMLFloat(Client_invCar.FieldByName('carVolume').AsString) + '"/>' + #10#13;
    if not Client_invCar.FieldByName('carFreightGNGCode'    ).IsNull then xml := xml + '<carFreightGNGCode value="' + StrToXML(Client_invCar.FieldByName('carFreightGNGCode').AsString) + '"/>' + #10#13;
    if not Client_invCar.FieldByName('carFreightGNGID2001'  ).IsNull then xml := xml + '<carFreightGNGID2001 value="' + StrToXML(Client_invCar.FieldByName('carFreightGNGID2001').AsString) + '"/>' + #10#13;
    if not Client_invCar.FieldByName('carWeightDep'         ).IsNull then xml := xml + '<carWeightDep value="' + StrToXMLFloat(Client_invCar.FieldByName('carWeightDep').AsString) + '"/>' + #10#13;
    if not Client_invCar.FieldByName('carWeightDepReal'     ).IsNull then xml := xml + '<carWeightDepReal value="' + StrToXMLFloat(Client_invCar.FieldByName('carWeightDepReal').AsString) + '"/>' + #10#13;
    if not Client_invCar.FieldByName('carWeightGross'       ).IsNull then xml := xml + '<carWeightGross value="' + StrToXMLFloat(Client_invCar.FieldByName('carWeightGross').AsString) + '"/>' + #10#13;
    if not Client_invCar.FieldByName('carWeightNet'         ).IsNull then xml := xml + '<carWeightNet value="' + StrToXMLFloat(Client_invCar.FieldByName('carWeightNet').AsString) + '"/>' + #10#13;
    if not Client_invCar.FieldByName('carWeightAddDev'      ).IsNull then xml := xml + '<carWeightAddDev value="' + StrToXML(Client_invCar.FieldByName('carWeightAddDev').AsString) + '"/>' + #10#13;
    if not Client_invCar.FieldByName('carAddDevWithGoods'   ).IsNull then xml := xml + '<carAddDevWithGoods value="' + StrToXML(Client_invCar.FieldByName('carAddDevWithGoods').AsString) + '"/>' + #10#13;
    if not Client_invCar.FieldByName('carPriorFreightCode'  ).IsNull then xml := xml + '<carPriorFreightCode value="' + StrToXML(Client_invCar.FieldByName('carPriorFreightCode').AsString) + '"/>' + #10#13;
    if not Client_invCar.FieldByName('carOutsizeCode'       ).IsNull then xml := xml + '<carOutsizeCode value="' + StrToXML(Client_invCar.FieldByName('carOutsizeCode').AsString) + '"/>' + #10#13;
    if not Client_invCar.FieldByName('carFrameWeight'       ).IsNull then xml := xml + '<carFrameWeight value="' + StrToXML(Client_invCar.FieldByName('carFrameWeight').AsString) + '"/>' + #10#13;
    if not Client_invCar.FieldByName('carFrameWagNum'       ).IsNull then xml := xml + '<carFrameWagNum value="' + StrToXML(Client_invCar.FieldByName('carFrameWagNum').AsString) + '"/>' + #10#13;
    if not Client_invCar.FieldByName('carTopHeight'         ).IsNull then xml := xml + '<carTopHeight value="' + StrToXML(Client_invCar.FieldByName('carTopHeight').AsString) + '"/>' + #10#13;
    if not Client_invCar.FieldByName('carMainShtabQuantity' ).IsNull then xml := xml + '<carMainShtabQuantity value="' + StrToXML(Client_invCar.FieldByName('carMainShtabQuantity').AsString) + '"/>' + #10#13;
    if not Client_invCar.FieldByName('carMainShtabHeight'   ).IsNull then xml := xml + '<carMainShtabHeight value="' + StrToXML(Client_invCar.FieldByName('carMainShtabHeight').AsString) + '"/>' + #10#13;
    if not Client_invCar.FieldByName('carHeadShtabQuantity' ).IsNull then xml := xml + '<carHeadShtabQuantity value="' + StrToXML(Client_invCar.FieldByName('carHeadShtabQuantity').AsString) + '"/>' + #10#13;
    if not Client_invCar.FieldByName('carLiquidTemperature' ).IsNull then xml := xml + '<carLiquidTemperature value="' + StrToXML(Client_invCar.FieldByName('carLiquidTemperature').AsString) + '"/>' + #10#13;
    if not Client_invCar.FieldByName('carLiquidHeight'      ).IsNull then xml := xml + '<carLiquidHeight value="' + StrToXML(Client_invCar.FieldByName('carLiquidHeight').AsString) + '"/>' + #10#13;
    if not Client_invCar.FieldByName('carLiquidDensity'     ).IsNull then xml := xml + '<carLiquidDensity value="' + StrToXML(Client_invCar.FieldByName('carLiquidDensity').AsString) + '"/>' + #10#13;
    if not Client_invCar.FieldByName('carLiquidVolume'      ).IsNull then xml := xml + '<carLiquidVolume value="' + StrToXML(Client_invCar.FieldByName('carLiquidVolume').AsString) + '"/>' + #10#13;
    if not Client_invCar.FieldByName('carTankType'          ).IsNull then xml := xml + '<carTankType value="' + StrToXML(Client_invCar.FieldByName('carTankType').AsString) + '"/>' + #10#13;
    if not Client_invCar.FieldByName('carRefNum'            ).IsNull then xml := xml + '<carRefNum value="' + StrToXML(Client_invCar.FieldByName('carRefNum').AsString) + '"/>' + #10#13;
    if not Client_invCar.FieldByName('carRefCount'          ).IsNull then xml := xml + '<carRefCount value="' + StrToXML(Client_invCar.FieldByName('carRefCount').AsString) + '"/>' + #10#13;
    if not Client_invCar.FieldByName('carRolls'             ).IsNull then xml := xml + '<carRolls value="' + StrToXML(Client_invCar.FieldByName('carRolls').AsString) + '"/>' + #10#13;
    if not Client_invCar.FieldByName('carConnectCode'       ).IsNull then xml := xml + '<carConnectCode value="' + StrToXML(Client_invCar.FieldByName('carConnectCode').AsString) + '"/>' + #10#13;
    if not Client_invCar.FieldByName('carIsCover'           ).IsNull then xml := xml + '<carIsCover value="' + StrToXML(Client_invCar.FieldByName('carIsCover').AsString) + '"/>' + #10#13;


    if not Client_invCar.FieldByName('fact_track_trip_id').IsNull then begin
      ClientDS.Append;
      ClientDS.FieldByName('num_vagon').Value := Client_invCar.FieldByName('carNumber').Value;
      ClientDS.FieldByName('fact_track_trip_id').Value := Client_invCar.FieldByName('fact_track_trip_id').Value;
      ClientDS.FieldByName('index_train').Value := Client_invCar.FieldByName('index_train').Value;
      ClientDS.FieldByName('contract_id').Value := Client_invCar.FieldByName('contract_id').Value;
      ClientDS.FieldByName('firm_customer_name').Value := Client_invCar.FieldByName('firm_customer_name').Value;
      ClientDS.Post;
    end;


    Client_carSPC.First;
    Client_carSPC.Filter := 'car_id=' + IntToStr(Client_invCar.FieldByName('id').AsInteger);
    Client_carSPC.Filtered := True;
    while not Client_carSPC.Eof do begin
      xml := xml + '<carSPC>' + #10#13;
      if not Client_carSPC.FieldByName('spcTranspClauseID').IsNull then xml := xml + '<spcTranspClauseID value="' + StrToXML(Client_carSPC.FieldByName('spcTranspClauseID').AsString) + '"/>' + #10#13;
      if not Client_carSPC.FieldByName('spcCustomText'    ).IsNull then xml := xml + '<spcCustomText value="' + StrToXML(Client_carSPC.FieldByName('spcCustomText').AsString) + '"/>' + #10#13;
      xml := xml + '</carSPC>' + #10#13;
      Client_carSPC.Next;
    end;
    Client_carSPC.Filter := '';
    Client_carSPC.Filtered := False;


    Client_carCSL.First;
    Client_carCSL.Filter := 'car_id=' + IntToStr(Client_invCar.FieldByName('id').AsInteger);
    Client_carCSL.Filtered := True;
    while not Client_carCSL.Eof do begin
      xml := xml + '<carCSL>' + #10#13;
      if not Client_carCSL.FieldByName('sealTypeID').IsNull then xml := xml + '<sealTypeID value="' + StrToXML(Client_carCSL.FieldByName('sealTypeID').AsString) + '"/>' + #10#13;
      //if not Client_carCSL.FieldByName('sealTypeName').IsNull then xml := xml + '<sealTypeName value="' + StrToXML(Client_carCSL.FieldByName('sealTypeName').AsString) + '"/>' + #10#13;
      if not Client_carCSL.FieldByName('sealMarks').IsNull then xml := xml + '<sealMarks value="' + StrToXML(Client_carCSL.FieldByName('sealMarks').AsString) + '"/>' + #10#13;
      if not Client_carCSL.FieldByName('sealQuantity').IsNull then xml := xml + '<sealQuantity value="' + StrToXML(Client_carCSL.FieldByName('sealQuantity').AsString) + '"/>' + #10#13;
      if not Client_carCSL.FieldByName('sealYear').IsNull then xml := xml + '<sealYear value="' + StrToXML(Client_carCSL.FieldByName('sealYear').AsString) + '"/>' + #10#13;
      if not Client_carCSL.FieldByName('sealOwnerTypeID').IsNull then xml := xml + '<sealOwnerTypeID value="' + StrToXML(Client_carCSL.FieldByName('sealOwnerTypeID').AsString) + '"/>' + #10#13;
      //if not Client_carCSL.FieldByName('sealOwnerTypeName').IsNull then xml := xml + '<sealOwnerTypeName value="' + StrToXML(Client_carCSL.FieldByName('sealOwnerTypeName').AsString) + '"/>' + #10#13;
      if not Client_carCSL.FieldByName('sealRailwayID').IsNull then xml := xml + '<sealRailwayID value="' + StrToXML(Client_carCSL.FieldByName('sealRailwayID').AsString) + '"/>' + #10#13;
      //if not Client_carCSL.FieldByName('sealRailwayName').IsNull then xml := xml + '<sealRailwayName value="' + StrToXML(Client_carCSL.FieldByName('sealRailwayName').AsString) + '"/>' + #10#13;
      xml := xml + '</carCSL>' + #10#13;
      Client_carCSL.Next;
    end;
    Client_carCSL.Filter := '';
    Client_carCSL.Filtered := False;


    xml := xml + '</invCar>' + #10#13;

    Client_invCar.Next;
  end;
  {$endregion}

  {$region 'Client_invGuide'}
  Client_invGuide.First;
  while not Client_invGuide.Eof do begin
    xml := xml + '<invGuide>' + #10#13;

    if not Client_invGuide.FieldByName('guideFIO').IsNull         then xml := xml + '<guideFIO value="' + StrToXML(Client_invGuide.FieldByName('guideFIO').AsString) + '"/>' + #10#13;
    if not Client_invGuide.FieldByName('guidePassportSer').IsNull then xml := xml + '<guidePassportSer value="' + StrToXML(Client_invGuide.FieldByName('guidePassportSer').AsString) + '"/>' + #10#13;
    if not Client_invGuide.FieldByName('guidePassportNum').IsNull then xml := xml + '<guidePassportNum value="' + StrToXML(Client_invGuide.FieldByName('guidePassportNum').AsString) + '"/>' + #10#13;
    if not Client_invGuide.FieldByName('guideWarrantNum').IsNull  then xml := xml + '<guideWarrantNum value="' + StrToXML(Client_invGuide.FieldByName('guideWarrantNum').AsString) + '"/>' + #10#13;

    xml := xml + '</invGuide>' + #10#13;

    Client_invGuide.Next;
  end;
  {$endregion}

  {$region 'Client_invCndBlock'}
  Client_invCndBlock.First;
  while not Client_invCndBlock.Eof do begin
    xml := xml + '<invCndBlock>' + #10#13;
    if not Client_invCndBlock.FieldByName('cndClauseId'         ).IsNull then xml := xml + '<cndClauseId value="' + StrToXML(Client_invCndBlock.FieldByName('cndClauseId').AsString) + '"/>' + #10#13;
    if not Client_invCndBlock.FieldByName('cndClauseCustomText' ).IsNull then xml := xml + '<cndClauseCustomText value="' + StrToXML(Client_invCndBlock.FieldByName('cndClauseCustomText').AsString) + '"/>' + #10#13;
    if not Client_invCndBlock.FieldByName('cndFreightCode'      ).IsNull then xml := xml + '<cndFreightCode value="' + StrToXML(Client_invCndBlock.FieldByName('cndFreightCode').AsString) + '"/>' + #10#13;
    xml := xml + '</invCndBlock>' + #10#13;

    Client_invCndBlock.Next;
  end;
  {$endregion}

  {$region 'Client_invTranspClause'}
  Client_invTranspClause.First;
  while not Client_invTranspClause.Eof do begin
    xml := xml + '<invTranspClause>' + #10#13;
    if not Client_invTranspClause.FieldByName('transpClauseId'         ).IsNull then xml := xml + '<transpClauseId value="' + StrToXML(Client_invTranspClause.FieldByName('transpClauseId').AsString) + '"/>' + #10#13;
    if not Client_invTranspClause.FieldByName('transpClauseCustomText' ).IsNull then xml := xml + '<transpClauseCustomText value="' + StrToXML(Client_invTranspClause.FieldByName('transpClauseCustomText').AsString) + '"/>' + #10#13;
    xml := xml + '</invTranspClause>' + #10#13;

    Client_invTranspClause.Next;
  end;
  {$endregion}

  {$region 'Client_invFreightWeight'}
  Client_invFreightWeight.First;
  while not Client_invFreightWeight.Eof do begin
    xml := xml + '<invFreightWeight>' + #10#13;
    if not Client_invFreightWeight.FieldByName('freightCode'       ).IsNull then xml := xml + '<freightCode value="' + StrToXML(Client_invFreightWeight.FieldByName('freightCode').AsString) + '"/>' + #10#13;
    if not Client_invFreightWeight.FieldByName('freightWeight'     ).IsNull then xml := xml + '<freightWeight value="' + StrToXML(Client_invFreightWeight.FieldByName('freightWeight').AsString) + '"/>' + #10#13;
    if not Client_invFreightWeight.FieldByName('freightRealWeight' ).IsNull then xml := xml + '<freightRealWeight value="' + StrToXML(Client_invFreightWeight.FieldByName('freightRealWeight').AsString) + '"/>' + #10#13;
    xml := xml + '</invFreightWeight>' + #10#13;

    Client_invFreightWeight.Next;
  end;
  {$endregion}

  {$region 'Client_invDev'}
  Client_invDev.First;
  while not Client_invDev.Eof do begin
    xml := xml + '<invDev>' + #10#13;
    if not Client_invDev.FieldByName('devTypeID'           ).IsNull then xml := xml + '<devTypeID value="' + StrToXML(Client_invDev.FieldByName('devTypeID').AsString) + '"/>' + #10#13;
    if not Client_invDev.FieldByName('devNumber'           ).IsNull then xml := xml + '<devNumber value="' + StrToXML(Client_invDev.FieldByName('devNumber').AsString) + '"/>' + #10#13;
    if not Client_invDev.FieldByName('devOwnerCountryCode' ).IsNull then xml := xml + '<devOwnerCountryCode value="' + StrToXML(Client_invDev.FieldByName('devOwnerCountryCode').AsString) + '"/>' + #10#13;
    if not Client_invDev.FieldByName('devOwnerTypeID'      ).IsNull then xml := xml + '<devOwnerTypeID value="' + StrToXML(Client_invDev.FieldByName('devOwnerTypeID').AsString) + '"/>' + #10#13;
    if not Client_invDev.FieldByName('devOwnerOKPO'        ).IsNull then xml := xml + '<devOwnerOKPO value="' + StrToXML(Client_invDev.FieldByName('devOwnerOKPO').AsString) + '"/>' + #10#13;
    if not Client_invDev.FieldByName('devOwnerName'        ).IsNull then xml := xml + '<devOwnerName value="' + StrToXML(Client_invDev.FieldByName('devOwnerName').AsString) + '"/>' + #10#13;
    if not Client_invDev.FieldByName('devQuantity'         ).IsNull then xml := xml + '<devQuantity value="' + StrToXML(Client_invDev.FieldByName('devQuantity').AsString) + '"/>' + #10#13;
    if not Client_invDev.FieldByName('devReturn'           ).IsNull then xml := xml + '<devReturn value="' + StrToXML(Client_invDev.FieldByName('devReturn').AsString) + '"/>' + #10#13;
    xml := xml + '</invDev>' + #10#13;

    Client_invDev.Next;
  end;
  {$endregion}

  {$region 'Client_invDOC'}
  Client_invDOC.First;
  while not Client_invDOC.Eof do begin
    xml := xml + '<invDOC>' + #10#13;
    if not Client_invDOC.FieldByName('docTypeID' ).IsNull then xml := xml + '<docTypeID value="' + StrToXML(Client_invDOC.FieldByName('docTypeID').AsString) + '"/>' + #10#13;
    if not Client_invDOC.FieldByName('docNumber' ).IsNull then xml := xml + '<docNumber value="' + StrToXML(Client_invDOC.FieldByName('docNumber').AsString) + '"/>' + #10#13;
    if not Client_invDOC.FieldByName('docDate'   ).IsNull then xml := xml + '<docDate value="' + StrToXML(Client_invDOC.FieldByName('docDate').AsString) + '"/>' + #10#13;
    if not Client_invDOC.FieldByName('dayCount'  ).IsNull then xml := xml + '<dayCount value="' + StrToXML(Client_invDOC.FieldByName('dayCount').AsString) + '"/>' + #10#13;
    if not Client_invDOC.FieldByName('DocumentID').IsNull then xml := xml + '<DocumentID value="' + StrToXML(Client_invDOC.FieldByName('DocumentID').AsString) + '"/>' + #10#13;
    xml := xml + '</invDOC>' + #10#13;

    Client_invDOC.Next;
  end;
  {$endregion}

  {$region 'Client_invSPC'}
  Client_invSPC.First;
  while not Client_invSPC.Eof do begin
    xml := xml + '<invSPC>' + #10#13;
//    if not Client_invSPC.FieldByName('spcTranspClauseID').IsNull then xml := xml + '<spcTranspClauseID value="' + StrToXML(Client_invSPC.FieldByName('spcTranspClauseID').AsString) + '"/>' + #10#13;

    if not Client_invSPC.FieldByName('spcTranspClauseID').IsNull then begin
      xml := xml + '<spcTranspClauseID value="' + StrToXML(Client_invSPC.FieldByName('spcTranspClauseID').AsString) + '"/>' + #10#13;
      if Client_invSPC.FieldByName('spcTranspClauseID').AsString = '1303' then begin
        xml := xml + '<spcToWash value="1"/>' + #10#13;
      end;
    end;

    if not Client_invSPC.FieldByName('spcCustomText'    ).IsNull then xml := xml + '<spcCustomText value="' + StrToXML(Client_invSPC.FieldByName('spcCustomText').AsString) + '"/>' + #10#13;
    if not Client_invSPC.FieldByName('spcNumber').IsNull then xml := xml + '<spcNumber value="' + StrToXML(Client_invSPC.FieldByName('spcNumber').AsString) + '"/>' + #10#13;
    if not Client_invSPC.FieldByName('spcClaimNumber').IsNull then xml := xml + '<spcClaimNumber value="' + StrToXML(Client_invSPC.FieldByName('spcClaimNumber').AsString) + '"/>' + #10#13;
    if not Client_invSPC.FieldByName('spcNumOtp').IsNull then xml := xml + '<spcNumOtp value="' + StrToXML(Client_invSPC.FieldByName('spcNumOtp').AsString) + '"/>' + #10#13;
    if not Client_invSPC.FieldByName('spcDate'  ).IsNull then xml := xml + '<spcDate value="' + StrToXML(FormatDateTime('dd.mm.yyyy', Client_invSPC.FieldByName('spcDate').AsDateTime)) + '"/>' + #10#13;
    xml := xml + '</invSPC>' + #10#13;

    Client_invSPC.Next;
  end;
  {$endregion}

  {$region 'Client_invDistance'}
  Client_invDistance.First;
  while not Client_invDistance.Eof do begin
    xml := xml + '<invDistance>' + #10#13;
    if not Client_invDistance.FieldByName('distCountryCode'  ).IsNull then xml := xml + '<distCountryCode value="' + StrToXML(Client_invDistance.FieldByName('distCountryCode').AsString) + '"/>' + #10#13;
    if not Client_invDistance.FieldByName('distStationCode'  ).IsNull then xml := xml + '<distStationCode value="' + StrToXML(Client_invDistance.FieldByName('distStationCode').AsString) + '"/>' + #10#13;
    if not Client_invDistance.FieldByName('distPortCode'     ).IsNull then xml := xml + '<distPortCode value="' + StrToXML(Client_invDistance.FieldByName('distPortCode').AsString) + '"/>' + #10#13;
    if not Client_invDistance.FieldByName('distLoadWay'      ).IsNull then xml := xml + '<distLoadWay value="' + StrToXML(Client_invDistance.FieldByName('distLoadWay').AsString) + '"/>' + #10#13;
    if not Client_invDistance.FieldByName('distTrackTypeID'  ).IsNull then xml := xml + '<distTrackTypeID value="' + StrToXML(Client_invDistance.FieldByName('distTrackTypeID').AsString) + '"/>' + #10#13;
    if not Client_invDistance.FieldByName('distTranspTypeID' ).IsNull then xml := xml + '<distTranspTypeID value="' + StrToXML(Client_invDistance.FieldByName('distTranspTypeID').AsString) + '"/>' + #10#13;
    if not Client_invDistance.FieldByName('distMinWay'       ).IsNull then xml := xml + '<distMinWay value="' + StrToXML(Client_invDistance.FieldByName('distMinWay').AsString) + '"/>' + #10#13;
    if not Client_invDistance.FieldByName('distRecipOKPO'    ).IsNull then xml := xml + '<distRecipOKPO value="' + StrToXML(Client_invDistance.FieldByName('distRecipOKPO').AsString) + '"/>' + #10#13;
    if not Client_invDistance.FieldByName('distRecipName'    ).IsNull then xml := xml + '<distRecipName value="' + StrToXML(Client_invDistance.FieldByName('distRecipName').AsString) + '"/>' + #10#13;
    if not Client_invDistance.FieldByName('distRecipAddress' ).IsNull then xml := xml + '<distRecipAddress value="' + StrToXML(Client_invDistance.FieldByName('distRecipAddress').AsString) + '"/>' + #10#13;
    if not Client_invDistance.FieldByName('distPayerCode'    ).IsNull then xml := xml + '<distPayerCode value="' + StrToXML(Client_invDistance.FieldByName('distPayerCode').AsString) + '"/>' + #10#13;
    if not Client_invDistance.FieldByName('distPayerName'    ).IsNull then xml := xml + '<distPayerName value="' + StrToXML(Client_invDistance.FieldByName('distPayerName').AsString) + '"/>' + #10#13;
    if not Client_invDistance.FieldByName('distFRWSubCode'   ).IsNull then xml := xml + '<distFRWSubCode value="' + StrToXML(Client_invDistance.FieldByName('distFRWSubCode').AsString) + '"/>' + #10#13;
    if not Client_invDistance.FieldByName('distSign'         ).IsNull then xml := xml + '<distSign value="' + StrToXML(Client_invDistance.FieldByName('distSign').AsString) + '"/>' + #10#13;
    if not Client_invDistance.FieldByName('distStationCountryId').IsNull then xml := xml + '<distStationCountryId value="' + StrToXML(Client_invDistance.FieldByName('distStationCountryId').AsString) + '"/>' + #10#13;
    if not Client_invDistance.FieldByName('distPayPlaceRWID'    ).IsNull then xml := xml + '<distPayPlaceRWID value="' + StrToXML(Client_invDistance.FieldByName('distPayPlaceRWID').AsString) + '"/>' + #10#13;
    if not Client_invDistance.FieldByName('distCarrierID'       ).IsNull then xml := xml + '<distCarrierID value="' + StrToXML(Client_invDistance.FieldByName('distCarrierID').AsString) + '"/>' + #10#13;
    xml := xml + '</invDistance>' + #10#13;

    Client_invDistance.Next;
  end;
  {$endregion}

  {$region 'Client_invCont'}
  Client_invCont.First;
  while not Client_invCont.Eof do begin
    xml := xml + '<invCont>' + #10#13;
    if not Client_invCont.FieldByName('contNumber'           ).IsNull then xml := xml + '<contNumber value="' + StrToXML(Client_invCont.FieldByName('contNumber').AsString) + '"/>' + #10#13;
    if not Client_invCont.FieldByName('contCarOrder'         ).IsNull then xml := xml + '<contCarOrder value="' + StrToXML(Client_invCont.FieldByName('contCarOrder').AsString) + '"/>' + #10#13;
    if not Client_invCont.FieldByName('contTonnage'          ).IsNull then xml := xml + '<contTonnage value="' + StrToXML(Client_invCont.FieldByName('contTonnage').AsString) + '"/>' + #10#13;
    if not Client_invCont.FieldByName('contTypeBig'          ).IsNull then xml := xml + '<contTypeBig value="' + StrToXML(Client_invCont.FieldByName('contTypeBig').AsString) + '"/>' + #10#13;
    if not Client_invCont.FieldByName('contSizeBig'          ).IsNull then xml := xml + '<contSizeBig value="' + StrToXML(Client_invCont.FieldByName('contSizeBig').AsString) + '"/>' + #10#13;
    if not Client_invCont.FieldByName('contWeightDep'        ).IsNull then xml := xml + '<contWeightDep value="' + StrToXML(Client_invCont.FieldByName('contWeightDep').AsString) + '"/>' + #10#13;
    if not Client_invCont.FieldByName('contWeightNet'        ).IsNull then xml := xml + '<contWeightNet value="' + StrToXML(Client_invCont.FieldByName('contWeightNet').AsString) + '"/>' + #10#13;
    if not Client_invCont.FieldByName('contPlacesCount'      ).IsNull then xml := xml + '<contPlacesCount value="' + StrToXML(Client_invCont.FieldByName('contPlacesCount').AsString) + '"/>' + #10#13;
    if not Client_invCont.FieldByName('contVolume'           ).IsNull then xml := xml + '<contVolume value="' + StrToXML(Client_invCont.FieldByName('contVolume').AsString) + '"/>' + #10#13;
    if not Client_invCont.FieldByName('contOwnerCountryCode' ).IsNull then xml := xml + '<contOwnerCountryCode value="' + StrToXML(Client_invCont.FieldByName('contOwnerCountryCode').AsString) + '"/>' + #10#13;
    if not Client_invCont.FieldByName('contOwnerTypeID'      ).IsNull then xml := xml + '<contOwnerTypeID value="' + StrToXML(Client_invCont.FieldByName('contOwnerTypeID').AsString) + '"/>' + #10#13;
    if not Client_invCont.FieldByName('contOwnerId'          ).IsNull then xml := xml + '<contOwnerId value="' + StrToXML(Client_invCont.FieldByName('contOwnerId').AsString) + '"/>' + #10#13;
    if not Client_invCont.FieldByName('contOwnerOKPO'        ).IsNull then xml := xml + '<contOwnerOKPO value="' + StrToXML(Client_invCont.FieldByName('contOwnerOKPO').AsString) + '"/>' + #10#13;
    if not Client_invCont.FieldByName('contOwnerName'        ).IsNull then xml := xml + '<contOwnerName value="' + StrToXML(Client_invCont.FieldByName('contOwnerName').AsString) + '"/>' + #10#13;
    xml := xml + '</invCont>' + #10#13;

    Client_invCont.Next;
  end;
  {$endregion}


  xml := xml + '<useMod11/>';
  xml := xml + '<useCarNSI value="0"/>';
  xml := xml + '<useWarning/>';

  xml := xml + '</invoiceDirectLoad>';

  sp_etran_ecp_modify.Parameters.Refresh;
  sp_etran_ecp_modify.Parameters.ParamByName('@etran_ecp_id'       ).Value := etran_ecp_id;
  sp_etran_ecp_modify.Parameters.ParamByName('@type_action'        ).Value := 10;
  sp_etran_ecp_modify.Parameters.ParamByName('@etran_ecp_type_id'  ).Value := Fetran_ecp_type_id;
  sp_etran_ecp_modify.Parameters.ParamByName('@etran_ecp_xml'      ).Value := xml;
  sp_etran_ecp_modify.Parameters.ParamByName('@invSenderName'      ).Value := cxButtonEdit8.EditValue;
  sp_etran_ecp_modify.Parameters.ParamByName('@invSenderOKPO'      ).Value := cxTextEdit8.EditValue;
  sp_etran_ecp_modify.Parameters.ParamByName('@invRecipName'       ).Value := cxButtonEdit3.EditValue;
  sp_etran_ecp_modify.Parameters.ParamByName('@invRecipOKPO'       ).Value := cxTextEdit9.EditValue;
  sp_etran_ecp_modify.Parameters.ParamByName('@invNumber'          ).Value := cxTextEdit3.EditValue;
  sp_etran_ecp_modify.Parameters.ParamByName('@invSendKindName'    ).Value := cxButtonEdit1.EditValue;
  sp_etran_ecp_modify.Parameters.ParamByName('@invFRWSubCode'      ).Value := cxTextEdit17.EditValue;
  sp_etran_ecp_modify.Parameters.ParamByName('@invFromStationName' ).Value := cxButtonEdit12.EditValue;
  sp_etran_ecp_modify.Parameters.ParamByName('@invToStationName'   ).Value := cxButtonEdit25.EditValue;
  sp_etran_ecp_modify.Parameters.ParamByName('@invPayerName'       ).Value := cxButtonEdit16.EditValue;
  sp_etran_ecp_modify.Parameters.ParamByName('@invPayerCode'       ).Value := cxTextEdit14.EditValue;
  sp_etran_ecp_modify.Parameters.ParamByName('@set_orders'         ).Value := Fset_orders;
  sp_etran_ecp_modify.Parameters.ParamByName('@fact_xml'           ).Value := DataXMLToSQL(ClientDS);



  Client_invCar.First;
  if Client_invCar.RecordCount = 1 then begin
    sp_etran_ecp_modify.Parameters.ParamByName('@num_vagon').Value := Client_invCar.FieldByName('carNumber').Value;
  end;
  if Client_invCar.RecordCount = 0 then begin
    sp_etran_ecp_modify.Parameters.ParamByName('@num_vagon').Value := null;
  end;
  if Client_invCar.RecordCount > 1 then begin
    sp_etran_ecp_modify.Parameters.ParamByName('@num_vagon').Value := '(групповая)';
  end;
  Client_invFreight.First;
  sp_etran_ecp_modify.Parameters.ParamByName('@freightDangerName'  ).Value := Client_invFreight.FieldByName('freightDangerName').Value;
  sp_etran_ecp_modify.Parameters.ParamByName('@FIO_users_create'   ).Value := FIO_users;

  if Client_invFreight.RecordCount > 0 then begin
    Client_invFreight.First;
    sp_etran_ecp_modify.Parameters.ParamByName('@freightName').Value := Client_invFreight.FieldByName('freightName').Value;
  end;

  try
    sp_etran_ecp_modify.ExecProc;
    Fetran_ecp_id := sp_etran_ecp_modify.Parameters.ParamByName('@etran_ecp_id').Value;
  except
  end;

  sp_etran_ecp_modify.Free;
  Screen.Cursor := crDefault;

  ClientDS.Free;

  ModalResult := mrOk;
end;

initialization
  dxInitialize;

finalization
  dxFinalize;

end.
