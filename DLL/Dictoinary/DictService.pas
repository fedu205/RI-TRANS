unit DictService;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms, Default,
  Dialogs, cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters,
  cxStyles, cxCustomData, cxFilter, cxData, cxDataStorage, cxEdit, DB, cxDBData, cxClasses, dxBar, ImgList,
  cxGridCustomView, cxGridCustomTableView, cxGridTableView, cxGridBandedTableView, cxGridDBBandedTableView,
  cxGridLevel, cxGrid, ADODB, cxPropertiesStore, cxCurrencyEdit, cxCalendar, cxCheckBox, cxColorComboBox,
  cxNavigator, cxTL, cxMaskEdit, cxTLdxBarBuiltInMenu, cxSplitter,
  cxInplaceContainer, cxDBTL, cxTLData, dxBarBuiltInMenu, cxPC, dxSkinsCore,
  dxSkinBlack, dxSkinBlue, dxSkinBlueprint, dxSkinCaramel, dxSkinCoffee,
  dxSkinDarkRoom, dxSkinDarkSide, dxSkinDevExpressDarkStyle,
  dxSkinDevExpressStyle, dxSkinFoggy, dxSkinGlassOceans, dxSkinHighContrast,
  dxSkiniMaginary, dxSkinLilian, dxSkinLiquidSky, dxSkinLondonLiquidSky,
  dxSkinMcSkin, dxSkinMetropolis, dxSkinMetropolisDark, dxSkinMoneyTwins,
  dxSkinOffice2007Black, dxSkinOffice2007Blue, dxSkinOffice2007Green,
  dxSkinOffice2007Pink, dxSkinOffice2007Silver, dxSkinOffice2010Black,
  dxSkinOffice2010Blue, dxSkinOffice2010Silver, dxSkinOffice2013DarkGray,
  dxSkinOffice2013LightGray, dxSkinOffice2013White, dxSkinPumpkin, dxSkinSeven,
  dxSkinSevenClassic, dxSkinSharp, dxSkinSharpPlus, dxSkinSilver,
  dxSkinSpringTime, dxSkinStardust, dxSkinSummer2008, dxSkinTheAsphaltWorld,
  dxSkinsDefaultPainters, dxSkinValentine, dxSkinVS2010, dxSkinWhiteprint,
  dxSkinXmas2008Blue, dxSkinscxPCPainter, dxSkinsdxBarPainter,
  dxSkinOffice2016Colorful, dxSkinOffice2016Dark, dxSkinVisualStudio2013Blue,
  dxSkinVisualStudio2013Dark, dxSkinVisualStudio2013Light, System.ImageList,
  cxImageList, cxTLExportLink, ShellApi, cxDataControllerConditionalFormattingRulesManagerDialog,
  dxSkinTheBezier;

type
  TfmDictService = class(TForm)
    ADOService: TADOConnection;
    Query_Service: TADOQuery;
    DS_Service: TDataSource;
    dxBarManager1: TdxBarManager;
    dxBarPopupMenu1: TdxBarPopupMenu;
    dxBarManager1Bar1: TdxBar;
    cxPropertiesStore1: TcxPropertiesStore;
    dxBarButton5: TdxBarButton;
    cxStyleRepository1: TcxStyleRepository;
    cxStyle_Bold: TcxStyle;
    cxStyle_AgreeFactInc_Between: TcxStyle;
    cxStyle_AgreeFactInc_Sum: TcxStyle;
    cxStyle_AgreeFactInc_AddProfit: TcxStyle;
    cxStyle_ClientFrahtCard_Rashod: TcxStyle;
    cxStyle_ClientFrahtCard_Profitt: TcxStyle;
    cxStyle_AgreeFact: TcxStyle;
    cxStyle_Orders_cod: TcxStyle;
    cxStyle_Bargain_Cod: TcxStyle;
    cxImageList1: TcxImageList;
    DS_Budget: TDataSource;
    Query_Budget: TADOQuery;
    dxBarPopupMenu2: TdxBarPopupMenu;
    dxBarButton11: TdxBarButton;
    dxBarButton12: TdxBarButton;
    dxBarButton13: TdxBarButton;
    dxBarButton14: TdxBarButton;
    dxBarSubItem2: TdxBarSubItem;
    dxBarButton19: TdxBarButton;
    dxBarButton20: TdxBarButton;
    dxBarButton21: TdxBarButton;
    dxBarButton22: TdxBarButton;
    dxBarButton16: TdxBarButton;
    dxBarButton17: TdxBarButton;
    dxBarSubItem3: TdxBarSubItem;
    dxBarButton4: TdxBarButton;
    dxBarButton1: TdxBarButton;
    dxBarButton2: TdxBarButton;
    dxBarButton3: TdxBarButton;
    cxDBTreeList1: TcxDBTreeList;
    cxDBTreeList1budget_name: TcxDBTreeListColumn;
    cxDBTreeList1budget_id: TcxDBTreeListColumn;
    cxDBTreeList1set_group: TcxDBTreeListColumn;
    cxDBTreeList1budget_parent_id: TcxDBTreeListColumn;
    cxDBTreeList1budget_cod: TcxDBTreeListColumn;
    cxDBTreeList1date_begin: TcxDBTreeListColumn;
    cxDBTreeList1date_end: TcxDBTreeListColumn;
    cxDBTreeList1budget_num: TcxDBTreeListColumn;
    cxDBTreeList1comment: TcxDBTreeListColumn;
    cxDBTreeList1cxDBTreeListColumn1: TcxDBTreeListColumn;
    dxBarButton6: TdxBarButton;
    dxBarButton7: TdxBarButton;
    dxBarButton8: TdxBarButton;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure dxBarButton5Click(Sender: TObject);
    procedure cxDBTreeList1CustomDrawDataCell(Sender: TcxCustomTreeList;ACanvas: TcxCanvas; AViewInfo: TcxTreeListEditCellViewInfo;var ADone: Boolean);
    procedure dxBarButton13Click(Sender: TObject);
    procedure dxBarButton11Click(Sender: TObject);
    procedure dxBarButton12Click(Sender: TObject);
    procedure dxBarButton16Click(Sender: TObject);
    procedure dxBarButton20Click(Sender: TObject);
    procedure dxBarButton19Click(Sender: TObject);
    procedure dxBarButton22Click(Sender: TObject);
    procedure dxBarButton21Click(Sender: TObject);
    procedure cxGrid1DBBandedTableView1CustomDrawCell(Sender: TcxCustomGridTableView; ACanvas: TcxCanvas;AViewInfo: TcxGridTableDataCellViewInfo; var ADone: Boolean);
    procedure cxGrid1DBBandedTableView1CustomDrawColumnHeader(Sender: TcxGridTableView; ACanvas: TcxCanvas;AViewInfo: TcxGridColumnHeaderViewInfo; var ADone: Boolean);
    procedure dxBarButton17Click(Sender: TObject);
    procedure dxBarButton1Click(Sender: TObject);
    procedure cxDBTreeList1DblClick(Sender: TObject);
    procedure cxDBTreeList1KeyDown(Sender: TObject; var Key: Word;Shift: TShiftState);
    procedure dxBarButton2Click(Sender: TObject);
    procedure dxBarButton6Click(Sender: TObject);
    procedure dxBarButton14Click(Sender: TObject);
    procedure cxDBTreeList1GetCellHint(Sender: TcxCustomTreeList; ACell: TObject; var AText: string; var ANeedShow: Boolean);
    procedure dxBarButton7Click(Sender: TObject);
  private
    Fusr_pwd : PUser_pwd;
    Fbudget_id : integer;
//    Fbudget_type_cod : string;
    Fbudget_name : string;
    Fset_select : boolean;
    procedure RefreshBudget(cxDBTree: TcxDBTreeList; field_name: string; values: int64=-9; set_query_change: boolean=False);
    procedure FindService(budget_id: integer);
  public
    constructor Create(App: TApplication; flag: boolean; usr_pwd: PUser_pwd; budget_type_cod: string; budget_id: integer);
  published
    property _GetBudgetId : integer read Fbudget_id;
    property _GetBudgetName : string read Fbudget_name;
  end;

function CreateWndDictService(AppHand: THandle; flag: boolean; usr_pwd: PUser_pwd; budget_type_cod: string; budget_id: integer) : variant; export;

var
  fmDictService: TfmDictService;

implementation

  uses DictServiceAdd, Other, Raznoe, Filter;

  {$R *.dfm}


procedure TfmDictService.RefreshBudget(cxDBTree: TcxDBTreeList; field_name: string; values: int64=-9; set_query_change: boolean=False);
var dt : TDateTime;
begin
  Screen.Cursor := crHourglass;
  try
    if (values = -9) and (cxDBTree.GetColumnByFieldName(field_name).DataBinding.Field <> nil) then begin
      if cxDBTree.GetColumnByFieldName(field_name).DataBinding.Field.IsNull then values := 0
      else  values := StrToInt64(cxDBTree.GetColumnByFieldName(field_name).DataBinding.Field.AsString);
    end;

    cxDBTree.DataController.DataSource.DataSet.DisableControls;
    cxDBTree.DataController.DataSource.DataSet.Close;
    if set_query_change then begin
      Query_Budget.SQL.Clear;
      Query_Budget.SQL.Add('SELECT TOP 100 PERCENT *,');
      Query_Budget.SQL.Add('case when set_group = 1 AND budget_formula_str_id is null then 146');
      Query_Budget.SQL.Add('     when set_group = 1 AND budget_formula_str_id is not null then 145');
      Query_Budget.SQL.Add('     when set_group = 0 AND budget_formula_str_id is null then 48');
      Query_Budget.SQL.Add('     when set_group = 0 AND budget_formula_str_id is not null then 143 end  image_index2');
      Query_Budget.SQL.Add('FROM view_shp_budget_rights');
      if dxBarButton1.Down then
        Query_Budget.SQL.Add('WHERE getdate() BETWEEN isnull(date_begin, getdate() - 1) and isnull(date_end, getdate() + 1)')
      else
        Query_Budget.SQL.Add('WHERE 1=1');

//      if Fset_select then begin
//        if Fbudget_type_cod <> '' then
//          Query_Budget.SQL.Add('AND (budget_type_cod = ''' + Fbudget_type_cod + ''' OR budget_type_cod = ''4'')');
//      end;

      Query_Budget.SQL.Add('ORDER BY budget_cod');
    end;
    cxDBTree.DataController.DataSource.DataSet.Open;
    cxDBTree.DataController.DataSource.DataSet.EnableControls;
    cxDBTree.ClearSelection;
    if cxDBTree.DataController.LocateByKey(values) = False then cxDBTree.GotoBOF;
    if cxDBTree.FocusedNode <> nil then cxDBTree.FocusedNode.Selected := True;

  except
    Application.MessageBox('Ошибка при обновлении.', 'Ошибка', MB_ICONSTOP or MB_OK);
  end;
  Screen.Cursor := crDefault;
end;

function CreateWndDictService(AppHand: THandle; flag: boolean; usr_pwd: PUser_pwd; budget_type_cod: string; budget_id: integer) : variant; export;
var i : integer;
begin
   Application.Handle := AppHand;
   fmDictService := TfmDictService.Create(Application, flag, usr_pwd, budget_type_cod, budget_id);
   with fmDictService do
    try
      if ShowModal=mrOK then result := VarArrayOf([fmDictService._GetBudgetId, fmDictService._GetBudgetId])
      else result := VarArrayOf([-9, '']);
    finally
      Free;
    end;

end;


constructor TfmDictService.Create(App: TApplication; flag: boolean; usr_pwd: PUser_pwd; budget_type_cod: string; budget_id: integer);
begin
  Screen.Cursor := crHourglass;
  inherited Create(App);
  ADOService.Connected := False;
  ADOService.ConnectionString := 'Persist Security Info=True;Provider=SQLOLEDB.1;User ID='+usr_pwd^.user_name+';Password='+usr_pwd^.user_pass+';Initial Catalog='+usr_pwd^.catalog+';Data Source='+usr_pwd^.server+';';
  ADOService.Connected := True;

  Fusr_pwd := usr_pwd;
  Fbudget_id := budget_id;
//  Fbudget_type_cod := budget_type_cod;

  Query_Budget.SQL.Clear;
  Query_Budget.SQL.Add('SELECT TOP 100 PERCENT *,');
  Query_Budget.SQL.Add('case when set_group = 1 AND budget_formula_str_id is null then 146');
  Query_Budget.SQL.Add('     when set_group = 1 AND budget_formula_str_id is not null then 145');
  Query_Budget.SQL.Add('     when set_group = 0 AND budget_formula_str_id is null then 48');
  Query_Budget.SQL.Add('     when set_group = 0 AND budget_formula_str_id is not null then 143 end  image_index2');
  Query_Budget.SQL.Add('FROM view_shp_budget_rights');
  Query_Budget.SQL.Add('WHERE getdate() BETWEEN isnull(date_begin, getdate() - 1) and isnull(date_end, getdate() + 1)');

  Fset_select := flag;
  if flag then begin
    FormStyle := fsNormal;
    Visible := False;
    dxBarButton16.Visible := ivAlways;
    WindowState := wsMaximized;

    dxBarSubItem3.Enabled := False;
    dxBarButton6.Enabled  := False;
    dxBarButton11.Enabled := False;
    dxBarButton12.Enabled := False;
    dxBarButton13.Enabled := False;
    dxBarButton17.Enabled := False;
    dxBarButton2.Enabled  := False;
    dxBarButton3.Enabled  := False;

//    if Fbudget_type_cod <> '' then
//      Query_Budget.SQL.Add('AND (budget_type_cod = ''' + Fbudget_type_cod + ''' OR budget_type_cod = ''4'')');
  end;

  Query_Budget.SQL.Add('ORDER BY budget_cod');
  Query_Budget.Open;

  cxDBTreeList1.FullCollapse;
  if cxDBTreeList1.Count > 0 then begin
    cxDBTreeList1.Items[0].Focused := True;
    if cxDBTreeList1.Items[0].Count > 0 then
      if Fbudget_id = -9 then begin
        cxDBTreeList1.Items[0].Items[0].Focused := True;
        cxDBTreeList1.Items[0].Items[0].Expand(False);
      end else begin
        FindService(Fbudget_id);
      end;
  end;

  MonitorEventFormOpen('OPEN_FORM', self.Name, ADOService, -9);

  Screen.Cursor := crDefault;
end;

procedure TfmDictService.cxDBTreeList1CustomDrawDataCell(Sender: TcxCustomTreeList; ACanvas: TcxCanvas;AViewInfo: TcxTreeListEditCellViewInfo; var ADone: Boolean);
begin
  if AViewInfo.Node.Selected or AViewInfo.Node.Focused then begin
    ACanvas.Brush.Color := clNavy;
    ACanvas.Font.Color := clWhite;
  end;
end;

procedure TfmDictService.cxDBTreeList1DblClick(Sender: TObject);
begin
  if cxDBTreeList1set_group.DataBinding.Field.AsBoolean = False then begin
    if Fset_select = True then
      dxBarButton16Click(Sender)
    else
      dxBarButton13Click(Sender);
  end;
end;

procedure TfmDictService.cxDBTreeList1GetCellHint(Sender: TcxCustomTreeList; ACell: TObject; var AText: string; var ANeedShow: Boolean);
begin
  ANeedShow := False;
  if ACell is TcxTreeListEditCellViewInfo then begin
    if TcxTreeListEditCellViewInfo(ACell).Column = cxDBTreeList1comment then begin
      AText := VarToStr(TcxTreeListEditCellViewInfo(ACell).DisplayValue);
      ANeedShow := (AText <> '');
    end;
  end;
end;

procedure TfmDictService.cxGrid1DBBandedTableView1CustomDrawCell(Sender: TcxCustomGridTableView; ACanvas: TcxCanvas;AViewInfo: TcxGridTableDataCellViewInfo; var ADone: Boolean);
begin
	if AViewInfo.GridRecord.Selected or AViewInfo.GridRecord.Focused then begin
		ACanvas.Brush.Color := clNavy;
		ACanvas.Font.Color := clWhite;
		if AViewInfo.Focused then ACanvas.Brush.Color := clBlue;
	end;
end;

procedure TfmDictService.cxGrid1DBBandedTableView1CustomDrawColumnHeader(Sender: TcxGridTableView; ACanvas: TcxCanvas;AViewInfo: TcxGridColumnHeaderViewInfo; var ADone: Boolean);
begin
	if AViewInfo.Column.Focused then begin
		ACanvas.Brush.Color := clNavy;
		ACanvas.Font.Color := clWhite;
	end;
end;

procedure TfmDictService.cxDBTreeList1KeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  if Key = VK_RIGHT then begin
    cxDBTreeList1.FocusedNode.Expand(False);
  end;
  if Key = VK_LEFT  then begin
    if cxDBTreeList1.FocusedNode.Expanded = False then begin
      cxDBTreeList1.FocusedNode.Parent.Focused := True;
    end;
    cxDBTreeList1.FocusedNode.Collapse(False);
  end;
end;
{добавляем коренную круппу}
procedure TfmDictService.dxBarButton6Click(Sender: TObject);
begin
  fmDictServiceAdd := TfmDictServiceAdd.Create(Application, True, Fusr_pwd);
  if fmDictServiceAdd.ShowModal = mrOk then
    RefreshBudget(cxDBTreeList1,cxDBTreeList1.DataController.KeyField, fmDictServiceAdd._GetBudgetId);
end;

procedure TfmDictService.dxBarButton7Click(Sender: TObject);
var new_str : string;
          Q : TADOQuery;
begin
  Q := TADOQuery.Create(nil);
  Q.Connection := ADOService;

  if InputQuery('Поиск', 'Шаблон поиска НАИМЕНОВАНИЯ "Статьи бюджета" : ', new_str) then begin
    Q.SQL.Add('SELECT * ');
    Q.SQL.Add('FROM (' + Query_Budget.SQL.Text + ') as sql1');
    Q.SQL.Add('WHERE budget_name LIKE ''%'+new_str+'%'' ');
    Q.SQL.Add('AND budget_parent_id IS NOT NULL ');
    Q.SQL.Add('ORDER BY budget_name ');
  end else begin
    Exit;
  end;

  Q.Open;
  fmFilter := TfmFilter.Create(0, Q, 'budget_id', 'budget_parent_id', 'budget_name');
  fmFilter._SetServiceChoose := True;
  if fmFilter.ShowModal = mrOk then
    FindService(fmFilter.GetId);

  Q.Free;
end;


procedure TfmDictService.FindService(budget_id: integer);
begin
  //сворачиваем все узлы
  cxDBTreeList1.FullCollapse;

  //фокусируеася на найденной услуге
  if cxDBTreeList1.DataController.LocateByKey(budget_id) then begin
    cxDBTreeList1.FocusedNode := cxDBTreeList1.FindNodeByKeyValue(budget_id);
    if cxDBTreeList1.FocusedNode <> nil then
      cxDBTreeList1.FocusedNode.MakeVisible;
  end;
end;

{добавляем группу}
procedure TfmDictService.dxBarButton11Click(Sender: TObject);
begin
  fmDictServiceAdd := TfmDictServiceAdd.Create(Application, True, Fusr_pwd);
  {чтобы не выдавал ошибку и не вылетал из ПО с кучей ошибок}
  if cxDBTreeList1budget_id.DataBinding.Field.AsInteger > 0 then
    if cxDBTreeList1set_group.DataBinding.Field.AsBoolean = true then
      fmDictServiceAdd._SetBudgetParentId := cxDBTreeList1budget_id.DataBinding.Field.AsInteger
    else
      fmDictServiceAdd._SetBudgetParentId := cxDBTreeList1budget_parent_id.DataBinding.Field.Value;
  if fmDictServiceAdd.ShowModal = mrOk then
    RefreshBudget(cxDBTreeList1, cxDBTreeList1.DataController.KeyField, fmDictServiceAdd._GetBudgetId);
end;

{добавляем статью}
procedure TfmDictService.dxBarButton13Click(Sender: TObject);
begin
  fmDictServiceAdd := TfmDictServiceAdd.Create(Application, False, Fusr_pwd);
  fmDictServiceAdd._SetUpdate := cxDBTreeList1budget_id.DataBinding.Field.AsInteger;
  if fmDictServiceAdd.ShowModal = mrOk then
    RefreshBudget(cxDBTreeList1, cxDBTreeList1.DataController.KeyField, cxDBTreeList1budget_id.DataBinding.Field.Value);
end;

procedure TfmDictService.dxBarButton14Click(Sender: TObject);
var tmp_path, file_name : string;
    arr_temp       : array[0..1023] of Char;
begin
  SetString(tmp_path, arr_temp, GetTempPath(1023, arr_temp));
  DeleteFileFromDir(tmp_path);
  repeat
    file_name := 'xls_' + IntToStr(GetTickCount) + '.xls';
  until not FileExists(tmp_path + file_name);

  cxExportTLToExcel(tmp_path + file_name, cxDBTreeList1);
  ShellExecute(HWND(nil), 'open', PChar(tmp_path + file_name), nil, nil, SW_SHOWNORMAL);
end;

procedure TfmDictService.dxBarButton16Click(Sender: TObject);
begin
  Fbudget_id := -9;

  if cxDBTreeList1budget_id.DataBinding.Field <> nil then
//    if (cxDBTreeList1set_group.DataBinding.Field.AsBoolean = False) OR (Fbudget_type_cod = '') then begin
    if (cxDBTreeList1set_group.DataBinding.Field.AsBoolean = False) OR (not Fset_select) then begin
       Fbudget_id := cxDBTreeList1budget_id.DataBinding.Field.AsInteger;
       Fbudget_name := cxDBTreeList1budget_name.DataBinding.Field.AsString;
       ModalResult := mrOk;
    end else begin
      Application.MessageBox('Выберите услугу!', 'Внимание', MB_ICONWARNING or MB_OK);
      ModalResult := mrNone;
    end;
end;

procedure TfmDictService.dxBarButton17Click(Sender: TObject);
begin
  {чтобы не выдавал ошибку и не вылетал из ПО с кучей ошибок}
  if cxDBTreeList1budget_id.DataBinding.Field.AsInteger > 0 then begin
    fmDictServiceAdd := TfmDictServiceAdd.Create(Application, False, Fusr_pwd);
    if cxDBTreeList1set_group.DataBinding.Field.AsBoolean = true then
      fmDictServiceAdd._SetBudgetParentId := cxDBTreeList1budget_id.DataBinding.Field.AsInteger
    else
      fmDictServiceAdd._SetBudgetParentId := cxDBTreeList1budget_parent_id.DataBinding.Field.Value;
    if fmDictServiceAdd.ShowModal = mrOk then
      RefreshBudget(cxDBTreeList1,cxDBTreeList1.DataController.KeyField, fmDictServiceAdd._GetBudgetId);
  end else
    Application.MessageBox(Pchar('Отсутствуют выбранные группы, создание статьи невозможно!' ), 'Внимание', MB_OK + MB_ICONERROR);
end;

procedure TfmDictService.dxBarButton22Click(Sender: TObject);
var
  i: Integer;
begin
  cxDBTreeList1.FullExpand;
  for i := 0 to cxDBTreeList1.AbsoluteCount - 1 do begin
    if cxDBTreeList1.AbsoluteItems[i].Level >= cxDBTreeList1.FocusedNode.Level then
      cxDBTreeList1.AbsoluteItems[i].Collapse(False);
  end;
end;

procedure TfmDictService.dxBarButton2Click(Sender: TObject);
var sp_budget_modify: TADOStoredProc;
begin
  sp_budget_modify := TADOStoredProc.Create(nil);
  sp_budget_modify.Connection := ADOService;
  sp_budget_modify.ProcedureName := 'sp_shp_budget_modify';
  sp_budget_modify.Parameters.Refresh;
  sp_budget_modify.Parameters.ParamByName('@budget_id'  ).Value := cxDBTreeList1budget_id.DataBinding.Field.AsInteger;
  sp_budget_modify.Parameters.ParamByName('@type_action').Value := 6;
  sp_budget_modify.Parameters.ParamByName('@set_up'     ).Value := TControl(Sender).Tag;
  sp_budget_modify.ExecProc;
  sp_budget_modify.Free;

  RefreshBudget(cxDBTreeList1,cxDBTreeList1.DataController.KeyField, cxDBTreeList1budget_id.DataBinding.Field.Value);
end;

procedure TfmDictService.dxBarButton21Click(Sender: TObject);
var
  i: Integer;
begin
 cxDBTreeList1.FullExpand;
 for i := 0 to cxDBTreeList1.AbsoluteCount - 1 do begin
   if  cxDBTreeList1.AbsoluteItems[i].Level >= cxDBTreeList1.FocusedNode.Level then
     cxDBTreeList1.AbsoluteItems[i].Expand(False);
 end;
end;

procedure TfmDictService.dxBarButton19Click(Sender: TObject);
begin
   cxDBTreeList1.FullExpand;
end;

procedure TfmDictService.dxBarButton1Click(Sender: TObject);
begin
  RefreshBudget(cxDBTreeList1,cxDBTreeList1.DataController.KeyField, cxDBTreeList1budget_id.DataBinding.Field.Value, True);
end;

procedure TfmDictService.dxBarButton20Click(Sender: TObject);
begin
 cxDBTreeList1.FullCollapse;
end;

procedure TfmDictService.dxBarButton5Click(Sender: TObject);
begin
  RefreshBudget(cxDBTreeList1,cxDBTreeList1.DataController.KeyField,cxDBTreeList1budget_id.DataBinding.Field.Value);
end;

procedure TfmDictService.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action := caFree;
end;

procedure TfmDictService.dxBarButton12Click(Sender: TObject);
var i : integer;
   SP : TADOStoredProc;
begin
  if Application.MessageBox('Вы точно уверены, что хотите удалить статью?', 'Внимание', MB_OKCANCEL) = ID_OK then begin
    Screen.Cursor := crHourglass;

    SP := TADOStoredProc.Create(nil);
    SP.Connection := ADOService;
    SP.ProcedureName := 'sp_shp_budget_modify;1';
    SP.Parameters.Refresh;
    SP.Parameters.ParamByName('@budget_id').Value := cxDBTreeList1budget_id.DataBinding.Field.Value;
    SP.Parameters.ParamByName('@type_action').Value := 2;
    SP.ExecProc;
    RefreshBudget(cxDBTreeList1,cxDBTreeList1.DataController.KeyField);
    Screen.Cursor := crDefault;
  end;
end;

end.
