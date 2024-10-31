unit CtmNewOption;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Default, cxGraphics, cxControls, cxLookAndFeels,
  cxLookAndFeelPainters, cxContainer, cxEdit, cxCheckBox, cxLabel, ExtCtrls,
  StdCtrls, Buttons, dxSkinsCore, dxSkinBlack, dxSkinBlue, dxSkinBlueprint,
  dxSkinCaramel, dxSkinCoffee, dxSkinDarkRoom, dxSkinDarkSide,
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
  dxSkinOffice2016Colorful, dxSkinOffice2016Dark, dxSkinVisualStudio2013Blue,
  dxSkinVisualStudio2013Dark, dxSkinVisualStudio2013Light;

type
  TfmCtmNewOption = class(TForm)
    GridPanel2: TGridPanel;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    Panel1: TPanel;
    cxLabel7: TcxLabel;
    cxLabel8: TcxLabel;
    cxLabel9: TcxLabel;
    cxLabel1: TcxLabel;
    cxCheckBox2: TcxCheckBox;
    cxCheckBox1: TcxCheckBox;
    cxCheckBox9: TcxCheckBox;
    cxCheckBox10: TcxCheckBox;
    cxCheckBox5: TcxCheckBox;
    cxCheckBox6: TcxCheckBox;
    cxCheckBox3: TcxCheckBox;
    cxCheckBox4: TcxCheckBox;
    cxCheckBox7: TcxCheckBox;
    cxCheckBox8: TcxCheckBox;
    cxCheckBox11: TcxCheckBox;
    cxCheckBox12: TcxCheckBox;
    cxCheckBox13: TcxCheckBox;
    cxCheckBox14: TcxCheckBox;
    cxCheckBox15: TcxCheckBox;
    cxCheckBox16: TcxCheckBox;
    cxLabel4: TcxLabel;
    cxLabel6: TcxLabel;
    cxLabel5: TcxLabel;
    cxLabel2: TcxLabel;
    cxLabel3: TcxLabel;
    cxLabel10: TcxLabel;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure BitBtn1Click(Sender: TObject);
    procedure cxCheckBox1PropertiesEditValueChanged(Sender: TObject);
    procedure cxCheckBox9PropertiesEditValueChanged(Sender: TObject);
    procedure cxCheckBox5PropertiesEditValueChanged(Sender: TObject);
    procedure cxCheckBox3PropertiesEditValueChanged(Sender: TObject);
    procedure cxCheckBox7PropertiesEditValueChanged(Sender: TObject);
    procedure cxCheckBox11PropertiesEditValueChanged(Sender: TObject);
    procedure cxCheckBox13PropertiesEditValueChanged(Sender: TObject);
  private
    Fusr_pwd      : PUser_pwd;
    Fdate_from_to : TDateTime;

    FOption2  : Variant;
    FOption4  : Variant;
    FOption6  : Variant;
    FOption8  : Variant;
    FOption10 : Variant;
    FOption12 : Variant;
    FOption14 : Variant;

    procedure SetOption2(option: variant);
    procedure SetOption4(option: variant);
    procedure SetOption6(option: variant);
    procedure SetOption8(option: variant);
    procedure SetOption10(option: variant);
    procedure SetOption12(option: variant);
    procedure SetOption14(option: variant);
  public
    constructor Create(AOwner: TApplication; usr_pwd: PUser_pwd; date_from_to: TDateTime); reintroduce;

  published
    property _GetOption2 : Variant read FOption2;
    property _GetOption4 : Variant read FOption4;
    property _GetOption6 : Variant read FOption6;
    property _GetOption8 : Variant read FOption8;
    property _GetOption10: Variant read FOption10;
    property _GetOption12: Variant read FOption12;
    property _GetOption14: Variant read FOption14;

    property _SetOption2 : Variant write SetOption2;
    property _SetOption4 : Variant write SetOption4;
    property _SetOption6 : Variant write SetOption6;
    property _SetOption8 : Variant write SetOption8;
    property _SetOption10: Variant write SetOption10;
    property _SetOption12: Variant write SetOption12;
    property _SetOption14: Variant write SetOption14;
  end;

var
  fmCtmNewOption: TfmCtmNewOption;

implementation

{$R *.dfm}

constructor TfmCtmNewOption.Create(AOwner: TApplication; usr_pwd: PUser_pwd; date_from_to: TDateTime);
begin
  Screen.Cursor := crHourglass;
  inherited Create(AOwner);
  Fusr_pwd := usr_pwd;
  Fdate_from_to := date_from_to;

  FOption2  := null;
  FOption4  := null;
  FOption6  := null;
  FOption8  := null;
  FOption10 := null;
  FOption12 := null;
  FOption14 := null;

  Screen.Cursor := crDefault;
end;

procedure TfmCtmNewOption.cxCheckBox11PropertiesEditValueChanged(Sender: TObject);
begin
  cxCheckBox12.Enabled := cxCheckBox11.Checked;
  cxCheckBox12.Checked := cxCheckBox11.Checked;
end;

procedure TfmCtmNewOption.cxCheckBox13PropertiesEditValueChanged(Sender: TObject);
begin
  cxCheckBox14.Enabled := cxCheckBox13.Checked;
  cxCheckBox14.Checked := cxCheckBox13.Checked;
end;

procedure TfmCtmNewOption.cxCheckBox1PropertiesEditValueChanged(Sender: TObject);
begin
  cxCheckBox2.Enabled := cxCheckBox1.Checked;
  cxCheckBox2.Checked := cxCheckBox1.Checked;
end;

procedure TfmCtmNewOption.cxCheckBox3PropertiesEditValueChanged(Sender: TObject);
begin
  cxCheckBox4.Enabled := cxCheckBox3.Checked;
  cxCheckBox4.Checked := cxCheckBox3.Checked;
end;

procedure TfmCtmNewOption.cxCheckBox5PropertiesEditValueChanged(Sender: TObject);
begin
  cxCheckBox6.Enabled := cxCheckBox5.Checked;
  cxCheckBox6.Checked := cxCheckBox5.Checked;
end;

procedure TfmCtmNewOption.cxCheckBox7PropertiesEditValueChanged(Sender: TObject);
begin
  cxCheckBox8.Enabled := cxCheckBox7.Checked;
  cxCheckBox8.Checked := cxCheckBox7.Checked;
end;

procedure TfmCtmNewOption.cxCheckBox9PropertiesEditValueChanged(Sender: TObject);
begin
  cxCheckBox10.Enabled := cxCheckBox9.Checked;
  cxCheckBox10.Checked := cxCheckBox9.Checked;
end;

procedure TfmCtmNewOption.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action := caFree;
end;

procedure TfmCtmNewOption.BitBtn1Click(Sender: TObject);
begin
  if cxCheckBox1.Checked then
    FOption2 := cxCheckBox2.Checked
  else
    FOption2 := null;

  if cxCheckBox3.Checked then
    FOption4 := cxCheckBox4.Checked
  else
    FOption4 := null;

  if cxCheckBox5.Checked then
    FOption6 := cxCheckBox6.Checked
  else
    FOption6 := null;

  if cxCheckBox7.Checked then
    FOption8 := cxCheckBox8.Checked
  else
    FOption8 := null;

  if cxCheckBox9.Checked then
    FOption10 := cxCheckBox10.Checked
  else
    FOption10 := null;

  if cxCheckBox11.Checked then
    FOption12 := cxCheckBox12.Checked
  else
    FOption12 := null;

  if cxCheckBox13.Checked then
    FOption14 := cxCheckBox14.Checked
  else
    FOption14 := null;
end;

procedure TfmCtmNewOption.SetOption2(option: variant);
begin
  FOption2 := option;
  if FOption2 <> null then begin
    cxCheckBox1.Checked := True;
    cxCheckBox2.Checked := FOption2;
  end;
end;

procedure TfmCtmNewOption.SetOption4(option: variant);
begin
  FOption4 := option;
  if FOption4 <> null then begin
    cxCheckBox3.Checked := True;
    cxCheckBox4.Checked := FOption4;
  end;
end;

procedure TfmCtmNewOption.SetOption6(option: variant);
begin
  FOption6 := option;
  if FOption6 <> null then begin
    cxCheckBox5.Checked := True;
    cxCheckBox6.Checked := FOption6;
  end;
end;

procedure TfmCtmNewOption.SetOption8(option: variant);
begin
  FOption8 := option;
  if FOption8 <> null then begin
    cxCheckBox7.Checked := True;
    cxCheckBox8.Checked := FOption8;
  end;
end;

procedure TfmCtmNewOption.SetOption10(option: variant);
begin
  FOption10 := option;
  if FOption10 <> null then begin
    cxCheckBox9.Checked := True;
    cxCheckBox10.Checked := FOption10;
  end;
end;

procedure TfmCtmNewOption.SetOption12(option: variant);
begin
  FOption12 := option;
  if FOption12 <> null then begin
    cxCheckBox11.Checked := True;
    cxCheckBox12.Checked := FOption12;
  end;
end;

procedure TfmCtmNewOption.SetOption14(option: variant);
begin
  FOption14 := option;
  if FOption14 <> null then begin
    cxCheckBox13.Checked := True;
    cxCheckBox14.Checked := FOption14;
  end;
end;

end.
