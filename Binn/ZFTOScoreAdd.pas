unit ZFTOScoreAdd;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Default, cxStyles, cxCustomData, cxGraphics, cxFilter, cxData, cxDataStorage, cxEdit,
  DB, cxDBData, cxClasses, dxBar, cxControls, cxGridCustomView, cxGridCustomTableView,
  cxGridTableView, cxGridBandedTableView, StrUtils,
  cxGridDBBandedTableView, cxGridLevel, cxGrid, ADODB, cxPropertiesStore,
  cxColorComboBox, cxCalendar, StdCtrls, Buttons, ExtCtrls, cxContainer,
  cxTextEdit, cxMaskEdit, cxDropDownEdit, cxLookupEdit, cxDBLookupEdit,
  cxDBLookupComboBox, cxButtonEdit, cxDBEdit, cxPC, DBClient, cxCurrencyEdit,
  cxCheckBox, ComCtrls, ToolWin, cxLabel, cxLookAndFeels, cxLookAndFeelPainters,
  cxMemo, Menus, cxButtons, XMLDoc, cxGroupBox, cxNavigator, dxCore, cxDateUtils,
  dxSkinsCore, dxSkinBlack, dxSkinBlue, dxSkinBlueprint, dxSkinCaramel,
  dxSkinCoffee, dxSkinDarkRoom, dxSkinDarkSide, dxSkinDevExpressDarkStyle,
  dxSkinDevExpressStyle, dxSkinFoggy, dxSkinGlassOceans, dxSkinHighContrast,
  dxSkiniMaginary, dxSkinLilian, dxSkinLiquidSky, dxSkinLondonLiquidSky,
  dxSkinMcSkin, dxSkinMetropolis, dxSkinMetropolisDark, dxSkinMoneyTwins,
  dxSkinOffice2007Black, dxSkinOffice2007Blue, dxSkinOffice2007Green,
  dxSkinOffice2007Pink, dxSkinOffice2007Silver, dxSkinOffice2010Black,
  dxSkinOffice2010Blue, dxSkinOffice2010Silver, dxSkinOffice2013DarkGray,
  dxSkinOffice2013LightGray, dxSkinOffice2013White, dxSkinOffice2016Colorful,
  dxSkinOffice2016Dark, dxSkinPumpkin, dxSkinSeven, dxSkinSevenClassic,
  dxSkinSharp, dxSkinSharpPlus, dxSkinSilver, dxSkinSpringTime, dxSkinStardust,
  dxSkinSummer2008, dxSkinTheAsphaltWorld, dxSkinsDefaultPainters,
  dxSkinValentine, dxSkinVisualStudio2013Blue, dxSkinVisualStudio2013Dark,
  dxSkinVisualStudio2013Light, dxSkinVS2010, dxSkinWhiteprint,
  dxSkinXmas2008Blue, dxSkinscxPCPainter, dxSkinsdxBarPainter, dxSkinTheBezier, dxDateRanges, cxDataControllerConditionalFormattingRulesManagerDialog,
  dxSkinOffice2019Colorful;


type
  TfmZFTOScoreAdd = class(TForm)
    cxPropertiesStore1: TcxPropertiesStore;
    dxBarManager1: TdxBarManager;
    dxBarButton1: TdxBarButton;
    dxBarButton2: TdxBarButton;
    Client_ZFTOScoreTable: TClientDataSet;
    DS_ZFTOScoreTable: TDataSource;
    Client_ZFTOScoreTableid: TAutoIncField;
    Client_ZFTOScoreTableAction: TIntegerField;
    Panel3: TPanel;
    GroupBox2: TGroupBox;
    cxGrid1: TcxGrid;
    cxGrid1DBBandedTableView1: TcxGridDBBandedTableView;
    cxGrid1DBBandedTableView1id: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1Action: TcxGridDBBandedColumn;
    cxGrid1Level1: TcxGridLevel;
    Client_ZFTOScoreTablezfto_score_table_id: TIntegerField;
    Client_ZFTOScoreTablezfto_score_id: TIntegerField;
    Client_ZFTOScoreTablektgrm_text: TStringField;
    Panel1: TPanel;
    Client_ZFTOScoreTablecarddoctyp: TStringField;
    Client_ZFTOScoreTablerr_src: TSmallintField;
    Client_ZFTOScoreTablest_src: TIntegerField;
    Client_ZFTOScoreTablerr_tgt: TSmallintField;
    Client_ZFTOScoreTablest_tgt: TIntegerField;
    Client_ZFTOScoreTablenumber_doc: TStringField;
    Client_ZFTOScoreTablevagon_num: TStringField;
    Client_ZFTOScoreTablecont_num: TStringField;
    Client_ZFTOScoreTablefr_code: TStringField;
    Client_ZFTOScoreTablefr_weight: TFloatField;
    Client_ZFTOScoreTablesum_wnds_rub: TCurrencyField;
    Client_ZFTOScoreTablends_rub: TCurrencyField;
    Client_ZFTOScoreTablesum_rub: TCurrencyField;
    Client_ZFTOScoreTablesum_wnds_usd: TCurrencyField;
    Client_ZFTOScoreTablends_usd: TCurrencyField;
    Client_ZFTOScoreTablesum_usd: TCurrencyField;
    Client_ZFTOScoreTablest_src_name: TStringField;
    Client_ZFTOScoreTablest_tgt_name: TStringField;
    Client_ZFTOScoreTablerr_src_name: TStringField;
    Client_ZFTOScoreTablerr_tgt_name: TStringField;
    Client_ZFTOScoreTableglobal_color: TIntegerField;
    Client_ZFTOScoreTablevidsoob: TStringField;
    Client_ZFTOScoreTabletype_tr: TStringField;
    Client_ZFTOScoreTablewaers: TStringField;
    Client_ZFTOScoreTableserv_code: TStringField;
    Client_ZFTOScoreTableinvoiceid: TIntegerField;
    cxGrid1DBBandedTableView1zfto_score_table_id: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1zfto_score_id: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1ktgrm_text: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1date_dep: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1date_serv: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1date_pr: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1carddoctyp: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1rr_src: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1st_src: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1rr_tgt: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1st_tgt: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1number_doc: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1vagon_num: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1cont_num: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1fr_code: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1fr_weight: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1sum_wnds_rub: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1nds_rub: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1sum_rub: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1sum_wnds_usd: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1nds_usd: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1sum_usd: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1st_src_name: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1st_tgt_name: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1rr_src_name: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1rr_tgt_name: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1global_color: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1vidsoob: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1type_tr: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1waers: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1serv_code: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1invoiceid: TcxGridDBBandedColumn;
    cxGroupBox1: TcxGroupBox;
    Query_Contract: TADOQuery;
    DS_Contract: TDataSource;
    Label1: TLabel;
    Label2: TLabel;
    cxTextEdit18: TcxTextEdit;
    Label3: TLabel;
    cxDateEdit_Act: TcxDateEdit;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label8: TLabel;
    cxGroupBox2: TcxGroupBox;
    Label9: TLabel;
    Label10: TLabel;
    cxDateEdit_SF: TcxDateEdit;
    cxTextEdit1: TcxTextEdit;
    Label11: TLabel;
    cxDateEdit_Period: TcxDateEdit;
    cxTextEdit_Contract: TcxTextEdit;
    cxTextEdit_ELS: TcxTextEdit;
    cxTextEdit_INN: TcxTextEdit;
    cxTextEdit_KPP: TcxTextEdit;
    dxBarPopupMenu1: TdxBarPopupMenu;
    dxBarButton_FromExcel: TdxBarButton;
    cxLookupComboBox1: TcxLookupComboBox;
    Client_ZFTOScoreTabledate_pr: TDateField;
    Client_ZFTOScoreTabledate_dep: TDateField;
    Client_ZFTOScoreTabledate_serv: TDateField;
    cxButton1: TcxButton;
    cxButton3: TcxButton;
    procedure cxGrid4DBBandedTableView1TcxGridDBDataControllerTcxDataSummaryFooterSummaryItems9GetText(Sender: TcxDataSummaryItem; const AValue: Variant; AIsFooter: Boolean; var AText: string);
    procedure Client_ZFTOScoreTableBeforePost(DataSet: TDataSet);
    procedure BitBtnOkClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure dxBarButton1Click(Sender: TObject);
    procedure cxGrid1DBBandedTableView1FocusedItemChanged(Sender: TcxCustomGridTableView; APrevFocusedItem, AFocusedItem: TcxCustomGridTableItem);
    procedure dxBarButton2Click(Sender: TObject);
    procedure cxGrid1DBBandedTableView1st_src_namePropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
    procedure cxLookupComboBox1PropertiesEditValueChanged(Sender: TObject);
    procedure dxBarButton_FromExcelClick(Sender: TObject);
    procedure cxButton1Click(Sender: TObject);
  private
    Ftype_action        : Integer;
    Fzfto_score_id      : Integer;
    Fzfto_score_act_id  : Integer;
    procedure SetUpdate(zfto_score_id : integer);
    procedure SetCopyFact(str_fact_id : string);
    procedure GetDataSetInsert(Q : TADOQuery; action : integer);
    procedure SetContract(contract_id : integer);
    function  FindInfObj(caption_name: string; table_name: string; set_cod: boolean; var id: integer; var cod: string; var name: string): boolean;

  public
    constructor Create(AOwner : TApplication);
  published
    property _SetUpdate : integer write SetUpdate;
    property _SetCopyFact : string write SetCopyFact;
    property _SetContract : integer write SetContract;
  end;

var
  fmZFTOScoreAdd: TfmZFTOScoreAdd;

implementation
    uses Main, Raznoe, Filter, LoadFact;
{$R *.dfm}

{$REGION 'Create'}
constructor TfmZFTOScoreAdd.Create(AOwner: TApplication);
var Q : TADOQuery;
begin
  Screen.Cursor := crHourglass;
  inherited Create(AOwner);

  Query_Contract.Open;
  cxLookupComboBox1.EditValue := Query_Contract.FieldByName('contract_id').Value;

  Ftype_action := 0;
  Fzfto_score_id := -9;
  Fzfto_score_act_id := -9;

  Q := TADOQuery.Create(nil);
  Q.Connection := fmMain.Lis;
  Q.SQL.Add('SELECT TOP(1) contract_id FROM view_zfto_score_rights');
  Q.Open;
  cxLookupComboBox1.EditValue := Q.FieldByName('contract_id').Value;

  cxDateEdit_Act.Date := Date;
  cxDateEdit_SF.Date := Date;
  cxDateEdit_Period.Date := Date;

  Client_ZFTOScoreTable.CreateDataSet;
  Client_ZFTOScoreTable.LogChanges := False;

  StoreRegistryGrid(rgLoad,'\Software\Lis1\ZFTOScoreAdd_Grids', cxGrid1DBBandedTableView1);
  SetUsersModuleRights(self, fmMain.Lis);

  MonitorEventFormOpen('OPEN_FORM', self.Name, fmMain.Lis, -9);

  Screen.Cursor := crDefault;
end;
{$ENDREGION 'Create'}

{$REGION 'События на DataSet'}
procedure TfmZFTOScoreAdd.Client_ZFTOScoreTableBeforePost(DataSet: TDataSet);
begin
  if (Client_ZFTOScoreTable.FieldByName('action').AsInteger = -1) and (Client_ZFTOScoreTable.State = dsEdit) then
    Client_ZFTOScoreTable.FieldByName('action').AsInteger := 1;
end;
{$ENDREGION 'События на DataSet'}

{$REGION 'Нажатие кнопки "Ок"'}
procedure TfmZFTOScoreAdd.BitBtnOkClick(Sender: TObject);
begin
end;
{$ENDREGION 'Нажатие кнопки "Ок"'}

{$REGION 'События в гриде'}
procedure TfmZFTOScoreAdd.cxButton1Click(Sender: TObject);
var SP : TADOStoredProc;
    s : string;
begin
  if Client_ZFTOScoreTable.State in [dsInsert,dsEdit] then Client_ZFTOScoreTable.Post;

  try
    SP := TADOStoredProc.Create(nil);
    SP.Connection := fmMain.Lis;
    SP.ProcedureName := 'sp_zfto_score_modify;1';
    SP.Parameters.Refresh;

    SP.Parameters.ParamByName('@type_action').Value := Ftype_action;
    SP.Parameters.ParamByName('@contract_id').Value := cxLookupComboBox1.EditValue;
    SP.Parameters.ParamByName('@locco').Value := cxTextEdit_ELS.Text;
    SP.Parameters.ParamByName('@number_act').Value := cxTextEdit18.Text;
    SP.Parameters.ParamByName('@date_act').Value := cxDateEdit_Act.EditValue;
    SP.Parameters.ParamByName('@inn').Value := cxTextEdit_INN.EditValue;
    SP.Parameters.ParamByName('@kpp').Value := cxTextEdit_KPP.EditValue;
    SP.Parameters.ParamByName('@num_contr').Value := cxTextEdit_Contract.EditValue;
    if Fzfto_score_id	<> -9 then
      SP.Parameters.ParamByName('@zfto_score_id').Value := Fzfto_score_id;
    if Fzfto_score_act_id	<> -9 then
      SP.Parameters.ParamByName('@zfto_score_act_id').Value := Fzfto_score_act_id;
    SP.Parameters.ParamByName('@fact_num').Value := cxTextEdit1.EditValue;
    SP.Parameters.ParamByName('@fact_date').Value := cxDateEdit_SF.EditValue;
    s :='01.'+ FormatDateTime('mm', cxDateEdit_Period.Date) + '.' + FormatDateTime('yyyy', cxDateEdit_Period.Date);
    SP.Parameters.ParamByName('@date_load').Value := StrToDate(s);
    SP.Parameters.ParamByName('@str_xml_zfto_score_table').Value := FormatXMLData(Client_ZFTOScoreTable.XMLData);
    SP.ExecProc;
  except
  end;
  SP.Free;

end;

procedure TfmZFTOScoreAdd.cxGrid1DBBandedTableView1FocusedItemChanged(Sender: TcxCustomGridTableView; APrevFocusedItem,  AFocusedItem: TcxCustomGridTableItem);
begin
  if cxGrid1DBBandedTableView1 <> nil then cxGrid1DBBandedTableView1.Painter.Invalidate;
end;

procedure TfmZFTOScoreAdd.cxGrid1DBBandedTableView1st_src_namePropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
var
  id  : integer;
  cod : string;
  name: string;
  res : boolean;
begin
  case AButtonIndex of
    0 : begin
          if TcxButtonEdit(Sender).Properties.Buttons.Items[AButtonIndex].Tag in [0,1] then
            res := FindInfObj('Шаблон поиска станции по названию:', 'inf_obj_node', False, id, cod, name)
          else
            res := FindInfObj('Шаблон поиска станции по коду:', 'inf_obj_node', True, id, cod, name);
          if res = true then begin
            if not (Client_ZFTOScoreTable.State in [dsInsert,dsEdit]) then
              Client_ZFTOScoreTable.Edit;
            case TcxButtonEdit(Sender).Properties.Buttons.Items[AButtonIndex].Tag of
              0,2 : begin
                    cxGrid1DBBandedTableView1st_src_name.DataBinding.Field.AsString := name;
                    cxGrid1DBBandedTableView1st_src.DataBinding.Field.AsString := cod;
                  end;
              1,3 : begin
                    cxGrid1DBBandedTableView1st_tgt_name.DataBinding.Field.AsString := name;
                    cxGrid1DBBandedTableView1st_tgt.DataBinding.Field.AsString := cod;
                  end;
            end;
          end;
        end;
    1 : begin
          if not (Client_ZFTOScoreTable.State in [dsInsert,dsEdit]) then
            Client_ZFTOScoreTable.Edit;
            case TcxButtonEdit(Sender).Properties.Buttons.Items[AButtonIndex].Tag of
              0,2 : begin
                    cxGrid1DBBandedTableView1st_src_name.DataBinding.Field.AsString := '';
                    cxGrid1DBBandedTableView1st_src.DataBinding.Field.AsString := '';
                  end;
              1,3 : begin
                    cxGrid1DBBandedTableView1st_tgt_name.DataBinding.Field.AsString := '';
                    cxGrid1DBBandedTableView1st_tgt.DataBinding.Field.AsString := '';
                  end;
            end;
        end;
  end;
end;

procedure TfmZFTOScoreAdd.cxGrid4DBBandedTableView1TcxGridDBDataControllerTcxDataSummaryFooterSummaryItems9GetText(  Sender: TcxDataSummaryItem; const AValue: Variant; AIsFooter: Boolean; var AText: string);
begin
end;
{$ENDREGION 'События в гриде'}

{$REGION 'Выбор договора'}
procedure TfmZFTOScoreAdd.cxLookupComboBox1PropertiesEditValueChanged(Sender: TObject);
begin
  if (cxLookupComboBox1.EditValue <> null) AND (Query_Contract.Locate('contract_id', cxLookupComboBox1.EditValue, [])) then begin
    cxTextEdit_Contract.EditValue := Query_Contract.FieldByName('contract_cod').Value;
  end else begin
    cxTextEdit_Contract.EditValue := NULL;
  end;
end;
{$ENDREGION 'Выбор договора'}

{$REGION 'FormClose'}
procedure TfmZFTOScoreAdd.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  StoreRegistryGrid(rgSave,'\Software\Lis1\ZFTOScoreAdd_Grids', cxGrid1DBBandedTableView1);
  Action := caFree;
end;
{$ENDREGION 'FormClose'}

{$REGION 'Добавить факт'}
procedure TfmZFTOScoreAdd.dxBarButton1Click(Sender: TObject);
begin
  Client_ZFTOScoreTable.Append;
  Client_ZFTOScoreTable.FieldByName('action').AsInteger := 0;
  Client_ZFTOScoreTable.Post;
end;
{$ENDREGION 'Добавить факт'}

{$REGION 'Удалить факт'}
procedure TfmZFTOScoreAdd.dxBarButton2Click(Sender: TObject);
var StListId  : TStringList;
    i         : integer;
begin
  if Application.MessageBox('Вы уверены, что хотите удалить факт?', 'Внимание', MB_OKCANCEL) = IDOK then begin
    StListId  := TStringList.Create;
    for i := 0 to cxGrid1DBBandedTableView1.Controller.SelectedRowCount - 1 do
      StListId.Add(VarToStr(cxGrid1DBBandedTableView1.Controller.SelectedRows[i].Values[cxGrid1DBBandedTableView1id.Index]));
    for i := 0 to StListId.Count - 1 do begin
      if Client_ZFTOScoreTable.Locate('id', StrToInt(StListId.Strings[i]), [loCaseInsensitive]) then begin
        Client_ZFTOScoreTable.Edit;
        Client_ZFTOScoreTable.FieldByName('action').AsInteger := 2;
        Client_ZFTOScoreTable.Post;
      end;
    end;
    StListId.Free;
  end;
end;
{$ENDREGION 'Удалить факт'}

{$REGION 'Редактировать факт'}
procedure TfmZFTOScoreAdd.SetUpdate(zfto_score_id : integer);
var Q : TADOQuery;
begin
  Screen.Cursor := crHourglass;
  Caption       := 'Редактирование счета-фактуры';
  Ftype_action  := 1;
  Fzfto_score_id := zfto_score_id;
  Q := TADOQuery.Create(nil);
  Q.Connection := fmMain.Lis;
  Q.SQL.Add('SELECT * FROM view_zfto_score_rights WHERE zfto_score_id = ' + IntToStr(zfto_score_id));
  Q.Open;
  Fzfto_score_act_id            := Q.FieldByName('zfto_score_act_id').AsInteger;
  cxLookupComboBox1.EditValue   := Q.FieldByName('contract_id').Value;
  cxTextEdit_ELS.EditValue      := Q.FieldByName('locco').Value;
  cxTextEdit_Contract.EditValue := Q.FieldByName('num_contr').Value;
  cxTextEdit_INN.EditValue      := Q.FieldByName('inn').Value;
  cxTextEdit_KPP.EditValue      := Q.FieldByName('kpp').Value;
  cxTextEdit18.EditValue        := Q.FieldByName('number_act').Value;
  cxDateEdit_Act.EditValue      := Q.FieldByName('date_act').Value;

  cxTextEdit1.EditValue         := Q.FieldByName('fact_num').Value;
  cxDateEdit_SF.EditValue       := Q.FieldByName('fact_date').Value;
  cxDateEdit_Period.EditValue   := Q.FieldByName('date_load').Value;

  if Q.FieldByName('set_auto').AsBoolean then begin
    cxLookupComboBox1.Enabled := False;
    cxTextEdit_ELS.Enabled := False;
    cxTextEdit_Contract.Enabled := False;
    cxTextEdit_INN.Enabled := False;
    cxTextEdit_KPP.Enabled := False;
    cxTextEdit18.Enabled := False;
    cxDateEdit_Act.Enabled := False;
    cxTextEdit1.Enabled := False;
    cxDateEdit_SF.Enabled := False;
    cxDateEdit_Period.Enabled := False;
    cxLookupComboBox1.Enabled := False;

//    cxGrid1.Enabled := False;
    dxBarButton1.Enabled := False;
    dxBarButton2.Enabled := False;
    cxGrid1DBBandedTableView1.OptionsData.Editing := False;

    cxButton1.Enabled := False;
  end;

  Q.Close;
  Q.SQL.Clear;
  Q.SQL.Add('SELECT * FROM zfto_score_table WHERE zfto_score_id = ' + IntToStr(zfto_score_id));
  Q.Open;

  GetDataSetInsert(Q,-1);
  Q.Close;

  MonitorEventFormOpen('UPDATE_FORM', self.Name, fmMain.Lis, Fzfto_score_id);
  Screen.Cursor := crDefault;
end;
{$ENDREGION 'Редактировать факт'}

{$REGION 'GetDataSetInsert'}
procedure TfmZFTOScoreAdd.GetDataSetInsert(Q : TADOQuery; action : integer);
begin
  Q.First;
  Client_ZFTOScoreTable.DisableControls;
  while not Q.Eof do begin
    Client_ZFTOScoreTable.Append;
    Client_ZFTOScoreTable.FieldByName('action'              ).Value := action;
    Client_ZFTOScoreTable.FieldByName('number_doc'          ).Value := Q.FieldByName('number_doc').Value;
    Client_ZFTOScoreTable.FieldByName('vagon_num'           ).Value := Q.FieldByName('vagon_num').Value;
    Client_ZFTOScoreTable.FieldByName('date_dep'            ).Value := Q.FieldByName('date_dep').Value;
    Client_ZFTOScoreTable.FieldByName('date_serv'           ).Value := Q.FieldByName('date_serv').Value;
    Client_ZFTOScoreTable.FieldByName('date_pr'             ).Value := Q.FieldByName('date_pr').Value;
    Client_ZFTOScoreTable.FieldByName('ktgrm_text'          ).Value := Q.FieldByName('ktgrm_text').Value;
    Client_ZFTOScoreTable.FieldByName('carddoctyp'          ).Value := Q.FieldByName('carddoctyp').Value;
    Client_ZFTOScoreTable.FieldByName('st_src_name'         ).Value := Q.FieldByName('st_src_name').Value;
    Client_ZFTOScoreTable.FieldByName('st_tgt_name'         ).Value := Q.FieldByName('st_tgt_name').Value;
    Client_ZFTOScoreTable.FieldByName('st_src'              ).Value := Q.FieldByName('st_src').Value;
    Client_ZFTOScoreTable.FieldByName('st_tgt'              ).Value := Q.FieldByName('st_tgt').Value;
    Client_ZFTOScoreTable.FieldByName('cont_num'            ).Value := Q.FieldByName('cont_num').Value;
    Client_ZFTOScoreTable.FieldByName('fr_weight'           ).Value := Q.FieldByName('fr_weight').Value;
    Client_ZFTOScoreTable.FieldByName('nds_rub'             ).Value := Q.FieldByName('nds_rub').Value;
    Client_ZFTOScoreTable.FieldByName('sum_rub'             ).Value := Q.FieldByName('sum_rub').Value;
    Client_ZFTOScoreTable.FieldByName('sum_usd'             ).Value := Q.FieldByName('sum_usd').Value;
    Client_ZFTOScoreTable.FieldByName('nds_usd'             ).Value := Q.FieldByName('nds_usd').Value;
    Client_ZFTOScoreTable.FieldByName('waers'               ).Value := Q.FieldByName('waers').Value;
    Client_ZFTOScoreTable.FieldByName('serv_code'           ).Value := Q.FieldByName('serv_code').Value;
    Client_ZFTOScoreTable.FieldByName('vidsoob'             ).Value := Q.FieldByName('vidsoob').Value;
    Client_ZFTOScoreTable.FieldByName('zfto_score_table_id' ).Value := Q.FieldByName('zfto_score_table_id').Value;

    Client_ZFTOScoreTable.FieldByName('invoiceid'           ).Value := Q.FieldByName('invoiceid').Value;
    Client_ZFTOScoreTable.FieldByName('rr_src'              ).Value := Q.FieldByName('rr_src').Value;
    Client_ZFTOScoreTable.FieldByName('zfto_score_id'       ).Value := Q.FieldByName('zfto_score_id').Value;
    Client_ZFTOScoreTable.FieldByName('rr_tgt'              ).Value := Q.FieldByName('rr_tgt').Value;
    Client_ZFTOScoreTable.FieldByName('fr_code'             ).Value := Q.FieldByName('fr_code').Value;
    Client_ZFTOScoreTable.FieldByName('sum_wnds_rub'        ).Value := Q.FieldByName('sum_wnds_rub').Value;
    Client_ZFTOScoreTable.FieldByName('sum_wnds_usd'        ).Value := Q.FieldByName('sum_wnds_usd').Value;
    Client_ZFTOScoreTable.FieldByName('rr_src_name'         ).Value := Q.FieldByName('rr_src_name').Value;
    Client_ZFTOScoreTable.FieldByName('rr_tgt_name'         ).Value := Q.FieldByName('rr_tgt_name').Value;
    Client_ZFTOScoreTable.FieldByName('global_color'        ).Value := Q.FieldByName('global_color').Value;
    Client_ZFTOScoreTable.FieldByName('type_tr'             ).Value := Q.FieldByName('type_tr').Value;
    Client_ZFTOScoreTable.Post;
    Q.Next;
  end;
  Client_ZFTOScoreTable.EnableControls;
  if cxGrid1DBBandedTableView1.DataController.FilteredRecordCount > 0  then begin
    cxGrid1DBBandedTableView1.Controller.SelectCells(cxGrid1DBBandedTableView1id, cxGrid1DBBandedTableView1id, 0, 0);
    cxGrid1DBBandedTableView1.Controller.SelectedRows[0].Focused := True;
  end;
end;
{$ENDREGION 'GetDataSetInsert'}

{$REGION 'Копировать факт'}
procedure TfmZFTOScoreAdd.SetCopyFact(str_fact_id : string);
var Q : TADOQuery;
begin
  Screen.Cursor := crHourglass;
  Caption       := 'Редактирование счета-фактуры';
  Q := TADOQuery.Create(nil);
  Q.Connection := fmMain.Lis;
  Q.SQL.Add('SELECT number_doc = ISNULL(num_document_pref,'''') + ISNULL(num_document,''''), '+
	          ' num_vagon	AS vagon_num,'+
	          ' date_from_to AS date_dep,'+
	          ' date_serv = CAST(FLOOR(CAST(date_delivery as FLOAT)) AS DATETIME),'+
	          ' datpr AS date_pr,'+
	          ' ktgrm_text = NULL,'+
	          ' carddoctyp = NULL,'+
	          ' node_begin_name AS st_src_name,'+
	          ' node_end_name AS st_tgt_name,'+
	          ' node_begin_cod AS st_src,'+
	          ' node_end_cod AS st_tgt,'+
	          ' num_konten AS cont_num,'+
	          ' fact_weight AS fr_weight,'+
	          ' sum_rub = CASE ISNULL(currency_id, 3) WHEN 3 THEN transport_pay ELSE 0 END,'+
	          ' nds_rub = CASE ISNULL(currency_id, 3) WHEN 3 THEN nds ELSE 0 END,'+
	          ' sum_usd = CASE ISNULL(currency_id, 3) WHEN 3 THEN 0 ELSE transport_pay END,'+
	          ' nds_usd = CASE ISNULL(currency_id, 3) WHEN 3 THEN 0 ELSE nds END,'+
	          ' brief_name AS waers,'+
	          ' serv_code = NULL,'+
	          ' vidsoob	= NULL,'+
	          ' zfto_score_table_id = NULL,'+
	          ' invoiceid = NULL,'+
	          ' rr_src = NULL,'+
	          ' zfto_score_id = NULL,'+
	          ' rr_tgt = NULL,'+
	          ' fr_code = NULL,'+
	          ' sum_wnds_rub = NULL,'+
	          ' sum_wnds_usd = NULL,'+
	          ' rr_src_name = NULL,'+
	          ' rr_tgt_name = NULL,'+
	          ' global_color = NULL,'+
	          ' type_tr = NULL'+
	          ' FROM view_fact_all WHERE fact_id IN (' + str_fact_id + ')');
  Q.Open;
  GetDataSetInsert(Q,0);
  Q.Close;
  Screen.Cursor := crDefault;
end;
{$ENDREGION 'Копировать факт'}

{$REGION 'Поиск по справочнику'}
function TfmZFTOScoreAdd.FindInfObj(caption_name: string; table_name: string; set_cod: boolean; var id: integer; var cod: string; var name: string): boolean;
var new_str : string;
    Q : TADOQuery;
    res : boolean;
begin
  table_name := LowerCase(table_name);

  if InputQuery('Поиск', caption_name, new_str) then begin
    Q := TADOQuery.Create(nil);
    Q.Connection := fmMain.Lis;
    Q.SQL.Add('SELECT inf_obj_id, inf_obj_name, inf_obj_cod');
    Q.SQL.Add('FROM ' + table_name);
    Q.SQL.Add('WHERE (' + iif(set_cod, 'inf_obj_cod', 'inf_obj_name') + ' LIKE ''%' + new_str + '%'')');
    Q.SQL.Add('AND (LEFT(''20120101'', 6) BETWEEN convert(varchar(6), date_begin, 112) AND convert(varchar(6), date_end, 112) OR date_end is null)');
    if (table_name = 'inf_obj') or (table_name = 'inf_obj_etsng') then
      Q.SQL.Add('AND (dbo.GetInfObjVisible(str_group_visible) = 1)');
    Q.SQL.Add('ORDER BY inf_obj_name');
    Q.Open;
    fmFilter := TfmFilter.Create(0, Q, 'inf_obj_id', 'inf_obj_cod', 'inf_obj_name');
    if fmFilter.ShowModal=mrOk then begin
      id  := fmFilter.GetId;
      cod := fmFilter.GetCod;
      name:= fmFilter.GetName;
      res := True;
    end else res := False;
    Q.Free;
  end else res := False;

  Result := res;
end;
{$ENDREGION 'Поиск по справочнику'}

{$REGION 'Установить контракт'}
procedure TfmZFTOScoreAdd.SetContract(contract_id : integer);
begin
  cxLookupComboBox1.EditValue := contract_id;
end;
{$ENDREGION 'Установить контракт'}

{$REGION 'Загрузить факт из Excel'}
procedure TfmZFTOScoreAdd.dxBarButton_FromExcelClick(Sender: TObject);
var clientDS  : TClientDataSet;
    i : integer;
begin
   fmLoadFact := TfmLoadFact.Create(Application, -9);
   fmLoadFact.SetConnection(fmMain.Lis, usr_pwd);
   fmLoadFact._SetTypeScene := 1;
//   fmLoadFact.LoadFromAgree(cxGrid1DBBandedTableView1bargain_id.DataBinding.Field.AsInteger);
   if fmLoadFact.ShowModal=mrOk then begin
     Screen.Cursor := crHourglass;
     clientDS := fmLoadFact._GetClientExcelRecords;
     clientDS.First;
     while not clientDS.Eof do begin
       Client_ZFTOScoreTable.Append;
       Client_ZFTOScoreTable.FieldByName('action').AsInteger := 0;
       for I := 0 to clientDS.FieldCount - 1 do begin
         if (clientDS.FieldDefs[i].Name <> 'id') and (clientDS.FieldDefs[i].Name <> 'action') then
           Client_ZFTOScoreTable[clientDS.FieldDefs[i].Name] := clientDS[clientDS.FieldDefs[i].Name];

         // Округление сумм до 2-го знака
         if MatchText(clientDS.FieldDefs[i].Name, ['sum_wnds_rub', 'nds_rub', 'sum_rub', 'sum_wnds_usd', 'nds_usd', 'sum_usd'])
         and (not clientDS.FieldByName(clientDS.FieldDefs[i].Name).IsNull) then
           Client_ZFTOScoreTable[clientDS.FieldDefs[i].Name] := RoundCurr(clientDS[clientDS.FieldDefs[i].Name], -2);
       end;

       Client_ZFTOScoreTable.Post;
       clientDS.Next;
     end;
     clientDS.Free;
     Screen.Cursor := crDefault;
   end;
end;
{$ENDREGION 'Загрузить факт из Excel'}

end.

