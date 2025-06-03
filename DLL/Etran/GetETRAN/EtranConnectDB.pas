unit EtranConnectDB;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, cxControls, cxContainer, cxEdit, cxTextEdit, StdCtrls, ExtCtrls,
  Menus, cxLookAndFeelPainters, cxButtons, ADODB, DB, Buttons, cxGraphics,
  cxLookAndFeels, dxSkinsCore, dxSkinBlack, dxSkinBlue, dxSkinBlueprint,
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
  dxSkinValentine, dxSkinVS2010, dxSkinWhiteprint, dxSkinXmas2008Blue, dxSkinOffice2016Colorful, dxSkinOffice2016Dark, dxSkinTheBezier, dxSkinVisualStudio2013Blue, dxSkinVisualStudio2013Dark,
  dxSkinVisualStudio2013Light, dxSkinBasic, dxSkinOffice2019Black,
  dxSkinOffice2019Colorful, dxSkinOffice2019DarkGray, dxSkinOffice2019White,
  dxSkinWXI;

type
  TfmEtranConnectDB = class(TForm)
    Panel1: TPanel;
    Panel2: TPanel;
    Label4: TLabel;
    Label6: TLabel;
    cxTextEdit2: TcxTextEdit;
    cxTextEdit1: TcxTextEdit;
    cxTextEdit3: TcxTextEdit;
    cxTextEdit4: TcxTextEdit;
    Label8: TLabel;
    Label7: TLabel;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    procedure BitBtn1Click(Sender: TObject);
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    Fconnect_string : string;
    Fset_db_connect : boolean;
  public
    constructor Create(AOwner: TApplication);
  published
    property _connect_string: string  read Fconnect_string;
    property _set_db_connect: boolean read Fset_db_connect;
  end;

var
  fmEtranConnectDB: TfmEtranConnectDB;

implementation

uses EtrUtils;

{$R *.dfm}

procedure TfmEtranConnectDB.BitBtn1Click(Sender: TObject);
var
  ADOConnect : TADOConnection;
begin
  Fconnect_string := 'Persist Security Info=True;Provider=SQLOLEDB.1;User ID=' + cxTextEdit1.Text + ';Password=' + cxTextEdit2.Text + ';Initial Catalog=' + cxTextEdit4.Text + ';Data Source=' + cxTextEdit3.Text + ';';
  Fset_db_connect := True;


  ADOConnect := TADOConnection.Create(self);
  ADOConnect.ConnectionString := Fconnect_string;
  ADOConnect.LoginPrompt      := False;
  ADOConnect.KeepConnection   := False;

  try
    ADOConnect.Open;
  except
    Application.MessageBox('Не удалось подключиться к Базе Данных!', 'Внимание', MB_ICONSTOP or MB_OK);
    Fconnect_string := '';
    Fset_db_connect := False;
  end;
end;

constructor TfmEtranConnectDB.Create(AOwner:TApplication);
begin
  inherited Create(AOwner);
  Screen.Cursor := crHourglass;

  Fconnect_string := '';
  Fset_db_connect := False;

  cxTextEdit1.Text := StoreRegistryString(rgLoad, 'fmEtranConnectDB', 'Login');
//  cxTextEdit2.Text := StoreRegistryString(rgLoad, 'fmEtranConnectDB', 'Password');
  cxTextEdit3.Text := StoreRegistryString(rgLoad, 'fmEtranConnectDB', 'Server');
  cxTextEdit4.Text := StoreRegistryString(rgLoad, 'fmEtranConnectDB', 'DBName');
  Screen.Cursor := crDefault;
end;

procedure TfmEtranConnectDB.FormClose(Sender: TObject;var Action: TCloseAction);
begin
  Action := caFree;
end;

procedure TfmEtranConnectDB.FormCloseQuery(Sender: TObject;var CanClose: Boolean);
begin
  StoreRegistryString(rgSave, 'fmEtranConnectDB', 'Login'   , cxTextEdit1.Text);
//  StoreRegistryString(rgSave, 'fmEtranConnectDB', 'Password', cxTextEdit2.Text);
  StoreRegistryString(rgSave, 'fmEtranConnectDB', 'Server'  , cxTextEdit3.Text);
  StoreRegistryString(rgSave, 'fmEtranConnectDB', 'DBName'  , cxTextEdit4.Text);
end;

end.
