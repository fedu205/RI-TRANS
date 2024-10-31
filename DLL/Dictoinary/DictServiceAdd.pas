unit DictServiceAdd;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, ExtCtrls, cxPropertiesStore, DB, ADODB, cxGraphics, cxControls,
  cxLookAndFeels, cxLookAndFeelPainters, cxContainer, cxEdit, cxMemo, cxCurrencyEdit, cxTextEdit,
  cxCheckBox, cxClasses, Menus, cxButtons, cxMaskEdit, cxDropDownEdit,
  cxLookupEdit, cxDBLookupEdit, cxDBLookupComboBox, dxSkinsCore, dxSkinBlack,
  dxSkinBlue, dxSkinBlueprint, dxSkinCaramel, dxSkinCoffee, dxSkinDarkRoom,
  dxSkinDarkSide, dxSkinDevExpressDarkStyle, dxSkinDevExpressStyle, dxSkinFoggy,
  dxSkinGlassOceans, dxSkinHighContrast, dxSkiniMaginary, dxSkinLilian,
  dxSkinLiquidSky, dxSkinLondonLiquidSky, dxSkinMcSkin, dxSkinMetropolis,
  dxSkinMetropolisDark, dxSkinMoneyTwins, dxSkinOffice2007Black,
  dxSkinOffice2007Blue, dxSkinOffice2007Green, dxSkinOffice2007Pink,
  dxSkinOffice2007Silver, dxSkinOffice2010Black, dxSkinOffice2010Blue,
  dxSkinOffice2010Silver, dxSkinOffice2013DarkGray, dxSkinOffice2013LightGray,
  dxSkinOffice2013White, dxSkinPumpkin, dxSkinSeven, dxSkinSevenClassic,
  dxSkinSharp, dxSkinSharpPlus, dxSkinSilver, dxSkinSpringTime, dxSkinStardust,
  dxSkinSummer2008, dxSkinTheAsphaltWorld, dxSkinsDefaultPainters,
  dxSkinValentine, dxSkinVS2010, dxSkinWhiteprint, dxSkinXmas2008Blue, ComCtrls,
  dxCore, cxDateUtils, cxCalendar, dxSkinOffice2016Colorful,
  dxSkinOffice2016Dark, dxSkinVisualStudio2013Blue, dxSkinVisualStudio2013Dark,
  dxSkinVisualStudio2013Light, dxSkinscxPCPainter, dxBarBuiltInMenu, cxPC,
  cxStyles, cxCustomData, cxFilter, cxData, cxDataStorage, cxNavigator,
  cxDBData, DBClient, cxGridCustomView, cxGridCustomTableView, cxGridTableView,
  cxGridBandedTableView, cxGridDBBandedTableView, cxGridLevel, cxGrid,
  dxSkinsdxBarPainter, dxBar, ImgList, Default, System.ImageList, cxImageList,
  cxDataControllerConditionalFormattingRulesManagerDialog, dxSkinTheBezier, dxDateRanges, dxSkinOffice2019Colorful;

type
  TfmDictServiceAdd = class(TForm)
    Panel2: TPanel;
    cxPropertiesStore1: TcxPropertiesStore;
    Panel1: TPanel;
    cxTextEdit1: TcxTextEdit;
    cxTextEdit2: TcxTextEdit;
    Label2: TLabel;
    Label3: TLabel;
    Label7: TLabel;
    cxTextEdit4: TcxTextEdit;
    Label1: TLabel;
    cxDateEdit1: TcxDateEdit;
    cxDateEdit2: TcxDateEdit;
    Label5: TLabel;
    cxPageControl1: TcxPageControl;
    cxTabSheet1: TcxTabSheet;
    cxTabSheet2: TcxTabSheet;
    cxMemo1: TcxMemo;
    cxGrid1Level1: TcxGridLevel;
    cxGrid1: TcxGrid;
    cxGrid1DBBandedTableView1: TcxGridDBBandedTableView;
    ClientDS_Formula: TClientDataSet;
    DS_Formula: TDataSource;
    ClientDS_Formulaid: TAutoIncField;
    ClientDS_Formulabudget_id: TIntegerField;
    ClientDS_Formulabudget_name: TStringField;
    ClientDS_Formulabudget_cod: TStringField;
    ClientDS_Formulabudget_full_name: TStringField;
    ClientDS_Formulabudget_type_id: TIntegerField;
    ClientDS_Formulabudget_type_cod: TStringField;
    ClientDS_Formulabudget_type_name: TStringField;
    cxGrid1DBBandedTableView1id: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1budget_id: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1budget_name: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1budget_cod: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1budget_full_name: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1budget_type_id: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1budget_type_cod: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1budget_type_name: TcxGridDBBandedColumn;
    dxBarManager1: TdxBarManager;
    dxBarPopupMenu1: TdxBarPopupMenu;
    dxBarButton1: TdxBarButton;
    dxBarSubItem1: TdxBarSubItem;
    dxBarButton2: TdxBarButton;
    dxBarButton3: TdxBarButton;
    cxImageList1: TcxImageList;
    dxBarButton4: TdxBarButton;
    dxBarButton5: TdxBarButton;
    cxButton1: TcxButton;
    cxButton3: TcxButton;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
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
    procedure dxBarButton1Click(Sender: TObject);
    procedure dxBarButton2Click(Sender: TObject);
    procedure dxBarButton3Click(Sender: TObject);
    procedure dxBarButton4Click(Sender: TObject);
    procedure dxBarButton5Click(Sender: TObject);
    procedure cxButton1Click(Sender: TObject);
  private
    Fbudget_id        : integer;
    Fbudget_parent_id : integer;
    Fset_group        : boolean;
    Fusr_pwd          : PUser_pwd;

    procedure SetUpdate(budget_id: integer);
    procedure SetBudgetParentId(budget_parent_id: integer);
  public
    constructor Create(Aowner: TApplication; set_group: boolean; usr_pwd: PUser_pwd);
  published
    property _GetBudgetId       : integer read  Fbudget_id;
    property _SetUpdate         : integer write SetUpdate;
    property _SetBudgetParentId : integer write SetBudgetParentId;
  end;

var
  fmDictServiceAdd: TfmDictServiceAdd;

implementation
  uses DictService, Raznoe;
{$R *.dfm}

constructor TfmDictServiceAdd.Create(Aowner: TApplication; set_group: boolean; usr_pwd: PUser_pwd);
begin
  Screen.Cursor := crHourglass;
  inherited Create(Aowner);
  Fbudget_id    := -9;
  Fusr_pwd      := usr_pwd;

  Fbudget_parent_id := -9;
  Fset_group    := set_group;

  cxDateEdit2.Date := Date;

  if Fset_group = True then
    Caption := 'Атрибуты услуги [Новая запись]'
  else
    Caption := 'Атрибуты статьи [Новая запись]';

  ClientDS_Formula.CreateDataSet;
  ClientDS_Formula.LogChanges := False;

  MonitorEventFormOpen('OPEN_FORM', self.Name, fmDictService.ADOService, -9);
  Screen.Cursor := crDefault;
end;

procedure TfmDictServiceAdd.cxButton1Click(Sender: TObject);
var  sp_shp_budget_modify : TADOStoredProc;
    budget_formula_str_id : string;
begin
  Screen.Cursor := crHourglass;


  ClientDS_Formula.DisableControls;
  ClientDS_Formula.First;
  budget_formula_str_id := '';
  while not ClientDS_Formula.Eof do begin
    if budget_formula_str_id = '' then
      budget_formula_str_id := ClientDS_Formula.FieldByName('budget_id').AsString
    else
      budget_formula_str_id := budget_formula_str_id + ',' + ClientDS_Formula.FieldByName('budget_id').AsString;
    ClientDS_Formula.Next;
  end;
  ClientDS_Formula.EnableControls;

  sp_shp_budget_modify := TADOStoredProc.Create(nil);
  sp_shp_budget_modify.Connection := fmDictService.ADOService;
  sp_shp_budget_modify.ProcedureName := 'sp_shp_budget_modify';
  sp_shp_budget_modify.Parameters.Refresh;
  sp_shp_budget_modify.Parameters.ParamByName('@budget_id'       ).Value := iif(Fbudget_id = -9, null, Fbudget_id);
  sp_shp_budget_modify.Parameters.ParamByName('@type_action'     ).Value := iif(Fbudget_id = -9, 0, 1);
  sp_shp_budget_modify.Parameters.ParamByName('@budget_name'     ).Value := cxTextEdit1.EditValue;
  sp_shp_budget_modify.Parameters.ParamByName('@budget_cod'      ).Value := cxTextEdit2.EditValue;
  sp_shp_budget_modify.Parameters.ParamByName('@budget_parent_id').Value := iif(Fbudget_parent_id = -9, null, Fbudget_parent_id);
  sp_shp_budget_modify.Parameters.ParamByName('@comment'         ).Value := cxMemo1.EditValue;
  sp_shp_budget_modify.Parameters.ParamByName('@set_group'       ).Value := Fset_group;
  sp_shp_budget_modify.Parameters.ParamByName('@date_end'        ).Value := cxDateEdit1.EditValue;
  sp_shp_budget_modify.Parameters.ParamByName('@date_begin'      ).Value := cxDateEdit2.EditValue;
  sp_shp_budget_modify.Parameters.ParamByName('@budget_formula_str_id').Value := iif(budget_formula_str_id <> '', budget_formula_str_id, null);

  sp_shp_budget_modify.ExecProc;
  Fbudget_id := sp_shp_budget_modify.Parameters.ParamByName('@budget_id').Value;

  sp_shp_budget_modify.Free;

  Screen.Cursor := crDefault;
end;

procedure TfmDictServiceAdd.cxGrid1DBBandedTableView1CustomDrawCell(
  Sender: TcxCustomGridTableView; ACanvas: TcxCanvas;
  AViewInfo: TcxGridTableDataCellViewInfo; var ADone: Boolean);
begin
	if AViewInfo.GridRecord.Selected or AViewInfo.GridRecord.Focused then begin
		ACanvas.Brush.Color := clNavy;
		ACanvas.Font.Color := clWhite;
		if AViewInfo.Focused then ACanvas.Brush.Color := clBlue;
	end;
end;

procedure TfmDictServiceAdd.cxGrid1DBBandedTableView1CustomDrawColumnHeader(
  Sender: TcxGridTableView; ACanvas: TcxCanvas;
  AViewInfo: TcxGridColumnHeaderViewInfo; var ADone: Boolean);
begin
	if AViewInfo.Column.Focused then begin
		ACanvas.Brush.Color := clNavy;
		ACanvas.Font.Color := clWhite;
	end;
end;

procedure TfmDictServiceAdd.cxGrid1DBBandedTableView1FilterOnChanged(
  Sender: TObject);
begin
	DrawcxGridColumnOnFiltered(Sender);
end;

procedure TfmDictServiceAdd.cxGrid1DBBandedTableView1FocusedItemChanged(
  Sender: TcxCustomGridTableView; APrevFocusedItem,
  AFocusedItem: TcxCustomGridTableItem);
begin
	cxGrid1DBBandedTableView1.Painter.Invalidate;
end;

procedure TfmDictServiceAdd.cxGrid1DBBandedTableView1KeyPress(Sender: TObject;
  var Key: Char);
begin
	FilterColumnGridOnKeyPress(cxGrid1DBBandedTableView1, Key);
end;

procedure TfmDictServiceAdd.dxBarButton1Click(Sender: TObject);
begin
	PrintcxGrid(cxGrid1DBBandedTableView1);
end;

procedure TfmDictServiceAdd.dxBarButton2Click(Sender: TObject);
begin
	SetdxDBGridColumns(cxGrid1DBBandedTableView1);
end;

procedure TfmDictServiceAdd.dxBarButton3Click(Sender: TObject);
begin
	cxGrid1DBBandedTableView1.OptionsView.GroupByBox := not cxGrid1DBBandedTableView1.OptionsView.GroupByBox;
end;

procedure TfmDictServiceAdd.dxBarButton4Click(Sender: TObject);
var
  form : TfmDictService;
  Q    : TADOQuery;
begin
  form := TfmDictService.Create(Application, True, Fusr_pwd, '', -9);
  if form.ShowModal = mrOk then begin

    Q := TADOQuery.Create(nil);
    Q.Connection := fmDictService.ADOService;
    Q.SQL.Add('SELECT	view_shp_budget.*,');
    Q.SQL.Add('		    isnull(s4.budget_name + ''\'', '''') +  isnull(s3.budget_name + ''\'', '''') + isnull(s2.budget_name + ''\'', '''') + isnull(s1.budget_name, '''') as budget_full_name');
    Q.SQL.Add('FROM	  view_shp_budget');
    Q.SQL.Add('		    left join shp_budget s1 on view_shp_budget.budget_parent_id = s1.budget_id');
    Q.SQL.Add('		    left join shp_budget s2 on s1.budget_parent_id = s2.budget_id');
    Q.SQL.Add('		    left join shp_budget s3 on s2.budget_parent_id = s3.budget_id');
    Q.SQL.Add('		    left join shp_budget s4 on s3.budget_parent_id = s4.budget_id');
    Q.SQL.Add('WHERE	  view_shp_budget.budget_id = ' + IntToStr(form._GetBudgetId));
    Q.Open;

    ClientDS_Formula.Append;
    ClientDS_Formula.FieldByName('budget_id'        ).Value := Q.FieldByName('budget_id').Value;
    ClientDS_Formula.FieldByName('budget_name'      ).Value := Q.FieldByName('budget_name').Value;
    ClientDS_Formula.FieldByName('budget_cod'       ).Value := Q.FieldByName('budget_cod').Value;
    ClientDS_Formula.FieldByName('budget_full_name' ).Value := Q.FieldByName('budget_full_name').Value;
    ClientDS_Formula.FieldByName('budget_type_id'   ).Value := Q.FieldByName('budget_type_id').Value;
    ClientDS_Formula.FieldByName('budget_type_cod'  ).Value := Q.FieldByName('budget_type_cod').Value;
    ClientDS_Formula.FieldByName('budget_type_name' ).Value := Q.FieldByName('budget_type_name').Value;
    ClientDS_Formula.Post;

    Q.Free;
  end;
end;

procedure TfmDictServiceAdd.dxBarButton5Click(Sender: TObject);
begin
  ClientDS_Formula.Delete;
end;

procedure TfmDictServiceAdd.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action := caFree;
end;

procedure TfmDictServiceAdd.SetUpdate(budget_id: integer);
var Q, Q2 : TADOQuery;
    budget_formula_str_id : string;
begin
  Screen.Cursor := crHourglass;

  Fbudget_id := budget_id;

  Q2 := TADOQuery.Create(nil);
  Q2.Connection  := fmDictService.ADOService;

  Q := TADOQuery.Create(nil);
  Q.Connection  := fmDictService.ADOService;
  Q.SQL.Add('SELECT * FROM view_shp_budget WHERE budget_id =' + IntToStr(Fbudget_id));
  Q.Open;

  if Q.FieldByName('budget_parent_id').IsNull then begin
    Fbudget_parent_id := -9;

    cxTextEdit4.EditValue       := null;

  end else begin
    _SetBudgetParentId := Q.FieldByName('budget_parent_id').AsInteger;
  end;

  cxTextEdit1.EditValue  := Q.FieldByName('budget_name').Value;
  cxTextEdit2.EditValue  := Q.FieldByName('budget_cod').Value;
  cxMemo1.EditValue      := Q.FieldByName('comment').Value;
  cxDateEdit1.EditValue  := Q.FieldByName('date_end').Value;
  cxDateEdit2.EditValue  := Q.FieldByName('date_begin').Value;
  budget_formula_str_id  := Q.FieldByName('budget_formula_str_id').AsString;

  Fset_group := Q.FieldByName('set_group').AsBoolean;

  if budget_formula_str_id <> '' then begin
    Q.SQL.Clear;
    Q.SQL.Add('SELECT * FROM dbo.StrToTbl(''' + budget_formula_str_id + ''', default)');
    Q.Open;
    while not Q.Eof do begin

      Q2.SQL.Clear;
      Q2.SQL.Add('SELECT	view_shp_budget.*,');
      Q2.SQL.Add('		    isnull(s4.budget_name + ''\'', '''') +  isnull(s3.budget_name + ''\'', '''') + isnull(s2.budget_name + ''\'', '''') + isnull(s1.budget_name, '''') as budget_full_name');
      Q2.SQL.Add('FROM	  view_shp_budget');
      Q2.SQL.Add('		    left join shp_budget s1 on view_shp_budget.budget_parent_id = s1.budget_id');
      Q2.SQL.Add('		    left join shp_budget s2 on s1.budget_parent_id = s2.budget_id');
      Q2.SQL.Add('		    left join shp_budget s3 on s2.budget_parent_id = s3.budget_id');
      Q2.SQL.Add('		    left join shp_budget s4 on s3.budget_parent_id = s4.budget_id');
      Q2.SQL.Add('WHERE	  view_shp_budget.budget_id = ' + Q.FieldByName('cod').AsString);
      Q2.Open;

      ClientDS_Formula.Append;
      ClientDS_Formula.FieldByName('budget_id'        ).Value := Q2.FieldByName('budget_id').Value;
      ClientDS_Formula.FieldByName('budget_name'      ).Value := Q2.FieldByName('budget_name').Value;
      ClientDS_Formula.FieldByName('budget_cod'       ).Value := Q2.FieldByName('budget_cod').Value;
      ClientDS_Formula.FieldByName('budget_full_name' ).Value := Q2.FieldByName('budget_full_name').Value;
      ClientDS_Formula.FieldByName('budget_type_id'   ).Value := Q2.FieldByName('budget_type_id').Value;
      ClientDS_Formula.FieldByName('budget_type_cod'  ).Value := Q2.FieldByName('budget_type_cod').Value;
      ClientDS_Formula.FieldByName('budget_type_name' ).Value := Q2.FieldByName('budget_type_name').Value;
      ClientDS_Formula.Post;

      Q.Next;
    end;
  end;

  if Fset_group = True then
    Caption := 'Атрибуты услуги [' + IntToStr(Fbudget_id) + ']'
  else
    Caption := 'Атрибуты статьи [' + IntToStr(Fbudget_id) + ']';

  Q.Free;
  Q2.Free;

  MonitorEventFormOpen('UPDATE_FORM', self.Name, fmDictService.ADOService, Fbudget_id);
  Screen.Cursor := crDefault;
end;


procedure TfmDictServiceAdd.SetBudgetParentId(budget_parent_id: integer);
var Q : TADOQuery;
begin
  Fbudget_parent_id := budget_parent_id;

  if Fbudget_parent_id <> -9 then begin

    Q := TADOQuery.Create(nil);
    Q.Connection := fmDictService.ADOService;
    Q.SQL.Add('SELECT * FROM view_shp_budget_rights WHERE budget_id = ' + IntToStr(Fbudget_parent_id));
    Q.Open;

    cxTextEdit4.EditValue       := Q.FieldByName('budget_name').Value;

    Q.Free;
  end;
end;

end.
