unit TestEtranMain;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ComCtrls, ExtCtrls, cxControls, cxContainer, cxEdit, DateUtils,
  cxTextEdit, cxGraphics, cxLookAndFeels, cxLookAndFeelPainters, ADODB, DB,
  Menus, cxButtons, cxGroupBox, StrUtils, dxSkinsCore, dxSkinBlack, dxSkinBlue, dxSkinBlueprint, dxSkinCaramel, dxSkinCoffee, dxSkinDarkRoom, dxSkinDarkSide, dxSkinDevExpressDarkStyle, dxSkinDevExpressStyle, dxSkinFoggy, dxSkinGlassOceans, dxSkinHighContrast, dxSkiniMaginary, dxSkinLilian, dxSkinLiquidSky, dxSkinLondonLiquidSky, dxSkinMcSkin, dxSkinMetropolis, dxSkinMetropolisDark, dxSkinMoneyTwins, dxSkinOffice2007Black, dxSkinOffice2007Blue, dxSkinOffice2007Green, dxSkinOffice2007Pink, dxSkinOffice2007Silver, dxSkinOffice2010Black, dxSkinOffice2010Blue, dxSkinOffice2010Silver, dxSkinOffice2013DarkGray, dxSkinOffice2013LightGray, dxSkinOffice2013White, dxSkinOffice2016Colorful, dxSkinOffice2016Dark, dxSkinPumpkin, dxSkinSeven, dxSkinSevenClassic, dxSkinSharp, dxSkinSharpPlus, dxSkinSilver, dxSkinSpringTime, dxSkinStardust, dxSkinSummer2008, dxSkinTheAsphaltWorld, dxSkinsDefaultPainters, dxSkinValentine, dxSkinVisualStudio2013Blue, dxSkinVisualStudio2013Dark,
  dxSkinVisualStudio2013Light, dxSkinVS2010, dxSkinWhiteprint, dxSkinXmas2008Blue,
  dxSkinTheBezier, Soap.InvokeRegistry, Soap.Rio, Soap.SOAPHTTPClient, cxCheckBox,


  System.Types, Soap.XSBuiltIns, Soap.SOAPHTTPTrans, System.Net.URLClient, dxSkinBasic, dxSkinOffice2019Black, dxSkinOffice2019Colorful,
  dxSkinOffice2019DarkGray, dxSkinOffice2019White, dxSkinWXI, Vcl.Buttons,
  ComObj, Datasnap.DBClient;

type
  TForm1 = class(TForm)
    Button1: TButton;
    RichEdit1: TRichEdit;
    RichEdit2: TRichEdit;
    Panel1: TPanel;
    Label1: TLabel;
    Label2: TLabel;
    cxTextEdit1: TcxTextEdit;
    cxTextEdit2: TcxTextEdit;
    cxTextEdit3: TcxTextEdit;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    ADOConnection1: TADOConnection;
    ADOQuery1: TADOQuery;
    ADOStoredProc1: TADOStoredProc;
    Splitter1: TSplitter;
    Panel2: TPanel;
    Panel3: TPanel;
    Splitter2: TSplitter;
    cxGroupBox2: TcxGroupBox;
    cxButton9: TcxButton;
    cxButton10: TcxButton;
    cxButton11: TcxButton;
    cxButton12: TcxButton;
    cxButton13: TcxButton;
    cxButton14: TcxButton;
    cxButton15: TcxButton;
    cxButton16: TcxButton;
    cxButton1: TcxButton;
    cxButton2: TcxButton;
    cxButton3: TcxButton;
    cxButton4: TcxButton;
    cxButton5: TcxButton;
    cxButton6: TcxButton;
    cxButton7: TcxButton;
    cxButton8: TcxButton;
    Label6: TLabel;
    Label7: TLabel;
    HTTPRIO1: THTTPRIO;
    cxCheckBox1: TcxCheckBox;
    Button2: TButton;
    Button3: TButton;
    BitBtn1: TBitBtn;
    ClientDataSet1: TClientDataSet;
    procedure Button1Click(Sender: TObject);
    procedure cxButton9Click(Sender: TObject);
    procedure cxButton1Click(Sender: TObject);
    procedure HTTPRIO1AfterExecute(const MethodName: string; SOAPResponse: TStream);
    procedure HTTPRIO1BeforeExecute(const MethodName: string; SOAPRequest: TStream);
    procedure Button2Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

uses TestSOAP;

{$R *.dfm}

procedure TForm1.BitBtn1Click(Sender: TObject);
var OpenDialog: TOpenDialog;
    exApp, exWkb, exWks : OleVariant;
    cnt, i, k : integer;
    s, s1, s2 : string;
    ClientDS : TClientDataSet;
begin


  OpenDialog := TOpenDialog.Create(nil);
  OpenDialog.Filter     := 'Excel файлы|*.xls;*.xlsx';
  OpenDialog.DefaultExt := 'xls';
  if OpenDialog.Execute then begin
//    ShowTextMessage('Запуск сервера автоматизации...', False);

    ClientDS := TClientDataSet.Create(nil);
    ClientDS.FieldDefs.Add('id', ftAutoInc);
    ClientDS.FieldDefs.Add('num_document', ftString, 500);
    ClientDS.FieldDefs.Add('firm_name', ftString, 500);
    ClientDS.FieldDefs.Add('contract_cod', ftString, 500);
    ClientDS.FieldDefs.Add('contract_date', ftDateTime);
    ClientDS.FieldDefs.Add('agreement_cod', ftString, 500);
    ClientDS.FieldDefs.Add('agreement_date', ftDateTime);
    ClientDS.CreateDataSet;
    ClientDS.LogChanges := False;

    exApp := CreateOleObject('Excel.Application');
    exWkb := exApp.Workbooks.Open(OpenDialog.FileName);
    exWkb := exApp.ActiveWorkbook;
    exWks := exWkb.WorkSheets[1];

    cnt := 0;
    i   := 2;
    while True do begin
      if TVarData(exWks.Cells[i, 1].Value).VType = varEmpty then
        break
      else cnt := cnt + 1;
      i := i + 1;
    end;

    i := 2;
    cnt := 5;
    for k:=0 to cnt-1 do begin
      ClientDS.Append;
      ClientDS.FieldByName('num_document'   ).Value := exWks.Cells[i + k, 1].Value;
      ClientDS.FieldByName('firm_name'      ).Value := exWks.Cells[i + k, 2].Value;
      s := exWks.Cells[i + k, 3].Value;

      s1 := LeftStr(s, Pos(' от ', s));
      s2 := ReplaceStr(s, s1, '');

      s1 := ReplaceStr(s1, '№', '');
      s1 := Trim(s1);

      s2 := ReplaceStr(s2, 'от', '');
      s2 := ReplaceStr(s2, 'г.', '');
      s2 := ReplaceStr(s2, ' января '   , '.01.');
      s2 := ReplaceStr(s2, ' февраля '  , '.02.');
      s2 := ReplaceStr(s2, ' марта '    , '.03.');
      s2 := ReplaceStr(s2, ' апреля '   , '.04.');
      s2 := ReplaceStr(s2, ' мая '      , '.05.');
      s2 := ReplaceStr(s2, ' июня '     , '.06.');
      s2 := ReplaceStr(s2, ' июля '     , '.07.');
      s2 := ReplaceStr(s2, ' августа '  , '.08.');
      s2 := ReplaceStr(s2, ' сентября ' , '.09.');
      s2 := ReplaceStr(s2, ' октября '  , '.10.');
      s2 := ReplaceStr(s2, ' ноября '   , '.11.');
      s2 := ReplaceStr(s2, ' декабря '  , '.12.');
      s2 := Trim(s2);

      ClientDS.FieldByName('contract_cod'   ).Value := s1;
      ClientDS.FieldByName('contract_date'  ).Value := StrToDate(s2);

      ClientDS.FieldByName('agreement_cod'  ).Value := exWks.Cells[i + k, 4].Value;
      ClientDS.FieldByName('agreement_date' ).Value := StrToDate(exWks.Cells[i + k, 5].Value);
      ClientDS.Post;

//      sp_etran_ecp_cls_modify.Close;
//      sp_etran_ecp_cls_modify.Parameters.Refresh;
//      sp_etran_ecp_cls_modify.Parameters.ParamByName('@str_etran_ecp_id').Value := str_ecp_etran_id;
//      sp_etran_ecp_cls_modify.Parameters.ParamByName('@carNumber'   ).Value := exWks.Cells[i + k, 2].Value; // Номер вагона
//      sp_etran_ecp_cls_modify.Parameters.ParamByName('@sealMarks'   ).Value := exWks.Cells[i + k, 5].Value; // Контрольный знак
//      sp_etran_ecp_cls_modify.Parameters.ParamByName('@sealTypeName').Value := exWks.Cells[i + k, 4].Value; // Тип;
//      sp_etran_ecp_cls_modify.ExecProc;
//
//      ShowTextMessage('Осталось '+IntToStr(cnt-k)+' строк...', False);
    end;


    ShowMessage(ClientDS.XMLData);

//    sp_etran_ecp_cls_modify.Free;
//    ShowTextMessage;
    exApp.Quit;
//    ShowTextMessage('Осталось '+IntToStr(cnt)+' строк...', False);

  end;

  OpenDialog.Free;

end;

procedure TForm1.Button1Click(Sender: TObject);
var s1, s2, s3 : WideString;
    dt : TDateTime;
    sp : string;
begin
  try
    RichEdit2.Lines.Clear;
    s1 := RichEdit1.Lines.Text;
    dt := Now;

    RichEdit2.Lines.Add('BEGIN...');
    RichEdit2.Refresh;
    Application.ProcessMessages;

//    sp := 'ASU_asu01@' + char(224);
//    ShowMessage(sp);
    if cxCheckBox1.Checked = True then
      GetIEtranSys(False, cxTextEdit3.Text, HTTPRIO1).GetBlock(cxTextEdit1.Text, cxTextEdit2.Text, s1, s2, s3)
    else
      GetIEtranSys(False, cxTextEdit3.Text).GetBlock(cxTextEdit1.Text, cxTextEdit2.Text, s1, s2, s3);
//      GetIEtranSys(False, cxTextEdit3.Text).GetBlock(cxTextEdit1.Text, sp, s1, s2, s3);
    RichEdit2.Lines.Add('END...');

    Label2.Caption := IntToStr(MilliSecondsBetween(Now, dt));
    RichEdit2.Lines.Text := s1;
  except
    on E: Exception do begin
      RichEdit2.Lines.Text := 'ERROR' + #10 + E.Message;
    end;
  end;
end;

procedure TForm1.Button2Click(Sender: TObject);
var s1, s2, s3 : WideString;
    dt, dt2 : TDateTime;
    sp : string;
    i : integer;
begin
  try
    RichEdit2.Lines.Clear;
    s1 := RichEdit1.Lines.Text;
    dt := Now;

    RichEdit2.Lines.Add('USER: ' + cxTextEdit1.Text);
    RichEdit2.Lines.Add('BEGIN...');
    RichEdit2.Refresh;
    Application.ProcessMessages;

    for i := 0 to 20 do begin
      dt2 := Now;
      GetIEtranSys(False, cxTextEdit3.Text).GetBlock(cxTextEdit1.Text, cxTextEdit2.Text, s1, s2, s3);
      RichEdit2.Lines.Add('Send [' + RightStr('00' + IntToStr(i),2) + '] time=' + IntToStr(MilliSecondsBetween(Now, dt2)) + 'ms...');
//      Application.Terminate;
      RichEdit2.Refresh;
    end;

    RichEdit2.Lines.Add('END...');

    Label2.Caption := IntToStr(MilliSecondsBetween(Now, dt));
  except
    on E: Exception do begin
      //RichEdit2.Lines.Text := 'ERROR' + #10 + E.Message;
      RichEdit2.Lines.Add(E.Message);
    end;
  end;

end;

procedure TForm1.Button3Click(Sender: TObject);
var
  HTTP : THTTPReqResp;
  resp : TStringStream;
  xml  : RawByteString;
  soap_send : RawByteString;

    dt, dt2 : TDateTime;
    sp : string;
    i : integer;
begin

  try
    RichEdit2.Lines.Clear;
    dt := Now;

    RichEdit2.Lines.Add('USER: ' + cxTextEdit1.Text);
    RichEdit2.Lines.Add('BEGIN...');
    RichEdit2.Refresh;
    Application.ProcessMessages;

    for i := 0 to 20 do begin
      dt2 := Now;

      HTTP := THTTPReqResp.Create(nil);
      resp := TStringStream.Create;

      soap_send := '<?xml version="1.0"?>';
      soap_send := soap_send + '<SOAP-ENV:Envelope xmlns:SOAP-ENV="http://schemas.xmlsoap.org/soap/envelope/" xmlns:xsd="http://www.w3.org/2001/XMLSchema" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" xmlns:SOAP-ENC="http://schemas.xmlsoap.org/soap/encoding/">';
      soap_send := soap_send + '<SOAP-ENV:Body xmlns:NS1="SysEtranInt" SOAP-ENV:encodingStyle="http://schemas.xmlsoap.org/soap/encoding/">';
      soap_send := soap_send + '<NS1:GetBlock>';
      soap_send := soap_send + '<Login xsi:type="xsd:string">МСК_ЛЁУШКИНС</Login>';
      soap_send := soap_send + '<Password xsi:type="xsd:string">Auraoil@2019</Password>';
      soap_send := soap_send + '<Text xsi:type="xsd:string">';
      soap_send := soap_send + '&lt;test version="1.0"&gt;&lt;/test&gt;';
      soap_send := soap_send + '</Text>';
      soap_send := soap_send + '<ECP xsi:type="xsd:string"></ECP>';
      soap_send := soap_send + '<TSP xsi:type="xsd:string"></TSP>';
      soap_send := soap_send + '</NS1:GetBlock>';
      soap_send := soap_send + '</SOAP-ENV:Body>';
      soap_send := soap_send + '</SOAP-ENV:Envelope>';


      xml  := UTF8Encode(soap_send);
      HTTP.URL := cxTextEdit3.Text;
      HTTP.SoapAction := 'GetBlock';
      HTTP.Execute(xml, resp);

      RichEdit2.Lines.Add('Send [' + RightStr('00' + IntToStr(i),2) + '] time=' + IntToStr(MilliSecondsBetween(Now, dt2)) + 'ms... ' + LeftStr(UTF8Decode(resp.DataString), 10));
      RichEdit2.Refresh;

      HTTP.Free;
      resp.Free;
    end;
    RichEdit2.Lines.Add('END...');

    Label2.Caption := IntToStr(MilliSecondsBetween(Now, dt));
  except
    on E: Exception do begin
      //RichEdit2.Lines.Text := 'ERROR' + #10 + E.Message;
      RichEdit2.Lines.Add(E.Message);
    end;
  end;
end;

procedure TForm1.cxButton1Click(Sender: TObject);
var xml_ret : string;
    str_doc_id : string;
begin
  str_doc_id := 'ИД записи';
  case TControl(Sender).Tag of
      1 : xml_ret := '<getClaim version="1.0"><claimID value="'+str_doc_id+'"/><useMod11/></getClaim>';
      2 : xml_ret := '<getInvoice version="1.0"><invoiceID value="'+str_doc_id+'"/><useMod11/></getInvoice>';
     27 : xml_ret := '<getCumulativeList version="1.0"><cumId value="'+str_doc_id+'"/></getCumulativeList>';
     29 : xml_ret := '<getRT version="1.0"><rtId value="'+str_doc_id+'"/><useMod11/></getRT>';
     40 : xml_ret := '<getRegCont version="1.0"><rcId value="'+str_doc_id+'"/><useMod11/></getRegCont>';
     41 : xml_ret := '<getVPU version="1.0"><vpuId value="'+str_doc_id+'"/><useMod11/></getVPU>';
    500 : xml_ret := '<getDocOper version="1.0"><docID value="'+str_doc_id+'"/></getDocOper>';
    600 : xml_ret := '<getDocLink version="1.0"><docID value="'+str_doc_id+'"/></getDocLink>';
  end;

  xml_ret := ReplaceStr(xml_ret, '>', '>' + #10);

  RichEdit1.Lines.Text := xml_ret;
end;

procedure TForm1.cxButton9Click(Sender: TObject);
var d1, d2 : TDateTime;
    xml_ret : string;
    period_begin, period_end : string;
begin

  d1 := Now;
  d1 := IncHour(DateOf(d1), HourOf(d1));
  d2 := IncMinute(d1, 30);

  period_begin := DateTimeToStr(d1);
  period_end   := DateTimeToStr(d2);

  case TControl(Sender).Tag of
      1 : xml_ret := '<claimToAgreementStatus version="1.0"><fromDate value="'+period_begin+'"/><toDate value="'+period_end+'"/><usePayer /></claimToAgreementStatus>';
      2 : xml_ret := '<invoiceStatus version="1.0"><fromDate value="'+period_begin+'"/><toDate value="'+period_end+'"/><useSender/><usePayer/><useRecip/><useAll/></invoiceStatus>';
     27 : xml_ret := '<cumulativeStatus version="1.0"><fromDate value="'+period_begin+'"/><toDate value="'+period_end+'"/></cumulativeStatus>';
     29 : xml_ret := '<RTSTATUS_LIST version="1.0"><fromDate value="'+period_begin+'"/><toDate value="'+period_end+'"/></RTSTATUS_LIST>';
     40 : xml_ret := '<regContStatus version="1.0"><fromDate value="'+period_begin+'"/><toDate value="'+period_end+'"/></regContStatus>';
     41 : xml_ret := '<vpuStatus version="1.0"><fromDate value="'+period_begin+'"/><toDate value="'+period_end+'"/></vpuStatus>';
    100 : xml_ret := '<GetKkrDocs version="1.0"><StartPeriod value="'+period_begin+'"/><FinishPeriod value="'+period_end+'"/></GetKkrDocs>';
    900 : xml_ret := '<GetKkrDebet version="1.0"><StartPeriod value="'+period_begin+'"/><FinishPeriod value="'+period_end+'"/><PayPlace value="1"/><useName/></GetKkrDebet>';
  end;

  xml_ret := ReplaceStr(xml_ret, '>', '>' + #10);

  RichEdit1.Lines.Text := xml_ret;
end;

procedure TForm1.FormCreate(Sender: TObject);
begin
  Panel2.Visible := False;
end;

procedure TForm1.HTTPRIO1AfterExecute(const MethodName: string; SOAPResponse: TStream);
begin
  TMemoryStream(SOAPResponse).SaveToFile('SOAPResponse.txt');
end;

procedure TForm1.HTTPRIO1BeforeExecute(const MethodName: string; SOAPRequest: TStream);
begin
  TMemoryStream(SOAPRequest).SaveToFile('SOAPRequest.txt');
end;

end.
