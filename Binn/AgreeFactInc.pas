unit AgreeFactInc;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  ComCtrls, ToolWin, Db, DBClient, StdCtrls, Buttons, Menus, Grids, DBGrids, ADODB,
  ExtCtrls, clipbrd, cxGridCustomTableView, cxGridTableView, cxGraphics, Variants,
  cxGridBandedTableView, cxGridDBBandedTableView, cxClasses, cxControls,
  cxGridCustomView, cxGridLevel, cxGrid, cxPropertiesStore, cxStyles,
  cxCustomData, cxFilter, cxData, cxDataStorage, cxEdit, cxDBData,
  cxCurrencyEdit, cxCheckBox, FactInc, dxBar, cxLookAndFeels, cxLookAndFeelPainters, dxSkinsCore, dxSkinBlack, dxSkinBlue, dxSkinBlueprint,
  dxSkinCaramel, dxSkinCoffee, dxSkinDarkRoom, dxSkinDarkSide, dxSkinDevExpressDarkStyle, dxSkinDevExpressStyle, dxSkinFoggy, dxSkinGlassOceans,
  dxSkinHighContrast, dxSkiniMaginary, dxSkinLilian, dxSkinLiquidSky, dxSkinLondonLiquidSky, dxSkinMcSkin, dxSkinMetropolis, dxSkinMetropolisDark,
  dxSkinMoneyTwins, dxSkinOffice2007Black, dxSkinOffice2007Blue, dxSkinOffice2007Green, dxSkinOffice2007Pink, dxSkinOffice2007Silver,
  dxSkinOffice2010Black, dxSkinOffice2010Blue, dxSkinOffice2010Silver, dxSkinOffice2013DarkGray, dxSkinOffice2013LightGray, dxSkinOffice2013White,
  dxSkinPumpkin, dxSkinSeven, dxSkinSevenClassic, dxSkinSharp, dxSkinSharpPlus, dxSkinSilver, dxSkinSpringTime, dxSkinStardust, dxSkinSummer2008,
  dxSkinTheAsphaltWorld, dxSkinsDefaultPainters, dxSkinValentine, dxSkinVS2010, dxSkinWhiteprint, dxSkinXmas2008Blue, dxSkinscxPCPainter, cxNavigator,
  dxSkinsdxBarPainter, dxSkinOffice2016Colorful, dxSkinOffice2016Dark,
  dxSkinVisualStudio2013Blue, dxSkinVisualStudio2013Dark,
  dxSkinVisualStudio2013Light, cxDataControllerConditionalFormattingRulesManagerDialog, dxSkinTheBezier, dxDateRanges, dxSkinOffice2019Colorful, dxScrollbarAnnotations,
  dxSkinBasic, dxSkinOffice2019Black, dxSkinOffice2019DarkGray,
  dxSkinOffice2019White, dxSkinWXI;

type
  TfmAgreeFactInc = class(TForm)
    DS_Sverka: TDataSource;
    SP_ZFTOAct: TADOStoredProc;
    cxGrid1Level1: TcxGridLevel;
    cxGrid1: TcxGrid;
    cxGrid1DBBandedTableView1: TcxGridDBBandedTableView;
    cxGrid1DBBandedTableView1fact_id: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1num_vagon_F: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1num_konten_F: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1num_konten_pref_F: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1num_document_F: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1num_document_ser_F: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1fact_weight_F: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1calc_weight_F: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1rate_val_F: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1kargo_capacity_F: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1sum_F: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1date_otp_F: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1num_vagon_Z: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1num_konten_Z: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1num_konten_pref_Z: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1num_document_Z: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1num_document_ser_Z: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1fact_weight_Z: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1calc_weight_Z: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1rate_val_Z: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1kargo_capacity_Z: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1sum_Z: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1date_otp_Z: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1date_pr_Z: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1id_uch_Z: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1fact_inc_id: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1free_fact: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1free_fact_text: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1add_profit: TcxGridDBBandedColumn;
    cxPropertiesStore1: TcxPropertiesStore;
    cxGrid1DBBandedTableView1add_F: TcxGridDBBandedColumn;
    Query_Agree: TADOQuery;
    dxBarManager1: TdxBarManager;
    dxBarManager1Bar1: TdxBar;
    PopupMenu1: TdxBarPopupMenu;
    N1: TdxBarButton;
    N9: TdxBarButton;
    N2: TdxBarButton;
    N6: TdxBarButton;
    N4: TdxBarButton;
    N22: TdxBarButton;
    N23: TdxBarButton;
    N24: TdxBarButton;
    N25: TdxBarButton;
    N10: TdxBarSubItem;
    N11: TdxBarButton;
    N14: TdxBarButton;
    Word2: TdxBarButton;
    N16: TdxBarButton;
    N15: TdxBarSubItem;
    Excel1: TdxBarButton;
    N28: TdxBarButton;
    N27: TdxBarButton;
    N30: TdxBarButton;
    N26: TdxBarSubItem;
    dxBarButton1: TdxBarButton;
    N12: TdxBarButton;
    N18: TdxBarButton;
    RUB_to_USD: TdxBarButton;
    USD_to_RUB: TdxBarButton;
    N17: TdxBarButton;
    dxBarSubItem1: TdxBarSubItem;
    dxBarSubItem2: TdxBarSubItem;
    Excel2: TdxBarButton;
    Word1: TdxBarButton;
    Excel3: TdxBarButton;
    dxBarButton2: TdxBarButton;
    SP_AgreeFactInc_Sverka: TADOStoredProc;
    cxGrid1DBBandedTableView1sto_name: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1stn_name: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1cnt_f: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1Column2: TcxGridDBBandedColumn;
    dxBarButton3: TdxBarButton;
    cxGrid1DBBandedTableView1Column1: TcxGridDBBandedColumn;
    procedure Excel1Click(Sender: TObject);
    procedure cxGrid1DBBandedTableView1KeyPress(Sender: TObject; var Key: Char);
    procedure cxGrid1DBBandedTableView1FocusedItemChanged(Sender: TcxCustomGridTableView; APrevFocusedItem,  AFocusedItem: TcxCustomGridTableItem);
    procedure cxGrid1DBBandedTableView1CustomDrawColumnHeader(Sender: TcxGridTableView; ACanvas: TcxCanvas;  AViewInfo: TcxGridColumnHeaderViewInfo; var ADone: Boolean);
    procedure N1Click(Sender: TObject);
    procedure N27Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure N2Click(Sender: TObject);
    procedure ToolButton16Click(Sender: TObject);
    procedure N9Click(Sender: TObject);
    procedure Excel2Click(Sender: TObject);
    procedure Word1Click(Sender: TObject);
    procedure N14Click(Sender: TObject);
    procedure N12Click(Sender: TObject);
    procedure N17Click(Sender: TObject);
    procedure cxGrid1DBBandedTableView1CustomDrawCell(Sender: TcxCustomGridTableView; ACanvas: TcxCanvas;  AViewInfo: TcxGridTableDataCellViewInfo; var ADone: Boolean);
    procedure N11Click(Sender: TObject);
    procedure N18Click(Sender: TObject);
    procedure RUB_to_USDClick(Sender: TObject);
    procedure USD_to_RUBClick(Sender: TObject);
    procedure Excel3Click(Sender: TObject);
    procedure N22Click(Sender: TObject);
    procedure N23Click(Sender: TObject);
    procedure dxBarButton3Click(Sender: TObject);
    procedure N28Click(Sender: TObject);
  private
    Fstr_shaping_rate_id         : string;
    Ftype_str, Ftype             : byte;
    Fnvag, Ftype_self, Fbargain_id : integer;
    Fbrief_name, Fnkont, Fndnum  : string;
    FLabel1, Flabel2             : string;
    Fset_save                    : boolean;

    procedure SearchFactIncDlg(Buffer: PChar; type_buffer: integer);
    function ShowFactIncDlg(Buffer: PChar; type_buffer, type_self: integer; var v: Variant): TModalResult;
    procedure ReCalc();
  public
    constructor Create(AOwner : TApplication; bargain_id : integer);
    function SetFrahtFact() : integer;

//    property _SetShapingRateID : integer write FShaping_rate_id;
  end;

const str_fact : array[1..2] of string = ('num_vagon', 'num_konten');
const str_fact_inc : array[1..2] of string = ('nvag', 'nkont');
const str_title_from_to : array[1..2] of string = ('по отпралению', 'по прибытию');

var
  fmAgreeFactInc: TfmAgreeFactInc;

implementation
        uses Main, Raznoe, ShellApi, ComObj, Other, FactIncCard,
        Default, cxGridDBDataDefinitions, Math, Filter;
{$R *.DFM}

constructor TfmAgreeFactInc.Create(AOwner: TApplication; bargain_id : integer);
begin
  Screen.Cursor := crHourglass;
  inherited Create(nil);
  Ftype_self := 0;
  Fbargain_id := bargain_id;
  Fstr_shaping_rate_id := ''; // Подрядчик еще не выбран

  SP_AgreeFactInc_Sverka.Parameters.Refresh;
  SP_ZFTOAct.Parameters.Refresh;

  // Открываем запрос Query_Agree для Fbargain_id
  Query_Agree.Close;
  Query_Agree.Parameters.ParamByName('bargain_id').Value := Fbargain_id;
  Query_Agree.Open;

  if (Query_Agree.FieldByName('ed_izm_cod').AsString = '001') then begin
    Ftype_str := 2;
  end else begin
    Ftype_str := 1;
  end;

  cxGrid1DBBandedTableView1num_vagon_F.Visible := (Ftype_str = 1);
  cxGrid1DBBandedTableView1num_vagon_Z.Visible := (Ftype_str = 1);
  cxGrid1DBBandedTableView1num_konten_F.Visible := (Ftype_str = 2);
  cxGrid1DBBandedTableView1num_konten_Z.Visible := (Ftype_str = 2);

  cxGrid1DBBandedTableView1sum_F.Styles.Content := fmMain.cxStyle_AgreeFactInc_Sum;
  cxGrid1DBBandedTableView1sum_Z.Styles.Content := fmMain.cxStyle_AgreeFactInc_Sum;
  cxGrid1DBBandedTableView1add_profit.Styles.Content := fmMain.cxStyle_AgreeFactInc_AddProfit;

  SetUsersModuleRights(self, fmMain.Lis);

  MonitorEventFormOpen('OPEN_FORM', self.Name, fmMain.Lis, -9);

  WindowState := wsMaximized;
  Screen.Cursor := crDefault;
end;

procedure TfmAgreeFactInc.ReCalc();
begin

  Screen.Cursor := crHourglass;

  cxGrid1DBBandedTableView1num_konten_pref_F.Visible := (Ftype_str = 2) and N12.Down;
  cxGrid1DBBandedTableView1num_konten_pref_Z.Visible := (Ftype_str = 2) and N12.Down;

  cxGrid1DBBandedTableView1.DataController.DataSource := nil;

  ShowTextMessage('Получение данных из базы...', False);

  SP_AgreeFactInc_Sverka.Close;
  SP_AgreeFactInc_Sverka.Parameters.ParamByName('@bargain_id').Value := Fbargain_id;
  SP_AgreeFactInc_Sverka.Parameters.ParamByName('@str_shaping_rate_id').Value := Fstr_shaping_rate_id;
  SP_AgreeFactInc_Sverka.Parameters.ParamByName('@type_self').Value := Ftype_self;
  SP_AgreeFactInc_Sverka.Parameters.ParamByName('@set_kont').Value := (Ftype_str = 2);
  SP_AgreeFactInc_Sverka.Parameters.ParamByName('@set_nakl_checked').Value := N18.Down;
  SP_AgreeFactInc_Sverka.Parameters.ParamByName('@set_kont_without_prefix').Value := N12.Down;
  SP_AgreeFactInc_Sverka.Parameters.ParamByName('@set_RUB_to_USD').Value := RUB_to_USD.Down;
  SP_AgreeFactInc_Sverka.Parameters.ParamByName('@set_USD_to_RUB').Value := USD_to_RUB.Down;
  SP_AgreeFactInc_Sverka.Open;

  cxGrid1DBBandedTableView1.DataController.DataSource := DS_Sverka;

  N22.Caption := 'Номера вагонов (' + Query_Agree.FieldByName('firm_self_name').AsString + ')';
  N23.Caption := 'Номера накладных (' + Query_Agree.FieldByName('firm_self_name').AsString + ')';

  if cxGrid1DBBandedTableView1.DataController.Summary.FooterSummaryValues[8] <> null then
    cxGrid1DBBandedTableView1.Bands[0].Caption := Query_Agree.FieldByName('firm_self_name').AsString + ' (' + IntToStr(cxGrid1DBBandedTableView1.DataController.Summary.FooterSummaryValues[8]) + ')'
  else
    cxGrid1DBBandedTableView1.Bands[0].Caption := Query_Agree.FieldByName('firm_self_name').AsString;

  if cxGrid1DBBandedTableView1.DataController.Summary.FooterSummaryValues[9] <> null then
    cxGrid1DBBandedTableView1.Bands[2].Caption := Flabel2 + ' (' + IntToStr(cxGrid1DBBandedTableView1.DataController.Summary.FooterSummaryValues[9]) + ')'
  else
    cxGrid1DBBandedTableView1.Bands[2].Caption := Flabel2;

  // ------------- сохранение данных------------------------
  try
    if Fset_save then begin
      ShowTextMessage('Сохранение данных в базе ...', False);
      SP_ZFTOAct.Close;
      SP_ZFTOAct.Parameters.ParamByName('@str_shaping_rate_id'     ).Value := Fstr_shaping_rate_id;
      SP_ZFTOAct.Parameters.ParamByName('@zfto_sum_fact'           ).Value := cxGrid1DBBandedTableView1.DataController.Summary.FooterSummaryValues[2];
      SP_ZFTOAct.Parameters.ParamByName('@zfto_amount_fact'        ).Value := cxGrid1DBBandedTableView1.DataController.Summary.FooterSummaryValues[4];
      SP_ZFTOAct.Parameters.ParamByName('@zfto_amount_calc'        ).Value := cxGrid1DBBandedTableView1.DataController.Summary.FooterSummaryValues[6]/10;
      SP_ZFTOAct.Parameters.ParamByName('@zfto_amount_units'       ).Value := cxGrid1DBBandedTableView1.DataController.Summary.FooterSummaryValues[9];
      SP_ZFTOAct.Parameters.ParamByName('@set_nakl_checked'        ).Value := N18.Down;
      SP_ZFTOAct.Parameters.ParamByName('@set_kont_without_prefix' ).Value := N12.Down;
      SP_ZFTOAct.Parameters.ParamByName('@set_RUB_to_USD'          ).Value := RUB_to_USD.Down;
      SP_ZFTOAct.Parameters.ParamByName('@set_USD_to_RUB'          ).Value := USD_to_RUB.Down;
      SP_ZFTOAct.ExecProc;
    end;
  finally
    ShowTextMessage;
    Screen.Cursor := crDefault;
  end;
end;

function TfmAgreeFactInc.SetFrahtFact() : integer;
var Q : TADOQuery;
    SP : TADOStoredProc;
begin
  // Проверки
  Q := TADOQuery.Create(nil);
  Q.Connection := fmMain.Lis;
  Q.SQL.Add('SELECT view_shaping_rate.shaping_rate_id, contract_set, firm_agent_name, contract_agent_cod, FRAHT_AGENT.agent_sum_fact_real, shaping_rate_type_name');
  Q.SQL.Add('FROM view_shaping_rate LEFT JOIN FRAHT_AGENT ON view_shaping_rate.shaping_rate_id = FRAHT_AGENT.shaping_rate_id');
  Q.SQL.Add('WHERE view_shaping_rate.bargain_id = ' + IntToStr(Fbargain_id));
  Q.SQL.Add('AND view_shaping_rate.contract_set < 100'); // не null и не меньше 100

  Q.Open;

  if (Q.RecordCount < 1) then begin
    Screen.Cursor := crDefault;
    Application.MessageBox('Нет сверочной информации для указанных подрядчиков', 'ВНИМАНИЕ', MB_OK);
    Q.Close; // Закрываем запрос - те самым сигнализирую об ошибке
    result := mrNone;
    Exit;
  end else if (Q.RecordCount>1) then begin
    fmFilter := TfmFilter.Create(0, Q, 'shaping_rate_id', 'contract_agent_cod', 'firm_agent_name');
    fmFilter._SetContract4AgreeFactInc := True;

    if fmFilter.ShowModal = mrOk then begin
      Fstr_shaping_rate_id := fmFilter._GetStrId;
      Q.Locate('shaping_rate_id', fmFilter.GetId, [loCaseInsensitive]);
      Ftype_self           := Q.FieldByName('contract_set').AsInteger - 1;

      // Проверим различные ли договора
      Q.Close;
      Q.SQL.Clear;
      Q.SQL.Add('SELECT DISTINCT contract_agent_id FROM shaping_rate WHERE shaping_rate_id IN (' + Fstr_shaping_rate_id + ')');
      Q.Open;
      if Q.RecordCount > 1 then begin
        Screen.Cursor := crDefault;
        Application.MessageBox('Выбраны Услуги различных Подрядчиков'#10'Сверка невозможна', 'ВНИМАНИЕ', MB_OK);
        Q.Close; // Закрываем запросм - те самым сигнализирую об ошибке
        result := mrNone;
        Exit;
      end;

    end else begin
      Screen.Cursor := crDefault;
      Application.MessageBox('Не выбран подрядчик', 'ВНИМАНИЕ', MB_OK);
      Q.Close; // Закрываем запросм - те самым сигнализирую об ошибке
      result := mrNone;
      Exit;
    end;

    fmFilter.Free;
  end else {if (Q.RecordCount=1) then } begin
    Fstr_shaping_rate_id := Q.FieldByName('shaping_rate_id').AsString;
    Ftype_self           := Q.FieldByName('contract_set').AsInteger - 1;
  end;

  Q.Close;
  Q.SQL.Clear;
  Q.SQL.Add('SELECT * FROM ZFTO_ACT WHERE shaping_rate_id IN (' + Fstr_shaping_rate_id + ')');
  Q.Open;

  N18.Down  := Q.FieldByName('set_nakl_checked').AsBoolean;
  N12.Down  := Q.FieldByName('set_kont_without_prefix').AsBoolean;
  RUB_to_USD.Down  := Q.FieldByName('set_RUB_to_USD').AsBoolean;
  USD_to_RUB.Down  := Q.FieldByName('set_USD_to_RUB').AsBoolean;

  Q.Close;
  Q.SQL.Clear;
  Q.SQL.Add('select firm_agent_name, firm_agent_name_short from view_shaping_rate where shaping_rate_id = ' + Fstr_shaping_rate_id);
  Q.Open;

  FLabel1 := Q.FieldByName('firm_agent_name').AsString;
  Flabel2 := Q.FieldByName('firm_agent_name').AsString;

  Q.Free;

//  // Заголовки
//  case Ftype_self of
//  0,2,7:begin
//        FLabel1 := 'ЦФТО';
//        Flabel2 := 'Ц Ф Т О';
//        end;
//    1 : begin
//        FLabel1 := 'ПГК';
//        Flabel2 := 'П Г К';
//        end;
//    3 : begin
//        FLabel1 := 'ФГК';
//        Flabel2 := 'Ф Г К';
//        end;
//    4 : begin
//        FLabel1 := 'ГПТ';
//        Flabel2 := 'Г П Т';
//        end;
//    5 : begin
//        FLabel1 := '____________';
//        Flabel2 := '____________';
//        end;
//    6 : begin
//        FLabel1 := '______________';
//        Flabel2 := '______________';
//        end;
//    8 : begin
//        FLabel1 := 'НефтеТрансСервис';
//        Flabel2 := 'НефтеТрансСервис';
//        end;
//  end;

  self.Caption := 'Сверка с ' + FLabel1;
  N1.Caption := 'Добавить факт ' + FLabel1 + '...';
  N2.Caption := 'Удалить запись ' + FLabel1;
  N6.Caption := 'Удалить лишние ' + FLabel1;
  N4.Caption := 'Удалить весь факт ' + FLabel1;
  N24.Caption := 'Номера вагонов ' + FLabel1;
  N25.Caption := 'Номера накладных ' + FLabel1;
  RUB_to_USD.Caption := 'Перевод RUB->Валюта (' + FLabel1 + ')';
  USD_to_RUB.Caption := 'Перевод Валюта->RUB (' + FLabel1 + ')';

  // Конец проверок


  Screen.Cursor := crHourglass;

  if (Query_Agree.FieldByName('bargain_correct_type').AsVariant = 0) or (Query_Agree.FieldByName('bargain_correct_type').AsVariant = 1) then begin
    Fset_save := false;
    Application.MessageBox(PChar('Сверка фактической информации с ' + FLabel1 + ' не будет сохранена.'),'Внимание!', MB_OK);
  end else
    Fset_save := true;

  // Устанавливаем Enabled в PopupMenu в зависимости от приложения
  N1.Enabled  := Fset_save;
  N2.Enabled  := Fset_save;
  N4.Enabled  := Fset_save;
  N6.Enabled  := Fset_save;
  N9.Enabled  := Fset_save;
  N10.Enabled := Fset_save;
  N12.Enabled := Fset_save;
  N14.Enabled := Fset_save;
  N16.Enabled := Fset_save;
  N18.Enabled := Fset_save;
  RUB_to_USD.Enabled := Fset_save;
  USD_to_RUB.Enabled := Fset_save;
  //--------------------------------------------------------------

  if Fset_save then begin
    // Обновим связи с fact_inc (если сохранение доступно)
    SP := TADOStoredProc.Create(nil);
    SP.Connection := fmMain.Lis;
    SP.ProcedureName := 'sp_fact_inc_bargain_update;1';
    SP.Parameters.Refresh;
    SP.Parameters.ParamByName('@type_action').Value := 10;
    SP.Parameters.ParamByName('@bargain_id').Value := Fbargain_id;
    SP.Parameters.ParamByName('@str_shaping_rate_id').Value := Fstr_shaping_rate_id;
    SP.ExecProc;
    SP.Free;
  end;

  Caption := 'Сверка с ' + FLabel1 + ' ( [';
  Caption := Caption + Query_Agree.FieldByName('node_begin_cod').AsString + ']' + Query_Agree.FieldByName('node_begin_name').AsString + ' - [';
  Caption := Caption + Query_Agree.FieldByNAme('node_end_cod').AsString + ']' + Query_Agree.FieldByName('node_end_name').AsString;
  Caption := Caption + ',  перевозка №' + Query_Agree.FieldByNAme('bargain_cod').AsString + ',  счет ' + Query_Agree.FieldByName('fraht_card_num').AsString + ' )';

  ReCalc();

  result := mrOk;
end;

procedure TfmAgreeFactInc.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action := caFree;
end;

procedure TfmAgreeFactInc.SearchFactIncDlg(Buffer: PChar; type_buffer: integer);
var         i : integer;
  FcxGridView : TcxGridDBBandedTableView;
           SP : TADOStoredProc;
            v : Variant;
begin
  if ShowFactIncDlg(Buffer, type_buffer, Ftype_self, v) = mrOk then begin
    fmFactInc := TfmFactInc.Create(Application, True);
    fmFactInc.Change_SQL_Procedures(v);
    fmFactInc._SetTypeSelf := Ftype_self;
    if fmFactInc.ShowModal <> mrOk then
      Exit;
  end else
    Exit;

  case fmFactInc.cxTabControl1.TabIndex of
    0 : FcxGridView := fmFactInc.cxGrid1DBBandedTableView1;
    1 : FcxGridView := fmFactInc.cxGrid1DBBandedTableView2;
  end;

  if FcxGridView.Controller.SelectedRowCount = 0 then begin
    Application.MessageBox('Нет выделенных строк!', 'Внимание', MB_OK or MB_ICONINFORMATION);
    Exit;
  end;

  Screen.Cursor := crHourglass;
  SP := TADOStoredProc.Create(nil);
  SP.Connection := fmMain.Lis;
  SP.ProcedureName := 'sp_fact_inc_bargain_update;1';
  SP.Parameters.Refresh;
  try
    for i := 0 to FcxGridView.Controller.SelectedRowCount - 1 do begin
      SP.Close;
      SP.Parameters.Refresh;
      SP.Parameters.ParamByName('@bargain_id').Value := Fbargain_id;
      SP.Parameters.ParamByName('@str_shaping_rate_id').Value := Fstr_shaping_rate_id;
      SP.Parameters.ParamByName('@fact_inc_id').Value := FcxGridView.Controller.SelectedRows[i].Values[FcxGridView.GetColumnByFieldName('fact_inc_id').Index];
      SP.ExecProc;
    end;
  except
    on E: Exception do begin
      Screen.Cursor := crDefault
    end;
  end;

  SP.Free;
  ReCalc();

  Screen.Cursor := crDefault;
end;

procedure TfmAgreeFactInc.N2Click(Sender: TObject);
var i : integer;
   SP : TADOStoredProc;
begin
  Screen.Cursor := crHourglass;

  try
    /// Все делаем через ХП
    ///  - проверки внутри ХП
    SP := TADOStoredProc.Create(nil);
    SP.Connection := fmMain.Lis;
    SP.ProcedureName := 'sp_fact_inc_bargain_update;1';
    SP.Parameters.Refresh;

    case TComponent(Sender).Tag of
      1: begin // Удалить запись ЦФТО (отмеченные)
        for i := 0 to cxGrid1DBBandedTableView1.Controller.SelectedRowCount - 1 do begin
          SP.Close;
          SP.Parameters.Refresh;
          SP.Parameters.ParamByName('@bargain_id').Value := NULL;
          SP.Parameters.ParamByName('@str_shaping_rate_id').Value := NULL;
          SP.Parameters.ParamByName('@fact_inc_id').Value := cxGrid1DBBandedTableView1.Controller.SelectedRows[i].Values[cxGrid1DBBandedTableView1fact_inc_id.Index];
          SP.ExecProc;
        end;
      end;

      2: begin // Удалить лишние ЦФТО
        SP_AgreeFactInc_Sverka.First;
        while not SP_AgreeFactInc_Sverka.Eof do begin
          if (SP_AgreeFactInc_Sverka.FieldByName(str_fact[Ftype_str]+'_F').IsNull) AND (not SP_AgreeFactInc_Sverka.FieldByName(str_fact[Ftype_str]+'_Z').IsNull) then begin
            SP.Close;
            SP.Parameters.Refresh;
            SP.Parameters.ParamByName('@bargain_id').Value := NULL;
            SP.Parameters.ParamByName('@shaping_rate_id').Value := NULL;
            SP.Parameters.ParamByName('@fact_inc_id').Value := cxGrid1DBBandedTableView1fact_inc_id.DataBinding.Field.AsInteger;
            SP.ExecProc;
          end;
          SP_AgreeFactInc_Sverka.Next;
        end;
      end;

      3: begin // Удалить весь факт ЦФТО (все)
        if Application.MessageBox('Удалить сверку с подрядчиком?', 'Внимание', MB_ICONWARNING or MB_YESNO or MB_DEFBUTTON2) = ID_YES then begin
          SP_AgreeFactInc_Sverka.First;
          while not SP_AgreeFactInc_Sverka.Eof do begin
            SP.Close;
            SP.Parameters.Refresh;
            SP.Parameters.ParamByName('@bargain_id').Value := NULL;
            SP.Parameters.ParamByName('@shaping_rate_id').Value := NULL;
            SP.Parameters.ParamByName('@fact_inc_id').Value := cxGrid1DBBandedTableView1fact_inc_id.DataBinding.Field.AsInteger;
            SP.ExecProc;
            SP_AgreeFactInc_Sverka.Next;
          end;
        end;
      end;
    end;
  except
    Screen.Cursor := crDefault;
  end; // try

  SP.Free;
  ReCalc();
  Screen.Cursor := crDefault;
end;

procedure TfmAgreeFactInc.ToolButton16Click(Sender: TObject);
begin
  ReCalc();
end;

procedure TfmAgreeFactInc.N9Click(Sender: TObject);
const array_first           : array[1..2] of string = ('1', '''1''');
var str_vagon, sql_string   : string;
        i                   : integer;
        str_type_self       : string;
        SP                  : TADOStoredProc;
        v                   : Variant;
    expeditor, month, year  : Integer;
    Q : TADOQuery;
begin

  if ShowFactIncDlg(nil, 0, Ftype_self, v) = mrOk then begin
    expeditor := v[8];  // Экспедитор
    month := v[9];      // Месяц
    year := v[10];      // Год
  end else
    Exit;

  Screen.Cursor := crHourglass;

  str_vagon := array_first[Ftype_str];
  cxGrid1DBBandedTableView1.DataController.GotoFirst;
  case Ftype_str of
    1 : begin
          if (cxGrid1DBBandedTableView1num_vagon_F.DataBinding.Field.AsString <> '') AND (cxGrid1DBBandedTableView1num_vagon_Z.DataBinding.Field.AsString = '') then
            str_vagon := cxGrid1DBBandedTableView1num_vagon_F.DataBinding.Field.AsString;
        end;
    2 : begin
          if (cxGrid1DBBandedTableView1num_konten_F.DataBinding.Field.AsString <> '') AND (cxGrid1DBBandedTableView1num_konten_Z.DataBinding.Field.AsString = '') then
            str_vagon := '''' + cxGrid1DBBandedTableView1num_konten_F.DataBinding.Field.AsString + '''';
        end;
  end;

  repeat
    cxGrid1DBBandedTableView1.DataController.GotoNext;
    case Ftype_str of
      1 : begin
            if (cxGrid1DBBandedTableView1num_vagon_F.DataBinding.Field.AsString <> '') AND (cxGrid1DBBandedTableView1num_vagon_Z.DataBinding.Field.AsString = '') then
              str_vagon := str_vagon + ',' + cxGrid1DBBandedTableView1num_vagon_F.DataBinding.Field.AsString;
          end;
      2 : begin
            if (cxGrid1DBBandedTableView1num_konten_F.DataBinding.Field.AsString <> '') AND (cxGrid1DBBandedTableView1num_konten_Z.DataBinding.Field.AsString = '') then
              str_vagon := str_vagon + ', ''' + cxGrid1DBBandedTableView1num_konten_F.DataBinding.Field.AsString + '''';
          end;
    end;
  until (cxGrid1DBBandedTableView1.DataController.IsEOF);
  cxGrid1DBBandedTableView1.DataController.GotoFirst;

  if Ftype_str = 1 then
    sql_string := 'SELECT * FROM view_fact_inc_temp WHERE (nvag IN('+str_vagon+')) '
  else
    sql_string := 'SELECT * FROM view_fact_inc_temp WHERE (nkont IN('+str_vagon+')) ';

  str_type_self := ' AND (users_group_id = ' + IntToStr(usr_pwd.user_group_id) + ')';
  str_type_self := str_type_self + ' AND (type_self = ' + IntToStr(expeditor) + ')';
  sql_string := sql_string + str_type_self;
//  sql_string := sql_string + 'AND (users_group_id = ' + IntToStr(usr_pwd.user_group_id) + ')';

  Q := TADOQuery.Create(nil);
  Q.Connection := fmMain.Lis;
  Q.SQL.Add('SELECT max(max_load_id) AS max_load_id FROM view_fact_inc_temp WHERE LEFT(max_load_id,4) =  ' + IntToStr(year) + str_type_self);
  Q.Open;

  sql_string := sql_string + ' AND (max_load_id = ' + IntToStr(Q.FieldByName('max_load_id').AsInteger)+')';
  if month > 0 then sql_string := sql_string + ' AND MONTH(dataot) = ' + IntToStr(month);
  sql_string := sql_string + ' AND YEAR(dataot) = ' + IntToStr(year);

  Q.Free;

  fmFactInc := TfmFactInc.Create(Application, True);
  fmFactInc._GetData_DBF := sql_string;
  if fmFactInc.ShowModal = mrOk then begin
    if fmFactInc.cxGrid1DBBandedTableView1.Controller.SelectedRowCount = 0 then begin
      Application.MessageBox('Нет выделенных строк!', 'Внимание', MB_OK or MB_ICONINFORMATION);
      Screen.Cursor := crDefault;
      Exit;
    end;

    Screen.Cursor := crHourglass;

    try
      SP := TADOStoredProc.Create(nil);
      SP.Connection := fmMain.Lis;
      SP.ProcedureName := 'sp_fact_inc_bargain_update;1';
      SP.Parameters.Refresh;

      for i := 0 to fmFactInc.cxGrid1DBBandedTableView1.Controller.SelectedRowCount-1 do begin
        SP.Close;
        SP.Parameters.Refresh;
        SP.Parameters.ParamByName('@bargain_id').Value := Fbargain_id;
        SP.Parameters.ParamByName('@str_shaping_rate_id').Value := Fstr_shaping_rate_id;
        SP.Parameters.ParamByName('@fact_inc_id').Value := fmFactInc.cxGrid1DBBandedTableView1.Controller.SelectedRows[i].Values[fmFactInc.cxGrid1DBBandedTableView1fact_inc_id.Index];
        SP.ExecProc;
      end;
    except
      Screen.Cursor := crDefault;
    end;

    SP.Free;
    ReCalc();
    Screen.Cursor := crDefault;
  end;

end;

procedure TfmAgreeFactInc.Excel1Click(Sender: TObject);
begin
  PrintcxGrid(cxGrid1DBBandedTableView1);
end;

procedure TfmAgreeFactInc.Excel2Click(Sender: TObject);
var exApp, exWkb, exWks : variant;
        Q               : TADOQuery;
        i               : integer;
        TmpArr          : array ['A'..'Z'] of Variant;
begin
  Screen.Cursor := crHourglass;
  ShowTextMessage('Запуск сервера автоматизации...', False);

  exApp := CreateOleObject('Excel.Application');
  exWkb := exApp.Workbooks.Add(GetDocBlob(fmMain.Lis, 4)); // 'check_ZFTO.xls'
  exWks := exWkb.WorkSheets[1];
//  exApp.Visible := True;

  exWks.Range['A2'].Value := FormatDateTime('mmmm yyyy', Query_Agree.FieldByName('date_period').AsDatetime);
  exWks.Range['H2'].Value := Query_Agree.FieldByName('node_begin_name').AsString + ' - ' + Query_Agree.FieldByName('node_end_name').AsString;
  exWks.Range['H3'].Value := Query_Agree.FieldByName('kargoETSNG_name').AsString;
  exWks.Range['H4'].Value := Query_Agree.FieldByName('firm_customer_name').AsString;
  exWks.Range['H5'].Value := GetInvoiceFromBargain(Query_Agree.Connection, Query_Agree.FieldByName('bargain_id').AsInteger);

//  cxGrid1DBBandedTableView1.Controller.SelectAll;
  cxGrid1DBBandedTableView1.DataController.DataSet.DisableControls;
  cxGrid1DBBandedTableView1.DataController.DataSet.First;
  i := 10;
  while not cxGrid1DBBandedTableView1.DataController.DataSet.Eof do begin
    ShowTextMessage('Осталось ' + IntToStr(cxGrid1DBBandedTableView1.DataController.DataSet.RecordCount - i + 10) + ' записей...', False);
    exWks.Rows[i].Copy;
    exWks.Rows[i].Insert[-4161];
    if (Ftype_str=2) AND (N12.Down) then
      exWks.Range['A' + IntToStr(i)].Value := cxGrid1DBBandedTableView1num_konten_pref_F.DataBinding.Field.Value
                                            + cxGrid1DBBandedTableView1num_konten_F.DataBinding.Field.Value
    else
      exWks.Range['A' + IntToStr(i)].Value := cxGrid1DBBandedTableView1num_vagon_F.DataBinding.Field.Value;
    exWks.Range['B' + IntToStr(i)].Value   := cxGrid1DBBandedTableView1num_document_F.DataBinding.Field.Value;
    exWks.Range['D' + IntToStr(i)].Value   := cxGrid1DBBandedTableView1fact_weight_F.DataBinding.Field.Value;
    exWks.Range['E' + IntToStr(i)].Value   := cxGrid1DBBandedTableView1kargo_capacity_F.DataBinding.Field.Value;
    exWks.Range['F' + IntToStr(i)].Value   := cxGrid1DBBandedTableView1calc_weight_F.DataBinding.Field.Value;
    exWks.Range['G' + IntToStr(i)].Value   := cxGrid1DBBandedTableView1rate_val_F.DataBinding.Field.Value;
    exWks.Range['H' + IntToStr(i)].Value   := cxGrid1DBBandedTableView1sum_F.DataBinding.Field.Value;
    exWks.Range['J' + IntToStr(i)].Value   := cxGrid1DBBandedTableView1date_otp_F.DataBinding.Field.Value;
    if (Ftype_str=2) AND (N12.Down) then
      exWks.Range['L' + IntToStr(i)].Value := cxGrid1DBBandedTableView1num_konten_pref_Z.DataBinding.Field.Value
                                            + cxGrid1DBBandedTableView1num_konten_Z.DataBinding.Field.Value
    else
      exWks.Range['L' + IntToStr(i)].Value := cxGrid1DBBandedTableView1num_vagon_Z.DataBinding.Field.Value;
    exWks.Range['M' + IntToStr(i)].Value   := cxGrid1DBBandedTableView1num_document_Z.DataBinding.Field.Value;
    exWks.Range['O' + IntToStr(i)].Value   := cxGrid1DBBandedTableView1fact_weight_Z.DataBinding.Field.Value;
    exWks.Range['P' + IntToStr(i)].Value   := cxGrid1DBBandedTableView1kargo_capacity_Z.DataBinding.Field.Value;
    exWks.Range['Q' + IntToStr(i)].Value   := cxGrid1DBBandedTableView1calc_weight_Z.DataBinding.Field.Value;
    exWks.Range['R' + IntToStr(i)].Value   := cxGrid1DBBandedTableView1rate_val_Z.DataBinding.Field.Value;
    exWks.Range['S' + IntToStr(i)].Value   := cxGrid1DBBandedTableView1sum_Z.DataBinding.Field.Value;
    exWks.Range['U' + IntToStr(i)].Value   := cxGrid1DBBandedTableView1date_otp_Z.DataBinding.Field.Value;
    exWks.Range['V' + IntToStr(i)].Value   := cxGrid1DBBandedTableView1date_pr_Z.DataBinding.Field.Value;
    exWks.Range['W' + IntToStr(i)].Value   := cxGrid1DBBandedTableView1id_uch_Z.DataBinding.Field.Value;
    exWks.Range['Y' + IntToStr(i)].Value   := cxGrid1DBBandedTableView1sto_name.DataBinding.Field.Value;
    exWks.Range['Z' + IntToStr(i)].Value   := cxGrid1DBBandedTableView1stn_name.DataBinding.Field.Value;

    cxGrid1DBBandedTableView1.DataController.DataSet.Next;
    inc(i);
  end;
//  cxGrid1DBBandedTableView1.Controller.ClearSelection;
  cxGrid1DBBandedTableView1.DataController.DataSet.First;
  cxGrid1DBBandedTableView1.DataController.DataSet.EnableControls;

  Q := TADOQuery.Create(nil);
  Q.Connection := fmMain.Lis;
  Q.SQL.Add('SELECT * FROM view_shaping_rate WHERE bargain_id = ' + IntToStr(Fbargain_id) + ' AND contract_set = ' + IntToStr(Ftype_self + 1));
  Q.Open;
  if Q.FieldByName('currency_id').AsInteger = 3 then begin
    exWks.Range['U'+IntToStr(12+SP_AgreeFactInc_Sverka.RecordCount)].Value := 'Курс:';
    exWks.Range['V'+IntToStr(12+SP_AgreeFactInc_Sverka.RecordCount)].Value := 1;
    exWks.Range['X'+IntToStr(12+SP_AgreeFactInc_Sverka.RecordCount)].Value := '=R[-1]C / RC[-2]';
  end;
  Q.Free;
  exApp.CutCopyMode := False;

  ShowTextMessage;

  exWks.Range['F'+IntToStr(11+SP_AgreeFactInc_Sverka.RecordCount) + ':F' + IntToStr(11 + SP_AgreeFactInc_Sverka.RecordCount)].Columns.AutoFit;
  exWks.Range['H'+IntToStr(11+SP_AgreeFactInc_Sverka.RecordCount) + ':H' + IntToStr(11 + SP_AgreeFactInc_Sverka.RecordCount)].Columns.AutoFit;
  exWks.Range['S'+IntToStr(11+SP_AgreeFactInc_Sverka.RecordCount) + ':S' + IntToStr(11 + SP_AgreeFactInc_Sverka.RecordCount)].Columns.AutoFit;

  exWks.Range['J'+IntToStr(9) + ':J' + IntToStr(11 + SP_AgreeFactInc_Sverka.RecordCount)].Columns.AutoFit;
  exWks.Range['U'+IntToStr(9) + ':X' + IntToStr(11 + SP_AgreeFactInc_Sverka.RecordCount)].Columns.AutoFit;

  exWks.Rows[10 + SP_AgreeFactInc_Sverka.RecordCount].delete;
  exWks.Rows[9].delete;

  exApp.Visible := True;
  exWks := null; exWkb := null; exApp := null;
  cxGrid1DBBandedTableView1.DataController.DataSource := DS_Sverka;

  Screen.Cursor := crDefault;
end;

procedure TfmAgreeFactInc.Word1Click(Sender: TObject);
var    ClientDS : TClientDataSet;
 i, fact_inc_id : integer;
begin
  if TdxBarButton(Sender).Tag = 1 then begin
    ClientDS := TClientDataSet.Create(nil);
    ClientDS.FieldDefs.Add('sum_F',            ftCurrency ); // Сумма по нашим данным
    ClientDS.FieldDefs.Add('fact_inc_id',      ftInteger  ); // ID вагона
    ClientDS.CreateDataSet;
    ClientDS.LogChanges := False;
    ClientDS.DisableControls;
    for i := 0 to cxGrid1DBBandedTableView1.DataController.GetSelectedCount - 1 do begin
      ClientDS.Append;
      ClientDS.FieldByName('sum_F').Value       := cxGrid1DBBandedTableView1.Controller.SelectedRows[i].Values[cxGrid1DBBandedTableView1sum_F.Index];
      ClientDS.FieldByName('fact_inc_id').Value := cxGrid1DBBandedTableView1.Controller.SelectedRows[i].Values[cxGrid1DBBandedTableView1fact_inc_id.Index];
      ClientDS.Post
    end;
  end;

  fact_inc_id := cxGrid1DBBandedTableView1.Controller.SelectedRows[0].Values[cxGrid1DBBandedTableView1fact_inc_id.Index];
  if SetPretension(GetStrId(cxGrid1DBBandedTableView1fact_inc_id, ','), TdxBarButton(Sender).Tag, ClientDS, fmMain.Lis, usr_pwd) then
    ReCalc();

  // фокусировка на последней строке
  TADOStoredProc(DS_Sverka.DataSet).Locate('fact_inc_id', fact_inc_id, []);
  cxGrid1DBBandedTableView1.Controller.FocusedRecord.Selected := True;

  if ClientDS <> nil then
    ClientDS.Free;
end;

procedure TfmAgreeFactInc.N14Click(Sender: TObject);
begin
  cxGrid1DBBandedTableView1.Controller.ClearSelection;
  with cxGrid1DBBandedTableView1.DataController.DataSet do begin
    First;
    while not EOF do begin
      cxGrid1DBBandedTableView1.Controller.FocusedRecord.Selected := True;
      Next;
    end;
  end;
end;

procedure TfmAgreeFactInc.N12Click(Sender: TObject);
begin
  ReCalc();
end;

procedure TfmAgreeFactInc.N17Click(Sender: TObject);
begin
  cxGrid1.Invalidate;
end;

procedure TfmAgreeFactInc.cxGrid1DBBandedTableView1CustomDrawCell(Sender: TcxCustomGridTableView; ACanvas: TcxCanvas; AViewInfo: TcxGridTableDataCellViewInfo; var ADone: Boolean);
begin
  if ((AViewInfo.GridRecord.Values[cxGrid1DBBandedTableView1free_fact.Index]) <> null) AND (AViewInfo.GridRecord.Values[cxGrid1DBBandedTableView1free_fact.Index]) then
    ACanvas.Font.Color := clRed;

  if AViewInfo.GridRecord.Selected then begin
    ACanvas.Brush.Color := clNavy;
    ACanvas.Font.Color := clWhite;
    if AViewInfo.Focused then ACanvas.Brush.Color := clBlue;
  end;
end;

procedure TfmAgreeFactInc.cxGrid1DBBandedTableView1CustomDrawColumnHeader(Sender: TcxGridTableView; ACanvas: TcxCanvas; AViewInfo: TcxGridColumnHeaderViewInfo; var ADone: Boolean);
begin
  if AViewInfo.Column.Focused then begin
    ACanvas.Brush.Color := clNavy;
    ACanvas.Font.Color := clWhite;
  end;
end;

procedure TfmAgreeFactInc.cxGrid1DBBandedTableView1FocusedItemChanged(Sender: TcxCustomGridTableView; APrevFocusedItem, AFocusedItem: TcxCustomGridTableItem);
begin
    Sender.Painter.Invalidate;
end;

procedure TfmAgreeFactInc.cxGrid1DBBandedTableView1KeyPress(Sender: TObject; var Key: Char);
begin
  if N30.Down then FilterColumnGridOnKeyPress(cxGrid1DBBandedTableView1, Key);
end;

procedure TfmAgreeFactInc.dxBarButton3Click(Sender: TObject);
begin
  cxGrid1DBBandedTableView1.Filtering.ColumnFilteredItemsList := not dxBarButton3.Down;
end;

procedure TfmAgreeFactInc.N11Click(Sender: TObject);
begin
  if cxGrid1DBBandedTableView1fact_inc_id.DataBinding.Field.AsInteger <> 0 then begin
    fmFactIncCard := TfmFactIncCard.Create(fmAgreeFactInc, SP_AgreeFactInc_Sverka);
    fmFactIncCard.ShowModal;
  end;
end;

procedure TfmAgreeFactInc.N18Click(Sender: TObject);
begin
  ReCalc();
end;

procedure TfmAgreeFactInc.N1Click(Sender: TObject);
begin
  SearchFactIncDlg('', Ftype_self);
end;

procedure TfmAgreeFactInc.RUB_to_USDClick(Sender: TObject);
begin
  USD_to_RUB.Down := False;
  ReCalc();
end;

procedure TfmAgreeFactInc.USD_to_RUBClick(Sender: TObject);
begin
  RUB_to_USD.Down := False;
  ReCalc();
end;

procedure TfmAgreeFactInc.Excel3Click(Sender: TObject);
begin
  PrintcxGrid(cxGrid1DBBandedTableView1);
end;

procedure TfmAgreeFactInc.N22Click(Sender: TObject);
var        i : integer;
         str : string;
      buffer : PWideChar;
    cxColumn : TcxGridDBBandedColumn;
     clboard : TClipboard;
begin
  cxGrid1DBBandedTableView1.Controller.SelectedRows[0].Focused := True;
  case Ftype_str of
    1 : if TMenuItem(Sender).Tag = 0 then cxColumn := cxGrid1DBBandedTableView1num_vagon_F
        else cxColumn := cxGrid1DBBandedTableView1num_vagon_Z;
    2 : if TMenuItem(Sender).Tag = 0 then cxColumn := cxGrid1DBBandedTableView1num_konten_F
        else cxColumn := cxGrid1DBBandedTableView1num_konten_Z;
  end;
  str := cxColumn.DataBinding.Field.AsString;
  for i:=1 to cxGrid1DBBandedTableView1.Controller.SelectedRowCount-1 do begin
    cxGrid1DBBandedTableView1.Controller.SelectedRows[i].Focused := True;
    str :=  str + ',' + cxColumn.DataBinding.Field.AsString;
  end;
  clboard := TClipboard.Create();
  clboard.AsText := str;
  clboard.Free;

  SearchFactIncDlg(PWideChar(str), 1);

end;

procedure TfmAgreeFactInc.N23Click(Sender: TObject);
var     i, j : integer;
      str, s : string;
      buffer : PWideChar;
    cxColumn : TcxGridDBBandedColumn;
     clboard : TClipboard;
begin
  case TMenuItem(Sender).Tag of
    0 : cxColumn := cxGrid1DBBandedTableView1num_document_F;
    1 : cxColumn := cxGrid1DBBandedTableView1num_document_Z;
  end;

  for i:=0 to cxGrid1DBBandedTableView1.Controller.SelectedRowCount-1 do begin
    cxGrid1DBBandedTableView1.Controller.SelectedRows[i].Focused := True;
    if cxColumn.DataBinding.Field.AsString <> '' then begin
      s := Copy(cxColumn.DataBinding.Field.AsString, Length(cxColumn.DataBinding.Field.AsString)-5, 6);
      while s[1] = '0' do
        Delete(s, 1, 1);
      str := str + ',' + Copy(s, Length(s)-5, 6);
    end;
  end;
  Delete(str, 1, 1);
  clboard := TClipboard.Create();
  clboard.AsText := str;
  clboard.Free;
  SearchFactIncDlg(PWideChar(str), 2);
end;

procedure TfmAgreeFactInc.N27Click(Sender: TObject);
begin
  cxGrid1DBBandedTableView1.OptionsView.GroupByBox := not cxGrid1DBBandedTableView1.OptionsView.GroupByBox;
end;

procedure TfmAgreeFactInc.N28Click(Sender: TObject);
begin
  SetdxDBGridColumns(cxGrid1DBBandedTableView1);
end;

function TfmAgreeFactInc.ShowFactIncDlg(Buffer: PChar; type_buffer, type_self: integer; var v: Variant): TModalResult;
type
  TFunc =  function(AppHandle: THandle; user_pwd: PUser_pwd; ValueList: PChar; type_buffer, type_self: integer): variant;
var
       handle : THandle;
  FFactIncDlg : TFunc;
begin
  Result := mrCancel;

  handle := LoadLibrary('Search.dll');
  @FFactIncDlg := GetProcAddress(handle, 'CreateWndFactIncDlg');
  v := FFactIncDlg(Application.Handle, usr_pwd, Buffer, type_buffer, type_self);
  FreeLibrary(handle);

  if v[0] = idOk then
    Result := mrOk;
end;

end.


