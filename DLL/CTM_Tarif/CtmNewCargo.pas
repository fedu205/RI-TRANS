unit CtmNewCargo;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters,
  cxContainer, cxEdit, cxMaskEdit, cxSpinEdit, cxLabel, StdCtrls, cxRadioGroup,
  cxTextEdit, ExtCtrls, cxGroupBox, Buttons, cxPropertiesStore, cxStyles,
  cxCustomData, cxFilter, cxData, cxDataStorage, DB, cxDBData, cxGridLevel,
  cxGridCustomTableView, cxGridTableView, cxGridBandedTableView, Default,
  cxGridDBBandedTableView, cxClasses, cxGridCustomView, cxGrid, ADODB,
  cxPC, dxSkinsCore, dxSkinBlack, dxSkinBlue, dxSkinBlueprint, dxSkinCaramel,
  dxSkinCoffee, dxSkinDarkRoom, dxSkinDarkSide, dxSkinDevExpressDarkStyle,
  dxSkinDevExpressStyle, dxSkinFoggy, dxSkinGlassOceans, dxSkinHighContrast,
  dxSkiniMaginary, dxSkinLilian, dxSkinLiquidSky, dxSkinLondonLiquidSky,
  dxSkinMcSkin, dxSkinMetropolis, dxSkinMetropolisDark, dxSkinMoneyTwins,
  dxSkinOffice2007Black, dxSkinOffice2007Blue, dxSkinOffice2007Green,
  dxSkinOffice2007Pink, dxSkinOffice2007Silver, dxSkinOffice2010Black,
  dxSkinOffice2010Blue, dxSkinOffice2010Silver, dxSkinOffice2013DarkGray,
  dxSkinOffice2013LightGray, dxSkinOffice2013White, dxSkinPumpkin, dxSkinSeven,
  dxSkinSevenClassic, dxSkinSharp, dxSkinSharpPlus, dxSkinSilver,
  dxSkinSpringTime, dxSkinStardust, dxSkinSummer2008, dxSkinTheAsphaltWorld,
  dxSkinsDefaultPainters, dxSkinValentine, dxSkinVS2010, dxSkinWhiteprint,
  dxSkinXmas2008Blue, dxSkinscxPCPainter, dxBarBuiltInMenu, cxNavigator,
  dxSkinOffice2016Colorful, dxSkinOffice2016Dark, dxSkinVisualStudio2013Blue,
  dxSkinVisualStudio2013Dark, dxSkinVisualStudio2013Light,
  cxDataControllerConditionalFormattingRulesManagerDialog, dxSkinTheBezier, dxDateRanges;

type
  TfmCtmNewCargo = class(TForm)
    cxPropertiesStore1: TcxPropertiesStore;
    Panel2: TPanel;
    cxLabel1: TcxLabel;
    cxGroupBox3: TcxGroupBox;
    cxRadioButton3: TcxRadioButton;
    cxRadioButton4: TcxRadioButton;
    Panel4: TPanel;
    cxLabel7: TcxLabel;
    cxSpinEdit4: TcxSpinEdit;
    Query_CargoETSNG: TADOQuery;
    DS_CargoETSNG: TDataSource;
    DS_CargoGNG: TDataSource;
    Query_CargoGNG: TADOQuery;
    Panel1: TPanel;
    cxTextEdit1: TcxTextEdit;
    cxGroupBox2: TcxGroupBox;
    cxRadioButton2: TcxRadioButton;
    cxRadioButton1: TcxRadioButton;
    cxGrid1: TcxGrid;
    cxGrid1DBBandedTableView1: TcxGridDBBandedTableView;
    cxGrid1DBBandedTableView1KOD: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1NAME: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1CLASSN: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1MinNew: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1KODGNG8: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1PID: TcxGridDBBandedColumn;
    cxGrid1Level1: TcxGridLevel;
    cxPageControl1: TcxPageControl;
    cxTabSheet1: TcxTabSheet;
    cxTabSheet2: TcxTabSheet;
    Panel3: TPanel;
    cxTextEdit2: TcxTextEdit;
    cxGroupBox1: TcxGroupBox;
    cxRadioButton5: TcxRadioButton;
    cxRadioButton6: TcxRadioButton;
    cxGrid2: TcxGrid;
    cxGridDBBandedTableView1: TcxGridDBBandedTableView;
    cxGridLevel1: TcxGridLevel;
    cxGridDBBandedTableView1KOD: TcxGridDBBandedColumn;
    cxGridDBBandedTableView1NAME: TcxGridDBBandedColumn;
    cxGridDBBandedTableView1classETT: TcxGridDBBandedColumn;
    cxGridDBBandedTableView1KODETSNG: TcxGridDBBandedColumn;
    cxGridDBBandedTableView1PID: TcxGridDBBandedColumn;
    cxGridDBBandedTableView1ETNPos: TcxGridDBBandedColumn;
    Panel5: TPanel;
    Label1: TLabel;
    cxTextEdit3: TcxTextEdit;
    cxTextEdit4: TcxTextEdit;
    Panel18: TPanel;
    BitBtn_Ok: TBitBtn;
    BitBtn_Cancel: TBitBtn;
    cxPropertiesStore2: TcxPropertiesStore;
    cxGrid1DBBandedTableView1set_group: TcxGridDBBandedColumn;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure cxTextEdit1PropertiesChange(Sender: TObject);
    procedure cxGrid1DBBandedTableView1FilterOnChanged(Sender: TObject);
    procedure cxGrid1DBBandedTableView1CustomDrawCell(
      Sender: TcxCustomGridTableView; ACanvas: TcxCanvas;
      AViewInfo: TcxGridTableDataCellViewInfo; var ADone: Boolean);
    procedure cxGrid1DBBandedTableView1CustomDrawColumnHeader(
      Sender: TcxGridTableView; ACanvas: TcxCanvas;
      AViewInfo: TcxGridColumnHeaderViewInfo; var ADone: Boolean);
    procedure cxGrid1DBBandedTableView1FocusedItemChanged(
      Sender: TcxCustomGridTableView; APrevFocusedItem,
      AFocusedItem: TcxCustomGridTableItem);
    procedure cxTextEdit1KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure cxRadioButton3Click(Sender: TObject);
    procedure cxGridDBBandedTableView1FilterOnChanged(Sender: TObject);
    procedure cxGridDBBandedTableView1CustomDrawCell(
      Sender: TcxCustomGridTableView; ACanvas: TcxCanvas;
      AViewInfo: TcxGridTableDataCellViewInfo; var ADone: Boolean);
    procedure cxGridDBBandedTableView1CustomDrawColumnHeader(
      Sender: TcxGridTableView; ACanvas: TcxCanvas;
      AViewInfo: TcxGridColumnHeaderViewInfo; var ADone: Boolean);
    procedure cxGridDBBandedTableView1FocusedItemChanged(
      Sender: TcxCustomGridTableView; APrevFocusedItem,
      AFocusedItem: TcxCustomGridTableItem);
    procedure cxGridDBBandedTableView1KeyPress(Sender: TObject; var Key: Char);
    procedure cxTextEdit2PropertiesChange(Sender: TObject);
    procedure cxGrid1DBBandedTableView1DblClick(Sender: TObject);
    procedure cxTextEdit2KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure BitBtn_OkClick(Sender: TObject);
  private
    Fusr_pwd      : PUser_pwd;
    Fdate_from_to : TDateTime;

    FSend_id        : integer;
    FTableNameETSNG : string;
    FTableNameGNG   : string;

    FETSNG_cod   : string;
    FETSNG_name  : string;
    FETSNG_class : string;
    FETSNG_GNG_cod : string;

    FGNG_cod     : string;
    FGNG_name    : string;
    FGNG_class   : string;

    FWeight      : Double;

    Fset_query_full_gng : boolean;

    procedure SetSendID(send_id: integer);
    procedure OpenQueryETSNG(value  : boolean);
    procedure OpenQueryGNG  (value  : boolean);
    procedure SetWeight(weight: Double);
    procedure SetETSNGCod(etsng_cod: string);
    procedure SetGNGCod(gng_cod: string);
  public
    constructor Create(AOwner: TApplication; usr_pwd: PUser_pwd; date_from_to: TDateTime); reintroduce;
  published
    property _SetSendID: integer write SetSendID;
    property _OpenQueryETSNG: boolean write OpenQueryETSNG;
    property _OpenQueryGNG  : boolean write OpenQueryGNG;
    property _SetWeight     : Double write SetWeight;
    property _SetETSNGCod   : string write SetETSNGCod;
    property _SetGNGCod     : string write SetGNGCod;

    property _GetETSNGCod   : string read FETSNG_cod;
    property _GetETSNGName  : string read FETSNG_name;
    property _GetETSNGClass : string read FETSNG_class;
    property _GetGNGCod     : string read FGNG_cod;
    property _GetGNGName    : string read FGNG_name;
    property _GetGNGClass   : string read FGNG_class;
    property _GetWeight     : Double read FWeight;
  end;

var
  fmCtmNewCargo: TfmCtmNewCargo;

implementation

uses CtmNewMain, CtmRaznoe;

{$R *.dfm}

constructor TfmCtmNewCargo.Create(AOwner: TApplication; usr_pwd: PUser_pwd; date_from_to: TDateTime);
begin
  Screen.Cursor := crHourglass;
  inherited Create(AOwner);
  Fusr_pwd := usr_pwd;
  Fdate_from_to := date_from_to;

  FSend_id        := -9;
  FTableNameETSNG := 'ETSNG';
  FTableNameGNG   := 'GNG2007';
  Fset_query_full_gng := False;

  cxPageControl1.ActivePage := cxTabSheet1;
  cxPageControl1.HideTabs   := True;

  FETSNG_cod   := '';
  FETSNG_name  := '';
  FETSNG_class := '';
  FETSNG_GNG_cod := '';

  FGNG_cod     := '';
  FGNG_name    := '';
  FGNG_class   := '';

  SetWeight(60);

  Screen.Cursor := crDefault;
end;

procedure TfmCtmNewCargo.SetWeight(weight: Double);
begin
  FWeight := weight;
  cxSpinEdit4.EditValue := FWeight;
end;

procedure TfmCtmNewCargo.SetSendID(send_id: integer);
var Q: TADOQuery;
begin
  FSend_id := send_id;

  if FSend_id <> -9 then begin
    Q := TADOQuery.Create(nil);
    Q.Connection := fmCtmNewMain.CTMConnect;
    Q.SQL.Add('SELECT ref_book_key1, ref_book_key2 FROM CTM_REFBOOK2 WHERE ref_book_name = ''ETSelect'' AND ref_book_key1 = ''' + IntToStr(FSend_id) + '''');
    Q.Open;

    if Q.RecordCount > 0 then
      FTableNameETSNG := Q.FieldByName('ref_book_key2').AsString
    else
      FTableNameETSNG := 'ETSNG';


    Q.SQL.Clear;
    Q.SQL.Add('SELECT ref_book_key1, ref_book_key2 FROM CTM_REFBOOK2 WHERE ref_book_name = ''ETSelect'' AND ref_book_key1 = ''' + IntToStr(FSend_id) + '''');
    Q.Open;

    if Q.RecordCount > 0 then
      FTableNameETSNG := Q.FieldByName('ref_book_key2').AsString
    else
      FTableNameETSNG := 'ETSNG';

    Q.Free;
  end else
    FTableNameETSNG := 'ETSNG';
end;

procedure TfmCtmNewCargo.OpenQueryETSNG(value: boolean);
begin
  if value then begin
    Screen.Cursor := crHourGlass;
    Query_CargoETSNG.SQL.Clear;
    Query_CargoETSNG.SQL.Add('SELECT DISTINCT substring(ref_book_key1, 1, 3) sub1 INTO #etsng FROM CTM_REFBOOK2 WHERE ref_book_name = ''ETSNG'' and substring(ref_book_key1, 4, 2) <> ''00''');
    Query_CargoETSNG.SQL.Add('');
    Query_CargoETSNG.SQL.Add('SELECT');
    Query_CargoETSNG.SQL.Add('ref_book_xml.value(''(/ROW/@KOD)[1]'',''varchar(max)'') as KOD,');
    Query_CargoETSNG.SQL.Add('ref_book_xml.value(''(/ROW/@NAME)[1]'',''varchar(max)'') as NAME,');
    Query_CargoETSNG.SQL.Add('ref_book_xml.value(''(/ROW/@CLASSN)[1]'',''varchar(max)'') as CLASSN,');
    Query_CargoETSNG.SQL.Add('ref_book_xml.value(''(/ROW/@MinNew)[1]'',''varchar(max)'') as MinNew,');
    Query_CargoETSNG.SQL.Add('ref_book_xml.value(''(/ROW/@KODGNG8)[1]'',''varchar(max)'') as KODGNG8,');
    Query_CargoETSNG.SQL.Add('ref_book_xml.value(''(/ROW/@PID)[1]'',''varchar(max)'') as PID,');
    Query_CargoETSNG.SQL.Add('case when substring(ref_book_key1, 4, 2) = ''00'' then case when exists(SELECT 1 FROM #etsng WHERE #etsng.sub1 = substring(ref_book_key1, 1, 3)) then 1 else 0 end else 0 end set_group');
    Query_CargoETSNG.SQL.Add('FROM	CTM_REFBOOK2');
    Query_CargoETSNG.SQL.Add('WHERE');
    Query_CargoETSNG.SQL.Add('ref_book_name = ''' + FTableNameETSNG + '''');
    Query_CargoETSNG.SQL.Add('AND (' + DateToSQL(Fdate_from_to) + ' between ref_book_xml.value(''(/ROW/@FromDate)[1]'',''datetime'') and ref_book_xml.value(''(/ROW/@ToDate)[1]'',''datetime'')');
    Query_CargoETSNG.SQL.Add('OR');
		Query_CargoETSNG.SQL.Add('ref_book_xml.exist(''(/ROW/@FromDate)[1]'') = 0)');
    Query_CargoETSNG.SQL.Add('');
    Query_CargoETSNG.SQL.Add('DROP TABLE #etsng');
    Query_CargoETSNG.Open;
    Screen.Cursor := crDefault;
  end;
end;

procedure TfmCtmNewCargo.OpenQueryGNG(value: boolean);
begin
  if value then begin
    Screen.Cursor := crHourGlass;
    Query_CargoGNG.SQL.Clear;
    Query_CargoGNG.SQL.Add('SELECT');
    Query_CargoGNG.SQL.Add('ref_book_xml.value(''(/ROW/@KOD)[1]'',''varchar(max)'') as KOD,');
    Query_CargoGNG.SQL.Add('ref_book_xml.value(''(/ROW/@NAME)[1]'',''varchar(max)'') as NAME,');
    Query_CargoGNG.SQL.Add('ref_book_xml.value(''(/ROW/@classETT)[1]'',''varchar(max)'') as classETT,');
    Query_CargoGNG.SQL.Add('ref_book_xml.value(''(/ROW/@KODETSNG)[1]'',''varchar(max)'') as KODETSNG,');
    Query_CargoGNG.SQL.Add('ref_book_xml.value(''(/ROW/@PID)[1]'',''varchar(max)'') as PID,');
    Query_CargoGNG.SQL.Add('ref_book_xml.value(''(/ROW/@ETNPos)[1]'',''varchar(max)'') as ETNPos');
    Query_CargoGNG.SQL.Add('FROM	CTM_REFBOOK2');
    Query_CargoGNG.SQL.Add('WHERE');
    Query_CargoGNG.SQL.Add('ref_book_name = ''' + FTableNameGNG + '''');
//    Query_CargoGNG.SQL.Add('AND (' + DateToSQL(Fdate_from_to) + ' between ref_book_xml.value(''(/ROW/@FromDate)[1]'',''datetime'') and ref_book_xml.value(''(/ROW/@ToDate)[1]'',''datetime'')');
//    Query_CargoGNG.SQL.Add('OR');
//		Query_CargoGNG.SQL.Add('ref_book_xml.exist(''(/ROW/@FromDate)[1]'') = 0)');
    if  FETSNG_GNG_cod <> '' then begin
      Query_CargoGNG.SQL.Add('AND ref_book_xml.value(''(/ROW/@KOD)[1]'',''varchar(max)'') like ''%' + FETSNG_GNG_cod + '%''');
      Fset_query_full_gng := False;
    end else begin
      Fset_query_full_gng := True;
    end;

    Query_CargoGNG.Open;
    Screen.Cursor := crDefault;
  end;
end;

procedure TfmCtmNewCargo.cxGrid1DBBandedTableView1CustomDrawCell(
  Sender: TcxCustomGridTableView; ACanvas: TcxCanvas;
  AViewInfo: TcxGridTableDataCellViewInfo; var ADone: Boolean);
begin
  if (AViewInfo.GridRecord.Values[cxGrid1DBBandedTableView1set_group.Index] = 1) then begin
    ACanvas.Font.Style := [fsBold];
  end;

	if AViewInfo.GridRecord.Selected or AViewInfo.GridRecord.Focused then begin
		ACanvas.Brush.Color := clNavy;
		ACanvas.Font.Color := clWhite;
		if AViewInfo.Focused then ACanvas.Brush.Color := clBlue;
	end;
end;

procedure TfmCtmNewCargo.cxGrid1DBBandedTableView1CustomDrawColumnHeader(Sender: TcxGridTableView; ACanvas: TcxCanvas; AViewInfo: TcxGridColumnHeaderViewInfo; var ADone: Boolean);
begin
	if AViewInfo.Column.Focused then begin
		ACanvas.Brush.Color := clNavy;
		ACanvas.Font.Color := clWhite;
	end;
end;

procedure TfmCtmNewCargo.cxGrid1DBBandedTableView1DblClick(Sender: TObject);
var               cxGridColumn  : TcxGridColumn;
    str_Value, str_DisplayValue : string;
           cxFilterCriteriaItem : TcxFilterCriteriaItem;
begin
  if cxGrid1DBBandedTableView1set_group.DataBinding.Field.AsInteger = 1 then
    if Application.MessageBox('Классификатор грузов (ЕТСНГ)'+#13+#10+'По номенклатуре выбрана позиция, а не конечный код груза.'+#13+#10+'Для корректного расчета необходимо уточнить выбор.'+#13+#10+'Продолжить выбор груза?', 'Внимание!', MB_ICONWARNING or MB_YESNO) = ID_YES then begin
      Exit;
    end;

  FETSNG_cod     := cxGrid1DBBandedTableView1KOD.DataBinding.Field.AsString;
  FETSNG_name    := cxGrid1DBBandedTableView1NAME.DataBinding.Field.AsString;
  FETSNG_class   := cxGrid1DBBandedTableView1CLASSN.DataBinding.Field.AsString;
  FETSNG_GNG_cod := cxGrid1DBBandedTableView1KODGNG8.DataBinding.Field.AsString;
  OpenQueryGNG(True);
  cxRadioButton4.Checked := True;
  cxTextEdit2.Properties.OnChange := nil;
  cxTextEdit2.Text := FETSNG_GNG_cod;
  cxTextEdit2.Properties.OnChange := cxTextEdit2PropertiesChange;


  cxRadioButton6.Checked := True;
  cxGridColumn := cxGridDBBandedTableView1KOD;

  str_DisplayValue := cxTextEdit2.Text;
  cxGridDBBandedTableView1.DataController.Filter.Clear;
  if str_DisplayValue <> '' then begin
    str_Value := '%' + cxTextEdit2.Text + '%';
    str_DisplayValue := '[' + cxTextEdit2.Text + ']';

    // Создаем фильтр
    with cxGridDBBandedTableView1.DataController.Filter do begin
      Clear;
      Options := Options + [fcoCaseInsensitive];
      Root.BoolOperatorKind := fboAnd;
      Root.AddItem(cxGridColumn, foLike, str_Value, str_DisplayValue);
      Active := True;
    end;
  end;

  Screen.Cursor := crDefault;
end;

procedure TfmCtmNewCargo.cxGrid1DBBandedTableView1FilterOnChanged(
  Sender: TObject);
begin
	DrawcxGridColumnOnFiltered(cxGrid1DBBandedTableView1, Sender);
end;

procedure TfmCtmNewCargo.cxGrid1DBBandedTableView1FocusedItemChanged(
  Sender: TcxCustomGridTableView; APrevFocusedItem,
  AFocusedItem: TcxCustomGridTableItem);
begin
	cxGrid1DBBandedTableView1.Painter.Invalidate;
end;

procedure TfmCtmNewCargo.cxGridDBBandedTableView1CustomDrawCell(
  Sender: TcxCustomGridTableView; ACanvas: TcxCanvas;
  AViewInfo: TcxGridTableDataCellViewInfo; var ADone: Boolean);
begin
	if AViewInfo.GridRecord.Selected or AViewInfo.GridRecord.Focused then begin
		ACanvas.Brush.Color := clNavy;
		ACanvas.Font.Color := clWhite;
		if AViewInfo.Focused then ACanvas.Brush.Color := clBlue;
	end;
end;

procedure TfmCtmNewCargo.cxGridDBBandedTableView1CustomDrawColumnHeader(
  Sender: TcxGridTableView; ACanvas: TcxCanvas;
  AViewInfo: TcxGridColumnHeaderViewInfo; var ADone: Boolean);
begin
	if AViewInfo.Column.Focused then begin
		ACanvas.Brush.Color := clNavy;
		ACanvas.Font.Color := clWhite;
	end;
end;

procedure TfmCtmNewCargo.cxGridDBBandedTableView1FilterOnChanged(
  Sender: TObject);
begin
	DrawcxGridColumnOnFiltered(cxGridDBBandedTableView1, Sender);
end;

procedure TfmCtmNewCargo.cxGridDBBandedTableView1FocusedItemChanged(
  Sender: TcxCustomGridTableView; APrevFocusedItem,
  AFocusedItem: TcxCustomGridTableItem);
begin
	cxGridDBBandedTableView1.Painter.Invalidate;
end;

procedure TfmCtmNewCargo.cxGridDBBandedTableView1KeyPress(Sender: TObject; var Key: Char);
begin
	FilterColumnGridOnKeyPress(cxGridDBBandedTableView1, Key);
end;

procedure TfmCtmNewCargo.cxRadioButton3Click(Sender: TObject);
begin
  if cxRadioButton3.Checked then begin
    cxPageControl1.ActivePage := cxTabSheet1;
    cxTextEdit3.Text := FGNG_cod;
    cxTextEdit4.Text := FGNG_name;
    cxLabel1.Caption := 'Выберите груз "ЕТСНГ"';
    Label1.Caption   := 'Классификатор грузов (ГНГ)';
  end else begin
    cxPageControl1.ActivePage := cxTabSheet2;
    cxTextEdit3.Text := FETSNG_cod;
    cxTextEdit4.Text := FETSNG_name;
    cxLabel1.Caption := 'Выберите груз "ГНГ"';
    Label1.Caption   := 'Классификатор грузов (ЕТСНГ)';
  end;

  if Query_CargoETSNG.Active = False then OpenQueryETSNG(True);
  if Query_CargoGNG.Active = False   then OpenQueryGNG(True);
end;

procedure TfmCtmNewCargo.cxTextEdit1KeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  if Key = VK_DOWN then cxGrid1.SetFocus;
end;

procedure TfmCtmNewCargo.SetETSNGCod(etsng_cod: string);
begin
  cxRadioButton1.Checked := True;
  cxTextEdit1.EditValue := etsng_cod;
end;

procedure TfmCtmNewCargo.SetGNGCod(gng_cod: string);
begin
  //cxTextEdit2.EditValue := gng_cod;
//  FETSNG_GNG_cod := gng_cod;
//  OpenQueryGNG(True);
//  cxRadioButton4.Checked := True;
//  cxTextEdit2.Properties.OnChange := nil;
//  cxTextEdit2.Text := FETSNG_GNG_cod;
//  cxTextEdit2.Properties.OnChange := cxTextEdit2PropertiesChange;
//
//
//  cxRadioButton6.Checked := True;
//  cxGridColumn := cxGridDBBandedTableView1KOD;
//
//  str_DisplayValue := cxTextEdit2.Text;
//  cxGridDBBandedTableView1.DataController.Filter.Clear;
//  if str_DisplayValue <> '' then begin
//    str_Value := '%' + cxTextEdit2.Text + '%';
//    str_DisplayValue := '[' + cxTextEdit2.Text + ']';
//
//    // Создаем фильтр
//    with cxGridDBBandedTableView1.DataController.Filter do begin
//      Clear;
//      Options := Options + [fcoCaseInsensitive];
//      Root.BoolOperatorKind := fboAnd;
//      Root.AddItem(cxGridColumn, foLike, str_Value, str_DisplayValue);
//      Active := True;
//    end;
//  end;
//
//  Screen.Cursor := crDefault;
end;

procedure TfmCtmNewCargo.cxTextEdit1PropertiesChange(Sender: TObject);
var               cxGridColumn  : TcxGridColumn;
    str_Value, str_DisplayValue : string;
           cxFilterCriteriaItem : TcxFilterCriteriaItem;
begin
  Screen.Cursor := crHourglass;
  if Length(cxTextEdit1.Text) = 1 then
    if cxTextEdit1.Text[1] in ['1','2','3','4','5','6','7','8','9','0'] then cxRadioButton1.Checked := True
    else cxRadioButton2.Checked := True;


  if cxRadioButton1.Checked then cxGridColumn := cxGrid1DBBandedTableView1KOD;
  if cxRadioButton2.Checked then cxGridColumn := cxGrid1DBBandedTableView1NAME;
  if cxGridColumn = nil then Exit;


  str_DisplayValue := cxTextEdit1.Text;
  cxGrid1DBBandedTableView1.DataController.Filter.Clear;
  if str_DisplayValue <> '' then begin
    str_Value := '%' + cxTextEdit1.Text + '%';
    str_DisplayValue := '[' + cxTextEdit1.Text + ']';

    // Создаем фильтр
    with cxGrid1DBBandedTableView1.DataController.Filter do begin
      Clear;
      Options := Options + [fcoCaseInsensitive];
      Root.BoolOperatorKind := fboAnd;
      Root.AddItem(cxGridColumn, foLike, str_Value, str_DisplayValue);
      Active := True;
    end;
  end;


  Screen.Cursor := crDefault;
end;

procedure TfmCtmNewCargo.cxTextEdit2KeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  if Key = VK_DOWN then cxGrid2.SetFocus;
end;

procedure TfmCtmNewCargo.cxTextEdit2PropertiesChange(Sender: TObject);
var               cxGridColumn  : TcxGridColumn;
    str_Value, str_DisplayValue : string;
           cxFilterCriteriaItem : TcxFilterCriteriaItem;
begin
  Screen.Cursor := crHourglass;
  if Length(cxTextEdit2.Text) = 1 then
    if cxTextEdit2.Text[1] in ['1','2','3','4','5','6','7','8','9','0'] then cxRadioButton6.Checked := True
    else cxRadioButton5.Checked := True;


  if (cxRadioButton6.Checked = False) AND (cxRadioButton5.Checked = False) then begin
    if cxTextEdit2.Text[1] in ['1','2','3','4','5','6','7','8','9','0'] then cxRadioButton6.Checked := True
    else cxRadioButton5.Checked := True;
  end;


  if cxRadioButton6.Checked then cxGridColumn := cxGridDBBandedTableView1KOD;
  if cxRadioButton5.Checked then cxGridColumn := cxGridDBBandedTableView1NAME;
  if cxGridColumn = nil then Exit;

  if Fset_query_full_gng = False then begin
    Query_CargoGNG.SQL.Clear;
    Query_CargoGNG.SQL.Add('SELECT');
    Query_CargoGNG.SQL.Add('ref_book_xml.value(''(/ROW/@KOD)[1]'',''varchar(max)'') as KOD,');
    Query_CargoGNG.SQL.Add('ref_book_xml.value(''(/ROW/@NAME)[1]'',''varchar(max)'') as NAME,');
    Query_CargoGNG.SQL.Add('ref_book_xml.value(''(/ROW/@classETT)[1]'',''varchar(max)'') as classETT,');
    Query_CargoGNG.SQL.Add('ref_book_xml.value(''(/ROW/@KODETSNG)[1]'',''varchar(max)'') as KODETSNG,');
    Query_CargoGNG.SQL.Add('ref_book_xml.value(''(/ROW/@PID)[1]'',''varchar(max)'') as PID,');
    Query_CargoGNG.SQL.Add('ref_book_xml.value(''(/ROW/@ETNPos)[1]'',''varchar(max)'') as ETNPos');
    Query_CargoGNG.SQL.Add('FROM	CTM_REFBOOK2');
    Query_CargoGNG.SQL.Add('WHERE');
    Query_CargoGNG.SQL.Add('ref_book_name = ''' + FTableNameGNG + '''');
    Query_CargoGNG.Open;
    Fset_query_full_gng := True;
  end;

  str_DisplayValue := cxTextEdit2.Text;
  cxGridDBBandedTableView1.DataController.Filter.Clear;
  if str_DisplayValue <> '' then begin
    str_Value := '%' + cxTextEdit2.Text + '%';
    str_DisplayValue := '[' + cxTextEdit2.Text + ']';

    // Создаем фильтр
    with cxGridDBBandedTableView1.DataController.Filter do begin
      Clear;
      Options := Options + [fcoCaseInsensitive];
      Root.BoolOperatorKind := fboAnd;
      Root.AddItem(cxGridColumn, foLike, str_Value, str_DisplayValue);
      Active := True;
    end;
  end;


  Screen.Cursor := crDefault;
end;

procedure TfmCtmNewCargo.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action := caFree;
end;

procedure TfmCtmNewCargo.BitBtn_OkClick(Sender: TObject);
begin
  ModalResult := mrNone;
  if cxGrid1DBBandedTableView1set_group.DataBinding.Field.AsInteger = 1 then
    if Application.MessageBox('Классификатор грузов (ЕТСНГ)'+#13+#10+'По номенклатуре выбрана позиция, а не конечный код груза.'+#13+#10+'Для корректного расчета необходимо уточнить выбор.'+#13+#10+'Продолжить выбор груза?', 'Внимание!', MB_ICONWARNING or MB_YESNO) = ID_YES then begin
      Exit;
    end;


  if cxPageControl1.ActivePage = cxTabSheet1 then begin
    cxGrid1DBBandedTableView1DblClick(Sender);
    Exit;
  end else begin
    ModalResult := mrOk;

    FETSNG_cod  := cxGrid1DBBandedTableView1KOD.DataBinding.Field.AsString;
    FETSNG_name := cxGrid1DBBandedTableView1NAME.DataBinding.Field.AsString;
    FETSNG_class:= cxGrid1DBBandedTableView1CLASSN.DataBinding.Field.AsString;

    FGNG_cod    := cxGridDBBandedTableView1KOD.DataBinding.Field.AsString;
    FGNG_name   := cxGridDBBandedTableView1NAME.DataBinding.Field.AsString;
    FGNG_class  := cxGridDBBandedTableView1classETT.DataBinding.Field.AsString;

    FWeight     := cxSpinEdit4.EditValue;
  end;
end;

end.
