unit CtmNewNode;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Default, cxPropertiesStore, StdCtrls, Buttons, ExtCtrls,
  cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters, cxStyles,
  cxCustomData, cxFilter, cxData, cxDataStorage, cxEdit, DB, cxDBData,
  cxGridCustomView, cxGridCustomTableView, cxGridTableView,
  cxGridBandedTableView, cxGridDBBandedTableView, cxClasses, cxGridLevel, cxGrid,
  ADODB, DBClient, Grids, DBGrids, cxContainer, cxRadioGroup, cxTextEdit, Menus,
  cxButtons, cxListBox, cxMaskEdit, cxDropDownEdit, cxLookupEdit,
  cxDBLookupEdit, cxDBLookupComboBox, cxLabel, StrUtils, cxMemo, dxSkinsCore,
  dxSkinBlack, dxSkinBlue, dxSkinBlueprint, dxSkinCaramel, dxSkinCoffee,
  dxSkinDarkRoom, dxSkinDarkSide, dxSkinDevExpressDarkStyle,
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
  dxSkinXmas2008Blue, dxSkinscxPCPainter, cxNavigator, dxSkinOffice2016Colorful,
  dxSkinOffice2016Dark, dxSkinVisualStudio2013Blue, dxSkinVisualStudio2013Dark,
  dxSkinVisualStudio2013Light,
  cxDataControllerConditionalFormattingRulesManagerDialog, dxSkinTheBezier, dxDateRanges,
  dxScrollbarAnnotations;

type
  TfmCtmNewNode = class(TForm)
    cxPropertiesStore1: TcxPropertiesStore;
    Panel1: TPanel;
    DS_Stations: TDataSource;
    cxGrid1Level1: TcxGridLevel;
    cxGrid1: TcxGrid;
    cxGrid1DBBandedTableView1: TcxGridDBBandedTableView;
    cxGrid1DBBandedTableView1NewCode: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1NewName: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1NewParaT: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1ROAD: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1LAND: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1FromDate: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1ToDate: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1RoadID: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1LandID: TcxGridDBBandedColumn;
    cxTextEdit2: TcxTextEdit;
    cxRadioButton1: TcxRadioButton;
    cxRadioButton2: TcxRadioButton;
    Label1: TLabel;
    cxButton1: TcxButton;
    cxTextEdit1: TcxTextEdit;
    Panel3: TPanel;
    cxButton2: TcxButton;
    cxLabel3: TcxLabel;
    Query_Land: TADOQuery;
    DS_Land: TDataSource;
    cxGrid1DBBandedTableView1PPLand: TcxGridDBBandedColumn;
    Query_Paragraf: TADOQuery;
    cxMemo1: TcxMemo;
    cxLookupComboBox1: TcxLookupComboBox;
    cxLabel1: TcxLabel;
    cxPropertiesStore2: TcxPropertiesStore;
    Panel18: TPanel;
    BitBtn_Ok: TBitBtn;
    BitBtn_Cancel: TBitBtn;
    cxGrid1DBBandedTableView1LinkCode: TcxGridDBBandedColumn;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
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
    procedure cxTextEdit2PropertiesChange(Sender: TObject);
    procedure cxGrid1DBBandedTableView1FocusedRecordChanged(
      Sender: TcxCustomGridTableView; APrevFocusedRecord,
      AFocusedRecord: TcxCustomGridRecord;
      ANewItemRecordFocusingChanged: Boolean);
    procedure cxTextEdit2KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure BitBtn_OkClick(Sender: TObject);
    procedure cxGrid1DBBandedTableView1KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
  private
    Fusr_pwd      : PUser_pwd;
    Fdate_from_to : TDateTime;
    Fset_query_full_open : boolean;

    Fnode_cod         : string;
    Fnode_name        : string;
    Fnode_land_name   : string;
    Fnode_PPland      : integer;
    Fnode_PPland_name : string;
    Fnode_road_name   : string;
    Flink_code        : string;
    FQueryStation     : TADOQuery;
    procedure SetQueryStation(query_station: TADOQuery);
    procedure SetNodeCod(node_cod: string);
  public
    constructor Create(AOwner: TApplication; usr_pwd: PUser_pwd; date_from_to: TDateTime); reintroduce;
  published
    property _SetQueryStation : TADOQuery write SetQueryStation;
    property _SetNodeCod    : string write SetNodeCod;
    property _GetNodeCod    : string  read Fnode_cod;
    property _GetNodeName   : string  read Fnode_name;
    property _GetLandName   : string  read Fnode_land_name;
    property _GetPPLand     : integer read Fnode_PPland;
    property _GetPPLandName : string  read Fnode_PPland_name;
    property _GetRoadName   : string  read Fnode_road_name;
    property _GetLinkCode   : string  read Flink_code;
  end;

var
  fmCtmNewNode: TfmCtmNewNode;

implementation

uses CtmNewMain, CtmRaznoe;

{$R *.dfm}

procedure TfmCtmNewNode.BitBtn_OkClick(Sender: TObject);
begin
  if  cxLookupComboBox1.EditText = '' then begin
    Application.MessageBox('Выберите страну!', 'Внимание', MB_OK or MB_ICONWARNING);
    exit;
  end;

  Flink_code        := cxGrid1DBBandedTableView1LinkCode.DataBinding.Field.AsString;
  Fnode_cod         := cxGrid1DBBandedTableView1NewCode.DataBinding.Field.AsString;
  Fnode_name        := cxGrid1DBBandedTableView1NewName.DataBinding.Field.AsString;
  Fnode_land_name   := cxGrid1DBBandedTableView1LAND.DataBinding.Field.AsString;
  Fnode_PPland      := cxLookupComboBox1.EditValue;
  Fnode_PPland_name := cxLookupComboBox1.Text;
  Fnode_road_name   := cxGrid1DBBandedTableView1ROAD.DataBinding.Field.AsString;

  if Fset_query_full_open = False then begin
    FQueryStation.Close;
  end;

  ModalResult := mrOk;
end;

constructor TfmCtmNewNode.Create(AOwner: TApplication; usr_pwd: PUser_pwd; date_from_to: TDateTime);
begin
  Screen.Cursor := crHourglass;
  inherited Create(AOwner);
  Fusr_pwd := usr_pwd;
  Fdate_from_to := date_from_to;
  Fset_query_full_open := False;
  Flink_code := '';

  DS_Stations.DataSet := FQueryStation;

  Query_Land.Open;

  Query_Paragraf.Parameters.ParamByName('date_from_to').Value := date_from_to;
  Query_Paragraf.Open;

  Screen.Cursor := crDefault;
end;

procedure TfmCtmNewNode.SetQueryStation(query_station: TADOQuery);
begin
  if query_station <> nil then begin
    FQueryStation := query_station;
    DS_Stations.DataSet := FQueryStation;
    if FQueryStation.Active = False then begin
      FQueryStation.Parameters.ParamByName('date_from_to').Value := Fdate_from_to;
      FQueryStation.Open;
      Fset_query_full_open := False;
    end else begin
      Fset_query_full_open := True;
    end;
  end;
end;

procedure TfmCtmNewNode.cxGrid1DBBandedTableView1CustomDrawCell(
  Sender: TcxCustomGridTableView; ACanvas: TcxCanvas;
  AViewInfo: TcxGridTableDataCellViewInfo; var ADone: Boolean);
begin
	if AViewInfo.GridRecord.Selected or AViewInfo.GridRecord.Focused then begin
		ACanvas.Brush.Color := clNavy;
		ACanvas.Font.Color := clWhite;
		if AViewInfo.Focused then ACanvas.Brush.Color := clBlue;
	end;
end;

procedure TfmCtmNewNode.cxGrid1DBBandedTableView1CustomDrawColumnHeader(
  Sender: TcxGridTableView; ACanvas: TcxCanvas;
  AViewInfo: TcxGridColumnHeaderViewInfo; var ADone: Boolean);
begin
	if AViewInfo.Column.Focused then begin
		ACanvas.Brush.Color := clNavy;
		ACanvas.Font.Color := clWhite;
	end;
end;

procedure TfmCtmNewNode.cxGrid1DBBandedTableView1FilterOnChanged(
  Sender: TObject);
begin
	DrawcxGridColumnOnFiltered(cxGrid1DBBandedTableView1, Sender);
end;

procedure TfmCtmNewNode.cxGrid1DBBandedTableView1FocusedItemChanged(
  Sender: TcxCustomGridTableView; APrevFocusedItem,
  AFocusedItem: TcxCustomGridTableItem);
begin
	cxGrid1DBBandedTableView1.Painter.Invalidate;
end;

procedure TfmCtmNewNode.cxGrid1DBBandedTableView1FocusedRecordChanged(Sender: TcxCustomGridTableView; APrevFocusedRecord, AFocusedRecord: TcxCustomGridRecord; ANewItemRecordFocusingChanged: Boolean);
var paragraf_list : TStringList;
    paragraf_str  : string;
    i : integer;
begin
  cxLookupComboBox1.EditValue := null;
  cxLookupComboBox1.Enabled   := True;
  cxMemo1.Lines.Clear;
  if (AFocusedRecord<>nil) AND ((cxGrid1DBBandedTableView1.GroupedColumnCount = 0) OR (AFocusedRecord.Level <> 0)) then begin
    if cxGrid1DBBandedTableView1PPLand.DataBinding.Field.AsInteger = 0 then begin
      cxLookupComboBox1.EditValue := cxGrid1DBBandedTableView1LandID.DataBinding.Field.AsInteger;
      cxLookupComboBox1.Enabled   := False;
    end else if cxGrid1DBBandedTableView1PPLand.DataBinding.Field.AsInteger <> 0 then begin
      cxLookupComboBox1.EditValue := cxGrid1DBBandedTableView1PPLand.DataBinding.Field.AsInteger;
      cxLookupComboBox1.Enabled   := True;
    end;



    paragraf_str := cxGrid1DBBandedTableView1NewParaT.DataBinding.Field.AsString;
    if paragraf_str <> '' then begin
      paragraf_str := ReplaceStr(paragraf_str, ',', #10);
      paragraf_list := TStringList.Create;
      paragraf_list.CommaText := paragraf_str;
      for i := 0 to paragraf_list.Count - 1 do begin

        Query_Paragraf.First;
        while not Query_Paragraf.Eof do begin
          if Query_Paragraf.FieldByName('ref_book_key2').AsString = paragraf_list.Strings[i] then begin
            cxMemo1.Lines.Add(Query_Paragraf.FieldByName('ShortDsc').AsString);
            break;
          end;
          Query_Paragraf.Next;
        end;
      end;
      paragraf_list.Clear;
    end;
  end;
end;

procedure TfmCtmNewNode.cxGrid1DBBandedTableView1KeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  if Key = VK_RETURN then BitBtn_OkClick(Sender);
end;

procedure TfmCtmNewNode.cxTextEdit2KeyDown(Sender: TObject; var Key: Word;  Shift: TShiftState);
begin
  if Key = VK_DOWN then cxGrid1.SetFocus;
end;

procedure TfmCtmNewNode.SetNodeCod(node_cod: string);
begin
  cxRadioButton1.Checked := True;
  cxTextEdit2.EditValue  := node_cod;
end;

procedure TfmCtmNewNode.cxTextEdit2PropertiesChange(Sender: TObject);
var               cxGridColumn  : TcxGridColumn;
    str_Value, str_DisplayValue : string;
           cxFilterCriteriaItem : TcxFilterCriteriaItem;
begin
  Screen.Cursor := crHourglass;
  if Length(cxTextEdit2.Text) = 1 then
    if cxTextEdit2.Text[1] in ['1','2','3','4','5','6','7','8','9','0'] then cxRadioButton1.Checked := True
    else cxRadioButton2.Checked := True;

  if Fset_query_full_open = False then begin
    FQueryStation.Close;
    FQueryStation.SQL.Clear;
    FQueryStation.SQL.Add('SELECT');
    FQueryStation.SQL.Add('ref_book_xml.value(''(/ROW/@NewCode)[1]'',''varchar(200)'') as NewCode,');
    FQueryStation.SQL.Add('ref_book_xml.value(''(/ROW/@NewName)[1]'',''varchar(200)'') as NewName,');
    FQueryStation.SQL.Add('ref_book_xml.value(''(/ROW/@NewParaT)[1]'',''varchar(200)'') as NewParaT,');
    FQueryStation.SQL.Add('ref_book_xml.value(''(/ROW/@ROAD)[1]'',''varchar(200)'') as ROAD,');
    FQueryStation.SQL.Add('ref_book_xml.value(''(/ROW/@LAND)[1]'',''varchar(200)'') as LAND,');
    FQueryStation.SQL.Add('ref_book_xml.value(''(/ROW/@FromDate)[1]'',''varchar(200)'') as FromDate,');
    FQueryStation.SQL.Add('ref_book_xml.value(''(/ROW/@ToDate)[1]'',''varchar(200)'') as ToDate,');
    FQueryStation.SQL.Add('ref_book_xml.value(''(/ROW/@RoadID)[1]'',''varchar(200)'') as RoadID,');
    FQueryStation.SQL.Add('ref_book_xml.value(''(/ROW/@LandID)[1]'',''varchar(200)'') as LandID,');
    FQueryStation.SQL.Add('ref_book_xml.value(''(/ROW/@LinkCode)[1]'',''varchar(200)'') as LinkCode,');
    FQueryStation.SQL.Add('ref_book_xml.value(''(/ROW/@PPLand)[1]'',''varchar(200)'') as PPLand');
    FQueryStation.SQL.Add('FROM	CTM_REFBOOK2');
    FQueryStation.SQL.Add('WHERE');
    FQueryStation.SQL.Add('ref_book_name = ''stations''');
    FQueryStation.SQL.Add('AND ' + DateToSQL(Fdate_from_to) + ' between ref_book_xml.value(''(/ROW/@FromDate)[1]'',''datetime'') and ref_book_xml.value(''(/ROW/@ToDate)[1]'',''datetime'')');
    FQueryStation.Open;
    Fset_query_full_open := True;
  end;


  if cxRadioButton1.Checked then cxGridColumn := cxGrid1DBBandedTableView1NewCode;
  if cxRadioButton2.Checked then cxGridColumn := cxGrid1DBBandedTableView1NewName;
  if cxGridColumn = nil then Exit;



  str_DisplayValue := cxTextEdit2.Text;
  cxGrid1DBBandedTableView1.DataController.Filter.Clear;
  if str_DisplayValue <> '' then begin
    str_Value := '%' + cxTextEdit2.Text + '%';
    str_DisplayValue := '[' + cxTextEdit2.Text + ']';

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

procedure TfmCtmNewNode.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  if Fset_query_full_open = False then begin
    FQueryStation.Close;
  end;

  Action := caFree;
end;

end.
