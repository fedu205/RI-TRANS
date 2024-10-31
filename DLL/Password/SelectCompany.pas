unit SelectCompany;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, cxStyles, cxCustomData, cxGraphics, cxFilter, cxData, cxDataStorage,
  cxEdit, DB, cxDBData, cxCurrencyEdit, cxGridLevel, cxGridCustomTableView,
  cxGridTableView, cxGridBandedTableView, cxGridDBBandedTableView, cxClasses,
  cxControls, cxGridCustomView, cxGrid, StdCtrls, ExtCtrls,
  ADODB, Default, cxLookAndFeels, cxLookAndFeelPainters, Vcl.Menus, cxButtons, dxScrollbarAnnotations, cxNavigator, dxDateRanges;

type
  TfmSelectCompany = class(TForm)
    Panel1: TPanel;
    Panel2: TPanel;
    cxGrid1: TcxGrid;
    cxGrid1DBBandedTableView1: TcxGridDBBandedTableView;
    cxGrid1Level1: TcxGridLevel;
    Query_Company: TADOQuery;
    DS_Company: TDataSource;
    ADOSelectCompany: TADOConnection;
    cxGrid1DBBandedTableView1users_id: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1users_group_id: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1users_group_name: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1users_name: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1users_group_cod: TcxGridDBBandedColumn;
    cxButton1: TcxButton;
    cxButton3: TcxButton;
    procedure cxGrid1DBBandedTableView1CustomDrawCell(Sender: TcxCustomGridTableView; ACanvas: TcxCanvas; AViewInfo: TcxGridTableDataCellViewInfo; var ADone: Boolean);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure cxButton1Click(Sender: TObject);
    procedure cxGrid1DBBandedTableView1KeyPress(Sender: TObject; var Key: Char);
  private
    Fusers_name : string;
    procedure LocateUsersGroupID(users_group_id: integer);
  public
    constructor Create(AOwner: TApplication; usr_pwd: TUser_pwd);
  published
    property _GetUsersName  : string  read Fusers_name;
    property _LocateUsersGroupID : integer write LocateUsersGroupID;

  end;

  function CreateWndSelectCompany(AppHandle : THandle; usr_pwd: TUser_pwd) : Variant; export;

var
  fmSelectCompany: TfmSelectCompany;

implementation

{$R *.dfm}

function CreateWndSelectCompany(AppHandle : THandle; usr_pwd: TUser_pwd) : Variant;
begin
  Application.Handle := AppHandle;
  try

    fmSelectCompany := TfmSelectCompany.Create(Application, usr_pwd);

    if fmSelectCompany.ShowModal = mrOK then
      Result := VarArrayOf([
      fmSelectCompany.Query_Company.FieldByName('users_id').AsString,
      fmSelectCompany.Query_Company.FieldByName('users_name').AsString,
      fmSelectCompany.Query_Company.FieldByName('users_group_id').AsString,
      fmSelectCompany.Query_Company.FieldByName('users_cod').AsString])
    else
      Result := VarArrayOf(['', '', '', '']);
  finally
    fmSelectCompany.Free;
  end;
end;


constructor TfmSelectCompany.Create(AOwner: TApplication; usr_pwd: TUser_pwd);
begin
  Screen.Cursor := crHourglass;
  inherited Create(AOwner);
  ADOSelectCompany.Connected := False;
  ADOSelectCompany.ConnectionString := 'Persist Security Info=True;Provider=SQLOLEDB.1;User ID='+usr_pwd.user_name+';Password='+usr_pwd.user_pass+';Initial Catalog='+usr_pwd.catalog+';Data Source='+usr_pwd.server+';';
  ADOSelectCompany.Connected := True;

  Fusers_name := usr_pwd.user_name;

  Query_Company.Parameters.ParamByName('users_id').Value := usr_pwd.users_id;
  Query_Company.Open;

  Screen.Cursor := crDefault;
end;


procedure TfmSelectCompany.cxButton1Click(Sender: TObject);
begin
  Fusers_name := cxGrid1DBBandedTableView1users_name.DataBinding.Field.AsString;
  ModalResult := mrOk;
end;

procedure TfmSelectCompany.cxGrid1DBBandedTableView1CustomDrawCell(Sender: TcxCustomGridTableView; ACanvas: TcxCanvas; AViewInfo: TcxGridTableDataCellViewInfo; var ADone: Boolean);
begin
  if AViewInfo.GridRecord.Selected or AViewInfo.GridRecord.Focused then begin
    ACanvas.Brush.Color := clNavy;
    ACanvas.Font.Color := clWhite;
    if AViewInfo.Focused then begin
       ACanvas.Font.Color := clWhite;
       ACanvas.Brush.Color := clBlue;
    end;
  end;
end;

procedure TfmSelectCompany.cxGrid1DBBandedTableView1KeyPress(Sender: TObject; var Key: Char);
begin
  if Key = #13 then cxButton1Click(cxButton1);
end;

procedure TfmSelectCompany.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action := caFree;
end;

procedure TfmSelectCompany.LocateUsersGroupID(users_group_id: integer);
begin
  if cxGrid1DBBandedTableView1.DataController.LocateByKey(users_group_id) = False then cxGrid1DBBandedTableView1.Controller.GoToFirst;
  if cxGrid1DBBandedTableView1.Controller.FocusedRecord <> nil then  cxGrid1DBBandedTableView1.Controller.FocusedRecord.Selected := True;
end;


end.
