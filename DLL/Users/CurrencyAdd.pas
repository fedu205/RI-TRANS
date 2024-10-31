unit CurrencyAdd;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, Db, ADODB, ExtCtrls, Mask, ComCtrls, Menus, Variants,
  cxControls, cxContainer, cxEdit, cxTextEdit, cxMaskEdit,
  cxDropDownEdit, cxCalendar, cxButtonEdit, cxGraphics, cxPropertiesStore,
  cxLookAndFeels, cxLookAndFeelPainters, cxCurrencyEdit, dxCore, cxDateUtils, cxClasses, dxSkinsCore, dxSkinBlack, dxSkinBlue, dxSkinBlueprint,
  dxSkinCaramel, dxSkinCoffee, dxSkinDarkRoom, dxSkinDarkSide, dxSkinDevExpressDarkStyle, dxSkinDevExpressStyle, dxSkinFoggy, dxSkinGlassOceans,
  dxSkinHighContrast, dxSkiniMaginary, dxSkinLilian, dxSkinLiquidSky, dxSkinLondonLiquidSky, dxSkinMcSkin, dxSkinMetropolis, dxSkinMetropolisDark,
  dxSkinMoneyTwins, dxSkinOffice2007Black, dxSkinOffice2007Blue, dxSkinOffice2007Green, dxSkinOffice2007Pink, dxSkinOffice2007Silver,
  dxSkinOffice2010Black, dxSkinOffice2010Blue, dxSkinOffice2010Silver, dxSkinOffice2013DarkGray, dxSkinOffice2013LightGray, dxSkinOffice2013White,
  dxSkinPumpkin, dxSkinSeven, dxSkinSevenClassic, dxSkinSharp, dxSkinSharpPlus, dxSkinSilver, dxSkinSpringTime, dxSkinStardust, dxSkinSummer2008,
  dxSkinTheAsphaltWorld, dxSkinsDefaultPainters, dxSkinValentine, dxSkinVS2010, dxSkinWhiteprint, dxSkinXmas2008Blue,
  dxSkinOffice2016Colorful, dxSkinOffice2016Dark, dxSkinVisualStudio2013Blue,
  dxSkinVisualStudio2013Dark, dxSkinVisualStudio2013Light, dxSkinTheBezier, dxSkinOffice2019Colorful, cxButtons;

type
  TfmCurrencyAdd = class(TForm)
    Panel2: TPanel;
    Label4: TLabel;
    Panel3: TPanel;
    Label3: TLabel;
    Panel4: TPanel;
    Label1: TLabel;
    cxDateEdit1: TcxDateEdit;
    cxComboBox1: TcxComboBox;
    cxComboBox2: TcxComboBox;
    cxPropertiesStore1: TcxPropertiesStore;
    Panel1: TPanel;
    Label2: TLabel;
    cxDateEdit2: TcxDateEdit;
    Label6: TLabel;
    cxDateEdit3: TcxDateEdit;
    Panel5: TPanel;
    cxButtonEdit1: TcxButtonEdit;
    cxButton1: TcxButton;
    cxButton3: TcxButton;
    procedure cxButtonEdit1PropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure cxButton1Click(Sender: TObject);
  private
    Ftype_action : integer;
    Fexchange_id, Fflag, Fcurrency_id : integer;
    Fbrief_name : string;

    procedure SetExchange(exchange_id : integer);
    function  SetStoredProc(exchange_date : TDate; set_exchange_day : Boolean; currency_id : integer; exchange_val_RUB : Double) : integer;
  public
    constructor Create(AOwner: TApplication; type_action, flag : integer; currency_id : integer);
  published
    property _SetExchange:integer write SetExchange;
    property _GetExchangeId : integer read Fexchange_id;
  end;

var
  fmCurrencyAdd: TfmCurrencyAdd;

implementation
      uses Raznoe, Other, Currency;
{$R *.DFM}

constructor TfmCurrencyAdd.Create(AOwner : TApplication; type_action, flag : integer; currency_id : integer);
var Q : TADOQuery;
begin
  inherited Create(AOwner);
  Ftype_action := type_action;
  Fcurrency_id := currency_id;
  Fflag        := flag;

  Q := TADOQuery.Create(nil);
  Q.Connection := fmCurrency.ADOCurrency;
  Q.SQL.Add('SELECT brief_name FROM currency WHERE currency_id = ' + IntToStr(Fcurrency_id));
  Q.Open;
  Fbrief_name := Q.FieldByName('brief_name').AsString;
  Caption     := 'Курс RUB к ' + Fbrief_name;

  cxButtonEdit1.Properties.Buttons[0].Visible := False;
  case Fflag of  // 0 - Курс на день, 1 - курс на месяц, 99 - курс на перид с..  по..
    0 : begin
          Height            := Height - Panel3.Height - Panel4.Height;
          Panel1.Visible    := True;
          Panel3.Visible    := False;
          Panel4.Visible    := False;
          Panel1.Align      := alClient;
          cxDateEdit2.Date    := Date;
          cxButtonEdit1.Properties.Buttons[0].Visible := True;
        end;
    1 : begin
          Panel4.Visible    := False;
          Panel3.Visible    := True;
          Panel1.Visible    := False;
          Height            := Height - Panel4.Height - Panel1.Height;
          Panel3.Align      := alClient;

          cxComboBox1.ItemIndex := StrToInt(FormatDateTime('m', Date)) - 1;
          cxComboBox2.ItemIndex := StrToInt(FormatDateTime('yyyy', Date)) - 2001;
        end;
    99: begin
          Caption           := 'Курс RUB к ' + Fbrief_name + ' за период';
          Panel1.Visible    := False;
          Panel2.Visible    := False;
          Panel3.Visible    := False;
          Panel4.Visible    := True;
          Height            := Height - Panel1.Height - Panel3.Height - Panel2.Height;
          Panel4.Align      := alClient;


          Q.SQL.Clear;
          Q.SQL.Add('SELECT max(exchange_date) as max_day FROM view_exchange_new WHERE currency_id= ' + IntToStr(currency_id) + ' AND set_exchange_day = 1');
          Q.Open;
          if Q.FieldByName('max_day').Value <> null then cxDateEdit1.Date := Q.FieldByName('max_day').AsDateTime + 1
          else cxDateEdit1.Date    := Date;
          cxDateEdit3.Date    := Date;
          Q.Free;
       end;
  end;

  SetUsersModuleRights(self, fmCurrency.ADOCurrency);

end;

procedure TfmCurrencyAdd.cxButton1Click(Sender: TObject);
var  x : real;
begin
  Screen.Cursor := crHourglass;

  if Ftype_action = 0 then begin // --------- insert --------------------------
    case Fflag of
      0  : Fexchange_id := SetStoredProc(cxDateEdit2.Date, True, Fcurrency_id, StrToFloat(cxButtonEdit1.Text)) ;
      1  : Fexchange_id := SetStoredProc(EncodeDate(cxComboBox2.ItemIndex+2001, cxComboBox1.ItemIndex+1, 1), False, Fcurrency_id, StrToFloat(cxButtonEdit1.Text));
      99 : begin
             while (cxDateEdit1.Date <= cxDateEdit3.Date) do begin
               ShowTextMessage('Осталось ' + IntToStr(Trunc(cxDateEdit3.Date) - Trunc(cxDateEdit1.Date)) + ' дней...', False);
               x := GetExchangeFromInet_SOAP(cxDateEdit1.Date, Fbrief_name);
               if x <> 0 then SetStoredProc(cxDateEdit1.Date, True, Fcurrency_id, x);
               cxDateEdit1.Date := cxDateEdit1.Date + 1;
             end;
               ShowTextMessage;
           end;
    end;
  end;

  if Ftype_action = 1 then begin   // --------- Update ---------------
    case Fflag of
      0 : Fexchange_id := SetStoredProc(cxDateEdit2.Date, True, Fcurrency_id, StrToFloat(cxButtonEdit1.Text));
      1 : Fexchange_id := SetStoredProc(EncodeDate(cxComboBox2.ItemIndex+2001, cxComboBox1.ItemIndex+1, 1), False, Fcurrency_id, StrToFloat(cxButtonEdit1.Text));
    end;
  end;

  Screen.Cursor := crDefault;
end;

procedure TfmCurrencyAdd.cxButtonEdit1PropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
var x : real;
begin
  x := GetExchangeFromInet_SOAP(cxDateEdit2.Date, Fbrief_name);

  if x <> 0 then
    cxButtonEdit1.Text := FormatFloat('0.0000', x)
  else
    cxButtonEdit1.Text := '0';

end;


procedure TfmCurrencyAdd.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action := caFree;
end;

procedure TfmCurrencyAdd.SetExchange(exchange_id : integer);
var Q : TADOQuery;
begin
  Q := TADOQuery.Create(nil);
  Q.Connection := fmCurrency.ADOCurrency;
  Q.Close;
  Q.SQL.Clear;
  Q.SQL.Add('SELECT * FROM view_exchange_new WHERE exchange_id = ' + IntToStr(exchange_id));
  Q.Open;
  Fexchange_id := exchange_id;
  cxDateEdit2.Enabled := False;
  cxComboBox1.Enabled := False; cxComboBox2.Enabled := False;
  Caption := caption + ' ('+fmCurrency.Query_Currency['brief_name']+')';
  case Fflag of
    0 : cxDateEdit2.Date := Q.FieldByName('exchange_date').AsDateTime;
    1 : begin
          cxComboBox1.ItemIndex := StrToInt(FormatDateTime('m', Q.FieldByName('exchange_date').AsDateTime))-1;
          cxComboBox2.ItemIndex := StrToInt(FormatDateTime('yyyy', Q.FieldByName('exchange_date').AsDateTime)) - 2001;
        end;
  end;
  cxButtonEdit1.Text := FormatFloat('0.0000', Q.FieldByName('exchange_val').AsCurrency);
  Q.Free;
end;


function TfmCurrencyAdd.SetStoredProc(exchange_date : TDate; set_exchange_day : Boolean; currency_id : integer; exchange_val_RUB : Double) : integer;
var  SP_ExchangeModify : TADOStoredProc;
begin
  Screen.Cursor := crHourglass;

  SP_ExchangeModify := TADOStoredProc.Create(Application);
  SP_ExchangeModify.Connection := fmCurrency.ADOCurrency;
  SP_ExchangeModify.ProcedureName := 'sp_exchange_new_modify;1';
  SP_ExchangeModify.Parameters.Refresh;

  SP_ExchangeModify.Parameters.ParamByName('@type_action'     ).Value := Ftype_action;
  SP_ExchangeModify.Parameters.ParamByName('@exchange_id'     ).Value := Fexchange_id;
  SP_ExchangeModify.Parameters.ParamByName('@currency_id'     ).Value := currency_id;
  SP_ExchangeModify.Parameters.ParamByName('@exchange_date'   ).Value := exchange_date;
  SP_ExchangeModify.Parameters.ParamByName('@set_exchange_day').Value := set_exchange_day;
  SP_ExchangeModify.Parameters.ParamByName('@exchange_val'    ).Value := exchange_val_RUB;
  SP_ExchangeModify.Parameters.ParamByName('@check_action'    ).Value := 1;

  try
    SP_ExchangeModify.ExecProc;
    result := SP_ExchangeModify.Parameters.ParamByName('@exchange_id').Value;
  except
    result := -9;
  end;

  SP_ExchangeModify.Free;
  Screen.Cursor := crDefault;
end;

end.
