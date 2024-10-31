unit BargainRailAdd;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, cxLookAndFeelPainters, cxGraphics, Menus, Buttons, cxDropDownEdit,
  cxCurrencyEdit, cxGroupBox, cxRadioGroup, StdCtrls, cxCheckBox, cxTextEdit,
  cxButtons, cxPC, cxButtonEdit, cxMaskEdit, cxLookupEdit, cxDBLookupEdit, XMLDoc,
  cxDBLookupComboBox, cxControls, cxContainer, cxEdit, cxLabel, ExtCtrls, Default,
  DB, ADODB, DBClient, DateUtils, cxPropertiesStore, cxStyles, cxCustomData, cxFilter,
  cxData, cxDataStorage, cxDBData, cxGridLevel, cxGridCustomTableView, cxGridTableView,
  cxGridBandedTableView, cxGridDBBandedTableView, cxClasses, cxGridCustomView, cxGrid,
  dxBar, cxMemo, cxRichEdit, cxCalendar, cxGridDBTableView, cxSplitter, ComCtrls,
  StrUtils, cxLookAndFeels, dxSkinsCore, dxSkinBlack, dxSkinBlue, dxSkinBlueprint, dxSkinCaramel, dxSkinCoffee, dxSkinDarkRoom, dxSkinDarkSide,
  dxSkinDevExpressDarkStyle, dxSkinDevExpressStyle, dxSkinFoggy, dxSkinGlassOceans, dxSkinHighContrast, dxSkiniMaginary, dxSkinLilian,
  dxSkinLiquidSky, dxSkinLondonLiquidSky, dxSkinMcSkin, dxSkinMetropolis, dxSkinMetropolisDark, dxSkinMoneyTwins, dxSkinOffice2007Black,
  dxSkinOffice2007Blue, dxSkinOffice2007Green, dxSkinOffice2007Pink, dxSkinOffice2007Silver, dxSkinOffice2010Black, dxSkinOffice2010Blue,
  dxSkinOffice2010Silver, dxSkinOffice2013DarkGray, dxSkinOffice2013LightGray, dxSkinOffice2013White, dxSkinPumpkin, dxSkinSeven, dxSkinSevenClassic,
  dxSkinSharp, dxSkinSharpPlus, dxSkinSilver, dxSkinSpringTime, dxSkinStardust, dxSkinSummer2008, dxSkinTheAsphaltWorld, dxSkinsDefaultPainters,
  dxSkinValentine, dxSkinVS2010, dxSkinWhiteprint, dxSkinXmas2008Blue, dxSkinscxPCPainter, dxBarBuiltInMenu, cxNavigator, dxSkinsdxBarPainter,
  dxSkinOffice2016Colorful, dxSkinOffice2016Dark, dxSkinVisualStudio2013Blue,
  dxSkinVisualStudio2013Dark, dxSkinVisualStudio2013Light, dxSkinTheBezier, dxDateRanges, cxDataControllerConditionalFormattingRulesManagerDialog;

type
  TfmBargainRailAdd = class(TForm)
    Panel1: TPanel;
    cxLabel5: TcxLabel;
    cxGroupBox1: TcxGroupBox;
    cxLookupComboBox8: TcxLookupComboBox;
    cxButtonEdit9: TcxButtonEdit;
    cxButtonEdit16: TcxButtonEdit;
    cxPageControl1: TcxPageControl;
    cxTabSheet1: TcxTabSheet;
    cxGroupBox3: TcxGroupBox;
    Label8: TLabel;
    Label19: TLabel;
    Label4: TLabel;
    Label9: TLabel;
    cxButtonEdit1: TcxButtonEdit;
    cxButtonEdit2: TcxButtonEdit;
    cxButtonEdit3: TcxButtonEdit;
    cxButtonEdit4: TcxButtonEdit;
    cxButton1: TcxButton;
    cxTextEdit3: TcxTextEdit;
    cxTextEdit4: TcxTextEdit;
    cxGroupBox2: TcxGroupBox;
    Label14: TLabel;
    Label1: TLabel;
    cxButtonEdit10: TcxButtonEdit;
    cxButtonEdit11: TcxButtonEdit;
    cxTextEdit14: TcxTextEdit;
    cxButtonEdit15: TcxButtonEdit;
    cxButtonEdit14: TcxButtonEdit;
    cxButtonEdit12: TcxButtonEdit;
    cxButtonEdit13: TcxButtonEdit;
    cxCheckBox1: TcxCheckBox;
    cxTabSheet2: TcxTabSheet;
    cxTabSheet4: TcxTabSheet;
    Panel5: TPanel;
    Label17: TLabel;
    cxCheckBox9: TcxCheckBox;
    cxLookupComboBox3: TcxLookupComboBox;
    cxLookupComboBox6: TcxLookupComboBox;
    cxRadioGroup4: TcxRadioGroup;
    Panel4: TPanel;
    BitBtn2: TBitBtn;
    BitBtn1: TBitBtn;
    Query_Agent: TADOQuery;
    DS_Agent: TDataSource;
    Query_Ed_Izm: TADOQuery;
    DS_Ed_izm: TDataSource;
    Query_Currency: TADOQuery;
    DS_Currency: TDataSource;
    DS_Cit: TDataSource;
    Query_Cit: TADOQuery;
    DS_TypeKontener: TDataSource;
    Query_TypeKontener: TADOQuery;
    cxTabSheet3: TcxTabSheet;
    cxGrid1: TcxGrid;
    cxGrid1DBBandedTableView1: TcxGridDBBandedTableView;
    cxGrid1Level1: TcxGridLevel;
    DS_Distance: TDataSource;
    ClientDS_AddDistance: TClientDataSet;
    ClientDS_AddDistancenode_id: TIntegerField;
    ClientDS_AddDistancenode_type_id: TIntegerField;
    ClientDS_AddDistancenode_name: TStringField;
    ClientDS_AddDistancenode_cod: TStringField;
    ClientDS_AddDistancenode_type_name: TStringField;
    cxGrid1DBBandedTableView1add_distance_id: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1distance_num: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1node_id: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1node_name: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1node_cod: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1node_type_id: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1node_type_name: TcxGridDBBandedColumn;
    dxBarManager1: TdxBarManager;
    dxBarButton1: TdxBarButton;
    dxBarButton2: TdxBarButton;
    dxBarButton3: TdxBarButton;
    dxBarButton4: TdxBarButton;
    ClientDS_AddDistanceid: TAutoIncField;
    cxGrid1DBBandedTableView1id: TcxGridDBBandedColumn;
    ClientDS_AddDistancedistance_num: TIntegerField;
    cxGrid2: TcxGrid;
    cxGridDBBandedTableView1: TcxGridDBBandedTableView;
    cxGridLevel1: TcxGridLevel;
    ClientDS_AddPayers: TClientDataSet;
    AutoIncField1: TAutoIncField;
    DS_AddPayers: TDataSource;
    ClientDS_AddPayersadd_payers_id: TIntegerField;
    ClientDS_AddPayersfirm_id: TIntegerField;
    ClientDS_AddPayersstate_id: TIntegerField;
    ClientDS_AddPayersfirm_name: TStringField;
    ClientDS_AddPayersstate_name: TStringField;
    cxGridDBBandedTableView1id: TcxGridDBBandedColumn;
    cxGridDBBandedTableView1add_payers_id: TcxGridDBBandedColumn;
    cxGridDBBandedTableView1orders_agree_rail_id: TcxGridDBBandedColumn;
    cxGridDBBandedTableView1firm_id: TcxGridDBBandedColumn;
    cxGridDBBandedTableView1state_id: TcxGridDBBandedColumn;
    cxGridDBBandedTableView1firm_name: TcxGridDBBandedColumn;
    cxGridDBBandedTableView1state_name: TcxGridDBBandedColumn;
    dxBarPopupMenu2: TdxBarPopupMenu;
    dxBarPopupMenu1: TdxBarPopupMenu;
    Panel2: TPanel;
    Query_TypeAdd: TADOQuery;
    DS_TypeAdd: TDataSource;
    cxTabSheet5: TcxTabSheet;
    Panel3: TPanel;
    Label12: TLabel;
    Label15: TLabel;
    Label18: TLabel;
    cxMemo1: TcxMemo;
    cxButtonEdit5: TcxButtonEdit;
    cxButtonEdit6: TcxButtonEdit;
    ClientDS_AddPayersglobal_id: TIntegerField;
    Panel6: TPanel;
    Label22: TLabel;
    cxLookupComboBox4: TcxLookupComboBox;
    ClientDS_AddDistanceglobal_id: TIntegerField;
    ClientDS_AddDistanceadd_distance_id: TIntegerField;
    cxGroupBox5: TcxGroupBox;
    Label5: TLabel;
    Label6: TLabel;
    Label3: TLabel;
    cxLookupComboBox1: TcxLookupComboBox;
    cxLookupComboBox2: TcxLookupComboBox;
    cxGroupBox4: TcxGroupBox;
    Label20: TLabel;
    Label21: TLabel;
    Label23: TLabel;
    cxLookupComboBox9: TcxLookupComboBox;
    cxSplitter4: TcxSplitter;
    Panel7: TPanel;
    cxLabel1: TcxLabel;
    dxBarDockControl1: TdxBarDockControl;
    cxGrid3: TcxGrid;
    cxGridLevel2: TcxGridLevel;
    Query_NDS: TADOQuery;
    DS_NDS: TDataSource;
    DS_RailFact: TDataSource;
    cxCheckBox6: TcxCheckBox;
    Query_Service: TADOQuery;
    DS_Service: TDataSource;
    ClientDS_RailFact: TClientDataSet;
    ClientDS_RailFactfact_id: TIntegerField;
    ClientDS_RailFactbargain_id: TIntegerField;
    ClientDS_RailFactnum_document: TStringField;
    ClientDS_RailFactnum_document_pref: TStringField;
    ClientDS_RailFactnum_vagon: TIntegerField;
    ClientDS_RailFactnum_konten: TStringField;
    ClientDS_RailFactsub_cod_self: TStringField;
    ClientDS_RailFactdate_from_to: TDateTimeField;
    ClientDS_RailFactdatpr: TDateTimeField;
    ClientDS_RailFacttype_kontener_name: TStringField;
    ClientDS_RailFactfact_weight: TCurrencyField;
    ClientDS_RailFactcalc_weight: TCurrencyField;
    ClientDS_RailFacttransport_pay: TCurrencyField;
    ClientDS_RailFactnds: TCurrencyField;
    ClientDS_RailFactkateg_send: TIntegerField;
    ClientDS_RailFactfirm_info_name: TStringField;
    ClientDS_RailFactcalc_weight_check: TBooleanField;
    ClientDS_RailFactxml_reply_id: TIntegerField;
    ClientDS_RailFactfolder: TStringField;
    ClientDS_RailFactfact_etran_comment: TStringField;
    ClientDS_RailFactfact_users_comment: TStringField;
    ClientDS_RailFactglobal_color: TIntegerField;
    ClientDS_RailFactdate_ready: TDateTimeField;
    ClientDS_RailFactnode_begin_name: TStringField;
    ClientDS_RailFactnode_end_name: TStringField;
    ClientDS_RailFactdate_delivery: TDateTimeField;
    ClientDS_RailFactetran_owner_name: TStringField;
    ClientDS_RailFactbargain_new_id: TIntegerField;
    ClientDS_RailFactfact_rate_not_nds: TCurrencyField;
    ClientDS_RailFactfact_rate: TCurrencyField;
    ClientDS_RailFactfact_count: TCurrencyField;
    ClientDS_RailFactfact_sum: TCurrencyField;
    cxGrid3DBBandedTableView1: TcxGridDBBandedTableView;
    cxGrid3DBBandedTableView1fact_id: TcxGridDBBandedColumn;
    cxGrid3DBBandedTableView1bargain_id: TcxGridDBBandedColumn;
    cxGrid3DBBandedTableView1num_document: TcxGridDBBandedColumn;
    cxGrid3DBBandedTableView1num_document_pref: TcxGridDBBandedColumn;
    cxGrid3DBBandedTableView1num_vagon: TcxGridDBBandedColumn;
    cxGrid3DBBandedTableView1num_konten: TcxGridDBBandedColumn;
    cxGrid3DBBandedTableView1sub_cod_self: TcxGridDBBandedColumn;
    cxGrid3DBBandedTableView1date_from_to: TcxGridDBBandedColumn;
    cxGrid3DBBandedTableView1datpr: TcxGridDBBandedColumn;
    cxGrid3DBBandedTableView1type_kontener_name: TcxGridDBBandedColumn;
    cxGrid3DBBandedTableView1fact_weight: TcxGridDBBandedColumn;
    cxGrid3DBBandedTableView1calc_weight: TcxGridDBBandedColumn;
    cxGrid3DBBandedTableView1kargo_capacity: TcxGridDBBandedColumn;
    cxGrid3DBBandedTableView1transport_pay: TcxGridDBBandedColumn;
    cxGrid3DBBandedTableView1set_main: TcxGridDBBandedColumn;
    cxGrid3DBBandedTableView1nds: TcxGridDBBandedColumn;
    cxGrid3DBBandedTableView1firm_info_name: TcxGridDBBandedColumn;
    cxGrid3DBBandedTableView1calc_weight_check: TcxGridDBBandedColumn;
    cxGrid3DBBandedTableView1xml_reply_id: TcxGridDBBandedColumn;
    cxGrid3DBBandedTableView1folder: TcxGridDBBandedColumn;
    cxGrid3DBBandedTableView1fact_etran_comment: TcxGridDBBandedColumn;
    cxGrid3DBBandedTableView1fact_users_comment: TcxGridDBBandedColumn;
    cxGrid3DBBandedTableView1global_color: TcxGridDBBandedColumn;
    cxGrid3DBBandedTableView1date_ready: TcxGridDBBandedColumn;
    cxGrid3DBBandedTableView1node_begin_name: TcxGridDBBandedColumn;
    cxGrid3DBBandedTableView1node_end_name: TcxGridDBBandedColumn;
    cxGrid3DBBandedTableView1date_delivery: TcxGridDBBandedColumn;
    cxGrid3DBBandedTableView1etran_owner_name: TcxGridDBBandedColumn;
    cxGrid3DBBandedTableView1bargain_new_id: TcxGridDBBandedColumn;
    cxGrid3DBBandedTableView1fact_rate_not_nds: TcxGridDBBandedColumn;
    cxGrid3DBBandedTableView1fact_rate: TcxGridDBBandedColumn;
    cxGrid3DBBandedTableView1fact_count: TcxGridDBBandedColumn;
    cxGrid3DBBandedTableView1fact_sum: TcxGridDBBandedColumn;
    dxBarPopupMenu3: TdxBarPopupMenu;
    dxBarSubItem1: TdxBarSubItem;
    dxBarButton5: TdxBarButton;
    dxBarButton6: TdxBarButton;
    dxBarButton9: TdxBarButton;
    dxBarButton10: TdxBarButton;
    ClientDS_RailFactbargain_fact_id: TIntegerField;
    ClientDS_RailFactbargain_add_id: TIntegerField;
    cxTabSheet6: TcxTabSheet;
    Panel8: TPanel;
    cxGrid4: TcxGrid;
    cxGridDBBandedTableView2: TcxGridDBBandedTableView;
    cxGridLevel3: TcxGridLevel;
    cxLabel2: TcxLabel;
    dxBarButton11: TdxBarButton;
    ClientDS_ListRate: TClientDataSet;
    AutoIncField2: TAutoIncField;
    DS_ListRate: TDataSource;
    ClientDS_ListRatebargain_rate_id: TIntegerField;
    ClientDS_ListRatebargain_add_id: TIntegerField;
    ClientDS_ListRatetype_vagon_id: TIntegerField;
    ClientDS_ListRatetype_vagon_name: TStringField;
    ClientDS_ListRatetype_send_id: TIntegerField;
    ClientDS_ListRatetype_send_name: TStringField;
    ClientDS_ListRateweight: TCurrencyField;
    ClientDS_ListRaterate_val: TCurrencyField;
    ClientDS_ListRateset_one: TBooleanField;
    cxGridDBBandedTableView2id: TcxGridDBBandedColumn;
    cxGridDBBandedTableView2bargain_rate_id: TcxGridDBBandedColumn;
    cxGridDBBandedTableView2bargain_add_id: TcxGridDBBandedColumn;
    cxGridDBBandedTableView2type_vagon_id: TcxGridDBBandedColumn;
    cxGridDBBandedTableView2type_vagon_name: TcxGridDBBandedColumn;
    cxGridDBBandedTableView2type_send_id: TcxGridDBBandedColumn;
    cxGridDBBandedTableView2type_send_name: TcxGridDBBandedColumn;
    cxGridDBBandedTableView2weight: TcxGridDBBandedColumn;
    cxGridDBBandedTableView2rate_val: TcxGridDBBandedColumn;
    cxGridDBBandedTableView2set_one: TcxGridDBBandedColumn;
    dxBarButton12: TdxBarButton;
    cxSplitter1: TcxSplitter;
    Panel9: TPanel;
    Label2: TLabel;
    Label16: TLabel;
    cxLookupComboBox10: TcxLookupComboBox;
    cxLookupComboBox7: TcxLookupComboBox;
    Query_Type_Vagon: TADOQuery;
    DS_Type_Vagon: TDataSource;
    Query_Type_Send: TADOQuery;
    DS_Type_Send: TDataSource;
    ClientDS_RailFacttype_vagon_id: TIntegerField;
    ClientDS_RailFacttype_vagon_name: TStringField;
    ClientDS_RailFacttype_send_id: TIntegerField;
    ClientDS_RailFacttype_send_name: TStringField;
    cxGrid3DBBandedTableView1type_send_id: TcxGridDBBandedColumn;
    cxGrid3DBBandedTableView1type_send_name: TcxGridDBBandedColumn;
    cxGrid3DBBandedTableView1type_vagon_id: TcxGridDBBandedColumn;
    cxGrid3DBBandedTableView1type_vagon_name: TcxGridDBBandedColumn;
    dxBarPopupMenu4: TdxBarPopupMenu;
    dxBarButton13: TdxBarButton;
    dxBarButton14: TdxBarButton;
    dxBarButton15: TdxBarButton;
    dxBarButton16: TdxBarButton;
    cxCheckBox3: TcxCheckBox;
    cxTabSheet7: TcxTabSheet;
    cxGroupBox6: TcxGroupBox;
    cxRadioGroup2: TcxRadioGroup;
    cxCheckBox4: TcxCheckBox;
    cxCheckBox5: TcxCheckBox;
    cxCurrencyEdit8: TcxCurrencyEdit;
    cxButtonEdit25: TcxButtonEdit;
    cxButtonEdit26: TcxButtonEdit;
    cxButtonEdit27: TcxButtonEdit;
    cxComboBox3: TcxComboBox;
    ClientDS_RailFactexchange_date: TDateField;
    cxGrid3DBBandedTableView1exchange_date: TcxGridDBBandedColumn;
    cxCurrencyEdit2: TcxCurrencyEdit;
    Label11: TLabel;
    cxCurrencyEdit3: TcxCurrencyEdit;
    Label13: TLabel;
    cxGroupBox7: TcxGroupBox;
    Label7: TLabel;
    Label28: TLabel;
    Label29: TLabel;
    cxCurrencyEdit15: TcxCurrencyEdit;
    cxCurrencyEdit9: TcxCurrencyEdit;
    cxCurrencyEdit10: TcxCurrencyEdit;
    cxCurrencyEdit1: TcxCurrencyEdit;
    Label24: TLabel;
    ClientDS_RailFactset_main: TBooleanField;
    cxPropertiesStore1: TcxPropertiesStore;
    ClientDS_RailFactkargo_capacity: TCurrencyField;
    dxBarButton17: TdxBarButton;
    dxBarButton18: TdxBarButton;
    cxTabSheet8: TcxTabSheet;
    RichEdit1: TRichEdit;
    Label10: TLabel;
    cxComboBox1: TcxComboBox;
    cxComboBox2: TcxComboBox;
    Label34: TLabel;
    cxButtonEdit7: TcxButtonEdit;
    Label36: TLabel;
    cxButtonEdit8: TcxButtonEdit;
    Label38: TLabel;
    cxButtonEdit18: TcxButtonEdit;
    Label39: TLabel;
    cxButtonEdit19: TcxButtonEdit;
    Label31: TLabel;
    cxTextEdit17: TcxTextEdit;
    Label25: TLabel;
    cxComboBox4: TcxComboBox;
    cxComboBox5: TcxComboBox;
    Label26: TLabel;
    cxComboBox6: TcxComboBox;
    cxComboBox7: TcxComboBox;
    procedure dxBarButton5Click(Sender: TObject);
    procedure cxGrid3DBBandedTableView1CustomDrawCell(Sender: TcxCustomGridTableView; ACanvas: TcxCanvas; AViewInfo: TcxGridTableDataCellViewInfo; var ADone: Boolean);
    procedure cxCheckBox6PropertiesEditValueChanged(Sender: TObject);
    procedure cxLookupComboBox9PropertiesEditValueChanged(Sender: TObject);
    procedure ClientDS_RailFactAfterPost(DataSet: TDataSet);
    procedure cxCheckBox3PropertiesEditValueChanged(Sender: TObject);
    procedure cxGrid3DBBandedTableView1EditKeyDown(Sender: TcxCustomGridTableView; AItem: TcxCustomGridTableItem; AEdit: TcxCustomEdit; var Key: Word; Shift: TShiftState);
    procedure ClientDS_RailFactBeforePost(DataSet: TDataSet);
    procedure cxCheckBox4PropertiesEditValueChanged(Sender: TObject);
    procedure cxLookupComboBox2PropertiesEditValueChanged(Sender: TObject);
    procedure cxButtonEdit6PropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
    procedure cxButtonEdit5PropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
    procedure dxBarButton3Click(Sender: TObject);
    procedure cxGridDBBandedTableView1state_namePropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
    procedure cxGridDBBandedTableView1firm_namePropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
    procedure cxGrid1DBBandedTableView1node_type_namePropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
    procedure cxGrid1DBBandedTableView1node_codPropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
    procedure cxGrid1DBBandedTableView1node_namePropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
    procedure dxBarButton1Click(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure cxCheckBox9PropertiesChange(Sender: TObject);
    procedure cxButtonEdit9PropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
    procedure cxButtonEdit12PropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
    procedure cxCheckBox1PropertiesEditValueChanged(Sender: TObject);
    procedure cxButtonEdit14PropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
    procedure cxButtonEdit10PropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
    procedure cxButton1Click(Sender: TObject);
    procedure cxButtonEdit3PropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
    procedure cxButtonEdit2PropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
    procedure cxButtonEdit4PropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
    procedure cxButtonEdit1PropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
    procedure cxLookupComboBox8PropertiesChange(Sender: TObject);
    procedure cxComboBox1PropertiesChange(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure dxBarButton11Click(Sender: TObject);
    procedure dxBarPopupMenu3Popup(Sender: TObject);
    procedure dxBarButton12Click(Sender: TObject);
    procedure dxBarButton13Click(Sender: TObject);
    procedure cxGridDBBandedTableView2CustomDrawCell(
      Sender: TcxCustomGridTableView; ACanvas: TcxCanvas;
      AViewInfo: TcxGridTableDataCellViewInfo; var ADone: Boolean);
    procedure dxBarButton14Click(Sender: TObject);
    procedure cxGridDBBandedTableView2weightGetDisplayText(
      Sender: TcxCustomGridTableItem; ARecord: TcxCustomGridRecord;
      var AText: string);
    procedure cxGridDBBandedTableView2Editing(Sender: TcxCustomGridTableView;
      AItem: TcxCustomGridTableItem; var AAllow: Boolean);
    procedure ClientDS_ListRateAfterPost(DataSet: TDataSet);
    procedure dxBarButton15Click(Sender: TObject);
    procedure cxLookupComboBox7PropertiesChange(Sender: TObject);
    procedure dxBarPopupMenu4Popup(Sender: TObject);
    procedure cxButtonEdit25PropertiesButtonClick(Sender: TObject;
      AButtonIndex: Integer);
    procedure cxComboBox3PropertiesEditValueChanged(Sender: TObject);
    procedure cxCurrencyEdit1PropertiesEditValueChanged(Sender: TObject);
    procedure cxCurrencyEdit3PropertiesEditValueChanged(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure dxBarButton17Click(Sender: TObject);
    procedure dxBarButton4Click(Sender: TObject);
    procedure dxBarButton18Click(Sender: TObject);
    procedure dxBarButton9Click(Sender: TObject);
  private
    Ftype_contract        : integer;
    Ftype_action          : integer;
    Fset_calc_enabled     : boolean; // Автоматический расчет разрешен

    Fcontract_id          : integer;
    Ftype_add_id          : integer;

    Fbargain_add_id       : integer;
    Fbargain_id           : integer;
    Ftype_nds_id          : integer;
    Fservice_id           : integer;
    Fbargain_rail_id      : integer;

    FkargoETSNG_id        : integer;
    FkargoETSNG_add_id    : integer;
    FkargoGNG_id          : integer;
    Fstate_begin_id       : integer;
    Fstate_end_id         : integer;
    Fnode_begin_id        : integer;
    Fnode_end_id          : integer;
    Fcit_id               : integer;
    Ftype_kontener_id     : integer;
    Fcurrency_id          : integer;
    Fed_izm_id            : integer;
    Fcontract_set         : integer;
    Ffirm_sender_id       : integer;
    Ffirm_reciever_id     : integer;

    Ftype_calc_id  : integer;

    Fid                 : integer;
    FClient_bargain     : TClientDataSet;
    FClient_bargain_add : TClientDataSet;
    FClient_bargain_fact: TClientDataSet;
    FClient_bargain_rail: TClientDataSet;
    FClient_bargain_rate: TClientDataSet;
    FClient_distance    : TClientDataSet;
    FClient_payers      : TClientDataSet;
    FClient_fact        : TClientDataSet;
    FClient_bargain_distance    : TClientDataSet;

    Fset_run_dll  : boolean; // Запущена как DLL
    Fconnect      : TADOConnection;
    Fusr_pwd_lis  : PUser_pwd;
    Fusr_pwd_docs : PUser_pwd;

    function  FindInfObj(caption_name: string; table_name: string; set_cod: boolean; var id: integer; var cod: string; var name: string): boolean;
    procedure SetInsert(id: integer);
    procedure SetUpdate(id: integer);
    procedure SetTypeContract(type_contract: integer);
    procedure SetDatePeriod(date_period: TDateTime);
    procedure SetDatePeriodFinance(date_period: TDateTime);
    procedure SetDatePeriodService(date_period: TDateTime);
    function  GetDatePeriod(): TDateTime;
    function  GetDatePeriodFinance(): TDateTime;
    function  GetDatePeriodService(): TDateTime;
    function  GetDatePeriodFirst(): TDateTime;
    function  GetDatePeriodLast (): TDateTime;
    procedure SetKargoAdd(set_kargo_add: boolean);
    procedure CalcSum(fact_id: integer; set_auto_calc: boolean);
    procedure CalcSum_Type0(fact_id: integer; set_auto_calc: boolean);
    procedure CalcSum_Type1(fact_id: integer; set_auto_calc: boolean);
    procedure CalcSum_Type2(fact_id: integer; set_auto_calc: boolean);
    procedure SetTypeCalcAdd(type_calc_add: integer);
  public
    constructor Create(AOwner: TApplication; type_contract: integer); reintroduce;
    constructor CreateDLL(AOwner: TApplication; type_contract: integer; usr_pwd_lis: PUser_pwd; usr_pwd_docs: PUser_pwd); reintroduce;
  published
    property _SetDatePeriod       : TDateTime write SetDatePeriod;
    property _SetDatePeriodFinance: TDateTime write SetDatePeriodFinance;
    property _SetDatePeriodService: TDateTime write SetDatePeriodService;
    property _GetDatePeriod       : TDateTime read GetDatePeriod;
    property _GetDatePeriodFinance: TDateTime read GetDatePeriodFinance;
    property _GetDatePeriodService: TDateTime read GetDatePeriodService;
    property _GetDatePeriodFirst  : TDateTime read GetDatePeriodFirst;
    property _GetDatePeriodLast   : TDateTime read GetDatePeriodLast;

    property _SetClientId         : integer write Fid;
    property _SetClientBargain    : TClientDataSet write FClient_bargain;
    property _SetClientBargainAdd : TClientDataSet write FClient_bargain_add;
    property _SetClientBargainRail: TClientDataSet write FClient_bargain_rail;
    property _SetClientBargainRate: TClientDataSet write FClient_bargain_rate;
    property _SetClientBargainFact: TClientDataSet write FClient_bargain_fact;
    property _SetClientDistance   : TClientDataSet write FClient_distance;
    property _SetClientPayers     : TClientDataSet write FClient_payers;
    property _SetClientFact       : TClientDataSet write FClient_fact;
    property _SetClientBargainDistance : TClientDataSet write FClient_bargain_distance;


    property _SetTypeContract     : integer write SetTypeContract;

    property _SetInsert       : integer write SetInsert;
    property _SetUpdate       : integer write SetUpdate;
    property _SetTypeCalcAdd  : integer write SetTypeCalcAdd;

    property _SetKargoAdd  : boolean   write SetKargoAdd;
  end;

var
  fmBargainRailAdd: TfmBargainRailAdd;

implementation

uses Raznoe, main, Filter, Contract, Period,
  FactCard;

{$R *.dfm}

constructor TfmBargainRailAdd.CreateDLL(AOwner: TApplication; type_contract: integer; usr_pwd_lis: PUser_pwd; usr_pwd_docs: PUser_pwd);
begin
  Screen.Cursor := crHourglass;
  inherited Create(AOwner);
  Fset_calc_enabled := False;

  Fset_run_dll := True;
  Fusr_pwd_docs:= usr_pwd_docs;
  Fusr_pwd_lis := usr_pwd_lis;

  Fconnect := TADOConnection.Create(nil);
  Fconnect.ConnectionString := 'Persist Security Info=True;Provider=SQLOLEDB.1;User ID='+Fusr_pwd_lis^.user_name+';Password='+Fusr_pwd_lis^.user_pass+';Initial Catalog='+Fusr_pwd_lis^.catalog+';Data Source='+Fusr_pwd_lis^.server+';';
  Fconnect.KeepConnection   := False;
  Fconnect.LoginPrompt      := False;

  Query_Agent.Connection       := Fconnect;
  Query_Ed_Izm.Connection      := Fconnect;
  Query_Currency.Connection    := Fconnect;
  Query_Cit.Connection         := Fconnect;
  Query_TypeKontener.Connection:= Fconnect;
  Query_TypeAdd.Connection     := Fconnect;
  Query_NDS.Connection         := Fconnect;
  Query_Service.Connection     := Fconnect;

  _SetTypeContract      := type_contract;

  Fid                   := -9;
  Fcontract_id          := -9;
  Fbargain_add_id       := -9;
  Fbargain_id           := -9;
  Ftype_nds_id          := -9;
  Fservice_id           := -9;
  Fbargain_rail_id      := -9;
  FkargoETSNG_id        := -9;
  FkargoETSNG_add_id    := -9;
  FkargoGNG_id          := -9;
  Fstate_begin_id       := -9;
  Fstate_end_id         := -9;
  Fnode_begin_id        := -9;
  Fnode_end_id          := -9;
  Fcit_id               := -9;
  Ftype_kontener_id     := -9;
  Fcurrency_id          := -9;
  Fed_izm_id            := -9;
  Ftype_add_id          := -9;
  Ffirm_sender_id       := -9;
  Ffirm_reciever_id     := -9;
  Fservice_id           := -9;
  Ftype_calc_id         := -9;

  Query_Currency.Open;
  cxLookupComboBox1.EditValue := Query_Currency.FieldByName('currency_id').Value;

  Query_Ed_Izm.Open;
  cxLookupComboBox2.EditValue := Query_Ed_Izm.FieldByName('inf_obj_id').Value;

  Query_TypeAdd.Open;
  cxLookupComboBox4.EditValue := Query_TypeAdd.Lookup('inf_obj_cod','777','inf_obj_id');

  Query_NDS.Open;
  cxLookupComboBox9.EditValue := Query_NDS.FieldByName('inf_obj_id').Value;

  Query_Cit.Open;
  Query_TypeKontener.Open;
  Query_Service.Open;

  ClientDS_AddDistance.CreateDataSet;
  ClientDS_AddPayers.CreateDataSet;
  ClientDS_RailFact.CreateDataSet;
  ClientDS_ListRate.CreateDataSet;
  ClientDS_AddDistance.LogChanges := False;
  ClientDS_AddPayers.LogChanges := False;
  ClientDS_RailFact.LogChanges := False;
  ClientDS_ListRate.LogChanges := False;

  cxPageControl1.ActivePageIndex := 0;

  StoreRegistryGrid(rgLoad,'\Software\Lis1\BargainRailAdd_Grids', cxGrid3DBBandedTableView1);

  Screen.Cursor := crDefault;

  Fset_calc_enabled := True;
end;

constructor TfmBargainRailAdd.Create(AOwner: TApplication; type_contract: integer);
begin
  Screen.Cursor := crHourglass;
  inherited Create(AOwner);
  Fset_calc_enabled := False;
  
  Fset_run_dll := False;
  Fconnect     := fmMain.Lis;
  Fusr_pwd_docs:= usr_pwd_docs;
  Fusr_pwd_lis := usr_pwd;

  _SetTypeContract      := type_contract;

  Fid                   := -9;
  Fcontract_id          := -9;
  Fbargain_add_id       := -9;
  Fbargain_id           := -9;
  Ftype_nds_id          := -9;
  Fservice_id           := -9;
  Fbargain_rail_id      := -9;
  FkargoETSNG_id        := -9;
  FkargoETSNG_add_id    := -9;
  FkargoGNG_id          := -9;
  Fstate_begin_id       := -9;
  Fstate_end_id         := -9;
  Fnode_begin_id        := -9;
  Fnode_end_id          := -9;
  Fcit_id               := -9;
  Ftype_kontener_id     := -9;
  Fcurrency_id          := -9;
  Fed_izm_id            := -9;
  Ftype_add_id          := -9;
  Ffirm_sender_id       := -9;
  Ffirm_reciever_id     := -9;
  Fservice_id           := -9;

  Query_Currency.Open;
  cxLookupComboBox1.EditValue := Query_Currency.FieldByName('currency_id').Value;

  Query_Ed_Izm.Open;
  cxLookupComboBox2.EditValue := Query_Ed_Izm.FieldByName('inf_obj_id').Value;

  Query_TypeAdd.Open;
  cxLookupComboBox4.EditValue := Query_TypeAdd.Lookup('inf_obj_cod','777','inf_obj_id');

  Query_NDS.Open;
  cxLookupComboBox9.EditValue := Query_NDS.FieldByName('inf_obj_id').Value;

  Query_Service.Open;
  Query_Cit.Open;
  Query_TypeKontener.Open;

  Query_Type_Vagon.Open;
  cxLookupComboBox7.EditValue := Query_Type_Vagon.FieldByName('inf_obj_id').Value;
  Query_Type_Send.Open;
  cxLookupComboBox10.EditValue := Query_Type_Send.FieldByName('inf_obj_id').Value;

  ClientDS_AddDistance.CreateDataSet;
  ClientDS_AddPayers.CreateDataSet;
  ClientDS_RailFact.CreateDataSet;
  ClientDS_ListRate.CreateDataSet;
  ClientDS_AddDistance.LogChanges  := False;
  ClientDS_AddPayers.LogChanges := False;
  ClientDS_RailFact.LogChanges := False;
  ClientDS_ListRate.LogChanges := False;

  cxPageControl1.ActivePageIndex := 0;
  StoreRegistryGrid(rgLoad,'\Software\Lis1\BargainRailAdd_Grids', cxGrid3DBBandedTableView1);
  Screen.Cursor := crDefault;

  MonitorEventFormOpen('OPEN_FORM', self.Name, fmMain.Lis, -9);
  Fset_calc_enabled := True;
end;

procedure TfmBargainRailAdd.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  if Fset_run_dll then Fconnect.Free;
  Action := caFree;
end;

procedure TfmBargainRailAdd.FormDestroy(Sender: TObject);
begin
  StoreRegistryGrid(rgSave, '\Software\Lis1\BargainRailAdd_Grids', cxGrid3DBBandedTableView1);
end;

procedure TfmBargainRailAdd.SetInsert(id: integer);
begin
  Fset_calc_enabled := False;
  Ftype_action := 0;

  if Ftype_contract = 0 then
    Fcontract_id := iif(FClient_bargain.FieldByName('contract_id').IsNull, -9,  FClient_bargain.FieldByName('contract_id').AsInteger)
  else
    Fcontract_id := -9;

  _SetDatePeriod        := FClient_bargain.FieldByName('date_period').AsDateTime;
  _SetDatePeriodService := FClient_bargain.FieldByName('date_period').AsDateTime;
  cxLookupComboBox8.EditValue := Fcontract_id;

  FkargoETSNG_id        := iif(FClient_bargain.FieldByName('kargoETSNG_id').IsNull, -9, FClient_bargain.FieldByName('kargoETSNG_id').AsInteger);
  cxButtonEdit10.Text   := iif(FClient_bargain.FieldByName('kargoETSNG_id').IsNull, '', FClient_bargain.FieldByName('kargoETSNG_name').AsString);
  cxButtonEdit11.Text   := iif(FClient_bargain.FieldByName('kargoETSNG_id').IsNull, '', FClient_bargain.FieldByName('kargoETSNG_cod').AsString);
  cxTextEdit14.Text     := iif(FClient_bargain.FieldByName('kargoETSNG_id').IsNull, '', FClient_bargain.FieldByName('kargoETSNG_group_name').AsString);

  _SetKargoAdd          := iif(FClient_bargain.FieldByName('kargoETSNG_add_id').IsNull, False, True);
  FkargoETSNG_add_id    := iif(FClient_bargain.FieldByName('kargoETSNG_add_id').IsNull, -9, FClient_bargain.FieldByName('kargoETSNG_add_id').AsInteger);
  cxButtonEdit14.Text   := iif(FClient_bargain.FieldByName('kargoETSNG_add_id').IsNull, '', FClient_bargain.FieldByName('kargoETSNG_add_name').AsString);
  cxButtonEdit15.Text   := iif(FClient_bargain.FieldByName('kargoETSNG_add_id').IsNull, '', FClient_bargain.FieldByName('kargoETSNG_add_cod').AsString);

  cxCheckBox1.Checked   := iif(FClient_bargain.FieldByName('kargoGNG_id').IsNull, False, True);
  FkargoGNG_id          := iif(FClient_bargain.FieldByName('kargoGNG_id').IsNull, -9, FClient_bargain.FieldByName('kargoGNG_id').AsInteger);
  cxButtonEdit12.Text   := iif(FClient_bargain.FieldByName('kargoGNG_id').IsNull, '', FClient_bargain.FieldByName('kargoGNG_name').AsString);
  cxButtonEdit13.Text   := iif(FClient_bargain.FieldByName('kargoGNG_id').IsNull, '', FClient_bargain.FieldByName('kargoGNG_cod').AsString);

  if FClient_bargain_distance.Locate('node_type_cod', 3, []) then begin
    Fstate_begin_id       := iif(FClient_bargain_distance.FieldByName('state_id').IsNull, -9, FClient_bargain_distance.FieldByName('state_id').AsInteger);
    cxButtonEdit1.Text    := iif(FClient_bargain_distance.FieldByName('state_id').IsNull, '', FClient_bargain_distance.FieldByName('state_name').AsString);
    Fnode_begin_id        := iif(FClient_bargain_distance.FieldByName('node_id').IsNull, -9, FClient_bargain_distance.FieldByName('node_id').AsInteger);
    cxButtonEdit2.Text    := iif(FClient_bargain_distance.FieldByName('node_id').IsNull, '', FClient_bargain_distance.FieldByName('node_name').AsString);
    cxTextEdit3.Text      := iif(FClient_bargain_distance.FieldByName('node_id').IsNull, '', FClient_bargain_distance.FieldByName('node_cod').AsString);
  end else begin
    Fstate_begin_id       := -9;
    cxButtonEdit1.Text    := '';
    Fnode_begin_id        := -9;
    cxButtonEdit2.Text    := '';
    cxTextEdit3.Text      := '';
  end;

  if FClient_bargain_distance.Locate('node_type_cod', 4, []) then begin
    Fstate_end_id         := iif(FClient_bargain_distance.FieldByName('state_id').IsNull, -9, FClient_bargain_distance.FieldByName('state_id').AsInteger);
    cxButtonEdit4.Text    := iif(FClient_bargain_distance.FieldByName('state_id').IsNull, '', FClient_bargain_distance.FieldByName('state_name').AsString);
    Fnode_end_id          := iif(FClient_bargain_distance.FieldByName('node_id').IsNull, -9, FClient_bargain_distance.FieldByName('node_id').AsInteger);
    cxButtonEdit3.Text    := iif(FClient_bargain_distance.FieldByName('node_id').IsNull, '', FClient_bargain_distance.FieldByName('node_name').AsString);
    cxTextEdit4.Text      := iif(FClient_bargain_distance.FieldByName('node_id').IsNull, '', FClient_bargain_distance.FieldByName('node_cod').AsString);
  end else begin
    Fstate_end_id         := -9;
    cxButtonEdit4.Text    := '';
    Fnode_end_id          := -9;
    cxButtonEdit3.Text    := '';
    cxTextEdit4.Text      := '';
  end;

  cxLookupComboBox2.EditValue :=Query_Ed_Izm.FieldByName('inf_obj_id').Value;

  cxComboBox3.ItemIndex := 0;

  DS_RailFact.DataSet := nil;
  ClientDS_RailFact.AfterPost  := nil;
  ClientDS_RailFact.BeforePost := nil;


  FClient_fact.First;
  while not FClient_fact.Eof do begin
    ClientDS_RailFact.Append();
    ClientDS_RailFact.FieldByName('fact_id'           ).Value := FClient_fact.FieldByName('fact_id').Value;
    ClientDS_RailFact.FieldByName('bargain_fact_id'   ).Value := null;
    ClientDS_RailFact.FieldByName('bargain_add_id'    ).Value := null;
    ClientDS_RailFact.FieldByName('bargain_id'        ).Value := FClient_fact.FieldByName('bargain_id').Value;
    ClientDS_RailFact.FieldByName('num_document'      ).Value := FClient_fact.FieldByName('num_document').Value;
    ClientDS_RailFact.FieldByName('num_document_pref' ).Value := FClient_fact.FieldByName('num_document_pref').Value;
    ClientDS_RailFact.FieldByName('num_vagon'         ).Value := FClient_fact.FieldByName('num_vagon').Value;
    ClientDS_RailFact.FieldByName('num_konten'        ).Value := FClient_fact.FieldByName('num_konten').Value;
    ClientDS_RailFact.FieldByName('sub_cod_self'      ).Value := FClient_fact.FieldByName('sub_cod_self').Value;
    ClientDS_RailFact.FieldByName('date_from_to'      ).Value := FClient_fact.FieldByName('date_from_to').Value;
    ClientDS_RailFact.FieldByName('datpr'             ).Value := FClient_fact.FieldByName('datpr').Value;
    ClientDS_RailFact.FieldByName('type_kontener_name').Value := FClient_fact.FieldByName('type_kontener_name').Value;
    ClientDS_RailFact.FieldByName('fact_weight'       ).Value := FClient_fact.FieldByName('fact_weight').Value;
    ClientDS_RailFact.FieldByName('calc_weight'       ).Value := FClient_fact.FieldByName('calc_weight').Value;
    ClientDS_RailFact.FieldByName('kargo_capacity'    ).Value := FClient_fact.FieldByName('kargo_capacity').Value;
    ClientDS_RailFact.FieldByName('transport_pay'     ).Value := FClient_fact.FieldByName('transport_pay').Value;
    ClientDS_RailFact.FieldByName('nds'               ).Value := FClient_fact.FieldByName('nds').Value;
    ClientDS_RailFact.FieldByName('firm_info_name'    ).Value := FClient_fact.FieldByName('firm_info_name').Value;
    ClientDS_RailFact.FieldByName('calc_weight_check' ).Value := FClient_fact.FieldByName('calc_weight_check').Value;
    ClientDS_RailFact.FieldByName('xml_reply_id'      ).Value := FClient_fact.FieldByName('xml_reply_id').Value;
    ClientDS_RailFact.FieldByName('folder'            ).Value := FClient_fact.FieldByName('folder').Value;
    ClientDS_RailFact.FieldByName('fact_etran_comment').Value := FClient_fact.FieldByName('fact_etran_comment').Value;
    ClientDS_RailFact.FieldByName('fact_users_comment').Value := FClient_fact.FieldByName('fact_users_comment').Value;
    ClientDS_RailFact.FieldByName('global_color'      ).Value := FClient_fact.FieldByName('global_color').Value;
    ClientDS_RailFact.FieldByName('date_ready'        ).Value := FClient_fact.FieldByName('date_ready').Value;
    ClientDS_RailFact.FieldByName('node_begin_name'   ).Value := FClient_fact.FieldByName('node_begin_name').Value;
    ClientDS_RailFact.FieldByName('node_end_name'     ).Value := FClient_fact.FieldByName('node_end_name').Value;
    ClientDS_RailFact.FieldByName('date_delivery'     ).Value := FClient_fact.FieldByName('date_delivery').Value;
    ClientDS_RailFact.FieldByName('etran_owner_name'  ).Value := FClient_fact.FieldByName('etran_owner_name').Value;
    ClientDS_RailFact.FieldByName('bargain_new_id'    ).Value := FClient_fact.FieldByName('bargain_new_id').Value;
    ClientDS_RailFact.FieldByName('set_main'          ).Value := FClient_fact.FieldByName('set_main').Value;
    ClientDS_RailFact.Post();
    FClient_fact.Next();
  end;
  DS_RailFact.DataSet := ClientDS_RailFact;
  ClientDS_RailFact.BeforePost := ClientDS_RailFactBeforePost;
  ClientDS_RailFact.AfterPost  := ClientDS_RailFactAfterPost;
  cxGrid3DBBandedTableView1.Controller.FocusedRowIndex := 0;
  cxCheckBox3.Checked := False;

  Fset_calc_enabled := True;
  cxComboBox3PropertiesEditValueChanged(nil);
  CalcSum(-9, True);
end;

procedure TfmBargainRailAdd.SetUpdate(id: integer);
var i : integer;
begin
  Fset_calc_enabled := False;

  Ftype_action := 1;

  Fid := id;
  FClient_bargain_add.Locate('add_id', Fid, []);

  _SetDatePeriod := FClient_bargain_add.FieldByName('date_period').AsDateTime;
  _SetDatePeriodService := FClient_bargain_add.FieldByName('date_period_service').AsDateTime;

  {$REGION 'Загрузка [BARGAIN_ADD]'}
  _SetTypeCalcAdd   := FClient_bargain_add.FieldByName('type_calc_id').AsInteger;
  Fbargain_add_id   := iif(FClient_bargain_add.FieldByName('bargain_add_id').IsNull, -9, FClient_bargain_add.FieldByName('bargain_add_id').AsInteger);
  Fbargain_id       := iif(FClient_bargain_add.FieldByName('bargain_id').IsNull, -9, FClient_bargain_add.FieldByName('bargain_id').AsInteger);
  Ftype_add_id      := iif(FClient_bargain_add.FieldByName('type_add_id').IsNull, -9, FClient_bargain_add.FieldByName('type_add_id').AsInteger);
  Fcontract_id      := iif(FClient_bargain_add.FieldByName('contract_id').IsNull, -9, FClient_bargain_add.FieldByName('contract_id').AsInteger);
  Fservice_id       := iif(FClient_bargain_add.FieldByName('service_id').IsNull, -9, FClient_bargain_add.FieldByName('service_id').AsInteger);
  Fcurrency_id      := iif(FClient_bargain_add.FieldByName('currency_id').IsNull, -9, FClient_bargain_add.FieldByName('currency_id').AsInteger);
  Ftype_nds_id      := iif(FClient_bargain_add.FieldByName('type_nds_id').IsNull, -9, FClient_bargain_add.FieldByName('type_nds_id').AsInteger);
  Fed_izm_id        := iif(FClient_bargain_add.FieldByName('ed_izm_id').IsNull, -9, FClient_bargain_add.FieldByName('ed_izm_id').AsInteger);


  Ftype_contract              := FClient_bargain_add.FieldByName('type_contract').AsInteger;
  Fcontract_set               := FClient_bargain_add.FieldByName('contract_set').AsInteger;
  cxLookupComboBox4.EditValue := iif(Ftype_add_id = -9, null, Ftype_add_id);
  cxLookupComboBox8.EditValue := iif(Fcontract_id = -9, null, Fcontract_id);
  cxLookupComboBox1.EditValue := iif(Fcurrency_id = -9, null, Fcurrency_id);
  cxLookupComboBox9.EditValue := iif(Ftype_nds_id = -9, null, Ftype_nds_id);
  cxLookupComboBox2.EditValue := iif(Fed_izm_id = -9, null, Fed_izm_id);
  cxCheckBox6.Checked         := FClient_bargain_add.FieldByName('set_include_nds' ).Value;
  cxComboBox3.ItemIndex       := FClient_bargain_add.FieldByName('type_exchange_id').Value;

  cxCurrencyEdit1.EditValue   := FClient_bargain_add.FieldByName('add_rate').Value;
  cxCurrencyEdit3.EditValue   := FClient_bargain_add.FieldByName('add_count').Value;

  cxButtonEdit25.EditValue    := FClient_bargain_add.FieldByName('exchange_USD_val').Value;
  cxButtonEdit26.EditValue    := FClient_bargain_add.FieldByName('exchange_EUR_val').Value;
  cxButtonEdit27.EditValue    := FClient_bargain_add.FieldByName('exchange_CHF_val').Value;
  cxMemo1.EditValue           := FClient_bargain_add.FieldByName('comment').Value;
  {$ENDREGION}

  {$REGION 'Загрузка [BARGAIN_RAIL]'}
  FClient_bargain_rail.Locate('add_id', Fid, []);
  Fbargain_rail_id   := iif(FClient_bargain_rail.FieldByName('bargain_rail_id').IsNull, -9, FClient_bargain_rail.FieldByName('bargain_rail_id').AsInteger);
  FkargoETSNG_id     := iif(FClient_bargain_rail.FieldByName('kargoETSNG_id').IsNull, -9, FClient_bargain_rail.FieldByName('kargoETSNG_id').AsInteger);
  FkargoETSNG_add_id := iif(FClient_bargain_rail.FieldByName('kargoETSNG_add_id').IsNull, -9, FClient_bargain_rail.FieldByName('kargoETSNG_add_id').AsInteger);
  FkargoGNG_id       := iif(FClient_bargain_rail.FieldByName('kargoGNG_id').IsNull, -9, FClient_bargain_rail.FieldByName('kargoGNG_id').AsInteger);
  Fstate_begin_id    := iif(FClient_bargain_rail.FieldByName('state_begin_id').IsNull, -9, FClient_bargain_rail.FieldByName('state_begin_id').AsInteger);
  Fstate_end_id      := iif(FClient_bargain_rail.FieldByName('state_end_id').IsNull, -9, FClient_bargain_rail.FieldByName('state_end_id').AsInteger);
  Fnode_begin_id     := iif(FClient_bargain_rail.FieldByName('node_begin_id').IsNull, -9, FClient_bargain_rail.FieldByName('node_begin_id').AsInteger);
  Fnode_end_id       := iif(FClient_bargain_rail.FieldByName('node_end_id').IsNull, -9, FClient_bargain_rail.FieldByName('node_end_id').AsInteger);
  Fcit_id            := iif(FClient_bargain_rail.FieldByName('cit_id').IsNull, -9, FClient_bargain_rail.FieldByName('cit_id').AsInteger);
  Ftype_kontener_id  := iif(FClient_bargain_rail.FieldByName('type_kontener_id').IsNull, -9, FClient_bargain_rail.FieldByName('type_kontener_id').AsInteger);
  Ffirm_sender_id    := iif(FClient_bargain_rail.FieldByName('firm_sender_id').IsNull, -9, FClient_bargain_rail.FieldByName('firm_sender_id').AsInteger);
  Ffirm_reciever_id  := iif(FClient_bargain_rail.FieldByName('firm_reciever_id').IsNull, -9, FClient_bargain_rail.FieldByName('firm_reciever_id').AsInteger);

  cxLookupComboBox3.EditValue := iif(Fcit_id = -9, null, Fcit_id);
  cxLookupComboBox6.EditValue := iif(Ftype_kontener_id = -9, null, Ftype_kontener_id);
  cxRadioGroup2.ItemIndex     := FClient_bargain_rail.FieldByName('calc_round_weight').Value;
  cxCurrencyEdit8.EditValue   := FClient_bargain_rail.FieldByName('calc_kargo_min_norm').Value;
  cxCheckBox5.Checked         := FClient_bargain_rail.FieldByName('calc_set_grp').Value;
  cxButtonEdit11.EditValue    := FClient_bargain_rail.FieldByName('kargoETSNG_cod').Value;
  cxButtonEdit10.EditValue    := FClient_bargain_rail.FieldByName('kargoETSNG_name').Value;
  cxTextEdit14.EditValue      := FClient_bargain_rail.FieldByName('kargoETSNG_group_name').Value;
  cxButtonEdit15.EditValue    := FClient_bargain_rail.FieldByName('kargoETSNG_add_cod').Value;
  cxButtonEdit14.EditValue    := FClient_bargain_rail.FieldByName('kargoETSNG_add_name').Value;
  cxButtonEdit13.EditValue    := FClient_bargain_rail.FieldByName('kargoGNG_cod').Value;
  cxButtonEdit12.EditValue    := FClient_bargain_rail.FieldByName('kargoGNG_name').Value;
  cxButtonEdit1.EditValue     := FClient_bargain_rail.FieldByName('state_begin_name').Value;
  cxButtonEdit4.EditValue     := FClient_bargain_rail.FieldByName('state_end_name').Value;
  cxTextEdit3.EditValue       := FClient_bargain_rail.FieldByName('node_begin_cod').Value;
  cxButtonEdit2.EditValue     := FClient_bargain_rail.FieldByName('node_begin_name').Value;
  cxTextEdit4.EditValue       := FClient_bargain_rail.FieldByName('node_end_cod').Value;
  cxButtonEdit3.EditValue     := FClient_bargain_rail.FieldByName('node_end_name').Value;
  cxRadioGroup4.ItemIndex     := FClient_bargain_rail.FieldByName('set_attr_self').Value;
  cxButtonEdit5.EditValue     := FClient_bargain_rail.FieldByName('firm_sender_name').Value;
  cxButtonEdit6.EditValue     := FClient_bargain_rail.FieldByName('firm_reciever_name').Value;
  cxCheckBox3.Checked         := FClient_bargain_rail.FieldByName('set_list_rate').Value;

  if cxCurrencyEdit8.EditValue <> null then cxCheckBox4.Checked := True
  else cxCheckBox4.Checked := False;
  {$ENDREGION}

  FClient_bargain_fact.Filter   := 'add_id=' + IntToStr(Fid);
  FClient_bargain_fact.Filtered := True;

//  DS_RailFact.DataSet := nil;
//  ClientDS_RailFact.AfterPost  := nil;
//  ClientDS_RailFact.BeforePost := nil;

  FClient_bargain_fact.DisableControls;
  ClientDS_RailFact.DisableControls;

  FClient_bargain_fact.First;
//  while not FClient_bargain_fact.Eof do begin
//    ClientDS_RailFact.Append;
//    ClientDS_RailFact.FieldByName('bargain_fact_id'   ).Value := FClient_bargain_fact.FieldByName('bargain_fact_id'  ).Value;
//    ClientDS_RailFact.FieldByName('bargain_add_id'    ).Value := FClient_bargain_fact.FieldByName('bargain_add_id'   ).Value;
//    ClientDS_RailFact.FieldByName('fact_id'           ).Value := FClient_bargain_fact.FieldByName('fact_id'          ).Value;
//    ClientDS_RailFact.FieldByName('fact_rate_not_nds' ).Value := FClient_bargain_fact.FieldByName('fact_rate_not_nds').Value;
//    ClientDS_RailFact.FieldByName('fact_rate'         ).Value := FClient_bargain_fact.FieldByName('fact_rate'        ).Value;
//    ClientDS_RailFact.FieldByName('fact_count'        ).Value := FClient_bargain_fact.FieldByName('fact_count'       ).Value;
//    ClientDS_RailFact.FieldByName('fact_sum'          ).Value := FClient_bargain_fact.FieldByName('fact_sum'         ).Value;
//    ClientDS_RailFact.FieldByName('type_vagon_id'     ).Value := FClient_bargain_fact.FieldByName('type_vagon_id'    ).Value;
//    ClientDS_RailFact.FieldByName('type_send_id'      ).Value := FClient_bargain_fact.FieldByName('type_send_id'     ).Value;
//    ClientDS_RailFact.FieldByName('type_vagon_name'   ).Value := FClient_bargain_fact.FieldByName('type_vagon_name'  ).Value;
//    ClientDS_RailFact.FieldByName('type_send_name'    ).Value := FClient_bargain_fact.FieldByName('type_send_name'   ).Value;
//    ClientDS_RailFact.FieldByName('set_main'          ).Value := FClient_bargain_fact.FieldByName('set_main'         ).Value;
//    ClientDS_RailFact.FieldByName('exchange_date'     ).Value := FClient_bargain_fact.FieldByName('exchange_date'    ).Value;
//
//    if FClient_fact.Locate('fact_id', FClient_bargain_fact.FieldByName('fact_id').Value, []) then begin
//      ClientDS_RailFact.FieldByName('bargain_id'        ).Value := FClient_fact.FieldByName('bargain_id').Value;
//      ClientDS_RailFact.FieldByName('num_document'      ).Value := FClient_fact.FieldByName('num_document').Value;
//      ClientDS_RailFact.FieldByName('num_document_pref' ).Value := FClient_fact.FieldByName('num_document_pref').Value;
//      ClientDS_RailFact.FieldByName('num_vagon'         ).Value := FClient_fact.FieldByName('num_vagon').Value;
//      ClientDS_RailFact.FieldByName('num_konten'        ).Value := FClient_fact.FieldByName('num_konten').Value;
//      ClientDS_RailFact.FieldByName('sub_cod_self'      ).Value := FClient_fact.FieldByName('sub_cod_self').Value;
//      ClientDS_RailFact.FieldByName('date_from_to'      ).Value := FClient_fact.FieldByName('date_from_to').Value;
//      ClientDS_RailFact.FieldByName('datpr'             ).Value := FClient_fact.FieldByName('datpr').Value;
//      ClientDS_RailFact.FieldByName('type_kontener_name').Value := FClient_fact.FieldByName('type_kontener_name').Value;
//      ClientDS_RailFact.FieldByName('fact_weight'       ).Value := FClient_fact.FieldByName('fact_weight').Value;
//      ClientDS_RailFact.FieldByName('calc_weight'       ).Value := FClient_fact.FieldByName('calc_weight').Value;
//      ClientDS_RailFact.FieldByName('kargo_capacity'    ).Value := FClient_fact.FieldByName('kargo_capacity').Value;
//      ClientDS_RailFact.FieldByName('transport_pay'     ).Value := FClient_fact.FieldByName('transport_pay').Value;
//      ClientDS_RailFact.FieldByName('nds'               ).Value := FClient_fact.FieldByName('nds').Value;
//      ClientDS_RailFact.FieldByName('firm_info_name'    ).Value := FClient_fact.FieldByName('firm_info_name').Value;
//      ClientDS_RailFact.FieldByName('calc_weight_check' ).Value := FClient_fact.FieldByName('calc_weight_check').Value;
//      ClientDS_RailFact.FieldByName('xml_reply_id'      ).Value := FClient_fact.FieldByName('xml_reply_id').Value;
//      ClientDS_RailFact.FieldByName('folder'            ).Value := FClient_fact.FieldByName('folder').Value;
//      ClientDS_RailFact.FieldByName('fact_etran_comment').Value := FClient_fact.FieldByName('fact_etran_comment').Value;
//      ClientDS_RailFact.FieldByName('fact_users_comment').Value := FClient_fact.FieldByName('fact_users_comment').Value;
//      ClientDS_RailFact.FieldByName('global_color'      ).Value := FClient_fact.FieldByName('global_color').Value;
//      ClientDS_RailFact.FieldByName('date_ready'        ).Value := FClient_fact.FieldByName('date_ready').Value;
//      ClientDS_RailFact.FieldByName('node_begin_name'   ).Value := FClient_fact.FieldByName('node_begin_name').Value;
//      ClientDS_RailFact.FieldByName('node_end_name'     ).Value := FClient_fact.FieldByName('node_end_name').Value;
//      ClientDS_RailFact.FieldByName('date_delivery'     ).Value := FClient_fact.FieldByName('date_delivery').Value;
//      ClientDS_RailFact.FieldByName('etran_owner_name'  ).Value := FClient_fact.FieldByName('etran_owner_name').Value;
//      ClientDS_RailFact.FieldByName('bargain_new_id'    ).Value := FClient_fact.FieldByName('bargain_new_id').Value;
//    end;
//
//    ClientDS_RailFact.Post;
//
//    FClient_bargain_fact.Next;
//  end;



  ClientDS_RailFact.AfterPost  := nil;
  ClientDS_RailFact.BeforePost := nil;
  FClient_fact.DisableControls;
  FClient_fact.First;
  i := 0;
  while not FClient_fact.Eof do begin
    ClientDS_RailFact.Append();
    ClientDS_RailFact.FieldByName('fact_id').Value := FClient_fact.FieldByName('fact_id').Value;
    i := i + 1;

    if FClient_bargain_fact.Locate('fact_id', FClient_fact.FieldByName('fact_id').Value, []) then begin
      ClientDS_RailFact.FieldByName('bargain_fact_id'   ).Value := FClient_bargain_fact.FieldByName('bargain_fact_id'  ).Value;
      ClientDS_RailFact.FieldByName('bargain_add_id'    ).Value := FClient_bargain_fact.FieldByName('bargain_add_id'   ).Value;
      ClientDS_RailFact.FieldByName('fact_rate_not_nds' ).Value := FClient_bargain_fact.FieldByName('fact_rate_not_nds').Value;
      ClientDS_RailFact.FieldByName('fact_rate'         ).Value := FClient_bargain_fact.FieldByName('fact_rate'        ).Value;
      ClientDS_RailFact.FieldByName('fact_count'        ).Value := FClient_bargain_fact.FieldByName('fact_count'       ).Value;
      ClientDS_RailFact.FieldByName('fact_sum'          ).Value := FClient_bargain_fact.FieldByName('fact_sum'         ).Value;
      ClientDS_RailFact.FieldByName('type_vagon_id'     ).Value := FClient_bargain_fact.FieldByName('type_vagon_id'    ).Value;
      ClientDS_RailFact.FieldByName('type_send_id'      ).Value := FClient_bargain_fact.FieldByName('type_send_id'     ).Value;
      ClientDS_RailFact.FieldByName('type_vagon_name'   ).Value := FClient_bargain_fact.FieldByName('type_vagon_name'  ).Value;
      ClientDS_RailFact.FieldByName('type_send_name'    ).Value := FClient_bargain_fact.FieldByName('type_send_name'   ).Value;
      ClientDS_RailFact.FieldByName('set_main'          ).Value := FClient_bargain_fact.FieldByName('set_main'         ).Value;
      ClientDS_RailFact.FieldByName('exchange_date'     ).Value := FClient_bargain_fact.FieldByName('exchange_date'    ).Value;
    end else begin
      ClientDS_RailFact.FieldByName('bargain_fact_id'   ).Value := null;
      ClientDS_RailFact.FieldByName('bargain_add_id'    ).Value := null;
      ClientDS_RailFact.FieldByName('set_main'          ).Value := False;
    end;

    ClientDS_RailFact.FieldByName('bargain_id'        ).Value := FClient_fact.FieldByName('bargain_id').Value;
    ClientDS_RailFact.FieldByName('num_document'      ).Value := FClient_fact.FieldByName('num_document').Value;
    ClientDS_RailFact.FieldByName('num_document_pref' ).Value := FClient_fact.FieldByName('num_document_pref').Value;
    ClientDS_RailFact.FieldByName('num_vagon'         ).Value := FClient_fact.FieldByName('num_vagon').Value;
    ClientDS_RailFact.FieldByName('num_konten'        ).Value := FClient_fact.FieldByName('num_konten').Value;
    ClientDS_RailFact.FieldByName('sub_cod_self'      ).Value := FClient_fact.FieldByName('sub_cod_self').Value;
    ClientDS_RailFact.FieldByName('date_from_to'      ).Value := FClient_fact.FieldByName('date_from_to').Value;
    ClientDS_RailFact.FieldByName('datpr'             ).Value := FClient_fact.FieldByName('datpr').Value;
    ClientDS_RailFact.FieldByName('type_kontener_name').Value := FClient_fact.FieldByName('type_kontener_name').Value;
    ClientDS_RailFact.FieldByName('fact_weight'       ).Value := FClient_fact.FieldByName('fact_weight').Value;
    ClientDS_RailFact.FieldByName('calc_weight'       ).Value := FClient_fact.FieldByName('calc_weight').Value;
    ClientDS_RailFact.FieldByName('kargo_capacity'    ).Value := FClient_fact.FieldByName('kargo_capacity').Value;
    ClientDS_RailFact.FieldByName('transport_pay'     ).Value := FClient_fact.FieldByName('transport_pay').Value;
    ClientDS_RailFact.FieldByName('nds'               ).Value := FClient_fact.FieldByName('nds').Value;
    ClientDS_RailFact.FieldByName('firm_info_name'    ).Value := FClient_fact.FieldByName('firm_info_name').Value;
    ClientDS_RailFact.FieldByName('calc_weight_check' ).Value := FClient_fact.FieldByName('calc_weight_check').Value;
    ClientDS_RailFact.FieldByName('xml_reply_id'      ).Value := FClient_fact.FieldByName('xml_reply_id').Value;
    ClientDS_RailFact.FieldByName('folder'            ).Value := FClient_fact.FieldByName('folder').Value;
    ClientDS_RailFact.FieldByName('fact_etran_comment').Value := FClient_fact.FieldByName('fact_etran_comment').Value;
    ClientDS_RailFact.FieldByName('fact_users_comment').Value := FClient_fact.FieldByName('fact_users_comment').Value;
    ClientDS_RailFact.FieldByName('global_color'      ).Value := FClient_fact.FieldByName('global_color').Value;
    ClientDS_RailFact.FieldByName('date_ready'        ).Value := FClient_fact.FieldByName('date_ready').Value;
    ClientDS_RailFact.FieldByName('node_begin_name'   ).Value := FClient_fact.FieldByName('node_begin_name').Value;
    ClientDS_RailFact.FieldByName('node_end_name'     ).Value := FClient_fact.FieldByName('node_end_name').Value;
    ClientDS_RailFact.FieldByName('date_delivery'     ).Value := FClient_fact.FieldByName('date_delivery').Value;
    ClientDS_RailFact.FieldByName('etran_owner_name'  ).Value := FClient_fact.FieldByName('etran_owner_name').Value;
    ClientDS_RailFact.FieldByName('bargain_new_id'    ).Value := FClient_fact.FieldByName('bargain_new_id').Value;
    ClientDS_RailFact.Post();
    FClient_fact.Next();
  end;

  FClient_fact.EnableControls;
  FClient_bargain_fact.EnableControls;
  ClientDS_RailFact.EnableControls;

  FClient_bargain_fact.Filtered := False;
  FClient_bargain_fact.Filter   := '';
//  DS_RailFact.DataSet := ClientDS_RailFact;
  ClientDS_RailFact.BeforePost := ClientDS_RailFactBeforePost;
  ClientDS_RailFact.AfterPost  := ClientDS_RailFactAfterPost;
  cxGrid3DBBandedTableView1.Controller.FocusedRowIndex := 0;



  FClient_bargain_rate.Filter   := 'add_id=' + IntToStr(Fid);
  FClient_bargain_rate.Filtered := True;
  FClient_bargain_rate.DisableControls;
  ClientDS_ListRate.DisableControls;
  ClientDS_ListRate.Filtered := False;

  FClient_bargain_rate.First;
  while not FClient_bargain_rate.Eof do begin
    ClientDS_ListRate.Append;
    ClientDS_ListRate.FieldByName('bargain_rate_id' ).Value := FClient_bargain_rate.FieldByName('bargain_rate_id'  ).Value;
    ClientDS_ListRate.FieldByName('bargain_add_id'  ).Value := FClient_bargain_rate.FieldByName('bargain_add_id'   ).Value;
    ClientDS_ListRate.FieldByName('type_vagon_id'   ).Value := FClient_bargain_rate.FieldByName('type_vagon_id'    ).Value;
    ClientDS_ListRate.FieldByName('type_vagon_name' ).Value := FClient_bargain_rate.FieldByName('type_vagon_name'  ).Value;
    ClientDS_ListRate.FieldByName('type_send_id'    ).Value := FClient_bargain_rate.FieldByName('type_send_id'     ).Value;
    ClientDS_ListRate.FieldByName('type_send_name'  ).Value := FClient_bargain_rate.FieldByName('type_send_name'   ).Value;
    ClientDS_ListRate.FieldByName('weight'          ).Value := FClient_bargain_rate.FieldByName('weight'           ).Value;
    ClientDS_ListRate.FieldByName('rate_val'        ).Value := FClient_bargain_rate.FieldByName('rate_val'         ).Value;
    ClientDS_ListRate.FieldByName('set_one'         ).Value := FClient_bargain_rate.FieldByName('set_one'          ).Value;
    ClientDS_ListRate.Post;
    FClient_bargain_rate.Next;
  end;

  ClientDS_ListRate.Filtered := True;
  ClientDS_ListRate.EnableControls;
  FClient_bargain_rate.EnableControls;
  FClient_bargain_rate.Filter   := '';
  FClient_bargain_rate.Filtered := False;



  FClient_distance.Filter   := 'add_id=' + IntToStr(Fid);
  FClient_distance.Filtered := True;
  FClient_distance.First;
  while not FClient_distance.Eof do begin
    ClientDS_AddDistance.Append;
    ClientDS_AddDistance.FieldByName('add_distance_id' ).Value := FClient_distance.FieldByName('add_distance_id').Value;
    ClientDS_AddDistance.FieldByName('global_id'       ).Value := FClient_distance.FieldByName('global_id'      ).Value;
    ClientDS_AddDistance.FieldByName('distance_num'    ).Value := FClient_distance.FieldByName('distance_num'   ).Value;
    ClientDS_AddDistance.FieldByName('node_id'         ).Value := FClient_distance.FieldByName('node_id'        ).Value;
    ClientDS_AddDistance.FieldByName('node_name'       ).Value := FClient_distance.FieldByName('node_name'      ).Value;
    ClientDS_AddDistance.FieldByName('node_cod'        ).Value := FClient_distance.FieldByName('node_cod'       ).Value;
    ClientDS_AddDistance.FieldByName('node_type_id'    ).Value := FClient_distance.FieldByName('node_type_id'   ).Value;
    ClientDS_AddDistance.FieldByName('node_type_name'  ).Value := FClient_distance.FieldByName('node_type_name' ).Value;
    ClientDS_AddDistance.Post;
    FClient_distance.Next;
  end;
  FClient_distance.Filtered := False;
  FClient_distance.Filter   := '';


  FClient_payers.Filter   := 'add_id=' + IntToStr(Fid);
  FClient_payers.Filtered := True;
  FClient_payers.First;
  while not FClient_payers.Eof do begin
    ClientDS_AddPayers.Append;
    ClientDS_AddPayers.FieldByName('add_payers_id' ).Value := FClient_payers.FieldByName('add_payers_id').Value;
    ClientDS_AddPayers.FieldByName('global_id'     ).Value := FClient_payers.FieldByName('global_id'    ).Value;
    ClientDS_AddPayers.FieldByName('firm_id'       ).Value := FClient_payers.FieldByName('firm_id'      ).Value;
    ClientDS_AddPayers.FieldByName('state_id'      ).Value := FClient_payers.FieldByName('state_id'     ).Value;
    ClientDS_AddPayers.FieldByName('firm_name'     ).Value := FClient_payers.FieldByName('firm_name'    ).Value;
    ClientDS_AddPayers.FieldByName('state_name'    ).Value := FClient_payers.FieldByName('state_name'   ).Value;
    ClientDS_AddPayers.Post;
    FClient_payers.Next;
  end;
  FClient_payers.Filtered := False;
  FClient_payers.Filter   := '';

  Fset_calc_enabled := True;
  cxComboBox3PropertiesEditValueChanged(nil);
  CalcSum(-9, True);

  MonitorEventFormOpen('UPDATE_FORM', self.Name, fmMain.Lis, id);
end;

procedure TfmBargainRailAdd.SetTypeContract(type_contract: integer);
begin
  Ftype_contract := type_contract;

  // Договор клиента
  if Ftype_contract = 0 then begin
    cxLabel5.Style.Color := clRed;
    cxLabel5.Caption     := 'Услуга клиент.';
    Label11.Font.Color   := clRed;
    cxCurrencyEdit2.Style.Font.Color := clRed;

    cxLookupComboBox8.Properties.ReadOnly := True;
    cxLookupComboBox8.Style.Color := clBtnFace;
    cxButtonEdit9.Properties.Buttons.Clear;
    cxButtonEdit16.Properties.Buttons.Clear;
  end;

  // Договор агента
  if Ftype_contract = 1 then begin
    cxLabel5.Style.Color := clGreen;
    cxLabel5.Caption     := 'Услуга агент.';
    Label11.Font.Color   := clGreen;
    cxCurrencyEdit2.Style.Font.Color := clGreen;
  end;
end;

procedure TfmBargainRailAdd.SetDatePeriod(date_period: TDateTime);
begin
  if date_period = 0 then date_period := Date;
  cxComboBox1.ItemIndex := StrToInt(FormatDateTime('m', date_period))-1;
  cxComboBox2.ItemIndex := StrToInt(FormatDateTime('yyyy', date_period)) - 2001;
end;

procedure TfmBargainRailAdd.SetDatePeriodFinance(date_period: TDateTime);
begin
  if date_period <> 0 then begin
    cxComboBox6.ItemIndex := StrToInt(FormatDateTime('m', date_period))-1;
    cxComboBox7.ItemIndex := StrToInt(FormatDateTime('yyyy', date_period)) - 2001;
  end else begin
    cxComboBox6.ItemIndex := -1;
    cxComboBox7.ItemIndex := -1;
  end;
end;

procedure TfmBargainRailAdd.SetDatePeriodService(date_period: TDateTime);
begin
  if date_period = 0 then date_period := Date;
  cxComboBox4.ItemIndex := StrToInt(FormatDateTime('m', date_period))-1;
  cxComboBox5.ItemIndex := StrToInt(FormatDateTime('yyyy', date_period)) - 2001;
end;

function  TfmBargainRailAdd.GetDatePeriod(): TDateTime;
begin
  Result := StrToDate('15' + FormatSettings.DateSeparator + IntToStr(cxComboBox1.ItemIndex+1) + FormatSettings.DateSeparator + cxComboBox2.Text);
end;

function  TfmBargainRailAdd.GetDatePeriodFinance(): TDateTime;
begin
  Result := StrToDate('15' + FormatSettings.DateSeparator + IntToStr(cxComboBox6.ItemIndex+1) + FormatSettings.DateSeparator + cxComboBox7.Text);
end;

function  TfmBargainRailAdd.GetDatePeriodService(): TDateTime;
begin
  Result := StrToDate('15' + FormatSettings.DateSeparator + IntToStr(cxComboBox4.ItemIndex+1) + FormatSettings.DateSeparator + cxComboBox5.Text);
end;

function  TfmBargainRailAdd.GetDatePeriodFirst(): TDateTime;
begin
  Result := _GetDatePeriod - (DayOf(_GetDatePeriod) - 1);
end;

function  TfmBargainRailAdd.GetDatePeriodLast (): TDateTime;
begin
  Result := IncMonth(_GetDatePeriodFirst,1) - 1;
end;

procedure TfmBargainRailAdd.cxButton1Click(Sender: TObject);
begin
  RailAtlas_ShowRoute(fmMain.Lis, cxTextEdit3.Text, cxTextEdit4.Text);
end;

procedure TfmBargainRailAdd.cxButtonEdit10PropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
var
  id  : integer;
  cod : string;
  name: string;
  res : boolean;
  Q   : TADOQuery;
begin
  case AButtonIndex of
    0:  begin
          if TControl(Sender).Tag = 0 then res := FindInfObj('Шаблон поиска груза ЕТСНГ по названию:', 'inf_obj_etsng', False, id, cod, name)
          else res := FindInfObj('Шаблон поиска груза ЕТСНГ по коду:', 'inf_obj_etsng', True, id, cod, name);
          if res then begin
            FkargoETSNG_id      := id;
            cxButtonEdit10.Text := name;
            cxButtonEdit11.Text := cod;
            Q := TADOQuery.Create(nil);
            Q.Connection := Fconnect;
            Q.SQL.Add('SELECT group_id, group_name, group_cod FROM view_kargoETSNG WHERE inf_obj_id='+IntToStr(FkargoETSNG_id));
            Q.Open;
            cxTextEdit14.Text := iif(Q.FieldByName('group_id').Value = null, '', Q.FieldByName('group_name').Value);
            if Q.FieldByName('group_cod').AsString = '9' then _SetKargoAdd := True
            else _SetKargoAdd := False;
            Q.Free;
          end;
        end;
    1:  begin
          FkargoETSNG_id     := -9;
          cxButtonEdit10.Text:= '';
          cxButtonEdit11.Text:= '';
          cxTextEdit14.Text  := '';
          _SetKargoAdd := False;
        end;
  end;
end;

procedure TfmBargainRailAdd.cxButtonEdit12PropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
var
  id  : integer;
  cod : string;
  name: string;
  res : boolean;
begin
  case AButtonIndex of
    0:  begin
          if TControl(Sender).Tag = 0 then res := FindInfObj('Шаблон поиска груза ГНГ по названию:', 'inf_obj_GNG', False, id, cod, name)
          else res := FindInfObj('Шаблон поиска груза ГНГ по коду:', 'inf_obj_GNG', True, id, cod, name);
          if res then begin
            FkargoGNG_id        := id;
            cxButtonEdit12.Text := name;
            cxButtonEdit13.Text := cod;
          end;
        end;
    1:  begin
          FkargoGNG_id        := -9;
          cxButtonEdit12.Text := '';
          cxButtonEdit13.Text := '';
        end;
  end;
end;

procedure TfmBargainRailAdd.cxButtonEdit14PropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
var
  id  : integer;
  cod : string;
  name: string;
  res : boolean;
begin
  case AButtonIndex of
    0:  begin
          if TControl(Sender).Tag = 0 then res := FindInfObj('Шаблон поиска груза ЕТСНГ по названию:', 'inf_obj_etsng', False, id, cod, name)
          else res := FindInfObj('Шаблон поиска груза ЕТСНГ по коду:', 'inf_obj_etsng', True, id, cod, name);
          if res then begin
            FkargoETSNG_add_id := id;
            cxButtonEdit14.Text:= name;
            cxButtonEdit15.Text:= cod;
          end;
        end;
    1:  begin
          FkargoETSNG_add_id := -9;
          cxButtonEdit14.Text:= '';
          cxButtonEdit15.Text:= '';
        end;
  end;
end;

procedure TfmBargainRailAdd.cxButtonEdit1PropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
var
  id  : integer;
  cod : string;
  name: string;
  res : boolean;
begin
  case AButtonIndex of
    0:  begin
          res := FindInfObj('Шаблон поиска страны по названию:', 'inf_obj_state', False, id, cod, name);
          if res then begin
            Fstate_begin_id    := id;
            cxButtonEdit1.Text := name;
          end;
        end;
    1:  begin
          Fstate_begin_id    := -9;
          cxButtonEdit1.Text := '';
        end;
  end;
end;

procedure TfmBargainRailAdd.cxButtonEdit25PropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
var d2 : TDateTime;
begin
  if AButtonIndex = 0 then begin
    d2 := EndOfTheMonth(_GetDatePeriod);
    fmPeriod := TfmPeriod.Create(Application, d2, d2, 5);
    if fmPeriod.ShowModal = mrOK then begin
      case TComponent(Sender).Tag of
        1 : cxButtonEdit25.EditValue := CurrToStr(GetExchangeNew(TComponent(Sender).Tag, fmPeriod._GetDateBegin, fmMain.Lis, True));
        5 : cxButtonEdit27.EditValue := CurrToStr(GetExchangeNew(TComponent(Sender).Tag, fmPeriod._GetDateBegin, fmMain.Lis, True));
        6 : cxButtonEdit26.EditValue := CurrToStr(GetExchangeNew(TComponent(Sender).Tag, fmPeriod._GetDateBegin, fmMain.Lis, True));
      end;
    end;
  end else begin
    case TComponent(Sender).Tag of
      1 : cxButtonEdit25.EditValue := 1;
      5 : cxButtonEdit27.EditValue := 1;
      6 : cxButtonEdit26.EditValue := 1;
    end;
  end;

end;

procedure TfmBargainRailAdd.cxButtonEdit2PropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
var
  id  : integer;
  cod : string;
  name: string;
  res : boolean;
begin
  case AButtonIndex of
    0:  begin
          if TControl(Sender).Tag = 0 then res := FindInfObj('Шаблон поиска станции по названию:', 'inf_obj_node', False, id, cod, name)
          else res := FindInfObj('Шаблон поиска станции по коду:', 'inf_obj_node', True, id, cod, name);
          if res then begin
            Fnode_begin_id     := id;
            cxButtonEdit2.Text := name;
            cxTextEdit3.Text   := cod;
          end;
        end;
    1:  begin
          Fnode_begin_id     := -9;
          cxButtonEdit2.Text := '';
          cxTextEdit3.Text   := '';
        end;
  end;
end;

procedure TfmBargainRailAdd.cxButtonEdit3PropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
var
  id  : integer;
  cod : string;
  name: string;
  res : boolean;
begin
  case AButtonIndex of
    0:  begin
          if TControl(Sender).Tag = 0 then res := FindInfObj('Шаблон поиска станции по названию:', 'inf_obj_node', False, id, cod, name)
          else res := FindInfObj('Шаблон поиска станции по коду:', 'inf_obj_node', True, id, cod, name);
          if res then begin
            Fnode_end_id       := id;
            cxButtonEdit3.Text := name;
            cxTextEdit4.Text   := cod;
          end;
        end;
    1:  begin
          Fnode_end_id       := -9;
          cxButtonEdit3.Text := '';
          cxTextEdit4.Text   := '';
        end;
  end;
end;

procedure TfmBargainRailAdd.cxButtonEdit4PropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
var
  id  : integer;
  cod : string;
  name: string;
  res : boolean;
begin
  case AButtonIndex of
    0:  begin
          res := FindInfObj('Шаблон поиска страны по названию:', 'inf_obj_state', False, id, cod, name);
          if res then begin
            Fstate_end_id    := id;
            cxButtonEdit4.Text := name;
          end;
        end;
    1:  begin
          Fstate_end_id    := -9;
          cxButtonEdit4.Text := '';
        end;
  end;
end;

procedure TfmBargainRailAdd.cxButtonEdit5PropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
var new_str : string;
          Q : TADOQuery;
begin
  case AButtonIndex of
    0:  begin
          if InputQuery('Поиск', 'Шаблон организации', new_str) then begin
            Q := TADOQuery.Create(nil);
            Q.Connection := Fconnect;
            Q.SQL.Add('SELECT firm_id, firm_name_short, firm_name, cod_okpo FROM view_firm_rights WHERE (firm_name like (''%' + new_str + '%'')) ORDER BY firm_name');
            Q.Open;
            fmFilter := TfmFilter.Create(0, Q, 'firm_id', 'cod_okpo', 'firm_name_short');
            if fmFilter.ShowModal=mrOk then begin
              Ffirm_sender_id           := fmFilter.GetId;
              cxButtonEdit5.EditValue   := fmFilter.GetName;
            end;
            Q.Free;
          end;
        end;
    1:  begin
          Ffirm_sender_id           := -9;
          cxButtonEdit5.EditValue   := '';
        end;
  end;
end;

procedure TfmBargainRailAdd.cxButtonEdit6PropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
var new_str : string;
          Q : TADOQuery;
begin
  case AButtonIndex of
    0:  begin
          if InputQuery('Поиск', 'Шаблон организации', new_str) then begin
            Q := TADOQuery.Create(nil);
            Q.Connection := Fconnect;
            Q.SQL.Add('SELECT firm_id, firm_name_short, firm_name, cod_okpo FROM view_firm_rights WHERE (firm_name like (''%' + new_str + '%'')) ORDER BY firm_name');
            Q.Open;
            fmFilter := TfmFilter.Create(0, Q, 'firm_id', 'cod_okpo', 'firm_name_short');
            if fmFilter.ShowModal=mrOk then begin
              Ffirm_reciever_id         := fmFilter.GetId;
              cxButtonEdit6.EditValue   := fmFilter.GetName;
            end;
            Q.Free;
          end;
        end;
    1:  begin
          Ffirm_reciever_id         := -9;
          cxButtonEdit6.EditValue   := '';
        end;
  end;
end;

procedure TfmBargainRailAdd.cxButtonEdit9PropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
begin
  fmContract := TfmContract.Create(Application, True, 0);
  fmContract.cxTabSheet2.Visible := False;
  fmContract.Visible := False;
  if cxLookupComboBox8.EditValue <> null then fmContract._SetContractId := cxLookupComboBox8.EditValue;
  if fmContract.ShowModal=mrOk then begin
    Query_Agent.Close;
    Query_Agent.Open;
    if Query_Agent.Locate('contract_id', fmContract._GetContractId, []) then cxLookupComboBox8.EditValue := fmContract._GetContractId
    else begin
      Application.MessageBox('Выбранный договор в этом периоде не действует!', 'Внимание', MB_OK);
      cxLookupComboBox1.EditValue := null;
    end;
  end;
end;

procedure TfmBargainRailAdd.cxCheckBox1PropertiesEditValueChanged(Sender: TObject);
begin
  if cxCheckBox1.Checked then begin
    cxButtonEdit12.Enabled := True;
    cxButtonEdit13.Enabled := True;
    cxButtonEdit12.Style.Color := clWhite;
    cxButtonEdit13.Style.Color := clWhite;
  end else begin
    cxButtonEdit12.Enabled := False;
    cxButtonEdit13.Enabled := False;
    cxButtonEdit12.Style.Color := clBtnFace;
    cxButtonEdit13.Style.Color := clBtnFace;
    FkargoGNG_id := -9;
  end;
end;

procedure TfmBargainRailAdd.cxCheckBox3PropertiesEditValueChanged(Sender: TObject);
begin
  if cxCheckBox3.Checked = True then begin
    cxGrid3DBBandedTableView1type_vagon_name.Visible := True;
    cxGrid3DBBandedTableView1type_send_name.Visible := True;
    dxBarButton5.Enabled := False;
    dxBarButton6.Enabled := False;
    dxBarButton12.Enabled := True;

    cxGrid3DBBandedTableView1fact_rate_not_nds.Options.Editing := False;
    cxGrid3DBBandedTableView1fact_rate.Options.Editing         := False;
  end else begin
    cxGrid3DBBandedTableView1type_vagon_name.Visible := False;
    cxGrid3DBBandedTableView1type_send_name.Visible := False;
    dxBarButton5.Enabled := True;
    dxBarButton6.Enabled := True;
    dxBarButton12.Enabled := False;
    if cxCheckBox6.Checked then begin
      cxGrid3DBBandedTableView1fact_rate_not_nds.Options.Editing := False;
      cxGrid3DBBandedTableView1fact_rate.Options.Editing         := True;
    end else begin
      cxGrid3DBBandedTableView1fact_rate_not_nds.Options.Editing := True;
      cxGrid3DBBandedTableView1fact_rate.Options.Editing         := False;
    end;
  end;

  CalcSum(-9, True);
end;

procedure TfmBargainRailAdd.cxCheckBox4PropertiesEditValueChanged(Sender: TObject);
begin
  if cxCheckBox4.Checked = True then begin
    cxCurrencyEdit8.Visible := True;
    CalcSum(-9, True);
  end else begin
    cxCurrencyEdit8.Visible   := False;
    cxCurrencyEdit8.EditValue := null;
  end;

end;

procedure TfmBargainRailAdd.cxCheckBox6PropertiesEditValueChanged(Sender: TObject);
var pos, pos_fact_id  : integer;
    fact_rate_not_nds : Variant;
    fact_rate         : Variant;
begin
  if Fset_calc_enabled = True then begin
    pos := cxGrid3DBBandedTableView1.Controller.TopRowIndex;
    pos_fact_id := cxGrid3DBBandedTableView1fact_id.DataBinding.Field.Value;
    DS_RailFact.DataSet := nil;
    ClientDS_RailFact.AfterPost := nil;
    ClientDS_RailFact.BeforePost:= nil;
    ClientDS_RailFact.First;
    while not ClientDS_RailFact.Eof do begin

      fact_rate_not_nds := ClientDS_RailFact.FieldByName('fact_rate_not_nds').Value;
      fact_rate         := ClientDS_RailFact.FieldByName('fact_rate').Value;

      ClientDS_RailFact.Edit;
      ClientDS_RailFact.FieldByName('fact_rate_not_nds').Value := fact_rate;
      ClientDS_RailFact.FieldByName('fact_rate'        ).Value := fact_rate_not_nds;
      ClientDS_RailFact.Post;

      ClientDS_RailFact.Next;
    end;

    DS_RailFact.DataSet := ClientDS_RailFact;
    ClientDS_RailFact.AfterPost := ClientDS_RailFactAfterPost;
    ClientDS_RailFact.BeforePost:= ClientDS_RailFactBeforePost;
    ClientDS_RailFact.Locate('fact_id', pos_fact_id, []);
    cxGrid3DBBandedTableView1.Controller.TopRowIndex := pos;

    if cxCheckBox3.Checked = True then begin
      cxGrid3DBBandedTableView1fact_rate_not_nds.Options.Editing := False;
      cxGrid3DBBandedTableView1fact_rate.Options.Editing         := False;
    end else begin
      if cxCheckBox6.Checked then begin
        cxGrid3DBBandedTableView1fact_rate_not_nds.Options.Editing := False;
        cxGrid3DBBandedTableView1fact_rate.Options.Editing         := True;
      end else begin
        cxGrid3DBBandedTableView1fact_rate_not_nds.Options.Editing := True;
        cxGrid3DBBandedTableView1fact_rate.Options.Editing         := False;
      end;
    end;

    CalcSum(-9, True);
  end;
end;

procedure TfmBargainRailAdd.cxCheckBox9PropertiesChange(Sender: TObject);
begin
  cxLookupComboBox3.Enabled   := cxCheckBox9.Checked;
  cxLookupComboBox3.EditValue := null;
end;

procedure TfmBargainRailAdd.cxComboBox1PropertiesChange(Sender: TObject);
var contract_id: integer;
begin
  // Проверяем договор *договор должен быть действителен в текущем периоде.
  contract_id := iif(cxLookupComboBox8.EditValue = null, -9, cxLookupComboBox8.EditValue);
  Query_Agent.Close;
  Query_Agent.Parameters.ParamByName('type_contract').Value := Ftype_contract;
  Query_Agent.Parameters.ParamByName('date_current' ).Value := _GetDatePeriod;
  Query_Agent.Open;
  if Query_Agent.Locate('contract_id', contract_id, []) then begin
    cxLookupComboBox3.EditValue := contract_id;
  end else begin
    cxLookupComboBox3.EditValue := null;
  end;


  //  Проверить справочную информацию
//  FkargoGNG_id      := -9;
//  FkargoETSNG_id    := -9;
//  FkargoETSNG_add_id:= -9;
//  Fstate_begin_id   := -9;
//  Fstate_end_id     := -9;
//  Fnode_begin_id    := -9;
//  Fnode_end_id      := -9;
end;

procedure TfmBargainRailAdd.cxComboBox3PropertiesEditValueChanged(Sender: TObject);
var pos, pos_fact_id: integer;
begin
  if Fset_calc_enabled then begin
    if (cxComboBox3.ItemIndex = 0) or (cxComboBox3.ItemIndex = 2) then begin
      cxButtonEdit25.Enabled := False;
      cxButtonEdit26.Enabled := False;
      cxButtonEdit27.Enabled := False;
      cxButtonEdit25.Style.Color := clBtnFace;
      cxButtonEdit26.Style.Color := clBtnFace;
      cxButtonEdit27.Style.Color := clBtnFace;
      cxButtonEdit25.EditValue := GetExchangeNew(1, _GetDatePeriod, Fconnect);
      cxButtonEdit26.EditValue := GetExchangeNew(6, _GetDatePeriod, Fconnect);
      cxButtonEdit27.EditValue := GetExchangeNew(5, _GetDatePeriod, Fconnect);
    end else begin
      cxButtonEdit25.Enabled := True;
      cxButtonEdit26.Enabled := True;
      cxButtonEdit27.Enabled := True;
      cxButtonEdit25.Style.Color := clWindow;
      cxButtonEdit26.Style.Color := clWindow;
      cxButtonEdit27.Style.Color := clWindow;
    end;

    if (cxComboBox3.ItemIndex = 2) then begin
      cxGrid3DBBandedTableView1exchange_date.Visible := True;
      cxButtonEdit25.EditValue := null;
      cxButtonEdit26.EditValue := null;
      cxButtonEdit27.EditValue := null;

      pos := cxGrid3DBBandedTableView1.Controller.TopRowIndex;
      if not cxGrid3DBBandedTableView1fact_id.DataBinding.Field.IsNull then
        pos_fact_id := cxGrid3DBBandedTableView1fact_id.DataBinding.Field.Value
      else
        pos_fact_id := -9;

      DS_RailFact.DataSet := nil;
      ClientDS_RailFact.AfterPost := nil;
      ClientDS_RailFact.BeforePost:= nil;

      while not ClientDS_RailFact.Eof do begin
        ClientDS_RailFact.Edit;
        ClientDS_RailFact.FieldByName('exchange_date').Value := ClientDS_RailFact.FieldByName('date_from_to').Value;
        ClientDS_RailFact.Post;

        ClientDS_RailFact.Next;
      end;

      DS_RailFact.DataSet := ClientDS_RailFact;
      ClientDS_RailFact.AfterPost := ClientDS_RailFactAfterPost;
      ClientDS_RailFact.BeforePost:= ClientDS_RailFactBeforePost;
      ClientDS_RailFact.FindKey([pos_fact_id]);
      cxGrid3DBBandedTableView1.Controller.TopRowIndex := pos;
    end else begin
      cxGrid3DBBandedTableView1exchange_date.Visible := False;
      pos := cxGrid3DBBandedTableView1.Controller.TopRowIndex;
      pos_fact_id := iif(cxGrid3DBBandedTableView1fact_id.DataBinding.Field.IsNull, -9, cxGrid3DBBandedTableView1fact_id.DataBinding.Field.Value);

      DS_RailFact.DataSet := nil;
      ClientDS_RailFact.AfterPost := nil;
      ClientDS_RailFact.BeforePost:= nil;


      while not ClientDS_RailFact.Eof do begin
        ClientDS_RailFact.Edit;
        ClientDS_RailFact.FieldByName('exchange_date').Value := null;
        ClientDS_RailFact.Post;

        ClientDS_RailFact.Next;
      end;

      DS_RailFact.DataSet := ClientDS_RailFact;
      ClientDS_RailFact.AfterPost := ClientDS_RailFactAfterPost;
      ClientDS_RailFact.BeforePost:= ClientDS_RailFactBeforePost;
      ClientDS_RailFact.FindKey([pos_fact_id]);
      cxGrid3DBBandedTableView1.Controller.TopRowIndex := pos;
    end;
  end;
end;

procedure TfmBargainRailAdd.cxCurrencyEdit1PropertiesEditValueChanged(Sender: TObject);
begin
  if (Ftype_calc_id = 1) or (Ftype_calc_id = 2) then CalcSum(-9, True);
end;

procedure TfmBargainRailAdd.cxCurrencyEdit3PropertiesEditValueChanged(Sender: TObject);
begin
  if Ftype_calc_id = 2 then CalcSum(-9, True);
end;

procedure TfmBargainRailAdd.cxGrid1DBBandedTableView1node_codPropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
var
  id  : integer;
  cod : string;
  name: string;
begin
  case AButtonIndex of
    0:  begin
          if FindInfObj('Шаблон поиска станции по коду:', 'inf_obj_node', True, id, cod, name) then begin
            ClientDS_AddDistance.Edit;
            ClientDS_AddDistance.FieldByName('node_id'  ).Value := id;
            ClientDS_AddDistance.FieldByName('node_cod' ).Value := cod;
            ClientDS_AddDistance.FieldByName('node_name').Value := name;
            ClientDS_AddDistance.Post;
          end;
        end;
    1:  begin
          ClientDS_AddDistance.Edit;
          ClientDS_AddDistance.FieldByName('node_id'  ).Value := null;
          ClientDS_AddDistance.FieldByName('node_cod' ).Value := null;
          ClientDS_AddDistance.FieldByName('node_name').Value := null;
          ClientDS_AddDistance.Post;
        end;
  end;
end;

procedure TfmBargainRailAdd.cxGrid1DBBandedTableView1node_namePropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
var
  id  : integer;
  cod : string;
  name: string;
begin
  case AButtonIndex of
    0:  begin
          if FindInfObj('Шаблон поиска станции по названию:', 'inf_obj_node', False, id, cod, name) then begin
            ClientDS_AddDistance.Edit;
            ClientDS_AddDistance.FieldByName('node_id'  ).Value := id;
            ClientDS_AddDistance.FieldByName('node_cod' ).Value := cod;
            ClientDS_AddDistance.FieldByName('node_name').Value := name;
            ClientDS_AddDistance.Post;
          end;
        end;
    1:  begin
          ClientDS_AddDistance.Edit;
          ClientDS_AddDistance.FieldByName('node_id'  ).Value := null;
          ClientDS_AddDistance.FieldByName('node_cod' ).Value := null;
          ClientDS_AddDistance.FieldByName('node_name').Value := null;
          ClientDS_AddDistance.Post;
        end;
  end;
end;

procedure TfmBargainRailAdd.cxGrid1DBBandedTableView1node_type_namePropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
var  Q : TADOQuery;
begin
  case AButtonIndex of
    0:  begin
          Q := TADOQuery.Create(nil);
          Q.Connection := Fconnect;
          Q.SQL.Add('SELECT inf_obj_id, inf_obj_name, inf_obj_cod FROM inf_obj WHERE type_inf_id = -102 ORDER BY inf_obj_name');
          Q.Open;
          fmFilter := TfmFilter.Create(0, Q, 'inf_obj_id', 'inf_obj_cod', 'inf_obj_name');
          if fmFilter.ShowModal=mrOk then begin
            ClientDS_AddDistance.Edit;
            ClientDS_AddDistance.FieldByName('node_type_id'  ).Value := fmFilter.GetId;
            ClientDS_AddDistance.FieldByName('node_type_name').Value := fmFilter.GetName;
            ClientDS_AddDistance.Post;
          end;
          Q.Free;
        end;
    1:  begin
          ClientDS_AddDistance.Edit;
          ClientDS_AddDistance.FieldByName('node_type_id'  ).Value := null;
          ClientDS_AddDistance.FieldByName('node_type_name').Value := null;
          ClientDS_AddDistance.Post;
        end;
  end;
end;

procedure TfmBargainRailAdd.cxGridDBBandedTableView1firm_namePropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
var new_str : string;
          Q : TADOQuery;
begin
  case AButtonIndex of
    0:  begin
          if InputQuery('Поиск', 'Шаблон плательщика', new_str) then begin
            Q := TADOQuery.Create(nil);
            Q.Connection := Fconnect;
            Q.SQL.Add('SELECT firm_id, firm_name_short, firm_name, cod_okpo FROM view_firm_rights WHERE (firm_name like (''%' + new_str + '%'')) ORDER BY firm_name');
            Q.Open;
            fmFilter := TfmFilter.Create(0, Q, 'firm_id', 'cod_okpo', 'firm_name_short');
            if fmFilter.ShowModal=mrOk then begin
              ClientDS_AddPayers.Edit;
              ClientDS_AddPayers.FieldByName('firm_id'  ).Value := fmFilter.GetId;
              ClientDS_AddPayers.FieldByName('firm_name').Value := fmFilter.GetName;
              ClientDS_AddPayers.Post;
            end;
            Q.Free;
          end;
        end;
    1:  begin
          ClientDS_AddPayers.Edit;
          ClientDS_AddPayers.FieldByName('firm_id'  ).Value := null;
          ClientDS_AddPayers.FieldByName('firm_name').Value := null;
          ClientDS_AddPayers.Post;
        end;
  end;
end;

procedure TfmBargainRailAdd.cxGridDBBandedTableView1state_namePropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
var
  id  : integer;
  cod : string;
  name: string;
  res : boolean;
begin
  case AButtonIndex of
    0:  begin
          res := FindInfObj('Шаблон поиска страны по названию:', 'inf_obj_state', False, id, cod, name);
          if res then begin
            ClientDS_AddPayers.Edit;
            ClientDS_AddPayers.FieldByName('state_id'  ).Value := id;
            ClientDS_AddPayers.FieldByName('state_name').Value := name;
            ClientDS_AddPayers.Post;
          end;
        end;
    1:  begin
          ClientDS_AddPayers.Edit;
          ClientDS_AddPayers.FieldByName('state_id'  ).Value := null;
          ClientDS_AddPayers.FieldByName('state_name').Value := null;
          ClientDS_AddPayers.Post;
        end;
  end;
end;

procedure TfmBargainRailAdd.cxGridDBBandedTableView2CustomDrawCell(
  Sender: TcxCustomGridTableView; ACanvas: TcxCanvas;
  AViewInfo: TcxGridTableDataCellViewInfo; var ADone: Boolean);
begin
  if AViewInfo.Item.Options.Editing = True then begin
    ACanvas.Brush.Color := $00DDECDD;//$00C0DCC1;
    ACanvas.Font.Style := [fsBold];
  end;

  if AViewInfo.GridRecord.Selected or AViewInfo.GridRecord.Focused then begin
    ACanvas.Brush.Color := clNavy;
    ACanvas.Font.Color := clWhite;
    if AViewInfo.Focused then ACanvas.Brush.Color := clBlue;
  end;
end;

procedure TfmBargainRailAdd.cxGridDBBandedTableView2Editing(Sender: TcxCustomGridTableView; AItem: TcxCustomGridTableItem; var AAllow: Boolean);
begin
  if AItem = cxGridDBBandedTableView2weight then
    if cxGridDBBandedTableView2set_one.DataBinding.Field.Value = True then begin
        AAllow := False;
    end;
end;

procedure TfmBargainRailAdd.cxGridDBBandedTableView2weightGetDisplayText(Sender: TcxCustomGridTableItem; ARecord: TcxCustomGridRecord; var AText: string);
begin
  if ARecord.Values[cxGridDBBandedTableView2set_one.Index] = True then AText := '(любой вес)';
end;

procedure TfmBargainRailAdd.cxLookupComboBox2PropertiesEditValueChanged(Sender: TObject);
begin
  if (cxLookupComboBox2.EditValue <> null) and (Query_Ed_Izm.Active) then begin
    if Query_Ed_Izm.Locate('inf_obj_id', cxLookupComboBox2.EditValue, []) then begin
      cxGrid3DBBandedTableView1fact_count.Caption := 'Кол-во (' + cxLookupComboBox2.Text + ')';

      if Query_Ed_Izm.FieldByName('inf_obj_cod').AsString = '000' then begin
        TcxCustomCurrencyEditProperties(cxGrid3DBBandedTableView1fact_count.Properties).DecimalPlaces := 3;
        TcxCustomCurrencyEditProperties(cxGrid3DBBandedTableView1fact_count.Properties).DisplayFormat := '#,##0.000';
        cxCurrencyEdit3.Properties.DecimalPlaces := 3;
        cxCurrencyEdit3.Properties.DisplayFormat := '#,##0.000';
      end else begin
        cxCurrencyEdit3.Properties.DecimalPlaces := 0;
        cxCurrencyEdit3.Properties.DisplayFormat := '#,##0';
        if cxCurrencyEdit3.EditValue <> null then cxCurrencyEdit3.EditValue := Round(cxCurrencyEdit3.EditValue);
        TcxCustomCurrencyEditProperties(cxGrid3DBBandedTableView1fact_count.Properties).DecimalPlaces := 0;
        TcxCustomCurrencyEditProperties(cxGrid3DBBandedTableView1fact_count.Properties).DisplayFormat := '#,##0';
      end;

      if Query_Ed_Izm.FieldByName('inf_obj_cod').AsString = '004' then begin
        cxGrid3DBBandedTableView1fact_count.Options.Editing := True;
      end else begin
        cxGrid3DBBandedTableView1fact_count.Options.Editing := False;      
      end;

    end;
  end;

  CalcSum(-9, True);
end;

procedure TfmBargainRailAdd.cxLookupComboBox7PropertiesChange(Sender: TObject);
var type_vagon_id : integer;
    type_send_id  : integer;
begin
  type_vagon_id := iif(cxLookupComboBox7.EditValue  = null, -9, cxLookupComboBox7.EditValue );
  type_send_id  := iif(cxLookupComboBox10.EditValue = null, -9, cxLookupComboBox10.EditValue);

  ClientDS_ListRate.DisableControls;

  ClientDS_ListRate.Filtered := False;
  ClientDS_ListRate.Filter   := '';

  if type_vagon_id <> -9 then  ClientDS_ListRate.Filter  := 'type_vagon_id=' + IntTostr(type_vagon_id);

  if type_send_id <> -9 then begin
    if Length(ClientDS_ListRate.Filter) > 0 then ClientDS_ListRate.Filter := ClientDS_ListRate.Filter + ' AND ';
    ClientDS_ListRate.Filter := ClientDS_ListRate.Filter + 'type_send_id=' + IntTostr(type_send_id);
  end;

  ClientDS_ListRate.Filtered := True;

  ClientDS_ListRate.EnableControls;
end;

procedure TfmBargainRailAdd.cxLookupComboBox8PropertiesChange(Sender: TObject);
var contract_id  : integer;
begin
  cxButtonEdit9.Text  := '';
  cxButtonEdit16.Text := '';
  Fcontract_set       := 0;

  if Query_Agent.Active then begin
    contract_id := iif(cxLookupComboBox8.EditValue = null, -9, cxLookupComboBox8.EditValue);
    if Query_Agent.Locate('contract_id', contract_id, []) then begin
      cxButtonEdit16.Text         := Query_Agent.FieldByName('firm_self_name').AsString;
      cxButtonEdit9.Text          := Query_Agent.FieldByName('contract_cod').AsString;
      Fcontract_set               := Query_Agent.FieldByName('contract_set').AsInteger;
    end;
  end;
end;


procedure TfmBargainRailAdd.cxLookupComboBox9PropertiesEditValueChanged(Sender: TObject);
begin
  Query_NDS.Locate('inf_obj_id', cxLookupComboBox9.EditValue, []);
  if Query_NDS.FieldByName('inf_obj_cod').AsString = '18' then begin
    cxCheckBox6.Properties.ReadOnly := False;
    cxCheckBox6.Enabled := True;
  end else begin
    cxCheckBox6.Checked := True;
    cxCheckBox6.Properties.ReadOnly := True;
    cxCheckBox6.Enabled := False;
  end;
  CalcSum(-9, True);
end;

procedure TfmBargainRailAdd.dxBarButton11Click(Sender: TObject);
var i, pos, pos_fact_id : integer;
    array_fact_id : Variant;
    str_rate_value : string;
    rate_value : Double;
    set_main : boolean;
begin
//  if InputQuery('Ставка', 'Ставка', str_rate_value) then begin
//    str_rate_value := ReplaceStr(str_rate_value, '.', DecimalSeparator);
//    str_rate_value := ReplaceStr(str_rate_value, ',', DecimalSeparator);
//    if not TryStrToFloat(str_rate_value, rate_value) then begin
//      Application.MessageBox(PChar(str_rate_value + ' не является числом.'), 'Ошибка', MB_ICONSTOP or MB_OK);
//      Exit;
//    end;

    if cxGrid3DBBandedTableView1set_main.DataBinding.Field.Value = True then set_main := False
    else set_main := True;

    array_fact_id := VarArrayCreate([0, cxGrid3DBBandedTableView1.Controller.SelectedRecordCount], varInteger);
    for i:=0 to cxGrid3DBBandedTableView1.Controller.SelectedRecordCount - 1 do
      array_fact_id[i] := cxGrid3DBBandedTableView1.Controller.SelectedRows[i].Values[cxGrid3DBBandedTableView1fact_id.Index];


    pos := cxGrid3DBBandedTableView1.Controller.TopRowIndex;
    pos_fact_id := cxGrid3DBBandedTableView1fact_id.DataBinding.Field.Value;
    DS_RailFact.DataSet := nil;
    ClientDS_RailFact.AfterPost := nil;
    ClientDS_RailFact.BeforePost:= nil;

    for i:= VarArrayLowBound(array_fact_id, 1) to VarArrayHighBound(array_fact_id, 1) do begin
      if ClientDS_RailFact.FindKey([array_fact_id[i]]) then begin
        ClientDS_RailFact.Edit;
        ClientDS_RailFact.FieldByName('set_main').Value := set_main;
        ClientDS_RailFact.Post;
      end;
    end;

    CalcSum(-9, True);

    DS_RailFact.DataSet := ClientDS_RailFact;
    ClientDS_RailFact.AfterPost := ClientDS_RailFactAfterPost;
    ClientDS_RailFact.BeforePost:= ClientDS_RailFactBeforePost;
    ClientDS_RailFact.FindKey([pos_fact_id]);
    cxGrid3DBBandedTableView1.Controller.TopRowIndex := pos;
//  end;
end;

procedure TfmBargainRailAdd.dxBarButton12Click(Sender: TObject);
var i, pos, pos_fact_id : integer;
    array_fact_id : Variant;
    str_rate_value : string;
    rate_value : Double;
begin
//  fmBargainRate := TfmBargainRate.Create(Application);
//
//  if fmBargainRate.ShowModal=mrOk then begin
//    array_fact_id := VarArrayCreate([0, cxGrid3DBBandedTableView1.Controller.SelectedRecordCount], varInteger);
//    for i:=0 to cxGrid3DBBandedTableView1.Controller.SelectedRecordCount - 1 do
//      array_fact_id[i] := cxGrid3DBBandedTableView1.Controller.SelectedRows[i].Values[cxGrid3DBBandedTableView1fact_id.Index];
//
//    pos := cxGrid3DBBandedTableView1.Controller.TopRowIndex;
//    pos_fact_id := cxGrid3DBBandedTableView1fact_id.DataBinding.Field.Value;
//    DS_RailFact.DataSet := nil;
//    ClientDS_RailFact.AfterPost := nil;
//    ClientDS_RailFact.BeforePost:= nil;
//
//    for i:= VarArrayLowBound(array_fact_id, 1) to VarArrayHighBound(array_fact_id, 1) do begin
//      if ClientDS_RailFact.FindKey([array_fact_id[i]]) then begin
//        ClientDS_RailFact.Edit;
////        ClientDS_RailFact.FieldByName('type_vagon_id'  ).Value := fmBargainRate._GetTypeVagonId;
////        ClientDS_RailFact.FieldByName('type_send_id'   ).Value := fmBargainRate._GetTypeSendId;
////        ClientDS_RailFact.FieldByName('type_vagon_name').Value := fmBargainRate._GetTypeVagonName;
////        ClientDS_RailFact.FieldByName('type_send_name' ).Value := fmBargainRate._GetTypeSendName;
//        ClientDS_RailFact.Post;
//      end;
//    end;
//
//    CalcSum(-9, True);
//
//    DS_RailFact.DataSet := ClientDS_RailFact;
//    ClientDS_RailFact.AfterPost := ClientDS_RailFactAfterPost;
//    ClientDS_RailFact.BeforePost:= ClientDS_RailFactBeforePost;
//    ClientDS_RailFact.FindKey([pos_fact_id]);
//    cxGrid3DBBandedTableView1.Controller.TopRowIndex := pos;
//  end;
end;

procedure TfmBargainRailAdd.dxBarButton13Click(Sender: TObject);
var i : integer;
begin
  ClientDS_ListRate.Append;
  ClientDS_ListRate.FieldByName('type_vagon_id'  ).Value := cxLookupComboBox7.EditValue;
  ClientDS_ListRate.FieldByName('type_send_id'   ).Value := cxLookupComboBox10.EditValue;
  ClientDS_ListRate.FieldByName('type_vagon_name').Value := cxLookupComboBox7.Text;
  ClientDS_ListRate.FieldByName('type_send_name' ).Value := cxLookupComboBox10.Text;
  ClientDS_ListRate.FieldByName('weight'         ).Value := 0;
  ClientDS_ListRate.FieldByName('rate_val'       ).Value := 0;
  ClientDS_ListRate.FieldByName('set_one'        ).Value := False;
  ClientDS_ListRate.Post;
  ClientDS_ListRate.Locate('id', ClientDS_ListRate.FieldByName('id').Value, []);

  for i := 0 to cxGridDBBandedTableView2.Controller.SelectedRecordCount - 1 do begin
    cxGridDBBandedTableView2.Controller.SelectedRecords[i].Selected := False;
  end;
  if cxGridDBBandedTableView2.Controller.FocusedRecord <> nil then
    cxGridDBBandedTableView2.Controller.FocusedRecord.Selected := True;
end;

procedure TfmBargainRailAdd.dxBarButton14Click(Sender: TObject);
var i : integer;
begin
  ClientDS_ListRate.Append;
  ClientDS_ListRate.FieldByName('type_vagon_id'  ).Value := cxLookupComboBox7.EditValue;
  ClientDS_ListRate.FieldByName('type_send_id'   ).Value := cxLookupComboBox10.EditValue;
  ClientDS_ListRate.FieldByName('type_vagon_name').Value := cxLookupComboBox7.Text;
  ClientDS_ListRate.FieldByName('type_send_name' ).Value := cxLookupComboBox10.Text;
  ClientDS_ListRate.FieldByName('weight'         ).Value := 0;
  ClientDS_ListRate.FieldByName('rate_val'       ).Value := 0;
  ClientDS_ListRate.FieldByName('set_one'        ).Value := True;
  ClientDS_ListRate.Post;
  ClientDS_ListRate.Locate('id', ClientDS_ListRate.FieldByName('id').Value, []);

  for i := 0 to cxGridDBBandedTableView2.Controller.SelectedRecordCount - 1 do begin
    cxGridDBBandedTableView2.Controller.SelectedRecords[i].Selected := False;
  end;
  if cxGridDBBandedTableView2.Controller.FocusedRecord <> nil then
    cxGridDBBandedTableView2.Controller.FocusedRecord.Selected := True;
end;

procedure TfmBargainRailAdd.dxBarButton15Click(Sender: TObject);
begin
  Fset_calc_enabled := False;
  ClientDS_ListRate.DisableControls;

  if TControl(Sender).Tag = 0 then begin
    ClientDS_ListRate.Delete;
  end else begin
    while not ClientDS_ListRate.Eof do ClientDS_ListRate.Delete;
  end;

  ClientDS_ListRate.EnableControls;
  Fset_calc_enabled := True;
  CalcSum(-9, True);
end;

procedure TfmBargainRailAdd.dxBarButton17Click(Sender: TObject);
begin
  if ClientDS_RailFact.RecordCount > 0 then begin
    fmFactCard := TfmFactCard.Create(Application);
    fmFactCard._UpdateFact(cxGrid3DBBandedTableView1fact_id.DataBinding.Field.AsInteger);
//    fmFactCard._SetReadOnly := True;
    fmFactCard.ShowModal;
  end;
end;

procedure TfmBargainRailAdd.dxBarButton18Click(Sender: TObject);
begin
  Panel8.Visible := dxBarButton18.Down;
  cxSplitter1.Visible := dxBarButton18.Down;
end;

procedure TfmBargainRailAdd.dxBarButton1Click(Sender: TObject);
var max_num: integer;
begin

  case TdxBarButton(Sender).ClickItemLink.Owner.Owner.Tag of
    0 : begin
          ClientDS_AddDistance.First;
          max_num := ClientDS_AddDistance.FieldByName('distance_num').AsInteger;
          while not ClientDS_AddDistance.Eof do begin
            if max_num < ClientDS_AddDistance.FieldByName('distance_num').AsInteger then
              max_num := ClientDS_AddDistance.FieldByName('distance_num').AsInteger;
            ClientDS_AddDistance.Next;
          end;
          max_num := max_num + 1;

          ClientDS_AddDistance.Append;
          ClientDS_AddDistance.FieldByName('distance_num').Value := max_num;
          ClientDS_AddDistance.Post;
        end;
    1 : begin
          ClientDS_AddPayers.Append;
          ClientDS_AddPayers.Post;
        end;
  end;
end;

procedure TfmBargainRailAdd.dxBarButton3Click(Sender: TObject);
begin
  case TdxBarButton(Sender).ClickItemLink.Owner.Owner.Tag of
    0 : ClientDS_AddDistance.Delete;
    1 : ClientDS_AddPayers.Delete;
  end;
end;

procedure TfmBargainRailAdd.dxBarButton4Click(Sender: TObject);
begin
  PrintcxGrid(cxGrid3DBBandedTableView1);
end;

procedure TfmBargainRailAdd.dxBarButton5Click(Sender: TObject);
var i, pos, pos_fact_id : integer;
    array_fact_id : Variant;
    str_rate_value : string;
    rate_value : Double;
begin
  if InputQuery('Ставка', 'Ставка', str_rate_value) then begin
    str_rate_value := ReplaceStr(str_rate_value, '.', FormatSettings.DecimalSeparator);
    str_rate_value := ReplaceStr(str_rate_value, ',', FormatSettings.DecimalSeparator);
    if not TryStrToFloat(str_rate_value, rate_value) then begin
      Application.MessageBox(PChar(str_rate_value + ' не является числом.'), 'Ошибка', MB_ICONSTOP or MB_OK);
      Exit;
    end;

    array_fact_id := VarArrayCreate([0, cxGrid3DBBandedTableView1.Controller.SelectedRecordCount], varInteger);
    for i:=0 to cxGrid3DBBandedTableView1.Controller.SelectedRecordCount - 1 do
      array_fact_id[i] := cxGrid3DBBandedTableView1.Controller.SelectedRows[i].Values[cxGrid3DBBandedTableView1fact_id.Index];


    pos := cxGrid3DBBandedTableView1.Controller.TopRowIndex;
    pos_fact_id := cxGrid3DBBandedTableView1fact_id.DataBinding.Field.Value;
    DS_RailFact.DataSet := nil;
    ClientDS_RailFact.AfterPost := nil;
    ClientDS_RailFact.BeforePost:= nil;

    for i:= VarArrayLowBound(array_fact_id, 1) to VarArrayHighBound(array_fact_id, 1) do begin
      if ClientDS_RailFact.FindKey([array_fact_id[i]]) then begin
        ClientDS_RailFact.Edit;
        ClientDS_RailFact.FieldByName('fact_rate').Value := rate_value;
        ClientDS_RailFact.Post;
      end;
    end;

    CalcSum(-9, True);

    DS_RailFact.DataSet := ClientDS_RailFact;
    ClientDS_RailFact.AfterPost := ClientDS_RailFactAfterPost;
    ClientDS_RailFact.BeforePost:= ClientDS_RailFactBeforePost;
    ClientDS_RailFact.FindKey([pos_fact_id]);
    cxGrid3DBBandedTableView1.Controller.TopRowIndex := pos;
  end;
end;

procedure TfmBargainRailAdd.dxBarButton9Click(Sender: TObject);
begin
  SetdxDBGridColumns(cxGrid3DBBandedTableView1);
end;

procedure TfmBargainRailAdd.dxBarPopupMenu3Popup(Sender: TObject);
begin
  if cxGrid3DBBandedTableView1set_main.DataBinding.Field.Value = True then begin
    dxBarButton11.Caption := 'Убрать факт из услуги';
    dxBarButton11.ImageIndex := 132;
  end else begin
    dxBarButton11.Caption := 'Добавить факт в услугу';
    dxBarButton11.ImageIndex := 10;
  end;
end;

procedure TfmBargainRailAdd.dxBarPopupMenu4Popup(Sender: TObject);
begin
  if (iif(cxLookupComboBox7.EditValue  = null, -9, cxLookupComboBox7.EditValue ) = -9) OR
     (iif(cxLookupComboBox10.EditValue = null, -9, cxLookupComboBox10.EditValue) = -9) then begin
    dxBarButton13.Enabled := False;
    dxBarButton14.Enabled := False;
  end else begin
    dxBarButton13.Enabled := True;
    dxBarButton14.Enabled := True;
  end;
end;

function TfmBargainRailAdd.FindInfObj(caption_name: string; table_name: string; set_cod: boolean; var id: integer; var cod: string; var name: string): boolean;
var new_str : string;
    Q : TADOQuery;
    res : boolean;
begin
  table_name := LowerCase(table_name);

  if InputQuery('Поиск', caption_name, new_str) then begin
    Q := TADOQuery.Create(nil);
    Q.Connection := Fconnect;
    Q.SQL.Add('SELECT inf_obj_id, inf_obj_name, inf_obj_cod');
    Q.SQL.Add('FROM ' + table_name);
    Q.SQL.Add('WHERE (' + iif(set_cod, 'inf_obj_cod', 'inf_obj_name') + ' LIKE ''%' + new_str + '%'')');
    Q.SQL.Add('AND (LEFT(' + DateToSQL(_GetDatePeriodFirst) + ', 6) BETWEEN convert(varchar(6), date_begin, 112) AND convert(varchar(6), date_end, 112) OR date_end is null)');
    if (table_name = 'inf_obj') or (table_name = 'inf_obj_etsng') then
      Q.SQL.Add('AND (dbo.GetInfObjVisible(str_group_visible) = 1)');
    Q.SQL.Add('ORDER BY inf_obj_name');
    Q.Open;
    fmFilter := TfmFilter.Create(0, Q, 'inf_obj_id', 'inf_obj_cod', 'inf_obj_name');
    if fmFilter.ShowModal=mrOk then begin
      id  := fmFilter.GetId;
      cod := fmFilter.GetCod;
      name:= fmFilter.GetName;
      res := True;
    end else res := False;
    Q.Free;
  end else res := False;

  Result := res;
end;

procedure TfmBargainRailAdd.SetKargoAdd(set_kargo_add: boolean);
begin
  if set_kargo_add = True then begin
    Label1.Enabled         := True;
    cxButtonEdit14.Enabled := True;
    cxButtonEdit15.Enabled := True;

  end else begin
    FkargoETSNG_add_id  := -9;
    cxButtonEdit14.Text := '';
    cxButtonEdit15.Text := '';

    Label1.Enabled         := False;
    cxButtonEdit14.Enabled := False;
    cxButtonEdit15.Enabled := False;
  end;
end;

procedure TfmBargainRailAdd.BitBtn1Click(Sender: TObject);
begin
  Fcontract_id      := iif(cxLookupComboBox8.EditValue = null, -9, cxLookupComboBox8.EditValue);
  Fcit_id           := iif(cxLookupComboBox3.EditValue = null, -9, cxLookupComboBox3.EditValue);
  Ftype_kontener_id := iif(cxLookupComboBox6.EditValue = null, -9, cxLookupComboBox6.EditValue);
  Fcurrency_id      := iif(cxLookupComboBox1.EditValue = null, -9, cxLookupComboBox1.EditValue);
  Fed_izm_id        := iif(cxLookupComboBox2.EditValue = null, -9, cxLookupComboBox2.EditValue);
  Ftype_add_id      := iif(cxLookupComboBox4.EditValue = null, -9, cxLookupComboBox4.EditValue);
  Ftype_nds_id      := iif(cxLookupComboBox9.EditValue = null, -9, cxLookupComboBox9.EditValue);

  if Fcontract_id = -9 then begin
    Application.MessageBox('Выберите договор.', 'Ошибка', MB_OK);
    ModalResult := mrNone;
    Exit;
  end;

  if Fed_izm_id = -9 then begin
    Application.MessageBox('Выберите единицу измерения.', 'Ошибка', MB_OK);
    ModalResult := mrNone;
    Exit;
  end;

  if Fcurrency_id = -9 then begin
    Application.MessageBox('Выберите валюту.', 'Ошибка', MB_OK);
    ModalResult := mrNone;
    Exit;
  end;

  if FkargoETSNG_id = -9 then begin
    Application.MessageBox('Выберите груз.', 'Ошибка', MB_OK);
    ModalResult := mrNone;
    Exit;
  end;

  ModalResult := mrOK;
  if Ftype_action = 0 then begin
    FClient_bargain_add.Append();
    FClient_bargain_rail.Append();
  end else begin
    FClient_bargain_add.Locate('add_id', Fid, []);
    FClient_bargain_add.Edit;
    FClient_bargain_rail.Locate('add_id', Fid, []);
    FClient_bargain_rail.Edit;
  end;

  FClient_bargain_add.FieldByName('bargain_add_id'      ).Value := iif(Fbargain_add_id = -9, null, Fbargain_add_id);
  FClient_bargain_add.FieldByName('bargain_id'          ).Value := iif(Fbargain_id = -9,  null, Fbargain_id);
  FClient_bargain_add.FieldByName('type_add_id'         ).Value := iif(Ftype_add_id = -9, null, Ftype_add_id);
  FClient_bargain_add.FieldByName('contract_id'         ).Value := iif(Fcontract_id = -9, null, Fcontract_id);
  FClient_bargain_add.FieldByName('service_id'          ).Value := iif(Fservice_id = -9,  null, Fservice_id);
  FClient_bargain_add.FieldByName('type_contract'       ).Value := Ftype_contract;
  FClient_bargain_add.FieldByName('contract_set'        ).Value := Fcontract_set;
  FClient_bargain_add.FieldByName('currency_id'         ).Value := iif(Fcurrency_id = -9, null, Fcurrency_id);
  FClient_bargain_add.FieldByName('type_nds_id'         ).Value := iif(Ftype_nds_id = -9, null, Ftype_nds_id);
  FClient_bargain_add.FieldByName('ed_izm_id'           ).Value := iif(Fed_izm_id = -9, null, Fed_izm_id);
  FClient_bargain_add.FieldByName('type_nds_cod'        ).Value := Query_NDS.Lookup('inf_obj_id', Ftype_nds_id, 'inf_obj_cod');
  FClient_bargain_add.FieldByName('ed_izm_cod'          ).Value := Query_Ed_Izm.Lookup('inf_obj_id', Fed_izm_id, 'inf_obj_cod');
  FClient_bargain_add.FieldByName('set_include_nds'     ).Value := cxCheckBox6.Checked;
  FClient_bargain_add.FieldByName('exchange_USD_val'    ).Value := cxButtonEdit25.EditValue;
  FClient_bargain_add.FieldByName('exchange_EUR_val'    ).Value := cxButtonEdit26.EditValue;
  FClient_bargain_add.FieldByName('exchange_CHF_val'    ).Value := cxButtonEdit27.EditValue;
  FClient_bargain_add.FieldByName('date_period'         ).Value := _GetDatePeriod;
  FClient_bargain_add.FieldByName('date_period_service' ).Value := _GetDatePeriodService;

  FClient_bargain_add.FieldByName('comment'             ).Value := cxMemo1.EditValue;
  FClient_bargain_add.FieldByName('type_exchange_id'    ).Value := cxComboBox3.ItemIndex;
  FClient_bargain_add.FieldByName('add_rate'            ).Value := cxCurrencyEdit1.EditValue;
  FClient_bargain_add.FieldByName('add_count'           ).Value := cxCurrencyEdit3.EditValue;
  FClient_bargain_add.FieldByName('type_calc_id'        ).Value := Ftype_calc_id;
  case Ftype_calc_id of
    0: FClient_bargain_add.FieldByName('type_calc_name').Value := 'Ставка за вагон';
    1: FClient_bargain_add.FieldByName('type_calc_name').Value := 'Единая ставка за услугу';
    2: FClient_bargain_add.FieldByName('type_calc_name').Value := 'Абсолютная величина';
  end;

  FClient_bargain_add.FieldByName('ed_izm_name'         ).Value := cxLookupComboBox2.Text;
  FClient_bargain_add.FieldByName('firm_customer_name'  ).Value := iif(Fcontract_id = -9, null, cxLookupComboBox8.Text);
  FClient_bargain_add.FieldByName('contract_cod'        ).Value := iif(Fcontract_id = -9, null, cxButtonEdit9.Text);
  FClient_bargain_add.FieldByName('type_add_name'       ).Value := iif(Ftype_add_id = -9, null, cxLookupComboBox4.Text);
  FClient_bargain_add.FieldByName('brief_name'          ).Value := iif(Fcurrency_id = -9, null, cxLookupComboBox1.Text);

  FClient_bargain_add.Post;
  Fid := FClient_bargain_add.FieldByName('add_id').AsInteger;

  FClient_bargain_rail.FieldByName('add_id'               ).Value := Fid;
  FClient_bargain_rail.FieldByName('bargain_rail_id'      ).Value := iif(Fbargain_rail_id = -9, null, Fbargain_rail_id);
  FClient_bargain_rail.FieldByName('bargain_add_id'       ).Value := iif(Fbargain_add_id = -9, null, Fbargain_add_id);
  FClient_bargain_rail.FieldByName('calc_round_weight'    ).Value := cxRadioGroup2.ItemIndex;
  FClient_bargain_rail.FieldByName('calc_kargo_min_norm'  ).Value := cxCurrencyEdit8.EditValue;
  FClient_bargain_rail.FieldByName('calc_set_grp'         ).Value := cxCheckBox5.Checked;
  FClient_bargain_rail.FieldByName('kargoETSNG_id'        ).Value := iif(FkargoETSNG_id = -9, null, FkargoETSNG_id);
  FClient_bargain_rail.FieldByName('kargoETSNG_cod'       ).Value := cxButtonEdit11.EditValue;
  FClient_bargain_rail.FieldByName('kargoETSNG_name'      ).Value := cxButtonEdit10.EditValue;
  FClient_bargain_rail.FieldByName('kargoETSNG_group_name').Value := cxTextEdit14.EditValue;
  FClient_bargain_rail.FieldByName('kargoETSNG_add_id'    ).Value := iif(FkargoETSNG_add_id = -9, null, FkargoETSNG_add_id);
  FClient_bargain_rail.FieldByName('kargoETSNG_add_cod'   ).Value := cxButtonEdit15.EditValue;
  FClient_bargain_rail.FieldByName('kargoETSNG_add_name'  ).Value := cxButtonEdit14.EditValue;
  FClient_bargain_rail.FieldByName('kargoGNG_id'          ).Value := iif(FkargoGNG_id = -9, null, FkargoGNG_id);
  FClient_bargain_rail.FieldByName('kargoGNG_cod'         ).Value := cxButtonEdit13.EditValue;
  FClient_bargain_rail.FieldByName('kargoGNG_name'        ).Value := cxButtonEdit12.EditValue;
  FClient_bargain_rail.FieldByName('state_begin_id'       ).Value := iif(Fstate_begin_id = -9, null, Fstate_begin_id);
  FClient_bargain_rail.FieldByName('state_begin_name'     ).Value := cxButtonEdit1.EditValue;
  FClient_bargain_rail.FieldByName('state_end_id'         ).Value := iif(Fstate_end_id = -9, null, Fstate_end_id);
  FClient_bargain_rail.FieldByName('state_end_name'       ).Value := cxButtonEdit4.EditValue;
  FClient_bargain_rail.FieldByName('node_begin_id'        ).Value := iif(Fnode_begin_id = -9, null, Fnode_begin_id);
  FClient_bargain_rail.FieldByName('node_begin_cod'       ).Value := cxTextEdit3.EditValue;
  FClient_bargain_rail.FieldByName('node_begin_name'      ).Value := cxButtonEdit2.EditValue;
  FClient_bargain_rail.FieldByName('node_end_id'          ).Value := iif(Fnode_end_id = -9, null, Fnode_end_id);
  FClient_bargain_rail.FieldByName('node_end_cod'         ).Value := cxTextEdit4.EditValue;
  FClient_bargain_rail.FieldByName('node_end_name'        ).Value := cxButtonEdit3.EditValue;
  FClient_bargain_rail.FieldByName('cit_id'               ).Value := iif(Fcit_id = -9, null, Fcit_id);
  FClient_bargain_rail.FieldByName('type_kontener_id'     ).Value := iif(Ftype_kontener_id = -9, null, Ftype_kontener_id);
  FClient_bargain_rail.FieldByName('set_attr_self'        ).Value := cxRadioGroup4.ItemIndex;
  FClient_bargain_rail.FieldByName('firm_sender_id'       ).Value := iif(Ffirm_sender_id = -9, null, Ffirm_sender_id);
  FClient_bargain_rail.FieldByName('firm_sender_name'     ).Value := cxButtonEdit5.EditValue;
  FClient_bargain_rail.FieldByName('firm_reciever_id'     ).Value := iif(Ffirm_reciever_id = -9, null, Ffirm_reciever_id);
  FClient_bargain_rail.FieldByName('firm_reciever_name'   ).Value := cxButtonEdit6.EditValue;
  FClient_bargain_rail.FieldByName('set_list_rate'        ).Value := cxCheckBox3.Checked;
  FClient_bargain_rail.Post;



  FClient_bargain_fact.Filter   := 'add_id=' + IntToStr(Fid);
  FClient_bargain_fact.Filtered := True;
  FClient_bargain_fact.First;
  while not FClient_bargain_fact.Eof do FClient_bargain_fact.Delete;
  FClient_bargain_fact.Filtered := False;
  FClient_bargain_fact.Filter   := '';


  DS_RailFact.DataSet := nil;
  ClientDS_RailFact.AfterPost  := nil;
  ClientDS_RailFact.BeforePost := nil;

  FClient_bargain_fact.DisableControls;
  ClientDS_RailFact.First;
  while not ClientDS_RailFact.Eof do begin
    FClient_bargain_fact.Append;
    FClient_bargain_fact.FieldByName('add_id'           ).Value := Fid;
    FClient_bargain_fact.FieldByName('bargain_fact_id'  ).Value := ClientDS_RailFact.FieldByName('bargain_fact_id').Value;
    FClient_bargain_fact.FieldByName('bargain_add_id'   ).Value := ClientDS_RailFact.FieldByName('bargain_add_id').Value;
    FClient_bargain_fact.FieldByName('fact_id'          ).Value := ClientDS_RailFact.FieldByName('fact_id').Value;
    FClient_bargain_fact.FieldByName('fact_rate_not_nds').Value := ClientDS_RailFact.FieldByName('fact_rate_not_nds').Value;
    FClient_bargain_fact.FieldByName('fact_rate'        ).Value := ClientDS_RailFact.FieldByName('fact_rate').Value;
    FClient_bargain_fact.FieldByName('fact_count'       ).Value := ClientDS_RailFact.FieldByName('fact_count').Value;
    FClient_bargain_fact.FieldByName('fact_sum'         ).Value := ClientDS_RailFact.FieldByName('fact_sum').Value;
    FClient_bargain_fact.FieldByName('type_vagon_id'    ).Value := ClientDS_RailFact.FieldByName('type_vagon_id').Value;
    FClient_bargain_fact.FieldByName('type_send_id'     ).Value := ClientDS_RailFact.FieldByName('type_send_id').Value;
    FClient_bargain_fact.FieldByName('type_vagon_name'  ).Value := ClientDS_RailFact.FieldByName('type_vagon_name').Value;
    FClient_bargain_fact.FieldByName('type_send_name'   ).Value := ClientDS_RailFact.FieldByName('type_send_name').Value;
    FClient_bargain_fact.FieldByName('set_main'         ).Value := ClientDS_RailFact.FieldByName('set_main').Value;
    FClient_bargain_fact.FieldByName('exchange_date'    ).Value := ClientDS_RailFact.FieldByName('exchange_date').Value;
    FClient_bargain_fact.Post;
    ClientDS_RailFact.Next;
  end;
  FClient_bargain_fact.EnableControls;

  DS_RailFact.DataSet := ClientDS_RailFact;
  ClientDS_RailFact.BeforePost := ClientDS_RailFactBeforePost;
  ClientDS_RailFact.AfterPost  := ClientDS_RailFactAfterPost;


  DS_ListRate.DataSet := nil;

  FClient_bargain_rate.Filter   := 'add_id=' + IntToStr(Fid);
  FClient_bargain_rate.Filtered := True;
  FClient_bargain_rate.First;
  while not FClient_bargain_rate.Eof do FClient_bargain_rate.Delete;
  FClient_bargain_rate.Filtered := False;
  FClient_bargain_rate.Filter   := '';

  FClient_bargain_rate.DisableControls;
  ClientDS_ListRate.Filtered := False;
  ClientDS_ListRate.First;
  while not ClientDS_ListRate.Eof do begin
    FClient_bargain_rate.Append;
    FClient_bargain_rate.FieldByName('add_id'           ).Value := Fid;
    FClient_bargain_rate.FieldByName('bargain_rate_id'  ).Value := ClientDS_ListRate.FieldByName('bargain_rate_id').Value;
    FClient_bargain_rate.FieldByName('bargain_add_id'   ).Value := ClientDS_ListRate.FieldByName('bargain_add_id').Value;
    FClient_bargain_rate.FieldByName('type_vagon_id'    ).Value := ClientDS_ListRate.FieldByName('type_vagon_id').Value;
    FClient_bargain_rate.FieldByName('type_vagon_name'  ).Value := ClientDS_ListRate.FieldByName('type_vagon_name').Value;
    FClient_bargain_rate.FieldByName('type_send_id'     ).Value := ClientDS_ListRate.FieldByName('type_send_id').Value;
    FClient_bargain_rate.FieldByName('type_send_name'   ).Value := ClientDS_ListRate.FieldByName('type_send_name').Value;
    FClient_bargain_rate.FieldByName('weight'           ).Value := ClientDS_ListRate.FieldByName('weight').Value;
    FClient_bargain_rate.FieldByName('rate_val'         ).Value := ClientDS_ListRate.FieldByName('rate_val').Value;
    FClient_bargain_rate.FieldByName('set_one'          ).Value := ClientDS_ListRate.FieldByName('set_one').Value;
    FClient_bargain_rate.Post;
    ClientDS_ListRate.Next;
  end;
  ClientDS_ListRate.Filtered := True;
  FClient_bargain_rate.EnableControls;
  DS_RailFact.DataSet := ClientDS_ListRate;



  FClient_distance.Filter   := 'add_id=' + IntToStr(Fid);
  FClient_distance.Filtered := True;
  FClient_distance.First;
  while not FClient_distance.Eof do FClient_distance.Delete;
  FClient_distance.Filtered := False;
  FClient_distance.Filter   := '';

  ClientDS_AddDistance.First;
  while not ClientDS_AddDistance.Eof do begin
    FClient_distance.Append;
    FClient_distance.FieldByName('add_id'         ).Value := Fid;
    FClient_distance.FieldByName('add_distance_id').Value := ClientDS_AddDistance.FieldByName('add_distance_id').Value;
    FClient_distance.FieldByName('global_id'      ).Value := ClientDS_AddDistance.FieldByName('global_id').Value;
    FClient_distance.FieldByName('distance_num'   ).Value := ClientDS_AddDistance.FieldByName('distance_num').Value;
    FClient_distance.FieldByName('node_id'        ).Value := ClientDS_AddDistance.FieldByName('node_id').Value;
    FClient_distance.FieldByName('node_name'      ).Value := ClientDS_AddDistance.FieldByName('node_name').Value;
    FClient_distance.FieldByName('node_cod'       ).Value := ClientDS_AddDistance.FieldByName('node_cod').Value;
    FClient_distance.FieldByName('node_type_id'   ).Value := ClientDS_AddDistance.FieldByName('node_type_id').Value;
    FClient_distance.FieldByName('node_type_name' ).Value := ClientDS_AddDistance.FieldByName('node_type_name').Value;
    FClient_distance.Post;
    ClientDS_AddDistance.Next;
  end;


  FClient_payers.Filter   := 'add_id=' + IntToStr(Fid);
  FClient_payers.Filtered := True;
  FClient_payers.First;
  while not FClient_payers.Eof do FClient_payers.Delete;
  FClient_payers.Filtered := False;
  FClient_payers.Filter   := '';

  ClientDS_AddPayers.First;
  while not ClientDS_AddPayers.Eof do begin
    FClient_payers.Append;
    FClient_payers.FieldByName('add_id'       ).Value := Fid;
    FClient_payers.FieldByName('add_payers_id').Value := ClientDS_AddPayers.FieldByName('add_payers_id').Value;
    FClient_payers.FieldByName('global_id'    ).Value := ClientDS_AddPayers.FieldByName('global_id').Value;
    FClient_payers.FieldByName('firm_id'      ).Value := ClientDS_AddPayers.FieldByName('firm_id').Value;
    FClient_payers.FieldByName('state_id'     ).Value := ClientDS_AddPayers.FieldByName('state_id').Value;
    FClient_payers.FieldByName('firm_name'    ).Value := ClientDS_AddPayers.FieldByName('firm_name').Value;
    FClient_payers.FieldByName('state_name'   ).Value := ClientDS_AddPayers.FieldByName('state_name').Value;
    FClient_payers.Post;
    ClientDS_AddPayers.Next;
  end;         

end;



procedure TfmBargainRailAdd.ClientDS_ListRateAfterPost(DataSet: TDataSet);
begin
  CalcSum(-9, True);
end;

procedure TfmBargainRailAdd.ClientDS_RailFactAfterPost(DataSet: TDataSet);
begin
  CalcSum(DataSet.FieldByName('fact_id').Value, True);
end;

procedure TfmBargainRailAdd.ClientDS_RailFactBeforePost(DataSet: TDataSet);
var SP_fact_sum_CALC : TADOStoredProc;
begin
  if (Fset_calc_enabled = True) AND (True = False) then begin
    SP_fact_sum_CALC := TADOStoredProc.Create(nil);
    SP_fact_sum_CALC.Connection := Fconnect;
    SP_fact_sum_CALC.ProcedureName := 'sp_fact_sum_CALC';
    SP_fact_sum_CALC.Parameters.Refresh;
    SP_fact_sum_CALC.Parameters.ParamByName('@rate'                ).Value := DataSet.FieldByName('fact_rate').Value;
    SP_fact_sum_CALC.Parameters.ParamByName('@rate_not_nds'        ).Value := DataSet.FieldByName('fact_rate_not_nds').Value;
    SP_fact_sum_CALC.Parameters.ParamByName('@count'               ).Value := DataSet.FieldByName('fact_count').Value;
    SP_fact_sum_CALC.Parameters.ParamByName('@fact_weight'         ).Value := DataSet.FieldByName('fact_weight').Value;
    SP_fact_sum_CALC.Parameters.ParamByName('@calc_weight'         ).Value := DataSet.FieldByName('calc_weight').Value;
    SP_fact_sum_CALC.Parameters.ParamByName('@calc_weight_check'   ).Value := DataSet.FieldByName('calc_weight_check').Value;
    SP_fact_sum_CALC.Parameters.ParamByName('@kargo_capacity'      ).Value := DataSet.FieldByName('kargo_capacity').Value;
    SP_fact_sum_CALC.Parameters.ParamByName('@calc_round_weight'   ).Value := cxRadioGroup2.ItemIndex;
    SP_fact_sum_CALC.Parameters.ParamByName('@calc_kargo_min_norm' ).Value := cxCurrencyEdit8.EditValue;
    SP_fact_sum_CALC.Parameters.ParamByName('@calc_set_grp'        ).Value := cxCheckBox5.Checked;
    SP_fact_sum_CALC.Parameters.ParamByName('@type_nds_cod'        ).Value := Query_NDS.Lookup('inf_obj_id', cxLookupComboBox9.EditValue, 'inf_obj_cod');
    SP_fact_sum_CALC.Parameters.ParamByName('@ed_izm_cod'          ).Value := Query_Ed_Izm.Lookup('inf_obj_id', cxLookupComboBox2.EditValue, 'inf_obj_cod');
    SP_fact_sum_CALC.Parameters.ParamByName('@set_include_nds'     ).Value := cxCheckBox6.Checked;
    SP_fact_sum_CALC.Parameters.ParamByName('@bargain_correct_type').Value := 0;

    SP_fact_sum_CALC.ExecProc;

    DataSet.FieldByName('fact_rate_not_nds').Value := SP_fact_sum_CALC.Parameters.ParamByName('@fact_rate_not_nds').Value;
    DataSet.FieldByName('fact_rate'        ).Value := SP_fact_sum_CALC.Parameters.ParamByName('@fact_rate').Value;
    DataSet.FieldByName('fact_count'       ).Value := SP_fact_sum_CALC.Parameters.ParamByName('@fact_count').Value;
    DataSet.FieldByName('fact_sum'         ).Value := SP_fact_sum_CALC.Parameters.ParamByName('@fact_sum').Value;

    SP_fact_sum_CALC.Free;

    CalcSum(-9, True);
  end;
end;


procedure TfmBargainRailAdd.CalcSum(fact_id: integer; set_auto_calc: boolean);
begin
  if (Fset_calc_enabled = True) AND (set_auto_calc = True) then begin
    if Ftype_calc_id = 0 then CalcSum_Type0(fact_id, set_auto_calc);
    if Ftype_calc_id = 1 then CalcSum_Type1(fact_id, set_auto_calc);
    if Ftype_calc_id = 2 then CalcSum_Type2(fact_id, set_auto_calc);
  end;
end;

procedure TfmBargainRailAdd.CalcSum_Type0(fact_id: integer; set_auto_calc: boolean);
var   SP_bargain_new_add_CALC : TADOStoredProc;
             pos, pos_fact_id : integer;
        pos_rate, pos_rate_id : integer;
           ClientDS_fact_temp : TClientDataSet;
       ClientDS_fact_add_temp : TClientDataSet;
            ClientDS_add_temp : TClientDataSet;
           ClientDS_rail_temp : TClientDataSet;
           ClientDS_rate_temp : TClientDataSet;
                     t, t_all : TDateTime;
begin
  if (Fset_calc_enabled = True) AND (set_auto_calc = True) then begin
    RichEdit1.Lines.Clear;

    t := Now;
    t_all := Now;

    Screen.Cursor := crHourglass;

    ClientDS_fact_temp := TClientDataSet.Create(nil);
    ClientDS_fact_temp.FieldDefs.Add('fact_id', ftInteger);
    ClientDS_fact_temp.FieldDefs.Add('fact_weight', ftCurrency);
    ClientDS_fact_temp.FieldDefs.Add('calc_weight', ftCurrency);
    ClientDS_fact_temp.FieldDefs.Add('calc_weight_check', ftBoolean);
    ClientDS_fact_temp.FieldDefs.Add('kargo_capacity', ftCurrency);
    ClientDS_fact_temp.CreateDataSet;
    ClientDS_fact_temp.LogChanges := False;

    ClientDS_fact_add_temp := TClientDataSet.Create(nil);
    ClientDS_fact_add_temp.FieldDefs.Add('add_id', ftInteger);
    ClientDS_fact_add_temp.FieldDefs.Add('fact_id', ftInteger);
    ClientDS_fact_add_temp.FieldDefs.Add('fact_rate', ftCurrency);
    ClientDS_fact_add_temp.FieldDefs.Add('fact_rate_not_nds', ftCurrency);
    ClientDS_fact_add_temp.FieldDefs.Add('fact_count', ftCurrency);
    ClientDS_fact_add_temp.FieldDefs.Add('set_main', ftBoolean);
    ClientDS_fact_add_temp.FieldDefs.Add('type_vagon_id', ftInteger);
    ClientDS_fact_add_temp.FieldDefs.Add('type_send_id', ftInteger);
    ClientDS_fact_add_temp.FieldDefs.Add('exchange_date', ftDate);
    ClientDS_fact_add_temp.CreateDataSet;
    ClientDS_fact_add_temp.LogChanges := False;

    ClientDS_add_temp := TClientDataSet.Create(nil);
    ClientDS_add_temp.FieldDefs.Add('add_id', ftInteger);
    ClientDS_add_temp.FieldDefs.Add('type_nds_cod', ftString, 10);
    ClientDS_add_temp.FieldDefs.Add('ed_izm_cod', ftString, 10);
    ClientDS_add_temp.FieldDefs.Add('set_include_nds', ftBoolean);
    ClientDS_add_temp.FieldDefs.Add('type_exchange_id', ftInteger);
    ClientDS_add_temp.FieldDefs.Add('add_count', ftCurrency);
    ClientDS_add_temp.FieldDefs.Add('add_rate', ftCurrency);
    ClientDS_add_temp.FieldDefs.Add('type_calc_id', ftInteger);
    ClientDS_add_temp.CreateDataSet;
    ClientDS_add_temp.LogChanges := False;

    ClientDS_rail_temp := TClientDataSet.Create(nil);
    ClientDS_rail_temp.FieldDefs.Add('add_id', ftInteger);
    ClientDS_rail_temp.FieldDefs.Add('calc_round_weight', ftInteger);
    ClientDS_rail_temp.FieldDefs.Add('calc_kargo_min_norm', ftCurrency);
    ClientDS_rail_temp.FieldDefs.Add('calc_set_grp', ftBoolean);
    ClientDS_rail_temp.FieldDefs.Add('set_list_rate', ftBoolean);
    ClientDS_rail_temp.CreateDataSet;
    ClientDS_rail_temp.LogChanges := False;


    ClientDS_rate_temp := TClientDataSet.Create(nil);
    ClientDS_rate_temp.FieldDefs.Add('add_id', ftInteger);
    ClientDS_rate_temp.FieldDefs.Add('type_vagon_id', ftInteger);
    ClientDS_rate_temp.FieldDefs.Add('type_send_id', ftInteger);
    ClientDS_rate_temp.FieldDefs.Add('weight', ftCurrency);
    ClientDS_rate_temp.FieldDefs.Add('rate_val', ftCurrency);
    ClientDS_rate_temp.FieldDefs.Add('set_one', ftBoolean);
    ClientDS_rate_temp.CreateDataSet;
    ClientDS_rate_temp.LogChanges := False;



    t := Now;
    pos := cxGrid3DBBandedTableView1.Controller.TopRowIndex;
    pos_fact_id := iif(cxGrid3DBBandedTableView1fact_id.DataBinding.Field.IsNull, -9, cxGrid3DBBandedTableView1fact_id.DataBinding.Field.Value);
    DS_RailFact.DataSet := nil;
    ClientDS_RailFact.AfterPost := nil;
    ClientDS_RailFact.BeforePost:= nil;

    ClientDS_RailFact.First;
    while not ClientDS_RailFact.Eof do begin

      ClientDS_fact_temp.AppendRecord([
          ClientDS_RailFact.FieldByName('fact_id').Value,
          ClientDS_RailFact.FieldByName('fact_weight').Value,
          ClientDS_RailFact.FieldByName('calc_weight').Value,
          ClientDS_RailFact.FieldByName('calc_weight_check').Value,
          ClientDS_RailFact.FieldByName('kargo_capacity').Value
      ]);

      ClientDS_fact_add_temp.AppendRecord([
          1,
          ClientDS_RailFact.FieldByName('fact_id').Value,
          ClientDS_RailFact.FieldByName('fact_rate').Value,
          ClientDS_RailFact.FieldByName('fact_rate_not_nds').Value,
          ClientDS_RailFact.FieldByName('fact_count').Value,
          ClientDS_RailFact.FieldByName('set_main').Value,
          ClientDS_RailFact.FieldByName('type_vagon_id').Value,
          ClientDS_RailFact.FieldByName('type_send_id').Value,
          ClientDS_RailFact.FieldByName('exchange_date').Value
      ]);

      ClientDS_RailFact.Next;
    end;

    if ClientDS_ListRate.RecordCount > 0 then begin

      pos_rate    := cxGridDBBandedTableView2.Controller.TopRowIndex;
      pos_rate_id := iif(cxGridDBBandedTableView2id.DataBinding.Field.IsNull, -9, cxGridDBBandedTableView2id.DataBinding.Field.Value);
      DS_ListRate.DataSet := nil;

      ClientDS_ListRate.DisableControls;
      ClientDS_ListRate.Filtered := False;
      ClientDS_ListRate.First;
      while not ClientDS_ListRate.Eof do begin

        ClientDS_rate_temp.AppendRecord([
          1,
          ClientDS_ListRate.FieldByName('type_vagon_id').Value,
          ClientDS_ListRate.FieldByName('type_send_id').Value,
          ClientDS_ListRate.FieldByName('weight').Value,
          ClientDS_ListRate.FieldByName('rate_val').Value,
          ClientDS_ListRate.FieldByName('set_one').Value
        ]);
        ClientDS_ListRate.Next;
      end;
      ClientDS_ListRate.Filtered := True;
      ClientDS_ListRate.EnableControls;

      ClientDS_ListRate.Locate('id', pos_rate_id, []);
      cxGridDBBandedTableView2.Controller.TopRowIndex := pos_rate;
      DS_ListRate.DataSet := ClientDS_ListRate;
    end;

    ClientDS_add_temp.AppendRecord([
        1,
        Query_NDS.Lookup('inf_obj_id', cxLookupComboBox9.EditValue, 'inf_obj_cod'),
        Query_Ed_Izm.Lookup('inf_obj_id', cxLookupComboBox2.EditValue, 'inf_obj_cod'),
        cxCheckBox6.Checked,
        cxComboBox3.ItemIndex,
        cxCurrencyEdit3.EditValue,
        cxCurrencyEdit1.EditValue,
        Ftype_calc_id
    ]);

    ClientDS_rail_temp.AppendRecord([
        1,
        cxRadioGroup2.ItemIndex,
        cxCurrencyEdit8.EditValue,
        cxCheckBox5.Checked,
        cxCheckBox3.Checked
    ]);

    RichEdit1.Lines.Add('Temp Client Insert...:' + IntToStr(DateUtils.MilliSecondsBetween(Now, t)) + 'ms');

    t := Now;
    SP_bargain_new_add_CALC := TADOStoredProc.Create(nil);
    SP_bargain_new_add_CALC.Connection := Fconnect;
    SP_bargain_new_add_CALC.ProcedureName := 'sp_bargain_new_add_CALC_2';
    SP_bargain_new_add_CALC.Parameters.Refresh;
    RichEdit1.Lines.Add('Param refresh........:' + IntToStr(DateUtils.MilliSecondsBetween(Now, t)) + 'ms');
    t := Now;
    SP_bargain_new_add_CALC.Parameters.ParamByName('@set_out_param_bargain'       ).Value := False;
//    SP_bargain_new_add_CALC.Parameters.ParamByName('@bargain_calc_round_weight'   ).Value := FClient_bargain.FieldByName('calc_round_weight').Value;
//    SP_bargain_new_add_CALC.Parameters.ParamByName('@bargain_calc_kargo_min_norm' ).Value := FClient_bargain.FieldByName('calc_kargo_min_norm').Value;
//    SP_bargain_new_add_CALC.Parameters.ParamByName('@bargain_calc_set_grp'        ).Value := FClient_bargain.FieldByName('calc_set_grp').Value;
    SP_bargain_new_add_CALC.Parameters.ParamByName('@set_result_vagon'    ).Value := True;
    SP_bargain_new_add_CALC.Parameters.ParamByName('@bargain_add_xml'     ).Value := DataXMLToSQL(ClientDS_add_temp);
    SP_bargain_new_add_CALC.Parameters.ParamByName('@bargain_rail_xml'    ).Value := DataXMLToSQL(ClientDS_rail_temp);
    SP_bargain_new_add_CALC.Parameters.ParamByName('@bargain_fact_xml'    ).Value := DataXMLToSQL(ClientDS_fact_temp);
    SP_bargain_new_add_CALC.Parameters.ParamByName('@bargain_fact_add_xml').Value := DataXMLToSQL(ClientDS_fact_add_temp);
    SP_bargain_new_add_CALC.Parameters.ParamByName('@bargain_rate_xml'    ).Value := DataXMLToSQL(ClientDS_rate_temp);
    SP_bargain_new_add_CALC.Open;



    RichEdit1.Lines.Add('Open procedure.......:' + IntToStr(DateUtils.MilliSecondsBetween(Now, t)) + 'ms');

    ClientDS_fact_add_temp.Free;
    ClientDS_fact_temp.Free;
    ClientDS_add_temp.Free;
    ClientDS_rail_temp.Free;

    cxCurrencyEdit3.EditValue  := SP_bargain_new_add_CALC.Parameters.ParamByName('@add_count').Value;
    cxCurrencyEdit2.EditValue  := SP_bargain_new_add_CALC.Parameters.ParamByName('@add_sum').Value;

    cxCurrencyEdit15.EditValue := SP_bargain_new_add_CALC.Parameters.ParamByName('@out_count_vagon').Value;
    cxCurrencyEdit9.EditValue  := SP_bargain_new_add_CALC.Parameters.ParamByName('@out_count_weight').Value;
    cxCurrencyEdit10.EditValue := SP_bargain_new_add_CALC.Parameters.ParamByName('@out_count_day_vagon').Value;

    t := Now;
    if fact_id = -9 then begin
      while not SP_bargain_new_add_CALC.Eof do begin
        if ClientDS_RailFact.FindKey([SP_bargain_new_add_CALC.FieldByName('fact_id').Value]) then begin
          ClientDS_RailFact.Edit;
          ClientDS_RailFact.FieldByName('fact_rate_not_nds').Value := SP_bargain_new_add_CALC.FieldByName('fact_rate_not_nds').Value;
          ClientDS_RailFact.FieldByName('fact_rate'        ).Value := SP_bargain_new_add_CALC.FieldByName('fact_rate').Value;
          ClientDS_RailFact.FieldByName('fact_count'       ).Value := SP_bargain_new_add_CALC.FieldByName('fact_count').Value;
          ClientDS_RailFact.FieldByName('fact_sum'         ).Value := SP_bargain_new_add_CALC.FieldByName('fact_sum').Value;
          ClientDS_RailFact.Post;
        end;
        SP_bargain_new_add_CALC.Next;
      end;
      ClientDS_RailFact.FindKey([pos_fact_id]);
    end else begin
      if ClientDS_RailFact.Locate('fact_id', fact_id, []) AND SP_bargain_new_add_CALC.Locate('fact_id', fact_id, []) then begin
        ClientDS_RailFact.Edit;
        ClientDS_RailFact.FieldByName('fact_rate_not_nds').Value := SP_bargain_new_add_CALC.FieldByName('fact_rate_not_nds').Value;
        ClientDS_RailFact.FieldByName('fact_rate'        ).Value := SP_bargain_new_add_CALC.FieldByName('fact_rate').Value;
        ClientDS_RailFact.FieldByName('fact_count'       ).Value := SP_bargain_new_add_CALC.FieldByName('fact_count').Value;
        ClientDS_RailFact.FieldByName('fact_sum'         ).Value := SP_bargain_new_add_CALC.FieldByName('fact_sum').Value;
        ClientDS_RailFact.Post;
      end;
    end;
    RichEdit1.Lines.Add('Update fact..........:' + IntToStr(DateUtils.MilliSecondsBetween(Now, t)) + 'ms');

    t := Now;
    DS_RailFact.DataSet := ClientDS_RailFact;
    ClientDS_RailFact.AfterPost := ClientDS_RailFactAfterPost;
    ClientDS_RailFact.BeforePost:= ClientDS_RailFactBeforePost;

    cxGrid3DBBandedTableView1.Controller.TopRowIndex := pos;
    RichEdit1.Lines.Add('Show fact............:' + IntToStr(DateUtils.MilliSecondsBetween(Now, t)) + 'ms');

    SP_bargain_new_add_CALC.Free;
    Screen.Cursor := crDefault;

    RichEdit1.Lines.Add('TOTAL................:' + IntToStr(DateUtils.MilliSecondsBetween(Now, t_all)) + 'ms');
  end else begin
    cxCurrencyEdit3.EditValue  := null;
    cxCurrencyEdit2.EditValue  := null;
    cxCurrencyEdit15.EditValue := null;
    cxCurrencyEdit9.EditValue  := null;
    cxCurrencyEdit10.EditValue := null;

    cxCurrencyEdit3.Text := '(необходим расчет)';
    cxCurrencyEdit2.Text := '(необходим расчет)';
    cxCurrencyEdit15.Text:= '(необходим расчет)';
    cxCurrencyEdit9.Text := '(необходим расчет)';
    cxCurrencyEdit10.Text:= '(необходим расчет)';
  end;
end;


procedure TfmBargainRailAdd.CalcSum_Type1(fact_id: integer; set_auto_calc: boolean);
var   SP_bargain_new_add_CALC : TADOStoredProc;
             pos, pos_fact_id : integer;
        pos_rate, pos_rate_id : integer;
           ClientDS_fact_temp : TClientDataSet;
       ClientDS_fact_add_temp : TClientDataSet;
            ClientDS_add_temp : TClientDataSet;
           ClientDS_rail_temp : TClientDataSet;
                     t, t_all : TDateTime;
begin
  if (Fset_calc_enabled = True) AND (set_auto_calc = True) then begin
    RichEdit1.Lines.Clear;

    t := Now;
    t_all := Now;

    Screen.Cursor := crHourglass;

    ClientDS_fact_temp := TClientDataSet.Create(nil);
    ClientDS_fact_temp.FieldDefs.Add('fact_id', ftInteger);
    ClientDS_fact_temp.FieldDefs.Add('fact_weight', ftCurrency);
    ClientDS_fact_temp.FieldDefs.Add('calc_weight', ftCurrency);
    ClientDS_fact_temp.FieldDefs.Add('calc_weight_check', ftBoolean);
    ClientDS_fact_temp.FieldDefs.Add('kargo_capacity', ftCurrency);
    ClientDS_fact_temp.CreateDataSet;
    ClientDS_fact_temp.LogChanges := False;

    ClientDS_fact_add_temp := TClientDataSet.Create(nil);
    ClientDS_fact_add_temp.FieldDefs.Add('add_id', ftInteger);
    ClientDS_fact_add_temp.FieldDefs.Add('fact_id', ftInteger);
    ClientDS_fact_add_temp.FieldDefs.Add('fact_rate', ftCurrency);
    ClientDS_fact_add_temp.FieldDefs.Add('fact_rate_not_nds', ftCurrency);
    ClientDS_fact_add_temp.FieldDefs.Add('fact_count', ftCurrency);
    ClientDS_fact_add_temp.FieldDefs.Add('set_main', ftBoolean);
    ClientDS_fact_add_temp.FieldDefs.Add('type_vagon_id', ftInteger);
    ClientDS_fact_add_temp.FieldDefs.Add('type_send_id', ftInteger);
    ClientDS_fact_add_temp.FieldDefs.Add('exchange_date', ftDate);
    ClientDS_fact_add_temp.CreateDataSet;
    ClientDS_fact_add_temp.LogChanges := False;

    ClientDS_add_temp := TClientDataSet.Create(nil);
    ClientDS_add_temp.FieldDefs.Add('add_id', ftInteger);
    ClientDS_add_temp.FieldDefs.Add('type_nds_cod', ftString, 10);
    ClientDS_add_temp.FieldDefs.Add('ed_izm_cod', ftString, 10);
    ClientDS_add_temp.FieldDefs.Add('set_include_nds', ftBoolean);
    ClientDS_add_temp.FieldDefs.Add('type_exchange_id', ftInteger);
    ClientDS_add_temp.FieldDefs.Add('add_count', ftCurrency);
    ClientDS_add_temp.FieldDefs.Add('add_rate', ftCurrency);
    ClientDS_add_temp.FieldDefs.Add('type_calc_id', ftInteger);
    ClientDS_add_temp.CreateDataSet;
    ClientDS_add_temp.LogChanges := False;

    ClientDS_rail_temp := TClientDataSet.Create(nil);
    ClientDS_rail_temp.FieldDefs.Add('add_id', ftInteger);
    ClientDS_rail_temp.FieldDefs.Add('calc_round_weight', ftInteger);
    ClientDS_rail_temp.FieldDefs.Add('calc_kargo_min_norm', ftCurrency);
    ClientDS_rail_temp.FieldDefs.Add('calc_set_grp', ftBoolean);
    ClientDS_rail_temp.FieldDefs.Add('set_list_rate', ftBoolean);
    ClientDS_rail_temp.CreateDataSet;
    ClientDS_rail_temp.LogChanges := False;

    t := Now;
    pos := cxGrid3DBBandedTableView1.Controller.TopRowIndex;
    pos_fact_id := iif(cxGrid3DBBandedTableView1fact_id.DataBinding.Field.IsNull, -9, cxGrid3DBBandedTableView1fact_id.DataBinding.Field.Value);
    DS_RailFact.DataSet := nil;
    ClientDS_RailFact.AfterPost := nil;
    ClientDS_RailFact.BeforePost:= nil;

    ClientDS_RailFact.First;
    while not ClientDS_RailFact.Eof do begin

      ClientDS_fact_temp.AppendRecord([
          ClientDS_RailFact.FieldByName('fact_id').Value,
          ClientDS_RailFact.FieldByName('fact_weight').Value,
          ClientDS_RailFact.FieldByName('calc_weight').Value,
          ClientDS_RailFact.FieldByName('calc_weight_check').Value,
          ClientDS_RailFact.FieldByName('kargo_capacity').Value
      ]);

      ClientDS_fact_add_temp.AppendRecord([
          1,
          ClientDS_RailFact.FieldByName('fact_id').Value,
          ClientDS_RailFact.FieldByName('fact_rate').Value,
          ClientDS_RailFact.FieldByName('fact_rate_not_nds').Value,
          ClientDS_RailFact.FieldByName('fact_count').Value,
          ClientDS_RailFact.FieldByName('set_main').Value,
          ClientDS_RailFact.FieldByName('type_vagon_id').Value,
          ClientDS_RailFact.FieldByName('type_send_id').Value,
          ClientDS_RailFact.FieldByName('exchange_date').Value
      ]);

      ClientDS_RailFact.Next;
    end;

    ClientDS_add_temp.AppendRecord([
        1,
        Query_NDS.Lookup('inf_obj_id', cxLookupComboBox9.EditValue, 'inf_obj_cod'),
        Query_Ed_Izm.Lookup('inf_obj_id', cxLookupComboBox2.EditValue, 'inf_obj_cod'),
        cxCheckBox6.Checked,
        cxComboBox3.ItemIndex,
        cxCurrencyEdit3.EditValue,
        cxCurrencyEdit1.EditValue,
        Ftype_calc_id
    ]);

    ClientDS_rail_temp.AppendRecord([
        1,
        cxRadioGroup2.ItemIndex,
        cxCurrencyEdit8.EditValue,
        cxCheckBox5.Checked,
        cxCheckBox3.Checked
    ]);

    RichEdit1.Lines.Add('Temp Client Insert...:' + IntToStr(DateUtils.MilliSecondsBetween(Now, t)) + 'ms');

    t := Now;
    SP_bargain_new_add_CALC := TADOStoredProc.Create(nil);
    SP_bargain_new_add_CALC.Connection := Fconnect;
    SP_bargain_new_add_CALC.ProcedureName := 'sp_bargain_new_add_CALC_2';
    SP_bargain_new_add_CALC.Parameters.Refresh;
    RichEdit1.Lines.Add('Param refresh........:' + IntToStr(DateUtils.MilliSecondsBetween(Now, t)) + 'ms');
    t := Now;
    SP_bargain_new_add_CALC.Parameters.ParamByName('@set_out_param_bargain'       ).Value := False;
//    SP_bargain_new_add_CALC.Parameters.ParamByName('@bargain_calc_round_weight'   ).Value := FClient_bargain.FieldByName('calc_round_weight').Value;
//    SP_bargain_new_add_CALC.Parameters.ParamByName('@bargain_calc_kargo_min_norm' ).Value := FClient_bargain.FieldByName('calc_kargo_min_norm').Value;
//    SP_bargain_new_add_CALC.Parameters.ParamByName('@bargain_calc_set_grp'        ).Value := FClient_bargain.FieldByName('calc_set_grp').Value;
    SP_bargain_new_add_CALC.Parameters.ParamByName('@set_result_vagon'    ).Value := True;
    SP_bargain_new_add_CALC.Parameters.ParamByName('@bargain_add_xml'     ).Value := DataXMLToSQL(ClientDS_add_temp);
    SP_bargain_new_add_CALC.Parameters.ParamByName('@bargain_rail_xml'    ).Value := DataXMLToSQL(ClientDS_rail_temp);
    SP_bargain_new_add_CALC.Parameters.ParamByName('@bargain_fact_xml'    ).Value := DataXMLToSQL(ClientDS_fact_temp);
    SP_bargain_new_add_CALC.Parameters.ParamByName('@bargain_fact_add_xml').Value := DataXMLToSQL(ClientDS_fact_add_temp);
    SP_bargain_new_add_CALC.Parameters.ParamByName('@bargain_rate_xml'    ).Value := null;
    SP_bargain_new_add_CALC.Open;



    RichEdit1.Lines.Add('Open procedure.......:' + IntToStr(DateUtils.MilliSecondsBetween(Now, t)) + 'ms');

    ClientDS_fact_add_temp.Free;
    ClientDS_fact_temp.Free;
    ClientDS_add_temp.Free;
    ClientDS_rail_temp.Free;

    cxCurrencyEdit3.EditValue  := SP_bargain_new_add_CALC.Parameters.ParamByName('@add_count').Value;
    cxCurrencyEdit2.EditValue  := SP_bargain_new_add_CALC.Parameters.ParamByName('@add_sum').Value;

    cxCurrencyEdit15.EditValue := SP_bargain_new_add_CALC.Parameters.ParamByName('@out_count_vagon').Value;
    cxCurrencyEdit9.EditValue  := SP_bargain_new_add_CALC.Parameters.ParamByName('@out_count_weight').Value;
    cxCurrencyEdit10.EditValue := SP_bargain_new_add_CALC.Parameters.ParamByName('@out_count_day_vagon').Value;

    t := Now;
    if fact_id = -9 then begin
      while not SP_bargain_new_add_CALC.Eof do begin
        if ClientDS_RailFact.FindKey([SP_bargain_new_add_CALC.FieldByName('fact_id').Value]) then begin
          ClientDS_RailFact.Edit;
//          ClientDS_RailFact.FieldByName('fact_rate_not_nds').Value := SP_bargain_new_add_CALC.FieldByName('fact_rate_not_nds').Value;
//          ClientDS_RailFact.FieldByName('fact_rate'        ).Value := SP_bargain_new_add_CALC.FieldByName('fact_rate').Value;
          ClientDS_RailFact.FieldByName('fact_count'       ).Value := SP_bargain_new_add_CALC.FieldByName('fact_count').Value;
//          ClientDS_RailFact.FieldByName('fact_sum'         ).Value := SP_bargain_new_add_CALC.FieldByName('fact_sum').Value;
          ClientDS_RailFact.Post;
        end;
        SP_bargain_new_add_CALC.Next;
      end;
      ClientDS_RailFact.FindKey([pos_fact_id]);
    end else begin
      if ClientDS_RailFact.Locate('fact_id', fact_id, []) AND SP_bargain_new_add_CALC.Locate('fact_id', fact_id, []) then begin
        ClientDS_RailFact.Edit;
//        ClientDS_RailFact.FieldByName('fact_rate_not_nds').Value := SP_bargain_new_add_CALC.FieldByName('fact_rate_not_nds').Value;
//        ClientDS_RailFact.FieldByName('fact_rate'        ).Value := SP_bargain_new_add_CALC.FieldByName('fact_rate').Value;
        ClientDS_RailFact.FieldByName('fact_count'       ).Value := SP_bargain_new_add_CALC.FieldByName('fact_count').Value;
//        ClientDS_RailFact.FieldByName('fact_sum'         ).Value := SP_bargain_new_add_CALC.FieldByName('fact_sum').Value;
        ClientDS_RailFact.Post;
      end;
    end;
    RichEdit1.Lines.Add('Update fact..........:' + IntToStr(DateUtils.MilliSecondsBetween(Now, t)) + 'ms');

    t := Now;
    DS_RailFact.DataSet := ClientDS_RailFact;
    ClientDS_RailFact.AfterPost := ClientDS_RailFactAfterPost;
    ClientDS_RailFact.BeforePost:= ClientDS_RailFactBeforePost;

    cxGrid3DBBandedTableView1.Controller.TopRowIndex := pos;
    RichEdit1.Lines.Add('Show fact............:' + IntToStr(DateUtils.MilliSecondsBetween(Now, t)) + 'ms');

    SP_bargain_new_add_CALC.Free;
    Screen.Cursor := crDefault;

    RichEdit1.Lines.Add('TOTAL................:' + IntToStr(DateUtils.MilliSecondsBetween(Now, t_all)) + 'ms');
  end else begin
    cxCurrencyEdit3.EditValue  := null;
    cxCurrencyEdit2.EditValue  := null;
    cxCurrencyEdit15.EditValue := null;
    cxCurrencyEdit9.EditValue  := null;
    cxCurrencyEdit10.EditValue := null;

    cxCurrencyEdit3.Text := '(необходим расчет)';
    cxCurrencyEdit2.Text := '(необходим расчет)';
    cxCurrencyEdit15.Text:= '(необходим расчет)';
    cxCurrencyEdit9.Text := '(необходим расчет)';
    cxCurrencyEdit10.Text:= '(необходим расчет)';
  end;
end;

procedure TfmBargainRailAdd.CalcSum_Type2(fact_id: integer; set_auto_calc: boolean);
var   SP_bargain_new_add_CALC : TADOStoredProc;
            ClientDS_add_temp : TClientDataSet;
           ClientDS_rail_temp : TClientDataSet;
                     t, t_all : TDateTime;
begin
  if (Fset_calc_enabled = True) AND (set_auto_calc = True) then begin
    RichEdit1.Lines.Clear;

    t := Now;
    t_all := Now;

    Screen.Cursor := crHourglass;

    ClientDS_add_temp := TClientDataSet.Create(nil);
    ClientDS_add_temp.FieldDefs.Add('add_id', ftInteger);
    ClientDS_add_temp.FieldDefs.Add('type_nds_cod', ftString, 10);
    ClientDS_add_temp.FieldDefs.Add('ed_izm_cod', ftString, 10);
    ClientDS_add_temp.FieldDefs.Add('set_include_nds', ftBoolean);
    ClientDS_add_temp.FieldDefs.Add('type_exchange_id', ftInteger);
    ClientDS_add_temp.FieldDefs.Add('add_count', ftCurrency);
    ClientDS_add_temp.FieldDefs.Add('add_rate', ftCurrency);
    ClientDS_add_temp.FieldDefs.Add('type_calc_id', ftInteger);
    ClientDS_add_temp.CreateDataSet;
    ClientDS_add_temp.LogChanges := False;

    ClientDS_rail_temp := TClientDataSet.Create(nil);
    ClientDS_rail_temp.FieldDefs.Add('add_id', ftInteger);
    ClientDS_rail_temp.FieldDefs.Add('calc_round_weight', ftInteger);
    ClientDS_rail_temp.FieldDefs.Add('calc_kargo_min_norm', ftCurrency);
    ClientDS_rail_temp.FieldDefs.Add('calc_set_grp', ftBoolean);
    ClientDS_rail_temp.FieldDefs.Add('set_list_rate', ftBoolean);
    ClientDS_rail_temp.CreateDataSet;
    ClientDS_rail_temp.LogChanges := False;

    t := Now;
    ClientDS_add_temp.AppendRecord([
        1,
        Query_NDS.Lookup('inf_obj_id', cxLookupComboBox9.EditValue, 'inf_obj_cod'),
        Query_Ed_Izm.Lookup('inf_obj_id', cxLookupComboBox2.EditValue, 'inf_obj_cod'),
        cxCheckBox6.Checked,
        cxComboBox3.ItemIndex,
        cxCurrencyEdit3.EditValue,
        cxCurrencyEdit1.EditValue,
        Ftype_calc_id
    ]);

    ClientDS_rail_temp.AppendRecord([
        1,
        cxRadioGroup2.ItemIndex,
        cxCurrencyEdit8.EditValue,
        cxCheckBox5.Checked,
        cxCheckBox3.Checked
    ]);

    RichEdit1.Lines.Add('Temp Client Insert...:' + IntToStr(DateUtils.MilliSecondsBetween(Now, t)) + 'ms');

    t := Now;
    SP_bargain_new_add_CALC := TADOStoredProc.Create(nil);
    SP_bargain_new_add_CALC.Connection := Fconnect;
    SP_bargain_new_add_CALC.ProcedureName := 'sp_bargain_new_add_CALC_2';
    SP_bargain_new_add_CALC.Parameters.Refresh;
    RichEdit1.Lines.Add('Param refresh........:' + IntToStr(DateUtils.MilliSecondsBetween(Now, t)) + 'ms');
    t := Now;
    SP_bargain_new_add_CALC.Parameters.ParamByName('@set_out_param_bargain'       ).Value := False;
//    SP_bargain_new_add_CALC.Parameters.ParamByName('@bargain_calc_round_weight'   ).Value := FClient_bargain.FieldByName('calc_round_weight').Value;
//    SP_bargain_new_add_CALC.Parameters.ParamByName('@bargain_calc_kargo_min_norm' ).Value := FClient_bargain.FieldByName('calc_kargo_min_norm').Value;
//    SP_bargain_new_add_CALC.Parameters.ParamByName('@bargain_calc_set_grp'        ).Value := FClient_bargain.FieldByName('calc_set_grp').Value;
    SP_bargain_new_add_CALC.Parameters.ParamByName('@set_result_add'      ).Value := True;
    SP_bargain_new_add_CALC.Parameters.ParamByName('@bargain_add_xml'     ).Value := DataXMLToSQL(ClientDS_add_temp);
    SP_bargain_new_add_CALC.Parameters.ParamByName('@bargain_rail_xml'    ).Value := DataXMLToSQL(ClientDS_rail_temp);

    SP_bargain_new_add_CALC.Parameters.ParamByName('@bargain_fact_xml'    ).Value := null;
    SP_bargain_new_add_CALC.Parameters.ParamByName('@bargain_fact_add_xml').Value := null;
    SP_bargain_new_add_CALC.Parameters.ParamByName('@bargain_rate_xml'    ).Value := null;
    SP_bargain_new_add_CALC.Open;



    RichEdit1.Lines.Add('Open procedure.......:' + IntToStr(DateUtils.MilliSecondsBetween(Now, t)) + 'ms');

    ClientDS_add_temp.Free;
    ClientDS_rail_temp.Free;

    cxCurrencyEdit3.EditValue  := SP_bargain_new_add_CALC.Parameters.ParamByName('@add_count').Value;
    cxCurrencyEdit2.EditValue  := SP_bargain_new_add_CALC.Parameters.ParamByName('@add_sum').Value;

//    cxCurrencyEdit15.EditValue := SP_bargain_new_add_CALC.Parameters.ParamByName('@out_count_vagon').Value;
//    cxCurrencyEdit9.EditValue  := SP_bargain_new_add_CALC.Parameters.ParamByName('@out_count_weight').Value;
//    cxCurrencyEdit10.EditValue := SP_bargain_new_add_CALC.Parameters.ParamByName('@out_count_day_vagon').Value;

    SP_bargain_new_add_CALC.Free;
    Screen.Cursor := crDefault;

    RichEdit1.Lines.Add('TOTAL................:' + IntToStr(DateUtils.MilliSecondsBetween(Now, t_all)) + 'ms');
  end else begin
    cxCurrencyEdit3.EditValue  := null;
    cxCurrencyEdit2.EditValue  := null;
    cxCurrencyEdit15.EditValue := null;
    cxCurrencyEdit9.EditValue  := null;
    cxCurrencyEdit10.EditValue := null;

    cxCurrencyEdit3.Text := '(необходим расчет)';
    cxCurrencyEdit2.Text := '(необходим расчет)';
    cxCurrencyEdit15.Text:= '(необходим расчет)';
    cxCurrencyEdit9.Text := '(необходим расчет)';
    cxCurrencyEdit10.Text:= '(необходим расчет)';
  end;
end;

procedure TfmBargainRailAdd.cxGrid3DBBandedTableView1CustomDrawCell(Sender: TcxCustomGridTableView; ACanvas: TcxCanvas; AViewInfo: TcxGridTableDataCellViewInfo; var ADone: Boolean);
begin
  if (AViewInfo.GridRecord.Values[cxGrid3DBBandedTableView1global_color.Index]<>NULL) then
      ACanvas.Brush.Color := AViewInfo.GridRecord.Values[cxGrid3DBBandedTableView1global_color.Index];

  if AViewInfo.Item.Options.Editing = True then begin
    ACanvas.Brush.Color := $00DDECDD;//$00C0DCC1;
    ACanvas.Font.Style := [fsBold];
  end;

  if Ftype_calc_id = 1 then begin
    if AViewInfo.Item.ID = cxGrid3DBBandedTableView1fact_count.ID then begin
      ACanvas.Brush.Color := $00DDECDD;
      ACanvas.Font.Style := [fsBold];
    end;
  end;


  if AViewInfo.GridRecord.Selected or AViewInfo.GridRecord.Focused then begin
    ACanvas.Brush.Color := clNavy;
    ACanvas.Font.Color := clWhite;
    if AViewInfo.Focused then ACanvas.Brush.Color := clBlue;
  end;

  if AViewInfo.Item.ID <> cxGrid3DBBandedTableView1fact_id.ID then
    if (AViewInfo.GridRecord.Values[cxGrid3DBBandedTableView1set_main.Index] = True) then ACanvas.Font.Style := [fsBold]
    else ACanvas.Font.Color := clGray;
end;

procedure TfmBargainRailAdd.cxGrid3DBBandedTableView1EditKeyDown(Sender: TcxCustomGridTableView; AItem: TcxCustomGridTableItem; AEdit: TcxCustomEdit; var Key: Word; Shift: TShiftState);
begin
  if Key = VK_RETURN then Key := VK_DOWN;
end;

procedure TfmBargainRailAdd.SetTypeCalcAdd(type_calc_add: integer);
begin
  Ftype_calc_id := type_calc_add;
  Fset_calc_enabled := False;
  case Ftype_calc_id of
    0:  begin
          Label24.Visible := False;
          cxCurrencyEdit1.Visible := False;
          Label13.Left := Label13.Left - cxCurrencyEdit1.Width;
          Label6.Left  := Label6.Left - cxCurrencyEdit1.Width;
          Label5.Left  := Label5.Left - cxCurrencyEdit1.Width;
          Label11.Left := Label11.Left - cxCurrencyEdit1.Width;
          cxCurrencyEdit3.Left := cxCurrencyEdit3.Left - cxCurrencyEdit1.Width;
          cxLookupComboBox1.Left := cxLookupComboBox1.Left - cxCurrencyEdit1.Width;
          cxLookupComboBox2.Left := cxLookupComboBox2.Left - cxCurrencyEdit1.Width;
          cxCurrencyEdit2.Left := cxCurrencyEdit2.Left - cxCurrencyEdit1.Width;
          cxCurrencyEdit2.Width := cxCurrencyEdit2.Width + cxCurrencyEdit1.Width;

          cxGrid3DBBandedTableView1type_vagon_name.Visible := True;
          cxGrid3DBBandedTableView1type_send_name.Visible := True;
          cxGrid3DBBandedTableView1fact_rate_not_nds.Visible := True;
          cxGrid3DBBandedTableView1fact_rate.Visible := True;
        end;
    1:  begin
          Panel8.Visible      := False;
          cxSplitter1.Visible := False;

          cxGrid3DBBandedTableView1type_vagon_name.Visible := False;
          cxGrid3DBBandedTableView1type_send_name.Visible := False;
          cxGrid3DBBandedTableView1fact_rate_not_nds.Visible := False;
          cxGrid3DBBandedTableView1fact_rate.Visible := False;
          dxBarButton5.Visible := ivNever;
          dxBarButton6.Visible := ivNever;
          dxBarButton12.Visible := ivNever;
          dxBarButton18.Visible := ivNever;
        end;
    2:  begin
          ClientDS_RailFact.First;
          while not ClientDS_RailFact.Eof do begin
            ClientDS_RailFact.Edit;
            ClientDS_RailFact.FieldByName('set_main').Value := False;
            ClientDS_RailFact.Post;
            ClientDS_RailFact.Next;
          end;

          Constraints.MinWidth := Panel1.Width;
          Panel7.Visible      := False;
          cxSplitter4.Visible := False;
          ClientWidth := Panel1.Width;
          cxCurrencyEdit3.Properties.ReadOnly := False;
          cxCurrencyEdit3.Style.Font.Style := [];
          cxCurrencyEdit3.Style.Color := clWindow;
          cxPropertiesStore1.Active := False;

          Height := Constraints.MinHeight;
          Width  := Constraints.MinWidth;

        end;
  end;
  Fset_calc_enabled := True;
end;

end.
