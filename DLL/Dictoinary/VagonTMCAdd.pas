unit VagonTMCAdd;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, cxGraphics, cxLookAndFeels, cxLookAndFeelPainters, dxSkinsCore, dxSkinBlack, dxSkinBlue,
  dxSkinBlueprint, dxSkinCaramel, dxSkinCoffee, dxSkinDarkRoom, dxSkinDarkSide, dxSkinDevExpressDarkStyle, dxSkinDevExpressStyle,
  dxSkinFoggy, dxSkinGlassOceans, dxSkinHighContrast, dxSkiniMaginary, dxSkinLilian, dxSkinLiquidSky, dxSkinLondonLiquidSky, dxSkinMcSkin,
  dxSkinMetropolis, dxSkinMetropolisDark, dxSkinMoneyTwins, dxSkinOffice2007Black, dxSkinOffice2007Blue, dxSkinOffice2007Green,
  dxSkinOffice2007Pink, dxSkinOffice2007Silver, dxSkinOffice2010Black, dxSkinOffice2010Blue, dxSkinOffice2010Silver, dxSkinOffice2013DarkGray,
  dxSkinOffice2013LightGray, dxSkinOffice2013White, dxSkinPumpkin, dxSkinSeven, dxSkinSevenClassic, dxSkinSharp, dxSkinSharpPlus,
  dxSkinSilver, dxSkinSpringTime, dxSkinStardust, dxSkinSummer2008, dxSkinTheAsphaltWorld, dxSkinsDefaultPainters, dxSkinValentine,
  dxSkinVS2010, dxSkinWhiteprint, dxSkinXmas2008Blue, StdCtrls, cxButtons, cxClasses, cxPropertiesStore, DB, ADODB, cxControls,
  cxContainer, cxEdit, ComCtrls, dxCore, cxDateUtils, cxLabel, cxButtonEdit, cxMaskEdit, cxDropDownEdit, cxCalendar, cxTextEdit, cxMemo,
  DBClient, dxSkinOffice2016Colorful, dxSkinOffice2016Dark, dxSkinVisualStudio2013Blue, dxSkinVisualStudio2013Dark,
  dxSkinVisualStudio2013Light, cxStyles, cxCustomData, cxData, cxDataStorage, cxNavigator, cxDBData, cxCurrencyEdit,
  cxDBLookupComboBox, dxSkinscxPCPainter, dxSkinsdxBarPainter, cxCheckBox, dxSkinsForm, cxDataControllerConditionalFormattingRulesManagerDialog,
  dxDateRanges, cxLookupEdit, cxDBLookupEdit, dxSkinTheBezier, Menus;

type
  TfmVagonTMCAdd = class(TForm)
    Panel2: TPanel;
    cxPropertiesStore1: TcxPropertiesStore;
    cxButton1: TcxButton;
    cxButton2: TcxButton;
    Panel1: TPanel;
    cxButtonEdit3: TcxButtonEdit;
    cxLabel1: TcxLabel;
    ClientDataSet1: TClientDataSet;
    ClientDataSet1inf_obj_id: TIntegerField;
    ClientDataSet1inf_obj_cod: TStringField;
    ClientDataSet1inf_obj_name: TStringField;
    cxLabel6: TcxLabel;
    cxLabel7: TcxLabel;
    cxButtonEdit4: TcxButtonEdit;
    Query_InfObj_122: TADOQuery;
    DS_InfObj_122: TDataSource;
    ClientDS_Cargo: TClientDataSet;
    ClientDS_Cargovessel_trip_id: TIntegerField;
    ClientDS_Cargotype_cargo_id: TIntegerField;
    ClientDS_Cargocargo_weight: TBCDField;
    ClientDS_Cargoid: TAutoIncField;
    DS_Cargo: TDataSource;
    ClientDS_Cargovessel_trip_cargo_id: TIntegerField;
    ClientDS_Cargoset_dangerous_cargo: TBooleanField;
    cxLabel10: TcxLabel;
    cxTextEdit1: TcxTextEdit;
    ClientDS_Cargocargo_name: TStringField;
    ClientDS_Cargocargo_cnt_seats: TIntegerField;
    ClientDS_Cargoport_call_id: TIntegerField;
    ClientDS_Cargoport_call_name: TStringField;
    ClientDS_Cargocargo_function_id: TIntegerField;
    ClientDS_Cargocomment: TStringField;
    Query_InfObj_159: TADOQuery;
    DS_InfObj_159: TDataSource;
    cxDateEdit3: TcxDateEdit;
    Label3: TLabel;
    cxLookupComboBox2: TcxLookupComboBox;
    cxTextEdit4: TcxTextEdit;
    cxLabel12: TcxLabel;
    cxDateEdit4: TcxDateEdit;
    GroupBox2: TGroupBox;
    cxMemo2: TcxMemo;
    GroupBox3: TGroupBox;
    cxMemo3: TcxMemo;
    GroupBox4: TGroupBox;
    Label13: TLabel;
    cxButtonEdit5: TcxButtonEdit;
    cxCheckBox7: TcxCheckBox;
    cxCheckBox8: TcxCheckBox;
    cxCheckBox1: TcxCheckBox;
    Query_Depo: TADOQuery;
    DS_Depo: TDataSource;
    cxLabel3: TcxLabel;
    cxLookupComboBox1: TcxLookupComboBox;
    cxCurrencyEdit1: TcxCurrencyEdit;
    cxButtonEdit1: TcxButtonEdit;
    Label11: TLabel;
    cxCheckBox2: TcxCheckBox;
    cxLabel2: TcxLabel;
    cxDateEdit1: TcxDateEdit;
    cxDateEdit2: TcxDateEdit;
    cxLookupComboBox3: TcxLookupComboBox;
    Label4: TLabel;
    cxTextEdit3: TcxTextEdit;
    cxTextEdit2: TcxTextEdit;
    Label1: TLabel;
    Query_Contract: TADOQuery;
    DS_Contract: TDataSource;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure cxButton1Click(Sender: TObject);
    procedure cxButtonEdit5PropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
    procedure cxButtonEdit1PropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
    procedure cxButtonEdit3PropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
    procedure cxCheckBox2PropertiesEditValueChanged(Sender: TObject);
  private
    Fconnect              : TADOConnection;
    Fvagon_tmc_id        : integer;

    procedure SetUpdate(vagon_tmc_id: integer);
  public
    constructor Create(AOwner: TApplication; connect: TADOConnection; DS:TClientDataSet = nil);
  published
    property _SetUpdate : integer write SetUpdate;
    property _GetID : integer read Fvagon_tmc_id ;
  end;

var
  fmVagonTMCAdd: TfmVagonTMCAdd;

function CreateWndVagonTMCAdd(AppHand: THandle; flag: boolean; connect: TADOConnection; DS:TClientDataSet): variant; export;

implementation
  uses Raznoe, Filter, Default, VagonTMC, Vagon;
{$R *.dfm}

function CreateWndVagonTMCAdd(AppHand: THandle; flag: boolean; connect: TADOConnection; DS:TClientDataSet): variant; export;
begin
  Application.Handle := AppHand;
  try
    fmVagonTMCAdd := TfmVagonTMCAdd.Create(Application, connect, DS);
    if fmVagonTMCAdd.ShowModal = mrOk then result := VarArrayOf([fmVagonTMCAdd._GetId, 1])
    else result := VarArrayOf([-9, -9]);
  finally
    fmVagonTMCAdd.Free;
  end;
end;

constructor TfmVagonTMCAdd.Create(AOwner: TApplication; connect: TADOConnection; DS:TClientDataSet = nil);
begin
  Screen.Cursor := crHourglass;

  inherited Create(AOwner);
  Fconnect := connect;
  Fvagon_tmc_id       := -9;
  Query_Depo.Connection := Fconnect;
  Query_Depo.Open;
  Query_InfObj_122.Connection := Fconnect;
  Query_InfObj_122.Open;
  Query_Contract.Connection := Fconnect;
  Query_Contract.Open;

  cxDateEdit3.EditValue := Date;
  cxCurrencyEdit1.EditValue := 1;

  if DS <> nil then begin
    cxButtonEdit3.Tag := Ds.FieldByName('vagon_id').Value;
    cxButtonEdit3.EditValue := Ds.FieldByName('num_vagon').Value;
    cxCheckBox1.Checked := not Ds.FieldByName('IsEmpty').Value;
    cxButtonEdit4.EditValue := Ds.FieldByName('firm_name').Value;
  end;

  MonitorEventFormOpen('OPEN_FORM', self.Name, Fconnect, -9);
  Screen.Cursor := crDefault;
end;

procedure TfmVagonTMCAdd.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action := caFree;
end;

procedure TfmVagonTMCAdd.SetUpdate(vagon_tmc_id: integer);
var Q : TADOQuery;
begin
  Screen.Cursor := crHourglass;

  Fvagon_tmc_id := vagon_tmc_id;
  Q := TADOQuery.Create(nil);
  Q.Connection := Fconnect;
  Q.SQL.Add('SELECT * FROM view_vagon_tmc WHERE vagon_tmc_id=' + IntToStr(Fvagon_tmc_id));
  Q.Open;

  cxDateEdit3.EditValue   := Q.FieldByName('date_begin').Value;
  cxButtonEdit3.Tag       := iif(Q.FieldByName('vagon_id').isnull, -9, Q.FieldByName('vagon_id').AsInteger);
  cxButtonEdit3.EditValue :=  Q.FieldByName('num_vagon').Value;

  cxLookupComboBox2.EditValue :=  Q.FieldByName('depo_id').Value;
  cxLookupComboBox1.EditValue :=  Q.FieldByName('detail_id').Value;
  cxCurrencyEdit1.EditValue   :=  Q.FieldByName('detail_cnt').Value;
  cxDateEdit4.EditValue       :=  Q.FieldByName('date_breakage').Value;
  cxDateEdit1.EditValue       := Q.FieldByName('date_end').Value;
  cxMemo3.EditValue           := Q.FieldByName('depo_note').Value;
  cxButtonEdit5.EditValue     := Q.FieldByName('sale_FIO_users').Value;
  cxMemo2.EditValue           := Q.FieldByName('comment').Value;
  cxCheckBox1.Checked         := Q.FieldByName('set_gr').Value;
  cxButtonEdit1.EditValue     := Q.FieldByName('FIO_users_owner').Value;
  cxTextEdit1.EditValue       := Fvagon_tmc_id;

  cxCheckBox2.Properties.OnEditValueChanged := nil;
  cxCheckBox2.Checked   :=  Q.FieldByName('set_in_work').Value;
  cxDateEdit2.EditValue :=  Q.FieldByName('date_in_work').Value;
  cxTextEdit2.EditValue :=  Q.FieldByName('pto_note').Value;
  cxLookupComboBox3.EditValue :=  Q.FieldByName('contract_id').Value;

  cxCheckBox2.Properties.OnEditValueChanged := cxCheckBox2PropertiesEditValueChanged;

  Q.Free;

  MonitorEventFormOpen('UPDATE_FORM', self.Name, Fconnect, Fvagon_tmc_id);

  Screen.Cursor := crDefault;
end;

procedure TfmVagonTMCAdd.cxButton1Click(Sender: TObject);
var SP : TADOStoredProc;
begin
 if VarIsNull(cxDateEdit3.EditValue) then begin
    Application.MessageBox('Не заполнена дата заявки!', 'Внимание', MB_OK or MB_ICONERROR);
    ModalResult := mrNone;
    Exit;
  end;

  Screen.Cursor := crHourglass;
  SP := TADOStoredProc.Create(nil);
  SP.Connection := Fconnect;
  SP.ProcedureName := 'sp_vagon_tmc_modify';
  SP.Parameters.Refresh;

  SP.Parameters.ParamByName('@type_action'   ).Value := iif(Fvagon_tmc_id = -9, 0, 1);
  SP.Parameters.ParamByName('@vagon_tmc_id'  ).Value := Fvagon_tmc_id;
  SP.Parameters.ParamByName('@vagon_id'      ).Value := iif(cxButtonEdit3.Tag = -9, null, cxButtonEdit3.Tag);;
  SP.Parameters.ParamByName('@depo_id'       ).Value := cxLookupComboBox2.EditValue;
  SP.Parameters.ParamByName('@detail_id'     ).Value := cxLookupComboBox1.EditValue;
  SP.Parameters.ParamByName('@date_breakage' ).Value := cxDateEdit4.EditValue;
  SP.Parameters.ParamByName('@depo_note'     ).Value := cxMemo3.EditValue;
  SP.Parameters.ParamByName('@sale_FIO_users').Value := cxButtonEdit5.EditValue;
  SP.Parameters.ParamByName('@detail_cnt'    ).Value := cxCurrencyEdit1.EditValue;
  SP.Parameters.ParamByName('@date_begin'    ).Value := cxDateEdit3.EditValue;
  SP.Parameters.ParamByName('@date_end'      ).Value := cxDateEdit1.EditValue;
  SP.Parameters.ParamByName('@comment'       ).Value := cxMemo2.EditValue;
  SP.Parameters.ParamByName('@detail_cnt'    ).Value := cxCurrencyEdit1.EditValue;
  SP.Parameters.ParamByName('@set_gr'        ).Value := cxCheckBox1.Checked;
  SP.Parameters.ParamByName('@set_in_work'   ).Value := cxCheckBox2.Checked;
  SP.Parameters.ParamByName('@date_in_work'  ).Value := cxDateEdit2.EditValue;

  SP.Parameters.ParamByName('@pto_note'  ).Value := cxTextEdit2.EditValue;
  SP.Parameters.ParamByName('@contract_id'  ).Value := cxLookupComboBox3.EditValue;



  SP.ExecProc;

  Fvagon_tmc_id := SP.Parameters.ParamByName('@vagon_tmc_id').Value;
  SP.Free;
  Screen.Cursor := crDefault;
end;

procedure TfmVagonTMCAdd.cxButtonEdit1PropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
type
  TFuncList = function (AppHand: THandle): Variant;
var FPersonList : TFuncList;
         handle : THandle;
              v : Variant;
              Q : TADODataSet;
begin
  case AButtonIndex of
    0 : begin
          try
            handle := LoadLibrary('Tel_users.dll');
            @FPersonList := GetProcAddress(handle, 'GetPersonList');
            v := FPersonList(Application.Handle);
            FreeLibrary(handle);
            Q := TADODataSet.Create(nil);
            Q.Recordset := RecordsetFromXML(v[1]);
            fmFilter := TfmFilter.Create(0, Q, 'users_id', 'users_id', 'FIO_users' );
            fmFilter._SelectIndexColumn := 1;
            fmFilter.SetUsersChoose(cxButtonEdit1.Text);
            if fmFilter.ShowModal = mrOk then begin
              Q.Locate('fio_users', fmFilter.GetName, [loCaseInsensitive]);
              cxButtonEdit1.EditValue := fmFilter.GetName;
              cxButtonEdit1.Properties.Buttons[1].Enabled := True;
            end;

            Q.Free;
          except
            Application.MessageBox('Ошибка загрузки библиотеки телефонного справочника.', 'Ошибка', MB_ICONERROR or MB_OK);
          end;
        end;
    1 : begin
          Screen.Cursor := crHourglass;
          if  cxButtonEdit1.Text <> '' then
            ShowUsersDetail(-9, cxButtonEdit1.Text);
          Screen.Cursor := crDefault;
        end;
  end;
end;

procedure TfmVagonTMCAdd.cxButtonEdit3PropertiesButtonClick(Sender: TObject;AButtonIndex: Integer);
var fmVagon1 : TfmVagon;
begin
  case AButtonIndex of
    0 : begin
          fmVagon1 := TfmVagon.Create(Application, True, fmVagonTMC.Fusr_pwd, 0);
          if fmVagon1.ShowModal = mrOk then begin
             cxButtonEdit3.Tag := fmVagon1._GetVagonId;
             cxButtonEdit3.EditValue := fmVagon1._GetStrVagonNum;
             cxButtonEdit4.EditValue := fmVagon1._GetVagonOwner;
          end;
        end;
    1 : begin
          cxButtonEdit3.Tag := -9;
          cxButtonEdit3.EditValue := NULL;
        end;
  end;
end;

procedure TfmVagonTMCAdd.cxButtonEdit5PropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
type
  TFuncList = function (AppHand: THandle): Variant;
var FPersonList : TFuncList;
         handle : THandle;
              v : Variant;
              Q : TADODataSet;
begin
  case AButtonIndex of
    0 : begin
//          try
//            handle := LoadLibrary('Tel_users.dll');
//            @FPersonList := GetProcAddress(handle, 'GetPersonList');
//            v := FPersonList(Application.Handle);
//            FreeLibrary(handle);
//            Q := TADODataSet.Create(nil);
//            Q.Recordset := RecordsetFromXML(v[1]);
//            fmFilter := TfmFilter.Create(0, Q, 'users_id', 'users_id', 'FIO_users' );
//            fmFilter._SelectIndexColumn := 1;
//            fmFilter.SetUsersChoose(cxButtonEdit5.Text);
//            if fmFilter.ShowModal = mrOk then begin
//              Q.Locate('fio_users', fmFilter.GetName, [loCaseInsensitive]);
//              cxButtonEdit5.EditValue := fmFilter.GetName;
//              cxButtonEdit5.Properties.Buttons[1].Enabled := True;
//            end;
//
//            Q.Free;
//          except
//            Application.MessageBox('Ошибка загрузки библиотеки телефонного справочника.', 'Ошибка', MB_ICONERROR or MB_OK);
//          end;
        end;
    1 : begin
          Screen.Cursor := crHourglass;
          if  cxButtonEdit5.Text <> '' then ShowUsersDetail(-9, cxButtonEdit5.Text);
          Screen.Cursor := crDefault;
        end;
  end;
end;

procedure TfmVagonTMCAdd.cxCheckBox2PropertiesEditValueChanged(Sender: TObject);
var Q : TADOQuery;
begin

  if cxCheckBox2.Checked then begin
    Q := TADOQuery.Create(nil);
    Q.Connection := Fconnect;
    Q.SQL.Add('SELECT FIO_users FROM users WHERE users_id =' + IntToStr(fmVagonTMC.Fusr_pwd.users_id));
    Q.Open;

    cxDateEdit2.EditValue := Date;
    cxButtonEdit5.EditValue := Q.FieldByName('FIO_users').Value;
    Q.Close;
    Q.Free;
  end;

  if not cxCheckBox2.Checked then begin
    cxDateEdit2.EditValue := NULL;
    cxButtonEdit5.EditValue := NULL
  end;

end;

end.
