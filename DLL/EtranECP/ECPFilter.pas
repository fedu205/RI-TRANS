unit ECPFilter;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters,
  cxStyles, cxCustomData, cxFilter, cxData, cxDataStorage, cxEdit, DB, cxDBData,
  ADODB, StdCtrls, Buttons, ExtCtrls, dxBar, cxPropertiesStore, ImgList,
  cxGridLevel, cxGridBandedTableView, cxGridDBBandedTableView,
  cxGridCustomTableView, cxGridTableView, cxGridDBTableView, cxClasses,
  cxGridCustomView, cxGrid, Raznoe, cxNavigator, System.ImageList, dxSkinsCore,
  dxSkinBlack, dxSkinBlue, dxSkinBlueprint, dxSkinCaramel, dxSkinCoffee,
  dxSkinDarkRoom, dxSkinDarkSide, dxSkinDevExpressDarkStyle,
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
  dxSkinXmas2008Blue, dxSkinscxPCPainter, dxSkinsdxBarPainter,
  cxDataControllerConditionalFormattingRulesManagerDialog, cxImageList;

type

  TFieldType = (ftNone, ftId, ftCod, ftName);

  TfmECPFilter = class(TForm)
    cxImageList_16: TcxImageList;
    cxPropertiesStore1: TcxPropertiesStore;
    dxBarManager1: TdxBarManager;
    dxBarButton6: TdxBarButton;
    dxBarButton1: TdxBarButton;
    dxBarButton2: TdxBarButton;
    dxBarPopupMenu1: TdxBarPopupMenu;
    Panel1: TPanel;
    BitBtn2: TBitBtn;
    BitBtn1: TBitBtn;
    Panel2: TPanel;
    Label1: TLabel;
    FQuery: TADOQuery;
    DS_Filter: TDataSource;
    cxGrid1Level1: TcxGridLevel;
    cxGrid1: TcxGrid;
    cxGrid1DBBandedTableView1: TcxGridDBBandedTableView;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure BitBtn2Click(Sender: TObject);
    procedure cxGrid1DBBandedTableView1DblClick(Sender: TObject);
    procedure cxGrid1DBBandedTableView1KeyPress(Sender: TObject; var Key: Char);
  private
    Ffield_id   : string;
    Ffield_cod  : string;
    Ffield_name : string;

    Fid   : integer;
    Fcod  : string;
    Fname : string;

    procedure AddVisibleColumn(field_name: string; field_caption: string; field_width: integer; field_type: TFieldType);

    procedure SetInvType(value: boolean);
    procedure SetInvSendType(value: boolean);
    procedure SetInvBlankTypeID(value: boolean);
    procedure SetFilter(value: string);
    procedure SetFilterCod(value: string);
    procedure SetFilterClaim(value: boolean);
    procedure SetRodVagon(value: boolean);
    procedure SetClsTranspClause(value: boolean);
    procedure SetSpcTranspClause(value: boolean);
    procedure SetFirm(value: boolean);
    procedure SetDanger(value: boolean);
  public
    constructor Create(AOwner: TApplication; Q: TCustomADODataSet); reintroduce;
  published
    property _GetId   : integer read Fid;
    property _GetCod  : string read Fcod;
    property _GetName : string read Fname;

    property _SetFilter : string write SetFilter;
    property _SetFilterCod : string write SetFilterCod;

    property _SetInvType : boolean write SetInvType;
    property _SetInvSendType : boolean write SetInvSendType;
    property _SetInvBlankTypeID : boolean write SetInvBlankTypeID;
    property _SetFilterClaim  : boolean write SetFilterClaim;
    property _SetRodVagon : boolean write SetRodVagon;
    property _SetClsTranspClause : boolean write SetClsTranspClause;
    property _SetSpcTranspClause : boolean write SetSpcTranspClause;
    property _SetFirm : boolean write SetFirm;
    property _SetDanger : boolean write SetDanger;
  end;

var
  fmECPFilter: TfmECPFilter;

implementation

{$R *.dfm}

constructor TfmECPFilter.Create(AOwner: TApplication; Q: TCustomADODataSet);
begin
  Screen.Cursor := crHourglass;
  inherited Create(AOwner);

  FQuery.Clone(Q);
  FQuery.Filter := Q.Filter;

  Ffield_id  := '';
  Ffield_cod := '';
  Ffield_name:= '';

  Fid := -9;
  Fcod := '';
  Fname := '';

  Screen.Cursor := crDefault;
end;

procedure TfmECPFilter.cxGrid1DBBandedTableView1DblClick(Sender: TObject);
begin
  BitBtn2Click(nil);
  ModalResult := mrOk;
end;

procedure TfmECPFilter.cxGrid1DBBandedTableView1KeyPress(Sender: TObject; var Key: Char);
begin
  FilterColumnGridOnKeyPress(cxGrid1DBBandedTableView1, Key);
end;

procedure TfmECPFilter.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action := caFree;
end;

procedure TfmECPFilter.AddVisibleColumn(field_name: string; field_caption: string; field_width: integer; field_type: TFieldType);
var cxGridDBColumn : TcxGridDBBandedColumn;
begin
  cxGridDBColumn := cxGrid1DBBandedTableView1.CreateColumn;

  cxGridDBColumn.DataBinding.FieldName := field_name;
  cxGridDBColumn.Caption               := field_caption;
  cxGridDBColumn.Width                 := field_width;
  cxGridDBColumn.Visible               := True;
  case field_type of
    ftId  : Ffield_id  := field_name;
    ftCod : Ffield_cod := field_name;
    ftName: Ffield_name:= field_name;
  end;
end;

procedure TfmECPFilter.SetInvType(value: boolean);
begin
  if value then begin
    Caption := '��� ���������';

    AddVisibleColumn('etran_nsi_id', '� ������', 80, ftId);
    AddVisibleColumn('inf_obj_name', '��������', 160, ftName);
  end;
end;

procedure TfmECPFilter.SetInvSendType(value: boolean);
begin
  if value then begin
    Caption := '��� ��������';

    AddVisibleColumn('etran_nsi_id', '� ������', 80, ftId);
    AddVisibleColumn('inf_obj_name', '��������', 160, ftName);
  end;
end;

procedure TfmECPFilter.SetInvBlankTypeID(value: boolean);
begin
  if value then begin
    Caption := '��� ������';

    AddVisibleColumn('etran_nsi_id', '� ������', 80, ftId);
    AddVisibleColumn('inf_obj_name', '��������', 160, ftName);
    AddVisibleColumn('inf_obj_cod' , '���', 160, ftCod);
  end;
end;





procedure TfmECPFilter.SetFilterClaim(value: boolean);
begin
  if value then begin
    Caption := '������';

    AddVisibleColumn('claimID', '� ������', 80, ftId);
    AddVisibleColumn('claimNumber', '�����', 120, ftName);
    AddVisibleColumn('otprNom' , '����� ��������', 80, ftCod);

    AddVisibleColumn('claimState' , '���������', 100, ftNone);
    AddVisibleColumn('claimRegDate' , '����', 100, ftNone);
    AddVisibleColumn('clmSenderName' , '����������������', 200, ftNone);
    AddVisibleColumn('otprRecipName' , '���������������', 200, ftNone);
    AddVisibleColumn('otprCarOwnerName' , '�������� �������', 200, ftNone);
    AddVisibleColumn('clmFromStationName' , '��. ����.', 160, ftNone);
    AddVisibleColumn('otprToStationName' , '��. ����.', 160, ftNone);
  end;
end;

procedure TfmECPFilter.SetFilter(value: string);
begin
  Caption := value;
  AddVisibleColumn('etran_nsi_id', '� ������', 80, ftId);
  AddVisibleColumn('inf_obj_name', '��������', 160, ftName);
end;

procedure TfmECPFilter.SetRodVagon(value: boolean);
begin
  if value then begin
    Caption := '����������� ��� �������';

    AddVisibleColumn('etran_nsi_id', '� ������', 70, ftId);
    AddVisibleColumn('inf_obj_cod', '���', 70, ftCod);
    AddVisibleColumn('inf_obj_name', '��������', 70, ftName);
    AddVisibleColumn('inf_obj_name_full', '��������', 160, ftNone);
  end;
end;

procedure TfmECPFilter.SetFirm(value: boolean);
begin
  if value then begin
    Caption := '����������';
    AddVisibleColumn('firm_id', '� ������', 50, ftId);
    AddVisibleColumn('firm_name' , '������������', 100, ftCod);
    AddVisibleColumn('inn', '���', 60, ftName);
    AddVisibleColumn('kpp', '���', 60, ftNone);
    AddVisibleColumn('cod_okpo', '����', 60, ftNone);
    AddVisibleColumn('rzd_gropl_cod', '��� ���������� (����)', 100, ftNone);
    AddVisibleColumn('rzd_payer_cod', '��� ����������� (���)', 100, ftNone);
  end;
end;

procedure TfmECPFilter.SetClsTranspClause(value: boolean);
begin
  if value then begin
    Caption := '������� �� ����';

    AddVisibleColumn('etran_nsi_id', '� ������', 70, ftId);
    AddVisibleColumn('inf_obj_cod', '���', 70, ftCod);
    AddVisibleColumn('inf_obj_name', '�������', 70, ftName);
    AddVisibleColumn('nm', '���', 160, ftNone);
  end;
end;

procedure TfmECPFilter.SetDanger(value: boolean);
begin
if value then begin
    Caption := '������� �����';

    AddVisibleColumn('etran_nsi_id', '� ������', 70, ftId);
    AddVisibleColumn('inf_obj_cod',  '���', 70, ftCod);
    AddVisibleColumn('inf_obj_name', '����', 70, ftName);
    AddVisibleColumn('danger_code', '��� ���������', 160, ftNone);
  end;
end;

procedure TfmECPFilter.SetSpcTranspClause(value: boolean);
begin
  if value then begin
    Caption := '�������� ������� � �������� ������� �� �����';

    AddVisibleColumn('etran_nsi_id', '� ������', 70, ftId);
    AddVisibleColumn('inf_obj_cod', '���', 70, ftCod);
    AddVisibleColumn('inf_obj_name', '�������', 70, ftName);
    AddVisibleColumn('nm', '���', 160, ftNone);
  end;
end;

procedure TfmECPFilter.SetFilterCod(value: string);
begin
  Caption := value;
  AddVisibleColumn('etran_nsi_id', '� ������', 80, ftId);
  AddVisibleColumn('inf_obj_name', '��������', 160, ftName);
  AddVisibleColumn('inf_obj_cod' , '���', 160, ftCod);
end;




procedure TfmECPFilter.BitBtn2Click(Sender: TObject);
begin
  if Ffield_id <> '' then begin
    if not cxGrid1DBBandedTableView1.GetColumnByFieldName(Ffield_id).DataBinding.Field.IsNull then
      Fid := cxGrid1DBBandedTableView1.GetColumnByFieldName(Ffield_id).DataBinding.Field.Value
  end;

  if Ffield_cod <> '' then begin
    if not cxGrid1DBBandedTableView1.GetColumnByFieldName(Ffield_cod).DataBinding.Field.IsNull then
      Fcod := cxGrid1DBBandedTableView1.GetColumnByFieldName(Ffield_cod).DataBinding.Field.Value
  end;

  if Ffield_name <> '' then begin
    if not cxGrid1DBBandedTableView1.GetColumnByFieldName(Ffield_name).DataBinding.Field.IsNull then
      Fname := cxGrid1DBBandedTableView1.GetColumnByFieldName(Ffield_name).DataBinding.Field.Value
  end;
end;




end.
