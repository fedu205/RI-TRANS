unit CtmNewCargoMulti;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters,
  cxStyles, cxCustomData, cxFilter, cxData, cxDataStorage, cxEdit, DB, cxDBData,
  dxBar, cxClasses, StdCtrls, Buttons, ExtCtrls, cxGridLevel,
  cxGridCustomTableView, cxGridTableView, cxGridBandedTableView,
  cxGridDBBandedTableView, cxGridCustomView, cxGrid, ImgList, Default,
  DBClient, cxPropertiesStore, dxSkinsCore, dxSkinBlack, dxSkinBlue,
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
  dxSkinXmas2008Blue, dxSkinscxPCPainter, cxNavigator, dxSkinsdxBarPainter,
  System.ImageList, cxDataControllerConditionalFormattingRulesManagerDialog,
  cxImageList, dxSkinTheBezier, dxDateRanges;

type
  TfmCtmNewCargoMulti = class(TForm)
    cxGrid1: TcxGrid;
    cxGrid1DBBandedTableView1: TcxGridDBBandedTableView;
    cxGrid1DBBandedTableView1id: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1IsGuard: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1EtnCode: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1EtnCaption: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1GngCode: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1GngCaption: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1Weight: TcxGridDBBandedColumn;
    cxGrid1Level1: TcxGridLevel;
    dxBarManager1: TdxBarManager;
    dxBarManager1Bar1: TdxBar;
    dxBarButton1: TdxBarButton;
    dxBarButton3: TdxBarButton;
    dxBarButton4: TdxBarButton;
    dxBarPopupMenu1: TdxBarPopupMenu;
    dxBarButton5: TdxBarButton;
    dxBarSubItem1: TdxBarSubItem;
    dxBarButton6: TdxBarButton;
    dxBarButton7: TdxBarButton;
    dxBarButton8: TdxBarButton;
    dxBarButton9: TdxBarButton;
    cxImageList1: TcxImageList;
    Client_CargoMulti: TClientDataSet;
    Client_CargoMultiid: TAutoIncField;
    Client_CargoMultiEtnCode: TStringField;
    Client_CargoMultiEtnCaption: TStringField;
    Client_CargoMultiGngCode: TStringField;
    Client_CargoMultiGngCaption: TStringField;
    Client_CargoMultiWeight: TFloatField;
    Client_CargoMultiIsGuard: TBooleanField;
    DS_CargoMulti: TDataSource;
    cxPropertiesStore1: TcxPropertiesStore;
    Panel18: TPanel;
    BitBtn_Ok: TBitBtn;
    BitBtn_Cancel: TBitBtn;
    procedure cxGrid1DBBandedTableView1FilterOnChanged(Sender: TObject);
    procedure cxGrid1DBBandedTableView1KeyPress(Sender: TObject; var Key: Char);
    procedure dxBarButton5Click(Sender: TObject);
    procedure dxBarButton6Click(Sender: TObject);
    procedure dxBarButton7Click(Sender: TObject);
    procedure dxBarButton8Click(Sender: TObject);
    procedure dxBarButton9Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure dxBarButton1Click(Sender: TObject);
    procedure dxBarButton3Click(Sender: TObject);
    procedure BitBtn_OkClick(Sender: TObject);
  private
    Fusr_pwd      : PUser_pwd;
    Fdate_from_to : TDateTime;
    FSend_id      : integer;

    FClientDS     : TClientDataSet;
  public
    constructor Create(AOwner: TApplication; usr_pwd: PUser_pwd; date_from_to: TDateTime); reintroduce;
  published
    property _SetSendId   : integer write FSend_id;
    property _SetClientDS : TClientDataSet write FClientDS;
  end;

var
  fmCtmNewCargoMulti: TfmCtmNewCargoMulti;

implementation

uses CtmNewCargo, CtmRaznoe;

{$R *.dfm}

procedure TfmCtmNewCargoMulti.BitBtn_OkClick(Sender: TObject);
begin
  FClientDS.EmptyDataSet;
  FClientDS.Data := Client_CargoMulti.Data;
end;

constructor TfmCtmNewCargoMulti.Create(AOwner: TApplication; usr_pwd: PUser_pwd; date_from_to: TDateTime);
begin
  Screen.Cursor := crHourglass;
  inherited Create(AOwner);
  Fusr_pwd := usr_pwd;
  Fdate_from_to := date_from_to;

  Client_CargoMulti.CreateDataSet;
  Client_CargoMulti.LogChanges := False;

  FSend_id := -9;

  Screen.Cursor := crDefault;
end;


procedure TfmCtmNewCargoMulti.cxGrid1DBBandedTableView1FilterOnChanged(Sender: TObject);
begin
	DrawcxGridColumnOnFiltered(cxGrid1DBBandedTableView1, Sender);
end;

procedure TfmCtmNewCargoMulti.cxGrid1DBBandedTableView1KeyPress(Sender: TObject; var Key: Char);
begin
	FilterColumnGridOnKeyPress(cxGrid1DBBandedTableView1, Key);
end;

procedure TfmCtmNewCargoMulti.dxBarButton1Click(Sender: TObject);
begin
  fmCtmNewCargo := TfmCtmNewCargo.Create(Application, Fusr_pwd, Fdate_from_to);
  if FSend_id <> -9 then
    fmCtmNewCargo._SetSendID := FSend_Id;
  fmCtmNewCargo._OpenQueryETSNG := True;
  if fmCtmNewCargo.ShowModal = mrOk then begin
    Client_CargoMulti.Append;
    Client_CargoMulti.FieldByName('EtnCode'   ).Value := fmCtmNewCargo._GetETSNGCod;
    Client_CargoMulti.FieldByName('GngCode'   ).Value := fmCtmNewCargo._GetGNGCod;
    Client_CargoMulti.FieldByName('EtnCaption').Value := fmCtmNewCargo._GetETSNGName;
    Client_CargoMulti.FieldByName('GngCaption').Value := fmCtmNewCargo._GetGNGName;
    Client_CargoMulti.FieldByName('Weight'    ).Value := 0;
    Client_CargoMulti.Post;
  end;
end;

procedure TfmCtmNewCargoMulti.dxBarButton3Click(Sender: TObject);
begin
  Client_CargoMulti.Delete;
end;

procedure TfmCtmNewCargoMulti.dxBarButton5Click(Sender: TObject);
begin
	PrintcxGrid(cxGrid1DBBandedTableView1);
end;

procedure TfmCtmNewCargoMulti.dxBarButton6Click(Sender: TObject);
begin
	SetdxDBGridColumns(cxGrid1DBBandedTableView1);
end;

procedure TfmCtmNewCargoMulti.dxBarButton7Click(Sender: TObject);
begin
	cxGrid1DBBandedTableView1.OptionsView.GroupByBox := not cxGrid1DBBandedTableView1.OptionsView.GroupByBox;
end;

procedure TfmCtmNewCargoMulti.dxBarButton8Click(Sender: TObject);
begin
	FiltercxGrid4ListID(cxGrid1DBBandedTableView1);
end;

procedure TfmCtmNewCargoMulti.dxBarButton9Click(Sender: TObject);
begin
	cxGrid1DBBandedTableView1.Filtering.ColumnFilteredItemsList := not dxBarButton9.Down;
end;

procedure TfmCtmNewCargoMulti.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action := caFree;
end;

end.
