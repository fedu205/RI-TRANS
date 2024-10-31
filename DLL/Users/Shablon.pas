unit Shablon;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Default, Db, ADODB, StdCtrls, ExtCtrls, Buttons, contnrs, StrUtils,
  cxGraphics, cxControls, cxContainer, cxEdit, cxTextEdit, cxMaskEdit,
  cxDropDownEdit, cxLookAndFeels, cxLookAndFeelPainters, dxSkinsCore, dxSkinBlack, dxSkinBlue, dxSkinBlueprint, dxSkinCaramel, dxSkinCoffee, dxSkinDarkRoom, dxSkinDarkSide, dxSkinDevExpressDarkStyle, dxSkinDevExpressStyle, dxSkinFoggy, dxSkinGlassOceans, dxSkinHighContrast, dxSkiniMaginary, dxSkinLilian, dxSkinLiquidSky, dxSkinLondonLiquidSky, dxSkinMcSkin, dxSkinMetropolis, dxSkinMetropolisDark, dxSkinMoneyTwins, dxSkinOffice2007Black, dxSkinOffice2007Blue, dxSkinOffice2007Green, dxSkinOffice2007Pink, dxSkinOffice2007Silver, dxSkinOffice2010Black, dxSkinOffice2010Blue, dxSkinOffice2010Silver, dxSkinOffice2013DarkGray, dxSkinOffice2013LightGray, dxSkinOffice2013White, dxSkinOffice2016Colorful, dxSkinOffice2016Dark, dxSkinPumpkin, dxSkinSeven, dxSkinSevenClassic, dxSkinSharp, dxSkinSharpPlus, dxSkinSilver, dxSkinSpringTime, dxSkinStardust, dxSkinSummer2008, dxSkinTheAsphaltWorld, dxSkinsDefaultPainters, dxSkinValentine, dxSkinVisualStudio2013Blue, dxSkinVisualStudio2013Dark,
  dxSkinVisualStudio2013Light, dxSkinVS2010, dxSkinWhiteprint, dxSkinXmas2008Blue;

type
  TfmShablon = class(TForm)
    BitBtn1: TBitBtn;
    Panel1: TPanel;
    GroupBox1: TGroupBox;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    Label9: TLabel;
    Label10: TLabel;
    Label2: TLabel;
    Label11: TLabel;
    Label12: TLabel;
    Shape1: TShape;
    Query_Shablon: TADOQuery;
    Query1: TADOQuery;
    Panel2: TPanel;
    Label1: TLabel;
    Edit1: TEdit;
    Panel4: TPanel;
    SpeedButton3: TSpeedButton;
    SpeedButton7: TSpeedButton;
    SpeedButton8: TSpeedButton;
    SpeedButton9: TSpeedButton;
    Panel5: TPanel;
    SpeedButton4: TSpeedButton;
    SpeedButton6: TSpeedButton;
    SpeedButton5: TSpeedButton;
    ADOShablon: TADOConnection;
    SpeedButton10: TSpeedButton;
    SpeedButton1: TSpeedButton;
    cxComboBox1: TcxComboBox;
    Label13: TLabel;
    Panel3: TPanel;
    SpeedButton2: TSpeedButton;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure SpeedButton10Click(Sender: TObject);
    procedure SpeedButton4Click(Sender: TObject);
    procedure SpeedButton6Click(Sender: TObject);
    procedure SpeedButton5Click(Sender: TObject);
    procedure Edit1Change(Sender: TObject);
  private
    { Private declarations }
    Fflag_change : boolean;
    Fshablon_type: byte;
    FSL          : TStringList;
    Ffirm_id     : integer;
    str_firm_id  : string;
    function CheckSyntax(str : string):boolean;
  public
    constructor Create(App:TApplication;ttag,firm_id:integer;usr_pwd:PUser_pwd);
  end;

function CreateWndShablon(AppHand:THandle;ttag,firm_id:integer;usr_pwd:PUser_pwd):integer; export;

var
  fmShablon: TfmShablon;

implementation
   uses Raznoe;
{$R *.DFM}

function CreateWndShablon(AppHand:THandle;ttag,firm_id:integer;usr_pwd:PUser_pwd) : integer;
begin
  Application.Handle := AppHand;
  try
    fmShablon := TfmShablon.Create(Application,ttag,firm_id,usr_pwd);
    result := fmShablon.ShowModal;
  finally
    fmShablon.Free;
  end;
end;

constructor TfmShablon.Create(App:TApplication;ttag,firm_id:integer;usr_pwd:PUser_pwd);
begin
  inherited Create(App);
  Screen.Cursor := -11;

  Fflag_change := False;
  Ffirm_id := firm_id;
  Fshablon_type := ttag;

  FSL := TStringList.Create;
  ADOShablon.Connected := False;
  ADOShablon.ConnectionString := 'Persist Security Info=True;Provider=SQLOLEDB.1;User ID='+usr_pwd^.user_name+';Password='+usr_pwd^.user_pass+';Initial Catalog='+usr_pwd^.catalog+';Data Source='+usr_pwd^.server+';';
  ADOShablon.Connected := True;
  if firm_id<>-9 then begin

  end else begin
    TSpeedButton(FindComponent('SpeedButton'+IntToStr(ttag))).Down := True;
    Panel4.Visible := False;
    Panel1.Height := Panel1.Height - 50;
    Height := Height - 50;
    Caption := 'Шаблоны для справочной информации';
  end;
  Query_Shablon.Parameters.ParamByName('firm_id').Value := firm_id;
  Query_Shablon.Parameters.ParamByName('shablon_type').Value := ttag;
  Query_Shablon.Open;
  cxComboBox1.ItemIndex := Query_Shablon.FieldByName('shablon_num_period').AsInteger;
  Edit1.Text := Query_Shablon.FieldByName('shablon_str').AsString;

  Screen.Cursor := 0;
end;

function TfmShablon.CheckSyntax(str : string):boolean;
var str_word  : string;
   i     : integer;
   brace : integer;
begin
  str := Edit1.Text;
  brace := 0;
  FSL.Add('Сотр.');
  FSL.Add('№');
  FSL.Add('Год');
  FSL.Add('Месяц');
  for i:=1 to Length(str) do
    case str[i] of
     '{' : begin
           inc(brace);
           str_word := '';
           end;
     '}' : if brace>0 then begin
             dec(brace);
             if Pos('№', str_word) <> 0 then begin
               if DupeString('№', Length(str_word)) = str_word then str_word := '№'
             end;
             if FSL.IndexOf(str_word)=-1 then begin
                result := False;
                exit;
             end;
           end else begin
           result := False;
           exit;
           end;
     else
       str_word := str_word + str[i];
    end;

  if brace=0 then result := True
  else result := False;
end;

procedure TfmShablon.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action := caFree;
end;

procedure TfmShablon.SpeedButton10Click(Sender: TObject);
begin
  Query_Shablon.Close;
  Query_Shablon.Parameters.ParamByName('shablon_type').Value := TComponent(Sender).Tag;
  Query_Shablon.Open;
  Edit1.Text := Query_Shablon.FieldByName('shablon_str').AsString;
  cxComboBox1.ItemIndex := Query_Shablon.FieldByName('shablon_num_period').AsInteger;
  Label13.Caption := 'Нумерация ' + TSpeedButton(Sender).Caption + '.............................';
  Fshablon_type := TComponent(Sender).Tag;
end;

procedure TfmShablon.SpeedButton4Click(Sender: TObject);
begin
  if CheckSyntax(Edit1.Text) then Application.MessageBox('Синтаксис шаблона правильный', 'Вниамние', 64)
  else Application.MessageBox('Синтаксис шаблона неправильный', 'Внимание!', MB_OK+MB_ICONSTOP);
end;

procedure TfmShablon.SpeedButton6Click(Sender: TObject);
var cnt : byte;
begin
  if Edit1.Text='' then begin
    Query1.Close;
    Query1.SQL.Clear;
    Query1.SQL.Add('DELETE shablon WHERE shablon_type='+IntToStr(Fshablon_type)+' and firm_id='+IntToStr(Ffirm_id));
    Query1.ExecSQL;
  end else
  if CheckSyntax(Edit1.Text) then begin
    Query1.Close;
    Query1.SQL.Clear;
    Query1.SQL.Add('SELECT count(*) as cnt FROM shablon WHERE shablon_type='+IntToStr(Fshablon_type)+' and firm_id='+IntToStr(Ffirm_id));
    Query1.Open;
    cnt := Query1['cnt'];
    Query1.Close;
    Query1.SQL.Clear;
    if cnt=0 then Query1.SQL.Add('INSERT shablon(firm_id, shablon_type, shablon_str, shablon_num_period) VALUES(:firm_id, :shablon_type, :shablon_str, :shablon_num_period)')
    else Query1.SQL.Add('UPDATE shablon SET shablon_str=:shablon_str, shablon_num_period =:shablon_num_period WHERE shablon_type=:shablon_type and firm_id=:firm_id');
    Query1.Parameters.ParamByName('firm_id'           ).Value := Ffirm_id;
    Query1.Parameters.ParamByName('shablon_type'      ).Value := Fshablon_type;
    Query1.Parameters.ParamByName('shablon_str'       ).Value := Edit1.Text;
    Query1.Parameters.ParamByName('shablon_num_period').Value := cxComboBox1.ItemIndex;
    Query1.ExecSQL;
  end else Application.MessageBox('Синтаксис шаблона неправильный','ОЙ!!!',MB_OK+MB_ICONSTOP);
end;

procedure TfmShablon.SpeedButton5Click(Sender: TObject);
begin
  Close;
end;

procedure TfmShablon.Edit1Change(Sender: TObject);
begin
  if not Fflag_change then Fflag_change := True;
end;

end.
