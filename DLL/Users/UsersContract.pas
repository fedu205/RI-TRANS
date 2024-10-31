unit UsersContract;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs, Raznoe,
  StdCtrls, Buttons, ExtCtrls, Db, ADODB, Mask, DBCtrls, cxControls,
  cxContainer, cxListBox, ComCtrls, cxTreeView, cxLabel, cxEdit,
  cxTextEdit, cxMaskEdit, cxGraphics, cxDropDownEdit, cxCheckListBox,
  Menus, cxLookAndFeelPainters, cxButtons, DBGrids,
  cxStyles, cxCustomData, cxFilter, cxData, cxDataStorage, cxDBData,
  cxCurrencyEdit, cxCheckBox, cxGridLevel, cxGridCustomTableView,
  cxGridTableView, cxGridBandedTableView, cxGridDBBandedTableView, cxClasses,
  cxGridCustomView, cxGrid, ToolWin, cxCalendar, dxBar, cxPC, cxPropertiesStore,
  ActnList, cxLookAndFeels;

type
  TfmUsersContract = class(TForm)
    Panel1: TPanel;
    cxGrid1: TcxGrid;
    cxGrid1DBBandedTableView1: TcxGridDBBandedTableView;
    cxGrid1DBBandedTableView1contract_id: TcxGridDBBandedColumn;
    cxGridDBBandedColumn2: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1type_contract: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1date_begin: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1date_end: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1firm_self_name: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1firm_customer_name: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1firm_self_right_form_name: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1firm_customer_right_form_name: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1note: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1FIO_users_owner: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1self_original_name: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1customer_original_name: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1date_long: TcxGridDBBandedColumn;
    cxGridDBBandedColumn6: TcxGridDBBandedColumn;
    cxGrid1Level1: TcxGridLevel;
    cxTabControl1: TcxTabControl;
    dxBarManager1: TdxBarManager;
    dxBarManager1Bar1: TdxBar;
    dxBarButton5: TdxBarButton;
    dxBarButton6: TdxBarButton;
    dxBarSubItem1: TdxBarSubItem;
    dxBarButton16: TdxBarButton;
    Query_Contract: TADOQuery;
    DS_Contract: TDataSource;
    cxPropertiesStore1: TcxPropertiesStore;
    ActionList1: TActionList;
    Action1: TAction;
    dxBarPopup_contract: TdxBarPopupMenu;
    procedure Action1Execute(Sender: TObject);
    procedure dxBarButton6Click(Sender: TObject);
    procedure dxBarButton5Click(Sender: TObject);
    procedure dxBarButton16Click(Sender: TObject);
    procedure cxTabControl1Change(Sender: TObject);
    procedure DBBandedTableView1FocusedItemChanged(Sender: TcxCustomGridTableView; APrevFocusedItem, AFocusedItem: TcxCustomGridTableItem);
    procedure DBBandedTableView1CustomDrawCell(Sender: TcxCustomGridTableView; ACanvas: TcxCanvas; AViewInfo: TcxGridTableDataCellViewInfo; var ADone: Boolean);
    procedure DBBandedTableView1CustomDrawColumnHeader(Sender: TcxGridTableView; ACanvas: TcxCanvas; AViewInfo: TcxGridColumnHeaderViewInfo; var ADone: Boolean);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private

  public
    Fstr_contract_id     : string;
    constructor Create(AOwner : TApplication; action : boolean);
  published
  end;

var
  fmUsersContract: TfmUsersContract;

implementation
    uses UsersRole, Filter;
{$R *.DFM}


constructor TfmUsersContract.Create(AOwner: TApplication; action: boolean);
var Date1, Date2: TDateTime;
begin
  Screen.Cursor := crHourglass;
  inherited Create(AOwner);
  cxTabControl1.TabIndex := fmUsersRole.cxTabControl1.TabIndex;
  Fstr_contract_id := '';

  Query_Contract.Close;
  Query_Contract.Parameters.ParamByName('type_contract').Value := cxTabControl1.TabIndex;
  Query_Contract.Open;

  Screen.Cursor := crDefault;
end;

procedure TfmUsersContract.Action1Execute(Sender: TObject);
begin
  Close;
end;

procedure TfmUsersContract.cxTabControl1Change(Sender: TObject);
begin
  Screen.Cursor := crHourglass;

  case cxTabControl1.TabIndex of
    0 : cxGrid1DBBandedTableView1firm_customer_name.Caption :='Клиент';
    1 : cxGrid1DBBandedTableView1firm_customer_name.Caption :='Субподрядчик';
  end;

  Query_Contract.Close;
  Query_Contract.Parameters.ParamByName('type_contract').Value := cxTabControl1.TabIndex;
  Query_Contract.Open;

  Screen.Cursor := crDefault;
end;

procedure TfmUsersContract.DBBandedTableView1CustomDrawCell(Sender: TcxCustomGridTableView; ACanvas: TcxCanvas; AViewInfo: TcxGridTableDataCellViewInfo; var ADone: Boolean);
begin
  if AViewInfo.GridRecord.Selected or AViewInfo.GridRecord.Focused then begin
    ACanvas.Brush.Color := clNavy;
    ACanvas.Font.Color := clWhite;
    if AViewInfo.Focused then ACanvas.Brush.Color := clBlue;
  end;
end;

procedure TfmUsersContract.DBBandedTableView1CustomDrawColumnHeader(Sender: TcxGridTableView; ACanvas: TcxCanvas; AViewInfo: TcxGridColumnHeaderViewInfo; var ADone: Boolean);
begin
  if AViewInfo.Column.Focused then begin
    ACanvas.Brush.Color := clNavy;
    ACanvas.Font.Color := clWhite;
  end;
end;

procedure TfmUsersContract.DBBandedTableView1FocusedItemChanged(Sender: TcxCustomGridTableView; APrevFocusedItem, AFocusedItem: TcxCustomGridTableItem);
begin
  Sender.Painter.Invalidate;
end;

procedure TfmUsersContract.dxBarButton16Click(Sender: TObject);
begin
  if dxBarButton16.Down then begin
    Query_Contract.Close;
    Query_Contract.SQL[2] := 'AND date_end >= GETDATE()';
    Query_Contract.Open;
  end else begin
    Query_Contract.Close;
    Query_Contract.SQL[2] := '';
    Query_Contract.Open;
  end;
end;

procedure TfmUsersContract.dxBarButton5Click(Sender: TObject);
var new_str : string;
begin
  if InputQuery('Поиск', 'Введите слово для поиска', new_str) then begin
    fmUsersRole.Query1.Close;
    fmUsersRole.Query1.SQL.Clear;
    fmUsersRole.Query1.SQL.Add('SELECT contract_id, firm_customer_name, contract_cod FROM view_contract_rights WHERE firm_customer_name LIKE ''%'+new_str+'%'' and type_contract='+IntToStr(cxTabControl1.TabIndex)+' ORDER BY firm_customer_name');
    fmUsersRole.Query1.Open;
    fmFilter := TfmFilter.Create(0, fmUsersRole.Query1, 'contract_id', 'contract_cod', 'firm_customer_name');
    if fmFilter.ShowModal=mrOk then if not Query_Contract.Locate('contract_id', fmFilter.GetId, [loCaseInsensitive]) then
      begin
        if dxBarButton16.Down then begin
          Showmessage('В действующих договарах фирма не найдена - поиск будет продолжен в договорах прекративших действие');
          dxBarButton16.Down := False;
          dxBarButton16Click(nil);
          Query_Contract.Locate('contract_id', fmFilter.GetId, [loCaseInsensitive]);
        end;
      end;
  end;
end;

procedure TfmUsersContract.dxBarButton6Click(Sender: TObject);
var str_contract_id  : string;
    i             : integer;
begin
  str_contract_id := '';
  for i:=0 to cxGrid1DBBandedTableView1.Controller.SelectedRecordCount - 1 do
    str_contract_id := str_contract_id + ', ' + IntToStr(cxGrid1DBBandedTableView1.Controller.SelectedRows[i].Values[cxGrid1DBBandedTableView1contract_id.Index]);
  Delete(str_contract_id, 1, 2);
  Fstr_contract_id := str_contract_id;
  ModalResult := mrOk;
end;


procedure TfmUsersContract.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action := caFree;
end;

end.
