unit ECPServerMain;

interface

uses Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics, Vcl.Controls, Vcl.Forms, Vcl.Dialogs,
  Vcl.StdCtrls, Data.DB, Datasnap.DBClient, WinSock, Vcl.ExtCtrls,
  IdTCPConnection, Datasnap.DSTCPServerTransport, Vcl.Buttons, dxBevel,
  cxGraphics, cxLookAndFeels, cxLookAndFeelPainters, Vcl.Menus, cxButtons,
  cxControls, cxContainer, cxEdit, cxClasses, dxSparkline, dxDBSparkline,
  cxStyles, cxCustomData, cxFilter, cxData, cxDataStorage, cxNavigator,
  cxDBData, cxGridCustomView, cxGridCustomTableView, cxGridTableView,
  cxGridBandedTableView, cxGridDBBandedTableView, cxGridLevel, cxGrid, dxBar,
  IniFiles, cxTextEdit, cxMemo, dxSkinsCore, dxSkinBlack, dxSkinBlue,
  dxSkinBlueprint, dxSkinCaramel, dxSkinCoffee, dxSkinDarkRoom, dxSkinDarkSide,
  dxSkinDevExpressDarkStyle, dxSkinDevExpressStyle, dxSkinFoggy,
  dxSkinGlassOceans, dxSkinHighContrast, dxSkiniMaginary, dxSkinLilian,
  dxSkinLiquidSky, dxSkinLondonLiquidSky, dxSkinMcSkin, dxSkinMetropolis,
  dxSkinMetropolisDark, dxSkinMoneyTwins, dxSkinOffice2007Black,
  dxSkinOffice2007Blue, dxSkinOffice2007Green, dxSkinOffice2007Pink,
  dxSkinOffice2007Silver, dxSkinOffice2010Black, dxSkinOffice2010Blue,
  dxSkinOffice2010Silver, dxSkinOffice2013DarkGray, dxSkinOffice2013LightGray,
  dxSkinOffice2013White, dxSkinOffice2016Colorful, dxSkinOffice2016Dark,
  dxSkinPumpkin, dxSkinSeven, dxSkinSevenClassic, dxSkinSharp, dxSkinSharpPlus,
  dxSkinSilver, dxSkinSpringTime, dxSkinStardust, dxSkinSummer2008,
  dxSkinTheAsphaltWorld, dxSkinsDefaultPainters, dxSkinValentine,
  dxSkinVisualStudio2013Blue, dxSkinVisualStudio2013Dark,
  dxSkinVisualStudio2013Light, dxSkinVS2010, dxSkinWhiteprint,
  dxSkinXmas2008Blue, dxSkinscxPCPainter, dxSkinsdxBarPainter, dxSkinTheBezier,
  cxDataControllerConditionalFormattingRulesManagerDialog, dxDateRanges,
  dxSkinBasic, dxSkinOffice2019Black, dxSkinOffice2019Colorful,
  dxSkinOffice2019DarkGray, dxSkinOffice2019White, dxScrollbarAnnotations, dxSkinWXI;

type
  TfmECPServerMain = class(TForm)
    Label1: TLabel;
    ListBox1: TListBox;
    Bevel1: TBevel;
    Label2: TLabel;
    Label3: TLabel;
    dxBevel1: TdxBevel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    Label9: TLabel;
    cxButton1: TcxButton;
    cxButton2: TcxButton;
    cxButton3: TcxButton;
    cxLookAndFeelController1: TcxLookAndFeelController;
    cxGrid1Level1: TcxGridLevel;
    cxGrid1: TcxGrid;
    cxGrid1DBBandedTableView1: TcxGridDBBandedTableView;
    Label11: TLabel;
    ClientDS_Query: TClientDataSet;
    DS_Query: TDataSource;
    ClientDS_Queryid: TAutoIncField;
    ClientDS_Queryquery_date: TDateTimeField;
    ClientDS_Queryquery_ip: TStringField;
    ClientDS_Queryquery_type: TStringField;
    ClientDS_Queryquery_etran_task: TStringField;
    ClientDS_Queryquery_etran_result: TStringField;
    ClientDS_Queryquery_result: TBooleanField;
    ClientDS_Queryquery_error_message: TStringField;
    ClientDS_Queryquery_duration: TIntegerField;
    cxGrid1DBBandedTableView1id: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1query_date: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1query_ip: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1query_type: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1query_etran_task: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1query_etran_result: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1query_result: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1query_error_message: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1query_duration: TcxGridDBBandedColumn;
    dxBarManager1: TdxBarManager;
    dxBarPopupMenu1: TdxBarPopupMenu;
    dxBarButton1: TdxBarButton;
    dxBarSubItem1: TdxBarSubItem;
    dxBarButton2: TdxBarButton;
    dxBarButton3: TdxBarButton;
    dxBarButton4: TdxBarButton;
    Label10: TLabel;
    Label12: TLabel;
    cxButton4: TcxButton;
    procedure cxButton1Click(Sender: TObject);
    procedure dxBarButton1Click(Sender: TObject);
    procedure dxBarButton2Click(Sender: TObject);
    procedure dxBarButton3Click(Sender: TObject);
    procedure cxButton3Click(Sender: TObject);
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
  private
    Fetran_users        : string;
    Fetran_password     : string;
    Fetran_ecp_users    : string;
    Fetran_ecp_password : string;
    Fetran_ip           : string;
    Fservice_name       : string;
    Fcert_num           : string;
    Fclose              : boolean;
    Fservice_port       : string;

    procedure SaveLog(inf_thread_name: string; inf_caption: string; inf_text: string; inf_result_id: integer; inf_cod: string);
  public
    function  GetLocalIP(): string;
    procedure SetPar();
    procedure AddConnectionToList(Conn: TIdTCPConnection; Channel: TDSTCPChannel);
  published
    property _GetEtranUsers       : string read Fetran_users;
    property _GetEtranPassword    : string read Fetran_password;
    property _GetEtranECPUsers    : string read Fetran_ecp_users;
    property _GetEtranECPPassword : string read Fetran_ecp_password;
    property _GetEtranIP          : string read Fetran_ip;
    property _GetServiceName      : string read Fservice_name;
    property _GetCertNum          : string read Fcert_num;
  end;

var
  fmECPServerMain: TfmECPServerMain;

implementation

{$R *.dfm}

uses ECPServerContainer, ECPServerUtils, EtranECP, ECPTestSign;


procedure TfmECPServerMain.SaveLog(inf_thread_name: string; inf_caption: string; inf_text: string; inf_result_id: integer; inf_cod: string);
var log_file : TFileStream;
    log_path : string;
      s_save : RawByteString;
   file_name : string;
begin
//  log_path  := ExtractFilePath(ParamStr(0)) + 'Log\';
//  file_name := log_path + 'log_' + FormatDateTime('yyyymmdd', Now()) + '.csv';
//
//  if not FileExists(file_name) then
//    log_file := TFileStream.Create(file_name, fmCreate)
//  else
//    log_file := TFileStream.Create(file_name, fmOpenReadWrite);
//
//  s_save :=  FormatDateTime('dd.mm.yyyy hh:nn:ss.zzz', Now) + ';' + inf_thread_name + ';' + inf_caption + ';' + inf_text + ';' + IntToStr(inf_result_id) + ';' + inf_cod + ';' + #10;
//
//  log_file.Seek(0, soFromEnd);
//  log_file.WriteBuffer(Pointer(s_save)^, Length(s_save));
//  log_file.Free;
//
//  if (inf_result_id = 0) and (inf_thread_name = 'ThreadFTP') then begin
//    Fset_error_FTP := True;
//    LoadImage(cxImageList_Status, 13, cxImage1);
//  end;
end;

procedure TfmECPServerMain.SetPar();
var ini : TIniFile;
begin
  Fclose := False;

  // Загружаем настройки
  ini := TIniFile.Create(ExtractFilePath(Application.ExeName) + 'Config.ini');

  Fetran_users        := ini.ReadString('ETRAN', 'etran_users',        '');
  Fetran_password     := ini.ReadString('ETRAN', 'etran_password',     '');
  Fetran_ecp_users    := ini.ReadString('ETRAN', 'etran_ecp_users',    '');
  Fetran_ecp_password := ini.ReadString('ETRAN', 'etran_ecp_password', '');
  Fetran_ip           := ini.ReadString('ETRAN', 'etran_ip', 'http://10.248.35.14:8092/AppServer/IEtranSysservice');
  Fservice_name       := ini.ReadString('ETRAN', 'service_name', 'Аура');
  Fservice_port       := ini.ReadString('ETRAN', 'service_port', '7450');
  Fcert_num           := ini.ReadString('ETRAN', 'cert_num', '');


//  Fetran_users        := 'кузминовав';
//  Fetran_password     := 'RepvbyjD6236';
//  Fetran_ecp_users    := 'Гридина_ЕО';
//  Fetran_ecp_password := 'Uhblbyf921';
//  Fcert_num           := '03 80BF A4BA 99B4 C880 EC11 CCBF 6F33 F074';

  Fetran_users        := 'МСК_ЛЁУШКИНС';
  Fetran_password     := '@Auraoil_2019%';
  Fetran_ecp_users    := 'МСК_ЛЁУШКИНС';
  Fetran_ecp_password := '@Auraoil_2019%';
  Fcert_num           := '03 80BF A4BA 99B4 C880 ED11 6B5E 2B31 1AB9';


  fmECPServerContainer.DSTCPServerTransport1.Port := StrToInt(Fservice_port);
  fmECPServerContainer.DSServer1.Start;

  Label1.Caption := 'DataSnap Server (IP:' + GetLocalIP + ', Port:' + IntToStr(fmECPServerContainer.DSTCPServerTransport1.Port) + ') ' + Fservice_name;

  ini.Free;

  Label7.Caption := Fetran_users;
  Label8.Caption := Fetran_ecp_users;
  Label9.Caption := Fetran_ip;
  Label12.Caption := Fcert_num;

  ClientDS_Query.CreateDataSet;
  ClientDS_Query.LogChanges := False;
end;



procedure TfmECPServerMain.cxButton1Click(Sender: TObject);
var s : TStringList;
begin

//  s := TStringList.Create;
//
//  GetProcessList2(s);
//  ShowMessage(s.Text);
//  s.Free;

  fmECPTestSign := TfmECPTestSign.Create(Application);
  fmECPTestSign.ShowModal;
end;

procedure TfmECPServerMain.cxButton3Click(Sender: TObject);
begin
  Fclose := True;
  fmECPServerContainer.DSServer1.Stop;
  Close;
end;

procedure TfmECPServerMain.dxBarButton1Click(Sender: TObject);
begin
//	PrintcxGrid(cxGrid1DBBandedTableView1);
end;

procedure TfmECPServerMain.dxBarButton2Click(Sender: TObject);
begin
//	SetdxDBGridColumns(cxGrid1DBBandedTableView1);
end;

procedure TfmECPServerMain.dxBarButton3Click(Sender: TObject);
begin
	cxGrid1DBBandedTableView1.OptionsView.GroupByBox := not cxGrid1DBBandedTableView1.OptionsView.GroupByBox;
end;

procedure TfmECPServerMain.FormCloseQuery(Sender: TObject; var CanClose: Boolean);
begin
  if Fclose = False then begin
    CanClose := False;
    Application.Minimize;
  end;
end;

function TfmECPServerMain.GetLocalIP(): string;
const WSVer = $101;
var
  wsaData: TWSAData;
  P: PHostEnt;
  Buf: array [0..127] of Char;
begin
  Result := '';
  if WSAStartup(WSVer, wsaData) = 0 then begin
    if GetHostName(@Buf, 128) = 0 then begin
      P := GetHostByName(@Buf);
      if P <> nil then Result := iNet_ntoa(PInAddr(p^.h_addr_list^)^);
    end;
    WSACleanup;
  end;
end;

procedure TfmECPServerMain.AddConnectionToList(Conn: TIdTCPConnection; Channel: TDSTCPChannel);
begin
  if (Conn <> nil) and (Channel <> nil) and (Channel.ChannelInfo <> nil) and (Channel.ChannelInfo.ClientInfo.IpAddress <> EmptyStr) then
    ListBox1.Items.AddObject(Channel.ChannelInfo.ClientInfo.IpAddress + ':' + Channel.ChannelInfo.ClientInfo.ClientPort, Channel)
  else
    ListBox1.Items.AddObject('Channel is missing proper ClientInfo.', Conn);
end;


end.

