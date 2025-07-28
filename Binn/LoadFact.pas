unit LoadFact;

interface

uses
  Windows, Messages, SysUtils, Classes, Controls, Forms, Dialogs, Graphics, Default,
  StdCtrls, ExtCtrls, ComCtrls, Db, ADODB, DBClient, Menus, Variants, ImageList, ImgList,
  cxGraphics, cxControls, cxContainer, cxPropertiesStore,
  cxEdit, cxTextEdit, cxMaskEdit, cxDropDownEdit, cxLookupEdit, cxDBLookupEdit, cxDBLookupComboBox,
  cxCheckBox, cxStyles, cxCustomData, cxFilter, cxData, cxDataStorage, cxDBData,
  cxGridLevel, cxClasses, cxGridCustomView, cxGridCustomTableView, cxGridTableView, cxGridDBTableView,
  cxGrid, cxGridBandedTableView, cxGridDBBandedTableView, cxGroupBox, cxRadioGroup, cxCheckComboBox,
  cxDBCheckComboBox, cxDBExtLookupComboBox, ShlObj, cxShellCommon, cxShellComboBox, cxDBShellComboBox,
  cxLookAndFeels, cxLookAndFeelPainters, FileCtrl, cxShellListView, cxShellTreeView, cxButtonEdit,
  cxImageComboBox, cxNavigator, dxSkinsCore, dxSkinBlack, dxSkinBlue, dxSkinBlueprint, dxSkinCaramel,
  dxSkinCoffee, dxSkinDarkRoom, dxSkinDarkSide, dxSkinDevExpressDarkStyle, dxSkinDevExpressStyle,
  dxSkinFoggy, dxSkinGlassOceans, dxSkinHighContrast, dxSkiniMaginary, dxSkinLilian, dxSkinLiquidSky,
  dxSkinLondonLiquidSky, dxSkinMcSkin, dxSkinMetropolis, dxSkinMetropolisDark, dxSkinMoneyTwins,
  dxSkinOffice2007Black, dxSkinOffice2007Blue, dxSkinOffice2007Green, dxSkinOffice2007Pink,
  dxSkinOffice2007Silver, dxSkinOffice2010Black, dxSkinOffice2010Blue, dxSkinOffice2010Silver,
  dxSkinOffice2013DarkGray, dxSkinOffice2013LightGray, dxSkinOffice2013White, dxSkinOffice2016Colorful,
  dxSkinOffice2016Dark, dxSkinPumpkin, dxSkinSeven, dxSkinSevenClassic, dxSkinSharp, dxSkinSharpPlus,
  dxSkinSilver, dxSkinSpringTime, dxSkinStardust, dxSkinSummer2008, dxSkinTheAsphaltWorld,
  dxSkinsDefaultPainters, dxSkinValentine, dxSkinVisualStudio2013Blue, dxSkinVisualStudio2013Dark,
  dxSkinVisualStudio2013Light, dxSkinVS2010, dxSkinWhiteprint, dxSkinXmas2008Blue, dxSkinscxPCPainter,
  dxCore, dxCoreClasses, dxBarBuiltInMenu, cxCurrencyEdit, dxSkinsdxBarPainter, cxImageList, dxBar,
  dxSpreadSheet, dxSkinTheBezier, dxHashUtils, dxSpreadSheetCore, dxSpreadSheetCoreFormulas, dxSpreadSheetCoreHistory,
  dxSpreadSheetCoreStyles, dxSpreadSheetCoreStrs, dxSpreadSheetClasses, dxSpreadSheetContainers, dxSpreadSheetFormulas,
  dxSpreadSheetFunctions, dxSpreadSheetStyles, dxSpreadSheetGraphics, dxSpreadSheetPrinting, dxSpreadSheetTypes, dxDateRanges,
  dxSpreadSheetHyperlinks, dxSpreadSheetUtils, dxSpreadSheetFormattedTextUtils, dxScrollbarAnnotations, cxButtons, cxPC,
  dxSpreadSheetConditionalFormatting, dxSpreadSheetConditionalFormattingRules, dxCoreGraphics;


type
  TfmLoadFact = class(TForm)
    SP_SearchCod: TADOStoredProc;
    cxPropertiesStore1: TcxPropertiesStore;
    Query_FirmInfo: TADOQuery;
    DS_FirmInfo: TDataSource;
    Query_Scene: TADOQuery;
    DS_Scene: TDataSource;
    Query_SceneFact: TADOQuery;
    DS_scene_fact: TDataSource;
    Query_SceneFactfact_physic_name: TStringField;
    Query_SceneFactfact_logic_name: TStringField;
    Query_SceneFactfact_data_type: TStringField;
    Query_SceneFactset_dictionary: TWordField;
    Query_SceneFactscene_id: TIntegerField;
    Query_SceneFactscene_name: TStringField;
    Query_SceneFactfact_columns_id: TIntegerField;
    Query_SceneFactscene_fact_id: TIntegerField;
    Query_SceneFactexcel_num_column: TIntegerField;
    Query_SceneFactset_of_end: TWordField;
    Query_SceneFacttype_inf_id: TIntegerField;
    Client_ExcelRecords: TClientDataSet;
    Client_ExcelRecordsid: TAutoIncField;
    Client_ExcelRecordsAction: TIntegerField;
    Client_ExcelRecordszfto_score_table_id: TIntegerField;
    Client_ExcelRecordszfto_score_id: TIntegerField;
    Client_ExcelRecordsktgrm_text: TStringField;
    Client_ExcelRecordsdate_dep: TDateTimeField;
    Client_ExcelRecordsdate_serv: TDateTimeField;
    Client_ExcelRecordsdate_pr: TDateTimeField;
    Client_ExcelRecordscarddoctyp: TStringField;
    Client_ExcelRecordsrr_src: TSmallintField;
    Client_ExcelRecordsst_src: TIntegerField;
    Client_ExcelRecordsrr_tgt: TSmallintField;
    Client_ExcelRecordsst_tgt: TIntegerField;
    Client_ExcelRecordsnumber_doc: TStringField;
    Client_ExcelRecordsvagon_num: TStringField;
    Client_ExcelRecordscont_num: TStringField;
    Client_ExcelRecordsfr_code: TStringField;
    Client_ExcelRecordsfr_weight: TFloatField;
    Client_ExcelRecordssum_wnds_rub: TCurrencyField;
    Client_ExcelRecordsnds_rub: TCurrencyField;
    Client_ExcelRecordssum_rub: TCurrencyField;
    Client_ExcelRecordssum_wnds_usd: TCurrencyField;
    Client_ExcelRecordsnds_usd: TCurrencyField;
    Client_ExcelRecordssum_usd: TCurrencyField;
    Client_ExcelRecordsst_src_name: TStringField;
    Client_ExcelRecordsst_tgt_name: TStringField;
    Client_ExcelRecordsrr_src_name: TStringField;
    Client_ExcelRecordsrr_tgt_name: TStringField;
    Client_ExcelRecordsglobal_color: TIntegerField;
    Client_ExcelRecordsvidsoob: TStringField;
    Client_ExcelRecordstype_tr: TStringField;
    Client_ExcelRecordswaers: TStringField;
    Client_ExcelRecordsserv_code: TStringField;
    Client_ExcelRecordsinvoiceid: TIntegerField;
    dxBarManager1: TdxBarManager;
    dxBarPopupMenu1: TdxBarPopupMenu;
    dxBarButton1: TdxBarButton;
    dxBarButton3: TdxBarButton;
    cxImageList1: TcxImageList;
    dxBarPopupMenu2: TdxBarPopupMenu;
    dxBarButton4: TdxBarButton;
    dxBarButton6: TdxBarButton;
    Panel1: TPanel;
    cxButton2: TcxButton;
    cxButton3: TcxButton;
    cxPageControl1: TcxPageControl;
    cxTabSheet1: TcxTabSheet;
    cxTabSheet2: TcxTabSheet;
    Panel7: TPanel;
    Label3: TLabel;
    cxButtonEdit1: TcxButtonEdit;
    dxSpreadSheet1: TdxSpreadSheet;
    Panel4: TPanel;
    Label2: TLabel;
    Label4: TLabel;
    cxTextEdit1: TcxTextEdit;
    Panel6: TPanel;
    Label1: TLabel;
    cxLookupComboBox1: TcxLookupComboBox;
    cxCheckBox1: TcxCheckBox;
    cxCheckBox3: TcxCheckBox;
    cxCheckBox2: TcxCheckBox;
    cxGrid1: TcxGrid;
    cxGrid1DBBandedTableView1: TcxGridDBBandedTableView;
    cxGrid1DBBandedTableView1scene_id: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1scene_name: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1num_rows: TcxGridDBBandedColumn;
    cxGrid1Level1: TcxGridLevel;
    Splitter1: TSplitter;
    cxGrid2: TcxGrid;
    cxGrid2DBBandedTableView1: TcxGridDBBandedTableView;
    cxGrid2DBBandedTableView1fact_physic_name: TcxGridDBBandedColumn;
    cxGrid2DBBandedTableView1fact_logic_name: TcxGridDBBandedColumn;
    cxGrid2DBBandedTableView1fact_data_type: TcxGridDBBandedColumn;
    cxGrid2DBBandedTableView1set_dictionary: TcxGridDBBandedColumn;
    cxGrid2DBBandedTableView1scene_id: TcxGridDBBandedColumn;
    cxGrid2DBBandedTableView1scene_name: TcxGridDBBandedColumn;
    cxGrid2DBBandedTableView1fact_columns_id: TcxGridDBBandedColumn;
    cxGrid2DBBandedTableView1scene_fact_id: TcxGridDBBandedColumn;
    cxGrid2DBBandedTableView1excel_num_column: TcxGridDBBandedColumn;
    cxGrid2DBBandedTableView1set_of_end: TcxGridDBBandedColumn;
    cxGrid2Level1: TcxGridLevel;
    cxLookupComboBox2: TcxLookupComboBox;
    procedure cxGrid1DBBandedTableView1FocusedItemChanged(Sender: TcxCustomGridTableView; APrevFocusedItem,      AFocusedItem: TcxCustomGridTableItem);
    procedure cxGrid1DBBandedTableView1CustomDrawCell(Sender: TcxCustomGridTableView; ACanvas: TcxCanvas; AViewInfo: TcxGridTableDataCellViewInfo; var ADone: Boolean);
    procedure cxGrid1DBBandedTableView1CustomDrawColumnHeader(Sender: TcxGridTableView; ACanvas: TcxCanvas; AViewInfo: TcxGridColumnHeaderViewInfo; var ADone: Boolean);
    procedure cxGrid1DBBandedTableView1FocusedRecordChanged(Sender: TcxCustomGridTableView; APrevFocusedRecord, AFocusedRecord: TcxCustomGridRecord; ANewItemRecordFocusingChanged: Boolean);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure cxButtonEdit1PropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
    procedure dxSpreadSheet1ActiveSheetChanged(Sender: TObject);
    procedure Query_SceneFactAfterPost(DataSet: TDataSet);
    procedure cxGrid2DBBandedTableView1set_of_endPropertiesEditValueChanged(Sender: TObject);
    procedure dxBarButton1Click(Sender: TObject);
    procedure dxBarButton3Click(Sender: TObject);
    procedure dxBarButton4Click(Sender: TObject);
    procedure dxBarButton6Click(Sender: TObject);
    procedure cxButton2Click(Sender: TObject);
  private
    Fbargain_id         : integer;
    FSL                 : TStringList;
    Ftype_scene         : integer;
    // 0 - FACT (Загрузка факта)
    // 1 - ZFTO_SCORE (Загрузка перечней ЦФТО - в ClientDS)
    // 8 - FACT_INC (Загрузка нарастающего)
    // Прочие типы на данный момент не используются
    Ffact_inc_type_self : integer;
    Ffact_inc_type_doc  : string;

    Ffile_name : string;

    FConnection : TADOConnection;
    Fusr_pwd : PUser_pwd;

    function ConvertDataType(val: variant; data_type :string) : variant;

    procedure LoadFactInc;
    procedure SetTypeScene(type_scene : integer);
  public
    constructor Create(AOwner : TApplication; bargain_id : integer);
    procedure SetConnection(cnn : TADOConnection; usr_pwd : PUser_pwd);
    procedure LoadFromAgree(bargain_id : integer);

    procedure _LoadToFactInc(type_self : integer; type_doc : string);
  published
    property _SetTypeScene: integer write SetTypeScene;
    property _GetClientExcelRecords: TClientDataSet read Client_ExcelRecords;
    property _GetFileName: string read Ffile_name;

  end;

var
  fmLoadFact: TfmLoadFact;

implementation
  uses Raznoe, LoadFactAdd, Other, EDOXMLAct, EDOXMLUniTrDoc, DateUtils, StrUtils;

{$R *.DFM}
constructor TfmLoadFact.Create(AOwner : TApplication; bargain_id : integer);
begin
  inherited Create(AOwner);

  Screen.Cursor := crHourglass;
  cxPageControl1.ActivePageIndex := 0;

  Fbargain_id         := bargain_id;
  Ftype_scene         := 0;
  Ffact_inc_type_self := 0;
  Ffact_inc_type_doc  := '';
  Ffile_name := '';

  FSL := TStringList.Create;
  FSL.Add('float');      // 0
  FSL.Add('int');        // 1
  FSL.Add('double');     // 2
  FSL.Add('tinyint');    // 3
  FSL.Add('money');      // 4
  FSL.Add('datetime');      // 5
  FSL.Add('smalldatetime'); // 6
  FSL.Add('varchar'); // 7

  if (Fbargain_id = -9) then begin
    cxCheckBox1.Checked := False;
    cxCheckBox1.Enabled := False;
  end;

  Screen.Cursor := crDefault;

  dxSpreadSheet1.ActiveSheetAsTable.Selection.Clear;
end;

procedure TfmLoadFact.SetConnection(cnn : TADOConnection; usr_pwd : PUser_pwd);
begin
  FConnection := cnn;
  Fusr_pwd := usr_pwd;

  Query_FirmInfo.Connection := cnn;
  Query_Scene.Connection := cnn;
  Query_SceneFact.Connection := cnn;
  SP_SearchCod.Connection := cnn;

  Query_Scene.Close;
  Query_Scene.Parameters.ParamByName('users_id').Value := usr_pwd^.users_id;
  Query_Scene.Parameters.ParamByName('type_scene').Value := Ftype_scene;
  Query_Scene.Open;
  cxLookupComboBox2.EditValue := Query_Scene['scene_id'];

  Query_FirmInfo.Open;

  MonitorEventFormOpen('OPEN_FORM', self.Name, cnn, -9);
end;

procedure TfmLoadFact._LoadToFactInc(type_self : integer; type_doc : string);
begin
  // Принак загрузки Нарастающего итога
  Ftype_scene         := 8; // для отбора колонок используем тип = 8
  Ffact_inc_type_self := type_self; // Сценарий для Загрузки = Ftype_scene + Ffact_inc_type_self = 8 + Ffact_inc_type_self
  Ffact_inc_type_doc  := type_doc;

  // Выключаем не нужные компоненты
  Label1.Visible := False;
  cxLookupComboBox1.Visible := False;
  cxCheckBox1.Visible := False;
  cxCheckBox2.Visible := False;
  cxCheckBox3.Visible := False;

  Self.Caption := 'Загрузка файла (нарастающий итог)';

  // Запрос со сценариями
  Query_Scene.Close;
  Query_Scene.SQL.Clear;
  Query_Scene.SQL.Add('SELECT * FROM scene WHERE type_scene = ' + IntToStr(Ftype_scene + Ffact_inc_type_self));
  Query_Scene.Open;

  if not Query_Scene.Eof then
    cxLookupComboBox2.EditValue := Query_Scene.FieldByName('scene_id').AsInteger;

  // закрываем возможность редактирования сценариев (оставляем только админу)
//  if LeftStr(Fusr_pwd.user_name, 6) <> 'admin_' then begin
//    cxGrid1.PopupMenu := nil;
//    cxGrid1DBBandedTableView1.OptionsData.Editing := False;
//
//    cxGrid2.PopupMenu := nil;
//    cxGrid2DBBandedTableView1.OptionsData.Editing := False;
//  end;


end;

procedure TfmLoadFact.cxButton2Click(Sender: TObject);
type
  TFunc = function(AppHand: THandle; usr_pwd: PUser_pwd; type_table_cod, alias_name: string) : variant;
var //exApp, exWkb, exWks : OleVariant;
    Sheet                   : TdxSpreadSheetTableView;
    num_col_end, cnt, i, j : integer;
    sub_cod, v_f   : string;
    str_date       : TDateTime;
    SP_FactModify  : TADOStoredProc;
    Query_Currency : TADOQuery;
    v              : Variant;
    FGlobalAlias   : TFunc;
    handle         : THandle;

    set_node_begin : boolean;
    set_node_end   : boolean;

    file_name : string;
begin

  if cxButtonEdit1.EditValue = Null then begin
    Application.MessageBox(PChar('Выберите файл для загрузки !!!'), PChar('Ошибка'), MB_OK + MB_ICONERROR);
    Exit;
  end;

  // 0 - FACT (Загрузка факта)
  // 1 - ZFTO_SCORE (Загрузка перечней ЦФТО - в ClientDS)
  // 8 - FACT_INC (Загрузка нарастающего)
  case Ftype_scene of
  // 8 - FACT_INC (Загрузка нарастающего)
  8 : begin
        LoadFactInc;
      end;

  // 0 - FACT (Загрузка факта)
  0 : begin

        if Application.MessageBox(PChar('Вы точно хотите загрузить данный файл?'+#10#13+'Не будут загружены вагоны уже имеющиеся в базе'), 'Внимание', MB_OKCANCEL)=IDOK then begin
          Screen.Cursor := crHourglass;
          ShowTextMessage('Идет анализ...', False);

          // ------ проверка на признак конца -----------
          Query_SceneFact.Sort := 'set_of_end DESC';
          Query_SceneFact.First;
          if Query_SceneFact['set_of_end']=0 then begin
            Application.MessageBox('НЕ ОПРЕДЕЛЕНА КОЛОНКА ДЛЯ ПРИЗНАКА КОНЦА ФАЙЛА Excel!!!', 'ВНИМАНИЕ', MB_OK);
            ModalResult := mrNone;
            cxPageControl1.ActivePageIndex := 1;
            ShowTextMessage;
            Screen.Cursor := crDEfault;
            exit;
          end else num_col_end := Query_SceneFact['excel_num_column'];// проверка на признак конца

          // ------ проверка на ст.отпр и ст.назн -----------
//          Query_SceneFact.First;
//          while not Query_SceneFact.Eof do begin
//            if (Query_SceneFact['excel_num_column'] = 'node_begin_cod') then
//              set_node_begin := True;
//            if (Query_SceneFact['excel_num_column'] = 'node_end_cod') then
//              set_node_end := True;
//            Query_SceneFact.Next;
//          end;
//          if (not set_node_begin) OR (not set_node_end) then begin
//            Application.MessageBox('В сценарии не указаны Ст.Отпр или Ст.Назн!', 'ВНИМАНИЕ', MB_OK);
//            ModalResult := mrNone;
//            PageControl1.ActivePageIndex := 1;
//            ShowTextMessage;
//            Screen.Cursor := crDEfault;
//            exit;
//          end;


          Sheet := dxSpreadSheet1.ActiveSheetAsTable;

          try
            Query_SceneFact.First;
            while not Query_SceneFact.Eof do begin
              case FSL.IndexOf(Query_SceneFact['fact_data_type']) of
                0,2 : Sheet.Columns[Query_SceneFact['excel_num_column']-1].Style.DataFormat.FormatCode := '#,##0.00';
                1,3 : Sheet.Columns[Query_SceneFact['excel_num_column']-1].Style.DataFormat.FormatCode := '#,##0';
              end;
              Query_SceneFact.Next;
            end;

            // считаем кол-во строк загрузки
            cnt := 0;
            i := Query_Scene['num_rows'];
            while True do begin
              if (not Assigned(Sheet.Cells[i-1, num_col_end-1]))
              or (Sheet.Cells[i-1, num_col_end-1].IsEmpty)
              or (Trim(Sheet.Cells[i-1, num_col_end-1].AsString) = '') then
                break;

              cnt := cnt + 1;
              i := i + 1;
            end;
            i := Query_Scene['num_rows'];

            file_name := cxButtonEdit1.EditText;
            if file_name = '' then file_name := 'Загрузка_' + IntToStr(Fusr_pwd.users_id) + '_' + FormatDateTime('yyyymmddhhnnss', Now);

            SP_FactModify := TADOStoredProc.Create(nil);
            SP_FactModify.Connection := FConnection;
            SP_FactModify.ProcedureName := 'sp_fact_modify';

            Query_Currency := TADOQuery.Create(nil);
            Query_Currency.Connection := FConnection;
            Query_Currency.SQL.Add('SELECT * FROM currency');
            Query_Currency.Open;

            while True do begin
              // Проверка, а не пора ли заканчивать
              if (not Assigned(Sheet.Cells[i-1, num_col_end-1]))
                  or (Sheet.Cells[i-1, num_col_end-1].IsEmpty)
                  or (Trim(Sheet.Cells[i-1, num_col_end-1].AsString) = '') then begin
                Sheet := nil;
                ShowTextMessage;
                Screen.Cursor := crDefault;
                ModalResult := mrOk;
                Exit;
              end else begin

                Query_SceneFact.First;
                sub_cod := '';
                SP_FactModify.Close;
                SP_FactModify.Parameters.Refresh;

              // --- Находим дату для текущей строчки для корректного справочника
                str_date := Date;
                while not Query_SceneFact.Eof do begin
                  if (Query_SceneFact['fact_physic_name'] = 'date_from_to') OR (Query_SceneFact['fact_physic_name'] = 'datpr') then

                    if (not Assigned(Sheet.Cells[i-1, Query_SceneFact.FieldByName('excel_num_column').AsInteger-1]))
                        or (Sheet.Cells[i-1, Query_SceneFact.FieldByName('excel_num_column').AsInteger-1].IsEmpty) then begin
                      str_date := Date
                    end else begin
                      try
                        str_date := StrToDateTime( ConvertDataType(Sheet.Cells[i-1, Query_SceneFact.FieldByName('excel_num_column').AsInteger-1].AsString, Query_SceneFact['fact_data_type']));
                      except
                        str_date := Date;
                      end;
                    end;
                  Query_SceneFact.Next;
                end;
                Query_SceneFact.First;

                // --- цикл по столбцам сценария
                while not Query_SceneFact.Eof do begin
                  // Проверка наличия ячейки
                  if not Assigned(Sheet.Cells[i-1, Query_SceneFact.FieldByName('excel_num_column').AsInteger-1]) then
                    Sheet.CreateCell(i-1, Query_SceneFact.FieldByName('excel_num_column').AsInteger-1);

                  // --- если справочник или нет
                  if Query_SceneFact['set_dictionary'] = 1 then begin
                    if (Query_SceneFact['fact_physic_name'] = 'currency_id')
                        and (Assigned(Sheet.Cells[i-1, Query_SceneFact.FieldByName('excel_num_column').AsInteger-1]))
                        and (not Sheet.Cells[i-1, Query_SceneFact.FieldByName('excel_num_column').AsInteger-1].IsEmpty) then begin

                        if Query_Currency.Locate('brief_name', Sheet.Cells[i-1, Query_SceneFact.FieldByName('excel_num_column').AsInteger-1].AsVariant, []) then
                          SP_FactModify.Parameters.ParamByName('@'+Query_SceneFact['fact_physic_name']).Value := Query_Currency.FieldByName('currency_id').AsInteger
                        else if Query_Currency.Locate('currency_cod', Sheet.Cells[i-1, Query_SceneFact.FieldByName('excel_num_column').AsInteger-1].AsVariant, []) then
                          SP_FactModify.Parameters.ParamByName('@'+Query_SceneFact['fact_physic_name']).Value := Query_Currency.FieldByName('currency_id').AsInteger
                        else
                          SP_FactModify.Parameters.ParamByName('@'+Query_SceneFact['fact_physic_name']).Value := NULL;
                    end else begin
                        // -- Справочник
                        SP_SearchCod.Close;
                        SP_SearchCod.Parameters.ParamByName('@inf_obj_cod').Value := Sheet.Cells[i-1, Query_SceneFact.FieldByName('excel_num_column').AsInteger-1].AsVariant;
                        SP_SearchCod.Parameters.ParamByName('@type_inf_id').Value := Query_SceneFact.FieldByName('type_inf_id').AsInteger;
                        SP_SearchCod.Parameters.ParamByName('@date_from_to').Value := str_date;
                        SP_SearchCod.ExecProc;
                        if SP_SearchCod.Parameters.ParamByName('@inf_obj_id').Value <> -9 then begin
                          SP_FactModify.Parameters.ParamByName('@'+Query_SceneFact['fact_physic_name']).Value := SP_SearchCod.Parameters.ParamByName('@inf_obj_id').Value;
                        end else begin
                          SP_FactModify.Parameters.ParamByName('@'+Query_SceneFact['fact_physic_name']).Value := NULL;
                        end;
                    end;

                  end else begin  // --- если не справочник
                    if (Query_SceneFact['fact_physic_name'] = 'date_from_to')
                        and (Assigned(Sheet.Cells[i-1, Query_SceneFact.FieldByName('excel_num_column').AsInteger-1]))
                        and (not Sheet.Cells[i-1, Query_SceneFact.FieldByName('excel_num_column').AsInteger-1].IsEmpty) then begin

                        if ConvertDataType(Sheet.Cells[i-1, Query_SceneFact.FieldByName('excel_num_column').AsInteger-1].AsString, Query_SceneFact['fact_data_type']) <> null then
                          SP_FactModify.Parameters.ParamByName('@'+Query_SceneFact['fact_physic_name']).Value := StrToDateTime( ConvertDataType(Sheet.Cells[i-1, Query_SceneFact.FieldByName('excel_num_column').AsInteger-1].AsString, Query_SceneFact['fact_data_type']) )
                        else
                          SP_FactModify.Parameters.ParamByName('@'+Query_SceneFact['fact_physic_name']).Value := Date;

                    end else if (Query_SceneFact['fact_physic_name'] = 'datpr')
                              and (Assigned(Sheet.Cells[i-1, Query_SceneFact.FieldByName('excel_num_column').AsInteger-1]))
                              and (not Sheet.Cells[i-1, Query_SceneFact.FieldByName('excel_num_column').AsInteger-1].IsEmpty) then begin

                        if ConvertDataType(Sheet.Cells[i-1, Query_SceneFact.FieldByName('excel_num_column').AsInteger-1].AsString, Query_SceneFact['fact_data_type']) <> null then
                          SP_FactModify.Parameters.ParamByName('@'+Query_SceneFact['fact_physic_name']).Value := StrToDateTime(ConvertDataType(Sheet.Cells[i-1, Query_SceneFact.FieldByName('excel_num_column').AsInteger-1].AsString, Query_SceneFact['fact_data_type']))
                        else
                          SP_FactModify.Parameters.ParamByName('@'+Query_SceneFact['fact_physic_name']).Value := NULL;

                    end else
                      SP_FactModify.Parameters.ParamByName('@'+Query_SceneFact['fact_physic_name']).Value := ConvertDataType(Sheet.Cells[i-1, Query_SceneFact.FieldByName('excel_num_column').AsInteger-1].AsString, Query_SceneFact['fact_data_type']);
                  end;  // --- если справочник или нет

                  if Query_SceneFact['fact_physic_name'] = 'sub_cod_self' then begin
                    sub_cod := Sheet.Cells[i-1,Query_SceneFact.FieldByName('excel_num_column').AsInteger-1].AsString;
                    if (sub_cod<>'0') AND (sub_cod<>'') and (Length(sub_cod)=11) then Delete(sub_cod, 1, 1);
                    if (sub_cod<>'0') AND (sub_cod<>'') and (Length(sub_cod)=9) then sub_cod := '0'+ sub_cod;
                  end;
                  Query_SceneFact.Next;
                end;

                SP_FactModify.Parameters.ParamByName('@from_to').Value := 1;
                SP_FactModify.Parameters.ParamByName('@file_load_info').Value := iif( VarToStr(cxButtonEdit1.EditValue) = '', 'Загрузка', ExtractFileName(VarToStr(cxButtonEdit1.EditValue)));
                SP_FactModify.Parameters.ParamByName('@firm_info_id').Value :=  cxLookupComboBox1.EditValue;
                if Fbargain_id <> -9 then SP_FactModify.Parameters.ParamByName('@bargain_id').Value := Fbargain_id;
                SP_FactModify.Parameters.ParamByName('@set_main').Value := Ord(cxCheckBox1.Checked);
                if (SP_FactModify.Parameters.ParamByName('@attr_self').Value = NULL) then SP_FactModify.Parameters.ParamByName('@attr_self').Value := 0;
                SP_FactModify.Parameters.ParamByName('@set_double_vagon').Value := Ord(cxCheckBox2.Checked);
                SP_FactModify.Parameters.ParamByName('@set_update_vagon').Value := Ord(cxCheckBox3.Checked);

                try
                  SP_FactModify.ExecProc;
                except
                end;

                i := i + 1;
                ShowTextMessage('Осталось '+IntToStr(cnt-i+Query_Scene['num_rows'])+' строк...', False);
              end;
            end;  // -------- основной цикл

            SP_FactModify.Free;
            Query_Currency.Free;

            ShowTextMessage;
            Screen.Cursor := crDefault;

          except
            on E: Exception do begin
              Application.MessageBox(PChar('Ошибка. Строка №' + IntToStr(i) + '. Колонка ' + Query_SceneFact.FieldByName('fact_logic_name').AsString + #10 + E.Message), 'Внимание', MB_OK);
              //exWkb.Close(0); exApp.Quit; exWks := null; exWkb := null;
              Sheet := nil;
              ShowTextMessage;
              SP_FactModify.Free;
              Screen.Cursor := crDefault;
            end;
          end;
        end;
      end;

  // 1 - ZFTO_SCORE (Загрузка перечней ЦФТО - в ClientDS)
  1 : begin
        if Application.MessageBox(PChar('Вы точно хотите загрузить данный файл?'), 'Внимание', MB_OKCANCEL)=IDOK then begin
          Screen.Cursor := crHourglass;
          ShowTextMessage('Идет анализ...', False);

           // ------ проверка на признак конца -----------
          Query_SceneFact.Sort := 'set_of_end DESC';
          Query_SceneFact.First;
          if Query_SceneFact['set_of_end']=0 then begin
            Application.MessageBox('НЕ ОПРЕДЕЛЕНА КОЛОНКА ДЛЯ ПРИЗНАКА КОНЦА ФАЙЛА Excel!!!', 'ВНИМАНИЕ', MB_OK);
            ModalResult := mrNone;
            cxPageControl1.ActivePageIndex := 1;
            ShowTextMessage;
            Screen.Cursor := crDEfault;
            exit;
          end else num_col_end := Query_SceneFact['excel_num_column'];// проверка на признак конца

          // ---------- открытие файла для загрузки ---------------
          Sheet := dxSpreadSheet1.ActiveSheetAsTable;

          try
          Query_SceneFact.First;
          while not Query_SceneFact.Eof do begin
             case FSL.IndexOf(Query_SceneFact['fact_data_type']) of
               0,2 : Sheet.Columns[Query_SceneFact['excel_num_column']-1].Style.DataFormat.FormatCode := '#,##0.00';
               1,3 : Sheet.Columns[Query_SceneFact['excel_num_column']-1].Style.DataFormat.FormatCode := '#,##0';
             end;
            Query_SceneFact.Next;
          end;

          // считаем кол-во строк загрузки
          cnt := 0;
          i := Query_Scene['num_rows'];
          while True do begin
            if (not Assigned(Sheet.Cells[i-1, num_col_end-1]))
            or (Sheet.Cells[i-1, num_col_end-1].IsEmpty)
            or (Trim(Sheet.Cells[i-1, num_col_end-1].AsString) = '') then
              break;

            cnt := cnt + 1;
            i := i + 1;
          end;
          i := Query_Scene['num_rows'];

          while True do begin
            // Проверка, а не пора ли заканчивать
            if (not Assigned(Sheet.Cells[i-1, num_col_end-1]))
            or (Sheet.Cells[i-1, num_col_end-1].IsEmpty)
            or (Trim(Sheet.Cells[i-1, num_col_end-1].AsString) = '') then begin
              Sheet := nil;
              ShowTextMessage;
              Screen.Cursor := crDefault;
              ModalResult := mrOk;
              Exit;
            end else begin

              Client_ExcelRecords.Append;
              Query_SceneFact.First;
              sub_cod := '';

            // --- Находим дату для текущей строчки для корректного справочника
              str_date := Date;
              while not Query_SceneFact.Eof do begin
                if (Query_SceneFact['fact_physic_name'] = 'date_from_to') OR (Query_SceneFact['fact_physic_name'] = 'datpr') then

                  if (not Assigned(Sheet.Cells[i-1, Query_SceneFact.FieldByName('excel_num_column').AsInteger-1]))
                  or (Sheet.Cells[i-1, Query_SceneFact.FieldByName('excel_num_column').AsInteger-1].IsEmpty) then
                    str_date := Date
                  else
                    str_date := StrToDateTime( ConvertDataType(Sheet.Cells[i-1,Query_SceneFact.FieldByName('excel_num_column').AsInteger-1].AsString, Query_SceneFact['fact_data_type']));
                Query_SceneFact.Next;
              end;
              Query_SceneFact.First;

              // --- цикл по столбцам сценария
              while not Query_SceneFact.Eof do begin
                // Проверка наличия ячейки
                if not Assigned(Sheet.Cells[i-1, Query_SceneFact.FieldByName('excel_num_column').AsInteger-1]) then
                  Sheet.CreateCell(i-1, Query_SceneFact.FieldByName('excel_num_column').AsInteger-1);

                // --- если справочник или нет
                if Query_SceneFact['set_dictionary']=1 then begin
                  SP_SearchCod.Close;
                  SP_SearchCod.Parameters.ParamByName('@inf_obj_cod').Value := Sheet.Cells[i-1, Query_SceneFact.FieldByName('excel_num_column').AsInteger-1].AsString;
                  SP_SearchCod.Parameters.ParamByName('@type_inf_id').Value := Query_SceneFact.FieldByName('type_inf_id').AsInteger;
                  SP_SearchCod.Parameters.ParamByName('@date_from_to').Value := str_date;
                  SP_SearchCod.ExecProc;
                  if SP_SearchCod.Parameters.ParamByName('@inf_obj_id').Value <> -9 then begin
                    Client_ExcelRecords.FieldByName(Query_SceneFact.FieldByName('fact_physic_name').AsString).Value := SP_SearchCod.Parameters.ParamByName('@inf_obj_id').Value;
                  end else begin
                    Client_ExcelRecords.FieldByName(Query_SceneFact.FieldByName('fact_physic_name').AsString).Value := NULL;
                  end;
                end else begin  // --- если не справочник
                  if ((Query_SceneFact['fact_data_type'] = 'datetime') or (Query_SceneFact['fact_data_type'] = 'smalldatetime'))
                  and (Assigned(Sheet.Cells[i-1, Query_SceneFact.FieldByName('excel_num_column').AsInteger-1]))
                  and (not Sheet.Cells[i-1, Query_SceneFact.FieldByName('excel_num_column').AsInteger-1].IsEmpty) then begin

                      if StrToDateTime( ConvertDataType(Sheet.Cells[i-1, Query_SceneFact.FieldByName('excel_num_column').AsInteger-1].AsString, Query_SceneFact['fact_data_type'])) <> 0 then
                        Client_ExcelRecords.FieldByName(Query_SceneFact.FieldByName('fact_physic_name').AsString).Value := StrToDateTime( ConvertDataType(Sheet.Cells[i-1, Query_SceneFact.FieldByName('excel_num_column').AsInteger-1].AsString, Query_SceneFact['fact_data_type']) )
                      else
                        Client_ExcelRecords.FieldByName(Query_SceneFact.FieldByName('fact_physic_name').AsString).Value := Date;

                  end else
                    Client_ExcelRecords.FieldByName(Query_SceneFact.FieldByName('fact_physic_name').AsString).Value := ConvertDataType(Sheet.Cells[i-1, Query_SceneFact.FieldByName('excel_num_column').AsInteger-1].AsString, Query_SceneFact['fact_data_type']);
                end;  // --- если справочник или нет

                if Query_SceneFact['fact_physic_name'] = 'sub_cod_self' then begin
                  sub_cod := Sheet.Cells[i-1,Query_SceneFact.FieldByName('excel_num_column').AsInteger-1].AsString;
                  if (sub_cod<>'0') AND (sub_cod<>'') and (Length(sub_cod)=11) then Delete(sub_cod, 1, 1);
                  if (sub_cod<>'0') AND (sub_cod<>'') and (Length(sub_cod)=9) then sub_cod := '0'+ sub_cod;
                end;
                Query_SceneFact.Next;
              end;

              Client_ExcelRecords.Post;
              i := i + 1;
              ShowTextMessage('Осталось '+IntToStr(cnt-i+Query_Scene['num_rows'])+' строк...', False);
            end;
          end;  // -------- основной цикл

          ShowTextMessage;
          Screen.Cursor := crDefault;
          ModalResult := mrOk;
          except
            //exWkb.Close(0); exApp.Quit; exWks := null; exWkb := null;
            Sheet := nil;
            ShowTextMessage;
            Screen.Cursor := crDefault;
          end;
        end;
      end;
  end;

end;

procedure TfmLoadFact.cxButtonEdit1PropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
var file_name    : string;
    _dialog      : TOpenDialog;
    _xml_act     : EDOXMLAct.IXMLФайл;
    _xml_upd     : EDOXMLUniTrDoc.IXMLФайл;
    i, j, row    : integer;
    ln, k1, k2   : integer;
    fld, tmp_str : string;
begin
  case AButtonIndex of
    0 : begin
          if (Ftype_scene = 8) and (Ffact_inc_type_self = 8) then begin
            // НТС (загрузка XML)
            // EDOXMLAct
            _dialog := TOpenDialog.Create(nil);
            _dialog.Filter := 'Файлы XML|*.xml|Все файлы|*.*';
            if _dialog.Execute then begin
              try
                Screen.Cursor := crHourGlass;
//                ShowTextMessage('Загрузка файла', False);

                file_name := _dialog.FileName;
                cxButtonEdit1.EditValue := file_name;
                // Очистим dxSpreadSheet1
                dxSpreadSheet1.ClearAll;
                dxSpreadSheet1.AddSheet();
                dxSpreadSheet1.BeginUpdate;

                dxSpreadSheet1.ActiveSheetAsTable.CreateCell(0,  0).AsString := '№ Вагона';
                dxSpreadSheet1.ActiveSheetAsTable.CreateCell(0,  1).AsString := '№ Документа';
                dxSpreadSheet1.ActiveSheetAsTable.CreateCell(0,  2).AsString := 'Ст. отпр (Код)';
                dxSpreadSheet1.ActiveSheetAsTable.CreateCell(0,  3).AsString := 'Ст. отпр';
                dxSpreadSheet1.ActiveSheetAsTable.CreateCell(0,  4).AsString := 'Дата отпр.';
                dxSpreadSheet1.ActiveSheetAsTable.CreateCell(0,  5).AsString := 'Ст. назн. (Код)';
                dxSpreadSheet1.ActiveSheetAsTable.CreateCell(0,  6).AsString := 'Ст. назн.';
                dxSpreadSheet1.ActiveSheetAsTable.CreateCell(0,  7).AsString := 'Дата приб.';
                dxSpreadSheet1.ActiveSheetAsTable.CreateCell(0,  8).AsString := 'Груз (Код)';
                dxSpreadSheet1.ActiveSheetAsTable.CreateCell(0,  9).AsString := 'Груз';
                dxSpreadSheet1.ActiveSheetAsTable.CreateCell(0, 10).AsString := 'Расстояние';
                dxSpreadSheet1.ActiveSheetAsTable.CreateCell(0, 11).AsString := 'Ф. вес';
                dxSpreadSheet1.ActiveSheetAsTable.CreateCell(0, 12).AsString := 'Сумма без НДС';
                dxSpreadSheet1.ActiveSheetAsTable.CreateCell(0, 13).AsString := 'Сумма с НДС';
                dxSpreadSheet1.ActiveSheetAsTable.Rows[0].Style.Font.Style := [fsBold];

                if Ffact_inc_type_doc = 'XML Акт' then begin
                  // Акт
                  // Разбор  XML
                  _xml_act := EDOXMLAct.LoadФайл(file_name);
                  row := 1;
                  for i := 0 to _xml_act.Документ.СвАктИ.ОписРабот.Count - 1 do begin
                    for j := 0 to _xml_act.Документ.СвАктИ.ОписРабот[i].Count - 1 do begin

                      tmp_str := _xml_act.Документ.СвАктИ.ОписРабот[i].Работа[j].ИнфПолСтр;

                      fld := 'Номер вагона';
                      ln := Length(fld); k1 := pos(fld + ':', tmp_str); k2 := pos(';', tmp_str, k1);
                      dxSpreadSheet1.ActiveSheetAsTable.CreateCell(row,  0).AsString := AnsiReplaceStr(copy(tmp_str, k1 + ln + 2, k2 - k1 - ln - 2), #160, '');
                      fld := 'Накладная';
                      ln := Length(fld); k1 := pos(fld + ':', tmp_str); k2 := pos(';', tmp_str, k1);
                      dxSpreadSheet1.ActiveSheetAsTable.CreateCell(row,  1).AsString := copy(tmp_str, k1 + ln + 2, k2 - k1 - ln - 2);
                      fld := 'Станция отправления';
                      ln := Length(fld); k1 := pos(fld + ':', tmp_str); k2 := pos(';', tmp_str, k1);
                      dxSpreadSheet1.ActiveSheetAsTable.CreateCell(row,  2).AsString := copy(tmp_str, k2 - 7, 6);
                      dxSpreadSheet1.ActiveSheetAsTable.CreateCell(row,  3).AsString := copy(tmp_str, k1 + ln + 2, k2 - k1 - ln - 11);
                      fld := 'Дата отправления';
                      ln := Length(fld); k1 := pos(fld + ':', tmp_str); k2 := pos(';', tmp_str, k1);
                      dxSpreadSheet1.ActiveSheetAsTable.CreateCell(row,  4).AsString := copy(tmp_str, k1 + ln + 2, k2 - k1 - ln - 2);
                      fld := 'Станция назначения';
                      ln := Length(fld); k1 := pos(fld + ':', tmp_str); k2 := pos(';', tmp_str, k1);
                      dxSpreadSheet1.ActiveSheetAsTable.CreateCell(row,  5).AsString := copy(tmp_str, k2 - 7, 6);
                      dxSpreadSheet1.ActiveSheetAsTable.CreateCell(row,  6).AsString := copy(tmp_str, k1 + ln + 2, k2 - k1 - ln - 11);
                      fld := 'Дата раскредитования документа';
                      ln := Length(fld); k1 := pos(fld + ':', tmp_str); k2 := pos(';', tmp_str, k1);
                      dxSpreadSheet1.ActiveSheetAsTable.CreateCell(row,  7).AsString := copy(tmp_str, k1 + ln + 2, k2 - k1 - ln - 2);
                      fld := 'Груз';
                      ln := Length(fld); k1 := pos(fld + ':', tmp_str); k2 := pos(';', tmp_str, k1);
                      dxSpreadSheet1.ActiveSheetAsTable.CreateCell(row,  8).AsString := copy(tmp_str, k2 - 7, 6);
                      dxSpreadSheet1.ActiveSheetAsTable.CreateCell(row,  9).AsString := copy(tmp_str, k1 + ln + 2, k2 - k1 - ln - 11);
                      fld := 'Расстояние,км';
                      ln := Length(fld); k1 := pos(fld + ':', tmp_str); k2 := pos(';', tmp_str, k1);
                      dxSpreadSheet1.ActiveSheetAsTable.CreateCell(row, 10).AsString := copy(tmp_str, k1 + ln + 2, k2 - k1 - ln - 2);
                      fld := 'Масса груза нетто по накладной, т';
                      ln := Length(fld); k1 := pos(fld + ':', tmp_str); k2 := pos(';', tmp_str, k1);
                      dxSpreadSheet1.ActiveSheetAsTable.CreateCell(row, 11).AsString := copy(tmp_str, k1 + ln + 2, k2 - k1 - ln - 2);
                      dxSpreadSheet1.ActiveSheetAsTable.CreateCell(row, 12).AsString := AnsiReplaceStr(_xml_act.Документ.СвАктИ.ОписРабот[i].Работа[j].СумБезНДС, '.', FormatSettings.DecimalSeparator);
                      dxSpreadSheet1.ActiveSheetAsTable.CreateCell(row, 13).AsString := AnsiReplaceStr(_xml_act.Документ.СвАктИ.ОписРабот[i].Работа[j].СумУчНДС, '.', FormatSettings.DecimalSeparator);

                      inc(row);
                    end;
                  end;
                end else begin // Ffact_inc_type_doc = 'XML УПД'
                  // УПД
                  // Разбор XML
                  _xml_upd := EDOXMLUniTrDoc.LoadФайл(file_name);
                  row := 1;
                  for i := 0 to _xml_upd.Документ.ТаблСчФакт.СведТов.Count - 1 do begin
                    with _xml_upd.Документ.ТаблСчФакт.СведТов[i] do begin
                      for j := 0 to ИнфПолФХЖ2.Count - 1 do begin
                        if ИнфПолФХЖ2[j].Идентиф = 'Номер вагона' then
                          dxSpreadSheet1.ActiveSheetAsTable.CreateCell(row,  0).AsString := AnsiReplaceStr(ИнфПолФХЖ2[j].Значен, #160, '');
                        if ИнфПолФХЖ2[j].Идентиф = 'Накладная' then
                          dxSpreadSheet1.ActiveSheetAsTable.CreateCell(row,  1).AsString := ИнфПолФХЖ2[j].Значен;
                        if ИнфПолФХЖ2[j].Идентиф = 'Станция отправления' then begin
                          ln := Length(ИнфПолФХЖ2[j].Значен);
                          dxSpreadSheet1.ActiveSheetAsTable.CreateCell(row,  2).AsString := copy(ИнфПолФХЖ2[j].Значен, ln - 6, 6);
                          dxSpreadSheet1.ActiveSheetAsTable.CreateCell(row,  3).AsString := copy(ИнфПолФХЖ2[j].Значен, 1, ln - 9);
                        end;
                        if ИнфПолФХЖ2[j].Идентиф = 'Дата отправления' then
                          dxSpreadSheet1.ActiveSheetAsTable.CreateCell(row,  4).AsString := ИнфПолФХЖ2[j].Значен;
                        if ИнфПолФХЖ2[j].Идентиф = 'Станция назначения' then begin
                          ln := Length(ИнфПолФХЖ2[j].Значен);
                          dxSpreadSheet1.ActiveSheetAsTable.CreateCell(row,  5).AsString := copy(ИнфПолФХЖ2[j].Значен, ln - 6, 6);
                          dxSpreadSheet1.ActiveSheetAsTable.CreateCell(row,  6).AsString := copy(ИнфПолФХЖ2[j].Значен, 1, ln - 9);
                        end;
                        if ИнфПолФХЖ2[j].Идентиф = 'Дата раскредитования документа' then
                          dxSpreadSheet1.ActiveSheetAsTable.CreateCell(row,  7).AsString := ИнфПолФХЖ2[j].Значен;
                        if ИнфПолФХЖ2[j].Идентиф = 'Груз' then begin
                          ln := Length(ИнфПолФХЖ2[j].Значен);
                          dxSpreadSheet1.ActiveSheetAsTable.CreateCell(row,  8).AsString := copy(ИнфПолФХЖ2[j].Значен, ln - 6, 6);
                          dxSpreadSheet1.ActiveSheetAsTable.CreateCell(row,  9).AsString := copy(ИнфПолФХЖ2[j].Значен, 1, ln - 9);
                        end;
                        if ИнфПолФХЖ2[j].Идентиф = 'Расстояние,км' then
                          dxSpreadSheet1.ActiveSheetAsTable.CreateCell(row, 10).AsString := ИнфПолФХЖ2[j].Значен;
                        if ИнфПолФХЖ2[j].Идентиф = 'Масса груза нетто по накладной, т' then
                          dxSpreadSheet1.ActiveSheetAsTable.CreateCell(row, 11).AsString := ИнфПолФХЖ2[j].Значен;
                      end;

                      dxSpreadSheet1.ActiveSheetAsTable.CreateCell(row, 12).AsString := AnsiReplaceStr(СтТовБезНДС, '.', FormatSettings.DecimalSeparator);
                      dxSpreadSheet1.ActiveSheetAsTable.CreateCell(row, 13).AsString := AnsiReplaceStr(СтТовУчНал, '.', FormatSettings.DecimalSeparator);

                      inc(row);
                    end;
                  end;
                end;

                _dialog.Free;
                dxSpreadSheet1.EndUpdate;
                dxSpreadSheet1ActiveSheetChanged(dxSpreadSheet1);
                Screen.Cursor := Cursor;
              except
                on E: Exception do begin
                  Application.MessageBox(PWideChar('Ошибка загрузки XML:'#10 + e.Message), 'Ошибка', MB_ICONERROR or MB_OK);
                  cxButtonEdit1.EditValue := null;
                  dxSpreadSheet1.ClearAll;
                  dxSpreadSheet1.EndUpdate;
                  Screen.Cursor:=Cursor;
                end;
              end;
            end;
          end else begin
            // Загрузка Excel
            _dialog := TOpenDialog.Create(nil);
            _dialog.Filter := 'Файлы Excel (xls, xlsx, csv)|*.xls; *.xlsx; *.csv|Все файлы|*.*';
            if _dialog.Execute then begin
              try
                Screen.Cursor := crHourGlass;
                file_name := _dialog.FileName;
                cxButtonEdit1.EditValue := file_name;
                dxSpreadSheet1.LoadFromFile(file_name);
                _dialog.Free;
                dxSpreadSheet1ActiveSheetChanged(dxSpreadSheet1);
                Screen.Cursor := Cursor;
              except
                Application.MessageBox('Ошибка соединения с файлом MS Excel!', 'Ошибка', MB_ICONERROR or MB_OK);
                cxButtonEdit1.EditValue := null;
                dxSpreadSheet1.ClearAll;
                Screen.Cursor:=Cursor
              end;
            end;
          end;
        end;

    1 : begin
          cxButtonEdit1.EditValue := null;
          dxSpreadSheet1.ClearAll;
        end;
  end;
end;

procedure TfmLoadFact.cxGrid1DBBandedTableView1CustomDrawCell(Sender: TcxCustomGridTableView; ACanvas: TcxCanvas;AViewInfo: TcxGridTableDataCellViewInfo; var ADone: Boolean);
begin
  if AViewInfo.GridRecord.Selected then begin
    ACanvas.Brush.Color := clNavy;
    ACanvas.Font.Color := clWhite;
    if AViewInfo.Focused then ACanvas.Brush.Color := clBlue;
  end;
end;

procedure TfmLoadFact.cxGrid1DBBandedTableView1CustomDrawColumnHeader(Sender: TcxGridTableView; ACanvas: TcxCanvas;  AViewInfo: TcxGridColumnHeaderViewInfo; var ADone: Boolean);
begin
  if AViewInfo.Column.Focused then begin
    ACanvas.Brush.Color := clNavy;
    ACanvas.Font.Color := clWhite;
  end;
end;

procedure TfmLoadFact.cxGrid1DBBandedTableView1FocusedItemChanged(Sender: TcxCustomGridTableView; APrevFocusedItem, AFocusedItem: TcxCustomGridTableItem);
begin
  Sender.Painter.Invalidate;
end;

procedure TfmLoadFact.cxGrid1DBBandedTableView1FocusedRecordChanged(Sender: TcxCustomGridTableView; APrevFocusedRecord, AFocusedRecord: TcxCustomGridRecord; ANewItemRecordFocusingChanged: Boolean);
begin
  cxGrid1DBBandedTableView1.Controller.FocusedColumn.Options.Editing := False;
  cxGrid1DBBandedTableView1.Painter.Invalidate;
  Screen.Cursor := crHourglass;
  try
    begin
      Query_SceneFact.Close;
      Query_SceneFact.Parameters.ParamByName('scene_id').Value := Query_Scene.FieldByName('scene_id').AsInteger;
      Query_SceneFact.Open;

      dxSpreadSheet1ActiveSheetChanged(dxSpreadSheet1);
    end;
  finally
    Screen.Cursor := crDefault;
  end;
end;

procedure TfmLoadFact.cxGrid2DBBandedTableView1set_of_endPropertiesEditValueChanged(Sender: TObject);
begin
  Query_SceneFact.Post;
end;

procedure TfmLoadFact.dxBarButton1Click(Sender: TObject);
var scene_name : string;
    SP_SceneModify : TADOStoredProc;
begin
  if InputQuery('Сценарий', 'Введите наименование ', scene_name) then begin
    Screen.Cursor := crHourglass;

    SP_SceneModify := TADOStoredProc.Create(nil);
    SP_SceneModify.Connection := FConnection;
    SP_SceneModify.ProcedureName := 'sp_scene_modify;1';
    SP_SceneModify.Parameters.Refresh;

    SP_SceneModify.Parameters.ParamByName('@type_action').Value := 0;
    SP_SceneModify.Parameters.ParamByName('@scene_id').Value := null;
    SP_SceneModify.Parameters.ParamByName('@scene_name').Value := scene_name;
    SP_SceneModify.Parameters.ParamByName('@num_rows').Value := 2;
    SP_SceneModify.Parameters.ParamByName('@type_scene').Value := Ftype_scene + Ffact_inc_type_self;
    try
      SP_SceneModify.ExecProc;
      if SP_SceneModify.Parameters.ParamByName('@scene_id').Value = -9 then Application.MessageBox('Невозможно добавить сценарий.', 'Внимание', MB_OK);
    except
    end;
    RefreshQueryGrid(cxGrid1DBBandedTableView1, 'scene_id',  SP_SceneModify.Parameters.ParamByName('@scene_id').Value);
    SP_SceneModify.Free;

    Screen.Cursor := crDefault;
  end;
end;

procedure TfmLoadFact.dxBarButton3Click(Sender: TObject);
var SP_SceneModify : TADOStoredProc;
begin
  if Application.MessageBox(PChar('Вы точно уверены, что хотите удалить сценарий: ' + cxGrid1DBBandedTableView1scene_name.DataBinding.Field.AsString +' ?'), 'Внимание', MB_OKCANCEL) = ID_OK then begin
    Screen.Cursor := crHourglass;

    SP_SceneModify := TADOStoredProc.Create(nil);
    SP_SceneModify.Connection := FConnection;
    SP_SceneModify.ProcedureName := 'sp_scene_modify;1';
    SP_SceneModify.Parameters.Refresh;

    SP_SceneModify.Parameters.ParamByName('@scene_id').Value := cxGrid1DBBandedTableView1scene_id.DataBinding.Field.AsInteger;
    SP_SceneModify.Parameters.ParamByName('@type_action').Value := 2;
    try
      SP_SceneModify.ExecProc;
      if SP_SceneModify.Parameters.ParamByName('@scene_id').Value = -9 then Application.MessageBox('Удалить сценарий не возможно!','ВНИМАНИЕ',MB_OK);
    except
    end;
    SP_SceneModify.Free;

    RefreshQueryGrid(cxGrid1DBBandedTableView1, 'scene_id');
    Screen.Cursor := crDefault;
  end;
end;

procedure TfmLoadFact.dxBarButton4Click(Sender: TObject);
var i, max_excel_num_column : integer;
                          Q : TADOQuery;
begin
  fmLoadFactAdd := TfmLoadFactAdd.Create(Application, Ftype_scene, FConnection);
  if fmLoadFactAdd.ShowModal = mrOk then begin
    if fmLoadFactAdd.cxGrid1DBBandedTableView1.Controller.SelectedRowCount = 0 then begin
      Application.MessageBox('Нет выделенных строк !','Внимание', MB_OK);
      ModalResult := mrNone;
    end;

    Q := TADOQuery.Create(nil);
    Q.Connection := FConnection;

    for i := 0 to fmLoadFactAdd.cxGrid1DBBandedTableView1.Controller.SelectedRowCount - 1 do begin
      Q.Close;
      Q.SQL.Clear;
      Q.SQL.Add('SELECT count(*) AS cnt FROM scene_fact_columns WHERE scene_id='+IntToStr(Query_Scene['scene_id'])+' AND scene_fact_id='+IntToStr(fmLoadFactAdd.cxGrid1DBBandedTableView1.Controller.SelectedRows[i].Values[fmLoadFactAdd.cxGrid1DBBandedTableView1scene_fact_id.Index]));
      Q.Open;
      if Q.FieldByName('cnt').AsInteger = 0 then begin
        Q.Close;
        Q.SQL.Clear;
        Q.SQL.Add('SELECT MAX(excel_num_column) AS max_num FROM scene_fact_columns WHERE scene_id='+IntToStr(Query_Scene['scene_id']));
        Q.Open;
        max_excel_num_column := Q.FieldByName('max_num').AsInteger + 1;

        Q.Close;
        Q.SQL.Clear;
        Q.SQL.Add('INSERT scene_fact_columns(scene_id, scene_fact_id, excel_num_column) VALUES('+IntToStr(Query_Scene['scene_id'])+','+IntToStr(fmLoadFactAdd.cxGrid1DBBandedTableView1.Controller.SelectedRows[i].Values[fmLoadFactAdd.cxGrid1DBBandedTableView1scene_fact_id.Index])+', '+IntToStr(max_excel_num_column)+')');
        Q.ExecSQL;
      end;
    end;
    Q.Free;

    RefreshQueryGrid(cxGrid2DBBandedTableView1, 'fact_columns_id');
  end;
end;

procedure TfmLoadFact.dxBarButton6Click(Sender: TObject);
var Q : TADOQuery;
begin
  if Application.MessageBox(PChar('Вы точно хотите удалить колонку: ' + cxGrid2DBBandedTableView1fact_logic_name.DataBinding.Field.AsString + ' ?'),'Внимание', MB_OKCANCEL)=IDOK then begin
    Q := TADOQuery.Create(nil);
    Q.Connection := FConnection;

    Q.Close;
    Q.SQL.Clear;
    Q.SQL.Add('DELETE scene_fact_columns WHERE fact_columns_id='+IntToStr(cxGrid2DBBandedTableView1fact_columns_id.DataBinding.Field.AsInteger));
    Q.ExecSQL;

    Q.Free;
    RefreshQueryGrid(cxGrid2DBBandedTableView1, 'fact_columns_id');
  end;
end;

procedure TfmLoadFact.dxSpreadSheet1ActiveSheetChanged(Sender: TObject);
begin
  if not Assigned(dxSpreadSheet1.ActiveSheetAsTable) then
    exit;

  if  Assigned(cxTextEdit1) then
    cxTextEdit1.EditValue := dxSpreadSheet1.ActiveSheet.Caption;

  // Выделение в соответсвии со сценарием
  dxSpreadSheet1.ActiveSheetAsTable.Selection.Clear;
  if Query_Scene <> nil then
    if (not Query_Scene.Eof) and (Query_Scene['num_rows'] <> null) then begin

      Query_SceneFact.First;
      while not Query_SceneFact.Eof do begin
        dxSpreadSheet1.ActiveSheetAsTable.Selection.SelectColumns(Query_SceneFact['excel_num_column']-1, Query_SceneFact['excel_num_column']-1, [ssCtrl]);
        Query_SceneFact.Next;
      end;
      Query_SceneFact.First;

      dxSpreadSheet1.ActiveSheetAsTable.Selection.SelectRows(Query_Scene['num_rows']-1, Query_Scene['num_rows']-1, [ssCtrl]);
    end;

end;

procedure TfmLoadFact.LoadFromAgree(bargain_id : integer);
var Q : TADOQuery;
begin
  Q := TADOQuery.Create(nil);
  Q.Connection := FConnection;
  Q.SQL.Add('SELECT firm_customer FROM view_bargain WHERE bargain_id = :bargain_id');
  Q.Parameters.ParamByName('bargain_id').Value := bargain_id;
  Q.Open;
  cxLookupComboBox1.EditValue := Q['firm_customer'];
  Q.Free;
end;


procedure TfmLoadFact.FormClose(Sender: TObject; var Action: TCloseAction);
begin
//  Query_Scene.Refresh;
  FSL.Free;
  Action := caFree;
end;

procedure TfmLoadFact.LoadFactInc;
var //exApp, exWkb, exWks     : OleVariant;
    Sheet                   : TdxSpreadSheetTableView;
    num_col_end, i, cnt, j  : integer;
    name_col                : string;
    prepare_value           : string;
    value_col               : Variant;
    v_int                   : integer;
    v_float                 : Extended;
    v_date                  : TDateTime;
    file_name_dbf           : Variant;
    s : string;
    n : integer;

    Q : TADOQuery;
    SP  : TADOStoredProc;
    Param : TParameter;
begin
  // Зардербаним XLS
  if Application.MessageBox(PChar('Вы точно хотите загрузить данный файл?'), 'Внимание', MB_OKCANCEL)=IDOK then begin
    Screen.Cursor := crHourglass;
    ModalResult := mrNone;
    ShowTextMessage('Идет анализ...', False);

    Q := TADOQuery.Create(nil);
    Q.Connection := FConnection;


     // проверка на признак конца
    Query_SceneFact.Sort := 'set_of_end DESC';
    Query_SceneFact.First;
    if Query_SceneFact['set_of_end'] = 0 then begin
      Application.MessageBox('НЕ ОПРЕДЕЛЕНА КОЛОНКА ДЛЯ ПРИЗНАКА КОНЦА ФАЙЛА Excel!!!', 'ВНИМАНИЕ', MB_OK);
      ModalResult := mrNone;
      cxPageControl1.ActivePageIndex := 1;
      ShowTextMessage;
      Screen.Cursor := crDEfault;
      exit;
    end else num_col_end := Query_SceneFact['excel_num_column'];// проверка на признак конца

//    exApp := CreateOleObject('Excel.Application');
//    exWkb := exApp.Workbooks.Open(VarToStr(cxButtonEdit1.EditValue));
//    exWkb := exApp.ActiveWorkbook;
//    exWks := exWkb.WorkSheets[ComboBox1.ItemIndex+1];
    Sheet := dxSpreadSheet1.ActiveSheetAsTable;

    try
      // считаем кол-во строк загрузки
      cnt := 0;
      i := Query_Scene['num_rows'];
      while True do begin
        if (not Assigned(Sheet.Cells[i-1, num_col_end-1])) or (Sheet.Cells[i-1, num_col_end-1].IsEmpty) then
          if (not Assigned(Sheet.Cells[i-0, num_col_end-1])) or (Sheet.Cells[i-0, num_col_end-1].IsEmpty) then
            break;

        cnt := cnt + 1;
        i := i + 1;
      end;

     // &&&&&&&&&&&&&&&& основной цикл &&&&&&&&&&&&&&&&&&&&&&&
      i := Query_Scene['num_rows'];

      file_name_dbf := ExtractFileName(cxButtonEdit1.EditText) + ' ' + cxTextEdit1.Text;
      Ffile_name := file_name_dbf;

      SP := TADOStoredProc.Create(nil);
      SP.Connection := FConnection;
      SP.ProcedureName := 'sp_FactInc_Load_PGK';
      SP.Parameters.Refresh;


      while (Assigned(Sheet.Cells[i-1, num_col_end-1])) and (Assigned(Sheet.Cells[i-0, num_col_end-1]))
            and
            ((not Sheet.Cells[i-1, num_col_end-1].IsEmpty) or (not Sheet.Cells[i-0, num_col_end-1].IsEmpty)) do begin
        // цикл по столбцам сценария

        if Sheet.Cells[i-1, num_col_end-1].AsString <> '' then begin


          for j := 0 to SP.Parameters.Count - 1 do begin
            SP.Parameters.Items[j].Value := null;
          end;

          SP.Parameters.ParamByName('@file_name_dbf').Value := file_name_dbf;
  //        SP.Parameters.ParamByName('@zfto_score_num').Value := ComboBox1.Text;
          SP.Parameters.ParamByName('@zfto_score_num').Value := dxSpreadSheet1.ActiveSheetAsTable.Caption;
          SP.Parameters.ParamByName('@type_self').Value := Ffact_inc_type_self;

          Query_SceneFact.First;
          while not Query_SceneFact.Eof do begin
            // наименование колонки
            name_col := Query_SceneFact.FieldByName('fact_physic_name').AsString;
            // значение
            prepare_value := Sheet.Cells[i-1,Query_SceneFact.FieldByName('excel_num_column').AsInteger-1].AsString;
            if prepare_value[1] = '''' then value_col := RightStr(prepare_value, Length(prepare_value) - 1)
            else value_col := prepare_value;


            //if ((name_col = 'node_begin') or (name_col = 'node_end')) and (Length(value_col) > 5) then value_col := Copy(value_col, 1, 5);

            if ((name_col = 'node_begin') or (name_col = 'node_end')) then begin

              if Length(value_col) > 8 then begin
                 s := value_col;
                 s := ReverseString(s);
                 s := LeftStr(s, 7);
                 s := ReverseString(s);
                 s := LeftStr(s, 6);
                 if TryStrToInt(s,n) then begin
                    value_col := Copy(s, 1, 5);
                 end;
              end;



              if TryStrToInt(value_col,n)  then begin
                if Length(value_col)>5 then value_col := Copy(value_col, 1, 5);
              end else begin
                Q.SQL.Clear;
                Q.SQL.Add('select top 1 inf_obj_cod_5 from view_inf_obj_node where inf_obj_name = ''' + value_col + '''  order by 1 desc');
                Q.Open;

                if Q.RecordCount > 0 then begin
                  value_col := Q.FieldByName('inf_obj_cod_5').AsString;
                end else
                  value_col := '';
              end;

            end;

            if (name_col = 'kargoETSNG')  then begin

              if Length(value_col) > 8 then begin
                 s := value_col;
                 s := ReverseString(s);
                 s := LeftStr(s, 7);
                 s := ReverseString(s);
                 s := LeftStr(s, 6);
                 if TryStrToInt(s,n) then begin
                    value_col := Copy(s, 1, 5);
                 end;
              end;

              if TryStrToInt(value_col,n)  then begin
                if Length(value_col)>5 then value_col := Copy(value_col, 1, 5);
              end else begin
                Q.SQL.Clear;
                Q.SQL.Add('select top 1 inf_obj_cod from inf_obj_etsng where inf_obj_name = ''' + value_col + '''  order by 1 desc');
                Q.Open;

                if Q.RecordCount > 0 then begin
                  value_col := Q.FieldByName('inf_obj_cod').AsString;
                  value_col := Copy(value_col, 1, 5);
                end else
                  value_col := '';
              end;

            end;


            case FSL.IndexOf(Query_SceneFact['fact_data_type']) of
              0,2,4 : begin // число
                value_col := ConvertDataType(value_col, Query_SceneFact['fact_data_type']);
                if not TryStrToFloat(value_col, v_float) then value_col := null
                else value_col := v_float;
              end;
              1,3 : begin // число - целое
                value_col := ConvertDataType(value_col, Query_SceneFact['fact_data_type']);
                if not TryStrToInt(value_col, v_int) then value_col := null
                else value_col := v_int;
              end;
              5,6 : begin // дата
                value_col := ReplaceStr(value_col, '  ', ' ');
                if TryStrToDateTime(value_col, v_date) then value_col := DateOf(v_date)
                else value_col := null;
              end;
            end;

            //ShowMessage(name_col + '(' + Query_SceneFact['fact_data_type'] + ')' + ' : ' + String(value_col));

            Param := SP.Parameters.ParamByName('@' + name_col);
            if Param <> nil then Param.Value := value_col;

            Query_SceneFact.Next;
          end;

          // Выполним ХП
          SP.ExecProc;
          file_name_dbf := SP.Parameters.ParamByName('@file_name_dbf').Value;
          SP.Close;
        end;

        i := i + 1;
        ShowTextMessage('Осталось '+IntToStr(cnt-i+Query_Scene['num_rows'])+' строк...', False);
      end;  // основной цикл

      ModalResult := mrOk;

    finally
      Sheet := nil;
      ShowTextMessage;

      Q.Free;
      SP.Free;
      Screen.Cursor := crDefault;
    end;
  end;
end;

function TfmLoadFact.ConvertDataType(val: variant; data_type: string) : variant;
begin
  case FSL.IndexOf(data_type) of
    0..4 : begin
            val := StringReplace(val, '.', FormatSettings.DecimalSeparator,[rfReplaceAll]);
            val := StringReplace(val, ',', FormatSettings.DecimalSeparator,[rfReplaceAll]);
           end;

    5, 6 : begin
            if val = '' then val := null
            else if VarToDateTime(val) = varEmpty then val := null
            else val := VarToDateTime(val);
           end;
       7 : begin

           end;
  end;
  result := val
end;

procedure TfmLoadFact.Query_SceneFactAfterPost(DataSet: TDataSet);
var rec_num : integer;
begin
  // Используем Таг как флаг необходимости редактирования
  if (DataSet.Tag = 0) and (DataSet.FieldByName('set_of_end').Value = 1) then begin
    DataSet.Tag := 1;
    DataSet.DisableControls;

    rec_num := DataSet.RecNo;

    DataSet.First;
    while not DataSet.Eof do begin
      if (DataSet.RecNo <> rec_num) and (DataSet.FieldByName('set_of_end').Value = 1) then begin
        DataSet.Edit;
        DataSet.FieldByName('set_of_end').Value := 0;
        DataSet.Post;
      end;
      DataSet.Next;
    end;
    if (0 < rec_num) and (rec_num <= DataSet.RecordCount) then
      DataSet.RecNo := rec_num;

    DataSet.EnableControls;
    DataSet.Tag := 0;
  end;
end;

procedure TfmLoadFact.SetTypeScene(type_scene : integer);
begin
  Ftype_scene         := type_scene;
  Ffact_inc_type_self := 0;     // для загруки fact_inc - своя процедура
  Ffact_inc_type_doc  := '';

  Query_Scene.Close;
  Query_Scene.Parameters.ParamByName('users_id').Value := Fusr_pwd^.users_id;
  Query_Scene.Parameters.ParamByName('type_scene').Value := Ftype_scene;
  Query_Scene.Open;
  Client_ExcelRecords.CreateDataSet;
  Client_ExcelRecords.LogChanges := False;
  Panel6.Visible := False;
end;

end.

