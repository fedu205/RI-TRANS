unit ECPInformAdd;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics,
  Controls, Forms, Dialogs, Menus, StdCtrls, ExtCtrls, cxGraphics, cxLookAndFeels, cxLookAndFeelPainters, cxButtons, cxControls, cxContainer,
  cxEdit, cxTextEdit, cxMaskEdit, cxDropDownEdit, cxClasses, cxPropertiesStore, dxSkinsCore, dxSkinBlack, dxSkinBlue, dxSkinBlueprint, dxSkinCaramel,
  dxSkinCoffee, dxSkinDarkRoom, dxSkinDarkSide, dxSkinDevExpressDarkStyle,  dxSkinDevExpressStyle, dxSkinFoggy, dxSkinGlassOceans, dxSkinHighContrast,
  dxSkinLilian, dxSkinLiquidSky, dxSkinLondonLiquidSky, dxSkinMcSkin, dxSkinMetropolis,  dxSkinMetropolisDark, dxSkinMoneyTwins, dxSkinOffice2007Black,
  dxSkinOffice2007Blue, dxSkinOffice2007Green, dxSkinOffice2007Pink, dxSkinOffice2007Silver, dxSkinOffice2010Black, dxSkinOffice2010Blue,
  dxSkinOffice2010Silver, dxSkinOffice2013DarkGray, dxSkinOffice2013LightGray, dxSkinOffice2013White, dxSkinOffice2016Colorful, dxSkinOffice2016Dark,
  dxSkinPumpkin, dxSkinSeven, dxSkinSevenClassic, dxSkinSharp, dxSkinSharpPlus, dxSkinSilver, dxSkinSpringTime, dxSkinStardust, dxSkinSummer2008,
  dxSkinTheAsphaltWorld, dxSkinTheBezier, dxSkinsDefaultPainters, dxSkinValentine, dxSkinVisualStudio2013Blue, dxSkinVisualStudio2013Dark,
  dxSkinVisualStudio2013Light, dxSkinVS2010, dxSkinWhiteprint, dxSkinXmas2008Blue;

type
  TfmECPInformAdd = class(TForm)
    Panel2: TPanel;
    cxButton1: TcxButton;
    cxButton2: TcxButton;
    Panel1: TPanel;
    cxComboBox3: TcxComboBox;
    Label3: TLabel;
    cxTextEdit1: TcxTextEdit;
    Label13: TLabel;
    Label1: TLabel;
    cxTextEdit2: TcxTextEdit;
    Label2: TLabel;
    cxTextEdit3: TcxTextEdit;
    cxPropertiesStore1: TcxPropertiesStore;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure cxButton1Click(Sender: TObject);
  private
    Fdet_tip : string;
    Fdet_tip_name : string;
    Fdepo  : string;
    Fdet_num  : string;
    Fdet_izg  : string;
  public
    constructor Create(AOwner: TApplication);
  published
    property _GetDetTip : string read Fdet_tip;
    property _GetDetTipName : string read Fdet_tip_name;
    property _GetDepo   : string read Fdepo;
    property _GetDetNum : string read Fdet_num;
    property _GetDetIzg : string read Fdet_izg;

  end;

var
  fmECPInformAdd: TfmECPInformAdd;

implementation

{$R *.dfm}

constructor TfmECPInformAdd.Create(AOwner: TApplication);
var   login : string;
    db_name : string;
begin
  Screen.Cursor := -11;
  inherited Create(AOwner);

  Screen.Cursor := 0;
end;


procedure TfmECPInformAdd.cxButton1Click(Sender: TObject);
begin
  if cxComboBox3.ItemIndex = 0 then Fdet_tip := '5';
  if cxComboBox3.ItemIndex = 1 then Fdet_tip := '6';
  if cxComboBox3.ItemIndex = 2 then Fdet_tip := '7';

  if cxComboBox3.ItemIndex = 0 then Fdet_tip_name := 'Колесная пара';
  if cxComboBox3.ItemIndex = 1 then Fdet_tip_name := 'Литая деталь';
  if cxComboBox3.ItemIndex = 2 then Fdet_tip_name := 'Тележка';

  Fdepo   := cxTextEdit1.Text;
  Fdet_num:= cxTextEdit2.Text;
  Fdet_izg:= cxTextEdit3.Text;

  ModalResult := mrOk;
end;

procedure TfmECPInformAdd.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action := caFree;
end;

end.
