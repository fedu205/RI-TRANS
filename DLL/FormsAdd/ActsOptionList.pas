unit ActsOptionList;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,  StrUtils,
  Dialogs, cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters, cxStyles, cxCustomData, cxFilter, cxData, cxDataStorage, cxEdit, DB, cxDBData, StdCtrls, cxGridLevel, cxClasses, cxGridCustomView, cxGridCustomTableView, cxGridTableView, cxGridBandedTableView, cxGridDBBandedTableView, cxGrid, ExtCtrls, Buttons, ADODB, cxPropertiesStore, cxNavigator, cxContainer, cxLabel,
  cxDataControllerConditionalFormattingRulesManagerDialog;

type
  TfmActsOptionList = class(TForm)
    Panel1: TPanel;
    BitBtn2: TBitBtn;
    BitBtn1: TBitBtn;
    Splitter2: TSplitter;
    Panel2: TPanel;
    Panel3: TPanel;
    cxGrid2: TcxGrid;
    cxGridDBBandedTableView1: TcxGridDBBandedTableView;
    cxGridLevel1: TcxGridLevel;
    Panel4: TPanel;
    cxGrid1: TcxGrid;
    cxGridDBBandedTableView2: TcxGridDBBandedTableView;
    cxGridLevel2: TcxGridLevel;
    Label1: TLabel;
    Label2: TLabel;
    cxPropertiesStore1: TcxPropertiesStore;
    ADOQuery1: TADOQuery;
    ADOQuery2: TADOQuery;
    DataSource1: TDataSource;
    DataSource2: TDataSource;
    Panel5: TPanel;
    SpeedButton1: TSpeedButton;
    SpeedButton2: TSpeedButton;
    cxLabel108: TcxLabel;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure cxGridDBBandedTableView2KeyPress(Sender: TObject; var Key: Char);
    procedure cxGridDBBandedTableView1KeyPress(Sender: TObject; var Key: Char);
    procedure SpeedButton1Click(Sender: TObject);
    procedure SpeedButton2Click(Sender: TObject);
  private
    Flist : string;
    Fkey_field : string;
    Fsql :string;

    function GetList : string;
  public
    constructor Create(sql, list, caption : string; conn : TADOConnection);
  published
    property _GetList : string  read GetList;
  end;

var
  fmActsOptionList: TfmActsOptionList;

implementation

uses Raznoe;

{$R *.dfm}

constructor TfmActsOptionList.Create(sql, list, caption : string; conn : TADOConnection);
var i : integer;
begin
  inherited Create(Application);

  Flist := ReplaceStr(',' + list + ',', ',,', ',');
  Fsql := sql;

  Label1.Caption := caption;
  cxLabel108.Caption := '   ' + caption;

  ADOQuery1.DisableControls;
  ADOQuery2.DisableControls;

  ADOQuery1.Connection := conn;
  ADOQuery2.Connection := conn;

  ADOQuery1.SQL.Text := 'SELECT * FROM ('+sql+') x WHERE 1=0';
  ADOQuery1.Open;
  Fkey_field := ADOQuery1.Fields[0].FieldName;
  ADOQuery1.Close;

  ADOQuery1.SQL.Text := 'SELECT * FROM ('+sql+') x WHERE ['+Fkey_field+'] IN (-9'+Flist+'-9)';
  ADOQuery2.SQL.Text := 'SELECT * FROM ('+sql+') x WHERE ['+Fkey_field+'] NOT IN (-9'+Flist+'-9)';

  ADOQuery1.Open;
  ADOQuery2.Open;

  cxGridDBBandedTableView1.ClearItems;
  cxGridDBBandedTableView1.DataController.CreateAllItems;

  cxGridDBBandedTableView1.Columns[0].Summary.FooterKind := skCount;
  cxGridDBBandedTableView1.Columns[0].Summary.FooterFormat := 'Кол-во: 0';
  for i := 0 to cxGridDBBandedTableView1.ColumnCount - 1 do
    cxGridDBBandedTableView1.Columns[i].Width := iif(i = 0, 80, 200);

  cxGridDBBandedTableView2.ClearItems;
  cxGridDBBandedTableView2.DataController.CreateAllItems;

  cxGridDBBandedTableView2.Columns[0].Summary.FooterKind := skCount;
  cxGridDBBandedTableView2.Columns[0].Summary.FooterFormat := 'Кол-во: 0';
  for i := 0 to cxGridDBBandedTableView2.ColumnCount - 1 do
    cxGridDBBandedTableView2.Columns[i].Width := iif(i = 0, 80, 200);

  ADOQuery1.EnableControls;
  ADOQuery2.EnableControls;

end;

procedure TfmActsOptionList.cxGridDBBandedTableView1KeyPress(Sender: TObject; var Key: Char);
begin
  FilterColumnGridOnKeyPress(cxGridDBBandedTableView1, Key);
end;

procedure TfmActsOptionList.cxGridDBBandedTableView2KeyPress(Sender: TObject; var Key: Char);
begin
  FilterColumnGridOnKeyPress(cxGridDBBandedTableView2, Key);
end;

function TfmActsOptionList.GetList : string;
begin
  if Flist = ',' then
    Result := ''
  else
    Result := Copy(Flist, 2, length(Flist) - 2 );
end;

procedure TfmActsOptionList.SpeedButton1Click(Sender: TObject);
var i : integer;
begin
  for i := 0 to cxGridDBBandedTableView2.Controller.SelectedRowCount - 1 do begin
    Flist := Flist + VarToStr( cxGridDBBandedTableView2.Controller.SelectedRows[i].Values[0] ) + ',';
  end;

  ADOQuery1.DisableControls;
  ADOQuery2.DisableControls;

  ADOQuery1.Close;
  ADOQuery2.Close;

  ADOQuery1.SQL.Text := 'SELECT * FROM ('+Fsql+') x WHERE ['+Fkey_field+'] IN (-9'+Flist+'-9)';
  ADOQuery2.SQL.Text := 'SELECT * FROM ('+Fsql+') x WHERE ['+Fkey_field+'] NOT IN (-9'+Flist+'-9)';

  ADOQuery1.Open;
  ADOQuery2.Open;

  ADOQuery1.EnableControls;
  ADOQuery2.EnableControls;
end;

procedure TfmActsOptionList.SpeedButton2Click(Sender: TObject);
var i : integer;
begin
  for i := 0 to cxGridDBBandedTableView1.Controller.SelectedRowCount - 1 do begin
    Flist := ReplaceStr(Flist, ','+ VarToStr( cxGridDBBandedTableView1.Controller.SelectedRows[i].Values[0] ) + ',', ',');
  end;

  ADOQuery1.DisableControls;
  ADOQuery2.DisableControls;

  ADOQuery1.Close;
  ADOQuery2.Close;

  ADOQuery1.SQL.Text := 'SELECT * FROM ('+Fsql+') x WHERE ['+Fkey_field+'] IN (-9'+Flist+'-9)';
  ADOQuery2.SQL.Text := 'SELECT * FROM ('+Fsql+') x WHERE ['+Fkey_field+'] NOT IN (-9'+Flist+'-9)';

  ADOQuery1.Open;
  ADOQuery2.Open;

  ADOQuery1.EnableControls;
  ADOQuery2.EnableControls;
end;

procedure TfmActsOptionList.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action := caFree;
end;

end.
