unit FactRepairPriceAdd;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Default,
  Controls, Forms, Dialogs, cxGraphics, cxControls, cxLookAndFeels,
  cxLookAndFeelPainters, cxContainer, cxEdit, ComCtrls, dxCore, cxDateUtils,
  cxDropDownEdit, cxLookupEdit, cxDBLookupEdit, cxDBLookupComboBox, cxCheckBox,
  cxLabel, cxTextEdit, cxMaskEdit, cxCalendar, cxMemo, cxPropertiesStore,
  cxClasses, dxBar, Data.DB, Data.Win.ADODB, Vcl.StdCtrls, ExtCtrls,  dxSkinsCore, dxSkinBlack, dxSkinBlue,
  dxSkinBlueprint, dxSkinCaramel, dxSkinCoffee, dxSkinDarkRoom, dxSkinDarkSide, dxSkinDevExpressDarkStyle, dxSkinDevExpressStyle,
  dxSkinFoggy, dxSkinGlassOceans, dxSkinHighContrast, dxSkiniMaginary, dxSkinLilian, dxSkinLiquidSky, dxSkinLondonLiquidSky,
  dxSkinMcSkin, dxSkinMetropolis, dxSkinMetropolisDark, dxSkinMoneyTwins, dxSkinOffice2007Black, dxSkinOffice2007Blue,
  dxSkinOffice2007Green, dxSkinOffice2007Pink, dxSkinOffice2007Silver, dxSkinOffice2010Black, dxSkinOffice2010Blue,
  dxSkinOffice2010Silver, dxSkinOffice2013DarkGray, dxSkinOffice2013LightGray, dxSkinOffice2013White, dxSkinOffice2016Colorful,
  dxSkinOffice2016Dark, dxSkinPumpkin, dxSkinSeven, dxSkinSevenClassic, dxSkinSharp, dxSkinSharpPlus, dxSkinSilver, dxSkinSpringTime,
  dxSkinStardust, dxSkinSummer2008, dxSkinTheAsphaltWorld, dxSkinTheBezier, dxSkinsDefaultPainters, dxSkinValentine,
  dxSkinVisualStudio2013Blue, dxSkinVisualStudio2013Dark, dxSkinVisualStudio2013Light, dxSkinVS2010, dxSkinWhiteprint,
  dxSkinXmas2008Blue, cxCurrencyEdit, Vcl.Menus, cxButtons;

type
  TfmFactRepairPriceAdd = class(TForm)
    Panel2: TPanel;
    Query_NDS: TADOQuery;
    Query_Detail: TADOQuery;
    Query_Currency: TADOQuery;
    Query_Ed_Izm: TADOQuery;
    dxBarManager1: TdxBarManager;
    cxPropertiesStore1: TcxPropertiesStore;
    Panel1: TPanel;
    cxDateEdit1: TcxDateEdit;
    cxDateEdit2: TcxDateEdit;
    cxLabel2: TcxLabel;
    cxLabel5: TcxLabel;
    cxCheckBox1: TcxCheckBox;
    cxLabel1: TcxLabel;
    cxLookupComboBox4: TcxLookupComboBox;
    cxLookupComboBox3: TcxLookupComboBox;
    cxLookupComboBox2: TcxLookupComboBox;
    cxLookupComboBox1: TcxLookupComboBox;
    cxLabel10: TcxLabel;
    DS_Detail: TDataSource;
    DS_NDS: TDataSource;
    DS_Ed_Izm: TDataSource;
    DS_Currency: TDataSource;
    cxLabel12: TcxLabel;
    Query_Detail_Status: TADOQuery;
    DT_Detail_Status: TDataSource;
    cxLookupComboBox5: TcxLookupComboBox;
    GroupBox1: TGroupBox;
    cxMemo1: TcxMemo;
    cxCurrencyEdit4: TcxCurrencyEdit;
    cxLabel4: TcxLabel;
    cxButton1: TcxButton;
    cxButton2: TcxButton;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure cxButton1Click(Sender: TObject);
  private
    Ftype_action          : integer;
    Fconnect              : TADOConnection;
    Ffact_repair_price_id : integer;

    procedure SetUpdate(fact_repair_price_id : integer);
  public
    constructor Create(AOwner : TApplication; type_action : integer; Connection : TADOConnection);
  published
    property _SetUpdate : integer write SetUpdate;
    property _GetFactRepairPriceId : integer read Ffact_repair_price_id;
  end;

var
  fmFactRepairPriceAdd : TfmFactRepairPriceAdd;

implementation
  uses Raznoe, Other, DateUtils;

{$R *.dfm}

constructor TfmFactRepairPriceAdd.Create(AOwner : TApplication; type_action : integer; Connection : TADOConnection);
begin
  // type_action: 0 - INSERT,  1 - UPDATE
  Screen.Cursor := crHourglass;
  inherited Create(AOwner);

  Ftype_action          := type_action;
  Fconnect              := Connection;
  Ffact_repair_price_id := -9;

  Query_Detail.Connection := Fconnect;
  Query_Detail.Open;

  Query_Detail_Status.Connection := Fconnect;
  Query_Detail_Status.Open;

  Query_Currency.Connection := Fconnect;
  Query_Currency.Open;

  Query_NDS.Connection := Fconnect;
  Query_NDS.Open;

  Query_Ed_Izm.Connection := Fconnect;
  Query_Ed_Izm.Open;

  cxLookupComboBox4.ItemIndex := -1;
  cxLookupComboBox5.ItemIndex := -1;
  cxLookupComboBox1.ItemIndex :=  1;
  cxLookupComboBox2.ItemIndex := -1;
  cxLookupComboBox3.ItemIndex := -1;

  cxDateEdit1.EditValue := Date;

  SetUsersModuleRights(self, Fconnect);

  MonitorEventFormOpen('OPEN_FORM', self.Name, Fconnect, -9);
  Screen.Cursor := crDefault;
end;

procedure TfmFactRepairPriceAdd.cxButton1Click(Sender: TObject);
var SP_fact_repair_price_modify : TADOStoredProc;
                        err_str : string;
begin
  err_str := '';

  //проверка введенных параметров
  if cxLookupComboBox4.EditValue = Null then err_str := err_str + 'Необходимо выбрать значение "Детали".' + #9#13;
  if cxLookupComboBox5.EditValue = Null then err_str := err_str + 'Необходимо выбрать значение "Статуса детали".' + #9#13;
  if cxLookupComboBox1.EditValue = Null then err_str := err_str + 'Необходимо выбрать значение "Валюты".' + #9#13;
  if cxLookupComboBox2.EditValue = Null then err_str := err_str + 'Необходимо выбрать значение "НДС".' + #9#13;
  if cxLookupComboBox3.EditValue = Null then err_str := err_str + 'Необходимо выбрать значение "Еденицы измерения".' + #9#13;
  if (cxCurrencyEdit4.EditValue <= 0) OR (cxCurrencyEdit4.Text = '') then err_str := err_str + 'Необходимо ввести  значение "Цены".' + #9#13;
  if cxDateEdit1.EditValue    = Null then err_str := err_str + 'Необходимо выбрать значение "Дату начала действмия".' + #9#13;
  if (cxDateEdit1.EditValue <> Null) AND (cxDateEdit2.EditValue <> Null) then
    if cxDateEdit1.EditValue > cxDateEdit2.EditValue then err_str := err_str + '"Дата начала действия" не может быть больше "Даты окончания действия".' + #9#13;

  if Length(err_str) > 0 then begin
    Application.MessageBox(PChar(err_str), 'Ошибка ...', MB_ICONERROR + MB_OK);
    ModalResult := mrNone;
    Exit;
  end else begin
    Screen.Cursor := crHourglass;

    SP_fact_repair_price_modify := TADOStoredProc.Create(nil);
    SP_fact_repair_price_modify.Connection := Fconnect;
    SP_fact_repair_price_modify.ProcedureName := 'sp_fact_repair_price_modify';
    SP_fact_repair_price_modify.Parameters.Refresh;

    SP_fact_repair_price_modify.Parameters.ParamByName('@type_action'         ).Value := Ftype_action;
    SP_fact_repair_price_modify.Parameters.ParamByName('@fact_repair_price_id').Value := Ffact_repair_price_id;
    SP_fact_repair_price_modify.Parameters.ParamByName('@detail_id'           ).Value := cxLookupComboBox4.EditValue;
    SP_fact_repair_price_modify.Parameters.ParamByName('@detail_status_id'    ).Value := cxLookupComboBox5.EditValue;
    SP_fact_repair_price_modify.Parameters.ParamByName('@price'               ).Value := cxCurrencyEdit4.Value;
    SP_fact_repair_price_modify.Parameters.ParamByName('@currency_id'         ).Value := cxLookupComboBox1.EditValue;
    SP_fact_repair_price_modify.Parameters.ParamByName('@nds_id'              ).Value := cxLookupComboBox2.EditValue;
    SP_fact_repair_price_modify.Parameters.ParamByName('@set_include_nds'     ).Value := cxCheckBox1.EditValue;
    SP_fact_repair_price_modify.Parameters.ParamByName('@ed_izm_id'           ).Value := cxLookupComboBox3.EditValue;
    SP_fact_repair_price_modify.Parameters.ParamByName('@date_begin'          ).Value := cxDateEdit1.EditValue;
    SP_fact_repair_price_modify.Parameters.ParamByName('@date_end'            ).Value := cxDateEdit2.EditValue;
    SP_fact_repair_price_modify.Parameters.ParamByName('@comment'             ).Value := cxMemo1.EditValue;

    SP_fact_repair_price_modify.ExecProc;

    Ffact_repair_price_id := SP_fact_repair_price_modify.Parameters.ParamByName('@fact_repair_price_id').Value;
  end;
  SP_fact_repair_price_modify.Free;

  Screen.Cursor := crDefault;
end;

procedure TfmFactRepairPriceAdd.SetUpdate(fact_repair_price_id : integer);
var Query_Fact_repair_price : TADOQuery;
begin
  Screen.Cursor := crHourglass;

  Ffact_repair_price_id := fact_repair_price_id;
  Caption := Caption + ' [' + IntToStr(fact_repair_price_id) + ']';

  Query_Fact_repair_price := TADOQuery.Create(nil);
  Query_Fact_repair_price.Connection := Fconnect;
  Query_Fact_repair_price.SQL.Text := 'SELECT * FROM view_fact_repair_price WHERE fact_repair_price_id = ' + IntToStr(Ffact_repair_price_id);
  Query_Fact_repair_price.Open;

  cxLookupComboBox4.EditValue := Query_Fact_repair_price.FieldByName('detail_id').Value;
  cxLookupComboBox5.EditValue := Query_Fact_repair_price.FieldByName('detail_status_id').Value;
  cxLookupComboBox1.EditValue := Query_Fact_repair_price.FieldByName('currency_id').Value;
  cxLookupComboBox2.EditValue := Query_Fact_repair_price.FieldByName('nds_id').Value;
  cxLookupComboBox3.EditValue := Query_Fact_repair_price.FieldByName('ed_izm_id').Value;

  cxDateEdit1.EditValue := Query_Fact_repair_price.FieldByName('date_begin').Value;
  cxDateEdit2.EditValue := Query_Fact_repair_price.FieldByName('date_end').Value;

  cxCurrencyEdit4.Value := Query_Fact_repair_price.FieldByName('price').Value;
  cxCheckBox1.EditValue := Query_Fact_repair_price.FieldByName('set_include_nds').Value;
  cxMemo1.EditValue     := Query_Fact_repair_price.FieldByName('comment').Value;
  Query_Fact_repair_price.Free;

  MonitorEventFormOpen('OPEN_FORM', self.Name, Fconnect, Ffact_repair_price_id);
  Screen.Cursor := crDefault;
end;

procedure TfmFactRepairPriceAdd.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action := caFree;
end;

end.
