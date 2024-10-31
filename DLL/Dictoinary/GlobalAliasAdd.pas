unit GlobalAliasAdd;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ExtCtrls, cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters,
  cxContainer, cxEdit, cxPropertiesStore, DB, ADODB, cxTextEdit, cxMaskEdit, cxDropDownEdit,
  cxLookupEdit, cxDBLookupEdit, cxDBLookupComboBox, cxCheckBox, cxClasses, dxSkinsCore, dxSkinBlack, dxSkinBlue, dxSkinBlueprint,
  dxSkinCaramel, dxSkinCoffee, dxSkinDarkroom, dxSkinDarkSide, dxSkinDevExpressDarkStyle, dxSkinDevExpressStyle, dxSkinFoggy,
  dxSkinGlassOceans, dxSkinHighContrast, dxSkiniMaginary, dxSkinLilian, dxSkinLiquidSky, dxSkinLondonLiquidSky, dxSkinMcSkin,
  dxSkinMetropolis, dxSkinMetropolisDark, dxSkinMoneyTwins, dxSkinOffice2007Black, dxSkinOffice2007Blue, dxSkinOffice2007Green,
  dxSkinOffice2007Pink, dxSkinOffice2007Silver, dxSkinOffice2010Black, dxSkinOffice2010Blue, dxSkinOffice2010Silver,
  dxSkinOffice2013DarkGray, dxSkinOffice2013LightGray, dxSkinOffice2013White, dxSkinOffice2016Colorful, dxSkinOffice2016Dark,
  dxSkinPumpkin, dxSkinSeven, dxSkinSevenClassic, dxSkinSharp, dxSkinSharpPlus, dxSkinSilver, dxSkinSpringtime, dxSkinStardust,
  dxSkinSummer2008, dxSkinTheAsphaltWorld, dxSkinTheBezier, dxSkinsDefaultPainters, dxSkinValentine, dxSkinVisualStudio2013Blue,
  dxSkinVisualStudio2013Dark, dxSkinVisualStudio2013Light, dxSkinVS2010, dxSkinWhiteprint, dxSkinXmas2008Blue, Vcl.Menus, cxButtons;

type
  TfmGlobalAliasAdd = class(TForm)
    Panel1: TPanel;
    Panel2: TPanel;
    Panel3: TPanel;
    Label1: TLabel;
    cxLookupComboBox3: TcxLookupComboBox;
    cxLookupComboBox1: TcxLookupComboBox;
    Label2: TLabel;
    cxTextEdit1: TcxTextEdit;
    Label3: TLabel;
    cxPropertiesStore1: TcxPropertiesStore;
    Query_TypeTable: TADOQuery;
    DS_TypeTable: TDataSource;
    Query_InfObj: TADOQuery;
    DS_InfObj: TDataSource;
    Panel4: TPanel;
    cxCheckBox1: TcxCheckBox;
    cxButton1: TcxButton;
    cxButton2: TcxButton;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure BitBtn10Click(Sender: TObject);
    procedure cxButton1Click(Sender: TObject);
  private
    Ftype_action : integer;
    Ftype_table_cod : string;
    Falias_id : integer;
    Fset_query : boolean;
    Finf_obj_id : integer;
    procedure SetUpdate(alias_id : integer);
    procedure SetNewFromLoad(alias_name : string);
  public
    constructor Create(Aowner: TApplication; type_table_cod: string);
  published
    property _GetAliasId : integer read Falias_id;
    property _GetSetQuery : boolean read Fset_query;
    property _SetUpdate : integer write SetUpdate;
    property _GetInfObjId : integer read Finf_obj_id;

    property _SetNewFromLoad : string write SetNewFromLoad;

  end;

var
  fmGlobalAliasAdd: TfmGlobalAliasAdd;

implementation
  uses GlobalAlias, Raznoe;

{$R *.dfm}


constructor TfmGlobalAliasAdd.Create(Aowner: TApplication; type_table_cod: string);
begin
  Screen.Cursor := -11;

  inherited Create(Aowner);
  Ftype_action := 0;
  Falias_id := -9;
  Ftype_table_cod := type_table_cod;

  Fset_query := True;
  cxCheckBox1.Checked := not Fset_query;

  Panel4.Visible := False;
  Constraints.MinHeight := Constraints.MinHeight - Panel4.Height;
  Height := Height - Panel4.Height;

  Query_TypeTable.Open;
  Query_TypeTable.Locate('group_cod', Ftype_table_cod, [loCaseInsensitive]);
  cxLookupComboBox3.EditValue := Query_TypeTable.FieldByName('type_inf_id').Value;

  Query_InfObj.Close;
  Query_InfObj.SQL.Clear;
  if Ftype_table_cod = '16' then begin
    Query_InfObj.SQL.Add('SELECT * FROM inf_obj_NODE WHERE convert(varchar(6), getdate(), 112) BETWEEN convert(varchar(6), date_begin, 112) AND convert(varchar(6), date_end, 112) ORDER BY inf_obj_name');
    cxLookupComboBox1.Properties.ListFieldNames := 'inf_obj_name;inf_obj_cod';
    cxLookupComboBox1.Properties.ListColumns[0].Width := 250;
    cxLookupComboBox1.Properties.ListColumns[1].Width := 50;
  end;
  if Ftype_table_cod = '10' then begin
    Query_InfObj.SQL.Add('SELECT * FROM inf_obj_ETSNG ORDER BY inf_obj_name');
    cxLookupComboBox1.Properties.ListFieldNames := 'inf_obj_name;inf_obj_cod';
    cxLookupComboBox1.Properties.ListColumns[0].Width := 250;
    cxLookupComboBox1.Properties.ListColumns[1].Width := 50;
  end;
  if Ftype_table_cod = '9' then begin
    Query_InfObj.SQL.Add('SELECT * FROM inf_obj_GNG ORDER BY inf_obj_name');
    cxLookupComboBox1.Properties.ListFieldNames := 'inf_obj_name;inf_obj_cod';
    cxLookupComboBox1.Properties.ListColumns[0].Width := 250;
    cxLookupComboBox1.Properties.ListColumns[1].Width := 50;
  end;
  if Ftype_table_cod = '13' then begin
    Query_InfObj.SQL.Add('SELECT * FROM inf_obj_ROAD ORDER BY inf_obj_name');
    cxLookupComboBox1.Properties.ListColumns[0].Width := 50;
    cxLookupComboBox1.Properties.ListColumns[1].Width := 250;
  end;
  if Ftype_table_cod = '11' then begin
    Query_InfObj.SQL.Add('SELECT * FROM inf_obj_STATE ORDER BY inf_obj_name');
    cxLookupComboBox1.Properties.ListColumns[0].Width := 100;
    cxLookupComboBox1.Properties.ListColumns[1].Width := 200;
  end;
  if Ftype_table_cod = '114' then begin
    Query_InfObj.SQL.Add('SELECT * FROM inf_obj WHERE type_inf_id = 114 ORDER BY inf_obj_name');
    cxLookupComboBox1.Properties.ListFieldNames := 'inf_obj_name';
  end;
  if Ftype_table_cod = '115' then begin
    Query_InfObj.SQL.Add('SELECT * FROM inf_obj WHERE type_inf_id = 115 ORDER BY inf_obj_name');
    cxLookupComboBox1.Properties.ListFieldNames := 'inf_obj_name';
  end;
  Query_InfObj.Open;

  MonitorEventFormOpen('OPEN_FORM', self.Name, fmGlobalAlias.ADOAlias, -9);
  Screen.Cursor := 0;
end;


procedure TfmGlobalAliasAdd.cxButton1Click(Sender: TObject);
var SP : TADOStoredProc;
begin
  if cxLookupComboBox1.EditValue = null then begin
    Application.MessageBox(Pchar('Укажите соответствие из справочника для синонима "' + cxTextEdit1.Text + '"'),'Внимание',MB_OK);
    ModalResult := mrNone;
    exit;
  end;

  if (cxTextEdit1.EditingValue = null) or (cxTextEdit1.EditingValue = '') then begin
    Application.MessageBox(Pchar('Укажите синоним для справочника "' + cxLookupComboBox1.Text + '"'),'Внимание',MB_OK);
    ModalResult := mrNone;
    exit;
  end;

  Finf_obj_id := cxLookupComboBox1.EditValue;
  Screen.Cursor := -11;

  SP := TADOStoredProc.Create(nil);
  SP.Connection := fmGlobalAlias.ADOAlias;
  SP.ProcedureName := 'sp_global_alias_modify;1';
  SP.Parameters.Refresh;

  SP.Parameters.ParamByName('@type_action').Value := Ftype_action;
  SP.Parameters.ParamByName('@alias_id').Value := iif(Falias_id = -9, null, Falias_id);
  SP.Parameters.ParamByName('@type_table_id').Value := cxLookupComboBox3.EditValue;
  SP.Parameters.ParamByName('@rows_id').Value := cxLookupComboBox1.EditValue;
  SP.Parameters.ParamByName('@alias_name').Value := cxTextEdit1.EditValue;
  try
    SP.ExecProc;
    Falias_id := SP.Parameters.ParamByName('@alias_id').Value;
  except
  end;

  SP.Free;
  Screen.Cursor := 0;
end;

procedure TfmGlobalAliasAdd.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Fset_query := not cxCheckBox1.Checked;
  Action := caFree;
end;

procedure TfmGlobalAliasAdd.SetNewFromLoad(alias_name : string);
begin
  Ftype_action := 0;
  cxTextEdit1.EditValue := alias_name;
  cxTextEdit1.Properties.ReadOnly := True;
  cxTextEdit1.Style.Color := clBtnFace;

  Constraints.MinHeight := Constraints.MinHeight + Panel4.Height;
  Panel4.Visible := True;
end;


procedure TfmGlobalAliasAdd.SetUpdate(alias_id: integer);
var Q : TADOQuery;
begin
  Screen.Cursor := -11;

  Ftype_action := 1;
  Falias_id := alias_id;
  Q := TADOQuery.Create(nil);
  Q.Connection := fmGlobalAlias.ADOAlias;
  if Ftype_table_cod = '16' then Q.SQL.Add('SELECT * FROM view_alias_NODE  WHERE alias_id=' + IntToStr(Falias_id));
  if Ftype_table_cod = '10' then Q.SQL.Add('SELECT * FROM view_alias_ETSNG WHERE alias_id=' + IntToStr(Falias_id));
  if Ftype_table_cod = '9' then Q.SQL.Add('SELECT * FROM view_alias_GNG   WHERE alias_id=' + IntToStr(Falias_id));
  if Ftype_table_cod = '13' then Q.SQL.Add('SELECT * FROM view_alias_ROAD  WHERE alias_id=' + IntToStr(Falias_id));
  if Ftype_table_cod = '11' then Q.SQL.Add('SELECT * FROM view_alias_STATE WHERE alias_id=' + IntToStr(Falias_id));
  if Ftype_table_cod = '114' then Q.SQL.Add('SELECT * FROM view_alias_OPER_VAGON WHERE alias_id=' + IntToStr(Falias_id));
  if Ftype_table_cod = '115' then Q.SQL.Add('SELECT * FROM view_alias_OPER_TRAIN WHERE alias_id=' + IntToStr(Falias_id));
  Q.Open;

  cxLookupComboBox1.EditValue := Q.FieldByName('rows_id').Value;
  cxTextEdit1.EditValue := Q.FieldByName('alias_name').Value;

  Q.Free;

  MonitorEventFormOpen('UPDATE_FORM', self.Name, fmGlobalAlias.ADOAlias, Falias_id);
  Screen.Cursor := 0;
end;

procedure TfmGlobalAliasAdd.BitBtn10Click(Sender: TObject);
//type
//  TFunc = function(AppHand:THandle;f:boolean;z:byte;usr_pwd:PUser_pwd) : variant;
//var
//  FDic     : TFunc;
//  handle   : THandle;
//  v        : Variant;
begin
//   handle := LoadLibrary('dictionary.dll');
//   @FDic := GetProcAddress(handle,'CreateWndDictionary');
//   v := FDic(Application.Handle, True, 255, fmGlobalAlias.Fusr_pwd);
//   if v[0] <> -9 then begin
//     Query_InfObj.Close;
//     Query_InfObj.Open;
//     cxLookupComboBox1.EditValue := v[0];
//  end;
//   FreeLibrary(handle);
end;

end.
