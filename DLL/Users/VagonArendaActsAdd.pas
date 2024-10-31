unit VagonArendaActsAdd;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms, Default,
  Dialogs, cxGraphics, cxLookAndFeels, cxLookAndFeelPainters, Menus, cxButtons, StdCtrls, Buttons, ExtCtrls,
  cxPropertiesStore, DB, ADODB, dxGDIPlusClasses, dxGDIPlusAPI, cxControls, cxContainer, cxEdit, cxButtonEdit, cxTextEdit, cxMaskEdit, cxDropDownEdit,
  cxCalendar, cxCheckBox, DateUtils, cxMemo, ComCtrls, dxCore, cxDateUtils, dxSkinsCore, dxSkinBlack, dxSkinBlue,
  dxSkinBlueprint, dxSkinCaramel, dxSkinCoffee, dxSkinDarkRoom, dxSkinDarkSide, dxSkinDevExpressDarkStyle,
  dxSkinDevExpressStyle, dxSkinFoggy, dxSkinGlassOceans, dxSkinHighContrast, dxSkiniMaginary, dxSkinLilian,
  dxSkinLiquidSky, dxSkinLondonLiquidSky, dxSkinMcSkin, dxSkinMetropolis, dxSkinMetropolisDark, dxSkinMoneyTwins,
  dxSkinOffice2007Black, dxSkinOffice2007Blue, dxSkinOffice2007Green, dxSkinOffice2007Pink, dxSkinOffice2007Silver,
  dxSkinOffice2010Black, dxSkinOffice2010Blue, dxSkinOffice2010Silver, dxSkinOffice2013DarkGray,
  dxSkinOffice2013LightGray, dxSkinOffice2013White, dxSkinPumpkin, dxSkinSeven, dxSkinSevenClassic, dxSkinSharp,
  dxSkinSharpPlus, dxSkinSilver, dxSkinSpringTime, dxSkinStardust, dxSkinSummer2008, dxSkinTheAsphaltWorld,
  dxSkinsDefaultPainters, dxSkinValentine, dxSkinVS2010, dxSkinWhiteprint, dxSkinXmas2008Blue, cxClasses,
  dxSkinOffice2016Colorful, dxSkinOffice2016Dark, dxSkinVisualStudio2013Blue,
  dxSkinVisualStudio2013Dark, dxSkinVisualStudio2013Light, dxSkinOffice2019Colorful, dxSkinTheBezier;

type
  TfmVagonArendaActsAdd = class(TForm)
    Panel2: TPanel;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    cxPropertiesStore1: TcxPropertiesStore;
    Panel5: TPanel;
    Label3: TLabel;
    Label7: TLabel;
    cxDateEdit3: TcxDateEdit;
    cxTextEdit2: TcxTextEdit;
    cxButtonEdit1: TcxButtonEdit;
    Label1: TLabel;
    cxTextEdit1: TcxTextEdit;
    GroupBox1: TGroupBox;
    cxMemo1: TcxMemo;
    Splitter3: TSplitter;
    Label2: TLabel;
    cxComboBox1: TcxComboBox;
    cxDateEdit1: TcxDateEdit;
    Label4: TLabel;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure cxButtonEdit1PropertiesButtonClick(Sender: TObject;  AButtonIndex: Integer);
    procedure BitBtn1Click(Sender: TObject);
    procedure cxComboBox1PropertiesEditValueChanged(Sender: TObject);
    procedure cxDateEdit3PropertiesEditValueChanged(Sender: TObject);
  private
    Fconn : TADOConnection;
    Ftype_action : integer;
    Facts_id     : integer;
    Fcontract_id : integer;
    Ftype_act    : integer;
    Ftype_arenda : integer;
    procedure SetUpdate(acts_id : integer);
    procedure SetCopy(acts_id : integer);
  public
    constructor Create(Aowner: TApplication; conn: TADOConnection; type_act: integer; type_arenda: integer);
    property _SetUpdate : integer write SetUpdate;
    property _GetActsId : integer read Facts_id;
    property _SetCopy : integer write SetCopy;
  end;

function CreateWndVagonArendaActsAdd(AppHand: THandle; conn: TADOConnection; type_act: integer; type_arenda: integer): variant; export;

var
  fmVagonArendaActsAdd: TfmVagonArendaActsAdd;

implementation
  uses Raznoe, Filter;
{$R *.dfm}
{ TfmVagonArendaActsAdd }

function CreateWndVagonArendaActsAdd(AppHand: THandle; conn: TADOConnection; type_act: integer; type_arenda: integer): variant; export;
begin
  Application.Handle := AppHand;
  try
    fmVagonArendaActsAdd := TfmVagonArendaActsAdd.Create(Application, conn, type_act, type_arenda);
    //-- изменить по мере необходимости возвращаемых параметров
    if  fmVagonArendaActsAdd.ShowModal = mrOk then result := VarArrayOf([-9, '']);
  finally
    fmVagonArendaActsAdd.Free;
  end;
end;

constructor TfmVagonArendaActsAdd.Create(Aowner: TApplication; conn: TADOConnection; type_act: integer; type_arenda: integer);
begin
  Screen.Cursor := crHourglass;

  inherited Create(AOwner);

  Fconn        := conn;
  Ftype_action := 0;
  Facts_id     := -9;
  Ftype_arenda := type_arenda;
//  Ftype_act    := type_act;
  cxComboBox1.ItemIndex := type_act;
  cxDateEdit3.EditValue := date;
  Fcontract_id  := -9;

  MonitorEventFormOpen('OPEN_FORM', self.Name, conn, -9);

  Screen.Cursor := crDefault;
end;

procedure TfmVagonArendaActsAdd.cxButtonEdit1PropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
var Query   : TADOQuery;
begin
  case AButtonIndex of
  0 : begin
        Query := TADOQuery.Create(Self);
        Query.Connection := Fconn;
        Query.SQL.Add('SELECT contract_id, firm_customer_name, firm_self_name, contract_cod, currency_id, note, firm_self');
        Query.SQL.Add(' , type_contract_name = CASE type_contract WHEN 0 THEN ''Клиент'' WHEN 1 THEN ''Агент'' WHEN 2 THEN ''Администрация'' ELSE ''---'' END');
        Query.SQL.Add('FROM view_contract_rights');
        Query.SQL.Add('WHERE date_end >= GETDATE() - 31');
        Query.SQL.Add('ORDER BY firm_customer_name, type_contract, contract_cod');
        Query.Open;
        fmFilter := TfmFilter.Create(0, Query, 'contract_id', 'contract_cod', 'firm_customer_name');
        fmFilter._SetContract4ScoreInvoice := True;
        fmFilter._SelectIndexColumn := 1;
        if fmFilter.ShowModal = mrOk then begin
          cxButtonEdit1.EditValue := fmFilter.GetName;
          Fcontract_id            := fmFilter.GetId;
          cxTextEdit1.EditValue   := fmFilter.GetCod;
        end;
        Query.Free;
      end;
  1 : begin
       cxTextEdit1.EditValue   := null;
       cxButtonEdit1.EditValue := null;
       Fcontract_id            := -9;
      end;
  end;
end;

procedure TfmVagonArendaActsAdd.cxComboBox1PropertiesEditValueChanged(
  Sender: TObject);
begin
  Ftype_act := cxComboBox1.ItemIndex;
  if Ftype_act = 0 then
    Caption := 'Свойства акта ввода в аренду'
  else
    Caption := 'Свойства акта вывода из аренды';
end;

procedure TfmVagonArendaActsAdd.cxDateEdit3PropertiesEditValueChanged(Sender: TObject);
begin
  cxDateEdit1.EditValue := cxDateEdit3.EditingValue;
end;

procedure TfmVagonArendaActsAdd.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Fconn := nil;
end;

procedure TfmVagonArendaActsAdd.SetCopy(acts_id: integer);
var Q : TADOQuery;
begin
  Screen.Cursor := crHourglass;
  Ftype_action := 0;
  Facts_id := -9;
  Q := TADOQuery.Create(nil);
  Q.Connection := Fconn;
  Q.SQL.Add('SELECT * FROM view_vagon_arenda_acts WHERE vagon_arenda_acts_id= '+IntToStr(acts_id));
  Q.Open;
  cxTextEdit2.EditValue    := 'COPY(' +Q.FieldByName('vagon_arenda_acts_cod').Value +')';
  cxDateEdit3.EditValue    := Q.FieldByName('vagon_arenda_acts_date').Value;
  cxDateEdit1.EditValue    := Q.FieldByName('vagon_arenda_date').Value;
  Fcontract_id             := Q.FieldByName('contract_id').Value;
  cxButtonEdit1.Text       := Q.FieldByName('firm_customer_name').Value;
  cxTextEdit1.EditValue    := Q.FieldByName('contract_cod').Value;
  cxMemo1.EditValue        := Q.FieldByName('comment').Value;
  Ftype_act                := Q.FieldByName('vagon_arenda_acts_type').AsInteger;
  Q.Free;
end;

procedure TfmVagonArendaActsAdd.SetUpdate(acts_id: integer);
var Q : TADOQuery;
begin
  Screen.Cursor := crHourglass;
  Ftype_action := 1;
  Facts_id := acts_id;
  Q := TADOQuery.Create(nil);
  Q.Connection := Fconn;
  Q.SQL.Add('SELECT * FROM view_vagon_arenda_acts WHERE vagon_arenda_acts_id= '+IntToStr(acts_id));
  Q.Open;

  Fcontract_id             := Q.FieldByName('contract_id').Value;
  cxTextEdit2.EditValue    := Q.FieldByName('vagon_arenda_acts_cod').Value;
  cxDateEdit3.EditValue    := Q.FieldByName('vagon_arenda_acts_date').Value;
  cxDateEdit1.EditValue    := Q.FieldByName('vagon_arenda_date').Value;
  cxButtonEdit1.Text       := Q.FieldByName('firm_customer_name').Value;
  cxTextEdit1.EditValue    := Q.FieldByName('contract_cod').Value;
  cxMemo1.EditValue        := Q.FieldByName('comment').Value;
  Ftype_act                := Q.FieldByName('vagon_arenda_acts_type').AsInteger;
  Q.Free;
end;

procedure TfmVagonArendaActsAdd.BitBtn1Click(Sender: TObject);
var  SP  : TADOStoredProc;
begin
  if Fcontract_id = -9 then begin
    Application.MessageBox('Укажите контрагента!', 'Ошибка', MB_OK + MB_ICONERROR);
    Exit;
  end;

  Screen.Cursor := crHourglass;

  SP := TADOStoredProc.Create(nil);
  SP.Connection := Fconn;
  SP.ProcedureName := 'sp_vagon_arenda_acts_modify';
  SP.Parameters.Refresh;
  SP.Parameters.ParamByName('@type_action'           ).Value := Ftype_action;
  SP.Parameters.ParamByName('@vagon_arenda_acts_id'  ).Value := Facts_id;
  SP.Parameters.ParamByName('@vagon_arenda_acts_type').Value := Ftype_act;
  SP.Parameters.ParamByName('@vagon_arenda_acts_cod' ).Value := cxTextEdit2.EditValue;
  SP.Parameters.ParamByName('@vagon_arenda_acts_date').Value := cxDateEdit3.EditValue;
  SP.Parameters.ParamByName('@contract_id'           ).Value := Fcontract_id;
  SP.Parameters.ParamByName('@comment'               ).Value := cxMemo1.EditValue;
  SP.Parameters.ParamByName('@vagon_arenda_date'     ).Value := cxDateEdit1.EditValue;
  SP.Parameters.ParamByName('@type_arenda'           ).Value := Ftype_arenda;

  try
    SP.ExecProc;
    Facts_id := SP.Parameters.ParamByName('@vagon_arenda_acts_id').Value;
  except
  end;

  if Facts_id = -9 then begin
    Application.MessageBox('Ошибка при редактировании акта!', 'Ошибка', MB_OK);
    ModalResult := mrNone;
  end;
  SP.Free;
  Screen.Cursor := crDefault;
end;

initialization
  dxInitialize;
finalization
  dxFinalize;


end.
