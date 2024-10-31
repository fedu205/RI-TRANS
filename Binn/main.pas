unit main;

interface

uses
  RailTariff_TLB, Windows, Messages, SysUtils, Classes, Vcl.Graphics, Vcl.Controls, Vcl.Forms, Default,
  Vcl.Menus, Vcl.ToolWin, Vcl.ComCtrls, Vcl.ExtCtrls, Vcl.StdCtrls, Vcl.Dialogs, Variants,
  Vcl.Buttons, System.Win.Registry, System.Win.ScktComp, Vcl.DBCtrls, ADOdb, DB, Math,  Vcl.StdActns, cxGraphics,  cxStyles, Vcl.ImgList, DBClient,
  DateUtils, ADOInt, dxBar, cxControls, dxStatusBar, cxClasses, Vcl.OleServer, cxLookAndFeels, cxLookAndFeelPainters, cxContainer, cxEdit, cxLabel,
  cxLocalization, cxPropertiesStore, cxGridDBBandedTableView, cxCustomData, cxFilter, cxData, cxDataStorage, cxDBData, cxGridLevel, cxGridCustomView,
  cxGridCustomTableView, cxGridTableView, cxGridDBTableView, cxGrid, dxSkinsForm, dxSkinsCore, dxSkinBlack, dxSkinBlue, dxSkinBlueprint, dxSkinCaramel,
  dxSkinCoffee, dxSkinDarkRoom, dxSkinDarkSide, dxSkinDevExpressDarkStyle, dxSkinDevExpressStyle, dxSkinFoggy, dxSkinGlassOceans, dxSkinHighContrast,
  dxSkiniMaginary, dxSkinLilian, dxSkinLiquidSky, dxSkinLondonLiquidSky, dxSkinMcSkin, dxSkinMetropolis, dxSkinMetropolisDark, dxSkinMoneyTwins,
  dxSkinOffice2007Black, dxSkinOffice2007Blue, dxSkinOffice2007Green, dxSkinOffice2007Pink, dxSkinOffice2007Silver, dxSkinOffice2010Black,
  dxSkinOffice2010Blue, dxSkinOffice2010Silver, dxSkinOffice2013DarkGray, dxSkinOffice2013LightGray, dxSkinOffice2013White, dxSkinPumpkin, dxSkinSeven,
  dxSkinSevenClassic, dxSkinSharp, dxSkinSharpPlus, dxSkinSilver, dxSkinSpringTime, dxSkinStardust, dxSkinSummer2008, dxSkinTheAsphaltWorld,
  dxSkinsDefaultPainters, dxSkinValentine, dxSkinVS2010, dxSkinWhiteprint, dxSkinXmas2008Blue, dxSkinsdxStatusBarPainter, dxSkinsdxBarPainter,
  dxSkinOffice2016Colorful, dxSkinOffice2016Dark, dxSkinVisualStudio2013Blue, dxSkinVisualStudio2013Dark, dxSkinVisualStudio2013Light, System.ImageList,
  dxSkinscxPCPainter, cxImageList, StrUtils, TypInfo, dxSkinTheBezier, Winapi.ShlObj, Winapi.ActiveX, dxFilterPopupWindow, dxFilterValueContainer,
  dxSkinOffice2019Colorful, dxRibbonSkins, dxRibbonCustomizationForm, dxRibbon, cxPC, dxBarBuiltInMenu, dxTabbedMDI, dxRibbonForm,
  dxSkinBasic, dxSkinOffice2019Black, dxSkinOffice2019DarkGray,
  dxSkinOffice2019White, dxCore, dxSkinWXI;

type
  TfmMain = class(TdxRibbonForm)
    cxImageList_24: TcxImageList;
    cxImageList_16: TcxImageList;
    cxStyleRepository1: TcxStyleRepository;
    cxStyle_Bold: TcxStyle;
    cxStyle_AgreeFactInc_Between: TcxStyle;
    cxStyle_AgreeFactInc_Sum: TcxStyle;
    cxStyle_AgreeFactInc_AddProfit: TcxStyle;
    cxStyle_ClientFrahtCard_Rashod: TcxStyle;
    cxStyle_ClientFrahtCard_Profitt: TcxStyle;
    cxStyle_AgreeFact: TcxStyle;
    cxStyle_Agree_bargain_cod: TcxStyle;
    cxStyle_Orders_cod: TcxStyle;
    cxStyle_BoldBlue: TcxStyle;
    Timer1: TTimer;
    cxStyle_ClientFrahtCard_Rashod_RUB: TcxStyle;
    cxStyle_BalanceOrders: TcxStyle;
    cxStyle_Comiss_USD: TcxStyle;
    cxStyle_Comiss_RUB: TcxStyle;
    dxStatusBar1: TdxStatusBar;
    Lis: TADOConnection;
    cxImageList1: TcxImageList;
    dxBarManager1: TdxBarManager;
    dxBarManager1Bar1: TdxBar;
    dxBarSubItem1: TdxBarSubItem;
    dxBarSubItem2: TdxBarSubItem;
    dxBarSubItem3: TdxBarSubItem;
    dxBarSubItem7: TdxBarSubItem;
    dxBarSubItem5: TdxBarSubItem;
    dxBarSubItem6: TdxBarSubItem;
    dxBarSubItem10: TdxBarSubItem;
    dxBarSubItem4: TdxBarSubItem;
    dxBarButton2: TdxBarButton;
    dxBarButton4: TdxBarButton;
    dxBarButton1: TdxBarButton;
    dxBarButton5: TdxBarButton;
    dxBarButton3: TdxBarButton;
    dxBarButton6: TdxBarButton;
    dxBarButton7: TdxBarButton;
    dxBarButton8: TdxBarButton;
    dxBarButton10: TdxBarButton;
    dxBarButton17: TdxBarButton;
    dxBarButton11: TdxBarButton;
    dxBarButton23: TdxBarButton;
    dxBarButton13: TdxBarButton;
    dxBarButton14: TdxBarButton;
    dxBarButton34: TdxBarButton;
    dxBarButton25: TdxBarButton;
    dxBarButton28: TdxBarButton;
    dxBarButton30: TdxBarButton;
    dxBarButton35: TdxBarButton;
    dxBarButton36: TdxBarButton;
    dxBarButton22: TdxBarButton;
    dxBarButton18: TdxBarButton;
    dxBarButton19: TdxBarButton;
    dxBarButton20: TdxBarButton;
    dxBarButton21: TdxBarButton;
    dxBarButton37: TdxBarButton;
    dxBarSubItem11: TdxBarSubItem;
    dxBarButton39: TdxBarButton;
    dxBarButton40: TdxBarButton;
    dxBarButton41: TdxBarButton;
    dxBarButton42: TdxBarButton;
    dxBarSubItem12: TdxBarSubItem;
    dxBarButton43: TdxBarButton;
    dxBarButton44: TdxBarButton;
    dxBarButton45: TdxBarButton;
    dxBarSubItem13: TdxBarSubItem;
    dxBarButton46: TdxBarButton;
    dxBarButton47: TdxBarButton;
    dxBarButton48: TdxBarButton;
    dxBarButton49: TdxBarButton;
    dxBarSeparator1: TdxBarSeparator;
    dxBarSeparator2: TdxBarSeparator;
    dxBarSeparator3: TdxBarSeparator;
    dxBarSeparator4: TdxBarSeparator;
    dxBarButton51: TdxBarButton;
    dxBarButton52: TdxBarButton;
    dxBarSeparator5: TdxBarSeparator;
    dxBarSeparator6: TdxBarSeparator;
    dxBarSubItem14: TdxBarSubItem;
    dxBarButton55: TdxBarButton;
    dxBarSubItem15: TdxBarSubItem;
    dxBarButton58: TdxBarButton;
    cxStyle_Sum_USD: TcxStyle;
    cxStyle_Sum_RUB: TcxStyle;
    cxStyle_Sum_EUR: TcxStyle;
    cxStyle_Sum_CHF: TcxStyle;
    cxStyle_Sum_Client: TcxStyle;
    cxStyle_Sum_Agent: TcxStyle;
    cxStyle_Sum_Comiss: TcxStyle;
    dxBarButton59: TdxBarButton;
    cxStyle_ID: TcxStyle;
    cxStyle_Docs_Status: TcxStyle;
    dxBarButton61: TdxBarButton;
    Label1: TLabel;
    cxLocalizer1: TcxLocalizer;
    dxBarButton63: TdxBarButton;
    dxBarButton64: TdxBarButton;
    dxBarButton65: TdxBarButton;
    dxBarButton66: TdxBarButton;
    dxBarButton67: TdxBarButton;
    dxBarButton68: TdxBarButton;
    dxBarButton70: TdxBarButton;
    dxBarButton69: TdxBarButton;
    dxBarButton72: TdxBarButton;
    dxBarButton74: TdxBarButton;
    dxBarButton75: TdxBarButton;
    dxBarButton77: TdxBarButton;
    dxBarButton78: TdxBarButton;
    dxBarButton79: TdxBarButton;
    dxBarButton80: TdxBarButton;
    dxBarButton81: TdxBarButton;
    dxBarButton82: TdxBarButton;
    dxBarButton83: TdxBarButton;
    dxBarButton84: TdxBarButton;
    dxBarButton85: TdxBarButton;
    dxBarSubItem17: TdxBarSubItem;
    dxBarButton86: TdxBarButton;
    dxBarButton87: TdxBarButton;
    dxBarButton88: TdxBarButton;
    dxBarButton89: TdxBarButton;
    dxBarButton91: TdxBarButton;
    dxBarButton93: TdxBarButton;
    dxBarButton94: TdxBarButton;
    dxBarButton92: TdxBarButton;
    dxBarButton95: TdxBarButton;
    dxBarButton96: TdxBarButton;
    dxBarButton98: TdxBarButton;
    dxBarButton101: TdxBarButton;
    dxBarButton27: TdxBarButton;
    dxBarButton38: TdxBarButton;
    dxBarButton106: TdxBarButton;
    dxBarSubItem21: TdxBarSubItem;
    dxBarButton107: TdxBarButton;
    dxBarButton108: TdxBarButton;
    dxBarButton109: TdxBarButton;
    dxBarButton110: TdxBarButton;
    dxBarButton111: TdxBarButton;
    dxBarButton112: TdxBarButton;
    dxBarButton113: TdxBarButton;
    dxBarButton114: TdxBarButton;
    dxBarButton115: TdxBarButton;
    dxBarButton116: TdxBarButton;
    dxBarButton117: TdxBarButton;
    dxBarButton118: TdxBarButton;
    dxBarButton29: TdxBarButton;
    dxBarButton104: TdxBarButton;
    dxBarSubItem8: TdxBarSubItem;
    dxBarSubItem19: TdxBarSubItem;
    dxBarButton119: TdxBarButton;
    dxBarButton120: TdxBarButton;
    dxBarButton121: TdxBarButton;
    dxBarButton62: TdxBarButton;
    dxBarSubItem20: TdxBarSubItem;
    dxBarButton123: TdxBarButton;
    cxStyle1: TcxStyle;
    dxBarButton125: TdxBarButton;
    cxStyle_BlueBold: TcxStyle;
    dxBarButton127: TdxBarButton;
    dxBarSubItem22: TdxBarSubItem;
    dxBarButton128: TdxBarButton;
    dxBarButton129: TdxBarButton;
    dxBarButton134: TdxBarButton;
    dxBarButton137: TdxBarButton;
    dxBarButton139: TdxBarButton;
    dxBarButton90: TdxBarButton;
    dxBarButton105: TdxBarButton;
    dxBarButton124: TdxBarButton;
    dxBarButton141: TdxBarButton;
    dxBarButton24: TdxBarButton;
    dxBarButton142: TdxBarButton;
    dxBarButton146: TdxBarButton;
    dxBarButton147: TdxBarButton;
    dxBarButton148: TdxBarButton;
    dxBarButton152: TdxBarButton;
    dxBarButton155: TdxBarButton;
    dxBarButton71: TdxBarButton;
    dxBarButton153: TdxBarButton;
    dxBarButton159: TdxBarButton;
    dxBarButton160: TdxBarButton;
    dxBarButton163: TdxBarButton;
    dxBarButton50: TdxBarButton;
    dxBarSubItem23: TdxBarSubItem;
    dxBarButton140: TdxBarButton;
    dxBarButton168: TdxBarButton;
    dxBarButton169: TdxBarButton;
    dxBarButton170: TdxBarButton;
    dxBarButton171: TdxBarButton;
    dxBarButton172: TdxBarButton;
    dxBarButton173: TdxBarButton;
    dxBarButton174: TdxBarButton;
    dxBarButton175: TdxBarButton;
    dxBarButton167: TdxBarButton;
    dxBarButton176: TdxBarButton;
    dxBarButton177: TdxBarButton;
    dxBarButton97: TdxBarButton;
    dxBarButton154: TdxBarButton;
    dxBarButton131: TdxBarButton;
    dxRibbon1Tab1: TdxRibbonTab;
    dxRibbon1: TdxRibbon;
    cxImageList_32: TcxImageList;
    dxBarManager1Bar2: TdxBar;
    dxBarLargeButton1: TdxBarLargeButton;
    dxBarSubItem26: TdxBarSubItem;
    dxBarButton179: TdxBarButton;
    dxBarButton180: TdxBarButton;
    dxBarLargeButton2: TdxBarLargeButton;
    dxBarSubItem25: TdxBarSubItem;
    dxBarManager1Bar3: TdxBar;
    dxBarSubItem27: TdxBarSubItem;
    dxBarSubItem30: TdxBarSubItem;
    dxBarManager1Bar4: TdxBar;
    dxBarManager1Bar5: TdxBar;
    dxBarSubItem31: TdxBarSubItem;
    dxTabbedMDIManager1: TdxTabbedMDIManager;
    dxBarSubItem34: TdxBarSubItem;
    dxBarSubItem35: TdxBarSubItem;
    dxBarLargeButton3: TdxBarLargeButton;
    dxBarLargeButton4: TdxBarLargeButton;
    dxBarSubItem18: TdxBarSubItem;
    dxBarLargeButton5: TdxBarLargeButton;
    dxBarLargeButton6: TdxBarLargeButton;
    dxBarButton9: TdxBarButton;
    dxBarButton12: TdxBarButton;
    dxBarLargeButton7: TdxBarLargeButton;
    dxBarButton54: TdxBarButton;
    dxBarSubItem9: TdxBarSubItem;
    dxBarButton16: TdxBarButton;
    dxBarButton31: TdxBarButton;
    dxBarButton32: TdxBarButton;
    cxStyle_ColorWhite: TcxStyle;
    dxBarButton33: TdxBarButton;
    cxLookAndFeelController1: TcxLookAndFeelController;
    dxSkinController1: TdxSkinController;
    dxBarButton53: TdxBarButton;
    procedure dxBarButton61Click(Sender: TObject);
    procedure dxBarButton58Click(Sender: TObject);
    procedure dxBarSubItem15Popup(Sender: TObject);
    procedure dxBarButton23Click(Sender: TObject);
    procedure dxBarSubItem4Popup(Sender: TObject);
    procedure dxBarButton22Click(Sender: TObject);
    procedure dxBarButton18Click(Sender: TObject);
    procedure dxBarButton21Click(Sender: TObject);
    procedure dxBarButton20Click(Sender: TObject);
    procedure dxBarButton19Click(Sender: TObject);
    procedure dxBarButton6Click(Sender: TObject);
    procedure dxBarButton49Click(Sender: TObject);
    procedure dxBarButton48Click(Sender: TObject);
    procedure dxBarButton46Click(Sender: TObject);
    procedure dxBarButton39Click(Sender: TObject);
    procedure dxBarButton43Click(Sender: TObject);
    procedure dxBarButton42Click(Sender: TObject);
    procedure dxBarButton28Click(Sender: TObject);
    procedure dxBarButton34Click(Sender: TObject);
    procedure dxBarButton14Click(Sender: TObject);
    procedure dxBarButton13Click(Sender: TObject);
    procedure dxBarButton36Click(Sender: TObject);
    procedure dxBarButton35Click(Sender: TObject);
    procedure dxBarButton11Click(Sender: TObject);
    procedure dxBarButton17Click(Sender: TObject);
    procedure dxBarButton10Click(Sender: TObject);
    procedure dxBarButton8Click(Sender: TObject);
    procedure dxBarButton3Click(Sender: TObject);
    procedure dxBarButton52Click(Sender: TObject);
    procedure dxBarButton1Click(Sender: TObject);
    procedure dxBarButton2Click(Sender: TObject);
    procedure LisExecuteComplete(Connection: TADOConnection; RecordsAffected: Integer; const Error: Error; var EventStatus: TEventStatus; const Command: _Command; const Recordset: _Recordset);
    procedure Timer1Timer(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure HelpExecute(Sender: TObject);
    procedure TopicExecute(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure dxBarButton63Click(Sender: TObject);
    procedure dxBarButton65Click(Sender: TObject);
    procedure dxBarButton66Click(Sender: TObject);
    procedure dxBarButton67Click(Sender: TObject);
    procedure dxBarButton68Click(Sender: TObject);
    procedure dxBarButton70Click(Sender: TObject);
    procedure dxBarButton69Click(Sender: TObject);
    procedure dxBarButton7Click(Sender: TObject);
    procedure dxBarButton74Click(Sender: TObject);
    procedure dxBarButton75Click(Sender: TObject);
    procedure dxBarButton45Click(Sender: TObject);
    procedure dxBarButton77Click(Sender: TObject);
    procedure dxBarButton78Click(Sender: TObject);
    procedure dxBarButton79Click(Sender: TObject);
    procedure dxBarButton81Click(Sender: TObject);
    procedure dxBarButton82Click(Sender: TObject);
    procedure dxBarButton83Click(Sender: TObject);
    procedure dxBarButton84Click(Sender: TObject);
    procedure dxBarButton85Click(Sender: TObject);
    procedure dxBarButton86Click(Sender: TObject);
    procedure dxBarButton87Click(Sender: TObject);
    procedure dxBarButton88Click(Sender: TObject);
    procedure dxBarButton89Click(Sender: TObject);
    procedure dxBarButton91Click(Sender: TObject);
    procedure dxBarButton93Click(Sender: TObject);
    procedure dxBarButton94Click(Sender: TObject);
    procedure dxBarButton92Click(Sender: TObject);
    procedure dxBarButton95Click(Sender: TObject);
    procedure dxBarButton96Click(Sender: TObject);
    procedure dxBarButton27Click(Sender: TObject);
    procedure dxBarButton38Click(Sender: TObject);
    procedure dxBarButton106Click(Sender: TObject);
    procedure dxBarButton107Click(Sender: TObject);
    procedure dxBarButton29Click(Sender: TObject);
    procedure dxBarButton104Click(Sender: TObject);
    procedure dxBarButton119Click(Sender: TObject);
    procedure dxBarButton121Click(Sender: TObject);
    procedure dxBarButton25Click(Sender: TObject);
    procedure dxBarButton123Click(Sender: TObject);
    procedure dxBarButton125Click(Sender: TObject);
    procedure dxBarButton127Click(Sender: TObject);
    procedure dxBarButton129Click(Sender: TObject);
    procedure dxBarButton134Click(Sender: TObject);
    procedure dxBarButton137Click(Sender: TObject);
    procedure dxBarButton139Click(Sender: TObject);
    procedure dxBarButton105Click(Sender: TObject);
    procedure dxBarButton124Click(Sender: TObject);
    procedure dxBarButton141Click(Sender: TObject);
    procedure dxBarButton140Click(Sender: TObject);
    procedure dxBarButton144Click(Sender: TObject);
    procedure dxBarButton147Click(Sender: TObject);
    procedure dxBarButton148Click(Sender: TObject);
    procedure dxBarButton155Click(Sender: TObject);
    procedure dxBarButton71Click(Sender: TObject);
    procedure dxBarButton153Click(Sender: TObject);
    procedure dxBarButton160Click(Sender: TObject);
    procedure dxBarButton163Click(Sender: TObject);
    procedure dxBarButton50Click(Sender: TObject);
    procedure dxBarButton167Click(Sender: TObject);
    procedure dxBarButton176Click(Sender: TObject);
    procedure dxBarButton177Click(Sender: TObject);
    procedure dxBarButton131Click(Sender: TObject);
    procedure dxBarLargeButton1Click(Sender: TObject);
    procedure dxBarLargeButton2Click(Sender: TObject);
    procedure dxBarLargeButton4Click(Sender: TObject);
    procedure dxBarLargeButton3Click(Sender: TObject);
    procedure dxBarButton30Click(Sender: TObject);
    procedure dxBarLargeButton5Click(Sender: TObject);
    procedure dxBarLargeButton6Click(Sender: TObject);
    procedure dxBarLargeButton7Click(Sender: TObject);
    procedure dxBarButton54Click(Sender: TObject);
    procedure dxBarButton16Click(Sender: TObject);
    procedure dxBarButton33Click(Sender: TObject);
    procedure dxBarButton53Click(Sender: TObject);
  private
    Reg: TRegistry;
    procedure DisplayHint(Sender:TObject);
    procedure ActiveMDIChildWindow(Sender:TObject);
    procedure GetAllExchange();
  public
//    function  GetVersion : string;
    procedure SetPar(u : Variant);
    procedure SetGlobalId(global_id: integer);
    procedure ResultConnection(flag:boolean; module_name: string; users_id : integer);
  published

  end;



var
  fmMain : TfmMain;
  usr_pwd : PUser_pwd;
  usr_pwd_docs : PUser_pwd;

implementation

uses Contract, Fact, Other, Raznoe, ComObj, FactInc, ClientInvoice, FirmBalance, Pay, Firm, InvoiceScore, FactTrack, Period, Filter,
    LoadFact, Acts, OrdersAgree, FactTech, PlanClient, ZFTOScore, OrdersPay, FactSum, BargainListAdd,
    UsersActive, TariffSupportFunctions, Stat, Budget, VagonArenda, TrafficManagment,  Agree2, ClientFrahtCard2,  EffectSPS;

{$R *.DFM}

procedure TfmMain.FormCreate(Sender: TObject);
var     h : THandle;
        i : integer;
  str_ver : string;
begin
  Screen.Cursor := crHourglass;

  LisDocsHandle := 0;

  cxLocalizer1.Locale := 1049;
  h := LoadCursorFromFile('1.ani');

  new(usr_pwd);
  new(usr_pwd_docs);

  Application.OnHint := DisplayHint;
  Screen.Cursors[-11] := h;

  str_ver := GetVersion;
  dxStatusBar1.Panels[2].Text := 'Версия: ' + LeftStr(str_ver, 1) + '.' + RightStr(str_ver, 4) + ' от ' + FormatDateTime('dd.mm.yy hh:nn', FileDateToDateTime(FileAge(GetModuleName(HInstance))));;

  Reg := TRegistry.Create;
  Reg.RootKey := HKEY_CURRENT_USER;
  Reg.OpenKey('\Software\LIS1\', True);


  dxBarButton131.Down := StoreRegistryCheck(rgLoad, '\Software\Lis1\Main_Check', 'NEW_EXCEL',  False);
  dxBarButton131Click(nil);


  WindowState := wsMaximized;
  Screen.Cursor := crDefault;
end;

procedure GetShellLinkInfo(const LinkFile: WideString; var SLI: TShellLinkInfo);
var
  SL: IShellLink;
  PF: IPersistFile;
  FindData: TWin32FindData;
  AStr: array[0..MAX_PATH] of char;
begin
  try
    OleCheck(CoCreateInstance(CLSID_ShellLink, nil, CLSCTX_INPROC_SERVER, IShellLink, SL));
    PF := SL as IPersistFile;
    OleCheck(PF.Load(PWideChar(LinkFile), STGM_READ));
    OleCheck(SL.Resolve(0, SLR_ANY_MATCH or SLR_NO_UI));
    with SLI do
    begin
      OleCheck(SL.GetPath(AStr, MAX_PATH, FindData, SLGP_SHORTPATH));
      PathName := AStr;
      OleCheck(SL.GetArguments(AStr, MAX_PATH));
      Arguments := AStr;
      OleCheck(SL.GetDescription(AStr, MAX_PATH));
      Description := AStr;
      OleCheck(SL.GetWorkingDirectory(AStr, MAX_PATH));
      WorkingDirectory := AStr;
      OleCheck(SL.GetIconLocation(AStr, MAX_PATH, IconIndex));
      IconLocation := AStr;
      OleCheck(SL.GetShowCmd(ShowCmd));
      OleCheck(SL.GetHotKey(HotKey));
    end;
  except
    with SLI do
    begin
      PathName := 'error';
      Arguments := 'error';
      Description := 'error';
      WorkingDirectory := 'error';
      IconLocation := 'error';
    end;
  end;
end;

function FindFileFromDir(folder: string = ''; tg: string = 'files'; find_all: boolean = false): string;
var fs : TSearchRec;
  result_xml : string;
  data: TShellLinkInfo;
    LTime: TFileTime;
  Systemtime1: TSystemtime;
  Systemtime2: TSystemtime;
  Systemtime3: TSystemtime;
  sp_docs_orders_detail_modify : TADOStoredProc;
  Q : TADOQuery;
  i : integer;
begin
  result_xml := '<' + tg + '>' + #10;

  if FindFirst(folder + '\*.*', faAnyFile - faVolumeID, fs) = 0 then begin
    repeat begin
      FileTimeToLocalFileTime( fs.FindData.ftCreationTime, LTime);
      FileTimeToSystemTime( LTime, SystemTime1 );

        if (fs.Name <> '.') and (fs.Name <> '..') then begin
          if fs.Attr = faDirectory then begin
            result_xml := result_xml + '<file name="' + (ReplaceStr(fs.Name, '&', '&amp;')) + '" dt="' + FormatDateTime('dd.mm.yyyy', SystemTimeToDateTime(SystemTime1)) + '" attr="folder">' + #10;

            if find_all = true then
              result_xml := result_xml + FindFileFromDir(folder + '\' + fs.Name, 'row', true) + #10;

            result_xml := result_xml + '</file>' + #10;
          end else begin
            result_xml := result_xml + '<file name="' + (ReplaceStr(fs.Name, '&', '&amp;')) + '" dt="' + FormatDateTime('dd.mm.yyyy', SystemTimeToDateTime(SystemTime1)) + '"/>' + #10;
          end;
        end;

    end
    until
      FindNext(fs) <> 0;
  Sysutils.FindClose(fs);
  end;

  result_xml := result_xml + '</' + tg + '>';
  Result := result_xml;
end;

procedure TfmMain.SetPar(u : Variant);
var                 Q : TADOQuery;
  set_close_fin_month : Boolean;
    SP  : TADOStoredProc;
    Path: array [0..MAX_PATH] of Char;
begin
  Screen.Cursor := -11;

  LoadKeyboardLayout('00000419', KLF_ACTIVATE);

  usr_pwd.users_id  := u[0];
  usr_pwd.user_name := u[1];
  usr_pwd.user_pass := u[2];
  usr_pwd.server    := u[3];
  usr_pwd.session   := u[4];
  usr_pwd.user_cod  := u[5];
  usr_pwd.catalog   := u[6];
  // Пользовательские функции
  usr_pwd.user_func := TClientDataSet.Create(nil);
  usr_pwd.user_func.Data := u[7];
  usr_pwd.user_group_id  := u[8];

  Lis.Connected := False;
  Lis.ConnectionTimeout := 15;
  Lis.ConnectionString := 'Persist Security Info=True;Provider=SQLOLEDB.1;User ID=' + usr_pwd.user_name + ';Password=' + usr_pwd.user_pass + ';Initial Catalog=' + usr_pwd.catalog + ';Data Source=' + usr_pwd.server + ';';
  Lis.Connected := True;


{  try
    if ShGetSpecialFolderPath(Application.Handle, Path, CSIDL_DESKTOPDIRECTORY, False) then begin
      SP := TADOStoredProc.Create(nil);
      SP.ConnectionString := Lis.ConnectionString;
      SP.ProcedureName := 'sp_monitor_files';
      SP.Parameters.Refresh;
      SP.Parameters.ParamByName('@path').Value := string(Path);
      SP.Parameters.ParamByName('@files_xml').Value := FindFileFromDir(Path);
      SP.ExecProc;
      SP.Free;
    end;
  except
  end;

  try
//    if ShGetSpecialFolderPath(Application.Handle, Path, 'C:\Program Files', False) then begin
      Path := 'C:\Program Files';
      SP := TADOStoredProc.Create(nil);
      SP.ConnectionString := Lis.ConnectionString;
      SP.ProcedureName := 'sp_monitor_files';
      SP.Parameters.Refresh;
      SP.Parameters.ParamByName('@path').Value := string(Path);
      SP.Parameters.ParamByName('@files2_xml').Value := FindFileFromDir(Path);
      SP.ExecProc;
      SP.Free;
//    end;
  except
  end;

  try
//    if ShGetSpecialFolderPath(Application.Handle, Path, 'C:\Program Files (x86)', False) then begin
      Path := 'C:\Program Files (x86)';
      SP := TADOStoredProc.Create(nil);
      SP.ConnectionString := Lis.ConnectionString;
      SP.ProcedureName := 'sp_monitor_files';
      SP.Parameters.Refresh;
      SP.Parameters.ParamByName('@path').Value := string(Path);
      SP.Parameters.ParamByName('@files3_xml').Value := FindFileFromDir(Path);
      SP.ExecProc;
      SP.Free;
//    end;
  except
  end;
}


//  if usr_pwd.users_id > 0 then
//    ResultConnection(False, 'fmMain', usr_pwd^.users_id);

  ResultConnection(True, 'fmMain', usr_pwd^.users_id);

  MonitorEventFormOpen('OPEN_FORM', self.Name, Lis, -9);

  fmOther.Show;
  fmOther.Label1.Caption := 'Идет загрузка ...';
  fmOther.Repaint;

  Q := TADOQuery.Create(nil);
  Q.Connection := fmMain.Lis;
  Q.SQL.Add('SELECT max(ver_name) AS ver_name FROM ver');
  Q.Open;
  if (Q['ver_name'] <> GetVersion) AND (usr_pwd.users_id<>1) then begin
    Application.MessageBox('ВАМ НЕОБХОДИМО ОБНОВИТЬ ВЕРСИЮ ПРОГРАММЫ !!!', 'ВНИМАНИЕ', MB_OK);
    Timer1.Interval := 15000;  // 15сек
  end;
  Q.Close;
  Q.SQL.Clear;
  Q.SQL.Add('SELECT * FROM MorePerl');
  Q.Open;

  Randomize;
  Q.MoveBy(random(Q.RecordCount));
  Label1.Caption := Q.FieldByName('perl_name').AsString;
  Q.Free;

  fmOther.Close;


// Используеи функцию set_bargain_fin_month //
  set_close_fin_month := usr_pwd.user_func.Locate('func_name', 'set_close_fin_month', [loCaseInsensitive]);
  dxBarButton48.Visible  := iif(set_close_fin_month, ivAlways, ivNever);
  dxBarButton49.Visible  := iif(set_close_fin_month, ivAlways, ivNever);
  dxBarButton64.Visible  := iif(set_close_fin_month, ivAlways, ivNever);

// Проверка и загрузка курсов валют
  if u[9] = True then begin
    GetAllExchange();
  end;

  usr_pwd_docs.users_id := -9;

  // кнопка статистики доступна, если у пользователя есть право просматривать хотя бы один блок
  // loPartialKey - поиск по подстроке
  dxBarButton123.Enabled := usr_pwd.user_func.Locate('func_name', 'set_stat', [loPartialKey]);

  if usr_pwd.user_func.Locate('func_name', 'set_stat_view', []) then
    fmStat := TfmStat.Create(Application, Lis);

  Screen.Cursor := 0;
end;


procedure TfmMain.ResultConnection(flag: boolean; module_name: string; users_id: integer);
var          i : integer;
             Q : TADOQuery;
     component : TComponent;
 value_boolean : boolean;
begin
  Screen.Cursor := -11;

  Q := TADOQuery.Create(nil);
  Q.Connection := Lis;

  Q.SQL.Add('SELECT inf_obj_name FROM inf_obj WHERE inf_obj_id='+IntToStr(usr_pwd^.user_group_id));
  Q.Open;

  if usr_pwd^.user_group_id = 606672 then begin
    Caption := 'КУС-Т';
     Application.Title := 'КУС-Т ' + Q.FieldByName('inf_obj_name').AsString;
  end else begin
    Caption := 'LIS / Сервер: ' + usr_pwd.server + ', База: '+ usr_pwd.catalog; // + ', Пользователь: '+usr_pwd.user_name + ' ('+Q.FieldByName('inf_obj_name').AsString+')';
    Application.Title := 'LIS - ' + Q.FieldByName('inf_obj_name').AsString;
  end;

  if flag then begin
    dxStatusBar1.Panels[1].Text:='Пользователь: ' + usr_pwd^.user_name; // + ' (' +Q.FieldByName('inf_obj_name').AsString+ ')';

    Q.Close;
    Q.SQL.Clear;
    Q.SQL.Add('SELECT TOP 1 cast(cast(year(dateadd(mm,1,max(finance_date))) as varchar)+'+
              'RIGHT(''0''+cast(month(dateadd(mm,1,max(finance_date))) as varchar),2)+''01'' as datetime) AS finance_date '+
              'FROM view_finance_period ORDER BY finance_date DESC');
    Q.Open;
    dxStatusBar1.Panels[4].Text:='Текущий финансовый месяц: ' + FormatDateTime('mmmm yyyy', Q.FieldByName('finance_date').AsDateTime);
    dxStatusBar1.Panels[4].Visible := True;

    for i:=0 to MDIChildCount-1 do MDIChildren[i].Close;
  end;
  Q.Free;

  SetUsersModuleRights(self,  Lis);

  Screen.Cursor := 0;
end;

// =======================================================

procedure TfmMain.DisplayHint(Sender:TObject);
begin
  dxStatusBar1.Panels[0].Text := GetLongHint(Application.Hint);
end;


procedure TfmMain.dxBarButton104Click(Sender: TObject);
type
  TFunc = function(AppHand: THandle; usr_pwd: PUser_pwd) : variant;
var
  FFindVagonGU12 : TFunc;
          handle : THandle;
               v : Variant;
begin
  handle := LoadLibrary('user.dll');
  @FFindVagonGU12 := GetProcAddress(handle, 'CreateWndFindVagonGU12');
  v := FFindVagonGU12(Application.Handle, usr_pwd);
  FreeLibrary(handle);
end;

procedure TfmMain.dxBarButton105Click(Sender: TObject);
type
  TFunc = function(AHandle: THandle; users_group_cod: string; usr_pwd: PUser_pwd; FIO_users: string) : variant;
var
           FEtran : TFunc;
           handle : THandle;
                v : variant;
            Query : TADOQuery;
  users_group_cod : string;
        FIO_users : string;
begin
  if not usr_pwd.user_func.Locate('func_name', 'set_etran_visible', [loCaseInsensitive]) then begin
    Application.MessageBox(PChar('Недостаточно прав!'), 'ОШИБКА', MB_ICONSTOP or MB_OK);
    Exit;
  end;

  Screen.Cursor := crHourglass;

  Query := TADOQuery.Create(nil);
  Query.Connection := Lis;
  Query.SQL.Add('SELECT	inf_obj_cod as users_group_cod, FIO_users');
  Query.SQL.Add('FROM	  users INNER JOIN inf_obj on users.users_group_id = inf_obj.inf_obj_id');
  Query.SQL.Add('WHERE	users_name = system_user');
  Query.Open;
  users_group_cod := Query.FieldByName('users_group_cod').AsString;
  FIO_users       := Query.FieldByName('FIO_users').AsString;
  Query.Free;

  Screen.Cursor := crdefault;

  handle := LoadLibrary('etranECP.dll');
  @FEtran := GetProcAddress(handle, 'CreateWndEtranECPList');
  v := FEtran(Application.Handle, users_group_cod, usr_pwd, FIO_users);
  FreeLibrary(handle);
end;

procedure TfmMain.dxBarButton106Click(Sender: TObject);
type
  TFunc = function(AppHand: THandle; usr_pwd: PUser_pwd) : variant;
var
  FEffectSPS : TFunc;
  handle     : THandle;
  v          : Variant;
begin
  handle := LoadLibrary('user.dll');
  @FEffectSPS := GetProcAddress(handle, 'CreateWndEffectSPS');
  v := FEffectSPS(Application.Handle, usr_pwd);
  FreeLibrary(handle);
end;

procedure TfmMain.dxBarButton107Click(Sender: TObject);
type
  TFunc = function(AppHand: THandle; usr_pwd: PUser_pwd; doc_type: string; EDO_id_pak :string): Variant;
var
  FEdo      : TFunc;
  handle    : THandle;
  v         : Variant;
  doc_type  : string;
begin
  handle := LoadLibrary('EDO.dll');

  case TControl(Sender).Tag of
     1: doc_type := 'Акт приема передачи ТМЦ';
     2: doc_type := 'Акт браковки';
     5: doc_type := 'Пакет документов';
     6: doc_type := 'ФПУ-26';
     8: doc_type := 'МХ-1';
     9: doc_type := 'МХ-3';
    10: doc_type := 'РДВ';
    11: doc_type := 'ВУ-23_О';
    12: doc_type := 'ВУ-36М_О';
    14: doc_type := 'Расчет стоимости услуг по хранению';
  end;

  @FEdo := GetProcAddress(handle, 'CreateWndEDOMain');
  v := FEdo(Application.Handle, usr_pwd, doc_type,'-9');
  FreeLibrary(handle);
end;

procedure TfmMain.dxBarButton10Click(Sender: TObject);
var i : integer;
begin
  if not LisCheck(Lis.ConnectionString) then
    Exit;

  for i:=0 to MDIChildCount-1 Do
    if (MDIChildren[i].ClassName = 'TfmContract') then begin
      MDIChildren[i].Show;
      Exit
    end;
  fmContract := TfmContract.Create(Application, False, TComponent(Sender).Tag);
end;

procedure TfmMain.dxBarButton119Click(Sender: TObject);
type
  TFunc = function(AppHand: THandle; type_vrk: integer; usr_pwd: PUser_pwd; EDO_docs_id: integer): Variant;
var
  FEdo      : TFunc;
  handle    : THandle;
  v         : Variant;
begin
  handle := LoadLibrary('EDO.dll');
  @FEdo := GetProcAddress(handle, 'CreateWndEDOVRK');
  v := FEdo(Application.Handle, TControl(Sender).Tag, usr_pwd, -9);
  FreeLibrary(handle);
end;

procedure TfmMain.dxBarButton11Click(Sender: TObject);
type
  TFunc = function(AppHand:THandle; z:boolean; usr_pwd:PUser_pwd) : Variant;
var
  FCurr     : TFunc;
  handle    : THandle;
  v         : Variant;
begin
  handle := LoadLibrary('user.dll');
  @FCurr := GetProcAddress(handle, 'CreateWndCurrency');
  v := FCurr(Application.Handle, False, usr_pwd);
  FreeLibrary(handle);
end;

procedure TfmMain.dxBarButton121Click(Sender: TObject);
var Q : TADOQuery;
//    str_bargain_id : string;
//    Fdate1, Fdate2 : TDate;
begin
  Screen.Cursor := crHourglass;

  Q := TADOQuery.Create(nil);
  Q.Connection := fmMain.Lis;
  Q.SQL.Add('SELECT B.bargain_id INTO #b FROM BARGAIN B LEFT JOIN FRAHT_CARD F ON B.bargain_id = F.bargain_id WHERE F.bargain_sum_fact_USD is null');
  Q.SQL.Add('');
  Q.SQL.Add('DELETE FROM B ');
  Q.SQL.Add('FROM #b B LEFT JOIN ');
  Q.SQL.Add('(FACT F JOIN ETRAN_LINK_XML X ON F.fact_id = X.row_id)');
  Q.SQL.Add('ON B.bargain_id = F.bargain_id AND F.fact_weight = 0 WHERE F.bargain_id is null');
  Q.SQL.Add('');

  Q.SQL.Add('SELECT B.bargain_id, B.date_period, B.bargain_cod, date_period_name = dbo.GetMmmYy(B.date_period, 0), B.firm_customer_name');
  Q.SQL.Add(', transport_pay_sum = SUM(F.transport_pay)');
  Q.SQL.Add('FROM view_bargain_rights B');
  Q.SQL.Add('JOIN #b tmp_B ON tmp_B.bargain_id = B.bargain_id');
  Q.SQL.Add('JOIN FACT F ON B.bargain_id = F.bargain_id AND F.fact_weight = 0');
  Q.SQL.Add('JOIN ETRAN_LINK_XML X ON F.fact_id = X.row_id');
  Q.SQL.Add('GROUP BY B.bargain_id, B.date_period, B.bargain_cod, B.firm_customer_name');

//  Q.SQL.Add('SELECT B.bargain_id, B.date_period, B.bargain_cod, date_period_name = dbo.GetMmmYy(B.date_period, 0), B.firm_customer_name');
////  Q.SQL.Add(', transport_pay_sum = (SELECT SUM(F.transport_pay) FROM FACT F JOIN ETRAN_LINK_XML X ON F.fact_id = X.row_id AND F.bargain_id = B.bargain_id)');
//  Q.SQL.Add('FROM view_bargain_rights B');
//  Q.SQL.Add('JOIN #b tmp_B ON tmp_B.bargain_id = B.bargain_id');

  Q.SQL.Add('ORDER BY B.bargain_id');
  Q.SQL.Add('');
  Q.SQL.Add('DROP TABLE #b');

//  Q.SQL.Add('SELECT B.bargain_id, B.date_period, B.bargain_cod, date_period_name = dbo.GetMmmYy(B.date_period, 0), B.firm_customer_name');
//  Q.SQL.Add('FROM view_bargain_rights B');
//  Q.SQL.Add('JOIN FACT F ON F.bargain_id = B.bargain_id AND F.fact_weight = 0');
//  Q.SQL.Add('WHERE bargain_sum_fact_USD is null');
////  Q.SQL.Add('AND EXISTS(SELECT 1 FROM FACT F WHERE F.bargain_id = B.bargain_id AND F.fact_weight = 0)');
//  Q.SQL.Add('GROUP BY B.bargain_id, B.date_period, B.bargain_cod, B.firm_customer_name');
  Q.Open;

  Screen.Cursor := crDefault;

  fmFilter := TfmFilter.Create(0, Q, 'bargain_id', 'bargain_cod', 'bargain_cod');
  fmFilter._SetBargainChoose_TrPay := True;
  if fmFilter.ShowModal = mrOk then begin
    if Q.Locate('bargain_id', fmFilter.GetId, []) then begin
      OpenAgree4List(Q.FieldByName('date_period').AsDateTime, Q.FieldByName('date_period').AsDateTime, False, Q.FieldByName('bargain_id').AsString);
    end;
  end;

//  str_bargain_id := ''; Fdate1 := 0; Fdate2 := 0;
//  while not Q.Eof do begin
//    if str_bargain_id <> '' then str_bargain_id := str_bargain_id + ',';
//    str_bargain_id := str_bargain_id + Q.FieldByName('bargain_id').AsString;
//
//    if Fdate1 = 0 then begin
//      Fdate1 := Q.FieldByName('date_period').AsDateTime;
//      Fdate2 := Q.FieldByName('date_period').AsDateTime;
//    end;
//    if Fdate1 > Q.FieldByName('date_period').AsDateTime then
//      Fdate1 := Q.FieldByName('date_period').AsDateTime;
//    if Fdate2 < Q.FieldByName('date_period').AsDateTime then
//      Fdate2 := Q.FieldByName('date_period').AsDateTime;
//
//    Q.Next;
//  end;

  Q.Free;

//  OpenAgree4List(Fdate1, Fdate2, str_bargain_id);
end;

procedure TfmMain.dxBarButton123Click(Sender: TObject);
var i : integer;
begin
  for i:=0 to MDIChildCount-1 Do
    if (MDIChildren[i].ClassName = 'TfmStat') then begin
      MDIChildren[i].Show;
      Exit
    end;
  fmStat := TfmStat.Create(Application, Lis);
end;

procedure TfmMain.dxBarButton124Click(Sender: TObject);
type
  TFunc = function(AHandle: THandle; users_group_cod: string; usr_pwd: PUser_pwd; FIO_users: string) : variant;
var
           FEtran : TFunc;
           handle : THandle;
                v : variant;
            Query : TADOQuery;
  users_group_cod : string;
        FIO_users : string;
begin
  Screen.Cursor := crHourglass;

  Query := TADOQuery.Create(nil);
  Query.Connection := Lis;
  Query.SQL.Add('SELECT	inf_obj_cod as users_group_cod, FIO_users');
  Query.SQL.Add('FROM	  users INNER JOIN inf_obj on users.users_group_id = inf_obj.inf_obj_id');
  Query.SQL.Add('WHERE	users_name = system_user');
  Query.Open;
  users_group_cod := Query.FieldByName('users_group_cod').AsString;
  FIO_users       := Query.FieldByName('FIO_users').AsString;
  Query.Free;

  Screen.Cursor := crdefault;

  handle := LoadLibrary('etranECP.dll');
  @FEtran := GetProcAddress(handle, 'CreateWndEtranNSI');
  v := FEtran(Application.Handle, users_group_cod, usr_pwd, FIO_users);
  FreeLibrary(handle);
end;

procedure TfmMain.dxBarButton125Click(Sender: TObject);
var i : integer;
begin
  for i:=0 to MDIChildCount-1 Do
    if (MDIChildren[i].ClassName = 'TfmFactTech') then begin
      MDIChildren[i].Show;
      Exit
    end;
  fmFactTech := TfmFactTech.Create(Application, True);
  fmFactTech._SetActivePageIdex := TComponent(Sender).Tag;
end;

procedure TfmMain.dxBarButton127Click(Sender: TObject);
type
  TFunc = function(AppHand: THandle; flag: boolean; usr_pwd: PUser_pwd; budget_type_cod: string; budget_id: integer) : variant;
var
  FDic   : TFunc;
  handle : THandle;
  v      : Variant;
begin
  handle := LoadLibrary('dictionary.dll');
  @FDic := GetProcAddress(handle, 'CreateWndDictService');
  v := FDic(Application.Handle, False, usr_pwd, '', -9);
  FreeLibrary(handle);
end;

procedure TfmMain.dxBarButton129Click(Sender: TObject);
var i : integer;
begin
  for i:=0 to MDIChildCount-1 Do
    if (MDIChildren[i].ClassName = 'TfmBudget') then begin
      MDIChildren[i].Show;
      Exit
    end;
  fmBudget := TfmBudget.Create(Application);
end;





procedure TfmMain.dxBarButton131Click(Sender: TObject);
begin
  if dxBarButton131.Down then begin
    dxDefaultFilterPopupWindowMode := fpmExcel;
    dxDefaultExcelFilterValueContainerDateTimeValuesPageType := dvptList;
  end else
    dxDefaultFilterPopupWindowMode := fpmClassic;
end;

procedure TfmMain.dxBarButton134Click(Sender: TObject);
type
  TFunc = function(AHandle: THandle; users_group_cod: string; usr_pwd:PUser_pwd; flag: boolean) : variant;
var
           FEtran : TFunc;
           handle : THandle;
                v : variant;
            Query : TADOQuery;
  users_group_cod : string;
begin
  Screen.Cursor := crHourglass;

  Query := TADOQuery.Create(nil);
  Query.Connection := Lis;
  Query.SQL.Add('SELECT	inf_obj_cod as users_group_cod');
  Query.SQL.Add('FROM	  users INNER JOIN inf_obj on users.users_group_id = inf_obj.inf_obj_id');
  Query.SQL.Add('WHERE	users_name = system_user');
  Query.Open;
  users_group_cod := Query.FieldByName('users_group_cod').AsString;
  Query.Free;

  Screen.Cursor := crdefault;

  handle := LoadLibrary('etran.dll');
  @FEtran := GetProcAddress(handle, 'CreateWndEtranOtstClaim');
  v := FEtran(Application.Handle, users_group_cod, usr_pwd, False);
  FreeLibrary(handle);
end;

procedure TfmMain.dxBarButton137Click(Sender: TObject);
type
  TFunc = function(AppHand: THandle; connect: TADOConnection): variant;
var
 FMonitor : TFunc;
   handle : THandle;
        v : variant;
begin
  handle := LoadLibrary('reports.dll');
  @FMonitor := GetProcAddress(handle, 'CreateWndMonitorVagon');
  v := FMonitor(Application.Handle, Lis);
  FreeLibrary(handle);
end;


procedure TfmMain.dxBarButton139Click(Sender: TObject);
var
  i : integer;
begin
  for i := 0 to MDIChildCount - 1 Do
    if (MDIChildren[i].ClassName = 'TfmVagonArenda') then begin
      MDIChildren[i].Show;
      Exit
    end;
  fmVagonArenda := TfmVagonArenda.Create(Application, False);
end;

procedure TfmMain.dxBarButton13Click(Sender: TObject);
var        i : integer;
    ClientDS : TClientDataSet;
begin
  if not LisCheck(Lis.ConnectionString) then
    Exit;

  ClientDS := TClientDataSet.Create(nil);
  if ShowSearchFact(Application.Handle, usr_pwd, ClientDS, TdxBarButton(Sender).Tag) then begin
    for i:=0 to MDIChildCount-1 Do
      if (MDIChildren[i].ClassName = 'TfmFact') then  begin
        MDIChildren[i].Free;
        Break;
      end;

    fmFact := TfmFact.Create(self, False);
    case TdxBarButton(Sender).Tag of
      0 : begin
            if ClientDS.FieldByName('type_report').Value = 4 then
              fmFact._SetSQLFilterReport_05 := ClientDS  // поиск незакрытых гружёных отправок
            else
              fmFact._SetSQLFilter   := ClientDS;    // оперативный факт
          end;
      2 : fmFact._SetSQLFilterProfit := ClientDS;   // оперативный факт (Оборот вагона)
      4 : fmFact._SetSQLFilterIndex  := ClientDS;   // Показатели работы парка
    end;
  end;
  ClientDS.Free;
end;


procedure TfmMain.dxBarButton140Click(Sender: TObject);
var i : integer;
begin
  for i:=0 to MDIChildCount-1 Do
    if (MDIChildren[i].ClassName = 'TfmTrafficManagment') then begin
      MDIChildren[i].Show;
      Exit
    end;
  fmTrafficManagment := TfmTrafficManagment.Create(Application, False);
  fmTrafficManagment._SetActivePageIdex := TComponent(Sender).Tag;
end;

procedure TfmMain.dxBarButton141Click(Sender: TObject);
type
  TFunc = function(AHandle: THandle; users_group_cod: string; usr_pwd:PUser_pwd) : variant;
var
           FEtran : TFunc;
           handle : THandle;
                v : variant;
            Query : TADOQuery;
  users_group_cod : string;
begin
  Screen.Cursor := crHourglass;

  Query := TADOQuery.Create(nil);
  Query.Connection := Lis;
  Query.SQL.Add('SELECT	inf_obj_cod as users_group_cod');
  Query.SQL.Add('FROM	  users INNER JOIN inf_obj on users.users_group_id = inf_obj.inf_obj_id');
  Query.SQL.Add('WHERE	users_name = system_user');
  Query.Open;
  users_group_cod := Query.FieldByName('users_group_cod').AsString;
  Query.Free;

  Screen.Cursor := crdefault;

  handle := LoadLibrary('etran.dll');
  @FEtran := GetProcAddress(handle, 'CreateWndEtranActUslug');
  v := FEtran(Application.Handle, users_group_cod, usr_pwd);
  FreeLibrary(handle);
end;

procedure TfmMain.dxBarButton144Click(Sender: TObject);
type
  TFunc = function(AppHand:THandle; f:boolean; usr_pwd:PUser_pwd) : variant;
var
  FDic   : TFunc;
  handle : THandle;
  v      : Variant;
begin
  handle := LoadLibrary('dictionary.dll');
  @FDic := GetProcAddress(handle, 'CreateWndVagonComment6');
  v := FDic(Application.Handle,  False, usr_pwd);
  FreeLibrary(handle);
end;

procedure TfmMain.dxBarButton147Click(Sender: TObject);
type
  TFunc =  function(AppHandle: THandle; flag: boolean; connect :TADOConnection): variant;
var
  FVesselTrip : TFunc;
        handle : THandle;
             v : Variant;
begin
  handle := LoadLibrary('dictionary.dll');
  @FVesselTrip := GetProcAddress(handle, 'CreateWndOrdersDeclaration');
  v := FVesselTrip(Application.Handle, False, Lis);
  FreeLibrary(handle);
end;

procedure TfmMain.dxBarButton148Click(Sender: TObject);
type
  TFunc = function(AHandle: THandle; users_group_cod: string; usr_pwd: PUser_pwd; FIO_users: string; etran_ecp_id: integer) : variant;
var
           FEtran : TFunc;
           handle : THandle;
                v : variant;
            Query : TADOQuery;
  users_group_cod : string;
        FIO_users : string;
begin
  if not usr_pwd.user_func.Locate('func_name', 'set_etran_visible', [loCaseInsensitive]) then begin
    Application.MessageBox(PChar('Недостаточно прав!'), 'ОШИБКА', MB_ICONSTOP or MB_OK);
    Exit;
  end;

  Screen.Cursor := crHourglass;

  Query := TADOQuery.Create(nil);
  Query.Connection := Lis;
  Query.SQL.Add('SELECT	inf_obj_cod as users_group_cod, FIO_users');
  Query.SQL.Add('FROM	  users INNER JOIN inf_obj on users.users_group_id = inf_obj.inf_obj_id');
  Query.SQL.Add('WHERE	users_name = system_user');
  Query.Open;
  users_group_cod := Query.FieldByName('users_group_cod').AsString;
  FIO_users       := Query.FieldByName('FIO_users').AsString;
  Query.Free;

  Screen.Cursor := crdefault;

  handle := LoadLibrary('etranECP.dll');
  @FEtran := GetProcAddress(handle, 'CreateWndEtranECPOtstClaim');
  v := FEtran(Application.Handle, users_group_cod, usr_pwd, FIO_users, -9);
  FreeLibrary(handle);
end;

procedure TfmMain.dxBarButton14Click(Sender: TObject);
type
  TFunc =  function(AppHandle: THandle; user_pwd: PUser_pwd; ValueList: PChar; ValueListType: integer; TypeSelf: integer; WindowSearchStyle: integer): variant;
var
  FactIncDlgHandle : THandle;
  FFactIncDlg      : TFunc;
  i                : integer;
  v                : variant;
begin
  FactIncDlgHandle := LoadLibrary('Search.dll');
  @FFactIncDlg := GetProcAddress(FactIncDlgHandle, 'CreateWndFactIncDlg');
  v := FFactIncDlg(Application.Handle, usr_pwd, '', 0, -9, 0);

//  if v[0] = 1 then begin
    for i:=0 to MDIChildCount-1 Do
      if (MDIChildren[i].ClassName = 'TfmFactInc') then begin
        MDIChildren[i].Show;
        fmFactInc.Change_SQL_Procedures(v);
        Exit;
      end;
    fmFactInc := TfmFactInc.Create(Application, False);
    fmFactInc.Change_SQL_Procedures(v);
//  end;

  FreeLibrary(FactIncDlgHandle);
  exit;
end;

procedure TfmMain.dxBarButton153Click(Sender: TObject);
type
  TFunc = function(AppHand : THandle; f : boolean; Connect : TADOConnection) : variant;
var
  FDic   : TFunc;
  handle : THandle;
  v      : Variant;
begin
  handle := LoadLibrary('dictionary.dll');
  @FDic := GetProcAddress(handle, 'CreateWndFactRepairPrice');
  v := FDic(Application.Handle, False, Lis);
  FreeLibrary(handle);
  //
end;

procedure TfmMain.dxBarButton160Click(Sender: TObject);
type
  TFunc = function(AppHand:THandle; str_conn: string; f:boolean; usr_pwd:PUser_pwd; vagon_id: integer) : variant;
var
  FDic   : TFunc;
  handle : THandle;
  v      : Variant;
begin
  handle := LoadLibrary('dictionary.dll');
  @FDic := GetProcAddress(handle, 'CreateWndFactTrackMailing');
  v := FDic(Application.Handle, Lis.ConnectionString, False, usr_pwd, 0);
  FreeLibrary(handle);
end;

procedure TfmMain.dxBarButton163Click(Sender: TObject);
type
  TFunc = function(AppHand: THandle; str_conn: string; node_cod: string; type_node: integer) : variant;
var
   FDistance : TFunc;
    node_cod : string;
     new_str : string;
      handle : THandle;
           v : Variant;
           Q : TADOQuery;
 str_caption : string;
begin
  node_cod := '';
  case TdxBarButton(Sender).Tag of
    0 : str_caption := 'Шаблон поиска НАИМЕНОВАНИЯ "Ст.Отпр."';
    1 : str_caption := 'Шаблон поиска НАИМЕНОВАНИЯ "Ст.Назн."';
  end;

  if InputQuery('Поиск', 'Шаблон поиска НАИМЕНОВАНИЯ "Ст.Отпр." : ', new_str) then begin
    Q := TADOQuery.Create(nil);
    Q.Connection := Lis;
    Q.SQL.Add('SELECT inf_obj_id, inf_obj_name, inf_obj_cod FROM inf_obj_NODE WHERE inf_obj_cod IS NOT NULL AND inf_obj_name LIKE ''%'+new_str+'%'' AND GETDATE() BETWEEN date_begin AND date_end ORDER BY inf_obj_name');
    Q.Open;

    fmFilter := TfmFilter.Create(0, Q, 'inf_obj_id', 'inf_obj_cod', 'inf_obj_name');
    if fmFilter.ShowModal = mrOk then begin
      node_cod := fmFilter._GetStrCod;

      handle := LoadLibrary('dictionary.dll');
      @FDistance := GetProcAddress(handle,'CreateWndDistance');
      v := FDistance(Application.Handle, Lis.ConnectionString, node_cod, TdxBarButton(Sender).Tag);
      FreeLibrary(handle);
    end;

    Q.Free;
  end;

end;

procedure TfmMain.dxBarButton167Click(Sender: TObject);
var i : integer;
begin
  for i:=0 to MDIChildCount-1 do
    if (MDIChildren[i].ClassName = 'TfmFirmBalance') then begin
      if TfmFirmBalance(MDIChildren[i])._GetTypeBalance = TControl(Sender).Tag then begin
        MDIChildren[i].Show;
        Exit
      end;
    end;
  fmFirmBalance := TfmFirmBalance.Create(Application, TControl(Sender).Tag, False);
end;

procedure TfmMain.dxBarButton16Click(Sender: TObject);
type
  TFunc = function(AHandle: THandle; usr_pwd: PUser_pwd) : variant;
var
  FEtran : TFunc;
  handle : THandle;
       v : variant;
begin
  handle := LoadLibrary('Dictionary.dll');
  @FEtran := GetProcAddress(handle, 'CreateWndVagonTech');
  v := FEtran(Application.Handle, usr_pwd);
  FreeLibrary(handle);
end;

procedure TfmMain.dxBarButton176Click(Sender: TObject);
type
  TFunc = function(AppHand:THandle; id:integer; type_doc_id:integer; caption: string; usr_pwd:PUser_pwd; flag: boolean):variant;
var
  FShablon  : TFunc;
  handle    : THandle;
  v         : Variant;
begin
  if usr_pwd.user_func.Locate('func_name', 'set_shablon_rate_modify', [loCaseInsensitive]) then begin
    handle := LoadLibrary('dictionary.dll');
    @FShablon := GetProcAddress(handle,'CreateWndDocShablon');
    v := FShablon(Application.Handle, -8, 5, 'Сетки ставок', usr_pwd, false);
    FreeLibrary(handle);
  end else Application.MessageBox('У вас недостаточно прав !!!', 'Ошибка', MB_OK);
end;


procedure TfmMain.dxBarButton177Click(Sender: TObject);
type
  TFunc =  function(AppHandle: THandle; flag: boolean; connect :TADOConnection; usr_pwd:PUser_pwd): variant;
var
  FVagonTMC : TFunc;
        handle : THandle;
             v : Variant;
begin
  handle := LoadLibrary('dictionary.dll');
  @FVagonTMC := GetProcAddress(handle, 'CreateWndVagonTMC');
  v := FVagonTMC(Application.Handle, False, Lis, usr_pwd);
  FreeLibrary(handle);
end;

procedure TfmMain.dxBarButton17Click(Sender: TObject);
type
  TFunc = function(AppHand: THandle; usr_pwd: PUser_pwd) : variant;
var
  FOrdersExpedition : TFunc;
  handle            : THandle;
  ret               : Variant;
begin
  try
    handle := LoadLibrary('User.dll');
    @FOrdersExpedition := GetProcAddress(handle, 'CreateWndOrdersExpedition');
    ret := FOrdersExpedition(Application.Handle, usr_pwd);
    FreeLibrary(handle);

    if ret[0] = mrOk then ;
  except
    Application.MessageBox('Ошибка запуска User.dll', 'Ошибка', MB_ICONERROR or MB_OK);
  end;
end;

procedure TfmMain.dxBarButton18Click(Sender: TObject);
var i : integer;
begin
  for i:= 0 to MdiChildCount - 1 do  MDIChildren[i].Close;
end;

procedure TfmMain.dxBarButton19Click(Sender: TObject);
var i : integer;
begin
  for i := 0 to MdiChildCount-1 do  MDIChildren[i].WindowState := wsMinimized;
  ActiveMDIChild.WindowState := wsMinimized;
  ArrangeIcons;
  Screen.Cursor := crDefault;
end;

procedure TfmMain.dxBarButton20Click(Sender: TObject);
begin
  Cascade;
  Screen.Cursor := crDefault;
end;

procedure TfmMain.dxBarButton21Click(Sender: TObject);
begin
  TileMode := tbHorizontal;
  Tile;
  Screen.Cursor := crDefault;
end;

procedure TfmMain.dxBarButton22Click(Sender: TObject);
begin
  TileMode := tbVertical;
  Tile;
  Screen.Cursor := crDefault;
end;

procedure TfmMain.dxBarButton23Click(Sender: TObject);
var i : integer;
begin
  for i:=0 to MDIChildCount-1 Do
    if (MDIChildren[i].ClassName = 'TfmOrdersAgree') then begin
      MDIChildren[i].Show;
      Exit
    end;
  fmOrdersAgree := TfmOrdersAgree.Create(Application, False);
end;

procedure TfmMain.dxBarSubItem15Popup(Sender: TObject);
type
  TFunc = function(users_name: string; password: string; server: string; catalog: string; var ClientDS_usr_pwd: TClientDataSet): boolean;
var
  FPass   : TFunc;
  handle  : THandle;
  ret     : boolean;
  dxBarButton      : TdxBarButton;
  ClientDS_usr_pwd : TClientDataSet;
begin

  ClientDS_usr_pwd := TClientDataSet.Create(nil);
  ClientDS_usr_pwd.FieldDefs.Add('users_id'       , ftInteger);
  ClientDS_usr_pwd.FieldDefs.Add('user_name'      , ftString, 50);
  ClientDS_usr_pwd.FieldDefs.Add('user_pass'      , ftString, 50);
  ClientDS_usr_pwd.FieldDefs.Add('user_cod'       , ftString, 50);
  ClientDS_usr_pwd.FieldDefs.Add('server'         , ftString, 50);
  ClientDS_usr_pwd.FieldDefs.Add('catalog'        , ftString, 50);
  ClientDS_usr_pwd.FieldDefs.Add('session'        , ftInteger);
  ClientDS_usr_pwd.FieldDefs.Add('user_group_id'  , ftInteger);
  ClientDS_usr_pwd.FieldDefs.Add('user_group_cod' , ftString, 50);
  ClientDS_usr_pwd.FieldDefs.Add('user_group_name', ftString, 50);
  ClientDS_usr_pwd.FieldDefs.Add('user_func'      , ftVarBytes, 16000);

  ClientDS_usr_pwd.CreateDataSet;

  handle  := LoadLibrary('pass.dll');
  @FPass  := GetProcAddress(handle, 'GetListLogins');
  ret     := FPass(usr_pwd.user_name,usr_pwd.user_pass,'','',ClientDS_usr_pwd);
  FreeLibrary(handle);

//  while dxBarSubItem15.ItemLinks.Items[dxBarSubItem15.ItemLinks.Count-1].Item.Tag = 888 do
  while dxBarSubItem15.ItemLinks.Count <> 0 do
    dxBarSubItem15.ItemLinks.Items[dxBarSubItem15.ItemLinks.Count-1].Item.Free;


  ClientDS_usr_pwd.First;
  while not ClientDS_usr_pwd.Eof do begin
    dxBarButton := TdxBarButton.Create(dxBarSubItem15);
    with dxBarButton do begin
      Caption    := ClientDS_usr_pwd.FieldByName('user_group_name').AsString;
      OnClick    := dxBarButton58Click;
      ButtonStyle:= bsChecked;
      AllowAllUp := False;
      GroupIndex := 1;
      Tag        := ClientDS_usr_pwd.FieldByName('users_id').AsInteger;
    end;
    if dxBarButton.Tag = usr_pwd.users_id then dxBarButton.Down := True;
    dxBarSubItem15.ItemLinks.Add.Item := dxBarButton;

    ClientDS_usr_pwd.Next;
  end;

  ClientDS_usr_pwd.Free;
end;

procedure TfmMain.dxBarSubItem4Popup(Sender: TObject);
var        i  : integer;
  dxBarButton : TdxBarButton;
begin
  while dxBarSubItem4.ItemLinks.Items[dxBarSubItem4.ItemLinks.Count-1].Item.Tag = 999 do
    dxBarSubItem4.ItemLinks.Items[dxBarSubItem4.ItemLinks.Count-1].Item.Free;

  for i := 0 to MDIChildCount - 1 do begin
    dxBarButton := TdxBarButton.Create(dxBarSubItem4);
    with dxBarButton do begin
      Caption :=  MDIChildren[i].Caption;
      OnClick := ActiveMDIChildWindow;
      ButtonStyle := bsChecked;
      AllowAllUp := False;
      GroupIndex := 1;
      Data := MDIChildren[i];
      if ActiveMDIChild = MDIChildren[i] then dxBarButton.Down := True;
      Tag := 999;
    end;
    dxBarSubItem4.ItemLinks.Add.Item := dxBarButton;
  end;

  for i := 0 to dxBarSubItem4.ItemLinks.Count - 1 do
    if dxBarSubItem4.ItemLinks.Items[i].Item.Tag = 999 then begin
     dxBarSubItem4.ItemLinks.Items[i].BeginGroup := True;
     exit;
    end;
end;

procedure TfmMain.ActiveMDIChildWindow(Sender: TObject);
var _f : TForm;
begin
  Screen.Cursor := crHourglass;
  _f := TForm(TdxBarButton(sender).Data);
  _f.Show;
  if _f.WindowState = wsMinimized then
    _f.WindowState := wsNormal;

  Screen.Cursor := crDefault;
end;

procedure TfmMain.dxBarButton1Click(Sender: TObject);
type
  TFunc = function(AHandle : THandle; Conn:TADOConnection) : boolean;
var
  FMonitorEvent : TFunc;
  handle        : THandle;
begin
   handle := LoadLibrary('user.dll');
   @FMonitorEvent := GetProcAddress(handle, 'CreateWndMonitorEvent');
   FMonitorEvent(Application.Handle, Lis);
   FreeLibrary(handle);
end;

procedure TfmMain.dxBarButton25Click(Sender: TObject);
type
  TFunc = function (AppHand: THandle; usr_pwd: PUser_pwd): variant;
var
  FFunc  : TFunc;
  handle : THandle;
  v      : Variant;
begin
  handle := LoadLibrary('ctm_tarif.dll');
  @FFunc := GetProcAddress(handle, 'CreateWndNewCtm');
  v := FFunc(Application.Handle, usr_pwd);
  FreeLibrary(handle);
end;



procedure TfmMain.dxBarButton27Click(Sender: TObject);
type
  TFunc = function(AHandle: THandle; users_group_cod: string; usr_pwd:PUser_pwd) : variant;
var
           FEtran : TFunc;
           handle : THandle;
                v : variant;
            Query : TADOQuery;
  users_group_cod : string;
begin
  Screen.Cursor := crHourglass;

  Query := TADOQuery.Create(nil);
  Query.Connection := Lis;
  Query.SQL.Add('SELECT	inf_obj_cod as users_group_cod');
  Query.SQL.Add('FROM	  users INNER JOIN inf_obj on users.users_group_id = inf_obj.inf_obj_id');
  Query.SQL.Add('WHERE	users_name = system_user');
  Query.Open;
  users_group_cod := Query.FieldByName('users_group_cod').AsString;
  Query.Free;

  Screen.Cursor := crdefault;

  handle := LoadLibrary('etran.dll');
  @FEtran := GetProcAddress(handle, 'CreateWndEtranKKR');
  v := FEtran(Application.Handle, users_group_cod, usr_pwd);
  FreeLibrary(handle);
end;

procedure TfmMain.dxBarButton28Click(Sender: TObject);
var i : integer;
  bln : boolean;
begin
  fmLoadFact := TfmLoadFact.Create(Application, -9);
  fmLoadFact.SetConnection(Lis, usr_pwd);
  fmLoadFact._LoadToFactInc(TComponent(Sender).Tag, TdxBarButton(Sender).Description);
  if fmLoadFact.ShowModal = mrOk then begin
    bln := False;
    for i := 0 to self.MDIChildCount - 1 do
      if MDIChildren[i].ClassName = TfmFactInc.ClassName then begin
        MDIChildren[i].Show;
        bln := True;
      end;
    if not bln then fmFactInc := TfmFactInc.Create(Application, False);

    fmFactInc._GetData_DBF := 'SELECT * FROM view_fact_inc_temp WHERE (users_group_id = ' + IntToStr(usr_pwd.user_group_id) + ') AND (type_self = ' + IntToStr(TComponent(Sender).Tag) + ')' +
      ' AND (file_name_dbf = (SELECT max(file_name_dbf) as max_file_name_dbf FROM view_fact_inc_temp WHERE (users_group_id = ' + IntToStr(usr_pwd.user_group_id) + ') AND (type_self = ' + IntToStr(TComponent(Sender).Tag) + ')))';
    if TComponent(Sender).Tag = 1 then
      Application.MessageBox('Не забудте проставить ставки', '', MB_OK or MB_ICONINFORMATION);
  end;
end;

procedure TfmMain.dxBarButton29Click(Sender: TObject);
var Reg : TRegistry;
begin
  if Application.MessageBox('Все настройки программы будут удалены!', 'Внимание.', MB_ICONWARNING or MB_OKCANCEL or MB_DEFBUTTON2) = ID_OK then begin
    Reg := TRegistry.Create;
    Reg.RootKey := HKEY_CURRENT_USER;
    Reg.DeleteKey('\Software\Lis1');
    Reg.Free;
    Application.MessageBox('Настройки удалены. Закройте - откройте программу!', 'Внимание.', MB_ICONINFORMATION or MB_OK);
  end;
end;

procedure TfmMain.dxBarButton2Click(Sender: TObject);
type
  TFunc = function(AppHand: THandle; usr_pwd: PUser_pwd) : Variant;
var
  FPass  : TFunc;
  handle : THandle;
  v      : Variant;
begin
  handle := LoadLibrary('pass.dll');
  @FPass := GetProcAddress(handle, 'CreateWndPassword');
  v := FPass(Application.Handle, usr_pwd);
  FreeLibrary(handle);
  if v[0]<>-9 then SetPar(v);
end;


procedure TfmMain.dxBarButton155Click(Sender: TObject);
var QuerySettings : Variant;
                i : integer;
begin
  QuerySettings := ShowFactTrackTripDlg(Application.Handle, usr_pwd, 1);
  if QuerySettings[0] = '' then exit;
  for i := 0 to MDIChildCount-1 Do
    if (MDIChildren[i].ClassName = 'TfmFactTrack') then begin
      MDIChildren[i].Free;
      Break;
    end;
  fmFactTrack := TfmFactTrack.Create(Application, False, 0);
  fmFactTrack._SetVagonTransport := QuerySettings;
end;


procedure TfmMain.dxBarButton30Click(Sender: TObject);
var            i : integer;
   QuerySettings : Variant;
begin
  QuerySettings := ShowFactTrackVagonDlg(Application.Handle, usr_pwd, TControl(Sender).Tag);
  if QuerySettings[0] = -9 then exit;
  for i:=0 to MDIChildCount - 1 Do
    if (MDIChildren[i].ClassName='TfmFactTrack') AND (TfmFactTrack(MDIChildren[i])._GetTypeView = TControl(Sender).Tag) then begin
      MDIChildren[i].Show;
      Exit;
    end;
  fmFactTrack := TfmFactTrack.Create(Application, False, TControl(Sender).Tag);
  fmFactTrack._SetVagonSQL := QuerySettings;
end;

procedure TfmMain.dxBarButton33Click(Sender: TObject);
type
  TFunc = function(AHandle: THandle; users_group_cod: string; usr_pwd:PUser_pwd) : variant;
var
           FEtran : TFunc;
           handle : THandle;
                v : variant;
            Query : TADOQuery;
  users_group_cod : string;
begin
  Screen.Cursor := crHourglass;

  Query := TADOQuery.Create(nil);
  Query.Connection := Lis;
  Query.SQL.Add('SELECT	inf_obj_cod as users_group_cod');
  Query.SQL.Add('FROM	  users INNER JOIN inf_obj on users.users_group_id = inf_obj.inf_obj_id');
  Query.SQL.Add('WHERE	users_name = system_user');
  Query.Open;
  users_group_cod := Query.FieldByName('users_group_cod').AsString;
  Query.Free;

  Screen.Cursor := crdefault;

  handle := LoadLibrary('etranECP.dll');
  @FEtran := GetProcAddress(handle, 'CreateWndEtranECPDoc');
  v := FEtran(Application.Handle, users_group_cod, usr_pwd);
  FreeLibrary(handle);
end;


procedure TfmMain.dxBarButton34Click(Sender: TObject);
var i : integer;
begin
  for i:=0 to MDIChildCount-1 Do
    if (MDIChildren[i].ClassName = 'TfmFact') then  begin
      MDIChildren[i].Free;
      Break;
    end;
  fmFact := TfmFact.Create(self, False);
  fmFact._SetEtranChange := True;
end;

procedure TfmMain.dxBarButton35Click(Sender: TObject);
begin
  if ActiveMDIChild <> nil then
    if ActiveMDIChild.Tag = 0 then
      OpenHelpCHM(10)
    else
      OpenHelpCHM(ActiveMDIChild.Tag)
  else
    OpenHelpCHM(10);
//    Showmessage(IntToStr(ActiveMDIChild.Tag));
//  Application.HelpFile := 'Help_Lis.chm';
//  Application.HelpShowTableOfContents;
//  Application.HelpContext(10);
end;

procedure TfmMain.dxBarButton36Click(Sender: TObject);
type
  TFunc = procedure;
var
  FAbout   : TFunc;
  handle   : THandle;
begin
  handle := LoadLibrary('pass.dll');
  @FAbout := GetProcAddress(handle, 'CreateWndAbout');
  FAbout;
  FreeLibrary(handle);
end;


procedure TfmMain.dxBarButton38Click(Sender: TObject);
type
  TFunc = function(AHandle: THandle; users_group_cod: string; usr_pwd: PUser_pwd; FIO_users: string) : variant;
var
           FEtran : TFunc;
           handle : THandle;
                v : variant;
            Query : TADOQuery;
  users_group_cod : string;
        FIO_users : string;
begin
  Screen.Cursor := crHourglass;

  Query := TADOQuery.Create(nil);
  Query.Connection := Lis;
  Query.SQL.Add('SELECT	inf_obj_cod as users_group_cod, FIO_users');
  Query.SQL.Add('FROM	  users INNER JOIN inf_obj on users.users_group_id = inf_obj.inf_obj_id');
  Query.SQL.Add('WHERE	users_name = system_user');
  Query.Open;
  users_group_cod := Query.FieldByName('users_group_cod').AsString;
  FIO_users       := Query.FieldByName('FIO_users').AsString;
  Query.Free;

  Screen.Cursor := crdefault;

  handle := LoadLibrary('etranECP.dll');
  @FEtran := GetProcAddress(handle, 'CreateWndEtranECPClaim');
  v := FEtran(Application.Handle, users_group_cod, usr_pwd, FIO_users);
  FreeLibrary(handle);
end;

procedure TfmMain.dxBarButton39Click(Sender: TObject);
var i : integer;
begin
  for i:=0 to MDIChildCount-1 do
    if (MDIChildren[i].ClassName = 'TfmPay') AND (TfmPay(MDIChildren[i])._GetTypePay = TControl(Sender).Tag) then begin
        MDIChildren[i].Show;
        Exit;
    end;
  fmPay := TfmPay.Create(Application, TControl(Sender).Tag, False);
end;

procedure TfmMain.dxBarButton3Click(Sender: TObject);
begin
  Close;
end;

procedure TfmMain.dxBarButton42Click(Sender: TObject);
var i : integer;
  bln : boolean;
begin
  bln := False;
  for i := 0 to MDIChildCount - 1 Do
    if (MDIChildren[i].ClassName = 'TfmClientInvoice') then begin
      fmClientInvoice := TfmClientInvoice(MDIChildren[i]);
      bln := True;
    end;
  if not bln then fmClientInvoice := TfmClientInvoice.Create(Application, False);
  fmClientInvoice._TypeInvoice := TComponent(Sender).Tag;
  fmClientInvoice.Show;
end;

procedure TfmMain.dxBarButton43Click(Sender: TObject);
var i : integer;
begin
  for i:=0 to MDIChildCount-1 do
    if (MDIChildren[i].ClassName = 'TfmInvoiceScore') AND (TfmInvoiceScore(MDIChildren[i]).Ftype_score = TControl(Sender).Tag) then begin
      MDIChildren[i].Show;
      Exit
    end;
  fmInvoiceScore := TfmInvoiceScore.Create(Application, False, TControl(Sender).Tag);
end;

procedure TfmMain.dxBarButton45Click(Sender: TObject);
var i : integer;
begin
  if not LisCheck(Lis.ConnectionString) then
    Exit;

  for i:=0 to MDIChildCount-1 do
    if (MDIChildren[i].ClassName = 'TfmZFTOScore') then begin
      MDIChildren[i].Show;
      Exit
    end;
  fmZFTOScore := TfmZFTOScore.Create(Application, False);
end;

procedure TfmMain.dxBarButton46Click(Sender: TObject);
var i : integer;
begin
  for i:=0 to MDIChildCount-1 do
    if (MDIChildren[i].ClassName = 'TfmFirmBalance') then begin
      if TfmFirmBalance(MDIChildren[i])._GetTypeBalance = TControl(Sender).Tag then begin
        MDIChildren[i].Show;
        Exit
      end;
    end;
  fmFirmBalance := TfmFirmBalance.Create(Application, TControl(Sender).Tag, False);
end;

procedure TfmMain.dxBarButton48Click(Sender: TObject);
var
  SP_finance_period_close : TADOStoredProc;
         SP_Bargain_Block : TADOStoredProc;
             finance_date : TDateTime;
              Query_Check : TADOQuery;
            Query_Bargain : TADOQuery;
                   DS_err : TADODataSet;
begin
  if Application.MessageBox('Вы точно уверены ???', 'Вниамние', MB_OKCANCEL + MB_ICONEXCLAMATION) = IDOK then begin
    fmPeriod := TfmPeriod.Create(Application, IncMonth(Date,-1), IncMonth(Date,-1), 3);
    fmPeriod._SetCaption := 'Финансовый месяц.';
    if fmPeriod.ShowModal=mrOK then begin
      Screen.Cursor := crHourglass;
      finance_date := fmPeriod._GetMonth;

      Query_Check := TADOQuery.Create(nil);
      Query_Check.Connection := Lis;
      Query_Check.SQL.Add('SELECT count(1) AS month_check FROM view_finance_period WHERE finance_date = ' + DateToSQL(finance_date));
      Query_Check.Open;

      if Query_Check.FieldByName('month_check').AsInteger <> 0  then begin
        Application.MessageBox(PChar('Финансовый месяц ' + FormatDateTime('mmmm',finance_date)+' УЖЕ закрыт.'), 'Сообщение', MB_ICONWARNING + MB_OK);
      end else begin
        try
          Lis.OnExecuteComplete := nil;
          Query_Bargain := TADOQuery.Create(nil);
          Query_Bargain.Connection := Lis;
          Query_Bargain.SQL.Add('SELECT	bargain_id, bargain_cod FROM view_bargain_rights');
          Query_Bargain.SQL.Add('WHERE	bargain_sum_fact_usd is not null');
          Query_Bargain.SQL.Add('       AND date_period_finance is null');
          Query_Bargain.SQL.Add('       AND date_period < ' + DateToSQL(IncMonth(finance_date, 1) - DayOf(finance_date) + 1));
          Query_Bargain.Open;

          SP_Bargain_Block := TADOStoredProc.Create(nil);
          SP_Bargain_Block.Connection := Lis;
          SP_Bargain_Block.ProcedureName := 'sp_Bargain_Block';
          SP_Bargain_Block.Parameters.Refresh;

          DS_err := TADODataSet.Create(nil);
          DS_err.FieldDefs.Add('bargain_id'  , ftInteger);
          DS_err.FieldDefs.Add('bargain_cod' , ftString, 255);
          DS_err.FieldDefs.Add('str_message' , ftString, 1000);
          DS_err.CreateDataSet;

          while not Query_Bargain.EOF do begin
            ShowTextMessage('Осталось приложений ' + IntToStr(Query_Bargain.RecordCount - Query_Bargain.RecNo) + '...' ,False);
            SP_Bargain_Block.Parameters.ParamByName('@bargain_id').Value          := Query_Bargain.FieldByName('bargain_id').AsString;
            SP_Bargain_Block.Parameters.ParamByName('@set_bargain_block').Value   := 1;
            SP_Bargain_Block.Parameters.ParamByName('@date_period_finance').Value := finance_date - DayOf(finance_date) + 15;
            try
              SP_Bargain_Block.ExecProc;
            except
              on E: Exception do begin
                DS_err.Append;
                DS_err.FieldByName('bargain_id').Value  := Query_Bargain.FieldByName('bargain_id').Value;
                DS_err.FieldByName('bargain_cod').Value := Query_Bargain.FieldByName('bargain_cod').Value;
                DS_err.FieldByName('str_message').Value := e.Message;
                DS_err.Post;
              end;
            end;
            Query_Bargain.Next;
          end;
          ShowTextMessage();


          if DS_err.RecordCount > 0 then begin
            fmFilter := TfmFilter.Create(1, DS_err, 'bargain_id', 'bargain_cod', 'str_message');
            fmFilter._SetBargainMessage := True;
            fmFilter.ShowModal();
            fmFilter.Free;
          end else
            Application.MessageBox(PChar('Закрыто ' + IntToStr(Query_Bargain.RecordCount) + ' приложений.'), 'Сообщение', MB_ICONINFORMATION + MB_OK);
          DS_err.Free;

          SP_Bargain_Block.Free;
          Query_Bargain.Free;

          if Application.MessageBox(PChar('Закрыть финансовый месяц ' + FormatDateTime('mmmm',finance_date) + '?'), 'Вниамние', MB_OKCANCEL + MB_ICONEXCLAMATION) = IDOK then begin
            SP_finance_period_close := TADOStoredProc.Create(nil);
            SP_finance_period_close.Connection := Lis;
            SP_finance_period_close.ProcedureName := 'sp_finance_period_close';
            SP_finance_period_close.Parameters.Refresh;
            SP_finance_period_close.Parameters.ParamByName('@finance_date').Value := finance_date;

            try
              SP_finance_period_close.ExecProc;
              Screen.Cursor := crDefault;
              Application.MessageBox('Финансовый месяц закрыт.', 'Сообщение', MB_ICONINFORMATION + MB_OK);
            except
            end;

            SP_finance_period_close.Free;
            Screen.Cursor := crDefault;
          end;

        finally
          Lis.OnExecuteComplete := LisExecuteComplete;
        end;
      end;
      Query_Check.Free;
      Screen.Cursor := crDefault;
    end;
  end;
end;

procedure TfmMain.dxBarButton49Click(Sender: TObject);
var          finance_date : TDateTime;
  SP_finance_period_close : TADOStoredProc;
                        Q : TADOQuery;
begin
  if Application.MessageBox('Вы точно уверены ???', 'Вниамние', MB_OKCANCEL + MB_ICONEXCLAMATION) = IDOK then begin
    fmPeriod := TfmPeriod.Create(Application, IncMonth(Date,-1), IncMonth(Date,-1), 3);
    fmPeriod._SetCaption := 'Финансовый месяц.';
    if fmPeriod.ShowModal=mrOK then begin
      Screen.Cursor := crHourglass;
      finance_date := fmPeriod._GetMonth;

      if TControl(Sender).Tag = 1 then begin
        Q := TADOQuery.Create(nil);
        Q.Connection := fmMain.Lis;
        Q.SQL.Add('DECLARE @finance_date	datetime');
        Q.SQL.Add('SET @finance_date	= :finance_date');

        Q.SQL.Add('SELECT bargain_id, bargain_cod, ''Нет фрахт. карт.'' as str_message');
        Q.SQL.Add('FROM view_bargain_rights');
        Q.SQL.Add('WHERE bargain_correct_type = 2');
        Q.SQL.Add('AND bargain_sum_fact_USD IS NULL');
        Q.SQL.Add('AND date_period_finance IS NULL');
        Q.SQL.Add('AND date_period >= ''20010101''');
        Q.SQL.Add('AND date_period < dateadd(month, 1, @finance_date - day(@finance_date) + 1)');
        Q.Parameters.ParamByName('finance_date').Value := finance_date;
        Q.Open;
        if Q.RecordCount > 0 then begin
          Application.MessageBox('Невозможно закрыть фин. месяц.', 'Ошибка', MB_ICONSTOP or MB_OK);
          fmFilter := TfmFilter.Create(1, Q, 'bargain_id', 'bargain_cod', 'str_message');
          fmFilter._SetBargainMessage := True;
          fmFilter.ShowModal();
          fmFilter.Free;

          Q.Free;
          Screen.Cursor := crDefault;
          Exit;
        end;

        Q.Free;
      end;

      SP_finance_period_close := TADOStoredProc.Create(nil);
      SP_finance_period_close.Connection := Lis;
      SP_finance_period_close.ProcedureName := 'sp_finance_period_close';
      SP_finance_period_close.Parameters.Refresh;
      SP_finance_period_close.Parameters.ParamByName('@finance_date').Value := finance_date;
      SP_finance_period_close.Parameters.ParamByName('@set_close'   ).Value := TControl(Sender).Tag;

      try
        SP_finance_period_close.ExecProc;
        Screen.Cursor := crDefault;
        if TControl(Sender).Tag = 1 then Application.MessageBox('Финансовый месяц закрыт.', 'Сообщение', MB_ICONINFORMATION + MB_OK);
        if TControl(Sender).Tag = 0 then Application.MessageBox('Финансовый месяц открыт.', 'Сообщение', MB_ICONINFORMATION + MB_OK);
      except
      end;

      SP_finance_period_close.Free;
      Screen.Cursor := crDefault;
    end;
  end;
end;

procedure TfmMain.dxBarButton50Click(Sender: TObject);
type
  TFunc = function(AppHand: THandle; usr_pwd: PUser_pwd; doc_type: string): Variant;
var
  FEdo      : TFunc;
  handle    : THandle;
  v         : Variant;
begin
  handle := LoadLibrary('EDO.dll');
  @FEdo := GetProcAddress(handle, 'CreateWndEDOService');
  v := FEdo(Application.Handle, usr_pwd, '');
  FreeLibrary(handle);
end;

procedure TfmMain.dxBarButton52Click(Sender: TObject);
var
  sNums       : string;
  sMsg        : string;
  BarCode     : TmyBarCode;
  bln         : boolean;
  i, sum, num : integer;
begin
  // Считываем ШК
  sNums := '';
  if not InputQuery('Поиск по Штрих-коду', 'Штрих-код:', sNums) then
    Exit;

  // Проверка на длину
  if Length(sNums) <> 26 then begin
    Application.MessageBox('Не верная длина штрих-кода', 'Не верный Штрих-код', MB_ICONEXCLAMATION or MB_OK);
    Exit;
  end;

  // Проверка на цифры
  bln := True;
  for i := 1 to Length(sNums) do
    bln := bln and (sNums[i] in ['0'..'9']);
  if not bln then begin
    Application.MessageBox('Штрих-код должен состоять только из цифр', 'Не верный Штрих-код', MB_ICONEXCLAMATION or MB_OK);
    Exit;
  end;

  // Проверка контрольной суммы
  sum := 0;
  for i := 1 to Length(sNums) do begin
    num := StrToInt(sNums[i]);
    if (i mod 2) = 1 then num := num * 3;
    sum := sum + num;
  end;
  bln := ((sum mod 10) = 0);
  if not bln then begin
    Application.MessageBox('Не верная контрольная сумма', 'Не верный Штрих-код', MB_ICONEXCLAMATION or MB_OK);
    Exit;
  end;

  // Разбивка
  BarCode.database_cod := StrToInt(Copy(sNums, 1, 2));
  BarCode.object_id    := StrToInt(Copy(sNums, 3, 3));
  BarCode.date         := EncodeDate(2000 + StrToInt(Copy(sNums, 6, 2)), StrToInt(Copy(sNums, 8, 2)), StrToInt(Copy(sNums, 10, 2)));
  BarCode.global_id    := StrToInt(Copy(sNums, 12, 10));
  BarCode.user_id      := StrToInt(Copy(sNums, 22, 4));

  // Проверка на программу
  bln := False;
  if ((BarCode.database_cod <> 0) and (not bln))
    or ((BarCode.database_cod <> 3) and (bln)) then begin
    case BarCode.database_cod of
      0: sMsg := 'Данный документ находится в синем LIS';
      1: sMsg := 'Данный документ находится в LIS-Cont';
      2: sMsg := 'Данный документ находится в LIS-Doc (синий ЛИС-Док)';
      3: sMsg := 'Данный документ находится в LIS (Green)';
      4: sMsg := 'Данный документ находится в LIS-Doc (Green)';
    else
      sMsg := 'Данный документ был сформирован неизвестным источником';
    end;
    Application.MessageBox(PChar(sMsg), 'Не верный Штрих-код', MB_ICONEXCLAMATION or MB_OK);
    Exit;
  end;

  // Поиск
  case BarCode.object_id of
    24 : begin // BARGAIN
          Screen.Cursor := crHourglass;

          OpenAgree4List(BarCode.date, BarCode.date, False, IntToStr(BarCode.global_id));

//          // Активируем форму
//          bln := False;
//          for i := 0 to MDIChildCount - 1 Do
//            if (MDIChildren[i].ClassName = 'TfmAgree') then begin
//              MDIChildren[i].Show;
//              bln := True;
//            end;
//          if not bln then
//            fmAgree := TfmAgree.Create(Application, False);
//
//          fmAgree.Query_Agree.Close;
//          fmAgree.Query_Agree.Parameters.ParamByName('date_period1').Value := StartOfTheMonth(BarCode.date);
//          fmAgree.Query_Agree.Parameters.ParamByName('date_period2').Value := EndOfTheMonth(BarCode.date);
//          fmAgree.Query_Agree.SQL[3] := 'AND users_owner_id = :users_owner_id ';
//          fmAgree.Query_Agree.Parameters.ParamByName('users_owner_id').Value := BarCode.user_id;
//          fmAgree.Query_Agree.Open;
//
//          fmAgree.cxGrid1DBBandedTableView1.Controller.ClearSelection;
//          fmAgree.PeriodDate1 := StartOfTheMonth(BarCode.date);
//          fmAgree.PeriodDate2 := EndOfTheMonth(BarCode.date);
//
//          fmAgree.cxGrid1DBBandedTableView1.DataController.LocateByKey(BarCode.global_id);
//          if fmAgree.cxGrid1DBBandedTableView1.Controller.FocusedRecord <> nil then fmAgree.cxGrid1DBBandedTableView1.Controller.FocusedRecord.Selected := True;

          Screen.Cursor := crDefault;
         end;
    47 : begin // ORDERS
           // GoToOrdersID(BarCode.global_id);
         end;
    88 : begin // ACTS
          // Активируем форму
          bln := False;
          for i := 0 to MDIChildCount - 1 Do
            if (MDIChildren[i].ClassName = 'TfmActs') then begin
              MDIChildren[i].Show;
              bln := True;
            end;
          if not bln then
            fmActs := TfmActs.Create(Application);
            fmActs._SetActsID := BarCode.global_id;
         end;
  end;
end;

procedure TfmMain.dxBarButton53Click(Sender: TObject);
type
  TFunc = function(AHandle: THandle; users_group_cod: string; usr_pwd:PUser_pwd) : variant;
var
           FEtran : TFunc;
           handle : THandle;
                v : variant;
            Query : TADOQuery;
  users_group_cod : string;
begin
  Screen.Cursor := crHourglass;

  Query := TADOQuery.Create(nil);
  Query.Connection := Lis;
  Query.SQL.Add('SELECT	inf_obj_cod as users_group_cod');
  Query.SQL.Add('FROM	  users INNER JOIN inf_obj on users.users_group_id = inf_obj.inf_obj_id');
  Query.SQL.Add('WHERE	users_name = system_user');
  Query.Open;
  users_group_cod := Query.FieldByName('users_group_cod').AsString;
  Query.Free;

  Screen.Cursor := crdefault;

  handle := LoadLibrary('etran.dll');
  @FEtran := GetProcAddress(handle, 'CreateWndEtrMailing');
  v := FEtran(Application.Handle, users_group_cod, usr_pwd);
  FreeLibrary(handle);

end;

procedure TfmMain.dxBarButton54Click(Sender: TObject);
type
  TFunc = function(AHandle: THandle; usr_pwd: PUser_pwd) : variant;
var
  FEtran : TFunc;
  handle : THandle;
       v : variant;
begin
  handle := LoadLibrary('Dictionary.dll');
  @FEtran := GetProcAddress(handle, 'CreateWndVagonNSI');
  v := FEtran(Application.Handle, usr_pwd);
  FreeLibrary(handle);
end;

procedure TfmMain.dxBarButton71Click(Sender: TObject);
var i : integer;
begin
  for i:=0 to MDIChildCount-1 Do
    if (MDIChildren[i].ClassName = 'TfmPlanClient') then begin
      MDIChildren[i].Close;
      Break;
    end;
  fmPlanClient := TfmPlanClient.Create(Application, False, 1);
end;

procedure TfmMain.dxBarButton58Click(Sender: TObject);
type
  TFunc = function(users_name: string; password: string; server: string; catalog: string): Variant;
var
  FPass   : TFunc;
  handle  : THandle;
  v       : Variant;
  Q       : TADOQuery;
begin
  Q := TADOQuery.Create(nil);
  Q.Connection := Lis;
  Q.SQL.Add('SELECT * FROM users WHERE users_id = ' + IntToStr(TdxBarButton(Sender).Tag));
  Q.Open;

  handle := LoadLibrary('pass.dll');
  @FPass := GetProcAddress(handle, 'ConnectToDatabase');
  v := FPass(Q.FieldByName('users_name').AsString, usr_pwd.user_pass, '', '');
  FreeLibrary(handle);
  if v[0]<>-9 then SetPar(v);

  Q.Free;
end;

procedure TfmMain.dxBarButton61Click(Sender: TObject);
type
  TFunc = function (AppHand : THandle; str_conn : string; set_choose : boolean; str_invoice_header_id : string) : variant;
var
  FInvoiceHeader : TFunc;
  handle         : THandle;
  v              : Variant;
begin
  handle := LoadLibrary('dictionary.dll');
  @FInvoiceHeader := GetProcAddress(handle,'CreateWndInvoiceHeader');
  v := FInvoiceHeader(Application.Handle, Lis.ConnectionString, False, '');
  FreeLibrary(handle);
end;

procedure TfmMain.dxBarButton63Click(Sender: TObject);
var i : integer;
begin
  for i:=0 to MDIChildCount-1 Do
    if (MDIChildren[i].ClassName = 'TfmFactTech') then begin
      MDIChildren[i].Show;
      Exit
    end;
  fmFactTech := TfmFactTech.Create(Application, False);
end;

procedure TfmMain.dxBarButton65Click(Sender: TObject);
type
  TFunc = function(AppHand:THandle; f:boolean; usr_pwd:PUser_pwd) : variant;
var
  FDic   : TFunc;
  handle : THandle;
  v      : Variant;
begin
  handle := LoadLibrary('dictionary.dll');
  @FDic := GetProcAddress(handle, 'CreateWndVagonModel');
  v := FDic(Application.Handle, False, usr_pwd);
  FreeLibrary(handle);
end;

procedure TfmMain.dxBarButton66Click(Sender: TObject);
type
  TFunc = function(AppHand:THandle; f:boolean; usr_pwd:PUser_pwd; page: integer) : variant;
var
  FDic   : TFunc;
  handle : THandle;
  v      : Variant;
begin
  handle := LoadLibrary('dictionary.dll');
  @FDic := GetProcAddress(handle, 'CreateWndVagon');
  v := FDic(Application.Handle, False, usr_pwd, TComponent(Sender).Tag);
  FreeLibrary(handle);
end;

procedure TfmMain.dxBarButton67Click(Sender: TObject);
type
  TFunc = function(AppHand:THandle;f:boolean;usr_pwd:PUser_pwd) : variant;
var
  FDic   : TFunc;
  handle : THandle;
  v      : Variant;
begin
  handle := LoadLibrary('dictionary.dll');
  @FDic := GetProcAddress(handle, 'CreateWndVagonRepair');
  v := FDic(Application.Handle, False, usr_pwd);
  FreeLibrary(handle);
end;

procedure TfmMain.dxBarButton68Click(Sender: TObject);
type
  TFunc = function(AHandle : THandle; users_group_cod: string; usr_pwd:PUser_pwd) : variant;
var
  FEtran : TFunc;
  handle : THandle;
       v : variant;
            Query : TADOQuery;
  users_group_cod : string;
begin
  Screen.Cursor := crHourglass;

  Query := TADOQuery.Create(nil);
  Query.Connection := Lis;
  Query.SQL.Add('SELECT	inf_obj_cod as users_group_cod');
  Query.SQL.Add('FROM	  users INNER JOIN inf_obj on users.users_group_id = inf_obj.inf_obj_id');
  Query.SQL.Add('WHERE	users_name = system_user');
  Query.Open;
  users_group_cod := Query.FieldByName('users_group_cod').AsString;
  Query.Free;

  Screen.Cursor := crdefault;

  handle := LoadLibrary('etran.dll');
  @FEtran := GetProcAddress(handle, 'CreateWndEtranMonitor');
  v := FEtran(Application.Handle, users_group_cod, usr_pwd);
  FreeLibrary(handle);
end;

procedure TfmMain.dxBarButton69Click(Sender: TObject);
type
  TFunc = function(AppHand: THandle; flag: boolean; usr_pwd: PUser_pwd) : variant;
var
  FPretenzia : TFunc;
  handle     : THandle;
  v          : Variant;
begin
  handle := LoadLibrary('dictionary.dll');
  @FPretenzia := GetProcAddress(handle, 'CreateWndPretenzia');
  v := FPretenzia(Application.Handle, False, usr_pwd);
  FreeLibrary(handle);
end;

procedure TfmMain.dxBarButton6Click(Sender: TObject);
type
  TFunc = function(AppHand:THandle; global_id: integer; caption: string; usr_pwd: PUser_pwd):variant;
var
  FShablon  : TFunc;
  handle    : THandle;
  v         : Variant;
begin
  if usr_pwd.user_func.Locate('func_name', 'set_doc_view_all', [loCaseInsensitive]) then begin
    handle := LoadLibrary('dictionary.dll');
    @FShablon := GetProcAddress(handle,'CreateWndDocBlob');
    v := FShablon(Application.Handle, -9, 'Связанные документы', usr_pwd);
    FreeLibrary(handle);
  end else Application.MessageBox('У вас недостаточно прав !!!', 'Ошибка', MB_OK);
end;

procedure TfmMain.dxBarButton70Click(Sender: TObject);
begin
  RailAtlas_ShowRoute(Lis, '193504');  // Москва Павелецкая товарная
end;

procedure TfmMain.dxBarButton7Click(Sender: TObject);
type
  TFunc = function(AppHand:THandle; id:integer; type_doc_id:integer; caption: string; usr_pwd:PUser_pwd; flag: boolean):variant;
var
  FShablon  : TFunc;
  handle    : THandle;
  v         : Variant;
begin
  if usr_pwd.user_func.Locate('func_name', 'set_doc_view_all', [loCaseInsensitive]) then begin
    handle := LoadLibrary('dictionary.dll');
    @FShablon := GetProcAddress(handle,'CreateWndDocShablon');
    v := FShablon(Application.Handle, -8, -8, 'Шаблоны', usr_pwd, false);
    FreeLibrary(handle);
  end else Application.MessageBox('У вас недостаточно прав !!!', 'Ошибка', MB_OK);
end;

procedure TfmMain.dxBarButton81Click(Sender: TObject);
begin
  OpenRealInfo('-9');
end;

procedure TfmMain.dxBarButton82Click(Sender: TObject);
var i : integer;
begin
  for i:=0 to MDIChildCount-1 do
    if MDIChildren[i].ClassName = 'TfmOrdersPay' then begin
      MDIChildren[i].Show;
      Exit
    end;
  fmOrdersPay := TfmOrdersPay.Create(Application, False);
end;

procedure TfmMain.dxBarButton83Click(Sender: TObject);
type
  TFunc = function(AppHand:THandle;f:boolean;usr_pwd:PUser_pwd) : variant;
var
  FDic   : TFunc;
  handle : THandle;
  v      : Variant;
begin
  handle := LoadLibrary('dictionary.dll');
  @FDic := GetProcAddress(handle, 'CreateWndVagonRepairPlan');
  v := FDic(Application.Handle, False, usr_pwd);
  FreeLibrary(handle);
end;

procedure TfmMain.dxBarButton8Click(Sender: TObject);
var
  FDic   : TFunc;
  handle : THandle;
  v      : Variant;
begin
  handle := LoadLibrary('dictionary.dll');
  @FDic := GetProcAddress(handle, 'CreateWndDictionary');
  v := FDic(Application.Handle, False, usr_pwd);
  FreeLibrary(handle);
end;

procedure TfmMain.dxBarButton91Click(Sender: TObject);
type
  TFunc = function(AHandle : THandle; flag: boolean; users_group_cod: string; usr_pwd:PUser_pwd) : variant;
var
           FEtran : TFunc;
           handle : THandle;
                v : variant;
            Query : TADOQuery;
  users_group_cod : string;
begin
  Screen.Cursor := crHourglass;

  Query := TADOQuery.Create(nil);
  Query.Connection := Lis;
  Query.SQL.Add('SELECT	inf_obj_cod as users_group_cod');
  Query.SQL.Add('FROM	  users INNER JOIN inf_obj on users.users_group_id = inf_obj.inf_obj_id');
  Query.SQL.Add('WHERE	users_name = system_user');
  Query.Open;
  users_group_cod := Query.FieldByName('users_group_cod').AsString;
  Query.Free;

  Screen.Cursor := crdefault;

  handle := LoadLibrary('etran.dll');
  @FEtran := GetProcAddress(handle, 'CreateWndEtranInvoice');
  v := FEtran(Application.Handle, False, users_group_cod, usr_pwd);
  FreeLibrary(handle);
end;

procedure TfmMain.dxBarButton92Click(Sender: TObject);
type
  TFunc = function(AHandle: THandle; users_group_cod: string; usr_pwd:PUser_pwd) : variant;
var
           FEtran : TFunc;
           handle : THandle;
                v : variant;
            Query : TADOQuery;
  users_group_cod : string;
begin
  Screen.Cursor := crHourglass;

  Query := TADOQuery.Create(nil);
  Query.Connection := Lis;
  Query.SQL.Add('SELECT	inf_obj_cod as users_group_cod');
  Query.SQL.Add('FROM	  users INNER JOIN inf_obj on users.users_group_id = inf_obj.inf_obj_id');
  Query.SQL.Add('WHERE	users_name = system_user');
  Query.Open;
  users_group_cod := Query.FieldByName('users_group_cod').AsString;
  Query.Free;

  Screen.Cursor := crdefault;

  handle := LoadLibrary('etran.dll');
  @FEtran := GetProcAddress(handle, 'CreateWndEtranVPU');
  v := FEtran(Application.Handle, users_group_cod, usr_pwd);
  FreeLibrary(handle);
end;

procedure TfmMain.dxBarButton93Click(Sender: TObject);
type
  TFunc = function(AHandle : THandle; flag: boolean; users_group_cod: string; usr_pwd: PUser_pwd): variant;
var
           FEtran : TFunc;
           handle : THandle;
                v : variant;
            Query : TADOQuery;
  users_group_cod : string;
begin
  Screen.Cursor := crHourglass;

  Query := TADOQuery.Create(nil);
  Query.Connection := Lis;
  Query.SQL.Add('SELECT	inf_obj_cod as users_group_cod');
  Query.SQL.Add('FROM	  users INNER JOIN inf_obj on users.users_group_id = inf_obj.inf_obj_id');
  Query.SQL.Add('WHERE	users_name = system_user');
  Query.Open;
  users_group_cod := Query.FieldByName('users_group_cod').AsString;
  Query.Free;

  Screen.Cursor := crdefault;

  handle := LoadLibrary('etran.dll');
  @FEtran := GetProcAddress(handle, 'CreateWndEtranClaim');
  v := FEtran(Application.Handle, False, users_group_cod, usr_pwd);
  FreeLibrary(handle);
end;

procedure TfmMain.dxBarButton94Click(Sender: TObject);
type
  TFunc = function(AHandle : THandle; flag: boolean; users_group_cod: string; usr_pwd:PUser_pwd) : variant;
var
           FEtran : TFunc;
           handle : THandle;
                v : variant;
            Query : TADOQuery;
  users_group_cod : string;
begin
  Screen.Cursor := crHourglass;

  Query := TADOQuery.Create(nil);
  Query.Connection := Lis;
  Query.SQL.Add('SELECT	inf_obj_cod as users_group_cod');
  Query.SQL.Add('FROM	  users INNER JOIN inf_obj on users.users_group_id = inf_obj.inf_obj_id');
  Query.SQL.Add('WHERE	users_name = system_user');
  Query.Open;
  users_group_cod := Query.FieldByName('users_group_cod').AsString;
  Query.Free;

  Screen.Cursor := crdefault;

  handle := LoadLibrary('etran.dll');
  @FEtran := GetProcAddress(handle, 'CreateWndEtranRT');
  v := FEtran(Application.Handle, False, users_group_cod, usr_pwd);
  FreeLibrary(handle);
end;

procedure TfmMain.dxBarButton95Click(Sender: TObject);
type
  TFunc = function(AHandle: THandle; users_group_cod: string; usr_pwd:PUser_pwd) : variant;
var
           FEtran : TFunc;
           handle : THandle;
                v : variant;
            Query : TADOQuery;
  users_group_cod : string;
begin
  Screen.Cursor := crHourglass;

  Query := TADOQuery.Create(nil);
  Query.Connection := Lis;
  Query.SQL.Add('SELECT	inf_obj_cod as users_group_cod');
  Query.SQL.Add('FROM	  users INNER JOIN inf_obj on users.users_group_id = inf_obj.inf_obj_id');
  Query.SQL.Add('WHERE	users_name = system_user');
  Query.Open;
  users_group_cod := Query.FieldByName('users_group_cod').AsString;
  Query.Free;

  Screen.Cursor := crdefault;

  handle := LoadLibrary('etran.dll');
  @FEtran := GetProcAddress(handle, 'CreateWndEtranRegCont');
  v := FEtran(Application.Handle, users_group_cod, usr_pwd);
  FreeLibrary(handle);
end;

procedure TfmMain.dxBarButton96Click(Sender: TObject);
type
  TFunc = function(AHandle: THandle; users_group_cod: string; usr_pwd:PUser_pwd) : variant;
var
           FEtran : TFunc;
           handle : THandle;
                v : variant;
            Query : TADOQuery;
  users_group_cod : string;
begin
  Screen.Cursor := crHourglass;

  Query := TADOQuery.Create(nil);
  Query.Connection := Lis;
  Query.SQL.Add('SELECT	inf_obj_cod as users_group_cod');
  Query.SQL.Add('FROM	  users INNER JOIN inf_obj on users.users_group_id = inf_obj.inf_obj_id');
  Query.SQL.Add('WHERE	users_name = system_user');
  Query.Open;
  users_group_cod := Query.FieldByName('users_group_cod').AsString;
  Query.Free;

  Screen.Cursor := crdefault;

  handle := LoadLibrary('etran.dll');
  @FEtran := GetProcAddress(handle, 'CreateWndEtranAct');
  v := FEtran(Application.Handle, users_group_cod, usr_pwd);
  FreeLibrary(handle);
end;


procedure TfmMain.dxBarLargeButton1Click(Sender: TObject);
type
  TFunc = function(AppHand: THandle; usr_pwd: PUser_pwd) : variant;
var
  FUsersRole : TFunc;
  handle     : THandle;
begin
  handle := LoadLibrary('user.dll');
  @FUsersRole := GetProcAddress(handle, 'CreateWndUsersRole');
  FUsersRole(Application.Handle, usr_pwd);
  FreeLibrary(handle);
end;

procedure TfmMain.dxBarLargeButton2Click(Sender: TObject);
var i : integer;
begin
  if not LisCheck(Lis.ConnectionString) then
    Exit;

  for i:=0 to MDIChildCount-1 Do
    if (MDIChildren[i].ClassName = 'TfmFirm')
    and (TfmFirm(MDIChildren[i])._TypeView = TComponent(Sender).Tag) then begin
      MDIChildren[i].Show;
      Exit
    end;
  fmFirm := TfmFirm.Create(Application, False, 0, TComponent(Sender).Tag, usr_pwd);
end;

procedure TfmMain.dxBarLargeButton3Click(Sender: TObject);
var i : integer;
begin
  for i:=0 to MDIChildCount-1 Do
    if (MDIChildren[i].ClassName = 'TfmPlanClient') then begin
      MDIChildren[i].Close;
      Break;
    end;
  fmPlanClient := TfmPlanClient.Create(Application, False, 0);
end;

procedure TfmMain.dxBarLargeButton4Click(Sender: TObject);
var i : integer;
begin
  if not LisCheck(Lis.ConnectionString) then
    Exit;


  for i:=0 to MDIChildCount-1 Do
    if (MDIChildren[i].ClassName = 'TfmAgree2') then begin
      MDIChildren[i].Show;
      Exit
    end;
  fmAgree2 := TfmAgree2.Create(Application, False);
end;

procedure TfmMain.dxBarLargeButton5Click(Sender: TObject);
var i : integer;
begin
  for i:=0 to MDIChildCount-1 do
      if (MDIChildren[i].ClassName = 'TfmClientFrahtCard2') then begin
        MDIChildren[i].Show;
        Exit
      end;
    fmClientFrahtCard2 := TfmClientFrahtCard2.Create(Application, False);
end;

procedure TfmMain.dxBarLargeButton6Click(Sender: TObject);
var i : integer;
begin
  for i:=0 to MDIChildCount-1 Do
    if (MDIChildren[i].ClassName = 'TfmActs') then begin
      MDIChildren[i].Show;
      Exit
    end;
  fmActs := TfmActs.Create(Application);

end;

procedure TfmMain.dxBarLargeButton7Click(Sender: TObject);
var i : integer;
begin
  if not LisCheck(Lis.ConnectionString) then
    Exit;


  for i:=0 to MDIChildCount-1 Do
    if (MDIChildren[i].ClassName = 'TfmEffectSPS') then begin
      MDIChildren[i].Show;
      Exit
    end;
  fmEffectSPS := TfmEffectSPS.Create(Application, False, Lis);
end;

procedure TfmMain.HelpExecute(Sender: TObject);
begin
   Application.HelpContext(1);
end;

procedure TfmMain.Timer1Timer(Sender: TObject);
var Q    : TADOQuery;
begin
  Timer1.Enabled := False;

  Q := TADOQuery.Create(nil);
  Q.Connection := Lis;
  Q.SQL.Add('SELECT max(ver_name) AS ver_name FROM ver');
  Q.Open;
  if (Q.FieldByName('ver_name').AsString <> GetVersion) AND (usr_pwd.users_id <> 1) then begin
    Application.MessageBox('ВАМ НЕОБХОДИМО ОБНОВИТЬ ВЕРСИЮ ПРОГРАММЫ !!!', 'ВНИМАНИЕ', MB_OK);
    Timer1.Interval := 15000;  // 15сек
  end;

  Q.Close;
  Q.Free;

  Timer1.Enabled := True;
end;

procedure TfmMain.TopicExecute(Sender: TObject);
begin
  Application.HelpCommand(HELP_FINDER, 0)
end;

procedure TfmMain.FormDestroy(Sender: TObject);
var Q : TADOQuery;
begin
  if usr_pwd^.user_name <> 'sa' then begin
    Q := TADOQuery.Create(nil);
    Q.Connection := fmMain.Lis;
    Q.SQL.Add('UPDATE reg_session SET date_end=:date_end WHERE session_id=:session_id');
    Q.Parameters.ParamByName('date_end').Value := Now();
    Q.Parameters.ParamByName('session_id').Value := usr_pwd.session;
    Q.ExecSQL;
    Q.Free;
  end;
  dispose(usr_pwd);
  dispose(usr_pwd_docs);

  // Очистим директорию с шаблонами
  DeleteFileFromDir();

  StoreRegistryCheck(rgSave, '\Software\Lis1\Main_Check', 'NEW_EXCEL',  dxBarButton131.Down);
end;

//function TfmMain.GetVersion : string;
//var     dwVerHnd : DWORD;
//   dwVerInfoSize : DWORD;
//    lpstrVffInfo : Pointer;
//               d : UINT;
//              FI : PVSFixedFileInfo;
//              File_Rec: TSearchRec;
//              DateTime:TDateTime;
//              s : string;
//              ii : LongInt;
//begin
//  dwVerInfoSize := GetFileVersionInfoSize(PChar(Application.ExeName), dwVerHnd);
//  lpstrVffInfo := PChar(AllocMem(dwVerInfoSize - 1));
//  GetFileVersionInfo(PChar(Application.ExeName), dwVerHnd, dwVerInfoSize, lpstrVffInfo);
//  VerQueryValue(lpstrVffInfo,'\', Pointer(FI), d);
////  ShowMessage(Format('%x',[FI.dwFileVersionMS]));
//  result := Format('%x',[FI.dwFileVersionMS]);
//end;

procedure TfmMain.FormClose(Sender: TObject; var Action: TCloseAction);
begin
   Reg.WriteString('Ver', GetVersion);
   Reg.CloseKey;
   Reg.Free;
   Action := caFree;
end;

procedure TfmMain.LisExecuteComplete(Connection: TADOConnection; RecordsAffected: Integer; const Error: Error; var EventStatus: TEventStatus; const Command: _Command; const Recordset: _Recordset);
begin
  if EventStatus = esErrorsOccured then begin
    Application.MessageBox(PWideChar(Error.Description), 'Внимание', MB_OK + MB_ICONERROR);
    ShowTextMessage('', True);
    Screen.Cursor := crDefault;
  end;
end;

procedure TfmMain.GetAllExchange;
var Q, Q_Currency : TADOQuery;
               SP : TADOStoredProc;
                x : real;
           d1, d2 :TDateTime;
begin
  Screen.Cursor := crHourglass;

  SP := TADOStoredProc.Create(nil);
  SP.Connection := Lis;
  SP.ProcedureName := 'sp_exchange_new_modify';
  SP.Parameters.Refresh;

  Q_Currency := TADOQuery.Create(nil);
  Q_Currency.Connection := Lis;
  Q_Currency.SQL.Add('SELECT brief_name, currency_id FROM currency WHERE currency_id not IN (3)');
  Q_Currency.Open;

  Q := TADOQuery.Create(nil);
  Q.Connection := Lis;
  Q.SQL.Add('SELECT TOP 1 exchange_date FROM exchange_new WHERE currency_id = :currency_id AND set_exchange_day = 1 ORDER BY exchange_date DESC');

  while not Q_Currency.Eof do begin
    Q.Close;
    Q.Parameters.ParamByName('currency_id').Value := Q_Currency.FieldByName('currency_id').AsInteger;
    Q.Open;
    d1 := Q.FieldByName('exchange_date').AsDateTime + 1;
    d2 := Date;

    while Trunc(d1) <= Trunc(d2) do begin
      ShowTextMessage('Загрузка курсов валют ' + Q_Currency.FieldByName('brief_name').AsString + ' - ' + FormatDateTime('dd.mm.yyyy', d1) + '...' , False);
      x := GetExchangeFromInet_SOAP(d1, Q_Currency.FieldByName('brief_name').AsString); //GetExchangeFromInet_SOAP(d1, Q_Currency.FieldByName('currency_id').AsInteger, Lis);

      if (x <> 0) and (x <> -9) then begin
        SP.Parameters.ParamByName('@type_action').Value := 0;
        SP.Parameters.ParamByName('@exchange_id').Value := -9;
        SP.Parameters.ParamByName('@currency_id').Value := Q_Currency.FieldByName('currency_id').AsInteger;
        SP.Parameters.ParamByName('@exchange_date').Value := d1;
        SP.Parameters.ParamByName('@set_exchange_day').Value := 1;
        SP.Parameters.ParamByName('@exchange_val').Value := x;
        try
          SP.ExecProc;
        except

        end;
      end;

      d1 := d1 + 1;
    end;

    Q_Currency.Next;
  end;

  SP.Free;
  Q_Currency.Free;
  Q.Free;

  ShowTextMessage();
  Screen.Cursor := crDefault;
end;

procedure TfmMain.dxBarButton74Click(Sender: TObject);
type
  TFunc = function(AppHand:THandle; f:boolean; usr_pwd:PUser_pwd; vagon_id: integer) : variant;
var
  FDic   : TFunc;
  handle : THandle;
  v      : Variant;
begin
  handle := LoadLibrary('dictionary.dll');
  @FDic := GetProcAddress(handle, 'CreateWndEqualNode');
  v := FDic(Application.Handle, False, usr_pwd, 0);
  FreeLibrary(handle);
end;

procedure TfmMain.dxBarButton75Click(Sender: TObject);
type
  TFunc = function(AppHand: THandle; flag: boolean; usr_pwd: PUser_pwd) : variant;
var
  FRepFactTrack : TFunc;
         handle : THandle;
begin
    handle := LoadLibrary('reports.dll');
    @FRepFactTrack := GetProcAddress(handle, 'CreateWndRepFactTrack');
    FRepFactTrack(Application.Handle, False, usr_pwd);
    FreeLibrary(handle);
end;

procedure TfmMain.dxBarButton77Click(Sender: TObject);
type
  TFunc = function(AppHand:THandle; f:boolean; usr_pwd:PUser_pwd) : variant;
var
  FDic   : TFunc;
  handle : THandle;
  v      : Variant;
begin
  handle := LoadLibrary('dictionary.dll');
  @FDic := GetProcAddress(handle, 'CreateWndFactParam');
  v := FDic(Application.Handle, False, usr_pwd);
  FreeLibrary(handle);
end;

procedure TfmMain.dxBarButton78Click(Sender: TObject);
type
  TFunc = function(AppHand: THandle; f: boolean; conn: TADOConnection) : variant;
var
  FDic   : TFunc;
  handle : THandle;
  v      : Variant;
begin
  handle := LoadLibrary('dictionary.dll');
  @FDic := GetProcAddress(handle, 'CreateWndFactMilage');
  v := FDic(Application.Handle, False, Lis);
  FreeLibrary(handle);
end;

procedure TfmMain.dxBarButton79Click(Sender: TObject);
type
  TFunc = function(AppHand:THandle; f:boolean; usr_pwd:PUser_pwd) : variant;
var
  FDic   : TFunc;
  handle : THandle;
  v      : Variant;
begin
  handle := LoadLibrary('dictionary.dll');
  @FDic := GetProcAddress(handle, 'CreateWndFactUnit');
  v := FDic(Application.Handle, False, usr_pwd);
  FreeLibrary(handle);
end;

procedure TfmMain.dxBarButton84Click(Sender: TObject);
var    exWks, exApp : Variant;
                 SP : TADOStoredProc;
        date1,date2 : TDateTime;
provide_contract_id : Integer;
    str_vagon_owner : string;
              row_0 : Integer;
begin
  Screen.Cursor := crHourglass;
  date1 := Date;
  date2 := Date;
  fmPeriod := TfmPeriod.Create(Application, date1, date2, 3);

  if fmPeriod.ShowModal = mrOK then begin
    date1 := fmPeriod._GetMonth;
    date2 := IncMonth(date1) - 1;
  end else exit;

  //Выбор договора предоставления
  fmContract := TfmContract.Create(Application, True, 1);
  fmContract.cxTabSheet2.Visible := False;
  fmContract.Visible := False;
  fmContract.Caption := fmContract.Caption + ' Выберите договор предоставления.';
  if fmContract.ShowModal = mrOk then begin
    provide_contract_id := fmContract._GetContractId;
  end else begin
    fmContract.Free;
    ShowTextMessage('', True);
    Screen.Cursor := crDefault;
    exit;
  end;
  fmContract.Free;

  //Выбор договоров аренды
  fmContract := TfmContract.Create(Application, True, 1);
  fmContract.cxTabSheet2.Visible := False;
  fmContract.Visible := False;
  fmContract.Caption := fmContract.Caption + ' Выберите договор аренды.';
  if fmContract.ShowModal = mrOk then begin
    str_vagon_owner := fmContract._GetStrContractId;
  end else begin
    fmContract.Free;
    ShowTextMessage('', True);
    Screen.Cursor := crDefault;
    exit;
  end;
  fmContract.Free;

  Screen.Cursor := crHourglass;
  ShowTextMessage('Запуск Excel...', False);
  exApp := CreateOleObject('Excel.Application');
  exApp.Workbooks.Add(GetDocBlob(Lis, 150, 9, True)); // 'Доходность арендованного вагона'
  exWks := exApp.ActiveWorkbook.WorkSheets[1];

  ShowTextMessage('Формирование отчета...', False);
  SP := TADOStoredProc.Create(nil);
  SP.Connection := Lis;
  SP.ProcedureName := 'sp_vagon_profit_arenda_get';
  SP.Parameters.Refresh;
  SP.Parameters.ParamByName('@date_begin').Value := date1;
  SP.Parameters.ParamByName('@date_end').Value := date2;
  SP.Parameters.ParamByName('@users_group_id').Value := usr_pwd.user_group_id;
  SP.Parameters.ParamByName('@provide_contract_id').Value := provide_contract_id;
  SP.Parameters.ParamByName('@str_vagon_owner').Value := str_vagon_owner;

  SP.Open;

  ShowTextMessage('Вывод в Excel...', False);
  exWks.Range['C4'].Value := DateToStr(date1);
  exWks.Range['D4'].Value := DateToStr(date2);

  row_0 := 7;

  while not SP.EOF do begin
    exWks.Range['B' + IntToStr(row_0)].Value := SP.FieldByName('num_vagon').AsString;
    exWks.Range['C' + IntToStr(row_0)].Value := SP.FieldByName('firm_customer_name').AsString;
    exWks.Range['D' + IntToStr(row_0)].Value := SP.FieldByName('provide_sum').AsString;
    exWks.Range['E' + IntToStr(row_0)].Value := SP.FieldByName('arenda_sum').AsString;
    exWks.Range['F' + IntToStr(row_0)].Value := SP.FieldByName('profit_sum').AsString;
    SP.Next;
    if not SP.Eof then begin
      xCopyRow(exApp,row_0 + 1,row_0 +1);
      inc(row_0);
    end;
  end;

  exApp.Rows[IntToStr(row_0 + 1) + ':' + IntToStr(row_0 + 1)].Select;
  exApp.Selection.Delete;

  exApp.Visible := True;
  exApp.Range['A1'].Select;
  VarClear(exWks); VarClear(exApp);
  SP.Free;
  ShowTextMessage('', True);
  Screen.Cursor := crDefault;
end;

procedure TfmMain.dxBarButton85Click(Sender: TObject);
type
  TFunc = function(AHandle: THandle; users_group_cod: string; usr_pwd: PUser_pwd; FIO_users: string; etran_ecp_id: integer) : variant;
var
           FEtran : TFunc;
           handle : THandle;
                v : variant;
            Query : TADOQuery;
  users_group_cod : string;
        FIO_users : string;
begin
  if not usr_pwd.user_func.Locate('func_name', 'set_etran_visible', [loCaseInsensitive]) then begin
    Application.MessageBox(PChar('Недостаточно прав!'), 'ОШИБКА', MB_ICONSTOP or MB_OK);
    Exit;
  end;

  Screen.Cursor := crHourglass;

  Query := TADOQuery.Create(nil);
  Query.Connection := Lis;
  Query.SQL.Add('SELECT	inf_obj_cod as users_group_cod, FIO_users');
  Query.SQL.Add('FROM	  users INNER JOIN inf_obj on users.users_group_id = inf_obj.inf_obj_id');
  Query.SQL.Add('WHERE	users_name = system_user');
  Query.Open;
  users_group_cod := Query.FieldByName('users_group_cod').AsString;
  FIO_users       := Query.FieldByName('FIO_users').AsString;
  Query.Free;

  Screen.Cursor := crdefault;

  handle := LoadLibrary('etranECP.dll');
  @FEtran := GetProcAddress(handle, 'CreateWndEtranECP');
  v := FEtran(Application.Handle, users_group_cod, usr_pwd, FIO_users, -9);
  FreeLibrary(handle);
end;

procedure TfmMain.dxBarButton86Click(Sender: TObject);
type
  TFunc = function(AHandle: THandle; users_group_cod: string; usr_pwd:PUser_pwd) : variant;
var
           FEtran : TFunc;
           handle : THandle;
                v : variant;
            Query : TADOQuery;
  users_group_cod : string;
begin
  Screen.Cursor := crHourglass;

  Query := TADOQuery.Create(nil);
  Query.Connection := Lis;
  Query.SQL.Add('SELECT	inf_obj_cod as users_group_cod');
  Query.SQL.Add('FROM	  users INNER JOIN inf_obj on users.users_group_id = inf_obj.inf_obj_id');
  Query.SQL.Add('WHERE	users_name = system_user');
  Query.Open;
  users_group_cod := Query.FieldByName('users_group_cod').AsString;
  Query.Free;

  Screen.Cursor := crdefault;

  handle := LoadLibrary('etran.dll');
  @FEtran := GetProcAddress(handle, 'CreateWndEtranCumulative');
  v := FEtran(Application.Handle, users_group_cod, usr_pwd);
  FreeLibrary(handle);
end;

procedure TfmMain.dxBarButton87Click(Sender: TObject);
type
  TFunc = function(AHandle: THandle; usr_pwd: PUser_pwd): variant;
var
 FFinControl : TFunc;
      handle : THandle;
           v : variant;
begin
  handle := LoadLibrary('dictionary.dll');
  @FFinControl := GetProcAddress(handle, 'CreateWndFinControl');
  v := FFinControl(Application.Handle, usr_pwd);
  FreeLibrary(handle);
end;

procedure TfmMain.dxBarButton88Click(Sender: TObject);
var   i : integer;
  ClientDS : TClientDataSet;
begin
  ClientDS := TClientDataSet.Create(nil);
  if  ShowSearchFactSum(Application.Handle, usr_pwd, ClientDS) then begin
    for i:=0 to MDIChildCount-1 Do
      if (MDIChildren[i].ClassName = 'TfmFactSum') then  begin
        MDIChildren[i].Free;
        Break;
      end;
    fmFactSum := TfmFactSum.Create(Application, False);
    fmFactSum._SetSQLFilter := ClientDS;
  end;
  ClientDS.Free;
end;

procedure TfmMain.dxBarButton89Click(Sender: TObject);
type
  TFunc = function(AppHand: THandle; usr_pwd: PUser_pwd): variant;
var
  FFactTrack : TFunc;
      handle : THandle;
           v : Variant;
begin
  handle := LoadLibrary('user.dll');
  @FFactTrack := GetProcAddress(handle, 'CreateWndFactTrackFiles');
  v := FFactTrack(Application.Handle, usr_pwd);
  FreeLibrary(handle);
end;

procedure TfmMain.SetGlobalId(global_id: integer);
var Q: TADOQuery;
begin
  Q := TADOQuery.Create(nil);
  Q.Connection := fmMain.Lis;
  Q.SQL.Add('SELECT	global_id, object_physic_name ');
  Q.SQL.Add('FROM	  global_id LEFT JOIN object_base ON global_id.object_id = object_base.object_id');
  Q.SQL.Add('WHERE	global_id = ' + IntToStr(global_id));
  Q.Open;

  case IndexText(Q.FieldByName('object_physic_name').AsString, ['ACTS']) of
    0:  begin
          Q.SQL.Clear;
          Q.SQL.Add('SELECT * FROM acts_bargain inner join shp_bargain_add on acts_bargain.bargain_id = shp_bargain_add.bargain_add_id WHERE acts_id = ' + IntToStr(global_id));
          Q.Open;
          if Q.RecordCount > 0 then begin
//            fmShpAgree := TfmShpAgree.Create(Application, False);
//            fmShpAgree._SetActsId := global_id;
          end else begin
            fmActs := TfmActs.Create(Application);
            fmActs._SetActsID := global_id;
          end;
        end;
  end;

  Q.Free;
end;


end.
