unit ECPVagonMonitor;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, cxClasses, dxBar, cxGraphics,
  cxControls, cxLookAndFeels, cxLookAndFeelPainters, cxStyles, cxCustomData,
  cxFilter, cxData, cxDataStorage, cxEdit, cxNavigator, Data.DB, cxDBData,
  cxGridCustomView, cxGridCustomTableView, cxGridTableView,
  cxGridBandedTableView, cxGridDBBandedTableView, cxGridLevel, cxGrid,
  Data.Win.ADODB, System.ImageList, Vcl.ImgList, Raznoe, StrUtils,
  cxPropertiesStore, Default,
  cxDataControllerConditionalFormattingRulesManagerDialog, cxImageList, dxSkinsCore, dxSkinBlack, dxSkinBlue, dxSkinBlueprint, dxSkinCaramel, dxSkinCoffee, dxSkinDarkRoom, dxSkinDarkSide,
  dxSkinDevExpressDarkStyle, dxSkinDevExpressStyle, dxSkinFoggy, dxSkinGlassOceans, dxSkinHighContrast, dxSkiniMaginary, dxSkinLilian, dxSkinLiquidSky, dxSkinLondonLiquidSky, dxSkinMcSkin,
  dxSkinMetropolis, dxSkinMetropolisDark, dxSkinMoneyTwins, dxSkinOffice2007Black, dxSkinOffice2007Blue, dxSkinOffice2007Green, dxSkinOffice2007Pink, dxSkinOffice2007Silver, dxSkinOffice2010Black,
  dxSkinOffice2010Blue, dxSkinOffice2010Silver, dxSkinOffice2013DarkGray, dxSkinOffice2013LightGray, dxSkinOffice2013White, dxSkinOffice2016Colorful, dxSkinOffice2016Dark, dxSkinPumpkin, dxSkinSeven,
  dxSkinSevenClassic, dxSkinSharp, dxSkinSharpPlus, dxSkinSilver, dxSkinSpringTime, dxSkinStardust, dxSkinSummer2008, dxSkinTheAsphaltWorld, dxSkinTheBezier, dxSkinsDefaultPainters, dxSkinValentine,
  dxSkinVisualStudio2013Blue, dxSkinVisualStudio2013Dark, dxSkinVisualStudio2013Light, dxSkinVS2010, dxSkinWhiteprint, dxSkinXmas2008Blue, dxDateRanges;

type
  TfmECPVagonMonitor = class(TForm)
    dxBarManager1: TdxBarManager;
    dxBarManager1Bar1: TdxBar;
    dxBarButton1: TdxBarButton;
    sp_etran_ecp_monitor_vagon_get: TADOStoredProc;
    cxGrid1: TcxGrid;
    cxGrid1DBBandedTableView1: TcxGridDBBandedTableView;
    cxGrid1DBBandedTableView1etran_ecp_id: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1etran_ecp_type_id: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1etran_ecp_type_name: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1date_send: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1users_owner_id: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1global_color: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1date_enter: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1invSenderName: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1invSenderOKPO: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1invRecipName: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1invRecipOKPO: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1invNumber: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1invSendKindName: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1invFRWSubCode: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1invFromStationName: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1invToStationName: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1invPayerName: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1freightName: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1FIO_users_create: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1FIO_users_send: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1set_error: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1num_vagon: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1freightDangerName: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1set_automat: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1set_warning: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1set_change_fields: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1set_check: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1check_begin: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1check_end: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1invoiceState: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1FIO_users_check_end: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1global_copy: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1orders_type: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1set_error_ecp: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1error_ecp: TcxGridDBBandedColumn;
    cxGrid1Level1: TcxGridLevel;
    cxGrid1DBBandedTableView1monitor_num_vagon: TcxGridDBBandedColumn;
    cxStyleRepository1: TcxStyleRepository;
    cxStyle1: TcxStyle;
    cxStyle2: TcxStyle;
    cxStyle3: TcxStyle;
    cxStyle4: TcxStyle;
    dxBarButton4: TdxBarButton;
    DS_etran_ecp_monitor_vagon_get: TDataSource;
    cxGrid1DBBandedTableView1id: TcxGridDBBandedColumn;
    dxBarButton5: TdxBarButton;
    cxImageList1: TcxImageList;
    dxBarPopupMenu1: TdxBarPopupMenu;
    dxBarButton6: TdxBarButton;
    dxBarSubItem1: TdxBarSubItem;
    dxBarButton7: TdxBarButton;
    dxBarButton8: TdxBarButton;
    cxPropertiesStore1: TcxPropertiesStore;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure dxBarButton1Click(Sender: TObject);
    procedure dxBarButton5Click(Sender: TObject);
    procedure dxBarButton4Click(Sender: TObject);
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
    procedure dxBarButton6Click(Sender: TObject);
    procedure dxBarButton7Click(Sender: TObject);
    procedure dxBarButton8Click(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
  private
    Fconnect : TADOConnection;
  public
    constructor Create(AOwner: TApplication; connect: TADOConnection); reintroduce;
  end;

var
  fmECPVagonMonitor: TfmECPVagonMonitor;

implementation

{$R *.dfm}

uses ECPVagonSeveral;

constructor TfmECPVagonMonitor.Create(AOwner: TApplication; connect: TADOConnection);
var Q: TADOQuery;
begin
  Screen.Cursor := crHourglass;
  inherited Create(AOwner);
  Fconnect := connect;

  sp_etran_ecp_monitor_vagon_get.Connection := Fconnect;
  sp_etran_ecp_monitor_vagon_get.Open;

  StoreRegistryGrid(rgLoad,'\Software\Lis1\ECPEtran\MonitorVagonGrids', cxGrid1DBBandedTableView1);

  Screen.Cursor := crDefault;
end;


procedure TfmECPVagonMonitor.cxGrid1DBBandedTableView1CustomDrawCell(
  Sender: TcxCustomGridTableView; ACanvas: TcxCanvas;
  AViewInfo: TcxGridTableDataCellViewInfo; var ADone: Boolean);
begin

  if (cxGrid1DBBandedTableView1monitor_num_vagon.Index <> AViewInfo.Item.ID) and
     (cxGrid1DBBandedTableView1id.Index <> AViewInfo.Item.ID) then begin

    if (AViewInfo.GridRecord.Values[cxGrid1DBBandedTableView1date_send.Index] <> null) then begin
      ACanvas.Font.Color := clPurple; //clMoneyGreen - $00AF0AAA;
      ACanvas.Font.Style := [fsBold];
    end;

    if (AViewInfo.GridRecord.Values[cxGrid1DBBandedTableView1set_error.Index]<>NULL) AND (AViewInfo.GridRecord.Values[cxGrid1DBBandedTableView1set_error.Index]<>0) then ACanvas.Font.Color := clRed;
  end;



	if AViewInfo.GridRecord.Selected or AViewInfo.GridRecord.Focused then begin
		ACanvas.Brush.Color := clNavy;
		ACanvas.Font.Color := clWhite;
		if AViewInfo.Focused then ACanvas.Brush.Color := clBlue;
	end;
end;

procedure TfmECPVagonMonitor.cxGrid1DBBandedTableView1CustomDrawColumnHeader(
  Sender: TcxGridTableView; ACanvas: TcxCanvas;
  AViewInfo: TcxGridColumnHeaderViewInfo; var ADone: Boolean);
begin
	if AViewInfo.Column.Focused then begin
		ACanvas.Brush.Color := clNavy;
		ACanvas.Font.Color := clWhite;
	end;
end;

procedure TfmECPVagonMonitor.cxGrid1DBBandedTableView1FilterOnChanged(
  Sender: TObject);
begin
	DrawcxGridColumnOnFiltered(Sender);
end;

procedure TfmECPVagonMonitor.cxGrid1DBBandedTableView1FocusedItemChanged(
  Sender: TcxCustomGridTableView; APrevFocusedItem,
  AFocusedItem: TcxCustomGridTableItem);
begin
	cxGrid1DBBandedTableView1.Painter.Invalidate;
end;

procedure TfmECPVagonMonitor.cxGrid1DBBandedTableView1KeyPress(Sender: TObject;
  var Key: Char);
begin
	FilterColumnGridOnKeyPress(cxGrid1DBBandedTableView1, Key);
end;

procedure TfmECPVagonMonitor.dxBarButton1Click(Sender: TObject);
var sp_etran_ecp_monitor_vagon_modify : TADOStoredProc;
    monitor_vagon_str : string;
    str_list : TStringList;

    Q : TADOQuery;
begin

  Q := TADOQuery.Create(nil);
  Q.Connection := Fconnect;
  Q.SQL.Add('DECLARE @monitor_vagon_str varchar(max)');
  Q.SQL.Add('SELECT	top 1 @monitor_vagon_str = monitor_vagon_str');
  Q.SQL.Add('FROM	etran_ecp_monitor_vagon');
  Q.SQL.Add('ORDER BY monitor_vagon_id DESC');
  Q.SQL.Add('SELECT	DISTINCT cod as monitor_num_vagon FROM [dbo].[StrToTbl](@monitor_vagon_str,default)');
  Q.Open;
  str_list := TStringList.Create;

  while not Q.Eof do begin
    str_list.Add(Q.FieldByName('monitor_num_vagon').AsString);
    Q.Next;
  end;
  Q.Free;


  fmECPVagonSeveral := TfmECPVagonSeveral.Create(Application);
  fmECPVagonSeveral._SetCaption := 'Новый список вагонов на мониторинг!';
  fmECPVagonSeveral._SetVagonList := str_list.Text;

  if fmECPVagonSeveral.ShowModal = mrOk then begin
    monitor_vagon_str := fmECPVagonSeveral._GetVagonList;
    if Application.MessageBox('Обновить список вагонов??', 'Внимание', MB_ICONWARNING or MB_YESNO or MB_DEFBUTTON2) = IDYES then begin
      if Application.MessageBox('Предыдущий список вагонов будет удален!!!'+#13+#10+'Обновить список вагонов ??', 'Внимание', MB_ICONWARNING or MB_YESNO or MB_DEFBUTTON2) = ID_YES then begin
        sp_etran_ecp_monitor_vagon_modify := TADOStoredProc.Create(nil);
        sp_etran_ecp_monitor_vagon_modify.Connection := Fconnect;
        sp_etran_ecp_monitor_vagon_modify.ProcedureName := 'sp_etran_ecp_monitor_vagon_modify';
        sp_etran_ecp_monitor_vagon_modify.Parameters.Refresh;
        sp_etran_ecp_monitor_vagon_modify.Parameters.ParamByName('@type_action').Value := 0;
        sp_etran_ecp_monitor_vagon_modify.Parameters.ParamByName('@monitor_vagon_str').Value := monitor_vagon_str;
        sp_etran_ecp_monitor_vagon_modify.ExecProc;
        sp_etran_ecp_monitor_vagon_modify.Free;

        RefreshQueryGrid(cxGrid1DBBandedTableView1, 'id');
      end;
    end;
  end;
end;

procedure TfmECPVagonMonitor.dxBarButton4Click(Sender: TObject);
var i : integer;
    list_vagon : array of string;
    monitor_vagon_str : string;
begin
  fmECPVagonSeveral := TfmECPVagonSeveral.Create(Application);
  fmECPVagonSeveral._SetCaption := 'Поиск вагонов';
  if fmECPVagonSeveral.ShowModal = mrOk then begin
    if fmECPVagonSeveral._GetVagonList <> '' then begin
      monitor_vagon_str := fmECPVagonSeveral._GetVagonList;
      with cxGrid1DBBandedTableView1.DataController.Filter do begin
        Clear;
        Options := Options + [fcoCaseInsensitive];
        Root.BoolOperatorKind := fboAnd;
        SetLength(list_vagon, Length(monitor_vagon_str) - Length(ReplaceStr(monitor_vagon_str, ',', '')) + 1);
        list_vagon[0] := monitor_vagon_str;
        for i := 1 to High(list_vagon) do begin
          list_vagon[i] := RightStr(list_vagon[i-1], length(list_vagon[i-1]) - pos(',', list_vagon[i-1]));
          list_vagon[i-1] := LeftStr(list_vagon[i-1], pos(',', list_vagon[i-1]) - 1);
        end;
        Root.AddItem(cxGrid1DBBandedTableView1monitor_num_vagon, foInList, list_vagon, monitor_vagon_str);
        Active := True;
      end;

    end;
  end;
end;

procedure TfmECPVagonMonitor.dxBarButton5Click(Sender: TObject);
begin
  RefreshQueryGrid(cxGrid1DBBandedTableView1, 'id');
end;

procedure TfmECPVagonMonitor.dxBarButton6Click(Sender: TObject);
begin
	PrintcxGrid(cxGrid1DBBandedTableView1);
end;

procedure TfmECPVagonMonitor.dxBarButton7Click(Sender: TObject);
begin
	SetdxDBGridColumns(cxGrid1DBBandedTableView1);
end;

procedure TfmECPVagonMonitor.dxBarButton8Click(Sender: TObject);
begin
	cxGrid1DBBandedTableView1.OptionsView.GroupByBox := not cxGrid1DBBandedTableView1.OptionsView.GroupByBox;
end;

procedure TfmECPVagonMonitor.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action := caFree;
end;

procedure TfmECPVagonMonitor.FormDestroy(Sender: TObject);
begin
  StoreRegistryGrid(rgSave,'\Software\Lis1\ECPEtran\MonitorVagonGrids', cxGrid1DBBandedTableView1);
end;

end.
