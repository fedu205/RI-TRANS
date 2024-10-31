unit GridColumns;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs, Default,
  StdCtrls, ImgList, ExtCtrls, Db, DBClient, Variants, ComCtrls,
  cxGrid, cxGridDBBandedTableView, cxPropertiesStore, cxStyles, cxCustomData, cxGraphics, cxFilter, cxData, cxDataStorage, cxEdit,
  cxDBData, cxCheckBox, cxGridCustomTableView, cxGridTableView, cxGridBandedTableView, cxControls, cxGridCustomView, cxClasses, cxGridLevel,
  dxBar, cxLookAndFeels, cxLookAndFeelPainters, dxSkinsCore, dxSkinBlack, dxSkinBlue, dxSkinBlueprint, dxSkinCaramel, dxSkinCoffee,
  dxSkinDarkRoom, dxSkinDarkSide, dxSkinDevExpressDarkStyle, dxSkinDevExpressStyle, dxSkinFoggy, dxSkinGlassOceans, dxSkinHighContrast,
  dxSkiniMaginary, dxSkinLilian, dxSkinLiquidSky, dxSkinLondonLiquidSky, dxSkinMcSkin, dxSkinMetropolis, dxSkinMetropolisDark, dxSkinMoneyTwins,
  dxSkinOffice2007Black, dxSkinOffice2007Blue, dxSkinOffice2007Green, dxSkinOffice2007Pink, dxSkinOffice2007Silver, dxSkinOffice2010Black,
  dxSkinOffice2010Blue, dxSkinOffice2010Silver, dxSkinOffice2013DarkGray, dxSkinOffice2013LightGray, dxSkinOffice2013White, dxSkinPumpkin,
  dxSkinSeven, dxSkinSevenClassic, dxSkinSharp, dxSkinSharpPlus, dxSkinSilver, dxSkinSpringTime, dxSkinStardust, dxSkinSummer2008,
  dxSkinTheAsphaltWorld, dxSkinsDefaultPainters, dxSkinValentine, dxSkinVS2010, dxSkinWhiteprint, dxSkinXmas2008Blue, dxSkinscxPCPainter,
  cxNavigator, dxSkinsdxBarPainter, dxSkinOffice2016Colorful, dxSkinOffice2016Dark, dxSkinVisualStudio2013Blue, dxSkinVisualStudio2013Dark,
  dxSkinVisualStudio2013Light, System.ImageList, cxImageList, dxSkinTheBezier, cxDataControllerConditionalFormattingRulesManagerDialog, dxDateRanges,
  dxSkinOffice2019Colorful, dxScrollbarAnnotations, Vcl.Menus, cxButtons;

type
  TfmGridColumns = class(TForm)
    Panel1: TPanel;
    DS_GridColumns: TDataSource;
    cxPropertiesStore1: TcxPropertiesStore;
    cxGrid1Level1: TcxGridLevel;
    cxGrid1: TcxGrid;
    cxGrid1DBBandedTableView1: TcxGridDBBandedTableView;
    cxGrid1DBBandedTableView1caption: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1flag: TcxGridDBBandedColumn;
    cxImageList1: TcxImageList;
    dxBarManager1: TdxBarManager;
    dxBarManager1Bar1: TdxBar;
    dxBarButton1: TdxBarButton;
    dxBarButton2: TdxBarButton;
    cxGrid1DBBandedTableView1field_position: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1field_color: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1id2: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1field_bandindex: TcxGridDBBandedColumn;
    dxBarPopupMenu1: TdxBarPopupMenu;
    dxBarButton3: TdxBarButton;
    dxBarSubItem1: TdxBarSubItem;
    dxBarButton4: TdxBarButton;
    dxBarButton5: TdxBarButton;
    cxButton2: TcxButton;
    cxButton3: TcxButton;
    cxStyleRepository1: TcxStyleRepository;
    cxStyle_BlueBold: TcxStyle;
    cxStyle_ColorWhite: TcxStyle;
    procedure cxGrid1DBBandedTableView1flagPropertiesChange(Sender: TObject);
    procedure dxBarButton2Click(Sender: TObject);
    procedure dxBarButton1Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure cxGrid1DBBandedTableView1FilterOnChanged(Sender: TObject);
    procedure cxGrid1DBBandedTableView1CustomDrawCell(Sender: TcxCustomGridTableView; ACanvas: TcxCanvas; AViewInfo: TcxGridTableDataCellViewInfo; var ADone: Boolean);
    procedure cxGrid1DBBandedTableView1CustomDrawColumnHeader(Sender: TcxGridTableView; ACanvas: TcxCanvas; AViewInfo: TcxGridColumnHeaderViewInfo; var ADone: Boolean);
    procedure cxGrid1DBBandedTableView1FocusedItemChanged(Sender: TcxCustomGridTableView; APrevFocusedItem, AFocusedItem: TcxCustomGridTableItem);
    procedure cxGrid1DBBandedTableView1KeyPress(Sender: TObject; var Key: Char);
    procedure cxGrid1DBBandedTableView1StartDrag(Sender: TObject; var DragObject: TDragObject);
    procedure cxGrid1DBBandedTableView1DragDrop(Sender, Source: TObject; X,Y: Integer);
    procedure cxGrid1DBBandedTableView1DragOver(Sender, Source: TObject; X,Y: Integer; State: TDragState; var Accept: Boolean);
    procedure cxGrid1DBBandedTableView1CellDblClick(Sender: TcxCustomGridTableView; ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton;  AShift: TShiftState; var AHandled: Boolean);
    procedure dxBarButton3Click(Sender: TObject);
    procedure dxBarButton4Click(Sender: TObject);
    procedure dxBarButton5Click(Sender: TObject);
  private
    FSourceRow: integer;
    procedure ReorderRows(AView: TcxGridTableView; ADestRow: integer);
    procedure SetColumns(val: boolean);
  public
    constructor Create(AOwner: TApplication; var ClientDS : TClientDataSet);
  end;

function CreateWndGridColumns(AppHand: THandle; var ClientDS : TClientDataSet) : Variant; export;

var
//    fmGridColumns: TfmGridColumns;
  ClientDS_Column: TClientDataSet;

implementation
   uses Raznoe;

{$R *.DFM}


function CreateWndGridColumns(AppHand: THandle; var ClientDS : TClientDataSet) : Variant;
var fmGridColumns : TfmGridColumns;
begin
  Application.Handle := AppHand;
  try
    fmGridColumns := TfmGridColumns.Create(Application, ClientDS);
    if fmGridColumns.ShowModal=mrOk then  begin
      SortClientDataSet(ClientDS_Column, 'field_position');
      ClientDS.Data := ClientDS_Column.Data;
      ClientDS_Column.Free;

      result := VarArrayOf([0, '']);
    end else result := VarArrayOf([-9, '']);
  finally
    fmGridColumns.Free;
  end;

end;

constructor TfmGridColumns.Create(AOwner: TApplication; var ClientDS : TClientDataSet);
var i : integer;
    band_index : integer;
begin
  Screen.Cursor := -11;

  inherited Create(AOwner);

  StoreRegistryGrid(rgLoad, '\Software\Lis1\GridColumns_Grids', cxGrid1DBBandedTableView1);

  ClientDS_Column := TClientDataSet.Create(nil);
  ClientDS_Column.FieldDefs.Add('id',    ftAutoInc);
  ClientDS_Column.FieldDefs.Add('caption',    ftString, 50);
  ClientDS_Column.FieldDefs.Add('flag',       ftBoolean);
  ClientDS_Column.FieldDefs.Add('field_name', ftString, 50);
  ClientDS_Column.FieldDefs.Add('field_position', ftInteger);
  ClientDS_Column.FieldDefs.Add('field_focused',  ftBoolean);
  ClientDS_Column.FieldDefs.Add('field_bandindex', ftInteger);
  ClientDS_Column.CreateDataSet;

  ClientDS_Column.Data := ClientDS.Data;
  ClientDS_Column.First;

  cxGrid1DBBandedTableView1field_bandindex.Visible := False;
  ClientDS_Column.DisableControls;
  band_index := ClientDS_Column.FieldByName('field_bandindex').AsInteger;
  while not ClientDS_Column.Eof do begin

    if band_index <> ClientDS_Column.FieldByName('field_bandindex').AsInteger then begin
      cxGrid1DBBandedTableView1.DragMode := dmManual;
      cxGrid1DBBandedTableView1field_bandindex.Visible := True;
      Break;
    end;


    ClientDS_Column.Next;
  end;
  ClientDS_Column.EnableControls;


  ClientDS_Column.First;
  DS_GridColumns.DataSet := ClientDS_Column;

  Screen.Cursor := 0;
end;

procedure TfmGridColumns.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  StoreRegistryGrid(rgSave,'\Software\Lis1\GridColumns_Grids', cxGrid1DBBandedTableView1);
  Action := caFree;
end;


procedure TfmGridColumns.cxGrid1DBBandedTableView1CellDblClick(Sender: TcxCustomGridTableView; ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton; AShift: TShiftState; var AHandled: Boolean);
var id : integer;
begin
  if ACellViewInfo.Item.ID <> cxGrid1DBBandedTableView1flag.Index then begin
    id := cxGrid1DBBandedTableView1id2.DataBinding.Field.AsInteger;

    ClientDS_Column.DisableControls;

    ClientDS_Column.First;
    while not ClientDS_Column.Eof do begin

      ClientDS_Column.Edit;
      if ClientDS_Column.FieldByName('id').AsInteger = id then
        ClientDS_Column.FieldByName('field_focused').Value := True
      else
        ClientDS_Column.FieldByName('field_focused').Value := False;
      ClientDS_Column.Post;

      ClientDS_Column.Next;
    end;

    ClientDS_Column.EnableControls;

    ModalResult := mrOk;
  end;
end;

procedure TfmGridColumns.cxGrid1DBBandedTableView1CustomDrawCell(Sender: TcxCustomGridTableView; ACanvas: TcxCanvas; AViewInfo: TcxGridTableDataCellViewInfo; var ADone: Boolean);
begin
  if (AViewInfo.GridRecord.Values[cxGrid1DBBandedTableView1field_color.Index]<>NULL) then
    if (AViewInfo.GridRecord.Values[cxGrid1DBBandedTableView1field_color.Index]<>$20000000) then
      ACanvas.Brush.Color := AViewInfo.GridRecord.Values[cxGrid1DBBandedTableView1field_color.Index];

  if AViewInfo.GridRecord.DragHighlighted then begin
    ACanvas.Brush.Color := clNavy;
		ACanvas.Font.Color := clWhite;
  end;

	if AViewInfo.GridRecord.Selected or AViewInfo.GridRecord.Focused then begin
		ACanvas.Brush.Color := clNavy;
		ACanvas.Font.Color := clWhite;
		if AViewInfo.Focused then ACanvas.Brush.Color := clBlue;
	end;
end;

procedure TfmGridColumns.cxGrid1DBBandedTableView1CustomDrawColumnHeader(Sender: TcxGridTableView; ACanvas: TcxCanvas; AViewInfo: TcxGridColumnHeaderViewInfo; var ADone: Boolean);
begin
  DrawcxGridColumnOnFocused(Sender, ACanvas, AViewInfo);
end;

procedure TfmGridColumns.cxGrid1DBBandedTableView1DragDrop(Sender, Source: TObject; X, Y: Integer);
var HT: TcxCustomGridHitTest;
begin
  HT := TcxGridSite(Sender).ViewInfo.GetHitTest(X, Y);
  ReorderRows(TcxGridTableView(TcxGridSite(Sender).GridView), TcxGridRecordCellHitTest(HT).GridRecord.Index);
end;

procedure TfmGridColumns.cxGrid1DBBandedTableView1DragOver(Sender, Source: TObject; X, Y: Integer; State: TDragState; var Accept: Boolean);
var
  HT: TcxCustomGridHitTest;
begin
  HT := TcxGridSite(Sender).ViewInfo.GetHitTest(X, Y);
  Accept := (HT is TcxGridRecordCellHitTest) and (TcxGridRecordCellHitTest(HT).GridRecord.RecordIndex <> TcxGridSite(Sender).GridView.DataController.FocusedRecordIndex);
end;

procedure TfmGridColumns.ReorderRows(AView: TcxGridTableView; ADestRow: integer);
var
               i : integer;
  ClientDS_temp1 : TClientDataSet;
  ClientDS_temp2 : TClientDataSet;
  ClientDS_temp3 : TClientDataSet;
 field_position1 : integer;
 field_position2 : integer;
            str1 : string;
              id : integer;
begin
  ClientDS_Column.DisableControls;

  id := ClientDS_Column.FieldByName('id').AsInteger;

  ClientDS_temp3 := TClientDataSet.Create(nil);
  ClientDS_temp3.FieldDefs.Add('id',    ftInteger);
  ClientDS_temp3.FieldDefs.Add('field_position', ftInteger);
  ClientDS_temp3.CreateDataSet;
  ClientDS_temp3.LogChanges := False;



  // Все не выбранные строки
  ClientDS_temp1 := TClientDataSet.Create(nil);
  ClientDS_temp1.Data := ClientDS_Column.Data;

  // Все выбранные строки
  ClientDS_temp2 := TClientDataSet.Create(nil);
  ClientDS_temp2.Data := ClientDS_Column.Data;


  field_position1 := AView.ViewData.Rows[FSourceRow].Values[cxGrid1DBBandedTableView1field_position.Index]; // индекс до перемещения
  field_position2 := AView.ViewData.Rows[ADestRow].Values[cxGrid1DBBandedTableView1field_position.Index];   // индекс после перемещения


  for i:=0 to cxGrid1DBBandedTableView1.Controller.SelectedRecordCount - 1 do begin
    if ClientDS_temp1.Locate('id', cxGrid1DBBandedTableView1.Controller.SelectedRows[i].Values[cxGrid1DBBandedTableView1id2.Index], []) then begin
      ClientDS_temp1.Delete;
    end;
  end;

  ClientDS_temp1.First;
  while not ClientDS_temp1.Eof do begin
    if ClientDS_temp2.Locate('id', ClientDS_temp1.FieldByName('id').AsInteger, []) then begin
      ClientDS_temp2.Delete;
    end;
    ClientDS_temp1.Next;
  end;


  if field_position1 < field_position2 then begin
    field_position2 := field_position2 - ClientDS_temp2.RecordCount + 1;
    if field_position2 < 0 then field_position2 := 0;
  end;

  SortClientDataSet(ClientDS_temp2, 'field_position');
  SortClientDataSet(ClientDS_temp1, 'field_position');


  ClientDS_temp2.First;
  while not ClientDS_temp2.Eof do begin
    ClientDS_temp3.Append;
    ClientDS_temp3.FieldByName('id'            ).Value := ClientDS_temp2.FieldByName('id').Value;
    ClientDS_temp3.FieldByName('field_position').Value := field_position2;
    ClientDS_temp3.Post;

    ClientDS_temp2.Next;
    field_position2 := field_position2 + 1;
  end;

  i := 0;
  ClientDS_temp1.First;
  while not ClientDS_temp1.Eof do begin

   if not ClientDS_temp3.Locate('field_position', i, []) then begin
      ClientDS_temp3.Append;
      ClientDS_temp3.FieldByName('id'            ).Value := ClientDS_temp1.FieldByName('id').Value;
      ClientDS_temp3.FieldByName('field_position').Value := i;
      ClientDS_temp3.Post;

      ClientDS_temp1.Next;
      i := i + 1;
    end else begin
      i := i + 1;
    end;

  end;

  ClientDS_temp3.First;
  while not ClientDS_temp3.Eof do begin

    if ClientDS_Column.Locate('id', ClientDS_temp3.FieldByName('id').Value, []) then begin
      ClientDS_Column.Edit;
      ClientDS_Column.FieldByName('field_position').Value := ClientDS_temp3.FieldByName('field_position').Value;
      ClientDS_Column.Post;
    end;
    ClientDS_temp3.Next;
  end;

  ClientDS_temp3.Free;
  ClientDS_temp2.Free;
  ClientDS_temp1.Free;

  ClientDS_Column.Locate('id', id, []);
  ClientDS_Column.EnableControls;
end;


procedure TfmGridColumns.cxGrid1DBBandedTableView1FilterOnChanged(Sender: TObject);
begin
	DrawcxGridColumnOnFiltered(Sender);
end;

procedure TfmGridColumns.cxGrid1DBBandedTableView1flagPropertiesChange(Sender: TObject);
begin
  ClientDS_Column.Edit;
  ClientDS_Column.FieldByName('flag').AsBoolean := not ClientDS_Column.FieldByName('flag').AsBoolean;
  ClientDS_Column.Post;
end;

procedure TfmGridColumns.cxGrid1DBBandedTableView1FocusedItemChanged(Sender: TcxCustomGridTableView; APrevFocusedItem, AFocusedItem: TcxCustomGridTableItem);
begin
	Sender.Painter.Invalidate;
end;

procedure TfmGridColumns.cxGrid1DBBandedTableView1KeyPress(Sender: TObject; var Key: Char);
begin
  FilterColumnGridOnKeyPress(TcxGridDBBandedTableView(TcxGridSite(Sender).GridView), Key);
end;

procedure TfmGridColumns.cxGrid1DBBandedTableView1StartDrag(Sender: TObject; var DragObject: TDragObject);
begin
  FSourceRow := TcxGridTableView(TcxGridSite(Sender).GridView).Controller.FocusedRowIndex;
end;

procedure TfmGridColumns.dxBarButton1Click(Sender: TObject);
begin
  SetColumns(True);
end;

procedure TfmGridColumns.dxBarButton2Click(Sender: TObject);
begin
  SetColumns(False);
end;

procedure TfmGridColumns.dxBarButton3Click(Sender: TObject);
begin
	PrintcxGrid(cxGrid1DBBandedTableView1);
end;

procedure TfmGridColumns.dxBarButton4Click(Sender: TObject);
begin
	SetdxDBGridColumns(cxGrid1DBBandedTableView1);
end;

procedure TfmGridColumns.dxBarButton5Click(Sender: TObject);
begin
	cxGrid1DBBandedTableView1.OptionsView.GroupByBox := not cxGrid1DBBandedTableView1.OptionsView.GroupByBox;
end;

procedure TfmGridColumns.SetColumns(val: boolean);
begin
  Screen.Cursor := crHourglass;
  ClientDS_Column.First;
  while not ClientDS_Column.Eof do begin
    ClientDS_Column.Edit;
    ClientDS_Column.FieldByName('flag').AsBoolean := val;
    ClientDS_Column.Post;

    ClientDS_Column.Next
  end;
  ClientDS_Column.First;
  Screen.Cursor := crDefault;
end;

end.
