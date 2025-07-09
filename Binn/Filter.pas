unit Filter;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Db, ADODB, DBClient, StdCtrls, ExtCtrls, ImgList, Variants, Menus, Default,
  cxPropertiesStore, cxStyles, cxCustomData, cxGraphics, cxFilter,
  cxData, cxDataStorage, cxEdit, cxDBData, cxGridLevel, cxClasses, cxControls, cxGridCustomView, cxGridCustomTableView, cxGridTableView,
  cxGridDBTableView, cxGridDBBandedTableView, cxGrid, dxBar, cxGridBandedTableView, cxCurrencyEdit, cxLookAndFeels, cxLookAndFeelPainters,
  dxSkinsCore, dxSkinBlack, dxSkinBlue, dxSkinBlueprint, dxSkinCaramel, dxSkinCoffee, dxSkinDarkRoom, dxSkinDarkSide, dxSkinDevExpressDarkStyle,
  dxSkinDevExpressStyle, dxSkinFoggy, dxSkinGlassOceans, dxSkinHighContrast, dxSkiniMaginary, dxSkinLilian, dxSkinLiquidSky, dxSkinLondonLiquidSky,
  dxSkinMcSkin, dxSkinMetropolis, dxSkinMetropolisDark, dxSkinMoneyTwins, dxSkinOffice2007Black, dxSkinOffice2007Blue, dxSkinOffice2007Green,
  dxSkinOffice2007Pink, dxSkinOffice2007Silver, dxSkinOffice2010Black, dxSkinOffice2010Blue, dxSkinOffice2010Silver, dxSkinOffice2013DarkGray,
  dxSkinOffice2013LightGray, dxSkinOffice2013White, dxSkinPumpkin, dxSkinSeven, dxSkinSevenClassic, dxSkinSharp, dxSkinSharpPlus, dxSkinSilver,
  dxSkinSpringTime, dxSkinStardust, dxSkinSummer2008, dxSkinTheAsphaltWorld, dxSkinsDefaultPainters, dxSkinValentine, dxSkinVS2010, dxSkinWhiteprint,
  dxSkinXmas2008Blue, dxSkinscxPCPainter, cxNavigator, dxSkinsdxBarPainter, dxSkinOffice2016Colorful, dxSkinOffice2016Dark, dxSkinVisualStudio2013Blue,
  dxSkinVisualStudio2013Dark, dxSkinVisualStudio2013Light, System.ImageList, cxImageList, cxDataControllerConditionalFormattingRulesManagerDialog,
  dxSkinTheBezier, dxDateRanges, dxSkinOffice2019Colorful, dxScrollbarAnnotations, cxButtons,
  dxSkinBasic, dxSkinOffice2019Black, dxSkinOffice2019DarkGray,
  dxSkinOffice2019White, dxSkinWXI;

type
  TfmFilter = class(TForm)
    DS_Filter: TDataSource;
    FQuery: TADOQuery;
    Panel1: TPanel;
    cxPropertiesStore1: TcxPropertiesStore;
    Panel2: TPanel;
    Label1: TLabel;
    cxImageList_16: TcxImageList;
    dxBarManager1: TdxBarManager;
    dxBarButton6: TdxBarButton;
    dxBarButton1: TdxBarButton;
    dxBarPopupMenu1: TdxBarPopupMenu;
    cxGrid1: TcxGrid;
    cxGrid1Level1: TcxGridLevel;
    cxGrid1DBBandedTableView1: TcxGridDBBandedTableView;
    cxGrid1DBBandedTableView1Column1: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1Column2: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1Column3: TcxGridDBBandedColumn;
    dxBarButton2: TdxBarButton;
    cxStyleRepository1: TcxStyleRepository;
    cxStyle_TransportPay: TcxStyle;
    cxStyle_ColorWhite: TcxStyle;
    cxButton2: TcxButton;
    cxButton3: TcxButton;
    procedure dxBarButton2Click(Sender: TObject);
    procedure cxGrid1DBTableView1CustomDrawCell(Sender: TcxCustomGridTableView; ACanvas: TcxCanvas; AViewInfo: TcxGridTableDataCellViewInfo; var ADone: Boolean);
    procedure cxGrid1DBTableView1KeyPress(Sender: TObject; var Key: Char);
    procedure cxGrid1DBTableView1FocusedItemChanged(Sender: TcxCustomGridTableView; APrevFocusedItem, AFocusedItem: TcxCustomGridTableItem);
    procedure cxGrid1DBTableView1CustomDrawColumnHeader(Sender: TcxGridTableView; ACanvas: TcxCanvas; AViewInfo: TcxGridColumnHeaderViewInfo; var ADone: Boolean);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure SetDateSearchNotRate(CDS : TClientDataSet; id,cod,name:string);
    procedure dxBarButton1Click(Sender: TObject);
    procedure dxBarButton6Click(Sender: TObject);
    procedure cxGrid1DBBandedTableView1DataControllerFilterChanged(Sender: TObject);
    procedure cxButton2Click(Sender: TObject);
  private
    Fname, Fcod       : string;
    Fid               : integer;
    Fstr_id,Fstr_name,
    Fstr_cod, Fstr_hint_name,
    Fstr_hint_cod, Fstr_hint_id
                      : string;
    Froad_name  : string;
    Fstate_name : string;
    Fstate_cod  : string;
    Fstate_id   : integer;

    procedure LocateId(id: integer);

    procedure MultiSelect(values: boolean);
    procedure CellAutoHeight(values: boolean);
    procedure SelectIndexColumn(values: integer);
    procedure UnSelect4Key(values: string);
    procedure FilterINN(values: string);
    procedure FilterCustomerName(values: string);
    procedure FilterCustomer(values: string);
    procedure FilterContractCod(values: string);
    procedure FilterCheckEmpty(values: Boolean);

    procedure SetActsChoose(values: boolean);
    procedure SetInviceScoreChoose(values: boolean);
    procedure SetInviceHeaderChoose(values: boolean);
    procedure SetBargainChoose(values: boolean);
    procedure SetBargainChoose_TrPay(values: boolean);
    procedure SetNodeChoose(values: boolean);
    procedure SetFirmChoose(values: boolean);
    procedure SetSelfFirmChoose(values: boolean);
    procedure SetBargainMessage(values: boolean);
    procedure SetRateChoose(values: Boolean);
    procedure SetContract4FactIncChoose(values: Boolean);
    procedure SetContract4AgreeFactInc(values: Boolean);
    procedure SetContractClient(values: Boolean);
    procedure SetContract4ScoreInvoice(values: Boolean);
    procedure SetContractClientAndAgent(values: Boolean);
    procedure SetChooseContract_1c(values: Boolean);
    procedure SetContract_1c(values: Boolean);
    procedure SetChooseFactTech(values: Boolean);
    procedure SetChooseRow4Score(values: Boolean);
    procedure SetGetPaysFrom1C(flag : boolean);
    procedure SetAgentRate(flag : boolean);
    procedure SetRate(flag : boolean);
    procedure SetProcessSelect(values: boolean);
    procedure SetServiceKind(values: boolean);
    procedure SetFiveDays(values: boolean);
    procedure SetFirmContact4ActsSetting(values: boolean);
    procedure SetFirmContactBankAccount(values: boolean);
    procedure SetDocBlob(values: boolean);
    procedure SetDocBlobCopy(values: boolean);
    procedure SetProvide(values: Boolean);
    procedure SetRepair(values: Boolean);
    procedure SetLeasing(values: Boolean);
    procedure SetVagonOwner(values: Boolean);
    procedure SetFileZfto(values: Boolean);
    procedure SetFindZFTO(values: Boolean);
    procedure SetChooseZFTO4Report(values: Boolean);
    procedure SetContractClientFull(values: Boolean);
    procedure SetUsersStack(values: Boolean);
    procedure SetContractRepair(values: Boolean);
    procedure SetTripReport(values: Boolean);
    procedure SetCaption(str_caption: string);
    procedure SetRodVagonFromViewVagon(values: Boolean);
    procedure SetVagonComment(values: Boolean);
    procedure SetVagonArendaChoose(values: Boolean);
    procedure SetFactTrackTripChoose(values: Boolean);
    procedure SetFactTrackTripChoose2(values: Boolean);
    procedure SetFactTrackTripChoose3(values: Boolean);
    procedure SetFactTechChoose(values: Boolean);
    procedure SetPortChoose(values: Boolean);
    procedure SetShipChoose(values: Boolean);
    procedure SetSubdivision(values: Boolean);
    procedure SetTypeBargain(values: Boolean);
    procedure SetEtranZFTO(values: Boolean);
    procedure SetDocPretenzia(cxGridDBBandedTableView: TcxGridDBBandedTableView);
    procedure SetUsersTelEMail(values: Boolean);
    procedure SetEtranHistory(values: Boolean);
    procedure SetComment6(values: Boolean);
    procedure SetViewVagon(values: Boolean);
    procedure SetUsersChooseCopy(values: Boolean);
    procedure SetFactRateFind(values: Boolean);
    procedure SetFactRateCheck(values: Boolean);
    procedure SetVagonTypePark(values: Boolean);
    procedure SetETRANSpecMark(values: Boolean);
    procedure SetContractAndNode(values: Boolean);
    procedure SetUsersCheckDocs(values: Boolean);
    procedure SetUsersSettingChoose(values: Boolean);
    procedure SetServiceChoose(values: Boolean);
    procedure SetKargoETSNG(values: Boolean);
    procedure SetShapingRateChoose(values: boolean);

  public
    constructor Create(what_choice: single; Q: TCustomADODataSet; id, cod, name: string);

    procedure AddVisibleColumn(strFieldName, strCaption : string; intWidth : integer = 80; SetFooterCount : Boolean = False;
                              SetFooterSum : Boolean = False; style: TcxStyle = nil; SetVisible: boolean = True);
    procedure HideAllColumns;

  published
    property GetName                    : string read Fname;
    property GetCod                     : string read Fcod;
    property GetId                      : integer read Fid;

    property GetRoadName  : string read Froad_name;
    property GetStateName : string read Fstate_name;
    property GetStateCod  : string read Fstate_cod;
    property GetStateId   : integer read Fstate_id;

    property SetId                      : integer write LocateId;
    property _LocateId                  : integer write LocateId;
    property _FilterINN                 : string  write FilterINN;
    property _FilterCustomerName        : string  write FilterCustomerName;
    property _FilterCustomer            : string  write FilterCustomer;
    property _FilterContractCod         : string  write FilterContractCod;
    property _FilterCheckEmpty          : boolean write FilterCheckEmpty;

    property _GetStrId                  : string  read  Fstr_id;
    property _GetStrName                : string  read  Fstr_name;
    property _GetStrCod                 : string  read  Fstr_cod;

    property _GetStrHintName            : string  read  Fstr_hint_name;
    property _GetStrHintCod             : string  read  Fstr_hint_cod;
    property _GetStrHintId              : string  read  Fstr_hint_id;

    property _SelectIndexColumn         : integer write SelectIndexColumn;
    property _UnSelect4Key              : string write UnSelect4Key;
    property _MultiSelect               : boolean write MultiSelect;
    property _CellAutoHeight            : boolean write CellAutoHeight;


    property _SetCaption                : string  write SetCaption;
    property _SetActsChoose             : boolean write SetActsChoose;
    property _SetInviceScoreChoose      : boolean write SetInviceScoreChoose;
    property _SetInviceHeaderChoose     : boolean write SetInviceHeaderChoose;
    property _SetBargainChoose          : boolean write SetBargainChoose;
    property _SetBargainChoose_TrPay    : boolean write SetBargainChoose_TrPay;
    property _SetNodeChoose             : boolean write SetNodeChoose;
    property _SetFirmChoose             : boolean write SetFirmChoose;
    property _SetSelfFirmChoose         : boolean write SetSelfFirmChoose;
    property _SetBargainMessage         : boolean write SetBargainMessage;
    property _SetRateChoose             : boolean write SetRateChoose;
    property _SetContract4FactIncChoose : boolean write SetContract4FactIncChoose;
    property _SetContract4AgreeFactInc  : boolean write SetContract4AgreeFactInc;
    property _SetContractClient         : boolean write SetContractClient;
    property _SetContract4ScoreInvoice  : boolean write SetContract4ScoreInvoice;
    property _SetContractClientAndAgent : boolean write SetContractClientAndAgent;
    property _SetChooseContract_1c      : boolean write SetChooseContract_1c;
    property _SetContract_1c            : boolean write SetContract_1c;
    property _SetGetPaysFrom1C          : boolean write SetGetPaysFrom1C;
    property _SetAgentRate              : boolean write SetAgentRate;
    property _SetRate                   : boolean write SetRate;
    property _SetProcessSelect          : boolean write SetProcessSelect;
    property _SetServiceKind            : boolean write SetServiceKind;
    property _SetFiveDays               : boolean write SetFiveDays;
    property _SetFirmContact4ActsSetting: boolean write SetFirmContact4ActsSetting;
    property _SetFirmContactBankAccount : boolean write SetFirmContactBankAccount;
    property _SetDocBlob                : boolean write SetDocBlob;
    property _SetChooseFactTech         : boolean write SetChooseFactTech;
    property _SetChooseRow4Score        : boolean write SetChooseRow4Score;
    property _SetProvide                : boolean write SetProvide;
    property _SetRepair                 : boolean write SetRepair;
    property _SetLeasing                : boolean write SetLeasing;
    property _SetVagonOwner             : boolean write SetVagonOwner;
    property _SetFileZfto               : boolean write SetFileZfto;
    property _SetContractClientFull     : boolean write SetContractClientFull;
    property _SetFindZFTO               : boolean write SetFindZFTO;
    property _SetChooseZFTO4Report      : boolean write SetChooseZFTO4Report;
    property _SetKargoETSNG             : boolean write SetKargoETSNG;

    property _SetUsersChooseCopy        : boolean write SetUsersChooseCopy;

    property _SetUsersStack             : boolean write SetUsersStack;
    property _SetContractRepair         : boolean write SetContractRepair;
    property _SetTripReport             : boolean write SetTripReport;
    property _SetRodVagonFromViewVagon  : boolean write SetRodVagonFromViewVagon;
    property _SetVagonComment           : boolean write SetVagonComment;
    property _SetVagonArendaChoose      : boolean write SetVagonArendaChoose;
    property _SetFactTrackTripChoose    : boolean write SetFactTrackTripChoose;
    property _SetFactTrackTripChoose2   : boolean write SetFactTrackTripChoose2;
    property _SetFactTrackTripChoose3   : boolean write SetFactTrackTripChoose3;
    property _SetFactTechChoose         : boolean write SetFactTechChoose;
    property _SetPortChoose             : boolean write SetPortChoose;
    property _SetShipChoose             : boolean write SetShipChoose;
    property _SetSubdivision            : boolean write SetSubdivision;
    property _SetTypeBargain            : boolean write SetTypeBargain;
    property _SetDocBlobCopy            : boolean write SetDocBlobCopy;
    property _SetDocPretenzia           : TcxGridDBBandedTableView write SetDocPretenzia;
    property _SetUsersTelEMail          : boolean write SetUsersTelEMail;
    property _SetEtranZFTO              : boolean write SetEtranZFTO;
    property _SetEtranHistory           : boolean write SetEtranHistory;
    property _SetComment6               : boolean write SetComment6;
    property _SetViewVagon              : boolean write SetViewVagon;
    property _SetFactRateFind           : boolean write SetFactRateFind;
    property _SetFactRateCheck          : boolean write SetFactRateCheck;
    property _SetVagonTypePark          : boolean write SetVagonTypePark;
    property _SetETRANSpecMark          : boolean write SetETRANSpecMark;
    property _SetContractAndNode        : boolean write SetContractAndNode;
    property _SetUsersCheckDocs         : boolean write SetUsersCheckDocs;
    property _SetUsersSettingChoose     : boolean write SetUsersSettingChoose;
    property _SetServiceChoose          : boolean write SetServiceChoose;
    Procedure _SetInvoiceScoreZFTO(id,cod,name:string; period :string = ''; document_name :string = '';ndnum : string = '';number_act : string = ''; firm_customer_name : string = '');
    Procedure GetUserRole(flag : boolean);
    Procedure SetUsersChoose(strFIOforLocate: string);
    property _SetShapingRateChoose      : boolean write SetShapingRateChoose;
  end;

var
  fmFilter: TfmFilter;

implementation
    uses Raznoe, StrUtils;

{$R *.DFM}

constructor TfmFilter.Create(what_choice: single; Q:TCustomADODataSet; id, cod, name:string);
begin
  inherited Create(Application);
  Screen.Cursor := crHourglass;

  FQuery.Clone(Q);
  FQuery.Filter := Q.Filter;
  cxGrid1DBBandedTableView1.DataController.KeyFieldNames := id;
  cxGrid1DBBandedTableView1Column1.DataBinding.FieldName := id;
  cxGrid1DBBandedTableView1Column2.DataBinding.FieldName := cod;
  cxGrid1DBBandedTableView1Column3.DataBinding.FieldName := name;

  {делаем первую строку активно-выделенной как будто ее выделил пользователь }
  if not FQuery.Eof then
    cxGrid1DBBandedTableView1.DataController.SelectRows(0, 0);

  Screen.Cursor := crDefault;
end;

procedure TfmFilter.SetDateSearchNotRate(CDS : TClientDataSet; id,cod,name:string);
begin
  cxGrid1DBBandedTableView1.DataController.KeyFieldNames := id;
  cxGrid1DBBandedTableView1Column1.DataBinding.FieldName := id;
  cxGrid1DBBandedTableView1Column2.DataBinding.FieldName := cod;
  cxGrid1DBBandedTableView1Column2.Caption               := 'Дата';
  cxGrid1DBBandedTableView1Column3.DataBinding.FieldName := name;
  cxGrid1DBBandedTableView1Column2.Caption               := 'Валюта';
  cxGrid1DBBandedTableView1.OptionsView.BandHeaders      := False;
  DS_Filter.DataSet := CDS;
end;

procedure TfmFilter.HideAllColumns;
var i : integer;
begin
  for i := 0 to cxGrid1DBBandedTableView1.ColumnCount - 1 do
    cxGrid1DBBandedTableView1.Columns[i].Visible := False;
end;

procedure TfmFilter.LocateId(id: integer);
begin
  if cxGrid1DBBandedTableView1.DataController.LocateByKey(id) = False then cxGrid1DBBandedTableView1.Controller.GoToFirst;
  if cxGrid1DBBandedTableView1.Controller.FocusedRecord <> nil then  cxGrid1DBBandedTableView1.Controller.FocusedRecord.Selected := True;
end;

procedure TfmFilter.AddVisibleColumn(strFieldName: string; strCaption: string; intWidth: Integer = 80; SetFooterCount : Boolean = False;
                                    SetFooterSum : Boolean = False; style: TcxStyle = nil; SetVisible: boolean = True);
var cxGridDBColumn : TcxGridDBBandedColumn;
begin
  cxGridDBColumn := cxGrid1DBBandedTableView1.CreateColumn;

  cxGridDBColumn.DataBinding.FieldName := strFieldName;
  cxGridDBColumn.Caption               := strCaption;
  cxGridDBColumn.Width                 := intWidth;
  cxGridDBColumn.Visible               := SetVisible;
  cxGridDBColumn.HeaderAlignmentVert   := vaTop;
  cxGridDBColumn.Styles.Content        := TcxStyle(style);

  if SetFooterCount then begin
    cxGridDBColumn.Summary.FooterKind := skCount;
    cxGridDBColumn.Summary.FooterFormat := 'Кол-во: 0';
  end;

  if SetFooterSum then begin
    cxGridDBColumn.Summary.FooterKind := skSum;
    cxGridDBColumn.Summary.FooterFormat := '#,##0.00';
  end;
end;

procedure TfmFilter.UnSelect4Key(values: string);
var i : integer;
begin
  values := ','+values+',';

  for i := 0 to cxGrid1DBBandedTableView1.DataController.RowCount - 1 do
    if Pos(',' + VarToStr(cxGrid1DBBandedTableView1.DataController.Values[i, cxGrid1DBBandedTableView1Column1.Index]) + ',', values) = 0 then
      cxGrid1DBBandedTableView1.DataController.SelectRows(i, i);
end;

procedure TfmFilter.CellAutoHeight(values: boolean);
begin
  cxGrid1DBBandedTableView1.OptionsView.CellAutoHeight := values;
end;

procedure TfmFilter.MultiSelect(values: boolean);
begin
  cxGrid1DBBandedTableView1.OptionsSelection.MultiSelect := values;
end;

procedure TfmFilter.SelectIndexColumn(values: integer);
var
  i : integer;
begin
  for i := 0 to cxGrid1DBBandedTableView1.ColumnCount - 1 do begin
    if cxGrid1DBBandedTableView1.Columns[i].VisibleIndex = values then begin
      cxGrid1DBBandedTableView1.Columns[i].Focused := True;
      cxGrid1DBBandedTableView1.Columns[i].Selected := True;
    end;
  end;
end;

Procedure TfmFilter._SetInvoiceScoreZFTO(id,cod,name: string; period :string = ''; document_name :string = '';ndnum : string = '';number_act : string = ''; firm_customer_name : string = '');
begin

  cxGrid1DBBandedTableView1.DataController.KeyFieldNames := id;
  cxGrid1DBBandedTableView1Column1.DataBinding.FieldName := id;
  cxGrid1DBBandedTableView1Column2.DataBinding.FieldName := cod;
  cxGrid1DBBandedTableView1Column3.DataBinding.FieldName := name;

  cxGrid1DBBandedTableView1Column2.Caption := '№ накладной';
  cxGrid1DBBandedTableView1Column2.Summary.FooterFormat := 'Кол-во: 0';
  cxGrid1DBBandedTableView1Column2.Summary.FooterKind := skCount;

  cxGrid1DBBandedTableView1.Columns[2].Visible := False;
  cxGrid1DBBandedTableView1.Columns[2].Width := 230;
  cxGrid1DBBandedTableView1.Columns[2].DataBinding.FieldName := name;
//  cxGrid1DBBandedTableView1.Columns[2].Summary.FooterFormat := 'Кол-во: 0';
//  cxGrid1DBBandedTableView1.Columns[2].Summary.FooterKind := skCount;
  cxGrid1DBBandedTableView1.Columns[2].Caption := 'Наименование';

  cxGrid1DBBandedTableView1.CreateColumn.DataBinding.FieldName := 'cxGrid1DBTableView1Column4';
  cxGrid1DBBandedTableView1.Columns[3].Width := 50;
  cxGrid1DBBandedTableView1.Columns[3].DataBinding.FieldName := period;
  cxGrid1DBBandedTableView1.Columns[3].Caption := 'Период';
  cxGrid1DBBandedTableView1.Columns[3].Visible := True;

  cxGrid1DBBandedTableView1.CreateColumn.DataBinding.FieldName := 'cxGrid1DBTableView1Column5';
  cxGrid1DBBandedTableView1.Columns[4].Width := 180;
  cxGrid1DBBandedTableView1.Columns[4].DataBinding.FieldName := ndnum;
  cxGrid1DBBandedTableView1.Columns[4].Visible := False;


  cxGrid1DBBandedTableView1.CreateColumn.DataBinding.FieldName := 'cxGrid1DBTableView1Column6';
  cxGrid1DBBandedTableView1.Columns[5].Width := 180;
  cxGrid1DBBandedTableView1.Columns[5].DataBinding.FieldName := document_name;
  cxGrid1DBBandedTableView1.Columns[5].Caption := '№ Счет - фактуры';
  cxGrid1DBBandedTableView1.Columns[5].Visible := True;

  cxGrid1DBBandedTableView1.CreateColumn.DataBinding.FieldName := 'cxGrid1DBTableView1Column7';
  cxGrid1DBBandedTableView1.Columns[6].Width := 180;
  cxGrid1DBBandedTableView1.Columns[6].DataBinding.FieldName := number_act;
  cxGrid1DBBandedTableView1.Columns[6].Caption := '№ Акта';
  cxGrid1DBBandedTableView1.Columns[6].Visible := True;

  cxGrid1DBBandedTableView1.CreateColumn.DataBinding.FieldName := 'cxGrid1DBTableView1Column8';
  cxGrid1DBBandedTableView1.Columns[7].Width := 180;
  cxGrid1DBBandedTableView1.Columns[7].DataBinding.FieldName := firm_customer_name;
  cxGrid1DBBandedTableView1.Columns[7].Caption := 'Подрядчик';
  cxGrid1DBBandedTableView1.Columns[7].Visible := True;
end;


procedure TfmFilter.cxButton2Click(Sender: TObject);
var row : integer;
begin
  if (cxGrid1DBBandedTableView1Column2.DataBinding.Field.Value <> null) then Fcod  := cxGrid1DBBandedTableView1Column2.DataBinding.Field.Value;
  if (cxGrid1DBBandedTableView1Column3.DataBinding.Field.Value <> null) then Fname := cxGrid1DBBandedTableView1Column3.DataBinding.Field.Value;
  if (cxGrid1DBBandedTableView1Column1.DataBinding.Field.Value <> null) then Fid   := cxGrid1DBBandedTableView1Column1.DataBinding.Field.Value;

  Fstr_id   := '';
  Fstr_name := '';
  Fstr_cod  := '';

  Fstr_hint_name:= '';
  Fstr_hint_cod := '';
  Fstr_hint_id  := '';
  for row := 0 to cxGrid1DBBandedTableView1.Controller.SelectedRowCount-1 do
  begin
    if row = 0 then begin
      Fstr_cod  := Fstr_cod + VarToStr(cxGrid1DBBandedTableView1.Controller.SelectedRows[row].Values[cxGrid1DBBandedTableView1Column2.Index]);
      Fstr_id   := Fstr_id  + IntToStr(cxGrid1DBBandedTableView1.Controller.SelectedRows[row].Values[cxGrid1DBBandedTableView1Column1.Index]);
      Fstr_Name := Fstr_Name+ VarToStr(cxGrid1DBBandedTableView1.Controller.SelectedRows[row].Values[cxGrid1DBBandedTableView1Column3.Index]);

      Fstr_hint_name := Fstr_hint_name+ VarToStr(cxGrid1DBBandedTableView1.Controller.SelectedRows[row].Values[cxGrid1DBBandedTableView1Column3.Index]);
      Fstr_hint_cod  := Fstr_hint_cod + VarToStr(cxGrid1DBBandedTableView1.Controller.SelectedRows[row].Values[cxGrid1DBBandedTableView1Column2.Index]);
      Fstr_hint_id   := Fstr_hint_id  + IntToStr(cxGrid1DBBandedTableView1.Controller.SelectedRows[row].Values[cxGrid1DBBandedTableView1Column1.Index]);

      if (cxGrid1DBBandedTableView1.GetColumnByFieldName('road_name') <> nil) then
        Froad_name := cxGrid1DBBandedTableView1.GetColumnByFieldName('road_name').DataBinding.Field.AsString;
      if (cxGrid1DBBandedTableView1.GetColumnByFieldName('state_name') <> nil) then
        Fstate_name := cxGrid1DBBandedTableView1.GetColumnByFieldName('state_name').DataBinding.Field.AsString;
      if (cxGrid1DBBandedTableView1.GetColumnByFieldName('state_cod') <> nil) then
        Fstate_cod := cxGrid1DBBandedTableView1.GetColumnByFieldName('state_cod').DataBinding.Field.AsString;
      if (cxGrid1DBBandedTableView1.GetColumnByFieldName('state_id') <> nil) then
        Fstate_id := cxGrid1DBBandedTableView1.GetColumnByFieldName('state_id').DataBinding.Field.AsInteger;


    end else begin
      Fstr_cod  := Fstr_cod + ',' + VarToStr(cxGrid1DBBandedTableView1.Controller.SelectedRows[row].Values[cxGrid1DBBandedTableView1Column2.Index]);
      Fstr_id   := Fstr_id  + ',' + IntToStr(cxGrid1DBBandedTableView1.Controller.SelectedRows[row].Values[cxGrid1DBBandedTableView1Column1.Index]);
      Fstr_name := Fstr_name+ ',' + VarToStr(cxGrid1DBBandedTableView1.Controller.SelectedRows[row].Values[cxGrid1DBBandedTableView1Column3.Index]);

      Fstr_hint_name := Fstr_hint_name+ '|' + VarToStr(cxGrid1DBBandedTableView1.Controller.SelectedRows[row].Values[cxGrid1DBBandedTableView1Column3.Index]);
      Fstr_hint_cod  := Fstr_hint_cod + '|' + VarToStr(cxGrid1DBBandedTableView1.Controller.SelectedRows[row].Values[cxGrid1DBBandedTableView1Column2.Index]);
      Fstr_hint_id   := Fstr_hint_id  + '|' + IntToStr(cxGrid1DBBandedTableView1.Controller.SelectedRows[row].Values[cxGrid1DBBandedTableView1Column1.Index]);

    end;
  end;

  ModalResult         := mrOk;
end;

procedure TfmFilter.cxGrid1DBBandedTableView1DataControllerFilterChanged(Sender: TObject);
begin
  DrawcxGridColumnOnFiltered(Sender);
end;

procedure TfmFilter.cxGrid1DBTableView1CustomDrawCell(Sender: TcxCustomGridTableView; ACanvas: TcxCanvas; AViewInfo: TcxGridTableDataCellViewInfo; var ADone: Boolean);
begin
//    if AViewInfo.Focused then begin
//      ACanvas.Font.Color := clWhite;
//      ACanvas.Brush.Color := clBlue;
//    end;

  if AViewInfo.GridRecord.Selected or AViewInfo.GridRecord.Focused then begin
    ACanvas.Brush.Color := clNavy;
    ACanvas.Font.Color := clWhite;
    if AViewInfo.Focused then ACanvas.Brush.Color := clBlue;
  end;
end;

procedure TfmFilter.cxGrid1DBTableView1CustomDrawColumnHeader(Sender: TcxGridTableView; ACanvas: TcxCanvas; AViewInfo: TcxGridColumnHeaderViewInfo; var ADone: Boolean);
begin
  DrawcxGridColumnOnFocused(Sender, ACanvas, AViewInfo);
end;

procedure TfmFilter.cxGrid1DBTableView1FocusedItemChanged(Sender: TcxCustomGridTableView; APrevFocusedItem,  AFocusedItem: TcxCustomGridTableItem);
begin
  Sender.Painter.Invalidate;
end;


procedure TfmFilter.cxGrid1DBTableView1KeyPress(Sender: TObject; var Key: Char);
begin
  FilterColumnGridOnKeyPress(TcxGridDBBandedTableView(TcxGridSite(Sender).GridView), Key);
end;

procedure TfmFilter.FilterCustomer(values: string);
var
  cxGridColumn : TcxGridDBBandedColumn;
begin
  // Если нет указанной колонки, то не формируем фильтр
  cxGridColumn := cxGrid1DBBandedTableView1.GetColumnByFieldName('firm_customer_GUID');
  if cxGridColumn = nil then
    exit;

  // Формируем фильтр
  with cxGrid1DBBandedTableView1.DataController.Filter do begin
    Clear;
    Options := Options + [fcoCaseInsensitive];
    Root.BoolOperatorKind := fboAnd;
    Root.AddItem(cxGridColumn, foLike, values, values);
    Active := True;
  end;
end;

procedure TfmFilter.FilterCustomerName(values: string);
var
  cxGridColumn : TcxGridDBBandedColumn;
begin
  // Если нет указанной колонки, то не формируем фильтр
  cxGridColumn := cxGrid1DBBandedTableView1.GetColumnByFieldName('firm_customer_name');
  if cxGridColumn = nil then
    exit;
  if values <> '' then
    values := '%' + values + '%';

  // Формируем фильтр
  with cxGrid1DBBandedTableView1.DataController.Filter do begin
    Clear;
    Options := Options + [fcoCaseInsensitive];
    Root.BoolOperatorKind := fboAnd;
    Root.AddItem(cxGridColumn, foLike, values, values);
    Active := True;
  end;
end;

procedure TfmFilter.FilterCheckEmpty(values: Boolean);
begin
  if values then begin
    if cxGrid1DBBandedTableView1.DataController.FilteredRecordCount = 0 then
      cxGrid1DBBandedTableView1.DataController.Filter.Active := False;
  end;
end;

procedure TfmFilter.FilterContractCod(values: string);
var
  cxGridColumn : TcxGridDBBandedColumn;
begin
  // Если нет указанной колонки, то не формируем фильтр
  cxGridColumn := cxGrid1DBBandedTableView1.GetColumnByFieldName('contract_cod');
  if cxGridColumn = nil then
    exit;

  // Формируем фильтр
  with cxGrid1DBBandedTableView1.DataController.Filter do begin
    Clear;
    Options := Options + [fcoCaseInsensitive];
    Root.BoolOperatorKind := fboAnd;
    Root.AddItem(cxGridColumn, foLike, values, values);
    Active := True;
  end;
end;

procedure TfmFilter.FilterINN(values: string);
var
  cxGridColumn : TcxGridDBBandedColumn;
begin
  // Если нет указанной колонки, то не формируем фильтр
  cxGridColumn := cxGrid1DBBandedTableView1.GetColumnByFieldName('inn');
  if cxGridColumn = nil then
    exit;

  // Формируем фильтр
  with cxGrid1DBBandedTableView1.DataController.Filter do begin
    Clear;
    Options := Options + [fcoCaseInsensitive];
    Root.BoolOperatorKind := fboAnd;
    Root.AddItem(cxGridColumn, foLike, values, values);
    Active := True;
  end;
end;

procedure TfmFilter.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action := caFree;
end;

procedure TfmFilter.SetActsChoose(values: Boolean);
begin
  if values then begin
    HideAllColumns;
    AddVisibleColumn('acts_type_name', 'Акт', 200, True);
    AddVisibleColumn('acts_cod', '№ акта', 100);
    AddVisibleColumn('date_begin', 'c', 150);
    AddVisibleColumn('date_end', 'по', 150);
    Caption := 'Выбор акта';
  end;
end;

procedure TfmFilter.SetInviceHeaderChoose(values: boolean);
begin
  if values then begin
    HideAllColumns;
    AddVisibleColumn('header_description', 'Описание', 180, True);
    AddVisibleColumn('header_bank', 'Банковские реквизиты', 500);
    Caption := 'Выбор банковских реквизитов';
  end;
end;

procedure TfmFilter.SetInviceScoreChoose(values: Boolean);
begin
  if values then begin
    HideAllColumns;
    AddVisibleColumn('score_cod', '№ счета-фактуры', 180, True);
    AddVisibleColumn('score_period', 'Период', 100);
    AddVisibleColumn('score_customer', 'Контрагент', 230);
    Caption := 'Выбор счета-фактуры';
  end;
end;

procedure TfmFilter.SetNodeChoose(values: Boolean);
begin
  if values then begin
    HideAllColumns;
    AddVisibleColumn('inf_obj_id',    '№ записи', 50);
    AddVisibleColumn('inf_obj_name',  'Наименование станции', 100, True);
    AddVisibleColumn('inf_obj_cod',   'Код станции', 60);
    AddVisibleColumn('road_name',     'Дорога', 60);
    AddVisibleColumn('state_name',    'Страна', 100);
    AddVisibleColumn('state_id',      '№ записи страны', 100, False, False, nil, False);
    AddVisibleColumn('state_cod',     'Код страны', 100, False, False, nil, False);
  end;
end;

procedure TfmFilter.SetBargainChoose_TrPay(values: boolean);
var cxGridDBColumn : TcxGridDBBandedColumn;
begin
  if values then begin
    HideAllColumns;
    AddVisibleColumn('bargain_id', '№ записи', 100, True);
    AddVisibleColumn('bargain_cod', '№ приложения', 180);
    AddVisibleColumn('date_period_name', 'Период', 100);
    AddVisibleColumn('firm_customer_name', 'Клиент', 250);

    AddVisibleColumn('transport_pay_sum', 'ЦФТО, RUB', 100, False, True);
    cxGridDBColumn := cxGrid1DBBandedTableView1.GetColumnByFieldName('transport_pay_sum');
    cxGridDBColumn.PropertiesClassName := 'TcxCurrencyEditProperties';
    TcxCurrencyEditProperties(cxGridDBColumn.Properties).DisplayFormat := '#,##0.00';
    cxGridDBColumn.Styles.Content := cxStyle_TransportPay;
    Caption := 'Выбор приложения';
  end;
end;

procedure TfmFilter.SetBargainChoose(values: Boolean);
begin
  if values then begin
    HideAllColumns;
    AddVisibleColumn('bargain_id', '№ записи', 100, True);
    AddVisibleColumn('bargain_cod', '№ приложения', 180);
    AddVisibleColumn('date_period_name', 'Период', 100);
    AddVisibleColumn('firm_customer_name', 'Клиент', 230);
    Caption := 'Выбор приложения';
  end;
end;

procedure TfmFilter.SetBargainMessage(values: Boolean);
begin
  if values then begin
    HideAllColumns;
    AddVisibleColumn('bargain_cod', '№ приложения', 180, True);
    AddVisibleColumn('str_message', 'Ошибка', 400);
    Caption := 'Ошибки при закрытии приложений';
    cxGrid1DBBandedTableView1.OptionsSelection.MultiSelect := True;
  end;
end;

procedure TfmFilter.SetSelfFirmChoose(values: boolean);
begin
  if values then begin
    HideAllColumns;
    AddVisibleColumn('firm_name', 'Наименование', 300);
    Caption := 'Выбор собственных организаций';
    cxGrid1DBBandedTableView1.OptionsSelection.MultiSelect := True;
  end;
end;

procedure TfmFilter.SetFirmChoose(values: Boolean);
begin
  if values then begin
    HideAllColumns;
    AddVisibleColumn('firm_name', 'Наименование', 280);
    AddVisibleColumn('cod_okpo', 'ОКПО', 100);
    Caption := 'Выбор фирмы';
  end;
end;


procedure TfmFilter.SetUsersChoose(strFIOforLocate: string);
begin
    HideAllColumns;
    AddVisibleColumn('fio_users', 'Фамилия И.О.', 180);
    AddVisibleColumn('users_id', 'personID', 60);
    AddVisibleColumn('email', 'Email', 160);
    Caption := 'Выбор пользователя';
    cxGrid1DBBandedTableView1.OptionsSelection.MultiSelect := False;
    TcxGridDBTableSummaryItem(cxGrid1DBBandedTableView1.DataController.Summary.FooterSummaryItems[0]).Column := cxGrid1DBBandedTableView1.Columns[3];
    FQuery.Locate('fio_users', strFIOforLocate, [loCaseInsensitive]);
end;


procedure TfmFilter.SetUsersChooseCopy(values: Boolean);
begin
  if values then begin
    cxGrid1DBBandedTableView1.OptionsView.BandHeaders := False;
    HideAllColumns;
    AddVisibleColumn('FIO_users', 'Фамилия', 100);
    AddVisibleColumn('users_name', 'Пользователь', 100);
    AddVisibleColumn('users_stack_num', 'Stack пользователя.', 50);
    AddVisibleColumn('users_group_name', 'Организация', 150);
    AddVisibleColumn('users_id', 'id', 40, False);
    Caption := 'Выбор пользователя';
    cxGrid1DBBandedTableView1.OptionsSelection.MultiSelect := True;
    TcxGridDBTableSummaryItem(cxGrid1DBBandedTableView1.DataController.Summary.FooterSummaryItems[0]).Column := cxGrid1DBBandedTableView1.Columns[3];
  end;
end;


procedure TfmFilter.SetRateChoose(values: Boolean);
begin
  if values then begin
    HideAllColumns;
    AddVisibleColumn('node_begin', 'Станция отправления', 120, True);
    AddVisibleColumn('node_end', 'Станция назначания', 120);
    AddVisibleColumn('kargo', 'Груз', 120);
    AddVisibleColumn('rate', 'Ставка', 80);
    cxGrid1DBBandedTableView1.GetColumnByFieldName('rate').PropertiesClassName := 'TcxCurrencyEditProperties';
    TcxCurrencyEditProperties(cxGrid1DBBandedTableView1.GetColumnByFieldName('rate').Properties).DisplayFormat := '#,##0.00';
    AddVisibleColumn('nds', 'НДС', 50);
    AddVisibleColumn('period', 'Период действия', 120);
    Caption := 'Выбор ставки';
    cxGrid1DBBandedTableView1.OptionsSelection.MultiSelect := False;
    TcxGridDBTableSummaryItem(cxGrid1DBBandedTableView1.DataController.Summary.FooterSummaryItems[0]).Column := cxGrid1DBBandedTableView1.Columns[3];

  end;
end;

procedure TfmFilter.SetContractClientAndAgent(values: Boolean);
begin
  if values then begin
    HideAllColumns;
    AddVisibleColumn('contract_cod', '№ Договора', 120, True);
    AddVisibleColumn('firm_customer_name', 'Клиент', 280);
    AddVisibleColumn('firm_self_name', 'Подрядчик', 280);
    Caption := 'Выбор клиента';
    cxGrid1DBBandedTableView1.OptionsSelection.MultiSelect := False;
    TcxGridDBTableSummaryItem(cxGrid1DBBandedTableView1.DataController.Summary.FooterSummaryItems[0]).Column := cxGrid1DBBandedTableView1.Columns[3];
  end;
end;

procedure TfmFilter.SetContract4ScoreInvoice(values: Boolean);
begin
  if values then begin
    HideAllColumns;
    AddVisibleColumn('contract_id', '№ Записи', 120, True);
    AddVisibleColumn('contract_cod', '№ Договора', 120, True);
    AddVisibleColumn('firm_customer_name', 'Клиент / Подрядчик', 280);
    AddVisibleColumn('type_contract_name', 'Тип договора', 120);
    AddVisibleColumn('firm_self_name', 'Собственная', 280);
    AddVisibleColumn('note', 'Примечание', 280);
    Caption := 'Выбор клиента';
    cxGrid1DBBandedTableView1.OptionsSelection.MultiSelect := False;
  end;
end;

procedure TfmFilter.SetContractClient(values: Boolean);
begin
  if values then begin
    HideAllColumns;
    AddVisibleColumn('contract_cod', '№ Договора', 120, True);
    AddVisibleColumn('firm_customer_name', 'Клиент', 280);
    Caption := 'Выбор клиента';
    cxGrid1DBBandedTableView1.OptionsSelection.MultiSelect := False;
  end;
end;

procedure TfmFilter.SetDocBlob(values: Boolean);
begin
  if values then begin
    HideAllColumns;
    AddVisibleColumn('doc_describe', 'Наименование', 150, True);
    AddVisibleColumn('doc_cod', 'Код', 100);
    Caption := 'Выбор приложения';
    cxGrid1DBBandedTableView1.OptionsSelection.MultiSelect := False;
  end;
end;

procedure TfmFilter.SetFirmContactBankAccount(values: boolean);
begin
  if values then begin
    HideAllColumns;
    AddVisibleColumn('type_contact_name', 'Описание', 180, True);
    AddVisibleColumn('firm_contact_name', 'Банковские реквизиты', 500);
    Caption := 'Выбор банковских реквизитов';
  end;
end;

procedure TfmFilter.SetFirmContact4ActsSetting(values: Boolean);
begin
  if values then begin
    HideAllColumns;
    AddVisibleColumn('type_contact_name', 'Тип контакта', 200, True);
    AddVisibleColumn('firm_contact_name', 'Ф.И.О.', 200);
    AddVisibleColumn('firm_contact_comment', 'Основание (доверенность)', 300);
    AddVisibleColumn('date_begin', 'Начало действия', 100);
    AddVisibleColumn('date_end', 'Окончание действия', 100);
    Caption := 'Выбор контакта';
    cxGrid1DBBandedTableView1.OptionsSelection.MultiSelect := False;
  end;
end;

procedure TfmFilter.SetServiceKind(values: boolean);
begin
  if values then begin
    HideAllColumns;
    AddVisibleColumn('inf_obj_id', '№ Записи', 80, True);
    AddVisibleColumn('inf_obj_name', 'Вид услуги в Акт', 500);
    AddVisibleColumn('inf_obj_name_full', 'Вид услуги в Счет-фактуру', 500);
    AddVisibleColumn('inf_obj_cod', 'Код услуги', 80);
    Caption := 'Выбор Вида Услуги';
    cxGrid1DBBandedTableView1.OptionsSelection.MultiSelect := False;
  end;
end;

procedure TfmFilter.SetFiveDays(values: boolean);
begin
  if values then begin
    HideAllColumns;
    AddVisibleColumn('inf_obj_id', '№ Записи', 80, True);
    AddVisibleColumn('inf_obj_name', 'Пятидневка ЦФТО', 200);
    Caption := 'Выбор Пятидневки';
    cxGrid1DBBandedTableView1.OptionsSelection.MultiSelect := False;
  end;
end;

procedure TfmFilter.SetProcessSelect(values: boolean);
begin
  if values then begin
    HideAllColumns;
    AddVisibleColumn('process_name_full', 'Процесс', 280);
    Caption := 'Выбор процесса';
    cxGrid1DBBandedTableView1.OptionsSelection.MultiSelect := False;
  end;
end;


procedure TfmFilter.SetContract4AgreeFactInc(values: Boolean);
begin
  if values then begin
    HideAllColumns;
    AddVisibleColumn('shaping_rate_id', '№ Услуги', 100);
    AddVisibleColumn('contract_agent_cod', '№ Договора', 120, True);
    AddVisibleColumn('firm_agent_name', 'Подрядчик', 200);
    AddVisibleColumn('firm_client_name', 'Клиент', 120, True);
    AddVisibleColumn('bargain_cod', '№ перевозки', 100, True);
    AddVisibleColumn('shaping_rate_type_name', 'Тип расчета', 100);
    AddVisibleColumn('agent_sum_fact_real', 'Сумма', 120);
    cxGrid1DBBandedTableView1.GetColumnByFieldName('agent_sum_fact_real').PropertiesClassName := 'TcxCurrencyEditProperties';
    TcxCurrencyEditProperties(cxGrid1DBBandedTableView1.GetColumnByFieldName('agent_sum_fact_real').Properties).DisplayFormat := '#,##0.00';
    Caption := 'Выбор списка Услуг для Сверки';
    cxGrid1DBBandedTableView1.OptionsSelection.MultiSelect := True;
  end;
end;

procedure TfmFilter.SetContract4FactIncChoose(values: Boolean);
begin
  if values then begin
    HideAllColumns;
    AddVisibleColumn('contract_cod', '№ Договора', 120, True);
    AddVisibleColumn('firm_customer_name', 'Подрядчик', 280);
    Caption := 'Выбор подрядчика';
    cxGrid1DBBandedTableView1.OptionsSelection.MultiSelect := False;
  end;
end;

procedure TfmFilter.SetChooseContract_1c(values: Boolean);
begin
  if values then begin
    HideAllColumns;
    AddVisibleColumn('c1_contract_GUID', '№ записи', 50);
    AddVisibleColumn('c1_contract_num', '№ Договора 1С', 200);
    AddVisibleColumn('c1_contract_date', 'Дата Договора 1С', 200);
    AddVisibleColumn('c1_contract_name', 'Договор 1С', 200);
    AddVisibleColumn('c1_inn', 'ИНН', 150);
    AddVisibleColumn('c1_kpp', 'КПП', 150);
    AddVisibleColumn('c1_firm_name', 'Контрагент 1С', 280, True);
    AddVisibleColumn('company_name', 'Собственная 1С', 100);
    AddVisibleColumn('c1_contract_type_name', 'Тип Договора 1С', 100);
    AddVisibleColumn('lis_contract_name', 'Договор LIS', 100);
    AddVisibleColumn('lis_firm_name', 'Контрагент LIS', 100);
    AddVisibleColumn('lis_contract_id', '№ Записи LIS', 20);
    AddVisibleColumn('c1_base_version', 'Версия 1С', 100);
    AddVisibleColumn('date_enter', 'Дата ввода', 100);
    AddVisibleColumn('c1_contract_firm_GUID', '№ Записи Контрагента', 150);

    Caption := 'Выбор договора из 1С';
    cxGrid1DBBandedTableView1.OptionsSelection.MultiSelect := False;
  end;
end;

procedure TfmFilter.SetContract_1c(values: Boolean);
begin
  if values then begin
    HideAllColumns;

    AddVisibleColumn('contract_1c_id', '№ записи', 100);
    AddVisibleColumn('contract_cod', '№ договора 1С', 100);
    AddVisibleColumn('contract_name', 'Примечание к договору 1С', 150);
    AddVisibleColumn('date_begin', 'Дата договора 1С', 100);
    AddVisibleColumn('firm_customer_name', 'Контрагент 1С', 150, True);
    AddVisibleColumn('firm_self_name', 'Собственная 1С', 100);

    AddVisibleColumn('contract_type_name', 'Тип договора 1С', 100);
    AddVisibleColumn('inn', 'ИНН', 80);
    AddVisibleColumn('kpp', 'КПП', 80);
    AddVisibleColumn('currency_name', 'Валюта 1С', 80);

    AddVisibleColumn('contract_id', '№ записи договора LIS', 100);
    AddVisibleColumn('contract_cod_lis', '№ договора LIS', 100);
    AddVisibleColumn('firm_customer_name_short', 'Контрагент LIS', 100);

    AddVisibleColumn('base_1C_name', 'База 1С', 100);
    AddVisibleColumn('contract_1c_GUID', '№ записи договора 1С', 100);
    AddVisibleColumn('firm_customer_GUID', '№ записи контрагента', 100);
    AddVisibleColumn('firm_self_GUID', '№ записи собственной', 100);

    Caption := 'Выбор договора из 1С';
    cxGrid1DBBandedTableView1.OptionsSelection.MultiSelect := False;
  end;
end;

procedure TfmFilter.GetUserRole(flag : boolean);
begin
  cxGrid1DBBandedTableView1.OptionsSelection.MultiSelect := flag;
  Caption := 'Выбор пользователей';
  cxGrid1DBBandedTableView1Column2.Caption := 'Пользователь';
  cxGrid1DBBandedTableView1Column3.Caption := 'Организация';
end;

procedure TfmFilter.SetGetPaysFrom1C(flag : boolean);
begin
  cxGrid1DBBandedTableView1.OptionsSelection.MultiSelect := flag;
  Caption := 'Незагруженые платежи';
  cxGrid1DBBandedTableView1Column1.Caption := '№';
  cxGrid1DBBandedTableView1Column2.Caption := 'Дата';
  cxGrid1DBBandedTableView1Column3.Caption := 'Контрагент';
  AddVisibleColumn('c1_contract_name', 'Договор 1C', 250, True);
  AddVisibleColumn('company_name', 'Собственная', 200);
  AddVisibleColumn('c1_oper_sum', 'Сумма', 90);
  AddVisibleColumn('c1_currency_cod', 'Валюта', 50);
  cxGrid1DBBandedTableView1.GetColumnByFieldName('c1_oper_sum').PropertiesClassName := 'TcxCurrencyEditProperties';
  TcxCurrencyEditProperties(cxGrid1DBBandedTableView1.GetColumnByFieldName('c1_oper_sum').Properties).DisplayFormat := '#,##0.00';
  AddVisibleColumn('c1_oper_name', 'Операция', 200);
  AddVisibleColumn('c1_oper_description', 'Комментарий', 300);
  AddVisibleColumn('bind_pay_id', '№ записи', 80);
  dxBarButton2.Visible := ivAlways;
end;

procedure TfmFilter.SetAgentRate(flag : boolean);
begin
  HideAllColumns;
  cxGrid1DBBandedTableView1.OptionsSelection.MultiSelect := False;
  Caption := 'Выбор ставки подрядчика';
  AddVisibleColumn('firm_customer_name', 'Пдорядчик', 120);
  AddVisibleColumn('contract_cod', '№ Договора', 100);
  AddVisibleColumn('kargoETSNG_name', 'Груз', 100);
  AddVisibleColumn('node_begin_name', 'Станция отпр.', 100);
  AddVisibleColumn('node_end_name', 'Станция назн.', 100);
  AddVisibleColumn('plan_rate', 'Ставка', 100);
  cxGrid1DBBandedTableView1.GetColumnByFieldName('plan_rate').PropertiesClassName := 'TcxCurrencyEditProperties';
  TcxCurrencyEditProperties(cxGrid1DBBandedTableView1.GetColumnByFieldName('plan_rate').Properties).DisplayFormat := '#,##0.00';
  AddVisibleColumn('brief_name', 'Валюта', 80);
  AddVisibleColumn('ed_izm_name', 'Ед. изм.', 80);
  AddVisibleColumn('date_begin', 'Дата начала', 80);
  AddVisibleColumn('date_end', 'Дата окончания', 80);
end;

procedure TfmFilter.SetRate(flag: boolean);
begin
  HideAllColumns;
  cxGrid1DBBandedTableView1.OptionsSelection.MultiSelect := False;
  Caption := 'Выбор планируемой ставки клиенту';
  AddVisibleColumn('kargoETSNG_name', 'Груз', 100);
  AddVisibleColumn('node_begin_name', 'Станция отпр.', 100);
  AddVisibleColumn('node_end_name', 'Станция назн.', 100);
  AddVisibleColumn('distance', 'Расстояние, км.', 90);
  cxGrid1DBBandedTableView1.GetColumnByFieldName('distance').PropertiesClassName := 'TcxCurrencyEditProperties';
  TcxCurrencyEditProperties(cxGrid1DBBandedTableView1.GetColumnByFieldName('distance').Properties).DisplayFormat := '#,##0';
  AddVisibleColumn('plan_rate', 'Ставка', 100);
  cxGrid1DBBandedTableView1.GetColumnByFieldName('plan_rate').PropertiesClassName := 'TcxCurrencyEditProperties';
  TcxCurrencyEditProperties(cxGrid1DBBandedTableView1.GetColumnByFieldName('plan_rate').Properties).DisplayFormat := '#,##0.00';
  AddVisibleColumn('type_rate_name', 'Тип расчета', 100);
  AddVisibleColumn('brief_name', 'Валюта', 80);
  AddVisibleColumn('ed_izm_name', 'Ед. изм.', 80);
  AddVisibleColumn('date_begin', 'Дата начала', 80);
  AddVisibleColumn('date_end', 'Дата окончания', 80);
  AddVisibleColumn('type_plan_client_name', 'Тип перевозки', 80);


end;

procedure TfmFilter.dxBarButton1Click(Sender: TObject);
begin
  cxGrid1DBBandedTableView1.OptionsSelection.MultiSelect := True;
  cxGrid1DBBandedTableView1.Controller.SelectAllRecords;
  PrintcxGrid(cxGrid1DBBandedTableView1);
  cxGrid1DBBandedTableView1.OptionsSelection.MultiSelect := False;
end;

procedure TfmFilter.dxBarButton2Click(Sender: TObject);
var
 Q: TADOQuery;
begin
  Screen.Cursor := crHourglass;
  try
    Q := TADOQuery.Create(nil);
    Q.Connection := FQuery.Connection;
    Q.SQL.Clear;
    Q.SQL.Add('EXEC [Lis_1C].[dbo].[sp_c1_contract_status_modify] @company_id= '+  QuotedStr(FQuery.FieldByName('company_id').AsString));
    Q.SQL.Add(',@c1_contract_GUID= ' + QuotedStr(FQuery.FieldByName('c1_contract_GUID').AsString));
    Q.SQL.Add(',@contract_status = 2');
    Q.ExecSQL;
  except
  end;
  Screen.Cursor := crDefault;
end;

procedure TfmFilter.dxBarButton6Click(Sender: TObject);
begin
  PrintcxGrid(cxGrid1DBBandedTableView1);
end;

procedure TfmFilter.SetChooseRow4Score(values: Boolean);
begin
  if values then begin
    HideAllColumns;
    AddVisibleColumn('name_service', 'Наименование товара/услуги', 250, True);
    AddVisibleColumn('ed_izm_name', 'Ед.изм.', 60);
    AddVisibleColumn('quantity', 'Кол-во', 100);
    cxGrid1DBBandedTableView1.GetColumnByFieldName('quantity').PropertiesClassName := 'TcxCurrencyEditProperties';
    TcxCurrencyEditProperties(cxGrid1DBBandedTableView1.GetColumnByFieldName('quantity').Properties).DisplayFormat := '#,##0.000';
    AddVisibleColumn('bargain_nds_cod', 'Ставка НДС', 80);
    AddVisibleColumn('cost_with_nds', 'Сумма с НДС', 120, False, True);
    cxGrid1DBBandedTableView1.GetColumnByFieldName('cost_with_nds').PropertiesClassName := 'TcxCurrencyEditProperties';
    TcxCurrencyEditProperties(cxGrid1DBBandedTableView1.GetColumnByFieldName('cost_with_nds').Properties).DisplayFormat := '#,##0.00';

    Caption := 'Выберите строки для формирования Счета-Фактуры';

    cxGrid1DBBandedTableView1.OptionsSelection.MultiSelect := True;
  end;
end;

procedure TfmFilter.SetChooseFactTech(values: Boolean);
begin
  if values then begin
    HideAllColumns;
    AddVisibleColumn('num_vagon', '№ Вагона', 80, True);
    AddVisibleColumn('station_detaching_name', 'Станция отцепки', 100);
    AddVisibleColumn('date_breakage', 'Дата неисправности(ВУ-23)', 150);
    AddVisibleColumn('date_repare_end', 'Дата окончания ремонта (ВУ-36 )', 150);
    AddVisibleColumn('firm_name', 'Владелец', 80);
    AddVisibleColumn('arenda_firm_name', 'Арендатор', 80);
    Caption := 'Техническое состояние';
    cxGrid1DBBandedTableView1.OptionsSelection.MultiSelect := True;
  end;
end;

procedure TfmFilter.SetProvide(values: Boolean);
begin
  if values then begin
    HideAllColumns;
    Caption := 'Перевозки по вагону';
    AddVisibleColumn('bargain_cod', '№ приложения', 80, True);
    AddVisibleColumn('date_period_service_name', 'Период', 100);
    AddVisibleColumn('firm_customer_name', 'Клиент', 150);

    AddVisibleColumn('node_begin_name', 'Ст. отправление', 80);
    AddVisibleColumn('node_end_name', 'Ст. назначение', 80);
    AddVisibleColumn('vagon_sum', 'Сумма', 80, True, True);

    cxGrid1DBBandedTableView1.GetColumnByFieldName('vagon_sum').PropertiesClassName := 'TcxCurrencyEditProperties';
    TcxCurrencyEditProperties(cxGrid1DBBandedTableView1.GetColumnByFieldName('vagon_sum').Properties).DisplayFormat := '#,##0.00';
  end;
end;

procedure TfmFilter.SetRepair(values: Boolean);
begin
  if values then begin
    HideAllColumns;
    Caption := 'Ремонты по вагону';
    AddVisibleColumn('fact_repair_table_id', '№ Записи', 80, True);
    AddVisibleColumn('act_cod', '№ Акта', 80);
    AddVisibleColumn('act_date', 'Дата акта', 80);
    AddVisibleColumn('service_name', 'Услуга', 80);
    AddVisibleColumn('sum_total', 'Сумма', 80, True, True);
    AddVisibleColumn('cost_firm_customer_name_short', 'Затраты', 80);

    cxGrid1DBBandedTableView1.GetColumnByFieldName('sum_total').PropertiesClassName := 'TcxCurrencyEditProperties';
    TcxCurrencyEditProperties(cxGrid1DBBandedTableView1.GetColumnByFieldName('sum_total').Properties).DisplayFormat := '#,##0.00';
  end;
end;

procedure TfmFilter.SetLeasing(values: Boolean);
begin
  if values then begin
    HideAllColumns;
    Caption := 'Лизинг по вагону';
    AddVisibleColumn('contract_id', '№ Записи', 80, True);
    AddVisibleColumn('firm_customer_name', 'Контрагент', 80);
    AddVisibleColumn('vagon_count', 'Кол-во вагонов', 80);
    AddVisibleColumn('pay_sum', 'Сумма платежа', 80);
    AddVisibleColumn('pay_rate', 'Ставка', 80);

    cxGrid1DBBandedTableView1.GetColumnByFieldName('pay_sum').PropertiesClassName := 'TcxCurrencyEditProperties';
    TcxCurrencyEditProperties(cxGrid1DBBandedTableView1.GetColumnByFieldName('pay_sum').Properties).DisplayFormat := '#,##0.00';

    cxGrid1DBBandedTableView1.GetColumnByFieldName('pay_rate').PropertiesClassName := 'TcxCurrencyEditProperties';
    TcxCurrencyEditProperties(cxGrid1DBBandedTableView1.GetColumnByFieldName('pay_rate').Properties).DisplayFormat := '#,##0.00';
  end;
end;

procedure TfmFilter.SetVagonOwner(values: Boolean);
begin
  if values then begin
    HideAllColumns;
    AddVisibleColumn('contract_cod', '№ Договора', 120, True);
    AddVisibleColumn('firm_name', 'Собственник', 280);
    Caption := 'Выбор собственника вагона';
    cxGrid1DBBandedTableView1.OptionsSelection.MultiSelect := False;
  end;
end;

procedure TfmFilter.SetVagonTypePark(values: Boolean);
begin
  if values then begin
    HideAllColumns;
    AddVisibleColumn('inf_obj_id',    'id Тип парка', 100);
    AddVisibleColumn('inf_obj_cod',   'Код тип парка', 100);
    AddVisibleColumn('inf_obj_name',  'Наименование тип парка', 150);

    Caption := 'Выбор типа парка вагона';
    cxGrid1DBBandedTableView1.OptionsSelection.MultiSelect := False;
  end;
end;

procedure TfmFilter.SetFileZFTO(values: Boolean);
begin
  if values then begin
    HideAllColumns;
    AddVisibleColumn('cod', 'Месяц загрузки', 120, True);
    AddVisibleColumn('name', 'Имя файла', 280);
    Caption := 'Выбор файла для удаления';
    cxGrid1DBBandedTableView1.OptionsSelection.MultiSelect := False;
  end;
end;

procedure TfmFilter.SetContractClientFull(values: Boolean);
begin
  if values then begin
    HideAllColumns;
    AddVisibleColumn('contract_cod', '№ Договора', 120, True);
    AddVisibleColumn('firm_customer_name', 'Клиент', 280);
    Caption := 'Выбор клиента';
    cxGrid1DBBandedTableView1.OptionsSelection.MultiSelect := True;
  end;
end;

procedure TfmFilter.SetChooseZFTO4Report(values: Boolean);
begin
  if values then begin
    HideAllColumns;

    AddVisibleColumn('fact_num', '№ с\ф', 120, True);
    AddVisibleColumn('fact_date', 'Дата с\ф', 80);
    AddVisibleColumn('ktgrm_text', 'Наименование платежа', 150);
    AddVisibleColumn('nds_rub', 'НДС, RUB', 100);
    AddVisibleColumn('sum_rub', 'Сумма, RUB', 100);

    cxGrid1DBBandedTableView1.GetColumnByFieldName('nds_rub').PropertiesClassName := 'TcxCurrencyEditProperties';
    TcxCurrencyEditProperties(cxGrid1DBBandedTableView1.GetColumnByFieldName('nds_rub').Properties).DisplayFormat := '#,##0.00';

    cxGrid1DBBandedTableView1.GetColumnByFieldName('sum_rub').PropertiesClassName := 'TcxCurrencyEditProperties';
    TcxCurrencyEditProperties(cxGrid1DBBandedTableView1.GetColumnByFieldName('sum_rub').Properties).DisplayFormat := '#,##0.00';

    Caption := 'Выбор с\ф которые попадут в отчет';
    cxGrid1DBBandedTableView1.OptionsSelection.MultiSelect := True;

    cxGrid1DBBandedTableView1.Controller.SelectAll;
  end;
end;

procedure TfmFilter.SetFindZFTO(values: Boolean);
begin
  if values then begin
    HideAllColumns;

    AddVisibleColumn('fact_num', '№ с\ф', 120, True);
    AddVisibleColumn('fact_date', 'Дата с\ф', 80);
    AddVisibleColumn('ktgrm_text', 'Наименование платежа', 100);
    AddVisibleColumn('st_src_name', 'Ст. отпр.', 80);
    AddVisibleColumn('st_tgt_name', 'Ст. назн.', 80);
    AddVisibleColumn('date_dep', 'Дата отпр.', 80);
    AddVisibleColumn('date_serv', 'Дата приб.', 80);
    AddVisibleColumn('number_doc', '№ накладной', 80);
    AddVisibleColumn('vagon_num', '№ вагона', 80);
    AddVisibleColumn('sum_rub', 'Сумма, RUB', 80);
    AddVisibleColumn('serv_code', 'Код услуги', 80);

    Caption := 'Выбор с\ф';
    cxGrid1DBBandedTableView1.OptionsSelection.MultiSelect := False;
  end;
end;

procedure TfmFilter.SetUsersStack(values: Boolean);
begin
   if values then begin
    HideAllColumns;
    AddVisibleColumn('fio_users', 'Фамилия И.О.', 100);
    AddVisibleColumn('users_name', 'Логин', 100);
    AddVisibleColumn('users_stack_num', 'Stack пользователя.', 50);
    AddVisibleColumn('users_group_name', 'Компания', 150);
    Caption := 'Stack пользователя';
    cxGrid1DBBandedTableView1.OptionsSelection.MultiSelect := False;
   end;
end;

procedure TfmFilter.SetContractRepair(values: Boolean);
begin
   if values then begin
    HideAllColumns;
    AddVisibleColumn('contract_cod', '№ Договора', 80);
    AddVisibleColumn('firm_customer_name_short', 'Подрядчик', 100);
    AddVisibleColumn('score_cod', '№ СФ', 80);
    AddVisibleColumn('score_date', 'Дата СФ', 80);
    Caption := 'Выбор договора';
    cxGrid1DBBandedTableView1.OptionsSelection.MultiSelect := True;
   end;
end;

procedure TfmFilter.SetTripReport(values: Boolean);
begin
  if values then begin
   HideAllColumns;
   AddVisibleColumn('num_document', 'Наименование т/х', 100);
   AddVisibleColumn('date_from_to', 'Дата отпр.', 100);
   AddVisibleColumn('num_document_pref', 'Серия накладной', 100);
   Caption := 'Рейсовый отчет';
   cxGrid1DBBandedTableView1.OptionsSelection.MultiSelect := False;
  end;
end;

procedure TfmFilter.SetRodVagonFromViewVagon(values: Boolean);
begin
  if values then begin
    HideAllColumns;
    AddVisibleColumn('rod_vagon_name', 'Род вагона', 180, True);
    Caption := 'Род вагона из справочника вагонов';
  end;
end;

procedure TfmFilter.SetVagonComment(values: Boolean);
begin
  if values then begin
    HideAllColumns;
    AddVisibleColumn('vagon_comment', 'Комментарий', 250, True);
    AddVisibleColumn('date_begin', 'Начало', 80);
    AddVisibleColumn('date_end', 'Окончание', 80);
    AddVisibleColumn('FIO_users', 'Ответственный', 80);
    AddVisibleColumn('vagon_comment_type_name', 'Тип комментария', 80);

    Caption := 'История комментария';
    cxGrid1DBBandedTableView1.OptionsSelection.MultiSelect := False;
  end;
end;


procedure TfmFilter.SetVagonArendaChoose(values: Boolean);
begin
  if values then begin
    HideAllColumns;
    AddVisibleColumn('num_vagon', '№ Вагона', 80);
    AddVisibleColumn('firm_name', 'Арендатор', 150);
    AddVisibleColumn('contract_cod', '№ договора', 150);
    Caption := 'Выбор вагонов из аренды';
    //cxGrid1DBBandedTableView1.OptionsSelection.MultiSelect := True;
  end;
end;

procedure TfmFilter.SetPortChoose(values: Boolean);
begin
  if values then begin
    HideAllColumns;
    AddVisibleColumn('inf_obj_cod', 'Код', 80);
    AddVisibleColumn('inf_obj_name', 'Порт', 200);
    AddVisibleColumn('inf_obj_name_full', 'Страна', 200);
    Caption := 'Выбор порта';
    //cxGrid1DBBandedTableView1.OptionsSelection.MultiSelect := True;
  end;
end;

procedure TfmFilter.SetShipChoose(values: Boolean);
begin
  if values then begin
    HideAllColumns;
    AddVisibleColumn('inf_obj_cod', 'Код', 80);
    AddVisibleColumn('inf_obj_name', 'Корабль', 200);
    AddVisibleColumn('inf_obj_name_full', 'Флот', 200);
    Caption := 'Выбор корабля';
    //cxGrid1DBBandedTableView1.OptionsSelection.MultiSelect := True;
  end;
end;

procedure TfmFilter.SetFactTrackTripChoose(values: Boolean);
begin
  if values then begin
   HideAllColumns;
   AddVisibleColumn('num_vagon', '№ Вагона', 80);
   AddVisibleColumn('date_otpr', 'Дата начала рейса', 120);
   AddVisibleColumn('date_arrival', 'Дата прибытия', 120);
   AddVisibleColumn('node_begin_name', 'Ст. отправления', 100);
   AddVisibleColumn('node_end_name', 'Ст. назначения', 100);
   AddVisibleColumn('kargoETSNG_name', 'Груз', 120);
   AddVisibleColumn('fact_weight', 'Вес', 50);
   Caption := 'Выбор рейса вагона';
   cxGrid1DBBandedTableView1.OptionsSelection.MultiSelect := False;
  end;
end;

procedure TfmFilter.SetFactTrackTripChoose2(values: Boolean);
begin
  if values then begin
   HideAllColumns;
   AddVisibleColumn('num_vagon', '№ Вагона', 80);
   AddVisibleColumn('date_otpr', 'Дата начала рейса', 120);
   AddVisibleColumn('date_arrival', 'Дата прибытия', 120);
   AddVisibleColumn('node_begin_name', 'Ст. отправления', 100);
   AddVisibleColumn('node_end_name', 'Ст. назначения', 100);
   AddVisibleColumn('kargoETSNG_name', 'Груз', 150);
   AddVisibleColumn('instruction_cod', 'Инструкция', 100);
   AddVisibleColumn('instruction_date', 'Дата инструкции', 100);
   Caption := 'Выбор рейса вагона';
   cxGrid1DBBandedTableView1.OptionsSelection.MultiSelect := True;
  end;
end;

procedure TfmFilter.SetFactTrackTripChoose3(values: Boolean);
begin
  if values then begin
   HideAllColumns;
   AddVisibleColumn('num_vagon', '№ Вагона', 80, True);
   AddVisibleColumn('firm_customer_name', 'Владелец', 120);
   AddVisibleColumn('contract_cod', '№ Договора', 100);
   AddVisibleColumn('date_otpr', 'Дата начала рейса', 120);
   AddVisibleColumn('date_arrival', 'Дата прибытия', 120);
   AddVisibleColumn('node_begin_name', 'Ст. отправления', 100);
   AddVisibleColumn('node_end_name', 'Ст. назначения', 100);
   AddVisibleColumn('kargoETSNG_name', 'Груз', 120);
   AddVisibleColumn('fact_weight', 'Вес', 50);
   Caption := 'Выбор рейса вагона';
   cxGrid1DBBandedTableView1.OptionsSelection.MultiSelect := True;
  end;
end;

procedure TfmFilter.SetFactTechChoose(values: Boolean);
begin
  if values then begin
   HideAllColumns;
   AddVisibleColumn('num_vagon', '№ Вагона', 80);
   AddVisibleColumn('date_breakage', 'Дата неисправности(ВУ-23)', 80);
   AddVisibleColumn('date_repare_end', 'Дата окончания ремонта(ВУ-36)', 80);
   AddVisibleColumn('breakage_name', 'Неисправность', 80);
   AddVisibleColumn('depo_name', 'Депо', 80);
   AddVisibleColumn('type_repair_name', 'Тип ремонтв', 80);
   AddVisibleColumn('station_detaching_name', 'Станция отцепки', 80);

   Caption := 'Выбор справки тех. состояние';
   cxGrid1DBBandedTableView1.OptionsSelection.MultiSelect := False;
  end;
end;

procedure TfmFilter.SetCaption(str_caption: string);
begin
  Label1.Caption := str_caption;
  Panel2.Visible := True;
end;

procedure TfmFilter.SetSubdivision(values: Boolean);
begin
  if values then begin
    HideAllColumns;
    AddVisibleColumn('inf_obj_cod', 'Код подразделения', 100, True);
    AddVisibleColumn('inf_obj_name', 'Подразделение', 230);
    Caption := 'Выбор подразделения';
  end;
end;

procedure TfmFilter.SetTypeBargain(values: Boolean);
begin
  if values then begin
    HideAllColumns;
    AddVisibleColumn('inf_obj_cod', 'Код', 100, True);
    AddVisibleColumn('inf_obj_name', 'Тип сделки', 230);
    Caption := 'Выбор типа сделки';
  end;
end;

procedure TfmFilter.SetDocBlobCopy(values: Boolean);
begin
  if values then begin
    HideAllColumns;
    AddVisibleColumn('doc_describe', 'Примечание', 80);
    AddVisibleColumn('file_name', 'Имя файла', 80);
    AddVisibleColumn('doc_cod', '№ документа', 80);
    AddVisibleColumn('doc_image_date', 'Дата документа', 80);
    AddVisibleColumn('doc_type_describe', 'Тип документа', 80);
    AddVisibleColumn('contract_cod', '№ договора', 80);
    AddVisibleColumn('firm_customer_name', 'Контрагент', 80);
    AddVisibleColumn('firm_self_name', 'Собственная', 80);
    Caption := 'Выбор документов';
    cxGrid1DBBandedTableView1.OptionsSelection.MultiSelect := True;
  end;
end;

procedure TfmFilter.SetDocPretenzia(cxGridDBBandedTableView: TcxGridDBBandedTableView);
var
  column_num: integer;
begin
  HideAllColumns;

  for column_num := 0 to cxGridDBBandedTableView.ColumnCount - 1  do begin
    with  cxGridDBBandedTableView.Columns[column_num] do begin
      if Visible then
        if Position.ColIndex >= 0 then
          AddVisibleColumn(DataBinding.FieldName, Caption, Width);
    end;
  end;

  Caption := 'Выбор связанных документов';
  cxGrid1DBBandedTableView1.OptionsSelection.MultiSelect := True;
end;

procedure TfmFilter.SetUsersTelEMail(values: Boolean);
begin
  if values then begin
    cxGrid1DBBandedTableView1.OptionsView.BandHeaders := False;
    HideAllColumns;
    AddVisibleColumn('users_id', 'Код', 50);
    AddVisibleColumn('FIO_users', 'Фамилия', 150);
    AddVisibleColumn('firm_name', 'Организация', 150);
    AddVisibleColumn('email_full', 'Адрес', 150);

    Caption := 'Выбор пользователя';
    cxGrid1DBBandedTableView1.OptionsSelection.MultiSelect := True;
  end;
end;


procedure TfmFilter.SetEtranZFTO(values: Boolean);
begin
  if values then begin
    cxGrid1DBBandedTableView1.OptionsView.BandHeaders := False;
    HideAllColumns;
    AddVisibleColumn('zfto_score_act_id', '№ записи', 100);
    AddVisibleColumn('number_act',        '№ акта', 150);
    AddVisibleColumn('date_act',          'Дата акта', 150);
    AddVisibleColumn('five_days_zfto',    'Пятидневка', 100);

    Caption := 'Выбор актов';
    cxGrid1DBBandedTableView1.OptionsSelection.MultiSelect := True;
  end;
end;

procedure TfmFilter.SetEtranHistory(values: Boolean);
begin
if values then begin
    cxGrid1DBBandedTableView1.OptionsView.BandHeaders := False;
    HideAllColumns;

    AddVisibleColumn('query_docs_id',     '№ записи', 150);
    AddVisibleColumn('users_group_name',  'Группа', 150);
    AddVisibleColumn('etran_login',       'Пользователь АСУ-АСУ', 150);
    AddVisibleColumn('period_begin',      'Период начало', 150);
    AddVisibleColumn('period_end',        'Период окончание', 150);
    AddVisibleColumn('query_date_load',   'Дата загрузки периода', 150);
    AddVisibleColumn('doc_date_load',     'Дата загрузки документа', 150);

    Caption := 'История загрузки';
    cxGrid1DBBandedTableView1.OptionsSelection.MultiSelect := True;
  end;
end;

procedure TfmFilter.SetComment6(values: Boolean);
begin
if values then begin
    cxGrid1DBBandedTableView1.OptionsView.BandHeaders := False;
    HideAllColumns;

    AddVisibleColumn('comment6_id',       '№ записи', 80);
    AddVisibleColumn('comment6_name',     'Полигон', 160);
    AddVisibleColumn('firm_customer_name','Контрагент', 160);
    AddVisibleColumn('contract_cod',      '№ договора', 100);

    Caption := 'Полигоны';
  end;
end;


procedure TfmFilter.SetViewVagon(values: Boolean);
begin
  if values then begin
    HideAllColumns;
    AddVisibleColumn('num_vagon',     '№ вагона', 80);
    AddVisibleColumn('date_otpr',     'Дата начала рейса', 160);
    AddVisibleColumn('date_close',    'Возможно закрыть от', 160);
    AddVisibleColumn('date_open_new', 'Возможно открыть новый от', 160);

    Caption := 'Невозможно закрыть комментарий. Вагоны находятся в груженом рейсе.';
  end;
end;

procedure TfmFilter.SetFactRateFind(values: Boolean);
begin
  if values then begin
    HideAllColumns;
    cxGrid1DBBandedTableView1.OptionsView.HeaderHeight := 35;
    AddVisibleColumn('set_rate'        , 'Ставка найдена', 80);
    AddVisibleColumn('plan_client_rate_id', '№ записи ставки', 80);
    AddVisibleColumn('firm_name', 'Клиент', 80);
    AddVisibleColumn('set_new_fact'    , 'Факт будет скопирован', 80);
    AddVisibleColumn('bargain_num'     , 'Группа перевозки', 80);
    AddVisibleColumn('date_period'     , 'Перевозочный месяц', 80);
    AddVisibleColumn('num_vagon'       , '№ вагона', 80, True);
    AddVisibleColumn('num_document'    , '№ накладной', 80);
    AddVisibleColumn('date_from_to'    , 'Дата отпр.', 80);
    AddVisibleColumn('date_delivery'   , 'Дата раск.', 80);
    AddVisibleColumn('node_begin_cod'  , 'Ст. отпр.', 80);
    AddVisibleColumn('node_begin_name' , 'Ст. отпр.', 80);
    AddVisibleColumn('node_end_cod'    , 'Ст. назн.', 80);
    AddVisibleColumn('node_end_name'   , 'Ст. назн.', 80);
    AddVisibleColumn('kargoETSNG_cod'  , 'Груз', 80);
    AddVisibleColumn('kargoETSNG_name' , 'Груз', 80);
    AddVisibleColumn('type_park_name'  , 'Тип парка', 80);
    AddVisibleColumn('rod_vagon_name'  , 'Род вагона', 80);
    AddVisibleColumn('next_fact_weight', 'Вес сл. рейса', 80);
    AddVisibleColumn('cnt_vagon'       , 'Кол-во вагонов в группе', 80);
    AddVisibleColumn('distance'        , 'Расстояние', 80);
    AddVisibleColumn('vagon_owner_contract_name', 'Собственник вагона', 80);
    AddVisibleColumn('els_cod'         , 'Код ЕЛС', 80);
    AddVisibleColumn('transport_pay'   , 'Сумма', 80);
    AddVisibleColumn('five_days_zfto_name', 'Пятидневка ЦФТО', 110);
    AddVisibleColumn('budget_name', 'Услуга', 110);
    AddVisibleColumn('kateg_send_name', 'Вид отправки', 110);
    AddVisibleColumn('agent_cnt'       , 'Кол-во подрядчиков', 110);


    Caption := 'Найденные ставки.';
  end;
end;

procedure TfmFilter.SetFactRateCheck(values: Boolean);
begin
  if values then begin
    HideAllColumns;
    AddVisibleColumn('set_rate'        , 'Ставка найдена', 80);
    AddVisibleColumn('str_error'       , 'Ошибка', 200);
    AddVisibleColumn('plan_client_rate_id', '№ записи ставки', 80);
    AddVisibleColumn('num_vagon'       , '№ вагона', 80, True);
    AddVisibleColumn('num_document'    , '№ накладной', 80);
    AddVisibleColumn('date_from_to'    , 'Дата отпр.', 80);
    AddVisibleColumn('date_delivery'   , 'Дата раск.', 80);
    AddVisibleColumn('node_begin_cod'  , 'Ст. отпр.', 80);
    AddVisibleColumn('node_begin_name' , 'Ст. отпр.', 80);
    AddVisibleColumn('node_end_cod'    , 'Ст. назн.', 80);
    AddVisibleColumn('node_end_name'   , 'Ст. назн.', 80);
    AddVisibleColumn('kargoETSNG_cod'  , 'Груз', 80);
    AddVisibleColumn('kargoETSNG_name' , 'Груз', 80);
    AddVisibleColumn('type_park_name'  , 'Тип парка', 80);
    AddVisibleColumn('rod_vagon_name'  , 'Род вагона', 80);
    AddVisibleColumn('next_fact_weight', 'Вес сл. рейса', 80);
    AddVisibleColumn('cnt_vagon'       , 'Кол-во вагонов в группе', 80);
    AddVisibleColumn('vagon_owner_contract_name', 'Собственник вагона', 80);
    AddVisibleColumn('kateg_send_name', 'Вид отправки', 110);
    AddVisibleColumn('agent_cnt'       , 'Кол-во подрядчиков', 110);

    Caption := 'Проверка ставки.';
  end;
end;

procedure TfmFilter.SetETRANSpecMark(values: Boolean);
begin
  if values then begin
    cxGrid1DBBandedTableView1.OptionsView.BandHeaders := False;
    HideAllColumns;
    AddVisibleColumn('inf_obj_id',   '№ записи Спец. отметки', 100);
    AddVisibleColumn('etran_nsi_id', 'Код Спец. отметки', 100);
    AddVisibleColumn('inf_obj_name', 'Спец. отметка', 250);

    Caption := 'Выбор Спец. отмеки ЭТРАН';
    cxGrid1DBBandedTableView1.OptionsSelection.MultiSelect := True;
    TcxGridDBTableSummaryItem(cxGrid1DBBandedTableView1.DataController.Summary.FooterSummaryItems[0]).Column := cxGrid1DBBandedTableView1.Columns[3];
  end;
end;


procedure TfmFilter.SetContractAndNode(values: Boolean);
begin
  if values then begin
    HideAllColumns;
    AddVisibleColumn('contact_id'        , '№ Записи договора', 80);
    AddVisibleColumn('firm_customer_name'       , 'Клиент', 200);
    AddVisibleColumn('contract_cod', '№ Договора', 80);
    AddVisibleColumn('node_begin_name'       , 'Ст. погрузки', 80, True);
    Caption := 'Выберите клиента и ст. погрузки.';
  end;
end;

procedure TfmFilter.SetUsersCheckDocs(values: Boolean);
begin
  if values then begin
    cxGrid1DBBandedTableView1.OptionsView.BandHeaders := False;
    HideAllColumns;
    AddVisibleColumn('personID' , '№ записи пользователя', 100, true);
    AddVisibleColumn('fio_users', 'ФИО Пользователь', 100);
    AddVisibleColumn('firm_name', 'Организация', 100);
    AddVisibleColumn('email'    , 'Эл. почта', 100);
    AddVisibleColumn('date_end' , 'Уволен', 100);

    Caption := 'Пользователи рассылки';
    cxGrid1DBBandedTableView1.OptionsSelection.MultiSelect := True;
  end;
end;

procedure TfmFilter.SetUsersSettingChoose(values: Boolean);
begin
  if values then begin
    cxGrid1DBBandedTableView1.OptionsView.BandHeaders := False;
    HideAllColumns;
    AddVisibleColumn('users_setting_id', '№ записи', 30);
    AddVisibleColumn('FIO_users',        'ФИО', 150);
    AddVisibleColumn('setting_name',     'Наименование', 150);
    AddVisibleColumn('component_name',   'Компонент', 150);
    Caption := 'Выбор настроек пользователя';
    cxGrid1DBBandedTableView1.OptionsSelection.MultiSelect := True;
  end;
end;

procedure TfmFilter.SetKargoETSNG(values: Boolean);
begin
  if values then begin
    cxGrid1DBBandedTableView1.OptionsView.BandHeaders := False;
    HideAllColumns;
    AddVisibleColumn('inf_obj_id',   '№ записи', 80, true);
    AddVisibleColumn('inf_obj_name', 'Груз', 250);
    AddVisibleColumn('inf_obj_cod',  'Код груза', 150);
    AddVisibleColumn('mvrn',         'Статическая нагрузка', 80);

    Caption := 'Выбор Услуги';
    cxGrid1DBBandedTableView1.OptionsSelection.MultiSelect := False;
  end;
end;

procedure TfmFilter.SetServiceChoose(values: Boolean);
begin
  if values then begin
    cxGrid1DBBandedTableView1.OptionsView.BandHeaders := False;
    HideAllColumns;
    AddVisibleColumn('budget_id',           '№ записи услуги', 80, true);
    AddVisibleColumn('budget_parent_name',  'Бюджет', 150);
    AddVisibleColumn('budget_name',         'Услуга', 250);

    Caption := 'Выбор Услуги';
    cxGrid1DBBandedTableView1.OptionsSelection.MultiSelect := False;
  end;
end;

procedure TfmFilter.SetShapingRateChoose(values: Boolean);
begin
  if values then begin
    HideAllColumns;
    AddVisibleColumn('shaping_rate_id',   '№ записи услуги', 60);
    AddVisibleColumn('contract_agent_id', '№ записи договора', 60, True);
    AddVisibleColumn('contract_agent_cod','№ Договора', 120, True);
    AddVisibleColumn('firm_agent_name',   'Контрагент', 150);
    AddVisibleColumn('budget_name',       'Наиенование услуги', 200);
    Caption := 'Выбор списка Услуг для Акта';
    cxGrid1DBBandedTableView1.OptionsSelection.MultiSelect := True;
  end;
end;


end.
