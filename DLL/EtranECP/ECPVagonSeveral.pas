unit ECPVagonSeveral;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, ExtCtrls, cxGraphics, cxControls, cxLookAndFeels,
  cxLookAndFeelPainters, cxContainer, cxEdit, cxTextEdit, cxMemo,
  cxPropertiesStore, dxSkinsCore, dxSkinBlack, dxSkinBlue, dxSkinBlueprint,
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
  dxSkinValentine, dxSkinVS2010, dxSkinWhiteprint, dxSkinXmas2008Blue, cxClasses, dxSkinOffice2016Colorful, dxSkinOffice2016Dark, dxSkinTheBezier, dxSkinVisualStudio2013Blue,
  dxSkinVisualStudio2013Dark, dxSkinVisualStudio2013Light, Vcl.Menus, cxButtons,
  dxSkinBasic, dxSkinOffice2019Black, dxSkinOffice2019Colorful,
  dxSkinOffice2019DarkGray, dxSkinOffice2019White, dxSkinWXI, StrUtils;

type
  TfmECPVagonSeveral = class(TForm)
    Panel1: TPanel;
    Panel2: TPanel;
    GroupBox2: TGroupBox;
    cxMemo1: TcxMemo;
    cxPropertiesStore1: TcxPropertiesStore;
    cxButton1: TcxButton;
    cxButton3: TcxButton;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure cxButton1Click(Sender: TObject);
  private
    Fvagon_list : string;
    procedure SetCaption(cp: string);
    procedure SetVagonList(vagon_list: string);
  public
    constructor Create(AOwner: TApplication); reintroduce;
  published
    property _GetVagonList : string read Fvagon_list;
    property _SetCaption   : string write SetCaption;
    property _SetVagonList : string write SetVagonList;
  end;

var
  fmECPVagonSeveral: TfmECPVagonSeveral;

implementation

{$R *.dfm}

constructor TfmECPVagonSeveral.Create(AOwner: TApplication);
begin
  Screen.Cursor := crHourglass;
  inherited Create(AOwner);

  Fvagon_list := '';

  Screen.Cursor := crDefault;
end;

procedure TfmECPVagonSeveral.cxButton1Click(Sender: TObject);
var i : integer;
    str_list : TStringList;
begin
  i := 0;

  str_list := TStringList.Create;
  str_list.Text := cxMemo1.Lines.Text;


  while i<str_list.Count do begin
    if (Trim(str_list.Strings[i]) = '') OR (Trim(str_list.Strings[i]) = #13#10) then begin
      str_list.Delete(i)
    end else begin
      str_list.Strings[i] := Trim(str_list.Strings[i]);
      i := i + 1;
    end;
  end;
  Fvagon_list := str_list.CommaText;
  str_list.Free;
end;

procedure TfmECPVagonSeveral.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action := caFree;
end;

procedure TfmECPVagonSeveral.SetCaption(cp: string);
begin
  Caption := cp;
end;

procedure TfmECPVagonSeveral.SetVagonList(vagon_list: string);
var str_list : TStringList;
    i : integer;
begin
  str_list := TStringList.Create;
  str_list.Text := ReplaceStr(vagon_list, ',', #10);
  for i := 0 to str_list.Count-1 do begin
    if str_list.Strings[i] <> '' then
      cxMemo1.Lines.Add(str_list.Strings[i]);
  end;
  str_list.Free;
end;

end.
