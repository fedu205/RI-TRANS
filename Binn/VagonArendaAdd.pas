unit VagonArendaAdd;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms, Default,
  Dialogs, StdCtrls, ExtCtrls, DB, ADODB, cxPropertiesStore, cxGraphics, cxControls,
  cxLookAndFeels, cxLookAndFeelPainters, cxContainer, cxEdit, cxCheckBox, cxCurrencyEdit, cxDropDownEdit,
  cxLookupEdit, cxDBLookupEdit, cxDBLookupComboBox, cxMaskEdit, cxCalendar, cxTextEdit, cxMemo,
  dxDockControl, dxBar, cxClasses, dxDockPanel, ImgList, dxGDIPlusClasses, dxGDIPlusAPI, cxButtonEdit,
  dxSkinsCore, dxSkinBlack, dxSkinBlue, dxSkinBlueprint, dxSkinCaramel, dxSkinCoffee, dxSkinDarkRoom, dxSkinDarkSide,
  dxSkinDevExpressDarkStyle, dxSkinDevExpressStyle, dxSkinFoggy, dxSkinGlassOceans, dxSkinHighContrast, dxSkiniMaginary,
  dxSkinLilian, dxSkinLiquidSky, dxSkinLondonLiquidSky, dxSkinMcSkin, dxSkinMetropolis, dxSkinMetropolisDark, dxSkinMoneyTwins,
  dxSkinOffice2007Black, dxSkinOffice2007Blue, dxSkinOffice2007Green, dxSkinOffice2007Pink, dxSkinOffice2007Silver, dxSkinOffice2010Black,
  dxSkinOffice2010Blue, dxSkinOffice2010Silver, dxSkinOffice2013DarkGray, dxSkinOffice2013LightGray, dxSkinOffice2013White, dxSkinPumpkin, dxSkinSeven,
  dxSkinSevenClassic, dxSkinSharp, dxSkinSharpPlus, dxSkinSilver, dxSkinSpringTime, dxSkinStardust, dxSkinSummer2008, dxSkinTheAsphaltWorld,
  dxSkinsDefaultPainters, dxSkinValentine, dxSkinVS2010, dxSkinWhiteprint, dxSkinXmas2008Blue, ComCtrls, cxDateUtils, dxSkinsdxBarPainter,
  dxCore, dxSkinOffice2016Colorful, dxSkinOffice2016Dark, dxSkinVisualStudio2013Blue, dxSkinVisualStudio2013Dark, dxSkinVisualStudio2013Light,
  cxStyles, dxSkinscxPCPainter, cxCustomData, cxFilter, cxData, cxDataStorage, cxNavigator, cxDBData, cxGridCustomTableView,
  cxGridTableView, cxGridBandedTableView, cxGridDBBandedTableView, DBClient, cxGridCustomView, cxGridLevel, cxGrid, System.ImageList,
  cxImageList, dxSkinTheBezier, dxDateRanges, Vcl.Menus, cxButtons,
  dxSkinOffice2019Colorful,  dxScrollbarAnnotations;

type
  TfmVagonArendaAdd = class(TForm)
    Panel2: TPanel;
    cxPropertiesStore1: TcxPropertiesStore;
    GroupBox1: TGroupBox;
    cxMemo1: TcxMemo;
    Splitter1: TSplitter;
    dxBarManager1: TdxBarManager;
    dxBarDockControl1: TdxBarDockControl;
    dxBarManager1Bar1: TdxBar;
    dxBarButton1: TdxBarButton;
    dxBarPopupMenu1: TdxBarPopupMenu;
    dxBarButton2: TdxBarButton;
    dxBarButton3: TdxBarButton;
    Panel3: TPanel;
    GroupBox2: TGroupBox;
    cxMemo2: TcxMemo;
    cxCheckBox7: TcxCheckBox;
    Panel5: TPanel;
    Label3: TLabel;
    Label9: TLabel;
    cxTextEdit1: TcxTextEdit;
    cxImageList1: TcxImageList;
    cxButtonEdit1: TcxButtonEdit;
    GroupBox3: TGroupBox;
    GroupBox4: TGroupBox;
    cxButtonEdit2: TcxButtonEdit;
    cxButtonEdit3: TcxButtonEdit;
    cxDateEdit5: TcxDateEdit;
    cxDateEdit6: TcxDateEdit;
    Panel4: TPanel;
    Panel6: TPanel;
    Splitter2: TSplitter;
    PageControl1: TPageControl;
    TabSheet1: TTabSheet;
    cxGrid1Level1: TcxGridLevel;
    cxGrid1: TcxGrid;
    cxGrid1DBBandedTableView1: TcxGridDBBandedTableView;
    ClientDS_Rate: TClientDataSet;
    DS_Rate: TDataSource;
    ClientDS_Ratevagon_arenda_rate_id: TIntegerField;
    ClientDS_Ratevagon_arenda_id: TIntegerField;
    ClientDS_Ratedt_begin: TDateField;
    ClientDS_Ratedt_end: TDateField;
    ClientDS_Raterate_val: TFloatField;
    ClientDS_Ratecurrency_id: TIntegerField;
    ClientDS_Ratecurrency_nm: TStringField;
    ClientDS_Ratetype_rate_id: TIntegerField;
    ClientDS_Ratetype_rate_nm: TStringField;
    ClientDS_Ratetype_nds_id: TIntegerField;
    ClientDS_Ratetype_nds_nm: TStringField;
    ClientDS_Ratevagon_id: TIntegerField;
    cxGrid1DBBandedTableView1vagon_arenda_rate_id: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1vagon_arenda_id: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1dt_begin: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1dt_end: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1rate_val: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1currency_id: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1currency_nm: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1type_rate_id: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1type_rate_nm: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1type_nds_id: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1type_nds_nm: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1vagon_id: TcxGridDBBandedColumn;
    dxBarPopupMenu2: TdxBarPopupMenu;
    dxBarButton4: TdxBarButton;
    dxBarButton5: TdxBarButton;
    dxBarButton6: TdxBarButton;
    qRates: TADOQuery;
    dxBarButton7: TdxBarButton;
    ClientDS_Raterate_val_nds: TFloatField;
    cxGrid1DBBandedTableView1rate_val_nds: TcxGridDBBandedColumn;
    ClientDS_Ratedt_diff: TIntegerField;
    cxGrid1DBBandedTableView1dt_diff: TcxGridDBBandedColumn;
    cxCheckBox8: TcxCheckBox;
    cxCheckBox9: TcxCheckBox;
    GroupBox5: TGroupBox;
    cxButtonEdit4: TcxButtonEdit;
    cxCheckBox1: TcxCheckBox;
    Label1: TLabel;
    Label2: TLabel;
    cxButtonEdit5: TcxButtonEdit;
    cxCheckBox2: TcxCheckBox;
    Label4: TLabel;
    cxCheckBox3: TcxCheckBox;
    cxCurrencyEdit1: TcxCurrencyEdit;
    cxButton1: TcxButton;
    cxButton3: TcxButton;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure dxBarButton1Click(Sender: TObject);
    procedure dxBarButton3Click(Sender: TObject);
    procedure dxBarButton2Click(Sender: TObject);
    procedure cxCheckBox1PropertiesEditValueChanged(Sender: TObject);
//    procedure cxButtonEdit1PropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
    procedure cxButtonEdit2PropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
    procedure cxButtonEdit3PropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
    procedure dxBarButton5Click(Sender: TObject);
    procedure dxBarButton4Click(Sender: TObject);
    procedure dxBarButton6Click(Sender: TObject);
    procedure cxGrid1DBBandedTableView1FocusedItemChanged(Sender: TcxCustomGridTableView; APrevFocusedItem,  AFocusedItem: TcxCustomGridTableItem);
    procedure dxBarPopupMenu2Popup(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure cxButtonEdit4PropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
    procedure cxDateEdit5KeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure cxButton1Click(Sender: TObject);
    procedure cxGrid1DBBandedTableView1DataControllerFilterChanged(Sender: TObject);
    procedure cxGrid1DBBandedTableView1CustomDrawColumnHeader(Sender: TcxGridTableView; ACanvas: TcxCanvas; AViewInfo: TcxGridColumnHeaderViewInfo; var ADone: Boolean);
    procedure cxGrid1DBBandedTableView1KeyPress(Sender: TObject; var Key: Char);
  private
    Ftype_action : integer;
    Ftype_arenda : integer;
    Fset_group : boolean;
    Fvagon_arenda_id : integer;
    Fstr_vagon_arenda_id : string;
    Fdate_arenda_close :TDate;
    Fdtbegin: TDateTime;
    Fdtend: TDateTime;
    Ftype_period: integer;
    Frate_group_edit: integer;
    Fact_begin_id, Fold_act_begin_id : integer;
    Fact_end_id, Fold_act_end_id : integer;
    Fnode_begin_id, Fnode_end_id : integer;
    Fcontract_id : integer;

    procedure SetInsert(id : integer);
    procedure SetUpdate(vagon_arenda_id: integer);
    procedure SetGroupUpdate(str_vagon_arenda_id : string);
    function ActValidation(act_id: integer): boolean;
  public
    constructor Create(Aowner: TApplication; type_arenda: integer);
    procedure SetPeriod(dtbegin, dtend: TDateTime; type_period: integer);
  published
    property _GetVagonId : integer read Fvagon_arenda_id;
    property _SetUpdate : integer write SetUpdate;
    property _SetInsert : integer write SetInsert;
    property _SetGroupUpdate : string write SetGroupUpdate;
  end;

var
  fmVagonArendaAdd: TfmVagonArendaAdd;


implementation
   uses Raznoe, VagonArenda, Main, Filter, VagonArendaRateAdd, DateUtils;
{$R *.dfm}

constructor TfmVagonArendaAdd.Create(Aowner: TApplication; type_arenda: integer);
begin
  Screen.Cursor := crHourglass;
  inherited Create(Aowner);

  Ftype_action := 0;
  Ftype_arenda := type_arenda;
  Fset_group := False;

  Fdate_arenda_close := EncodeDate(1980,01,01);

  ClientDS_Rate.CreateDataSet;
  ClientDS_Rate.LogChanges := False;

  StoreRegistryGrid(rgLoad, '\Software\Lis1\VagonArendaNewAdd_Grids_', cxGrid1DBBandedTableView1);

  MonitorEventFormOpen('OPEN_FORM', self.Name, fmMain.Lis, -9);
  Screen.Cursor := crDefault;
end;

procedure TfmVagonArendaAdd.SetUpdate(vagon_arenda_id: integer);
var Q : TADOQuery;
begin
  Screen.Cursor := crHourglass;
  Fvagon_arenda_id := vagon_arenda_id;
  Ftype_action := 1;


  Q := TADOQuery.Create(nil);
  Q.Connection := fmMain.Lis;
  Q.SQL.Add(' SELECT *, ' +
            ' DATENAME(m, date_arenda_close) + '' '' + DATENAME(yy, date_arenda_close) AS date_arenda_close_name ' +
            ' FROM view_vagon_arenda2_upd ' +
            ' WHERE vagon_arenda_id = ' + IntToStr(Fvagon_arenda_id));
  Q.Open;

  if not Q.FieldByName('date_arenda_close_name').IsNull then begin
    Fdate_arenda_close := Q.FieldByName('date_arenda_close').Value;
    Caption := Caption + (' (Закрытый период : ' + Q.FieldByName('date_arenda_close_name').AsString + ')');
  if Q.FieldByName('act_begin_date').Value <  Q.FieldByName('date_arenda_close').Value then begin
    Application.MessageBox('Период аренды по договору закрыт. Изменение запрещено.', 'Внимание', MB_OK);
    cxButtonEdit2.Enabled := False;
  end;

  end;

  cxMemo1.Lines.Add(Q.FieldByName('num_vagon').AsString);
  cxMemo1.Properties.ReadOnly := True;
  cxMemo1.Style.Color         := clBtnFace;
  dxBarButton1.Enabled        := False;
  dxBarButton2.Enabled        := False;
  dxBarButton3.Enabled        := False;

  Fcontract_id                  := iif(Q.FieldByName('contract_id').IsNull, -9, Q.FieldByName('contract_id').Value);
  cxButtonEdit1.EditValue       := Q.FieldByName('firm_name').Value;
  cxTextEdit1.EditValue         := Q.FieldByName('contract_cod').Value;

  Fold_act_begin_id             := iif(Q.FieldByName('act_begin_id').IsNull, -9, Q.FieldByName('act_begin_id').Value);
  Fact_begin_id                 := iif(Q.FieldByName('act_begin_id').IsNull, -9, Q.FieldByName('act_begin_id').Value);
  cxButtonEdit2.EditValue       := Q.FieldByName('act_begin_cod').Value;
  cxDateEdit5.EditValue         := Q.FieldByName('vagon_arenda_date_begin').Value;

  Fact_end_id                   := iif(Q.FieldByName('act_end_id').IsNull, -9, Q.FieldByName('act_end_id').Value);
  Fold_act_end_id               := iif(Q.FieldByName('act_end_id').IsNull, -9, Q.FieldByName('act_end_id').Value);
  cxButtonEdit3.EditValue       := Q.FieldByName('act_end_cod').Value;
  cxDateEdit6.EditValue         := Q.FieldByName('vagon_arenda_date_end').Value;

  Fnode_begin_id                := iif(Q.FieldByName('node_begin_id').IsNull, -9, Q.FieldByName('node_begin_id').Value);
  cxButtonEdit4.EditValue       := Q.FieldByName('node_begin_name').Value;
  Fnode_end_id                  := iif(Q.FieldByName('node_end_id').IsNull, -9, Q.FieldByName('node_end_id').Value);
  cxButtonEdit5.EditValue       := Q.FieldByName('node_end_name').Value;
  cxCurrencyEdit1.EditValue     := Q.FieldByName('balance_cost_without_nds').Value;

  cxMemo2.EditValue := Q.FieldByName('comment').Value;

  with qRates do begin
    if Active then
      Close;
    Parameters.ParamByName('vagon_arenda_id').Value := vagon_arenda_id;
    Open;
    First;
    while not Eof do begin
      ClientDS_Rate.Append;
      ClientDS_Rate.FieldByName('vagon_arenda_rate_id').Value := FieldByName('vagon_arenda_rate_id').Value;
      ClientDS_Rate.FieldByName('vagon_arenda_id').Value      := FieldByName('vagon_arenda_id').Value;
      ClientDS_Rate.FieldByName('dt_begin').Value             := FieldByName('dt_begin').Value;
      ClientDS_Rate.FieldByName('dt_end').Value               := FieldByName('dt_end').Value;
      ClientDS_Rate.FieldByName('rate_val').Value             := FieldByName('rate_val').Value;
      ClientDS_Rate.FieldByName('rate_val_nds').Value         := FieldByName('rate_val_nds').Value;
      ClientDS_Rate.FieldByName('currency_id').Value          := FieldByName('currency_id').Value;
      ClientDS_Rate.FieldByName('currency_nm').Value          := FieldByName('currency_nm').Value;
      ClientDS_Rate.FieldByName('type_rate_id').Value         := FieldByName('type_rate_id').Value;
      ClientDS_Rate.FieldByName('type_rate_nm').Value         := FieldByName('type_rate_nm').Value;
      ClientDS_Rate.FieldByName('type_nds_id').Value          := FieldByName('type_nds_id').Value;
      ClientDS_Rate.FieldByName('type_nds_nm').Value          := FieldByName('type_nds_nm').Value;
      ClientDS_Rate.FieldByName('dt_diff').Value              := (iif(ClientDS_Rate.FieldByName('dt_end').IsNull, Fdtend, ClientDS_Rate.FieldByName('dt_end').Value) - ClientDS_Rate.FieldByName('dt_begin').Value) + 1 ;
      ClientDS_Rate.Post;
      Next;
    end;
    Close;
  end;

  Q.Free;
  MonitorEventFormOpen('UPDATE_FORM', self.Name, fmMain.Lis, Fvagon_arenda_id);

  Screen.Cursor := crDefault;
end;

procedure TfmVagonArendaAdd.cxButton1Click(Sender: TObject);
var
       SP : TADOStoredProc;
        i : integer;
 str_nvag : string;
 param    : integer;

begin
  if not Fset_group then begin
    if (Fact_begin_id = -9) then begin
      Application.MessageBox('Не указан акт ввода!', 'Ошибка', MB_OK + MB_ICONERROR);
      ModalResult := mrNone;
      Exit;
    end;

    if Fold_act_begin_id <> Fact_begin_id then
      if not ActValidation(Fact_begin_id) then begin
        ModalResult := mrNone;
        Exit;
      end;

    if Fold_act_end_id <> Fact_end_id then
      if not ActValidation(Fact_end_id) then begin
        ModalResult := mrNone;
        Exit;
      end;

    if ClientDS_Rate.RecordCount = 0 then begin
      Application.MessageBox('Не указана ставка аренды!', 'Ошибка', MB_OK + MB_ICONERROR);
      ModalResult := mrNone;
      Exit;
    end;
  end;

  str_nvag := '';

  for i:=0 to cxMemo1.Lines.Count - 1 do
    str_nvag := str_nvag + ',' + cxMemo1.Lines[i];
  Delete(str_nvag, 1, 1);

  if str_nvag = '' then begin
    Application.MessageBox('Не выбранны вагоны!', 'Ошибка', MB_OK);
    ModalResult := mrNone;
    exit;
  end;
  Screen.Cursor := crHourglass;

  SP := TADOStoredProc.Create(nil);
  SP.Connection := fmMain.Lis;

  if not Fset_group then begin
    SP.ProcedureName := 'sp_vagon_arenda_modify';
    SP.Parameters.Refresh;

    SP.Parameters.ParamByName('@vagon_arenda_id'          ).Value := iif(Fvagon_arenda_id = -9, null, Fvagon_arenda_id);
    SP.Parameters.ParamByName('@type_arenda'              ).Value := Ftype_arenda;
    SP.Parameters.ParamByName('@type_action'              ).Value := Ftype_action;
    SP.Parameters.ParamByName('@str_num_vagon'            ).Value := str_nvag;
    SP.Parameters.ParamByName('@date_begin'               ).Value := cxDateEdit5.EditValue;
    SP.Parameters.ParamByName('@date_end'                 ).Value := cxDateEdit6.EditValue;
    SP.Parameters.ParamByName('@contract_id'              ).Value := iif(Fcontract_id = -9, null, Fcontract_id);
    SP.Parameters.ParamByName('@act_begin_id'             ).Value := iif(Fact_begin_id = -9, null, Fact_begin_id);
    SP.Parameters.ParamByName('@act_end_id'               ).Value := iif(Fact_end_id = -9, null, Fact_end_id);
    SP.Parameters.ParamByName('@node_begin_id'            ).Value := iif(Fnode_begin_id = -9, null, Fnode_begin_id);
    SP.Parameters.ParamByName('@node_end_id'              ).Value := iif(Fnode_end_id = -9, null, Fnode_end_id);
    SP.Parameters.ParamByName('@balance_cost_without_nds' ).Value := cxCurrencyEdit1.EditValue;
    SP.Parameters.ParamByName('@rate_str_xml'             ).Value := DataXMLToSQL(ClientDS_Rate);
    SP.Parameters.ParamByName('@comment'                  ).Value := cxMemo2.EditValue;
    try
      SP.ExecProc;
      Fvagon_arenda_id := SP.Parameters.ParamByName('@vagon_arenda_id').Value;
    except
      Screen.Cursor := crDefault;
    end;
  end else begin
    SP.ProcedureName := 'sp_vagon_arenda_modify_group';
    SP.Parameters.Refresh;

    SP.Parameters.ParamByName('@str_vagon_arenda_id').Value := Fstr_vagon_arenda_id;
    param := 0;

    if cxCheckBox7.Checked then begin
      SP.Parameters.ParamByName('@comment'      ).Value := cxMemo2.EditValue;
      param := param or 1;
    end;
    if cxCheckBox8.Checked then begin
      SP.Parameters.ParamByName('@act_begin_id' ).Value := iif(Fact_begin_id = -9, null, Fact_begin_id);
      param := param or 2;
    end;
    if cxCheckBox9.Checked then begin
      SP.Parameters.ParamByName('@act_end_id'   ).Value := iif(Fact_end_id = -9, null, Fact_end_id);
      param := param or 4;
    end;
    if cxCheckBox1.Checked then begin
      SP.Parameters.ParamByName('@node_begin_id').Value := iif(Fnode_begin_id = -9, null, Fnode_begin_id);
      param := param or 8;
    end;
    if cxCheckBox2.Checked then begin
      SP.Parameters.ParamByName('@node_end_id'  ).Value := iif(Fnode_end_id = -9, null, Fnode_end_id);
      param := param or 16;
    end;
    if cxCheckBox3.Checked then begin
      SP.Parameters.ParamByName('@balance_cost_without_nds').Value := cxCurrencyEdit1.EditValue;
      param := param or 32;
    end;

    SP.Parameters.ParamByName('@param').Value := param;

    try
      SP.ExecProc;
      Fstr_vagon_arenda_id := SP.Parameters.ParamByName('@str_vagon_arenda_id').Value;
    except
      on E: Exception do begin
        ShowMessage(E.Message);
        SP.Free;
        Screen.Cursor := crDefault;
      end;
    end;
  end;

  SP.Free;
  Screen.Cursor := crDefault;
end;

procedure TfmVagonArendaAdd.cxButtonEdit2PropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
type
  TFunc = function(AppHand: THandle; conn: TADOConnection; type_acts: integer; type_arenda: integer; flag: boolean;
                   dtbegin: TDateTime; dtend: TDateTime; type_period: integer) : Variant;
var
  FVagonArendaActs : TFunc;
  handle  : THandle;
  v       : Variant;
  Q       : TADOQuery;
begin
  case AButtonIndex of
  0 : begin
        handle := LoadLibrary('user.dll');
        @FVagonArendaActs := GetProcAddress(handle, 'CreateWndVagonArendaActsNew');
        v := FVagonArendaActs(Application.Handle, fmMain.Lis, 0, Ftype_arenda, True, Fdtbegin, Fdtend, Ftype_period);
        FreeLibrary(handle);
        if v[0] <> -9 then begin
          Fact_begin_id  := v[0];
          Q := TADOQuery.Create(Self);
          Q.Connection := fmMain.Lis;
          Q.SQL.Add('SELECT vagon_arenda_acts_cod, ' +
                          ' vagon_arenda_acts_date, ' +
                          ' vagon_arenda_date, ' +
                          ' contract_id, '  +
                          ' contract_cod, '  +
                          ' firm_customer_name '  +
                    ' FROM view_vagon_arenda_acts '  +
                    ' WHERE vagon_arenda_acts_id = ' + IntToStr(Fact_begin_id));
          Q.Open;

          cxButtonEdit2.EditValue := Q.FieldByName('vagon_arenda_acts_cod').Value;
          cxDateEdit5.EditValue   := Q.FieldByName('vagon_arenda_date').Value;
          Fcontract_id            := Q.FieldByName('contract_id').Value;
          cxButtonEdit1.EditValue := Q.FieldByName('firm_customer_name').Value;
          cxTextEdit1.EditValue   := Q.FieldByName('contract_cod').Value;
          Q.Free;
        end;
      end;
  1 : begin
        Fact_begin_id  := -9;
        cxButtonEdit2.EditValue := NULL;
        cxDateEdit5.EditValue   := NULL;
      end;
  end;
end;

procedure TfmVagonArendaAdd.cxButtonEdit3PropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
type
  TFunc = function(AppHand: THandle; conn: TADOConnection; type_acts: integer; type_arenda: integer; flag: boolean;
                  dtbegin: TDateTime; dtend: TDateTime; type_period: integer) : Variant;
var
  FVagonArendaActs : TFunc;
  handle  : THandle;
  v       : Variant;
begin
  case AButtonIndex of
  0 : begin
      handle := LoadLibrary('user.dll');
      @FVagonArendaActs := GetProcAddress(handle, 'CreateWndVagonArendaActsNew');
      v := FVagonArendaActs(Application.Handle, fmMain.Lis, 1, Ftype_arenda, True, Fdtbegin, Fdtend, Ftype_period);
      FreeLibrary(handle);
      if v[0] <> -9 then begin
        Fact_end_id  := v[0];
        cxButtonEdit3.EditValue := v[1];
        cxDateEdit6.EditValue   := v[2];
        while ClientDS_Rate.Locate('dt_end', NULL, []) do begin
          ClientDS_Rate.Edit;
          ClientDS_Rate.FieldByName('dt_end').Value := v[2];
          ClientDS_Rate.Post;
        end;
      end;
      end;
  1 : begin
        Fact_end_id  := -9;
        cxButtonEdit3.EditValue := NULL;
        cxDateEdit6.EditValue   := NULL;
      end;
  end;
end;

procedure TfmVagonArendaAdd.cxButtonEdit4PropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
var Q : TADOQuery;
  filter_str : string;
begin
  case AButtonIndex of
  0: begin
    Q := TADOQuery.Create(nil);
    Q.Connection := fmMain.Lis;
    if InputQuery('Поиск', 'Шаблон поиска станции по названию', filter_str) then begin
      Q.SQL.Add('SELECT inf_obj_id, inf_obj_name, inf_obj_cod FROM inf_obj_NODE WHERE inf_obj_name LIKE ''%'+filter_str+'%'' AND LEFT(' + DateToSQL(Date) + ', 6) BETWEEN ISNULL(convert(varchar(6), date_begin, 112), ''190101'') AND ISNULL(convert(varchar(6), date_end, 112), ''210012'') ORDER BY inf_obj_name');
      Q.Open;
      fmFilter := TfmFilter.Create(0, Q, 'inf_obj_id', 'inf_obj_cod', 'inf_obj_name');
      Q.Free;
      if fmFilter.ShowModal = mrOk then begin
        if (Sender = cxButtonEdit4) then Fnode_begin_id := fmFilter.GetId;
        if (Sender = cxButtonEdit5) then Fnode_end_id := fmFilter.GetId;
        TcxButtonEdit(Sender).EditValue := fmFilter.GetName;
      end;
    end;
  end;
  1: begin
        if (Sender = cxButtonEdit4) then Fnode_begin_id := -9;
        if (Sender = cxButtonEdit5) then Fnode_end_id := -9;
        TcxButtonEdit(Sender).EditValue := null;
  end;
  end;
end;

procedure TfmVagonArendaAdd.cxCheckBox1PropertiesEditValueChanged(Sender: TObject);
var i: integer;
begin
  for i := 0 to ComponentCount - 1 do
    if (Components[i].InheritsFrom(TControl)) and (Sender <> Components[i]) then begin
      if (TControl(Components[i]).Tag = TControl(Sender).Tag) then
        TControl(Components[i]).Enabled := TcxCheckBox(Sender).Checked;
    end;
end;

procedure TfmVagonArendaAdd.cxDateEdit5KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
 if ((Key = Ord('z')) or (Key = Ord('Z'))) and (Shift = [ssCtrl,ssAlt]) then cxCheckBox8.Enabled := True;
end;

procedure TfmVagonArendaAdd.cxGrid1DBBandedTableView1CustomDrawColumnHeader(Sender: TcxGridTableView;  ACanvas: TcxCanvas; AViewInfo: TcxGridColumnHeaderViewInfo; var ADone: Boolean);
begin
  DrawcxGridColumnOnFocused(Sender, ACanvas, AViewInfo);
end;

procedure TfmVagonArendaAdd.cxGrid1DBBandedTableView1DataControllerFilterChanged(Sender: TObject);
begin
  DrawcxGridColumnOnFiltered(Sender);
end;

procedure TfmVagonArendaAdd.cxGrid1DBBandedTableView1FocusedItemChanged(Sender: TcxCustomGridTableView; APrevFocusedItem, AFocusedItem: TcxCustomGridTableItem);
begin
  Sender.Painter.Invalidate;
end;

procedure TfmVagonArendaAdd.cxGrid1DBBandedTableView1KeyPress(Sender: TObject; var Key: Char);
begin
  FilterColumnGridOnKeyPress(TcxGridDBBandedTableView(TcxGridSite(Sender).GridView), Key);
end;

procedure TfmVagonArendaAdd.SetInsert(id: integer);
begin
  Fact_begin_id := -9; Fold_act_begin_id := -9;
  Fact_end_id := -9; Fold_act_end_id := -9;
  Fnode_begin_id := -9; Fnode_end_id := -9;
end;

procedure TfmVagonArendaAdd.SetPeriod(dtbegin, dtend: TDateTime; type_period: integer);
begin
  Fdtbegin := dtbegin;
  Fdtend := dtend;
  Ftype_period := type_period;
end;


procedure TfmVagonArendaAdd.SetGroupUpdate(str_vagon_arenda_id: string);
var i, k : integer;
       Q : TADOQuery;
begin
  Screen.Cursor := crHourglass;
  Fset_group := True;
  Fstr_vagon_arenda_id := str_vagon_arenda_id;

  Q := TADOQuery.Create(nil);
  Q.Connection := fmMain.Lis;
  Q.SQL.Add(' SELECT num_vagon ' +
            ' FROM view_vagon_arenda2_upd ' +
            ' WHERE vagon_arenda_id IN (' + Fstr_vagon_arenda_id + ')');
  Q.Open;
  while not Q.Eof do begin
    cxMemo1.Lines.Add(Q.FieldByName('num_vagon').AsString);
    Q.Next;
  end;
  Q.Free;

  cxMemo1.Properties.ReadOnly := True;
  cxMemo1.Style.Color := clBtnFace;
  dxBarButton1.Enabled := False;
  dxBarButton2.Enabled := False;
  dxBarButton3.Enabled := False;

  Fact_begin_id := -9;
  Fact_end_id := -9;
  Fnode_begin_id := -9;
  Fnode_end_id := -9;

  Panel6.Visible := False;
  Splitter2.Visible := False;
  Panel4.Align := alClient;

  for i := 0 to ComponentCount-1 do begin
    if (TControl(Components[i]).Tag <> 0) AND (Components[i].ClassName = 'TcxCheckBox') then begin
      TControl(Components[i]).Visible := True;

      for k := 0 to ComponentCount - 1 do begin
        if (Components[k].InheritsFrom(TControl)) then
          if (TControl(Components[i]).Tag = TControl(Components[k]).Tag) and (i<>k) then
            TControl(Components[k]).Enabled := False;
      end;
    end;
  end;

  Screen.Cursor := crDefault;
end;

function TfmVagonArendaAdd.ActValidation(act_id: integer): boolean;
var
  Proc : TADOStoredProc;
  str_nvag : String;
  i : integer;
begin
  str_nvag := '';

  for i := 0 to cxMemo1.Lines.Count - 1 do
    if Trim(cxMemo1.Lines[i]) <> '' then
      str_nvag := str_nvag + ',' + cxMemo1.Lines[i];
  Delete(str_nvag, 1, 1);

  try
    try
      Result := True;

      Screen.Cursor := crHourglass;

      Proc := TADOStoredProc.Create(Nil);
      Proc.Connection := fmMain.Lis;
      Proc.ProcedureName := 'sp_vagon_arenda_acts_validate';
      Proc.Parameters.Refresh;
      Proc.Parameters.ParamByName('@str_num_vagon').Value := str_nvag;
      Proc.Parameters.ParamByName('@act_id').Value := act_id;
      Proc.ExecProc;
    except
      Result := False;
    end;
  finally
    FreeAndNil(Proc);

    Screen.Cursor := crDefault;
  end;
end;

procedure TfmVagonArendaAdd.dxBarButton1Click(Sender: TObject);
type
  TFunc = function(AppHand:THandle; f:boolean; usr_pwd:PUser_pwd) : variant;
var
  FDic   : TFunc;
  handle : THandle;
  v      : Variant;
  s : string;
  PRC : TADOStoredProc;
begin
  handle := LoadLibrary('dictionary.dll');
  @FDic := GetProcAddress(handle, 'CreateWndVagon');
  v := FDic(Application.Handle, True, usr_pwd);
  FreeLibrary(handle);
  s := v[1];

  if s <> '' then begin
    try
      try
        Screen.Cursor := crHourglass;

        PRC := TADOStoredProc.Create(nil);
        PRC.Connection := fmMain.Lis;
        PRC.ProcedureName := 'sp_vagon_arenda_validation';
        PRC.Parameters.Refresh;
        PRC.Parameters.ParamByName('@str_num_vagon').Value := s;
        PRC.ExecProc;
        s := StringReplace(s, ',', #13, [rfReplaceAll]);
        cxMemo1.EditValue := s;

        Screen.Cursor := crDefault;
      except
      end;
    finally
      FreeAndNil(PRC);
    end;
  end;
end;

procedure TfmVagonArendaAdd.dxBarButton2Click(Sender: TObject);
begin
  cxMemo1.ClearSelection;
end;

procedure TfmVagonArendaAdd.dxBarButton3Click(Sender: TObject);
begin
  cxMemo1.Clear;
end;

procedure TfmVagonArendaAdd.dxBarButton4Click(Sender: TObject);
var fmVagonArendaRate: TfmVagonArendaRateAdd;

  function NextDate: TDate;
  var
    id_period, id_rate: variant;
  begin
    Result := 0;
    ClientDS_Rate.DisableControls;
    id_period := ClientDS_Rate.FieldByName('vagon_arenda_id').Value;
    id_rate := ClientDS_Rate.FieldByName('vagon_arenda_rate_id').Value;
    ClientDS_Rate.First;
    while not ClientDS_Rate.Eof do begin
      if not ClientDS_Rate.FieldByName('dt_end').IsNull then begin
        if ClientDS_Rate.FieldByName('dt_end').AsDateTime > Result then
          Result := ClientDS_Rate.FieldByName('dt_end').AsDateTime;
      end
      else
        Result := ClientDS_Rate.FieldByName('dt_begin').AsDateTime;
      ClientDS_Rate.Next;
    end;
     ClientDS_Rate.Locate('vagon_arenda_rate_id;vagon_arenda_id', VarArrayOf([id_rate, id_period]), []);
     Result := IncDay(Result, 1);
     ClientDS_Rate.EnableControls;
   end;

begin
  //Добавить

  if (ClientDS_Rate.RecordCount = 0) and (Fact_begin_id = -9) and not(Fset_group) then begin
    Application.MessageBox('Выбирите акт ввода.', 'Ошибка', MB_OK + MB_ICONERROR);
    Exit;
  end;

  fmVagonArendaRate := TfmVagonArendaRateAdd.Create(Self);
  fmVagonArendaRate._SetInsert := -9;

  if ClientDS_Rate.RecordCount = 0 then begin
    fmVagonArendaRate.cxDateEdit1.Date := cxDateEdit5.Date;
    fmVagonArendaRate.cxDateEdit1.Enabled := False;
  end
  else begin
    fmVagonArendaRate.cxDateEdit1.Date := NextDate;
    fmVagonArendaRate.cxDateEdit1.Enabled := ClientDS_Rate.Locate('dt_end', Null, []);
  end;

  if fmVagonArendaRate.ShowModal = mrOk then begin
    with fmVagonArendaRate do begin
      while ClientDS_Rate.Locate('dt_end', NULL, []) do begin
        ClientDS_Rate.Edit;
        ClientDS_Rate.FieldByName('dt_end').Value := IncDay(cxDateEdit1.Date, -1);
        ClientDS_Rate.Post;
      end;
      ClientDS_Rate.Append;
      ClientDS_Rate.FieldByName('vagon_arenda_rate_id').Value := NULL;
      ClientDS_Rate.FieldByName('vagon_arenda_id'     ).Value := Fvagon_arenda_id;
      ClientDS_Rate.FieldByName('dt_begin'            ).Value := cxDateEdit1.EditValue;
      ClientDS_Rate.FieldByName('dt_end'              ).Value := cxDateEdit5.EditValue;
      ClientDS_Rate.FieldByName('rate_val'            ).Value := cxCurrencyEdit1.EditValue;
      ClientDS_Rate.FieldByName('rate_val_nds'        ).Value := cxCurrencyEdit2.EditValue;
      ClientDS_Rate.FieldByName('currency_id'         ).Value := cxLookupComboBox1.EditValue;
      ClientDS_Rate.FieldByName('currency_nm'         ).Value := cxLookupComboBox1.Text;
      ClientDS_Rate.FieldByName('type_rate_id'        ).Value := cxLookupComboBox2.EditValue;
      ClientDS_Rate.FieldByName('type_rate_nm'        ).Value := cxLookupComboBox2.Text;
      ClientDS_Rate.FieldByName('type_nds_id'         ).Value := cxLookupComboBox7.EditValue;
      ClientDS_Rate.FieldByName('type_nds_nm'         ).Value := cxLookupComboBox7.Text;
      ClientDS_Rate.FieldByName('dt_diff'             ).Value := (iif(ClientDS_Rate.FieldByName('dt_end').IsNull, Fdtend, ClientDS_Rate.FieldByName('dt_end').Value) - ClientDS_Rate.FieldByName('dt_begin').Value) + 1 ;
      ClientDS_Rate.Post;
    end;
  end;
  FreeAndNil(fmVagonArendaRate);
end;

procedure TfmVagonArendaAdd.dxBarButton5Click(Sender: TObject);
var fmVagonArendaRate: TfmVagonArendaRateAdd;
begin
//Изменить
  if cxGrid1DBBandedTableView1.Controller.SelectedRecordCount = 0 then
    Exit;

  fmVagonArendaRate := TfmVagonArendaRateAdd.Create(Self);
  fmVagonArendaRate._SetUpdate := ClientDS_Rate;


  if fmVagonArendaRate.ShowModal = mrOk then begin
    with fmVagonArendaRate do begin
      ClientDS_Rate.Edit;
      ClientDS_Rate.FieldByName('dt_begin'    ).Value := cxDateEdit1.EditValue;
      ClientDS_Rate.FieldByName('dt_end'      ).Value := cxDateEdit5.EditValue;
      ClientDS_Rate.FieldByName('rate_val'    ).Value := cxCurrencyEdit1.EditValue;
      ClientDS_Rate.FieldByName('rate_val_nds').Value := cxCurrencyEdit2.EditValue;
      ClientDS_Rate.FieldByName('currency_id' ).Value := cxLookupComboBox1.EditValue;
      ClientDS_Rate.FieldByName('currency_nm' ).Value := cxLookupComboBox1.Text;
      ClientDS_Rate.FieldByName('type_rate_id').Value := cxLookupComboBox2.EditValue;
      ClientDS_Rate.FieldByName('type_rate_nm').Value := cxLookupComboBox2.Text;
      ClientDS_Rate.FieldByName('type_nds_id' ).Value := cxLookupComboBox7.EditValue;
      ClientDS_Rate.FieldByName('type_nds_nm' ).Value := cxLookupComboBox7.Text;
      ClientDS_Rate.FieldByName('dt_diff'     ).Value := (iif(ClientDS_Rate.FieldByName('dt_end').IsNull, Fdtend, ClientDS_Rate.FieldByName('dt_end').Value) - ClientDS_Rate.FieldByName('dt_begin').Value) + 1 ;
      ClientDS_Rate.Post;
    end;
  end;
  FreeAndNil(fmVagonArendaRate);
end;

procedure TfmVagonArendaAdd.dxBarButton6Click(Sender: TObject);
begin
//Удалить
  if Application.MessageBox('Вы точно хотите удалить ставку?', '', MB_OK + MB_ICONQUESTION) = ID_OK then
    ClientDS_Rate.Delete;
end;

procedure TfmVagonArendaAdd.dxBarPopupMenu2Popup(Sender: TObject);
begin
  dxBarButton5.Enabled := not(ClientDS_Rate.RecordCount = 0);
  dxBarButton6.Enabled := not(ClientDS_Rate.RecordCount = 0);
end;

procedure TfmVagonArendaAdd.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  if Fset_group then begin
    Panel6.Visible := True;
    Splitter2.Visible := True;
    Panel4.Align := alTop;
  end;
  Action := caFree;
end;


procedure TfmVagonArendaAdd.FormDestroy(Sender: TObject);
begin
  StoreRegistryGrid(rgSave, '\Software\Lis1\VagonArendaNewAdd_Grids_', cxGrid1DBBandedTableView1);
end;


end.
