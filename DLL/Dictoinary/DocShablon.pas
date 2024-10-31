unit DocShablon;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Db, ADODB, StdCtrls, Buttons, ComCtrls, ToolWin, Menus, Variants, cxStyles,
  cxCustomData, cxGraphics, cxFilter, cxData, cxDataStorage, cxEdit, cxDBData,
  cxControls, cxGridCustomView, cxGridCustomTableView, cxGridTableView, Default,
  cxGridBandedTableView, cxGridDBBandedTableView, cxClasses, cxGridLevel, cxGrid,
  ImgList, cxTL, cxTextEdit, cxContainer, cxLabel, ExtCtrls,
  cxImage, cxPC, cxSplitter, dxGDIPlusClasses, dxBar, cxPropertiesStore, dxtree,
  cxCalendar, cxDBLookupComboBox, cxInplaceContainer,DateUtils, cxMemo, cxBarEditItem, cxLookAndFeels, cxLookAndFeelPainters, cxTLdxBarBuiltInMenu,
  cxNavigator, dxSkinsCore, dxSkinBlack, dxSkinBlue, dxSkinBlueprint, dxSkinCaramel, dxSkinCoffee, dxSkinDarkRoom, dxSkinDarkSide, dxSkinDevExpressDarkStyle, dxSkinDevExpressStyle, dxSkinFoggy,
  dxSkinGlassOceans, dxSkinHighContrast, dxSkiniMaginary, dxSkinLilian, dxSkinLiquidSky, dxSkinLondonLiquidSky, dxSkinMcSkin, dxSkinMetropolis, dxSkinMetropolisDark, dxSkinMoneyTwins,
  dxSkinOffice2007Black, dxSkinOffice2007Blue, dxSkinOffice2007Green, dxSkinOffice2007Pink, dxSkinOffice2007Silver, dxSkinOffice2010Black, dxSkinOffice2010Blue, dxSkinOffice2010Silver,
  dxSkinOffice2013DarkGray, dxSkinOffice2013LightGray, dxSkinOffice2013White, dxSkinOffice2016Colorful, dxSkinOffice2016Dark, dxSkinPumpkin, dxSkinSeven, dxSkinSevenClassic, dxSkinSharp,
  dxSkinSharpPlus, dxSkinSilver, dxSkinSpringTime, dxSkinStardust, dxSkinSummer2008, dxSkinTheAsphaltWorld, dxSkinsDefaultPainters, dxSkinValentine, dxSkinVisualStudio2013Blue,
  dxSkinVisualStudio2013Dark, dxSkinVisualStudio2013Light, dxSkinVS2010, dxSkinWhiteprint, dxSkinXmas2008Blue, dxSkinscxPCPainter, dxSkinsdxBarPainter, System.ImageList, cxImageList,
  cxDataControllerConditionalFormattingRulesManagerDialog, dxDateRanges, dxCore,
  dxSkinTheBezier, dxSkinOffice2019Colorful;

type
  TfmDocShablon = class(TForm)
    Query_Shablon: TADOQuery;
    DS_Shablon: TDataSource;
    ADOShablon: TADOConnection;
    OpenDialog1: TOpenDialog;
    Panel1: TPanel;
    Panel2: TPanel;
    cxLabel108: TcxLabel;
    cxImageList1: TcxImageList;
    cxTreeList1: TcxTreeList;
    cxTreeList1cxTreeListColumn1: TcxTreeListColumn;
    cxSplitter3: TcxSplitter;
    Panel3: TPanel;
    Panel4: TPanel;
    Panel7: TPanel;
    cxLabel1: TcxLabel;
    cxGrid1: TcxGrid;
    cxGrid1DBBandedTableView1: TcxGridDBBandedTableView;
    cxGrid1DBBandedTableView1doc_id: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1doc_type_cod: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1global_id: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1doc_describe: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1file_name: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1doc_type_describe: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1doc_cod: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1date_enter: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1FIO_users: TcxGridDBBandedColumn;
    cxGrid1Level1: TcxGridLevel;
    PaintBox1: TPaintBox;
    dxBarManager1: TdxBarManager;
    dxBarManager1Bar1: TdxBar;
    dxBarButton1: TdxBarButton;
    dxBarButton2: TdxBarButton;
    dxBarButton3: TdxBarButton;
    dxBarButton4: TdxBarButton;
    dxBarButton5: TdxBarButton;
    dxBarPopupMenu1: TdxBarPopupMenu;
    dxBarButton6: TdxBarButton;
    dxBarSubItem1: TdxBarSubItem;
    dxBarButton9: TdxBarButton;
    dxBarButton10: TdxBarButton;
    cxPropertiesStore1: TcxPropertiesStore;
    cxGrid1DBBandedTableView1global_color: TcxGridDBBandedColumn;
    cxStyleRepository1: TcxStyleRepository;
    cxStyle1: TcxStyle;
    cxGrid1DBBandedTableView1users_group_id: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1users_group_name: TcxGridDBBandedColumn;
    dxBarButton_FilterRecords1: TdxBarButton;
    dxBarButton7: TdxBarButton;
    dxBarButton8: TdxBarButton;
    dxBarButton11: TdxBarButton;
    procedure ADOShablonExecuteComplete(Connection: TADOConnection; RecordsAffected: Integer; const Error: Error; var EventStatus: TEventStatus; const Command: _Command; const Recordset: _Recordset);
    procedure cxGrid1DBBandedTableView1FocusedItemChanged(Sender: TcxCustomGridTableView; APrevFocusedItem, AFocusedItem: TcxCustomGridTableItem);
    procedure cxGrid1DBBandedTableView1KeyPress(Sender: TObject; var Key: Char);
    procedure cxGrid1DBBandedTableView1CustomDrawCell(Sender: TcxCustomGridTableView; ACanvas: TcxCanvas; AViewInfo: TcxGridTableDataCellViewInfo; var ADone: Boolean);
    procedure cxGrid1DBBandedTableView1DataControllerFilterChanged(Sender: TObject);
    procedure PaintBox1Paint(Sender: TObject);
    procedure dxBarButton6Click(Sender: TObject);
    procedure dxBarButton10Click(Sender: TObject);
    procedure dxBarButton9Click(Sender: TObject);
    procedure dxBarButton4Click(Sender: TObject);
    procedure dxBarButton2Click(Sender: TObject);
    procedure dxBarButton3Click(Sender: TObject);
    procedure dxBarButton1Click(Sender: TObject);
    procedure dxBarButton5Click(Sender: TObject);
    procedure cxGrid1DBBandedTableView1CustomDrawColumnHeader(Sender: TcxGridTableView; ACanvas: TcxCanvas; AViewInfo: TcxGridColumnHeaderViewInfo; var ADone: Boolean);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure ChangeSQL(doc_type_cod: integer);
    procedure cxTreeList1FocusedNodeChanged(Sender: TcxCustomTreeList; APrevFocusedNode, AFocusedNode: TcxTreeListNode);
    procedure dxBarButton_FilterRecords1Click(Sender: TObject);
    procedure dxBarButton7Click(Sender: TObject);
    procedure dxBarButton8Click(Sender: TObject);
  private
    Fglobal_id, Fdoc_type_cod, Fdoc_id, Fdoc_cod : integer;

  public
    Fusr_pwd: PUser_pwd;
    constructor Create(AOwner: TApplication; id:integer; doc_type_cod:integer; caption: string; usr_pwd:PUser_pwd; flag: boolean);
   published
    property _GetDoc_id  : integer read Fdoc_id;
    property _GetDoc_cod : integer read FDoc_cod;
  end;

function CreateWndDocShablon(AppHand:THandle; id:integer; doc_type_cod:integer; caption: string; usr_pwd:PUser_pwd; flag: boolean):variant; export;

var
  fmDocShablon: TfmDocShablon;

implementation
     uses ShellApi, Raznoe, DocShablonAdd, Period, Other;
{$R *.DFM}

function CreateWndDocShablon(AppHand:THandle; id:integer; doc_type_cod:integer; caption: string; usr_pwd:PUser_pwd; flag: boolean):variant; export;
begin
  Application.Handle := AppHand;
  fmDocShablon := TfmDocShablon.Create(Application,id, doc_type_cod, caption, usr_pwd, flag);
  try
    fmDocShablon.ShowModal;
    result := VarArrayOf([-9, fmDocShablon._GetDoc_id, fmDocShablon._GetDoc_cod]);
  finally
    fmDocShablon.Free;
  end;
end;


constructor TfmDocShablon.Create(AOwner: TApplication; id:integer; doc_type_cod: integer; caption: string; usr_pwd:PUser_pwd; flag: boolean);
var Query : TADOQuery;
    pNode : TcxTreeListNode;
        i : integer;
begin
  inherited Create(AOwner);
  Screen.Cursor := crHourglass;

  Fdoc_cod := -9;
  Fdoc_id  := -9;

  Fusr_pwd := usr_pwd;
  ADOShablon.Connected := False;
  ADOShablon.ConnectionString := 'Persist Security Info=True;Provider=SQLOLEDB.1;User ID='+usr_pwd^.user_name+';Password='+usr_pwd^.user_pass+';Initial Catalog='+usr_pwd^.catalog+';Data Source='+usr_pwd^.server+';';
  ADOShablon.Connected := True;

  Self.Caption := caption;
  Fglobal_id := id;
  Fdoc_type_cod := doc_type_cod;

  cxTreeList1.Clear;

  Query := TADOQuery.Create(nil);
  Query.Connection := ADOShablon;
  if doc_type_cod = -8 then begin
   Query.SQL.Add('SELECT * FROM inf_obj WHERE (type_inf_id = -101) ORDER BY inf_obj_name_full');
  end else begin
   Query.SQL.Add('SELECT * FROM inf_obj WHERE (type_inf_id = -101) AND (inf_obj_cod = '''+ IntToStr(doc_type_cod) +''')') ;
   Panel1.Visible := False;
   cxSplitter3.Visible := False;
   ChangeSQL(Fdoc_type_cod);
  end;

  if flag then begin
   dxBarButton7.Visible := ivAlways;
   cxGrid1DBBandedTableView1.OnDblClick := dxBarButton7Click;
  end;

  Query.Open;

  while not Query.EOF do begin
    pNode         := cxTreeList1.Add;
    pNode.Texts[0]:= Query.FieldByName('inf_obj_name').AsString;
    pNode.Data    := TObject(Query.FieldByName('inf_obj_cod').AsInteger);
    case Query.FieldByName('inf_obj_cod').AsInteger of
      1 : pNode.ImageIndex    := 18;
      2 : pNode.ImageIndex    := 68;
      3 : pNode.ImageIndex    := 31;
      5 : pNode.ImageIndex    := 9;
      7 : pNode.ImageIndex    := 82;
      8 : pNode.ImageIndex    := 90;
      9 : pNode.ImageIndex    := 76;
      10: pNode.ImageIndex    := 65;
      11: pNode.ImageIndex    := 22;
      12: pNode.ImageIndex    := 46;
      13: pNode.ImageIndex    := 44;
      14: pNode.ImageIndex    := 88;
      15: pNode.ImageIndex    := 35;
      17: pNode.ImageIndex    := 75;
      18: pNode.ImageIndex    := 124;
      21: pNode.ImageIndex    := 126;
      else pNode.ImageIndex   := 24;
    end;
    pNode.SelectedIndex := pNode.ImageIndex;
    Query.Next;
  end;

  Query.Free;

  if (not usr_pwd.user_func.Locate('func_name', 'set_shablon_doc_modify', [loCaseInsensitive])) and (not usr_pwd.user_func.Locate('func_name', 'set_shablon_rate_modify', [loCaseInsensitive])) then begin
    dxBarButton1.Enabled := False;
    dxBarButton2.Enabled := False;
    dxBarButton3.Enabled := False;
    for i := 0 to cxGrid1DBBandedTableView1.ColumnCount - 1 do
      cxGrid1DBBandedTableView1.Columns[i].Options.Editing := False;
  end;
  cxGrid1DBBandedTableView1doc_cod.Visible := True;

  StoreRegistryGrid(rgLoad,'\Software\Lis1\DocShablon_Grids', cxGrid1DBBandedTableView1);
  cxGrid1DBBandedTableView1doc_describe.SortOrder := soAscending;
  cxGrid1DBBandedTableView1doc_describe.SortIndex := 0;
  Screen.Cursor := crDefault;
end;

procedure TfmDocShablon.cxGrid1DBBandedTableView1CustomDrawCell(Sender: TcxCustomGridTableView; ACanvas: TcxCanvas; AViewInfo: TcxGridTableDataCellViewInfo; var ADone: Boolean);
begin
  if (AViewInfo.GridRecord.Values[cxGrid1DBBandedTableView1global_color.Index]<>NULL) then
    ACanvas.Brush.Color := AViewInfo.GridRecord.Values[cxGrid1DBBandedTableView1global_color.Index];

  if AViewInfo.GridRecord.Selected or AViewInfo.GridRecord.Focused then begin
    ACanvas.Brush.Color := clNavy;
    ACanvas.Font.Color := clWhite;
    if AViewInfo.Focused then
      ACanvas.Brush.Color := clBlue;
  end;
end;

procedure TfmDocShablon.cxGrid1DBBandedTableView1CustomDrawColumnHeader(Sender: TcxGridTableView; ACanvas: TcxCanvas; AViewInfo: TcxGridColumnHeaderViewInfo; var ADone: Boolean);
begin
  if AViewInfo.Column.Focused then begin
    ACanvas.Brush.Color := clNavy;
    ACanvas.Font.Color := clWhite;
  end;
end;

procedure TfmDocShablon.cxGrid1DBBandedTableView1DataControllerFilterChanged(Sender: TObject);
begin
  DrawcxGridColumnOnFiltered(Sender);
end;

procedure TfmDocShablon.cxGrid1DBBandedTableView1FocusedItemChanged(Sender: TcxCustomGridTableView; APrevFocusedItem, AFocusedItem: TcxCustomGridTableItem);
begin
  Sender.Painter.Invalidate;
end;

procedure TfmDocShablon.cxGrid1DBBandedTableView1KeyPress(Sender: TObject; var Key: Char);
begin
  FilterColumnGridOnKeyPress(TcxGridDBBandedTableView(TcxGridSite(Sender).GridView), Key);
end;

procedure TfmDocShablon.cxTreeList1FocusedNodeChanged(Sender: TcxCustomTreeList; APrevFocusedNode, AFocusedNode: TcxTreeListNode);
begin
  Fdoc_type_cod := Integer(AFocusedNode.Data);
  ChangeSQL(Integer(AFocusedNode.Data));

  if (AFocusedNode.Parent.Level <> -1) then cxLabel1.Caption := '  ' + AFocusedNode.Parent.Values[0] + ' / ' + AFocusedNode.Values[0]
  else cxLabel1.Caption := '  ' + AFocusedNode.Values[0];

  PaintBox1Paint(Sender);
end;

procedure TfmDocShablon.ADOShablonExecuteComplete(Connection: TADOConnection; RecordsAffected: Integer; const Error: Error; var EventStatus: TEventStatus; const Command: _Command; const Recordset: _Recordset);
begin
  if EventStatus = esErrorsOccured then begin
    Application.MessageBox(PWideChar(error.Description), 'Внимание', MB_OK);
    ShowTextMessage('', True);
  end;
end;

procedure TfmDocShablon.ChangeSQL(doc_type_cod: integer);
var str_sql : string;
begin
  Screen.Cursor := crHourglass;
  str_sql := 'SELECT * FROM view_doc_shablon_rights WHERE doc_type_cod = ''' + IntToStr(doc_type_cod) + ''' ORDER BY doc_describe';
  Query_Shablon.Close;
  Query_Shablon.SQL.Clear;
  Query_Shablon.SQL.Text := str_sql;
  Query_Shablon.Open;
  Screen.Cursor := crDefault;
end;

procedure TfmDocShablon.dxBarButton10Click(Sender: TObject);
begin
  cxGrid1DBBandedTableView1.OptionsView.GroupByBox := not cxGrid1DBBandedTableView1.OptionsView.GroupByBox;
end;

procedure TfmDocShablon.dxBarButton1Click(Sender: TObject);
begin
  fmDocShablonAdd := TfmDocShablonAdd.Create(Application, 0, Fdoc_type_cod);
  if fmDocShablonAdd.ShowModal = mrOK then RefreshQueryGrid(cxGrid1DBBandedTableView1,'doc_id',fmDocShablonAdd._GetDocId);
end;

procedure TfmDocShablon.dxBarButton2Click(Sender: TObject);
var SP_BLOB_modify: TADOStoredProc;
begin
  if Application.MessageBox('Вы точно хотите удалить документ?', 'Внимание', MB_OKCANCEL)=IDOK then begin
    Screen.Cursor := crHourglass;
    SP_BLOB_modify := TADOStoredProc.Create(nil);
    SP_BLOB_modify.Connection := ADOShablon;
    SP_BLOB_modify.ProcedureName := 'SP_BLOB_SHABLON_modify';
    SP_BLOB_modify.Parameters.Refresh;
    SP_BLOB_modify.Parameters.ParamByName('@type_action').Value := 2;
    SP_BLOB_modify.Parameters.ParamByName('@doc_id').Value := Query_Shablon.FieldByName('doc_id').AsInteger;
    SP_BLOB_modify.ExecProc;
    SP_BLOB_modify.Free;
    RefreshQueryGrid(cxGrid1DBBandedTableView1,'doc_id');
    Screen.Cursor := crDefault;
  end;
end;

procedure TfmDocShablon.dxBarButton3Click(Sender: TObject);
begin
  fmDocShablonAdd := TfmDocShablonAdd.Create(Application, 1, Fdoc_type_cod);
  fmDocShablonAdd._SetUpdate := Query_Shablon.FieldByName('doc_id').AsInteger;
  if fmDocShablonAdd.ShowModal=mrOK then RefreshQueryGrid(cxGrid1DBBandedTableView1, 'doc_id');
end;

procedure TfmDocShablon.dxBarButton4Click(Sender: TObject);
var     Q : TADOQuery;
 FileName : string;
begin
  if not Query_Shablon.eof then begin
    if Query_Shablon['file_name']<>null then begin
      FileName := Query_Shablon['file_name'];
      Insert(FloatToStr(Int(Now*1000000)), FileName, Pos('.', FileName));
      Q := TADOQuery.Create(nil);
      Q.Connection := ADOShablon;
      Q.SQL.Add('SELECT doc_image FROM doc_shablon WHERE doc_id=' + IntToStr(cxGrid1DBBandedTableView1doc_id.DataBinding.Field.AsInteger));
      Q.Open;
      LoadFileFromDB(FileName, Q.FieldByName('doc_image')  as TBlobField, False);
      ShellExecute(Handle, 'open', PChar(FileName), nil, nil, SW_SHOWNORMAL);
      Q.Free;
    end else Application.MessageBox('НЕТ ФАЙЛА К ДАННОЙ ЗАПИСИ', 'ВНИМАНИЕ', MB_OK);
  end;
end;

procedure TfmDocShablon.dxBarButton5Click(Sender: TObject);
begin
  RefreshQueryGrid(cxGrid1DBBandedTableView1, 'doc_id');
end;

procedure TfmDocShablon.dxBarButton6Click(Sender: TObject);
begin
  PrintcxGrid(cxGrid1DBBandedTableView1);
end;

procedure TfmDocShablon.dxBarButton7Click(Sender: TObject);
begin
  Fdoc_id  := cxGrid1DBBandedTableView1doc_id.DataBinding.Field.AsInteger;
  Fdoc_cod := cxGrid1DBBandedTableView1doc_cod.DataBinding.Field.AsInteger;
  ModalResult    := mrOk;
end;

procedure TfmDocShablon.dxBarButton8Click(Sender: TObject);
begin
 SetRecordColor('doc_id', cxGrid1DBBandedTableView1, 'DOC_BLOB', TControl(Sender).Tag=0);
 RefreshQueryGrid(cxGrid1DBBandedTableView1, 'doc_id');
end;

procedure TfmDocShablon.dxBarButton9Click(Sender: TObject);
begin
  SetdxDBGridColumns(cxGrid1DBBandedTableView1);
end;

{$REGION 'Фильтр по всем записям'}
procedure TfmDocShablon.dxBarButton_FilterRecords1Click(Sender: TObject);
begin
  cxGrid1DBBandedTableView1.Filtering.ColumnFilteredItemsList := not dxBarButton_FilterRecords1.Down;
end;
{$ENDREGION 'Фильтр по всем записям'}

procedure TfmDocShablon.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  StoreRegistryGrid(rgSave,'\Software\Lis1\DocShablon_Grids', cxGrid1DBBandedTableView1);

  DeleteFileFromDir();

  Action := caFree;
end;

procedure TfmDocShablon.PaintBox1Paint(Sender: TObject);
var rect : TRect;
begin
  if Panel1.Visible then begin
    rect := PaintBox1.ClientRect;

    rect.Left   := rect.Left   + 2;
    rect.Top    := rect.Top    + 2;
    rect.Right  := rect.Right  - 2;
    rect.Bottom := rect.Bottom - 2;

    PaintBox1.Canvas.Brush.Color := clBtnShadow;
    PaintBox1.Canvas.FillRect(PaintBox1.ClientRect);
    if cxTreeList1.FocusedNode = nil then begin
      cxTreeList1.Items[0].Selected := True;
      cxTreeList1.Items[0].Focused := True;
    end;

    cxImageList1.Draw(PaintBox1.Canvas, rect, cxTreeList1.FocusedNode.ImageIndex, True);
  end;
end;

end.
