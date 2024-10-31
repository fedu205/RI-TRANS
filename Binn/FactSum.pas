unit FactSum;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters,
  cxStyles,
  cxCustomData, cxFilter, cxData, cxDataStorage, cxEdit, DB, cxDBData,
  cxCalendar, cxCurrencyEdit, cxCheckBox, cxGridLevel, cxGridCustomTableView,
  cxGridTableView, cxGridBandedTableView, cxGridDBBandedTableView, cxClasses,
  cxGridCustomView, cxGrid, ADODB, dxSkinsdxBarPainter, dxBar, DBClient, dxSkinsCore, dxSkinBlack, dxSkinBlue, dxSkinBlueprint, dxSkinCaramel,
  dxSkinCoffee, dxSkinDarkRoom, dxSkinDarkSide, dxSkinDevExpressDarkStyle, dxSkinDevExpressStyle, dxSkinFoggy, dxSkinGlassOceans, dxSkinHighContrast,
  dxSkiniMaginary, dxSkinLilian, dxSkinLiquidSky, dxSkinLondonLiquidSky, dxSkinMcSkin, dxSkinMetropolis, dxSkinMetropolisDark, dxSkinMoneyTwins,
  dxSkinOffice2007Black, dxSkinOffice2007Blue, dxSkinOffice2007Green, dxSkinOffice2007Pink, dxSkinOffice2007Silver, dxSkinOffice2010Black,
  dxSkinOffice2010Blue, dxSkinOffice2010Silver, dxSkinOffice2013DarkGray, dxSkinOffice2013LightGray, dxSkinOffice2013White, dxSkinPumpkin,
  dxSkinSeven, dxSkinSevenClassic, dxSkinSharp, dxSkinSharpPlus, dxSkinSilver, dxSkinSpringTime, dxSkinStardust, dxSkinSummer2008,
  dxSkinTheAsphaltWorld, dxSkinsDefaultPainters, dxSkinValentine, dxSkinVS2010, dxSkinWhiteprint, dxSkinXmas2008Blue, dxSkinscxPCPainter, cxNavigator,
  dxSkinOffice2016Colorful, dxSkinOffice2016Dark, dxSkinVisualStudio2013Blue,
  dxSkinVisualStudio2013Dark, dxSkinVisualStudio2013Light, cxPropertiesStore, dxSkinTheBezier, cxDataControllerConditionalFormattingRulesManagerDialog, dxDateRanges,
  dxSkinOffice2019Colorful;

type
  TfmFactSum = class(TForm)
    cxGrid1: TcxGrid;
    cxGrid1DBBandedTableView1: TcxGridDBBandedTableView;
    cxGrid1DBBandedTableView1fact_id: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1num_vagon: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1num_document_pref: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1num_document: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1date_from_to: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1date_ready: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1datpr: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1bargain_cod: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1firm_customer_name: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1num_konten: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1fact_weight: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1kargo_capacity: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1calc_weight: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1node_begin_name: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1node_end_name: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1node_end_SNG_name: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1node_begin_SNG_name: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1kargoETSNG_name: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1kargoGNG_name: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1state_begin_name: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1state_end_name: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1set_main: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1firm_info_name: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1file_load_info: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1date_load_file: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1etran_folder: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1doc_date_last_oper: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1bargain_id: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1payer_cod: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1claim_num: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1etran_fact_load: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1etran_date_ready: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1etran_date_departure: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1etran_date_arrive: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1etran_date_delivery: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1road_begin_name: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1road_end_name: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1etran_owner_name: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1els_cod: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1etran_date_register: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1etran_date_receiving: TcxGridDBBandedColumn;
    cxGrid1Level1: TcxGridLevel;
    SP_Fact_Sum_Get: TADOStoredProc;
    DS_Fact_Sum: TDataSource;
    dxBarManager1: TdxBarManager;
    dxBarManager1Bar1: TdxBar;
    dxBarButton1: TdxBarButton;
    cxGrid1DBBandedTableView1invoice_id: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1sum_type_id: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1sum_type_name: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1zfto_score_table_id: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1fact_sum_id: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1fact_sum_RUB: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1fact_sum_tax_RUB: TcxGridDBBandedColumn;
    dxBarButton2: TdxBarButton;
    dxBarPopupMenu1: TdxBarPopupMenu;
    dxBarButton3: TdxBarButton;
    dxBarButton4: TdxBarButton;
    dxBarSubItem1: TdxBarSubItem;
    dxBarButton5: TdxBarButton;
    dxBarButton6: TdxBarButton;
    dxBarButton7: TdxBarButton;
    cxGrid1DBBandedTableView1fact_num: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1fact_date: TcxGridDBBandedColumn;
    dxBarButton8: TdxBarButton;
    dxBarButton9: TdxBarButton;
    dxBarButton11: TdxBarButton;
    cxGrid1DBBandedTableView1etran_payer_cod: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1etran_payer_name: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1etran_carrier_cod: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1etran_carrier_name: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1etran_distance_name: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1etran_distance_node_cod: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1etran_distance_node_name: TcxGridDBBandedColumn;
    dxBarButton10: TdxBarButton;
    cxPropertiesStore1: TcxPropertiesStore;
    cxGrid1DBBandedTableView1group_name: TcxGridDBBandedColumn;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure cxGrid1DBBandedTableView1CustomDrawCell(Sender: TcxCustomGridTableView; ACanvas: TcxCanvas;  AViewInfo: TcxGridTableDataCellViewInfo; var ADone: Boolean);
    procedure cxGrid1DBBandedTableView1CustomDrawColumnHeader(Sender: TcxGridTableView; ACanvas: TcxCanvas; AViewInfo: TcxGridColumnHeaderViewInfo; var ADone: Boolean);
    procedure cxGrid1DBBandedTableView1FocusedItemChanged(Sender: TcxCustomGridTableView; APrevFocusedItem, AFocusedItem: TcxCustomGridTableItem);
    procedure cxGrid1DBBandedTableView1KeyPress(Sender: TObject; var Key: Char);
    procedure cxGrid1DBBandedTableView1DataControllerFilterChanged(Sender: TObject);
    procedure dxBarButton1Click(Sender: TObject);
    procedure dxBarButton2Click(Sender: TObject);
    procedure dxBarButton3Click(Sender: TObject);
    procedure dxBarButton4Click(Sender: TObject);
    procedure dxBarButton5Click(Sender: TObject);
    procedure dxBarButton6Click(Sender: TObject);
    procedure dxBarButton7Click(Sender: TObject);
    procedure dxBarButton8Click(Sender: TObject);
    procedure dxBarButton9Click(Sender: TObject);
    procedure dxBarButton11Click(Sender: TObject);
    procedure dxBarButton10Click(Sender: TObject);
    procedure dxBarButton12Click(Sender: TObject);
  private
    Fbargain_id     : integer;
    Fbargain_cod,
    {хранит параметры введенные пользователем для выборки данных, нам необходим для формирования запроса
    при ошибках чтобы скопировать и вставить для отладки в менеджере СУБД}
    FstrXMLClientDS : string;

    procedure SetBargainId(bargain_id: integer);
    procedure SetBargainCod(bargain_cod: string);
    procedure SetFactID(str_fact_id: string);
    procedure SetSQLFilter(ClientDS: TClientDataSet);
  public
    constructor Create(AOwner: TApplication; flag: boolean);
  published
    property _SetSQLFilter  : TClientDataSet write SetSQLFilter;
    property _SetBargainId  : integer write SetBargainId;
    property _SetBargainCod : string write SetBargainCod;
    property _SetFactID     : string write SetFactID;
  end;

var
  fmFactSum: TfmFactSum;

implementation

uses main, Raznoe, Default, ZFTOScore, Other, Filter;

{$R *.dfm}

constructor TfmFactSum.Create(AOwner: TApplication; flag: boolean);
begin
  Screen.Cursor := crHourglass;
  inherited Create(AOwner);

  if not flag then begin
    FormStyle := fsMDIChild
  end else begin
    FormStyle := fsNormal;
    dxBarButton11.Visible := ivAlways;
  end;

  Fbargain_id := -9;

  cxGrid1DBBandedTableView1bargain_cod.Styles.Content := fmMain.cxStyle_Agree_bargain_cod;
  cxGrid1DBBandedTableView1firm_customer_name.Styles.Content := fmMain.cxStyle_Agree_bargain_cod;
  cxGrid1DBBandedTableView1fact_sum_RUB.Styles.Content := fmMain.cxStyle_AgreeFactInc_Sum;
  cxGrid1DBBandedTableView1fact_sum_tax_RUB.Styles.Content := fmMain.cxStyle_AgreeFactInc_Sum;

  StoreRegistryGrid(rgLoad,'\Software\Lis1\FactSum_Grids', cxGrid1DBBandedTableView1);

  WindowState := wsMaximized;

  Caption := 'Отгрузочная информация [начисления]';
  cxGrid1DBBandedTableView1doc_date_last_oper.Visible := False;
  Repaint;

  SetUsersModuleRights(self, fmMain.Lis);

  MonitorEventFormOpen('OPEN_FORM', self.Name, fmMain.Lis, -9);

  Screen.Cursor := crDefault;
end;

procedure TfmFactSum.SetBargainId(bargain_id: integer);
begin
  Fbargain_id := bargain_id;
end;

procedure TfmFactSum.SetBargainCod(bargain_cod: string);
begin
  Fbargain_cod := bargain_cod;
end;

procedure TfmFactSum.cxGrid1DBBandedTableView1CustomDrawCell(Sender: TcxCustomGridTableView; ACanvas: TcxCanvas; AViewInfo: TcxGridTableDataCellViewInfo; var ADone: Boolean);
begin
  if (cxGrid1DBBandedTableView1doc_date_last_oper.Index = AViewInfo.Item.ID) then begin
    ACanvas.Brush.Color := clInfoBk;
    ACanvas.Font.Color  := clInfoText;
  end;

  if (cxGrid1DBBandedTableView1etran_folder.Index = AViewInfo.Item.ID) then begin
    if AViewInfo.GridRecord.Values[cxGrid1DBBandedTableView1etran_folder.Index] <> 'Заготовка'       then ACanvas.Font.Style := [fsBold];
    if AViewInfo.GridRecord.Values[cxGrid1DBBandedTableView1etran_folder.Index] = 'Не действительны' then ACanvas.Font.Color := clRed;
  end;

  if AViewInfo.GridRecord.Values[cxGrid1DBBandedTableView1etran_folder.Index] = 'Заготовка' then ACanvas.Font.Color := clGray;

  if AViewInfo.GridRecord.Selected then begin
    ACanvas.Brush.Color := clNavy;
    ACanvas.Font.Color := clWhite;
    if AViewInfo.Focused then ACanvas.Brush.Color := clBlue;
  end;
end;

procedure TfmFactSum.cxGrid1DBBandedTableView1CustomDrawColumnHeader(Sender: TcxGridTableView; ACanvas: TcxCanvas; AViewInfo: TcxGridColumnHeaderViewInfo; var ADone: Boolean);
begin
  if AViewInfo.Column.Focused then begin
    ACanvas.Brush.Color := clNavy;
    ACanvas.Font.Color := clWhite;
  end;
end;

procedure TfmFactSum.cxGrid1DBBandedTableView1DataControllerFilterChanged(Sender: TObject);
begin
  DrawcxGridColumnOnFiltered(Sender);
end;

procedure TfmFactSum.cxGrid1DBBandedTableView1FocusedItemChanged(Sender: TcxCustomGridTableView; APrevFocusedItem, AFocusedItem: TcxCustomGridTableItem);
begin
  cxGrid1DBBandedTableView1.Painter.Invalidate;
end;

procedure TfmFactSum.cxGrid1DBBandedTableView1KeyPress(Sender: TObject; var Key: Char);
begin
  FilterColumnGridOnKeyPress(cxGrid1DBBandedTableView1, Key);
end;

procedure TfmFactSum.dxBarButton10Click(Sender: TObject);
var
  FClientDS : TClientDataSet;
          i : Integer;
          s : String;
begin
  FClientDS := TClientDataSet.Create(nil);
  if Assigned(FClientDS) then begin
    FClientDS.XMLData := FstrXMLClientDS;
    for i := 0 to FClientDS.Fields.Count - 1 do begin
      if (FClientDS.FieldList.Fields[i].DataType in [ftDate, ftDateTime]) then
        s := s + #10#13 + '@' + FClientDS.FieldList.Fields[i].FieldName+#9#9+' = '+#9+
      iif(FClientDS.Fields.Fields[i].Value = Null,'Null,', '''' + FormatDateTime('yyyymmdd', FClientDS.Fields.Fields[i].AsDateTime) + ''',')

      else

      if (FClientDS.FieldList.Fields[i].DataType in [ftString, ftBlob]) then
        s := s + #10#13 + '@' + FClientDS.FieldList.Fields[i].FieldName+#9#9+' = '+#9+
      iif((FClientDS.Fields.Fields[i].Value = Null) or (FClientDS.Fields.Fields[i].AsString = ''),'Null,',
      '''' + FClientDS.Fields.Fields[i].AsString + ''',')

      else

        s := s + #10#13 + '@' + FClientDS.FieldList.Fields[i].FieldName+#9#9+' = '+#9+
      iif((FClientDS.Fields.Fields[i].Value = Null) or (FClientDS.Fields.Fields[i].AsString = ''),'Null,',
      FClientDS.Fields.Fields[i].AsString + ',');

    end;

    s := 'EXEC ' + SP_Fact_Sum_Get.ProcedureName + #10 + copy(s, 0, Length(s) - 1);

    Application.MessageBox(PChar(s), 'SQL Запрос...', MB_OK);
  end;
end;

procedure TfmFactSum.dxBarButton11Click(Sender: TObject);
var                     i : integer;
  sp_fact_sum_create_fact : TADOStoredProc;
                 set_main : boolean;
begin
  if Fbargain_id <> -9 then begin
    if Application.MessageBox(PChar('Добавить выделенные вагоны в перевозку ' + Fbargain_cod + '?'), 'Внимание', MB_YESNO or MB_ICONQUESTION)=IDYES then begin
      case Application.MessageBox('ДОБАВЛЯЕМЫЙ ФАКТ БУДЕТ ОСНОВНЫМ ?','Внимание',MB_YESNOCANCEL) of
        6 : set_main := True;  // YES
        7 : set_main := False; // NO
        2 : exit;              // CANCEL
      end;
    end else begin
      exit;
    end;
  end else begin
    set_main := False;
  end;

  sp_fact_sum_create_fact := TADOStoredProc.Create(nil);
  sp_fact_sum_create_fact.Connection := fmMain.Lis;
  sp_fact_sum_create_fact.ProcedureName := 'sp_fact_sum_create_fact';
  sp_fact_sum_create_fact.Parameters.Refresh;

  for i:=0 to cxGrid1DBBandedTableView1.Controller.SelectedRecordCount - 1 do begin
    ShowTextMessage('Осталось ' + IntToStr(cxGrid1DBBandedTableView1.Controller.SelectedRowCount - i) + ' записей...',  False);
    sp_fact_sum_create_fact.Parameters.Refresh;
    sp_fact_sum_create_fact.Parameters.ParamByName('@fact_sum_id').Value := cxGrid1DBBandedTableView1.Controller.SelectedRows[i].Values[cxGrid1DBBandedTableView1fact_sum_id.Index];
    sp_fact_sum_create_fact.Parameters.ParamByName('@bargain_id' ).Value := iif(Fbargain_id=-9, null, Fbargain_id);
    sp_fact_sum_create_fact.Parameters.ParamByName('@set_main'   ).Value := set_main;
    try
      sp_fact_sum_create_fact.ExecProc;
    except
    end;
  end;
  sp_fact_sum_create_fact.Free;
  ShowTextMessage;

end;

procedure TfmFactSum.dxBarButton12Click(Sender: TObject);
begin
  cxGrid1DBBandedTableView1.OptionsView.GroupByBox := not cxGrid1DBBandedTableView1.OptionsView.GroupByBox;
end;

procedure TfmFactSum.dxBarButton1Click(Sender: TObject);
begin
  RefreshQueryGrid(cxGrid1DBBandedTableView1, 'fact_sum_id');
end;

procedure TfmFactSum.dxBarButton2Click(Sender: TObject);
var ClientDS : TClientDataSet;
begin
  ClientDS := TClientDataSet.Create(nil);

  if ShowSearchFactSum(Application.Handle, usr_pwd, ClientDS) then begin
    fmFactSum._SetSQLFilter := ClientDS;
  end;

  ClientDS.Free;
end;

procedure TfmFactSum.dxBarButton3Click(Sender: TObject);
begin
  FindInEtranInvoice(fmMain.Lis, usr_pwd, cxGrid1DBBandedTableView1invoice_id.DataBinding.Field.AsInteger, cxGrid1DBBandedTableView1num_vagon.DataBinding.Field.AsInteger, cxGrid1DBBandedTableView1fact_id.DataBinding.Field.AsInteger);
end;

procedure TfmFactSum.dxBarButton4Click(Sender: TObject);
begin
  PrintcxGrid(cxGrid1DBBandedTableView1);
end;

procedure TfmFactSum.dxBarButton5Click(Sender: TObject);
begin
  SetdxDBGridColumns(cxGrid1DBBandedTableView1);
end;

procedure TfmFactSum.dxBarButton6Click(Sender: TObject);
begin
  cxGrid1DBBandedTableView1.OptionsView.GroupByBox := not cxGrid1DBBandedTableView1.OptionsView.GroupByBox;
end;

procedure TfmFactSum.dxBarButton7Click(Sender: TObject);
var      SP_fact_sum_modify : TADOStoredProc;
    SP_fact_sum_zfto_search : TADOStoredProc;
                          i : integer;
                          Q : TADOQuery;
begin
  SP_fact_sum_zfto_search := TADOStoredProc.Create(nil);
  SP_fact_sum_zfto_search.Connection := fmMain.Lis;
  SP_fact_sum_zfto_search.ProcedureName := 'sp_fact_sum_zfto_search';

  SP_fact_sum_modify := TADOStoredProc.Create(nil);
  SP_fact_sum_modify.Connection := fmMain.Lis;
  SP_fact_sum_modify.ProcedureName := 'sp_fact_sum_modify';

  if cxGrid1DBBandedTableView1.Controller.SelectedRowCount > 1 then begin
    Screen.Cursor := crHourglass;

    for i:=0 to cxGrid1DBBandedTableView1.Controller.SelectedRowCount -1 do begin
      SP_fact_sum_zfto_search.Parameters.Refresh;
      SP_fact_sum_zfto_search.Parameters.ParamByName('@fact_sum_id').Value := cxGrid1DBBandedTableView1.Controller.SelectedRows[i].Values[cxGrid1DBBandedTableView1fact_sum_id.Index];
      SP_fact_sum_zfto_search.Parameters.ParamByName('@zfto_score_table_id').Value := null;
      try
        SP_fact_sum_zfto_search.ExecProc;
        if SP_fact_sum_zfto_search.Parameters.ParamByName('@zfto_score_table_id').Value <> null then begin
          SP_fact_sum_modify.Parameters.Refresh;
          SP_fact_sum_modify.Parameters.ParamByName('@fact_sum_id'  ).Value := cxGrid1DBBandedTableView1.Controller.SelectedRows[i].Values[cxGrid1DBBandedTableView1fact_sum_id.Index];
          SP_fact_sum_modify.Parameters.ParamByName('@type_action'        ).Value := 4;
          SP_fact_sum_modify.Parameters.ParamByName('@zfto_score_table_id').Value := SP_fact_sum_zfto_search.Parameters.ParamByName('@zfto_score_table_id').Value;
          try
            SP_fact_sum_modify.ExecProc;
          except
          end;
        end;
      except
      end;
      ShowTextMessage('Осталось '+IntToStr(cxGrid1DBBandedTableView1.Controller.SelectedRowCount - i)+' строк...', False);
    end;

    ShowTextMessage();

    RefreshQueryGrid(cxGrid1DBBandedTableView1, 'fact_sum_id');
    Screen.Cursor := crDefault;
  end else begin
    SP_fact_sum_zfto_search.Parameters.Refresh;
    SP_fact_sum_zfto_search.Parameters.ParamByName('@fact_sum_id'  ).Value := cxGrid1DBBandedTableView1fact_sum_id.DataBinding.Field.AsInteger;
    SP_fact_sum_zfto_search.Parameters.ParamByName('@zfto_score_table_id').Value := null;
    SP_fact_sum_zfto_search.ExecProc;

    if SP_fact_sum_zfto_search.Parameters.ParamByName('@zfto_score_table_id').Value <> null then begin
      SP_fact_sum_modify.Parameters.Refresh;
      SP_fact_sum_modify.Parameters.ParamByName('@fact_sum_id'  ).Value := cxGrid1DBBandedTableView1.Controller.SelectedRows[i].Values[cxGrid1DBBandedTableView1fact_sum_id.Index];
      SP_fact_sum_modify.Parameters.ParamByName('@type_action'        ).Value := 4;
      SP_fact_sum_modify.Parameters.ParamByName('@zfto_score_table_id').Value := SP_fact_sum_zfto_search.Parameters.ParamByName('@zfto_score_table_id').Value;
      try
        SP_fact_sum_modify.ExecProc;
      except
      end;
      RefreshQueryGrid(cxGrid1DBBandedTableView1, 'fact_sum_id');
    end else begin

      Screen.Cursor := crHourGlass;
      Q := TADOQuery.Create(nil);
      Q.Connection := fmMain.Lis;
      Q.SQL.Add('SELECT	zfto_score_table_id, fact_num, fact_date, ktgrm_text, st_src_name,');
      Q.SQL.Add('       st_tgt_name, date_dep, date_serv, number_doc, vagon_num, sum_rub, serv_code');
      Q.SQL.Add('FROM	  view_ZFTO_score_table');
      Q.SQL.Add('WHERE  number_doc LIKE ''%' + cxGrid1DBBandedTableView1num_document.DataBinding.Field.AsString + '%''');
      Q.SQL.Add('       AND vagon_num LIKE ''%' + cxGrid1DBBandedTableView1num_vagon.DataBinding.Field.AsString + '%''');
      Q.Open;

      fmFilter := TfmFilter.Create(0, Q, 'zfto_score_table_id', 'fact_num', 'vagon_num');
      fmFilter._SetFindZFTO := True;
      if fmFilter.ShowModal = mrOk then begin
        SP_fact_sum_modify.Parameters.Refresh;
        SP_fact_sum_modify.Parameters.ParamByName('@fact_sum_id'        ).Value := cxGrid1DBBandedTableView1.Controller.SelectedRows[i].Values[cxGrid1DBBandedTableView1fact_sum_id.Index];
        SP_fact_sum_modify.Parameters.ParamByName('@type_action'        ).Value := 4;
        SP_fact_sum_modify.Parameters.ParamByName('@zfto_score_table_id').Value := fmFilter.GetId;
        try
          SP_fact_sum_modify.ExecProc;
        except
        end;
        RefreshQueryGrid(cxGrid1DBBandedTableView1, 'fact_sum_id');
      end;
      Screen.Cursor := crDefault;
    end;
  end;

  SP_fact_sum_modify.Free;
  SP_fact_sum_zfto_search.Free;
end;

procedure TfmFactSum.dxBarButton8Click(Sender: TObject);
var SP_fact_sum_modify : TADOStoredProc;
                     i : integer;
begin
  if Application.MessageBox('Удалить связь с с/ф ЦФТО?', 'Внимание', MB_ICONQUESTION or MB_OKCANCEL) = ID_OK then begin
    Screen.Cursor := crHourglass;
    SP_fact_sum_modify := TADOStoredProc.Create(nil);
    SP_fact_sum_modify.Connection := fmMain.Lis;
    SP_fact_sum_modify.ProcedureName := 'sp_fact_sum_modify';


    for i:=0 to cxGrid1DBBandedTableView1.Controller.SelectedRowCount -1 do begin
      SP_fact_sum_modify.Parameters.Refresh;
      SP_fact_sum_modify.Parameters.ParamByName('@fact_sum_id'        ).Value := cxGrid1DBBandedTableView1.Controller.SelectedRows[i].Values[cxGrid1DBBandedTableView1fact_sum_id.Index];
      SP_fact_sum_modify.Parameters.ParamByName('@type_action'        ).Value := 4;
      SP_fact_sum_modify.Parameters.ParamByName('@zfto_score_table_id').Value := null;
      try
        SP_fact_sum_modify.ExecProc;
      except
      end;
      ShowTextMessage('Осталось '+IntToStr(cxGrid1DBBandedTableView1.Controller.SelectedRowCount - i)+' строк...', False);
    end;

    ShowTextMessage();

    SP_fact_sum_modify.Free;

    RefreshQueryGrid(cxGrid1DBBandedTableView1, 'fact_sum_id');
    Screen.Cursor := crDefault;
  end;
end;

procedure TfmFactSum.dxBarButton9Click(Sender: TObject);
var                i : integer;
  SP_fact_sum_modify : TADOStoredProc;
begin
  if Application.MessageBox(PChar('Вы точно уверены, что хотите удалить выделенные начисления?'+#10#13+'Начисления, созданные ЭТРАНом удаляться не будут.'),'Внимание',MB_OKCANCEL) = ID_OK then begin
      Screen.Cursor := -11;

      SP_fact_sum_modify := TADOStoredProc.Create(nil);
      SP_fact_sum_modify.Connection := fmMain.Lis;
      SP_fact_sum_modify.ProcedureName := 'SP_fact_sum_modify';

      for i := 0 to cxGrid1DBBandedTableView1.Controller.SelectedRowCount - 1 do begin

        SP_fact_sum_modify.Parameters.Refresh;
        SP_fact_sum_modify.Parameters.ParamByName('@fact_sum_id').Value := cxGrid1DBBandedTableView1.Controller.SelectedRows[i].Values[cxGrid1DBBandedTableView1fact_sum_id.Index];
        SP_fact_sum_modify.Parameters.ParamByName('@type_action').Value := 2;
        try
          SP_fact_sum_modify.ExecProc;
        except
        end;
        ShowTextMessage('Осталось '+IntToStr(cxGrid1DBBandedTableView1.Controller.SelectedRowCount - i)+' записей...', False);
      end;

      SP_fact_sum_modify.Free;
      RefreshQueryGrid(cxGrid1DBBandedTableView1, 'fact_sum_id');
      ShowTextMessage;
  end;
end;

procedure TfmFactSum.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  StoreRegistryGrid(rgSave,'\Software\Lis1\FactSum_Grids', cxGrid1DBBandedTableView1);

  RestoreGroupedColumns(cxGrid1DBBandedTableView1);

  Action := caFree;
end;

procedure TfmFactSum.SetSQLFilter(ClientDS: TClientDataSet);
begin
  Screen.Cursor := crHourGlass;
  SP_Fact_Sum_Get.Close;

  if Assigned(ClientDS) then begin
    SP_Fact_Sum_Get.Parameters.Refresh;
    SP_Fact_Sum_Get.Parameters.ParamByName('@set_date_from_to'   ).Value := ClientDS.FieldByName('set_date_from_to').Value;
    SP_Fact_Sum_Get.Parameters.ParamByName('@set_date_delivery'  ).Value := ClientDS.FieldByName('set_date_delivery').Value;
    SP_Fact_Sum_Get.Parameters.ParamByName('@date1'              ).Value := ClientDS.FieldByName('date1').Value;
    SP_Fact_Sum_Get.Parameters.ParamByName('@date2'              ).Value := ClientDS.FieldByName('date2').Value;

    SP_Fact_Sum_Get.Parameters.ParamByName('@str_num_vagon'      ).Value := iif(ClientDS.FieldByName('str_num_vagon').AsString = '', Null, ClientDS.FieldByName('str_num_vagon').AsString);
    SP_Fact_Sum_Get.Parameters.ParamByName('@str_num_document'   ).Value := iif(ClientDS.FieldByName('str_num_document').AsString = '', Null, ClientDS.FieldByName('str_num_document').AsString);
    SP_Fact_Sum_Get.Parameters.ParamByName('@num_konten'         ).Value := ClientDS.FieldByName('num_konten').Value;

    SP_Fact_Sum_Get.Parameters.ParamByName('@str_xml_reply_id'   ).Value := iif(ClientDS.FieldByName('str_xml_reply_id').AsString = '', Null, ClientDS.FieldByName('str_xml_reply_id').AsString);
    SP_Fact_Sum_Get.Parameters.ParamByName('@sub_cod_self'       ).Value := ClientDS.FieldByName('sub_cod_self').Value;
    SP_Fact_Sum_Get.Parameters.ParamByName('@firm_customer_name' ).Value := ClientDS.FieldByName('firm_customer_name').Value;
    SP_Fact_Sum_Get.Parameters.ParamByName('@bargain_cod'        ).Value := ClientDS.FieldByName('bargain_cod').Value;
    SP_Fact_Sum_Get.Parameters.ParamByName('@kexp'               ).Value := ClientDS.FieldByName('kexp').Value;
    SP_Fact_Sum_Get.Parameters.ParamByName('@set_main'           ).Value := ClientDS.FieldByName('set_main').Value;
    SP_Fact_Sum_Get.Parameters.ParamByName('@set_bargain_id'     ).Value := ClientDS.FieldByName('set_bargain_id').Value;
    SP_Fact_Sum_Get.Parameters.ParamByName('@node_begin_cod'     ).Value := ClientDS.FieldByName('node_begin_cod').Value;
    SP_Fact_Sum_Get.Parameters.ParamByName('@node_end_cod'       ).Value := ClientDS.FieldByName('node_end_cod').Value;
    SP_Fact_Sum_Get.Parameters.ParamByName('@node_begin_SNG_cod' ).Value := ClientDS.FieldByName('node_begin_SNG_cod').Value;
    SP_Fact_Sum_Get.Parameters.ParamByName('@node_end_SNG_cod'   ).Value := ClientDS.FieldByName('node_end_SNG_cod').Value;
    SP_Fact_Sum_Get.Parameters.ParamByName('@group_name'         ).Value := ClientDS.FieldByName('group_name').Value;
    SP_Fact_Sum_Get.Parameters.ParamByName('@kargoETSNG_group_id').Value := iif(ClientDS.FieldByName('kargoETSNG_group_id').AsString = '', Null, ClientDS.FieldByName('kargoETSNG_group_id').AsString);
    SP_Fact_Sum_Get.Parameters.ParamByName('@kargoETSNG_cod'     ).Value := ClientDS.FieldByName('kargoETSNG_cod').Value;
    SP_Fact_Sum_Get.Parameters.ParamByName('@date_load_file'     ).Value := ClientDS.FieldByName('date_load_file').Value;
    SP_Fact_Sum_Get.Parameters.ParamByName('@users_group_id'     ).Value := ClientDS.FieldByName('users_group_id').Value;
    SP_Fact_Sum_Get.Parameters.ParamByName('@set_fact_sum'       ).Value := ClientDS.FieldByName('set_fact_sum').Value;

    SP_Fact_Sum_Get.Parameters.ParamByName('@road_begin_name'   ).Value := ClientDS.FieldByName('road_begin_name').Value;
    SP_Fact_Sum_Get.Parameters.ParamByName('@road_end_name'     ).Value := ClientDS.FieldByName('road_end_name').Value;

    SP_Fact_Sum_Get.Open;
  end;

  FstrXMLClientDS := ClientDS.XMLData;

  Screen.Cursor := crDefault;
end;

procedure TfmFactSum.SetFactID(str_fact_id: string);
begin
  SP_Fact_Sum_Get.Close;
  SP_Fact_Sum_Get.Parameters.Refresh;
  SP_Fact_Sum_Get.Parameters.ParamByName('@str_fact_id' ).Value := str_fact_id;
  SP_Fact_Sum_Get.Parameters.ParamByName('@set_fact_sum').Value := True;
  SP_Fact_Sum_Get.Open;
end;

end.

