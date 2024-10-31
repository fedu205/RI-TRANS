unit UsersActive;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms, Default,
  Dialogs, cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters, cxStyles, cxCustomData, cxFilter, cxData,
  cxDataStorage, cxEdit, DB, cxDBData, cxGridCustomView, cxGridCustomTableView, cxGridTableView, cxGridBandedTableView,
  cxGridDBBandedTableView, cxClasses, cxGridLevel, cxGrid, ADODB, cxCalendar, cxPropertiesStore, dxBar, dxSkinsCore, dxSkinBlack, dxSkinBlue,
  dxSkinBlueprint, dxSkinCaramel, dxSkinCoffee, dxSkinDarkRoom, dxSkinDarkSide, dxSkinDevExpressDarkStyle, dxSkinDevExpressStyle, dxSkinFoggy,
  dxSkinGlassOceans, dxSkinHighContrast, dxSkiniMaginary, dxSkinLilian, dxSkinLiquidSky, dxSkinLondonLiquidSky, dxSkinMcSkin, dxSkinMetropolis,
  dxSkinMetropolisDark, dxSkinMoneyTwins, dxSkinOffice2007Black, dxSkinOffice2007Blue, dxSkinOffice2007Green, dxSkinOffice2007Pink,
  dxSkinOffice2007Silver, dxSkinOffice2010Black, dxSkinOffice2010Blue, dxSkinOffice2010Silver, dxSkinOffice2013DarkGray, dxSkinOffice2013LightGray,
  dxSkinOffice2013White, dxSkinPumpkin, dxSkinSeven, dxSkinSevenClassic, dxSkinSharp, dxSkinSharpPlus, dxSkinSilver, dxSkinSpringTime, dxSkinStardust,
  dxSkinSummer2008, dxSkinTheAsphaltWorld, dxSkinsDefaultPainters, dxSkinValentine, dxSkinVS2010, dxSkinWhiteprint, dxSkinXmas2008Blue,
  dxSkinscxPCPainter, cxNavigator, dxSkinsdxBarPainter, dxSkinOffice2016Colorful, dxSkinOffice2016Dark, dxSkinVisualStudio2013Blue, dxSkinVisualStudio2013Dark, dxSkinVisualStudio2013Light,
  dxSkinTheBezier, dxDateRanges, cxDataControllerConditionalFormattingRulesManagerDialog;

type
  TfmUsersActive = class(TForm)
    Query_UsersActive: TADOQuery;
    DS_UsersActive: TDataSource;
    cxGrid1Level1: TcxGridLevel;
    cxGrid1: TcxGrid;
    cxGrid1DBBandedTableView1: TcxGridDBBandedTableView;
    cxGrid1DBBandedTableView1loginame: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1FIO_users: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1hostname: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1login_time: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1last_batch: TcxGridDBBandedColumn;
    ADOUsersActive: TADOConnection;
    cxPropertiesStore1: TcxPropertiesStore;
    dxBarManager1: TdxBarManager;
    dxBarPopupMenu1: TdxBarPopupMenu;
    dxBarManager1Bar1: TdxBar;
    dxBarButton1: TdxBarButton;
    cxGrid1DBBandedTableView1spid: TcxGridDBBandedColumn;
    dxBarButton2: TdxBarButton;
    dxBarSubItem1: TdxBarSubItem;
    dxBarButton3: TdxBarButton;
    dxBarButton4: TdxBarButton;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure dxBarButton1Click(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
  private
    { Private declarations }
  public
    constructor Create(AOwner : TApplication);
  end;

var
  fmUsersActive: TfmUsersActive;

implementation
    uses Main, Raznoe;
{$R *.dfm}

constructor TfmUsersActive.Create(AOwner: TApplication);
begin
  inherited Create(AOwner);

  ADOUsersActive.Connected := False;
  ADOUsersActive.ConnectionString := 'Persist Security Info=True;Provider=SQLOLEDB.1;Password=cjnhfkjubcnbrf;User ID=admin_sfh;Initial Catalog='+usr_pwd.catalog+';Data Source='+ usr_pwd.server;
  ADOUsersActive.Connected := True;


  Query_UsersActive.Parameters.ParamByName('users_group_id').Value := usr_pwd.user_group_id;
  Query_UsersActive.Open;

  MonitorEventFormOpen('OPEN_FORM', self.Name, fmMain.Lis, -9);
end;

procedure TfmUsersActive.dxBarButton1Click(Sender: TObject);
begin
  RefreshQueryGrid(cxGrid1DBBandedTableView1, 'spid');
end;

procedure TfmUsersActive.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action := caFree;
end;

procedure TfmUsersActive.FormDestroy(Sender: TObject);
begin
  fmUsersActive := nil;
end;

end.
