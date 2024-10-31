unit EtrConnectAdd;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters,
  cxContainer, cxEdit, StdCtrls, Buttons, cxDropDownEdit, cxCalendar,
  cxMaskEdit, cxLookupEdit, cxDBLookupEdit, cxDBLookupComboBox, cxTextEdit,
  cxLabel, ExtCtrls, DB, ADODB, Raznoe, cxPropertiesStore, dxSkinsCore,
  dxSkinBlack, dxSkinBlue, dxSkinBlueprint, dxSkinCaramel, dxSkinCoffee,
  dxSkinDarkRoom, dxSkinDarkSide, dxSkinDevExpressDarkStyle,
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
  dxSkinXmas2008Blue, Vcl.ComCtrls, dxCore, cxDateUtils, cxClasses, dxSkinTheBezier;

type
  TfmEtrConnectAdd = class(TForm)
    Panel1: TPanel;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    cxLabel1: TcxLabel;
    cxLabel2: TcxLabel;
    cxLabel3: TcxLabel;
    cxLabel6: TcxLabel;
    cxLabel4: TcxLabel;
    cxTextEdit1: TcxTextEdit;
    cxTextEdit2: TcxTextEdit;
    cxTextEdit3: TcxTextEdit;
    cxTextEdit5: TcxTextEdit;
    cxTextEdit6: TcxTextEdit;
    cxLabel5: TcxLabel;
    cxTextEdit4: TcxTextEdit;
    cxLabel7: TcxLabel;
    cxTextEdit7: TcxTextEdit;
    cxLabel8: TcxLabel;
    cxTextEdit8: TcxTextEdit;
    cxLabel9: TcxLabel;
    cxLabel10: TcxLabel;
    cxTextEdit10: TcxTextEdit;
    cxLabel11: TcxLabel;
    cxLookupComboBox1: TcxLookupComboBox;
    cxDateEdit1: TcxDateEdit;
    Panel2: TPanel;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    DS_DocType: TDataSource;
    Q_DocType: TADOQuery;
    cxPropertiesStore1: TcxPropertiesStore;
    procedure BitBtn1Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    Fconnect_id : integer;
  public
    constructor Create(AOwner : TApplication);
    procedure   SetUpdate(connect_id: integer);
    procedure   SetCopy(connect_id: integer);
  published
    property  _SetUpdate    : integer   write SetUpdate;
    property  _SetCopy    : integer   write SetCopy;
  end;

var
  fmEtrConnectAdd: TfmEtrConnectAdd;

function PasswordFromCode(code: AnsiString): AnsiString;
function PasswordToCode(password: AnsiString): AnsiString;

implementation

uses EtrMonitor;

{$R *.dfm}

function PasswordToCode(password:AnsiString):AnsiString;
var
  code: AnsiString;
  i   : integer;
begin
  Randomize;

  code := '';
  for i := Length(password) downto 1 do begin
    code := code + AnsiChar(Chr(90+Random(100))) + password[i];
  end;

  for i := 1 to Length(code) do begin
    code[i] := AnsiChar(Chr(Ord((code[i]))+i));
  end;

  Result := code;
end;

function PasswordFromCode(code:AnsiString):AnsiString;
var password:AnsiString;
    i : integer;
begin
  password := '';
  for i := Length(code) downto 1 do begin
    if i mod 2 = 0 then password := password + AnsiChar(Chr(Ord(code[i])-i));
  end;
  Result := password;
end;

constructor TfmEtrConnectAdd.Create(AOwner : TApplication);
begin
  Screen.Cursor := crHourglass;
  inherited Create(AOwner);
  Q_DocType.Open;
  Fconnect_id  := -9;
  cxDateEdit1.Date := Now;
  Screen.Cursor := crDefault;
end;

procedure TfmEtrConnectAdd.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action := caFree;
end;

procedure TfmEtrConnectAdd.SetUpdate(connect_id: integer);
var Query : TADOQuery;
begin
  Fconnect_id  := connect_id;

  Query := TADOQuery.Create(Application);
  Query.Connection := fmEtrMonitor.LisEtran_Connect;
  Query.SQL.Add('SELECT * FROM view_connect WHERE connect_id = '+IntToStr(Fconnect_id));
  Query.Open;

  cxTextEdit1.Text  := Query.FieldByName('connect_name'  ).AsString;
  cxTextEdit2.Text  := Query.FieldByName('etran_login'   ).AsString;
  cxTextEdit3.Text  := PasswordFromCode(Query.FieldByName('etran_password').AsAnsiString);
  cxTextEdit4.Text  := Query.FieldByName('etran_ip'  ).AsString;
  cxTextEdit5.Text  := Query.FieldByName('db_server' ).AsString;
  cxTextEdit6.Text  := Query.FieldByName('db_name'   ).AsString;
  cxTextEdit7.Text  := Query.FieldByName('users_name' ).AsString;
  cxTextEdit8.Text  := PasswordFromCode(Query.FieldByName('db_password').AsAnsiString);
  cxDateEdit1.Date  := Query.FieldByName('read_first_date').AsDateTime;
  cxTextEdit10.Text := Query.FieldByName('read_interval' ).AsString;
  cxLookupComboBox1.EditValue := Query.FieldByName('read_doc_type_id').AsInteger;

  Query.Free;
end;

procedure TfmEtrConnectAdd.SetCopy(connect_id: integer);
var Query : TADOQuery;
begin
  Query := TADOQuery.Create(Application);
  Query.Connection := fmEtrMonitor.LisEtran_Connect;
  Query.SQL.Add('SELECT * FROM view_connect WHERE connect_id = '+IntToStr(connect_id));
  Query.Open;

  cxTextEdit1.Text  := Query.FieldByName('connect_name'  ).AsString;
  cxTextEdit2.Text  := Query.FieldByName('etran_login'   ).AsString;
  cxTextEdit3.Text  := PasswordFromCode(Query.FieldByName('etran_password').AsAnsiString);
  cxTextEdit4.Text  := Query.FieldByName('etran_ip'  ).AsString;
  cxTextEdit5.Text  := Query.FieldByName('db_server' ).AsString;
  cxTextEdit6.Text  := Query.FieldByName('db_name'   ).AsString;
  cxTextEdit7.Text  := Query.FieldByName('users_name' ).AsString;
  cxTextEdit8.Text  := PasswordFromCode(Query.FieldByName('db_password').AsAnsiString);
  cxDateEdit1.Date  := Query.FieldByName('read_first_date').AsDateTime;
  cxTextEdit10.Text := Query.FieldByName('read_interval' ).AsString;
  cxLookupComboBox1.EditValue := Query.FieldByName('read_doc_type_id').AsInteger;

  Query.Free;
end;



procedure TfmEtrConnectAdd.BitBtn1Click(Sender: TObject);
var
  SP_connect_modify : TADOStoredProc;
begin
  SP_connect_modify := TADOStoredProc.Create(Application);
  SP_connect_modify.Connection    := fmEtrMonitor.LisEtran_Connect;
  SP_connect_modify.ProcedureName := 'sp_connect_new_modify;1';
  SP_connect_modify.Parameters.Refresh;
  SP_connect_modify.Parameters.ParamByName('@type_action'     ).Value := iif(Fconnect_id = -9, 0, 1);
  SP_connect_modify.Parameters.ParamByName('@connect_id'      ).Value := Fconnect_id;
  SP_connect_modify.Parameters.ParamByName('@connect_name'    ).Value := cxTextEdit1.Text;
  SP_connect_modify.Parameters.ParamByName('@etran_login'     ).Value := cxTextEdit2.Text;
  SP_connect_modify.Parameters.ParamByName('@etran_password'  ).Value := string(PasswordToCode(cxTextEdit3.Text));
  SP_connect_modify.Parameters.ParamByName('@etran_ip'        ).Value := cxTextEdit4.Text;
  SP_connect_modify.Parameters.ParamByName('@db_server'       ).Value := cxTextEdit5.Text;
  SP_connect_modify.Parameters.ParamByName('@db_name'         ).Value := cxTextEdit6.Text;
  SP_connect_modify.Parameters.ParamByName('@db_login'        ).Value := cxTextEdit7.Text;
  SP_connect_modify.Parameters.ParamByName('@db_password'     ).Value := string(PasswordToCode(cxTextEdit8.Text));
  SP_connect_modify.Parameters.ParamByName('@read_first_date' ).Value := cxDateEdit1.Date;
  SP_connect_modify.Parameters.ParamByName('@read_interval'   ).Value := StrToIntDef(cxTextEdit10.Text,0);
  SP_connect_modify.Parameters.ParamByName('@read_doc_type_id').Value := cxLookupComboBox1.EditValue;
  SP_connect_modify.ExecProc;
  Fconnect_id := SP_connect_modify.Parameters.ParamByName('@connect_id').Value;

  SP_connect_modify.Free;
end;

end.
