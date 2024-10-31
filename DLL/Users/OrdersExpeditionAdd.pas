unit OrdersExpeditionAdd;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Menus, cxLookAndFeelPainters, StdCtrls, cxButtons, ExtCtrls, DB, ADODB, cxTextEdit, cxMaskEdit, cxDropDownEdit,
  cxCalendar, cxControls, cxContainer, cxEdit, cxLabel, cxMemo, cxButtonEdit, cxCurrencyEdit, cxGraphics, cxLookupEdit,
  cxDBLookupEdit, cxDBLookupComboBox, DateUtils, cxPropertiesStore, StrUtils, cxLookAndFeels, dxSkinsCore, dxSkinBlack, dxSkinBlue,
  dxSkinBlueprint, dxSkinCaramel, dxSkinCoffee, dxSkinDarkRoom, dxSkinDarkSide, dxSkinDevExpressDarkStyle, dxSkinDevExpressStyle,
  dxSkinFoggy, dxSkinGlassOceans, dxSkinHighContrast, dxSkiniMaginary, dxSkinLilian, dxSkinLiquidSky, dxSkinLondonLiquidSky, dxSkinMcSkin,
  dxSkinMetropolis, dxSkinMetropolisDark, dxSkinMoneyTwins, dxSkinOffice2007Black, dxSkinOffice2007Blue, dxSkinOffice2007Green,
  dxSkinOffice2007Pink, dxSkinOffice2007Silver, dxSkinOffice2010Black, dxSkinOffice2010Blue, dxSkinOffice2010Silver, dxSkinOffice2013DarkGray,
  dxSkinOffice2013LightGray, dxSkinOffice2013White, dxSkinOffice2016Colorful, dxSkinOffice2016Dark, dxSkinPumpkin, dxSkinSeven,
  dxSkinSevenClassic, dxSkinSharp, dxSkinSharpPlus, dxSkinSilver, dxSkinSpringTime, dxSkinStardust, dxSkinSummer2008, dxSkinTheAsphaltWorld,
  dxSkinsDefaultPainters, dxSkinValentine, dxSkinVisualStudio2013Blue, dxSkinVisualStudio2013Dark, dxSkinVisualStudio2013Light, dxSkinVS2010,
  dxSkinWhiteprint, dxSkinXmas2008Blue, Vcl.ComCtrls, dxCore, cxDateUtils, cxClasses, dxSkinTheBezier;

type
  TfmOrdersExpeditionAdd = class(TForm)
    Panel1: TPanel;
    cxButton1: TcxButton;
    cxButton2: TcxButton;
    Panel2: TPanel;
    cxLabel1: TcxLabel;
    cxDateEdit1: TcxDateEdit;
    cxLabel2: TcxLabel;
    cxTextEdit1: TcxTextEdit;
    cxLabel3: TcxLabel;
    cxMemo1: TcxMemo;
    cxLabel4: TcxLabel;
    cxButtonEdit1: TcxButtonEdit;
    cxLabel5: TcxLabel;
    cxMemo2: TcxMemo;
    cxLabel6: TcxLabel;
    cxButtonEdit2: TcxButtonEdit;
    Panel3: TPanel;
    cxLabel7: TcxLabel;
    cxMemo3: TcxMemo;
    cxLabel8: TcxLabel;
    cxLabel9: TcxLabel;
    cxMemo4: TcxMemo;
    cxLabel10: TcxLabel;
    cxLabel11: TcxLabel;
    cxMemo5: TcxMemo;
    cxLabel12: TcxLabel;
    cxMemo6: TcxMemo;
    cxMemo7: TcxMemo;
    cxLabel13: TcxLabel;
    cxMemo8: TcxMemo;
    cxLabel14: TcxLabel;
    Panel4: TPanel;
    cxLabel15: TcxLabel;
    cxMemo9: TcxMemo;
    cxLabel16: TcxLabel;
    cxMemo10: TcxMemo;
    cxLabel17: TcxLabel;
    cxMemo11: TcxMemo;
    cxLabel18: TcxLabel;
    cxLabel19: TcxLabel;
    cxCurrencyEdit4: TcxCurrencyEdit;
    cxLabel20: TcxLabel;
    cxLookupComboBox1: TcxLookupComboBox;
    Query_Currency: TADOQuery;
    DS_Currency: TDataSource;
    cxLabel21: TcxLabel;
    cxMemo12: TcxMemo;
    Panel5: TPanel;
    cxLabel22: TcxLabel;
    cxMemo13: TcxMemo;
    cxLabel23: TcxLabel;
    cxMemo14: TcxMemo;
    cxLabel24: TcxLabel;
    cxMemo15: TcxMemo;
    cxPropertiesStore1: TcxPropertiesStore;
    cxLabel25: TcxLabel;
    cxComboBox1: TcxComboBox;
    cxComboBox2: TcxComboBox;
    cxCurrencyEdit1: TcxTextEdit;
    cxCurrencyEdit3: TcxTextEdit;
    cxButtonEdit3: TcxButtonEdit;
    cxButtonEdit4: TcxButtonEdit;
    cxMemo16: TcxMemo;
    cxMemo17: TcxMemo;
    procedure cxButtonEdit3PropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
    procedure cxComboBox2PropertiesEditValueChanged(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure cxButton1Click(Sender: TObject);
    procedure cxButtonEdit1PropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
  private
    FConnection             : TADOConnection;
    Ftype_action            : integer;
    Forders_expedition_id   : integer;
    Forders_expedition_num  : integer;
    Fcontract_id            : integer;
    Fcontract_cod           : string;
    Fold_date               : TDateTime;
    Ftype_orders_expedition : integer;

    procedure UpdateOrdersExpedition(orders_expedition_id : integer);
    procedure FillFirm(cxMemo: TcxMemo; firm_id: integer);

    procedure ChangeCod;
  public
    constructor Create(AOwner: TApplication; Atype_action: integer; AConnection: TADOConnection; Atype_orders_expedition: integer);
  published
    property _GetOrdersExpeditionID  : integer read Forders_expedition_id;
    property _UpdateOrdersExpedition : integer write UpdateOrdersExpedition;
  end;

var
  fmOrdersExpeditionAdd: TfmOrdersExpeditionAdd;

implementation
  uses Raznoe, Filter;

{$R *.dfm}

constructor TfmOrdersExpeditionAdd.Create(AOwner: TApplication; Atype_action: integer; AConnection: TADOConnection; Atype_orders_expedition: integer);
var i : integer;
begin
  Screen.Cursor := crHourGlass;
  inherited Create(AOwner);
  Ftype_action := Atype_action; // 0 = Ins, 1 = Upd

  Caption := 'Добавить поручение';

  Ftype_orders_expedition := Atype_orders_expedition;
  if Ftype_orders_expedition = 0 then self.Caption := self.Caption + ' (Клиент)'
  else self.Caption := self.Caption + ' (Подрядчик)';

  FConnection := AConnection;
  // DS для комбо
  Query_Currency.Connection := FConnection;
  Query_Currency.Open;
  cxLookupComboBox1.EditValue := 3; // RUB

  // Заполняем cxComboBox2
  for i := 2001 to YearOf(Date) + 1 do
    cxComboBox2.Properties.Items.Add(IntToStr(i));

  // Заполняем данные по умолчанию (для Ins)
  Forders_expedition_id  := -9;
  Fcontract_id           := -9;
  Fcontract_cod          := '';
  Forders_expedition_num := -9;

  cxDateEdit1.Date      := Date;
  Fold_date             := Date;
  cxComboBox1.ItemIndex := MonthOf(Date) - 1;
  cxComboBox2.ItemIndex := YearOf(Date) - 2001;
  cxMemo6.Text          := 'Ж.д.';

  Screen.Cursor := crDefault;
end;

procedure TfmOrdersExpeditionAdd.UpdateOrdersExpedition(orders_expedition_id: Integer);
var
  Q : TADOQuery;
begin
  // Загрузка данных
  Screen.Cursor := crHourGlass;

  if Ftype_action <> 0 then Caption := 'Измениь поручение'
  else Caption := 'Копировать поручение';

  if Ftype_orders_expedition = 0 then self.Caption := self.Caption + ' (Клиент)'
  else self.Caption := self.Caption + ' (Подрядчик)';

  Forders_expedition_id := orders_expedition_id;

  Q := TADOQuery.Create(nil);
  Q.Connection := FConnection;
  Q.SQL.Add('SELECT * FROM view_orders_expedition_rights');
  Q.SQL.Add('WHERE orders_expedition_id = ' + IntToStr(Forders_expedition_id));
  Q.Open;

  // Заполняем переменные
  if Ftype_action <> 0 then
    Forders_expedition_num := Q.FieldByName('orders_expedition_num').AsInteger; // только при редактировании
  Fcontract_id  := Q.FieldByName('contract_id').AsInteger;
  Fcontract_cod := Q.FieldByName('contract_cod').AsString;
  Fold_date     := Q.FieldByName('date_period').AsDateTime;
  // Поля 1-6
  cxDateEdit1.Date      := Q.FieldByName('orders_expedition_date').AsDateTime;
  cxComboBox1.ItemIndex := MonthOf(Q.FieldByName('date_period').AsDateTime) - 1;
  cxComboBox2.ItemIndex := YearOf(Q.FieldByName('date_period').AsDateTime) - 2001;
  if Ftype_action <> 0 then
    cxTextEdit1.Text   := Q.FieldByName('orders_expedition_cod').AsString; // только при редактировании
  cxMemo1.EditValue  := Q.FieldByName('firm_sender').Value;
  cxMemo2.EditValue  := Q.FieldByName('firm_reciever').Value;
  if Ftype_orders_expedition = 0 then begin
    FillFirm(cxMemo16, Q.FieldByName('firm_customer_id').AsInteger);
    FillFirm(cxMemo17, Q.FieldByName('firm_self_id').AsInteger);
//    cxButtonEdit1.Text := Q.FieldByName('firm_customer_name_full').AsString;
//    cxButtonEdit2.Text := Q.FieldByName('firm_self_name_full').AsString;
  end else begin
    FillFirm(cxMemo17, Q.FieldByName('firm_customer_id').AsInteger);
    FillFirm(cxMemo16, Q.FieldByName('firm_self_id').AsInteger);
//    cxButtonEdit2.Text := Q.FieldByName('firm_customer_name_full').AsString;
//    cxButtonEdit1.Text := Q.FieldByName('firm_self_name_full').AsString;
  end;
  // Поля 7-12
  cxMemo3.EditValue := Q.FieldByName('notification_reciver').Value;
  cxMemo4.EditValue := Q.FieldByName('state_kargo').Value;
  cxMemo5.EditValue := Q.FieldByName('kargo_ready').Value;
  cxMemo6.EditValue := Q.FieldByName('vid_transport').Value;
  cxMemo7.EditValue := Q.FieldByName('node_end').Value;
  cxMemo8.EditValue := Q.FieldByName('insurance').Value;
  // Поля 13-19
  cxMemo9.EditValue  := Q.FieldByName('kargo_ETSNG').Value;
  cxMemo10.EditValue := Q.FieldByName('marks').Value;
  cxMemo11.EditValue := Q.FieldByName('count_position').Value;
  cxCurrencyEdit1.EditValue := Q.FieldByName('weight').Value;
  cxCurrencyEdit3.EditValue := Q.FieldByName('volume').Value;
  cxCurrencyEdit4.EditValue := Q.FieldByName('cost').Value;
  if not Q.FieldByName('cost_currency_id').IsNull then
    cxLookupComboBox1.EditValue := Q.FieldByName('cost_currency_id').AsInteger;
  cxMemo12.EditValue := Q.FieldByName('size_paking').Value;
  // Поля 20-22
  cxMemo13.EditValue := Q.FieldByName('documents_need').Value;
  cxMemo14.EditValue := Q.FieldByName('special_remarks').Value;
  cxMemo15.EditValue := Q.FieldByName('sing_client').Value;

  Q.Free;

  if Ftype_action = 0 then ChangeCod; // При копировании
  

  Screen.Cursor := crDefault;
end;

procedure TfmOrdersExpeditionAdd.FillFirm(cxMemo: TcxMemo; firm_id: integer);
var
  Q : TADOQuery;
begin
  if firm_id = -9 then begin
    cxMemo.Text := '';
  end else begin
    Q := TADOQuery.Create(nil);
    Q.Connection := FConnection;
    Q.SQL.Add('SELECT * FROM view_firm WHERE firm_id = ' + IntToStr(firm_id));
    Q.Open;

    if not Q.FieldByName('firm_name_full').IsNull then
      cxMemo.Text := Q.FieldByName('firm_name_full').AsString
    else
      cxMemo.Text := Q.FieldByName('firm_name_short').AsString;

    Q.Close;
    Q.SQL.Clear;
    Q.SQL.Add('SELECT TOP 1 firm_contact_name');
    Q.SQL.Add('FROM view_firm_contact');
    Q.SQL.Add('WHERE firm_id = ' + IntToStr(firm_id) + '');
    Q.SQL.Add('AND type_contact_cod = ''11''');
    Q.SQL.Add('AND ' + DateToSQL(cxDateEdit1.Date) + ' BETWEEN date_begin AND ISNULL(date_end, ' + DateToSQL(cxDateEdit1.Date) + ')');
    Q.Open;

    if not Q.Eof then
      cxMemo.Text := cxMemo.Text + #13#10 + Q.FieldByName('firm_contact_name').AsString;

    Q.Free;
  end;
end;

procedure TfmOrdersExpeditionAdd.ChangeCod;
var
  str_cod : string;
begin
  // Формируем код при изменении ключевых значение
  str_cod := '';
  str_cod := Fcontract_cod + '[';
  if (Forders_expedition_num = -9) or ( YearOf(Fold_date) <> cxComboBox2.ItemIndex + 2001 ) then
    str_cod := str_cod + '???-'
  else
    str_cod := str_cod + IntToStr(Forders_expedition_num) + '-';
  str_cod := str_cod + FormatDateTime('mm.yy', StartOfAMonth(cxComboBox2.ItemIndex + 2001, cxComboBox1.ItemIndex + 1)) + ']';
  // Если контракт не выбран, то кода нет
  if Fcontract_id = -9 then str_cod := '';
  // Запись
  cxTextEdit1.Text := str_cod;
end;

procedure TfmOrdersExpeditionAdd.cxButtonEdit1PropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
var
  Q          : TADOQuery;
  filter_str : string;
begin
  // Выбор контракта
  case AButtonIndex of
    0: begin
        if InputQuery('Поиск', 'Шаблон поиска', filter_str) then begin
          filter_str := '''%' + ReplaceStr(filter_str, '''', '''''') + '%''';

          Q := TADOQuery.Create(nil);
          Q.Connection := FConnection;
          if Ftype_orders_expedition = 0 then begin
            if TComponent(Sender).Name = 'cxButtonEdit1' then
              filter_str := 'firm_customer_name LIKE ' + filter_str
            else
              filter_str := 'firm_self_name LIKE ' + filter_str;

            Q.SQL.Add('SELECT contract_id, contract_cod, date_begin, firm_customer_name, firm_self_name, firm_customer, firm_self,');
            Q.SQL.Add('ISNULL(firm_self_name_full, firm_self_name_short) as firm_self_name_full,');
            Q.SQL.Add('ISNULL(firm_customer_name_full, firm_customer_name_short) as firm_customer_name_full');
            Q.SQL.Add('FROM view_contract_rights');
            Q.SQL.Add('WHERE (date_begin <= ' + DateToSQL(EndOfAMonth(cxComboBox2.ItemIndex + 2001, cxComboBox1.ItemIndex + 1)) + ')');
            Q.SQL.Add('AND (date_end >= ' + DateToSQL(StartOfAMonth(cxComboBox2.ItemIndex + 2001, cxComboBox1.ItemIndex + 1)) + ')');
            Q.SQL.Add('AND (type_contract = 0)');
            Q.SQL.Add('AND (' + filter_str + ')');
          end else begin
            if TComponent(Sender).Name = 'cxButtonEdit1' then
              filter_str := 'firm_self_name LIKE ' + filter_str
            else
              filter_str := 'firm_customer_name LIKE ' + filter_str;

            Q.SQL.Add('SELECT contract_id, contract_cod, date_begin, firm_customer_name as firm_self_name, firm_self_name as firm_customer_name, firm_customer as firm_self, firm_self as firm_customer,');
            Q.SQL.Add('ISNULL(firm_customer_name_full, firm_customer_name_short) as firm_self_name_full,');
            Q.SQL.Add('ISNULL(firm_self_name_full, firm_self_name_short) as firm_customer_name_full');
            Q.SQL.Add('FROM view_contract_rights');
            Q.SQL.Add('WHERE (date_begin <= ' + DateToSQL(EndOfAMonth(cxComboBox2.ItemIndex + 2001, cxComboBox1.ItemIndex + 1)) + ')');
            Q.SQL.Add('AND (date_end >= ' + DateToSQL(StartOfAMonth(cxComboBox2.ItemIndex + 2001, cxComboBox1.ItemIndex + 1)) + ')');
            Q.SQL.Add('AND (type_contract = 1)');
            Q.SQL.Add('AND (' + filter_str + ')');
          end;
          Q.Open;

          fmFilter := TfmFilter.Create(0, Q, 'contract_id', 'contract_cod', 'firm_customer_name');
          fmFilter._SetContractClientAndAgent := True;
          if fmFilter.ShowModal = mrOk then begin
            if Q.Locate('contract_id', fmFilter.GetId, []) then begin
              Fcontract_id       := Q.FieldByName('contract_id').AsInteger;
              Fcontract_cod      := Q.FieldByName('contract_cod').AsString;
              FillFirm(cxMemo16, Q.FieldByName('firm_customer').AsInteger);
              FillFirm(cxMemo17, Q.FieldByName('firm_self').AsInteger);
//              cxButtonEdit1.Text := Q.FieldByName('firm_customer_name_full').AsString;
//              cxButtonEdit2.Text := Q.FieldByName('firm_self_name_full').AsString;
              cxMemo13.Text := 'в соответствии с Договором ' + Fcontract_cod + ' от ' + FormatDateTime('dd.mm.yyyy', Q.FieldByName('date_begin').AsDateTime) + 'г.';
              ChangeCod;
            end;
          end;
          Q.Free;
        end;
       end;
    1: begin
        Fcontract_id       := -9;
        Fcontract_cod      := '';
        FillFirm(cxMemo16, -9);
        FillFirm(cxMemo17, -9);
//        cxButtonEdit1.Text := '';
//        cxButtonEdit2.Text := '';
        cxMemo13.Text := '';
        ChangeCod;
       end;
  end;
end;

procedure TfmOrdersExpeditionAdd.cxButtonEdit3PropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
//var
//  Q                  : TADOQuery;
//  field_name         : string;
//  res                : string;
begin
  // Заявки удалены - список Грузоотправителей/Шрузополучателей автоматически не загружается
//  Screen.Cursor := crHourGlass;
//
//  if (TControl(Sender).Tag = 0) then
//    field_name := 'firm_sender_name_short'
//  else
//    field_name := 'firm_reciever_name_short';
//
//  Q := TADOQuery.Create(nil);
//  Q.Connection := FConnection;
//  if (Ftype_orders_expedition = 0) then begin
//    Q.SQL.Add('SELECT DISTINCT ' + field_name);
//    Q.SQL.Add('FROM (SELECT bargain_id FROM bargain');
//    Q.SQL.Add('WHERE YEAR(date_period) = ' + IntToStr(cxComboBox2.ItemIndex + 2001));
//    Q.SQL.Add('AND MONTH(date_period) = ' + IntToStr(cxComboBox1.ItemIndex + 1));
//    Q.SQL.Add('AND contract_id = ' + IntToStr(Fcontract_id));
//    Q.SQL.Add(') prep_bargain');
//    Q.SQL.Add('JOIN view_orders ON prep_bargain.bargain_id = view_orders.bargain_id');
//    Q.SQL.Add('ORDER BY ' + field_name);
//  end else begin
//    Q.SQL.Add('SELECT DISTINCT ' + field_name);
//    Q.SQL.Add('FROM view_orders');
//    Q.SQL.Add('WHERE YEAR(date_period) = ' + IntToStr(cxComboBox2.ItemIndex + 2001));
//    Q.SQL.Add('AND MONTH(date_period) = ' + IntToStr(cxComboBox1.ItemIndex + 1));
//    Q.SQL.Add('AND contract_agent_id = ' + IntToStr(Fcontract_id));
//    Q.SQL.Add('ORDER BY ' + field_name);
//  end;
//  Q.Open;
//
//  res := '';
//  while not Q.Eof do begin
//    if (Q.FieldByName(field_name).AsString <> '') then
//      if (res <> '') then
//        res := res + ', ' + Q.FieldByName(field_name).AsString
//      else
//        res := Q.FieldByName(field_name).AsString;
//    Q.Next;
//  end;
//  Q.Free;
//
//  if (TControl(Sender).Tag = 0) then
//    cxMemo1.Text := res
//  else
//    cxMemo2.Text := res;
//
//  Screen.Cursor := crDefault;
end;

procedure TfmOrdersExpeditionAdd.cxButton1Click(Sender: TObject);
var
  SP_procedure: TADOStoredProc;
begin
  // Сначала проверяем, есть ли контракт
  if Fcontract_id = -9 then begin
    Application.MessageBox('Не выбран клиент', 'Внимание', MB_OK or MB_ICONERROR);
    ModalResult := mrNone;
    Exit;
  end;

  Screen.Cursor := crHourGlass;

  SP_procedure := TADOStoredProc.Create(nil);
  SP_procedure.Connection := FConnection;
  SP_procedure.ProcedureName := 'sp_orders_expedition_modify';
  SP_procedure.Parameters.Refresh;

  SP_procedure.Parameters.ParamByName('@type_action').Value            := Ftype_action;
  SP_procedure.Parameters.ParamByName('@orders_expedition_id').Value   := Forders_expedition_id;
  SP_procedure.Parameters.ParamByName('@orders_expedition_date').Value := cxDateEdit1.Date;
  SP_procedure.Parameters.ParamByName('@date_period').Value            := EncodeDate(cxComboBox2.ItemIndex + 2001, cxComboBox1.ItemIndex + 1, 1);
  SP_procedure.Parameters.ParamByName('@contract_id').Value            := Fcontract_id;
  SP_procedure.Parameters.ParamByName('@firm_sender').Value            := cxMemo1.EditValue;
  SP_procedure.Parameters.ParamByName('@firm_reciever').Value          := cxMemo2.EditValue;
  SP_procedure.Parameters.ParamByName('@notification_reciver').Value   := cxMemo3.EditValue;
  SP_procedure.Parameters.ParamByName('@state_kargo').Value            := cxMemo4.EditValue;
  SP_procedure.Parameters.ParamByName('@kargo_ready').Value            := cxMemo5.EditValue;
  SP_procedure.Parameters.ParamByName('@vid_transport').Value          := cxMemo6.EditValue;
  SP_procedure.Parameters.ParamByName('@node_end').Value               := cxMemo7.EditValue;
  SP_procedure.Parameters.ParamByName('@insurance').Value              := cxMemo8.EditValue;
  SP_procedure.Parameters.ParamByName('@kargo_ETSNG').Value            := cxMemo9.EditValue;
  SP_procedure.Parameters.ParamByName('@marks').Value                  := cxMemo10.EditValue;
  SP_procedure.Parameters.ParamByName('@count_position').Value         := cxMemo11.EditValue;
  SP_procedure.Parameters.ParamByName('@weight').Value                 := cxCurrencyEdit1.EditValue;
  SP_procedure.Parameters.ParamByName('@volume').Value                 := cxCurrencyEdit3.EditValue;
  SP_procedure.Parameters.ParamByName('@cost').Value                   := cxCurrencyEdit4.EditValue;
  SP_procedure.Parameters.ParamByName('@cost_currency_id').Value       := cxLookupComboBox1.EditValue;
  SP_procedure.Parameters.ParamByName('@size_paking').Value            := cxMemo12.EditValue;
  SP_procedure.Parameters.ParamByName('@documents_need').Value         := cxMemo13.EditValue;
  SP_procedure.Parameters.ParamByName('@special_remarks').Value        := cxMemo14.EditValue;
  SP_procedure.Parameters.ParamByName('@sing_client').Value            := cxMemo15.EditValue;
  SP_procedure.Parameters.ParamByName('@type_orders_expedition').Value := Ftype_orders_expedition;

  try
    SP_procedure.ExecProc;
    Forders_expedition_id := SP_procedure.Parameters.ParamByName('@orders_expedition_id').Value;
  except
  end;

  SP_procedure.Free;

  Screen.Cursor := crDefault;
end;

procedure TfmOrdersExpeditionAdd.cxComboBox2PropertiesEditValueChanged(Sender: TObject);
begin
  ChangeCod;
end;

procedure TfmOrdersExpeditionAdd.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action := caFree;
end;

end.
