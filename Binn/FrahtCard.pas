unit FrahtCard;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, DBClient, ADODB, cxGraphics, cxControls, cxLookAndFeels,
  cxLookAndFeelPainters, cxStyles, cxCustomData, cxFilter, cxData,
  cxDataStorage, cxEdit, cxDBData, cxGridCustomTableView, cxGridTableView,
  cxGridBandedTableView, cxGridDBBandedTableView, cxGridCustomView, cxClasses,
  cxGridLevel, cxGrid, dxBar, cxBlobEdit, cxCurrencyEdit,
  cxGridDBTableView, cxGridCustomPopupMenu, cxGridPopupMenu, StrUtils,
  cxSpinEdit, cxCheckBox, cxHyperLinkEdit, cxDBLookupComboBox, cxCalendar, cxTimeEdit, cxImageComboBox, cxCalc;

type
  TfmFrahtCard = class(TForm)
    Client_FrahtCard: TClientDataSet;
    DS_FrahtCard: TDataSource;
    Client_FrahtCardfact_id: TIntegerField;
    ADOConnection1: TADOConnection;
    cxGrid1Level1: TcxGridLevel;
    cxGrid1: TcxGrid;
    cxGrid1DBBandedTableView1: TcxGridDBBandedTableView;
    cxGrid1DBBandedTableView1fact_id: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1num_document: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1num_vagon: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1num_konten: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1rate_1000: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1count_1000: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1sum_1000: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1count_2000: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1rate_2000: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1sum_2000: TcxGridDBBandedColumn;
    dxBarManager1: TdxBarManager;
    dxBarPopupMenu1: TdxBarPopupMenu;
    dxBarButton1: TdxBarButton;
    cxGrid1DBBandedTableView1fact_comiss_sum: TcxGridDBBandedColumn;
    cxStyleRepository1: TcxStyleRepository;
    cxStyle_Bold: TcxStyle;
    cxStyle_AgreeFactInc_Between: TcxStyle;
    cxStyle_AgreeFactInc_Sum: TcxStyle;
    cxStyle_AgreeFactInc_AddProfit: TcxStyle;
    cxStyle_ClientFrahtCard_Rashod: TcxStyle;
    cxStyle_ClientFrahtCard_Profitt: TcxStyle;
    cxStyle_AgreeFact: TcxStyle;
    cxStyle_Agree_bargain_cod: TcxStyle;
    cxStyle_Orders_cod: TcxStyle;
    cxStyle_BoldBlue: TcxStyle;
    cxStyle_ClientFrahtCard_Rashod_RUB: TcxStyle;
    cxStyle_BalanceOrders: TcxStyle;
    cxStyle_Comiss_USD: TcxStyle;
    cxStyle_Comiss_RUB: TcxStyle;
    cxStyle_Sum_USD: TcxStyle;
    cxStyle_Sum_RUB: TcxStyle;
    cxStyle_Sum_EUR: TcxStyle;
    cxStyle_Sum_CHF: TcxStyle;
    cxStyle_Sum_Client: TcxStyle;
    cxStyle_Sum_Agent: TcxStyle;
    cxStyle_Sum_Comiss: TcxStyle;
    cxStyle_ID: TcxStyle;
    cxStyle_Docs_Status: TcxStyle;
    dxBarManager1Bar1: TdxBar;
    dxBarButton2: TdxBarButton;
    dxBarButton3: TdxBarButton;
    dxBarButton8: TdxBarButton;
    cxStyle1: TcxStyle;
    cxStyle2: TcxStyle;
    cxGrid1DBBandedTableView1date_from_to: TcxGridDBBandedColumn;
    Client_FrahtCardnum_document: TStringField;
    Client_FrahtCardnum_vagon: TIntegerField;
    Client_FrahtCardnum_konten: TStringField;
    Client_FrahtCarddate_from_to: TDateField;
    Client_FrahtCarddatpr: TDateField;
    Client_FrahtCardfact_comiss_sum: TCurrencyField;
    cxGrid1DBBandedTableView1datpr: TcxGridDBBandedColumn;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure dxBarButton2Click(Sender: TObject);
    procedure dxBarButton3Click(Sender: TObject);
    procedure dxBarButton1Click(Sender: TObject);
    procedure dxBarButton8Click(Sender: TObject);
  private
    Fbargain_id : integer;
    FClient_FrahtCard : TClientDataSet;
    procedure SetBargainId(bargain_id: integer);
    function CreateColumn(cxGridDBBandedTableView: TcxGridDBBandedTableView; band: TcxGridBand; filed_name: string; filed_caption: string; type_contract: integer; set_sum: boolean): TcxGridDBBandedColumn;
  public
    constructor Create(AOwner: TApplication); reintroduce;
  published
    property _SetBargainId : integer write SetBargainId;
  end;

var
  fmFrahtCard: TfmFrahtCard;

implementation

uses main, Bargain, Raznoe, Other;

{$R *.dfm}

constructor TfmFrahtCard.Create(AOwner: TApplication);
begin
  Screen.Cursor := crHourglass;
  inherited Create(AOwner);

  Fbargain_id := -9;

  FClient_FrahtCard := TClientDataSet.Create(nil);
  FClient_FrahtCard.FieldDefs.Add('fact_id', ftInteger);
  FClient_FrahtCard.FieldDefs.Add('ndnum'  , ftString, 20);
  FClient_FrahtCard.FieldDefs.Add('nvag'   , ftInteger);
  FClient_FrahtCard.FieldDefs.Add('nkont'  , ftString, 20);
  FClient_FrahtCard.FieldDefs.Add('etran_invDateReady'  , ftDate);
  FClient_FrahtCard.CreateDataSet;
  FClient_FrahtCard.LogChanges := False;


  Screen.Cursor := crDefault;
end;

procedure TfmFrahtCard.dxBarButton1Click(Sender: TObject);
begin
  PrintcxGrid(cxGrid1DBBandedTableView1);
end;

procedure TfmFrahtCard.dxBarButton2Click(Sender: TObject);
var i : integer;
begin
  Screen.Cursor := crHourGlass;
  for i:= 0 to cxGrid1DBBandedTableView1.ColumnCount-1 do begin
    if cxGrid1DBBandedTableView1.Columns[i].Caption = 'Ставка' then
      cxGrid1DBBandedTableView1.Columns[i].Visible := dxBarButton2.Down;
  end;
  Screen.Cursor := crDefault;
end;

procedure TfmFrahtCard.dxBarButton3Click(Sender: TObject);
var i : integer;
begin
  Screen.Cursor := crHourGlass;
  for i:= 0 to cxGrid1DBBandedTableView1.ColumnCount-1 do begin
    if cxGrid1DBBandedTableView1.Columns[i].Caption = 'Кол-во' then
      cxGrid1DBBandedTableView1.Columns[i].Visible := dxBarButton3.Down;
  end;
  Screen.Cursor := crDefault;
end;

procedure TfmFrahtCard.dxBarButton8Click(Sender: TObject);
var i : integer;
begin
  Screen.Cursor := crHourGlass;
  for i:= 0 to cxGrid1DBBandedTableView1.ColumnCount-1 do begin
    if RightStr(LeftStr(cxGrid1DBBandedTableView1.Columns[i].Name,33),8) = 'add_sum_' then
      cxGrid1DBBandedTableView1.Columns[i].Visible := dxBarButton8.Down;
  end;
  Screen.Cursor := crDefault;
end;

procedure TfmFrahtCard.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action := caFree;
end;

function TfmFrahtCard.CreateColumn(cxGridDBBandedTableView: TcxGridDBBandedTableView; band: TcxGridBand; filed_name: string; filed_caption: string; type_contract: integer; set_sum: boolean): TcxGridDBBandedColumn;
var
            column : TcxGridDBBandedColumn;
    FooterSubTotal : TcxGridDBTableSummaryItem;
          ASummary : TcxDataSummary;
begin
  column := cxGridDBBandedTableView.CreateColumn;
  column.Position.BandIndex := band.Index;
  column.DataBinding.FieldName := filed_name;
  column.Caption  := filed_caption;
  column.Name     := 'cxGrid1DBBandedTableView1' + filed_name;
  column.Width    := 70;
  column.PropertiesClassName := 'TcxCurrencyEditProperties';
  column.Visible  := False;
  TcxCurrencyEditProperties(column.Properties).DisplayFormat := '#,##0.00';
  if type_contract = 0 then begin
    column.Styles.Content := cxStyle1;
    column.Styles.Footer  := cxStyle1;
  end else begin
    column.Styles.Content := cxStyle2;
    column.Styles.Footer  := cxStyle2;
  end;

  if set_sum then begin
    ASummary := cxGridDBBandedTableView.DataController.Summary;
    ASummary.BeginUpdate;
    try
       FooterSubTotal := TcxGridDBTableSummaryItem(ASummary.FooterSummaryItems.Add);
       FooterSubTotal.Column := column;
       FooterSubTotal.Kind := skSum;
       FooterSubTotal.Position := spFooter;
       FooterSubTotal.Format := '#,##0.00';
    finally
        ASummary.EndUpdate
    end;
  end;
  Result := column;
end;

procedure TfmFrahtCard.SetBargainId(bargain_id: integer);
var      Q, Q2 : TADOQuery;
         i : integer;
      band : TcxGridBand;
    column : TcxGridDBBandedColumn;

    sp_fraht_card_modify : TADOStoredProc;
begin

  ShowTextMessage('Подготовка данных...', False);
  ShowTextMessage('Построение ФК...', False);
  Fbargain_id := bargain_id;

  sp_fraht_card_modify := TADOStoredProc.Create(nil);
  sp_fraht_card_modify.Connection := fmMain.Lis;
  sp_fraht_card_modify.ProcedureName := 'sp_fraht_card_modify';
  sp_fraht_card_modify.Parameters.Refresh;
  sp_fraht_card_modify.Parameters.ParamByName('@bargain_id').Value := Fbargain_id;
  sp_fraht_card_modify.ExecProc;
  sp_fraht_card_modify.Free;

  Q := TADOQuery.Create(nil);
  Q.Connection := fmMain.Lis;

  Q2 := TADOQuery.Create(nil);
  Q2.Connection := fmMain.Lis;

  Q.SQL.Add('SELECT * FROM view_bargain_new_add WHERE bargain_id = ' + IntToStr(Fbargain_id) + ' ORDER BY type_contract, contract_cod');
  Q.Open;

  Q2.SQL.Add('SELECT * FROM view_bargain_new WHERE bargain_id = ' + IntToStr(Fbargain_id));
  Q2.Open;

  FClient_FrahtCard.Free;
  FClient_FrahtCard := TClientDataSet.Create(nil);
  FClient_FrahtCard.FieldDefs.Add('fact_id', ftInteger);
  FClient_FrahtCard.FieldDefs.Add('num_document', ftString, 20);
  FClient_FrahtCard.FieldDefs.Add('num_vagon', ftInteger);
  FClient_FrahtCard.FieldDefs.Add('num_konten', ftString, 20);
  FClient_FrahtCard.FieldDefs.Add('date_from_to', ftDate);
  FClient_FrahtCard.FieldDefs.Add('datpr', ftDate);
  FClient_FrahtCard.FieldDefs.Add('fact_comiss_sum', ftCurrency);
//  FClient_FrahtCard.CreateDataSet;
//  FClient_FrahtCard.LogChanges := False;
  for i := 1 to cxGrid1DBBandedTableView1.Bands.Count-1 do begin
    cxGrid1DBBandedTableView1.Bands.Items[1].Free;
  end;

  ShowTextMessage('Построение ФК...', False);
  while not Q.Eof do begin
    band := cxGrid1DBBandedTableView1.Bands.Add;
    band.Caption := Q.FieldByName('firm_customer_name').AsString + ' (' + Q.FieldByName('type_add_name').AsString + ')';
    band.Tag     := Q.FieldByName('bargain_add_id').AsInteger;
    if Q.FieldByName('type_contract').AsInteger = 0 then
      band.Styles.Header := cxStyle_Sum_Client
    else
      band.Styles.Header := cxStyle_Sum_Agent;

//    CreateColumn(cxGrid1DBBandedTableView1, band, 'exchange_USD_val_' + Q.FieldByName('bargain_add_id').AsString, 'Курс USD', Q.FieldByName('type_contract').AsInteger, False);
//    CreateColumn(cxGrid1DBBandedTableView1, band, 'exchange_CHF_val_' + Q.FieldByName('bargain_add_id').AsString, 'Курс CHF', Q.FieldByName('type_contract').AsInteger, False);
//    CreateColumn(cxGrid1DBBandedTableView1, band, 'exchange_EUR_val_' + Q.FieldByName('bargain_add_id').AsString, 'Курс EUR', Q.FieldByName('type_contract').AsInteger, False);
//    CreateColumn(cxGrid1DBBandedTableView1, band, 'exchange_KZT_val_' + Q.FieldByName('bargain_add_id').AsString, 'Курс KZT', Q.FieldByName('type_contract').AsInteger, False);
//
    column := CreateColumn(cxGrid1DBBandedTableView1, band, 'rate_sum_' + Q.FieldByName('bargain_add_id').AsString, 'Ставка', Q.FieldByName('type_contract').AsInteger, False);
    column.Visible := True;
    column := CreateColumn(cxGrid1DBBandedTableView1, band, 'add_count_' + Q.FieldByName('bargain_add_id').AsString, 'Кол-во', Q.FieldByName('type_contract').AsInteger, False);
    column.Visible := True;
    column := CreateColumn(cxGrid1DBBandedTableView1, band, 'add_sum_' + Q.FieldByName('bargain_add_id').AsString, 'Сумма (' + Q.FieldByName('brief_name').AsString + ')', Q.FieldByName('type_contract').AsInteger, True);
    column.Visible := True;
//    column := CreateColumn(cxGrid1DBBandedTableView1, band, 'add_alt_sum_' + Q.FieldByName('bargain_add_id').AsString, 'Сумма (' + Q2.FieldByName('brief_name').AsString + ')', Q.FieldByName('type_contract').AsInteger, True);
//    column.Visible := True;
//
    FClient_FrahtCard.FieldDefs.Add('rate_sum_'  + Q.FieldByName('bargain_add_id').AsString, ftCurrency);
    FClient_FrahtCard.FieldDefs.Add('add_count_' + Q.FieldByName('bargain_add_id').AsString, ftCurrency);
    FClient_FrahtCard.FieldDefs.Add('add_sum_'   + Q.FieldByName('bargain_add_id').AsString, ftCurrency);

//    FClient_FrahtCard.FieldDefs.Add('add_alt_sum_'   + Q.FieldByName('bargain_add_id').AsString, ftCurrency);
//    FClient_FrahtCard.FieldDefs.Add('exchange_USD_val_' + Q.FieldByName('bargain_add_id').AsString, ftCurrency);
//    FClient_FrahtCard.FieldDefs.Add('exchange_CHF_val_' + Q.FieldByName('bargain_add_id').AsString, ftCurrency);
//    FClient_FrahtCard.FieldDefs.Add('exchange_EUR_val_' + Q.FieldByName('bargain_add_id').AsString, ftCurrency);
//    FClient_FrahtCard.FieldDefs.Add('exchange_KZT_val_' + Q.FieldByName('bargain_add_id').AsString, ftCurrency);
//
    ShowTextMessage('Построение ФК...' + #10 + 'Построение колонок. Осталось ' + IntToStr(Q.RecordCount - Q.RecNo) + '...', False);
    Q.Next;
  end;

  FClient_FrahtCard.CreateDataSet;
  FClient_FrahtCard.LogChanges := False;

  Q.SQL.Clear;
  Q.SQL.Add('SELECT * FROM view_bargain_fact WHERE bargain_new_id = ' + IntToStr(Fbargain_id) + ' AND set_main = 1 ORDER BY fact_id');
  Q.Open;

  while not Q.Eof do begin
    FClient_FrahtCard.Append;
    FClient_FrahtCard.FieldByName('fact_id'         ).Value := Q.FieldByName('fact_id').Value;
    FClient_FrahtCard.FieldByName('num_document'    ).Value := Q.FieldByName('num_document').Value;
    FClient_FrahtCard.FieldByName('num_vagon'       ).Value := Q.FieldByName('num_vagon').Value;
    FClient_FrahtCard.FieldByName('num_konten'      ).Value := Q.FieldByName('num_konten').Value;
    FClient_FrahtCard.FieldByName('date_from_to'    ).Value := Q.FieldByName('date_from_to').Value;
    FClient_FrahtCard.FieldByName('datpr'           ).Value := Q.FieldByName('datpr').Value;
    FClient_FrahtCard.FieldByName('fact_comiss_sum' ).Value := 0;
    FClient_FrahtCard.Post;
    Q.Next;
  end;

  Q.SQL.Clear;
  Q.SQL.Add('SELECT bargain_add_id, type_contract FROM view_bargain_new_add WHERE bargain_id = ' + IntToStr(Fbargain_id) + ' ORDER BY type_contract, contract_cod');
  Q.Open;

  while not Q.Eof do begin
    Q2.SQL.Clear;
    Q2.SQL.Add('SELECT	view_bargain_new_fact.*');
//    Q2.SQL.Add('        round(isnull(fact_sum,0) * dbo.func_GetExchangeNew(');
//    Q2.SQL.Add('            view_bargain_new.currency_id,');
//    Q2.SQL.Add('            view_bargain_new_add.currency_id,');
//    Q2.SQL.Add('            view_bargain_new_fact.exchange_USD_val,');
//    Q2.SQL.Add('            view_bargain_new_fact.exchange_CHF_val,');
//    Q2.SQL.Add('            view_bargain_new_fact.exchange_EUR_val,');
//    Q2.SQL.Add('            view_bargain_new_fact.exchange_KZT_val), 2) as fact_sum_alt');
    Q2.SQL.Add('FROM	  view_bargain_new_fact');
    Q2.SQL.Add('        inner join view_bargain_new_add on view_bargain_new_fact.bargain_add_id = view_bargain_new_add.bargain_add_id');
    Q2.SQL.Add('        inner join view_bargain_new on view_bargain_new.bargain_id = view_bargain_new_add.bargain_id');
    Q2.SQL.Add('WHERE	  view_bargain_new_fact.bargain_add_id = ' + Q.FieldByName('bargain_add_id').AsString);
    Q2.Open;

    while not Q2.Eof do begin
      if FClient_FrahtCard.Locate('fact_id', Q2.FieldByName('fact_id').AsInteger, []) then begin

        FClient_FrahtCard.Edit;
        FClient_FrahtCard.FieldByName('rate_sum_'  + Q.FieldByName('bargain_add_id').AsString).Value := Q2.FieldByName('fact_rate').Value;
        FClient_FrahtCard.FieldByName('add_count_' + Q.FieldByName('bargain_add_id').AsString).Value := Q2.FieldByName('fact_count').Value;
        FClient_FrahtCard.FieldByName('add_sum_'   + Q.FieldByName('bargain_add_id').AsString).Value := Q2.FieldByName('fact_sum').Value;

//        FClient_FrahtCard.FieldByName('add_alt_sum_'      + Q.FieldByName('bargain_add_id').AsString).Value := Q2.FieldByName('fact_sum_alt').Value;
//        FClient_FrahtCard.FieldByName('exchange_USD_val_' + Q.FieldByName('bargain_add_id').AsString).Value := Q2.FieldByName('exchange_USD_val').Value;
//        FClient_FrahtCard.FieldByName('exchange_CHF_val_' + Q.FieldByName('bargain_add_id').AsString).Value := Q2.FieldByName('exchange_CHF_val').Value;
//        FClient_FrahtCard.FieldByName('exchange_EUR_val_' + Q.FieldByName('bargain_add_id').AsString).Value := Q2.FieldByName('exchange_EUR_val').Value;
//        FClient_FrahtCard.FieldByName('exchange_KZT_val_' + Q.FieldByName('bargain_add_id').AsString).Value := Q2.FieldByName('exchange_KZT_val').Value;
//
        if not Q2.FieldByName('fact_sum').IsNull then
          if Q.FieldByName('type_contract').AsInteger = 0 then
            FClient_FrahtCard.FieldByName('fact_comiss_sum').Value := FClient_FrahtCard.FieldByName('fact_comiss_sum').Value + Q2.FieldByName('fact_sum').Value
          else
            FClient_FrahtCard.FieldByName('fact_comiss_sum').Value := FClient_FrahtCard.FieldByName('fact_comiss_sum').Value - Q2.FieldByName('fact_sum').Value;
        FClient_FrahtCard.Post;
      end;

      Q2.Next;
    end;
    ShowTextMessage('Построение ФК...' + #10 + 'Добавление вагонов. Осталось ' + IntToStr(Q.RecordCount - Q.RecNo) + '...', False);
    Q.Next;
  end;

  DS_FrahtCard.DataSet := FClient_FrahtCard;

  Q.Free;
  Q2.Free;
  ShowTextMessage;
end;

end.
