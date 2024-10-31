unit Distance;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, Data.Win.ADODB, Default, cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters, cxStyles,
  dxSkinsCore, dxSkinBlack, dxSkinBlue, dxSkinBlueprint, dxSkinCaramel, dxSkinCoffee, dxSkinDarkRoom, dxSkinDarkSide, dxSkinDevExpressDarkStyle,
  dxSkinDevExpressStyle, dxSkinFoggy, dxSkinGlassOceans, dxSkinHighContrast, dxSkiniMaginary, dxSkinLilian, dxSkinLiquidSky, dxSkinLondonLiquidSky,
  dxSkinMcSkin, dxSkinMetropolis, dxSkinMetropolisDark, dxSkinMoneyTwins, dxSkinOffice2007Black, dxSkinOffice2007Blue, dxSkinOffice2007Green,
  dxSkinOffice2007Pink, dxSkinOffice2007Silver, dxSkinOffice2010Black, dxSkinOffice2010Blue, dxSkinOffice2010Silver, dxSkinOffice2013DarkGray,
  dxSkinOffice2013LightGray, dxSkinOffice2013White, dxSkinOffice2016Colorful, dxSkinOffice2016Dark, dxSkinPumpkin, dxSkinSeven, dxSkinSevenClassic,
  dxSkinSharp, dxSkinSharpPlus, dxSkinSilver, dxSkinSpringTime, dxSkinStardust, dxSkinSummer2008, dxSkinTheAsphaltWorld, dxSkinTheBezier,
  dxSkinsDefaultPainters, dxSkinValentine, dxSkinVisualStudio2013Blue, dxSkinVisualStudio2013Dark, dxSkinVisualStudio2013Light, dxSkinVS2010,
  dxSkinWhiteprint, dxSkinXmas2008Blue, cxCustomData, cxFilter, cxData, cxDataStorage, cxEdit, cxNavigator,
  cxDBData, cxGridLevel, cxGridCustomTableView, cxGridTableView, cxGridBandedTableView,
  cxGridDBBandedTableView, cxClasses, cxGridCustomView, cxGrid, dxBar,
  cxPropertiesStore, cxCurrencyEdit, System.ImageList, Vcl.ImgList, cxImageList, dxDateRanges, dxSkinOffice2019Colorful, dxScrollbarAnnotations;

type
  TfmDistance = class(TForm)
    Query_Distance: TADOQuery;
    cxGrid1: TcxGrid;
    cxGrid1DBBandedTableView1: TcxGridDBBandedTableView;
    cxGrid1DBBandedTableView1inf_obj_id: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1node1_id: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1node1_name: TcxGridDBBandedColumn;
    cxGrid1Level1: TcxGridLevel;
    DS_Distance: TDataSource;
    cxPropertiesStore1: TcxPropertiesStore;
    dxBarManager1: TdxBarManager;
    cxGrid1DBBandedTableView1node1_cod: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1distance: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1days_way: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1speed: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1node2_id: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1node2_cod: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1node2_name: TcxGridDBBandedColumn;
    dxBarPopupMenu1: TdxBarPopupMenu;
    cxImageList1: TcxImageList;
    dxBarButton1: TdxBarButton;
    dxBarButton2: TdxBarButton;
    dxBarButton4: TdxBarButton;
    dxBarButton5: TdxBarButton;
    dxBarSubItem1: TdxBarSubItem;
    dxBarButton6: TdxBarButton;
    dxBarButton7: TdxBarButton;
    dxBarButton8: TdxBarButton;
    dxBarButton9: TdxBarButton;
    dxBarManager1Bar1: TdxBar;
    dxBarButton10: TdxBarButton;
    dxBarSubItem2: TdxBarSubItem;
    dxBarButton11: TdxBarButton;
    dxBarButton3: TdxBarButton;
    dxBarButton12: TdxBarButton;
    dxBarButton13: TdxBarButton;
    cxStyleRepository1: TcxStyleRepository;
    cxStyle_WhiteColor: TcxStyle;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormDestroy(Sender: TObject);
    procedure cxGrid1DBBandedTableView1CustomDrawCell(Sender: TcxCustomGridTableView; ACanvas: TcxCanvas;AViewInfo: TcxGridTableDataCellViewInfo; var ADone: Boolean);
    procedure cxGrid1DBBandedTableView1CustomDrawColumnHeader(Sender: TcxGridTableView; ACanvas: TcxCanvas;AViewInfo: TcxGridColumnHeaderViewInfo; var ADone: Boolean);
    procedure cxGrid1DBBandedTableView1KeyPress(Sender: TObject; var Key: Char);
    procedure cxGrid1DBBandedTableView1DataControllerFilterChanged(Sender: TObject);
    procedure dxBarButton9Click(Sender: TObject);
    procedure dxBarButton8Click(Sender: TObject);
    procedure dxBarButton7Click(Sender: TObject);
    procedure dxBarButton6Click(Sender: TObject);
    procedure dxBarButton5Click(Sender: TObject);
    procedure dxBarButton1Click(Sender: TObject);
    procedure dxBarButton4Click(Sender: TObject);
    procedure dxBarButton10Click(Sender: TObject);
    procedure dxBarButton2Click(Sender: TObject);
    procedure dxBarButton3Click(Sender: TObject);
    procedure dxBarButton12Click(Sender: TObject);
    procedure dxBarButton13Click(Sender: TObject);
    procedure cxGrid1DBBandedTableView1FocusedItemChanged(Sender: TcxCustomGridTableView; APrevFocusedItem, AFocusedItem: TcxCustomGridTableItem);
  private
    Fconnect : TADOConnection;
  public
    constructor Create(AOwner: TApplication; str_conn: string; node_cod: string; type_node: integer);
  end;

var
  fmDistance: TfmDistance;

function CreateWndDistance(AppHand: THandle; str_conn: string; node_cod: string; type_node: integer) : Variant; export;

implementation
  uses DistanceAdd, Raznoe, Filter, Other;

{$R *.dfm}

function CreateWndDistance(AppHand: THandle; str_conn: string; node_cod: string; type_node: integer) : Variant;
begin
  Application.Handle := AppHand;
  try
    fmDistance := TfmDistance.Create(Application, str_conn, node_cod, type_node);
    if fmDistance.ShowModal = mrOk then
      result := VarArrayOf([-9, ''])
    else
      result := VarArrayOf([-9, '']);
  finally
    fmDistance.Free;
  end;
end;

constructor TfmDistance.Create(AOwner: TApplication; str_conn: string; node_cod: string; type_node: integer);
begin
  inherited Create(AOwner);
  Screen.Cursor := crHourglass;

  Fconnect := TADOConnection.Create(nil);
  Fconnect.LoginPrompt := False;
  Fconnect.ConnectionString := str_conn;

  Query_Distance.Connection := Fconnect;

  Query_Distance.Close;
  Query_Distance.SQL.Clear;
  case type_node of
    0 : Query_Distance.SQL.Add('SELECT * FROM view_inf_obj_distance WHERE node1_cod IN (''' + StringReplace(node_cod, ',,', ',', [rfReplaceAll, rfIgnoreCase]) + ''') ORDER BY node1_name, node2_name');
    1 : Query_Distance.SQL.Add('SELECT * FROM view_inf_obj_distance WHERE node2_cod IN (''' + StringReplace(node_cod, ',,', ',', [rfReplaceAll, rfIgnoreCase]) + ''') ORDER BY node1_name, node2_name');
  end;
  Query_Distance.Open;

  StoreRegistryGrid(rgLoad,'\Software\Lis1\Distance', cxGrid1DBBandedTableView1);

  Screen.Cursor := crDefault;
end;

procedure TfmDistance.cxGrid1DBBandedTableView1CustomDrawCell(Sender: TcxCustomGridTableView; ACanvas: TcxCanvas;AViewInfo: TcxGridTableDataCellViewInfo; var ADone: Boolean);
begin
  if AViewInfo.GridRecord.Selected or AViewInfo.GridRecord.Focused then begin
    ACanvas.Brush.Color := clNavy;
    ACanvas.Font.Color  := clWhite;
    if AViewInfo.Focused then ACanvas.Brush.Color := clBlue;
  end;
end;

procedure TfmDistance.cxGrid1DBBandedTableView1CustomDrawColumnHeader(Sender: TcxGridTableView; ACanvas: TcxCanvas;AViewInfo: TcxGridColumnHeaderViewInfo; var ADone: Boolean);
begin
  DrawcxGridColumnOnFocused(Sender, ACanvas, AViewInfo);
end;

procedure TfmDistance.cxGrid1DBBandedTableView1DataControllerFilterChanged(Sender: TObject);
begin
  DrawcxGridColumnOnFiltered(Sender);
end;

procedure TfmDistance.cxGrid1DBBandedTableView1FocusedItemChanged(Sender: TcxCustomGridTableView; APrevFocusedItem, AFocusedItem: TcxCustomGridTableItem);
begin
  Sender.Painter.Invalidate;
end;

procedure TfmDistance.cxGrid1DBBandedTableView1KeyPress(Sender: TObject;var Key: Char);
begin
  FilterColumnGridOnKeyPress(TcxGridDBBandedTableView(TcxGridSite(Sender).GridView), Key);
end;

procedure TfmDistance.dxBarButton10Click(Sender: TObject);
var new_str : string;
     set_ok : boolean;
          Q : TADOQuery;
begin
  Q := TADOQuery.Create(nil);
  Q.Connection := Fconnect;

  set_ok := False;
  case TdxBarButton(Sender).Tag of
    0 : if InputQuery('Поиск', 'Шаблон поиска НАИМЕНОВАНИЯ "Ст. отпр." : ', new_str) then begin
          set_ok := True;
          Q.SQL.Add('SELECT inf_obj_id, inf_obj_name, inf_obj_cod FROM inf_obj_NODE WHERE inf_obj_cod IS NOT NULL AND inf_obj_name LIKE ''%'+new_str+'%'' AND GETDATE() BETWEEN date_begin AND date_end ORDER BY inf_obj_name');
        end;
    1 : if InputQuery('Поиск', 'Шаблон поиска КОДА "Ст. отпр." : ', new_str) then begin
          set_ok := True;
          Q.SQL.Add('SELECT inf_obj_id, inf_obj_name, inf_obj_cod FROM inf_obj_NODE WHERE inf_obj_cod IS NOT NULL AND inf_obj_cod  LIKE ''%'+new_str+'%'' AND GETDATE() BETWEEN date_begin AND date_end ORDER BY inf_obj_name');
        end;
  end;

  if set_ok then begin
    Q.Open;
    fmFilter := TfmFilter.Create(0, Q, 'inf_obj_id', 'inf_obj_cod', 'inf_obj_name');
    if fmFilter.ShowModal = mrOk then begin
      Query_Distance.Close;
      Query_Distance.SQL.Clear;
      Query_Distance.SQL.Add('SELECT * FROM view_inf_obj_distance WHERE node1_cod IN (''' + StringReplace(fmFilter._GetStrCod, ',,', ',', [rfReplaceAll, rfIgnoreCase]) + ''') ORDER BY node1_name, node2_name');
      Query_Distance.Open;
    end;
  end;
  Q.Free;
end;

procedure TfmDistance.dxBarButton1Click(Sender: TObject);
begin
  fmDistanceAdd := TfmDistanceAdd.Create(Application, 0, Fconnect);
  if fmDistanceAdd.ShowModal = mrOk then
    RefreshQueryGrid(cxGrid1DBBandedTableView1, 'inf_obj_id');
end;

procedure TfmDistance.dxBarButton12Click(Sender: TObject);
begin
  fmDistanceAdd := TfmDistanceAdd.Create(Application, 1, Fconnect);
  fmDistanceAdd._SetUpdate := cxGrid1DBBandedTableView1inf_obj_id.DataBinding.Field.AsInteger;
  if fmDistanceAdd.ShowModal = mrOk then
    RefreshQueryGrid(cxGrid1DBBandedTableView1, 'inf_obj_id');
end;

procedure TfmDistance.dxBarButton13Click(Sender: TObject);
var i : integer;
   SP : TADOStoredProc;
begin
  //удалить запись
  if Application.MessageBox(PChar('Вы точно уверены, что хотите удалить выделенное(-ые) расстояние(-я)?'),'Внимание', MB_ICONQUESTION or MB_OKCANCEL) = ID_OK then begin
    Screen.Cursor := crHourglass;

    SP := TADOStoredProc.Create(nil);
    SP.Connection := Fconnect;
    SP.ProcedureName := 'sp_inf_obj_distance_modify';

    for i := 0 to cxGrid1DBBandedTableView1.Controller.SelectedRowCount - 1 do begin

      SP.Parameters.Refresh;
      SP.Parameters.ParamByName('@inf_obj_distance_id').Value := cxGrid1DBBandedTableView1.Controller.SelectedRows[i].Values[cxGrid1DBBandedTableView1inf_obj_id.Index];
      SP.Parameters.ParamByName('@type_action'        ).Value := 2;
      SP.ExecProc;

      ShowTextMessage('Осталось '+IntToStr(cxGrid1DBBandedTableView1.Controller.SelectedRowCount - i)+' записей...', False);
    end;
    SP.Free;

    RefreshQueryGrid(cxGrid1DBBandedTableView1, 'inf_obj_id');
    ShowTextMessage;
    Screen.Cursor := crDefault;
  end;
end;


procedure TfmDistance.dxBarButton2Click(Sender: TObject);
var i : integer;
begin
  if Application.MessageBox(PChar('Вы точно уверены, что хотите пересчитать выделенные строки?'),'Внимание', MB_ICONQUESTION or MB_OKCANCEL) = ID_OK then begin
    Screen.Cursor := crHourglass;

    for i := 0 to cxGrid1DBBandedTableView1.Controller.SelectedRowCount - 1 do begin
      GetCalcDistanceDB(cxGrid1DBBandedTableView1.Controller.SelectedRows[i].Values[cxGrid1DBBandedTableView1node1_cod.Index],
      cxGrid1DBBandedTableView1.Controller.SelectedRows[i].Values[cxGrid1DBBandedTableView1node2_cod.Index], Fconnect, True, Date);
      ShowTextMessage('Осталось '+IntToStr(cxGrid1DBBandedTableView1.Controller.SelectedRowCount - i)+' записей...', False);
    end;

    RefreshQueryGrid(cxGrid1DBBandedTableView1, 'inf_obj_id');
    ShowTextMessage;
    Screen.Cursor := crDefault;
  end;
end;

procedure TfmDistance.dxBarButton3Click(Sender: TObject);
var SP : TADOStoredProc;
begin
  SP := TADOStoredProc.Create(nil);
  SP.Connection := Fconnect;
  SP.ProcedureName := 'sp_inf_obj_distance_modify';
  SP.Parameters.Refresh;
  SP.Parameters.ParamByName('@type_action').Value := 3;
  SP.ExecProc;

  SP.Free;
  RefreshQueryGrid(cxGrid1DBBandedTableView1, 'inf_obj_id');
end;

procedure TfmDistance.dxBarButton4Click(Sender: TObject);
begin
  //Обновить
  RefreshQueryGrid(cxGrid1DBBandedTableView1, 'inf_obj_id');
end;

procedure TfmDistance.dxBarButton5Click(Sender: TObject);
begin
  //печать таб. в excel
  PrintcxGrid(cxGrid1DBBandedTableView1);
end;

procedure TfmDistance.dxBarButton6Click(Sender: TObject);
begin
  //колонки таб.
  SetdxDBGridColumns(cxGrid1DBBandedTableView1);
end;

procedure TfmDistance.dxBarButton7Click(Sender: TObject);
begin
  //панель группировок
  cxGrid1DBBandedTableView1.OptionsView.GroupByBox := not cxGrid1DBBandedTableView1.OptionsView.GroupByBox;
end;

procedure TfmDistance.dxBarButton8Click(Sender: TObject);
begin
  //фильтр повсем записям
  cxGrid1DBBandedTableView1.Filtering.ColumnFilteredItemsList := not dxBarButton8.Down;
end;

procedure TfmDistance.dxBarButton9Click(Sender: TObject);
begin
  //фильтр по выделенному
  FiltercxGrid4ListID(cxGrid1DBBandedTableView1);
end;

procedure TfmDistance.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action := caFree;
end;

procedure TfmDistance.FormDestroy(Sender: TObject);
begin
  Fconnect.Free;
  StoreRegistryGrid(rgSave,'\Software\Lis1\Distance', cxGrid1DBBandedTableView1);
end;

end.
