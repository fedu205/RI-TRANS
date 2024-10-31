unit CtmNewKIT;

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
  dxSkinTheAsphaltWorld, dxSkinTheBezier, dxSkinsDefaultPainters,
  dxSkinValentine, dxSkinVisualStudio2013Blue, dxSkinVisualStudio2013Dark,
  dxSkinVisualStudio2013Light, dxSkinVS2010, dxSkinWhiteprint,
  dxSkinXmas2008Blue, cxCustomData, cxFilter, cxData, cxDataStorage, cxEdit,
  cxNavigator, cxDataControllerConditionalFormattingRulesManagerDialog, Data.DB,
  cxDBData, cxGridLevel, cxGridCustomTableView, cxGridTableView,
  cxGridBandedTableView, cxGridDBBandedTableView, cxClasses, cxGridCustomView,
  cxGrid, Vcl.StdCtrls, Vcl.Buttons, Vcl.ExtCtrls, Datasnap.DBClient, cxRichEdit;

type
  TfmCtmNewKIT = class(TForm)
    Panel1: TPanel;
    BitBtn_Ok: TBitBtn;
    BitBtn_Cancel: TBitBtn;
    Panel2: TPanel;
    cxGrid1: TcxGrid;
    cxGrid1DBBandedTableView1: TcxGridDBBandedTableView;
    cxGrid1Level1: TcxGridLevel;
    Client_KIT: TClientDataSet;
    Client_KITKIT: TStringField;
    Client_KITCaption: TStringField;
    Client_KITFromDate: TDateTimeField;
    Client_KITToDate: TDateTimeField;
    Client_KITDocument: TStringField;
    Client_KITKITNum: TStringField;
    DS_KIT: TDataSource;
    cxGrid1DBBandedTableView1KIT: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1Caption: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1FromDate: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1ToDate: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1Document: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1KITNum: TcxGridDBBandedColumn;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure BitBtn_OkClick(Sender: TObject);
  private
    FKIT : string;
    FKIT_name : string;
    procedure SetClientKIT(ClientDS: TClientDataSet);
  public
    constructor Create(AOwner: TApplication); reintroduce;
  published
    property _SetClientKIT : TClientDataSet write SetClientKIT;
    property _GetKIT       : string read FKit;
    property _GetKITName       : string read FKit_name;
  end;

var
  fmCtmNewKIT: TfmCtmNewKIT;

implementation

{$R *.dfm}

procedure TfmCtmNewKIT.BitBtn_OkClick(Sender: TObject);
begin
  FKIT := cxGrid1DBBandedTableView1KIT.DataBinding.Field.AsString;
  if FKIT = '0' then
    FKit_name := cxGrid1DBBandedTableView1Caption.DataBinding.Field.AsString
  else
    FKit_name := cxGrid1DBBandedTableView1KIT.DataBinding.Field.AsString;

  ModalResult := mrOk;
end;

constructor TfmCtmNewKIT.Create(AOwner: TApplication);
begin
  Screen.Cursor := crHourglass;
  inherited Create(AOwner);

  Screen.Cursor := crDefault;
end;


procedure TfmCtmNewKIT.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action := caFree;
end;

procedure TfmCtmNewKIT.SetClientKIT(ClientDS: TClientDataSet);
begin
  DS_KIT.DataSet := ClientDS;
end;

end.
