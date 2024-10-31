unit GlobalAlias;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters, cxStyles,
  cxCustomData, cxFilter, cxData, cxDataStorage, cxEdit, DB, cxDBData, dxBar, cxClasses, ADODB, cxPropertiesStore,
  ImgList, cxGridCustomView, cxGridCustomTableView, cxGridTableView, cxGridBandedTableView,
  cxGridDBBandedTableView, cxGridLevel, cxGrid, dxBarExtDBItems, Default,
  dxSkinsCore, dxSkinBlack, dxSkinBlue, dxSkinBlueprint, dxSkinCaramel,
  dxSkinCoffee, dxSkinDarkRoom, dxSkinDarkSide, dxSkinDevExpressDarkStyle,
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
  dxSkinXmas2008Blue, dxSkinscxPCPainter, cxNavigator, dxSkinsdxBarPainter, dxSkinOffice2016Colorful, dxSkinOffice2016Dark, dxSkinVisualStudio2013Blue, dxSkinVisualStudio2013Dark,
  dxSkinVisualStudio2013Light, System.ImageList, cxImageList,
  cxDataControllerConditionalFormattingRulesManagerDialog, dxSkinTheBezier, dxDateRanges;

type
  TfmGlobalAlias = class(TForm)
    cxGrid1Level1: TcxGridLevel;
    cxGrid1: TcxGrid;
    cxGrid1DBBandedTableView1: TcxGridDBBandedTableView;
    ADOAlias: TADOConnection;
    ImageList1: TcxImageList;
    cxPropertiesStore1: TcxPropertiesStore;
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
    Query_Alias: TADOQuery;
    DS_Alias: TDataSource;
    dxBarManager1: TdxBarManager;
    dxBarManager1Bar1: TdxBar;
    dxBarButton1: TdxBarButton;
    dxBarButton2: TdxBarButton;
    dxBarButton3: TdxBarButton;
    dxBarButton4: TdxBarButton;
    dxBarButton5: TdxBarButton;
    dxBarButton6: TdxBarButton;
    dxBarSubItem1: TdxBarSubItem;
    dxBarButton7: TdxBarButton;
    dxBarButton8: TdxBarButton;
    dxBarButton9: TdxBarButton;
    dxBarButton10: TdxBarButton;
    dxBarPopupMenu1: TdxBarPopupMenu;
    cxGrid1DBBandedTableView1alias_id: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1global_color: TcxGridDBBandedColumn;
    dxBarLookupCombo1: TdxBarLookupCombo;
    Query_TypeTable: TADOQuery;
    DS_TypeTable: TDataSource;
    cxGrid1DBBandedTableView1inf_obj_name: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1alias_name: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1rows_id: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1inf_obj_cod: TcxGridDBBandedColumn;
    N18: TdxBarButton;
    N15: TdxBarButton;
    N16: TdxBarButton;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure dxBarButton1Click(Sender: TObject);
    procedure dxBarButton2Click(Sender: TObject);
    procedure dxBarButton3Click(Sender: TObject);
    procedure dxBarButton5Click(Sender: TObject);
    procedure dxBarButton7Click(Sender: TObject);
    procedure dxBarButton6Click(Sender: TObject);
    procedure dxBarButton9Click(Sender: TObject);
    procedure dxBarButton10Click(Sender: TObject);
    procedure cxGrid1DBBandedTableView1CustomDrawCell(Sender: TcxCustomGridTableView; ACanvas: TcxCanvas; AViewInfo: TcxGridTableDataCellViewInfo; var ADone: Boolean);
    procedure cxGrid1DBBandedTableView1CustomDrawColumnHeader(Sender: TcxGridTableView; ACanvas: TcxCanvas; AViewInfo: TcxGridColumnHeaderViewInfo; var ADone: Boolean);
    procedure cxGrid1DBBandedTableView1FocusedItemChanged(Sender: TcxCustomGridTableView; APrevFocusedItem, AFocusedItem: TcxCustomGridTableItem);
    procedure cxGrid1DBBandedTableView1KeyPress(Sender: TObject; var Key: Char);
    procedure dxBarLookupCombo1KeyValueChange(Sender: TObject);
  private
    { Private declarations }
  public
    Fusr_pwd : PUser_pwd;
    constructor Create(App: TApplication; flag: boolean; usr_pwd: PUser_pwd);
  published

  end;

function CreateWndGlobalAlias(AppHand: THandle; flag: boolean; usr_pwd: PUser_pwd) : variant; export;
function CreateWndGlobalAlias_New(AppHand: THandle; usr_pwd: PUser_pwd; type_table_cod, alias_name: string) : variant; export;

var
  fmGlobalAlias: TfmGlobalAlias;

implementation
  uses Other, GlobalAliasAdd, Raznoe;
{$R *.dfm}

function CreateWndGlobalAlias(AppHand: THandle; flag: boolean; usr_pwd:PUser_pwd) : variant; export;
begin
   Application.Handle := AppHand;
   fmGlobalAlias := TfmGlobalAlias.Create(Application, flag, usr_pwd);
   with fmGlobalAlias do
    try
      if ShowModal=mrOK then result := VarArrayOf([0, ''])
      else result := VarArrayOf([-9, '']);
    finally
      Free;
    end;
end;

function CreateWndGlobalAlias_New(AppHand: THandle; usr_pwd: PUser_pwd; type_table_cod, alias_name: string) : variant; export;
begin
   Application.Handle := AppHand;
   fmGlobalAlias := TfmGlobalAlias.Create(Application, False, usr_pwd);
   fmGlobalAliasAdd := TfmGlobalAliasAdd.Create(Application, type_table_cod);
   fmGlobalAliasAdd._SetNewFromLoad := alias_name;
   with fmGlobalAliasAdd do
    try
      if ShowModal=mrOK then result := VarArrayOf([_GetAliasId, _GetSetQuery, _GetInfObjId])
      else result := VarArrayOf([-9, _GetSetQuery]);
    finally
      fmGlobalAlias.Free;
      Free;
    end;
end;

constructor TfmGlobalAlias.Create(App:TApplication; flag:boolean; usr_pwd:PUser_pwd);
begin
  Screen.Cursor := crHourglass;
  inherited Create(App);

  Fusr_pwd := usr_pwd;
  ADOAlias.Connected := False;
  ADOAlias.ConnectionString := 'Persist Security Info=True;Provider=SQLOLEDB.1;User ID='+usr_pwd^.user_name+';Password='+usr_pwd^.user_pass+';Initial Catalog='+usr_pwd^.catalog+';Data Source='+usr_pwd^.server+';';
  ADOAlias.Connected := True;

//  Query_Alias.Open;
  Query_TypeTable.Open;
  dxBarLookupCombo1.KeyValue := Query_TypeTable.FieldByName('type_inf_id').Value;

 // StoreRegistryGrid(rgLoad, '\Software\LIS\GlobalAlias_Grids', cxGrid1DBBandedTableView1);
  Screen.Cursor := crDefault;
end;


procedure TfmGlobalAlias.cxGrid1DBBandedTableView1CustomDrawCell(Sender: TcxCustomGridTableView; ACanvas: TcxCanvas; AViewInfo: TcxGridTableDataCellViewInfo; var ADone: Boolean);
begin
  if (AViewInfo.GridRecord.Values[cxGrid1DBBandedTableView1global_color.Index]<>NULL) then ACanvas.Brush.Color := AViewInfo.GridRecord.Values[cxGrid1DBBandedTableView1global_color.Index];

  if AViewInfo.GridRecord.Selected or AViewInfo.GridRecord.Focused then begin
    ACanvas.Brush.Color := clNavy;
    ACanvas.Font.Color := clWhite;
    if AViewInfo.Focused then ACanvas.Brush.Color := clBlue;
  end;
end;

procedure TfmGlobalAlias.cxGrid1DBBandedTableView1CustomDrawColumnHeader(Sender: TcxGridTableView; ACanvas: TcxCanvas; AViewInfo: TcxGridColumnHeaderViewInfo; var ADone: Boolean);
begin
  if AViewInfo.Column.Focused then begin
    ACanvas.Brush.Color := clNavy;
    ACanvas.Font.Color := clWhite;
  end;
end;

procedure TfmGlobalAlias.cxGrid1DBBandedTableView1FocusedItemChanged(Sender: TcxCustomGridTableView; APrevFocusedItem, AFocusedItem: TcxCustomGridTableItem);
begin
  Sender.Painter.Invalidate;
end;

procedure TfmGlobalAlias.cxGrid1DBBandedTableView1KeyPress(Sender: TObject; var Key: Char);
begin
  FilterColumnGridOnKeyPress(cxGrid1DBBandedTableView1, Key);
end;

procedure TfmGlobalAlias.dxBarButton10Click(Sender: TObject);
begin
  cxGrid1DBBandedTableView1.OptionsView.GroupByBox := not cxGrid1DBBandedTableView1.OptionsView.GroupByBox;
end;

procedure TfmGlobalAlias.dxBarButton1Click(Sender: TObject);
begin
  fmGlobalAliasAdd := TfmGlobalAliasAdd.Create(Application, Query_TypeTable.FieldByName('group_cod').AsString);
  if fmGlobalAliasAdd.ShowModal = mrOk then RefreshQueryGrid(cxGrid1DBBandedTableView1, 'alias_id', fmGlobalAliasAdd._GetAliasId);
end;

procedure TfmGlobalAlias.dxBarButton2Click(Sender: TObject);
begin
  fmGlobalAliasAdd := TfmGlobalAliasAdd.Create(Application, Query_TypeTable.FieldByName('group_cod').AsString);
  fmGlobalAliasAdd._SetUpdate := cxGrid1DBBandedTableView1alias_id.DataBinding.Field.AsInteger;
  if fmGlobalAliasAdd.ShowModal = mrOk then RefreshQueryGrid(cxGrid1DBBandedTableView1, 'alias_id', fmGlobalAliasAdd._GetAliasId);
end;


procedure TfmGlobalAlias.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action := caFree;
  StoreRegistryGrid(rgSave, '\Software\LIS\GlobalAlias_Grids', cxGrid1DBBandedTableView1);
end;

procedure TfmGlobalAlias.dxBarButton3Click(Sender: TObject);
var i : integer;
   SP : TADOStoredProc;
begin
  if Application.MessageBox('Вы точно уверены, что хотите удалить?', 'Внимание', MB_OKCANCEL) = ID_OK then begin
    Screen.Cursor := crHourglass;

    SP := TADOStoredProc.Create(nil);
    SP.Connection := ADOAlias;
    SP.ProcedureName := 'sp_global_alias_modify;1';
    SP.Parameters.Refresh;
    for i := 0 to cxGrid1DBBandedTableView1.Controller.SelectedRowCount - 1 do begin
      SP.Close;
      SP.Parameters.Refresh;
      SP.Parameters.ParamByName('@type_action').Value := 2;
      SP.Parameters.ParamByName('@alias_id').Value := cxGrid1DBBandedTableView1.Controller.SelectedRows[i].Values[cxGrid1DBBandedTableView1alias_id.Index];
      try
        SP.ExecProc;
      except
      end;
      ShowTextMessage('Осталось ' + IntToStr(cxGrid1DBBandedTableView1.Controller.SelectedRowCount - i) + ' записей...', False);
    end;
    ShowTextMessage;

    RefreshQueryGrid(cxGrid1DBBandedTableView1, 'alias_id');
    Screen.Cursor := crDefault;
  end;
end;

procedure TfmGlobalAlias.dxBarButton5Click(Sender: TObject);
begin
  RefreshQueryGrid(cxGrid1DBBandedTableView1, 'alias_id', cxGrid1DBBandedTableView1alias_id.DataBinding.Field.AsInteger);
end;

procedure TfmGlobalAlias.dxBarButton6Click(Sender: TObject);
begin
  PrintcxGrid(cxGrid1DBBandedTableView1);
end;

procedure TfmGlobalAlias.dxBarButton7Click(Sender: TObject);
begin
//  case TdxBarButton(Sender).Tag of
////    0 : SetRecordColor(cxGrid1DBBandedTableView1alias_id, True);
////    1 : SetRecordColor(cxGrid1DBBandedTableView1alias_id, False);
//  end;

  RefreshQueryGrid(cxGrid1DBBandedTableView1, 'alias_id', cxGrid1DBBandedTableView1alias_id.DataBinding.Field.AsInteger);
end;

procedure TfmGlobalAlias.dxBarButton9Click(Sender: TObject);
begin
  SetdxDBGridColumns(cxGrid1DBBandedTableView1);
end;

procedure TfmGlobalAlias.dxBarLookupCombo1KeyValueChange(Sender: TObject);
begin
  Screen.Cursor := -11;

  Query_Alias.Close;
  Query_Alias.SQL.Clear;
  Query_TypeTable.Locate('type_inf_id', dxBarLookupCombo1.KeyValue, [loCaseinsensitive]);
  case Query_TypeTable.FieldByName('group_cod').AsInteger of
    16 : Query_Alias.SQL.Add('SELECT * FROM view_alias_NODE ORDER BY inf_obj_name');
    10 : Query_Alias.SQL.Add('SELECT * FROM view_alias_ETSNG ORDER BY inf_obj_name');
    09 : Query_Alias.SQL.Add('SELECT * FROM view_alias_GNG ORDER BY inf_obj_name');
    13 : Query_Alias.SQL.Add('SELECT * FROM view_alias_ROAD ORDER BY inf_obj_name');
    11 : Query_Alias.SQL.Add('SELECT * FROM view_alias_STATE ORDER BY inf_obj_name');
    114 : Query_Alias.SQL.Add('SELECT * FROM view_alias_OPER_VAGON ORDER BY inf_obj_name');
    115 : Query_Alias.SQL.Add('SELECT * FROM view_alias_OPER_TRAIN ORDER BY inf_obj_name');
  end;

  Query_Alias.Open;
  Screen.Cursor := 0;
end;

end.
