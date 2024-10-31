unit LoadFactAdd;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs, Default,
  Db, ADODB, ExtCtrls,  StdCtrls, ComCtrls, Menus,
  cxPropertiesStore, cxStyles, cxCustomData, cxGraphics, cxFilter, cxData, cxDataStorage, cxEdit, cxDBData, cxGridCustomTableView,
  cxGridTableView, cxGridBandedTableView, cxGridDBBandedTableView, cxControls, cxGridCustomView, cxClasses, cxGridLevel, cxGrid,
  cxLookAndFeels, cxLookAndFeelPainters, cxNavigator, cxCheckBox, dxSkinsCore, dxSkinBlack, dxSkinBlue, dxSkinBlueprint,
  dxSkinCaramel, dxSkinCoffee, dxSkinDarkroom, dxSkinDarkSide, dxSkinDevExpressDarkStyle, dxSkinDevExpressStyle, dxSkinFoggy,
  dxSkinGlassOceans, dxSkinHighContrast, dxSkiniMaginary, dxSkinLilian, dxSkinLiquidSky, dxSkinLondonLiquidSky, dxSkinMcSkin,
  dxSkinMetropolis, dxSkinMetropolisDark, dxSkinMoneyTwins, dxSkinOffice2007Black, dxSkinOffice2007Blue, dxSkinOffice2007Green,
  dxSkinOffice2007Pink, dxSkinOffice2007Silver, dxSkinOffice2010Black, dxSkinOffice2010Blue, dxSkinOffice2010Silver,
  dxSkinOffice2013DarkGray, dxSkinOffice2013LightGray, dxSkinOffice2013White, dxSkinOffice2016Colorful, dxSkinOffice2016Dark, dxSkinPumpkin,
  dxSkinSeven, dxSkinSevenClassic, dxSkinSharp, dxSkinSharpPlus, dxSkinSilver, dxSkinSpringtime, dxSkinStardust, dxSkinSummer2008,
  dxSkinTheAsphaltWorld, dxSkinTheBezier, dxSkinsDefaultPainters, dxSkinValentine, dxSkinVisualStudio2013Blue, dxSkinVisualStudio2013Dark,
  dxSkinVisualStudio2013Light, dxSkinVS2010, dxSkinWhiteprint, dxSkinXmas2008Blue, dxDateRanges, dxSkinOffice2019Colorful, dxScrollbarAnnotations,
  cxButtons;

type
  TfmLoadFactAdd = class(TForm)
    Panel1: TPanel;
    DS_SceneFact: TDataSource;
    cxPropertiesStore1: TcxPropertiesStore;
    cxGrid1Level1: TcxGridLevel;
    cxGrid1: TcxGrid;
    cxGrid1DBBandedTableView1: TcxGridDBBandedTableView;
    cxGrid1DBBandedTableView1scene_fact_id: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1fact_physic_name: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1fact_logic_name: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1fact_data_type: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1set_dictionary: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1type_inf_id: TcxGridDBBandedColumn;
    Query_SceneFact: TADOQuery;
    cxButton1: TcxButton;
    cxButton3: TcxButton;
    procedure cxGrid1DBBandedTableView1CustomDrawCell(Sender: TcxCustomGridTableView; ACanvas: TcxCanvas; AViewInfo: TcxGridTableDataCellViewInfo; var ADone: Boolean);
    procedure cxGrid1DBBandedTableView1CustomDrawColumnHeader(Sender: TcxGridTableView; ACanvas: TcxCanvas; AViewInfo: TcxGridColumnHeaderViewInfo; var ADone: Boolean);
    procedure cxGrid1DBBandedTableView1FocusedItemChanged(Sender: TcxCustomGridTableView; APrevFocusedItem, AFocusedItem: TcxCustomGridTableItem);
    procedure cxGrid1DBBandedTableView1DblClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure cxGrid1DBBandedTableView1KeyPress(Sender: TObject; var Key: Char);
    procedure cxGrid1DBBandedTableView1DataControllerFilterChanged(Sender: TObject);
  private

  public
    constructor Create(AOwner : TApplication; type_scene : integer; Cnn : TADOConnection);
  end;

var
  fmLoadFactAdd: TfmLoadFactAdd;

implementation
    uses Raznoe;
{$R *.DFM}


constructor TfmLoadFactAdd.Create(AOwner : TApplication; type_scene : integer; Cnn : TADOConnection);
begin
  Screen.Cursor := crHourglass;
  inherited Create(AOwner);

  Query_SceneFact.Connection := Cnn;
  Query_SceneFact.Parameters.ParamByName('type_scene').Value := type_scene;
  Query_SceneFact.Open;

  StoreRegistryGrid(rgLoad,'\Software\Lis1\LoadFactAdd_Grids', cxGrid1DBBandedTableView1);

  MonitorEventFormOpen('OPEN_FORM', self.Name, cnn, -9);
  Screen.Cursor := crDefault;
end;

procedure TfmLoadFactAdd.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  StoreRegistryGrid(rgSave,'\Software\Lis1\LoadFactAdd_Grids', cxGrid1DBBandedTableView1);
  Action := caFree;
end;

procedure TfmLoadFactAdd.cxGrid1DBBandedTableView1CustomDrawCell(Sender: TcxCustomGridTableView; ACanvas: TcxCanvas; AViewInfo: TcxGridTableDataCellViewInfo; var ADone: Boolean);
begin
  if AViewInfo.GridRecord.Selected then begin
    ACanvas.Brush.Color := clNavy;
    ACanvas.Font.Color := clWhite;
    if AViewInfo.Focused then ACanvas.Brush.Color := clBlue;
  end;
end;

procedure TfmLoadFactAdd.cxGrid1DBBandedTableView1CustomDrawColumnHeader(Sender: TcxGridTableView; ACanvas: TcxCanvas; AViewInfo: TcxGridColumnHeaderViewInfo; var ADone: Boolean);
begin
  DrawcxGridColumnOnFocused(Sender, ACanvas, AViewInfo);
end;

procedure TfmLoadFactAdd.cxGrid1DBBandedTableView1DataControllerFilterChanged(Sender: TObject);
begin
  DrawcxGridColumnOnFiltered(Sender);
end;

procedure TfmLoadFactAdd.cxGrid1DBBandedTableView1DblClick(Sender: TObject);
begin
  ModalResult := mrOk;
end;

procedure TfmLoadFactAdd.cxGrid1DBBandedTableView1FocusedItemChanged(Sender: TcxCustomGridTableView; APrevFocusedItem,  AFocusedItem: TcxCustomGridTableItem);
begin
  Sender.Painter.Invalidate;
end;

procedure TfmLoadFactAdd.cxGrid1DBBandedTableView1KeyPress(Sender: TObject; var Key: Char);
begin
  FilterColumnGridOnKeyPress(TcxGridDBBandedTableView(TcxGridSite(Sender).GridView), Key);
end;

end.
