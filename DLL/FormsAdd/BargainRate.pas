unit BargainRate;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters,
  cxContainer, cxEdit, StdCtrls, Buttons, cxTextEdit, cxMaskEdit,
  cxDropDownEdit, cxLookupEdit, cxDBLookupEdit, cxDBLookupComboBox, ExtCtrls,
  DB, ADODB, cxCurrencyEdit, cxCheckBox, cxPC, cxMemo, DBClient, Default,
  dxSkinsCore, dxSkinsDefaultPainters, dxSkinscxPCPainter, dxBarBuiltInMenu,
  Menus, cxButtons, ImgList, ShellAPI, Raznoe, dxSkinBlack, dxSkinBlue,
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
  dxSkinTheAsphaltWorld, dxSkinValentine, dxSkinVisualStudio2013Blue,
  dxSkinVisualStudio2013Dark, dxSkinVisualStudio2013Light, dxSkinVS2010,
  dxSkinWhiteprint, dxSkinXmas2008Blue, System.ImageList, cxImageList, dxSkinTheBezier, dxSkinBasic, dxSkinOffice2019Black, dxSkinOffice2019Colorful, dxSkinOffice2019DarkGray,
  dxSkinOffice2019White, dxSkinWXI;

type
  TfmBargainRate = class(TForm)
    Panel9: TPanel;
    Panel4: TPanel;
    BitBtn2: TBitBtn;
    BitBtn1: TBitBtn;
    Query_TypeTools: TADOQuery;
    DS_TypeTools: TDataSource;
    Query_AttrSelf: TADOQuery;
    DS_AttrSelf: TDataSource;
    Panel1: TPanel;
    cxCurrencyEdit1: TcxCurrencyEdit;
    cxCurrencyEdit2: TcxCurrencyEdit;
    Label1: TLabel;
    Label3: TLabel;
    cxCheckBox1: TcxCheckBox;
    Panel2: TPanel;
    Label16: TLabel;
    Label2: TLabel;
    cxLookupComboBox7: TcxLookupComboBox;
    cxLookupComboBox10: TcxLookupComboBox;
    Panel3: TPanel;
    Label13: TLabel;
    cxComboBox4: TcxComboBox;
    cxCheckBox2: TcxCheckBox;
    cxCheckBox3: TcxCheckBox;
    cxCheckBox4: TcxCheckBox;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    cxPageControl1: TcxPageControl;
    cxTabSheet1: TcxTabSheet;
    cxTabSheet2: TcxTabSheet;
    Panel5: TPanel;
    cxLookupComboBox1: TcxLookupComboBox;
    Label7: TLabel;
    Label8: TLabel;
    cxCurrencyEdit3: TcxCurrencyEdit;
    cxLookupComboBox2: TcxLookupComboBox;
    Label9: TLabel;
    cxLookupComboBox3: TcxLookupComboBox;
    Label10: TLabel;
    cxLookupComboBox4: TcxLookupComboBox;
    Label11: TLabel;
    cxLookupComboBox5: TcxLookupComboBox;
    Label12: TLabel;
    Label14: TLabel;
    cxLookupComboBox6: TcxLookupComboBox;
    cxLookupComboBox8: TcxLookupComboBox;
    Label15: TLabel;
    cxMemo1: TcxMemo;
    Query_AddVid: TADOQuery;
    DS_AddVid: TDataSource;
    Query_Currency: TADOQuery;
    DS_Currency: TDataSource;
    DS_AddType: TDataSource;
    Query_AddType: TADOQuery;
    Query_NDS: TADOQuery;
    DS_NDS: TDataSource;
    Query_AddService: TADOQuery;
    DS_AddService: TDataSource;
    cxButton1: TcxButton;
    cxImageList1: TcxImageList;
    procedure BitBtn1Click(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure cxCheckBox1PropertiesEditValueChanged(Sender: TObject);
    procedure cxButton1Click(Sender: TObject);
  private
    Ftype_kontener      : integer;
    Ftype_kontener_name : string;
    Fattr_self          : integer;
    Fattr_self_name     : string;
    Fweight             : Double;
    Frate               : Currency;
    Fset_one            : Boolean;
    Fparam_id           : integer;
    Fset_nds            : Boolean;
    Fset_dist_fact      : Boolean;
    Fset_dist_prev      : Boolean;

    FClientDS_Add       : TClientDataSet;
    Fadd_id             : integer;
    Frate_id            : integer;
    Fdoc_cod            : integer;

    Fusr_pwd : PUser_pwd;
    Fconnect : TADOConnection;

    procedure SetTypeKontener(type_kontener: integer);
    procedure SetAttrSelf(attr_self: integer);
    procedure SetWeight(weight: Double);
    procedure SetRate(rate: Currency);
    procedure SetOneWeight(set_one: boolean);
    procedure SetSelectRate(set_rate: boolean);
    procedure SetSelectLink(set_link: boolean);
    procedure SetSelectParam(set_param: boolean);
    procedure SetReadOnly(set_read_only: boolean);
    procedure SetParamList(str_list: TStringList);
    procedure SetAllRate(set_all_rate: boolean);
    procedure SetSelectAttrSelf(set_select_attr_self: boolean);

    procedure SetAddCollection(add_id: integer);

  public
    constructor Create(AOwner: TApplication; connect: TADOConnection; usr_pwd: PUser_pwd); reintroduce;
  published
    property _GetTypeKontener     : integer read Ftype_kontener;
    property _GetAttrSelf         : integer read Fattr_self;
    property _GetTypeKontenerName : string  read Ftype_kontener_name;
    property _GetAttrSelfName     : string  read Fattr_self_name;
    property _GetWeight           : Double   read Fweight;
    property _GetRate             : Currency read Frate;
    property _GetOneWeight        : Boolean  read Fset_one;
    property _GetParamId          : integer  read Fparam_id;
    property _GetNDS              : Boolean  read Fset_nds;
    property _GetDistFact         : Boolean  read Fset_dist_fact;
    property _GetDistPrev         : Boolean  read Fset_dist_prev;

    property _SetAllRate          : boolean write SetAllRate;
    property _SetParamList        : TStringList write SetParamList;
    property _SetTypeKontener     : integer  write SetTypeKontener;
    property _SetAttrSelf         : integer  write SetAttrSelf;
    property _SetWeight           : Double   write SetWeight;
    property _SetRate             : Currency write SetRate;
    property _SetOneWeight        : Boolean  write SetOneWeight;
    property _SetSelectRate       : Boolean  write SetSelectRate;
    property _SetSelectLink       : Boolean  write SetSelectLink;
    property _SetSelectParam      : Boolean  write SetSelectParam;
    property _SetReadOnly         : Boolean  write SetReadOnly;
    property _SetSelectAttrSelf   : Boolean  write SetSelectAttrSelf;

    property _SetAddCollection    : integer        write SetAddCollection;
    property _SetAddClientDS      : TClientDataSet write FClientDS_Add;
    property _SetRateId           : integer        write Frate_id;
    property _SetDocCod           : integer         write Fdoc_cod;
  end;

var
  fmBargainRate: TfmBargainRate;

function CreateWndBargainRate(AppHand: THandle; connect: TADOConnection; bargain_id: integer; usr_pwd: PUser_pwd; set_rate: boolean; set_param: boolean): variant; export;

implementation

{$R *.dfm}

function CreateWndBargainRate(AppHand: THandle; connect: TADOConnection; bargain_id: integer; usr_pwd: PUser_pwd; set_rate: boolean; set_param: boolean): variant; export;
var Q : TADOQuery;
begin
  Application.Handle := AppHand;
  try
    fmBargainRate := TfmBargainRate.Create(Application, connect, usr_pwd);
    fmBargainRate._SetSelectRate  := set_rate;
    fmBargainRate._SetSelectParam := set_param;

    if bargain_id <> -9 then begin
      Q := TADOQuery.Create(nil);
      Q.Connection := connect;
      Q.SQL.Add('SELECT TOP 1 type_kontener FROM view_shaping_rate WHERE bargain_id = ' + IntToStr(bargain_id) + ' ORDER BY CASE WHEN contract_set = 1 THEN 0 ELSE 1 END, shaping_rate_id');
      Q.Open;
      if Q.RecordCount > 0 then begin
        fmBargainRate._SetTypeKontener := Q.FieldByName('type_kontener').AsInteger;
      end;
      Q.Free;
    end;

    if fmBargainRate.ShowModal = mrOk then result := VarArrayOf([fmBargainRate._GetTypeKontener, fmBargainRate._GetAttrSelf])
    else result := VarArrayOf([-9, -9]);
  finally
    fmBargainRate.Free;
  end;
end;

constructor TfmBargainRate.Create(AOwner: TApplication; connect: TADOConnection; usr_pwd: PUser_pwd);
begin
  Screen.Cursor := crHourglass;
  inherited Create(AOwner);

  Fconnect := connect;
  Fusr_pwd := usr_pwd;

  Query_TypeTools.Connection := Fconnect;
  Query_AttrSelf.Connection := Fconnect;
  Query_AddVid.Connection := Fconnect;
  Query_Currency.Connection := Fconnect;
  Query_AddType.Connection := Fconnect;
  Query_NDS.Connection := Fconnect;
  Query_AddService.Connection := Fconnect;


  Fadd_id             := -9;
  FClientDS_Add       := nil;
  Ftype_kontener      := -9;
  Ftype_kontener_name := '';
  Fattr_self          := -9;
  Fattr_self_name     := '';
  Fset_one            := True;
  Fweight             := 0;
  Frate               := 0;
  Fparam_id           := -9;
  Fset_nds            := False;
  Fset_dist_fact      := False;
  Fset_dist_prev      := False;
  Frate_id            := -9;
  Fdoc_cod            := 0;

  Query_TypeTools.Open;
  cxLookupComboBox7.EditValue := Query_TypeTools.FieldByName('inf_obj_id').Value;
  Query_AttrSelf.Open;
  cxLookupComboBox10.EditValue := Query_AttrSelf.FieldByName('attr_self').Value;

  cxCheckBox1.Checked := True;

  cxTabSheet2.TabVisible := False;
  cxPageControl1.ActivePage := cxTabSheet1;
  cxPageControl1.HideTabs := True;


  Screen.Cursor := crDefault;
end;

procedure TfmBargainRate.SetAddCollection(add_id: integer);
begin
  Fadd_id := add_id;

  Query_AddVid.Open;
  cxLookupComboBox1.EditValue := Query_AddVid.FieldByName('inf_obj_id').Value;
  Query_Currency.Open;
  cxLookupComboBox2.EditValue := Query_Currency.FieldByName('currency_id').Value;
  Query_AddType.Open;
  cxLookupComboBox3.EditValue := Query_AddType.FieldByName('inf_obj_id').Value;
  Query_NDS.Open;
  cxLookupComboBox4.EditValue := Query_NDS.FieldByName('inf_obj_id').Value;
  Query_AddService.Open;
  cxLookupComboBox5.EditValue := Query_AddService.FieldByName('inf_obj_id').Value;

  if Fadd_id <> -9 then begin
    if FClientDS_Add.Locate('id', Fadd_id, []) then begin
      cxLookupComboBox1.EditValue := FClientDS_Add.FieldByName('add_vid_id').Value;
      cxLookupComboBox2.EditValue := FClientDS_Add.FieldByName('add_currency_id').Value;
      cxLookupComboBox3.EditValue := FClientDS_Add.FieldByName('add_type_id').Value;
      cxLookupComboBox4.EditValue := FClientDS_Add.FieldByName('add_nds_id').Value;
      cxLookupComboBox5.EditValue := FClientDS_Add.FieldByName('add_service_kind_id').Value;
      cxLookupComboBox8.EditValue := FClientDS_Add.FieldByName('type_tools_id').Value;
      cxLookupComboBox6.EditValue := FClientDS_Add.FieldByName('attr_self').Value;
      cxCurrencyEdit3.EditValue   := FClientDS_Add.FieldByName('add_sum').Value;
      cxMemo1.EditValue           := FClientDS_Add.FieldByName('add_comment').Value;
      Frate_id                    := FClientDS_Add.FieldByName('rate_id').AsInteger;
    end;
  end;


  cxTabSheet2.TabVisible := False;
  cxTabSheet2.TabVisible := True;
  cxPageControl1.ActivePage := cxTabSheet2;
end;


procedure TfmBargainRate.SetTypeKontener(type_kontener: integer);
begin
  cxLookupComboBox7.EditValue := type_kontener;
end;

procedure TfmBargainRate.SetAttrSelf(attr_self: integer);
begin
  cxLookupComboBox10.EditValue := attr_self;
end;

procedure TfmBargainRate.SetWeight(weight: Double);
begin
  Fweight := weight;
  cxCheckBox1.Checked := False;
  cxCurrencyEdit2.EditValue := Fweight;
end;

procedure TfmBargainRate.SetRate(rate: Currency);
begin
  Frate := rate;
  cxCurrencyEdit1.EditValue := Frate;
end;

procedure TfmBargainRate.SetOneWeight(set_one: boolean);
begin
  Fset_one := set_one;
  cxCheckBox1.Checked := Fset_one;
end;

procedure TfmBargainRate.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action := caFree;
end;

procedure TfmBargainRate.BitBtn1Click(Sender: TObject);
begin
  if cxTabSheet2.TabVisible = True then begin
    if Fadd_id <> -9 then begin
      FClientDS_Add.Locate('id', Fadd_id, []);
      FClientDS_Add.Edit;
    end else
      FClientDS_Add.Append;

    FClientDS_Add.FieldByName('rate_id'              ).Value := Frate_id;
    FClientDS_Add.FieldByName('add_vid_id'           ).Value := cxLookupComboBox1.EditValue;
    FClientDS_Add.FieldByName('add_vid_name'         ).Value := cxLookupComboBox1.Text;
    FClientDS_Add.FieldByName('add_currency_id'      ).Value := cxLookupComboBox2.EditValue;
    FClientDS_Add.FieldByName('add_currency_name'    ).Value := cxLookupComboBox2.Text;
    FClientDS_Add.FieldByName('add_type_id'          ).Value := cxLookupComboBox3.EditValue;
    FClientDS_Add.FieldByName('add_type_name'        ).Value := cxLookupComboBox3.Text;
    FClientDS_Add.FieldByName('add_nds_id'           ).Value := cxLookupComboBox4.EditValue;
    FClientDS_Add.FieldByName('add_nds_name'         ).Value := cxLookupComboBox4.Text;
    FClientDS_Add.FieldByName('add_service_kind_id'  ).Value := cxLookupComboBox5.EditValue;
    FClientDS_Add.FieldByName('add_service_kind_name').Value := cxLookupComboBox5.Text;
    FClientDS_Add.FieldByName('type_tools_id'        ).Value := cxLookupComboBox8.EditValue;
    FClientDS_Add.FieldByName('type_tools_name'      ).Value := cxLookupComboBox8.Text;
    FClientDS_Add.FieldByName('attr_self'            ).Value := cxLookupComboBox6.EditValue;
    FClientDS_Add.FieldByName('attr_self_name'       ).Value := cxLookupComboBox6.Text;
    FClientDS_Add.FieldByName('add_sum'              ).Value := cxCurrencyEdit3.EditValue;
    FClientDS_Add.FieldByName('add_comment'          ).Value := cxMemo1.EditValue;

    FClientDS_Add.Post;
  end else begin
    Fparam_id           := cxComboBox4.ItemIndex;
    Fset_nds            := cxCheckBox2.Checked;
    Fset_dist_fact      := cxCheckBox3.Checked;
    Fset_dist_prev      := cxCheckBox4.Checked;
    Ftype_kontener      := cxLookupComboBox7.EditValue;
    Ftype_kontener_name := cxLookupComboBox7.Text;
    Fattr_self          := cxLookupComboBox10.EditValue;
    Fattr_self_name     := cxLookupComboBox10.Text;
    Fset_one := cxCheckBox1.Checked;

    if (Fset_one = False) and (cxCurrencyEdit2.EditValue <> null) then
      Fweight := cxCurrencyEdit2.EditValue
    else
      Fweight := 0;

    if cxCurrencyEdit1.EditValue <> null then
      Frate := cxCurrencyEdit1.EditValue
    else
      Frate := 0;
  end;
end;

procedure TfmBargainRate.BitBtn2Click(Sender: TObject);
begin
  Close;
end;

procedure TfmBargainRate.cxButton1Click(Sender: TObject);
begin
  if Fdoc_cod <> 0 then begin
    ShellExecute(HWND(nil), 'open', PChar(GetDocBlob(Fconnect, Fdoc_cod, 5)), nil, nil, SW_SHOWNORMAL);
  end;
end;

procedure TfmBargainRate.cxCheckBox1PropertiesEditValueChanged(Sender: TObject);
begin
  if cxCheckBox1.Checked = True then begin
    cxCurrencyEdit2.EditValue := null;
    cxCurrencyEdit2.Properties.ReadOnly := True;
    cxCurrencyEdit2.Text := '(любой вес)';
    cxCurrencyEdit2.Enabled := False;
    cxCurrencyEdit2.Style.Color := clBtnFace;
    cxCurrencyEdit2.Style.Font.Style := [fsBold];
  end else begin
    cxCurrencyEdit2.EditValue := null;
    cxCurrencyEdit2.Enabled := True;
    cxCurrencyEdit2.Properties.ReadOnly := False;
    cxCurrencyEdit2.Style.Color := clWindow;
    cxCurrencyEdit2.Style.Font.Style := [];
  end;
end;

procedure TfmBargainRate.SetSelectRate(set_rate: boolean);
begin
  if set_rate = True then begin

  end;

  if set_rate = False then begin
    Panel1.Visible := False;
    Height := Height - Panel1.Height;
  end;

  if (Panel1.Visible = False) and (Panel3.Visible = False) then begin
    Panel2.Align := alClient;
  end;
end;

procedure TfmBargainRate.SetSelectLink(set_link: boolean);
begin
  if set_link = True then begin

  end;

  if set_link = False then begin
    Panel2.Visible := False;
    Panel1.Align := alClient;
    Height := Height - Panel2.Height;
  end;
end;

procedure TfmBargainRate.SetSelectParam(set_param: boolean);
begin
  if set_param = True then begin

  end;

  if set_param = False then begin
    Panel3.Visible := False;
    Panel1.Align := alClient;
    Height := Height - Panel3.Height;
  end;

  if (Panel1.Visible = False) and (Panel3.Visible = False) then begin
    Panel2.Align := alClient;
  end;
end;


procedure TfmBargainRate.SetReadOnly(set_read_only: boolean);
begin
  if set_read_only then begin
    cxLookupComboBox7.Properties.ReadOnly := True;
    cxLookupComboBox7.Style.Color := clBtnFace;
    cxLookupComboBox7.Style.Font.Style := [fsBold];

    cxLookupComboBox10.Properties.ReadOnly := True;
    cxLookupComboBox10.Style.Color := clBtnFace;
    cxLookupComboBox10.Style.Font.Style := [fsBold];
  end;
end;

procedure TfmBargainRate.SetParamList(str_list: TStringList);
begin
  cxComboBox4.Properties.Items.Text := str_list.Text;
  if str_list.Count > 0 then begin
    cxComboBox4.ItemIndex := 0;
  end;
end;

procedure TfmBargainRate.SetAllRate(set_all_rate: boolean);
begin
  if set_all_rate = False then begin
    Query_TypeTools.SQL.Clear;
    Query_TypeTools.SQL.Add('SELECT inf_obj_id, type_inf_id, inf_obj_name, inf_obj_cod');
    Query_TypeTools.SQL.Add('FROM inf_obj');
    Query_TypeTools.SQL.Add('WHERE ((type_inf_id = 20) OR (type_inf_id=21))  AND dbo.GetInfObjVisible(str_group_visible) = 1');
    Query_TypeTools.SQL.Add('ORDER BY inf_obj_name');

    Query_AttrSelf.SQL.Clear;
    Query_AttrSelf.SQL.Add('SELECT attr_self, attr_self_name FROM view_attr_self');
  end else begin
    Query_TypeTools.SQL.Clear;
    Query_TypeTools.SQL.Add('SELECT inf_obj_id = -9, type_inf_id = 21, inf_obj_name = ''(Все вагоны)'', inf_obj_cod = ''-9''');
    Query_TypeTools.SQL.Add('UNION');
    Query_TypeTools.SQL.Add('SELECT inf_obj_id, type_inf_id, inf_obj_name, inf_obj_cod');
    Query_TypeTools.SQL.Add('FROM inf_obj');
    Query_TypeTools.SQL.Add('WHERE ((type_inf_id = 20) OR (type_inf_id=21))  AND dbo.GetInfObjVisible(str_group_visible) = 1');
    Query_TypeTools.SQL.Add('ORDER BY inf_obj_name');

    Query_AttrSelf.SQL.Clear;
    Query_AttrSelf.SQL.Add('SELECT attr_self = -9, attr_self_name = ''(Все ставки)''');
    Query_AttrSelf.SQL.Add('UNION');
    Query_AttrSelf.SQL.Add('SELECT attr_self, attr_self_name FROM view_attr_self');
  end;

  Query_TypeTools.Open;
  cxLookupComboBox7.EditValue := Query_TypeTools.FieldByName('inf_obj_id').Value;
  Query_AttrSelf.Open;
  cxLookupComboBox10.EditValue := Query_AttrSelf.FieldByName('attr_self').Value;
end;

procedure TfmBargainRate.SetSelectAttrSelf(set_select_attr_self: boolean);
begin
  Label16.Visible := set_select_attr_self;
  cxLookupComboBox10.Visible := set_select_attr_self;
end;

end.
