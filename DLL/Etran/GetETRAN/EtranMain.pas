unit EtranMain;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, cxClasses, dxBar, ImgList, cxGraphics, cxPC, cxControls,
  cxContainer, cxEdit, cxLabel, dxGDIPlusClasses, ExtCtrls, DB, DBClient,
  cxStyles, cxCustomData, cxFilter, cxData, cxDataStorage, cxDBData,
  cxGridCustomTableView, cxGridTableView, cxGridDBTableView, cxGridLevel,
  cxGridCustomView, cxGrid, ADODB, cxGridBandedTableView,
  cxGridDBBandedTableView, cxTextEdit, cxImageComboBox, dxmdaset, DateUtils,
  cxProgressBar, ThreadEtran, cxLookAndFeels, cxLookAndFeelPainters, EtrUtils, ComCtrls,
  dxStatusBar, StrUtils, ScktComp, dxSkinsCore, dxSkinBlack, dxSkinBlue,
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
  dxSkinscxPCPainter, dxBarBuiltInMenu, cxNavigator, dxSkinsdxStatusBarPainter,
  dxSkinsdxBarPainter, dxSkinOffice2016Colorful, dxSkinOffice2016Dark,
  dxSkinVisualStudio2013Blue, dxSkinVisualStudio2013Dark,
  dxSkinVisualStudio2013Light, System.ImageList, cxImageList, dxSkinTheBezier,
  dxDateRanges, cxDataControllerConditionalFormattingRulesManagerDialog,
  dxSkinOffice2019Colorful, dxSkinBasic, dxSkinOffice2019Black, IniFiles,
  dxSkinOffice2019DarkGray, dxSkinOffice2019White, dxScrollbarAnnotations,
  WinSock,  IdTCPConnection, Datasnap.DSTCPServerTransport, dxBevel, Vcl.Menus, cxButtons, Soap.InvokeRegistry, System.Net.URLClient, Soap.Rio,
  Soap.SOAPHTTPClient, dxSkinWXI;

type
  TfmEtranMain = class(TForm)
    dxBarManager1: TdxBarManager;
    dxBarManager1Bar1: TdxBar;
    dxBarManager1Bar2: TdxBar;
    dxBarSubItem1: TdxBarSubItem;
    dxBarButton1: TdxBarButton;
    dxBarButton2: TdxBarButton;
    dxBarButton3: TdxBarButton;
    dxBarButton4: TdxBarButton;
    dxBarButton5: TdxBarButton;
    cxPageControl1: TcxPageControl;
    cxImageList_normal: TcxImageList;
    cxImageList_dis: TcxImageList;
    cxImageList_16_dis: TcxImageList;
    cxImageList_16_normal: TcxImageList;
    dxBarSubItem2: TdxBarSubItem;
    dxBarButton10: TdxBarButton;
    dxBarButton12: TdxBarButton;
    dxBarPopupMenu1: TdxBarPopupMenu;
    dxBarButton16: TdxBarButton;
    EtranConnect: TADOConnection;
    cxTabSheet7: TcxTabSheet;
    Panel6: TPanel;
    Panel7: TPanel;
    Label1: TLabel;
    cxGrid5: TcxGrid;
    cxGridDBBandedTableView4: TcxGridDBBandedTableView;
    cxGridDBBandedTableView1monitor_id: TcxGridDBBandedColumn;
    cxGridDBBandedTableView1color: TcxGridDBBandedColumn;
    cxGridDBBandedTableView1monitor_date_end: TcxGridDBBandedColumn;
    cxGridDBBandedTableView1monitor_date_begin: TcxGridDBBandedColumn;
    cxGridDBBandedTableView1monitor_text: TcxGridDBBandedColumn;
    cxGridDBBandedTableView1monitor_status: TcxGridDBBandedColumn;
    cxGridDBBandedTableView1monitor_type: TcxGridDBBandedColumn;
    cxGridLevel4: TcxGridLevel;
    dxStatusBar1: TdxStatusBar;
    DS_Error: TDataSource;
    ClientDS_Error: TClientDataSet;
    ClientDS_Errorerror_id: TAutoIncField;
    ClientDS_Errorerror_date: TDateTimeField;
    ClientDS_Errorerror_message: TStringField;
    DS_Monitor: TDataSource;
    ClientDS_Monitor: TClientDataSet;
    ClientDS_Monitormonitor_id: TAutoIncField;
    ClientDS_Monitorcolor: TIntegerField;
    ClientDS_Monitormonitor_type: TStringField;
    ClientDS_Monitormonitor_date_end: TDateTimeField;
    ClientDS_Monitormonitor_date_begin: TDateTimeField;
    ClientDS_Monitormonitor_text: TStringField;
    ClientDS_Monitormonitor_status: TStringField;
    ClientDS_Monitormonitor_count: TIntegerField;
    cxTabSheet8: TcxTabSheet;
    cxGrid6: TcxGrid;
    cxGridDBBandedTableView5: TcxGridDBBandedTableView;
    cxGridDBBandedTableView2error_id: TcxGridDBBandedColumn;
    cxGridDBBandedTableView2error_date: TcxGridDBBandedColumn;
    cxGridDBBandedTableView2error_cod: TcxGridDBBandedColumn;
    cxGridDBBandedTableView2error_message: TcxGridDBBandedColumn;
    cxGridLevel5: TcxGridLevel;
    ClientDS_Errorerror_name: TStringField;
    cxGridDBBandedTableView2error_name: TcxGridDBBandedColumn;
    Label2: TLabel;
    cxTabSheet1: TcxTabSheet;
    cxTabSheet2: TcxTabSheet;
    cxTabSheet3: TcxTabSheet;
    ClientDS_Errorerror_cod: TStringField;
    ClientDS_Monitormonitor_font_bold: TBooleanField;
    cxGridDBBandedTableView4monitor_font_bold: TcxGridDBBandedColumn;
    Panel1: TPanel;
    Panel2: TPanel;
    cxGrid1: TcxGrid;
    cxGridDBBandedTableView1: TcxGridDBBandedTableView;
    cxGridLevel1: TcxGridLevel;
    cxGrid2: TcxGrid;
    cxGridDBBandedTableView2: TcxGridDBBandedTableView;
    cxGridLevel2: TcxGridLevel;
    cxGrid3: TcxGrid;
    cxGridDBBandedTableView3: TcxGridDBBandedTableView;
    cxGridLevel3: TcxGridLevel;
    Splitter1: TSplitter;
    Splitter2: TSplitter;
    cxGrid4: TcxGrid;
    cxGridDBBandedTableView6: TcxGridDBBandedTableView;
    cxGridLevel6: TcxGridLevel;
    cxGrid7: TcxGrid;
    cxGridDBBandedTableView7: TcxGridDBBandedTableView;
    cxGridLevel7: TcxGridLevel;
    Query_Connect: TADOQuery;
    DS_Connect: TDataSource;
    cxGridDBBandedTableView1connect_id: TcxGridDBBandedColumn;
    cxGridDBBandedTableView1connect_name: TcxGridDBBandedColumn;
    cxGridDBBandedTableView1etran_login: TcxGridDBBandedColumn;
    cxGridDBBandedTableView1read_interval: TcxGridDBBandedColumn;
    cxGridDBBandedTableView1set_load: TcxGridDBBandedColumn;
    cxGridDBBandedTableView1users_name: TcxGridDBBandedColumn;
    cxGridDBBandedTableView1doc_type_name: TcxGridDBBandedColumn;
    cxGridDBBandedTableView1users_group_name: TcxGridDBBandedColumn;
    cxGridDBBandedTableView1period_end: TcxGridDBBandedColumn;
    DS_Period: TDataSource;
    Query_Period: TADOQuery;
    cxGridDBBandedTableView2query_id: TcxGridDBBandedColumn;
    cxGridDBBandedTableView2connect_id: TcxGridDBBandedColumn;
    cxGridDBBandedTableView2period_begin: TcxGridDBBandedColumn;
    cxGridDBBandedTableView2period_end: TcxGridDBBandedColumn;
    cxGridDBBandedTableView2etran_login: TcxGridDBBandedColumn;
    cxGridDBBandedTableView2db_users_name: TcxGridDBBandedColumn;
    cxGridDBBandedTableView2date_enter: TcxGridDBBandedColumn;
    cxGridDBBandedTableView2doc_type_name: TcxGridDBBandedColumn;
    cxGridDBBandedTableView2users_group_name: TcxGridDBBandedColumn;
    Query_Docs: TADOQuery;
    DS_Docs: TDataSource;
    cxGridDBBandedTableView6query_docs_id: TcxGridDBBandedColumn;
    cxGridDBBandedTableView6query_id: TcxGridDBBandedColumn;
    cxGridDBBandedTableView6doc_id: TcxGridDBBandedColumn;
    cxGridDBBandedTableView6etran_login: TcxGridDBBandedColumn;
    cxGridDBBandedTableView6db_users_name: TcxGridDBBandedColumn;
    cxGridDBBandedTableView6users_group_name: TcxGridDBBandedColumn;
    cxGridDBBandedTableView6doc_type_name: TcxGridDBBandedColumn;
    Query_Period_Error: TADOQuery;
    DS_Period_Error: TDataSource;
    Query_Docs_Error: TADOQuery;
    DS_Docs_Error: TDataSource;
    cxGridDBBandedTableView7query_error_id: TcxGridDBBandedColumn;
    cxGridDBBandedTableView7query_id: TcxGridDBBandedColumn;
    cxGridDBBandedTableView7set_server: TcxGridDBBandedColumn;
    cxGridDBBandedTableView7error_date: TcxGridDBBandedColumn;
    cxGridDBBandedTableView7error_cod: TcxGridDBBandedColumn;
    cxGridDBBandedTableView7error_name: TcxGridDBBandedColumn;
    cxGridDBBandedTableView7error_param: TcxGridDBBandedColumn;
    cxGridDBBandedTableView3query_error_id: TcxGridDBBandedColumn;
    cxGridDBBandedTableView3query_id: TcxGridDBBandedColumn;
    cxGridDBBandedTableView3set_server: TcxGridDBBandedColumn;
    cxGridDBBandedTableView3error_date: TcxGridDBBandedColumn;
    cxGridDBBandedTableView3error_cod: TcxGridDBBandedColumn;
    cxGridDBBandedTableView3error_name: TcxGridDBBandedColumn;
    cxGridDBBandedTableView3error_param: TcxGridDBBandedColumn;
    cxTabSheet5: TcxTabSheet;
    Timer1: TTimer;
    TrayIcon1: TTrayIcon;
    cxImageList1: TcxImageList;
    DS_Query: TDataSource;
    ClientDS_Query: TClientDataSet;
    ClientDS_Queryid: TAutoIncField;
    ClientDS_Queryquery_date: TDateTimeField;
    ClientDS_Queryquery_ip: TStringField;
    ClientDS_Queryquery_type: TStringField;
    ClientDS_Queryquery_etran_task: TStringField;
    ClientDS_Queryquery_etran_result: TStringField;
    ClientDS_Queryquery_result: TBooleanField;
    ClientDS_Queryquery_error_message: TStringField;
    ClientDS_Queryquery_duration: TIntegerField;
    cxGrid8: TcxGrid;
    cxGrid1DBBandedTableView1: TcxGridDBBandedTableView;
    cxGrid1DBBandedTableView1id: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1query_date: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1query_ip: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1query_type: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1query_etran_task: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1query_etran_result: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1query_result: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1query_error_message: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1query_duration: TcxGridDBBandedColumn;
    cxGrid1Level1: TcxGridLevel;
    Label11: TLabel;
    ListBox1: TListBox;
    Label3: TLabel;
    Label4: TLabel;
    dxBevel1: TdxBevel;
    Label5: TLabel;
    Bevel1: TBevel;
    Label6: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    Label10: TLabel;
    Label12: TLabel;
    Label9: TLabel;
    Label13: TLabel;
    Label14: TLabel;
    cxButton4: TcxButton;
    cxButton1: TcxButton;
    procedure dxBarButton3Click(Sender: TObject);
    procedure cxPageControl1Change(Sender: TObject);
    procedure dxBarButton2Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure dxBarButton5Click(Sender: TObject);
    procedure cxGridDBBandedTableView4CustomDrawCell(
      Sender: TcxCustomGridTableView; ACanvas: TcxCanvas;
      AViewInfo: TcxGridTableDataCellViewInfo; var ADone: Boolean);
    procedure dxBarButton16Click(Sender: TObject);
    procedure cxGridDBBandedTableView2FocusedRecordChanged(
      Sender: TcxCustomGridTableView; APrevFocusedRecord,
      AFocusedRecord: TcxCustomGridRecord;
      ANewItemRecordFocusingChanged: Boolean);
    procedure cxGridDBBandedTableView6FocusedRecordChanged(
      Sender: TcxCustomGridTableView; APrevFocusedRecord,
      AFocusedRecord: TcxCustomGridRecord;
      ANewItemRecordFocusingChanged: Boolean);
    procedure TrayIcon1Click(Sender: TObject);
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
    procedure Timer1Timer(Sender: TObject);
    procedure cxButton4Click(Sender: TObject);
    procedure cxButton1Click(Sender: TObject);
  private
    procedure MessageReceiver(var msg: TMessage); message MY_MESSAGE;
  public
    Fetran_users        : string;
    Fetran_password     : string;
    Fetran_ecp_users    : string;
    Fetran_ecp_password : string;
    Fetran_ip           : string;
    Fservice_name       : string;
    Fcert_num           : string;
    Fservice_port       : string;

    FImageIndex : integer;
    FClose : boolean;
    ThreadEtran2 : TThreadEtran2;
    Fset_run : boolean;
    Fset_db_connect : boolean;
    Fconnect_string : string;
    procedure SetParam();
    procedure SetPanelCaption(str_status: string; color: TColor);
    procedure RefreshConnect();
    procedure RefreshConnectID(connect_id: integer);
    procedure RefreshButton();
    procedure ConnectChangeStatus(connect_id: integer; set_status: integer);
    procedure ConnectChangeProgress(connect_id: integer; cnt_doc: integer; progress: integer);

    function  GetLocalIP(): string;
    procedure AddConnectionToList(Conn: TIdTCPConnection; Channel: TDSTCPChannel);
    procedure SaveLog(inf_thread_name: string; inf_caption: string; inf_text: string; inf_result_id: integer; inf_cod: string);

  published
    property _GetEtranUsers       : string read Fetran_users;
    property _GetEtranPassword    : string read Fetran_password;
    property _GetEtranECPUsers    : string read Fetran_ecp_users;
    property _GetEtranECPPassword : string read Fetran_ecp_password;
    property _GetEtranIP          : string read Fetran_ip;
    property _GetServiceName      : string read Fservice_name;
    property _GetCertNum          : string read Fcert_num;
    property _GetConnectString    : string read Fconnect_string;
  end;

var
  fmEtranMain: TfmEtranMain;

implementation

uses EtranConnectDB, ECPServerContainer, ECPTestSign, ECPServerUtils, IEtranSysservice;

{$R *.dfm}


procedure TfmEtranMain.SaveLog(inf_thread_name: string; inf_caption: string; inf_text: string; inf_result_id: integer; inf_cod: string);
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

function TfmEtranMain.GetLocalIP(): string;
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

procedure TfmEtranMain.AddConnectionToList(Conn: TIdTCPConnection; Channel: TDSTCPChannel);
begin
  if (Conn <> nil) and (Channel <> nil) and (Channel.ChannelInfo <> nil) and (Channel.ChannelInfo.ClientInfo.IpAddress <> EmptyStr) then
    ListBox1.Items.AddObject(Channel.ChannelInfo.ClientInfo.IpAddress + ':' + Channel.ChannelInfo.ClientInfo.ClientPort, Channel)
  else
    ListBox1.Items.AddObject('Channel is missing proper ClientInfo.', Conn);
end;


procedure TfmEtranMain.FormCloseQuery(Sender: TObject; var CanClose: Boolean);
begin
  if not FClose then begin
    TrayIcon1.Visible := True;
    fmEtranMain.Hide;
    CanClose := False;
  end;
end;

procedure TfmEtranMain.FormCreate(Sender: TObject);
begin
  Fset_run := False;
  Fset_db_connect := False;
  Fconnect_string := '';
  ClientDS_Monitor.CreateDataSet;
  ClientDS_Monitor.LogChanges := False;

  ClientDS_Error.CreateDataSet;
  ClientDS_Error.LogChanges := False;

//  ServerSocket1.Active := True;
end;

procedure TfmEtranMain.SetPanelCaption(str_status: string; color: TColor);
begin

end;

procedure TfmEtranMain.ConnectChangeStatus(connect_id: integer; set_status: integer);
begin
end;

procedure TfmEtranMain.ConnectChangeProgress(connect_id: integer; cnt_doc: integer; progress: integer);
begin
end;

procedure TfmEtranMain.SetParam();
var ini : TIniFile;
begin
  if Fset_db_connect = False then begin
    Caption := '03 Загрузка информации [not-connect]...';
    EtranConnect.Close;
  end else begin
    Caption := '03 Загрузка информации...';
    EtranConnect.ConnectionString := Fconnect_string;
    EtranConnect.Open;

    Query_Connect.Open;
    Query_Period.Open;
    Query_Docs.Open;
//    Query_Period_Error.Open;
//    Query_Docs_Error.Open;
  end;
  RefreshButton();
  RefreshConnect();


    // Загружаем настройки
  ini := TIniFile.Create(ExtractFilePath(Application.ExeName) + 'Config.ini');

  Fetran_users        := ini.ReadString('ETRAN', 'etran_users',        '');
  Fetran_password     := ini.ReadString('ETRAN', 'etran_password',     '');
  Fetran_ecp_users    := ini.ReadString('ETRAN', 'etran_ecp_users',    '');
  Fetran_ecp_password := ini.ReadString('ETRAN', 'etran_ecp_password', '');
  Fetran_ip           := ini.ReadString('ETRAN', 'etran_ip', 'http://10.248.35.14:8092/AppServer/IEtranSysservice');
  Fservice_name       := ini.ReadString('ETRAN', 'service_name', 'RI');
  Fservice_port       := ini.ReadString('ETRAN', 'service_port', '7450');
  Fcert_num           := ini.ReadString('ETRAN', 'cert_num', '');

  Fetran_users        := 'ЛУНКНИКО0756';
  Fetran_password     := 'Ritrans0756&&';
  Fetran_ecp_users    := 'ЛУНКНИКО0756';
  Fetran_ecp_password := 'Ritrans0756&&';
  Fcert_num           := '03 80BF A4BA 99B4 C880 EF11 A219 51E6 5761';
//                          0380 BFA4 BA99 B4C8 80EF 11A2 1951 E657 61

  fmECPServerContainer.DSTCPServerTransport1.Port := StrToInt(Fservice_port);
  fmECPServerContainer.DSServer1.Start;

  Label5.Caption := 'DataSnap Server (IP:' + GetLocalIP + ', Port:' + IntToStr(fmECPServerContainer.DSTCPServerTransport1.Port) + ') ' + Fservice_name;

  ini.Free;

  Label14.Caption := Fetran_users;
  Label13.Caption := Fetran_ecp_users;
  Label9.Caption := Fetran_ip;
  Label12.Caption := Fcert_num;

  ClientDS_Query.CreateDataSet;
  ClientDS_Query.LogChanges := False;
end;


procedure TfmEtranMain.Timer1Timer(Sender: TObject);
begin
  Timer1.Enabled := False;
  if Fset_run = False then begin
    ThreadEtran2 := TThreadEtran2.Create(Fconnect_string);
    Fset_run := True;
    RefreshButton();
    TrayIcon1.Visible := True;
    fmEtranMain.Hide;
  end;
end;

procedure TfmEtranMain.TrayIcon1Click(Sender: TObject);
begin
  TrayIcon1.Visible := False;
  Application.Restore;

  //сбрасываем признак сворачивания
  if fmEtranMain.WindowState = wsMinimized then fmEtranMain.WindowState := wsNormal;

  //Отображаем окно
  fmEtranMain.Visible:=true;

  //Принудительно устанавливаем окно поверх остальных
  SetForegroundWindow(Application.Handle);
end;

procedure TfmEtranMain.RefreshButton();
begin
  dxBarButton2.Enabled  := (not Fset_run);

  dxBarButton3.Enabled  := (not Fset_run) and (Fset_db_connect);
  dxBarButton4.Enabled  := (Fset_run)     and (Fset_db_connect);
end;

procedure TfmEtranMain.RefreshConnectID(connect_id: integer);
begin
end;

procedure TfmEtranMain.RefreshConnect();
begin
end;


procedure TfmEtranMain.cxButton1Click(Sender: TObject);
var   query_xml : string;
            res : boolean;
            ver : string;
      error_cod : string;
  message_error : string;
begin
  try
    try
      query_xml := '<test version="1.0"></test>';

      ShowMessage(fmEtranMain._GetEtranIP);
      ShowMessage(fmEtranMain._GetEtranUsers);
      ShowMessage(fmEtranMain._GetEtranPassword);
      ShowMessage(query_xml);
      ShowMessage(message_error);

      res := GetEtran(fmEtranMain._GetEtranIP, fmEtranMain._GetEtranUsers, fmEtranMain._GetEtranPassword, query_xml, message_error);

      if res = True then begin
        res := CheckEtranXML(query_xml, message_error, error_cod);
        if res = True then begin
           ver := 'Работает. Версия №' + ParserEtranVersion(query_xml);
        end else begin
          ver := 'Ошибка ЭТРАН (1):' + message_error;
        end;
      end else begin
        ver := 'Ошибка ЭТРАН (2):' + message_error;
      end;

    except
      on E: Exception do begin
        res := False;
        message_error := E.Message;
        ver := 'Ошибка ЛИС:' + E.Message;
      end;
    end;
  finally
  end;

  ShowMessage(ver);
end;

procedure TfmEtranMain.cxButton4Click(Sender: TObject);
begin
  fmECPTestSign := TfmECPTestSign.Create(Application);
  fmECPTestSign.ShowModal;
end;

procedure TfmEtranMain.cxGridDBBandedTableView2FocusedRecordChanged(
  Sender: TcxCustomGridTableView; APrevFocusedRecord,
  AFocusedRecord: TcxCustomGridRecord; ANewItemRecordFocusingChanged: Boolean);
begin
  Screen.Cursor := crHourGlass;

  Query_Period_Error.Close;

  if (AFocusedRecord <> nil) then begin
      Query_Period_Error.Parameters.ParamByName('query_id').Value := cxGridDBBandedTableView2query_id.DataBinding.Field.AsInteger;
      Query_Period_Error.Open;
  end;

  Screen.Cursor := crDefault;
end;

procedure TfmEtranMain.cxGridDBBandedTableView4CustomDrawCell(
  Sender: TcxCustomGridTableView; ACanvas: TcxCanvas;
  AViewInfo: TcxGridTableDataCellViewInfo; var ADone: Boolean);
begin
  if (AViewInfo.GridRecord.Values[cxGridDBBandedTableView1color.Index]<>NULL) AND
     (AViewInfo.Item.ID = cxGridDBBandedTableView1monitor_status.Index) then
    ACanvas.Brush.Color := AViewInfo.GridRecord.Values[cxGridDBBandedTableView1color.Index];


  if (AViewInfo.GridRecord.Values[cxGridDBBandedTableView4monitor_font_bold.Index]<>NULL) then
    if (AViewInfo.GridRecord.Values[cxGridDBBandedTableView4monitor_font_bold.Index] = True) then
      ACanvas.Font.Style := [fsBold];



//  if AViewInfo.GridRecord.Selected or AViewInfo.GridRecord.Focused then begin
//    ACanvas.Brush.Color := clNavy;
//    ACanvas.Font.Color := clWhite;
//
//    if AViewInfo.Focused then ACanvas.Brush.Color := clBlue;
//  end;
end;

procedure TfmEtranMain.cxGridDBBandedTableView6FocusedRecordChanged(
  Sender: TcxCustomGridTableView; APrevFocusedRecord,
  AFocusedRecord: TcxCustomGridRecord; ANewItemRecordFocusingChanged: Boolean);
begin
  Screen.Cursor := crHourGlass;


  Query_Docs_Error.Close;

  if (AFocusedRecord <> nil) then begin
      Query_Docs_Error.Parameters.ParamByName('query_id').Value := cxGridDBBandedTableView6query_docs_id.DataBinding.Field.AsInteger;
      Query_Docs_Error.Open;
  end;

  Screen.Cursor := crDefault;
end;

procedure TfmEtranMain.cxPageControl1Change(Sender: TObject);
begin
  RefreshButton();
end;

procedure RefreshQueryGrid(cxGridView: TcxGridDBBandedTableView; field_name: string; values: int64=-9);
begin
  if cxGridView.GetColumnByFieldName(field_name).DataBinding.Field = nil then exit;

  Screen.Cursor := crHourglass;
  if values = -9 then begin
    if cxGridView.GetColumnByFieldName(field_name).DataBinding.Field.IsNull then values := 0
    else  values := StrToInt64(cxGridView.GetColumnByFieldName(field_name).DataBinding.Field.AsString);
  end;
  cxGridView.DataController.DataSource.DataSet.Close;
  cxGridView.DataController.DataSource.DataSet.Open;
  cxGridView.Controller.ClearSelection;
  if cxGridView.DataController.LocateByKey(values) = False then cxGridView.Controller.GoToFirst;;
  if cxGridView.Controller.FocusedRecord <> nil then  cxGridView.Controller.FocusedRecord.Selected := True;
  Screen.Cursor := crDefault;
end;

procedure TfmEtranMain.dxBarButton16Click(Sender: TObject);
begin
  RefreshQueryGrid(cxGridDBBandedTableView1, cxGridDBBandedTableView1.DataController.KeyFieldNames);
  RefreshQueryGrid(cxGridDBBandedTableView2, cxGridDBBandedTableView2.DataController.KeyFieldNames);
  RefreshQueryGrid(cxGridDBBandedTableView3, cxGridDBBandedTableView3.DataController.KeyFieldNames);
  RefreshQueryGrid(cxGridDBBandedTableView6, cxGridDBBandedTableView6.DataController.KeyFieldNames);
  RefreshQueryGrid(cxGridDBBandedTableView7, cxGridDBBandedTableView7.DataController.KeyFieldNames);
end;

procedure TfmEtranMain.dxBarButton2Click(Sender: TObject);
var res : integer;
begin
  fmEtranConnectDB := TfmEtranConnectDB.Create(Application);
  res := fmEtranConnectDB.ShowModal;
  if res = mrOK then begin
    Fconnect_string := fmEtranConnectDB._connect_string;
    Fset_db_connect := fmEtranConnectDB._set_db_connect;
  end;
  SetParam;
end;

procedure TfmEtranMain.dxBarButton3Click(Sender: TObject);
begin
  if TControl(Sender).Tag = 0 then begin
    ThreadEtran2 := TThreadEtran2.Create(Fconnect_string);
//    FThreadCheck := TThreadCheck.Create(Fconnect_string);
    Fset_run := True;
  end;

  if TControl(Sender).Tag = 1 then begin
    ThreadEtran2.Terminate;
//    FThreadCheck.Terminate;
    Fset_run := False;
  end;
  RefreshButton();
end;

procedure TfmEtranMain.dxBarButton5Click(Sender: TObject);
var str_password : string;
begin
  FClose := False;
  if InputQuery('Введите пароль (NKK)', 'Введите "NKK"', str_password) then begin
    if LowerCase(str_password) = 'nkk' then begin
      FClose := True;
      fmECPServerContainer.DSServer1.Stop;
      Close;
    end;
  end;
end;


procedure TfmEtranMain.MessageReceiver(var msg: TMessage);
begin
//  TrayIcon1.Visible := False;
//  Application.Restore;

  //сбрасываем признак сворачивания
  if fmEtranMain.WindowState = wsMinimized then fmEtranMain.WindowState := wsNormal;

  //Отображаем окно
  fmEtranMain.Visible:=true;

  //Принудительно устанавливаем окно поверх остальных
  SetForegroundWindow(Application.Handle);
end;

end.
