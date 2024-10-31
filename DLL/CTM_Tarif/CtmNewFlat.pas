unit CtmNewFlat;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, cxGraphics, cxControls, cxLookAndFeels,
  cxLookAndFeelPainters, cxStyles, dxSkinsCore, dxSkinBlack, dxSkinBlue,
  dxSkinBlueprint, dxSkinCaramel, dxSkinCoffee, dxSkinDarkRoom, dxSkinDarkSide,
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
  dxSkinXmas2008Blue, dxSkinscxPCPainter, cxCustomData, cxFilter, cxData,
  cxDataStorage, cxEdit, cxNavigator, Data.DB, cxDBData, cxContainer,
  cxTextEdit, cxMaskEdit, cxSpinEdit, Vcl.StdCtrls, cxGroupBox, cxRadioGroup,
  Vcl.Buttons, cxGridLevel, cxGridCustomTableView, cxGridTableView,
  cxGridBandedTableView, cxGridDBBandedTableView, cxClasses, cxGridCustomView,
  cxGrid, Vcl.ExtCtrls, cxPropertiesStore, Data.Win.ADODB, Default,
  cxDataControllerConditionalFormattingRulesManagerDialog, dxSkinTheBezier, dxDateRanges;

type
  TfmCtmNewFlat = class(TForm)
    ADOConnect: TADOConnection;
    DS_Cars: TDataSource;
    Query_Cars: TADOQuery;
    cxPropertiesStore1: TcxPropertiesStore;
    Panel1: TPanel;
    cxGrid1: TcxGrid;
    cxGrid1DBBandedTableView1: TcxGridDBBandedTableView;
    cxGrid1DBBandedTableView1CarID: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1Name: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1GP: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1Axis: TcxGridDBBandedColumn;
    cxGrid1Level1: TcxGridLevel;
    Panel18: TPanel;
    BitBtn_Ok: TBitBtn;
    BitBtn_Cancel: TBitBtn;
    Panel2: TPanel;
    cxRadioGroup2: TcxRadioGroup;
    Panel3: TPanel;
    Label3: TLabel;
    cxSpinEdit2: TcxSpinEdit;
    cxGrid1DBBandedTableView1Length: TcxGridDBBandedColumn;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure BitBtn_OkClick(Sender: TObject);
  private
    Fusr_pwd      : PUser_pwd;
    Fdate_from_to : TDateTime;

    FSendID       : integer;
    FOtprID       : integer;
    FTranspID     : integer;

    FFlatWagonId      : integer;
    FFlatWagonCaption : string;
    FFWOwnP           : integer;
    FFWOwnPCaption    : string;

    FOCE    : integer;
    FGP     : integer;
    FLength : Double;

    procedure OpenQuery(value: boolean);
  public
    constructor Create(AOwner: TApplication; usr_pwd: PUser_pwd; date_from_to: TDateTime); reintroduce;
  published
    property _SetSendID   : integer write FSendID;
    property _SetOtprID   : integer write FOtprID;
    property _SetTranspID : integer write FTranspID;
    property _OpenQuery   : boolean write OpenQuery;

    property _GetFlatWagonId      : integer read FFlatWagonId;
    property _GetFlatWagonCaption : string  read FFlatWagonCaption;
    property _GetFWOwnP           : integer read FFWOwnP;
    property _GetFWOwnPCaption    : string  read FFWOwnPCaption;
  end;

var
  fmCtmNewFlat: TfmCtmNewFlat;

implementation

{$R *.dfm}

procedure TfmCtmNewFlat.BitBtn_OkClick(Sender: TObject);
begin
  ModalResult := mrOk;

  FFWOwnP           := cxRadioGroup2.Properties.Items.Items[cxRadioGroup2.ItemIndex].Tag;
  FFWOwnPCaption    := cxRadioGroup2.Properties.Items.Items[cxRadioGroup2.ItemIndex].Caption;
  FFlatWagonId      := cxGrid1DBBandedTableView1CarID.DataBinding.Field.AsInteger;
  FFlatWagonCaption := cxGrid1DBBandedTableView1Name.DataBinding.Field.AsString;
end;

constructor TfmCtmNewFlat.Create(AOwner: TApplication; usr_pwd: PUser_pwd; date_from_to: TDateTime);
begin
  Screen.Cursor := crHourglass;
  inherited Create(AOwner);
  Fusr_pwd := usr_pwd;
  Fdate_from_to := date_from_to;


  ADOConnect.ConnectionString := 'Persist Security Info=True;Provider=SQLOLEDB.1;User ID='+Fusr_pwd^.user_name+';Password='+Fusr_pwd^.user_pass+';Initial Catalog='+Fusr_pwd^.catalog+';Data Source='+Fusr_pwd^.server+';';
  ADOConnect.Open;


  FSendID    := -9;
  FOtprID    := -9;
  FTranspID  := -9;

  FFlatWagonId      := -9;
  FFlatWagonCaption := '';

  Screen.Cursor := crDefault;
end;

procedure TfmCtmNewFlat.OpenQuery(value: boolean);
begin
  Query_Cars.SQL.Clear;
  Query_cars.SQL.Add('SELECT 	ref_book_xml.value(''(/ROW/@CarID)[1]'',''int'') as CarID,');
  Query_cars.SQL.Add('        ref_book_xml.value(''(/ROW/@Name)[1]'',''varchar(max)'') as Name,');
  Query_cars.SQL.Add('        ref_book_xml.value(''(/ROW/@GP)[1]'',''varchar(max)'') as GP,');
  Query_cars.SQL.Add('        ref_book_xml.value(''(/ROW/@Axis)[1]'',''varchar(max)'') as Axis');
  Query_cars.SQL.Add('FROM	  CTM_REFBOOK2');
  Query_cars.SQL.Add('WHERE	  ref_book_name = ''cars''');
  Query_cars.SQL.Add('        and ref_book_xml.value(''(/ROW/@CarID)[1]'',''int'') in');
  Query_cars.SQL.Add('(');
  Query_cars.SQL.Add('    SELECT	ref_book_xml.value(''(/ROW/@CarID)[1]'',''int'') as CarID');
  Query_cars.SQL.Add('    FROM	  CTM_REFBOOK2');
  Query_cars.SQL.Add('    WHERE	  ref_book_name = ''SPFlat''');
  Query_cars.SQL.Add('            AND ref_book_xml.value(''(/ROW/@SendID)[1]'',''int'') = ' + IntToStr(FSendID));
  Query_cars.SQL.Add('            AND ref_book_xml.value(''(/ROW/@OtprID)[1]'',''int'') = ' + IntToStr(FOtprID));
  Query_cars.SQL.Add('            AND ref_book_xml.value(''(/ROW/@TranspID)[1]'',''int'') = ' + IntToStr(FTranspID));
  Query_cars.SQL.Add(')');
  Query_Cars.Open;
end;

procedure TfmCtmNewFlat.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action := caFree;
end;

end.
