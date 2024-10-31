unit CtmNewExchange;

interface

uses
  RailTariff_TLB, Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, cxGraphics, cxLookAndFeels, cxLookAndFeelPainters, Menus, cxControls,
  cxContainer, cxEdit, Buttons, cxGroupBox, cxTextEdit, cxCurrencyEdit,
  StdCtrls, ExtCtrls, cxLabel, cxButtons, cxPropertiesStore, Default, UrlMon,
  dxSkinsCore, dxSkinBlack, dxSkinBlue, dxSkinBlueprint, dxSkinCaramel,
  dxSkinCoffee, dxSkinDarkRoom, dxSkinDarkSide, dxSkinDevExpressDarkStyle,
  dxSkinDevExpressStyle, dxSkinFoggy, dxSkinGlassOceans, dxSkinHighContrast,
  dxSkiniMaginary, dxSkinLilian, dxSkinLiquidSky, dxSkinLondonLiquidSky,
  dxSkinMcSkin, dxSkinMetropolis, dxSkinMetropolisDark, dxSkinMoneyTwins,
  dxSkinOffice2007Black, dxSkinOffice2007Blue, dxSkinOffice2007Green,
  dxSkinOffice2007Pink, dxSkinOffice2007Silver, dxSkinOffice2010Black,
  dxSkinOffice2010Blue, dxSkinOffice2010Silver, dxSkinOffice2013DarkGray,
  dxSkinOffice2013LightGray, dxSkinOffice2013White, dxSkinPumpkin, dxSkinSeven,
  dxSkinSevenClassic, dxSkinSharp, dxSkinSharpPlus, dxSkinSilver,
  dxSkinSpringTime, dxSkinStardust, dxSkinSummer2008, dxSkinTheAsphaltWorld,
  dxSkinsDefaultPainters, dxSkinValentine, dxSkinVS2010, dxSkinWhiteprint,
  dxSkinXmas2008Blue, cxClasses, dxSkinOffice2016Colorful, dxSkinOffice2016Dark,
  dxSkinVisualStudio2013Blue, dxSkinVisualStudio2013Dark,
  dxSkinVisualStudio2013Light, dxSkinTheBezier, dxSkinOffice2019Colorful;

type
  TfmCtmNewExchange = class(TForm)
    cxPropertiesStore1: TcxPropertiesStore;
    GridPanel1: TGridPanel;
    cxButton2: TcxButton;
    cxButton1: TcxButton;
    cxLabel19: TcxLabel;
    cxLabel1: TcxLabel;
    Panel1: TPanel;
    GroupBox1: TGroupBox;
    cxCurrencyEdit14: TcxCurrencyEdit;
    cxCurrencyEdit15: TcxCurrencyEdit;
    cxLabel15: TcxLabel;
    cxLabel16: TcxLabel;
    GroupBox2: TGroupBox;
    cxCurrencyEdit16: TcxCurrencyEdit;
    cxLabel17: TcxLabel;
    cxGroupBox1: TcxGroupBox;
    cxLabel2: TcxLabel;
    cxLabel3: TcxLabel;
    cxLabel4: TcxLabel;
    cxCurrencyEdit1: TcxCurrencyEdit;
    cxCurrencyEdit2: TcxCurrencyEdit;
    cxCurrencyEdit3: TcxCurrencyEdit;
    cxGroupBox4: TcxGroupBox;
    cxLabel11: TcxLabel;
    cxLabel12: TcxLabel;
    cxCurrencyEdit10: TcxCurrencyEdit;
    cxCurrencyEdit11: TcxCurrencyEdit;
    cxGroupBox5: TcxGroupBox;
    cxLabel13: TcxLabel;
    cxCurrencyEdit12: TcxCurrencyEdit;
    cxLabel14: TcxLabel;
    cxCurrencyEdit13: TcxCurrencyEdit;
    cxGroupBox2: TcxGroupBox;
    cxLabel5: TcxLabel;
    cxLabel6: TcxLabel;
    cxLabel7: TcxLabel;
    cxCurrencyEdit4: TcxCurrencyEdit;
    cxCurrencyEdit5: TcxCurrencyEdit;
    cxCurrencyEdit6: TcxCurrencyEdit;
    cxGroupBox3: TcxGroupBox;
    cxLabel8: TcxLabel;
    cxCurrencyEdit7: TcxCurrencyEdit;
    cxCurrencyEdit8: TcxCurrencyEdit;
    cxLabel9: TcxLabel;
    cxLabel10: TcxLabel;
    cxCurrencyEdit9: TcxCurrencyEdit;
    cxGroupBox6: TcxGroupBox;
    cxLabel18: TcxLabel;
    cxCurrencyEdit17: TcxCurrencyEdit;
    cxCurrencyEdit18: TcxCurrencyEdit;
    cxLabel20: TcxLabel;
    cxLabel21: TcxLabel;
    cxCurrencyEdit19: TcxCurrencyEdit;
    cxLabel22: TcxLabel;
    cxCurrencyEdit20: TcxCurrencyEdit;
    Panel18: TPanel;
    BitBtn_Ok: TBitBtn;
    BitBtn_Cancel: TBitBtn;
    cxLabel23: TcxLabel;
    cxCurrencyEdit21: TcxCurrencyEdit;
    cxCurrencyEdit22: TcxCurrencyEdit;
    cxLabel24: TcxLabel;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure cxButton1Click(Sender: TObject);
    procedure BitBtn_OkClick(Sender: TObject);
  private
    Fusr_pwd        : PUser_pwd;
    Fdate_from_to   : TDateTime;
    FRTXDocument    : RailTariff_TLB.IDocument;
    Fexchange_usd   : Double;

    procedure UpdateExchange();
    procedure SetRTXDocument(RTXDocument : RailTariff_TLB.IDocument);
    function  DownloadFile(SourceFile, DestFile: string): Boolean;
  public
    constructor Create(AOwner: TApplication; usr_pwd: PUser_pwd; date_from_to: TDateTime); reintroduce;
  published
    property _SetRTXDocument: RailTariff_TLB.IDocument write SetRTXDocument;
    property _GetExchangeUSD: Double read Fexchange_usd;
  end;

var
  fmCtmNewExchange: TfmCtmNewExchange;

implementation

{$R *.dfm}


constructor TfmCtmNewExchange.Create(AOwner: TApplication; usr_pwd: PUser_pwd; date_from_to: TDateTime);
begin
  Screen.Cursor := crHourglass;
  inherited Create(AOwner);
  Fusr_pwd := usr_pwd;
  Fdate_from_to := date_from_to;
  cxLabel1.Caption := DateToStr(Fdate_from_to);

  Fexchange_usd := 0;

  Screen.Cursor := crDefault;
end;

function TfmCtmNewExchange.DownloadFile(SourceFile, DestFile: string): Boolean;
begin
  try
    Result := UrlDownloadToFile(nil, PChar(SourceFile), PChar(DestFile), 0, nil) = 0;
  except
    Result := False;
  end;
end;


procedure TfmCtmNewExchange.cxButton1Click(Sender: TObject);
var FileOnNet, LocalFileName, strDate  : string;
    DirCyrrency   : TNetResource;
    Err : integer;
begin
  if Fdate_from_to > Date then begin
    Application.MessageBox('Курсы валют на указанную дату ещё не существуют!!!', 'Обновление курсов валют', MB_OK + MB_ICONWARNING);
    exit;
  end;

  DirCyrrency.dwType:=RESOURCETYPE_DISK;
  DirCyrrency.lpLocalName:=nil;
  DirCyrrency.lpRemoteName:=PChar('\\' + CTM_Server + '\CURRENCY$');
  DirCyrrency.lpProvider:=nil;
  Err:=WNetAddConnection2(DirCyrrency, PChar('!Q@W3e4r'), PChar('CTM_User'), 0);

  if Err = 0 then begin
    strDate := FormatDateTime('yyyy', Fdate_from_to) + '-' + FormatDateTime('mm', Fdate_from_to) + '-' + FormatDateTime('dd', Fdate_from_to);
    FileOnNet := 'http://ftp.ctm.ru/ctm/RAIL.CURR/CRS' + strDate + '.TXT';
    LocalFileName := '\\' + CTM_Server + '\CURRENCY$\CRS' + strDate + '.TXT';
    if DownloadFile(FileOnNet, LocalFileName) then begin
      try
        (FRTXDocument as IRateOfExchange).LoadFromFile('F:\CTM\CURRENCY\CRS' + strDate + '.TXT');
      except
        Application.MessageBox('Не могу прочитать файл с курсами валют на указанную дату', 'Ошибка', MB_OK + MB_ICONSTOP);
        exit;
      end;
    end else begin
      Application.MessageBox('Не удалось загрузить файл с курсами валют на указанную дату', 'Ошибка', MB_OK + MB_ICONSTOP);
      exit;
    end;
    Application.MessageBox('Обновление прошло успешно', 'Обновление курсов валют', MB_OK + MB_ICONINFORMATION);
    UpdateExchange;
    WNetCancelConnection2(DirCyrrency.lpRemoteName, CONNECT_UPDATE_PROFILE, TRUE);
  end else begin
    Application.MessageBox('Ошибка при подключении сетевого диска.', 'Ошибка', MB_OK + MB_ICONSTOP);
  end;
end;

procedure TfmCtmNewExchange.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action := caFree;
end;

procedure TfmCtmNewExchange.SetRTXDocument(RTXDocument : RailTariff_TLB.IDocument);
begin
  FRTXDocument := RTXDocument;
  UpdateExchange;
end;

procedure TfmCtmNewExchange.UpdateExchange();
  var Exchange : double;
begin
  (FRTXDocument as IRateOfExchange).GetRate(CUR_RUR, CUR_USD, Exchange);
  if (cxCurrencyEdit1.Text <> '') and (FloatToStr(Exchange) <> cxCurrencyEdit1.Text) then cxCurrencyEdit1.Style.Font.Style := [fsBold]
  else cxCurrencyEdit1.Style.Font.Style := [];
  cxCurrencyEdit1.Text := FloatToStr(Exchange);

  (FRTXDocument as IRateOfExchange).GetRate(CUR_RUR, CUR_CHF, Exchange);
  if (cxCurrencyEdit2.Text <> '') and (FloatToStr(Exchange) <> cxCurrencyEdit2.Text) then cxCurrencyEdit2.Style.Font.Style := [fsBold]
  else cxCurrencyEdit2.Style.Font.Style := [];
  cxCurrencyEdit2.Text := FloatToStr(Exchange);

  (FRTXDocument as IRateOfExchange).GetRate(CUR_RUR, CUR_EUR, Exchange);
  if (cxCurrencyEdit3.Text <> '') and (FloatToStr(Exchange) <> cxCurrencyEdit3.Text) then cxCurrencyEdit3.Style.Font.Style := [fsBold]
  else cxCurrencyEdit3.Style.Font.Style := [];
  cxCurrencyEdit3.Text := FloatToStr(Exchange);

  (FRTXDocument as IRateOfExchange).GetRate(CUR_EEK, CUR_USD, Exchange);
  if (cxCurrencyEdit4.Text <> '') and (FloatToStr(Exchange) <> cxCurrencyEdit4.Text) then cxCurrencyEdit4.Style.Font.Style := [fsBold]
  else cxCurrencyEdit4.Style.Font.Style := [];
  cxCurrencyEdit4.Text := FloatToStr(Exchange);

  (FRTXDocument as IRateOfExchange).GetRate(CUR_USD,CUR_EUR, Exchange);
  if (cxCurrencyEdit5.Text <> '') and (FloatToStr(Exchange) <> cxCurrencyEdit5.Text) then cxCurrencyEdit5.Style.Font.Style := [fsBold]
  else cxCurrencyEdit5.Style.Font.Style := [];
  cxCurrencyEdit5.Text := FloatToStr(Exchange);

  (FRTXDocument as IRateOfExchange).GetRate(428, CUR_USD, Exchange);
  if (cxCurrencyEdit6.Text <> '') and (FloatToStr(Exchange) <> cxCurrencyEdit6.Text) then cxCurrencyEdit6.Style.Font.Style := [fsBold]
  else cxCurrencyEdit6.Style.Font.Style := [];
  cxCurrencyEdit6.Text := FloatToStr(Exchange);

  (FRTXDocument as IRateOfExchange).GetRate(980, CUR_USD, Exchange);
  if (cxCurrencyEdit7.Text <> '') and (FloatToStr(Exchange) <> cxCurrencyEdit7.Text) then cxCurrencyEdit7.Style.Font.Style := [fsBold]
  else cxCurrencyEdit7.Style.Font.Style := [];
  cxCurrencyEdit7.Text := FloatToStr(Exchange);

  (FRTXDocument as IRateOfExchange).GetRate(980, CUR_RUR, Exchange);
  if (cxCurrencyEdit8.Text <> '') and (FloatToStr(Exchange) <> cxCurrencyEdit8.Text) then cxCurrencyEdit8.Style.Font.Style := [fsBold]
  else cxCurrencyEdit8.Style.Font.Style := [];
  cxCurrencyEdit8.Text := FloatToStr(Exchange);

  (FRTXDocument as IRateOfExchange).GetRate(980, CUR_EUR, Exchange);
  if (cxCurrencyEdit9.Text <> '') and (FloatToStr(Exchange) <> cxCurrencyEdit9.Text) then cxCurrencyEdit9.Style.Font.Style := [fsBold]
  else cxCurrencyEdit9.Style.Font.Style := [];
  cxCurrencyEdit9.Text := FloatToStr(Exchange);

  (FRTXDocument as IRateOfExchange).GetRate(CUR_KZT, CUR_USD, Exchange);
  if (cxCurrencyEdit10.Text <> '') and (FloatToStr(Exchange) <> cxCurrencyEdit10.Text) then cxCurrencyEdit10.Style.Font.Style := [fsBold]
  else cxCurrencyEdit10.Style.Font.Style := [];
  cxCurrencyEdit10.Text := FloatToStr(Exchange);

  (FRTXDocument as IRateOfExchange).GetRate(398, CUR_CHF, Exchange);
  if (cxCurrencyEdit11.Text <> '') and (FloatToStr(Exchange) <> cxCurrencyEdit11.Text) then cxCurrencyEdit11.Style.Font.Style := [fsBold]
  else cxCurrencyEdit11.Style.Font.Style := [];
  cxCurrencyEdit11.Text := FloatToStr(Exchange);

  (FRTXDocument as IRateOfExchange).GetRate(398, CUR_RUR, Exchange);
  if (cxCurrencyEdit21.Text <> '') and (FloatToStr(Exchange) <> cxCurrencyEdit21.Text) then cxCurrencyEdit21.Style.Font.Style := [fsBold]
  else cxCurrencyEdit21.Style.Font.Style := [];
  cxCurrencyEdit21.Text := FloatToStr(Exchange);

  (FRTXDocument as IRateOfExchange).GetRate(398, CUR_EUR, Exchange);
  if (cxCurrencyEdit22.Text <> '') and (FloatToStr(Exchange) <> cxCurrencyEdit22.Text) then cxCurrencyEdit22.Style.Font.Style := [fsBold]
  else cxCurrencyEdit22.Style.Font.Style := [];
  cxCurrencyEdit22.Text := FloatToStr(Exchange);


  (FRTXDocument as IRateOfExchange).GetRate(974 , CUR_USD, Exchange);
  if (cxCurrencyEdit12.Text <> '') and (FloatToStr(Exchange) <> cxCurrencyEdit12.Text) then cxCurrencyEdit12.Style.Font.Style := [fsBold]
  else cxCurrencyEdit12.Style.Font.Style := [];
  cxCurrencyEdit12.Text := FloatToStr(Exchange);

  (FRTXDocument as IRateOfExchange).GetRate(974 , CUR_RUR, Exchange);
  if (cxCurrencyEdit13.Text <> '') and (FloatToStr(Exchange) <> cxCurrencyEdit13.Text) then cxCurrencyEdit13.Style.Font.Style := [fsBold]
  else cxCurrencyEdit13.Style.Font.Style := [];
  cxCurrencyEdit13.Text := FloatToStr(Exchange);

  (FRTXDocument as IRateOfExchange).GetRate(417 , CUR_USD, Exchange);
  if (cxCurrencyEdit14.Text <> '') and (FloatToStr(Exchange) <> cxCurrencyEdit14.Text) then cxCurrencyEdit14.Style.Font.Style := [fsBold]
  else cxCurrencyEdit14.Style.Font.Style := [];
  cxCurrencyEdit14.Text := FloatToStr(Exchange);

  (FRTXDocument as IRateOfExchange).GetRate(417 , CUR_CHF, Exchange);
  if (cxCurrencyEdit15.Text <> '') and (FloatToStr(Exchange) <> cxCurrencyEdit15.Text) then cxCurrencyEdit15.Style.Font.Style := [fsBold]
  else cxCurrencyEdit15.Style.Font.Style := [];
  cxCurrencyEdit15.Text := FloatToStr(Exchange);

  (FRTXDocument as IRateOfExchange).GetRate(860 , CUR_CHF, Exchange);
  if (cxCurrencyEdit16.Text <> '') and (FloatToStr(Exchange) <> cxCurrencyEdit16.Text) then cxCurrencyEdit16.Style.Font.Style := [fsBold]
  else cxCurrencyEdit16.Style.Font.Style := [];
  cxCurrencyEdit16.Text := FloatToStr(Exchange);

  (FRTXDocument as IRateOfExchange).GetRate(498 , CUR_USD, Exchange);
  if (cxCurrencyEdit17.Text <> '') and (FloatToStr(Exchange) <> cxCurrencyEdit17.Text) then cxCurrencyEdit17.Style.Font.Style := [fsBold]
  else cxCurrencyEdit17.Style.Font.Style := [];
  cxCurrencyEdit17.Text := FloatToStr(Exchange);

  (FRTXDocument as IRateOfExchange).GetRate(498 , CUR_CHF, Exchange);
  if (cxCurrencyEdit18.Text <> '') and (FloatToStr(Exchange) <> cxCurrencyEdit18.Text) then cxCurrencyEdit18.Style.Font.Style := [fsBold]
  else cxCurrencyEdit18.Style.Font.Style := [];
  cxCurrencyEdit18.Text := FloatToStr(Exchange);

  (FRTXDocument as IRateOfExchange).GetRate(498 , CUR_EUR, Exchange);
  if (cxCurrencyEdit19.Text <> '') and (FloatToStr(Exchange) <> cxCurrencyEdit19.Text) then cxCurrencyEdit19.Style.Font.Style := [fsBold]
  else cxCurrencyEdit19.Style.Font.Style := [];
  cxCurrencyEdit19.Text := FloatToStr(Exchange);

  (FRTXDocument as IRateOfExchange).GetRate(498 , CUR_RUR, Exchange);
  if (cxCurrencyEdit20.Text <> '') and (FloatToStr(Exchange) <> cxCurrencyEdit20.Text) then cxCurrencyEdit20.Style.Font.Style := [fsBold]
  else cxCurrencyEdit20.Style.Font.Style := [];
  cxCurrencyEdit20.Text := FloatToStr(Exchange);
end;


procedure TfmCtmNewExchange.BitBtn_OkClick(Sender: TObject);
var Exchange : double;
begin
  try
    Exchange := StrToFloat(cxCurrencyEdit1.Text);
    (FRTXDocument as IRateOfExchange).SetRate(CUR_RUR, CUR_USD, Exchange);
    Fexchange_usd := Exchange;
//    fmCtmMain.cxButton2.Caption := FloatToStr(Exchange);
  except
    Application.MessageBox('Не удалось установить "Курс рубля к доллару США"', 'Внимание', MB_OK);
    exit;
  end;

  try
    Exchange := StrToFloat(cxCurrencyEdit2.Text);
    (FRTXDocument as IRateOfExchange).SetRate(CUR_RUR, CUR_CHF, Exchange);
  except
    Application.MessageBox('Не удалось установить "Курс рубля к шф. франку"', 'Внимание', MB_OK);
    exit;
  end;

  try
    Exchange := StrToFloat(cxCurrencyEdit3.Text);
    (FRTXDocument as IRateOfExchange).SetRate(CUR_RUR, CUR_EUR, Exchange);
  except
    Application.MessageBox('Не удалось установить "Курс рубля к ЕВРО"', 'Внимание', MB_OK);
    exit;
  end;

  try
    Exchange := StrToFloat(cxCurrencyEdit4.Text);
    (FRTXDocument as IRateOfExchange).SetRate(CUR_EEK, CUR_USD, Exchange);
  except
    Application.MessageBox('Не удалось установить "Курс эстонской кроны к доллару"', 'Внимание', MB_OK);
    exit;
  end;

  try
    Exchange := StrToFloat(cxCurrencyEdit5.Text);
    (FRTXDocument as IRateOfExchange).SetRate(CUR_USD, CUR_EUR, Exchange);
  except
    Application.MessageBox('Не удалось установить "Курс ЕВРО к доллару США"', 'Внимание', MB_OK);
    exit;
  end;

  try
    Exchange := StrToFloat(cxCurrencyEdit6.Text);
    (FRTXDocument as IRateOfExchange).SetRate(428, CUR_USD, Exchange);
  except
    Application.MessageBox('Не удалось установить "Курс латв. лата к доллару США"', 'Внимание', MB_OK);
    exit;
  end;

  try
    Exchange := StrToFloat(cxCurrencyEdit7.Text);
    (FRTXDocument as IRateOfExchange).SetRate(980, CUR_USD, Exchange);
  except
    Application.MessageBox('Не удалось установить "Курс гривны к доллару США"', 'Внимание', MB_OK);
    exit;
  end;

  try
    Exchange := StrToFloat(cxCurrencyEdit8.Text);
    (FRTXDocument as IRateOfExchange).SetRate(980, CUR_RUR, Exchange);
  except
    Application.MessageBox('Не удалось установить "Курс гривны к рублю"', 'Внимание', MB_OK);
    exit;
  end;

  try
    Exchange := StrToFloat(cxCurrencyEdit9.Text);
    (FRTXDocument as IRateOfExchange).SetRate(980, CUR_EUR, Exchange);
  except
    Application.MessageBox('Не удалось установить "Курс гривны к ЕВРО"', 'Внимание', MB_OK);
    exit;
  end;

  try
    Exchange := StrToFloat(cxCurrencyEdit10.Text);
    (FRTXDocument as IRateOfExchange).SetRate(398 , CUR_USD, Exchange);
  except
    Application.MessageBox('Не удалось установить "Курс тенге к доллару США"', 'Внимание', MB_OK);
    exit;
  end;

  try
    Exchange := StrToFloat(cxCurrencyEdit11.Text);
    (FRTXDocument as IRateOfExchange).SetRate(398, 756, Exchange);
  except
    Application.MessageBox('Не удалось установить "Курс тенге к шф. франку"', 'Внимание', MB_OK);
    exit;
  end;

  try
    Exchange := StrToFloat(cxCurrencyEdit12.Text);
    (FRTXDocument as IRateOfExchange).SetRate(974 , CUR_USD, Exchange);
  except
    Application.MessageBox('Не удалось установить "Курс бел. рубля к доллару США"', 'Внимание', MB_OK);
    exit;
  end;

  try
    Exchange := StrToFloat(cxCurrencyEdit13.Text);
    (FRTXDocument as IRateOfExchange).SetRate(974 , CUR_RUR, Exchange);
  except
    Application.MessageBox('Не удалось установить "Курс бел. рубля к рус. рублю"', 'Внимание', MB_OK);
    exit;
  end;

  try
    Exchange := StrToFloat(cxCurrencyEdit14.Text);
    (FRTXDocument as IRateOfExchange).SetRate(417 , CUR_USD, Exchange);
  except
    Application.MessageBox('Не удалось установить "Курс доллара США к сому"', 'Внимание', MB_OK);
    exit;
  end;

  try
    Exchange := StrToFloat(cxCurrencyEdit15.Text);
    (FRTXDocument as IRateOfExchange).SetRate(417 , CUR_CHF, Exchange);
  except
    Application.MessageBox('Не удалось установить "Курс Шв. франка к сому"', 'Внимание', MB_OK);
    exit;
  end;

  try
    Exchange := StrToFloat(cxCurrencyEdit16.Text);
    (FRTXDocument as IRateOfExchange).SetRate(860 , CUR_CHF, Exchange);
  except
    Application.MessageBox('Не удалось установить "Курс Шв. франка к суму"', 'Внимание', MB_OK);
    exit;
  end;

  try
    Exchange := StrToFloat(cxCurrencyEdit17.Text);
    (FRTXDocument as IRateOfExchange).SetRate(498 , CUR_USD, Exchange);
  except
    Application.MessageBox('Не удалось установить "Курс доллара США к лею"', 'Внимание', MB_OK);
    exit;
  end;

  try
    Exchange := StrToFloat(cxCurrencyEdit18.Text);
    (FRTXDocument as IRateOfExchange).SetRate(498 , CUR_CHF, Exchange);
  except
    Application.MessageBox('Не удалось установить "Курс Шв. франка к лею"', 'Внимание', MB_OK);
    exit;
  end;

  try
    Exchange := StrToFloat(cxCurrencyEdit19.Text);
    (FRTXDocument as IRateOfExchange).SetRate(498 , CUR_EUR, Exchange);
  except
    Application.MessageBox('Не удалось установить "Курс ЕВРО к лею"', 'Внимание', MB_OK);
    exit;
  end;

  try
    Exchange := StrToFloat(cxCurrencyEdit20.Text);
    (FRTXDocument as IRateOfExchange).SetRate(498 , CUR_RUR, Exchange);
  except
    Application.MessageBox('Не удалось установить "Курс Росю рубля к лею"', 'Внимание', MB_OK);
    exit;
  end;

  ModalResult := mrOk;
end;


end.
