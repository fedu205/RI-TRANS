unit CtmNewBulkinessDetail;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Default, cxGraphics, cxControls, cxLookAndFeels,
  cxLookAndFeelPainters, cxContainer, cxEdit, dxSkinsCore, dxSkinBlack,
  dxSkinBlue, dxSkinBlueprint, dxSkinCaramel, dxSkinCoffee, dxSkinDarkRoom,
  dxSkinDarkSide, dxSkinDevExpressDarkStyle, dxSkinDevExpressStyle, dxSkinFoggy,
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
  dxSkinXmas2008Blue, dxGDIPlusClasses, cxImage, cxSplitter, ExtCtrls,
  cxGroupBox, cxTextEdit, cxCurrencyEdit, cxLabel, StdCtrls, DB, DBClient,
  cxStyles, dxSkinscxPCPainter, cxCustomData, cxFilter, cxData, cxDataStorage,
  cxNavigator, cxDBData, cxGridCustomTableView, cxGridTableView,
  cxGridBandedTableView, cxGridDBBandedTableView, cxGridCustomView, cxClasses,
  cxGridLevel, cxGrid, dxBar, dxSkinsdxBarPainter, Buttons,
  cxPropertiesStore, cxDataControllerConditionalFormattingRulesManagerDialog;

type
  TfmCtmNewBulkinessDetail = class(TForm)
    Panel1: TPanel;
    cxSplitter1: TcxSplitter;
    cxGroupBox1: TcxGroupBox;
    cxImage1: TcxImage;
    cxGroupBox2: TcxGroupBox;
    cxGroupBox3: TcxGroupBox;
    cxLabel1: TcxLabel;
    cxLabel2: TcxLabel;
    cxLabel3: TcxLabel;
    cxCurrencyEdit1: TcxCurrencyEdit;
    cxCurrencyEdit2: TcxCurrencyEdit;
    ClientDS_NEG: TClientDataSet;
    DS_NEG: TDataSource;
    ClientDS_NEGid: TAutoIncField;
    ClientDS_NEGpoint_y: TIntegerField;
    ClientDS_NEGpoint_x: TIntegerField;
    ClientDS_NEGneg_name: TStringField;
    ClientDS_NEGneg_power: TIntegerField;
    cxGrid1Level1: TcxGridLevel;
    cxGrid1: TcxGrid;
    cxGrid1DBBandedTableView1: TcxGridDBBandedTableView;
    cxGrid1DBBandedTableView1id: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1neg_name: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1neg_power: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1point_y: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1point_x: TcxGridDBBandedColumn;
    Panel2: TPanel;
    Button1: TButton;
    Button3: TButton;
    dxBarManager1: TdxBarManager;
    dxBarPopupMenu1: TdxBarPopupMenu;
    dxBarButton1: TdxBarButton;
    dxBarSubItem1: TdxBarSubItem;
    dxBarButton2: TdxBarButton;
    dxBarButton3: TdxBarButton;
    Panel3: TPanel;
    Panel4: TPanel;
    cxLabel4: TcxLabel;
    cxTextEdit1: TcxTextEdit;
    BitBtn_Ok: TBitBtn;
    BitBtn_Cancel: TBitBtn;
    ClientDS_NEGneg_index: TStringField;
    ClientDS_NEGneg_type: TIntegerField;
    cxPropertiesStore1: TcxPropertiesStore;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure Button1Click(Sender: TObject);
    procedure cxCurrencyEdit1KeyUp(Sender: TObject; var Key: Word;
      Shift: TShiftState);
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
    procedure dxBarButton1Click(Sender: TObject);
    procedure dxBarButton2Click(Sender: TObject);
    procedure dxBarButton3Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure BitBtn_OkClick(Sender: TObject);
  private
    Fusr_pwd   : PUser_pwd;
    Fparam     : string;
    FBulkiness : string;
    procedure GetNEGText();
    procedure SetParam(param: string);
    procedure AddPoint(x: integer; y: integer);
  public
    constructor Create(AOwner: TApplication; usr_pwd: PUser_pwd); reintroduce;
  published
    property _GetBulkiness : string read  FBulkiness;
    property _GetParam     : string read  Fparam;
    property _SetParam     : string write  SetParam;
  end;

var
  fmCtmNewBulkinessDetail: TfmCtmNewBulkinessDetail;

implementation

{$R *.dfm}

uses CtmRaznoe;

procedure TfmCtmNewBulkinessDetail.GetNEGText();
var str1, str2: string;
    id : integer;
begin
  id   := cxGrid1DBBandedTableView1Id.DataBinding.Field.AsInteger;

  str1 := 'H0000';
  str2 := '';

  ClientDS_NEG.DisableControls;
  ClientDS_NEG.First;
  while not ClientDS_NEG.Eof do begin
    if ClientDS_NEG.FieldByName('neg_index').AsString[1] > str1[2] then str1[2] := ClientDS_NEG.FieldByName('neg_index').AsString[1];
    if ClientDS_NEG.FieldByName('neg_index').AsString[2] > str1[3] then str1[3] := ClientDS_NEG.FieldByName('neg_index').AsString[2];
    if ClientDS_NEG.FieldByName('neg_index').AsString[3] > str1[4] then str1[4] := ClientDS_NEG.FieldByName('neg_index').AsString[3];
    if ClientDS_NEG.FieldByName('neg_index').AsString[4] > str1[5] then str1[5] := ClientDS_NEG.FieldByName('neg_index').AsString[4];
    ClientDS_NEG.Next;
  end;
  ClientDS_NEG.Locate('id', id, []);
  ClientDS_NEG.EnableControls;

  cxTextEdit1.Text := str1;
end;

procedure TfmCtmNewBulkinessDetail.BitBtn_OkClick(Sender: TObject);
begin
  ModalResult := mrOk;
  GetNEGText;
  FBulkiness  := cxTextEdit1.Text;

  Fparam := '';
  ClientDS_NEG.DisableControls;
  ClientDS_NEG.First;
  while not ClientDS_NEG.Eof do begin
    Fparam :=  Fparam + ClientDS_NEG.FieldByName('point_x').AsString + ',' + ClientDS_NEG.FieldByName('point_y').AsString + ',';
    ClientDS_NEG.Next;
  end;
  ClientDS_NEG.EnableControls;
end;


procedure TfmCtmNewBulkinessDetail.AddPoint(x: integer; y: integer);
var
    neg_name: string;
    neg_power : integer;
    set_error : boolean;
    neg_type  : integer;
    neg_index : string;
begin
  set_error := False;
  if (y < 150) or (y > 5300) then set_error := True;

  if (y>=150) and (y<480) and (x>1760) then set_error := True;
  if (y>=480) and (y<1101) and (x>1920) then set_error := True;
  if (y>=1101) and (y<1399) and (x>2450) then set_error := True;
  if (y>=1399) and (y<1400) and (x>2450) then set_error := True;
  if (y>=1400) and (y<4000) and (x>2450) then set_error := True;
  if (y>=4000) and (y<4001) and (x>2450) then set_error := True;
  if (y>=4001) and (y<4301) and (x>2450) then set_error := True;
  if (y>=4301) and (y<4311) and (x>2444) then set_error := True;
  if (y>=4311) and (y<4321) and (x>2438) then set_error := True;
  if (y>=4321) and (y<4331) and (x>2431) then set_error := True;
  if (y>=4331) and (y<4341) and (x>2424) then set_error := True;
  if (y>=4341) and (y<4351) and (x>2417) then set_error := True;
  if (y>=4351) and (y<4361) and (x>2410) then set_error := True;
  if (y>=4361) and (y<4371) and (x>2403) then set_error := True;
  if (y>=4371) and (y<4381) and (x>2396) then set_error := True;
  if (y>=4381) and (y<4391) and (x>2389) then set_error := True;
  if (y>=4391) and (y<4401) and (x>2382) then set_error := True;
  if (y>=4401) and (y<4411) and (x>2376) then set_error := True;
  if (y>=4411) and (y<4421) and (x>2370) then set_error := True;
  if (y>=4421) and (y<4431) and (x>2363) then set_error := True;
  if (y>=4431) and (y<4441) and (x>2356) then set_error := True;
  if (y>=4441) and (y<4451) and (x>2349) then set_error := True;
  if (y>=4451) and (y<4461) and (x>2342) then set_error := True;
  if (y>=4461) and (y<4471) and (x>2335) then set_error := True;
  if (y>=4471) and (y<4481) and (x>2328) then set_error := True;
  if (y>=4481) and (y<4491) and (x>2321) then set_error := True;
  if (y>=4491) and (y<4501) and (x>2314) then set_error := True;
  if (y>=4501) and (y<4511) and (x>2308) then set_error := True;
  if (y>=4511) and (y<4521) and (x>2302) then set_error := True;
  if (y>=4521) and (y<4531) and (x>2295) then set_error := True;
  if (y>=4531) and (y<4541) and (x>2288) then set_error := True;
  if (y>=4541) and (y<4551) and (x>2281) then set_error := True;
  if (y>=4551) and (y<4561) and (x>2274) then set_error := True;
  if (y>=4561) and (y<4571) and (x>2276) then set_error := True;
  if (y>=4571) and (y<4581) and (x>2260) then set_error := True;
  if (y>=4581) and (y<4591) and (x>2253) then set_error := True;
  if (y>=4591) and (y<4601) and (x>2246) then set_error := True;
  if (y>=4601) and (y<4611) and (x>2240) then set_error := True;
  if (y>=4611) and (y<4621) and (x>2234) then set_error := True;
  if (y>=4621) and (y<4631) and (x>2227) then set_error := True;
  if (y>=4631) and (y<4641) and (x>2220) then set_error := True;
  if (y>=4641) and (y<4651) and (x>2213) then set_error := True;
  if (y>=4651) and (y<4661) and (x>2206) then set_error := True;
  if (y>=4661) and (y<4671) and (x>2199) then set_error := True;
  if (y>=4671) and (y<4681) and (x>2192) then set_error := True;
  if (y>=4681) and (y<4691) and (x>2185) then set_error := True;
  if (y>=4691) and (y<4701) and (x>2178) then set_error := True;
  if (y>=4701) and (y<4711) and (x>2172) then set_error := True;
  if (y>=4711) and (y<4721) and (x>2166) then set_error := True;
  if (y>=4721) and (y<4731) and (x>2159) then set_error := True;
  if (y>=4731) and (y<4741) and (x>2152) then set_error := True;
  if (y>=4741) and (y<4751) and (x>2145) then set_error := True;
  if (y>=4751) and (y<4761) and (x>2138) then set_error := True;
  if (y>=4761) and (y<4771) and (x>2131) then set_error := True;
  if (y>=4771) and (y<4781) and (x>2124) then set_error := True;
  if (y>=4781) and (y<4791) and (x>2117) then set_error := True;
  if (y>=4791) and (y<4801) and (x>2110) then set_error := True;
  if (y>=4801) and (y<4811) and (x>2104) then set_error := True;
  if (y>=4811) and (y<4821) and (x>2098) then set_error := True;
  if (y>=4821) and (y<4831) and (x>2091) then set_error := True;
  if (y>=4831) and (y<4841) and (x>2084) then set_error := True;
  if (y>=4841) and (y<4851) and (x>2077) then set_error := True;
  if (y>=4851) and (y<4861) and (x>2070) then set_error := True;
  if (y>=4861) and (y<4871) and (x>2063) then set_error := True;
  if (y>=4871) and (y<4881) and (x>2056) then set_error := True;
  if (y>=4881) and (y<4891) and (x>2049) then set_error := True;
  if (y>=4891) and (y<4901) and (x>2042) then set_error := True;
  if (y>=4901) and (y<4911) and (x>2036) then set_error := True;
  if (y>=4911) and (y<4921) and (x>2030) then set_error := True;
  if (y>=4921) and (y<4931) and (x>2023) then set_error := True;
  if (y>=4931) and (y<4941) and (x>2016) then set_error := True;
  if (y>=4941) and (y<4951) and (x>2009) then set_error := True;
  if (y>=4951) and (y<4961) and (x>2002) then set_error := True;
  if (y>=4961) and (y<4971) and (x>1995) then set_error := True;
  if (y>=4971) and (y<4981) and (x>1988) then set_error := True;
  if (y>=4981) and (y<4991) and (x>1981) then set_error := True;
  if (y>=4991) and (y<5001) and (x>1974) then set_error := True;
  if (y>=5001) and (y<5011) and (x>1968) then set_error := True;
  if (y>=5011) and (y<5021) and (x>1962) then set_error := True;
  if (y>=5021) and (y<5031) and (x>1955) then set_error := True;
  if (y>=5031) and (y<5041) and (x>1948) then set_error := True;
  if (y>=5041) and (y<5051) and (x>1941) then set_error := True;
  if (y>=5051) and (y<5061) and (x>1934) then set_error := True;
  if (y>=5061) and (y<5071) and (x>1927) then set_error := True;
  if (y>=5071) and (y<5081) and (x>1920) then set_error := True;
  if (y>=5081) and (y<5091) and (x>1913) then set_error := True;
  if (y>=5091) and (y<5101) and (x>1906) then set_error := True;
  if (y>=5101) and (y<5111) and (x>1900) then set_error := True;
  if (y>=5111) and (y<5121) and (x>1894) then set_error := True;
  if (y>=5121) and (y<5131) and (x>1887) then set_error := True;
  if (y>=5131) and (y<5141) and (x>1880) then set_error := True;
  if (y>=5141) and (y<5151) and (x>1873) then set_error := True;
  if (y>=5151) and (y<5161) and (x>1866) then set_error := True;
  if (y>=5161) and (y<5171) and (x>1859) then set_error := True;
  if (y>=5171) and (y<5181) and (x>1852) then set_error := True;
  if (y>=5181) and (y<5191) and (x>1845) then set_error := True;
  if (y>=5191) and (y<5201) and (x>1838) then set_error := True;
  if (y>=5201) and (y<5211) and (x>1832) then set_error := True;
  if (y>=5211) and (y<5221) and (x>1826) then set_error := True;
  if (y>=5221) and (y<5231) and (x>1819) then set_error := True;
  if (y>=5231) and (y<5241) and (x>1812) then set_error := True;
  if (y>=5241) and (y<5251) and (x>1805) then set_error := True;
  if (y>=5251) and (y<5261) and (x>1798) then set_error := True;
  if (y>=5261) and (y<5271) and (x>1791) then set_error := True;
  if (y>=5271) and (y<5281) and (x>1784) then set_error := True;
  if (y>=5281) and (y<5291) and (x>1774) then set_error := True;
  if (y>=5291) and (y<5300) and (x>1770) then set_error := True;

  if set_error then begin
    Application.MessageBox('Невозможно добавить точку! Размер груза превышает максимальную степень негабаритности (сверхнегабаритность).', 'Внимание', MB_ICONWARNING or MB_OK);
    Exit;
  end;

  neg_type := 0;
  if (y>=150)  and (y<=1399) then begin
    neg_type := 1;
    neg_name := 'Нижняя негабаритность';
  end;
  if (y>=1400) and (y<=4000) then begin
    neg_type := 2;
    neg_name := 'Боковая негабаритность';
  end;
  if (y>=4001) and (y<=5300) then begin
    neg_type := 3;
    neg_name := 'Верхняя негабаритность';
  end;

  neg_power := 0;
  if (y<480) then neg_power := 8;

  // Нижняя
  if neg_power = 0 then begin
    if (y>=480) and (y<=1229) then begin
      if (x>=1626) and (x<=1700) then neg_power := 1;
      if (x>=1701) and (x<=1760) then neg_power := 2;
      if (x>1760) then neg_power := 8;
    end;
    if (y>=1230) and (y<=1399) then begin
      if (x>=1626) and (x<=1700) then neg_power := 1;
      if (x>=1701) and (x<=1760) then neg_power := 2;
      if (x>=1761) and (x<=1850) then neg_power := 3;
      if (x>=1851) and (x<=2000) then neg_power := 4;
      if (x>=2001) and (x<=2080) then neg_power := 5;
      if (x>=2081) and (x<=2240) then neg_power := 6;
      if (x>2240) then neg_power := 8;
    end;
  end;

  // Боковая
  if neg_power = 0 then begin
    if (y>=1400) and (y<=3990) then begin
      if (x>=1626) and (x<=1700) then neg_power := 1;
      if (x>=1701) and (x<=1800) then neg_power := 2;
      if (x>=1801) and (x<=1850) then neg_power := 3;
      if (x>=1851) and (x<=2000) then neg_power := 4;
      if (x>=2001) and (x<=2080) then neg_power := 5;
      if (x>=2081) and (x<=2240) then neg_power := 6;
      if (x>2240) then neg_power := 8;
    end;
    if (y>=3991) and (y<=4000) then begin
      if (x>=1626) and (x<=1700) then neg_power := 1;
      if (x>=1701) and (x<=1800) then neg_power := 2;
      if (x>=1801) and (x<=1850) then neg_power := 3;
      if (x>1850) then neg_power := 8;
    end;
  end;

  // Верхняя
  if neg_power = 0 then begin
    if (y>=4001) then begin
      if (x>=1626) and (x<=1700) then neg_power := 1;
      if (x>=1701) and (x<=1800) then neg_power := 2;
      if (x>=1801) and (x<=1850) then neg_power := 3;
      if (x>1850) then neg_power := 8;
    end;
  end;

  neg_index := '0000';
  if neg_type = 1 then neg_index[1] := IntToStr(neg_power)[1];
  if neg_type = 2 then neg_index[2] := IntToStr(neg_power)[1];
  if neg_type = 3 then neg_index[3] := IntToStr(neg_power)[1];


  ClientDS_Neg.Append;
  ClientDS_Neg.FieldByName('neg_name' ).Value := neg_name;
  ClientDS_Neg.FieldByName('neg_power').Value := neg_power;
  ClientDS_Neg.FieldByName('neg_index').Value := neg_index;
  ClientDS_Neg.FieldByName('neg_type' ).Value := neg_type;
  ClientDS_Neg.FieldByName('point_x'  ).Value := x;
  ClientDS_Neg.FieldByName('point_y'  ).Value := y;
  ClientDS_Neg.Post;
end;

procedure TfmCtmNewBulkinessDetail.Button1Click(Sender: TObject);
var x, y : integer;
begin
  x := cxCurrencyEdit2.EditValue;
  y := cxCurrencyEdit1.EditValue;
  AddPoint(x,y);
  GetNEGText;
end;

procedure TfmCtmNewBulkinessDetail.Button3Click(Sender: TObject);
begin
  ClientDS_NEG.Delete;
  GetNEGText;
end;

constructor TfmCtmNewBulkinessDetail.Create(AOwner: TApplication; usr_pwd: PUser_pwd);
begin
  Screen.Cursor := crHourglass;
  inherited Create(AOwner);
  Fusr_pwd := usr_pwd;

  ClientDS_Neg.CreateDataSet;
  ClientDS_Neg.LogChanges := False;

  Fparam     := '';
  FBulkiness := '';
  cxTextEdit1.Text := '';

  Screen.Cursor := crDefault;
end;


procedure TfmCtmNewBulkinessDetail.cxCurrencyEdit1KeyUp(Sender: TObject; var Key: Word; Shift: TShiftState);
var y : integer;
begin
  y := StrToIntDef(cxCurrencyEdit1.EditingText,0);
  cxLabel3.Caption := 'Полуширина груза (от Xmin до Xmax мм)................';

  if (y >=  150) and (y <  480) then cxLabel3.Caption := 'Полуширина груза (от 0 до 1760 мм)................';
  if (y >=  480) and (y < 1101) then cxLabel3.Caption := 'Полуширина груза (от 0 до 1920 мм)................';
  if (y >= 1101) and (y < 1399) then cxLabel3.Caption := 'Полуширина груза (от 0 до 2450 мм)................';
  if (y >= 1399) and (y < 1400) then cxLabel3.Caption := 'Полуширина груза (от 0 до 2450 мм)................';
  if (y >= 1400) and (y < 4000) then cxLabel3.Caption := 'Полуширина груза (от 0 до 2450 мм)................';
  if (y >= 4000) and (y < 4001) then cxLabel3.Caption := 'Полуширина груза (от 0 до 2450 мм)................';
  if (y >= 4001) and (y < 4301) then cxLabel3.Caption := 'Полуширина груза (от 0 до 2450 мм)................';
  if (y >= 4301) and (y < 4311) then cxLabel3.Caption := 'Полуширина груза (от 0 до 2444 мм)................';
  if (y >= 4311) and (y < 4321) then cxLabel3.Caption := 'Полуширина груза (от 0 до 2438 мм)................';
  if (y >= 4321) and (y < 4331) then cxLabel3.Caption := 'Полуширина груза (от 0 до 2431 мм)................';
  if (y >= 4331) and (y < 4341) then cxLabel3.Caption := 'Полуширина груза (от 0 до 2424 мм)................';
  if (y >= 4341) and (y < 4351) then cxLabel3.Caption := 'Полуширина груза (от 0 до 2417 мм)................';
  if (y >= 4351) and (y < 4361) then cxLabel3.Caption := 'Полуширина груза (от 0 до 2410 мм)................';
  if (y >= 4361) and (y < 4371) then cxLabel3.Caption := 'Полуширина груза (от 0 до 2403 мм)................';
  if (y >= 4371) and (y < 4381) then cxLabel3.Caption := 'Полуширина груза (от 0 до 2396 мм)................';
  if (y >= 4381) and (y < 4391) then cxLabel3.Caption := 'Полуширина груза (от 0 до 2389 мм)................';
  if (y >= 4391) and (y < 4401) then cxLabel3.Caption := 'Полуширина груза (от 0 до 2382 мм)................';
  if (y >= 4401) and (y < 4411) then cxLabel3.Caption := 'Полуширина груза (от 0 до 2376 мм)................';
  if (y >= 4411) and (y < 4421) then cxLabel3.Caption := 'Полуширина груза (от 0 до 2370 мм)................';
  if (y >= 4421) and (y < 4431) then cxLabel3.Caption := 'Полуширина груза (от 0 до 2363 мм)................';
  if (y >= 4431) and (y < 4441) then cxLabel3.Caption := 'Полуширина груза (от 0 до 2356 мм)................';
  if (y >= 4441) and (y < 4451) then cxLabel3.Caption := 'Полуширина груза (от 0 до 2349 мм)................';
  if (y >= 4451) and (y < 4461) then cxLabel3.Caption := 'Полуширина груза (от 0 до 2342 мм)................';
  if (y >= 4461) and (y < 4471) then cxLabel3.Caption := 'Полуширина груза (от 0 до 2335 мм)................';
  if (y >= 4471) and (y < 4481) then cxLabel3.Caption := 'Полуширина груза (от 0 до 2328 мм)................';
  if (y >= 4481) and (y < 4491) then cxLabel3.Caption := 'Полуширина груза (от 0 до 2321 мм)................';
  if (y >= 4491) and (y < 4501) then cxLabel3.Caption := 'Полуширина груза (от 0 до 2314 мм)................';
  if (y >= 4501) and (y < 4511) then cxLabel3.Caption := 'Полуширина груза (от 0 до 2308 мм)................';
  if (y >= 4511) and (y < 4521) then cxLabel3.Caption := 'Полуширина груза (от 0 до 2302 мм)................';
  if (y >= 4521) and (y < 4531) then cxLabel3.Caption := 'Полуширина груза (от 0 до 2295 мм)................';
  if (y >= 4531) and (y < 4541) then cxLabel3.Caption := 'Полуширина груза (от 0 до 2288 мм)................';
  if (y >= 4541) and (y < 4551) then cxLabel3.Caption := 'Полуширина груза (от 0 до 2281 мм)................';
  if (y >= 4551) and (y < 4561) then cxLabel3.Caption := 'Полуширина груза (от 0 до 2274 мм)................';
  if (y >= 4561) and (y < 4571) then cxLabel3.Caption := 'Полуширина груза (от 0 до 2276 мм)................';
  if (y >= 4571) and (y < 4581) then cxLabel3.Caption := 'Полуширина груза (от 0 до 2260 мм)................';
  if (y >= 4581) and (y < 4591) then cxLabel3.Caption := 'Полуширина груза (от 0 до 2253 мм)................';
  if (y >= 4591) and (y < 4601) then cxLabel3.Caption := 'Полуширина груза (от 0 до 2246 мм)................';
  if (y >= 4601) and (y < 4611) then cxLabel3.Caption := 'Полуширина груза (от 0 до 2240 мм)................';
  if (y >= 4611) and (y < 4621) then cxLabel3.Caption := 'Полуширина груза (от 0 до 2234 мм)................';
  if (y >= 4621) and (y < 4631) then cxLabel3.Caption := 'Полуширина груза (от 0 до 2227 мм)................';
  if (y >= 4631) and (y < 4641) then cxLabel3.Caption := 'Полуширина груза (от 0 до 2220 мм)................';
  if (y >= 4641) and (y < 4651) then cxLabel3.Caption := 'Полуширина груза (от 0 до 2213 мм)................';
  if (y >= 4651) and (y < 4661) then cxLabel3.Caption := 'Полуширина груза (от 0 до 2206 мм)................';
  if (y >= 4661) and (y < 4671) then cxLabel3.Caption := 'Полуширина груза (от 0 до 2199 мм)................';
  if (y >= 4671) and (y < 4681) then cxLabel3.Caption := 'Полуширина груза (от 0 до 2192 мм)................';
  if (y >= 4681) and (y < 4691) then cxLabel3.Caption := 'Полуширина груза (от 0 до 2185 мм)................';
  if (y >= 4691) and (y < 4701) then cxLabel3.Caption := 'Полуширина груза (от 0 до 2178 мм)................';
  if (y >= 4701) and (y < 4711) then cxLabel3.Caption := 'Полуширина груза (от 0 до 2172 мм)................';
  if (y >= 4711) and (y < 4721) then cxLabel3.Caption := 'Полуширина груза (от 0 до 2166 мм)................';
  if (y >= 4721) and (y < 4731) then cxLabel3.Caption := 'Полуширина груза (от 0 до 2159 мм)................';
  if (y >= 4731) and (y < 4741) then cxLabel3.Caption := 'Полуширина груза (от 0 до 2152 мм)................';
  if (y >= 4741) and (y < 4751) then cxLabel3.Caption := 'Полуширина груза (от 0 до 2145 мм)................';
  if (y >= 4751) and (y < 4761) then cxLabel3.Caption := 'Полуширина груза (от 0 до 2138 мм)................';
  if (y >= 4761) and (y < 4771) then cxLabel3.Caption := 'Полуширина груза (от 0 до 2131 мм)................';
  if (y >= 4771) and (y < 4781) then cxLabel3.Caption := 'Полуширина груза (от 0 до 2124 мм)................';
  if (y >= 4781) and (y < 4791) then cxLabel3.Caption := 'Полуширина груза (от 0 до 2117 мм)................';
  if (y >= 4791) and (y < 4801) then cxLabel3.Caption := 'Полуширина груза (от 0 до 2110 мм)................';
  if (y >= 4801) and (y < 4811) then cxLabel3.Caption := 'Полуширина груза (от 0 до 2104 мм)................';
  if (y >= 4811) and (y < 4821) then cxLabel3.Caption := 'Полуширина груза (от 0 до 2098 мм)................';
  if (y >= 4821) and (y < 4831) then cxLabel3.Caption := 'Полуширина груза (от 0 до 2091 мм)................';
  if (y >= 4831) and (y < 4841) then cxLabel3.Caption := 'Полуширина груза (от 0 до 2084 мм)................';
  if (y >= 4841) and (y < 4851) then cxLabel3.Caption := 'Полуширина груза (от 0 до 2077 мм)................';
  if (y >= 4851) and (y < 4861) then cxLabel3.Caption := 'Полуширина груза (от 0 до 2070 мм)................';
  if (y >= 4861) and (y < 4871) then cxLabel3.Caption := 'Полуширина груза (от 0 до 2063 мм)................';
  if (y >= 4871) and (y < 4881) then cxLabel3.Caption := 'Полуширина груза (от 0 до 2056 мм)................';
  if (y >= 4881) and (y < 4891) then cxLabel3.Caption := 'Полуширина груза (от 0 до 2049 мм)................';
  if (y >= 4891) and (y < 4901) then cxLabel3.Caption := 'Полуширина груза (от 0 до 2042 мм)................';
  if (y >= 4901) and (y < 4911) then cxLabel3.Caption := 'Полуширина груза (от 0 до 2036 мм)................';
  if (y >= 4911) and (y < 4921) then cxLabel3.Caption := 'Полуширина груза (от 0 до 2030 мм)................';
  if (y >= 4921) and (y < 4931) then cxLabel3.Caption := 'Полуширина груза (от 0 до 2023 мм)................';
  if (y >= 4931) and (y < 4941) then cxLabel3.Caption := 'Полуширина груза (от 0 до 2016 мм)................';
  if (y >= 4941) and (y < 4951) then cxLabel3.Caption := 'Полуширина груза (от 0 до 2009 мм)................';
  if (y >= 4951) and (y < 4961) then cxLabel3.Caption := 'Полуширина груза (от 0 до 2002 мм)................';
  if (y >= 4961) and (y < 4971) then cxLabel3.Caption := 'Полуширина груза (от 0 до 1995 мм)................';
  if (y >= 4971) and (y < 4981) then cxLabel3.Caption := 'Полуширина груза (от 0 до 1988 мм)................';
  if (y >= 4981) and (y < 4991) then cxLabel3.Caption := 'Полуширина груза (от 0 до 1981 мм)................';
  if (y >= 4991) and (y < 5001) then cxLabel3.Caption := 'Полуширина груза (от 0 до 1974 мм)................';
  if (y >= 5001) and (y < 5011) then cxLabel3.Caption := 'Полуширина груза (от 0 до 1968 мм)................';
  if (y >= 5011) and (y < 5021) then cxLabel3.Caption := 'Полуширина груза (от 0 до 1962 мм)................';
  if (y >= 5021) and (y < 5031) then cxLabel3.Caption := 'Полуширина груза (от 0 до 1955 мм)................';
  if (y >= 5031) and (y < 5041) then cxLabel3.Caption := 'Полуширина груза (от 0 до 1948 мм)................';
  if (y >= 5041) and (y < 5051) then cxLabel3.Caption := 'Полуширина груза (от 0 до 1941 мм)................';
  if (y >= 5051) and (y < 5061) then cxLabel3.Caption := 'Полуширина груза (от 0 до 1934 мм)................';
  if (y >= 5061) and (y < 5071) then cxLabel3.Caption := 'Полуширина груза (от 0 до 1927 мм)................';
  if (y >= 5071) and (y < 5081) then cxLabel3.Caption := 'Полуширина груза (от 0 до 1920 мм)................';
  if (y >= 5081) and (y < 5091) then cxLabel3.Caption := 'Полуширина груза (от 0 до 1913 мм)................';
  if (y >= 5091) and (y < 5101) then cxLabel3.Caption := 'Полуширина груза (от 0 до 1906 мм)................';
  if (y >= 5101) and (y < 5111) then cxLabel3.Caption := 'Полуширина груза (от 0 до 1900 мм)................';
  if (y >= 5111) and (y < 5121) then cxLabel3.Caption := 'Полуширина груза (от 0 до 1894 мм)................';
  if (y >= 5121) and (y < 5131) then cxLabel3.Caption := 'Полуширина груза (от 0 до 1887 мм)................';
  if (y >= 5131) and (y < 5141) then cxLabel3.Caption := 'Полуширина груза (от 0 до 1880 мм)................';
  if (y >= 5141) and (y < 5151) then cxLabel3.Caption := 'Полуширина груза (от 0 до 1873 мм)................';
  if (y >= 5151) and (y < 5161) then cxLabel3.Caption := 'Полуширина груза (от 0 до 1866 мм)................';
  if (y >= 5161) and (y < 5171) then cxLabel3.Caption := 'Полуширина груза (от 0 до 1859 мм)................';
  if (y >= 5171) and (y < 5181) then cxLabel3.Caption := 'Полуширина груза (от 0 до 1852 мм)................';
  if (y >= 5181) and (y < 5191) then cxLabel3.Caption := 'Полуширина груза (от 0 до 1845 мм)................';
  if (y >= 5191) and (y < 5201) then cxLabel3.Caption := 'Полуширина груза (от 0 до 1838 мм)................';
  if (y >= 5201) and (y < 5211) then cxLabel3.Caption := 'Полуширина груза (от 0 до 1832 мм)................';
  if (y >= 5211) and (y < 5221) then cxLabel3.Caption := 'Полуширина груза (от 0 до 1826 мм)................';
  if (y >= 5221) and (y < 5231) then cxLabel3.Caption := 'Полуширина груза (от 0 до 1819 мм)................';
  if (y >= 5231) and (y < 5241) then cxLabel3.Caption := 'Полуширина груза (от 0 до 1812 мм)................';
  if (y >= 5241) and (y < 5251) then cxLabel3.Caption := 'Полуширина груза (от 0 до 1805 мм)................';
  if (y >= 5251) and (y < 5261) then cxLabel3.Caption := 'Полуширина груза (от 0 до 1798 мм)................';
  if (y >= 5261) and (y < 5271) then cxLabel3.Caption := 'Полуширина груза (от 0 до 1791 мм)................';
  if (y >= 5271) and (y < 5281) then cxLabel3.Caption := 'Полуширина груза (от 0 до 1784 мм)................';
  if (y >= 5281) and (y < 5291) then cxLabel3.Caption := 'Полуширина груза (от 0 до 1774 мм)................';
  if (y >= 5291) and (y < 5300) then cxLabel3.Caption := 'Полуширина груза (от 0 до 1770 мм)................';
end;

procedure TfmCtmNewBulkinessDetail.cxGrid1DBBandedTableView1CustomDrawCell(
  Sender: TcxCustomGridTableView; ACanvas: TcxCanvas;
  AViewInfo: TcxGridTableDataCellViewInfo; var ADone: Boolean);
begin
	if AViewInfo.GridRecord.Selected or AViewInfo.GridRecord.Focused then begin
		ACanvas.Brush.Color := clNavy;
		ACanvas.Font.Color := clWhite;
		if AViewInfo.Focused then ACanvas.Brush.Color := clBlue;
	end;
end;

procedure TfmCtmNewBulkinessDetail.cxGrid1DBBandedTableView1CustomDrawColumnHeader(
  Sender: TcxGridTableView; ACanvas: TcxCanvas;
  AViewInfo: TcxGridColumnHeaderViewInfo; var ADone: Boolean);
begin
	if AViewInfo.Column.Focused then begin
		ACanvas.Brush.Color := clNavy;
		ACanvas.Font.Color := clWhite;
	end;
end;

procedure TfmCtmNewBulkinessDetail.cxGrid1DBBandedTableView1FilterOnChanged(
  Sender: TObject);
begin
	DrawcxGridColumnOnFiltered(cxGrid1DBBandedTableView1, Sender);
end;

procedure TfmCtmNewBulkinessDetail.cxGrid1DBBandedTableView1FocusedItemChanged(
  Sender: TcxCustomGridTableView; APrevFocusedItem,
  AFocusedItem: TcxCustomGridTableItem);
begin
	cxGrid1DBBandedTableView1.Painter.Invalidate;
end;

procedure TfmCtmNewBulkinessDetail.cxGrid1DBBandedTableView1KeyPress(
  Sender: TObject; var Key: Char);
begin
	FilterColumnGridOnKeyPress(cxGrid1DBBandedTableView1, Key);
end;

procedure TfmCtmNewBulkinessDetail.dxBarButton1Click(Sender: TObject);
begin
	PrintcxGrid(cxGrid1DBBandedTableView1);
end;

procedure TfmCtmNewBulkinessDetail.dxBarButton2Click(Sender: TObject);
begin
	SetdxDBGridColumns(cxGrid1DBBandedTableView1);
end;

procedure TfmCtmNewBulkinessDetail.dxBarButton3Click(Sender: TObject);
begin
	cxGrid1DBBandedTableView1.OptionsView.GroupByBox := not cxGrid1DBBandedTableView1.OptionsView.GroupByBox;
end;

procedure TfmCtmNewBulkinessDetail.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action := caFree;
end;

procedure TfmCtmNewBulkinessDetail.SetParam(param: string);
var str_list: TStringList;
    i : integer;
    k : integer;
    j : integer;
begin
  if param <> '' then begin
    str_list := TStringList.Create;
    str_list.CommaText := param;

    j := 0;
    while (j+1) < str_list.Count do begin
      AddPoint(StrToInt(str_list.Strings[j]),StrToInt(str_list.Strings[j+1]));
      j := j + 2;
      GetNEGText;
    end;
  end;
end;

end.
