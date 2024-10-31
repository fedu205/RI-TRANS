unit ExcelToGrid;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, cxControls, cxStyles, cxCustomData, cxGraphics, cxFilter,
  cxData, cxDataStorage, cxEdit, DB, cxDBData, ExtCtrls, cxGridLevel, cxClasses,
  cxGridCustomView, cxGridCustomTableView, cxGridTableView, cxGridDBTableView, cxGrid,
  cxContainer, cxTextEdit, cxMaskEdit, cxButtonEdit, ComObj, StdCtrls, Buttons, DBClient,
   ADODB, cxGridBandedTableView, cxGridDBBandedTableView, dxBar, cxGridCustomPopupMenu,
   cxGridPopupMenu, cxPC, ImgList, cxDropDownEdit, cxBarEditItem, cxDBLookupComboBox, cxLookAndFeels, cxLookAndFeelPainters;

type
  TfmExcelToGrid = class(TForm)
    Panel1: TPanel;
    OpenDialog1: TOpenDialog;
    DS_Query: TDataSource;
    cxGrid1: TcxGrid;
    cxGrid1Level1: TcxGridLevel;
    dxBarManager1: TdxBarManager;
    dxBarManager1Bar1: TdxBar;
    dxBarButton1: TdxBarButton;
    Panel2: TPanel;
    TabControl1: TcxTabControl;
    dxBarButton2: TdxBarButton;
    dxBarPopup1: TdxBarPopupMenu;
    dxBarButton3: TdxBarButton;
    dxBarButton4: TdxBarButton;
    dxBarButton5: TdxBarButton;
    cxImageList1: TcxImageList;
    dxBarSubItem1: TdxBarSubItem;
    dxBarButton6: TdxBarButton;
    ClientDataSet1: TClientDataSet;
    cxGrid1DBBandedTableView1: TcxGridDBBandedTableView;
    dxBarButton7: TdxBarButton;
    dxBarButton8: TdxBarButton;
    dxBarEdit1: TdxBarEdit;
    cxBarEditItem1: TcxBarEditItem;
    dxBarListItem1: TdxBarListItem;
    cxBarEditItem2: TcxBarEditItem;
    cxBarEditItem3: TcxBarEditItem;
    procedure dxBarButton7Click(Sender: TObject);
    procedure cxGrid1DBBandedTableView1DataControllerFilterChanged(Sender: TObject);
    procedure cxGrid1DBBandedTableView1FocusedItemChanged(Sender: TcxCustomGridTableView; APrevFocusedItem, AFocusedItem: TcxCustomGridTableItem);
    procedure cxGrid1DBBandedTableView1CustomDrawColumnHeader(Sender: TcxGridTableView; ACanvas: TcxCanvas; AViewInfo: TcxGridColumnHeaderViewInfo; var ADone: Boolean);
    procedure cxGrid1DBBandedTableView1CustomDrawCell(Sender: TcxCustomGridTableView; ACanvas: TcxCanvas; AViewInfo: TcxGridTableDataCellViewInfo; var ADone: Boolean);
    procedure dxBarButton6Click(Sender: TObject);
    procedure dxBarButton5Click(Sender: TObject);
    procedure dxBarButton3Click(Sender: TObject);
    procedure dxBarButton4Click(Sender: TObject);
    procedure TabControl1Change(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure dxBarButton1Click(Sender: TObject);
    procedure OpenSheet(n: integer);
  private
    exWkb: OleVariant;
    exApp: OleVariant;

  public
   constructor Create(AOwner: TApplication);
  end;
  function CreateWndExcelToGrid(AppHand:THandle):variant; export;


var
  fmExcelToGrid: TfmExcelToGrid;

implementation

uses Raznoe;

{$R *.dfm}

function CreateWndExcelToGrid(AppHand:THandle):variant; export;
begin
  Application.Handle := AppHand;
  fmExcelToGrid := TfmExcelToGrid.Create(Application);
  try
    fmExcelToGrid.ShowModal;
    result := VarArrayOf([-9, '', '']);
  finally
    fmExcelToGrid.Free;
  end;
end;

constructor TfmExcelToGrid.Create(AOwner: TApplication);
begin
  inherited Create(AOwner);
  Screen.Cursor := crHourglass;
end;

procedure TfmExcelToGrid.dxBarButton1Click(Sender: TObject);
var
  i: integer;
begin
  if not VarIsEmpty(exApp) then begin
    if Application.MessageBox(PChar('Табличная часть будет очищена. Продолжить?'), 'Вниамние!', MB_YESNO or MB_ICONWARNING) = IDYES then begin
      exApp.Quit;
      TabControl1.Tabs.Clear;
      cxGrid1DBBandedTableView1.ClearItems;
      Caption := '';
    end else exit;
  end;

  exApp := Unassigned;
  exWkb := Unassigned;
  OpenDialog1.Filter := 'Excel файлы|*.xls';
  OpenDialog1.DefaultExt := '';
  if OpenDialog1.Execute then begin
    if OpenDialog1.FileName <> '' then begin
      Caption := OpenDialog1.FileName;
      exApp := CreateOleObject('Excel.Application');
      exWkb := exApp.Workbooks.Open(OpenDialog1.FileName);
      exWkb := exApp.ActiveWorkbook;
      TabControl1.Tabs.Clear;
      for i := 1 to exWkb.Sheets.Count do begin
        TabControl1.Tabs.Add(exWkb.Sheets[i].name);
      end;
      OpenSheet(1);
    end;
  end;
end;

procedure TfmExcelToGrid.OpenSheet(n: integer);
var
  exWks: OleVariant;
  i,j,f,max_row,max_column : integer;
begin
  max_column := 0;
  max_row    := 0;
  exWks := exWkb.WorkSheets[n];
  max_column := exWks.Cells.SpecialCells(11).Column;
  max_row    := exWks.Cells.SpecialCells(11).Row;
 // ShowMessage('Колонок: ' + IntToStr(max_column) + 'Строк: ' + IntToStr(max_row));

  if ClientDataSet1.FieldDefs.Count > 0 then ClientDataSet1.FieldDefs.DataSet.Close;
  ClientDataSet1.FieldDefs.Clear;
  for i := 1 to max_column  do begin
      ClientDataSet1.FieldDefs.Add(IntToStr(i),ftString,500);
  end;
  ClientDataSet1.CreateDataSet;

  cxGrid1DBBandedTableView1.ClearItems;
  cxGrid1DBBandedTableView1.DataController.CreateAllItems();
  Screen.Cursor := crHourglass;
  cxBarEditItem1.Properties.Buttons.Clear;
  for i := 1 to max_row  do begin
    ClientDataSet1.Append;
    for j := 1 to max_column do begin
     ClientDataSet1.FieldByName(IntToStr(j)).AsVariant  := exWks.Cells[i,j].Value;
    cxGrid1DBBandedTableView1.Columns[j - 1].Width := 100;
    end;
    ClientDataSet1.Post;
  end;
  cxGrid1DBBandedTableView1.Columns[0].Summary.FooterKind := skCount;
  Screen.Cursor := crDefault;
  exWks := Unassigned;
end;

procedure TfmExcelToGrid.TabControl1Change(Sender: TObject);
begin
 OpenSheet(TabControl1.TabIndex+1);
end;

procedure TfmExcelToGrid.dxBarButton3Click(Sender: TObject);
begin
  cxGrid1DBBandedTableView1.DataController.InsertRecord(cxGrid1DBBandedTableView1.DataController.DataSet.RecordCount);
end;

procedure TfmExcelToGrid.dxBarButton4Click(Sender: TObject);
begin
  cxGrid1DBBandedTableView1.DataController.DeleteSelection;
end;

procedure TfmExcelToGrid.dxBarButton5Click(Sender: TObject);
begin
  PrintcxGrid(cxGrid1DBBandedTableView1, TComponent(Sender).Tag = 1);
end;

procedure TfmExcelToGrid.dxBarButton6Click(Sender: TObject);
begin
  SetdxDBGridColumns(cxGrid1DBBandedTableView1);
end;

procedure TfmExcelToGrid.dxBarButton7Click(Sender: TObject);
begin
  cxGrid1DBBandedTableView1.OptionsView.GroupByBox := True;
end;

procedure TfmExcelToGrid.cxGrid1DBBandedTableView1CustomDrawCell(Sender: TcxCustomGridTableView; ACanvas: TcxCanvas; AViewInfo: TcxGridTableDataCellViewInfo; var ADone: Boolean);
begin
  if AViewInfo.GridRecord.Selected or AViewInfo.GridRecord.Focused then begin
    ACanvas.Brush.Color := clNavy;
    ACanvas.Font.Color := clWhite;
    if AViewInfo.Focused then ACanvas.Brush.Color := clBlue;
  end;
end;

procedure TfmExcelToGrid.cxGrid1DBBandedTableView1CustomDrawColumnHeader(Sender: TcxGridTableView; ACanvas: TcxCanvas; AViewInfo: TcxGridColumnHeaderViewInfo; var ADone: Boolean);
begin
  if AViewInfo.Column.Focused then begin
    ACanvas.Brush.Color := clNavy;
    ACanvas.Font.Color := clWhite;
  end;
end;

procedure TfmExcelToGrid.cxGrid1DBBandedTableView1DataControllerFilterChanged(Sender: TObject);
begin
  DrawcxGridColumnOnFiltered(cxGrid1DBBandedTableView1, Sender);
end;

procedure TfmExcelToGrid.cxGrid1DBBandedTableView1FocusedItemChanged(Sender: TcxCustomGridTableView; APrevFocusedItem, AFocusedItem: TcxCustomGridTableItem);
begin
  cxGrid1DBBandedTableView1.Painter.Invalidate;
end;

procedure TfmExcelToGrid.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  if not VarIsEmpty(exApp) then exApp.Quit;
  exApp  := Unassigned;
  exWkb  := Unassigned;
  Action := caFree;
end;

end.
