unit CtmNewBackRoute;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.Buttons, Vcl.ExtCtrls,
  dxSkinsCore, dxSkinBlack, dxSkinBlue, dxSkinBlueprint, dxSkinCaramel,
  dxSkinCoffee, dxSkinDarkRoom, dxSkinDarkSide, dxSkinDevExpressDarkStyle,
  dxSkinDevExpressStyle, dxSkinFoggy, dxSkinGlassOceans, dxSkinHighContrast,
  dxSkiniMaginary, dxSkinLilian, dxSkinLiquidSky, dxSkinLondonLiquidSky,
  dxSkinMcSkin, dxSkinMetropolis, dxSkinMetropolisDark, dxSkinMoneyTwins,
  dxSkinOffice2007Black, dxSkinOffice2007Blue, dxSkinOffice2007Green,
  dxSkinOffice2007Pink, dxSkinOffice2007Silver, dxSkinOffice2010Black,
  dxSkinOffice2010Blue, dxSkinOffice2010Silver, dxSkinOffice2013DarkGray,
  dxSkinOffice2013LightGray, dxSkinOffice2013White, dxSkinOffice2016Colorful,
  dxSkinOffice2016Dark, dxSkinPumpkin, dxSkinSeven, dxSkinSevenClassic,
  dxSkinSharp, dxSkinSharpPlus, dxSkinSilver, dxSkinSpringTime, dxSkinStardust,
  dxSkinSummer2008, dxSkinTheAsphaltWorld, dxSkinsDefaultPainters,
  dxSkinValentine, dxSkinVisualStudio2013Blue, dxSkinVisualStudio2013Dark,
  dxSkinVisualStudio2013Light, dxSkinVS2010, dxSkinWhiteprint,
  dxSkinXmas2008Blue, cxGraphics, cxControls, cxLookAndFeels,
  cxLookAndFeelPainters, cxContainer, cxEdit, cxLabel, cxRadioGroup, Data.DB,
  Data.Win.ADODB, Default, cxClasses, cxPropertiesStore;

type
  TfmCtmNewBackRoute = class(TForm)
    Panel1: TPanel;
    BitBtn_Ok: TBitBtn;
    BitBtn_Cancel: TBitBtn;
    Panel2: TPanel;
    cxRadioButton1: TcxRadioButton;
    cxRadioButton2: TcxRadioButton;
    cxRadioButton3: TcxRadioButton;
    cxLabel1: TcxLabel;
    cxLabel2: TcxLabel;
    cxLabel6: TcxLabel;
    cxLabel4: TcxLabel;
    cxLabel5: TcxLabel;
    cxPropertiesStore1: TcxPropertiesStore;
    procedure cxLabel2Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure BitBtn_OkClick(Sender: TObject);
    procedure cxRadioButton1Click(Sender: TObject);
  private
    Fusr_pwd      : PUser_pwd;
    Fdate_from_to : TDateTime;
    FQueryStation : TADOQuery;

    Freturn_type : integer;
    Fnode_cod    : string;
    Fnode_name   : string;
    Fnode_land_id   : integer;
    Fnode_land_name : string;

    procedure SetNodeCod(node_cod: string);
    procedure SetNodeName(node_name: string);
    procedure SetNodeLandId(node_land_id: integer);
    procedure SetNodeLandName(node_land_name: string);

    procedure SetReturnType(return_type: integer);

    procedure SetQueryStation(query_station: TADOQuery);
  public
    constructor Create(AOwner: TApplication; usr_pwd: PUser_pwd; date_from_to: TDateTime); reintroduce;
  published
    property _SetQueryStation : TADOQuery write SetQueryStation;

    property _SetReturnType   : integer write SetReturnType;
    property _GetReturnType   : integer read Freturn_type;

    property _SetNodeCod      : string  write SetNodeCod;
    property _SetNodeName     : string  write SetNodeName;
    property _SetNodeLandId   : integer write SetNodeLandId;
    property _SetNodeLandName : string  write SetNodeLandName;

    property _GetNodeCod      : string read Fnode_cod;
    property _GetNodeName     : string read Fnode_name;
    property _GetNodeLandId   : integer read Fnode_land_id;
    property _GetNodeLandName   : string read Fnode_land_name;

  end;

var
  fmCtmNewBackRoute: TfmCtmNewBackRoute;

implementation

{$R *.dfm}

uses CtmNewNode;

constructor TfmCtmNewBackRoute.Create(AOwner: TApplication; usr_pwd: PUser_pwd; date_from_to: TDateTime);
begin
  Screen.Cursor := crHourglass;
  inherited Create(AOwner);
  Fusr_pwd := usr_pwd;
  Fdate_from_to := date_from_to;

  Freturn_type := 0;
  Fnode_cod    := '';
  Fnode_name   := '';
  Fnode_land_id   := -9;
  Fnode_land_name := '';

  FQueryStation := nil;

  Screen.Cursor := crDefault;
end;

procedure TfmCtmNewBackRoute.cxLabel2Click(Sender: TObject);
begin
  fmCtmNewNode := TfmCtmNewNode.Create(Application, Fusr_pwd, Fdate_from_to);
  fmCtmNewNode._SetQueryStation := FQueryStation;
  if (Fnode_cod <> '') AND (FQueryStation.Active = True) then
    fmCtmNewNode._SetNodeCod := Fnode_cod;

  if fmCtmNewNode.ShowModal = mrOk then begin
    Fnode_cod      := fmCtmNewNode._GetNodeCod;
    Fnode_name     := fmCtmNewNode._GetNodeName;
    Fnode_land_id  := fmCtmNewNode._GetPPLand;
    Fnode_land_name:= fmCtmNewNode._GetLandName;

    cxLabel2.Caption := Fnode_cod + ' ' + Fnode_name;
    cxLabel5.Caption := Fnode_land_name;
  end;
end;

procedure TfmCtmNewBackRoute.SetReturnType(return_type: integer);
begin
  if return_type = 0 then cxRadioButton1.Checked := True;
  if return_type = 1 then cxRadioButton2.Checked := True;
  if return_type = 2 then cxRadioButton3.Checked := True;
end;

procedure TfmCtmNewBackRoute.cxRadioButton1Click(Sender: TObject);
begin
  if cxRadioButton3.Checked then begin
    cxLabel6.Enabled := True;
    cxLabel2.Enabled := True;
    cxLabel4.Enabled := True;
    cxLabel5.Enabled := True;
  end else begin
    cxLabel6.Enabled := False;
    cxLabel2.Enabled := False;
    cxLabel4.Enabled := False;
    cxLabel5.Enabled := False;
  end;
end;

procedure TfmCtmNewBackRoute.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action := caFree;
end;

procedure TfmCtmNewBackRoute.BitBtn_OkClick(Sender: TObject);
begin
  if cxRadioButton1.Checked then begin
    Freturn_type    := 0;
    Fnode_cod       := '';
    Fnode_name      := '';
    Fnode_land_id   := -9;
    Fnode_land_name := '';
  end;

  if cxRadioButton2.Checked then begin
    Freturn_type    := 1;
    Fnode_cod       := '';
    Fnode_name      := '';
    Fnode_land_id   := -9;
    Fnode_land_name := '';
  end;

  if cxRadioButton3.Checked then begin
    Freturn_type    := 2;
  end;
end;

procedure TfmCtmNewBackRoute.SetQueryStation(query_station: TADOQuery);
begin
  if query_station <> nil then begin
    FQueryStation := query_station;
  end;
end;

procedure TfmCtmNewBackRoute.SetNodeCod(node_cod: string);
begin
  Fnode_cod := node_cod;
  cxLabel2.Caption := Fnode_cod + ' ' + Fnode_name;
end;

procedure TfmCtmNewBackRoute.SetNodeName(node_name: string);
begin
  Fnode_name := node_name;
  cxLabel2.Caption := Fnode_cod + ' ' + Fnode_name;
end;

procedure TfmCtmNewBackRoute.SetNodeLandId(node_land_id: integer);
begin
  Fnode_land_id := node_land_id;
end;

procedure TfmCtmNewBackRoute.SetNodeLandName(node_land_name: string);
begin
  Fnode_land_name := node_land_name;
  cxLabel5.Caption := Fnode_land_name;
end;

end.
