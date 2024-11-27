unit LoadMain;

interface

uses
  RailTariff_TLB,
  TariffSupportFunctions,
  Raznoe,
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, dxSkinsCore, dxSkinBlack, dxSkinBlue,
  dxSkinBlueprint, dxSkinCaramel, dxSkinCoffee, dxSkinDarkRoom, dxSkinDarkSide,
  dxSkinDevExpressDarkStyle, dxSkinDevExpressStyle, dxSkinFoggy, cxCurrencyEdit,
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
  dxSkinVisualStudio2013Blue, dxSkinVisualStudio2013Dark, cxDBLookupComboBox,
  dxSkinVisualStudio2013Light, dxSkinVS2010, dxSkinWhiteprint, DateUtils,
  dxSkinXmas2008Blue, dxSkinsdxBarPainter, cxGraphics, cxControls,
  cxLookAndFeels, cxLookAndFeelPainters, dxRibbonSkins, dxSkinsdxRibbonPainter,
  dxRibbonCustomizationForm, cxClasses, dxRibbon, dxBar, dxRibbonForm,
  System.ImageList, Vcl.ImgList, Data.DB, Datasnap.DBClient, Vcl.ExtCtrls,
  dxSkinscxPCPainter, dxBarBuiltInMenu, cxPC, cxContainer, cxEdit, cxLabel,
  cxStyles, cxCustomData, cxFilter, cxData, cxDataStorage, cxNavigator,
  cxDBData, cxGridCustomView, cxGridCustomTableView, cxGridTableView,
  cxGridBandedTableView, cxGridDBBandedTableView, cxGridLevel, cxGrid,
  dxGDIPlusClasses, cxImage, StrUtils, ComObj, cxCalendar, ThreadFiles,
  cxTextEdit, cxMemo, dxBarExtItems, Datasnap.Provider, Data.Win.ADODB,
  cxImageComboBox, Winapi.ShellAPI, IdFTP, IdFTPCommon, cxImageList,
  Default, ThreadStat, dxSkinTheBezier, dxDateRanges,
  cxDataControllerConditionalFormattingRulesManagerDialog,
  ThreadMail, dxSkinBasic, dxSkinOffice2019Black, dxSkinOffice2019Colorful, dxSkinOffice2019DarkGray, dxSkinOffice2019White, dxCore,
  dxScrollbarAnnotations, dxSkinWXI;

const MY_MESSAGE = WM_USER + 4242;

type
  TfmLoadMain = class(TdxRibbonForm)
    dxBarManager1: TdxBarManager;
    dxRibbon1: TdxRibbon;
    dxBarManager1Bar1: TdxBar;
    dxRibbon1Tab1: TdxRibbonTab;
    dxBarLargeButton1: TdxBarLargeButton;
    dxBarLargeButton2: TdxBarLargeButton;
    dxBarLargeButton3: TdxBarLargeButton;
    dxBarLargeButton4: TdxBarLargeButton;
    dxBarLargeButton5: TdxBarLargeButton;
    cxImageList16: TcxImageList;
    cxImageList32: TcxImageList;
    Panel1: TPanel;
    ClientDS_ftp: TClientDataSet;
    ClientDS_ftpid: TAutoIncField;
    ClientDS_ftpftp_server: TStringField;
    ClientDS_ftpftp_port: TIntegerField;
    ClientDS_ftpftp_users: TStringField;
    ClientDS_ftpftp_password: TStringField;
    ClientDS_ftpftp_comment: TStringField;
    ClientDS_ftpftp_folder: TStringField;
    ClientDS_ftpformat_cod: TStringField;
    ClientDS_ftpformat_name: TStringField;
    ClientDS_ftpusers_group_id: TIntegerField;
    ClientDS_ftpusers_group_name: TStringField;
    ClientDS_ftpset_load: TBooleanField;
    cxPageControl1: TcxPageControl;
    cxTabSheet1: TcxTabSheet;
    cxTabSheet3: TcxTabSheet;
    cxLabel1: TcxLabel;
    cxGrid1Level1: TcxGridLevel;
    cxGrid1: TcxGrid;
    cxGrid1DBBandedTableView1: TcxGridDBBandedTableView;
    ClientDS_Files: TClientDataSet;
    cxLabel2: TcxLabel;
    cxImage2: TcxImage;
    cxImage3: TcxImage;
    cxImage4: TcxImage;
    cxImage1: TcxImage;
    cxImageList1: TcxImageList;
    cxTabSheet4: TcxTabSheet;
    DS_ftp: TDataSource;
    cxGrid2Level1: TcxGridLevel;
    cxGrid2: TcxGrid;
    cxGrid2DBBandedTableView1: TcxGridDBBandedTableView;
    cxGrid2DBBandedTableView1id: TcxGridDBBandedColumn;
    cxGrid2DBBandedTableView1ftp_server: TcxGridDBBandedColumn;
    cxGrid2DBBandedTableView1ftp_port: TcxGridDBBandedColumn;
    cxGrid2DBBandedTableView1ftp_users: TcxGridDBBandedColumn;
    cxGrid2DBBandedTableView1ftp_password: TcxGridDBBandedColumn;
    cxGrid2DBBandedTableView1ftp_comment: TcxGridDBBandedColumn;
    cxGrid2DBBandedTableView1ftp_folder: TcxGridDBBandedColumn;
    cxGrid2DBBandedTableView1format_cod: TcxGridDBBandedColumn;
    cxGrid2DBBandedTableView1format_name: TcxGridDBBandedColumn;
    cxGrid2DBBandedTableView1users_group_id: TcxGridDBBandedColumn;
    cxGrid2DBBandedTableView1users_group_name: TcxGridDBBandedColumn;
    cxGrid2DBBandedTableView1set_load: TcxGridDBBandedColumn;
    dxBarPopupMenu1: TdxBarPopupMenu;
    dxBarButton1: TdxBarButton;
    dxBarSubItem1: TdxBarSubItem;
    dxBarButton2: TdxBarButton;
    dxBarButton3: TdxBarButton;
    cxTabSheet5: TcxTabSheet;
    ClientDS_Error: TClientDataSet;
    AutoIncField1: TAutoIncField;
    DS_Error: TDataSource;
    ClientDS_Errorerror_cod: TStringField;
    ClientDS_Errorerror_date: TDateTimeField;
    ClientDS_Errorerror_message: TStringField;
    ClientDS_Errorerror_comment: TStringField;
    ClientDS_Errorfunction_name: TStringField;
    cxGrid3: TcxGrid;
    cxGrid3Level1: TcxGridLevel;
    cxGrid3DBBandedTableView1: TcxGridDBBandedTableView;
    cxGrid3DBBandedTableView1id: TcxGridDBBandedColumn;
    cxGrid3DBBandedTableView1error_cod: TcxGridDBBandedColumn;
    cxGrid3DBBandedTableView1error_date: TcxGridDBBandedColumn;
    cxGrid3DBBandedTableView1error_message: TcxGridDBBandedColumn;
    cxGrid3DBBandedTableView1error_comment: TcxGridDBBandedColumn;
    cxGrid3DBBandedTableView1function_name: TcxGridDBBandedColumn;
    dxBarPopupMenu2: TdxBarPopupMenu;
    dxBarButton4: TdxBarButton;
    dxBarSubItem2: TdxBarSubItem;
    dxBarButton5: TdxBarButton;
    dxBarButton6: TdxBarButton;
    dxBarDockControl1: TdxBarDockControl;
    dxBarManager1Bar2: TdxBar;
    dxBarButton7: TdxBarButton;
    dxBarButton8: TdxBarButton;
    dxBarDateCombo1: TdxBarDateCombo;
    ClientDS_Filesfiles_name: TStringField;
    ClientDS_Filesfiles_date: TDateTimeField;
    ClientDS_Filesfiles_load_date: TDateTimeField;
    ClientDS_Filesfiles_format_id: TIntegerField;
    ClientDS_Filesfiles_format_name: TStringField;
    ClientDS_Filesfiles_status: TStringField;
    ClientDS_Filesfiles_load_date_begin: TDateTimeField;
    ClientDS_Filesfiles_load_date_end: TDateTimeField;
    ClientDS_Filesfiles_size: TFloatField;
    ClientDS_Filesset_error: TBooleanField;
    ClientDS_Filesfiles_rows_count: TIntegerField;
    ClientDS_Filesfiles_rows_load: TIntegerField;
    DS_Files: TDataSource;
    cxGrid1DBBandedTableView1files_track_id: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1files_name: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1files_date: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1files_load_date: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1files_format_id: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1files_format_name: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1files_status: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1files_load_date_begin: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1files_load_date_end: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1files_size: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1set_error: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1files_rows_count: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1files_rows_load: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1speed1: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1speed2: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1speed3: TcxGridDBBandedColumn;
    dxBarPopupMenu3: TdxBarPopupMenu;
    dxBarButton9: TdxBarButton;
    dxBarSubItem3: TdxBarSubItem;
    dxBarButton10: TdxBarButton;
    dxBarButton11: TdxBarButton;
    ClientDS_Filesfiles_track_id: TIntegerField;
    cxGrid1DBBandedTableView1duration: TcxGridDBBandedColumn;
    ClientDS_Filesduration: TIntegerField;
    ClientDS_ftpdate_last_query: TDateTimeField;
    ClientDS_ftpset_active: TBooleanField;
    cxGrid2DBBandedTableView1date_last_query: TcxGridDBBandedColumn;
    cxGrid2DBBandedTableView1set_active: TcxGridDBBandedColumn;
    dxBarButton12: TdxBarButton;
    ClientDS_Filesduration_parser: TIntegerField;
    ClientDS_Filesduration_infobj: TIntegerField;
    ClientDS_Filesspeed3: TCurrencyField;
    ClientDS_Oper: TClientDataSet;
    DS_Oper: TDataSource;
    ClientDS_Operid: TAutoIncField;
    ClientDS_Operoper_name: TStringField;
    ClientDS_Operoper_begin: TDateTimeField;
    ClientDS_Operoper_end: TDateTimeField;
    ClientDS_Operoper_duratuion: TIntegerField;
    ClientDS_Operoper_result: TStringField;
    cxGrid4: TcxGrid;
    cxGrid4Level1: TcxGridLevel;
    cxGrid4DBBandedTableView1: TcxGridDBBandedTableView;
    cxGrid4DBBandedTableView1id: TcxGridDBBandedColumn;
    cxGrid4DBBandedTableView1oper_name: TcxGridDBBandedColumn;
    cxGrid4DBBandedTableView1oper_begin: TcxGridDBBandedColumn;
    cxGrid4DBBandedTableView1oper_end: TcxGridDBBandedColumn;
    cxGrid4DBBandedTableView1oper_duratuion: TcxGridDBBandedColumn;
    cxGrid4DBBandedTableView1oper_result: TcxGridDBBandedColumn;
    dxBarPopupMenu4: TdxBarPopupMenu;
    dxBarButton13: TdxBarButton;
    dxBarSubItem4: TdxBarSubItem;
    dxBarButton14: TdxBarButton;
    dxBarButton15: TdxBarButton;
    ClientDS_Operoper_progress: TIntegerField;
    cxGrid4DBBandedTableView1oper_progress: TcxGridDBBandedColumn;
    cxGrid4DBBandedTableView1Column1: TcxGridDBBandedColumn;
    ClientDS_Operoper_max: TIntegerField;
    Timer1: TTimer;
    dxBarButton16: TdxBarButton;
    ClientDS_ftpset_delete: TBooleanField;
    dxBarButton17: TdxBarButton;
    dxBarButton18: TdxBarButton;
    cxLabel3: TcxLabel;
    procedure dxBarLargeButton5Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
    procedure cxGrid2DBBandedTableView1FilterOnChanged(Sender: TObject);
    procedure cxGrid2DBBandedTableView1CustomDrawCell(
      Sender: TcxCustomGridTableView; ACanvas: TcxCanvas;
      AViewInfo: TcxGridTableDataCellViewInfo; var ADone: Boolean);
    procedure cxGrid2DBBandedTableView1CustomDrawColumnHeader(
      Sender: TcxGridTableView; ACanvas: TcxCanvas;
      AViewInfo: TcxGridColumnHeaderViewInfo; var ADone: Boolean);
    procedure cxGrid2DBBandedTableView1FocusedItemChanged(
      Sender: TcxCustomGridTableView; APrevFocusedItem,
      AFocusedItem: TcxCustomGridTableItem);
    procedure cxGrid2DBBandedTableView1KeyPress(Sender: TObject; var Key: Char);
    procedure dxBarButton1Click(Sender: TObject);
    procedure dxBarButton2Click(Sender: TObject);
    procedure dxBarButton3Click(Sender: TObject);
    procedure dxBarLargeButton1Click(Sender: TObject);
    procedure dxBarLargeButton2Click(Sender: TObject);
    procedure cxGrid3DBBandedTableView1FilterOnChanged(Sender: TObject);
    procedure cxGrid3DBBandedTableView1CustomDrawCell(
      Sender: TcxCustomGridTableView; ACanvas: TcxCanvas;
      AViewInfo: TcxGridTableDataCellViewInfo; var ADone: Boolean);
    procedure cxGrid3DBBandedTableView1CustomDrawColumnHeader(
      Sender: TcxGridTableView; ACanvas: TcxCanvas;
      AViewInfo: TcxGridColumnHeaderViewInfo; var ADone: Boolean);
    procedure cxGrid3DBBandedTableView1FocusedItemChanged(
      Sender: TcxCustomGridTableView; APrevFocusedItem,
      AFocusedItem: TcxCustomGridTableItem);
    procedure cxGrid3DBBandedTableView1KeyPress(Sender: TObject; var Key: Char);
    procedure dxBarButton4Click(Sender: TObject);
    procedure dxBarButton5Click(Sender: TObject);
    procedure dxBarButton6Click(Sender: TObject);
    procedure cxGrid1DBBandedTableView1FilterOnChanged(Sender: TObject);
    procedure cxGrid1DBBandedTableView1CustomDrawCell(
      Sender: TcxCustomGridTableView; ACanvas: TcxCanvas;
      AViewInfo: TcxGridTableDataCellViewInfo; var ADone: Boolean);
    procedure cxGrid1DBBandedTableView1CustomDrawColumnHeader(
      Sender: TcxGridTableView; ACanvas: TcxCanvas;
      AViewInfo: TcxGridColumnHeaderViewInfo; var ADone: Boolean);
    procedure cxGrid1DBBandedTableView1FocusedItemChanged(
      Sender: TcxCustomGridTableView; APrevFocusedItem,
      AFocusedItem: TcxCustomGridTableItem);
    procedure cxGrid1DBBandedTableView1KeyPress(Sender: TObject; var Key: Char);
    procedure dxBarButton9Click(Sender: TObject);
    procedure dxBarButton10Click(Sender: TObject);
    procedure dxBarButton11Click(Sender: TObject);
    procedure cxGrid1DBBandedTableView1durationGetDisplayText(
      Sender: TcxCustomGridTableItem; ARecord: TcxCustomGridRecord;
      var AText: string);
    procedure dxBarButton12Click(Sender: TObject);
    procedure cxGrid4DBBandedTableView1FilterOnChanged(Sender: TObject);
    procedure cxGrid4DBBandedTableView1CustomDrawCell(
      Sender: TcxCustomGridTableView; ACanvas: TcxCanvas;
      AViewInfo: TcxGridTableDataCellViewInfo; var ADone: Boolean);
    procedure cxGrid4DBBandedTableView1CustomDrawColumnHeader(
      Sender: TcxGridTableView; ACanvas: TcxCanvas;
      AViewInfo: TcxGridColumnHeaderViewInfo; var ADone: Boolean);
    procedure cxGrid4DBBandedTableView1FocusedItemChanged(
      Sender: TcxCustomGridTableView; APrevFocusedItem,
      AFocusedItem: TcxCustomGridTableItem);
    procedure cxGrid4DBBandedTableView1KeyPress(Sender: TObject; var Key: Char);
    procedure dxBarButton13Click(Sender: TObject);
    procedure dxBarButton14Click(Sender: TObject);
    procedure dxBarButton15Click(Sender: TObject);
    procedure Timer1Timer(Sender: TObject);
    procedure cxGrid1DBBandedTableView1speed2GetDisplayText(
      Sender: TcxCustomGridTableItem; ARecord: TcxCustomGridRecord;
      var AText: string);
    procedure cxGrid1DBBandedTableView1speed1GetDisplayText(
      Sender: TcxCustomGridTableItem; ARecord: TcxCustomGridRecord;
      var AText: string);
    procedure cxGrid4DBBandedTableView1oper_duratuionGetDisplayText(
      Sender: TcxCustomGridTableItem; ARecord: TcxCustomGridRecord;
      var AText: string);
    procedure dxBarButton16Click(Sender: TObject);
    procedure dxBarButton17Click(Sender: TObject);
    procedure dxBarButton18Click(Sender: TObject);
  private
    FClose : boolean;
    FThreadFiles : TThreadFiles;
    Fconnect_str : string;
    FThreadMail  : TThreadMail;


    procedure AddFTP(ftp_server: string; ftp_port: integer; ftp_users: string; ftp_password: string; ftp_comment: string; ftp_folder: string; format_cod: string; format_name: string; users_group_id: integer; users_group_name: string; set_load: boolean; set_delete: boolean);
    procedure OnTerminateThread(Sender: TObject);
    procedure LoadLogError();
    procedure MessageReceiver(var msg: TMessage); message MY_MESSAGE;
  public
    procedure LoadFiles();
    procedure UpdateFileStatus(files_track_id: integer; files_status: string; files_load_date_begin: TDateTime; files_load_date_end: TDateTime; set_error: boolean; files_rows_count: integer; files_rows_load: integer; duration_parser: Currency; duration_infobj: Currency);
    procedure SaveLogError(error_cod: string; function_name: string; error_message: string; error_comment: string);

    procedure SaveLogMem(m1: integer; m2: integer; m3: integer; m4: integer; m5: integer; m6: integer; m7: integer;
                                 m8: integer; m9: integer; m10: integer; m11: integer; m12: integer; m13: integer; m14: integer);
    procedure SaveLog(cod: string; function_name: string; comment: string; duration: integer);
  end;

var
  fmLoadMain: TfmLoadMain;

procedure SetdxDBGridColumns(cxGrid : TcxGridDBBandedTableView);
procedure DrawcxGridColumnOnFiltered(cxGrid: TcxGridDBBandedTableView; Sender: TObject);
procedure FilterColumnGridOnKeyPress(cxGridView : TcxGridDBBandedTableView; var Key: Char);
procedure PrintcxGrid(cxGridView: TcxGridDBBandedTableView);
function  GetCalcDistanceDBLocal(node_begin_cod, node_end_cod: string; connect: TADOConnection; set_recalc: boolean; date_from_to: TDateTime): integer;

implementation

{$R *.dfm}




function ConvertSecond(sec: integer): string;
var hh, nn, ss : integer;
    res : string;
begin
  // секунды
  ss := (sec mod 60);
  sec := sec - ss;

  // минуты
  sec := Round(sec / 60);
  nn := (sec mod 60);
  sec := sec - nn;

  // часы
  sec := Round(sec / 60);
  hh := sec;

  if hh <> 0 then
    res := RightStr('00' + IntToStr(hh),2) + ':' + RightStr('00' + IntToStr(nn),2) + ':' + RightStr('00' + IntToStr(ss),2)
  else
    res := RightStr('00' + IntToStr(nn),2) + ':' + RightStr('00' + IntToStr(ss),2);

  Result := res;
end;

function ConvertMS(sec: integer): string;
var hh, nn, ss, zzz : integer;
    res : string;
begin
  zzz := (sec mod 1000);
  sec := sec - zzz;
  sec := Round(sec / 1000);

  // секунды
  ss := (sec mod 60);
  sec := sec - ss;

  // минуты
  sec := Round(sec / 60);
  nn := (sec mod 60);
  sec := sec - nn;

  // часы
  sec := Round(sec / 60);
  hh := sec;

  if hh <> 0 then
    res := RightStr('00' + IntToStr(hh),2) + ':' + RightStr('00' + IntToStr(nn),2) + ':' + RightStr('00' + IntToStr(ss),2) + '.' +  RightStr('000' + IntToStr(zzz),3)
  else
    res := RightStr('00' + IntToStr(nn),2) + ':' + RightStr('00' + IntToStr(ss),2) + '.' +  RightStr('000' + IntToStr(zzz),3);

  Result := res;
end;


procedure TfmLoadMain.cxGrid1DBBandedTableView1CustomDrawCell(
  Sender: TcxCustomGridTableView; ACanvas: TcxCanvas;
  AViewInfo: TcxGridTableDataCellViewInfo; var ADone: Boolean);
begin
	if AViewInfo.GridRecord.Selected or AViewInfo.GridRecord.Focused then begin
		ACanvas.Brush.Color := clNavy;
		ACanvas.Font.Color := clWhite;
		if AViewInfo.Focused then ACanvas.Brush.Color := clBlue;
	end;
end;

procedure TfmLoadMain.cxGrid1DBBandedTableView1CustomDrawColumnHeader(
  Sender: TcxGridTableView; ACanvas: TcxCanvas;
  AViewInfo: TcxGridColumnHeaderViewInfo; var ADone: Boolean);
begin
	if AViewInfo.Column.Focused then begin
		ACanvas.Brush.Color := clNavy;
		ACanvas.Font.Color := clWhite;
	end;
end;

procedure TfmLoadMain.cxGrid1DBBandedTableView1durationGetDisplayText(
  Sender: TcxCustomGridTableItem; ARecord: TcxCustomGridRecord;
  var AText: string);
begin
  if AText <> '' then
    AText := ConvertSecond(StrToInt(AText));
end;

procedure TfmLoadMain.cxGrid1DBBandedTableView1FilterOnChanged(Sender: TObject);
begin
	DrawcxGridColumnOnFiltered(cxGrid1DBBandedTableView1, Sender);
end;

procedure TfmLoadMain.cxGrid1DBBandedTableView1FocusedItemChanged(
  Sender: TcxCustomGridTableView; APrevFocusedItem,
  AFocusedItem: TcxCustomGridTableItem);
begin
	cxGrid1DBBandedTableView1.Painter.Invalidate;
end;

procedure TfmLoadMain.cxGrid1DBBandedTableView1KeyPress(Sender: TObject;
  var Key: Char);
begin
	FilterColumnGridOnKeyPress(cxGrid1DBBandedTableView1, Key);
end;

procedure TfmLoadMain.cxGrid1DBBandedTableView1speed1GetDisplayText(
  Sender: TcxCustomGridTableItem; ARecord: TcxCustomGridRecord;
  var AText: string);
begin
  if AText <> '' then
    AText := ConvertMS(StrToInt(AText));
end;

procedure TfmLoadMain.cxGrid1DBBandedTableView1speed2GetDisplayText(
  Sender: TcxCustomGridTableItem; ARecord: TcxCustomGridRecord;
  var AText: string);
begin
  if AText <> '' then
    AText := ConvertMS(StrToInt(AText));
end;

procedure TfmLoadMain.cxGrid2DBBandedTableView1CustomDrawCell(
  Sender: TcxCustomGridTableView; ACanvas: TcxCanvas;
  AViewInfo: TcxGridTableDataCellViewInfo; var ADone: Boolean);
begin
	if AViewInfo.GridRecord.Selected or AViewInfo.GridRecord.Focused then begin
		ACanvas.Brush.Color := clNavy;
		ACanvas.Font.Color := clWhite;
		if AViewInfo.Focused then ACanvas.Brush.Color := clBlue;
	end;
end;

procedure TfmLoadMain.cxGrid2DBBandedTableView1CustomDrawColumnHeader(
  Sender: TcxGridTableView; ACanvas: TcxCanvas;
  AViewInfo: TcxGridColumnHeaderViewInfo; var ADone: Boolean);
begin
	if AViewInfo.Column.Focused then begin
		ACanvas.Brush.Color := clNavy;
		ACanvas.Font.Color := clWhite;
	end;
end;

procedure TfmLoadMain.cxGrid2DBBandedTableView1FilterOnChanged(Sender: TObject);
begin
	DrawcxGridColumnOnFiltered(cxGrid2DBBandedTableView1, Sender);
end;

procedure TfmLoadMain.cxGrid2DBBandedTableView1FocusedItemChanged(
  Sender: TcxCustomGridTableView; APrevFocusedItem,
  AFocusedItem: TcxCustomGridTableItem);
begin
	cxGrid2DBBandedTableView1.Painter.Invalidate;
end;

procedure TfmLoadMain.cxGrid2DBBandedTableView1KeyPress(Sender: TObject;
  var Key: Char);
begin
	FilterColumnGridOnKeyPress(cxGrid2DBBandedTableView1, Key);
end;

procedure TfmLoadMain.cxGrid3DBBandedTableView1CustomDrawCell(
  Sender: TcxCustomGridTableView; ACanvas: TcxCanvas;
  AViewInfo: TcxGridTableDataCellViewInfo; var ADone: Boolean);
begin
	if AViewInfo.GridRecord.Selected or AViewInfo.GridRecord.Focused then begin
		ACanvas.Brush.Color := clNavy;
		ACanvas.Font.Color := clWhite;
		if AViewInfo.Focused then ACanvas.Brush.Color := clBlue;
	end;
end;

procedure TfmLoadMain.cxGrid3DBBandedTableView1CustomDrawColumnHeader(
  Sender: TcxGridTableView; ACanvas: TcxCanvas;
  AViewInfo: TcxGridColumnHeaderViewInfo; var ADone: Boolean);
begin
	if AViewInfo.Column.Focused then begin
		ACanvas.Brush.Color := clNavy;
		ACanvas.Font.Color := clWhite;
	end;
end;

procedure TfmLoadMain.cxGrid3DBBandedTableView1FilterOnChanged(Sender: TObject);
begin
	DrawcxGridColumnOnFiltered(cxGrid3DBBandedTableView1, Sender);
end;

procedure TfmLoadMain.cxGrid3DBBandedTableView1FocusedItemChanged(
  Sender: TcxCustomGridTableView; APrevFocusedItem,
  AFocusedItem: TcxCustomGridTableItem);
begin
	cxGrid3DBBandedTableView1.Painter.Invalidate;
end;

procedure TfmLoadMain.cxGrid3DBBandedTableView1KeyPress(Sender: TObject;
  var Key: Char);
begin
	FilterColumnGridOnKeyPress(cxGrid3DBBandedTableView1, Key);
end;

procedure TfmLoadMain.cxGrid4DBBandedTableView1CustomDrawCell(
  Sender: TcxCustomGridTableView; ACanvas: TcxCanvas;
  AViewInfo: TcxGridTableDataCellViewInfo; var ADone: Boolean);
begin
	if AViewInfo.GridRecord.Selected or AViewInfo.GridRecord.Focused then begin
		ACanvas.Brush.Color := clNavy;
		ACanvas.Font.Color := clWhite;
		if AViewInfo.Focused then ACanvas.Brush.Color := clBlue;
	end;
end;

procedure TfmLoadMain.cxGrid4DBBandedTableView1CustomDrawColumnHeader(
  Sender: TcxGridTableView; ACanvas: TcxCanvas;
  AViewInfo: TcxGridColumnHeaderViewInfo; var ADone: Boolean);
begin
	if AViewInfo.Column.Focused then begin
		ACanvas.Brush.Color := clNavy;
		ACanvas.Font.Color := clWhite;
	end;
end;

procedure TfmLoadMain.cxGrid4DBBandedTableView1FilterOnChanged(Sender: TObject);
begin
	DrawcxGridColumnOnFiltered(cxGrid4DBBandedTableView1, Sender);
end;

procedure TfmLoadMain.cxGrid4DBBandedTableView1FocusedItemChanged(
  Sender: TcxCustomGridTableView; APrevFocusedItem,
  AFocusedItem: TcxCustomGridTableItem);
begin
	cxGrid4DBBandedTableView1.Painter.Invalidate;
end;

procedure TfmLoadMain.cxGrid4DBBandedTableView1KeyPress(Sender: TObject;
  var Key: Char);
begin
	FilterColumnGridOnKeyPress(cxGrid4DBBandedTableView1, Key);
end;

procedure TfmLoadMain.cxGrid4DBBandedTableView1oper_duratuionGetDisplayText(
  Sender: TcxCustomGridTableItem; ARecord: TcxCustomGridRecord;
  var AText: string);
begin
  if AText <> '' then
    AText := ConvertMS(StrToInt(AText));
end;

procedure TfmLoadMain.dxBarButton10Click(Sender: TObject);
begin
	SetdxDBGridColumns(cxGrid1DBBandedTableView1);
end;

procedure TfmLoadMain.dxBarButton11Click(Sender: TObject);
begin
	cxGrid1DBBandedTableView1.OptionsView.GroupByBox := not cxGrid1DBBandedTableView1.OptionsView.GroupByBox;
end;

procedure TfmLoadMain.dxBarButton12Click(Sender: TObject);
var str_ftp: string;
    ftp_users: string;
    ftp_password: string;
    ftp_host : string;
    ftp_port: string;
begin
  ftp_users   := cxGrid2DBBandedTableView1ftp_users.DataBinding.Field.AsString;
  ftp_password:= cxGrid2DBBandedTableView1ftp_password.DataBinding.Field.AsString;
  ftp_host    := cxGrid2DBBandedTableView1ftp_server.DataBinding.Field.AsString;
  ftp_port    := cxGrid2DBBandedTableView1ftp_port.DataBinding.Field.AsString;

  str_ftp := 'ftp://' + ftp_users + ':' + ftp_password + '@' + ftp_host + ':' + ftp_port;
  ShellExecute(Application.Handle, 'open', 'explorer.exe',  PChar(str_ftp), nil, SW_SHOWNORMAL);
end;

procedure TfmLoadMain.dxBarButton13Click(Sender: TObject);
begin
	PrintcxGrid(cxGrid4DBBandedTableView1);
end;

procedure TfmLoadMain.dxBarButton14Click(Sender: TObject);
begin
	SetdxDBGridColumns(cxGrid4DBBandedTableView1);
end;

procedure TfmLoadMain.dxBarButton15Click(Sender: TObject);
begin
	cxGrid4DBBandedTableView1.OptionsView.GroupByBox := not cxGrid4DBBandedTableView1.OptionsView.GroupByBox;
end;

function  GetCalcDistance(node_begin_cod, node_end_cod: string): integer;
var RTXApplication : IApplication;
    RTXDocument    : RailTariff_TLB.IDocument;
    RTXResult   : RailTariff_TLB.IDocNode;
begin
  result    := 0;
  if (node_begin_cod<>'') and (node_end_cod<>'') then begin
    try
      RTXApplication := RTXCreate2(CTM_Server, CTM_User, CTM_Password);
      RTXApplication.Initialize('');
    except
      RTXApplication := nil;
      exit;
    end;

    RTXDocument := RTXApplication.CreateDocument;

    (RTXDocument as IDocumentAttr).FromStation(node_begin_cod, 0);
    (RTXDocument as IDocumentAttr).ToStation  (node_end_cod  , 0);
    (RTXDocument as IDocumentControl).DoCalcDistance;

    RTXResult := RTXDocument.Result;
    RTXResult.AsTable.First;
    while not RTXResult.AsTable.EOF do  begin
      result := result + RTXResult.Value['Distance'];
      RTXResult.AsTable.Next;
    end;
    RTXResult      := nil;
    RTXDocument    := nil;
    RTXApplication := nil;
  end;
end;

procedure TfmLoadMain.dxBarButton16Click(Sender: TObject);
var Q : TADOQuery;
    s : integer;
    d : integer;
    dt : TDateTime;

    connect : TADOConnection;
    SP : TADOStoredProc;
begin
//  connect := TADOConnection.Create(nil);
//  connect.ConnectionString := Fconnect_str;
//  connect.KeepConnection   := False;
//  connect.LoginPrompt      := False;
//  connect.Open;
//
//  Q := TADOQuery.Create(nil);
//  Q.Connection := connect;
//  Q.SQL.Add('SELECT	* FROM FACT_TRACK_QUERY WHERE query_id = 7');
//  Q.Open;
//
//
//
//
//  SP := TADOStoredProc.Create(nil);
//  SP.Connection := Connect;
//  SP.ProcedureName := 'sp_fact_track_query_modify';
//  SP.Parameters.Refresh;
//
//  SP.Parameters.ParamByName('@query_id'        ).Value := 7;
//  SP.Parameters.ParamByName('@type_action'     ).Value := 1;
//  SP.Parameters.ParamByName('@query_result_xml').Value := UTF8Decode(Q.FieldByName('query_result_xml').AsString);
//  SP.ExecProc;
//
//  SP.Free;
//  connect.Free;
//
//  ShowMessage(IntToStr(MilliSecondsBetween(Now, dt)));
end;

procedure TfmLoadMain.dxBarButton17Click(Sender: TObject);
var Q : TADOQuery;
    s : integer;
    d : integer;
    dt : TDateTime;

    connect : TADOConnection;
    SP : TADOStoredProc;
begin

  dt := Now;

  connect := TADOConnection.Create(nil);
  connect.ConnectionString := Fconnect_str;
  connect.KeepConnection   := False;
  connect.LoginPrompt      := False;
  connect.Open;

  SP := TADOStoredProc.Create(nil);
  SP.Connection := Connect;
  SP.ProcedureName := 'sp_xcv';
  SP.Parameters.Refresh;

  SP.Close;
  SP.Parameters.Refresh;
  SP.ExecProc;

  SP.Free;
  connect.Free;

  ShowMessage(IntToStr(MilliSecondsBetween(Now, dt)));
end;


function  GetCalcDistanceLocal(node_begin_cod, node_end_cod: string; land_id: integer; node_add_cod: string; date_from_to: variant): integer;
var Trf_Result        : RailTariff_TLB.IDocNode;
    RB_I_Node         : RailTariff_TLB._RefBookInfo;
    RB_Node,RB_2_Node : RailTariff_TLB._RefBook;
    distence          : integer;
    ppland_node_begin : integer;
    ppland_node_end   : integer;
    Filter            : OLEvariant;
    mRBFFilter        : RailTariff_TLB._RefBookFilter;

    FRTXApplication : IApplication;
    FRTXDocument    : RailTariff_TLB.IDocument;
    direction       : integer;
begin
  ppland_node_begin := 0;
  ppland_node_end   := 0;
  result    := -9;
  distence  := 0;
  if date_from_to = null then date_from_to := Date;

  if (node_begin_cod<>'') and (node_end_cod<>'') then begin
    try
      FRTXApplication := RTXCreate2(CTM_Server, CTM_User, CTM_Password);
      FRTXApplication.Initialize('');
    except
      FRTXApplication := nil;
      exit;
    end;

    FRTXDocument := FRTXApplication.CreateDocument;

  //--Проверяем какая страна задана по умолчанию у станции, если нет такой задаём "третьи страны"(99)
    RB_Node := FRTXApplication.RefBook['Stations'];
    Filter := VarArrayCreate([0,2,0,0],varvariant);
    Filter[0,0] := 'NewCode';
    Filter[1,0] := RBOP_BEGIN;
    Filter[2,0] := node_begin_cod;

    mRBFFilter := RB_Node as _RefBookFilter;
    mRBFFilter.ClearFilter;
    mRBFFilter.Filter(filter);
    RB_I_Node := mRBFFilter as _RefBookInfo;
    RB_2_Node := RB_I_Node as _RefBook;

    RB_2_Node.First;
    while not RB_2_Node.EOF do begin
      if (RB_2_Node.FieldValue['NewCode'] = node_begin_cod) and (RB_2_Node.FieldValue['PPLand'] = -1) then
        ppland_node_begin := 99;

      RB_2_Node.Next;
    end;

    Filter[2,0] := node_end_cod;
    mRBFFilter.ClearFilter;
    mRBFFilter.Filter(filter);
    RB_I_Node := mRBFFilter as _RefBookInfo;
    RB_2_Node := RB_I_Node as _RefBook;

    RB_2_Node.First;
    while not RB_2_Node.EOF do begin
      if (RB_2_Node.FieldValue['NewCode'] = node_begin_cod) and (RB_2_Node.FieldValue['PPLand'] = -1) then
        ppland_node_begin := 99;
      if (RB_2_Node.FieldValue['NewCode'] = node_end_cod) and (RB_2_Node.FieldValue['PPLand'] = -1) then
        ppland_node_end := 99;

      RB_2_Node.Next;
    end;


    try
      (FRTXDocument as IDocumentAttr).OnDate(date_from_to);
      (FRTXDocument as IDocumentAttr).FromStation(node_begin_cod, ppland_node_begin);
      (FRTXDocument as IDocumentAttr).ToStation(node_end_cod, ppland_node_end);

      if date_from_to > '01.09.2018' then
        FRTXDocument.Data.Value['Zhur_Miller'] := 0
      else
        FRTXDocument.Data.Value['Zhur_Miller'] := 1;

      if node_add_cod <> '' then (FRTXDocument as IThruRoutes).AddStation(node_add_cod);

      (FRTXDocument as IDocumentControl).DoCalcDistance;


      Trf_Result := FRTXDocument.Result;
      Trf_Result.AsTable.First;
      if land_id = -9 then begin
        while not Trf_Result.AsTable.EOF do  begin

          Direction := Trf_Result.Value['Direction'];
          if Direction = 1 then
            distence := distence + Trf_Result.Value['Distance'];

          Trf_Result.AsTable.Next;
        end;
        result := distence;
      end else begin
        while not Trf_Result.AsTable.EOF do  begin
          if Trf_Result.Value['LandId'] = land_id then begin
            Direction := Trf_Result.Value['Direction'];
            if Direction = 1 then
              result := Trf_Result.Value['Distance'];
          end;
          Trf_Result.AsTable.Next;
        end;
      end;
    except
    end;
    Trf_Result  := nil;
    FRTXDocument  := nil;
    RB_Node     := nil;
    RB_I_Node   := nil;
    RB_2_Node   := nil;
    mRBFFilter  := nil;
    FRTXApplication := nil;
  end;
end;


function GetCalcDistanceDBLocal(node_begin_cod, node_end_cod: string; connect: TADOConnection; set_recalc: boolean; date_from_to: TDateTime): integer;
var
  v      : variant;
  Q      : TADOQuery;
  SP_inf_obj_distance_modify : TADOStoredProc;
begin
  // Если коды не 6-ти значные, то расстояние посчитать не получиться
  if (node_begin_cod = node_end_cod) or (Length(node_begin_cod) <> 6) or (Length(node_end_cod) <> 6) or (node_begin_cod[1] = '-') or (node_end_cod[1] = '-') then begin
    Result := 0;
    Exit;
  end;

  try
    try
      Q := TADOQuery.Create(nil);
      Q.Connection := connect;
      Q.SQL.Add('SELECT top 1 distance FROM inf_obj_distance WHERE node1_cod=''' + node_begin_cod + ''' and node2_cod=''' + node_end_cod + '''');
      Q.Open;
      if (Q.RecordCount = 0) or (set_recalc = True) then begin
//        handle := LoadLibrary('Ctm_Tarif.dll');
//        @FCtm := GetProcAddress(handle,'GetCalcDistance');
//        Result := FCtm(node_begin_cod, node_end_cod, -9, '', date_from_to);
        Result := GetCalcDistanceLocal(node_begin_cod, node_end_cod, -9, '', date_from_to);

        if Result >= 0 then begin
          SP_inf_obj_distance_modify := TADOStoredProc.Create(nil);
          SP_inf_obj_distance_modify.Connection := connect;
          SP_inf_obj_distance_modify.ProcedureName := 'sp_inf_obj_distance_modify';
          SP_inf_obj_distance_modify.Parameters.Refresh;
          SP_inf_obj_distance_modify.Parameters.ParamByName('@type_action'   ).Value := 0;
          SP_inf_obj_distance_modify.Parameters.ParamByName('@node_begin_cod').Value := node_begin_cod;
          SP_inf_obj_distance_modify.Parameters.ParamByName('@node_end_cod'  ).Value := node_end_cod;
          SP_inf_obj_distance_modify.Parameters.ParamByName('@distance'      ).Value := Result;
          SP_inf_obj_distance_modify.ExecProc;
          SP_inf_obj_distance_modify.Free;
        end;

      end else begin
        Result := Q.FieldByName('distance').AsInteger;
      end;
    except
      result := 0;
    end;
  finally
    Q.Free;
  end;
end;

procedure TfmLoadMain.dxBarButton18Click(Sender: TObject);
var connect : TADOConnection;
    Q : TADOQuery;
begin
  connect := TADOConnection.Create(nil);
  connect.ConnectionString := Fconnect_str;
  connect.KeepConnection   := False;
  connect.LoginPrompt      := False;
  connect.Open;

  Q := TADOQuery.Create(nil);
  Q.Connection := connect;
  Q.SQL.Add('SELECT top 1 * FROM [dbo].[FACT_TRACK_QUERY] WHERE query_id = 4158');
  Q.Open;
  TBlobField(Q.FieldByName('query_result_xml')).SaveToFile('d:\www\disl.xml');

//  GetCalcDistanceDBLocal('020610', '073105', connect, True, Date);



  connect.Free;
end;

procedure TfmLoadMain.dxBarButton1Click(Sender: TObject);
begin
	PrintcxGrid(cxGrid2DBBandedTableView1);
end;

procedure TfmLoadMain.dxBarButton2Click(Sender: TObject);
begin
	SetdxDBGridColumns(cxGrid2DBBandedTableView1);
end;

procedure TfmLoadMain.dxBarButton3Click(Sender: TObject);
begin
	cxGrid2DBBandedTableView1.OptionsView.GroupByBox := not cxGrid2DBBandedTableView1.OptionsView.GroupByBox;
end;

procedure TfmLoadMain.dxBarButton4Click(Sender: TObject);
begin
	PrintcxGrid(cxGrid3DBBandedTableView1);
end;

procedure TfmLoadMain.dxBarButton5Click(Sender: TObject);
begin
	SetdxDBGridColumns(cxGrid3DBBandedTableView1);
end;

procedure TfmLoadMain.dxBarButton6Click(Sender: TObject);
begin
	cxGrid3DBBandedTableView1.OptionsView.GroupByBox := not cxGrid3DBBandedTableView1.OptionsView.GroupByBox;
end;

procedure TfmLoadMain.dxBarButton9Click(Sender: TObject);
begin
	PrintcxGrid(cxGrid1DBBandedTableView1);
end;

procedure TfmLoadMain.dxBarLargeButton1Click(Sender: TObject);
begin
  Timer1.Enabled := False;
  if dxBarLargeButton1.Enabled = True  then begin
    FThreadFiles := TThreadFiles.Create(Fconnect_str , ClientDS_ftp.XMLData);
    FThreadFiles.OnTerminate := OnTerminateThread;
//    FThreadMail := TThreadMail.Create(Fconnect_str);


    dxBarLargeButton1.Enabled := False;
    dxBarLargeButton2.Enabled := True;
  end;
end;

procedure TfmLoadMain.dxBarLargeButton2Click(Sender: TObject);
begin
  FThreadFiles.Terminate;
//  FThreadMail.Terminate;
  dxBarLargeButton2.Enabled := False;
end;

procedure TfmLoadMain.dxBarLargeButton5Click(Sender: TObject);
begin
  if Application.MessageBox('Закрыть программу?'+#13+#10+'Загрузка будет остановлена!', 'Внимание!', MB_ICONQUESTION or MB_OKCANCEL or MB_DEFBUTTON2) = ID_OK then begin
    FClose := True;
    Close;
  end;
end;

procedure TfmLoadMain.FormCloseQuery(Sender: TObject; var CanClose: Boolean);
begin
  if not FClose then begin
    CanClose := False;
  end;
end;

procedure TfmLoadMain.AddFTP(ftp_server: string; ftp_port: integer; ftp_users: string; ftp_password: string; ftp_comment: string; ftp_folder: string; format_cod: string; format_name: string; users_group_id: integer; users_group_name: string; set_load: boolean; set_delete: boolean);
begin
  ClientDS_ftp.Append;
  ClientDS_ftp.FieldByName('ftp_server'       ).Value := ftp_server;
  ClientDS_ftp.FieldByName('ftp_port'         ).Value := ftp_port;
  ClientDS_ftp.FieldByName('ftp_users'        ).Value := ftp_users;
  ClientDS_ftp.FieldByName('ftp_password'     ).Value := ftp_password;
  ClientDS_ftp.FieldByName('ftp_comment'      ).Value := ftp_comment;
  ClientDS_ftp.FieldByName('ftp_folder'       ).Value := ftp_folder;
  ClientDS_ftp.FieldByName('format_cod'       ).Value := format_cod;
  ClientDS_ftp.FieldByName('format_name'      ).Value := format_name;
  ClientDS_ftp.FieldByName('users_group_id'   ).Value := users_group_id;
  ClientDS_ftp.FieldByName('users_group_name' ).Value := users_group_name;
  ClientDS_ftp.FieldByName('set_load'         ).Value := set_load;
  ClientDS_ftp.FieldByName('set_delete'       ).Value := set_delete;
  ClientDS_ftp.Post;
end;



procedure TfmLoadMain.LoadFiles();
var Q: TADOQuery;
begin
  Q := TADOQuery.Create(nil);
  Q.ConnectionString := Fconnect_str;
  Q.SQL.Add('SELECT * FROM view_fact_track_files WHERE files_date >= dateadd(mi, -60*25, getdate()) ORDER BY files_date DESC');
  Q.Open;

  ClientDS_Files.DisableControls;
  while not Q.Eof do begin

    if ClientDS_Files.Locate('files_track_id', Q.FieldByName('files_track_id').AsInteger, []) then
      ClientDS_Files.Edit
    else begin
      ClientDS_Files.Append;

      if (not Q.FieldByName('files_load_date_begin').IsNull) and (not Q.FieldByName('files_load_date_end').IsNull) and (Q.FieldByName('files_rows_load').AsInteger <> 0) then
        if SecondsBetween(Q.FieldByName('files_load_date_begin').Value, Q.FieldByName('files_load_date_end').Value) <> 0 then
          ClientDS_Files.FieldByName('speed3').Value := Q.FieldByName('files_rows_load').AsFloat / SecondsBetween(Q.FieldByName('files_load_date_begin').Value, Q.FieldByName('files_load_date_end').Value);
      if (not Q.FieldByName('files_load_date_begin').IsNull) and (not Q.FieldByName('files_load_date_end').IsNull) then
        ClientDS_Files.FieldByName('duration').Value := SecondsBetween(Q.FieldByName('files_load_date_begin').Value, Q.FieldByName('files_load_date_end').Value);
    end;

    ClientDS_Files.FieldByName('files_track_id'        ).Value := Q.FieldByName('files_track_id').Value;
    ClientDS_Files.FieldByName('files_name'            ).Value := Q.FieldByName('files_name').Value;
    ClientDS_Files.FieldByName('files_date'            ).Value := Q.FieldByName('files_date').Value;
    ClientDS_Files.FieldByName('files_load_date'       ).Value := Q.FieldByName('date_enter').Value;
    ClientDS_Files.FieldByName('files_format_id'       ).Value := Q.FieldByName('files_format_id').Value;
    ClientDS_Files.FieldByName('files_format_name'     ).Value := Q.FieldByName('files_format_name').Value;
    ClientDS_Files.FieldByName('files_status'          ).Value := Q.FieldByName('files_status').Value;
    ClientDS_Files.FieldByName('files_load_date_begin' ).Value := Q.FieldByName('files_load_date_begin').Value;
    ClientDS_Files.FieldByName('files_load_date_end'   ).Value := Q.FieldByName('files_load_date_end').Value;
    ClientDS_Files.FieldByName('files_size'            ).Value := Q.FieldByName('files_size').AsFloat/1024.0;
    ClientDS_Files.FieldByName('set_error'             ).Value := Q.FieldByName('set_error').Value;
    ClientDS_Files.FieldByName('files_rows_count'      ).Value := Q.FieldByName('files_rows_count').Value;
    ClientDS_Files.FieldByName('files_rows_load'       ).Value := Q.FieldByName('files_rows_load').Value;
    ClientDS_Files.Post;

    Q.Next;
  end;

  ClientDS_Files.First;
  while not ClientDS_Files.Eof do begin
    if not Q.Locate('files_track_id', ClientDS_Files.FieldByName('files_track_id').AsInteger, []) then
      ClientDS_Files.Delete
    else
      ClientDS_Files.Next;
  end;

  ClientDS_Files.EnableControls;

  Q.Free;
end;


procedure TfmLoadMain.UpdateFileStatus(files_track_id: integer; files_status: string; files_load_date_begin: TDateTime; files_load_date_end: TDateTime; set_error: boolean; files_rows_count: integer; files_rows_load: integer; duration_parser: Currency; duration_infobj: Currency);
var id : integer;
begin
  id := ClientDS_Files.FieldByName('files_track_id').AsInteger;

  ClientDS_Files.DisableControls;
  if not ClientDS_Files.Locate('files_track_id', files_track_id, []) then begin
    LoadFiles;
  end;

  if ClientDS_Files.Locate('files_track_id', files_track_id, []) then begin
    ClientDS_Files.Edit;

    ClientDS_Files.FieldByName('files_status'          ).Value := files_status;
    ClientDS_Files.FieldByName('files_load_date_begin' ).Value := files_load_date_begin;
    if files_load_date_end <> 0 then
      ClientDS_Files.FieldByName('files_load_date_end'   ).Value := files_load_date_end;
    ClientDS_Files.FieldByName('files_rows_count'      ).Value := files_rows_count;
    ClientDS_Files.FieldByName('files_rows_load'       ).Value := files_rows_load;
    ClientDS_Files.FieldByName('set_error'             ).Value := set_error;
    if duration_parser <> 0 then ClientDS_Files.FieldByName('duration_parser').Value := duration_parser;
    if duration_infobj <> 0 then ClientDS_Files.FieldByName('duration_infobj').Value := duration_infobj;

    if (files_load_date_begin<>0) and (files_load_date_end<>0) and (files_rows_load <> 0) then
        if SecondsBetween(files_load_date_begin, files_load_date_end) <> 0 then
          ClientDS_Files.FieldByName('speed3').Value := files_rows_load / SecondsBetween(files_load_date_begin, files_load_date_end);
      if (files_load_date_begin<>0) and (files_load_date_end<>0) then
        ClientDS_Files.FieldByName('duration').Value := SecondsBetween(files_load_date_begin, files_load_date_end);

    ClientDS_Files.Post;
  end;

  ClientDS_Files.Locate('files_track_id', id, []);
  ClientDS_Files.EnableControls;
end;

procedure TfmLoadMain.FormCreate(Sender: TObject);
var icon : TIcon;
begin
//  Fconnect_str := 'Persist Security Info=True;Provider=SQLOLEDB.1;User ID=sa;Password=325325"LBR;Initial Catalog=lis1;Data Source=141.101.246.34;';
  Fconnect_str := 'Persist Security Info=True;Provider=SQLOLEDB.1;User ID=sa;Password=14remTTetran;Initial Catalog=lis1;Data Source=10.244.252.10;';

  cxImage1.Picture := cxImage3.Picture;

  icon := TIcon.Create;
  cxImageList1.GetIcon(0, icon);

  ClientDS_Files.CreateDataSet;
  ClientDS_Files.LogChanges := False;

  LoadFiles;

  ClientDS_Oper.CreateDataSet;
  ClientDS_Oper.LogChanges := False;

  ClientDS_Error.CreateDataSet;
  ClientDS_Error.LogChanges := False;
  LoadLogError;

  ClientDS_ftp.CreateDataSet;
  ClientDS_ftp.LogChanges := False;

//   // УЛГ
//  AddFTP('46.182.28.10', 20021, 'sf' , 'Driv22cos87A'  , 'Питер', 'reglament/out'         , '00002', 'Дислокация (XML)'       , 4633962 , 'Урал', True, False);
//  AddFTP('46.182.28.10', 20021, 'sf' , 'Driv22cos87A'  , 'Питер', 'reglament/out/sng'     , '00002', 'Дислокация (XML)'       , 4633962 , 'Урал', True, False);
//  AddFTP('46.182.28.10', 20021, 'sf' , 'Driv22cos87A'  , 'Питер', 'reglament/out/frontier', '00002', 'Дислокация (XML)'       , 4633962 , 'Урал', True, False);
//
//  AddFTP('46.182.28.10', 20021, 'sf' , 'Driv22cos87A'  , 'Питер', 'reglament/out/files'   , '01000', 'Паспорта'               , 4633962 , 'Урал', True, False);
//  AddFTP('46.182.28.10', 20021, 'sf' , 'Driv22cos87A'  , 'Питер', 'reglament/out/files'   , '02000', 'Ремонты'                , 4633962 , 'Урал', True, False);
//  AddFTP('46.182.28.10', 20021, 'sf' , 'Driv22cos87A'  , 'Питер', 'reglament/out/files'   , '03000', 'Узлы и детали'          , 4633962 , 'Урал', True, False);
//  AddFTP('46.182.28.10', 20021, 'sf' , 'Driv22cos87A'  , 'Питер', 'reglament/out/files'   , '04000', 'Пробеги'                , 4633962 , 'Урал', True, False);
//  AddFTP('46.182.28.10', 20021, 'sf' , 'Driv22cos87A'  , 'Питер', 'reglament/out/files'   , '05000', 'Пробеги(расширенный)'   , 4633962 , 'Урал', True, False);
//  // Передача списка вагоноа = '99999'
//  AddFTP('46.182.28.10', 20021, 'sf' , 'Driv22cos87A'  , 'Питер', 'reglament/in'          , '99999', 'Передача списка вагонов', 4633962 , 'Урал', True, False);
//
//                                  //  // СФХ
//                                  //  AddFTP('46.182.28.10', 20021, 'sf' , 'Driv22cos87A'  , 'Питер', 'reglament/out'         , '00002', 'Дислокация (XML)'       , 158706 , 'Совфрахт', True, False);
//                                  //  AddFTP('46.182.28.10', 20021, 'sf' , 'Driv22cos87A'  , 'Питер', 'reglament/out/sng'     , '00002', 'Дислокация (XML)'       , 158706 , 'Совфрахт', True, False);
//                                  //  AddFTP('46.182.28.10', 20021, 'sf' , 'Driv22cos87A'  , 'Питер', 'reglament/out/frontier', '00002', 'Дислокация (XML)'       , 158706 , 'Совфрахт', True, False);
//                                  //
//                                  //  AddFTP('46.182.28.10', 20021, 'sf' , 'Driv22cos87A'  , 'Питер', 'reglament/out/files'   , '01000', 'Паспорта'               , 158706 , 'Совфрахт', True, False);
//                                  //  AddFTP('46.182.28.10', 20021, 'sf' , 'Driv22cos87A'  , 'Питер', 'reglament/out/files'   , '02000', 'Ремонты'                , 158706 , 'Совфрахт', True, False);
//                                  //  AddFTP('46.182.28.10', 20021, 'sf' , 'Driv22cos87A'  , 'Питер', 'reglament/out/files'   , '03000', 'Узлы и детали'          , 158706 , 'Совфрахт', True, False);
//                                  //  AddFTP('46.182.28.10', 20021, 'sf' , 'Driv22cos87A'  , 'Питер', 'reglament/out/files'   , '04000', 'Пробеги'                , 158706 , 'Совфрахт', True, False);
//                                  //  AddFTP('46.182.28.10', 20021, 'sf' , 'Driv22cos87A'  , 'Питер', 'reglament/out/files'   , '05000', 'Пробеги(расширенный)'   , 158706 , 'Совфрахт', True, False);
//                                  //  // Передача списка вагоноа = '99999'
//                                  //  //AddFTP('46.182.28.11', 20021, 'sf' , 'SfbUran00e'  , 'Питер', 'reglament/in'          , '99999', 'Передача списка вагонов', 158706 , 'Совфрахт', True, False);
//                                  //  AddFTP('46.182.28.10', 20021, 'sf' , 'Driv22cos87A'  , 'Питер', 'reglament/in'          , '99999', 'Передача списка вагонов', 158706 , 'Совфрахт', True, False);
//                                  ////
//                                  //  AddFTP('213.21.225.75', 21, 'interlogistik', 'z52CePUaW', 'Sigis'  , 'Dislocation'    , '00002', 'Дислокация (XML)'       , 530438, 'ИнтерЛогистика (Мортранссервис)'     , True, False);
//
//                                  //  // ИнтерЛогистика
//                                  //  AddFTP('46.182.28.10', 20021, 'ilgs', 'trUUba40', 'Питер'  , 'reglament/out'         , '00002', 'Дислокация (XML)'       , 1139124, 'ИнтерЛогистика'     , True, False);
//                                  //  AddFTP('46.182.28.10', 20021, 'ilgs', 'trUUba40', 'Питер'  , 'reglament/out/sng'     , '00002', 'Дислокация (XML)'       , 1139124, 'ИнтерЛогистика'     , True, False);
//                                  //  AddFTP('46.182.28.10', 20021, 'ilgs', 'trUUba40', 'Питер'  , 'reglament/out/frontier', '00002', 'Дислокация (XML)'       , 1139124, 'ИнтерЛогистика'     , True, False);
//                                  //
//                                  //  AddFTP('46.182.28.10', 20021, 'ilgs', 'trUUba40', 'Питер'  , 'reglament/out/files'   , '01000', 'Паспорта'               , 1139124, 'ИнтерЛогистика'     , True, False);
//                                  //  AddFTP('46.182.28.10', 20021, 'ilgs', 'trUUba40', 'Питер'  , 'reglament/out/files'   , '02000', 'Ремонты'                , 1139124, 'ИнтерЛогистика'     , True, False);
//                                  //  AddFTP('46.182.28.10', 20021, 'ilgs', 'trUUba40', 'Питер'  , 'reglament/out/files'   , '03000', 'Узлы и детали'          , 1139124, 'ИнтерЛогистика'     , True, False);
//                                  //  AddFTP('46.182.28.10', 20021, 'ilgs', 'trUUba40', 'Питер'  , 'reglament/out/files'   , '04000', 'Пробеги'                , 1139124, 'ИнтерЛогистика'     , True, False);
//                                  //  AddFTP('46.182.28.10', 20021, 'ilgs', 'trUUba40', 'Питер'  , 'reglament/out/files'   , '05000', 'Пробеги(расширенный)'   , 1139124, 'ИнтерЛогистика'     , True, False);
//                                  //  // Передача списка вагоноа = '99999'
//                                  //  AddFTP('46.182.28.10', 20021, 'ilgs', 'trUUba40', 'Питер'  , 'reglament/in'          , '99999', 'Передача списка вагонов', 1139124, 'ИнтерЛогистика'     , True, False);
//
//
//   // Морской дом
//  AddFTP('46.182.28.10', 20021, 'urallog2', 'i7rHgagbYm', 'Питер'  , 'out'         , '00002', 'Дислокация (XML)'       , 502778, 'Морской дом'     , True, False);
//  AddFTP('46.182.28.10', 20021, 'urallog2', 'i7rHgagbYm', 'Питер'  , 'out/sng'     , '00002', 'Дислокация (XML)'       , 502778, 'Морской дом'     , True, False);
//  AddFTP('46.182.28.10', 20021, 'urallog2', 'i7rHgagbYm', 'Питер'  , 'out/frontier', '00002', 'Дислокация (XML)'       , 502778, 'Морской дом'     , True, False);
//
//  AddFTP('46.182.28.10', 20021, 'urallog2', 'i7rHgagbYm', 'Питер'  , 'out/files'   , '01000', 'Паспорта'               , 502778, 'Морской дом'     , True, False);
//  AddFTP('46.182.28.10', 20021, 'urallog2', 'i7rHgagbYm', 'Питер'  , 'out/files'   , '02000', 'Ремонты'                , 502778, 'Морской дом'     , True, False);
//  AddFTP('46.182.28.10', 20021, 'urallog2', 'i7rHgagbYm', 'Питер'  , 'out/files'   , '03000', 'Узлы и детали'          , 502778, 'Морской дом'     , True, False);
//  AddFTP('46.182.28.10', 20021, 'urallog2', 'i7rHgagbYm', 'Питер'  , 'out/files'   , '04000', 'Пробеги'                , 502778, 'Морской дом'     , True, False);
//  AddFTP('46.182.28.10', 20021, 'urallog2', 'i7rHgagbYm', 'Питер'  , 'out/files'   , '05000', 'Пробеги(расширенный)'   , 502778, 'Морской дом'     , True, False);
//                      // Передача списка вагоноа = '99999'
//                    //  AddFTP('46.182.28.10', 20021, 'urallog2', 'trUUba40', 'Питер'  , 'reglament/in'          , '99999', 'Передача списка вагонов', 1139124, 'ИнтерЛогистика'     , True, False);

end;

procedure TfmLoadMain.Timer1Timer(Sender: TObject);
begin
  Timer1.Enabled := False;
  dxBarLargeButton1Click(nil);
end;

procedure SetdxDBGridColumns(cxGrid : TcxGridDBBandedTableView);
type
  TFunc = function(AHandle : THandle; var ClientDS : TClientDataSet) : variant;
var
   FGrid   : TFunc;
   handle  : THandle;
   v       : variant;
   i       : integer;
   ClientDS : TClientDataSet;
begin
  ClientDS := TClientDataSet.Create(nil);
  ClientDS.FieldDefs.Add('caption', ftString, 50);
  ClientDS.FieldDefs.Add('flag', ftBoolean);
  ClientDS.FieldDefs.Add('field_name', ftString, 50);
  ClientDS.CreateDataSet;

   for i := 0 to cxGrid.ItemCount-1 do
    if cxGrid.Columns[i].Position.BandIndex <> -1 then begin
      ClientDS.Append;
      ClientDS['caption']    := cxGrid.Columns[i].Caption ;
      ClientDS['flag']       := cxGrid.Columns[i].Visible;
      ClientDS['field_name'] := cxGrid.Columns[i].DataBinding.FieldName ;
      ClientDS.Post;
    end;

   handle := LoadLibrary('user.dll');
   @FGrid := GetProcAddress(handle, 'CreateWndGridColumns');
   v := FGrid(Application.Handle, ClientDS);
   FreeLibrary(handle);

   if v[0] = 0 then begin
     ClientDS.First;
     while not ClientDS.Eof do begin
       cxGrid.GetColumnByFieldName(ClientDS.FieldByName('field_name').AsString).Visible := ClientDS.FieldByName('flag').AsBoolean;
       ClientDS.Next;
     end;
   end;

   ClientDS.Free;
end;

procedure DrawcxGridColumnOnFiltered(cxGrid: TcxGridDBBandedTableView; Sender: TObject);
var filter_criteria : TcxFilterCriteriaItem;
    data_criteria : TcxDataFilterCriteria;
    i : integer;
begin
  data_criteria := TcxDataFilterCriteria(Sender);
  for i := 0 to cxGrid.ColumnCount - 1 do begin
    filter_criteria := data_criteria.FindItemByItemLink(TcxGridDBBandedColumn(cxGrid.Columns[i]));
    cxGrid.Columns[i].Styles.Header.Free;
    if filter_criteria <> nil then begin
      cxGrid.Columns[i].Styles.Header := TcxStyle.Create(nil);
      cxGrid.Columns[i].Styles.Header.Font.Style := [fsBold];
      cxGrid.Columns[i].Styles.Header.TextColor := clBlue;
    end;
  end;
end;

procedure FilterColumnGridOnKeyPress(cxGridView : TcxGridDBBandedTableView; var Key: Char);
var
  str_Value, str_DisplayValue : string;
  cxFilterCriteriaItem : TcxFilterCriteriaItem;
  cxGridColumn  : TcxGridColumn;
begin
  if not ((Ord(Key) = 8) or (Ord(Key) >= 32)) then Exit;
  cxGridColumn := cxGridView.Controller.FocusedColumn;
  if cxGridColumn = nil then Exit;

  str_Value := ''; str_DisplayValue := '';
  cxFilterCriteriaItem := cxGridColumn.DataBinding.FilterCriteriaItem;
  if cxFilterCriteriaItem <> nil then begin
    str_Value := VarToStr( cxFilterCriteriaItem.Value );
    str_DisplayValue := cxFilterCriteriaItem.DisplayValue;
    if not ((str_Value <> str_DisplayValue) and (Copy(str_DisplayValue, 1, 1) = '[') and (Copy(str_DisplayValue, Length(str_DisplayValue), 1) = ']')) then str_DisplayValue := '';
  end;

  str_DisplayValue := Copy(str_DisplayValue, 2, Length(str_DisplayValue) - 2);
  if (Ord(Key) <> 8) then str_DisplayValue := str_DisplayValue + Key
  else str_DisplayValue := Copy(str_DisplayValue, 1, Length(str_DisplayValue) - 1);

  cxGridView.DataController.Filter.Clear;

  if str_DisplayValue <> '' then begin
    str_Value := '%' + str_DisplayValue + '%';
    str_DisplayValue := '[' + str_DisplayValue + ']';

    // Создаем фильтр
    with cxGridView.DataController.Filter do begin
      Clear;
      Options := Options + [fcoCaseInsensitive];
      Root.BoolOperatorKind := fboAnd;
      Root.AddItem(cxGridColumn, foLike, str_Value, str_DisplayValue);
      Active := True;
    end;
  end;

end;


procedure PrintcxGrid(cxGridView: TcxGridDBBandedTableView);
type
    TFunc = function(AHandle : THandle; var ClientDS : TClientDataSet) : variant;
var cnt_record : integer;
    cnt_column : integer;
    array_data : Variant;
             i : integer;
Client_Columns : TClientDataSet;
   Client_dist : TClientDataSet;
   Client_temp : TClientDataSet;
      str_list : TStringList;

  exApp, exWks, exWkb : Variant;
  range, cell1, cell2 : Variant;
        range_caption : Variant;
         range_footer : Variant;
        column_format : string;
        calc_distance : boolean;

        val_str : string;
       val_date : TDateTime;
        val_int : integer;
    val_boolean : Boolean;
     val_double : Double;
       val_type : string;

           val : variant;
   ColumnWidth : Extended;
       DataSet : TDataSet;
 KeyFieldNames : string;
 KeyFieldIndex : integer;
begin
  Client_Columns := TClientDataSet.Create(nil);
  Client_Columns.FieldDefs.Add('id'         , ftAutoInc);
  Client_Columns.FieldDefs.Add('caption'    , ftString, 500);
  Client_Columns.FieldDefs.Add('flag'       , ftBoolean);
  Client_Columns.FieldDefs.Add('flag_old'   , ftBoolean);
  Client_Columns.FieldDefs.Add('field_name' , ftString, 500);
  Client_Columns.FieldDefs.Add('visible_ix' , ftInteger);
  Client_Columns.FieldDefs.Add('fld_index'  , ftInteger);
  Client_Columns.FieldDefs.Add('position'   , ftInteger);
  Client_Columns.FieldDefs.Add('width'      , ftInteger);
  Client_Columns.CreateDataSet;
  Client_Columns.LogChanges := False;

  Client_dist := TClientDataSet.Create(Application);
  Client_dist.FieldDefs.Add('node_begin_cod',  ftString, 50); // станция отправления
  Client_dist.FieldDefs.Add('node_end_cod',    ftString, 50); // станция назначения
  Client_dist.FieldDefs.Add('node_add_cod',    ftString, 50); // станция дислокации (необязательно)
  Client_dist.FieldDefs.Add('land_id',         ftInteger);    // Расчет расстояния по стране (-9: полное расстояние по всем странам)
  Client_dist.FieldDefs.Add('distance',        ftInteger);    // Расстояние (возвращаемый параметр)
  Client_dist.IndexFieldNames := 'node_begin_cod;node_end_cod';
  Client_dist.CreateDataSet;
  Client_dist.LogChanges := False;

  for i := 0 to cxGridView.ItemCount - 1 do
    if cxGridView.Columns[i].Position.BandIndex <> -1 then begin
      Client_Columns.Append;
      Client_Columns['caption']    := cxGridView.Columns[i].Caption;
      Client_Columns['flag']       := cxGridView.Columns[i].Visible;
      Client_Columns['flag_old']   := cxGridView.Columns[i].Visible;
      Client_Columns['field_name'] := cxGridView.Columns[i].DataBinding.FieldName;
      Client_Columns['visible_ix'] := cxGridView.Columns[i].VisibleIndex;
      Client_Columns['fld_index' ] := cxGridView.Columns[i].Index;
      Client_Columns['position'  ] := cxGridView.Columns[i].Position.ColIndex;
      Client_Columns['width'     ] := cxGridView.Columns[i].width;
      Client_Columns.Post;
    end;

  // Сортируем колонки
  Client_temp := TClientDataSet.Create(nil);
  Client_temp.Data := Client_Columns.Data;
  Client_temp.EmptyDataSet;
  str_list := TStringList.Create;

  Client_Columns.First;
  while not Client_Columns.Eof do begin
    str_list.AddObject(RightStr('00000' + Client_Columns.FieldByName('visible_ix').AsString,5), TObject(Client_Columns.FieldByName('id').AsInteger));
    Client_Columns.Next;
  end;

  str_list.Sort;

  for i := 0 to str_list.Count - 1 do begin
    if Client_Columns.Locate('id', Integer(str_list.Objects[i]), []) then begin
      Client_temp.Append;
      Client_temp.FieldByName('caption'    ).Value := Client_Columns.FieldByName('caption').Value;
      Client_temp.FieldByName('flag'       ).Value := Client_Columns.FieldByName('flag').Value;
      Client_temp.FieldByName('flag_old'   ).Value := Client_Columns.FieldByName('flag_old').Value;
      Client_temp.FieldByName('field_name' ).Value := Client_Columns.FieldByName('field_name').Value;
      Client_temp.FieldByName('visible_ix' ).Value := Client_Columns.FieldByName('visible_ix').Value;
      Client_temp.FieldByName('fld_index'  ).Value := Client_Columns.FieldByName('fld_index').Value;
      Client_temp.FieldByName('position'   ).Value := Client_Columns.FieldByName('position').Value;
      Client_temp.FieldByName('width'      ).Value := Client_Columns.FieldByName('width').Value;
      Client_temp.Post;
    end;
  end;

  Client_Columns.Data := Client_temp.Data;


//  handle := LoadLibrary('user.dll');
//  @FGrid := GetProcAddress(handle, 'CreateWndGridColumns');
//  v := FGrid(Application.Handle, Client_Columns);
//  FreeLibrary(handle);

  //if v[0] = 0 then begin
  if 1=1 then begin

    // Расчет расстояний
    if (cxGridView.DataController.DataSource.DataSet.FieldDefs.IndexOf('node_begin_cod') <> -1) and (cxGridView.DataController.DataSource.DataSet.FieldDefs.IndexOf('node_end_cod') <> -1) then begin
      if Application.MessageBox(PChar('Заполнять колонку расстояние?' +#13#10+ 'Расстояние расчитывается между "Ст.Отпр" и "Ст.Назн"'), 'Вопрос', MB_YESNO + MB_ICONQUESTION) = ID_YES then
        calc_distance := True
      else
        calc_distance := False;
    end else begin
      calc_distance := False;
    end;

    //ShowTextMessage('Печать таблицы в Excel...' + #10 + 'Подготовка данных...', False);
    Client_Columns.First;
    while not Client_Columns.Eof do begin
      if Client_Columns.FieldByName('flag').AsBoolean = False then
        Client_Columns.Delete
      else
        Client_Columns.Next;
    end;

    cnt_record := cxGridView.Controller.SelectedRecordCount+2; // Заголовок+Данные+Итого
    cnt_column := Client_Columns.RecordCount;

    if calc_distance = True then begin
      cnt_column := cnt_column + 1;
    end;

    if calc_distance = True then begin
      DataSet       := cxGridView.DataController.DataSource.DataSet;
      KeyFieldNames := cxGridView.DataController.KeyFieldNames;
        KeyFieldIndex := -9;
        for i := 0 to cxGridView.ItemCount - 1 do
          if cxGridView.Columns[i].DataBinding.FieldName = KeyFieldNames then begin
            KeyFieldIndex := cxGridView.Columns[i].Index;
            break
          end;
    end;


    if calc_distance = True then begin
      try
        DataSet.DisableControls;

        if KeyFieldIndex <> -9 then begin
          for i:=0 to cxGridView.Controller.SelectedRecordCount - 1 do begin
            if DataSet.Locate(KeyFieldNames, cxGridView.Controller.SelectedRows[i].Values[KeyFieldIndex], []) then begin
              if not Client_dist.FindKey([DataSet['node_begin_cod'], DataSet['node_end_cod']]) then begin
                  Client_dist.Append;
                  Client_dist.FieldByName('node_begin_cod').Value := cxGridView.DataController.DataSource.DataSet['node_begin_cod'];
                  Client_dist.FieldByName('node_end_cod'  ).Value := cxGridView.DataController.DataSource.DataSet['node_end_cod'];
                  Client_dist.FieldByName('land_id'       ).AsInteger := -9;
                  Client_dist.Post;
              end;
            end;
          end;
        end;
      finally
        DataSet.EnableControls;
      end;

      //ShowTextMessage('Печать таблицы в Excel...' + #10 + 'Расчет расстояний...', False);
    end;

    array_data := VarArrayCreate([1, cnt_record, 1, cnt_column], varVariant);

    // Колонки
    Client_Columns.First;
    while not Client_Columns.Eof do begin
      array_data[1, Client_Columns.RecNo] := cxGridView.Columns[Client_Columns.FieldByName('fld_index').AsInteger].Caption;
      Client_Columns.Next;
    end;

    if calc_distance = True then array_data[1, cnt_column] := 'Расстояние';

    // Данные
    if calc_distance = True then cxGridView.DataController.DataSource.DataSet.DisableControls;
    try
      for i:=0 to cxGridView.Controller.SelectedRecordCount - 1 do begin
        Client_Columns.First;
        while not Client_Columns.Eof do begin
          val_type := cxGridView.Columns[Client_Columns.FieldByName('fld_index').AsInteger].DataBinding.ValueType;

          if cxGridView.Columns[Client_Columns.FieldByName('fld_index').AsInteger].PropertiesClass = TcxLookupComboBoxProperties then begin
            val_type := 'String';
            val := cxGridView.Controller.SelectedRows[i].DisplayTexts[Client_Columns.FieldByName('fld_index').AsInteger];
          end;


          if cxGridView.Controller.SelectedRows[i].Values[Client_Columns.FieldByName('fld_index').AsInteger] <> null then begin
            case IndexText(val_type, ['Integer','String','DateTime','Currency','Boolean','Float']) of
              //integer
              0:  begin;
                    val_int := cxGridView.Controller.SelectedRows[i].Values[Client_Columns.FieldByName('fld_index').AsInteger];
                    array_data[i+2, Client_Columns.RecNo] := val_int;
                  end;
              //string
              1:  begin
                    val_str := cxGridView.Controller.SelectedRows[i].Values[Client_Columns.FieldByName('fld_index').AsInteger];
                    array_data[i+2, Client_Columns.RecNo] := val_str;
                  end;
              //DateTime
              2:  begin
                    val_date := cxGridView.Controller.SelectedRows[i].Values[Client_Columns.FieldByName('fld_index').AsInteger];
                    array_data[i+2, Client_Columns.RecNo] := val_date;
                  end;
              //currency
              3:  begin
                    val_double := cxGridView.Controller.SelectedRows[i].Values[Client_Columns.FieldByName('fld_index').AsInteger];
                    array_data[i+2, Client_Columns.RecNo] := val_double;
                  end;
              //Boolean
              4:  begin
                    val_boolean := cxGridView.Controller.SelectedRows[i].Values[Client_Columns.FieldByName('fld_index').AsInteger];
                    array_data[i+2, Client_Columns.RecNo] := val_boolean;
                  end;
              //Float
              5:  begin
                    val_double := cxGridView.Controller.SelectedRows[i].Values[Client_Columns.FieldByName('fld_index').AsInteger];
                    array_data[i+2, Client_Columns.RecNo] := val_double;
                  end;
              else begin
                    val := cxGridView.Controller.SelectedRows[i].Values[Client_Columns.FieldByName('fld_index').AsInteger];
                    array_data[i+2, Client_Columns.RecNo] := val;
                   end;
            end;
          end;

          Client_Columns.Next;
        end;

        if calc_distance = True then begin
          if KeyFieldIndex <> -9 then
            if DataSet.Locate(KeyFieldNames, cxGridView.Controller.SelectedRows[i].Values[KeyFieldIndex], []) then begin
                if Client_dist.FindKey([DataSet['node_begin_cod'], DataSet['node_end_cod']]) then
                  array_data[i+2, cnt_column] := Client_dist.FieldByName('distance').Value
                else
                  array_data[i+2, cnt_column] := 0;
              end;
        end;

        if ((i mod 10) = 0) then
          //ShowTextMessage('Печать таблицы в Excel...' + #10 + 'Строк ' + IntToStr(i) + ' из ' + IntToStr(cxGridView.Controller.SelectedRecordCount) + '...', False);
      end;
    finally
      if calc_distance = True then cxGridView.DataController.DataSource.DataSet.EnableControls;
    end;

    //ShowTextMessage('Печать таблицы в Excel...' + #10 + 'Вывод в Excel...', False);
    exApp := CreateOleObject('Excel.Application');
    exWkb := exApp.Workbooks.Add;
    exWkb := exApp.ActiveWorkbook;
    exWks := exWkb.WorkSheets[1];

    // Левая верхняя ячейка области, в которую будем выводить данные
    cell1 := exWks.Cells[3, 2];
    // Правая нижняя ячейка области, в которую будем выводить данные
    cell2 := exWks.Cells[3 + cnt_record - 1, 2 + cnt_column - 1];
    // Область, в которую будем выводить данные
    range := exWks.Range[cell1, cell2];

    // Область заголовка
    cell1 := exWks.Cells[3, 2];
    cell2 := exWks.Cells[3, 2 + cnt_column - 1];
    range_caption := exWks.Range[cell1, cell2];

    // Область итогов
    cell1 := exWks.Cells[3 + cnt_record - 1, 2];
    cell2 := exWks.Cells[3 + cnt_record - 1, 2 + cnt_column - 1];
    range_footer := exWks.Range[cell1, cell2];

    //ShowTextMessage('Печать таблицы в Excel...' + #10 + 'Установка формата колонок...', False);
    // Формат колонок
    Client_Columns.First;
    while not Client_Columns.Eof do begin
      try
        ColumnWidth := Client_Columns.FieldByName('width').AsFloat*0.14;
        exWks.Columns[Client_Columns.RecNo+1].ColumnWidth := ColumnWidth;
      except
      end;

      if LowerCase(cxGridView.Columns[Client_Columns.FieldByName('fld_index').AsInteger].DataBinding.ValueType) = 'string' then begin
        column_format := '@';
        exWks.Range[exWks.Cells[4, Client_Columns.RecNo + 1], exWks.Cells[4 + cnt_record - 3, Client_Columns.RecNo + 1]].NumberFormat := column_format;
      end;


      if cxGridView.Columns[Client_Columns.FieldByName('fld_index').AsInteger].Properties is TcxCurrencyEditProperties then begin
        column_format := TcxCurrencyEditProperties(cxGridView.Columns[Client_Columns.FieldByName('fld_index').AsInteger].Properties).DisplayFormat;
        column_format := StringReplace(
            StringReplace(column_format, ',', exApp.International[4{ThousandsSeparator}], [rfReplaceAll])
                                   , '.', exApp.International[3{DecimalSeparator}], [rfReplaceAll]);

        exWks.Range[exWks.Cells[4, Client_Columns.RecNo + 1], exWks.Cells[4 + cnt_record - 3, Client_Columns.RecNo + 1]].NumberFormat := column_format;
      end;

      if cxGridView.Columns[Client_Columns.FieldByName('fld_index').AsInteger].Properties is TcxDateEditProperties then begin
        exWks.Range[exWks.Cells[4, Client_Columns.RecNo + 1], exWks.Cells[4 + cnt_record - 3, Client_Columns.RecNo + 1]].NumberFormat := 'ДД'+ FormatSettings.DateSeparator+'ММ'+FormatSettings.DateSeparator+'ГГГГ';
      end;

      Client_Columns.Next;
    end;

    // Вывод данных
    range.Value := array_data;

    // Применить стили
    //ShowTextMessage('Печать таблицы в Excel...' + #10 + 'Форматирование таблицы...', False);
    exApp.ActiveWindow.DisplayGridlines := False;

    range.Borders[7].LineStyle := 1;
    range.Borders[8].LineStyle := 1;
    range.Borders[9].LineStyle := 1;
    range.Borders[10].LineStyle := 1;
    range.Borders[11].LineStyle := 1;
    range.Borders[12].LineStyle := 1;

    range.Borders[7].Color := $C0C0C0;
    range.Borders[8].Color := $C0C0C0;
    range.Borders[9].Color := $C0C0C0;
    range.Borders[10].Color := $C0C0C0;
    range.Borders[11].Color := $C0C0C0;
    range.Borders[12].Color := $C0C0C0;

    range_caption.Interior.Color := $CCFFCC;
    range_caption.Borders[7].Color := $000000;
    range_caption.Borders[8].Color := $000000;
    range_caption.Borders[9].Color := $000000;
    range_caption.Borders[10].Color := $000000;
    range_caption.Borders[11].Color := $000000;
    range_caption.Borders[12].Color := $000000;

    range_footer.Interior.Color := $CCFFCC;
    range_footer.Borders[7].Color := $000000;
    range_footer.Borders[8].Color := $000000;
    range_footer.Borders[9].Color := $000000;
    range_footer.Borders[10].Color := $000000;
    range_footer.Borders[11].Color := $000000;
    range_footer.Borders[12].Color := $000000;


    exWks.Cells.Font.Size := 8;
    exWks.Cells.Font.Name := 'MS Sans Serif';
    exWks.Cells.Rows.AutoFit;

    range.WrapText := False;
//    range.Columns.AutoFit;

    //ShowTextMessage('Печать таблицы в Excel...' + #10 + 'Расчет итоговых сумм...', False);
    // Вывести итоги
    Client_Columns.First;
    while not Client_Columns.Eof do begin
      case cxGridView.Columns[Client_Columns.FieldByName('fld_index').AsInteger].Summary.FooterKind of
        skSum  : exWks.Cells[4 + cnt_record - 2, Client_Columns.RecNo + 1].Value := '=SUM(R[-1]C:R[-' + IntToStr(cnt_record-2) + ']C)';
        skCount: exWks.Cells[4 + cnt_record - 2, Client_Columns.RecNo + 1].Value := '=COUNTA(R[-1]C:R[-' + IntToStr(cnt_record-2) + ']C)';
      end;
      Client_Columns.Next;
    end;


    str_list.Free;
    Client_Columns.Free;
    Client_temp.Free;
    Client_dist.Free;
    exWks.Range['A1'].Select;
    exApp.Visible := True;
    exWks := Null; exWkb := Null; exApp := Null;
    VarClear(exWks); VarClear(exWkb); VarClear(exApp);
    //ShowTextMessage;
  end;
end;

procedure TfmLoadMain.OnTerminateThread(Sender: TObject);
begin
  dxBarLargeButton1.Enabled := True;
  dxBarLargeButton2.Enabled := False;
  cxImage1.Picture := cxImage3.Picture;
end;

procedure TfmLoadMain.SaveLog(cod: string; function_name: string; comment: string; duration: integer);
var log_file : TFileStream;
    log_path : string;
      s_save : RawByteString;
   file_name : string;
begin
  try
    log_path  := ExtractFilePath(ParamStr(0)) + 'Log\';
    file_name := log_path + 'log_stat_' + FormatDateTime('yyyymmdd', Now()) + '.csv';

    if not FileExists(file_name) then
      log_file := TFileStream.Create(file_name, fmCreate)
    else
      log_file := TFileStream.Create(file_name, fmOpenReadWrite);

    s_save :=  FormatDateTime('dd.mm.yyyy hh:nn:ss.zzz', Now) + ';' + cod + ';' + function_name + ';' + comment + ';' + IntToStr(duration) + ';'#10;

    log_file.Seek(0, soFromEnd);
    log_file.WriteBuffer(Pointer(s_save)^, Length(s_save));
    log_file.Free;

  finally
  end;
end;

procedure TfmLoadMain.SaveLogError(error_cod: string; function_name: string; error_message: string; error_comment: string);
var log_file : TFileStream;
    log_path : string;
      s_save : RawByteString;
   file_name : string;
begin
  try
    log_path  := ExtractFilePath(ParamStr(0)) + 'Log\';
    file_name := log_path + 'log_error_' + FormatDateTime('yyyymmdd', Now()) + '.csv';

    if not FileExists(file_name) then
      log_file := TFileStream.Create(file_name, fmCreate)
    else
      log_file := TFileStream.Create(file_name, fmOpenReadWrite);

    s_save :=  FormatDateTime('dd.mm.yyyy hh:nn:ss.zzz', Now) + ';' + error_cod + ';' + function_name + ';' + error_message + ';' + error_comment + ';' + #10;

    log_file.Seek(0, soFromEnd);
    log_file.WriteBuffer(Pointer(s_save)^, Length(s_save));
    log_file.Free;

    if dxBarDateCombo1.Date = Date then begin
      ClientDS_Error.Append;
      ClientDS_Error.FieldByName('error_date'    ).Value := Now;
      ClientDS_Error.FieldByName('error_cod'     ).Value := error_cod;
      ClientDS_Error.FieldByName('function_name' ).Value := function_name;
      ClientDS_Error.FieldByName('error_message' ).Value := error_message;
      ClientDS_Error.FieldByName('error_comment' ).Value := error_comment;
      ClientDS_Error.Post;
    end;
  finally
  end;
end;


procedure TfmLoadMain.SaveLogMem(m1: integer; m2: integer; m3: integer; m4: integer; m5: integer; m6: integer; m7: integer;
                                 m8: integer; m9: integer; m10: integer; m11: integer; m12: integer; m13: integer; m14: integer);
var log_file : TFileStream;
    log_path : string;
      s_save : RawByteString;
   file_name : string;
begin
  try
    log_path  := ExtractFilePath(ParamStr(0)) + 'Log\';
    file_name := log_path + 'log_mem_' + FormatDateTime('yyyymmdd', Now()) + '.csv';

    if not FileExists(file_name) then
      log_file := TFileStream.Create(file_name, fmCreate)
    else
      log_file := TFileStream.Create(file_name, fmOpenReadWrite);

    s_save :=  FormatDateTime('dd.mm.yyyy hh:nn:ss.zzz', Now) + ';' +
      IntToStr(m1)  + ';' +
      IntToStr(m2)  + ';' +
      IntToStr(m3)  + ';' +
      IntToStr(m4)  + ';' +
      IntToStr(m5)  + ';' +
      IntToStr(m6)  + ';' +
      IntToStr(m7)  + ';' +
      IntToStr(m8)  + ';' +
      IntToStr(m9)  + ';' +
      IntToStr(m10) + ';' +
      IntToStr(m11) + ';' +
      IntToStr(m12) + ';' +
      IntToStr(m13) + ';' +
      IntToStr(m14) + ';' +
      #10;

    log_file.Seek(0, soFromEnd);
    log_file.WriteBuffer(Pointer(s_save)^, Length(s_save));
    log_file.Free;
  finally
  end;
end;

procedure TfmLoadMain.LoadLogError();
var  log_file : TStringList;
      log_str : TStringList;
     str_temp : string;
     log_path : string;
    file_name : string;
          k,i : integer;

begin
  ClientDS_Error.DisableControls;

  try
    log_path  := ExtractFilePath(ParamStr(0)) + 'Log\';
    file_name := log_path + 'log_error_' + FormatDateTime('yyyymmdd', dxBarDateCombo1.Date) + '.csv';
    ClientDS_Error.EmptyDataSet;

    if FileExists(file_name) then begin
      log_file := TStringList.Create;
      log_file.LoadFromFile(file_name);

      log_str := TStringList.Create;

      for i := 0 to log_file.Count-1 do begin
        str_temp := log_file.Strings[i];
        str_temp := ReplaceStr(str_temp, ';', #10);
        log_str.Text := str_temp;
        str_temp := log_str.Strings[0];
        ClientDS_Error.Append;
        if str_temp <> '' then
          ClientDS_Error.FieldByName('error_date'    ).Value := EncodeDate(StrToInt(MidStr(str_temp, 7, 4)), StrToInt(MidStr(str_temp, 4, 2)), StrToInt(MidStr(str_temp, 1, 2))) +
                                                                EncodeTime(StrToInt(MidStr(str_temp, 12, 2)),StrToInt(MidStr(str_temp, 15, 2)),StrToInt(MidStr(str_temp, 18, 2)),StrToInt(MidStr(str_temp, 21, 3)));
        ClientDS_Error.FieldByName('error_cod'     ).Value := log_str.Strings[1];
        ClientDS_Error.FieldByName('function_name' ).Value := log_str.Strings[2];
        ClientDS_Error.FieldByName('error_message' ).Value := log_str.Strings[3];
        ClientDS_Error.FieldByName('error_comment' ).Value := log_str.Strings[4];
        ClientDS_Error.Post;
      end;


      log_str.Free;
      log_file.Free;
    end;
  finally
  end;

  ClientDS_Error.EnableControls;
end;

procedure TfmLoadMain.MessageReceiver(var msg: TMessage);
begin
  //сбрасываем признак сворачивания
  if fmLoadMain.WindowState = wsMinimized then fmLoadMain.WindowState := wsNormal;

  //Отображаем окно
  fmLoadMain.Visible := True;

  //Принудительно устанавливаем окно поверх остальных
  SetForegroundWindow(Application.Handle);
end;


end.
