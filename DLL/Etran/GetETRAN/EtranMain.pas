unit EtranMain;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, cxClasses, dxBar, ImgList, cxGraphics, cxPC, cxControls,
  cxContainer, cxEdit, cxLabel, dxGDIPlusClasses, ExtCtrls, DB, DBClient,
  cxStyles, cxCustomData, cxFilter, cxData, cxDataStorage, cxDBData,
  cxGridCustomTableView, cxGridTableView, cxGridDBTableView, cxGridLevel,
  cxGridCustomView, cxGrid, ADODB, cxGridBandedTableView, ThreadCheck,
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
  dxSkinOffice2019Colorful, dxSkinBasic, dxSkinOffice2019Black,
  dxSkinOffice2019DarkGray, dxSkinOffice2019White, dxScrollbarAnnotations;

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
    dxBarButton6: TdxBarButton;
    dxBarButton7: TdxBarButton;
    ServerSocket1: TServerSocket;
    cxTabSheet4: TcxTabSheet;
    Memo1: TMemo;
    cxTabSheet5: TcxTabSheet;
    Memo2: TMemo;
    Memo3: TMemo;
    Panel3: TPanel;
    Label4: TLabel;
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
    procedure dxBarButton6Click(Sender: TObject);
    procedure dxBarButton7Click(Sender: TObject);
    procedure ServerSocket1ClientRead(Sender: TObject;
      Socket: TCustomWinSocket);
  private
    procedure MessageReceiver(var msg: TMessage); message MY_MESSAGE;
  public
    ThreadEtran2 : TThreadEtran2;
    FThreadCheck : TThreadCheck;
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
  end;

var
  fmEtranMain: TfmEtranMain;

implementation

uses EtranConnectDB, EtrNSI, SOAP;

{$R *.dfm}

procedure TfmEtranMain.FormCreate(Sender: TObject);
begin
  Fset_run := False;
  Fset_db_connect := False;
  Fconnect_string := '';
  ClientDS_Monitor.CreateDataSet;
  ClientDS_Monitor.LogChanges := False;

  ClientDS_Error.CreateDataSet;
  ClientDS_Error.LogChanges := False;

  ServerSocket1.Active := True;
end;

procedure TfmEtranMain.ServerSocket1ClientRead(Sender: TObject; Socket: TCustomWinSocket);
var
        msg : WideString;
        buf : array [0..412872] of Byte;
    buf_len : integer;
    str_temp, str : string;
    dist : integer;
   ECP, TSP : WideString;
 send_query : WideString;
      s_save : RawByteString;
begin
  buf_len := Socket.ReceiveLength;
  Socket.ReceiveBuf(buf,buf_len);
  buf[buf_len] := 0;
  msg := PAnsiChar(@buf);

//  Memo1.Lines.Clear;
  if LeftStr(msg,4) = 'DIST' then begin
//    Memo1.Lines.Add(msg);
    send_query := '<getCalcDistance version="1.0"><distance><distStationCode value="' + Copy(msg,  6, 6) + '"/></distance><distance><distStationCode value="' + Copy(msg, 13, 6) + '"/></distance><useMod11/></getCalcDistance>';

    GetIEtranSys(False,'http://12.0.0.2:8092/EtranServer/EtranLR.dll/soap').GetBlock('абашин', 'etran_gru', send_query, ECP, TSP);
//    Memo1.Lines.Add(send_query);
    str := send_query;
    dist := 0;
    while Pos('<distMinWay value="',str) <> 0 do begin
      str      := RightStr(str, Length(str)-Pos('<distMinWay value="',str)-18);
      str_temp := LeftStr(str, Pos('"',str)-1);
      dist := dist + StrToIntDef(str_temp,0);
    end;
//    Memo1.Lines.Add(IntToStr(dist));
    msg := IntToStr(dist);
    Socket.SendText(RightStr('0000000000' + IntToStr(Length(msg)),10) + ':' + msg);
  end;


//  if LeftStr(msg,3) = 'ECP' then begin
//    try
//      RichEdit1.Lines.Add('ECP');
//      if RichEdit1.Lines.Count > 10 then RichEdit1.Lines.Clear;

//      msg := RightStr(msg, Length(msg) - 3);
//      FIO_users := Trim(LeftStr(msg, 20));
//      msg := RightStr(msg, Length(msg) - 20);
//
//      connect := TADOConnection.Create(nil);
//      connect.ConnectionString := 'Persist Security Info=True;Provider=SQLOLEDB.1;Password=cjnhfkjubcnbrf;Persist Security Info=True;User ID=sa;Initial Catalog=lis_etran;Data Source=lis;';
//      connect.KeepConnection := False;
//      connect.LoginPrompt := False;
//      connect.Connected := True;
//
//
//      Q := TADOQuery.Create(nil);
//      Q.Connection := connect;
//      Q.SQL.Add('SELECT etran_ecp_xml, users_owner_id FROM etran_ecp inner join etran_global_id on etran_ecp.etran_ecp_id = etran_global_id.global_id WHERE etran_ecp_id = ' + msg);
//      Q.Open;
//      if Q.RecordCount = 0 then begin
//        Q.SQL.Clear;
//        Q.SQL.Add('SELECT	etran_ecp_xml, users_owner_id FROM etran_claim_ecp inner join etran_global_id on etran_claim_ecp.etran_ecp_claim_id = etran_global_id.global_id WHERE etran_ecp_claim_id = ' + msg);
//        Q.Open;
//        set_invoice := False;
//        set_claim   := True;
//      end else begin
//        set_invoice := True;
//        set_claim   := False;
//      end;
//
//      send_query     := Q.FieldByName('etran_ecp_xml').AsString;
//      users_owner_id := Q.FieldByName('users_owner_id').AsInteger;
//      Q.Free;
//
//
//      if users_owner_id = 1 then
//        s_save := #13#10 + FormatDateTime('dd.mm.yyyy hh:nn:ss', Now()) + ';http://12.0.0.2:8092/EtranServer/EtranLR.dll/soap;ВасильевМВ;Ufpghjv7;' + send_query;
//
//      if users_owner_id = 15 then
//        s_save := #13#10 + FormatDateTime('dd.mm.yyyy hh:nn:ss', Now()) + ';http://12.0.0.2:8092/EtranServer/EtranLR.dll/soap;mendel3;NfkfyjdfNU02;' + send_query;
//
//      if not FileExists('c:\ETRAN_ECP_LOG\log_ecp' + FormatDateTime('yyyymmdd', Now()) + '.csv') then
//        log_file := TFileStream.Create('c:\ETRAN_ECP_LOG\log_ecp' + FormatDateTime('yyyymmdd', Now()) + '.csv', fmCreate)
//      else
//        log_file := TFileStream.Create('c:\ETRAN_ECP_LOG\log_ecp' + FormatDateTime('yyyymmdd', Now()) + '.csv', fmOpenReadWrite);
//
//      log_file.Seek(0, soFromEnd);
//      log_file.WriteBuffer(Pointer(s_save)^, Length(s_save));
//      log_file.Free;
//
//
//      if users_owner_id = 1 then
//        GetIEtranSys(False,'http://12.0.0.2:8092/EtranServer/EtranLR.dll/soap').GetBlock('ВасильевМВ', 'Ufpghjv6', send_query, ECP, TSP);
//
//      if users_owner_id = 15 then
//        GetIEtranSys(False,'http://12.0.0.2:8092/EtranServer/EtranLR.dll/soap').GetBlock('mendel3', 'NfkfyjdfNU02', send_query, ECP, TSP);
//
//      s_save := ';Ok';
//      if not FileExists('c:\ETRAN_ECP_LOG\log_ecp' + FormatDateTime('yyyymmdd', Now()) + '.csv') then
//        log_file := TFileStream.Create('c:\ETRAN_ECP_LOG\log_ecp' + FormatDateTime('yyyymmdd', Now()) + '.csv', fmCreate)
//      else
//        log_file := TFileStream.Create('c:\ETRAN_ECP_LOG\log_ecp' + FormatDateTime('yyyymmdd', Now()) + '.csv', fmOpenReadWrite);
//
//      log_file.Seek(0, soFromEnd);
//      log_file.WriteBuffer(Pointer(s_save)^, Length(s_save));
//      log_file.Free;
//
//      send_query := ReplaceStr(send_query, '&#', '');
//
//      if set_invoice = True then begin
//        sp_etran_ecp_modify := TADOStoredProc.Create(nil);
//        sp_etran_ecp_modify.Connection := connect;
//        sp_etran_ecp_modify.ProcedureName := 'sp_etran_ecp_modify';
//        sp_etran_ecp_modify.Parameters.Refresh;
//        sp_etran_ecp_modify.Parameters.ParamByName('@etran_ecp_id').Value := StrToInt(msg);
//        sp_etran_ecp_modify.Parameters.ParamByName('@type_action' ).Value := 3;
//        sp_etran_ecp_modify.Parameters.ParamByName('@date_send'   ).Value := Now;
//        sp_etran_ecp_modify.Parameters.ParamByName('@etran_ecp_reply_xml').Value := send_query;
//        sp_etran_ecp_modify.Parameters.ParamByName('@FIO_users_send').Value := FIO_users;
//        sp_etran_ecp_modify.ExecProc;
//      end;
//
//      if set_claim = True then begin
//        sp_etran_ecp_modify := TADOStoredProc.Create(nil);
//        sp_etran_ecp_modify.Connection := connect;
//        sp_etran_ecp_modify.ProcedureName := 'sp_etran_ecp_claim_modify';
//        sp_etran_ecp_modify.Parameters.Refresh;
//        sp_etran_ecp_modify.Parameters.ParamByName('@etran_ecp_claim_id').Value := StrToInt(msg);
//        sp_etran_ecp_modify.Parameters.ParamByName('@type_action' ).Value := 3;
//        sp_etran_ecp_modify.Parameters.ParamByName('@date_send'   ).Value := Now;
//        sp_etran_ecp_modify.Parameters.ParamByName('@etran_ecp_reply_xml').Value := send_query;
//        sp_etran_ecp_modify.Parameters.ParamByName('@FIO_users_send').Value := FIO_users;
//        sp_etran_ecp_modify.ExecProc;
//      end;
//
//      msg := 'ok';
//      connect.Free;
//      sp_etran_ecp_modify.Free;
//    except
//      on E: Exception do begin
//        msg := E.Message;
//        connect.Free;
//        Q.Free;
//      end;
//    end;
//  end else begin
//    try
//      RichEdit1.Lines.Add('NoECP');
//      if RichEdit1.Lines.Count > 10 then RichEdit1.Lines.Clear;
//
//      s_save := #13#10 + FormatDateTime('dd.mm.yyyy hh:nn:ss', Now()) + ';http://12.0.0.2:8092/EtranServer/EtranLR.dll/soap;абашинu;etran_sfh;' + msg;
//      if not FileExists('c:\ETRAN_ECP_LOG\log_ecp' + FormatDateTime('yyyymmdd', Now()) + '.csv') then
//        log_file := TFileStream.Create('c:\ETRAN_ECP_LOG\log_ecp' + FormatDateTime('yyyymmdd', Now()) + '.csv', fmCreate)
//      else
//        log_file := TFileStream.Create('c:\ETRAN_ECP_LOG\log_ecp' + FormatDateTime('yyyymmdd', Now()) + '.csv', fmOpenReadWrite);
//
//      log_file.Seek(0, soFromEnd);
//      log_file.WriteBuffer(Pointer(s_save)^, Length(s_save));
//      log_file.Free;
//
//      GetIEtranSys(False,'http://12.0.0.2:8092/EtranServer/EtranLR.dll/soap').GetBlock('абашин', 'etran_sfh', msg, ECP, TSP);
//
//      s_save := ';Ok';
//      if not FileExists('c:\ETRAN_ECP_LOG\log_ecp' + FormatDateTime('yyyymmdd', Now()) + '.csv') then
//        log_file := TFileStream.Create('c:\ETRAN_ECP_LOG\log_ecp' + FormatDateTime('yyyymmdd', Now()) + '.csv', fmCreate)
//      else
//        log_file := TFileStream.Create('c:\ETRAN_ECP_LOG\log_ecp' + FormatDateTime('yyyymmdd', Now()) + '.csv', fmOpenReadWrite);
//
//      log_file.Seek(0, soFromEnd);
//      log_file.WriteBuffer(Pointer(s_save)^, Length(s_save));
//      log_file.Free;
//
//      msg := ReplaceStr(msg    ,'&#','');
//    except
//      on E: Exception do begin
//        msg := E.Message;
//      end;
//    end;
//  end;

//  Socket.SendText(RightStr('0000000000' + IntToStr(Length(msg)),10) + ':' + msg);
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
begin
  Close;
end;


procedure TfmEtranMain.dxBarButton6Click(Sender: TObject);
begin
  fmEtrNSI := TfmEtrNSI.Create(Application);
  fmEtrNSI.ShowModal;
end;

procedure TfmEtranMain.dxBarButton7Click(Sender: TObject);
var connect : TADOConnection;
    Q , Q2 : TADOQuery;
    ECP, TSP : WideString;
    send_query : WideString;
    d1,d2 : TDateTime;
begin
  connect := TADOConnection.Create(nil);
  connect.ConnectionString := 'Persist Security Info=True;Provider=SQLOLEDB.1;Password=cjnhfkjubcnbrf;Persist Security Info=True;User ID=sa;Initial Catalog=xxx;Data Source=srv-lis;';
  connect.KeepConnection := False;
  connect.LoginPrompt := False;

  Q := TADOQuery.Create(nil);
  Q.Connection := connect;

  Q2 := TADOQuery.Create(nil);
  Q2.Connection := connect;

  Q.SQL.Add('SELECT * FROM _ETRAN_DOCS WHERE data_xml is null ORDER BY id');
  Q.Open;
  while not Q.Eof do begin

//    d1 := Q.FieldByName('period_begin').AsDateTime;
//    d2 := Q.FieldByName('period_end').AsDateTime;
//
//    d1 := IncMinute(d1, -2);
//    d2 := IncMinute(d2,  2);
//
//    send_query := '<invoiceStatus version="1.0"><fromDate value="' + FormatDateTime('dd.mm.yyyy hh:nn', d1) + '"/><toDate value="' + FormatDateTime('dd.mm.yyyy hh:nn', d2) + '"/><useSender/><usePayer/><useRecip/><useOwnerCar/><useAll/></invoiceStatus>';
//
//    GetIEtranSys(False,'http://11.0.0.4:8092/EtranServer/EtranLR.dll/soap').GetBlock('абашин', 'etran_sfh', send_query, ECP, TSP);
//
//
//    Q2.SQL.Clear;
//    Q2.SQL.Add('UPDATE _etran_query');
//    Q2.SQL.Add('SET data_xml = ''' + send_query + '''');
//    Q2.SQL.Add('WHERE id = ' + Q.FieldByName('id').AsString);
//    Q2.ExecSQL;



    send_query := '<getInvoice version="1.0"><invoiceID value="' + Q.FieldByName('doc_id').AsString + '"/><useMod11/></getInvoice>';
    GetIEtranSys(False,'http://11.0.0.4:8092/EtranServer/EtranLR.dll/soap').GetBlock('абашин', 'etran_gru', send_query, ECP, TSP);


    send_query := ReplaceStr(send_query, '&#1', '');
    send_query := ReplaceStr(send_query, '&#2', '');
    send_query := ReplaceStr(send_query, '&#3', '');
    send_query := ReplaceStr(send_query, '&#4', '');
    send_query := ReplaceStr(send_query, '&#5', '');
    send_query := ReplaceStr(send_query, '&#6', '');
    send_query := ReplaceStr(send_query, '&#7', '');
    send_query := ReplaceStr(send_query, '&#8', '');
    send_query := ReplaceStr(send_query, '&#9', '');



    Q2.SQL.Clear;
    Q2.SQL.Add('UPDATE _ETRAN_DOCS');
    Q2.SQL.Add('SET data_xml = ''' + send_query + '''');
    Q2.SQL.Add('WHERE id = ' + Q.FieldByName('id').AsString);
    Q2.ExecSQL;



    Q.Next;
  end;


  Q2.Free;
  Q.Free;
  connect.Free;


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
