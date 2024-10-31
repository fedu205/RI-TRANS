unit DocBlob;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Db, ADODB, StdCtrls, Buttons, ComCtrls, ToolWin, Menus, Variants, cxStyles,
  cxCustomData, cxGraphics, cxFilter, cxData, cxDataStorage, cxEdit, cxDBData,
  cxControls, cxGridCustomView, cxGridCustomTableView, cxGridTableView, Default,
  cxGridBandedTableView, cxGridDBBandedTableView, cxClasses, cxGridLevel, cxGrid,
  ImgList, cxTL, cxTextEdit, cxContainer, cxLabel, ExtCtrls, StrUtils, DateUtils,
  cxImage, cxPC, cxSplitter, dxGDIPlusClasses, dxBar, cxPropertiesStore, dxtree,
  cxCalendar, cxDBLookupComboBox, cxInplaceContainer, cxMemo, cxBarEditItem, cxLookAndFeels,
  cxLookAndFeelPainters, dxBarExtItems, dxStatusBar, cxCurrencyEdit, cxTLdxBarBuiltInMenu,
  cxCheckBox, OleCtnrs, OleCtrls, SHDocVw, dxSkinsCore, dxSkinBlack, dxSkinBlue,
  dxSkinBlueprint, dxSkinCaramel, dxSkinCoffee, dxSkinDarkRoom, dxSkinDarkSide,
  dxSkinDevExpressDarkStyle, dxSkinDevExpressStyle, dxSkinFoggy,
  dxSkinGlassOceans, dxSkinHighContrast, dxSkiniMaginary, dxSkinLilian,
  dxSkinLiquidSky, dxSkinLondonLiquidSky, dxSkinMcSkin, dxSkinMetropolis,
  dxSkinMetropolisDark, dxSkinMoneyTwins, dxSkinOffice2007Black,
  dxSkinOffice2007Blue, dxSkinOffice2007Green, dxSkinOffice2007Pink,
  dxSkinOffice2007Silver, dxSkinOffice2010Black, dxSkinOffice2010Blue,
  dxSkinOffice2010Silver, dxSkinOffice2013DarkGray, dxSkinOffice2013LightGray,
  dxSkinOffice2013White, dxSkinPumpkin, dxSkinSeven, dxSkinSevenClassic,
  dxSkinSharp, dxSkinSharpPlus, dxSkinSilver, dxSkinSpringTime, dxSkinStardust,
  dxSkinSummer2008, dxSkinTheAsphaltWorld, dxSkinsDefaultPainters,
  dxSkinValentine, dxSkinVS2010, dxSkinWhiteprint, dxSkinXmas2008Blue,
  dxSkinscxPCPainter, cxNavigator, dxSkinsdxStatusBarPainter,
  dxSkinsdxBarPainter, dxSkinOffice2016Colorful, dxSkinOffice2016Dark,
  dxSkinVisualStudio2013Blue, dxSkinVisualStudio2013Dark,
  dxSkinVisualStudio2013Light, System.ImageList, cxImageList,
  cxDataControllerConditionalFormattingRulesManagerDialog, dxSkinTheBezier,
  dxDateRanges, dxSkinOffice2019Colorful;

type
  TNodeTag = class(TObject)
    Fdoc_type_cod  : integer;
    Fdoc_folder_id : integer;
  public
    constructor Create(doc_type_cod: integer; doc_folder_id: integer);

    property doc_type_cod  : integer read Fdoc_type_cod write Fdoc_type_cod;
    property doc_folder_id : integer read Fdoc_folder_id write Fdoc_folder_id;
  end;

type
  TfmDocBlob = class(TForm)
    DS_DocBlob_Get: TDataSource;
    ADOShablon: TADOConnection;
    Panel1: TPanel;
    Panel2: TPanel;
    cxLabel108: TcxLabel;
    cxTreeList1: TcxTreeList;
    cxTreeList1cxTreeListColumn1: TcxTreeListColumn;
    cxSplitter3: TcxSplitter;
    Panel3: TPanel;
    Panel4: TPanel;
    cxGrid1: TcxGrid;
    cxGrid1DBBandedTableView2: TcxGridDBBandedTableView;
    cxGrid1Level1: TcxGridLevel;
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
    dxBarButton7: TdxBarButton;
    dxBarButton8: TdxBarButton;
    dxBarButton9: TdxBarButton;
    dxBarButton10: TdxBarButton;
    cxPropertiesStore1: TcxPropertiesStore;
    cxStyleRepository1: TcxStyleRepository;
    cxStyle_Bold: TcxStyle;
    dxBarSubItem2: TdxBarSubItem;
    dxBarButton11: TdxBarButton;
    dxBarButton12: TdxBarButton;
    cxImageList1: TcxImageList;
    cxGrid1DBBandedTableView2doc_id: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView2doc_describe: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView2file_name: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView2doc_cod: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView2FIO_users: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView2date_enter: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView2global_color: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView2doc_location_date: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView2doc_location_FIO_users: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView2sign_customer_id: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView2sign_self_id: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView2sign_customer_name: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView2sign_self_name: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView2doc_location_id: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView2doc_location_name: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView2doc_image_date: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView2doc_location_FIO_users_id: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView2doc_cod1: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView2doc_type_id: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView2doc_type_cod: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView2doc_type_describe: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView2users_group_id: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView2sign_customer_cod: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView2sign_self_cod: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView2docs_id: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView2docs_status_name: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView2contract_id: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView2firm_id: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView2invoice_id: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView2pretenzia_id: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView2fact_repair_id: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView2doc_original_date: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView2doc_invoice_score_cod: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView2doc_kind_id: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView2contract_cod: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView2firm_customer_name: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView2firm_self_name: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView2date_begin: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView2date_end: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView2curator_FIO_users: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView2invoice_cod: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView2invoice_date: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView2pretenzia_cod: TcxGridDBBandedColumn;
    SP_DocBlob_Get: TADOStoredProc;
    cxGrid1DBBandedTableView2doc_kind_name: TcxGridDBBandedColumn;
    dxStatusBar1: TdxStatusBar;
    cxGrid1DBBandedTableView2doc_image_size: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView2type_contract_name: TcxGridDBBandedColumn;
    dxBarButton_FilterRecords1: TdxBarButton;
    cxGrid1DBBandedTableView2zfto_score_id: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView2fact_num: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView2doc_date_end: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView2num_arc_book: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView2index_arc_book: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView2firm_cod: TcxGridDBBandedColumn;
    dxBarButton13: TdxBarButton;
    cxGrid1DBBandedTableView2process_step_name: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView2docs_date_agree: TcxGridDBBandedColumn;
    cxStyleRepository2: TcxStyleRepository;
    cxStyle1: TcxStyle;
    dxBarButton14: TdxBarButton;
    dxBarSubItem3: TdxBarSubItem;
    dxBarButton18: TdxBarButton;
    Panel7: TPanel;
    PaintBox1: TPaintBox;
    cxLabel1: TcxLabel;
    cxSplitter1: TcxSplitter;
    Panel5: TPanel;
    WebBrowser1: TWebBrowser;
    dxBarButton19: TdxBarButton;
    dxBarButton20: TdxBarButton;
    dxBarButton15: TdxBarButton;
    cxGrid1DBBandedTableView2firm_name_short: TcxGridDBBandedColumn;
    dxBarPopupMenu2: TdxBarPopupMenu;
    dxBarButton16: TdxBarButton;
    dxBarButton17: TdxBarButton;
    dxBarButton21: TdxBarButton;
    cxGrid1DBBandedTableView2set_lzh: TcxGridDBBandedColumn;
    procedure ADOShablonExecuteComplete(Connection: TADOConnection; RecordsAffected: Integer; const Error: Error; var EventStatus: TEventStatus; const Command: _Command; const Recordset: _Recordset);
    procedure cxGrid1DBBandedTableView2FocusedItemChanged(Sender: TcxCustomGridTableView; APrevFocusedItem, AFocusedItem: TcxCustomGridTableItem);
    procedure dxBarButton11Click(Sender: TObject);
    procedure cxGrid1DBBandedTableView2KeyPress(Sender: TObject; var Key: Char);
    procedure cxGrid1DBBandedTableView2CustomDrawCell(Sender: TcxCustomGridTableView; ACanvas: TcxCanvas; AViewInfo: TcxGridTableDataCellViewInfo; var ADone: Boolean);
    procedure cxGrid1DBBandedTableView1DataControllerFilterChanged(Sender: TObject);
    procedure PaintBox1Paint(Sender: TObject);
    procedure dxBarButton6Click(Sender: TObject);
    procedure dxBarButton10Click(Sender: TObject);
    procedure dxBarButton9Click(Sender: TObject);
    procedure dxBarButton7Click(Sender: TObject);
    procedure dxBarButton4Click(Sender: TObject);
    procedure dxBarButton2Click(Sender: TObject);
    procedure dxBarButton3Click(Sender: TObject);
    procedure dxBarButton1Click(Sender: TObject);
    procedure dxBarButton5Click(Sender: TObject);
    procedure cxGrid1DBBandedTableView2CustomDrawColumnHeader(Sender: TcxGridTableView; ACanvas: TcxCanvas; AViewInfo: TcxGridColumnHeaderViewInfo; var ADone: Boolean);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure cxTreeList1FocusedNodeChanged(Sender: TcxCustomTreeList; APrevFocusedNode, AFocusedNode: TcxTreeListNode);
    procedure dxBarButton_FilterRecords1Click(Sender: TObject);
    procedure dxBarButton13Click(Sender: TObject);
    procedure dxBarButton14Click(Sender: TObject);
    procedure dxBarButton18Click(Sender: TObject);
    procedure cxGrid1DBBandedTableView2FocusedRecordChanged(
      Sender: TcxCustomGridTableView; APrevFocusedRecord,
      AFocusedRecord: TcxCustomGridRecord;
      ANewItemRecordFocusingChanged: Boolean);
    procedure dxBarButton20Click(Sender: TObject);
    procedure dxBarButton15Click(Sender: TObject);
    procedure dxBarButton17Click(Sender: TObject);
    procedure dxBarButton16Click(Sender: TObject);
    procedure dxBarButton21Click(Sender: TObject);
    procedure cxTreeList1DragOver(Sender, Source: TObject; X, Y: Integer; State: TDragState; var Accept: Boolean);
    procedure cxTreeList1DragDrop(Sender, Source: TObject; X, Y: Integer);
  private
    Fglobal_id     : integer;
    Fobject_name   : string;
    Fusr_pwd       : PUser_pwd;
    Fdate1, Fdate2 : TDateTime;

    Fset_recalc_sql : Boolean;

    procedure   LoadFolder(ANode : TcxTreeListNode; QFld : TADOQuery);
    procedure   ReLoadFolder(doc_type_cod, doc_folder_id : integer);
    function    FindNode(StartNode : TcxTreeListNode; doc_type_cod, doc_folder_id : integer) : TcxTreeListNode;
    procedure   ChangeSQL();
  public
    constructor Create(AOwner: TApplication; global_id: integer; caption: string; usr_pwd:PUser_pwd);
  end;


function CreateWndDocBlob(AppHand:THandle; global_id: integer; caption: string; usr_pwd:PUser_pwd):variant; export;

var
  fmDocBlob: TfmDocBlob;

implementation
     uses ShellApi, Raznoe, DocBlobAdd, Period, Other, PretenziaAdd, DocBlobAddNew, DocFolderAdd;
{$R *.DFM}

function CreateWndDocBlob(AppHand:THandle; global_id: integer; caption: string; usr_pwd:PUser_pwd):variant; export;
begin
  Application.Handle := AppHand;
  fmDocBlob := TfmDocBlob.Create(Application, global_id, caption, usr_pwd);
  try
    fmDocBlob.ShowModal;
    result := VarArrayOf([-9, '', '']);
  finally
    fmDocBlob.Free;
  end;
end;

constructor TNodeTag.Create(doc_type_cod: integer; doc_folder_id: integer);
begin
  Fdoc_type_cod  := doc_type_cod;
  Fdoc_folder_id := doc_folder_id;
end;

constructor TfmDocBlob.Create(AOwner: TApplication; global_id: integer; caption: string; usr_pwd:PUser_pwd);
var     Q, QFld : TADOQuery;
    pNode : TcxTreeListNode;
        i : integer;
begin
  inherited Create(AOwner);
  Screen.Cursor := crHourglass;

  ADOShablon.Connected := False;
  ADOShablon.ConnectionString := 'Persist Security Info=True;Provider=SQLOLEDB.1;User ID='+usr_pwd^.user_name+';Password='+usr_pwd^.user_pass+';Initial Catalog='+usr_pwd^.catalog+';Data Source='+usr_pwd^.server+';';
  ADOShablon.Connected := True;

  self.Caption := caption;
  Fglobal_id   := global_id;

  Fset_recalc_sql := True;

  Q := TADOQuery.Create(nil);
  Q.Connection := ADOShablon;
  Q.SQL.Add('SELECT	global_id, object_physic_name ');
  Q.SQL.Add('FROM	  global_id LEFT JOIN object_base ON global_id.object_id = object_base.object_id');
  Q.SQL.Add('WHERE	global_id = ' + IntToStr(global_id));
  Q.Open;

  Fobject_name := Q.FieldByName('object_physic_name').AsString;
  Fusr_pwd     := usr_pwd;

  Q.Close;
  Q.SQL.Clear;
  case IndexText(Fobject_name, ['CONTRACT','FIRM','INVOICE','PRETENZIA','FACT_REPAIR','ZFTO_SCORE']) of
    0: Q.SQL.Add('SELECT * FROM inf_obj WHERE (type_inf_id = -101) AND (inf_obj_cod  in (''1'', ''2'', ''3'', ''5'', ''8'', ''9'', ''10'', ''11'', ''12'', ''13'', ''18'', ''20'')) ORDER BY inf_obj_name_full');
    1: Q.SQL.Add('SELECT * FROM inf_obj WHERE (type_inf_id = -101) AND (inf_obj_cod  in (''7'', ''13'', ''18'', ''20'')) ORDER BY inf_obj_name_full');
    2: Q.SQL.Add('SELECT * FROM inf_obj WHERE (type_inf_id = -101) AND (inf_obj_cod  in (''3'')) ORDER BY inf_obj_name_full');
    3: Q.SQL.Add('SELECT * FROM inf_obj WHERE (type_inf_id = -101) AND (inf_obj_cod  in (''8'')) ORDER BY inf_obj_name_full');
    4: Q.SQL.Add('SELECT * FROM inf_obj WHERE (type_inf_id = -101) AND (inf_obj_cod  in (''14'')) ORDER BY inf_obj_name_full');
    5: Q.SQL.Add('SELECT * FROM inf_obj WHERE (type_inf_id = -101) AND (inf_obj_cod  in (''15'')) ORDER BY inf_obj_name_full');
    else Q.SQL.Add('SELECT * FROM inf_obj WHERE (type_inf_id = -101) ORDER BY inf_obj_name_full');
  end;
  Q.Open;

  cxTreeList1.Clear;
  while not Q.EOF do begin
    pNode           := cxTreeList1.Add;
    pNode.Texts[0]  := Q.FieldByName('inf_obj_name').AsString;
    pNode.Data      := TNodeTag.Create(Q.FieldByName('inf_obj_cod').AsInteger, -9);
//    pNode.Data           := TObject(Q.FieldByName('inf_obj_cod').AsInteger);
    case Q.FieldByName('inf_obj_cod').AsInteger of
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
    Q.Next;
  end;
  Q.Free;

  QFld := TADOQuery.Create(nil);
  QFld.Connection := ADOShablon;
  QFld.SQL.Add('SELECT DOC_FOLDER.*, doc_type_cod = INF_OBJ.inf_obj_cod');
  QFld.SQL.Add('FROM DOC_FOLDER JOIN INF_OBJ ON DOC_FOLDER.doc_type_id = INF_OBJ.inf_obj_id');
  QFld.SQL.Add('WHERE users_group_id = ' + IntToStr(Fusr_pwd.user_group_id));
  QFld.SQL.Add('ORDER BY folder_name');
  QFld.Open;

  // Загрузка Папок
  for i := 0 to cxTreeList1.Count - 1 do
    LoadFolder(cxTreeList1.Items[i], QFld);

  QFld.Free;

  // ---- проверка прав на изменение документов ----------
  if not usr_pwd.user_func.Locate('func_name', 'set_doc_modify', [loCaseInsensitive]) then begin
    dxBarButton1.Enabled := False;
    dxBarButton2.Enabled := False;
    dxBarButton3.Enabled := False;
  end;

  StoreRegistryGrid(rgLoad,'\Software\Lis1\DocBlob_Grids', cxGrid1DBBandedTableView2);
  cxGrid1DBBandedTableView2docs_id.Position.ColIndex := 0;
  cxGrid1DBBandedTableView2docs_status_name.Position.ColIndex := 1;
  cxGrid1DBBandedTableView2docs_date_agree.Position.ColIndex := 2;
  cxGrid1DBBandedTableView2process_step_name.Position.ColIndex := 3;
  LoadRegistryDate_('\Software\LIS1\DateTime\DocBlob', Fdate1, Fdate2);

  Fdate2 := EndOfTheMonth(Now);
  dxBarSubItem2.Caption := PeriodToStr(Fdate1, Fdate2, True);
  MonitorEventFormOpen('OPEN_FORM', self.Name, ADOShablon, -9);

//  Fset_recalc_sql := True;
//  ChangeSQL();

  Screen.Cursor := crDefault;
end;

procedure TfmDocBlob.LoadFolder(ANode : TcxTreeListNode; QFld : TADOQuery);
var pNode : TcxTreeListNode;
    i : integer;
begin
//  ANode.DeleteChildren;

  QFld.Filter := '(doc_type_cod = ''' + IntToStr(TNodeTag(ANode.Data).doc_type_cod) + ''')';
  if TNodeTag(ANode.Data).doc_folder_id = -9 then
    QFld.Filter := QFld.Filter + ' AND (parent_id = NULL)'
  else
    QFld.Filter := QFld.Filter + ' AND (parent_id = ' + IntToStr(TNodeTag(ANode.Data).doc_folder_id) + ')';
  QFld.Filtered := True;
  QFld.First;

  while not QFld.Eof do begin
    pNode               := ANode.AddChild;
    pNode.Texts[0]      := QFld.FieldByName('folder_name').AsString;
    pNode.Data          := TNodeTag.Create(QFld.FieldByName('doc_type_cod').AsInteger, QFld.FieldByName('doc_folder_id').AsInteger);
    pNode.ImageIndex    := iif(QFld.FieldByName('image_index').IsNull, 76, QFld.FieldByName('image_index').AsInteger);
    pNode.SelectedIndex := pNode.ImageIndex;
    QFld.Next;
  end;

  for i := 0 to ANode.Count - 1 do
    LoadFolder(ANode.Items[i], QFld);
end;

function TfmDocBlob.FindNode(StartNode : TcxTreeListNode; doc_type_cod, doc_folder_id : integer) : TcxTreeListNode;
var i : integer;
begin
// Функция поиска Node по заданным: стартовой Ноде, типу документа и ИД папки
  Result := nil;

  if (TObject(StartNode.Data) is TNodeTag) then
    if (TNodeTag(StartNode.Data).doc_type_cod = doc_type_cod)
    and (TNodeTag(StartNode.Data).doc_folder_id = doc_folder_id) then
      Result := StartNode;

  i := 0;
  while (i < StartNode.Count) and (Result = nil) do begin
    Result := FindNode(StartNode.Items[i], doc_type_cod, doc_folder_id);
    inc(i);
  end;
end;

procedure TfmDocBlob.ReLoadFolder(doc_type_cod, doc_folder_id : integer);
var QFld  : TADOQuery;
    pNode : TcxTreeListNode;
    i     : integer;
begin
//  doc_type_cod - Какой тип документов будем перегружать
//  doc_folder_id - На какую папку будем потом позиционироваться

  QFld := TADOQuery.Create(nil);
  QFld.Connection := ADOShablon;
  QFld.SQL.Add('SELECT DOC_FOLDER.*, doc_type_cod = INF_OBJ.inf_obj_cod');
  QFld.SQL.Add('FROM DOC_FOLDER JOIN INF_OBJ ON DOC_FOLDER.doc_type_id = INF_OBJ.inf_obj_id');
  QFld.SQL.Add('WHERE users_group_id = ' + IntToStr(Fusr_pwd.user_group_id));
  QFld.SQL.Add('AND INF_OBJ.inf_obj_cod = ''' + IntToStr(doc_type_cod) + '''');
  QFld.SQL.Add('ORDER BY folder_name');
  QFld.Open;

  // Найдем нужный тип документов
  pNode := nil;
  for i := 0 to cxTreeList1.Count - 1 do begin
    if (TNodeTag(cxTreeList1.Items[i].Data).doc_type_cod = doc_type_cod) and (TNodeTag(cxTreeList1.Items[i].Data).doc_folder_id = -9) then begin
      pNode := cxTreeList1.Items[i];
      Break;
    end;
  end;

  if pNode <> nil then begin
    Fset_recalc_sql := False;

    pNode.DeleteChildren;
    LoadFolder(pNode, QFld);

    // позиционирование  на папку
    pNode := FindNode(pNode, doc_type_cod, doc_folder_id);
    if pNode <> nil then begin
      pNode.Focused := True;
      while pNode.Parent <> nil do begin
        pNode := pNode.Parent;
        pNode.Expand(False);
      end;
    end;

    Fset_recalc_sql := True;
    ChangeSQL();
  end;

  QFld.Free;
end;

procedure TfmDocBlob.cxGrid1DBBandedTableView2CustomDrawCell(Sender: TcxCustomGridTableView; ACanvas: TcxCanvas; AViewInfo: TcxGridTableDataCellViewInfo; var ADone: Boolean);
begin
  if (TNodeTag(cxTreeList1.FocusedNode.Data).doc_type_cod = 7)
    AND (AViewInfo.GridRecord.Values[cxGrid1DBBandedTableView2.GetColumnByFieldName('doc_kind_name').Index] = 'Копия')
    AND (AViewInfo.GridRecord.Values[cxGrid1DBBandedTableView2.GetColumnByFieldName('doc_original_date').Index] <= Now)
    then ACanvas.Brush.Color := $008080FF;

  if (AViewInfo.GridRecord.Values[cxGrid1DBBandedTableView2global_color.Index]<>NULL) then ACanvas.Brush.Color := AViewInfo.GridRecord.Values[cxGrid1DBBandedTableView2global_color.Index];
  if AViewInfo.GridRecord.Selected or AViewInfo.GridRecord.Focused then begin
    ACanvas.Brush.Color := clNavy;
    ACanvas.Font.Color := clWhite;
    if AViewInfo.Focused then ACanvas.Brush.Color := clBlue;
  end;
end;

procedure TfmDocBlob.cxGrid1DBBandedTableView2CustomDrawColumnHeader(Sender: TcxGridTableView; ACanvas: TcxCanvas; AViewInfo: TcxGridColumnHeaderViewInfo; var ADone: Boolean);
begin
  DrawcxGridColumnOnFocused(Sender, ACanvas, AViewInfo);
end;

procedure TfmDocBlob.cxGrid1DBBandedTableView1DataControllerFilterChanged(Sender: TObject);
begin
  DrawcxGridColumnOnFiltered(Sender);
end;

procedure TfmDocBlob.cxGrid1DBBandedTableView2FocusedItemChanged(Sender: TcxCustomGridTableView; APrevFocusedItem, AFocusedItem: TcxCustomGridTableItem);
begin
  Sender.Painter.Invalidate;
end;

procedure TfmDocBlob.cxGrid1DBBandedTableView2FocusedRecordChanged(
  Sender: TcxCustomGridTableView; APrevFocusedRecord,
  AFocusedRecord: TcxCustomGridRecord; ANewItemRecordFocusingChanged: Boolean);
var
  file_name : string;
  spam_dir : string;
       hFile : THandle;
   num_write : Cardinal;
//           Q : TADOQuery;
//  users_name : string;
//     err_cod : Cardinal;
   file_data : TArray<Byte>;
   SP        : TADOStoredProc;
begin
 if dxBarButton18.Down then begin
  file_name := cxGrid1DBBandedTableView2file_name.DataBinding.Field.AsString;

  if (Pos('.pdf',file_name) = 0) AND (Pos('.png',file_name) = 0) AND (Pos('.jpg',file_name) = 0)
  AND (Pos('.PDF',file_name) = 0) AND (Pos('.PNG',file_name) = 0) AND (Pos('.JPG',file_name) = 0) then begin
    if not VarIsNull(WebBrowser1.OleObject.Document) then begin
      WebBrowser1.Navigate('about:Blank')
    end;
    exit;
  end;

  spam_dir := ExtractFilePath(ParamStr(0)) + 'Temp';
  // Проверка и создание директории
  ForceDirectories(spam_dir);
  // Попытка удаления мусора из временной директории
  DeleteFileFromDir(spam_dir);

  SP := TADOStoredProc.Create(nil);
  SP.Connection := ADOShablon;
  SP.ProcedureName := 'sp_BLOB_modify';
  SP.Parameters.Refresh;
  SP.Parameters.ParamByName('@doc_id'     ).Value := cxGrid1DBBandedTableView2doc_id.DataBinding.Field.AsString;
  SP.Parameters.ParamByName('@type_action').Value := 10;
  SP.Open;

  file_data := LZHUnPack(SP.FieldByName('doc_image').AsBytes);
  Insert(FloatToStr(Int(Now*1000000)), file_name, Pos('.', file_name));
  file_name := spam_dir + '\' +  file_name;

  hFile:=CreateFile(PChar(file_name), Generic_Write, 0, nil, Create_Always, File_Attribute_Normal, 0);

  WriteFile(hFile, PAnsiChar(file_data)^, Length(file_data), num_write, nil);

  CloseHandle(hFile);

  if not VarIsNull(WebBrowser1.OleObject.Document) then begin
    WebBrowser1.Navigate('about:Blank')
  end;

  WebBrowser1.Navigate(file_name);
  SP.Free;
//  file_data := '';
  //hFile.Free;
 end;
end;

procedure TfmDocBlob.cxGrid1DBBandedTableView2KeyPress(Sender: TObject; var Key: Char);
begin
  FilterColumnGridOnKeyPress(TcxGridDBBandedTableView(TcxGridSite(Sender).GridView), Key);
end;

procedure TfmDocBlob.cxTreeList1DragDrop(Sender, Source: TObject; X, Y: Integer);
var SP : TADOStoredProc;
    pNode : TcxTreeListNode;
    str_doc_id : string;
    i : integer;
begin
  if (Sender = cxTreeList1) then
    if (Source is TcxDragControlObject) then
      if (TcxDragControlObject(Source).Control is TcxGridSite) then
        if (TcxGridSite(TcxDragControlObject(Source).Control).GridView = cxGrid1DBBandedTableView2) then begin
          cxTreeList1.HitTest.HitX := X;
          cxTreeList1.HitTest.HitY := Y;
          pNode := cxTreeList1.HitTest.HitNode;

          str_doc_id := '';
          for i := 0 to cxGrid1DBBandedTableView2.Controller.SelectedRecordCount - 1 do
            str_doc_id := str_doc_id + ',' + IntToStr(cxGrid1DBBandedTableView2.Controller.SelectedRows[i].Values[cxGrid1DBBandedTableView2doc_id.Index]);
          Delete(str_doc_id, 1, 1);

          if Application.MessageBox(PWideChar('Переместить ' + IntToStr(cxGrid1DBBandedTableView2.Controller.SelectedRecordCount) + ' документ(а,ов) в папку "' + VarToStr(pNode.Values[0]) + '"?'), 'Внимание', MB_YESNO or MB_ICONQUESTION) = ID_NO then
            exit;

          SP := TADOStoredProc.Create(nil);
          SP.Connection := ADOShablon;
          SP.ProcedureName := 'sp_BLOB_modify';
          SP.Parameters.Refresh;
          SP.Parameters.ParamByName('@type_action'  ).Value := 9;
          SP.Parameters.ParamByName('@doc_type_cod' ).Value := TNodeTag(pNode.Data).doc_type_cod;
          SP.Parameters.ParamByName('@doc_folder_id').Value := TNodeTag(pNode.Data).doc_folder_id;
          SP.Parameters.ParamByName('@str_doc_id'   ).Value := str_doc_id;
          try
            SP.ExecProc;
            RefreshQueryGrid(cxGrid1DBBandedTableView2, 'doc_id');
          except 
          end;
          SP.Free;
        end;
end;

procedure TfmDocBlob.cxTreeList1DragOver(Sender, Source: TObject; X, Y: Integer; State: TDragState; var Accept: Boolean);
begin
  Accept := False;
  if (Sender = cxTreeList1) then
    if (Source is TcxDragControlObject) then
      if (TcxDragControlObject(Source).Control is TcxGridSite) then
        if (TcxGridSite(TcxDragControlObject(Source).Control).GridView = cxGrid1DBBandedTableView2) then begin
          cxTreeList1.HitTest.HitX := X;
          cxTreeList1.HitTest.HitY := Y;
          Accept := cxTreeList1.HitTest.HitAtNode;
        end;
end;

procedure TfmDocBlob.cxTreeList1FocusedNodeChanged(Sender: TcxCustomTreeList; APrevFocusedNode, AFocusedNode: TcxTreeListNode);
begin
  Screen.Cursor := crHourGlass;

  dxBarButton17.Enabled := (TNodeTag(AFocusedNode.Data).doc_folder_id <> -9);
  dxBarButton21.Enabled := (TNodeTag(AFocusedNode.Data).doc_folder_id <> -9);

  ChangeSQL();

  if (AFocusedNode.Parent.Level <> -1) then cxLabel1.Caption := '  ' + AFocusedNode.Parent.Values[0] + ' / ' + AFocusedNode.Values[0]
  else cxLabel1.Caption := '  ' + AFocusedNode.Values[0];

  PaintBox1Paint(Sender);

  Screen.Cursor := crDefault;
end;

procedure TfmDocBlob.ADOShablonExecuteComplete(Connection: TADOConnection; RecordsAffected: Integer; const Error: Error; var EventStatus: TEventStatus; const Command: _Command; const Recordset: _Recordset);
begin
  if EventStatus = esErrorsOccured then begin
    Application.MessageBox(PWideChar(error.Description), 'Внимание', MB_OK or MB_ICONERROR);
    ShowTextMessage('', True);
  end;
end;

procedure TfmDocBlob.dxBarButton10Click(Sender: TObject);
begin
  cxGrid1DBBandedTableView2.OptionsView.GroupByBox := not cxGrid1DBBandedTableView2.OptionsView.GroupByBox;
end;

procedure TfmDocBlob.dxBarButton1Click(Sender: TObject);
begin
  if (cxGrid1DBBandedTableView2doc_type_cod.DataBinding.Field.AsString = '18') or (cxGrid1DBBandedTableView2doc_type_cod.DataBinding.Field.AsString = '20') then begin
    fmDocBlobAddNew := TfmDocBlobAddNew.Create(Application, Fusr_pwd);
    fmDocBlobAddNew._SetDocType := IntToStr(TNodeTag(cxTreeList1.FocusedNode.Data).doc_type_cod);
    fmDocBlobAddNew._SetDocFolderID := TNodeTag(cxTreeList1.FocusedNode.Data).doc_folder_id;

    if fmDocBlobAddNew.ShowModal = mrOk then
      RefreshQueryGrid(cxGrid1DBBandedTableView2, 'doc_id', fmDocBlobAddNew._GetDocId);

  end else begin
    fmDocBlobAdd := TfmDocBlobAdd.Create(Application, Fusr_pwd);
    fmDocBlobAdd._SetDocType := IntToStr(TNodeTag(cxTreeList1.FocusedNode.Data).doc_type_cod);
    fmDocBlobAdd._SetDocFolderID := TNodeTag(cxTreeList1.FocusedNode.Data).doc_folder_id;
    case IndexText(Fobject_name, ['CONTRACT','FIRM','INVOICE','PRETENZIA','FACT_REPAIR','ZFTO_SCORE']) of
      0: fmDocBlobAdd._SetContractID   := Fglobal_id;
      1: fmDocBlobAdd._SetFirmID       := Fglobal_id;
      2: fmDocBlobAdd._SetInvoiceID    := Fglobal_id;
      3: fmDocBlobAdd._SetPretenziaID  := Fglobal_id;
      4: fmDocBlobAdd._SetFactRepairID := Fglobal_id;
      5: fmDocBlobAdd._SetZftoScoreID  := Fglobal_id;
    end;

    if fmDocBlobAdd.ShowModal=mrOK then
      RefreshQueryGrid(cxGrid1DBBandedTableView2, 'doc_id', fmDocBlobAdd._GetDocId);
  end;
end;

procedure TfmDocBlob.dxBarButton2Click(Sender: TObject);
var SP_BLOB_modify: TADOStoredProc;
begin
  if Application.MessageBox('Вы точно хотите удалить документ?', 'Внимание', MB_OKCANCEL)=IDOK then begin
    Screen.Cursor := crHourglass;

    SP_BLOB_modify := TADOStoredProc.Create(nil);
    SP_BLOB_modify.Connection := ADOShablon;
    SP_BLOB_modify.ProcedureName := 'sp_BLOB_modify';
    SP_BLOB_modify.Parameters.Refresh;
    SP_BLOB_modify.Parameters.ParamByName('@type_action').Value := 2;
    SP_BLOB_modify.Parameters.ParamByName('@doc_id').Value := cxGrid1DBBandedTableView2doc_id.DataBinding.Field.AsInteger;
    SP_BLOB_modify.ExecProc;
    SP_BLOB_modify.Free;

    RefreshQueryGrid(cxGrid1DBBandedTableView2, 'doc_id');
    Screen.Cursor := crDefault;
  end;
end;

procedure TfmDocBlob.dxBarButton3Click(Sender: TObject);
begin
  if (cxGrid1DBBandedTableView2doc_type_cod.DataBinding.Field.AsString = '18') or (cxGrid1DBBandedTableView2doc_type_cod.DataBinding.Field.AsString = '20') then begin
    fmDocBlobAddNew := TfmDocBlobAddNew.Create(Application, Fusr_pwd);
    fmDocBlobAddNew._SetUpdate := cxGrid1DBBandedTableView2doc_id.DataBinding.Field.AsInteger;

    if fmDocBlobAddNew.ShowModal = mrOk then
      RefreshQueryGrid(cxGrid1DBBandedTableView2, 'doc_id', fmDocBlobAddNew._GetDocId);
  end else begin
    fmDocBlobAdd := TfmDocBlobAdd.Create(Application, Fusr_pwd);
    fmDocBlobAdd._SetUpdate := cxGrid1DBBandedTableView2doc_id.DataBinding.Field.AsInteger;
    if fmDocBlobAdd.ShowModal = mrOK then
      RefreshQueryGrid(cxGrid1DBBandedTableView2, 'doc_id');
  end;
end;

procedure TfmDocBlob.dxBarButton4Click(Sender: TObject);
begin
  if not cxGrid1DBBandedTableView2doc_id.DataBinding.Field.IsNull then begin
    if not cxGrid1DBBandedTableView2file_name.DataBinding.Field.IsNull then begin
      GetDocBlobView(cxGrid1DBBandedTableView2doc_id.DataBinding.Field.AsInteger, nil, '', ADOShablon);
    end else Application.MessageBox('НЕТ ФАЙЛА К ДАННОЙ ЗАПИСИ', 'ВНИМАНИЕ', MB_OK);
  end;
end;

procedure TfmDocBlob.dxBarButton5Click(Sender: TObject);
begin
  RefreshQueryGrid(cxGrid1DBBandedTableView2, 'doc_id');
end;

procedure TfmDocBlob.dxBarButton6Click(Sender: TObject);
begin
  PrintcxGrid(cxGrid1DBBandedTableView2);
end;

procedure TfmDocBlob.dxBarButton7Click(Sender: TObject);
begin
  SetRecordColor('doc_id', cxGrid1DBBandedTableView2, 'DOC_BLOB', TControl(Sender).Tag=1);
  RefreshQueryGrid(cxGrid1DBBandedTableView2, 'doc_id');
end;

procedure TfmDocBlob.dxBarButton9Click(Sender: TObject);
begin
  SetdxDBGridColumns(cxGrid1DBBandedTableView2);
end;

{$REGION 'Фильтр по всем записям'}
procedure TfmDocBlob.dxBarButton_FilterRecords1Click(Sender: TObject);
begin
  cxGrid1DBBandedTableView2.Filtering.ColumnFilteredItemsList := not dxBarButton_FilterRecords1.Down;
end;
{$ENDREGION 'Фильтр по всем записям'}

procedure TfmDocBlob.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  StoreRegistryGrid(rgSave,'\Software\Lis1\DocBlob_Grids', cxGrid1DBBandedTableView2);
  SavePositionForm(self, '\Software\LIS1\DateTime\DocBlob', Fdate1, Fdate2);

  DeleteFileFromDir();

  Action := caFree;
end;

procedure TfmDocBlob.PaintBox1Paint(Sender: TObject);
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

procedure TfmDocBlob.dxBarButton11Click(Sender: TObject);
var iTag : integer;
begin
  iTag := TdxBarButton(Sender).Tag;

  fmPeriod := TfmPeriod.Create(Application, Fdate1, Fdate2, iTag);
  if fmPeriod.ShowModal = mrOk then begin
    case iTag of
      3: begin
        Fdate1 := fmPeriod._GetMonth;
        Fdate2 := IncMonth(Fdate1) - 1;
        dxBarSubItem2.Caption := PeriodToStr(Fdate1, Fdate2, True);
      end;
      1: begin
        Fdate1 := fmPeriod._GetDateBegin;
        Fdate2 := fmPeriod._GetDateEnd;
        dxBarSubItem2.Caption := PeriodToStr(Fdate1, Fdate2, True);
      end;
    end;
    ChangeSQL();
  end;
end;

procedure TfmDocBlob.ChangeSQL();
var dt: TDateTime;
begin
  if not Fset_recalc_sql then exit;

  Screen.Cursor := crHourGlass;

  cxGrid1DBBandedTableView2contract_cod.Visible := False;
  cxGrid1DBBandedTableView2date_begin.Visible := False;
  cxGrid1DBBandedTableView2date_end.Visible := False;
  cxGrid1DBBandedTableView2firm_self_name.Visible := False;
  cxGrid1DBBandedTableView2firm_customer_name.Visible := False;
  cxGrid1DBBandedTableView2curator_fio_users.Visible := False;

  cxGrid1DBBandedTableView2invoice_cod.Visible := False;
  cxGrid1DBBandedTableView2invoice_date.Visible := False;

  cxGrid1DBBandedTableView2pretenzia_cod.Visible := False;
  cxGrid1DBBandedTableView2firm_name_short.Visible := False;

  cxGrid1DBBandedTableView2fact_num.Visible := False;

  case IndexText(IntToStr(TNodeTag(cxTreeList1.FocusedNode.Data).doc_type_cod), ['1','2','3','7','8','9','10','11','12','13','14','15','18','20']) of
     0: begin
          cxGrid1DBBandedTableView2contract_cod.Visible := True;
          cxGrid1DBBandedTableView2date_begin.Visible := True;
          cxGrid1DBBandedTableView2date_end.Visible := True;
          cxGrid1DBBandedTableView2firm_self_name.Visible := True;
          cxGrid1DBBandedTableView2firm_customer_name.Visible := True;
          cxGrid1DBBandedTableView2curator_fio_users.Visible := True;
        end;
     1: begin
          cxGrid1DBBandedTableView2contract_cod.Visible := True;
          cxGrid1DBBandedTableView2date_begin.Visible := True;
          cxGrid1DBBandedTableView2date_end.Visible := True;
          cxGrid1DBBandedTableView2firm_self_name.Visible := True;
          cxGrid1DBBandedTableView2firm_customer_name.Visible := True;
          cxGrid1DBBandedTableView2curator_fio_users.Visible := True;
        end;
     2: begin
          cxGrid1DBBandedTableView2contract_cod.Visible := True;
          cxGrid1DBBandedTableView2date_begin.Visible := True;
          cxGrid1DBBandedTableView2date_end.Visible := True;
          cxGrid1DBBandedTableView2firm_self_name.Visible := True;
          cxGrid1DBBandedTableView2firm_customer_name.Visible := True;
          cxGrid1DBBandedTableView2curator_fio_users.Visible := True;

          cxGrid1DBBandedTableView2invoice_cod.Visible := True;
          cxGrid1DBBandedTableView2invoice_date.Visible := True;
        end;
     3: begin
          cxGrid1DBBandedTableView2firm_name_short.Visible := True;
        end;
     4: begin
          cxGrid1DBBandedTableView2contract_cod.Visible := True;
          cxGrid1DBBandedTableView2date_begin.Visible := True;
          cxGrid1DBBandedTableView2date_end.Visible := True;
          cxGrid1DBBandedTableView2firm_self_name.Visible := True;
          cxGrid1DBBandedTableView2firm_customer_name.Visible := True;
          cxGrid1DBBandedTableView2curator_fio_users.Visible := True;

          cxGrid1DBBandedTableView2pretenzia_cod.Visible := True;
        end;
     5: begin
          cxGrid1DBBandedTableView2contract_cod.Visible := True;
          cxGrid1DBBandedTableView2date_begin.Visible := True;
          cxGrid1DBBandedTableView2date_end.Visible := True;
          cxGrid1DBBandedTableView2firm_self_name.Visible := True;
          cxGrid1DBBandedTableView2firm_customer_name.Visible := True;
          cxGrid1DBBandedTableView2curator_fio_users.Visible := True;
        end;
     6: begin
          cxGrid1DBBandedTableView2contract_cod.Visible := True;
          cxGrid1DBBandedTableView2date_begin.Visible := True;
          cxGrid1DBBandedTableView2date_end.Visible := True;
          cxGrid1DBBandedTableView2firm_self_name.Visible := True;
          cxGrid1DBBandedTableView2firm_customer_name.Visible := True;
          cxGrid1DBBandedTableView2curator_fio_users.Visible := True;
        end;
     7: begin
          cxGrid1DBBandedTableView2contract_cod.Visible := True;
          cxGrid1DBBandedTableView2date_begin.Visible := True;
          cxGrid1DBBandedTableView2date_end.Visible := True;
          cxGrid1DBBandedTableView2firm_self_name.Visible := True;
          cxGrid1DBBandedTableView2firm_customer_name.Visible := True;
          cxGrid1DBBandedTableView2curator_fio_users.Visible := True;
        end;
     8: begin
          cxGrid1DBBandedTableView2doc_date_end.Visible := True;
          cxGrid1DBBandedTableView2firm_name_short.Visible := True;
        end;
     9: begin
          cxGrid1DBBandedTableView2firm_name_short.Visible := True;
        end;
    11: begin
          cxGrid1DBBandedTableView2fact_num.Visible := True;
          cxGrid1DBBandedTableView2firm_name_short.Visible := True;
        end;
    12: begin
          cxGrid1DBBandedTableView2contract_cod.Visible := True;
          cxGrid1DBBandedTableView2date_begin.Visible := True;
          cxGrid1DBBandedTableView2date_end.Visible := True;
          cxGrid1DBBandedTableView2firm_self_name.Visible := True;
          cxGrid1DBBandedTableView2firm_customer_name.Visible := True;
          cxGrid1DBBandedTableView2curator_fio_users.Visible := True;
        end;
    13: begin
          cxGrid1DBBandedTableView2firm_name_short.Visible := True;
        end;
  end;


  dt := Now;
  DS_DocBlob_Get.DataSet := nil;

  SP_DocBlob_Get.Close;
  SP_DocBlob_Get.Parameters.Refresh;
  SP_DocBlob_Get.Parameters.ParamByName('@global_id'    ).Value := Fglobal_id;
  SP_DocBlob_Get.Parameters.ParamByName('@doc_type_cod' ).Value := IntToStr(TNodeTag(cxTreeList1.FocusedNode.Data).doc_type_cod);
  SP_DocBlob_Get.Parameters.ParamByName('@doc_folder_id').Value := TNodeTag(cxTreeList1.FocusedNode.Data).doc_folder_id;
  SP_DocBlob_Get.Parameters.ParamByName('@date_begin'   ).Value := Fdate1;
  SP_DocBlob_Get.Parameters.ParamByName('@date_end'     ).Value := Fdate2;
  SP_DocBlob_Get.Open;
  dxStatusBar1.Panels[0].Text := IntToStr(MilliSecondsBetween(now,dt)) + 'ms';
  dt := Now;

  DS_DocBlob_Get.DataSet := SP_DocBlob_Get;
  dxStatusBar1.Panels[1].Text := IntToStr(MilliSecondsBetween(now,dt)) + 'ms';

  Screen.Cursor := crDefault;
end;


procedure TfmDocBlob.dxBarButton13Click(Sender: TObject);
var str_doc_id : string;
              i: integer;
begin
  str_doc_id := '';
  for i:=0 to cxGrid1DBBandedTableView2.Controller.SelectedRowCount - 1 do
    str_doc_id := str_doc_id + ',' + VarToStr(cxGrid1DBBandedTableView2.Controller.SelectedRows[i].Values[cxGrid1DBBandedTableView2doc_id.Index]);
  Delete(str_doc_id, 1, 1);

  fmDocBlobAdd := TfmDocBlobAdd.Create(Application, Fusr_pwd);
  fmDocBlobAdd._SetUpdate := cxGrid1DBBandedTableView2doc_id.DataBinding.Field.AsInteger;
  fmDocBlobAdd._SetGroupUpdate := str_doc_id;
  if fmDocBlobAdd.ShowModal = mrOK then
    RefreshQueryGrid(cxGrid1DBBandedTableView2, 'doc_id');
end;


procedure TfmDocBlob.dxBarButton14Click(Sender: TObject);
var folder: string;
    OutFileName : string;
    PrefFileName: string;
    SP : TADOStoredProc;
    i : integer;
    s : TArray<Byte>;
    num_write : Cardinal;
    hFile : THandle;
    doc_type_cod: string;
    doc_id : integer;
    s_old : TArray<Byte>;
begin
  doc_id := -9;
  folder := BrowseDialog('Выбор каталога:');
  if folder <> '' then begin
    if Application.MessageBox(PChar('Сохранить ' + IntToStr(cxGrid1DBBandedTableView2.Controller.SelectedRecordCount) + ' файлов?'), 'ВНИМАНИЕ', MB_ICONWARNING or MB_YESNO) = ID_YES then begin
      SP := TADOStoredProc.Create(nil);
      SP.Connection := ADOShablon;
      SP.ProcedureName := 'sp_BLOB_modify';
      for i:=0 to cxGrid1DBBandedTableView2.Controller.SelectedRecordCount - 1 do begin

        SP.Close;
        SP.Parameters.Refresh;
        SP.Parameters.ParamByName('@doc_id'     ).Value := cxGrid1DBBandedTableView2.Controller.SelectedRows[i].Values[cxGrid1DBBandedTableView2doc_id.Index];
        SP.Parameters.ParamByName('@type_action').Value := 10;
        SP.Open;

        if cxGrid1DBBandedTableView2.Controller.SelectedRows[i].Values[cxGrid1DBBandedTableView2file_name.Index] = null then
          OutFileName := 'пусто_' + FormatDateTime('sszzz', Now) + '.txt'
        else
          OutFileName := SP.FieldByName('file_name').AsString;

        s := LZHUnPack(SP.FieldByName('doc_image').AsBytes);
        s_old := LZHUnPack(SP.FieldByName('doc_image').AsBytes);
        doc_id := cxGrid1DBBandedTableView2.Controller.SelectedRows[i].Values[cxGrid1DBBandedTableView2doc_id.Index];


        PrefFileName := '';
        doc_type_cod := VarToStr(cxGrid1DBBandedTableView2.Controller.SelectedRows[i].Values[cxGrid1DBBandedTableView2doc_type_cod.Index]);
        //1 Договор
        //2 Приложение
        //3 счет
        //10 акты
        //9 прочие
        //12 доверенность
        //13 Письмо
        //7 Карточка контрагента

        //if doc_type_cod = '1' then
        // PrefFileName := PrefFileName + '_' +VarToStr(cxGrid1DBBandedTableView2.Controller.SelectedRows[i].Values[cxGrid1DBBandedTableView2contract_cod.Index])+'_' + FormatDateTime('dd.mm.yy', cxGrid1DBBandedTableView2.Controller.SelectedRows[i].Values[cxGrid1DBBandedTableView2date_begin.Index]);
        if (doc_type_cod = '1') or (doc_type_cod = '2') or (doc_type_cod = '3') or (doc_type_cod = '10') or (doc_type_cod = '12') or (doc_type_cod = '13')then  begin
         if not VarIsNull(cxGrid1DBBandedTableView2.Controller.SelectedRows[i].Values[cxGrid1DBBandedTableView2contract_cod.Index]) then
          PrefFileName :=  VarToStr(cxGrid1DBBandedTableView2.Controller.SelectedRows[i].Values[cxGrid1DBBandedTableView2firm_customer_name.Index])+ 'Дог.№_' + VarToStr(cxGrid1DBBandedTableView2.Controller.SelectedRows[i].Values[cxGrid1DBBandedTableView2contract_cod.Index]) +'_от_' + FormatDateTime('dd.mm.yy', cxGrid1DBBandedTableView2.Controller.SelectedRows[i].Values[cxGrid1DBBandedTableView2date_begin.Index]);
         PrefFileName := PrefFileName + '_' + VarToStr(cxGrid1DBBandedTableView2.Controller.SelectedRows[i].Values[cxGrid1DBBandedTableView2doc_type_describe.Index])
        // if doc_type_cod = '2' then
        //  PrefFileName := PrefFileName + '_' +VarToStr(cxGrid1DBBandedTableView2.Controller.SelectedRows[i].Values[cxGrid1DBBandedTableView2doc_cod.Index])+'_' + FormatDateTime('dd.mm.yy', cxGrid1DBBandedTableView2.Controller.SelectedRows[i].Values[cxGrid1DBBandedTableView2doc_image_date.Index]);
        // if (doc_type_cod = '3') or (doc_type_cod = '10') or (doc_type_cod = '12') or (doc_type_cod = '13')  then
        //  PrefFileName := PrefFileName + '_' +VarToStr(cxGrid1DBBandedTableView2.Controller.SelectedRows[i].Values[cxGrid1DBBandedTableView2doc_describe.Index])+'_' + FormatDateTime('dd.mm.yy', cxGrid1DBBandedTableView2.Controller.SelectedRows[i].Values[cxGrid1DBBandedTableView2doc_image_date.Index]);
       end;

        if (doc_type_cod = '7') then
          PrefFileName := VarToStr(cxGrid1DBBandedTableView2.Controller.SelectedRows[i].Values[cxGrid1DBBandedTableView2firm_name_short.Index]) + '_' + VarToStr(cxGrid1DBBandedTableView2.Controller.SelectedRows[i].Values[cxGrid1DBBandedTableView2doc_type_describe.Index])+ '_' +VarToStr(cxGrid1DBBandedTableView2.Controller.SelectedRows[i].Values[cxGrid1DBBandedTableView2doc_describe.Index]);

        PrefFileName := ReplaceStr(PrefFileName,'\',' ');
        PrefFileName := ReplaceStr(PrefFileName,'/',' ');
        PrefFileName := ReplaceStr(PrefFileName,':',' ');
        PrefFileName := ReplaceStr(PrefFileName,'*',' ');
        PrefFileName := ReplaceStr(PrefFileName,'?',' ');
        PrefFileName := ReplaceStr(PrefFileName,'<',' ');
        PrefFileName := ReplaceStr(PrefFileName,'>',' ');
        PrefFileName := ReplaceStr(PrefFileName,'|',' ');
        PrefFileName := ReplaceStr(PrefFileName,'"',' ');

        OutFileName := folder + '\' + PrefFileName + '_' + OutFileName;
        //OutFileName := folder + '\' + IntToStr(cxGrid1DBBandedTableView2.Controller.SelectedRows[i].Values[cxGrid1DBBandedTableView2doc_id.Index]) + '_' + OutFileName;
        hFile:=CreateFile(PChar(OutFileName), Generic_Write, 0, nil, Create_Always, File_Attribute_Normal, 0);
        WriteFile(hFile, PAnsiChar(s)^, Length(s), num_write, nil);
        CloseHandle(hFile);
        FileSetAttr(OutFileName, SysUtils.faReadOnly);
        ShowTextMessage('Осталось ' + IntToStr(cxGrid1DBBandedTableView2.Controller.SelectedRecordCount-i) + ' файлов...',False);
      end;
      ShellExecute(HWND(nil), 'open', PChar(folder), nil, PChar(folder), SW_SHOWNORMAL);
      SP.Free;
      ShowTextMessage;
    end;
  end;
end;


procedure TfmDocBlob.dxBarButton15Click(Sender: TObject);
var
  vData: PData;
begin
  Screen.Cursor := crHourglass;
  if cxGrid1DBBandedTableView2docs_id.DataBinding.Field.AsInteger = 0 then
    Application.MessageBox('Запись LIS-Docs отстствует !!!', 'Внимание', MB_OK + MB_ICONWARNING)
  else
    if RunLisDocs then begin
      New(vData);
      vData.CmdType := 1;
      vData.Id := cxGrid1DBBandedTableView2docs_id.DataBinding.Field.AsInteger;
      SendData(LisDocsHandle, vData);
      Dispose(vData);
    end;
  Screen.Cursor := crDefault;
end;

procedure TfmDocBlob.dxBarButton16Click(Sender: TObject);
begin
  fmDocFolderAdd := TfmDocFolderAdd.Create(Application, ADOShablon, TNodeTag(cxTreeList1.FocusedNode.Data).doc_type_cod);
  fmDocFolderAdd._SetInsert := TNodeTag(cxTreeList1.FocusedNode.Data).doc_folder_id;
  fmDocFolderAdd._SetImageIndex := cxTreeList1.FocusedNode.ImageIndex;

  if fmDocFolderAdd.ShowModal = mrOk then
    ReLoadFolder(TNodeTag(cxTreeList1.FocusedNode.Data).doc_type_cod, fmDocFolderAdd._GetDocFolderId);
end;

procedure TfmDocBlob.dxBarButton17Click(Sender: TObject);
begin
  fmDocFolderAdd := TfmDocFolderAdd.Create(Application, ADOShablon, TNodeTag(cxTreeList1.FocusedNode.Data).doc_type_cod);
  fmDocFolderAdd._SetUpdate := TNodeTag(cxTreeList1.FocusedNode.Data).doc_folder_id;

  if fmDocFolderAdd.ShowModal = mrOk then
    ReLoadFolder(TNodeTag(cxTreeList1.FocusedNode.Data).doc_type_cod, fmDocFolderAdd._GetDocFolderId);
end;

procedure TfmDocBlob.dxBarButton18Click(Sender: TObject);
begin
  Panel5.Visible := dxBarButton18.Down;
  cxSplitter1.Visible := dxBarButton18.Down;
end;

procedure TfmDocBlob.dxBarButton20Click(Sender: TObject);
begin
  Screen.Cursor := crHourglass;
  if TControl(Sender).Tag = 1 then begin
    Fdate1 := IncMonth(Fdate1, -1);
  end;

  if TControl(Sender).Tag = 2 then begin
    Fdate1 := IncMonth(Fdate1, 1);
  end;

  Fdate2 := IncMonth(Fdate1) - 1;
  dxBarSubItem2.Caption := PeriodToStr(Fdate1, Fdate2, True);

  ChangeSQL();

  Screen.Cursor := crDefault;
end;

procedure TfmDocBlob.dxBarButton21Click(Sender: TObject);
var SP : TADOStoredProc;
begin
  if TNodeTag(cxTreeList1.FocusedNode.Data).doc_folder_id = -9 then
    exit;
  if Application.MessageBox(PWideChar('Удалить папку "' + VarToStr(cxTreeList1.FocusedNode.Values[0]) + '"?'), 'Внимание', MB_YESNO or MB_ICONQUESTION) = ID_NO then
    exit;

  SP := TADOStoredProc.Create(nil);
  SP.Connection := ADOShablon;
  SP.ProcedureName := 'sp_doc_folder_modify';
  SP.Parameters.Refresh;
  SP.Parameters.ParamByName('@doc_folder_id' ).Value := TNodeTag(cxTreeList1.FocusedNode.Data).doc_folder_id;
  SP.Parameters.ParamByName('@type_action'   ).Value := 2;
  try
    SP.ExecProc;
  except
  end;
  SP.Free;

  ReLoadFolder(TNodeTag(cxTreeList1.FocusedNode.Data).doc_type_cod, TNodeTag(cxTreeList1.FocusedNode.Parent.Data).doc_folder_id);
end;

end.

