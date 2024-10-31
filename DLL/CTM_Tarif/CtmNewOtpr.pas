unit CtmNewOtpr;

interface

uses
  RailTariff_TLB, Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters,
  cxContainer, cxEdit, cxTextEdit, cxMaskEdit, cxDropDownEdit, cxLookupEdit,
  cxDBLookupEdit, cxDBLookupComboBox, cxLabel, cxCheckBox, ExtCtrls, StdCtrls,
  Buttons, ComCtrls, dxtree, dxdbtree, cxPropertiesStore, DB, DBClient, Default,
  cxCustomData, cxStyles, cxTL, cxTLdxBarBuiltInMenu, cxInplaceContainer,
  cxTLData, cxDBTL, ADODB, CtmRaznoe, dxSkinsCore, dxSkinBlack, dxSkinBlue,
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
  dxSkinXmas2008Blue, cxClasses, dxSkinTheBezier, cxDataControllerConditionalFormattingRulesManagerDialog;

type
  TfmCtmNewOtpr = class(TForm)
    Client_ExRtType: TClientDataSet;
    Client_ExRtTypeCaption: TStringField;
    Client_ExRtTypeid: TIntegerField;
    cxPropertiesStore1: TcxPropertiesStore;
    Panel1: TPanel;
    cxCheckBox1: TcxCheckBox;
    Panel2: TPanel;
    cxLabel1: TcxLabel;
    cxLookupComboBox1: TcxLookupComboBox;
    Query_Otpr: TADOQuery;
    DS_Otpr: TDataSource;
    cxDBTreeList1: TcxDBTreeList;
    cxDBTreeList1OTPRN: TcxDBTreeListColumn;
    cxDBTreeList1SendN: TcxDBTreeListColumn;
    cxDBTreeList1OTPRID: TcxDBTreeListColumn;
    cxDBTreeList1SendID: TcxDBTreeListColumn;
    DS_ExRtType: TDataSource;
    cxPropertiesStore2: TcxPropertiesStore;
    Panel18: TPanel;
    BitBtn_Ok: TBitBtn;
    BitBtn_Cancel: TBitBtn;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure cxDBTreeList1CustomDrawDataCell(Sender: TcxCustomTreeList;
      ACanvas: TcxCanvas; AViewInfo: TcxTreeListEditCellViewInfo;
      var ADone: Boolean);
    procedure BitBtn_OkClick(Sender: TObject);
  private
    Fusr_pwd        : PUser_pwd;
    Fdate_from_to   : TDateTime;
    Fnode_begin_cod : string;
    Fnode_end_cod   : string;
    FRTXDocument    : RailTariff_TLB.IDocument;

    FOtprName      : string;
    FOtprId        : integer;
    FSendId        : integer;
    FSendName      : string;
    DGroupSend     : boolean;
    FExitRouteId   : integer;
    FExitRouteName : string;
    procedure SetOtprId(otpr_id: integer);
    procedure SetSendId(send_id: integer);
    procedure SetGroupSend(set_group_send: boolean);
    procedure SetExitRouteId(exit_route_id: integer);
  public
    constructor Create(AOwner: TApplication; usr_pwd: PUser_pwd; date_from_to: TDateTime); reintroduce;
    procedure CalcExRtType();
  published
    property _SetNodeBeginCod : string write Fnode_begin_cod;
    property _SetNodeEndCod   : string write Fnode_end_cod;
    property _SetRTXDocument  : RailTariff_TLB.IDocument write FRTXDocument;

    property _SetOtprId : integer write SetOtprId;
    property _SetSendId : integer write SetSendId;
    property _SetExitRouteId : integer write SetExitRouteId;
    property _SetGroupSend   : boolean write SetGroupSend;

    property  _GetOtprName      : string  read FOtprName;
    property  _GetOtprId        : integer read FOtprId;
    property  _GetSendId        : integer read FSendId;
    property  _GetSendName      : string  read FSendName;
    property  _GetGroupSend     : boolean read DGroupSend;
    property  _GetExitRouteId   : integer read FExitRouteId;
    property  _GetExitRouteName : string  read FExitRouteName;
  end;

var
  fmCtmNewOtpr: TfmCtmNewOtpr;

implementation

uses CtmNewMain;

{$R *.dfm}

constructor TfmCtmNewOtpr.Create(AOwner: TApplication; usr_pwd: PUser_pwd; date_from_to: TDateTime);
begin
  Screen.Cursor := crHourglass;
  inherited Create(AOwner);
  Fusr_pwd := usr_pwd;
  Fdate_from_to := date_from_to;

  Screen.Cursor := crDefault;
  Query_Otpr.Connection := nil;
  Query_Otpr.ConnectionString := 'Persist Security Info=True;Provider=SQLOLEDB.1;User ID='+Fusr_pwd^.user_name+';Password='+Fusr_pwd^.user_pass+';Initial Catalog='+Fusr_pwd^.catalog+';Data Source='+Fusr_pwd^.server+';';
  Query_Otpr.Parameters.ParamByName('date_from_to1').Value := date_from_to;
  Query_Otpr.Parameters.ParamByName('date_from_to2').Value := date_from_to;
  Query_Otpr.Open;

  cxDBTreeList1.Items[0].Expand(True);
  cxDBTreeList1.Items[0].getFirstChild.Focused  := True;
  cxDBTreeList1.Items[0].getFirstChild.Selected := True;

  Client_ExRtType.CreateDataSet;
  Client_ExRtType.LogChanges := False;

  FOtprName      := '';
  FOtprId        := -9;
  FSendId        := -9;
  FSendName      := '';
  DGroupSend     := False;
  FExitRouteId   := -9;
  FExitRouteName := '';

  Screen.Cursor := crDefault;
end;


procedure TfmCtmNewOtpr.SetOtprId(otpr_id: integer);
var node : TcxTreeListNode;
begin
  FOtprId := otpr_id;
  if (FOtprId <> -9) and (FSendId <> -9) then begin
    cxDBTreeList1.FullCollapse;
    node := cxDBTreeList1.FindNodeByText(IntToStr(FOtprId), cxDBTreeList1OTPRID);
    node.Focused  := True;
    node.Selected := True;
    node.Expand(True);
    node := cxDBTreeList1.FindNodeByText(IntToStr(FSendId), cxDBTreeList1SendID);
    node.Focused  := True;
    node.Selected := True;
    node.Expand(True);
  end;
end;

procedure TfmCtmNewOtpr.SetSendId(send_id: integer);
var node : TcxTreeListNode;
begin
  FSendId := send_id;
  if (FOtprId <> -9) and (FSendId <> -9) then begin
    cxDBTreeList1.FullCollapse;
    node := cxDBTreeList1.FindNodeByText(IntToStr(FOtprId), cxDBTreeList1OTPRID);
    node.Focused  := True;
    node.Selected := True;
    node.Expand(True);
    node := cxDBTreeList1.FindNodeByText(IntToStr(FSendId), cxDBTreeList1SendID);
    node.Focused  := True;
    node.Selected := True;
    node.Expand(True);
  end;
end;

procedure TfmCtmNewOtpr.SetGroupSend(set_group_send: boolean);
begin
  cxCheckBox1.Checked := set_group_send;
end;

procedure TfmCtmNewOtpr.SetExitRouteId(exit_route_id: integer);
begin
  cxLookupComboBox1.EditValue := exit_route_id;
end;

procedure TfmCtmNewOtpr.BitBtn_OkClick(Sender: TObject);
begin
  if cxDBTreeList1.FocusedNode.Values[3] = null then begin
    ModalResult := mrNone;
    exit;
  end;

  ModalResult    := mrOk;

  FOtprName      := cxDBTreeList1.FocusedNode.Values[0];
  FOtprId        := cxDBTreeList1.FocusedNode.Values[2];
  FSendId        := cxDBTreeList1.FocusedNode.Values[3];
  FSendName      := cxDBTreeList1.FocusedNode.Values[1];
  DGroupSend     := cxCheckBox1.Checked;
  FExitRouteId   := cxLookupComboBox1.EditValue;
  FExitRouteName := cxLookupComboBox1.EditText;
end;

procedure TfmCtmNewOtpr.CalcExRtType();
begin
  GetTypeTransportationNew(FRTXDocument, Client_ExRtType, Fnode_begin_cod, Fnode_end_cod, Fdate_from_to);
end;

procedure TfmCtmNewOtpr.cxDBTreeList1CustomDrawDataCell(Sender: TcxCustomTreeList; ACanvas: TcxCanvas;
  AViewInfo: TcxTreeListEditCellViewInfo; var ADone: Boolean);
var
  VisibleRect : TRect;
  RectCaption : TRect;
  i : integer;
begin
  if AViewInfo.Column.Name = 'cxDBTreeList1SendN' then
    if AViewInfo.Node.Values[cxDBTreeList1SendN.ItemIndex] <> null then begin
      VisibleRect := AViewInfo.VisibleRect;
      RectCaption := VisibleRect;
      RectCaption.Left := RectCaption.Left + 2;
      RectCaption.Top  := RectCaption.Top  + 2;

      if AViewInfo.Node.Selected then begin
        ACanvas.FillRect(VisibleRect, clActiveCaption);
        ACanvas.Font.Color := clWhite;
      end else begin
        ACanvas.FillRect(VisibleRect, clWhite);
        ACanvas.Font.Color := clBlack;
      end;

      if AViewInfo.Node.Level = 0 then begin
        ACanvas.Font.Style := [fsBold];
      end;

      ACanvas.DrawTexT(AViewInfo.Node.Texts[cxDBTreeList1SendN.ItemIndex], RectCaption, 0);

      ADone := True;
    end;

end;

procedure TfmCtmNewOtpr.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action := caFree;
end;

end.
