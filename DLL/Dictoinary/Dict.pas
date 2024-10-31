unit Dict;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs, Default,
  ComCtrls, Db, ADODB, Menus, ImgList, ImageList, StdCtrls, Variants, ExtCtrls, StrUtils,
  dxCore, cxGridLevel, cxGridCustomTableView, cxGridTableView, cxGridBandedTableView, cxGridDBBandedTableView, cxClasses, cxControls,
  cxGridCustomView, cxGrid, cxStyles, cxCustomData, cxGraphics, cxFilter, cxData, cxDataStorage,  cxDBData, cxPropertiesStore, cxContainer,
  cxTextEdit, cxEdit, dxBar, cxLookAndFeels, cxLookAndFeelPainters, cxCalendar, cxLocalization, dxGDIPlusClasses, dxGDIPlusAPI, dxSkinsCore,
  dxSkinBlue, dxSkinBlueprint, dxSkinCaramel, dxSkinCoffee, dxSkinDarkRoom, dxSkinDarkSide, dxSkinDevExpressDarkStyle, dxSkinDevExpressStyle,
  dxSkinFoggy, dxSkinGlassOceans, dxSkinHighContrast, dxSkiniMaginary, dxSkinLilian, dxSkinLiquidSky, dxSkinLondonLiquidSky, dxSkinMcSkin,
  dxSkinMetropolis, dxSkinMetropolisDark, dxSkinMoneyTwins, dxSkinOffice2007Black, dxSkinOffice2007Blue, dxSkinOffice2007Green,
  dxSkinOffice2007Pink, dxSkinOffice2007Silver, dxSkinOffice2010Black, dxSkinOffice2010Blue, dxSkinOffice2010Silver, dxSkinOffice2013DarkGray,
  dxSkinOffice2013LightGray, dxSkinOffice2013White, dxSkinPumpkin, dxSkinSeven, dxSkinSevenClassic, dxSkinSharp, dxSkinSharpPlus, dxSkinSilver,
  dxSkinSpringTime, dxSkinStardust, dxSkinSummer2008, dxSkinTheAsphaltWorld, dxSkinsDefaultPainters, dxSkinValentine, dxSkinVS2010,
  dxSkinWhiteprint, dxSkinXmas2008Blue, dxSkinscxPCPainter, cxNavigator, dxSkinsdxBarPainter, dxSkinOffice2016Colorful, dxSkinOffice2016Dark,
  dxSkinVisualStudio2013Blue, dxSkinVisualStudio2013Dark, dxSkinVisualStudio2013Light, cxImageList, dxSkinBlack, dxSkinTheBezier, dxDateRanges,
  dxScrollbarAnnotations;

type
  TfmDict = class(TForm)
    ADODict: TADOConnection;
    Splitter1: TSplitter;
    Panel1: TPanel;
    Panel2: TPanel;
    TV1: TTreeView;
    Panel4: TPanel;
    Query_Inf_Obj: TADOQuery;
    DS_Inf_Obj: TDataSource;
    cxGrid1: TcxGrid;
    cxGrid1DBBandedTableView1: TcxGridDBBandedTableView;
    cxGrid1DBBandedTableView1inf_obj_id: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1type_inf_id: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1inf_obj_name: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1inf_obj_cod: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1inf_obj_gng_type: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1inf_obj_name_full: TcxGridDBBandedColumn;
    cxGrid1Level1: TcxGridLevel;
    cxPropertiesStore1: TcxPropertiesStore;
    cxGrid1DBBandedTableView1inf_obj_name_translit: TcxGridDBBandedColumn;
    cxImageList1: TcxImageList;
    dxBarManager1: TdxBarManager;
    Popup_Dict: TdxBarPopupMenu;
    N1: TdxBarButton;
    N3: TdxBarButton;
    N4: TdxBarButton;
    Excel1: TdxBarButton;
    N12: TdxBarButton;
    N13: TdxBarButton;
    N11: TdxBarSubItem;
    dxBarButton1: TdxBarButton;
    dxBarButton2: TdxBarButton;
    dxBarManager1Bar1: TdxBar;
    cxGrid1DBBandedTableView1date_begin: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1date_end: TcxGridDBBandedColumn;
    cxLocalizer1: TcxLocalizer;
    cxGrid1DBBandedTableView1comment: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1str_group_visible: TcxGridDBBandedColumn;
    dxBarButton_FilterRecords1: TdxBarButton;
    dxBarButton3: TdxBarButton;
    cxGrid1DBBandedTableView1carrier_name: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1carrier_cod: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1firm_name_short: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1cod_okpo: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1rzd_gropl_cod: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1node_cod: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1node_name: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1firm_name: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1contract_cod: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1date_begin_cntr: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1firm_customer_name_cntr: TcxGridDBBandedColumn;
    dxBarButton4: TdxBarButton;
    dxBarButton5: TdxBarButton;
    cxGrid1DBBandedTableView1edo_vrk_cod: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1road_name: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1MVRN: TcxGridDBBandedColumn;
    dxBarButton6: TdxBarButton;
    dxBarButton7: TdxBarButton;
    cxGrid1DBBandedTableView1parent_name: TcxGridDBBandedColumn;
    N2: TdxBarButton;
    N8: TdxBarButton;
    N18: TdxBarButton;
    N15: TdxBarButton;
    N16: TdxBarButton;
    N22: TdxBarButton;
    N222: TdxBarButton;
    N188: TdxBarButton;
    N19: TdxBarButton;
    N6: TdxBarButton;
    cxGrid1DBBandedTableView1state_name: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1state_cod: TcxGridDBBandedColumn;
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
    cxStyle_WhiteColor: TcxStyle;
    cxGrid1DBBandedTableView1road_name_full: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1road_cod: TcxGridDBBandedColumn;
    procedure cxGrid1DBBandedTableView1CustomDrawCell(Sender: TcxCustomGridTableView; ACanvas: TcxCanvas; AViewInfo: TcxGridTableDataCellViewInfo; var ADone: Boolean);
    procedure dxBarButton2Click(Sender: TObject);
    procedure dxBarButton1Click(Sender: TObject);
    procedure Excel1Click(Sender: TObject);
    procedure N3Click(Sender: TObject);
    procedure N4Click(Sender: TObject);
    procedure N1Click(Sender: TObject);
    procedure cxGrid1DBBandedTableView1KeyPress(Sender: TObject; var Key: Char);
    procedure ADODictExecuteComplete(Connection: TADOConnection; RecordsAffected: Integer; const Error: Error; var EventStatus: TEventStatus; const Command: _Command; const Recordset: _Recordset);
    procedure cxGrid1DBBandedTableView1FocusedItemChanged(Sender: TcxCustomGridTableView; APrevFocusedItem, AFocusedItem: TcxCustomGridTableItem);
    procedure cxGrid1DBBandedTableView1CustomDrawColumnHeader(Sender: TcxGridTableView; ACanvas: TcxCanvas; AViewInfo: TcxGridColumnHeaderViewInfo; var ADone: Boolean);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure N9Click(Sender: TObject);
    procedure TV1GetImageIndex(Sender: TObject; Node: TTreeNode);
    procedure TV1GetSelectedIndex(Sender: TObject; Node: TTreeNode);
    procedure TV1Change(Sender: TObject; Node: TTreeNode);
    procedure dxBarButton_FilterRecords1Click(Sender: TObject);
    procedure dxBarButton3Click(Sender: TObject);
    procedure dxBarButton5Click(Sender: TObject);
    procedure dxBarButton4Click(Sender: TObject);
    procedure dxBarButton6Click(Sender: TObject);
    procedure dxBarButton7Click(Sender: TObject);
    procedure cxGrid1DBBandedTableView1DataControllerFilterChanged(Sender: TObject);
  private
    node_object     : PTVDictionary;
    Finf_obj_id     : integer;
    Fstr_find_dict  : string;

    procedure FindDict(set_first : boolean; str_find_dict : string);
  public
    constructor Create(App: TApplication; flag: boolean; usr_pwd: PUser_pwd);
  published
    property _GetInfObjId  : integer read Finf_obj_id;
  end;

function CreateWndDictionary(AppHand: THandle; flag: boolean; usr_pwd: PUser_pwd):variant; export;

var
   fmDict   : TfmDict;

implementation
      uses DictAdd, cxGridDBTableView, Other, Raznoe, Filter;
{$R *.DFM}

function CreateWndDictionary(AppHand: THandle; flag: boolean; usr_pwd: PUser_pwd):variant; export;
var i : integer;
begin
   Application.Handle := AppHand;
   fmDict := TfmDict.Create(Application, flag, usr_pwd);
   try
     if fmDict.ShowModal=mrOK then
        result := VarArrayOf([fmDict.Query_Inf_Obj.FieldByName('inf_obj_id').AsInteger, fmDict.Query_Inf_Obj.FieldByName('inf_obj_name').AsString, fmDict.Query_Inf_obj.FieldByName('inf_obj_cod').AsString])
     else result := VarArrayOf([-9, '', '']);
    finally
      for i := 0 to fmDict.TV1.Items.Count-1 do dispose(PTVDictionary(fmDict.TV1.Items[i].Data));
      fmDict.Free;
    end;
end;

constructor TfmDict.Create(App: TApplication; flag: boolean; usr_pwd: PUser_pwd);
var n : TTreeNode;
    Q : TADOQuery;
begin
  Screen.Cursor := crHourglass;
  inherited Create(App);
  cxLocalizer1.Locale := 1049;

  ADODict.Connected := False;
  ADODict.ConnectionString := 'Provider=SQLOLEDB.1;Persist Security Info=True;User ID='+usr_pwd.user_name+';Password='+usr_pwd.user_pass+';Initial Catalog='+usr_pwd.catalog+';Data Source='+usr_pwd.server+';';
  ADODict.Connected := True;
  StoreRegistryGrid(rgLoad,'\Software\Lis1\Dict_Grids', cxGrid1DBBandedTableView1);

  if LeftStr(usr_pwd^.user_name, 5) = 'admin' then cxGrid1DBBandedTableView1str_group_visible.Position.BandIndex := 0;

  Q := TADOQuery.Create(nil);
  Q.Connection := ADODict;
  Q.SQL.Add('SELECT * FROM type_inf_obj WHERE (owner_id is null) OR (SYSTEM_USER like ''admin%'') ORDER BY type_inf_name');
  Q.Open;
  TV1.Items.Clear;
  while not Q.EOF do begin
    New(node_object);
    node_object^.id        := Q.FieldByName('type_inf_id').AsInteger;
    node_object^.group_cod := Q.FieldByName('group_cod').AsInteger;
    n := TV1.Items.AddObject(nil, Q.FieldByName('type_inf_name').AsString, node_object);
    with n do begin
      SelectedIndex := 32;
      ImageIndex := 31;
    end;
    Q.Next;
  end;
  Q.Free;

  // ------------- NODE ---------------
    New(node_object);
    node_object^.id := 16;
    node_object^.group_cod := 9;
    n := TV1.Items.AddObject(nil, 'Ж/д станции', node_object);
    with n do begin
      SelectedIndex := 32;
      ImageIndex := 31;
    end;
  //-------------- ETSNG ---------------
    New(node_object);
    node_object^.id := 10;
    node_object^.group_cod := 2;
    n := TV1.Items.AddObject(nil, 'Груз ЕТСНГ', node_object);
    with n do begin
      SelectedIndex := 32;
      ImageIndex := 31;
    end;
  //-------------- GNG -----------------
    New(node_object);
    node_object^.id := 9;
    node_object^.group_cod := 2;
    n := TV1.Items.AddObject(nil, 'Груз ГНГ', node_object);
    with n do begin
      SelectedIndex := 32;
      ImageIndex := 31;
    end;
  //-------------- ROAD ----------------
    New(node_object);
    node_object^.id := 13;
    node_object^.group_cod := 8;
    n := TV1.Items.AddObject(nil, 'Железные дороги', node_object);
    with n do begin
      SelectedIndex := 32;
      ImageIndex := 31;
    end;
  //-------------- STATE ----------------
    New(node_object);
    node_object^.id := 11;
    node_object^.group_cod := 5;
    n := TV1.Items.AddObject(nil, 'Страны', node_object);
    with n do begin
      SelectedIndex := 32;
      ImageIndex := 31;
    end;

  if flag then begin
    dxBarButton1.Visible := ivAlways;
  end;

  TV1.Items[0].Selected := True;

  Fstr_find_dict := '';

  SetUsersModuleRights(self, ADODict);

  MonitorEventFormOpen('OPEN_FORM', self.Name, ADODict, -9);
  Screen.Cursor := crDefault;
end;

procedure TfmDict.Excel1Click(Sender: TObject);
begin
  PrintcxGrid(cxGrid1DBBandedTableView1);
end;

procedure TfmDict.cxGrid1DBBandedTableView1CustomDrawCell(Sender: TcxCustomGridTableView; ACanvas: TcxCanvas; AViewInfo: TcxGridTableDataCellViewInfo; var ADone: Boolean);
begin
  if AViewInfo.GridRecord.Focused OR AViewInfo.GridRecord.Selected then begin
    ACanvas.Font.Color := clWhite;
    if AViewInfo.Focused then ACanvas.Brush.Color := clBlue
    else ACanvas.Brush.Color := clNavy;
  end;
end;

procedure TfmDict.cxGrid1DBBandedTableView1CustomDrawColumnHeader(Sender: TcxGridTableView; ACanvas: TcxCanvas; AViewInfo: TcxGridColumnHeaderViewInfo; var ADone: Boolean);
begin
  DrawcxGridColumnOnFocused(Sender, ACanvas, AViewInfo);
end;

procedure TfmDict.cxGrid1DBBandedTableView1DataControllerFilterChanged(Sender: TObject);
begin
  DrawcxGridColumnOnFiltered(Sender);
end;

procedure TfmDict.cxGrid1DBBandedTableView1FocusedItemChanged(Sender: TcxCustomGridTableView; APrevFocusedItem,  AFocusedItem: TcxCustomGridTableItem);
begin
  Sender.Painter.Invalidate;
end;

procedure TfmDict.cxGrid1DBBandedTableView1KeyPress(Sender: TObject; var Key: Char);
begin
  FilterColumnGridOnKeyPress(TcxGridDBBandedTableView(TcxGridSite(Sender).GridView), Key);
end;

procedure TfmDict.dxBarButton1Click(Sender: TObject);
begin
  FInf_obj_id := cxGrid1DBBandedTableView1inf_obj_id.DataBinding.Field.AsInteger;
  ModalResult := mrOk;
end;

procedure TfmDict.dxBarButton2Click(Sender: TObject);
begin
  RefreshQueryGrid(cxGrid1DBBandedTableView1, 'inf_obj_id', cxGrid1DBBandedTableView1inf_obj_id.DataBinding.Field.AsInteger);
end;

procedure TfmDict.dxBarButton3Click(Sender: TObject);
begin
  TV1Change(nil, nil);
end;

procedure TfmDict.dxBarButton4Click(Sender: TObject);
begin
  SetdxDBGridColumns(cxGrid1DBBandedTableView1);
end;

procedure TfmDict.dxBarButton5Click(Sender: TObject);
begin
  cxGrid1DBBandedTableView1.OptionsView.GroupByBox := not cxGrid1DBBandedTableView1.OptionsView.GroupByBox;
end;

procedure TfmDict.dxBarButton6Click(Sender: TObject);
begin
  if InputQuery('Поиск', 'Шаблон поиска НАИМЕНОВАНИЯ "Справочника" : ', Fstr_find_dict) then
    FindDict(True, Fstr_find_dict)
  else Exit;
end;

procedure TfmDict.dxBarButton7Click(Sender: TObject);
begin
  if Fstr_find_dict = '' then
    dxBarButton6Click(nil)
  else
    FindDict(False, Fstr_find_dict);
end;

procedure TfmDict.FindDict(set_first : boolean; str_find_dict : string);
var CurItem : TTreeNode;
begin
  if set_first then
    CurItem := TV1.Items.GetFirstNode
  else
    CurItem := TV1.FindNextToSelect;
  while CurItem <> nil do begin
    if Pos(AnsiUpperCase(str_find_dict), AnsiUpperCase(CurItem.Text)) > 0 then begin
      CurItem.Selected := True;
      Exit;
    end;
    CurItem := CurItem.GetNext;
  end;
end;


{$REGION 'Фильтр по всем записям'}
procedure TfmDict.dxBarButton_FilterRecords1Click(Sender: TObject);
begin
  cxGrid1DBBandedTableView1.Filtering.ColumnFilteredItemsList := not dxBarButton_FilterRecords1.Down;
end;
{$ENDREGION 'Фильтр по всем записям'}

procedure TfmDict.ADODictExecuteComplete(Connection: TADOConnection; RecordsAffected: Integer; const Error: Error; var EventStatus: TEventStatus; const Command: _Command; const Recordset: _Recordset);
begin
  if EventStatus = esErrorsOccured then begin
    Application.MessageBox(PWideChar(error.Description), 'Внимание', MB_OK);
    ShowTextMessage('', True);
  end;
end;

procedure TfmDict.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  StoreRegistryGrid(rgSave, '\Software\Lis1\Dict_Grids', cxGrid1DBBandedTableView1);

  Action:=caFree
end;

procedure TfmDict.N1Click(Sender: TObject);
begin
  fmDictAdd := TfmDictAdd.Create(Application, PTVDictionary(TV1.Selected.Data)^.id, nil);
  if fmDictAdd.ShowModal = mrOk then
    RefreshQueryGrid(cxGrid1DBBandedTableView1, 'inf_obj_id', fmDictAdd._GetInfObjId);
end;

procedure TfmDict.N3Click(Sender: TObject);
begin
  fmDictAdd := TfmDictAdd.Create(Application, PTVDictionary(TV1.Selected.Data)^.id, nil);
  fmDictAdd._SetUpdate := cxGrid1DBBandedTableView1inf_obj_id.DataBinding.Field.AsInteger;
  if fmDictAdd.ShowModal = mrOk then
    RefreshQueryGrid(cxGrid1DBBandedTableView1, 'inf_obj_id', fmDictAdd._GetInfObjId);
end;

procedure TfmDict.N4Click(Sender: TObject);
var SP : TADOStoredProc;
     i : integer;
begin
  if Application.MessageBox('Вы действительно хотите удалить справочник ?','Внимание', MB_OKCANCEL) = ID_OK then begin
     Screen.Cursor := crHourglass;

     SP := TADOStoredProc.Create(nil);
     SP.Connection := ADODict;
     SP.ProcedureName := 'sp_inf_obj_modify;1';

     for i:=0 to cxGrid1DBBandedTableView1.Controller.SelectedRecordCount - 1 do begin
       SP.Parameters.Refresh;
       SP.Parameters.ParamByName('@type_action').Value := 2;
       SP.Parameters.ParamByName('@inf_obj_id' ).Value := cxGrid1DBBandedTableView1.Controller.SelectedRows[i].Values[cxGrid1DBBandedTableView1inf_obj_id.Index];
       SP.Parameters.ParamByName('@type_inf_id').Value := PTVDictionary(TV1.Selected.Data)^.id;
       try
         SP.ExecProc;
       except
       end;
     end;

     RefreshQueryGrid(cxGrid1DBBandedTableView1, 'inf_obj_id');
     Screen.Cursor := crDefault;
  end;
end;

procedure TfmDict.N9Click(Sender: TObject);
begin
  ModalResult := mrOK
end;

procedure TfmDict.TV1GetSelectedIndex(Sender: TObject; Node: TTreeNode);
begin
  if (not (Node.HasChildren)) and (Node.Level=0) then begin
    Node.SelectedIndex := 32;
    Node.ImageIndex := 32;
  end;
end;

procedure TfmDict.TV1GetImageIndex(Sender: TObject; Node: TTreeNode);
begin
  if (Node.Expanded) and (Node.Level=0) then begin
    Node.SelectedIndex := 32;
    Node.ImageIndex := 32;
  end else if not(Node.Expanded) and (Node.Level=0) then begin
    Node.SelectedIndex := 31;
    Node.ImageIndex := 31;
  end else if (Node.Level)<>0 then begin
    Node.SelectedIndex := 12;
    Node.ImageIndex := 12;
  end;
end;

procedure TfmDict.TV1Change(Sender: TObject; Node: TTreeNode);
begin
  Screen.Cursor := -11;
  cxGrid1DBBandedTableView1road_name.Position.BandIndex               := -1;
  cxGrid1DBBandedTableView1road_cod.Position.BandIndex                := -1;
  cxGrid1DBBandedTableView1road_name_full.Position.BandIndex          := -1;
  cxGrid1DBBandedTableView1carrier_name.Position.BandIndex            := -1;
  cxGrid1DBBandedTableView1carrier_cod.Position.BandIndex             := -1;

  cxGrid1DBBandedTableView1firm_name_short.Position.BandIndex         := -1;
  cxGrid1DBBandedTableView1cod_okpo.Position.BandIndex                := -1;
  cxGrid1DBBandedTableView1rzd_gropl_cod.Position.BandIndex           := -1;
  cxGrid1DBBandedTableView1node_cod.Position.BandIndex                := -1;
  cxGrid1DBBandedTableView1node_name.Position.BandIndex               := -1;
  cxGrid1DBBandedTableView1firm_name.Position.BandIndex               := -1;
  cxGrid1DBBandedTableView1contract_cod.Position.BandIndex            := -1;
  cxGrid1DBBandedTableView1date_begin_cntr.Position.BandIndex         := -1;
  cxGrid1DBBandedTableView1firm_customer_name_cntr.Position.BandIndex := -1;
  cxGrid1DBBandedTableView1edo_vrk_cod.Position.BandIndex             := -1;
  cxGrid1DBBandedTableView1road_name.Position.BandIndex               := -1;
  cxGrid1DBBandedTableView1MVRN.Position.BandIndex                    := -1;
  cxGrid1DBBandedTableView1parent_name.Position.BandIndex             := -1;
  cxGrid1DBBandedTableView1state_name.Position.BandIndex              := -1;
  cxGrid1DBBandedTableView1state_cod.Position.BandIndex               := -1;

  cxGrid1DBBandedTableView1inf_obj_cod.Caption := 'Код';
  cxGrid1DBBandedTableView1contract_cod.Caption := '№ Договора';
  cxGrid1DBBandedTableView1inf_obj_name_full.Caption := 'Полное наименование';

  N1.Enabled := not TV1.Selected.HasChildren;
  N3.Enabled := N1.Enabled;
  N4.Enabled := N1.Enabled;

  Query_Inf_Obj.Close;
  Query_Inf_Obj.SQL.Clear;
  Query_Inf_Obj.SQL.Add('DECLARE @now float');
  Query_Inf_Obj.SQL.Add('SELECT @now = FLOOR(convert(float, getdate() ))');

  case PTVDictionary(TV1.Selected.Data)^.id of
    9   : begin
            Query_Inf_Obj.SQL.Add('SELECT ion.*, gi.comment');
            Query_Inf_Obj.SQL.Add('FROM inf_obj_GNG ion INNER JOIN global_id gi ON ion.inf_obj_id = gi.global_id');
            if dxBarButton3.Down then
              Query_Inf_Obj.SQL.Add('WHERE @now BETWEEN ISNULL(FLOOR(convert(float, ion.date_begin)), @now) AND ISNULL(FLOOR(convert(float, ion.date_end)), @now)');
            Query_Inf_Obj.SQL.Add('ORDER BY ion.inf_obj_name');
          end;
    10  : begin // Груз ЕТСНГ
            Query_Inf_Obj.SQL.Add('SELECT ion.*, gi.comment');
            Query_Inf_Obj.SQL.Add('FROM inf_obj_ETSNG ion INNER JOIN global_id gi ON ion.inf_obj_id = gi.global_id');
            if dxBarButton3.Down then
              Query_Inf_Obj.SQL.Add('WHERE @now BETWEEN ISNULL(FLOOR(convert(float, ion.date_begin)), @now) AND ISNULL(FLOOR(convert(float, ion.date_end)), @now)');
            Query_Inf_Obj.SQL.Add('ORDER BY ion.inf_obj_name');

            cxGrid1DBBandedTableView1MVRN.Position.BandIndex := 0;
          end;
    11  : begin // Страны
            Query_Inf_Obj.SQL.Add('SELECT ion.*, gi.comment');
            Query_Inf_Obj.SQL.Add('FROM inf_obj_STATE ion INNER JOIN global_id gi ON ion.inf_obj_id = gi.global_id');
            if dxBarButton3.Down then
              Query_Inf_Obj.SQL.Add('WHERE @now BETWEEN ISNULL(FLOOR(convert(float, ion.date_begin)), @now) AND ISNULL(FLOOR(convert(float, ion.date_end)), @now)');
            Query_Inf_Obj.SQL.Add('ORDER BY ion.inf_obj_name');
          end;
    13  : begin // Дороги
            Query_Inf_Obj.SQL.Add('SELECT ion.*, gi.comment, ios.inf_obj_name AS state_name, ios.inf_obj_cod AS state_cod');
            Query_Inf_Obj.SQL.Add('FROM inf_obj_ROAD ion INNER JOIN global_id gi ON ion.inf_obj_id = gi.global_id');
            Query_Inf_Obj.SQL.Add('LEFT JOIN inf_obj_STATE ios ON ion.state_id = ios.inf_obj_id');
            if dxBarButton3.Down then
              Query_Inf_Obj.SQL.Add('WHERE @now BETWEEN ISNULL(FLOOR(convert(float, ion.date_begin)), @now) AND ISNULL(FLOOR(convert(float, ion.date_end)), @now)');
            Query_Inf_Obj.SQL.Add('ORDER BY ion.inf_obj_name');

            cxGrid1DBBandedTableView1carrier_name.Position.BandIndex := 0;
            cxGrid1DBBandedTableView1carrier_cod.Position.BandIndex := 0;
            cxGrid1DBBandedTableView1state_name.Position.BandIndex := 0;
            cxGrid1DBBandedTableView1state_cod.Position.BandIndex := 0;
          end;
    16  : begin  // Станции
            Query_Inf_Obj.SQL.Add('SELECT * FROM view_inf_obj_NODE');
            if dxBarButton3.Down then
              Query_Inf_Obj.SQL.Add('WHERE @now BETWEEN ISNULL(FLOOR(convert(float, date_begin)), @now) AND ISNULL(FLOOR(convert(float, date_end)), @now)');

            cxGrid1DBBandedTableView1road_name.Position.BandIndex := 0;
            cxGrid1DBBandedTableView1road_cod.Position.BandIndex := 0;
            cxGrid1DBBandedTableView1road_name_full.Position.BandIndex := 0;
            cxGrid1DBBandedTableView1state_name.Position.BandIndex := 0;
            cxGrid1DBBandedTableView1state_cod.Position.BandIndex := 0;
          end;
    117 : begin // Депо
            Query_Inf_Obj.SQL.Add('SELECT d.*, gi.comment,f.firm_name_short,f.firm_name,f.cod_okpo,f.rzd_gropl_cod,n.inf_obj_cod as node_cod, n.inf_obj_name as node_name, c.contract_cod,c.date_begin as date_begin_cntr ,firm_customer_name as firm_customer_name_cntr, n.road_name ');
            Query_Inf_Obj.SQL.Add(' FROM inf_obj_DEPO d ');
            Query_Inf_Obj.SQL.Add(' JOIN global_id gi ON d.inf_obj_id = gi.global_id ');
            Query_Inf_Obj.SQL.Add(' LEFT OUTER JOIN firm f ON f.firm_id = d.firm_id ');
            Query_Inf_Obj.SQL.Add(' LEFT OUTER JOIN view_NODE n ON n.inf_obj_id = d.node_id ');
            Query_Inf_Obj.SQL.Add(' LEFT OUTER JOIN view_contract c ON c.contract_id = d.contract_id ');

            if dxBarButton3.Down then
              Query_Inf_Obj.SQL.Add('WHERE @now BETWEEN ISNULL(FLOOR(convert(float, d.date_begin)), @now) AND ISNULL(FLOOR(convert(float, d.date_end)), @now)');
            Query_Inf_Obj.SQL.Add('ORDER BY d.inf_obj_name');

            cxGrid1DBBandedTableView1firm_name_short.Position.BandIndex := 0;
            cxGrid1DBBandedTableView1cod_okpo.Position.BandIndex := 0;
            cxGrid1DBBandedTableView1rzd_gropl_cod.Position.BandIndex := 0;
            cxGrid1DBBandedTableView1node_cod.Position.BandIndex := 0;
            cxGrid1DBBandedTableView1node_name.Position.BandIndex := 0;
            cxGrid1DBBandedTableView1firm_name.Position.BandIndex := 0;
            cxGrid1DBBandedTableView1contract_cod.Position.BandIndex := 0;
            cxGrid1DBBandedTableView1contract_cod.Caption := '№ Договора';
            cxGrid1DBBandedTableView1inf_obj_cod.Caption := 'Клеймо депо';
            cxGrid1DBBandedTableView1date_begin_cntr.Position.BandIndex := 0;
            cxGrid1DBBandedTableView1firm_customer_name_cntr.Position.BandIndex := 0;
            cxGrid1DBBandedTableView1edo_vrk_cod.Position.BandIndex := 0;
            cxGrid1DBBandedTableView1road_name.Position.BandIndex := 0;
          end;
    143 : begin // судно
            Query_Inf_Obj.SQL.Add('SELECT ion.*, gi.comment, c.contract_id, c.contract_cod');
            Query_Inf_Obj.SQL.Add('FROM inf_obj ion INNER JOIN global_id gi ON ion.inf_obj_id = gi.global_id');
            Query_Inf_Obj.SQL.Add('LEFT JOIN view_inf_obj_join ij ON ion.inf_obj_id = ij.inf_obj_id AND ij.type_join_cod = ''001''');
            Query_Inf_Obj.SQL.Add('LEFT JOIN view_contract c ON ij.global_id = c.contract_id ');
            Query_Inf_Obj.SQL.Add('WHERE ion.type_inf_id = ' + IntToStr(PTVDictionary(TV1.Selected.Data)^.id));
            if dxBarButton3.Down then
              Query_Inf_Obj.SQL.Add('AND @now BETWEEN ISNULL(FLOOR(convert(float, ion.date_begin)), @now) AND ISNULL(FLOOR(convert(float, ion.date_end)), @now)');
            Query_Inf_Obj.SQL.Add('ORDER BY ion.inf_obj_name');

            cxGrid1DBBandedTableView1contract_cod.Position.BandIndex := 0;
            cxGrid1DBBandedTableView1contract_cod.Caption := '№ Договора (Топливо)';
          end;
    145 : begin // тип сделки
            Query_Inf_Obj.SQL.Add('SELECT ion.*, gi.comment, parent_i.inf_obj_name as parent_name');
            Query_Inf_Obj.SQL.Add('FROM inf_obj ion INNER JOIN global_id gi ON ion.inf_obj_id = gi.global_id');
            Query_Inf_Obj.SQL.Add('LEFT JOIN inf_obj parent_i ON parent_i.inf_obj_id = ion.parent_id');
            Query_Inf_Obj.SQL.Add('WHERE ion.type_inf_id = ' + IntToStr(PTVDictionary(TV1.Selected.Data)^.id));
            if dxBarButton3.Down then
              Query_Inf_Obj.SQL.Add('AND @now BETWEEN ISNULL(FLOOR(convert(float, ion.date_begin)), @now) AND ISNULL(FLOOR(convert(float, ion.date_end)), @now)');
            Query_Inf_Obj.SQL.Add('ORDER BY ion.inf_obj_name');

            cxGrid1DBBandedTableView1parent_name.Position.BandIndex := 0;
            cxGrid1DBBandedTableView1parent_name.Caption := 'Подразделение';
          end;
    else  begin
            if PTVDictionary(TV1.Selected.Data)^.id = 142 then begin // порты
              cxGrid1DBBandedTableView1inf_obj_name_full.Caption := 'Страна';
            end;

            Query_Inf_Obj.SQL.Add('SELECT ion.*, gi.comment');
            Query_Inf_Obj.SQL.Add('FROM inf_obj ion INNER JOIN global_id gi ON ion.inf_obj_id = gi.global_id');
            Query_Inf_Obj.SQL.Add('WHERE ion.type_inf_id = ' + IntToStr(PTVDictionary(TV1.Selected.Data)^.id));
            if dxBarButton3.Down then
              Query_Inf_Obj.SQL.Add('AND @now BETWEEN ISNULL(FLOOR(convert(float, ion.date_begin)), @now) AND ISNULL(FLOOR(convert(float, ion.date_end)), @now)');
            Query_Inf_Obj.SQL.Add('ORDER BY ion.inf_obj_name');
          end;
  end;
  Query_Inf_Obj.Open;
  Screen.Cursor := 0;
end;

initialization
  dxInitialize;

finalization
  dxFinalize;

end.
