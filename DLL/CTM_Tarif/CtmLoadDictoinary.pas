unit CtmLoadDictoinary;

interface

uses
  RailTariff_TLB, Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Default, StdCtrls, TariffSupportFunctions, DB, DBClient,
  cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters, cxStyles,
  cxCustomData, cxFilter, cxData, cxDataStorage, cxEdit, cxDBData,
  cxGridCustomTableView, cxGridTableView, cxGridBandedTableView,
  cxGridDBBandedTableView, cxGridCustomView, cxClasses, cxGridLevel, cxGrid,
  dxBar, ImgList, ExtCtrls, Grids, DBGrids, Other, cxContainer, cxLabel, ADODB,
  cxPropertiesStore, dxSkinsCore, dxSkinBlack, dxSkinBlue, dxSkinBlueprint,
  dxSkinCaramel, dxSkinCoffee, dxSkinDarkRoom, dxSkinDarkSide,
  dxSkinDevExpressDarkStyle, dxSkinDevExpressStyle, dxSkinFoggy,
  dxSkinGlassOceans, dxSkinHighContrast, dxSkiniMaginary, dxSkinLilian,
  dxSkinLiquidSky, dxSkinLondonLiquidSky, dxSkinMcSkin, dxSkinMetropolis,
  dxSkinMetropolisDark, dxSkinMoneyTwins, dxSkinOffice2007Black,
  dxSkinOffice2007Blue, dxSkinOffice2007Green, dxSkinOffice2007Pink,
  dxSkinOffice2007Silver, dxSkinOffice2010Black, dxSkinOffice2010Blue,
  dxSkinOffice2010Silver, dxSkinOffice2013DarkGray, dxSkinOffice2013LightGray,
  dxSkinOffice2013White, dxSkinOffice2016Colorful, dxSkinOffice2016Dark,
  dxSkinPumpkin, dxSkinSeven, dxSkinSevenClassic, dxSkinSharp, dxSkinSharpPlus,
  dxSkinSilver, dxSkinSpringTime, dxSkinStardust, dxSkinSummer2008,
  dxSkinTheAsphaltWorld, dxSkinsDefaultPainters, dxSkinValentine,
  dxSkinVisualStudio2013Blue, dxSkinVisualStudio2013Dark,
  dxSkinVisualStudio2013Light, dxSkinVS2010, dxSkinWhiteprint,
  dxSkinXmas2008Blue, dxSkinscxPCPainter, cxNavigator, dxSkinsdxBarPainter,
  System.ImageList, cxImageList,
  cxDataControllerConditionalFormattingRulesManagerDialog, dxSkinTheBezier, dxDateRanges;

type
  TfmCtmLoadDictoinary = class(TForm)
    Client_RefBook: TClientDataSet;
    DS_RefBook: TDataSource;
    Client_RefBookCaption: TStringField;
    Client_RefBookType: TLargeintField;
    Client_RefBookKeyField: TStringField;
    Client_RefBookSubKeyField: TStringField;
    Client_RefBookFieldCount: TIntegerField;
    Client_RefBookTableDesc: TStringField;
    Client_RefBookTableDigest: TIntegerField;
    Client_RefBookID: TStringField;
    dxBarManager1: TdxBarManager;
    dxBarManager1Bar1: TdxBar;
    dxBarButton2: TdxBarButton;
    cxImageList1: TcxImageList;
    dxBarButton3: TdxBarButton;
    dxBarSubItem1: TdxBarSubItem;
    dxBarButton4: TdxBarButton;
    Panel1: TPanel;
    cxGrid1: TcxGrid;
    cxGrid1DBBandedTableView1: TcxGridDBBandedTableView;
    cxGrid1DBBandedTableView1ID: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1Caption: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1Type: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1KeyField: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1SubKeyField: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1FieldCount: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1TableDesc: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1TableDigest: TcxGridDBBandedColumn;
    cxGrid1Level1: TcxGridLevel;
    Panel2: TPanel;
    Splitter1: TSplitter;
    Splitter2: TSplitter;
    cxGrid2: TcxGrid;
    cxGridDBBandedTableView1: TcxGridDBBandedTableView;
    cxGridLevel1: TcxGridLevel;
    Client_Fields: TClientDataSet;
    DS_Fields: TDataSource;
    Client_FieldsID: TStringField;
    Client_Fieldsfield_name: TStringField;
    Client_Fieldsfield_caption: TStringField;
    cxGridDBBandedTableView1ID: TcxGridDBBandedColumn;
    cxGridDBBandedTableView1field_name: TcxGridDBBandedColumn;
    cxGridDBBandedTableView1field_caption: TcxGridDBBandedColumn;
    dxBarPopupMenu1: TdxBarPopupMenu;
    dxBarButton5: TdxBarButton;
    dxBarSubItem2: TdxBarSubItem;
    dxBarButton6: TdxBarButton;
    dxBarButton7: TdxBarButton;
    dxBarButton8: TdxBarButton;
    dxBarButton9: TdxBarButton;
    dxBarPopupMenu2: TdxBarPopupMenu;
    dxBarButton10: TdxBarButton;
    dxBarSubItem3: TdxBarSubItem;
    dxBarButton11: TdxBarButton;
    dxBarButton12: TdxBarButton;
    dxBarButton13: TdxBarButton;
    dxBarButton14: TdxBarButton;
    dxBarPopupMenu3: TdxBarPopupMenu;
    dxBarButton15: TdxBarButton;
    dxBarSubItem4: TdxBarSubItem;
    dxBarButton16: TdxBarButton;
    dxBarButton17: TdxBarButton;
    dxBarButton18: TdxBarButton;
    dxBarButton19: TdxBarButton;
    dxBarButton20: TdxBarButton;
    Client_RefBookData: TClientDataSet;
    DS_RefBookData: TDataSource;
    Client_RefBookDataid: TAutoIncField;
    cxLabel5: TcxLabel;
    cxLabel1: TcxLabel;
    Panel3: TPanel;
    cxLabel2: TcxLabel;
    cxGrid3: TcxGrid;
    cxGridDBBandedTableView2: TcxGridDBBandedTableView;
    cxGridLevel2: TcxGridLevel;
    ADOConnect: TADOConnection;
    dxBarButton21: TdxBarButton;
    dxBarButton22: TdxBarButton;
    dxBarButton23: TdxBarButton;
    cxPropertiesStore1: TcxPropertiesStore;
    dxBarButton1: TdxBarButton;
    dxBarButton24: TdxBarButton;
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
    procedure cxGrid1DBBandedTableView1KeyPress(Sender: TObject; var Key: Char);
    procedure cxGrid1DBBandedTableView1FocusedRecordChanged(
      Sender: TcxCustomGridTableView; APrevFocusedRecord,
      AFocusedRecord: TcxCustomGridRecord;
      ANewItemRecordFocusingChanged: Boolean);
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
    procedure cxGridDBBandedTableView2FilterOnChanged(Sender: TObject);
    procedure cxGridDBBandedTableView2CustomDrawCell(
      Sender: TcxCustomGridTableView; ACanvas: TcxCanvas;
      AViewInfo: TcxGridTableDataCellViewInfo; var ADone: Boolean);
    procedure cxGridDBBandedTableView2CustomDrawColumnHeader(
      Sender: TcxGridTableView; ACanvas: TcxCanvas;
      AViewInfo: TcxGridColumnHeaderViewInfo; var ADone: Boolean);
    procedure cxGridDBBandedTableView2FocusedItemChanged(
      Sender: TcxCustomGridTableView; APrevFocusedItem,
      AFocusedItem: TcxCustomGridTableItem);
    procedure cxGridDBBandedTableView2KeyPress(Sender: TObject; var Key: Char);
    procedure dxBarButton5Click(Sender: TObject);
    procedure dxBarButton6Click(Sender: TObject);
    procedure dxBarButton7Click(Sender: TObject);
    procedure dxBarButton8Click(Sender: TObject);
    procedure dxBarButton9Click(Sender: TObject);
    procedure dxBarButton10Click(Sender: TObject);
    procedure dxBarButton11Click(Sender: TObject);
    procedure dxBarButton12Click(Sender: TObject);
    procedure dxBarButton13Click(Sender: TObject);
    procedure dxBarButton14Click(Sender: TObject);
    procedure dxBarButton15Click(Sender: TObject);
    procedure dxBarButton16Click(Sender: TObject);
    procedure dxBarButton17Click(Sender: TObject);
    procedure dxBarButton18Click(Sender: TObject);
    procedure dxBarButton19Click(Sender: TObject);
    procedure dxBarButton20Click(Sender: TObject);
    procedure dxBarButton2Click(Sender: TObject);
    procedure dxBarButton21Click(Sender: TObject);
    procedure dxBarButton22Click(Sender: TObject);
    procedure dxBarButton23Click(Sender: TObject);
    procedure dxBarButton24Click(Sender: TObject);
  private
    Fusr_pwd : PUser_pwd;
    procedure LoadRefBooks();
  public
    constructor Create(AOwner: TApplication; usr_pwd: PUser_pwd); reintroduce;
  end;

var
  fmCtmLoadDictoinary: TfmCtmLoadDictoinary;

function CreateWndCtmLoadDictoinary(AppHand: THandle; usr_pwd: PUser_pwd): variant; export;

implementation

{$R *.dfm}

uses CtmRaznoe;

function CreateWndCtmLoadDictoinary(AppHand: THandle; usr_pwd: PUser_pwd): variant;
begin
  Application.Handle := AppHand;

  fmCtmLoadDictoinary := TfmCtmLoadDictoinary.Create(Application, usr_pwd);
  try
    if fmCtmLoadDictoinary.ShowModal = mrOk then  result := VarArrayOf([''])
    else result := VarArrayOf(['']);
  finally
    fmCtmLoadDictoinary.Free;
  end;
end;

constructor TfmCtmLoadDictoinary.Create(AOwner: TApplication; usr_pwd: PUser_pwd);
begin
  Screen.Cursor := crHourglass;
  inherited Create(AOwner);
  Fusr_pwd := usr_pwd;

  Client_RefBook.CreateDataSet;
  Client_RefBook.LogChanges := False;

  Client_Fields.CreateDataSet;
  Client_Fields.LogChanges := False;

  Client_RefBookData.CreateDataSet;
  Client_RefBookData.LogChanges := False;

  ADOConnect.ConnectionString := 'Persist Security Info=True;Provider=SQLOLEDB.1;User ID='+Fusr_pwd^.user_name+';Password='+Fusr_pwd^.user_pass+';Initial Catalog='+Fusr_pwd^.catalog+';Data Source='+Fusr_pwd^.server+';';
  ADOConnect.KeepConnection   := False;
  ADOConnect.LoginPrompt      := False;
  ADOConnect.Open;


  LoadRefBooks();

  Screen.Cursor := crDefault;
end;

procedure TfmCtmLoadDictoinary.cxGrid1DBBandedTableView1CustomDrawCell(
  Sender: TcxCustomGridTableView; ACanvas: TcxCanvas;
  AViewInfo: TcxGridTableDataCellViewInfo; var ADone: Boolean);
begin
	if AViewInfo.GridRecord.Selected or AViewInfo.GridRecord.Focused then begin
		ACanvas.Brush.Color := clNavy;
		ACanvas.Font.Color := clWhite;
		if AViewInfo.Focused then ACanvas.Brush.Color := clBlue;
	end;
end;

procedure TfmCtmLoadDictoinary.cxGrid1DBBandedTableView1CustomDrawColumnHeader(
  Sender: TcxGridTableView; ACanvas: TcxCanvas;
  AViewInfo: TcxGridColumnHeaderViewInfo; var ADone: Boolean);
begin
	if AViewInfo.Column.Focused then begin
		ACanvas.Brush.Color := clNavy;
		ACanvas.Font.Color := clWhite;
	end;
end;

procedure TfmCtmLoadDictoinary.cxGrid1DBBandedTableView1FilterOnChanged(
  Sender: TObject);
begin
	DrawcxGridColumnOnFiltered(cxGrid1DBBandedTableView1, Sender);
end;

procedure TfmCtmLoadDictoinary.cxGrid1DBBandedTableView1FocusedItemChanged(
  Sender: TcxCustomGridTableView; APrevFocusedItem,
  AFocusedItem: TcxCustomGridTableItem);
begin
	cxGrid1DBBandedTableView1.Painter.Invalidate;
end;

procedure TfmCtmLoadDictoinary.cxGrid1DBBandedTableView1FocusedRecordChanged(
  Sender: TcxCustomGridTableView; APrevFocusedRecord,
  AFocusedRecord: TcxCustomGridRecord; ANewItemRecordFocusingChanged: Boolean);
begin
  Client_Fields.Filter   := '1=0';
  Client_Fields.Filtered := True;
  if (AFocusedRecord<>nil) AND ((cxGrid1DBBandedTableView1.GroupedColumnCount = 0) OR (AFocusedRecord.Level <> 0)) then begin
    Client_Fields.Filter   := 'ID=''' + cxGrid1DBBandedTableView1ID.DataBinding.Field.AsString + '''';
    Client_Fields.Filtered := True;
  end;
end;

procedure TfmCtmLoadDictoinary.cxGrid1DBBandedTableView1KeyPress(
  Sender: TObject; var Key: Char);
begin
	FilterColumnGridOnKeyPress(cxGrid1DBBandedTableView1, Key);
end;

procedure TfmCtmLoadDictoinary.cxGridDBBandedTableView1CustomDrawCell(
  Sender: TcxCustomGridTableView; ACanvas: TcxCanvas;
  AViewInfo: TcxGridTableDataCellViewInfo; var ADone: Boolean);
begin
	if AViewInfo.GridRecord.Selected or AViewInfo.GridRecord.Focused then begin
		ACanvas.Brush.Color := clNavy;
		ACanvas.Font.Color := clWhite;
		if AViewInfo.Focused then ACanvas.Brush.Color := clBlue;
	end;
end;

procedure TfmCtmLoadDictoinary.cxGridDBBandedTableView1CustomDrawColumnHeader(
  Sender: TcxGridTableView; ACanvas: TcxCanvas;
  AViewInfo: TcxGridColumnHeaderViewInfo; var ADone: Boolean);
begin
	if AViewInfo.Column.Focused then begin
		ACanvas.Brush.Color := clNavy;
		ACanvas.Font.Color := clWhite;
	end;
end;

procedure TfmCtmLoadDictoinary.cxGridDBBandedTableView1FilterOnChanged(
  Sender: TObject);
begin
	DrawcxGridColumnOnFiltered(cxGridDBBandedTableView1, Sender);
end;

procedure TfmCtmLoadDictoinary.cxGridDBBandedTableView1FocusedItemChanged(
  Sender: TcxCustomGridTableView; APrevFocusedItem,
  AFocusedItem: TcxCustomGridTableItem);
begin
	cxGridDBBandedTableView1.Painter.Invalidate;
end;

procedure TfmCtmLoadDictoinary.cxGridDBBandedTableView1KeyPress(Sender: TObject;
  var Key: Char);
begin
	FilterColumnGridOnKeyPress(cxGridDBBandedTableView1, Key);
end;

procedure TfmCtmLoadDictoinary.cxGridDBBandedTableView2CustomDrawCell(
  Sender: TcxCustomGridTableView; ACanvas: TcxCanvas;
  AViewInfo: TcxGridTableDataCellViewInfo; var ADone: Boolean);
begin
	if AViewInfo.GridRecord.Selected or AViewInfo.GridRecord.Focused then begin
		ACanvas.Brush.Color := clNavy;
		ACanvas.Font.Color := clWhite;
		if AViewInfo.Focused then ACanvas.Brush.Color := clBlue;
	end;
end;

procedure TfmCtmLoadDictoinary.cxGridDBBandedTableView2CustomDrawColumnHeader(
  Sender: TcxGridTableView; ACanvas: TcxCanvas;
  AViewInfo: TcxGridColumnHeaderViewInfo; var ADone: Boolean);
begin
	if AViewInfo.Column.Focused then begin
		ACanvas.Brush.Color := clNavy;
		ACanvas.Font.Color := clWhite;
	end;
end;

procedure TfmCtmLoadDictoinary.cxGridDBBandedTableView2FilterOnChanged(
  Sender: TObject);
begin
	DrawcxGridColumnOnFiltered(cxGridDBBandedTableView2, Sender);
end;

procedure TfmCtmLoadDictoinary.cxGridDBBandedTableView2FocusedItemChanged(
  Sender: TcxCustomGridTableView; APrevFocusedItem,
  AFocusedItem: TcxCustomGridTableItem);
begin
	cxGridDBBandedTableView2.Painter.Invalidate;
end;

procedure TfmCtmLoadDictoinary.cxGridDBBandedTableView2KeyPress(Sender: TObject;
  var Key: Char);
begin
	FilterColumnGridOnKeyPress(cxGridDBBandedTableView2, Key);
end;

procedure TfmCtmLoadDictoinary.dxBarButton10Click(Sender: TObject);
begin
	PrintcxGrid(cxGridDBBandedTableView1);
end;

procedure TfmCtmLoadDictoinary.dxBarButton11Click(Sender: TObject);
begin
	SetdxDBGridColumns(cxGridDBBandedTableView1);
end;

procedure TfmCtmLoadDictoinary.dxBarButton12Click(Sender: TObject);
begin
	cxGridDBBandedTableView1.OptionsView.GroupByBox := not cxGridDBBandedTableView1.OptionsView.GroupByBox;
end;

procedure TfmCtmLoadDictoinary.dxBarButton13Click(Sender: TObject);
begin
	FiltercxGrid4ListID(cxGridDBBandedTableView1);
end;

procedure TfmCtmLoadDictoinary.dxBarButton14Click(Sender: TObject);
begin
	cxGridDBBandedTableView1.Filtering.ColumnFilteredItemsList := not dxBarButton14.Down;
end;

procedure TfmCtmLoadDictoinary.dxBarButton15Click(Sender: TObject);
begin
	PrintcxGrid(cxGridDBBandedTableView2);
end;

procedure TfmCtmLoadDictoinary.dxBarButton16Click(Sender: TObject);
begin
	SetdxDBGridColumns(cxGridDBBandedTableView2);
end;

procedure TfmCtmLoadDictoinary.dxBarButton17Click(Sender: TObject);
begin
	cxGridDBBandedTableView2.OptionsView.GroupByBox := not cxGridDBBandedTableView2.OptionsView.GroupByBox;
end;

procedure TfmCtmLoadDictoinary.dxBarButton18Click(Sender: TObject);
begin
	FiltercxGrid4ListID(cxGridDBBandedTableView2);
end;

procedure TfmCtmLoadDictoinary.dxBarButton19Click(Sender: TObject);
begin
	cxGridDBBandedTableView2.Filtering.ColumnFilteredItemsList := not dxBarButton19.Down;
end;

procedure TfmCtmLoadDictoinary.LoadRefBooks();
var    RTXApplication : IApplication;
          RTXDocument : RailTariff_TLB.IDocument;
           RTXRefBook : RailTariff_TLB._RefBook;
       RTXRefBookInfo : RailTariff_TLB._RefBookInfo;
 RTXRefBookCollection : RailTariff_TLB._RefBookCollection;
                    v : Variant;
                  i,k : integer;
begin
  Client_RefBook.DisableControls;
  Client_Fields.DisableControls;
  try
    RTXApplication := RTXCreate2(CTM_Server, CTM_User, CTM_Password);
    RTXApplication.Initialize('');
  except
    RTXApplication := nil;
    exit;
  end;

  RTXRefBookCollection := RTXApplication as RailTariff_TLB._RefBookCollection;
  for i := 0 to RTXRefBookCollection.Count - 1 do begin
    try
      RTXRefBookInfo := RTXRefBookCollection.Item[i];
      ShowTextMessage('Загрузка "' + RTXRefBookInfo.Caption + '"... ' + #10 + 'Осталось ' + IntToStr(RTXRefBookCollection.Count - i) + ' ...', False);

      try
        Client_RefBook.Append;
        Client_RefBook.FieldByName('ID'          ).Value := RTXRefBookInfo.ID;
        Client_RefBook.FieldByName('Caption'     ).Value := RTXRefBookInfo.Caption;
        Client_RefBook.FieldByName('Type'        ).Value := RTXRefBookInfo.type_;
        Client_RefBook.FieldByName('KeyField'    ).Value := RTXRefBookInfo.KeyField;
        Client_RefBook.FieldByName('SubKeyField' ).Value := RTXRefBookInfo.SubKeyField;
        Client_RefBook.FieldByName('FieldCount'  ).Value := RTXRefBookInfo.FieldCount;
        Client_RefBook.FieldByName('TableDigest' ).Value := RTXRefBookInfo.TableDigest;
        Client_RefBook.Post;

        v := RTXRefBookInfo.TableDesc[False];
        for k := 0 to VarArrayHighBound(v, 1) do begin
          Client_Fields.Append;
          Client_Fields.FieldByName('ID'           ).Value := RTXRefBookInfo.ID;
          Client_Fields.FieldByName('field_name'   ).Value := v[k,1];
          Client_Fields.FieldByName('field_caption').Value := v[k,0];
          Client_Fields.Post;
        end;

      except
        Client_RefBook.Cancel;
      end;
    except
    end;
  end;

  ShowTextMessage;
  Client_RefBook.EnableControls;
  Client_Fields.EnableControls;
  RTXApplication := nil;
end;

procedure TfmCtmLoadDictoinary.dxBarButton20Click(Sender: TObject);
var    RTXApplication : IApplication;
          RTXDocument : RailTariff_TLB.IDocument;
           RTXRefBook : RailTariff_TLB._RefBook2;
       RTXRefBookInfo : RailTariff_TLB._RefBookInfo;
                v, v2 : Variant;
                  i,k : integer;
             ClientDS : TClientDataSet;
               column : TcxGridDBBandedColumn;
           mem_stream : TMemoryStream;
                field : TFieldDef;
begin
  try
    RTXApplication := RTXCreate2(CTM_Server, CTM_User, CTM_Password);
    RTXApplication.Initialize('');
  except
    RTXApplication := nil;
    exit;
  end;

  RTXRefBook := RTXApplication.RefBook[cxGrid1DBBandedTableView1ID.DataBinding.Field.AsString] as RailTariff_TLB._RefBook2;
  RTXRefBookInfo := RTXRefBook as RailTariff_TLB._RefBookInfo;

  ClientDS := TClientDataSet.Create(nil);
  v := RTXRefBookInfo.TableDesc[False];
  for k := 0 to VarArrayHighBound(v, 1) do begin
    ClientDS.FieldDefs.Add(v[k,1], ftString, 200);
  end;
  ClientDS.CreateDataSet;
  ClientDS.LogChanges := False;


  cxGridDBBandedTableView2.ClearItems;
  for k := 0 to VarArrayHighBound(v, 1) do begin
      column := cxGridDBBandedTableView2.CreateColumn;
      column.DataBinding.FieldName := v[k,1];
      column.Caption  := v[k,0];
      column.Name     := 'cxGridDBBandedTableView2' + v[k,1];
      column.Width    := 70;

      if k=0 then begin
        column.Summary.FooterKind   := skCount;
        column.Summary.FooterFormat := '#,##0';
      end;
  end;


  RTXRefBook.First;
  while not RTXRefBook.EOF do begin

    if (RTXRefBook.Position mod 30) = 0 then
      ShowTextMessage('Загрузка "' + RTXRefBookInfo.Caption + '"... ' + #10 + 'Осталось ' + IntToStr(RTXRefBook.RecordCount - RTXRefBook.Position) + ' ...', False);

    v2 := RTXRefBook.Record_[False];
    ClientDS.Append;
    for k := 0 to VarArrayHighBound(v2, 1) do begin
      ClientDS.Fields.Fields[k].Value := v2[k];
    end;
    ClientDS.Post;


    RTXRefBook.Next;
  end;

  DS_RefBookData.DataSet := nil;
  Client_RefBookData.Free;
  Client_RefBookData := TClientDataSet.Create(nil);
  Client_RefBookData.XMLData := ClientDS.XMLData;
  DS_RefBookData.DataSet := Client_RefBookData;
  ShowTextMessage;
  RTXApplication := nil;
end;

procedure TfmCtmLoadDictoinary.dxBarButton21Click(Sender: TObject);
var    RTXApplication : IApplication;
          RTXDocument : RailTariff_TLB.IDocument;
           RTXRefBook : RailTariff_TLB._RefBook2;
       RTXRefBookInfo : RailTariff_TLB._RefBookInfo;
 RTXRefBookCollection : RailTariff_TLB._RefBookCollection;
                v, v2 : Variant;
                  i,k : integer;
            Client_RB : TClientDataSet;
           Client_RBF : TClientDataSet;
        Client_RBData : TClientDataSet;
            Q, Q_Save : TADOQuery;
          ref_book_id : integer;
sp_CTM_refbook_modify : TADOStoredProc;
sp_CTM_inf_obj_update : TADOStoredProc;
begin
  Client_RB := TClientDataSet.Create(nil);
  Client_RB.FieldDefs.Add('ID', ftString, 100);
  Client_RB.FieldDefs.Add('Caption', ftString, 200);
  Client_RB.FieldDefs.Add('Type', ftString, 100);
  Client_RB.FieldDefs.Add('KeyField', ftString, 100);
  Client_RB.FieldDefs.Add('SubKeyField', ftString, 100);
  Client_RB.FieldDefs.Add('FieldCount', ftInteger);
  Client_RB.FieldDefs.Add('TableDesc', ftString, 500);
  Client_RB.FieldDefs.Add('TableDigest', ftInteger);
  Client_RB.CreateDataSet;
  Client_RB.LogChanges := False;

  Client_RBF := TClientDataSet.Create(nil);
  Client_RBF.FieldDefs.Add('ID', ftString, 100);
  Client_RBF.FieldDefs.Add('field_name', ftString, 30);
  Client_RBF.FieldDefs.Add('field_caption', ftString, 200);
  Client_RBF.CreateDataSet;
  Client_RBF.LogChanges := False;

  try
    RTXApplication := RTXCreate2(CTM_Server, CTM_User, CTM_Password);
    RTXApplication.Initialize('');
  except
    RTXApplication := nil;
    exit;
  end;

  RTXRefBookCollection := RTXApplication as RailTariff_TLB._RefBookCollection;
  for i := 0 to RTXRefBookCollection.Count - 1 do begin
    try
      RTXRefBookInfo := RTXRefBookCollection.Item[i];
      ShowTextMessage('Загрузка "' + RTXRefBookInfo.Caption + '"... ' + #10 + 'Осталось ' + IntToStr(RTXRefBookCollection.Count - i) + ' ...', False);

      try
        Client_RB.Append;
        Client_RB.FieldByName('ID'          ).Value := RTXRefBookInfo.ID;
        Client_RB.FieldByName('Caption'     ).Value := RTXRefBookInfo.Caption;
        Client_RB.FieldByName('Type'        ).Value := RTXRefBookInfo.type_;
        Client_RB.FieldByName('KeyField'    ).Value := RTXRefBookInfo.KeyField;
        Client_RB.FieldByName('SubKeyField' ).Value := RTXRefBookInfo.SubKeyField;
        Client_RB.FieldByName('FieldCount'  ).Value := RTXRefBookInfo.FieldCount;
        Client_RB.FieldByName('TableDigest' ).Value := RTXRefBookInfo.TableDigest;
        Client_RB.Post;
      except
        Client_RB.Cancel;
      end;
    except
    end;
  end;


  Q := TADOQuery.Create(nil);
  Q.Connection := ADOConnect;



  Client_RB.First;
  while not Client_RB.Eof do begin
    ShowTextMessage('Проверка "' + Client_RB.FieldByName('ID').AsString + '"... ', False);

    Q.SQL.Clear;
    Q.SQL.Add('SELECT top 1 * FROM ctm_refbook2 WHERE ref_book_name = ''' + Client_RB.FieldByName('ID').AsString + '''');
    Q.Open;


    if Q.RecordCount = 0 then begin
      //  Справочник не найден в ЛИС
      ref_book_id := -9;
    end
    else if Q.FieldByName('ref_book_digest').AsInteger <> Client_RB.FieldByName('TableDigest').AsInteger then begin
      //  Справочник требуется обновить
      ref_book_id := Q.FieldByName('ref_book_id').AsInteger;
    end else begin
      //  Ничего не делаем
      ref_book_id := 0;
    end;

    if ref_book_id <> 0 then begin
      RTXRefBook     := RTXApplication.RefBook[Client_RB.FieldByName('ID').AsString] as RailTariff_TLB._RefBook2;
      RTXRefBookInfo := RTXRefBook as RailTariff_TLB._RefBookInfo;

      Client_RBF.EmptyDataSet;

      Client_RBData := TClientDataSet.Create(nil);
      v := RTXRefBookInfo.TableDesc[False];
      for k := 0 to VarArrayHighBound(v, 1) do begin
        Client_RBData.FieldDefs.Add(v[k,1], ftString, 200);

        Client_RBF.Append;
        Client_RBF.FieldByName('ID'           ).Value := RTXRefBookInfo.ID;
        Client_RBF.FieldByName('field_name'   ).Value := v[k,1];
        Client_RBF.FieldByName('field_caption').Value := v[k,0];
        Client_RBF.Post;
      end;
      Client_RBData.CreateDataSet;
      Client_RBData.LogChanges := False;

      RTXRefBook.First;
      while not RTXRefBook.EOF do begin

        if (RTXRefBook.Position mod 30) = 0 then
          ShowTextMessage('Проверка "' + RTXRefBookInfo.Caption + '"... ' + #10 + 'Загрузка данных. Осталось ' + IntToStr(RTXRefBook.RecordCount - RTXRefBook.Position) + ' ...', False);

        v2 := RTXRefBook.Record_[False];
        Client_RBData.Append;
        for k := 0 to VarArrayHighBound(v2, 1) do begin
          Client_RBData.Fields.Fields[k].Value := v2[k];
        end;
        Client_RBData.Post;


        RTXRefBook.Next;
      end;

//      sp_CTM_refbook_modify := TADOStoredProc.Create(nil);
//      sp_CTM_refbook_modify.Connection := ADOConnect;
//      sp_CTM_refbook_modify.ProcedureName := 'sp_CTM_refbook_modify';
//      sp_CTM_refbook_modify.Parameters.Refresh;
//      sp_CTM_refbook_modify.Parameters.ParamByName('@ref_book_id'      ).Value := iif(ref_book_id = -9, null, ref_book_id);
//      sp_CTM_refbook_modify.Parameters.ParamByName('@type_action'      ).Value := iif(ref_book_id = -9, 0, 1);
//      sp_CTM_refbook_modify.Parameters.ParamByName('@ref_book_name'    ).Value := Client_RB.FieldByName('ID').AsString;
//      sp_CTM_refbook_modify.Parameters.ParamByName('@ref_book_caption' ).Value := Client_RB.FieldByName('Caption').AsString;
//      sp_CTM_refbook_modify.Parameters.ParamByName('@ref_book_type'    ).Value := Client_RB.FieldByName('Type').AsString;
//      sp_CTM_refbook_modify.Parameters.ParamByName('@ref_book_digest'  ).Value := Client_RB.FieldByName('TableDigest').AsInteger;
//      sp_CTM_refbook_modify.Parameters.ParamByName('@ref_book_fields'  ).Value := DataXMLToSQL(Client_RBF);
//      sp_CTM_refbook_modify.Parameters.ParamByName('@ref_book_xml'     ).Value := DataXMLToSQL(Client_RBData);
//      sp_CTM_refbook_modify.ExecProc;
//
//      sp_CTM_refbook_modify.Free;

      Q_Save := TADOQuery.Create(nil);
      Q_Save.Connection := ADOConnect;
      Q_Save.SQL.Add('DELETE CTM_REFBOOK2 WHERE ref_book_name = ''' + Client_RB.FieldByName('ID').AsString + '''');
      Q_Save.ExecSQL;


      Q_Save.SQL.Clear;
      Q_Save.SQL.Add('DECLARE @xml xml');
      Q_Save.SQL.Add('SET @xml = ''' + DataXMLToSQL(Client_RBData) + '''');
      Q_Save.SQL.Add('INSERT INTO CTM_REFBOOK2 (ref_book_name, ref_book_caption, ref_book_digest, ref_book_key1, ref_book_key2, ref_book_xml)');
      Q_Save.SQL.Add('SELECT');
      Q_Save.SQL.Add('''' + Client_RB.FieldByName('ID').AsString + ''',');
      Q_Save.SQL.Add('''' + Client_RB.FieldByName('Caption').AsString + ''',');
      Q_Save.SQL.Add('' + IntToStr(Client_RB.FieldByName('TableDigest').AsInteger) + ',');
      Q_Save.SQL.Add('ref.value(''@' + Client_RB.FieldByName('KeyField').AsString + ''',''varchar(max)'')	as ' + Client_RB.FieldByName('KeyField').AsString + ',');
      if Client_RB.FieldByName('SubKeyField').AsString <> '' then begin
        Q_Save.SQL.Add('ref.value(''@' + Client_RB.FieldByName('SubKeyField').AsString + ''',''varchar(max)'')	as ' + Client_RB.FieldByName('SubKeyField').AsString + ',');
      end else begin
        Q_Save.SQL.Add('null,');
      end;
      Q_Save.SQL.Add('ref.query(''.'')');
      Q_Save.SQL.Add('FROM	@xml.nodes(''/DATAPACKET/ROWDATA/ROW'') as node(ref)');
      Q_Save.ExecSQL;


      Q_Save.Free;

      Client_RBData.Free;
    end;


    Client_RB.Next
  end;


// 4. Загружаем данные
// 5. Обновляем данные


  sp_CTM_inf_obj_update := TADOStoredProc.Create(nil);
  sp_CTM_inf_obj_update.Connection := ADOConnect;
  sp_CTM_inf_obj_update.ProcedureName := 'sp_CTM_inf_obj_update';
  sp_CTM_inf_obj_update.Parameters.Refresh;
  sp_CTM_inf_obj_update.ExecProc;
  sp_CTM_inf_obj_update.Free;

  ShowTextMessage;
  Client_RB.Free;
  Client_RBF.Free;
  Q.Free;
  RTXApplication := nil;
end;

procedure TfmCtmLoadDictoinary.dxBarButton22Click(Sender: TObject);
var    RTXApplication : IApplication;
          RTXDocument : RailTariff_TLB.IDocument;
           RTXRefBook : RailTariff_TLB._RefBook2;
        RTXRefBookDoc : RailTariff_TLB.IDocumentRefBook;
        RTXRefBookCar : RailTariff_TLB._RefBook2;
      RTXRefBookCargo : RailTariff_TLB._RefBook2;
     RTXRefBookFilter : RailTariff_TLB._RefBook2;

       RTXRefBookInfo : RailTariff_TLB._RefBookInfo;
 RTXRefBookCollection : RailTariff_TLB._RefBookCollection;
            Client_RB : TClientDataSet;
               Q_Save : TADOQuery;

 str : string;
begin
  Client_RB := TClientDataSet.Create(nil);
  Client_RB.FieldDefs.Add('SendID'  , ftInteger);
  Client_RB.FieldDefs.Add('OtprID'  , ftInteger);
  Client_RB.FieldDefs.Add('CragoKOD', ftString, 50);
  Client_RB.FieldDefs.Add('CarID'   , ftInteger);
  Client_RB.CreateDataSet;
  Client_RB.LogChanges := False;


  try
    RTXApplication := RTXCreate2(CTM_Server, CTM_User, CTM_Password);
    RTXApplication.Initialize('');
  except
    RTXApplication := nil;
    exit;
  end;

  RTXDocument := RTXApplication.CreateDocument;
  RTXRefBook := RTXApplication.RefBook['Otpr'] as RailTariff_TLB._RefBook2;

  RTXRefBook.First;
  while not RTXRefBook.EOF do begin
    ShowTextMessage('Загрузка данных. Осталось ' + IntToStr(RTXRefBook.RecordCount - RTXRefBook.Position) + ' ...', False);
    try
      (RTXDocument as IDocumentAttr).Send(RTXRefBook.FieldValue['OTPRID'], RTXRefBook.FieldValue['SendID'], 0, 2);

      if (RTXRefBook.FieldValue['OTPRID'] = 1000) and  (RTXRefBook.FieldValue['SendID'] = 110) then begin
        ShowMessage(RTXRefBook.FieldValue['OTPRN'] + ':' + RTXRefBook.FieldValue['SendN']);
      end;

      RTXDocument.QueryInterface(IdocumentRefBook, RTXRefBookDoc);
      RTXRefBookCar := RTXRefBookDoc.FilteredRefBook('Cars', Chr(0)) as _RefBook2;

//      if RTXRefBookCar.RecordCount = 0 then begin

        RTXRefBookFilter := RTXApplication.RefBook['ETSelect'] as RailTariff_TLB._RefBook2;
        RTXRefBookFilter.SeekByKey('SendID',RTXRefBook.FieldValue['SendID']);
        if RTXRefBookFilter.FieldValue['SendID'] = RTXRefBook.FieldValue['SendID'] then begin
          RTXRefBookCargo := RTXRefBookDoc.FilteredRefBook(RTXRefBookFilter.FieldValue['TablName'], Chr(0)) as _RefBook2;

          RTXRefBookCargo.First;
          while not RTXRefBookCargo.EOF do begin
            (RTXDocument as IDocumentAttr).Send(RTXRefBook.FieldValue['OTPRID'], RTXRefBook.FieldValue['SendID'], 0, 2);
            (RTXDocument as IDocumentAttr).Freight(RTXRefBookCargo.FieldValue['KOD'], 60);

            RTXDocument.QueryInterface(IdocumentRefBook, RTXRefBookDoc);
            RTXRefBookCar := RTXRefBookDoc.FilteredRefBook('Cars', Chr(0)) as _RefBook2;


            RTXRefBookCar.First;
            while not RTXRefBookCar.EOF do begin
              Client_RB.Append;
              Client_RB.FieldByName('SendID'  ).Value := RTXRefBook.FieldValue['SendID'];
              Client_RB.FieldByName('OtprID'  ).Value := RTXRefBook.FieldValue['OTPRID'];
              Client_RB.FieldByName('CragoKOD').Value := RTXRefBookCargo.FieldValue['KOD'];
              Client_RB.FieldByName('CarID'   ).Value := RTXRefBookCar.FieldValue['CarID'];
              Client_RB.Post;
              RTXRefBookCar.Next;
            end;

            RTXRefBookCargo.Next;
          end;

      end else begin

        RTXRefBookCar.First;
        while not RTXRefBookCar.EOF do begin
          Client_RB.Append;
          Client_RB.FieldByName('SendID'  ).Value := RTXRefBook.FieldValue['SendID'];
          Client_RB.FieldByName('OtprID'  ).Value := RTXRefBook.FieldValue['OTPRID'];
          Client_RB.FieldByName('CragoKOD').Value := null;
          Client_RB.FieldByName('CarID'   ).Value := RTXRefBookCar.FieldValue['CarID'];
          Client_RB.Post;
          RTXRefBookCar.Next;
        end;

      end;
    except
    end;
    RTXRefBook.Next;
  end;

  Q_Save := TADOQuery.Create(nil);
  Q_Save.Connection := ADOConnect;
  Q_Save.SQL.Add('DELETE CTM_REFBOOK2 WHERE ref_book_name = ''RodPS''');
  Q_Save.ExecSQL;

  Q_Save.SQL.Clear;
  Q_Save.SQL.Add('DECLARE @xml xml');
  Q_Save.SQL.Add('SET @xml = ''' + DataXMLToSQL(Client_RB) + '''');
  Q_Save.SQL.Add('INSERT INTO CTM_REFBOOK2 (ref_book_name, ref_book_caption, ref_book_digest, ref_book_key1, ref_book_key2, ref_book_xml)');
  Q_Save.SQL.Add('SELECT');
  Q_Save.SQL.Add('''RodPS'',');
  Q_Save.SQL.Add('''RodPS'',');
  Q_Save.SQL.Add('-9,');
  Q_Save.SQL.Add('ref.value(''@OtprID'',''varchar(max)'')	as KeyField,');
  Q_Save.SQL.Add('ref.value(''@SendID'',''varchar(max)'')	as SubKeyField,');
  Q_Save.SQL.Add('ref.query(''.'')');
  Q_Save.SQL.Add('FROM	@xml.nodes(''/DATAPACKET/ROWDATA/ROW'') as node(ref)');
  Q_Save.ExecSQL;


  Q_Save.Free;

  //ShowMessage(DataXMLToSQL(Client_RB));


  ShowTextMessage;
  Client_RB.Free;
  RTXApplication := nil;
end;

procedure TfmCtmLoadDictoinary.dxBarButton23Click(Sender: TObject);
var    RTXApplication : IApplication;
          RTXDocument : RailTariff_TLB.IDocument;
           RTXRefBook : RailTariff_TLB._RefBook2;
        RTXRefBookDoc : RailTariff_TLB.IDocumentRefBook;
        RTXRefBookCar : RailTariff_TLB._RefBook2;
    RTXRefBookEqUCont : RailTariff_TLB._RefBook2;
       RTXRefBookFlat : RailTariff_TLB._RefBook2;
      RTXRefBookCargo : RailTariff_TLB._RefBook2;
     RTXRefBookFilter : RailTariff_TLB._RefBook2;

       RTXRefBookInfo : RailTariff_TLB._RefBookInfo;
 RTXRefBookCollection : RailTariff_TLB._RefBookCollection;
            Client_RB : TClientDataSet;
        Client_RBFlat : TClientDataSet;
               Q_Save : TADOQuery;

 str : string;
begin
  Client_RB := TClientDataSet.Create(nil);
  Client_RB.FieldDefs.Add('SendID'  , ftInteger);
  Client_RB.FieldDefs.Add('OtprID'  , ftInteger);
  Client_RB.FieldDefs.Add('TranspID', ftInteger);
  Client_RB.FieldDefs.Add('CarID'   , ftInteger);
  Client_RB.FieldDefs.Add('Name'    , ftString, 800);
  Client_RB.CreateDataSet;
  Client_RB.LogChanges := False;

  Client_RBFlat := TClientDataSet.Create(nil);
  Client_RBFlat.FieldDefs.Add('SendID'  , ftInteger);
  Client_RBFlat.FieldDefs.Add('OtprID'  , ftInteger);
  Client_RBFlat.FieldDefs.Add('TranspID', ftInteger);
  Client_RBFlat.FieldDefs.Add('CarID'   , ftInteger);
  Client_RBFlat.FieldDefs.Add('Name'    , ftString, 800);
  Client_RBFlat.CreateDataSet;
  Client_RBFlat.LogChanges := False;

  try
    RTXApplication := RTXCreate2(CTM_Server, CTM_User, CTM_Password);
    RTXApplication.Initialize('');
  except
    RTXApplication := nil;
    exit;
  end;

  RTXDocument := RTXApplication.CreateDocument;
  RTXRefBook  := RTXApplication.RefBook['Otpr'] as RailTariff_TLB._RefBook2;
  (RTXDocument as IDocumentAttr).FromStation('648202', 20);
  (RTXDocument as IDocumentAttr).ToStation  ('742809', 29);
  (RTXDocument as IDocumentControl).DoCalcDistance;

  RTXRefBook.First;
  while not RTXRefBook.EOF do begin
    ShowTextMessage('Загрузка данных. Осталось ' + IntToStr(RTXRefBook.RecordCount - RTXRefBook.Position) + ' ...', False);
    try
      (RTXDocument as IDocumentAttr).Send(RTXRefBook.FieldValue['OTPRID'], RTXRefBook.FieldValue['SendID'], 0, 2);
      RTXDocument.QueryInterface(IdocumentRefBook, RTXRefBookDoc);
      RTXRefBookCar := RTXRefBookDoc.FilteredRefBook('Cars', Chr(0)) as _RefBook2;

      if RTXRefBookCar.RecordCount = 0 then begin
        RTXRefBookFilter := RTXApplication.RefBook['ETSelect'] as RailTariff_TLB._RefBook2;
        RTXRefBookFilter.SeekByKey('SendID',RTXRefBook.FieldValue['SendID']);
        if RTXRefBookFilter.FieldValue['SendID'] = RTXRefBook.FieldValue['SendID'] then
          RTXRefBookCargo := RTXRefBookDoc.FilteredRefBook(RTXRefBookFilter.FieldValue['TablName'], Chr(0)) as _RefBook2;

          RTXRefBookCargo.First;
          while not RTXRefBookCargo.EOF do begin
            (RTXDocument as IDocumentAttr).Send(RTXRefBook.FieldValue['OTPRID'], RTXRefBook.FieldValue['SendID'], 0, 2);
            (RTXDocument as IDocumentAttr).Freight(RTXRefBookCargo.FieldValue['KOD'], 60);

            RTXDocument.QueryInterface(IdocumentRefBook, RTXRefBookDoc);
            RTXRefBookCar := RTXRefBookDoc.FilteredRefBook('Cars', Chr(0)) as _RefBook2;


            RTXRefBookCar.First;
            while not RTXRefBookCar.EOF do begin
              if RTXRefBook.FieldValue['OTPRID'] = 3000 then
                (RTXDocument as IDocumentAttr).Container(RTXRefBookCar.FieldValue['CarID'], 1, 1, 60)
              else
                (RTXDocument as IDocumentAttr).Wagon(RTXRefBookCar.FieldValue['CarID'], 1, 1, 60);

              (RTXDocument as IDocumentAttr).QueryInterface(IdocumentRefBook, RTXRefBookDoc);
              RTXRefBookEqUCont := RTXRefBookDoc.FilteredRefBook('EqUCont', Chr(0)) as _RefBook2;

              RTXRefBookEqUCont.First;
              while not RTXRefBookEqUCont.EOF do begin
                Client_RB.Append;
                Client_RB.FieldByName('SendID'  ).Value := RTXRefBook.FieldValue['SendID'];
                Client_RB.FieldByName('OtprID'  ).Value := RTXRefBook.FieldValue['OTPRID'];
                Client_RB.FieldByName('TranspID').Value := RTXRefBookCar.FieldValue['CarID'];
                Client_RB.FieldByName('CarID'   ).Value := RTXRefBookEqUCont.FieldValue['CarID'];
                Client_RB.FieldByName('Name'    ).Value := RTXRefBookEqUCont.FieldValue['Name'];
                Client_RB.Post;
                RTXRefBookEqUCont.Next;
              end;

              (RTXDocument as IDocumentAttr).QueryInterface(IdocumentRefBook, RTXRefBookDoc);
              RTXRefBookFlat := RTXRefBookDoc.FilteredRefBook('FlatCars', Chr(0)) as _RefBook2;

              RTXRefBookFlat.First;
              while not RTXRefBookFlat.EOF do begin
                Client_RBFlat.Append;
                Client_RBFlat.FieldByName('SendID'  ).Value := RTXRefBook.FieldValue['SendID'];
                Client_RBFlat.FieldByName('OtprID'  ).Value := RTXRefBook.FieldValue['OTPRID'];
                Client_RBFlat.FieldByName('TranspID').Value := RTXRefBookCar.FieldValue['CarID'];
                Client_RBFlat.FieldByName('CarID'   ).Value := RTXRefBookFlat.FieldValue['CarID'];
                Client_RBFlat.FieldByName('Name'    ).Value := RTXRefBookFlat.FieldValue['Name'];
                Client_RBFlat.Post;
                RTXRefBookFlat.Next;
              end;

              RTXRefBookCar.Next;
            end;

            RTXRefBookCargo.Next;
          end;
      end else begin

        RTXRefBookCar.First;
        while not RTXRefBookCar.EOF do begin
          if RTXRefBook.FieldValue['OTPRID'] = 3000 then
            (RTXDocument as IDocumentAttr).Container(RTXRefBookCar.FieldValue['CarID'], 2, 1, 0)
          else
            (RTXDocument as IDocumentAttr).Wagon(RTXRefBookCar.FieldValue['CarID'], 1, 1, 60);

          (RTXDocument as IDocumentAttr).QueryInterface(IdocumentRefBook, RTXRefBookDoc);
          RTXRefBookEqUCont := RTXRefBookDoc.FilteredRefBook('EqUCont', Chr(0)) as _RefBook2;

          RTXRefBookEqUCont.First;
          while not RTXRefBookEqUCont.EOF do begin
            Client_RB.Append;
            Client_RB.FieldByName('SendID'  ).Value := RTXRefBook.FieldValue['SendID'];
            Client_RB.FieldByName('OtprID'  ).Value := RTXRefBook.FieldValue['OTPRID'];
            Client_RB.FieldByName('TranspID').Value := RTXRefBookCar.FieldValue['CarID'];
            Client_RB.FieldByName('CarID'   ).Value := RTXRefBookEqUCont.FieldValue['CarID'];
            Client_RB.FieldByName('Name'    ).Value := RTXRefBookEqUCont.FieldValue['Name'];
            Client_RB.Post;
            RTXRefBookEqUCont.Next;
          end;

          (RTXDocument as IDocumentAttr).QueryInterface(IdocumentRefBook, RTXRefBookDoc);
          RTXRefBookFlat := RTXRefBookDoc.FilteredRefBook('FlatCars', Chr(0)) as _RefBook2;

          RTXRefBookFlat.First;
          while not RTXRefBookFlat.EOF do begin
            Client_RBFlat.Append;
            Client_RBFlat.FieldByName('SendID'  ).Value := RTXRefBook.FieldValue['SendID'];
            Client_RBFlat.FieldByName('OtprID'  ).Value := RTXRefBook.FieldValue['OTPRID'];
            Client_RBFlat.FieldByName('TranspID').Value := RTXRefBookCar.FieldValue['CarID'];
            Client_RBFlat.FieldByName('CarID'   ).Value := RTXRefBookFlat.FieldValue['CarID'];
            Client_RBFlat.FieldByName('Name'    ).Value := RTXRefBookFlat.FieldValue['Name'];
            Client_RBFlat.Post;
            RTXRefBookFlat.Next;
          end;

          RTXRefBookCar.Next;
        end;

      end;
    except
    end;
    RTXRefBook.Next;
  end;

  Q_Save := TADOQuery.Create(nil);
  Q_Save.Connection := ADOConnect;
  Q_Save.SQL.Add('DELETE CTM_REFBOOK2 WHERE ref_book_name = ''SPCont''');
  Q_Save.ExecSQL;

  Q_Save.SQL.Clear;
  Q_Save.SQL.Add('DECLARE @xml xml');
  Q_Save.SQL.Add('SET @xml = ''' + DataXMLToSQL(Client_RB) + '''');
  Q_Save.SQL.Add('INSERT INTO CTM_REFBOOK2 (ref_book_name, ref_book_caption, ref_book_digest, ref_book_key1, ref_book_key2, ref_book_xml)');
  Q_Save.SQL.Add('SELECT');
  Q_Save.SQL.Add('''SPCont'',');
  Q_Save.SQL.Add('''SPCont'',');
  Q_Save.SQL.Add('-9,');
  Q_Save.SQL.Add('ref.value(''@OtprID'',''varchar(max)'')	as KeyField,');
  Q_Save.SQL.Add('ref.value(''@SendID'',''varchar(max)'')	as SubKeyField,');
  Q_Save.SQL.Add('ref.query(''.'')');
  Q_Save.SQL.Add('FROM	@xml.nodes(''/DATAPACKET/ROWDATA/ROW'') as node(ref)');
  Q_Save.ExecSQL;

  Q_Save.Free;

  Q_Save := TADOQuery.Create(nil);
  Q_Save.Connection := ADOConnect;
  Q_Save.SQL.Add('DELETE CTM_REFBOOK2 WHERE ref_book_name = ''SPFlat''');
  Q_Save.ExecSQL;

  Q_Save.SQL.Clear;
  Q_Save.SQL.Add('DECLARE @xml xml');
  Q_Save.SQL.Add('SET @xml = ''' + DataXMLToSQL(Client_RBFlat) + '''');
  Q_Save.SQL.Add('INSERT INTO CTM_REFBOOK2 (ref_book_name, ref_book_caption, ref_book_digest, ref_book_key1, ref_book_key2, ref_book_xml)');
  Q_Save.SQL.Add('SELECT');
  Q_Save.SQL.Add('''SPFlat'',');
  Q_Save.SQL.Add('''SPFlat'',');
  Q_Save.SQL.Add('-9,');
  Q_Save.SQL.Add('ref.value(''@OtprID'',''varchar(max)'')	as KeyField,');
  Q_Save.SQL.Add('ref.value(''@SendID'',''varchar(max)'')	as SubKeyField,');
  Q_Save.SQL.Add('ref.query(''.'')');
  Q_Save.SQL.Add('FROM	@xml.nodes(''/DATAPACKET/ROWDATA/ROW'') as node(ref)');
  Q_Save.ExecSQL;


  Q_Save.Free;

//  ShowMessage(DataXMLToSQL(Client_RB));


  ShowTextMessage;
  Client_RB.Free;
  Client_RBFlat.Free;
  RTXApplication := nil;
end;

procedure TfmCtmLoadDictoinary.dxBarButton24Click(Sender: TObject);
var    RTXApplication : IApplication;
          RTXDocument : RailTariff_TLB.IDocument;
           RTXRefBook : RailTariff_TLB._RefBook2;
        RTXRefBookDoc : RailTariff_TLB.IDocumentRefBook;
        RTXRefBookCar : RailTariff_TLB._RefBook2;
      RTXRefBookCargo : RailTariff_TLB._RefBook2;
     RTXRefBookFilter : RailTariff_TLB._RefBook2;

       RTXRefBookInfo : RailTariff_TLB._RefBookInfo;
 RTXRefBookCollection : RailTariff_TLB._RefBookCollection;
            Client_RB : TClientDataSet;
               Q_Save : TADOQuery;
                    Q : TADOQuery;

 str : string;
begin
  Client_RB := TClientDataSet.Create(nil);
  Client_RB.FieldDefs.Add('SendID'  , ftInteger);
  Client_RB.FieldDefs.Add('OtprID'  , ftInteger);
  Client_RB.FieldDefs.Add('CragoKOD', ftString, 50);
  Client_RB.FieldDefs.Add('CarID'   , ftInteger);
  Client_RB.CreateDataSet;
  Client_RB.LogChanges := False;

  Q := TADOQuery.Create(nil);
  Q.Connection := ADOConnect;
  Q.SQL.Add('SELECT	ref_book_xml.value(''(/ROW/@KOD)[1]'',''varchar(max)'') as KOD,');
  Q.SQL.Add('       ref_book_xml.value(''(/ROW/@KODGNG8)[1]'',''varchar(max)'') as KODGNG8');
  Q.SQL.Add('FROM	  CTM_REFBOOK2');
  Q.SQL.Add('WHERE	ref_book_name = ''ETSNG''');
  Q.Open;

  try
    RTXApplication := RTXCreate2(CTM_Server, CTM_User, CTM_Password);
    RTXApplication.Initialize('');
  except
    RTXApplication := nil;
    exit;
  end;

  RTXDocument := RTXApplication.CreateDocument;
  while not Q.Eof do begin
    ShowTextMessage('Загрузка данных. Осталось ' + IntToStr(Q.RecordCount - Q.RecNo) + ' ...', False);
    try
      (RTXDocument as IDocumentAttr).Freight(Q.FieldByName('KOD').AsString, 60);

      RTXDocument.QueryInterface(IdocumentRefBook, RTXRefBookDoc);

      RTXRefBookCar := RTXRefBookDoc.FilteredRefBook('Cars', Chr(0)) as _RefBook2;
      RTXRefBookCar.First;
      while not RTXRefBookCar.EOF do begin
        Client_RB.Append;
        Client_RB.FieldByName('SendID'  ).Value := null;
        Client_RB.FieldByName('OtprID'  ).Value := null;
        Client_RB.FieldByName('CragoKOD').Value := Q.FieldByName('KOD').AsString;
        Client_RB.FieldByName('CarID'   ).Value := RTXRefBookCar.FieldValue['CarID'];
        Client_RB.Post;
        RTXRefBookCar.Next;
      end;


    except
    end;

    Q.Next;
  end;
  Q.Free;


//  RTXRefBook := RTXApplication.RefBook['Otpr'] as RailTariff_TLB._RefBook2;
//
//  RTXRefBook.First;
//  while not RTXRefBook.EOF do begin
//    ShowTextMessage('Загрузка данных. Осталось ' + IntToStr(RTXRefBook.RecordCount - RTXRefBook.Position) + ' ...', False);
//    try
//      (RTXDocument as IDocumentAttr).Send(RTXRefBook.FieldValue['OTPRID'], RTXRefBook.FieldValue['SendID'], 0, 2);
//
//      if (RTXRefBook.FieldValue['OTPRID'] = 1000) and  (RTXRefBook.FieldValue['SendID'] = 110) then begin
//        ShowMessage(RTXRefBook.FieldValue['OTPRN'] + ':' + RTXRefBook.FieldValue['SendN']);
//      end;
//
//      RTXDocument.QueryInterface(IdocumentRefBook, RTXRefBookDoc);
//      RTXRefBookCar := RTXRefBookDoc.FilteredRefBook('Cars', Chr(0)) as _RefBook2;
//
//      if RTXRefBookCar.RecordCount = 0 then begin
//
//        RTXRefBookFilter := RTXApplication.RefBook['ETSelect'] as RailTariff_TLB._RefBook2;
//        RTXRefBookFilter.SeekByKey('SendID',RTXRefBook.FieldValue['SendID']);
//        if RTXRefBookFilter.FieldValue['SendID'] = RTXRefBook.FieldValue['SendID'] then
//          RTXRefBookCargo := RTXRefBookDoc.FilteredRefBook(RTXRefBookFilter.FieldValue['TablName'], Chr(0)) as _RefBook2;
//
//          RTXRefBookCargo.First;
//          while not RTXRefBookCargo.EOF do begin
//            (RTXDocument as IDocumentAttr).Send(RTXRefBook.FieldValue['OTPRID'], RTXRefBook.FieldValue['SendID'], 0, 2);
//            (RTXDocument as IDocumentAttr).Freight(RTXRefBookCargo.FieldValue['KOD'], 60);
//
//            RTXDocument.QueryInterface(IdocumentRefBook, RTXRefBookDoc);
//            RTXRefBookCar := RTXRefBookDoc.FilteredRefBook('Cars', Chr(0)) as _RefBook2;
//
//
//            RTXRefBookCar.First;
//            while not RTXRefBookCar.EOF do begin
//              Client_RB.Append;
//              Client_RB.FieldByName('SendID'  ).Value := RTXRefBook.FieldValue['SendID'];
//              Client_RB.FieldByName('OtprID'  ).Value := RTXRefBook.FieldValue['OTPRID'];
//              Client_RB.FieldByName('CragoKOD').Value := RTXRefBookCargo.FieldValue['KOD'];
//              Client_RB.FieldByName('CarID'   ).Value := RTXRefBookCar.FieldValue['CarID'];
//              Client_RB.Post;
//              RTXRefBookCar.Next;
//            end;
//
//            RTXRefBookCargo.Next;
//          end;
//
//
////        ShowMessage(VarToStr(RTXRefBook.FieldValue['OTPRID']) + ':' + VarToStr(RTXRefBook.FieldValue['SendID']) + #10 + IntToStr(RTXRefBookCargo.RecordCount));
//      end else begin
//
//        RTXRefBookCar.First;
//        while not RTXRefBookCar.EOF do begin
//          Client_RB.Append;
//          Client_RB.FieldByName('SendID'  ).Value := RTXRefBook.FieldValue['SendID'];
//          Client_RB.FieldByName('OtprID'  ).Value := RTXRefBook.FieldValue['OTPRID'];
//          Client_RB.FieldByName('CragoKOD').Value := null;
//          Client_RB.FieldByName('CarID'   ).Value := RTXRefBookCar.FieldValue['CarID'];
//          Client_RB.Post;
//          RTXRefBookCar.Next;
//        end;
//
//      end;
//    except
//    end;
//    RTXRefBook.Next;
//  end;

  Q_Save := TADOQuery.Create(nil);
  Q_Save.Connection := ADOConnect;
  Q_Save.SQL.Add('DELETE CTM_REFBOOK2 WHERE ref_book_name = ''RodPS2''');
  Q_Save.ExecSQL;

  Q_Save.SQL.Clear;
  Q_Save.SQL.Add('DECLARE @xml xml');
  Q_Save.SQL.Add('SET @xml = ''' + DataXMLToSQL(Client_RB) + '''');
  Q_Save.SQL.Add('INSERT INTO CTM_REFBOOK2 (ref_book_name, ref_book_caption, ref_book_digest, ref_book_key1, ref_book_key2, ref_book_xml)');
  Q_Save.SQL.Add('SELECT');
  Q_Save.SQL.Add('''RodPS2'',');
  Q_Save.SQL.Add('''RodPS2'',');
  Q_Save.SQL.Add('-9,');
  Q_Save.SQL.Add('ref.value(''@CragoKOD'',''varchar(max)'')	as KeyField,');
  Q_Save.SQL.Add('null as SubKeyField,');
  Q_Save.SQL.Add('ref.query(''.'')');
  Q_Save.SQL.Add('FROM	@xml.nodes(''/DATAPACKET/ROWDATA/ROW'') as node(ref)');
  Q_Save.ExecSQL;


  Q_Save.Free;

  //ShowMessage(DataXMLToSQL(Client_RB));


  ShowTextMessage;
  Client_RB.Free;
  RTXApplication := nil;
end;

procedure TfmCtmLoadDictoinary.dxBarButton2Click(Sender: TObject);
var    RTXApplication : IApplication;
          RTXDocument : RailTariff_TLB.IDocument;
           RTXRefBook : RailTariff_TLB._RefBook2;
       RTXRefBookInfo : RailTariff_TLB._RefBookInfo;
 RTXRefBookCollection : RailTariff_TLB._RefBookCollection;
                v, v2 : Variant;
                  i,k : integer;
            Client_RB : TClientDataSet;
           Client_RBF : TClientDataSet;
        Client_RBData : TClientDataSet;
                    Q : TADOQuery;
          ref_book_id : integer;
sp_CTM_refbook_modify : TADOStoredProc;
begin
  Client_RB := TClientDataSet.Create(nil);
  Client_RB.FieldDefs.Add('ID', ftString, 100);
  Client_RB.FieldDefs.Add('Caption', ftString, 200);
  Client_RB.FieldDefs.Add('Type', ftString, 100);
  Client_RB.FieldDefs.Add('KeyField', ftString, 100);
  Client_RB.FieldDefs.Add('SubKeyField', ftString, 100);
  Client_RB.FieldDefs.Add('FieldCount', ftInteger);
  Client_RB.FieldDefs.Add('TableDesc', ftString, 500);
  Client_RB.FieldDefs.Add('TableDigest', ftInteger);
  Client_RB.CreateDataSet;
  Client_RB.LogChanges := False;

  Client_RBF := TClientDataSet.Create(nil);
  Client_RBF.FieldDefs.Add('ID', ftString, 100);
  Client_RBF.FieldDefs.Add('field_name', ftString, 30);
  Client_RBF.FieldDefs.Add('field_caption', ftString, 200);
  Client_RBF.CreateDataSet;
  Client_RBF.LogChanges := False;

  try
    RTXApplication := RTXCreate2(CTM_Server, CTM_User, CTM_Password);
    RTXApplication.Initialize('');
  except
    RTXApplication := nil;
    exit;
  end;

  RTXRefBookCollection := RTXApplication as RailTariff_TLB._RefBookCollection;
  for i := 0 to RTXRefBookCollection.Count - 1 do begin
    try
      RTXRefBookInfo := RTXRefBookCollection.Item[i];
      ShowTextMessage('Загрузка "' + RTXRefBookInfo.Caption + '"... ' + #10 + 'Осталось ' + IntToStr(RTXRefBookCollection.Count - i) + ' ...', False);

      try
        Client_RB.Append;
        Client_RB.FieldByName('ID'          ).Value := RTXRefBookInfo.ID;
        Client_RB.FieldByName('Caption'     ).Value := RTXRefBookInfo.Caption;
        Client_RB.FieldByName('Type'        ).Value := RTXRefBookInfo.type_;
        Client_RB.FieldByName('KeyField'    ).Value := RTXRefBookInfo.KeyField;
        Client_RB.FieldByName('SubKeyField' ).Value := RTXRefBookInfo.SubKeyField;
        Client_RB.FieldByName('FieldCount'  ).Value := RTXRefBookInfo.FieldCount;
        Client_RB.FieldByName('TableDigest' ).Value := RTXRefBookInfo.TableDigest;
        Client_RB.Post;
      except
        Client_RB.Cancel;
      end;
    except
    end;
  end;


  Q := TADOQuery.Create(nil);
  Q.Connection := ADOConnect;



  Client_RB.First;
  while not Client_RB.Eof do begin
    ShowTextMessage('Проверка "' + Client_RB.FieldByName('ID').AsString + '"... ', False);

    Q.SQL.Clear;
    Q.SQL.Add('SELECT * FROM view_ctm_refbook WHERE ref_book_name = ''' + Client_RB.FieldByName('ID').AsString + '''');
    Q.Open;


    if Q.RecordCount = 0 then begin
      //  Справочник не найден в ЛИС
      ref_book_id := -9;
    end
    else if Q.FieldByName('ref_book_digest').AsInteger <> Client_RB.FieldByName('TableDigest').AsInteger then begin
      //  Справочник требуется обновить
      ref_book_id := Q.FieldByName('ref_book_id').AsInteger;
    end else begin
      //  Ничего не делаем
      ref_book_id := 0;
    end;

    if ref_book_id <> 0 then begin
      RTXRefBook     := RTXApplication.RefBook[Client_RB.FieldByName('ID').AsString] as RailTariff_TLB._RefBook2;
      RTXRefBookInfo := RTXRefBook as RailTariff_TLB._RefBookInfo;

      Client_RBF.EmptyDataSet;

      Client_RBData := TClientDataSet.Create(nil);
      v := RTXRefBookInfo.TableDesc[False];
      for k := 0 to VarArrayHighBound(v, 1) do begin
        Client_RBData.FieldDefs.Add(v[k,1], ftString, 200);

        Client_RBF.Append;
        Client_RBF.FieldByName('ID'           ).Value := RTXRefBookInfo.ID;
        Client_RBF.FieldByName('field_name'   ).Value := v[k,1];
        Client_RBF.FieldByName('field_caption').Value := v[k,0];
        Client_RBF.Post;
      end;
      Client_RBData.CreateDataSet;
      Client_RBData.LogChanges := False;

      RTXRefBook.First;
      while not RTXRefBook.EOF do begin

        if (RTXRefBook.Position mod 30) = 0 then
          ShowTextMessage('Проверка "' + RTXRefBookInfo.Caption + '"... ' + #10 + 'Загрузка данных. Осталось ' + IntToStr(RTXRefBook.RecordCount - RTXRefBook.Position) + ' ...', False);

        v2 := RTXRefBook.Record_[False];
        Client_RBData.Append;
        for k := 0 to VarArrayHighBound(v2, 1) do begin
          Client_RBData.Fields.Fields[k].Value := v2[k];
        end;
        Client_RBData.Post;


        RTXRefBook.Next;
      end;

      sp_CTM_refbook_modify := TADOStoredProc.Create(nil);
      sp_CTM_refbook_modify.Connection := ADOConnect;
      sp_CTM_refbook_modify.ProcedureName := 'sp_CTM_refbook_modify';
      sp_CTM_refbook_modify.Parameters.Refresh;
      sp_CTM_refbook_modify.Parameters.ParamByName('@ref_book_id'      ).Value := iif(ref_book_id = -9, null, ref_book_id);
      sp_CTM_refbook_modify.Parameters.ParamByName('@type_action'      ).Value := iif(ref_book_id = -9, 0, 1);
      sp_CTM_refbook_modify.Parameters.ParamByName('@ref_book_name'    ).Value := Client_RB.FieldByName('ID').AsString;
      sp_CTM_refbook_modify.Parameters.ParamByName('@ref_book_caption' ).Value := Client_RB.FieldByName('Caption').AsString;
      sp_CTM_refbook_modify.Parameters.ParamByName('@ref_book_type'    ).Value := Client_RB.FieldByName('Type').AsString;
      sp_CTM_refbook_modify.Parameters.ParamByName('@ref_book_digest'  ).Value := Client_RB.FieldByName('TableDigest').AsInteger;
      sp_CTM_refbook_modify.Parameters.ParamByName('@ref_book_fields'  ).Value := DataXMLToSQL(Client_RBF);
      sp_CTM_refbook_modify.Parameters.ParamByName('@ref_book_xml'     ).Value := DataXMLToSQL(Client_RBData);
      sp_CTM_refbook_modify.ExecProc;

      sp_CTM_refbook_modify.Free;
      Client_RBData.Free;
    end;


    Client_RB.Next
  end;


// 4. Загружаем данные
// 5. Обновляем данные

  ShowTextMessage;
  Client_RB.Free;
  Client_RBF.Free;
  Q.Free;
  RTXApplication := nil;
end;

procedure TfmCtmLoadDictoinary.dxBarButton5Click(Sender: TObject);
begin
	PrintcxGrid(cxGrid1DBBandedTableView1);
end;

procedure TfmCtmLoadDictoinary.dxBarButton6Click(Sender: TObject);
begin
	SetdxDBGridColumns(cxGrid1DBBandedTableView1);
end;

procedure TfmCtmLoadDictoinary.dxBarButton7Click(Sender: TObject);
begin
	cxGrid1DBBandedTableView1.OptionsView.GroupByBox := not cxGrid1DBBandedTableView1.OptionsView.GroupByBox;
end;

procedure TfmCtmLoadDictoinary.dxBarButton8Click(Sender: TObject);
begin
	FiltercxGrid4ListID(cxGrid1DBBandedTableView1);
end;

procedure TfmCtmLoadDictoinary.dxBarButton9Click(Sender: TObject);
begin
	cxGrid1DBBandedTableView1.Filtering.ColumnFilteredItemsList := not dxBarButton9.Down;
end;

procedure TfmCtmLoadDictoinary.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action := caFree;
end;

end.
