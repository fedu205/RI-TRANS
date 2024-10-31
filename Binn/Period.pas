unit Period;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, ComCtrls, Buttons, ExtCtrls, cxGraphics, cxControls, cxLookAndFeels,
  cxLookAndFeelPainters, cxContainer, cxEdit, cxTextEdit, cxMaskEdit, cxDropDownEdit, cxCalendar,
  dxCore, cxDateUtils, dxSkinsCore, dxSkinBlack, dxSkinBlue, dxSkinBlueprint,
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
  dxSkinValentine, dxSkinVS2010, dxSkinWhiteprint, dxSkinXmas2008Blue, Menus, cxButtons, dxSkinOffice2016Colorful, dxSkinOffice2016Dark,
  dxSkinVisualStudio2013Blue, dxSkinVisualStudio2013Dark, dxSkinVisualStudio2013Light, dxSkinTheBezier, cxLabel, dxSkinOffice2019Colorful;

type
  TfmPeriod = class(TForm)
    Panel1: TPanel;
    Panel6: TPanel;
    Panel2: TPanel;
    Panel3: TPanel;
    Panel4: TPanel;
    Panel5: TPanel;
    cxDateEdit1: TcxDateEdit;
    cxDateEdit2: TcxDateEdit;
    cxLabel1: TcxLabel;
    cxLabel2: TcxLabel;
    cxComboBox5: TcxComboBox;
    cxComboBox2: TcxComboBox;
    cxComboBox3: TcxComboBox;
    cxComboBox4: TcxComboBox;
    cxLabel3: TcxLabel;
    cxLabel4: TcxLabel;
    cxComboBox6: TcxComboBox;
    cxComboBox7: TcxComboBox;
    cxLabel5: TcxLabel;
    cxComboBox1: TcxComboBox;
    cxLabel6: TcxLabel;
    cxButton8: TcxButton;
    cxButton9: TcxButton;
    cxButton3: TcxButton;
    cxButton5: TcxButton;
    cxButton4: TcxButton;
    cxButton6: TcxButton;
    cxButton1: TcxButton;
    cxButton2: TcxButton;
    Panel7: TPanel;
    cxLabel13: TcxLabel;
    cxDateEdit3: TcxDateEdit;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure cxButton8Click(Sender: TObject);
    procedure cxButton1Click(Sender: TObject);
    procedure cxButton2Click(Sender: TObject);
  private
    Fdate_begin, Fdate_end, Fmonth, Fmonth_begin, Fmonth_end : double;
    Fcurrency_id    : byte;
    Ftype_window : byte;
    procedure NextMonth(BoxMonth,BoxYear : TcxComboBox; stepNext : boolean);
    procedure SetCurrency(currency_id : byte);
    procedure SetCaption(set_caption: string);
    procedure SetMonthEnabled(set_enabled : boolean);
  public
    constructor Create(AOwner : TApplication;date_begin,date_end:double; type_window : byte);
    function GetStartMounth(CurDate:TDatetime):TDatetime;
    function GetEndMounth(CurDate:TDatetime):TDatetime;
    procedure SetPeriodDates(date_begin, date_end : TDateTime);
  published
    property _GetDateBegin : double read Fdate_begin;
    property _GetDateEnd : double read Fdate_end;
    property _GetMonth : double read Fmonth;
    property _GetMonthBegin : double read Fmonth_begin;
    property _GetMonthEnd : double read Fmonth_end;
    property _SetCurrency : byte write SetCurrency;
    property _GetCurrency : byte read Fcurrency_id;
    property _SetCaption : string write SetCaption;
    property _SetMonthEnabled : boolean write SetMonthEnabled;
  end;


var
  fmPeriod: TfmPeriod;

implementation
     uses DateUtils, Raznoe, Main;
{$R *.DFM}

constructor TfmPeriod.Create(AOwner : TApplication;date_begin,date_end:double; type_window : byte);
var i : integer;
begin
  inherited Create(AOwner);

  Caption := 'Период';
  Ftype_window := type_window;


//  if LisCheck('Provider=SQLOLEDB.1;Password=''$uperP@s$'';Persist Security Info=True;User ID=sa;Initial Catalog=depo;Data Source=172.16.30.205') then begin
    for i:=2001 to YearOf(Date) + 1 do begin
      cxComboBox3.Properties.Items.Insert(0, IntToStr(i));
      cxComboBox5.Properties.Items.Insert(0, IntToStr(i));
      cxComboBox7.Properties.Items.Insert(0, IntToStr(i));
    end;
//  end;


  case type_window of
    // --------  период дат ----
    1 : begin
          Panel3.Visible := False;
          Panel4.Visible := False;
          Panel5.Visible := False;
          Panel5.Enabled := False;
          Panel7.Visible := False;
          Panel2.Align := alClient;
          Height := Height - Panel3.Height - Panel4.Height - Panel5.Height - Panel7.Height;;
          cxDateEdit1.Date := date_begin;
          cxDateEdit2.Date := date_end;
        end;
    // -------- период месяцов --------
    2,4 : begin
          Panel2.Visible := False;
          Panel4.Visible := False;
          Panel5.Visible := False;
          Panel7.Visible := False;
          Panel3.Align := alClient;
          Height := Height - Panel2.Height - Panel4.Height - Panel5.Height - Panel7.Height;
          cxComboBox2.ItemIndex := StrToInt(FormatDateTime('m', date_begin)) - 1;
          cxComboBox3.ItemIndex := cxComboBox3.Properties.Items.IndexOf(FormatDateTime('yyyy', date_begin));
          cxComboBox4.ItemIndex := StrToInt(FormatDateTime('m', date_end)) - 1;
          cxComboBox5.ItemIndex := cxComboBox5.Properties.Items.IndexOf(FormatDateTime('yyyy', date_end));
        end;
    // --------- один месяц ----------
    3 : begin
          Panel3.Visible := False;
          Panel2.Visible := False;
          Panel5.Visible := False;
          Panel7.Visible := False;
          Panel4.Align := alClient;
          Height := Height - Panel2.Height - Panel3.Height - Panel5.Height - Panel7.Height;;
          Panel4.Align := alClient;
          cxComboBox6.ItemIndex := StrToInt(FormatDateTime('m', date_begin)) - 1;
          cxComboBox7.ItemIndex := cxComboBox7.Properties.Items.IndexOf(FormatDateTime('yyyy', date_begin));
        end;
    // 5 ----------- одна дата и валюта ------------
    // 6 ----------- одна дата-время и валюта------------
    // 7 ----------- одна дата  ------------
    // 8 ----------- одна дата-время ------------
    5..8 : begin
          Panel3.Visible := False;
          Panel2.Visible := False;
          Panel4.Visible := False;
          Panel5.Visible := False;

          Panel7.Align := alClient;
          Height := Height - Panel3.Height - Panel2.Height - Panel4.Height - Panel5.Height;
          if (type_window = 7) or (type_window = 8) then begin
            Panel5.Visible := False;
            Height := Height - Panel5.Height;
          end;
          cxDateEdit3.Date := date_begin;
          if (type_window = 6) or (type_window = 8) then begin
            cxDateEdit3.Properties.Kind := ckDateTime;
            cxDateEdit3.Properties.ShowTime := True;
          end;
        end;
  end;
end;

procedure TfmPeriod.NextMonth(BoxMonth,BoxYear : TcxComboBox; stepNext : boolean);
begin
  if stepNext then begin
    case BoxMonth.ItemIndex of
      0..10 : BoxMonth.ItemIndex := BoxMonth.ItemIndex + 1;
      11    : begin
              BoxMonth.ItemIndex := 0;
              BoxYear.ItemIndex := BoxYear.ItemIndex - 1;
              end;
    end;

  end else begin
    case BoxMonth.ItemIndex of
      1..11 : BoxMonth.ItemIndex := BoxMonth.ItemIndex - 1;
      0     : begin
              BoxMonth.ItemIndex := 11;
              BoxYear.ItemIndex := BoxYear.ItemIndex + 1;
              end;
    end;
  end;

end;

procedure TfmPeriod.cxButton1Click(Sender: TObject);
begin
  case Ftype_window of
    1 : begin
          Fdate_begin := StrToDate(FormatDateTime('dd'+ FormatSettings.DateSeparator +'mm'+ FormatSettings.DateSeparator +'yyyy', cxDateEdit1.Date));
          Fdate_end := StrToDate(FormatDateTime('dd'+ FormatSettings.DateSeparator +'mm'+ FormatSettings.DateSeparator +'yyyy', cxDateEdit2.Date));
        end;
    2,4 : begin
          Fmonth_begin := StrToDate('01' + FormatSettings.DateSeparator + IntToStr(cxComboBox2.ItemIndex + 1) + FormatSettings.DateSeparator + cxComboBox3.Text);
          Fmonth_end := IncMonth(StrToDate('01'+ FormatSettings.DateSeparator + IntToStr(cxComboBox4.ItemIndex + 1) + FormatSettings.DateSeparator + cxComboBox5.Text), 1) - 1;
        end;
    3 : begin
          Fmonth := StrToDate('01' + FormatSettings.DateSeparator + IntToStr(cxComboBox6.ItemIndex + 1) + FormatSettings.DateSeparator + cxComboBox7.Text);
        end;
    5..8 : begin
          Fdate_begin := cxDateEdit3.Date;
          Fdate_end := cxDateEdit3.Date;
        end;
  end;

  case cxComboBox1.ItemIndex of
    0 : Fcurrency_id := 1;  // USD
    1 : Fcurrency_id := 3;  // RUB
    2 : Fcurrency_id := 6;  // EUR
    3 : Fcurrency_id := 5;
  end;
end;

procedure TfmPeriod.cxButton2Click(Sender: TObject);
begin
  Close;
end;

procedure TfmPeriod.cxButton8Click(Sender: TObject);
begin
  case TcxButton(Sender).Tag of
    1 : NextMonth(cxComboBox6, cxComboBox7, True);
    2 : NextMonth(cxComboBox6, cxComboBox7, False);
    3 : NextMonth(cxComboBox4, cxComboBox5, True);
    4 : NextMonth(cxComboBox4, cxComboBox5, False);
    5 : NextMonth(cxComboBox2, cxComboBox3, True);
    6 : NextMonth(cxComboBox2, cxComboBox3, False);
  end;
end;

procedure TfmPeriod.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action := caFree;
end;

procedure TfmPeriod.SetCurrency(currency_id : byte);
begin
  cxComboBox1.ItemIndex := 0;
  if not Panel5.Visible then Height := Height + 40;
  Panel5.Visible := true;
  case currency_id of
    1: cxComboBox1.ItemIndex := 0;
    3: cxComboBox1.ItemIndex := 1;
    6: cxComboBox1.ItemIndex := 2;
    5: cxComboBox1.ItemIndex := 3;
    else cxComboBox1.ItemIndex := -1;
  end;
end;

procedure TfmPeriod.SetCaption(set_caption: string);
begin
  Caption := set_caption;
end;

procedure TfmPeriod.SetMonthEnabled(set_enabled : boolean);
begin
  cxComboBox6.Enabled := set_enabled;
  cxComboBox7.Enabled := set_enabled;
  cxButton1.Enabled := set_enabled;
  cxButton2.Enabled := set_enabled;
end;

function TfmPeriod.GetStartMounth(CurDate:TDatetime):TDatetime;
var  Year, Month, Day: Word;
begin
  DecodeDate(CurDate, Year, Month, Day);
  Day := 1;
  Result := EncodeDate(Year, Month, Day);
end;

function TfmPeriod.GetEndMounth(CurDate:TDatetime):TDatetime;
var Year, Month, Day: Word;
begin
  DecodeDate(CurDate, Year, Month, Day);
  Result := EndOfAMonth(Year, Month);
end;

procedure TfmPeriod.SetPeriodDates(date_begin, date_end : TDateTime);
begin
  Fdate_begin := date_begin;
  Fdate_end   := date_end;
end;


end.
