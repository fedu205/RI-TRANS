unit VagonOwnerAdd;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms, Dialogs,
  cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters, cxContainer, cxEdit, cxMemo, StdCtrls, cxTextEdit, cxDropDownEdit,
  cxCalendar, cxMaskEdit, cxLookupEdit, cxDBLookupEdit, cxDBLookupComboBox, ExtCtrls, DB, ADODB, cxCurrencyEdit, cxPropertiesStore,
  cxButtonEdit, ComCtrls, dxCore, cxDateUtils, dxSkinsCore, dxSkinBlack, dxSkinBlue, dxSkinBlueprint, dxSkinCaramel, dxSkinCoffee,
  dxSkinDarkRoom, dxSkinDarkSide, dxSkinDevExpressDarkStyle, dxSkinDevExpressStyle, dxSkinFoggy, dxSkinGlassOceans, dxSkinHighContrast,
  dxSkiniMaginary, dxSkinLilian, dxSkinLiquidSky, dxSkinLondonLiquidSky, dxSkinMcSkin, dxSkinMetropolis, dxSkinMetropolisDark,
  dxSkinMoneyTwins, dxSkinOffice2007Black, dxSkinOffice2007Blue, dxSkinOffice2007Green, dxSkinOffice2007Pink, dxSkinOffice2007Silver,
  dxSkinOffice2010Black, dxSkinOffice2010Blue, dxSkinOffice2010Silver, dxSkinOffice2013DarkGray, dxSkinOffice2013LightGray,
  dxSkinOffice2013White, dxSkinPumpkin, dxSkinSeven, dxSkinSevenClassic, dxSkinSharp, dxSkinSharpPlus, dxSkinSilver, dxSkinSpringTime,
  dxSkinStardust, dxSkinSummer2008, dxSkinTheAsphaltWorld, dxSkinsDefaultPainters, dxSkinValentine, dxSkinVS2010, dxSkinWhiteprint,
  dxSkinXmas2008Blue, cxClasses, dxSkinOffice2016Colorful, dxSkinOffice2016Dark, dxSkinVisualStudio2013Blue, dxSkinVisualStudio2013Dark,
  dxSkinVisualStudio2013Light, System.StrUtils, cxCheckBox, dxSkinTheBezier, Vcl.Menus, cxButtons;

type
  TfmVagonOwnerAdd = class(TForm)
    Panel2: TPanel;
    Panel1: TPanel;
    Label5: TLabel;
    cxPropertiesStore1: TcxPropertiesStore;
    cxLookupComboBox1: TcxLookupComboBox;
    Query_Owner: TADOQuery;
    DS_Owner: TDataSource;
    cxTextEdit14: TcxTextEdit;
    Label2: TLabel;
    Label3: TLabel;
    cxDateEdit8: TcxDateEdit;
    cxLookupComboBox2: TcxLookupComboBox;
    Label4: TLabel;
    DS_type_park: TDataSource;
    Query_type_park: TADOQuery;
    Panel3: TPanel;
    Label16: TLabel;
    cxDateEdit1: TcxDateEdit;
    Label1: TLabel;
    cxDateEdit3: TcxDateEdit;
    cxCheckBox1: TcxCheckBox;
    cxButton1: TcxButton;
    cxButton3: TcxButton;
    GroupBox1: TGroupBox;
    cxMemo1: TcxMemo;
    cxCheckBox4: TcxCheckBox;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure cxDateEdit1PropertiesValidate(Sender: TObject; var DisplayValue: Variant; var ErrorText: TCaption; var Error: Boolean);
    procedure cxDateEdit1PropertiesChange(Sender: TObject);
    procedure cxLookupComboBox1PropertiesEditValueChanged(Sender: TObject);
    procedure cxLookupComboBox2PropertiesEditValueChanged(Sender: TObject);
    procedure cxCheckBox4PropertiesChange(Sender: TObject);
    procedure cxCheckBox1PropertiesChange(Sender: TObject);
    procedure cxButton1Click(Sender: TObject);
  private
    Ftype_action    : integer;
    Fvagon_owner_id : integer;
    Fcontract_id    : integer;
    Fcontract_cod   : string;
    Fcontract_date  : variant;
    Ffirm_name      : string;
    Fdate_begin     : variant;
    Fdate_end       : variant;
    FType_park_id   : integer;
    FType_park_name : string;

    Fvagon_id       : integer;
    Fstr_vagon_id   : string;
    FCnn            : TADOConnection;

    procedure SetConnection(ACnn : TADOConnection);

    procedure SetInsert(vagon_id : integer);
    procedure SetUpdate(vagon_owner_id : integer);
    procedure SetTypeAction(type_action : integer);
  public
    procedure _SetInsertToVagonAdd(Acontract_id, Atype_park_id: integer; Adate_begin, Adate_end: Variant);

    constructor Create(AOwner : TApplication);

    property _Connection : TADOConnection read FCnn write SetConnection;
  published
    property _SetInsert       : integer  write SetInsert;
    property _SetUpdate       : integer  write SetUpdate;
    property _SetTypeAction   : integer  write SetTypeAction;
    property _SetStrVagonId   : string   write Fstr_vagon_id;

    property _GetContractId   : integer read Fcontract_id;
    property _GetContractCod  : string  read Fcontract_cod;
    property _GetContractDate : variant read Fcontract_date;
    property _GetFirmName     : string  read Ffirm_name;
    property _GetDateBegin    : variant read Fdate_begin;
    property _GetDateEnd      : variant read Fdate_end;
    property _GetTypeParkId   : integer read FType_park_id;
    property _GetTypeParkName : string  read FType_park_name;

  end;

var
  fmVagonOwnerAdd: TfmVagonOwnerAdd;

implementation
  uses Raznoe;

{$R *.dfm}

{ TfmVagonOwnerAdd }

constructor TfmVagonOwnerAdd.Create(AOwner: TApplication);
begin
  Screen.Cursor := crHourglass;
  inherited Create(AOwner);

  Ftype_action := 0;
  cxDateEdit1.EditValue := Date;
  Query_Owner.Parameters.ParamByName('date1').Value := cxDateEdit1.EditValue;
  Query_Owner.Open;
  cxLookupComboBox1.EditValue := Query_Owner.FieldByName('contract_id').Value;
  Query_type_park.Open;
  Query_type_park.Locate('inf_obj_cod','4',[]);
  cxLookupComboBox2.EditValue := Query_type_park.FieldByName('inf_obj_id').Value;
  Fvagon_owner_id := -9;
  cxCheckBox1.Visible := False;
  cxCheckBox4.Visible := False;

  Screen.Cursor := crDefault;
end;

procedure TfmVagonOwnerAdd.SetConnection(ACnn : TADOConnection);
begin
  FCnn := ACnn;
  SetUsersModuleRights(self, FCnn);
  MonitorEventFormOpen('OPEN_FORM', self.Name, FCnn, -9);
end;

procedure TfmVagonOwnerAdd.SetTypeAction(type_action: integer);
begin
  Caption := Caption + ' [' + IntToStr(Length(Fstr_vagon_id) - Length(ReplaceStr(Fstr_vagon_id, ',', '')) + 1) + ' вагон(а,ов)]';

  Ftype_action := type_action;
  cxLookupComboBox1.EditValue := NULL;
  cxLookupComboBox2.EditValue := NULL;
  cxTextEdit14.EditValue := NULL;
  cxDateEdit8.EditValue := NULL;

  case Ftype_action of
    3 : begin
          cxLookupComboBox1.EditValue := NULL;
          cxLookupComboBox2.EditValue := NULL;
        end;
    4 : begin
          cxLookupComboBox2.Enabled   := False;
          cxLookupComboBox1.EditValue := NULL;
          cxLookupComboBox2.EditValue := NULL;
          cxLookupComboBox2.Properties.ListSource.DataSet := nil;
        end;
    5 : begin
          cxLookupComboBox1.Enabled   := False;
          cxLookupComboBox1.EditValue := NULL;
          cxLookupComboBox2.EditValue := NULL;
          cxLookupComboBox1.Properties.ListSource.DataSet := nil;
        end;
    6 : begin
          cxLookupComboBox1.Enabled   := False;
          cxLookupComboBox1.EditValue := NULL;
          cxLookupComboBox2.Enabled   := False;
          cxLookupComboBox2.EditValue := NULL;
          cxDateEdit1.Enabled         := False;
          cxDateEdit1.EditValue       := NULL;
          cxDateEdit3.EditValue       := Date - 1;
          Panel1.Enabled              := False;
          cxLookupComboBox1.Properties.ListSource.DataSet := nil;
          cxLookupComboBox2.Properties.ListSource.DataSet := nil;
          cxMemo1.Enabled             := False;
        end;
    7 : begin
          cxLookupComboBox1.Enabled   := False;
          cxLookupComboBox1.EditValue := NULL;
          cxLookupComboBox2.Enabled   := False;
          cxLookupComboBox2.EditValue := NULL;
          cxDateEdit1.Enabled         := False;
          cxDateEdit1.EditValue       := NULL;
          cxDateEdit3.Enabled         := False;
          cxDateEdit3.EditValue       := NULL;
          Panel1.Enabled              := False;
          cxMemo1.Enabled             := False;
        end;
    8 : begin
          cxLookupComboBox1.Enabled   := False;
          cxLookupComboBox1.EditValue := NULL;
          cxLookupComboBox2.Enabled   := False;
          cxLookupComboBox2.EditValue := NULL;
          cxDateEdit1.Enabled         := False;
          cxDateEdit1.EditValue       := NULL;
          cxDateEdit3.Enabled         := False;
          cxDateEdit3.EditValue       := NULL;
          Panel1.Enabled              := False;
          cxMemo1.Enabled             := False;
        end;
    9 : begin
          cxLookupComboBox1.Enabled   := False;
          cxLookupComboBox1.EditValue := NULL;
          cxLookupComboBox2.Enabled   := False;
          cxLookupComboBox2.EditValue := NULL;
          cxDateEdit1.Enabled         := False;
          cxDateEdit1.EditValue       := NULL;
          cxDateEdit3.Enabled         := False;
          cxDateEdit3.EditValue       := NULL;
          Panel1.Enabled              := False;
          cxMemo1.EditValue           := NULL;
          cxMemo1.Enabled             := False;
          cxCheckBox4.Visible         := True;
        end;
    10: begin
          cxLookupComboBox1.Enabled   := False;
          cxLookupComboBox1.EditValue := NULL;
          cxLookupComboBox2.Enabled   := False;
          cxLookupComboBox2.EditValue := NULL;
          cxDateEdit1.Enabled         := False;
          cxDateEdit1.EditValue       := NULL;
          cxDateEdit3.Enabled         := False;
          cxDateEdit3.EditValue       := NULL;
          Panel1.Enabled              := False;
          cxMemo1.EditValue           := NULL;
          cxMemo1.Enabled             := False;
          cxCheckBox1.Visible         := True;
        end;
    11: begin
          Panel3.Visible := False;
          GroupBox1.Visible := False;
          cxLookupComboBox2.Visible := False;
          Label4.Visible := False;

          Constraints.MinHeight := Constraints.MinHeight - Panel3.Height - GroupBox1.Height - cxLookupComboBox2.Height;
          Height := Height - Panel3.Height - GroupBox1.Height - cxLookupComboBox2.Height;
        end;

  end;
end;

procedure TfmVagonOwnerAdd.SetInsert(vagon_id : integer);
begin
  Caption := Caption + ' [Новый владелец]';

  Ftype_action := 0;
  Fvagon_id := vagon_id;
end;

procedure TfmVagonOwnerAdd._SetInsertToVagonAdd(Acontract_id, Atype_park_id: integer; Adate_begin, Adate_end: Variant);
begin
  Ftype_action := 100;

  cxDateEdit1.EditValue := iif(Adate_begin = null, Date, Adate_begin);
  cxDateEdit3.EditValue := Adate_end;

  cxLookupComboBox1.EditValue := iif(Acontract_id = -9, null, Acontract_id);
  cxLookupComboBox2.EditValue := iif(AType_park_id = -9, null, AType_park_id);
end;

procedure TfmVagonOwnerAdd.SetUpdate(vagon_owner_id: integer);
var  Q : TADOQuery;
begin
  Caption := Caption + ' [№ Записи = ' + IntToStr(vagon_owner_id) + ']';
  Screen.Cursor := crHourglass;
  Ftype_action := 1;

  Fvagon_owner_id := vagon_owner_id;

  Q := TADOQuery.Create(nil);
  Q.Connection := FCnn;
  Q.SQL.Add('SELECT * FROM view_vagon_owner WHERE vagon_owner_id=' + IntToStr(Fvagon_owner_id));
  Q.Open;

  Fvagon_id                   := Q.FieldByName('vagon_id').AsInteger;
  cxLookupComboBox1.EditValue := Q.FieldByName('contract_id').Value;
  cxDateEdit1.EditValue       := Q.FieldByName('date_begin').Value;
  cxDateEdit3.EditValue       := Q.FieldByName('date_end').Value;
  cxTextEdit14.EditValue      := Q.FieldByName('contract_cod').Value;
  cxLookupComboBox2.EditValue := Q.FieldByName('type_park_id').Value;
  cxMemo1.EditValue           := iif(Q.FieldByName('comment').Value='', null, Q.FieldByName('comment').Value);

  MonitorEventFormOpen('OPEN_FORM', self.Name, FCnn, Fvagon_owner_id);
  Screen.Cursor := crDefault;
end;

procedure TfmVagonOwnerAdd.cxButton1Click(Sender: TObject);
var SP : TADOStoredProc;
begin
  if Ftype_action <> 100 then begin
    Screen.Cursor := crHourglass;

    SP := TADOStoredProc.Create(nil);
    SP.Connection := FCnn;
    SP.CommandTimeout := 300;
    SP.ProcedureName := 'sp_vagon_owner_modify';
    SP.Parameters.Refresh;

    if Application.MessageBox('Вы уверены. Продолжить?' , 'Внимание', MB_ICONQUESTION + MB_OKCANCEL) = ID_OK then begin
      SP.Parameters.ParamByName('@type_action'   ).Value := Ftype_action;
      SP.Parameters.ParamByName('@vagon_id'      ).Value := Fvagon_id;
      SP.Parameters.ParamByName('@str_vagon_id'  ).Value := Fstr_vagon_id;
      SP.Parameters.ParamByName('@date_begin'    ).Value := cxDateEdit1.EditValue;
      SP.Parameters.ParamByName('@date_end'      ).Value := cxDateEdit3.EditValue;
      SP.Parameters.ParamByName('@contract_id'   ).Value := cxLookupComboBox1.EditValue;
      SP.Parameters.ParamByName('@type_park_id'  ).Value := cxLookupComboBox2.EditValue;
      SP.Parameters.ParamByName('@vagon_owner_id').Value := Fvagon_owner_id;
      if (cxMemo1.EditValue <> null) then
        SP.Parameters.ParamByName('@comment'     ).Value := iif(Trim(cxMemo1.EditValue) = '', null, cxMemo1.EditValue);

      try
        SP.ExecProc;
        SP.Free;
      except on E: Exception do
        begin
          Application.MessageBox(PChar(E.Message),'ВНИМАНИЕ!!!' , MB_OK + MB_ICONERROR);
          SP.Free;
          ModalResult := mrNone;
        end;
      end;
    end;

  end else begin
    Fcontract_id    := iif(Varisnull(cxLookupComboBox1.EditValue), -9, cxLookupComboBox1.EditValue);
    Fcontract_cod   := cxTextEdit14.EditValue;
    Fcontract_date  := cxDateEdit8.EditValue;
    Ffirm_name      := cxLookupComboBox1.Text;
    Fdate_begin     := iif(cxDateEdit1.EditValue = null, StrToDate('01' + FormatSettings.DateSeparator + '01' + FormatSettings.DateSeparator+'2010'), cxDateEdit1.EditValue);
    Fdate_end       := cxDateEdit3.EditValue;
    FType_park_id   := iif(Varisnull(cxLookupComboBox2.EditValue), -9, cxLookupComboBox2.EditValue);
    FType_park_name := cxLookupComboBox2.Text;
  end;

  Screen.Cursor := crDefault;
end;

procedure TfmVagonOwnerAdd.cxCheckBox1PropertiesChange(Sender: TObject);
begin
  cxDateEdit1.Enabled := cxCheckBox1.Checked;
end;

procedure TfmVagonOwnerAdd.cxCheckBox4PropertiesChange(Sender: TObject);
begin
  cxMemo1.Enabled := cxCheckBox4.Checked;
end;

procedure TfmVagonOwnerAdd.cxDateEdit1PropertiesChange(Sender: TObject);
var contract_id : integer;
begin
  if cxLookupComboBox1.EditValue <> null then contract_id := cxLookupComboBox1.EditValue;
  Query_Owner.Close;
  Query_Owner.Parameters.ParamByName('date1').Value := cxDateEdit1.EditValue;
  Query_Owner.Open;
  if Query_Owner.Locate('contract_id', contract_id, []) then
    cxLookupComboBox1.EditValue := contract_id
  else
    cxLookupComboBox1.EditValue := Query_Owner.FieldByName('contract_id').Value;
end;

procedure TfmVagonOwnerAdd.cxDateEdit1PropertiesValidate(Sender: TObject; var DisplayValue: Variant; var ErrorText: TCaption; var Error: Boolean);
begin
  if DisplayValue = '' then begin
    ErrorText := 'Дата начала не должна быть пустой!';
    Error := True;
    cxDateEdit1.EditValue := Date;
  end;
end;

procedure TfmVagonOwnerAdd.cxLookupComboBox1PropertiesEditValueChanged(Sender: TObject);
begin
  Query_Owner.Locate('contract_id', cxLookupComboBox1.EditValue, []);
  cxTextEdit14.EditValue := Query_Owner.FieldByName('contract_cod').Value;
  cxDateEdit8.EditValue := Query_Owner.FieldByName('date_begin').Value;
end;

procedure TfmVagonOwnerAdd.cxLookupComboBox2PropertiesEditValueChanged(Sender: TObject);
begin
  if Ftype_action = 0 then begin
    Query_type_park.Locate('inf_obj_id',cxLookupComboBox2.EditingValue,[]);
    if Query_type_park.FieldByName('inf_obj_cod').AsString = '3' then
      cxDateEdit1.EditValue := Date-10
    else
      cxDateEdit1.EditValue := Date;
  end;
end;

procedure TfmVagonOwnerAdd.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action := caFree;
end;

end.
