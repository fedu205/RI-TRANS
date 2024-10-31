unit CtmNewBuffer;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Default, Vcl.StdCtrls, Vcl.Buttons,
  Vcl.ExtCtrls, Data.DB, Data.Win.ADODB, cxClasses, cxPropertiesStore,
  cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters, cxContainer,
  cxEdit, dxSkinsCore, dxSkinBlack, dxSkinBlue, dxSkinBlueprint, dxSkinCaramel,
  dxSkinCoffee, dxSkinDarkRoom, dxSkinDarkSide, dxSkinDevExpressDarkStyle,
  dxSkinDevExpressStyle, dxSkinFoggy, dxSkinGlassOceans, dxSkinHighContrast,
  dxSkiniMaginary, dxSkinLilian, dxSkinLiquidSky, dxSkinLondonLiquidSky,
  dxSkinMcSkin, dxSkinMetropolis, dxSkinMetropolisDark, dxSkinMoneyTwins,
  dxSkinOffice2007Black, dxSkinOffice2007Blue, dxSkinOffice2007Green,
  dxSkinOffice2007Pink, dxSkinOffice2007Silver, dxSkinOffice2010Black,
  dxSkinOffice2010Blue, dxSkinOffice2010Silver, dxSkinOffice2013DarkGray,
  dxSkinOffice2013LightGray, dxSkinOffice2013White, dxSkinOffice2016Colorful,
  dxSkinOffice2016Dark, dxSkinPumpkin, dxSkinSeven, dxSkinSevenClassic,
  dxSkinSharp, dxSkinSharpPlus, dxSkinSilver, dxSkinSpringTime, dxSkinStardust,
  dxSkinSummer2008, dxSkinTheAsphaltWorld, dxSkinsDefaultPainters,
  dxSkinValentine, dxSkinVisualStudio2013Blue, dxSkinVisualStudio2013Dark,
  dxSkinVisualStudio2013Light, dxSkinVS2010, dxSkinWhiteprint,
  dxSkinXmas2008Blue, cxStyles, dxSkinscxPCPainter, cxCustomData, cxFilter,
  cxData, cxDataStorage, cxNavigator, cxDBData, cxGridLevel,
  cxGridCustomTableView, cxGridTableView, cxGridBandedTableView,
  cxGridDBBandedTableView, cxGridCustomView, cxGrid, cxDropDownEdit,
  cxLookupEdit, cxDBLookupEdit, cxDBLookupComboBox, cxTextEdit, cxMaskEdit,
  cxSpinEdit, cxGroupBox, cxRadioGroup,
  cxDataControllerConditionalFormattingRulesManagerDialog, dxSkinTheBezier, dxDateRanges;

type
  TfmCtmNewBuffer = class(TForm)
    ADOConnect: TADOConnection;
    Panel18: TPanel;
    BitBtn_Ok: TBitBtn;
    BitBtn_Cancel: TBitBtn;
    cxPropertiesStore1: TcxPropertiesStore;
    Query_Cars: TADOQuery;
    DS_Cars: TDataSource;
    Query_LandOwn: TADOQuery;
    DS_LandOwn: TDataSource;
    Panel2: TPanel;
    cxRadioGroup2: TcxRadioGroup;
    Panel3: TPanel;
    Label1: TLabel;
    Label2: TLabel;
    cxSpinEdit1: TcxSpinEdit;
    cxSpinEdit3: TcxSpinEdit;
    Panel1: TPanel;
    cxGrid1: TcxGrid;
    cxGrid1DBBandedTableView1: TcxGridDBBandedTableView;
    cxGrid1DBBandedTableView1CarID: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1Name: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1Model: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1GP: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1Volume: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1Axis: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1TareW: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1CarType: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1GROSS: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1Length: TcxGridDBBandedColumn;
    cxGrid1Level1: TcxGridLevel;
    cxLookupComboBox1: TcxLookupComboBox;
    Label6: TLabel;
    Panel4: TPanel;
    cxRadioGroup1: TcxRadioGroup;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure BitBtn_OkClick(Sender: TObject);
    procedure cxRadioGroup1PropertiesEditValueChanged(Sender: TObject);
    procedure cxGrid1DBBandedTableView1DataControllerFilterChanged(
      Sender: TObject);
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
  private
    Fusr_pwd      : PUser_pwd;
    Fdate_from_to : TDateTime;

    Fbuffer_ID          : integer;
    Fbuffer_Name        : string;
    Fbuffer_TranspId    : integer;
    Fbuffer_TranspName  : string;
    Fbuffer_OwnerId     : integer;
    Fbuffer_OwnerName   : string;
    Fbuffer_Count       : integer;
    Fbuffer_Axis        : integer;
    Fbuffer_ControlFrameWeight : integer;

    procedure SetBufferID(buffer_ID: integer);
    procedure SetBufferTranspId(buffer_TranspId: integer);
    procedure SetBufferOwnerId(buffer_OwnerId: integer);
    procedure SetBufferCount(buffer_count: integer);
    procedure SetBufferAxis(buffer_axis: integer);
    procedure SetBufferControlFrameWeight(buffer_ControlFrameWeight: integer);

  public
    constructor Create(AOwner: TApplication; usr_pwd: PUser_pwd; date_from_to: TDateTime); reintroduce;

  published
    property _GetBufferID                 : integer read Fbuffer_ID;
    property _GetBufferName               : string  read Fbuffer_Name;
    property _GetBufferTranspId           : integer read Fbuffer_TranspId;
    property _GetBufferTranspName         : string  read Fbuffer_TranspName;
    property _GetBufferOwnerId            : integer read Fbuffer_OwnerId;
    property _GetBufferOwnerName          : string  read Fbuffer_OwnerName;
    property _GetBufferCount              : integer read Fbuffer_Count;
    property _GetBufferAxis               : integer read Fbuffer_Axis;
    property _GetBufferControlFrameWeight : integer read Fbuffer_ControlFrameWeight;

    property _SetBufferID                 : integer write SetBufferID;
    property _SetBufferTranspId           : integer write SetBufferTranspId;
    property _SetBufferOwnerId            : integer write SetBufferOwnerId;
    property _SetBufferCount              : integer write SetBufferCount;
    property _SetBufferAxis               : integer write SetBufferAxis;
    property _SetBufferControlFrameWeight : integer write SetBufferControlFrameWeight;
  end;

var
  fmCtmNewBuffer: TfmCtmNewBuffer;

implementation

{$R *.dfm}

uses CtmRaznoe;

procedure TfmCtmNewBuffer.BitBtn_OkClick(Sender: TObject);
begin
  Fbuffer_ID          := cxRadioGroup1.Properties.Items.Items[cxRadioGroup1.ItemIndex].Tag;
  Fbuffer_Name        := cxRadioGroup1.Properties.Items.Items[cxRadioGroup1.ItemIndex].Caption;
  Fbuffer_TranspId    := cxGrid1DBBandedTableView1CarID.DataBinding.Field.AsInteger;
  Fbuffer_TranspName  := cxGrid1DBBandedTableView1Name.DataBinding.Field.AsString;
  Fbuffer_OwnerId     := cxRadioGroup2.Properties.Items.Items[cxRadioGroup2.ItemIndex].Tag;
  Fbuffer_OwnerName   := cxRadioGroup2.Properties.Items.Items[cxRadioGroup2.ItemIndex].Caption;
  Fbuffer_Count       := cxSpinEdit1.EditValue;
  Fbuffer_Axis        := cxGrid1DBBandedTableView1Axis.DataBinding.Field.AsInteger;
  if Fbuffer_ID = 3 then
    Fbuffer_ControlFrameWeight := cxSpinEdit3.EditValue
  else
    Fbuffer_ControlFrameWeight := -9;

  ModalResult := mrOk;
end;

constructor TfmCtmNewBuffer.Create(AOwner: TApplication; usr_pwd: PUser_pwd; date_from_to: TDateTime);
begin
  Screen.Cursor := crHourglass;
  inherited Create(AOwner);
  Fusr_pwd := usr_pwd;
  Fdate_from_to := date_from_to;

  ADOConnect.ConnectionString := 'Persist Security Info=True;Provider=SQLOLEDB.1;User ID='+Fusr_pwd^.user_name+';Password='+Fusr_pwd^.user_pass+';Initial Catalog='+Fusr_pwd^.catalog+';Data Source='+Fusr_pwd^.server+';';
  ADOConnect.Open;

  Query_Cars.Connection := ADOConnect;
  Query_Cars.Open;

  Query_LandOwn.Connection := ADOConnect;
  Query_LandOwn.Open;
  cxLookupComboBox1.EditValue := 20;


  Fbuffer_ID          := -9;
  Fbuffer_Name        := '';
  Fbuffer_TranspId    := -9;
  Fbuffer_TranspName  := '';
  Fbuffer_OwnerId     := -9;
  Fbuffer_OwnerName   := '';
  Fbuffer_Count       := -9;
  Fbuffer_Axis        := -9;
  Fbuffer_ControlFrameWeight := -9;

  Screen.Cursor := crDefault;
end;



procedure TfmCtmNewBuffer.cxGrid1DBBandedTableView1CustomDrawCell(
  Sender: TcxCustomGridTableView; ACanvas: TcxCanvas;
  AViewInfo: TcxGridTableDataCellViewInfo; var ADone: Boolean);
begin
	if AViewInfo.GridRecord.Selected or AViewInfo.GridRecord.Focused then begin
		ACanvas.Brush.Color := clNavy;
		ACanvas.Font.Color := clWhite;
		if AViewInfo.Focused then ACanvas.Brush.Color := clBlue;
	end;
end;

procedure TfmCtmNewBuffer.cxGrid1DBBandedTableView1CustomDrawColumnHeader(
  Sender: TcxGridTableView; ACanvas: TcxCanvas;
  AViewInfo: TcxGridColumnHeaderViewInfo; var ADone: Boolean);
begin
	if AViewInfo.Column.Focused then begin
		ACanvas.Brush.Color := clNavy;
		ACanvas.Font.Color := clWhite;
	end;

end;

procedure TfmCtmNewBuffer.cxGrid1DBBandedTableView1DataControllerFilterChanged(
  Sender: TObject);
begin
	DrawcxGridColumnOnFiltered(cxGrid1DBBandedTableView1, Sender);
end;

procedure TfmCtmNewBuffer.cxGrid1DBBandedTableView1FocusedItemChanged(
  Sender: TcxCustomGridTableView; APrevFocusedItem,
  AFocusedItem: TcxCustomGridTableItem);
begin
	cxGrid1DBBandedTableView1.Painter.Invalidate;
end;

procedure TfmCtmNewBuffer.cxGrid1DBBandedTableView1KeyPress(Sender: TObject;
  var Key: Char);
begin
	FilterColumnGridOnKeyPress(cxGrid1DBBandedTableView1, Key);
end;

procedure TfmCtmNewBuffer.cxRadioGroup1PropertiesEditValueChanged(Sender: TObject);
begin
  if cxRadioGroup1.Properties.Items.Items[cxRadioGroup1.ItemIndex].Tag = 3 then
    cxSpinEdit3.Enabled := True
  else
    cxSpinEdit3.Enabled := False;
end;

procedure TfmCtmNewBuffer.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action := caFree;
end;

procedure TfmCtmNewBuffer.SetBufferID(buffer_ID: integer);
var i : integer;
begin
  Fbuffer_ID := buffer_ID;
  for i := 0 to cxRadioGroup1.Properties.Items.Count-1 do begin
    if cxRadioGroup1.Properties.Items.Items[i].Tag = Fbuffer_ID then
      cxRadioGroup1.ItemIndex := i;
  end;
end;

procedure TfmCtmNewBuffer.SetBufferTranspId(buffer_TranspId: integer);
begin
  Fbuffer_TranspId := buffer_TranspId;
  Query_Cars.Locate('CarID', Fbuffer_TranspId, []);
end;

procedure TfmCtmNewBuffer.SetBufferOwnerId(buffer_OwnerId: integer);
var i : integer;
begin
  Fbuffer_OwnerId := buffer_OwnerId;
  for i := 0 to cxRadioGroup2.Properties.Items.Count-1 do begin
    if cxRadioGroup2.Properties.Items.Items[i].Tag = Fbuffer_OwnerId then
      cxRadioGroup2.ItemIndex := i;
  end;
end;

procedure TfmCtmNewBuffer.SetBufferCount(buffer_count: integer);
begin
  Fbuffer_Count := buffer_count;
  cxSpinEdit1.EditValue := Fbuffer_Count;
end;

procedure TfmCtmNewBuffer.SetBufferAxis(buffer_axis: integer);
begin
  Fbuffer_Axis := buffer_axis;
end;

procedure TfmCtmNewBuffer.SetBufferControlFrameWeight(buffer_ControlFrameWeight: integer);
begin
  Fbuffer_ControlFrameWeight := buffer_ControlFrameWeight;
  cxSpinEdit3.EditValue := Fbuffer_ControlFrameWeight;
end;

end.
