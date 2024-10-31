unit CtmNewSupport;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Default, cxGraphics, cxControls, cxLookAndFeels,
  cxLookAndFeelPainters, cxStyles, cxCustomData, cxFilter, cxData,
  cxDataStorage, cxEdit, DB, cxDBData, cxContainer, cxMaskEdit, cxSpinEdit,
  cxLabel, cxTextEdit, cxCurrencyEdit, cxCheckBox, cxGridLevel,
  cxGridCustomTableView, cxGridTableView, cxGridBandedTableView,
  cxGridDBBandedTableView, cxClasses, cxGridCustomView, cxGrid, ExtCtrls,
  StdCtrls, Buttons, ADODB, cxPropertiesStore, dxSkinsCore, dxSkinBlack,
  dxSkinBlue, dxSkinBlueprint, dxSkinCaramel, dxSkinCoffee, dxSkinDarkRoom,
  dxSkinDarkSide, dxSkinDevExpressDarkStyle, dxSkinDevExpressStyle, dxSkinFoggy,
  dxSkinGlassOceans, dxSkinHighContrast, dxSkiniMaginary, dxSkinLilian,
  dxSkinLiquidSky, dxSkinLondonLiquidSky, dxSkinMcSkin, dxSkinMetropolis,
  dxSkinMetropolisDark, dxSkinMoneyTwins, dxSkinOffice2007Black,
  dxSkinOffice2007Blue, dxSkinOffice2007Green, dxSkinOffice2007Pink,
  dxSkinOffice2007Silver, dxSkinOffice2010Black, dxSkinOffice2010Blue,
  dxSkinOffice2010Silver, dxSkinOffice2013DarkGray, dxSkinOffice2013LightGray,
  dxSkinOffice2013White, dxSkinOffice2016Colorful, dxSkinOffice2016Dark,
  dxSkinPumpkin, dxSkinSeven, dxSkinSevenClassic, dxSkinSharp, dxSkinSharpPlus,
  dxSkinSilver, dxSkinSpringTime, dxSkinStardust, dxSkinSummer2008,
  dxSkinTheAsphaltWorld, dxSkinsDefaultPainters, dxSkinValentine,
  dxSkinVisualStudio2013Blue, dxSkinVisualStudio2013Dark,
  dxSkinVisualStudio2013Light, dxSkinVS2010, dxSkinWhiteprint,
  dxSkinXmas2008Blue, dxSkinscxPCPainter, cxNavigator,
  cxDataControllerConditionalFormattingRulesManagerDialog, dxSkinTheBezier, dxDateRanges;

type
  TfmCtmNewSupport = class(TForm)
    Panel1: TPanel;
    cxGrid1: TcxGrid;
    cxGrid1DBBandedTableView1: TcxGridDBBandedTableView;
    cxGrid1DBBandedTableView1ID: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1Caption: TcxGridDBBandedColumn;
    cxGrid1Level1: TcxGridLevel;
    Panel2: TPanel;
    cxCheckBox2: TcxCheckBox;
    cxCurrencyEdit1: TcxCurrencyEdit;
    Panel3: TPanel;
    cxLabel1: TcxLabel;
    cxSpinEdit4: TcxSpinEdit;
    cxLabel2: TcxLabel;
    cxSpinEdit1: TcxSpinEdit;
    Query_SPRDesc: TADOQuery;
    DS_SPRDesc: TDataSource;
    cxPropertiesStore1: TcxPropertiesStore;
    Panel18: TPanel;
    BitBtn_Ok: TBitBtn;
    BitBtn_Cancel: TBitBtn;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure cxCheckBox2PropertiesEditValueChanged(Sender: TObject);
    procedure BitBtn_OkClick(Sender: TObject);
  private
    Fusr_pwd      : PUser_pwd;
    Fdate_from_to : TDateTime;

    FSupport_id       : integer;
    FSupport_Caption  : string;
    FSupport_Axis     : integer;
    FSupport_Kol_Conductor : integer;
    FSupport_Vochr    : Variant;
  public
    constructor Create(AOwner: TApplication; usr_pwd: PUser_pwd; date_from_to: TDateTime); reintroduce;
  published
    property  _GetId: integer read FSupport_id;
    property  _GetCaption : string read FSupport_Caption;
    property  _GetAxis : integer read FSupport_Axis;
    property  _GetKolConductor : integer read FSupport_Kol_Conductor;
    property  _GetVochr : Variant read FSupport_Vochr;
  end;

var
  fmCtmNewSupport: TfmCtmNewSupport;

implementation

uses CtmNewMain;

{$R *.dfm}

procedure TfmCtmNewSupport.BitBtn_OkClick(Sender: TObject);
begin
  ModalResult    := mrOk;

  FSupport_id       := cxGrid1DBBandedTableView1ID.DataBinding.Field.AsInteger;
  FSupport_Caption  := cxGrid1DBBandedTableView1Caption.DataBinding.Field.AsString;
  FSupport_Axis     := cxSpinEdit1.EditValue;
  FSupport_Kol_Conductor := cxSpinEdit4.EditValue;
  if cxCheckBox2.Checked then
    FSupport_Vochr := cxCurrencyEdit1.EditValue
  else
    FSupport_Vochr := null;
end;

constructor TfmCtmNewSupport.Create(AOwner: TApplication; usr_pwd: PUser_pwd; date_from_to: TDateTime);
begin
  Screen.Cursor := crHourglass;
  inherited Create(AOwner);
  Fusr_pwd := usr_pwd;
  Fdate_from_to := date_from_to;

  Query_SPRDesc.Open;

  Screen.Cursor := crDefault;
end;

procedure TfmCtmNewSupport.cxCheckBox2PropertiesEditValueChanged(Sender: TObject);
begin
  cxCurrencyEdit1.Enabled := cxCheckBox2.Checked;
end;

procedure TfmCtmNewSupport.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action := caFree;
end;

end.
