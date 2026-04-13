unit PretenziaShapeDirectum;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, Datasnap.DBClient, dxSkinsCore,
  dxSkinBasic, dxSkinBlack, dxSkinBlue, dxSkinBlueprint, dxSkinCaramel,
  dxSkinCoffee, dxSkinDarkRoom, dxSkinDarkSide, dxSkinDevExpressDarkStyle,
  dxSkinDevExpressStyle, dxSkinFoggy, dxSkinGlassOceans, dxSkinHighContrast,
  dxSkiniMaginary, dxSkinLilian, dxSkinLiquidSky, dxSkinLondonLiquidSky,
  dxSkinMcSkin, dxSkinMetropolis, dxSkinMetropolisDark, dxSkinMoneyTwins,
  dxSkinOffice2007Black, dxSkinOffice2007Blue, dxSkinOffice2007Green,
  dxSkinOffice2007Pink, dxSkinOffice2007Silver, dxSkinOffice2010Black,
  dxSkinOffice2010Blue, dxSkinOffice2010Silver, dxSkinOffice2013DarkGray,
  dxSkinOffice2013LightGray, dxSkinOffice2013White, dxSkinOffice2016Colorful,
  dxSkinOffice2016Dark, dxSkinOffice2019Black, dxSkinOffice2019Colorful,
  dxSkinOffice2019DarkGray, dxSkinOffice2019White, dxSkinPumpkin, dxSkinSeven,
  dxSkinSevenClassic, dxSkinSharp, dxSkinSharpPlus, dxSkinSilver,
  dxSkinSpringTime, dxSkinStardust, dxSkinSummer2008, dxSkinTheAsphaltWorld,
  dxSkinTheBezier, dxSkinValentine, dxSkinVisualStudio2013Blue,
  dxSkinVisualStudio2013Dark, dxSkinVisualStudio2013Light, dxSkinVS2010,
  dxSkinWhiteprint, dxSkinWXI, dxSkinXmas2008Blue, cxGraphics, cxLookAndFeels,
  cxLookAndFeelPainters, Vcl.Menus, cxControls, cxStyles, cxCustomData,
  cxFilter, cxData, cxDataStorage, cxEdit, cxNavigator, dxDateRanges,
  dxScrollbarAnnotations, cxDBData, cxGridCustomTableView, cxGridTableView,
  cxGridBandedTableView, cxGridDBBandedTableView, cxGridCustomView, cxClasses,
  cxGridLevel, cxGrid, Vcl.StdCtrls, cxButtons, Vcl.ExtCtrls, Raznoe;

type
  TfmPretenziaShapeDirectum = class(TForm)
    ClientDS_Pr: TClientDataSet;
    DS_Pr: TDataSource;
    ClientDS_Prid: TIntegerField;
    ClientDS_Prpretenzia_cod: TStringField;
    ClientDS_Prpretenzia_date: TDateTimeField;
    ClientDS_Prpretenzia_our_cod: TStringField;
    ClientDS_Prpretenzia_our_date: TDateField;
    ClientDS_Prfirm_self_name: TStringField;
    ClientDS_Prfirm_customer_name: TStringField;
    ClientDS_Prpretenzia_scan: TStringField;
    ClientDS_Prpretenzia_sum: TCurrencyField;
    ClientDS_Prstay_date_begin: TDateTimeField;
    ClientDS_Prstay_date_end: TDateTimeField;
    ClientDS_Prstay_type_name: TStringField;
    ClientDS_Prcontract_cod: TStringField;
    Panel1: TPanel;
    cxButton1: TcxButton;
    cxButton2: TcxButton;
    cxGrid1: TcxGrid;
    cxGrid1Level1: TcxGridLevel;
    cxGrid1DBBandedTableView1: TcxGridDBBandedTableView;
    cxGrid1DBBandedTableView1id: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1pretenzia_cod: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1pretenzia_date: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1pretenzia_our_cod: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1pretenzia_our_date: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1firm_self_name: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1firm_customer_name: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1pretenzia_scan: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1pretenzia_sum: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1stay_date_begin: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1stay_date_end: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1stay_type_name: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1contract_cod: TcxGridDBBandedColumn;
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
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fmPretenziaShapeDirectum: TfmPretenziaShapeDirectum;

implementation

{$R *.dfm}

procedure TfmPretenziaShapeDirectum.cxGrid1DBBandedTableView1CustomDrawCell(
  Sender: TcxCustomGridTableView; ACanvas: TcxCanvas;
  AViewInfo: TcxGridTableDataCellViewInfo; var ADone: Boolean);
begin
	if AViewInfo.GridRecord.Selected or AViewInfo.GridRecord.Focused then begin
		ACanvas.Brush.Color := clNavy;
		ACanvas.Font.Color := clWhite;
		if AViewInfo.Focused then ACanvas.Brush.Color := clBlue;
	end;
end;

procedure TfmPretenziaShapeDirectum.cxGrid1DBBandedTableView1CustomDrawColumnHeader(
  Sender: TcxGridTableView; ACanvas: TcxCanvas;
  AViewInfo: TcxGridColumnHeaderViewInfo; var ADone: Boolean);
begin
	if AViewInfo.Column.Focused then begin
		ACanvas.Brush.Color := clNavy;
		ACanvas.Font.Color := clWhite;
	end;
end;

procedure TfmPretenziaShapeDirectum.cxGrid1DBBandedTableView1FilterOnChanged(
  Sender: TObject);
begin
	DrawcxGridColumnOnFiltered(cxGrid1DBBandedTableView1);
end;

procedure TfmPretenziaShapeDirectum.cxGrid1DBBandedTableView1FocusedItemChanged(
  Sender: TcxCustomGridTableView; APrevFocusedItem,
  AFocusedItem: TcxCustomGridTableItem);
begin
	cxGrid1DBBandedTableView1.Painter.Invalidate;
end;

procedure TfmPretenziaShapeDirectum.cxGrid1DBBandedTableView1KeyPress(
  Sender: TObject; var Key: Char);
begin
	FilterColumnGridOnKeyPress(cxGrid1DBBandedTableView1, Key);
end;

end.
