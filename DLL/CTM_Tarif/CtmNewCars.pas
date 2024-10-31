unit CtmNewCars;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters,
  cxContainer, cxEdit, cxLabel, cxCheckBox, StdCtrls, cxRadioGroup, cxGroupBox,
  Buttons, ExtCtrls, cxTextEdit, cxMaskEdit, cxSpinEdit, cxDropDownEdit,
  cxLookupEdit, cxDBLookupEdit, cxDBLookupComboBox, cxStyles, cxCustomData,
  cxFilter, cxData, cxDataStorage, DB, cxDBData, cxGridCustomView,
  cxGridCustomTableView, cxGridTableView, cxGridBandedTableView,
  cxGridDBBandedTableView, cxClasses, cxGridLevel, cxGrid, Default,
  ADODB, StrUtils, cxPropertiesStore, dxSkinsCore, dxSkinBlack, dxSkinBlue,
  dxSkinBlueprint, dxSkinCaramel, dxSkinCoffee, dxSkinDarkRoom, dxSkinDarkSide,
  dxSkinDevExpressDarkStyle, dxSkinDevExpressStyle, dxSkinFoggy,
  dxSkinGlassOceans, dxSkinHighContrast, dxSkiniMaginary, dxSkinLilian,
  dxSkinLiquidSky, dxSkinLondonLiquidSky, dxSkinMcSkin, dxSkinMetropolis,
  dxSkinMetropolisDark, dxSkinMoneyTwins, dxSkinOffice2007Black,
  dxSkinOffice2007Blue, dxSkinOffice2007Green, dxSkinOffice2007Pink,
  dxSkinOffice2007Silver, dxSkinOffice2010Black, dxSkinOffice2010Blue,
  dxSkinOffice2010Silver, dxSkinOffice2013DarkGray, dxSkinOffice2013LightGray,
  dxSkinOffice2013White, dxSkinPumpkin, dxSkinSeven, dxSkinSevenClassic,
  dxSkinSharp, dxSkinSharpPlus, dxSkinSilver, dxSkinSpringTime, dxSkinStardust,
  dxSkinSummer2008, dxSkinTheAsphaltWorld, dxSkinsDefaultPainters,
  dxSkinValentine, dxSkinVS2010, dxSkinWhiteprint, dxSkinXmas2008Blue,
  dxSkinscxPCPainter, cxNavigator, dxSkinOffice2016Colorful,
  dxSkinOffice2016Dark, dxSkinVisualStudio2013Blue, dxSkinVisualStudio2013Dark,
  dxSkinVisualStudio2013Light,
  cxDataControllerConditionalFormattingRulesManagerDialog, dxSkinTheBezier, dxDateRanges;

type
  TfmCtmNewCars = class(TForm)
    Panel1: TPanel;
    Panel5: TPanel;
    cxGroupBox3: TcxGroupBox;
    cxRadioButton3: TcxRadioButton;
    cxRadioButton4: TcxRadioButton;
    Panel6: TPanel;
    cxCheckBox4: TcxCheckBox;
    cxLabel8: TcxLabel;
    cxLabel9: TcxLabel;
    cxLabel11: TcxLabel;
    cxLabel10: TcxLabel;
    Panel2: TPanel;
    Panel3: TPanel;
    Panel4: TPanel;
    cxRadioGroup2: TcxRadioGroup;
    cxSpinEdit1: TcxSpinEdit;
    cxSpinEdit3: TcxSpinEdit;
    cxSpinEdit2: TcxSpinEdit;
    cxSpinEdit4: TcxSpinEdit;
    cxSpinEdit5: TcxSpinEdit;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    cxLookupComboBox1: TcxLookupComboBox;
    cxLookupComboBox3: TcxLookupComboBox;
    Label6: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    cxGrid1Level1: TcxGridLevel;
    cxGrid1: TcxGrid;
    cxGrid1DBBandedTableView1: TcxGridDBBandedTableView;
    DS_Cars: TDataSource;
    Query_Cars: TADOQuery;
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
    Query_SPCont: TADOQuery;
    DS_SPCont: TDataSource;
    cxLookupComboBox2: TcxLookupComboBox;
    Query_LandOwn: TADOQuery;
    DS_LandOwn: TDataSource;
    cxPropertiesStore1: TcxPropertiesStore;
    Panel18: TPanel;
    BitBtn_Ok: TBitBtn;
    BitBtn_Cancel: TBitBtn;
    ADOConnect: TADOConnection;
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
    procedure cxCheckBox4PropertiesEditValueChanged(Sender: TObject);
    procedure cxLabel10Click(Sender: TObject);
    procedure BitBtn_OkClick(Sender: TObject);
  private
    Fusr_pwd      : PUser_pwd;
    Fdate_from_to : TDateTime;

    Fotpr_id    : integer;
    Fsend_id    : integer;
    Fcargo_cod  : string;

    FCarID            : integer;
    FName             : string;
    FGP               : real;
    FAxis             : integer;
    FTareW            : real;
    FVolume           : real;
    FCountPS          : integer;
    FVagOtpr          : integer;
    FOwners_id        : integer;
    FLandOwn_id       : integer;
    FLandOwn_name     : string;
    FContainer_id     : integer;
    FContainer_name   : string;
    Fset_empty        : boolean;
    FEmpty_ETSNG_cod  : string;
    FEmpty_ETSNG_name : string;
    FEmpty_GNG_cod    : string;
    FEmpty_GNG_name   : string;
    FEmpty_loading    : boolean;
    FOption2          : Variant;

    procedure GetSPCont();
    procedure SetOtprID(otpr_id: integer);
    procedure SetSendID(send_id: integer);
    procedure OpenQuery(value: boolean);

    procedure SetCarID(value: integer);
    procedure SetCountPS(value: integer);
    procedure SetVagOtpr(value: integer);
    procedure SetOwners_id(value: integer);
    procedure SetLandOwn_id(value: integer);
    procedure SetContainer_id(value: integer);
    procedure SetEmpty_ETSNG_cod(value: string);
    procedure SetEmpty_GNG_cod(value: string);
    procedure SetEmpty_ETSNG_name(value: string);
    procedure SetEmpty_GNG_name(value: string);
    procedure SetEmpty_loading(value: boolean);
  public
    constructor Create(AOwner: TApplication; usr_pwd: PUser_pwd; date_from_to: TDateTime); reintroduce;
  published
    property _SetSendID : integer write SetSendID;
    property _SetOtprID : integer write SetOtprID;
    property _SetCargoCod : string write Fcargo_cod;
    property _OpenQuery : boolean write OpenQuery;

    property _GetCarID            : integer read FCarID;
    property _GetName             : string read FName;
    property _GetGP               : real read FGP;
    property _GetAxis             : integer read FAxis;
    property _GetTareW            : real read FTareW;
    property _GetVolume           : real read FVolume;
    property _GetCountPS          : integer read FCountPS;
    property _GetVagOtpr          : integer read FVagOtpr;
    property _GetOwners_id        : integer read FOwners_id;
    property _GetLandOwn_id       : integer read FLandOwn_id;
    property _GetLandOwn_name     : string read FLandOwn_name;
    property _GetContainer_id     : integer read FContainer_id;
    property _GetContainer_name   : string read FContainer_name;
    property _GetEmpty_ETSNG_cod  : string read FEmpty_ETSNG_cod;
    property _GetEmpty_ETSNG_name : string read FEmpty_ETSNG_name;
    property _GetEmpty_GNG_cod    : string read FEmpty_GNG_cod;
    property _GetEmpty_GNG_name   : string read FEmpty_GNG_name;
    property _GetEmpty_loading    : boolean read FEmpty_loading;
    property _GetSetEmpty         : boolean read Fset_empty;
    property _GetOption2          : Variant read FOption2;

    property _SetCarID      : integer write SetCarID;
    property _SetCountPS    : integer write SetCountPS;
    property _SetVagOtpr    : integer write SetVagOtpr;
    property _SetOwners_id  : integer write SetOwners_id;
    property _SetLandOwn_id : integer write SetLandOwn_id;
    property _SetContainer_id     : integer write SetContainer_id;
    property _SetEmpty_ETSNG_cod  : string write SetEmpty_ETSNG_cod;
    property _SetEmpty_GNG_cod    : string write SetEmpty_GNG_cod;
    property _SetEmpty_ETSNG_name : string write SetEmpty_ETSNG_name;
    property _SetEmpty_GNG_name   : string write SetEmpty_GNG_name;
    property _SetEmpty_loading    : boolean write SetEmpty_loading;
  end;

var
  fmCtmNewCars: TfmCtmNewCars;

implementation

uses CtmNewMain, CtmNewCargo, CtmRaznoe;

{$R *.dfm}

procedure TfmCtmNewCars.BitBtn_OkClick(Sender: TObject);
begin
  if (cxRadioGroup2.ItemIndex = 1) and (cxGrid1DBBandedTableView1CarID.DataBinding.Field.AsInteger <> 3) then begin
    Application.MessageBox('Принадлежность "Привлеченный ОАО РЖД" можно указывать только для полувагонов!!!', 'Внимание', MB_OK + MB_ICONERROR);
    ModalResult := mrNone;
    Exit;
  end;

  ModalResult := mrOk;

  FCarID            := cxGrid1DBBandedTableView1CarID.DataBinding.Field.AsInteger;
  FName             := cxGrid1DBBandedTableView1Name.DataBinding.Field.AsString;
//  FGP               := StrToFloat(ReplaceStr(cxGrid1DBBandedTableView1GP.DataBinding.Field.AsString, ',', DecimalSeparator));
  FGP               := cxSpinEdit4.Value;
  FAxis             := StrToInt(cxGrid1DBBandedTableView1Axis.DataBinding.Field.AsString);
  FTareW            := StrToFloat(ReplaceStr(cxGrid1DBBandedTableView1TareW.DataBinding.Field.AsString, ',', FormatSettings.DecimalSeparator));
  FVolume           := StrToFloat(ReplaceStr(cxGrid1DBBandedTableView1Volume.DataBinding.Field.AsString, ',', FormatSettings.DecimalSeparator));
  FCountPS          := cxSpinEdit1.EditValue;
  FVagOtpr          := cxSpinEdit2.EditValue;
  FOwners_id        := cxRadioGroup2.Properties.Items.Items[cxRadioGroup2.ItemIndex].Tag;
  FLandOwn_id       := cxLookupComboBox1.EditValue;
  FLandOwn_name     := cxLookupComboBox1.EditText;
  if Fotpr_id = 3000 then begin
    FContainer_id     := cxLookupComboBox2.EditValue;
    FContainer_name   := cxLookupComboBox2.EditText;
  end;
  FEmpty_loading    := cxRadioButton3.Checked;

  case cxRadioGroup2.ItemIndex of
    0,1 : FOption2 := null;
    2,3 : if FOption2 = null then FOption2 := False;
  end;
end;

constructor TfmCtmNewCars.Create(AOwner: TApplication; usr_pwd: PUser_pwd; date_from_to: TDateTime);
begin
  Screen.Cursor := crHourglass;
  inherited Create(AOwner);
  Fusr_pwd := usr_pwd;
  Fdate_from_to := date_from_to;


  ADOConnect.ConnectionString := 'Persist Security Info=True;Provider=SQLOLEDB.1;User ID='+Fusr_pwd^.user_name+';Password='+Fusr_pwd^.user_pass+';Initial Catalog='+Fusr_pwd^.catalog+';Data Source='+Fusr_pwd^.server+';';
  ADOConnect.Open;

  Query_LandOwn.Open;
  cxLookupComboBox1.EditValue := 20;

  Fotpr_id    := -9;
  Fsend_id    := -9;
  Fcargo_cod  := '';

  FCarID            := -9;
  FName             := '';
  FGP               := 0;
  FAxis             := 0;
  FTareW            := 0;
  FVolume           := 0;
  FCountPS          := 0;
  FVagOtpr          := 0;
  FOwners_id        := 0;
  FLandOwn_id       := 0;
  FLandOwn_name     := '';
  FContainer_id     := -9;
  FContainer_name   := '';
  FEmpty_ETSNG_cod  := '';
  FEmpty_ETSNG_name := '';
  FEmpty_GNG_cod    := '';
  FEmpty_GNG_name   := '';
  FEmpty_loading    := False;
  FOption2          := null;
  Fset_empty        := False;

  Screen.Cursor := crDefault;
end;

procedure TfmCtmNewCars.OpenQuery(value: boolean);
var Q: TADOQuery;
    str_car_id : string;
begin
  if value = True then begin
    str_car_id := '';
    if (Fotpr_id <> -9) AND (Fsend_id <> -9) then begin
      Q := TADOQuery.Create(nil);
      Q.Connection := ADOConnect;
      Q.SQL.Add('SELECT	DISTINCT ref_book_xml.value(''(/ROW/@CarID)[1]'',''int'') as CarID');
      Q.SQL.Add('FROM	CTM_REFBOOK2');
      Q.SQL.Add('WHERE	ref_book_name = ''rodps'' AND ');
      Q.SQL.Add('ref_book_xml.value(''(/ROW/@SendID)[1]'',''int'') = ' + IntToStr(Fsend_id) + ' AND');
      Q.SQL.Add('ref_book_xml.value(''(/ROW/@OtprID)[1]'',''int'') = ' + IntToStr(Fotpr_id));

      if Fcargo_cod <> '' then begin
        Q.SQL.Add(' AND isnull(ref_book_xml.value(''(/ROW/@CragoKOD)[1]'',''varchar(max)''),''' + Fcargo_cod + ''') = ''' + Fcargo_cod + '''');
      end;

      Q.Open;
      while not Q.Eof do begin
        str_car_id := str_car_id + ',' + Q.FieldByName('CarID').AsString;
        Q.Next;
      end;
      Delete(str_car_id,1,1);
      Q.Free;
    end;

    Query_Cars.SQL.Clear;
    Query_Cars.SQL.Add('SELECT');
    Query_Cars.SQL.Add('ref_book_xml.value(''(/ROW/@CarID)[1]'',''int'') as CarID,');
    Query_Cars.SQL.Add('ref_book_xml.value(''(/ROW/@Name)[1]'',''varchar(max)'') as Name,');
    Query_Cars.SQL.Add('ref_book_xml.value(''(/ROW/@Model)[1]'',''varchar(max)'') as Model,');
    Query_Cars.SQL.Add('ref_book_xml.value(''(/ROW/@GP)[1]'',''varchar(max)'') as GP,');
    Query_Cars.SQL.Add('ref_book_xml.value(''(/ROW/@Volume)[1]'',''varchar(max)'') as Volume,');
    Query_Cars.SQL.Add('ref_book_xml.value(''(/ROW/@Axis)[1]'',''varchar(max)'') as Axis,');
    Query_Cars.SQL.Add('ref_book_xml.value(''(/ROW/@TareW)[1]'',''varchar(max)'') as TareW,');
    Query_Cars.SQL.Add('ref_book_xml.value(''(/ROW/@CarType)[1]'',''varchar(max)'') as CarType,');
    Query_Cars.SQL.Add('ref_book_xml.value(''(/ROW/@GROSS)[1]'',''varchar(max)'') as GROSS,');
    Query_Cars.SQL.Add('ref_book_xml.value(''(/ROW/@Length)[1]'',''varchar(max)'') as Length');
    Query_Cars.SQL.Add('FROM	CTM_REFBOOK2');
    Query_Cars.SQL.Add('WHERE	ref_book_name = ''cars''');
    if str_car_id <> '' then
      Query_Cars.SQL.Add('AND ref_book_xml.value(''(/ROW/@CarID)[1]'',''int'') in (' + str_car_id + ')');
    Query_Cars.SQL.Add('ORDER BY 1');
    Query_Cars.Open;
  end;
end;


procedure TfmCtmNewCars.SetOtprID(otpr_id: integer);
begin
  Fotpr_id := otpr_id;
  if Fotpr_id = 3000 then begin
    cxLookupComboBox2.Enabled := True;

    Panel5.Visible := False;
    Label1.Visible := False;
    Label2.Visible := False;
    Label4.Visible := False;
    Label5.Visible := False;
    Label3.Caption := 'Кол-во контейнеров';
    cxSpinEdit1.Visible := False;
    cxSpinEdit3.Visible := False;
    cxSpinEdit4.Visible := False;
    cxSpinEdit5.Visible := False;

//    cxLookupComboBox3.Enabled := True;
  end;
end;

procedure TfmCtmNewCars.SetSendID(send_id: integer);
begin
  Fsend_id := send_id;
  if Fsend_id = 100 then begin
    cxRadioGroup2.ItemIndex := 2;
    Panel5.Visible := True;
    cxCheckBox4.Checked := True;
    Fset_empty := True;
  end;
end;

procedure TfmCtmNewCars.SetCarID(value: integer);
begin
  Query_Cars.Locate('CarID', value, []);
end;

procedure TfmCtmNewCars.SetCountPS(value: integer);
begin
  cxSpinEdit1.EditValue := value;
end;

procedure TfmCtmNewCars.SetVagOtpr(value: integer);
begin
 cxSpinEdit2.EditValue := value;
end;

procedure TfmCtmNewCars.SetContainer_id(value: integer);
begin
  cxLookupComboBox2.EditValue := value;
end;

procedure TfmCtmNewCars.SetEmpty_ETSNG_cod(value: string);
begin
  FEmpty_ETSNG_cod := value;
  if FEmpty_ETSNG_cod <> '' then
    cxLabel10.Caption := FEmpty_ETSNG_cod
  else
    cxLabel10.Caption := '000000';

  if FEmpty_GNG_cod <> '' then
    cxLabel11.Caption := FEmpty_GNG_cod
  else
    cxLabel11.Caption := '00000000';
end;

procedure TfmCtmNewCars.SetEmpty_GNG_cod(value: string);
begin
  FEmpty_GNG_cod := value;
  if FEmpty_ETSNG_cod <> '' then
    cxLabel10.Caption := FEmpty_ETSNG_cod
  else
    cxLabel10.Caption := '000000';

  if FEmpty_GNG_cod <> '' then
    cxLabel11.Caption := FEmpty_GNG_cod
  else
    cxLabel11.Caption := '00000000';
end;

procedure TfmCtmNewCars.SetEmpty_ETSNG_name(value: string);
begin
  FEmpty_ETSNG_name := value;
end;

procedure TfmCtmNewCars.SetEmpty_GNG_name(value: string);
begin
  FEmpty_GNG_name := value;
end;

procedure TfmCtmNewCars.SetEmpty_loading(value: boolean);
begin
  cxRadioButton3.Checked := value;
end;

procedure TfmCtmNewCars.SetOwners_id(value: integer);
var i : integer;
begin
  for i := 0 to cxRadioGroup2.Properties.Items.Count-1 do begin
    if cxRadioGroup2.Properties.Items.Items[i].Tag = value then
      cxRadioGroup2.ItemIndex := i;
  end;
end;

procedure TfmCtmNewCars.SetLandOwn_id(value: integer);
begin
  cxLookupComboBox1.EditValue := value;
end;


procedure TfmCtmNewCars.GetSPCont();
begin
  Query_SPCont.Close;
  if Fotpr_id = 3000 then begin
    if Fsend_id <> -9 then begin
      Query_SPCont.SQL.Clear;
      Query_SPCont.SQL.Add('SELECT -9 as CarID, ''не совпадают с универсальными'' as Name');
      Query_SPCont.SQL.Add('UNION');
      Query_SPCont.SQL.Add('SELECT	ref_book_xml.value(''(/ROW/@CarID)[1]'',''int'') as CarID,');
      Query_SPCont.SQL.Add('        ref_book_xml.value(''(/ROW/@Name)[1]'',''varchar(200)'') as Name');
      Query_SPCont.SQL.Add('FROM	  CTM_REFBOOK2 ');
      Query_SPCont.SQL.Add('WHERE	  ref_book_name = ''spcont'' AND');
      Query_SPCont.SQL.Add('        ref_book_xml.value(''(/ROW/@SendID)[1]'',''int'') = ' + IntToStr(Fsend_id) + ' AND');
      Query_SPCont.SQL.Add('        ref_book_xml.value(''(/ROW/@TranspID)[1]'',''int'') = ' + IntToStr(cxGrid1DBBandedTableView1CarID.DataBinding.Field.AsInteger) + ' AND');
      Query_SPCont.SQL.Add('        ref_book_xml.value(''(/ROW/@OtprID)[1]'',''int'') = ' + IntToStr(Fotpr_id));
      Query_SPCont.SQL.Add('ORDER BY 1');
      Query_SPCont.Open;
      cxLookupComboBox2.EditValue := -9;
    end;
  end;
end;

procedure TfmCtmNewCars.cxCheckBox4PropertiesEditValueChanged(Sender: TObject);
begin
  Fset_empty          := cxCheckBox4.Checked;
  cxGroupBox3.Enabled := cxCheckBox4.Checked;
  cxLabel8.Enabled    := cxCheckBox4.Checked;
  cxLabel9.Enabled    := cxCheckBox4.Checked;
  cxLabel10.Enabled   := cxCheckBox4.Checked;
  cxLabel11.Enabled   := cxCheckBox4.Checked;
  cxRadioButton3.Enabled := cxCheckBox4.Checked;
  cxRadioButton4.Enabled := cxCheckBox4.Checked;
end;

procedure TfmCtmNewCars.cxGrid1DBBandedTableView1CustomDrawCell(
  Sender: TcxCustomGridTableView; ACanvas: TcxCanvas;
  AViewInfo: TcxGridTableDataCellViewInfo; var ADone: Boolean);
begin
	if AViewInfo.GridRecord.Selected or AViewInfo.GridRecord.Focused then begin
		ACanvas.Brush.Color := clNavy;
		ACanvas.Font.Color := clWhite;
		if AViewInfo.Focused then ACanvas.Brush.Color := clBlue;
	end;
end;

procedure TfmCtmNewCars.cxGrid1DBBandedTableView1CustomDrawColumnHeader(
  Sender: TcxGridTableView; ACanvas: TcxCanvas;
  AViewInfo: TcxGridColumnHeaderViewInfo; var ADone: Boolean);
begin
	if AViewInfo.Column.Focused then begin
		ACanvas.Brush.Color := clNavy;
		ACanvas.Font.Color := clWhite;
	end;
end;

procedure TfmCtmNewCars.cxGrid1DBBandedTableView1FilterOnChanged( Sender: TObject);
begin
	DrawcxGridColumnOnFiltered(cxGrid1DBBandedTableView1, Sender);
end;

procedure TfmCtmNewCars.cxGrid1DBBandedTableView1FocusedItemChanged(
  Sender: TcxCustomGridTableView; APrevFocusedItem,
  AFocusedItem: TcxCustomGridTableItem);
begin
	cxGrid1DBBandedTableView1.Painter.Invalidate;
end;

procedure TfmCtmNewCars.cxGrid1DBBandedTableView1FocusedRecordChanged(
  Sender: TcxCustomGridTableView; APrevFocusedRecord,
  AFocusedRecord: TcxCustomGridRecord; ANewItemRecordFocusingChanged: Boolean);
begin
  cxSpinEdit3.Text := cxGrid1DBBandedTableView1Axis.DataBinding.Field.AsString;
  cxSpinEdit4.Text := cxGrid1DBBandedTableView1GP.DataBinding.Field.AsString;
  cxSpinEdit5.Text := cxGrid1DBBandedTableView1TareW.DataBinding.Field.AsString;
  GetSPCont;
end;

procedure TfmCtmNewCars.cxGrid1DBBandedTableView1KeyPress(Sender: TObject; var Key: Char);
begin
	FilterColumnGridOnKeyPress(cxGrid1DBBandedTableView1, Key);
end;

procedure TfmCtmNewCars.cxLabel10Click(Sender: TObject);
begin
  fmCtmNewCargo := TfmCtmNewCargo.Create(Application, Fusr_pwd, Fdate_from_to);
  fmCtmNewCargo._OpenQueryETSNG := True;
  if fmCtmNewCargo.ShowModal = mrOk then begin
    FEmpty_ETSNG_cod  := fmCtmNewCargo._GetETSNGCod;
    FEmpty_GNG_cod    := fmCtmNewCargo._GetGNGCod;
    FEmpty_ETSNG_name := fmCtmNewCargo._GetETSNGName;
    FEmpty_GNG_name   := fmCtmNewCargo._GetGNGName;

    cxLabel10.Caption := FEmpty_ETSNG_cod;
    cxLabel11.Caption := FEmpty_GNG_cod;
  end;
end;

procedure TfmCtmNewCars.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action := caFree;
end;


end.
