unit RepAnalysis;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, cxControls, cxContainer, cxEdit, cxLabel, dxGDIPlusClasses, ExtCtrls,
  DB, ADODB, Default, DBClient, cxStyles, cxCustomData, cxGraphics, cxFilter,
  cxData, cxDataStorage, cxDBData, cxGridBandedTableView,
  cxGridDBBandedTableView, cxGridLevel, cxClasses, cxGridCustomView,
  cxGridCustomTableView, cxGridTableView, cxGridDBTableView, cxGrid, StdCtrls,
  dxBar, Menus, Clipbrd, Other, ComObj, Raznoe, cxMaskEdit, cxDropDownEdit,
  cxCalendar, cxTextEdit, Registry, cxPropertiesStore, ImgList, Buttons, cxPC,
  cxLookupEdit, cxDBLookupEdit, cxDBLookupComboBox, cxCurrencyEdit, cxCheckBox,
  cxLookAndFeels, cxLookAndFeelPainters;

type
  TfmRepAnalysis = class(TForm)
    ADOAnalysis: TADOConnection;
    Panel30: TPanel;
    Image2: TImage;
    cxLabel108: TcxLabel;
    DS_Vagon: TDataSource;
    Client_Vagon: TClientDataSet;
    Client_Vagonnum_vagon: TLargeintField;
    Client_Vagonsum_day_idle: TIntegerField;
    Client_Vagonsum_day_idle_pay: TIntegerField;
    Client_Vagoncomment: TStringField;
    cxGrid1DBTableView1: TcxGridDBTableView;
    cxGrid1: TcxGrid;
    cxGrid1Level1: TcxGridLevel;
    cxGrid1DBBandedTableView1: TcxGridDBBandedTableView;
    cxGrid1DBBandedTableView1num_vagon: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1sum_day_idle: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1sum_day_idle_pay: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1comment: TcxGridDBBandedColumn;
    dxBarManager1: TdxBarManager;
    dxBarPopupMenu1: TdxBarPopupMenu;
    dxBarButton1: TdxBarButton;
    dxBarButton2: TdxBarButton;
    dxBarButton3: TdxBarButton;
    Panel1: TPanel;
    dxBarButton4: TdxBarButton;
    dxBarSubItem1: TdxBarSubItem;
    dxBarButton5: TdxBarButton;
    dxBarButton6: TdxBarButton;
    dxBarButton7: TdxBarButton;
    cxTextEdit1: TcxTextEdit;
    cxDateEdit1: TcxDateEdit;
    cxDateEdit2: TcxDateEdit;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    dxBarButton8: TdxBarButton;
    cxPropertiesStore1: TcxPropertiesStore;
    cxImageList_16: TcxImageList;
    cxPageControl1: TcxPageControl;
    cxTabSheet1: TcxTabSheet;
    cxTabSheet2: TcxTabSheet;
    Panel3: TPanel;
    Image1: TImage;
    cxLabel1: TcxLabel;
    Panel4: TPanel;
    Label4: TLabel;
    cxGrid2: TcxGrid;
    cxGridDBTableView1: TcxGridDBTableView;
    cxGridDBBandedTableView1: TcxGridDBBandedTableView;
    cxGridLevel1: TcxGridLevel;
    Client_Vagon_Route: TClientDataSet;
    DS_Vagon_Route: TDataSource;
    DS_Route: TDataSource;
    Client_Route: TClientDataSet;
    Client_Routeroute_id: TAutoIncField;
    Client_Routenode_begin_id: TIntegerField;
    Client_Routenode_end_id: TIntegerField;
    Client_Routeroute_name: TStringField;
    Client_Vagon_Routenum_vagon: TIntegerField;
    Client_Vagon_Routecnt_route: TIntegerField;
    Client_Vagon_Routecomment: TStringField;
    Client_Vagon_Routeday_cnt_route: TIntegerField;
    Client_Vagon_Routeday_avg_route: TCurrencyField;
    cxGridDBBandedTableView1num_vagon: TcxGridDBBandedColumn;
    cxGridDBBandedTableView1cnt_route: TcxGridDBBandedColumn;
    cxGridDBBandedTableView1comment: TcxGridDBBandedColumn;
    cxGridDBBandedTableView1day_cnt_route: TcxGridDBBandedColumn;
    cxGridDBBandedTableView1day_avg_route: TcxGridDBBandedColumn;
    dxBarPopupMenu2: TdxBarPopupMenu;
    dxBarManager1Bar1: TdxBar;
    dxBarButton9: TdxBarButton;
    dxBarButton10: TdxBarButton;
    dxBarButton11: TdxBarButton;
    dxBarButton12: TdxBarButton;
    dxBarButton13: TdxBarButton;
    dxBarButton14: TdxBarButton;
    dxBarButton15: TdxBarButton;
    dxBarButton16: TdxBarButton;
    Label5: TLabel;
    cxDateEdit3: TcxDateEdit;
    Label6: TLabel;
    cxDateEdit4: TcxDateEdit;
    cxLookupComboBox2: TcxLookupComboBox;
    BitBtn2: TBitBtn;
    BitBtn1: TBitBtn;
    cxTabSheet3: TcxTabSheet;
    cxGrid3: TcxGrid;
    cxGridDBTableView2: TcxGridDBTableView;
    cxGridDBBandedTableView2: TcxGridDBBandedTableView;
    cxGridDBBandedColumn1: TcxGridDBBandedColumn;
    cxGridDBBandedColumn2: TcxGridDBBandedColumn;
    cxGridDBBandedColumn3: TcxGridDBBandedColumn;
    cxGridDBBandedColumn4: TcxGridDBBandedColumn;
    cxGridDBBandedColumn5: TcxGridDBBandedColumn;
    cxGridLevel2: TcxGridLevel;
    Panel2: TPanel;
    Image3: TImage;
    cxLabel2: TcxLabel;
    Panel5: TPanel;
    Label8: TLabel;
    Label9: TLabel;
    cxDateEdit5: TcxDateEdit;
    cxDateEdit6: TcxDateEdit;
    BitBtn3: TBitBtn;
    dxBarPopupMenu3: TdxBarPopupMenu;
    dxBarButton17: TdxBarButton;
    dxBarButton18: TdxBarButton;
    dxBarButton19: TdxBarButton;
    dxBarButton20: TdxBarButton;
    dxBarButton21: TdxBarButton;
    dxBarButton22: TdxBarButton;
    dxBarButton23: TdxBarButton;
    dxBarButton24: TdxBarButton;
    DS_vagon_kargo: TDataSource;
    cxLookupComboBox3: TcxLookupComboBox;
    Label7: TLabel;
    DS_Route2: TDataSource;
    Client_Route2: TClientDataSet;
    AutoIncField1: TAutoIncField;
    IntegerField3: TIntegerField;
    IntegerField4: TIntegerField;
    StringField2: TStringField;
    Client_Vagon_kargo: TClientDataSet;
    IntegerField1: TIntegerField;
    IntegerField2: TIntegerField;
    StringField1: TStringField;
    IntegerField5: TIntegerField;
    CurrencyField1: TCurrencyField;
    Label10: TLabel;
    Label11: TLabel;
    cxTextEdit2: TcxTextEdit;
    cxTextEdit3: TcxTextEdit;
    cxCheckBox1: TcxCheckBox;
    Client_Vagon_kargobase_rate: TCurrencyField;
    Client_Vagon_kargodeviation: TCurrencyField;
    Client_Vagon_kargodeviation_rate: TCurrencyField;
    Client_Vagon_kargodeviation_sum: TCurrencyField;
    cxGridDBBandedTableView2Column1: TcxGridDBBandedColumn;
    cxGridDBBandedTableView2Column2: TcxGridDBBandedColumn;
    cxGridDBBandedTableView2Column3: TcxGridDBBandedColumn;
    cxGridDBBandedTableView2Column4: TcxGridDBBandedColumn;
    procedure BitBtn3Click(Sender: TObject);
    procedure cxDateEdit5PropertiesEditValueChanged(Sender: TObject);
    procedure Client_Vagon_kargoAfterPost(DataSet: TDataSet);
    procedure cxDateEdit3PropertiesEditValueChanged(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure Client_Vagon_RouteAfterPost(DataSet: TDataSet);
    procedure BitBtn1Click(Sender: TObject);
    procedure dxBarButton8Click(Sender: TObject);
    procedure dxBarButton4Click(Sender: TObject);
    procedure dxBarButton7Click(Sender: TObject);
    procedure dxBarButton6Click(Sender: TObject);
    procedure dxBarButton5Click(Sender: TObject);
    procedure dxBarButton3Click(Sender: TObject);
    procedure dxBarButton2Click(Sender: TObject);
    procedure dxBarButton1Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
  public
    constructor Create(AOwner: TApplication; usr_pwd: PUser_pwd);
  end;

var
  fmRepAnalysis: TfmRepAnalysis;

function CreateWndAnalysis(AppHand:THandle; usr_pwd:PUser_pwd) : variant; export;

implementation

{$R *.dfm}

function CreateWndAnalysis(AppHand:THandle; usr_pwd:PUser_pwd) : variant;
begin
  Application.Handle := AppHand;
  try
    fmRepAnalysis := TfmRepAnalysis.Create(Application, usr_pwd);

    if fmRepAnalysis.Height < 460 then fmRepAnalysis.Height := 460;
    if fmRepAnalysis.Width  < 640 then fmRepAnalysis.Width  := 640;

    fmRepAnalysis.ShowModal;
    Result := '';
  finally
    fmRepAnalysis.Free;
  end;
end;

constructor TfmRepAnalysis.Create(AOwner: TApplication; usr_pwd:PUser_pwd);
var Reg : TRegistry;
begin
  Screen.Cursor := crHourglass;
  inherited Create(AOwner);

  ADOAnalysis.Connected := False;
  ADOAnalysis.ConnectionString := ADOAnalysis.ConnectionString+';User ID='+usr_pwd^.user_name+';Password='+usr_pwd^.user_pass+';Initial Catalog='+usr_pwd^.catalog+';Data Source='+usr_pwd^.server+';';
  ADOAnalysis.Connected := True;

  Client_Vagon.CreateDataSet;
  Client_Vagon_Route.CreateDataSet;
  Client_Route.CreateDataSet;
  Client_Route2.CreateDataSet;
  Client_Vagon_kargo.CreateDataSet;

  StoreRegistryGrid(rgLoad,'\Software\Lis1\Analysis_Grids' , cxGrid1DBBandedTableView1);
  StoreRegistryGrid(rgLoad,'\Software\Lis1\Analysis_Grids2', cxGridDBBandedTableView1);
  StoreRegistryGrid(rgLoad,'\Software\Lis1\Analysis_Grids3', cxGridDBBandedTableView2);
  Reg := TRegistry.Create;
  Reg.RootKey := HKEY_CURRENT_USER;
  if not Reg.KeyExists('\Software\LIS1\RepAnalysis\') then Reg.CreateKey('\Software\LIS1\RepAnalysis\');
  Reg.OpenKey('\Software\LIS1\RepAnalysis\', True);

  if Reg.ValueExists('date_end_kargo') then begin
    cxDateEdit1.Date := Reg.ReadDate('date_begin');
    cxDateEdit2.Date := Reg.ReadDate('date_end');
    cxDateEdit3.Date := Reg.ReadDate('date_begin_route');
    cxDateEdit4.Date := Reg.ReadDate('date_end_route');
    cxDateEdit5.Date := Reg.ReadDate('date_begin_kargo');
    cxDateEdit6.Date := Reg.ReadDate('date_end_kargo');
    cxTextEdit1.Text := Reg.ReadString('nday');
  end else begin
    cxDateEdit1.Date := Date-30;
    cxDateEdit2.Date := Date;
    cxDateEdit3.Date := Date-30;
    cxDateEdit4.Date := Date;
    cxDateEdit5.Date := Date-30;
    cxDateEdit6.Date := Date;
    cxTextEdit1.Text := '2';
  end;
  
  Reg.Free;

  Screen.Cursor := crDefault;
end;


procedure TfmRepAnalysis.BitBtn1Click(Sender: TObject);
var SP_analysis_days_idle : TADOStoredProc;
begin
  if Client_Vagon.RecordCount <= 0 then begin
    ShowMessage('Нет вагонов!');
    Exit;
  end;

  Screen.Cursor := crHourglass;
  SP_analysis_days_idle := TADOStoredProc.Create(nil);
  SP_analysis_days_idle.Connection := ADOAnalysis;
  SP_analysis_days_idle.ProcedureName := 'sp_analysis_days_idle';

  Client_Vagon.First;
  DS_Vagon.DataSet := nil;
  ShowTextMessage('Анализ вагонов...', False);
  while not Client_Vagon.Eof do begin
    SP_analysis_days_idle.Close;
    SP_analysis_days_idle.Parameters.Refresh;
    SP_analysis_days_idle.Parameters.ParamByName('@num_vagon').Value  := Client_Vagon.FieldByName('num_vagon').AsString;
    SP_analysis_days_idle.Parameters.ParamByName('@date_begin').Value := cxDateEdit1.Date;
    SP_analysis_days_idle.Parameters.ParamByName('@date_end').Value   := cxDateEdit2.Date;
    SP_analysis_days_idle.Parameters.ParamByName('@nday').Value       := StrToInt(cxTextEdit1.Text);
    SP_analysis_days_idle.Open;

    Client_Vagon.Edit;
    Client_Vagon.FieldByName('sum_day_idle').Value      := SP_analysis_days_idle.FieldByName('sum_day_idle').Value;
    Client_Vagon.FieldByName('sum_day_idle_pay').Value  := SP_analysis_days_idle.FieldByName('sum_day_idle_pay').Value;
    Client_Vagon.FieldByName('comment').Value           := SP_analysis_days_idle.FieldByName('comment').Value;
    Client_Vagon.Post;
    Client_Vagon.Next;
    ShowTextMessage('Анализ вагонов...' + #10 + 'Осталось ' + IntToStr(Client_Vagon.RecordCount - Client_Vagon.RecNo), False);
  end;
  DS_Vagon.DataSet := Client_Vagon;

  SP_analysis_days_idle.Free;
  ShowTextMessage();
  Screen.Cursor := crDefault;
end;

procedure TfmRepAnalysis.BitBtn2Click(Sender: TObject);
var SP_analysis_days_route : TADOStoredProc;
begin
  if Client_Vagon_Route.RecordCount <= 0 then begin
    ShowMessage('Нет вагонов!');
    Exit;
  end;

  if cxLookupComboBox2.EditValue = null then begin
    ShowMessage('Не выбран маршрут!');
    Exit;
  end;

  Client_Route.Locate('route_id', cxLookupComboBox2.EditValue, []);
//  Client_Route.FieldByName('node_begin_id').AsString;
//  Client_Route.FieldByName('node_end_id').AsString;

  Screen.Cursor := crHourglass;
  SP_analysis_days_route := TADOStoredProc.Create(nil);
  SP_analysis_days_route.Connection := ADOAnalysis;
  SP_analysis_days_route.ProcedureName := 'sp_analysis_days_route';

  Client_Vagon_Route.First;
  DS_Vagon_Route.DataSet := nil;
  ShowTextMessage('Анализ вагонов...', False);
  Client_Vagon_Route.AfterPost := nil;
  while not Client_Vagon_Route.Eof do begin
    SP_analysis_days_route.Close;
    SP_analysis_days_route.Parameters.Refresh;
    SP_analysis_days_route.Parameters.ParamByName('@num_vagon').Value  := Client_Vagon_Route.FieldByName('num_vagon').AsString;
    SP_analysis_days_route.Parameters.ParamByName('@date_begin').Value := cxDateEdit3.Date;
    SP_analysis_days_route.Parameters.ParamByName('@date_end').Value   := cxDateEdit4.Date;
    SP_analysis_days_route.Parameters.ParamByName('@set_route').Value := 0;
    SP_analysis_days_route.Parameters.ParamByName('@node_begin_id').Value := Client_Route.FieldByName('node_begin_id').AsString;
    SP_analysis_days_route.Parameters.ParamByName('@node_end_id').Value := Client_Route.FieldByName('node_end_id').AsString;
    SP_analysis_days_route.Open;

    Client_Vagon_Route.Edit;
    Client_Vagon_Route.FieldByName('cnt_route').Value      := SP_analysis_days_route.FieldByName('cnt_route').Value;
    Client_Vagon_Route.FieldByName('day_cnt_route').Value  := SP_analysis_days_route.FieldByName('day_cnt_route').Value;
    Client_Vagon_Route.FieldByName('day_avg_route').Value  := SP_analysis_days_route.FieldByName('day_avg_route').Value;
    Client_Vagon_Route.FieldByName('comment').Value        := SP_analysis_days_route.FieldByName('comment').Value;
    Client_Vagon_Route.Post;
    Client_Vagon_Route.Next;
    ShowTextMessage('Анализ вагонов...' + #10 + 'Осталось ' + IntToStr(Client_Vagon_Route.RecordCount - Client_Vagon_Route.RecNo), False);
  end;
  DS_Vagon_Route.DataSet := Client_Vagon_Route;
  Client_Vagon_Route.AfterPost := Client_Vagon_RouteAfterPost;

  SP_analysis_days_route.Free;
  ShowTextMessage();
  Screen.Cursor := crDefault;
end;

procedure TfmRepAnalysis.BitBtn3Click(Sender: TObject);
var SP_analysis_days_kargo : TADOStoredProc;
begin
  if Client_Vagon_kargo.RecordCount <= 0 then begin
    ShowMessage('Нет вагонов!');
    Exit;
  end;

  if cxLookupComboBox3.EditValue = null then begin
    ShowMessage('Не выбран маршрут!');
    Exit;
  end;

  Client_Route2.Locate('route_id', cxLookupComboBox3.EditValue, []);

  Screen.Cursor := crHourglass;
  SP_analysis_days_kargo := TADOStoredProc.Create(nil);
  SP_analysis_days_kargo.Connection := ADOAnalysis;
  SP_analysis_days_kargo.ProcedureName := 'sp_analysis_days_kargo';

  Client_Vagon_kargo.First;
  DS_Vagon_kargo.DataSet := nil;
  ShowTextMessage('Анализ вагонов...', False);
  Client_Vagon_kargo.AfterPost := nil;
  while not Client_Vagon_kargo.Eof do begin
    SP_analysis_days_kargo.Close;
    SP_analysis_days_kargo.Parameters.Refresh;
    SP_analysis_days_kargo.Parameters.ParamByName('@num_vagon').Value  := Client_Vagon_kargo.FieldByName('num_vagon').AsString;
    SP_analysis_days_kargo.Parameters.ParamByName('@date_begin').Value := cxDateEdit5.Date;
    SP_analysis_days_kargo.Parameters.ParamByName('@date_end').Value   := cxDateEdit6.Date;
    SP_analysis_days_kargo.Parameters.ParamByName('@set_route').Value := 0;
    SP_analysis_days_kargo.Parameters.ParamByName('@node_begin_id').Value := Client_Route2.FieldByName('node_begin_id').AsString;
    SP_analysis_days_kargo.Parameters.ParamByName('@node_end_id').Value := Client_Route2.FieldByName('node_end_id').AsString;
    SP_analysis_days_kargo.Parameters.ParamByName('@deviation_rate').Value := StrToFloatDef(cxTextEdit3.Text, 0);
    SP_analysis_days_kargo.Parameters.ParamByName('@deviation_base').Value := StrToFloatDef(cxTextEdit2.Text, 0);
    SP_analysis_days_kargo.Parameters.ParamByName('@set_negative').Value   := Ord(cxCheckBox1.Checked);
    SP_analysis_days_kargo.Open;

    Client_Vagon_kargo.Edit;
    Client_Vagon_kargo.FieldByName('cnt_route').Value      := SP_analysis_days_kargo.FieldByName('cnt_route').Value;
    Client_Vagon_kargo.FieldByName('day_cnt_route').Value  := SP_analysis_days_kargo.FieldByName('day_cnt_route').Value;
    Client_Vagon_kargo.FieldByName('day_avg_route').Value  := SP_analysis_days_kargo.FieldByName('day_avg_route').Value;
    Client_Vagon_kargo.FieldByName('comment').Value        := SP_analysis_days_kargo.FieldByName('comment').Value;
    Client_Vagon_kargo.FieldByName('deviation').Value      := SP_analysis_days_kargo.FieldByName('deviation').Value;
    Client_Vagon_kargo.FieldByName('deviation_rate').Value := SP_analysis_days_kargo.FieldByName('deviation_rate').Value;
    Client_Vagon_kargo.FieldByName('deviation_sum').Value  := SP_analysis_days_kargo.FieldByName('deviation_sum').Value;
    Client_Vagon_kargo.FieldByName('deviation_base').Value := SP_analysis_days_kargo.FieldByName('deviation_base').Value;
    Client_Vagon_kargo.Post;
    Client_Vagon_kargo.Next;
    ShowTextMessage('Анализ вагонов...' + #10 + 'Осталось ' + IntToStr(Client_Vagon_kargo.RecordCount - Client_Vagon_kargo.RecNo), False);
  end;
  DS_Vagon_kargo.DataSet := Client_Vagon_kargo;
  Client_Vagon_kargo.AfterPost := Client_Vagon_RouteAfterPost;

  SP_analysis_days_kargo.Free;
  ShowTextMessage();
  Screen.Cursor := crDefault;
end;

procedure TfmRepAnalysis.Client_Vagon_kargoAfterPost(DataSet: TDataSet);
var SP_analysis_days_kargo: TADOStoredProc;
begin
  Screen.Cursor := crHourglass;
  SP_analysis_days_kargo := TADOStoredProc.Create(nil);
  SP_analysis_days_kargo.Connection := ADOAnalysis;
  SP_analysis_days_kargo.ProcedureName := 'sp_analysis_days_kargo';
  SP_analysis_days_kargo.Parameters.Refresh;
  SP_analysis_days_kargo.Parameters.ParamByName('@num_vagon').Value := DataSet.FieldByName('num_vagon').Value;
  SP_analysis_days_kargo.Parameters.ParamByName('@date_begin').Value := cxDateEdit5.Date;
  SP_analysis_days_kargo.Parameters.ParamByName('@date_end').Value := cxDateEdit6.Date;
  SP_analysis_days_kargo.Parameters.ParamByName('@set_route').Value := 1;
  SP_analysis_days_kargo.Parameters.ParamByName('@node_begin_id').Value := null;
  SP_analysis_days_kargo.Parameters.ParamByName('@node_end_id').Value := null;

  try
    SP_analysis_days_kargo.Open;
  except
  end;

  while not SP_analysis_days_kargo.Eof do begin
    try
      Client_Route2.Append;
      Client_Route2.FieldByName('route_name'   ).Value := SP_analysis_days_kargo.FieldByName('route_name').Value;
      Client_Route2.FieldByName('node_begin_id').Value := SP_analysis_days_kargo.FieldByName('node_begin_id').Value;
      Client_Route2.FieldByName('node_end_id'  ).Value := SP_analysis_days_kargo.FieldByName('node_end_id').Value;
      Client_Route2.Post;
    except
      Client_Route2.Cancel;
    end;
    SP_analysis_days_kargo.Next;
  end;

  cxLookupComboBox3.Reset;

  SP_analysis_days_kargo.Free;
  Screen.Cursor := crDefault;
end;

procedure TfmRepAnalysis.Client_Vagon_RouteAfterPost(DataSet: TDataSet);
var SP_analysis_days_route: TADOStoredProc;
begin
  Screen.Cursor := crHourglass;
  SP_analysis_days_route := TADOStoredProc.Create(nil);
  SP_analysis_days_route.Connection := ADOAnalysis;
  SP_analysis_days_route.ProcedureName := 'sp_analysis_days_route';
  SP_analysis_days_route.Parameters.Refresh;
  SP_analysis_days_route.Parameters.ParamByName('@num_vagon').Value := DataSet.FieldByName('num_vagon').Value;
  SP_analysis_days_route.Parameters.ParamByName('@date_begin').Value := cxDateEdit3.Date;
  SP_analysis_days_route.Parameters.ParamByName('@date_end').Value := cxDateEdit4.Date;
  SP_analysis_days_route.Parameters.ParamByName('@set_route').Value := 1;
  SP_analysis_days_route.Parameters.ParamByName('@node_begin_id').Value := null;
  SP_analysis_days_route.Parameters.ParamByName('@node_end_id').Value := null;

  try
    SP_analysis_days_route.Open;
  except
  end;

  while not SP_analysis_days_route.Eof do begin
    try
      Client_Route.Append;
      Client_Route.FieldByName('route_name'   ).Value := SP_analysis_days_route.FieldByName('route_name').Value;
      Client_Route.FieldByName('node_begin_id').Value := SP_analysis_days_route.FieldByName('node_begin_id').Value;
      Client_Route.FieldByName('node_end_id'  ).Value := SP_analysis_days_route.FieldByName('node_end_id').Value;
      Client_Route.Post;
    except
      Client_Route.Cancel;
    end;
    SP_analysis_days_route.Next;
  end;

  cxLookupComboBox2.Reset;

  SP_analysis_days_route.Free;
  Screen.Cursor := crDefault;
end;

procedure TfmRepAnalysis.cxDateEdit3PropertiesEditValueChanged(Sender: TObject);
var SP_analysis_days_route: TADOStoredProc;
begin
  Screen.Cursor := crHourglass;
  SP_analysis_days_route := TADOStoredProc.Create(nil);
  SP_analysis_days_route.Connection := ADOAnalysis;
  SP_analysis_days_route.ProcedureName := 'sp_analysis_days_route';
  SP_analysis_days_route.Parameters.Refresh;

  Client_Route.EmptyDataSet;
  DS_Vagon_Route.DataSet := nil;
  Client_Vagon_Route.First;
  while not Client_Vagon_Route.Eof do begin
    SP_analysis_days_route.Close;
    SP_analysis_days_route.Parameters.ParamByName('@num_vagon').Value := Client_Vagon_Route.FieldByName('num_vagon').Value;
    SP_analysis_days_route.Parameters.ParamByName('@date_begin').Value := cxDateEdit3.Date;
    SP_analysis_days_route.Parameters.ParamByName('@date_end').Value := cxDateEdit4.Date;
    SP_analysis_days_route.Parameters.ParamByName('@set_route').Value := 1;
    SP_analysis_days_route.Parameters.ParamByName('@node_begin_id').Value := null;
    SP_analysis_days_route.Parameters.ParamByName('@node_end_id').Value := null;

    try
      SP_analysis_days_route.Open;
    except
    end;

    while not SP_analysis_days_route.Eof do begin
      try
        Client_Route.Append;
        Client_Route.FieldByName('route_name'   ).Value := SP_analysis_days_route.FieldByName('route_name').Value;
        Client_Route.FieldByName('node_begin_id').Value := SP_analysis_days_route.FieldByName('node_begin_id').Value;
        Client_Route.FieldByName('node_end_id'  ).Value := SP_analysis_days_route.FieldByName('node_end_id').Value;
        Client_Route.Post;
      except
        Client_Route.Cancel;
      end;
      SP_analysis_days_route.Next;
    end;
    Client_Vagon_Route.Next;
  end;

  DS_Vagon_Route.DataSet := Client_Vagon_Route;
  cxLookupComboBox2.Reset;

  SP_analysis_days_route.Free;
  Screen.Cursor := crDefault;
end;

procedure TfmRepAnalysis.cxDateEdit5PropertiesEditValueChanged(Sender: TObject);
var SP_analysis_days_kargo: TADOStoredProc;
begin
  Screen.Cursor := crHourglass;
  SP_analysis_days_kargo := TADOStoredProc.Create(nil);
  SP_analysis_days_kargo.Connection := ADOAnalysis;
  SP_analysis_days_kargo.ProcedureName := 'sp_analysis_days_kargo';
  SP_analysis_days_kargo.Parameters.Refresh;

  Client_Route2.EmptyDataSet;
  DS_Vagon_Kargo.DataSet := nil;
  Client_Vagon_Kargo.First;
  while not Client_Vagon_Kargo.Eof do begin
    SP_analysis_days_kargo.Close;
    SP_analysis_days_kargo.Parameters.ParamByName('@num_vagon').Value := Client_Vagon_Kargo.FieldByName('num_vagon').Value;
    SP_analysis_days_kargo.Parameters.ParamByName('@date_begin').Value := cxDateEdit5.Date;
    SP_analysis_days_kargo.Parameters.ParamByName('@date_end').Value := cxDateEdit6.Date;
    SP_analysis_days_kargo.Parameters.ParamByName('@set_route').Value := 1;
    SP_analysis_days_kargo.Parameters.ParamByName('@node_begin_id').Value := null;
    SP_analysis_days_kargo.Parameters.ParamByName('@node_end_id').Value := null;

    try
      SP_analysis_days_kargo.Open;
    except
    end;

    while not SP_analysis_days_kargo.Eof do begin
      try
        Client_Route2.Append;
        Client_Route2.FieldByName('route_name'   ).Value := SP_analysis_days_kargo.FieldByName('route_name').Value;
        Client_Route2.FieldByName('node_begin_id').Value := SP_analysis_days_kargo.FieldByName('node_begin_id').Value;
        Client_Route2.FieldByName('node_end_id'  ).Value := SP_analysis_days_kargo.FieldByName('node_end_id').Value;
        Client_Route2.Post;
      except
        Client_Route2.Cancel;
      end;
      SP_analysis_days_kargo.Next;
    end;
    Client_Vagon_Kargo.Next;
  end;

  DS_Vagon_Kargo.DataSet := Client_Vagon_Kargo;
  cxLookupComboBox3.Reset;

  SP_analysis_days_kargo.Free;
  Screen.Cursor := crDefault;
end;

procedure TfmRepAnalysis.dxBarButton1Click(Sender: TObject);
begin
  case TControl(Sender).Tag of
    0: Client_Vagon.Append;
    1: Client_Vagon_Route.Append;
    2: Client_Vagon_kargo.Append;
  end;
end;

procedure TfmRepAnalysis.dxBarButton2Click(Sender: TObject);
var
  Clip: TClipBoard;
  ClipStrs: TStringList;
  i: integer;
  DataSet : TDataSet;
begin
  Clip := TClipBoard.Create;
  ClipStrs := TStringList.Create;

  case TControl(Sender).Tag of
    0: DataSet := Client_Vagon;
    1: DataSet := Client_Vagon_Route;
    2: DataSet := Client_Vagon_Kargo;
  end;

  try
    ClipStrs.Text := Clip.AsText;
    if ClipStrs.Count > 0 then begin
      for i := 0 to ClipStrs.Count - 1 do begin
        try
          DataSet.Append;
          DataSet.FieldByName('num_vagon').AsString := ClipStrs.Strings[i];
          DataSet.Post;
        except
          DataSet.Cancel;
        end;
        ShowTextMessage('Вставка данных'+#10#13+'Осталось строк '+IntToStr(ClipStrs.Count - i), False);
      end;
    end;
  finally
    ClipStrs.Free;
    Clip.Free;
    ShowTextMessage();
  end;
end;

procedure TfmRepAnalysis.dxBarButton3Click(Sender: TObject);
var OpenDialog1 : TOpenDialog;
    file_name   : string;
    exApp, exWkb, exWks : OleVariant;
    i, row              : integer;
begin
  OpenDialog1 := TOpenDialog.Create(self);
  OpenDialog1.Filter := 'Excel файлы|*.xls';
  OpenDialog1.DefaultExt := 'xls';
  if OpenDialog1.Execute then begin
    file_name := OpenDialog1.FileName;

    Screen.Cursor := crHourglass;
    ShowTextMessage('Запуск сервера автоматизации...',False);

    exApp := CreateOleObject('Excel.Application');
    exWkb := exApp.Workbooks.Open(file_name);
    exWkb := exApp.ActiveWorkbook;
    exWks := exWkb.WorkSheets[1];

    i := 1;
    while True do begin
      if (TVarData(exWks.Cells[i, 1].Value).VType = varEmpty) then
        break
      else begin
        if TControl(Sender).Tag = 0 then begin
          try
            Client_Vagon.Append;
            Client_Vagon.FieldByName('num_vagon').AsString := exWks.Cells[i, 1].Value;
            Client_Vagon.Post;
          except
            Client_Vagon.Cancel;
          end;
        end;
        if TControl(Sender).Tag = 1 then begin
          try
            Client_Vagon_Route.Append;
            Client_Vagon_Route.FieldByName('num_vagon').AsString := exWks.Cells[i, 1].Value;
            Client_Vagon_Route.Post;
          except
            Client_Vagon_Route.Cancel;
          end;
        end;
        if TControl(Sender).Tag = 2 then begin
          try
            Client_Vagon_Kargo.Append;
            Client_Vagon_Kargo.FieldByName('num_vagon').AsString := exWks.Cells[i, 1].Value;
            Client_Vagon_Kargo.Post;
          except
            Client_Vagon_Kargo.Cancel;
          end;
        end;
      end;
      ShowTextMessage('Загрузка данных из Excel'+#10#13+'Обработано строк '+IntToStr(i-1), False);
      i := i + 1;
    end;
    exApp.Quit;
    VarClear(exWks); VarClear(exWkb); VarClear(exApp);
    Screen.Cursor := crDefault;
    ShowTextMessage();
    Application.MessageBox('Информация добавлена успешно.', 'Сообщение', MB_OK or MB_ICONINFORMATION);
  end;
  OpenDialog1.Free;
end;

procedure TfmRepAnalysis.dxBarButton4Click(Sender: TObject);
begin
  if Application.MessageBox(PChar('ВЫ ТОЧНО УВЕРЕНЫ?'),'ВНИМАНИЕ',MB_OKCANCEL) = ID_OK then begin
    case TControl(Sender).Tag of
      0: Client_Vagon.EmptyDataSet;
      1: Client_Vagon_Route.EmptyDataSet;
      2: Client_Vagon_kargo.EmptyDataSet;
    end;
  end;
end;

procedure TfmRepAnalysis.dxBarButton5Click(Sender: TObject);
begin
  case TControl(Sender).Tag of
    0:  PrintcxGrid(cxGrid1DBBandedTableView1);
    1:  PrintcxGrid(cxGridDBBandedTableView1);
    2:  PrintcxGrid(cxGridDBBandedTableView2);
  end;
end;

procedure TfmRepAnalysis.dxBarButton6Click(Sender: TObject);
begin
  case TControl(Sender).Tag of
    0: SetdxDBGridColumns(cxGrid1DBBandedTableView1);
    1: SetdxDBGridColumns(cxGridDBBandedTableView1);
    2: SetdxDBGridColumns(cxGridDBBandedTableView2);
  end;
end;

procedure TfmRepAnalysis.dxBarButton7Click(Sender: TObject);
begin
  case TControl(Sender).Tag of
    0: cxGrid1DBBandedTableView1.OptionsView.GroupByBox := not cxGrid1DBBandedTableView1.OptionsView.GroupByBox;
    1: cxGridDBBandedTableView1.OptionsView.GroupByBox  := not cxGridDBBandedTableView1.OptionsView.GroupByBox;
    2: cxGridDBBandedTableView2.OptionsView.GroupByBox  := not cxGridDBBandedTableView2.OptionsView.GroupByBox;
  end;
end;

procedure TfmRepAnalysis.dxBarButton8Click(Sender: TObject);
begin
  case TControl(Sender).Tag of
    0: Client_Vagon.Delete;
    1: Client_Vagon_Route.Delete;
    2: Client_Vagon_kargo.Delete;
  end;
end;

procedure TfmRepAnalysis.FormClose(Sender: TObject; var Action: TCloseAction);
var Reg : TRegistry;
begin
  Reg := TRegistry.Create;
  Reg.RootKey := HKEY_CURRENT_USER;

  if not Reg.KeyExists('\Software\LIS1\RepAnalysis\') then Reg.CreateKey('\Software\LIS1\RepAnalysis\');
  Reg.OpenKey('\Software\LIS1\RepAnalysis\', True);

  Reg.WriteString('nday', cxTextEdit1.Text);
  Reg.WriteDate  ('date_begin', cxDateEdit1.Date);
  Reg.WriteDate  ('date_end'  , cxDateEdit2.Date);
  Reg.WriteDate  ('date_begin_route', cxDateEdit3.Date);
  Reg.WriteDate  ('date_end_route'  , cxDateEdit4.Date);
  Reg.WriteDate  ('date_begin_kargo', cxDateEdit5.Date);
  Reg.WriteDate  ('date_end_kargo'  , cxDateEdit6.Date);

  Reg.Free;

  StoreRegistryGrid(rgSave,'\Software\Lis1\Analysis_Grids', cxGrid1DBBandedTableView1);
  StoreRegistryGrid(rgSave,'\Software\Lis1\Analysis_Grids2', cxGridDBBandedTableView1);
  StoreRegistryGrid(rgSave,'\Software\Lis1\Analysis_Grids3', cxGridDBBandedTableView2);
  Action := caFree;
end;

end.
