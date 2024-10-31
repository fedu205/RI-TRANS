unit ECPVagonHistory;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, Data.Win.ADODB, Vcl.ExtCtrls,
  cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters, cxContainer,
  cxEdit, Vcl.Menus, Vcl.StdCtrls, cxButtons, cxTextEdit, cxStyles,
  cxCustomData, cxFilter, cxData, cxDataStorage, cxNavigator, cxDBData, dxBar,
  cxGridCustomTableView, cxGridTableView, cxGridBandedTableView,  Raznoe,
  cxGridDBBandedTableView, cxGridCustomView, cxClasses, cxGridLevel, cxGrid,
  System.ImageList, Vcl.ImgList, cxImageComboBox, dxSkinsCore, dxSkinBlack,
  dxSkinBlue, dxSkinBlueprint, dxSkinCaramel, dxSkinCoffee, dxSkinDarkRoom,
  dxSkinDarkSide, dxSkinDevExpressDarkStyle, dxSkinDevExpressStyle, dxSkinFoggy,
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
  dxSkinXmas2008Blue, dxSkinscxPCPainter, dxSkinsdxBarPainter,
  cxDataControllerConditionalFormattingRulesManagerDialog, cxImageList, dxSkinTheBezier, dxDateRanges;

type
  TfmECPVagonHistory = class(TForm)
    Panel1: TPanel;
    Label1: TLabel;
    cxTextEdit1: TcxTextEdit;
    cxButton1: TcxButton;
    cxGrid1Level1: TcxGridLevel;
    cxGrid1: TcxGrid;
    ADOQuery1: TADOQuery;
    DataSource1: TDataSource;
    cxGrid1DBBandedTableView1: TcxGridDBBandedTableView;
    cxGrid1DBBandedTableView1date_enter: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1date_send: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1invNumber: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1invoiceID: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1FIO_users_create: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1FIO_users_send: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1num_vagon: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1docOper_id: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1Oper_id: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1operDate: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1operOrgId: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1operOrgName: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1operPost: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1operPerson: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1operText: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1operResult: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1operRemark: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1operWorkPlace: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1operOperID: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1operResultId: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1operFromStateId: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1operFromStateName: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1operFactDate: TcxGridDBBandedColumn;
    dxBarManager1: TdxBarManager;
    dxBarPopupMenu1: TdxBarPopupMenu;
    dxBarButton1: TdxBarButton;
    dxBarSubItem1: TdxBarSubItem;
    dxBarButton2: TdxBarButton;
    dxBarButton3: TdxBarButton;
    cxStyleRepository1: TcxStyleRepository;
    cxStyle1: TcxStyle;
    cxStyle2: TcxStyle;
    cxImageList1: TcxImageList;
    cxGrid1DBBandedTableView1set_ecp: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1ecpDate: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1ecpPerson: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1ecpOrgName: TcxGridDBBandedColumn;
    cxImageList2: TcxImageList;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
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
    procedure dxBarButton1Click(Sender: TObject);
    procedure dxBarButton2Click(Sender: TObject);
    procedure dxBarButton3Click(Sender: TObject);
    procedure cxButton1Click(Sender: TObject);
  private
    Fconnect        : TADOConnection;
  public
    constructor Create(AOwner: TApplication); reintroduce;
    procedure _SetConnect(connect: TADOConnection);
  end;

var
  fmECPVagonHistory: TfmECPVagonHistory;

implementation

{$R *.dfm}

constructor TfmECPVagonHistory.Create(AOwner: TApplication);
begin
  Screen.Cursor := crHourglass;
  inherited Create(AOwner);

  Fconnect := nil;
  ADOQuery1.Connection := Fconnect;

  Screen.Cursor := crDefault;
end;

procedure TfmECPVagonHistory.cxButton1Click(Sender: TObject);
begin
  ADOQuery1.SQL.Clear;
  ADOQuery1.SQL.Add('SELECT	etran_global_id.date_enter, date_send, invNumber, invoiceID, FIO_users_create, FIO_users_send, ' + cxTextEdit1.Text + ' as num_vagon,');
  ADOQuery1.SQL.Add('		    docOper.*, case when ecp.ecp_id is not null then 1 else 0 end set_ecp, ecp.ecpDate, ecp.ecpPerson, ecp.ecpOrgName');
  ADOQuery1.SQL.Add('FROM	etran_ecp');
  ADOQuery1.SQL.Add('		inner join	etran_global_id on etran_ecp.etran_ecp_id = etran_global_id.global_id');
  ADOQuery1.SQL.Add('		left join	oper on etran_ecp.invoiceID = oper.docID');
  ADOQuery1.SQL.Add('		left join	docOper on oper.Oper_id = docOper.Oper_id');
  ADOQuery1.SQL.Add('		left join	ecp on docOper.docOper_id = ecp.docOper_id');
  ADOQuery1.SQL.Add('WHERE	(set_check = 1 or check_begin is not null or check_end is not null) -- мониторинг');
  ADOQuery1.SQL.Add('		    AND etran_ecp_xml.exist(''/invoiceDirectLoad/invCar/carNumber[(@value cast as xs:int?) eq xs:int("' + cxTextEdit1.Text + '")]'')=1');
  ADOQuery1.SQL.Add('ORDER BY date_send');
  ADOQuery1.Open;
end;

procedure TfmECPVagonHistory.cxGrid1DBBandedTableView1CustomDrawCell(
  Sender: TcxCustomGridTableView; ACanvas: TcxCanvas;
  AViewInfo: TcxGridTableDataCellViewInfo; var ADone: Boolean);
begin
	if AViewInfo.GridRecord.Selected or AViewInfo.GridRecord.Focused then begin
		ACanvas.Brush.Color := clNavy;
		ACanvas.Font.Color := clWhite;
		if AViewInfo.Focused then ACanvas.Brush.Color := clBlue;
	end;
end;

procedure TfmECPVagonHistory.cxGrid1DBBandedTableView1CustomDrawColumnHeader(
  Sender: TcxGridTableView; ACanvas: TcxCanvas;
  AViewInfo: TcxGridColumnHeaderViewInfo; var ADone: Boolean);
begin
	if AViewInfo.Column.Focused then begin
		ACanvas.Brush.Color := clNavy;
		ACanvas.Font.Color := clWhite;
	end;
end;

procedure TfmECPVagonHistory.cxGrid1DBBandedTableView1FilterOnChanged(
  Sender: TObject);
begin
	DrawcxGridColumnOnFiltered(Sender);
end;

procedure TfmECPVagonHistory.cxGrid1DBBandedTableView1FocusedItemChanged(
  Sender: TcxCustomGridTableView; APrevFocusedItem,
  AFocusedItem: TcxCustomGridTableItem);
begin
	cxGrid1DBBandedTableView1.Painter.Invalidate;
end;

procedure TfmECPVagonHistory.cxGrid1DBBandedTableView1KeyPress(Sender: TObject;
  var Key: Char);
begin
	FilterColumnGridOnKeyPress(cxGrid1DBBandedTableView1, Key);
end;

procedure TfmECPVagonHistory.dxBarButton1Click(Sender: TObject);
begin
	PrintcxGrid(cxGrid1DBBandedTableView1);
end;

procedure TfmECPVagonHistory.dxBarButton2Click(Sender: TObject);
begin
	SetdxDBGridColumns(cxGrid1DBBandedTableView1);
end;

procedure TfmECPVagonHistory.dxBarButton3Click(Sender: TObject);
begin
	cxGrid1DBBandedTableView1.OptionsView.GroupByBox := not cxGrid1DBBandedTableView1.OptionsView.GroupByBox;
end;

procedure TfmECPVagonHistory.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action := caFree;
end;

procedure TfmECPVagonHistory._SetConnect(connect: TADOConnection);
begin
  Fconnect := connect;
  ADOQuery1.Connection := Fconnect;
end;

end.
