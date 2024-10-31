unit DictAdd;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs, Default,
  StdCtrls, Db, ADODB, ComCtrls, ExtCtrls, Menus, Variants, DBClient,  StrUtils,
  cxPropertiesStore, cxControls, cxContainer, cxEdit, cxTextEdit, cxGraphics, cxLookAndFeels, cxLookAndFeelPainters, cxMaskEdit, cxDropDownEdit,
  cxCalendar, cxMemo, cxLookupEdit, cxDBLookupEdit, cxDBLookupComboBox, cxPC, cxStyles, cxCustomData, cxFilter, cxData, cxDataStorage, cxDBData,
  cxCheckBox, cxGridCustomTableView, cxGridTableView, cxGridBandedTableView, cxGridDBBandedTableView, cxGridLevel, cxClasses, cxGridCustomView,
  cxGrid, dxBar,dxSkinsCore, dxSkinBlack, dxSkinBlue, dxSkinBlueprint, dxSkinCaramel, dxSkinCoffee, dxSkinDarkRoom, dxSkinDarkSide,
  dxSkinDevExpressDarkStyle, dxSkinDevExpressStyle, dxSkinFoggy, dxSkinGlassOceans, dxSkinHighContrast, dxSkiniMaginary, dxSkinLilian,
  dxSkinLiquidSky, dxSkinLondonLiquidSky, dxSkinMcSkin, dxSkinMetropolis, dxSkinMetropolisDark, dxSkinMoneyTwins, dxSkinOffice2007Black,
  dxSkinOffice2007Blue, dxSkinOffice2007Green, dxSkinOffice2007Pink, dxSkinOffice2007Silver, dxSkinOffice2010Black, dxSkinOffice2010Blue,
  dxSkinOffice2010Silver, dxSkinOffice2013DarkGray, dxSkinOffice2013LightGray, dxSkinOffice2013White, dxSkinOffice2016Colorful,
  dxSkinOffice2016Dark, dxSkinPumpkin, dxSkinSeven, dxSkinSevenClassic, dxSkinSharp, dxSkinSharpPlus, dxSkinSilver, dxSkinSpringTime,
  dxSkinStardust, dxSkinSummer2008, dxSkinTheAsphaltWorld, dxSkinsDefaultPainters, dxSkinValentine, dxSkinVisualStudio2013Blue,
  dxSkinVisualStudio2013Dark, dxSkinVisualStudio2013Light, dxSkinVS2010, dxSkinWhiteprint, dxSkinXmas2008Blue, dxSkinscxPCPainter,
  dxBarBuiltInMenu, dxCore, cxDateUtils, cxNavigator, dxSkinsdxBarPainter, cxCurrencyEdit, dxDateRanges, dxSkinTheBezier, cxButtons,
  dxScrollbarAnnotations;

type
  TfmDictAdd = class(TForm)
    cxPropertiesStore1: TcxPropertiesStore;
    Panel1: TPanel;
    Panel2: TPanel;
    Label3: TLabel;
    cxTextEdit2: TcxTextEdit;
    Label1: TLabel;
    Label2: TLabel;
    cxTextEdit4: TcxTextEdit;
    Label4: TLabel;
    Panel3: TPanel;
    cxDateEdit1: TcxDateEdit;
    Label5: TLabel;
    Label6: TLabel;
    cxDateEdit2: TcxDateEdit;
    GroupBox2: TGroupBox;
    cxMemo1: TcxMemo;
    Query_Road: TADOQuery;
    DS_Road: TDataSource;
    Panel4: TPanel;
    Label7: TLabel;
    cxLookupComboBox1: TcxLookupComboBox;
    cxPageControl1: TcxPageControl;
    cxTabSheet1: TcxTabSheet;
    cxTabSheet2: TcxTabSheet;
    cxGrid1: TcxGrid;
    cxGrid1DBBandedTableView1: TcxGridDBBandedTableView;
    cxGrid1Level1: TcxGridLevel;
    Client_GroupVisible: TClientDataSet;
    DS_GroupVisible: TDataSource;
    Client_GroupVisiblegroup_name: TStringField;
    Client_GroupVisiblegroup_cod: TStringField;
    Client_GroupVisibleid: TAutoIncField;
    Client_GroupVisiblevisible: TBooleanField;
    cxGrid1DBBandedTableView1id: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1group_name: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1group_cod: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1visible: TcxGridDBBandedColumn;
    dxBarManager1: TdxBarManager;
    Excel1: TdxBarButton;
    Popup_Dict: TdxBarPopupMenu;
    dxBarButton1: TdxBarButton;
    dxBarButton2: TdxBarButton;
    Query_Group: TADOQuery;
    cxTextEdit3: TcxMemo;
    cxTextEdit1: TcxMemo;
    Panel5: TPanel;
    Label8: TLabel;
    cxTextEdit5: TcxTextEdit;
    cxTextEdit6: TcxTextEdit;
    Panel6: TPanel;
    cxLookupComboBox2: TcxLookupComboBox;
    cxTextEdit7: TcxTextEdit;
    Label10: TLabel;
    Label9: TLabel;
    cxTextEdit8: TcxTextEdit;
    cxLookupComboBox3: TcxLookupComboBox;
    Label11: TLabel;
    cxTextEdit9: TcxTextEdit;
    Query_firm: TADOQuery;
    Query_node: TADOQuery;
    DS_node: TDataSource;
    DS_firm: TDataSource;
    Label12: TLabel;
    cxLookupComboBox4: TcxLookupComboBox;
    Label13: TLabel;
    cxTextEdit10: TcxTextEdit;
    Label14: TLabel;
    cxTextEdit11: TcxTextEdit;
    DS_Contract: TDataSource;
    Query_Contract: TADOQuery;
    Panel7: TPanel;
    Label19: TLabel;
    cxLookupComboBox7: TcxLookupComboBox;
    cxTextEdit15: TcxTextEdit;
    Label15: TLabel;
    cxTextEdit12: TcxTextEdit;
    Panel8: TPanel;
    Label16: TLabel;
    cxCurrencyEdit1: TcxCurrencyEdit;
    Panel9: TPanel;
    Label17: TLabel;
    cxLookupComboBox5: TcxLookupComboBox;
    Query_Parent: TADOQuery;
    DS_Parent: TDataSource;
    cxButton1: TcxButton;
    cxButton3: TcxButton;
    Label18: TLabel;
    cxTextEdit13: TcxTextEdit;
    cxLookupComboBox6: TcxLookupComboBox;
    Label20: TLabel;
    Query_State: TADOQuery;
    DS_State: TDataSource;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure ADODictExecuteComplete(Connection: TADOConnection; RecordsAffected: Integer; const Error: Error; var EventStatus: TEventStatus; const Command: _Command; const Recordset: _Recordset);
    procedure dxBarButton1Click(Sender: TObject);
    procedure Excel1Click(Sender: TObject);
    procedure cxGrid1DBBandedTableView1CustomDrawCell(Sender: TcxCustomGridTableView; ACanvas: TcxCanvas; AViewInfo: TcxGridTableDataCellViewInfo; var ADone: Boolean);
    procedure cxGrid1DBBandedTableView1CustomDrawColumnHeader(Sender: TcxGridTableView; ACanvas: TcxCanvas; AViewInfo: TcxGridColumnHeaderViewInfo; var ADone: Boolean);
    procedure cxGrid1DBBandedTableView1FocusedItemChanged(Sender: TcxCustomGridTableView; APrevFocusedItem, AFocusedItem: TcxCustomGridTableItem);
    procedure cxGrid1DBBandedTableView1KeyPress(Sender: TObject; var Key: Char);
    procedure cxLookupComboBox2PropertiesEditValueChanged(Sender: TObject);
    procedure cxLookupComboBox3PropertiesEditValueChanged(Sender: TObject);
    procedure cxLookupComboBox4PropertiesEditValueChanged(Sender: TObject);
    procedure cxLookupComboBox7PropertiesEditValueChanged(Sender: TObject);
    procedure cxButton1Click(Sender: TObject);
    procedure cxButton3Click(Sender: TObject);
    procedure cxLookupComboBox1PropertiesEditValueChanged(Sender: TObject);

  private
    Ftype_action : integer;
    Finf_obj_id  : integer;
    Ftype_inf_id : integer;
    FADO         : TADOConnection;
    procedure SetUpdate(inf_obj_id : integer);
  public
    constructor Create(AOwner: TApplication; type_inf_id:integer; usr_pwd: PUser_pwd);
  published
    property _GetInfObjId : integer read Finf_obj_id;
    property _SetUpdate : integer write SetUpdate;
  end;

function CreateWndDictionaryEdit(AppHand: THandle; type_inf_id:integer; inf_obj_id:integer; usr_pwd: PUser_pwd):variant; export;

var
  fmDictAdd  : TfmDictAdd;

implementation
   uses Dict, Other, Raznoe;
{$R *.DFM}

function CreateWndDictionaryEdit(AppHand: THandle; type_inf_id:integer; inf_obj_id:integer; usr_pwd: PUser_pwd):variant; export;
var i : integer;
begin
   Application.Handle := AppHand;
   fmDictAdd := TfmDictAdd.Create(Application, type_inf_id, usr_pwd);
   if inf_obj_id <> -9 then
     fmDictAdd._SetUpdate := inf_obj_id;
   try
     if fmDictAdd.ShowModal=mrOK then
        result := VarArrayOf([fmDictAdd._GetInfObjId])
     else result := VarArrayOf([-9]);
    finally
      fmDictAdd.Free;
    end;
end;

{$REGION 'Create'}
constructor TfmDictAdd.Create(AOwner: TApplication; type_inf_id: integer; usr_pwd: PUser_pwd);
begin
  Screen.Cursor := crHourglass;
  inherited Create(AOwner);
  FADO := TADOConnection.Create(nil);
  if usr_pwd = nil then
    FADO := fmDict.ADODict
  else begin
    FADO.Connected := False;
    FADO.OnExecuteComplete := ADODictExecuteComplete;
    FADO.ConnectionString := 'Persist Security Info=True;Provider=SQLOLEDB.1;User ID='+usr_pwd.user_name+';Password='+usr_pwd.user_pass+';Initial Catalog='+usr_pwd.catalog+';Data Source='+usr_pwd.server+';Connect Timeout=90';
    FADO.KeepConnection   := False;
    FADO.LoginPrompt      := False;
  end;

  Query_Road.Connection := FADO;

  Ftype_action  := 0;
  Finf_obj_id   := -9;
  Ftype_inf_id  := type_inf_id;

  cxTabSheet2.TabVisible := False;

  // Видимость в зависимости от справочника
  case Ftype_inf_id of
    16 : begin // станции
      Panel4.Visible := True;
      Query_Road.Open;
    end;
    11 : ;
    13 : begin // Дороги
      Panel5.Visible := True;
      Query_State.Open;
    end;
    9  : ; // Груз ГНГ
    10 : begin // Груз ЕТСНГ
      Panel8.Visible := True;
      // "Видимость": Видно только для общих справочников + Груз ЕТСНГ
      cxTabSheet2.TabVisible := True;
    end;
    117: begin //депо
      label1.Caption := 'Клеймо ДЕПО ......................................';

      Panel6.Visible := True;
      Query_node.Open;
      Query_firm.Open;
      Query_Contract.Open;
    end;
    142: begin //порт
      Label3.Caption := 'Страна ......................................';
    end;
    143: begin //судно
      Panel7.Visible := True;
      Query_Contract.Open;
      // "Видимость": Видно только для общих справочников
      cxTabSheet2.TabVisible := True;
    end;
    145: begin //тип сделки
      Panel9.Visible := True;
      Label17.Caption := 'Подразделение ......................................';
      Query_Parent.Parameters.ParamByName('type_inf_id').Value := 147;
      Query_Parent.Open;
      // "Видимость": Видно только для общих справочников
      cxTabSheet2.TabVisible := True;
    end;
    else begin
      // "Видимость": Видно только для общих справочников
      cxTabSheet2.TabVisible := True;
    end;
  end;

  self.Constraints.MinHeight := 0;
  self.Height := self.Height + 60 - cxMemo1.Height;
  self.Constraints.MinHeight := self.Height;

  cxDateEdit1.EditValue := Date();

  cxPageControl1.ActivePageIndex := 0;
  Client_GroupVisible.CreateDataSet;
  Client_GroupVisible.LogChanges := False;

  Query_Group.Connection := FADO;
  Query_Group.Open;
  Client_GroupVisible.DisableControls;
  while not Query_Group.Eof do begin
    Client_GroupVisible.Append;
    Client_GroupVisible.FieldByName('group_name').Value := Query_Group.FieldByName('inf_obj_name').Value;
    Client_GroupVisible.FieldByName('group_cod').Value  := Query_Group.FieldByName('inf_obj_cod').Value;
    Client_GroupVisible.FieldByName('visible').Value    := True;
    Client_GroupVisible.Post;
    Query_Group.Next;
  end;
  Client_GroupVisible.First;
  Client_GroupVisible.EnableControls;
  Query_Group.Close;

  SetUsersModuleRights(self, FADO);

  Screen.Cursor := crDefault;
end;
{$ENDREGION 'Create'}

{$REGION 'ADODictExecuteComplete'}
procedure TfmDictAdd.ADODictExecuteComplete(Connection: TADOConnection; RecordsAffected: Integer; const Error: Error; var EventStatus: TEventStatus; const Command: _Command; const Recordset: _Recordset);
begin
  if EventStatus = esErrorsOccured then begin
    Application.MessageBox(PWideChar(error.Description), 'Внимание', MB_OK);
    ShowTextMessage('', True);
  end;
end;
{$ENDREGION 'ADODictExecuteComplete'}

{$REGION 'SetUpdate'}
procedure TfmDictAdd.SetUpdate(inf_obj_id : integer);
var                Q : TADOQuery;
   str_group_visible : string;
begin
  Screen.Cursor := crHourglass;
  Ftype_action := 1;
  Finf_obj_id := inf_obj_id;

  Q := TADOQuery.Create(nil);
  Q.Connection := FADO;

  case Ftype_inf_id of
    9  : Q.SQL.Add('SELECT * FROM inf_obj_GNG   WHERE inf_obj_id = ' + IntToStr(inf_obj_id));
    10 : Q.SQL.Add('SELECT * FROM inf_obj_ETSNG WHERE inf_obj_id = ' + IntToStr(inf_obj_id));
    11 : Q.SQL.Add('SELECT * FROM inf_obj_STATE WHERE inf_obj_id = ' + IntToStr(inf_obj_id));
    13 : Q.SQL.Add('SELECT * FROM inf_obj_ROAD  WHERE inf_obj_id = ' + IntToStr(inf_obj_id));
    16 : Q.SQL.Add('SELECT * FROM inf_obj_NODE  WHERE inf_obj_id = ' + IntToStr(inf_obj_id));
    117: Q.SQL.Add('SELECT * FROM inf_obj_DEPO  WHERE inf_obj_id = ' + IntToStr(inf_obj_id));
    143: begin
      Q.SQL.Add('SELECT ion.*, ij.global_id as contract_id FROM inf_obj ion ');
      Q.SQL.Add('LEFT JOIN view_inf_obj_join ij ON ion.inf_obj_id = ij.inf_obj_id AND ij.type_join_cod = ''001''');
      Q.SQL.Add('WHERE ion.inf_obj_id = ' + IntToStr(inf_obj_id));
    end;
    145: Q.SQL.Add('SELECT * FROM inf_obj WHERE inf_obj_id = ' + IntToStr(inf_obj_id)) // тип сделки
    else Q.SQL.Add('SELECT * FROM inf_obj WHERE inf_obj_id = ' + IntToStr(inf_obj_id));
  end;
  Q.Open;

  cxTextEdit1.EditValue := Q.FieldByName('inf_obj_name').Value;
  cxTextEdit2.EditValue := Q.FieldByName('inf_obj_cod').Value;
  cxTextEdit3.EditValue := Q.FieldByName('inf_obj_name_full').Value;
  cxTextEdit4.EditValue := Q.FieldByName('inf_obj_name_translit').Value;

  cxDateEdit1.EditValue := Q.FieldByName('date_begin').Value;
  cxDateEdit2.EditValue := Q.FieldByName('date_end').Value;

  if Panel4.Visible then begin
    cxLookupComboBox1.EditValue := Q.FieldByName('road_id').Value;
  end;
  if Panel5.Visible then begin
    cxTextEdit5.EditValue := Q.FieldByName('carrier_name').Value;
    cxTextEdit6.EditValue := Q.FieldByName('carrier_cod').Value;
    cxLookupComboBox6.EditValue := Q.FieldByName('state_id').Value;
  end;
  if Panel6.Visible then begin
    cxLookupComboBox2.EditValue := Q.FieldByName('firm_id').Value;
    cxLookupComboBox3.EditValue := Q.FieldByName('node_id').Value;
    cxLookupComboBox4.EditValue := Q.FieldByName('contract_id').Value;
    cxTextEdit12.EditValue      := Q.FieldByName('edo_vrk_cod').Value
  end;
  if Panel7.Visible then begin
    cxLookupComboBox7.EditValue := Q.FieldByName('contract_id').Value;
  end;
  if Panel8.Visible then begin
    cxCurrencyEdit1.EditValue := Q.FieldByName('MVRN').Value;
  end;
  if Panel9.Visible then begin
    cxLookupComboBox5.EditValue := Q.FieldByName('parent_id').Value;
  end;

  // Если общий справочник и установлена видимость не для всех (по умолчанию - видят все)
  if (cxTabSheet2.TabVisible) and (not Q.FieldByName('str_group_visible').IsNull) then begin
    str_group_visible := ',' + Q.FieldByName('str_group_visible').AsString + ',';

    Client_GroupVisible.DisableControls;
    // Проставим для выделенных
    Client_GroupVisible.First;
    while not Client_GroupVisible.eof do begin
      Client_GroupVisible.Edit;
      Client_GroupVisible.FieldByName('visible').Value := False;
      if PosEx(',' + Client_GroupVisible.FieldByName('group_cod').AsString + ',', str_group_visible) > 0 then
        Client_GroupVisible.FieldByName('visible').Value := True;
      Client_GroupVisible.Post;
      Client_GroupVisible.Next;
    end;
    Client_GroupVisible.First;
    Client_GroupVisible.EnableControls;
  end;

  Q.Close;
  Q.SQL.Clear;
  Q.SQL.Add('SELECT comment FROM global_id WHERE global_id = ' + IntToStr(inf_obj_id));
  Q.Open;
  cxMemo1.EditValue := Q.FieldByName('comment').AsString;
  Q.Free;

  Caption := Caption + ' [' + IntToStr(inf_obj_id) + ']';
  Screen.Cursor := crDefault;
end;
{$ENDREGION 'SetUpdate'}

procedure TfmDictAdd.FormClose(Sender: TObject;var Action: TCloseAction);
begin
  Action := caFree;
end;


{$REGION 'Popup_Button'}
procedure TfmDictAdd.dxBarButton1Click(Sender: TObject);
begin
  Client_GroupVisible.DisableControls;
  // Проставим для выделенных
  Client_GroupVisible.First;
  while not Client_GroupVisible.eof do begin
    Client_GroupVisible.Edit;
    Client_GroupVisible.FieldByName('visible').Value := (TComponent(Sender).Tag = 1);
    Client_GroupVisible.Post;
    Client_GroupVisible.Next;
  end;
  Client_GroupVisible.First;
  Client_GroupVisible.EnableControls;
end;

procedure TfmDictAdd.Excel1Click(Sender: TObject);
begin
  PrintcxGrid(cxGrid1DBBandedTableView1);
end;
{$ENDREGION 'Popup_Button'}

{$REGION 'Сохранение'}
procedure TfmDictAdd.cxButton1Click(Sender: TObject);
var SP_InfObjModify : TADOStoredProc;
  str_group_visible : string;
begin

  SP_InfObjModify := TADOStoredProc.Create(nil);
  SP_InfObjModify.Connection := FADO;
  SP_InfObjModify.ProcedureName := 'sp_inf_obj_modify;1';
  SP_InfObjModify.Parameters.Refresh;

  SP_InfObjModify.Parameters.ParamByName('@type_action').Value := Ftype_action;
  SP_InfObjModify.Parameters.ParamByName('@inf_obj_id').Value := Finf_obj_id;
  SP_InfObjModify.Parameters.ParamByName('@type_inf_id').Value := Ftype_inf_id;
  SP_InfObjModify.Parameters.ParamByName('@inf_obj_name').Value := cxTextEdit1.EditValue;
  SP_InfObjModify.Parameters.ParamByName('@inf_obj_name_full').Value := cxTextEdit3.EditValue;
  SP_InfObjModify.Parameters.ParamByName('@inf_obj_name_translit').Value := cxTextEdit4.EditValue;
  SP_InfObjModify.Parameters.ParamByName('@inf_obj_cod').Value := cxTextEdit2.EditValue;

  SP_InfObjModify.Parameters.ParamByName('@date_begin').Value := cxDateEdit1.EditValue;
  SP_InfObjModify.Parameters.ParamByName('@date_end').Value   := cxDateEdit2.EditValue;
  SP_InfObjModify.Parameters.ParamByName('@comment').Value    := cxMemo1.EditValue;

  if Panel4.Visible then begin
    SP_InfObjModify.Parameters.ParamByName('@road_id').Value := cxLookupComboBox1.EditValue;
  end;
  if Panel5.Visible then begin
    SP_InfObjModify.Parameters.ParamByName('@carrier_name').Value := cxTextEdit5.EditValue;
    SP_InfObjModify.Parameters.ParamByName('@carrier_cod').Value  := cxTextEdit6.EditValue;
    SP_InfObjModify.Parameters.ParamByName('@state_id').Value := cxLookupComboBox6.EditValue;
  end;
  if Panel6.Visible then begin
    SP_InfObjModify.Parameters.ParamByName('@firm_id').Value     := cxLookupComboBox2.EditValue;
    SP_InfObjModify.Parameters.ParamByName('@node_id').Value     := cxLookupComboBox3.EditValue;
    SP_InfObjModify.Parameters.ParamByName('@contract_id').Value := cxLookupComboBox4.EditValue;
    SP_InfObjModify.Parameters.ParamByName('@edo_vrk_cod').Value := cxTextEdit12.EditValue;
  end;
  if Panel7.Visible then begin
    SP_InfObjModify.Parameters.ParamByName('@contract_id').Value  := cxLookupComboBox7.EditValue;
  end;
  if Panel8.Visible then begin
    SP_InfObjModify.Parameters.ParamByName('@MVRN').Value  := cxCurrencyEdit1.EditValue;
  end;
  if Panel9.Visible then begin
    SP_InfObjModify.Parameters.ParamByName('@parent_id').Value  := cxLookupComboBox5.EditValue;
  end;

  SP_InfObjModify.Parameters.ParamByName('@str_group_visible').Value := Null;
  if cxTabSheet2.TabVisible then begin
    // "Видимость": Видно только для общих справочников

    // Если отмечены все, то передаем null, иначе передаем список
    if Client_GroupVisible.Locate('visible', False, []) then begin
      str_group_visible := '';
      Client_GroupVisible.DisableControls;
      Client_GroupVisible.First;
      while not Client_GroupVisible.eof do begin
        if Client_GroupVisible.FieldByName('visible').AsBoolean then begin
          if str_group_visible <> '' then str_group_visible := str_group_visible + ',';
          str_group_visible := str_group_visible + Client_GroupVisible.FieldByName('group_cod').AsString;
        end;
        Client_GroupVisible.Next;
      end;
      Client_GroupVisible.First;
      Client_GroupVisible.EnableControls;

      SP_InfObjModify.Parameters.ParamByName('@str_group_visible').Value := str_group_visible;
    end;
  end;

  try
    SP_InfObjModify.ExecProc;
  except
  end;
  Finf_obj_id := SP_InfObjModify.Parameters.ParamByName('@inf_obj_id').Value;
end;

procedure TfmDictAdd.cxButton3Click(Sender: TObject);
begin
  Close;
end;

procedure TfmDictAdd.cxGrid1DBBandedTableView1CustomDrawCell(Sender: TcxCustomGridTableView; ACanvas: TcxCanvas; AViewInfo: TcxGridTableDataCellViewInfo; var ADone: Boolean);
begin
  if AViewInfo.GridRecord.Focused OR AViewInfo.GridRecord.Selected then begin
    ACanvas.Font.Color := clWhite;
    if AViewInfo.Focused then ACanvas.Brush.Color := clBlue
    else ACanvas.Brush.Color := clNavy;
  end;
end;

procedure TfmDictAdd.cxGrid1DBBandedTableView1CustomDrawColumnHeader(Sender: TcxGridTableView; ACanvas: TcxCanvas; AViewInfo: TcxGridColumnHeaderViewInfo; var ADone: Boolean);
begin
  DrawcxGridColumnOnFocused(Sender, ACanvas, AViewInfo);
end;

procedure TfmDictAdd.cxGrid1DBBandedTableView1FocusedItemChanged(Sender: TcxCustomGridTableView; APrevFocusedItem, AFocusedItem: TcxCustomGridTableItem);
begin
  Sender.Painter.Invalidate;
end;

procedure TfmDictAdd.cxGrid1DBBandedTableView1KeyPress(Sender: TObject; var Key: Char);
begin
  FilterColumnGridOnKeyPress(TcxGridDBBandedTableView(TcxGridSite(Sender).GridView), Key);
end;

procedure TfmDictAdd.cxLookupComboBox1PropertiesEditValueChanged(Sender: TObject);
begin
  Query_Road.Locate('inf_obj_id', cxLookupComboBox1.EditValue, []);
  cxTextEdit13.EditValue := Query_Road.FieldByName('state_name').AsString;
end;

procedure TfmDictAdd.cxLookupComboBox2PropertiesEditValueChanged(Sender: TObject);
begin
  if cxLookupComboBox2.EditingValue = null then begin
    cxTextEdit7.EditValue  := null;
    cxTextEdit8.EditValue  := null;
    cxTextEdit11.EditValue := null;
  end else begin
    Query_firm.Locate('firm_id',cxLookupComboBox2.EditingValue,[]);
    cxTextEdit7.EditValue  := Query_firm.FieldByName('cod_okpo').Value;
    cxTextEdit8.EditValue  := Query_firm.FieldByName('firm_contact_name').Value;
    cxTextEdit11.EditValue := Query_firm.FieldByName('rzd_gropl_cod').Value;
  end;
end;

procedure TfmDictAdd.cxLookupComboBox3PropertiesEditValueChanged(Sender: TObject);
begin
  cxTextEdit9.EditValue := Query_Node.Lookup('inf_obj_id', cxLookupComboBox3.EditValue, 'inf_obj_cod');
end;

procedure TfmDictAdd.cxLookupComboBox4PropertiesEditValueChanged(Sender: TObject);
begin
  cxTextEdit10.EditValue := Query_Contract.Lookup('contract_id', cxLookupComboBox4.EditValue, 'contract_cod');
end;

procedure TfmDictAdd.cxLookupComboBox7PropertiesEditValueChanged(Sender: TObject);
begin
  cxTextEdit15.EditValue := Query_Contract.Lookup('contract_id', cxLookupComboBox7.EditValue, 'contract_cod');
end;

{$ENDREGION 'Grid_Event'}

end.
