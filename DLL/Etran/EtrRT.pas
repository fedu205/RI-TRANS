unit EtrRT;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters,
  cxContainer, cxEdit, cxStyles, cxCustomData, cxFilter, cxData, cxDataStorage,
  DB, cxDBData, Menus, ComCtrls, ToolWin, dxGDIPlusClasses, ExtCtrls, Buttons,
  cxMaskEdit, cxDropDownEdit, cxCalendar, StdCtrls, cxButtons, cxPC,
  cxGridLevel, cxGridBandedTableView, cxGridDBBandedTableView,
  cxGridCustomTableView, cxGridTableView, cxGridDBTableView, cxClasses,
  cxGridCustomView, cxGrid, cxTextEdit, cxLabel, cxSplitter, DBClient, ADODB,
  cxPropertiesStore, Default, Raznoe, dxBar, ImgList, cxNavigator,
  cxDataControllerConditionalFormattingRulesManagerDialog, dxBarBuiltInMenu,
  dxCore, cxDateUtils, System.ImageList, cxImageList, dxSkinsCore, dxSkinBlack, dxSkinBlue, dxSkinBlueprint, dxSkinCaramel, dxSkinCoffee, dxSkinDarkroom,
  dxSkinDarkSide, dxSkinDevExpressDarkStyle, dxSkinDevExpressStyle, dxSkinFoggy, dxSkinGlassOceans, dxSkinHighContrast, dxSkinLilian, dxSkinLiquidSky,
  dxSkinLondonLiquidSky, dxSkinMcSkin, dxSkinMetropolis, dxSkinMetropolisDark, dxSkinMoneyTwins, dxSkinOffice2007Black, dxSkinOffice2007Blue,
  dxSkinOffice2007Green, dxSkinOffice2007Pink, dxSkinOffice2007Silver, dxSkinOffice2010Black, dxSkinOffice2010Blue, dxSkinOffice2010Silver,
  dxSkinOffice2013DarkGray, dxSkinOffice2013LightGray, dxSkinOffice2013White, dxSkinOffice2016Colorful, dxSkinOffice2016Dark, dxSkinOffice2019Colorful,
  dxSkinPumpkin, dxSkinSeven, dxSkinSevenClassic, dxSkinSharp, dxSkinSharpPlus, dxSkinSilver, dxSkinSpringtime, dxSkinStardust, dxSkinSummer2008,
  dxSkinTheAsphaltWorld, dxSkinTheBezier, dxSkinsDefaultPainters, dxSkinValentine, dxSkinVisualStudio2013Blue, dxSkinVisualStudio2013Dark,
  dxSkinVisualStudio2013Light, dxSkinVS2010, dxSkinWhiteprint, dxSkinXmas2008Blue, dxDateRanges;

type
  TfmEtrRT = class(TForm)
    ADOEtran: TADOConnection;
    cxPropertiesStore1: TcxPropertiesStore;
    DS_RT: TDataSource;
    Query_RT: TADOQuery;
    cxStyleRepository1: TcxStyleRepository;
    cxStyle1: TcxStyle;
    DS_XML_parser_payer: TDataSource;
    SP_XML_parser_payer: TADOStoredProc;
    DS_XML_parser_view: TDataSource;
    SP_XML_parser_view: TADOStoredProc;
    SP_XML_parser: TADOStoredProc;
    ClientDataSet2: TClientDataSet;
    ClientDataSet1rtID: TStringField;
    ClientDataSet1rtNumber: TStringField;
    ClientDataSet1rtParentID: TStringField;
    ClientDataSet1rtParentNumber: TStringField;
    ClientDataSet1rtStateID: TStringField;
    ClientDataSet1rtState: TStringField;
    ClientDataSet1rtLastOper: TDateTimeField;
    ClientDataSet1rtRegDate: TDateTimeField;
    ClientDataSet1rtStartDate: TDateTimeField;
    ClientDataSet1rtFinishDate: TDateTimeField;
    ClientDataSet1rtPayerCode: TStringField;
    ClientDataSet1rtPayerID: TStringField;
    ClientDataSet1rtPayerOKPO: TStringField;
    ClientDataSet1rtPayerName: TStringField;
    ClientDataSet1rtSenderID: TStringField;
    ClientDataSet1rtSenderOKPO: TStringField;
    ClientDataSet1rtSenderName: TStringField;
    ClientDataSet1rtMsgKindID: TStringField;
    ClientDataSet1rtMsgKindName: TStringField;
    ClientDataSet1rtFromCountryCode: TStringField;
    ClientDataSet1rtFromCountryName: TStringField;
    ClientDataSet1rtFromStationCode: TStringField;
    ClientDataSet1rtFromStationName: TStringField;
    ClientDataSet1rtEnterStationCode: TStringField;
    ClientDataSet1rtEnterStationName: TStringField;
    ClientDataSet1rtEnterSngStationCode: TStringField;
    ClientDataSet1rtEnterSngStationName: TStringField;
    ClientDataSet1rtRegNum: TStringField;
    ClientDataSet1rtNomExp: TStringField;
    ClientDataSet1rtNomStr: TStringField;
    ClientDataSet1rtPrim: TStringField;
    ClientDataSet1rtAgrDate: TDateTimeField;
    ClientDataSet1rtAgrPost: TStringField;
    ClientDataSet1rtAgrPerson: TStringField;
    ClientDataSet1rtAgrOrgId: TStringField;
    ClientDataSet1rtAgrOrgName: TStringField;
    ClientDataSet1AgrDate: TDateTimeField;
    ClientDataSet1AgrPost: TStringField;
    ClientDataSet1AgrPerson: TStringField;
    ClientDataSet1AgrOrgId: TStringField;
    ClientDataSet1AgrOrgName: TStringField;
    ClientDataSet1AgrRemark: TStringField;
    ClientDataSet1otprNom: TStringField;
    ClientDataSet1otprSubCodeExp: TStringField;
    ClientDataSet1otprIxTariffCode: TStringField;
    ClientDataSet1otprFreightCode: TStringField;
    ClientDataSet1otprFreightName: TStringField;
    ClientDataSet1otprFreightGNGID: TStringField;
    ClientDataSet1otprFreightGNGCode: TStringField;
    ClientDataSet1otprFreightGNGName: TStringField;
    ClientDataSet1otprToCountryCode: TStringField;
    ClientDataSet1otprToCountryName: TStringField;
    ClientDataSet1otprToStationCode: TStringField;
    ClientDataSet1otprToStationName: TStringField;
    ClientDataSet1otprExitStationCode: TStringField;
    ClientDataSet1otprExitStationName: TStringField;
    ClientDataSet1otprExitSngStationCode: TStringField;
    ClientDataSet1otprExitSngStationName: TStringField;
    ClientDataSet1otprRecipID: TStringField;
    ClientDataSet1otprRecipOKPO: TStringField;
    ClientDataSet1otprRecipName: TStringField;
    ClientDataSet1otprCarOwnerTypeID: TStringField;
    ClientDataSet1otprCarOwnerTypeName: TStringField;
    ClientDataSet1otprCarContOwnerTypeID: TStringField;
    ClientDataSet1otprCarContOwnerTypeName: TStringField;
    ClientDataSet1otprSendKindID: TStringField;
    ClientDataSet1otprSendKindName: TStringField;
    ClientDataSet1otprCarTypeID: TStringField;
    ClientDataSet1otprCarTypeName: TStringField;
    ClientDataSet1otprCarTypeCODE: TStringField;
    ClientDataSet1otprCarTypeCODEName: TStringField;
    ClientDataSet1otprFreightWeight: TStringField;
    ClientDataSet1otprCarCount: TStringField;
    ClientDataSet1otprAccompId: TStringField;
    ClientDataSet1otprAccompName: TStringField;
    ClientDataSet1otprGuideCount: TStringField;
    cxSplitter3: TcxSplitter;
    GridPanel4: TGridPanel;
    Panel27: TPanel;
    cxLabel170: TcxLabel;
    cxLabel120: TcxLabel;
    cxLabel121: TcxLabel;
    cxLabel122: TcxLabel;
    cxTextEdit_rtSenderOKPO: TcxTextEdit;
    cxTextEdit_rtSenderName: TcxTextEdit;
    cxGrid15: TcxGrid;
    cxGrid1DBTableView1: TcxGridDBTableView;
    cxGrid1DBTableView1payerNom: TcxGridDBColumn;
    cxGrid1DBTableView1payerTypeID: TcxGridDBColumn;
    cxGrid1DBTableView1payerTypeName: TcxGridDBColumn;
    cxGrid1DBTableView1payerCode: TcxGridDBColumn;
    cxGrid1DBTableView1payerID: TcxGridDBColumn;
    cxGrid1DBTableView1payerOKPO: TcxGridDBColumn;
    cxGrid1DBTableView1payerName: TcxGridDBColumn;
    cxGrid1DBTableView1payerCountryCode: TcxGridDBColumn;
    cxGrid1DBTableView1payerCountryName: TcxGridDBColumn;
    cxGridDBBandedTableView13: TcxGridDBBandedTableView;
    cxGrid1DBBandedTableView1payerNom: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1payerTypeName: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1payerOKPO: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1payerName: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1payerCountryName: TcxGridDBBandedColumn;
    cxGridLevel13: TcxGridLevel;
    cxLabel127: TcxLabel;
    cxTextEdit_rtFinishDate: TcxTextEdit;
    cxTextEdit_rtStartDate: TcxTextEdit;
    cxLabel128: TcxLabel;
    cxLabel129: TcxLabel;
    cxTextEdit_rtFromCountryName: TcxTextEdit;
    cxTextEdit_rtFromStationName: TcxTextEdit;
    cxTextEdit_rtFromCountryCode: TcxTextEdit;
    cxTextEdit_rtFromStationCode: TcxTextEdit;
    cxLabel130: TcxLabel;
    cxTextEdit_rtEnterStationName: TcxTextEdit;
    cxTextEdit_rtEnterStationCode: TcxTextEdit;
    cxLabel144: TcxLabel;
    cxTextEdit_rtPayerOKPO: TcxTextEdit;
    cxTextEdit_rtPayerName: TcxTextEdit;
    cxLabel169: TcxLabel;
    cxPageControl3: TcxPageControl;
    cxTab_Otpr1: TcxTabSheet;
    cxLabel156: TcxLabel;
    cxLabel155: TcxLabel;
    cxLabel187: TcxLabel;
    cxLabel188: TcxLabel;
    cxLabel189: TcxLabel;
    cxLabel190: TcxLabel;
    cxLabel191: TcxLabel;
    cxLabel192: TcxLabel;
    cxLabel193: TcxLabel;
    cxLabel194: TcxLabel;
    cxLabel195: TcxLabel;
    cxLabel196: TcxLabel;
    cxLabel197: TcxLabel;
    cxTextEdit36: TcxTextEdit;
    cxTextEdit35: TcxTextEdit;
    cxTextEdit33: TcxTextEdit;
    cxTextEdit32: TcxTextEdit;
    cxTextEdit29: TcxTextEdit;
    cxTextEdit28: TcxTextEdit;
    cxTextEdit21: TcxTextEdit;
    cxTextEdit19: TcxTextEdit;
    cxTextEdit18: TcxTextEdit;
    cxTextEdit17: TcxTextEdit;
    cxTextEdit16: TcxTextEdit;
    cxTextEdit20: TcxTextEdit;
    cxTextEdit27: TcxTextEdit;
    cxTextEdit30: TcxTextEdit;
    cxTextEdit31: TcxTextEdit;
    cxTextEdit34: TcxTextEdit;
    cxTextEdit37: TcxTextEdit;
    cxTextEdit100: TcxTextEdit;
    cxTextEdit101: TcxTextEdit;
    cxLabel230: TcxLabel;
    cxTextEdit92: TcxTextEdit;
    cxTab_Otpr2: TcxTabSheet;
    cxLabel136: TcxLabel;
    cxLabel132: TcxLabel;
    cxTextEdit38: TcxTextEdit;
    cxLabel133: TcxLabel;
    cxTextEdit39: TcxTextEdit;
    cxLabel134: TcxLabel;
    cxTextEdit40: TcxTextEdit;
    cxLabel135: TcxLabel;
    cxTextEdit41: TcxTextEdit;
    cxTextEdit42: TcxTextEdit;
    cxTextEdit43: TcxTextEdit;
    cxTextEdit44: TcxTextEdit;
    cxLabel137: TcxLabel;
    cxTextEdit45: TcxTextEdit;
    cxLabel138: TcxLabel;
    cxTextEdit46: TcxTextEdit;
    cxTextEdit47: TcxTextEdit;
    cxLabel139: TcxLabel;
    cxTextEdit48: TcxTextEdit;
    cxTextEdit49: TcxTextEdit;
    cxLabel140: TcxLabel;
    cxTextEdit50: TcxTextEdit;
    cxTextEdit51: TcxTextEdit;
    cxLabel142: TcxLabel;
    cxTextEdit52: TcxTextEdit;
    cxLabel143: TcxLabel;
    cxTextEdit53: TcxTextEdit;
    cxTextEdit86: TcxTextEdit;
    cxLabel222: TcxLabel;
    cxLabel223: TcxLabel;
    cxTextEdit201: TcxTextEdit;
    cxTextEdit200: TcxTextEdit;
    cxLabel231: TcxLabel;
    cxTextEdit93: TcxTextEdit;
    cxTab_Otpr3: TcxTabSheet;
    cxLabel202: TcxLabel;
    cxLabel198: TcxLabel;
    cxTextEdit54: TcxTextEdit;
    cxLabel199: TcxLabel;
    cxTextEdit55: TcxTextEdit;
    cxLabel200: TcxLabel;
    cxTextEdit56: TcxTextEdit;
    cxLabel201: TcxLabel;
    cxTextEdit57: TcxTextEdit;
    cxTextEdit58: TcxTextEdit;
    cxTextEdit59: TcxTextEdit;
    cxTextEdit60: TcxTextEdit;
    cxLabel203: TcxLabel;
    cxTextEdit61: TcxTextEdit;
    cxLabel204: TcxLabel;
    cxTextEdit62: TcxTextEdit;
    cxTextEdit63: TcxTextEdit;
    cxLabel205: TcxLabel;
    cxTextEdit64: TcxTextEdit;
    cxTextEdit65: TcxTextEdit;
    cxLabel206: TcxLabel;
    cxTextEdit66: TcxTextEdit;
    cxTextEdit67: TcxTextEdit;
    cxLabel207: TcxLabel;
    cxTextEdit68: TcxTextEdit;
    cxLabel208: TcxLabel;
    cxTextEdit69: TcxTextEdit;
    cxTextEdit87: TcxTextEdit;
    cxLabel224: TcxLabel;
    cxLabel225: TcxLabel;
    cxTextEdit301: TcxTextEdit;
    cxTextEdit300: TcxTextEdit;
    cxLabel232: TcxLabel;
    cxTextEdit94: TcxTextEdit;
    cxTab_Otpr4: TcxTabSheet;
    cxLabel213: TcxLabel;
    cxLabel209: TcxLabel;
    cxTextEdit70: TcxTextEdit;
    cxLabel210: TcxLabel;
    cxTextEdit71: TcxTextEdit;
    cxLabel211: TcxLabel;
    cxTextEdit72: TcxTextEdit;
    cxLabel212: TcxLabel;
    cxTextEdit73: TcxTextEdit;
    cxTextEdit74: TcxTextEdit;
    cxTextEdit75: TcxTextEdit;
    cxTextEdit76: TcxTextEdit;
    cxLabel214: TcxLabel;
    cxTextEdit77: TcxTextEdit;
    cxLabel215: TcxLabel;
    cxTextEdit78: TcxTextEdit;
    cxTextEdit79: TcxTextEdit;
    cxLabel216: TcxLabel;
    cxTextEdit80: TcxTextEdit;
    cxTextEdit81: TcxTextEdit;
    cxLabel217: TcxLabel;
    cxTextEdit82: TcxTextEdit;
    cxTextEdit83: TcxTextEdit;
    cxLabel218: TcxLabel;
    cxTextEdit84: TcxTextEdit;
    cxLabel219: TcxLabel;
    cxTextEdit85: TcxTextEdit;
    cxTextEdit88: TcxTextEdit;
    cxLabel226: TcxLabel;
    cxLabel227: TcxLabel;
    cxTextEdit401: TcxTextEdit;
    cxTextEdit400: TcxTextEdit;
    cxLabel233: TcxLabel;
    cxTextEdit95: TcxTextEdit;
    Panel28: TPanel;
    cxLabel131: TcxLabel;
    cxTextEdit_rtEnterSngStationName: TcxTextEdit;
    cxTextEdit_rtEnterSngStationCode: TcxTextEdit;
    cxLabel141: TcxLabel;
    cxTextEdit_otprExitSngStationName: TcxTextEdit;
    cxTextEdit_otprExitSngStationCode: TcxTextEdit;
    cxLabel145: TcxLabel;
    cxTextEdit_rtPayerCode: TcxTextEdit;
    cxLabel152: TcxLabel;
    cxTextEdit_otprSubCodeExp: TcxTextEdit;
    cxLabel153: TcxLabel;
    cxTextEdit_otprSendKindName: TcxTextEdit;
    cxLabel154: TcxLabel;
    cxTextEdit_otprCarTypeCODEName: TcxTextEdit;
    cxLabel157: TcxLabel;
    cxTextEdit_AgrRemark: TcxTextEdit;
    cxLabel158: TcxLabel;
    cxTextEdit_rtID: TcxTextEdit;
    cxLabel159: TcxLabel;
    cxTextEdit_rtParentNumber: TcxTextEdit;
    cxLabel160: TcxLabel;
    cxTextEdit_rtState: TcxTextEdit;
    cxLabel161: TcxLabel;
    cxTextEdit_rtLastOper: TcxTextEdit;
    cxLabel162: TcxLabel;
    cxTextEdit_rtMsgKindName: TcxTextEdit;
    cxLabel163: TcxLabel;
    cxTextEdit_rtNomExp: TcxTextEdit;
    cxLabel164: TcxLabel;
    cxTextEdit_rtNomStr: TcxTextEdit;
    cxLabel165: TcxLabel;
    cxTextEdit_rtAgrDate: TcxTextEdit;
    cxLabel166: TcxLabel;
    cxTextEdit_rtAgrPost: TcxTextEdit;
    cxLabel167: TcxLabel;
    cxTextEdit_rtAgrPerson: TcxTextEdit;
    cxLabel168: TcxLabel;
    cxTextEdit_rtAgrOrgName: TcxTextEdit;
    cxLabel146: TcxLabel;
    cxTextEdit_rtPrim: TcxTextEdit;
    cxLabel147: TcxLabel;
    cxTextEdit_AgrPost: TcxTextEdit;
    cxLabel148: TcxLabel;
    cxTextEdit_AgrPerson: TcxTextEdit;
    cxLabel149: TcxLabel;
    cxTextEdit_AgrOrgName: TcxTextEdit;
    cxLabel150: TcxLabel;
    cxTextEdit_AgrDate: TcxTextEdit;
    Panel25: TPanel;
    GroupBox1: TGroupBox;
    cxButton1: TcxButton;
    GroupBox2: TGroupBox;
    cxLabel110: TcxLabel;
    cxLabel116: TcxLabel;
    cxLabel111: TcxLabel;
    cxDateEdit5: TcxDateEdit;
    cxLabel113: TcxLabel;
    cxDateEdit6: TcxDateEdit;
    cxTextEdit24: TcxTextEdit;
    cxTextEdit4: TcxTextEdit;
    cxLabel114: TcxLabel;
    cxLabel115: TcxLabel;
    cxLabel117: TcxLabel;
    cxTextEdit25: TcxTextEdit;
    cxTextEdit5: TcxTextEdit;
    cxTextEdit6: TcxTextEdit;
    cxTextEdit22: TcxTextEdit;
    cxTextEdit23: TcxTextEdit;
    cxTextEdit26: TcxTextEdit;
    Panel26: TPanel;
    cxGrid14: TcxGrid;
    cxGrid14DBBandedTableView1: TcxGridDBBandedTableView;
    cxGrid14DBBandedTableView1rt_id: TcxGridDBBandedColumn;
    cxGrid14DBBandedTableView1rt_number_str: TcxGridDBBandedColumn;
    cxGrid14DBBandedTableView1rt_number_exp: TcxGridDBBandedColumn;
    cxGrid14DBBandedTableView1rt_state_name: TcxGridDBBandedColumn;
    cxGrid14DBBandedTableView1rt_date_agreement: TcxGridDBBandedColumn;
    cxGrid14DBBandedTableView1node_begin_cod: TcxGridDBBandedColumn;
    cxGrid14DBBandedTableView1node_begin_name: TcxGridDBBandedColumn;
    cxGrid14DBBandedTableView1node_end_cod: TcxGridDBBandedColumn;
    cxGrid14DBBandedTableView1node_end_name: TcxGridDBBandedColumn;
    cxGrid14DBBandedTableView1kargoETSNG_cod: TcxGridDBBandedColumn;
    cxGrid14DBBandedTableView1kargoETSNG_name: TcxGridDBBandedColumn;
    cxGrid14DBBandedTableView1amount_units: TcxGridDBBandedColumn;
    cxGrid14DBBandedTableView1fact_weight: TcxGridDBBandedColumn;
    cxGrid14DBBandedTableView1vid_transfer: TcxGridDBBandedColumn;
    cxGrid14DBBandedTableView1rtLastOper: TcxGridDBBandedColumn;
    cxGrid14Level1: TcxGridLevel;
    Panel29: TPanel;
    Image1: TImage;
    cxLabel123: TcxLabel;
    dxBarManager1: TdxBarManager;
    dxBarDockControl1: TdxBarDockControl;
    cxImageList2: TcxImageList;
    dxBarManager1Bar1: TdxBar;
    dxBarButton1: TdxBarButton;
    dxBarButton2: TdxBarButton;
    dxBarPopupMenu1: TdxBarPopupMenu;
    dxBarButton3: TdxBarButton;
    dxBarSubItem1: TdxBarSubItem;
    dxBarButton4: TdxBarButton;
    dxBarButton5: TdxBarButton;
    dxBarButton6: TdxBarButton;
    dxBarButton7: TdxBarButton;
    dxBarPopupMenu2: TdxBarPopupMenu;
    dxBarButton8: TdxBarButton;
    dxBarSubItem2: TdxBarSubItem;
    dxBarButton9: TdxBarButton;
    dxBarButton10: TdxBarButton;
    dxBarButton11: TdxBarButton;
    dxBarButton12: TdxBarButton;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure cxGrid14DBBandedTableView1FocusedRecordChanged(
      Sender: TcxCustomGridTableView; APrevFocusedRecord,
      AFocusedRecord: TcxCustomGridRecord;
      ANewItemRecordFocusingChanged: Boolean);
    procedure cxButton1Click(Sender: TObject);
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
    procedure cxGridDBBandedTableView13FilterOnChanged(Sender: TObject);
    procedure cxGridDBBandedTableView13CustomDrawCell(
      Sender: TcxCustomGridTableView; ACanvas: TcxCanvas;
      AViewInfo: TcxGridTableDataCellViewInfo; var ADone: Boolean);
    procedure cxGridDBBandedTableView13CustomDrawColumnHeader(
      Sender: TcxGridTableView; ACanvas: TcxCanvas;
      AViewInfo: TcxGridColumnHeaderViewInfo; var ADone: Boolean);
    procedure cxGridDBBandedTableView13FocusedItemChanged(
      Sender: TcxCustomGridTableView; APrevFocusedItem,
      AFocusedItem: TcxCustomGridTableItem);
    procedure cxGridDBBandedTableView13KeyPress(Sender: TObject; var Key: Char);
    procedure cxGrid14DBBandedTableView1FilterOnChanged(Sender: TObject);
    procedure cxGrid14DBBandedTableView1CustomDrawCell(
      Sender: TcxCustomGridTableView; ACanvas: TcxCanvas;
      AViewInfo: TcxGridTableDataCellViewInfo; var ADone: Boolean);
    procedure cxGrid14DBBandedTableView1CustomDrawColumnHeader(
      Sender: TcxGridTableView; ACanvas: TcxCanvas;
      AViewInfo: TcxGridColumnHeaderViewInfo; var ADone: Boolean);
    procedure cxGrid14DBBandedTableView1FocusedItemChanged(
      Sender: TcxCustomGridTableView; APrevFocusedItem,
      AFocusedItem: TcxCustomGridTableItem);
    procedure cxGrid14DBBandedTableView1KeyPress(Sender: TObject;
      var Key: Char);
  private
    Fusr_pwd         : PUser_pwd;
    Fusers_group_cod : string;
  public
    constructor Create(AOwner: TApplication; flag: boolean; users_group_cod: string; usr_pwd:PUser_pwd);
    procedure   SetPeriodRT(period_begin: TDateTime; period_end: TDateTime);
  end;

var
  fmEtrRT: TfmEtrRT;

function CreateWndEtranRT(AppHand: THandle; flag: boolean; users_group_cod: string; usr_pwd:PUser_pwd) : variant; export;

implementation

uses EtrFilter, EtrUtils;

{$R *.dfm}

function CreateWndEtranRT(AppHand: THandle; flag: boolean; users_group_cod: string; usr_pwd:PUser_pwd) : variant;
begin
  Application.Handle := AppHand;
  try
    fmEtrRT := TfmEtrRT.Create(Application, flag, users_group_cod, usr_pwd);
    fmEtrRT.SetPeriodRT(Date-1,Date);
    //-- изменить по мере необходимости возвращаемых параметров
    if  fmEtrRT.ShowModal = mrOk then result := VarArrayOf([-9, '']);
  finally
    fmEtrRT.Free;
  end;
end;


procedure TfmEtrRT.cxButton1Click(Sender: TObject);
var str_filter : string;
begin
  fmEtrFilter := TfmEtrFilter.Create(29, ADOEtran);

  fmEtrFilter._SetRtNumber       := cxTextEdit4.Text;
  fmEtrFilter._SetRtNumExp       := cxTextEdit24.Text;
  fmEtrFilter._SetRtDateAgrBegin   := cxDateEdit5.Date;
  fmEtrFilter._SetRtDateAgrEnd     := cxDateEdit6.Date;
  fmEtrFilter._SetRtKargoETSNGCod  := cxTextEdit26.Text;
  fmEtrFilter._SetRtKargoETSNGName := cxTextEdit25.Text;
  fmEtrFilter._SetInvNodeBeginName  := cxTextEdit6.Text;
  fmEtrFilter._SetInvNodeBeginCod   := cxTextEdit22.Text;
  fmEtrFilter._SetInvNodeEndName    := cxTextEdit5.Text;
  fmEtrFilter._SetInvNodeEndCod     := cxTextEdit23.Text;

  if fmEtrFilter.ShowModal = mrOK then begin
    cxTextEdit4.Text  := fmEtrFilter._GetRtNumber;
    cxTextEdit24.Text := fmEtrFilter._GetRtNumExp;
    cxDateEdit5.Date  := fmEtrFilter._GetRtDateAgrBegin;
    cxDateEdit6.Date  := fmEtrFilter._GetRtDateAgrEnd;
    cxTextEdit26.Text := fmEtrFilter._GetRtKargoETSNGCod;
    cxTextEdit25.Text := fmEtrFilter._GetRtKargoETSNGName;
    cxTextEdit6.Text  := fmEtrFilter._GetInvNodeBeginName;
    cxTextEdit22.Text := fmEtrFilter._GetInvNodeBeginCod;
    cxTextEdit5.Text  := fmEtrFilter._GetInvNodeEndName;
    cxTextEdit23.Text := fmEtrFilter._GetInvNodeEndCod;

    str_filter := '1=1';

    if cxTextEdit4.Text <> ''  then str_filter := str_filter + ' AND rt_number_str LIKE ''%'+cxTextEdit4.Text+'%''';
    if cxTextEdit24.Text <> '' then str_filter := str_filter + ' AND rt_number_exp LIKE ''%'+cxTextEdit24.Text+'%''';

    if cxDateEdit5.Date<>-700000  then  str_filter := str_filter + ' AND convert(varchar(8),rt_date_agreement,112) >= ''' + FormatDateTime('yyyymmdd',cxDateEdit5.Date) + '''';
    if cxDateEdit6.Date<>-700000  then  str_filter := str_filter + ' AND convert(varchar(8),rt_date_agreement,112) <= ''' + FormatDateTime('yyyymmdd',cxDateEdit6.Date) + '''';

    if cxTextEdit22.Text<>'' then  str_filter := str_filter + ' AND node_begin_cod LIKE ''%' + cxTextEdit22.Text + '%''';
    if cxTextEdit23.Text<>'' then  str_filter := str_filter + ' AND node_end_cod LIKE ''%' + cxTextEdit23.Text + '%''';
    if cxTextEdit26.Text<>'' then  str_filter := str_filter + ' AND kargoETSNG_cod LIKE ''%' + cxTextEdit26.Text + '%''';


//    if Fcompany_id <> -1 then str_filter := str_filter + ' AND company_id = ' + IntToStr(Fcompany_id);
    if str_filter = '1=1'  then str_filter := '1=0';

    Screen.Cursor := crHourglass;
    Query_RT.Close;
    Query_RT.SQL[19] := '('+str_filter+')';
    Query_RT.Open;
    Screen.Cursor := crDefault;
  end;
end;

procedure TfmEtrRT.cxGrid14DBBandedTableView1CustomDrawCell(
  Sender: TcxCustomGridTableView; ACanvas: TcxCanvas;
  AViewInfo: TcxGridTableDataCellViewInfo; var ADone: Boolean);
begin
	if AViewInfo.GridRecord.Selected or AViewInfo.GridRecord.Focused then begin
		ACanvas.Brush.Color := clNavy;
		ACanvas.Font.Color := clWhite;
		if AViewInfo.Focused then ACanvas.Brush.Color := clBlue;
	end;
end;

procedure TfmEtrRT.cxGrid14DBBandedTableView1CustomDrawColumnHeader(
  Sender: TcxGridTableView; ACanvas: TcxCanvas;
  AViewInfo: TcxGridColumnHeaderViewInfo; var ADone: Boolean);
begin
	if AViewInfo.Column.Focused then begin
		ACanvas.Brush.Color := clNavy;
		ACanvas.Font.Color := clWhite;
	end;
end;

procedure TfmEtrRT.cxGrid14DBBandedTableView1FilterOnChanged(Sender: TObject);
begin
	DrawcxGridColumnOnFiltered(Sender);
end;

procedure TfmEtrRT.cxGrid14DBBandedTableView1FocusedItemChanged(
  Sender: TcxCustomGridTableView; APrevFocusedItem,
  AFocusedItem: TcxCustomGridTableItem);
begin
	cxGrid14DBBandedTableView1.Painter.Invalidate;
end;

procedure TfmEtrRT.cxGrid14DBBandedTableView1FocusedRecordChanged(
  Sender: TcxCustomGridTableView; APrevFocusedRecord,
  AFocusedRecord: TcxCustomGridRecord; ANewItemRecordFocusingChanged: Boolean);
var
  i : integer;
begin
  Screen.Cursor := crHourGlass;
  if (Query_RT.Active) and (not Query_RT.Eof) then begin
    if ClientDataSet2.FieldByName('rtID').Value <> Query_RT.FieldByName('rtID').Value then begin
      SP_XML_parser.Close;
      SP_XML_parser.Parameters.Refresh;
      SP_XML_parser.Parameters.ParamByName('@row_id').Value  := Query_RT.FieldByName('rt_id').AsInteger;
      SP_XML_parser.Parameters.ParamByName('@doc_type_id').Value   := 29;
      SP_XML_parser.Parameters.ParamByName('@doc_sub').Value       := 0;
      SP_XML_parser.Open;

      ClientDSFromRecordset(SP_XML_parser.Recordset, ClientDataSet2);
      ClientDSToForm(self, ClientDataSet2);

      cxLabel120.Caption := 'ТЕЛЕГРАММА № '+cxTextEdit_rtNomStr.Text;
      cxLabel169.Caption := 'Состояние: ' + cxTextEdit_rtState.Text;
      cxLabel170.Caption := 'Дата согласования: ' + cxTextEdit_AgrDate.Text;
      if cxTextEdit_rtState.Text = 'Согласована' then begin
        cxLabel169.Style.Font.Color := clGreen;
        cxLabel170.Style.Font.Color := clGreen;
      end else begin
        cxLabel169.Style.Font.Color := clRed;
        cxLabel170.Style.Font.Color := clRed;
      end;

      SP_XML_parser_payer.Close;
      SP_XML_parser_payer.Parameters.Refresh;
      SP_XML_parser_payer.Parameters.ParamByName('@row_id').Value :=Query_RT.FieldByName('rt_id').AsInteger;
      SP_XML_parser_payer.Parameters.ParamByName('@doc_type_id').Value  :=29;
      SP_XML_parser_payer.Parameters.ParamByName('@doc_sub').Value      :=2;
      SP_XML_parser_payer.Open;

      cxTab_Otpr2.TabVisible := False;
      cxTab_Otpr3.TabVisible := False;
      cxTab_Otpr4.TabVisible := False;
      cxPageControl3.ActivePage := cxTab_Otpr1;
      i := 1;
      while not SP_XML_parser_payer.Eof do begin
        if i = 1 then begin
          cxTab_Otpr1.TabVisible := True;
          cxTextEdit16.Text := SP_XML_parser_payer.FieldByName('otprCarCount').AsString;
          cxTextEdit17.Text := SP_XML_parser_payer.FieldByName('otprCarTypeName').AsString;
          cxTextEdit18.Text := SP_XML_parser_payer.FieldByName('otprCarOwnerTypeName').AsString;
          cxTextEdit19.Text := SP_XML_parser_payer.FieldByName('otprFreightName').AsString;
          cxTextEdit20.Text := SP_XML_parser_payer.FieldByName('otprFreightCode').AsString;
          cxTextEdit21.Text := SP_XML_parser_payer.FieldByName('otprFreightGNGName').AsString;
          cxTextEdit27.Text := SP_XML_parser_payer.FieldByName('otprFreightGNGCode').AsString;
          cxTextEdit28.Text := SP_XML_parser_payer.FieldByName('otprFreightWeight').AsString;
          cxTextEdit29.Text := SP_XML_parser_payer.FieldByName('otprToCountryName').AsString;
          cxTextEdit30.Text := SP_XML_parser_payer.FieldByName('otprToCountryCode').AsString;
          cxTextEdit31.Text := SP_XML_parser_payer.FieldByName('otprToStationCode').AsString;
          cxTextEdit32.Text := SP_XML_parser_payer.FieldByName('otprToStationName').AsString;
          cxTextEdit33.Text := SP_XML_parser_payer.FieldByName('otprExitStationName').AsString;
          cxTextEdit34.Text := SP_XML_parser_payer.FieldByName('otprExitStationCode').AsString;
          cxTextEdit35.Text := SP_XML_parser_payer.FieldByName('otprRecipName').AsString;
          cxTextEdit36.Text := SP_XML_parser_payer.FieldByName('otprIxTariffCode').AsString;
          cxTextEdit37.Text := SP_XML_parser_payer.FieldByName('otprRecipOKPO').AsString;
          cxTextEdit92.Text := SP_XML_parser_payer.FieldByName('otprPaySum').AsString;

          cxTextEdit100.Text := SP_XML_parser_payer.FieldByName('otprAccompName').AsString;
          cxTextEdit101.Text := SP_XML_parser_payer.FieldByName('otprGuideCount').AsString;
        end;

        if i = 2 then begin
          cxTab_Otpr2.TabVisible := True;
          cxTextEdit38.Text := SP_XML_parser_payer.FieldByName('otprCarCount').AsString;
          cxTextEdit39.Text := SP_XML_parser_payer.FieldByName('otprCarTypeName').AsString;
          cxTextEdit40.Text := SP_XML_parser_payer.FieldByName('otprCarOwnerTypeName').AsString;
          cxTextEdit41.Text := SP_XML_parser_payer.FieldByName('otprFreightName').AsString;
          cxTextEdit42.Text := SP_XML_parser_payer.FieldByName('otprFreightCode').AsString;
          cxTextEdit44.Text := SP_XML_parser_payer.FieldByName('otprFreightGNGName').AsString;
          cxTextEdit43.Text := SP_XML_parser_payer.FieldByName('otprFreightGNGCode').AsString;
          cxTextEdit45.Text := SP_XML_parser_payer.FieldByName('otprFreightWeight').AsString;
          cxTextEdit46.Text := SP_XML_parser_payer.FieldByName('otprToCountryName').AsString;
          cxTextEdit47.Text := SP_XML_parser_payer.FieldByName('otprToCountryCode').AsString;
          cxTextEdit49.Text := SP_XML_parser_payer.FieldByName('otprToStationCode').AsString;
          cxTextEdit48.Text := SP_XML_parser_payer.FieldByName('otprToStationName').AsString;
          cxTextEdit50.Text := SP_XML_parser_payer.FieldByName('otprExitStationName').AsString;
          cxTextEdit51.Text := SP_XML_parser_payer.FieldByName('otprExitStationCode').AsString;
          cxTextEdit52.Text := SP_XML_parser_payer.FieldByName('otprRecipName').AsString;
          cxTextEdit86.Text := SP_XML_parser_payer.FieldByName('otprIxTariffCode').AsString;
          cxTextEdit53.Text := SP_XML_parser_payer.FieldByName('otprRecipOKPO').AsString;
          cxTextEdit93.Text := SP_XML_parser_payer.FieldByName('otprPaySum').AsString;

          cxTextEdit200.Text := SP_XML_parser_payer.FieldByName('otprAccompName').AsString;
          cxTextEdit201.Text := SP_XML_parser_payer.FieldByName('otprGuideCount').AsString;
        end;

        if i = 3 then begin
          cxTab_Otpr3.TabVisible := True;
          cxTextEdit54.Text := SP_XML_parser_payer.FieldByName('otprCarCount').AsString;
          cxTextEdit55.Text := SP_XML_parser_payer.FieldByName('otprCarTypeName').AsString;
          cxTextEdit56.Text := SP_XML_parser_payer.FieldByName('otprCarOwnerTypeName').AsString;
          cxTextEdit57.Text := SP_XML_parser_payer.FieldByName('otprFreightName').AsString;
          cxTextEdit58.Text := SP_XML_parser_payer.FieldByName('otprFreightCode').AsString;
          cxTextEdit59.Text := SP_XML_parser_payer.FieldByName('otprFreightGNGCode').AsString;
          cxTextEdit60.Text := SP_XML_parser_payer.FieldByName('otprFreightGNGName').AsString;
          cxTextEdit61.Text := SP_XML_parser_payer.FieldByName('otprFreightWeight').AsString;
          cxTextEdit62.Text := SP_XML_parser_payer.FieldByName('otprToCountryName').AsString;
          cxTextEdit63.Text := SP_XML_parser_payer.FieldByName('otprToCountryCode').AsString;
          cxTextEdit64.Text := SP_XML_parser_payer.FieldByName('otprToStationName').AsString;
          cxTextEdit65.Text := SP_XML_parser_payer.FieldByName('otprToStationCode').AsString;
          cxTextEdit66.Text := SP_XML_parser_payer.FieldByName('otprExitStationName').AsString;
          cxTextEdit67.Text := SP_XML_parser_payer.FieldByName('otprExitStationCode').AsString;
          cxTextEdit68.Text := SP_XML_parser_payer.FieldByName('otprRecipName').AsString;
          cxTextEdit69.Text := SP_XML_parser_payer.FieldByName('otprRecipOKPO').AsString;
          cxTextEdit87.Text := SP_XML_parser_payer.FieldByName('otprIxTariffCode').AsString;
          cxTextEdit94.Text := SP_XML_parser_payer.FieldByName('otprPaySum').AsString;

          cxTextEdit300.Text := SP_XML_parser_payer.FieldByName('otprAccompName').AsString;
          cxTextEdit301.Text := SP_XML_parser_payer.FieldByName('otprGuideCount').AsString;
        end;

        if i = 4 then begin
          cxTab_Otpr3.TabVisible := True;
          cxTextEdit70.Text := SP_XML_parser_payer.FieldByName('otprCarCount').AsString;
          cxTextEdit71.Text := SP_XML_parser_payer.FieldByName('otprCarTypeName').AsString;
          cxTextEdit72.Text := SP_XML_parser_payer.FieldByName('otprCarOwnerTypeName').AsString;
          cxTextEdit73.Text := SP_XML_parser_payer.FieldByName('otprFreightName').AsString;
          cxTextEdit74.Text := SP_XML_parser_payer.FieldByName('otprFreightCode').AsString;
          cxTextEdit75.Text := SP_XML_parser_payer.FieldByName('otprFreightGNGCode').AsString;
          cxTextEdit76.Text := SP_XML_parser_payer.FieldByName('otprFreightGNGName').AsString;
          cxTextEdit77.Text := SP_XML_parser_payer.FieldByName('otprFreightWeight').AsString;
          cxTextEdit78.Text := SP_XML_parser_payer.FieldByName('otprToCountryName').AsString;
          cxTextEdit79.Text := SP_XML_parser_payer.FieldByName('otprToCountryCode').AsString;
          cxTextEdit80.Text := SP_XML_parser_payer.FieldByName('otprToStationName').AsString;
          cxTextEdit81.Text := SP_XML_parser_payer.FieldByName('otprToStationCode').AsString;
          cxTextEdit82.Text := SP_XML_parser_payer.FieldByName('otprExitStationName').AsString;
          cxTextEdit83.Text := SP_XML_parser_payer.FieldByName('otprExitStationCode').AsString;
          cxTextEdit84.Text := SP_XML_parser_payer.FieldByName('otprRecipName').AsString;
          cxTextEdit85.Text := SP_XML_parser_payer.FieldByName('otprRecipOKPO').AsString;
          cxTextEdit86.Text := SP_XML_parser_payer.FieldByName('otprIxTariffCode').AsString;
          cxTextEdit95.Text := SP_XML_parser_payer.FieldByName('otprPaySum').AsString;

          cxTextEdit400.Text := SP_XML_parser_payer.FieldByName('otprAccompName').AsString;
          cxTextEdit401.Text := SP_XML_parser_payer.FieldByName('otprGuideCount').AsString;
        end;

        i := i+1;
        SP_XML_parser_payer.Next;
      end;

      SP_XML_parser_payer.Close;
      SP_XML_parser_payer.Parameters.Refresh;
      SP_XML_parser_payer.Parameters.ParamByName('@row_id').Value :=Query_RT.FieldByName('rt_id').AsInteger;
      SP_XML_parser_payer.Parameters.ParamByName('@doc_type_id').Value  :=29;
      SP_XML_parser_payer.Parameters.ParamByName('@doc_sub').Value      :=1;
      SP_XML_parser_payer.Open;

    end;
  end else begin
    cxTab_Otpr1.TabVisible := False;
    cxTab_Otpr2.TabVisible := False;
    cxTab_Otpr3.TabVisible := False;
    cxTab_Otpr4.TabVisible := False;

    ClientDSClear(ClientDataSet2);
    ClientDSToForm(self, ClientDataSet2);
    cxLabel120.Caption := 'ТЕЛЕГРАММА';
    cxLabel169.Caption := 'Состояние: ';
    cxLabel170.Caption := 'Дата согласования: ';
    cxLabel169.Style.Font.Color := clWindowText;
    cxLabel170.Style.Font.Color := clWindowText;
    SP_XML_parser_payer.Close;
  end;
  Screen.Cursor := crDefault;
end;

procedure TfmEtrRT.cxGridDBBandedTableView13CustomDrawCell(
  Sender: TcxCustomGridTableView; ACanvas: TcxCanvas;
  AViewInfo: TcxGridTableDataCellViewInfo; var ADone: Boolean);
begin
	if AViewInfo.GridRecord.Selected or AViewInfo.GridRecord.Focused then begin
		ACanvas.Brush.Color := clNavy;
		ACanvas.Font.Color := clWhite;
		if AViewInfo.Focused then ACanvas.Brush.Color := clBlue;
	end;
end;

procedure TfmEtrRT.cxGridDBBandedTableView13CustomDrawColumnHeader(
  Sender: TcxGridTableView; ACanvas: TcxCanvas;
  AViewInfo: TcxGridColumnHeaderViewInfo; var ADone: Boolean);
begin
	if AViewInfo.Column.Focused then begin
		ACanvas.Brush.Color := clNavy;
		ACanvas.Font.Color := clWhite;
	end;
end;

procedure TfmEtrRT.cxGridDBBandedTableView13FilterOnChanged(Sender: TObject);
begin
	DrawcxGridColumnOnFiltered(Sender);
end;

procedure TfmEtrRT.cxGridDBBandedTableView13FocusedItemChanged(
  Sender: TcxCustomGridTableView; APrevFocusedItem,
  AFocusedItem: TcxCustomGridTableItem);
begin
	cxGridDBBandedTableView13.Painter.Invalidate;
end;

procedure TfmEtrRT.dxBarButton10Click(Sender: TObject);
begin
	cxGrid14DBBandedTableView1.OptionsView.GroupByBox := not cxGrid14DBBandedTableView1.OptionsView.GroupByBox;
end;

procedure TfmEtrRT.dxBarButton11Click(Sender: TObject);
begin
	FiltercxGrid4ListID(cxGrid14DBBandedTableView1);
end;

procedure TfmEtrRT.dxBarButton12Click(Sender: TObject);
begin
	cxGrid14DBBandedTableView1.Filtering.ColumnFilteredItemsList := not dxBarButton12.Down;
end;

procedure TfmEtrRT.dxBarButton1Click(Sender: TObject);
begin
  RefreshQueryGrid(cxGrid14DBBandedTableView1, 'xml_reply_id');
end;

procedure TfmEtrRT.dxBarButton2Click(Sender: TObject);
begin
  if not Query_RT.FieldByName('rt_id').IsNull then PrintTelegram(Query_RT.FieldByName('rt_id').AsInteger, ADOEtran)
  else ShowMessage('Разрешающая телеграма не найдена.');
end;

procedure TfmEtrRT.dxBarButton3Click(Sender: TObject);
begin
	PrintcxGrid(cxGridDBBandedTableView13);
end;

procedure TfmEtrRT.dxBarButton4Click(Sender: TObject);
begin
	SetdxDBGridColumns(cxGridDBBandedTableView13);
end;

procedure TfmEtrRT.dxBarButton5Click(Sender: TObject);
begin
	cxGridDBBandedTableView13.OptionsView.GroupByBox := not cxGridDBBandedTableView13.OptionsView.GroupByBox;
end;

procedure TfmEtrRT.dxBarButton6Click(Sender: TObject);
begin
	FiltercxGrid4ListID(cxGridDBBandedTableView13);
end;

procedure TfmEtrRT.dxBarButton7Click(Sender: TObject);
begin
	cxGridDBBandedTableView13.Filtering.ColumnFilteredItemsList := not dxBarButton7.Down;
end;

procedure TfmEtrRT.dxBarButton8Click(Sender: TObject);
begin
	PrintcxGrid(cxGrid14DBBandedTableView1);
end;

procedure TfmEtrRT.dxBarButton9Click(Sender: TObject);
begin
	SetdxDBGridColumns(cxGrid14DBBandedTableView1);
end;

procedure TfmEtrRT.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  StoreRegistryGrid(rgSave,'\Software\Lis1\Etran\Rt_Grids', cxGrid14DBBandedTableView1);
  Action := caFree;
end;

constructor TfmEtrRT.Create(AOwner:TApplication; flag: boolean; users_group_cod: string; usr_pwd:PUser_pwd);
begin
  Screen.Cursor := -11;
  inherited Create(nil);

  WindowState := wsMaximized;

  Fusr_pwd := usr_pwd;
  Fusers_group_cod := users_group_cod;

  ClientDataSet2.CreateDataSet;

  StoreRegistryGrid(rgLoad,'\Software\Lis1\Etran\Rt_Grids', cxGrid14DBBandedTableView1);


  ADOEtran.Connected := False;
  ADOEtran.ConnectionString := GetEtranConnect(Fusers_group_cod, Fusr_pwd);
  ADOEtran.Connected := True;

  Screen.Cursor := 0;
end;

procedure TfmEtrRT.SetPeriodRT(period_begin: TDateTime; period_end: TDateTime);
begin
  Query_RT.SQL[19] := 'convert(varchar(8),rt_date_agreement,112) >= '+DateToSQL(period_begin) + ' AND ' +
                      'convert(varchar(8),rt_date_agreement,112) <= '+DateToSQL(period_end);
//  if Fcompany_id <> -1 then  Query_RT.SQL[19] := Query_RT.SQL[19]+' AND company_id = ' + IntToStr(Fcompany_id);

  ClientDSClear(ClientDataSet2);
  ClientDSToForm(self, ClientDataSet2);

  Query_RT.Open;
  cxDateEdit5.Date :=period_begin;
  cxDateEdit6.Date :=period_end;
end;


procedure TfmEtrRT.cxGridDBBandedTableView13KeyPress(Sender: TObject;
  var Key: Char);
begin
	FilterColumnGridOnKeyPress(cxGridDBBandedTableView13, Key);
end;

procedure TfmEtrRT.cxGrid14DBBandedTableView1KeyPress(Sender: TObject;
  var Key: Char);
begin
	FilterColumnGridOnKeyPress(cxGrid14DBBandedTableView1, Key);
end;

end.
