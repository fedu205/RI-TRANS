unit CtmNewWashing;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, ExtCtrls, dxSkinsCore, dxSkinBlack, dxSkinBlue,
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
  cxRadioGroup, cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters,
  cxContainer, cxEdit, cxLabel, Default, DB, ADODB, dxSkinOffice2016Colorful,
  dxSkinOffice2016Dark, dxSkinVisualStudio2013Blue, dxSkinVisualStudio2013Dark,
  dxSkinVisualStudio2013Light;

type
  TfmCtmNewWashing = class(TForm)
    Panel18: TPanel;
    BitBtn_Ok: TBitBtn;
    BitBtn_Cancel: TBitBtn;
    Panel1: TPanel;
    cxRadioButton1: TcxRadioButton;
    cxRadioButton2: TcxRadioButton;
    cxLabel8: TcxLabel;
    cxLabel9: TcxLabel;
    cxLabel1: TcxLabel;
    cxLabel2: TcxLabel;
    cxLabel3: TcxLabel;
    cxLabel4: TcxLabel;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure cxLabel2Click(Sender: TObject);
    procedure BitBtn_OkClick(Sender: TObject);
    procedure cxRadioButton1Click(Sender: TObject);
  private
    Fusr_pwd      : PUser_pwd;
    Fdate_from_to : TDateTime;
    FQueryStation : TADOQuery;

    Fnode_cod    : string;
    Fnode_name   : string;
    Fnode_road   : string;
    Fnode_ppland : string;

    procedure SetNodeCod(node_cod: string);
    procedure SetNodeName(node_name: string);
    procedure SetNodeRoad(node_road: string);
    procedure SetNodePPLand(node_ppland: string);

    procedure SetQueryStation(query_station: TADOQuery);
  public
    constructor Create(AOwner: TApplication; usr_pwd: PUser_pwd; date_from_to: TDateTime); reintroduce;
  published
    property _SetQueryStation : TADOQuery write SetQueryStation;

    property _SetNodeCod      : string write SetNodeCod;
    property _SetNodeName     : string write SetNodeName;
    property _SetNodeRoad     : string write SetNodeRoad;
    property _SetNodePPLand   : string write SetNodePPLand;

    property _GetNodeCod      : string read Fnode_cod;
    property _GetNodeName     : string read Fnode_name;
    property _GetNodeRoad     : string read Fnode_road;
    property _GetNodePPLand   : string read Fnode_ppland;
  end;

var
  fmCtmNewWashing: TfmCtmNewWashing;

implementation

uses CtmNewNode;

{$R *.dfm}

procedure TfmCtmNewWashing.BitBtn_OkClick(Sender: TObject);
begin
  if cxRadioButton1.Checked then begin
    Fnode_cod := '';
    Fnode_name := '';
    Fnode_road := '';
    Fnode_ppland := '';
  end;
end;

constructor TfmCtmNewWashing.Create(AOwner: TApplication; usr_pwd: PUser_pwd; date_from_to: TDateTime);
begin
  Screen.Cursor := crHourglass;
  inherited Create(AOwner);
  Fusr_pwd := usr_pwd;
  Fdate_from_to := date_from_to;

  Fnode_cod    := '';
  Fnode_name   := '';
  Fnode_road   := '';
  Fnode_ppland := '';

  FQueryStation := nil;

  Screen.Cursor := crDefault;
end;

procedure TfmCtmNewWashing.cxLabel2Click(Sender: TObject);
begin
  fmCtmNewNode := TfmCtmNewNode.Create(Application, Fusr_pwd, Fdate_from_to);
  fmCtmNewNode._SetQueryStation := FQueryStation;
  if (Fnode_cod <> '') AND (FQueryStation.Active = True) then
    fmCtmNewNode._SetNodeCod := Fnode_cod;

  if fmCtmNewNode.ShowModal = mrOk then begin
    Fnode_cod     := fmCtmNewNode._GetNodeCod;
    Fnode_name    := fmCtmNewNode._GetNodeName;
    Fnode_ppland  := fmCtmNewNode._GetLandName;
    Fnode_road    := fmCtmNewNode._GetRoadName;

    cxLabel2.Caption := Fnode_cod + ' ' + Fnode_name;
    cxLabel3.Caption := Fnode_road;
    cxLabel4.Caption := Fnode_ppland;
  end;
end;

procedure TfmCtmNewWashing.cxRadioButton1Click(Sender: TObject);
begin
  if  cxRadioButton1.Checked then begin
    cxLabel8.Enabled := False;
    cxLabel9.Enabled := False;
    cxLabel1.Enabled := False;
    cxLabel2.Enabled := False;
    cxLabel3.Enabled := False;
    cxLabel4.Enabled := False;
  end else begin
    cxLabel8.Enabled := True;
    cxLabel9.Enabled := True;
    cxLabel1.Enabled := True;
    cxLabel2.Enabled := True;
    cxLabel3.Enabled := True;
    cxLabel4.Enabled := True;
  end;
end;

procedure TfmCtmNewWashing.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action := caFree;
end;


procedure TfmCtmNewWashing.SetQueryStation(query_station: TADOQuery);
begin
  if query_station <> nil then begin
    FQueryStation := query_station;
  end;
end;

procedure TfmCtmNewWashing.SetNodeCod(node_cod: string);
begin
  cxRadioButton2.Checked := True;
  Fnode_cod := node_cod;
  cxLabel2.Caption := Fnode_cod + ' ' + Fnode_name;
end;

procedure TfmCtmNewWashing.SetNodeName(node_name: string);
begin
  cxRadioButton2.Checked := True;
  Fnode_name := node_name;
  cxLabel2.Caption := Fnode_cod + ' ' + Fnode_name;
end;

procedure TfmCtmNewWashing.SetNodeRoad(node_road: string);
begin
  cxRadioButton2.Checked := True;
  Fnode_road := node_road;
  cxLabel3.Caption := Fnode_road;
end;

procedure TfmCtmNewWashing.SetNodePPLand(node_ppland: string);
begin
  cxRadioButton2.Checked := True;
  Fnode_ppland := node_ppland;
  cxLabel4.Caption := Fnode_ppland;
end;


end.
