unit FilterTree;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, cxGraphics, cxCustomData, cxStyles, cxTL, cxMaskEdit, DB, DBClient, cxInplaceContainer, cxDBTL,
  cxControls, cxTLData, StdCtrls, Buttons, ExtCtrls, cxPropertiesStore,
  cxLookAndFeels, cxLookAndFeelPainters, cxTLdxBarBuiltInMenu, dxGDIPlusAPI, dxCore,
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
  dxSkinXmas2008Blue, cxClasses, dxSkinOffice2016Colorful, dxSkinOffice2016Dark, dxSkinVisualStudio2013Blue,
  dxSkinVisualStudio2013Dark, dxSkinVisualStudio2013Light, Data.Win.ADODB,
  Default, dxSkinOffice2019Colorful, dxSkinTheBezier;

type
  TfmFilterTree = class(TForm)
    cxDBTreeList1: TcxDBTreeList;
    DS_Filter: TDataSource;
    cxDBTreeList1id: TcxDBTreeListColumn;
    cxDBTreeList1parent_id: TcxDBTreeListColumn;
    cxDBTreeList1name: TcxDBTreeListColumn;
    cxDBTreeList1cod: TcxDBTreeListColumn;
    Panel2: TPanel;
    BitBtn2: TBitBtn;
    BitBtn1: TBitBtn;
    cxPropertiesStore1: TcxPropertiesStore;
    FQuery: TADOQuery;
    procedure BitBtn2Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure cxDBTreeList1FocusedNodeChanged(Sender: TcxCustomTreeList;
      APrevFocusedNode, AFocusedNode: TcxTreeListNode);
  private
    Fid        : integer;
    Fparent_id : integer;
    Fcod       : string;
    Fname      : string;

    Fbudget_id   : integer;
    Fbudget_cod  : integer;
    Fbudget_name : string;

    Fset_use_child_only : Boolean;

    procedure SetCaption(Acaption : string);
    procedure SetId(Aid : integer);

  public
    constructor Create(AOwner: TApplication; Q: TCustomADODataSet; id, parent_id, cod, name: string);
  published
    property _SetCaption      : string  write SetCaption;

    property _SetUseChildOnly : boolean read Fset_use_child_only write Fset_use_child_only;
    property _SetId           : integer write SetId;

    property _GetId           : integer read Fid;
    property _GetParentId     : integer read Fparent_id;
    property _GetCod          : string  read Fcod;
    property _GetName         : string  read Fname;

  end;

  function CreateWndFilterTree(AppHand : THandle; usr_pwd_docs : PUser_pwd; iTag : SmallInt) : variant; export;

var
  fmFilterTree: TfmFilterTree;

implementation

{$R *.dfm}

constructor TfmFilterTree.Create(AOwner: TApplication; Q: TCustomADODataSet; id, parent_id, cod, name: string);
begin
  Screen.Cursor := crHourglass;
  inherited Create(AOwner);

  Fset_use_child_only := True;

  FQuery.Clone(Q);
  FQuery.Filter := Q.Filter;
  cxDBTreeList1.DataController.KeyField        := id;
  cxDBTreeList1.DataController.ParentField     := parent_id;

  cxDBTreeList1id.DataBinding.FieldName        := id;
  cxDBTreeList1parent_id.DataBinding.FieldName := parent_id;
  cxDBTreeList1cod.DataBinding.FieldName       := cod;
  cxDBTreeList1name.DataBinding.FieldName      := name;

  if FQuery.RecordCount > 0 then begin
    cxDBTreeList1.FullCollapse; // Закрыть все
    cxDBTreeList1.Items[cxDBTreeList1.Root.Index].Expand(False); // Открыть только верхний уровень
    cxDBTreeList1.Items[cxDBTreeList1.Root.Index].Selected := True;
    cxDBTreeList1.Items[cxDBTreeList1.Root.Index].Focused := True;
  end;

  Screen.Cursor := crDefault;
end;


function CreateWndFilterTree(AppHand : THandle; usr_pwd_docs : PUser_pwd; iTag : SmallInt) : variant; export;
var
  Q       : TADOQuery;
  Connect : TADOConnection;
begin

  Connect := TADOConnection.Create(nil);
  Connect.KeepConnection := False;
  Connect.LoginPrompt    := False;
  Connect.ConnectionString  := 'Persist Security Info=True;Provider=SQLOLEDB.1;User ID=' + usr_pwd_docs.user_name + ';Password = '
  + usr_pwd_docs.user_pass + ';Initial Catalog=' + usr_pwd_docs.catalog + ';Data Source = ' + usr_pwd_docs.server + ';';
  Connect.Open;
  //выборка бюджетов из ЛИС_ДОК
  Q := TADOQuery.Create(nil);
  Q.Connection := Connect;

  {Tag объета с которого запущено выполнение процедуры 0 - Бюджет; 1 - Статья;}
  if iTag = 0 then
    Q.SQL.Text := 'select * from view_inf_obj where type_inf_id = 121'//берем бюджеты из ЛИС-ДОК
  else
    Q.SQL.Text := 'select * from view_inf_obj where type_inf_id = 120';//берем статьи из ЛИС-ДОК
  Q.Open;

  Application.Handle := AppHand;
  fmFilterTree := TfmFilterTree.Create(Application, Q, 'inf_obj_id', 'parent_id', 'inf_obj_cod', 'inf_obj_name');
  if iTag = 0 then
    fmFilterTree._SetCaption := 'Выбор бюджета "LIS-Docs"'
  else
    fmFilterTree._SetCaption := 'Выбор статьи "LIS-Docs"';

  with fmFilterTree do
  try
    if ShowModal = mrOK then result := VarArrayOf([_GetId, _GetCod, _GetName])
    else result := VarArrayOf([-9, '', '']);
  finally
    Q.Free;
    Connect.Free;
    Free;
  end;

end;


procedure TfmFilterTree.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action := caFree;
end;

procedure TfmFilterTree.SetId(Aid : integer);
begin
  cxDBTreeList1.FullCollapse; // Закрыть все
  cxDBTreeList1.DataController.LocateByKey(Aid);
end;

procedure TfmFilterTree.SetCaption(Acaption : string);
begin
  Self.Caption := Acaption;
end;

procedure TfmFilterTree.cxDBTreeList1FocusedNodeChanged(Sender: TcxCustomTreeList; APrevFocusedNode, AFocusedNode: TcxTreeListNode);
begin
  if cxDBTreeList1.FocusedNode = nil then
    BitBtn2.Enabled := False // нет записи
  else if cxDBTreeList1.FocusedNode.HasChildren and Fset_use_child_only then
    BitBtn2.Enabled := False // есть потомки + можно выбирать только листья
  else
    BitBtn2.Enabled := True;
//  BitBtn2.Enabled := (not cxDBTreeList1.FocusedNode.HasChildren) or (not Fset_use_child_only);
end;

procedure TfmFilterTree.BitBtn2Click(Sender: TObject);
begin
  // Если можно кнопку нажать, то нажимаем
  if BitBtn2.Enabled then begin
    Fid        := cxDBTreeList1id.DataBinding.Field.AsInteger;
    Fparent_id := cxDBTreeList1parent_id.DataBinding.Field.AsInteger;
    Fcod       := cxDBTreeList1cod.DataBinding.Field.AsString;
    Fname      := cxDBTreeList1name.DataBinding.Field.AsString;

    ModalResult  := mrOk;
  end;
end;

end.
