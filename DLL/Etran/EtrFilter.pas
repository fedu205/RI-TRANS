unit EtrFilter;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Default, Grids, ValEdit, cxTextEdit, cxControls, cxContainer, cxEdit,
  cxLabel, cxCheckBox, cxDropDownEdit, cxCalendar, cxMaskEdit, cxButtonEdit,
  StdCtrls, Buttons, DB, ADODB, Filter, StrUtils, ExtCtrls, cxGraphics,
  cxLookupEdit, cxDBLookupEdit, cxDBLookupComboBox, cxLookAndFeels,
  cxLookAndFeelPainters, dxSkinsCore, dxSkinBlack, dxSkinBlue, dxSkinBlueprint,
  dxSkinCaramel, dxSkinCoffee, dxSkinDarkRoom, dxSkinDarkSide,
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
  dxSkinXmas2008Blue, Vcl.ComCtrls, dxCore, cxDateUtils;

type
  TfmEtrFilter = class(TForm)
    ADOQuery: TADOQuery;
    Panel1: TPanel;
    Panel2: TPanel;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    cxLabel1: TcxLabel;
    cxLabel2: TcxLabel;
    cxLabel3: TcxLabel;
    cxLabel4: TcxLabel;
    cxLabel8: TcxLabel;
    cxLabel7: TcxLabel;
    cxLabel10: TcxLabel;
    cxLabel9: TcxLabel;
    cxLabel6: TcxLabel;
    cxLabel5: TcxLabel;
    cxButtonEdit1: TcxButtonEdit;
    cxButtonEdit3: TcxButtonEdit;
    cxButtonEdit4: TcxButtonEdit;
    cxButtonEdit2: TcxButtonEdit;
    cxDateEdit4: TcxDateEdit;
    cxDateEdit1: TcxDateEdit;
    cxDateEdit2: TcxDateEdit;
    cxDateEdit3: TcxDateEdit;
    cxTextEdit1: TcxTextEdit;
    cxTextEdit2: TcxTextEdit;
    cxCheckBox1: TcxCheckBox;
    cxCheckBox2: TcxCheckBox;
    cxCheckBox4: TcxCheckBox;
    cxCheckBox5: TcxCheckBox;
    cxCheckBox6: TcxCheckBox;
    Panel3: TPanel;
    cxLabel12: TcxLabel;
    cxLabel13: TcxLabel;
    cxLabel14: TcxLabel;
    cxLabel17: TcxLabel;
    cxLabel19: TcxLabel;
    cxLabel20: TcxLabel;
    cxLabel21: TcxLabel;
    cxButtonEdit5: TcxButtonEdit;
    cxButtonEdit6: TcxButtonEdit;
    cxButtonEdit7: TcxButtonEdit;
    cxButtonEdit8: TcxButtonEdit;
    cxDateEdit6: TcxDateEdit;
    cxDateEdit7: TcxDateEdit;
    cxTextEdit3: TcxTextEdit;
    cxTextEdit4: TcxTextEdit;
    cxCheckBox8: TcxCheckBox;
    cxCheckBox9: TcxCheckBox;
    cxCheckBox12: TcxCheckBox;
    cxCheckBox13: TcxCheckBox;
    cxLabel15: TcxLabel;
    cxButtonEdit9: TcxButtonEdit;
    cxButtonEdit10: TcxButtonEdit;
    cxCheckBox11: TcxCheckBox;
    Panel4: TPanel;
    cxLabel11: TcxLabel;
    cxLabel16: TcxLabel;
    cxLabel18: TcxLabel;
    cxLabel22: TcxLabel;
    cxLabel23: TcxLabel;
    cxLabel24: TcxLabel;
    cxLabel25: TcxLabel;
    cxLabel26: TcxLabel;
    cxLabel27: TcxLabel;
    cxLabel28: TcxLabel;
    cxButtonEdit11: TcxButtonEdit;
    cxButtonEdit12: TcxButtonEdit;
    cxButtonEdit13: TcxButtonEdit;
    cxButtonEdit14: TcxButtonEdit;
    cxDateEdit5: TcxDateEdit;
    cxDateEdit8: TcxDateEdit;
    cxDateEdit9: TcxDateEdit;
    cxDateEdit10: TcxDateEdit;
    cxTextEdit5: TcxTextEdit;
    cxTextEdit6: TcxTextEdit;
    cxCheckBox3: TcxCheckBox;
    cxCheckBox7: TcxCheckBox;
    cxCheckBox10: TcxCheckBox;
    cxCheckBox14: TcxCheckBox;
    cxCheckBox15: TcxCheckBox;
    cxLabel29: TcxLabel;
    cxButtonEdit15: TcxButtonEdit;
    cxButtonEdit16: TcxButtonEdit;
    cxCheckBox16: TcxCheckBox;
    cxCheckBox17: TcxCheckBox;
    cxDateEdit11: TcxDateEdit;
    cxLabel30: TcxLabel;
    cxDateEdit12: TcxDateEdit;
    cxLabel31: TcxLabel;
    cxLabel32: TcxLabel;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure BitBtn1Click(Sender: TObject);
    procedure cxCheckBox1PropertiesChange(Sender: TObject);
    procedure cxButtonEdit1PropertiesButtonClick(Sender: TObject;
      AButtonIndex: Integer);
  private
    Finv_num_document       : string;
    Finv_num_vagon          : string;
    Finv_date_from_to_begin : TDateTime;
    Finv_date_from_to_end   : TDateTime;
    Finv_datpr_begin     : TDateTime;
    Finv_datpr_end       : TDateTime;
    Finv_node_begin_name : string;
    Finv_node_begin_cod  : string;
    Finv_node_end_name   : string;
    Finv_node_end_cod    : string;

    Frt_number          : string;
    Frt_num_exp         : string;
    Frt_date_agr_begin  : TDateTime;
    Frt_date_agr_end    : TDateTime;
    Frt_kargo_ETSNG_cod : string;
    Frt_kargo_ETSNG_name: string;
    Frt_node_begin_name : string;
    Frt_node_begin_cod  : string;
    Frt_node_end_name   : string;
    Frt_node_end_cod    : string;

    FSetClmNumber_val         : string;
    FSetClmInvNum_val         : string;
    FSetClmRegBegin_val : TDateTime;
    FSetClmRegEnd_val   : TDateTime;
    FSetClmDateStartBegin_val : TDateTime;
    FSetClmDateStartEnd_val   : TDateTime;
    FSetClmDateFinishBegin_val: TDateTime;
    FSetClmDateFinishEnd_val  : TDateTime;
    FSetClmNodeBeginName_val  : string;
    FSetClmNodeBeginCod_val   : string;
    FSetClmNodeEndName_val    : string;
    FSetClmNodeEndCod_val     : string;
    FSetClmKargoETSNGCod_val  : string;
    FSetClmKargoETSNGName_val : string;

    procedure FSetInvNumDocument(num_document: string);
    procedure FSetInvNumVagon(num_vagon: string);
    procedure FSetInvDateFromToBegin(date_from_to_begin: TDateTime);
    procedure FSetInvDateFromToEnd(date_from_to_end: TDateTime);
    procedure FSetInvDatprBegin(datpr_begin: TDateTime);
    procedure FSetInvDatprEnd(datpr_end: TDateTime);
    procedure FSetInvNodeBeginName (node_begin_name: string);
    procedure FSetInvNodeBeginCod  (node_begin_cod : string);
    procedure FSetInvNodeEndName   (node_end_name  : string);
    procedure FSetInvNodeEndCod    (node_end_cod   : string);

    procedure FSetRtNumber      (rt_number: string);
    procedure FSetRtNumExp      (rt_num_exp: string);
    procedure FSetRtDateAgrBegin  (date_agr_begin: TDateTime);
    procedure FSetRtDateAgrEnd    (date_agr_end: TDateTime);
    procedure FSetRtKargoETSNGCod (kargo_ETSNG_cod: string);
    procedure FSetRtKargoETSNGName(kargo_ETSNG_name: string);

    procedure FSetClmNumber(SetClmNumber: string);
    procedure FSetClmInvNum(SetClmInvNum: string);
    procedure FSetClmRegBegin(SetClmRegBegin: TDateTime);
    procedure FSetClmRegEnd(SetClmRegEnd: TDateTime);
    procedure FSetClmDateStartBegin(SetClmDateStartBegin: TDateTime);
    procedure FSetClmDateStartEnd(SetClmDateStartEnd: TDateTime);
    procedure FSetClmDateFinishBegin(SetClmDateFinishBegin: TDateTime);
    procedure FSetClmDateFinishEnd(SetClmDateFinishEnd: TDateTime);
    procedure FSetClmNodeBeginName(SetClmNodeBeginName: string);
    procedure FSetClmNodeBeginCod(SetClmNodeBeginCod: string);
    procedure FSetClmNodeEndName(SetClmNodeEndName: string);
    procedure FSetClmNodeEndCod(SetClmNodeEndCod: string);
    procedure FSetClmKargoETSNGCod(SetClmKargoETSNGCod: string);
    procedure FSetClmKargoETSNGName(SetClmKargoETSNGName: string);


  public
    constructor Create(doc_type_id: integer; connect: TADOConnection);
  published
    property _GetInvNumDocument  : string read  Finv_num_document;
    property _SetInvNumDocument  : string write FSetInvNumDocument;
    property _GetInvNumVagon     : string read  Finv_num_vagon;
    property _SetInvNumVagon     : string write FSetInvNumVagon;
    property _GetInvDateFromToBegin  : TDateTime read  Finv_date_from_to_begin;
    property _GetInvDateFromToEnd    : TDateTime read  Finv_date_from_to_end;
    property _SetInvDateFromToBegin  : TDateTime write FSetInvDateFromToBegin;
    property _SetInvDateFromToEnd    : TDateTime write FSetInvDateFromToEnd;
    property _GetInvDatprBegin   : TDateTime read  Finv_datpr_begin;
    property _GetInvDatprEnd     : TDateTime read  Finv_datpr_end;
    property _SetInvDatprBegin   : TDateTime write FSetInvDatprBegin;
    property _SetInvDatprEnd     : TDateTime write FSetInvDatprEnd;
    property _GetInvNodeBeginName: string read  Finv_node_begin_name;
    property _SetInvNodeBeginName: string write FSetInvNodeBeginName;
    property _GetInvNodeBeginCod : string read  Finv_node_begin_cod;
    property _SetInvNodeBeginCod : string write FSetInvNodeBeginCod;
    property _GetInvNodeEndName  : string read  Finv_node_end_name;
    property _SetInvNodeEndName  : string write FSetInvNodeEndName;
    property _GetInvNodeEndCod   : string read  Finv_node_end_cod;
    property _SetInvNodeEndCod   : string write FSetInvNodeEndCod;

    property _SetRtNumber       : string write FSetRtNumber;
    property _SetRtNumExp       : string write FSetRtNumExp;
    property _SetRtDateAgrBegin   : TDateTime write FSetRtDateAgrBegin;
    property _SetRtDateAgrEnd     : TDateTime write FSetRtDateAgrEnd;
    property _SetRtKargoETSNGCod  : string write FSetRtKargoETSNGCod;
    property _SetRtKargoETSNGName : string write FSetRtKargoETSNGName;

    property _GetRtNumber       : string read Frt_number;
    property _GetRtNumExp       : string read Frt_num_exp;
    property _GetRtDateAgrBegin   : TDateTime read Frt_date_agr_begin;
    property _GetRtDateAgrEnd     : TDateTime read Frt_date_agr_end;
    property _GetRtKargoETSNGCod  : string read Frt_kargo_ETSNG_cod;
    property _GetRtKargoETSNGName : string read Frt_kargo_ETSNG_name;

    property _SetClmNumber          : string write FSetClmNumber;
    property _SetClmInvNum          : string write FSetClmInvNum;
    property _SetClmRegBegin        : TDateTime write FSetClmRegBegin;
    property _SetClmRegEnd          : TDateTime write FSetClmRegEnd;
    property _SetClmDateStartBegin  : TDateTime write FSetClmDateStartBegin;
    property _SetClmDateStartEnd    : TDateTime write FSetClmDateStartEnd;
    property _SetClmDateFinishBegin : TDateTime write FSetClmDateFinishBegin;
    property _SetClmDateFinishEnd   : TDateTime write FSetClmDateFinishEnd;
    property _SetClmNodeBeginName   : string write FSetClmNodeBeginName;
    property _SetClmNodeBeginCod    : string write FSetClmNodeBeginCod;
    property _SetClmNodeEndName     : string write FSetClmNodeEndName;
    property _SetClmNodeEndCod      : string write FSetClmNodeEndCod;
    property _SetClmKargoETSNGCod   : string write FSetClmKargoETSNGCod;
    property _SetClmKargoETSNGName  : string write FSetClmKargoETSNGName;

    property _GetClmNumber          : string read FSetClmNumber_val;
    property _GetClmInvNum          : string read FSetClmInvNum_val;
    property _GetClmRegBegin        : TDateTime read FSetClmRegBegin_val;
    property _GetClmRegEnd          : TDateTime read FSetClmRegEnd_val;
    property _GetClmDateStartBegin  : TDateTime read FSetClmDateStartBegin_val;
    property _GetClmDateStartEnd    : TDateTime read FSetClmDateStartEnd_val;
    property _GetClmDateFinishBegin : TDateTime read FSetClmDateFinishBegin_val;
    property _GetClmDateFinishEnd   : TDateTime read FSetClmDateFinishEnd_val;
    property _GetClmNodeBeginName   : string read FSetClmNodeBeginName_val;
    property _GetClmNodeBeginCod    : string read FSetClmNodeBeginCod_val;
    property _GetClmNodeEndName     : string read FSetClmNodeEndName_val;
    property _GetClmNodeEndCod      : string read FSetClmNodeEndCod_val;
    property _GetClmKargoETSNGCod   : string read FSetClmKargoETSNGCod_val;
    property _GetClmKargoETSNGName  : string read FSetClmKargoETSNGName_val;



  end;

var
  fmEtrFilter: TfmEtrFilter;

implementation


{$R *.dfm}

constructor TfmEtrFilter.Create(doc_type_id: integer; connect: TADOConnection);
begin
  Screen.Cursor := crHourglass;
  inherited Create(nil);

  if connect <> nil then
    ADOQuery.Connection := connect;


  if doc_type_id = 1 then begin
    Panel1.Visible := False;
    Panel3.Visible := False;
    Panel4.Visible := True;
    Height := Height - Panel1.Height - Panel3.Height;
    Panel4.Align := alClient;
  end;

  if doc_type_id = 2 then begin
    Panel1.Visible := True;
    Panel3.Visible := False;
    Panel4.Visible := False;
    Height := Height - Panel3.Height - Panel4.Height;
    Panel1.Align := alClient;
  end;

  if doc_type_id = 29 then begin
    Panel1.Visible := False;
    Panel3.Visible := True;
    Panel4.Visible := False;
    Height := Height - Panel1.Height - Panel4.Height;
    Panel3.Align := alClient;
  end;

  Screen.Cursor := crDefault;
end;

procedure TfmEtrFilter.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action := caFree;
end;



procedure TfmEtrFilter.FSetInvNumDocument(num_document: string);
begin
  Finv_num_document       := num_document;
  cxTextEdit1.Text    := Finv_num_document;
  if Finv_num_document <> '' then cxCheckBox1.Checked := True;
  cxCheckBox1PropertiesChange(cxCheckBox1);
end;

procedure TfmEtrFilter.FSetInvNumVagon(num_vagon: string);
begin
  Finv_num_vagon := num_vagon;
  cxTextEdit2.Text := Finv_num_vagon;
  if Finv_num_vagon <> '' then cxCheckBox2.Checked := True;
  cxCheckBox1PropertiesChange(cxCheckBox2);
end;

procedure TfmEtrFilter.FSetInvDateFromToBegin(date_from_to_begin: TDateTime);
begin
  Finv_date_from_to_begin := date_from_to_begin;
  cxDateEdit1.Date    := Finv_date_from_to_begin;
end;

procedure TfmEtrFilter.FSetInvDateFromToEnd(date_from_to_end: TDateTime);
begin
  Finv_date_from_to_end   := date_from_to_end;
  cxDateEdit2.Date    := Finv_date_from_to_end;
end;

procedure TfmEtrFilter.FSetInvDatprBegin(datpr_begin: TDateTime);
begin
  Finv_datpr_begin := datpr_begin;
  cxDateEdit3.Date    := Finv_datpr_begin;
  if Finv_datpr_begin <> -700000 then cxCheckBox4.Checked := True;
  cxCheckBox1PropertiesChange(cxCheckBox4);
end;

procedure TfmEtrFilter.FSetInvDatprEnd(datpr_end: TDateTime);
begin
  Finv_datpr_end := datpr_end;
  cxDateEdit4.Date    := Finv_datpr_end;
  if Finv_datpr_end <> -700000 then cxCheckBox4.Checked := True;
  cxCheckBox1PropertiesChange(cxCheckBox4);
end;

procedure TfmEtrFilter.FSetInvNodeBeginName(node_begin_name: string);
begin
  Finv_node_begin_name    := node_begin_name;

  if Panel1.Visible then begin
    cxButtonEdit1.Text  := Finv_node_begin_name;
    if Finv_node_begin_name <> '' then cxCheckBox5.Checked := True;
    cxCheckBox1PropertiesChange(cxCheckBox5);
  end;

  if Panel3.Visible then begin
    cxButtonEdit5.Text  := Finv_node_begin_name;
    if Finv_node_begin_name <> '' then cxCheckBox12.Checked := True;
    cxCheckBox1PropertiesChange(cxCheckBox12);
  end
end;

procedure TfmEtrFilter.FSetInvNodeBeginCod(node_begin_cod: string);
begin
  Finv_node_begin_cod    := node_begin_cod;

  if Panel1.Visible then begin
    cxButtonEdit2.Text  := Finv_node_begin_cod;
    if Finv_node_begin_cod <> '' then cxCheckBox5.Checked := True;
    cxCheckBox1PropertiesChange(cxCheckBox5);
  end;

  if Panel3.Visible then begin
    cxButtonEdit8.Text  := Finv_node_begin_cod;
    if Finv_node_begin_cod <> '' then cxCheckBox12.Checked := True;
    cxCheckBox1PropertiesChange(cxCheckBox12);
  end;
end;

procedure TfmEtrFilter.FSetInvNodeEndName(node_end_name: string);
begin
  Finv_node_end_name    := node_end_name;

  if Panel1.Visible then begin
    cxButtonEdit3.Text  := Finv_node_end_name;
    if Finv_node_end_name<>'' then  cxCheckBox6.Checked := True;
    cxCheckBox1PropertiesChange(cxCheckBox6);
  end;

  if Panel3.Visible then begin
    cxButtonEdit6.Text  := Finv_node_end_name;
    if Finv_node_end_name<>'' then  cxCheckBox13.Checked := True;
    cxCheckBox1PropertiesChange(cxCheckBox13);
  end;
end;

procedure TfmEtrFilter.FSetInvNodeEndCod(node_end_cod: string);
begin
  Finv_node_end_cod    := node_end_cod;

  if Panel1.Visible then begin
    cxButtonEdit4.Text  := Finv_node_end_cod;
    if Finv_node_end_cod <> '' then cxCheckBox6.Checked := True;
    cxCheckBox1PropertiesChange(cxCheckBox6);
  end;

  if Panel3.Visible then begin
    cxButtonEdit7.Text  := Finv_node_end_cod;
    if Finv_node_end_cod <> '' then cxCheckBox13.Checked := True;
    cxCheckBox1PropertiesChange(cxCheckBox13);
  end;
end;

procedure TfmEtrFilter.FSetRtNumber(rt_number: string);
begin
  Frt_number := rt_number;
  cxTextEdit3.Text  := Frt_number;
  if Frt_number <> '' then cxCheckBox8.Checked := True;
  cxCheckBox1PropertiesChange(cxCheckBox8);
end;

procedure TfmEtrFilter.FSetRtNumExp(rt_num_exp: string);
begin
  Frt_num_exp := rt_num_exp;
  cxTextEdit4.Text  := Frt_num_exp;
  if Frt_num_exp <> '' then cxCheckBox9.Checked := True;
  cxCheckBox1PropertiesChange(cxCheckBox9);
end;

procedure TfmEtrFilter.FSetRtDateAgrBegin(date_agr_begin: TDateTime);
begin
  Frt_date_agr_begin := date_agr_begin;
  cxDateEdit6.Date    := Frt_date_agr_begin;
end;

procedure TfmEtrFilter.FSetRtDateAgrEnd(date_agr_end: TDateTime);
begin
  Frt_date_agr_end := date_agr_end;
  cxDateEdit7.Date    := Frt_date_agr_end;
end;

procedure TfmEtrFilter.FSetRtKargoETSNGCod(kargo_ETSNG_cod: string);
begin
  Frt_kargo_ETSNG_cod    := kargo_ETSNG_cod;
  cxButtonEdit10.Text  := Frt_kargo_ETSNG_cod;
  if Frt_kargo_ETSNG_cod <> '' then cxCheckBox11.Checked := True;
  cxCheckBox1PropertiesChange(cxCheckBox11);
end;

procedure TfmEtrFilter.FSetRtKargoETSNGName(kargo_ETSNG_name: string);
begin
  Frt_kargo_ETSNG_name    := kargo_ETSNG_name;
  cxButtonEdit9.Text  := Frt_kargo_ETSNG_name;
  if Frt_kargo_ETSNG_cod <> '' then cxCheckBox11.Checked := True;
  cxCheckBox1PropertiesChange(cxCheckBox11);
end;


procedure TfmEtrFilter.FSetClmNumber(SetClmNumber: string);
begin
  FSetClmNumber_val := SetClmNumber;
  cxTextEdit5.Text  := FSetClmNumber_val;
  if FSetClmNumber_val <> '' then cxCheckBox3.Checked := True;
  cxCheckBox1PropertiesChange(cxCheckBox3);
end;

procedure TfmEtrFilter.FSetClmInvNum(SetClmInvNum: string);
begin
  FSetClmInvNum_val := SetClmInvNum;
  cxTextEdit6.Text  := FSetClmInvNum_val;
  if FSetClmInvNum_val <> '' then cxCheckBox7.Checked := True;
  cxCheckBox1PropertiesChange(cxCheckBox7);
end;



procedure TfmEtrFilter.FSetClmRegBegin(SetClmRegBegin: TDateTime);
begin
  FSetClmRegBegin_val := SetClmRegBegin;
  cxDateEdit8.Date    := FSetClmRegBegin_val;
end;

procedure TfmEtrFilter.FSetClmRegEnd(SetClmRegEnd: TDateTime);
begin
  FSetClmRegEnd_val := SetClmRegEnd;
  cxDateEdit9.Date  := FSetClmRegEnd_val;
end;




procedure TfmEtrFilter.FSetClmDateStartBegin(SetClmDateStartBegin: TDateTime);
begin
  FSetClmDateStartBegin_val := SetClmDateStartBegin;
  cxDateEdit12.Date      := FSetClmDateStartBegin_val;
  if FSetClmDateStartBegin_val <> -700000 then cxCheckBox17.Checked := True;
  cxCheckBox1PropertiesChange(cxCheckBox17);
end;

procedure TfmEtrFilter.FSetClmDateStartEnd(SetClmDateStartEnd: TDateTime);
begin
  FSetClmDateStartEnd_val := SetClmDateStartEnd;
  cxDateEdit11.Date    := FSetClmDateStartEnd_val;
  if FSetClmDateStartEnd_val <> -700000 then cxCheckBox17.Checked := True;
  cxCheckBox1PropertiesChange(cxCheckBox17);
end;

procedure TfmEtrFilter.FSetClmDateFinishBegin(SetClmDateFinishBegin: TDateTime);
begin
  FSetClmDateFinishBegin_val := SetClmDateFinishBegin;
  cxDateEdit10.Date      := FSetClmDateFinishBegin_val;
  if FSetClmDateFinishBegin_val <> -700000 then cxCheckBox10.Checked := True;
  cxCheckBox1PropertiesChange(cxCheckBox10);
end;

procedure TfmEtrFilter.FSetClmDateFinishEnd(SetClmDateFinishEnd: TDateTime);
begin
  FSetClmDateFinishEnd_val := SetClmDateFinishEnd;
  cxDateEdit5.Date    := FSetClmDateFinishEnd_val;
  if FSetClmDateFinishBegin_val <> -700000 then cxCheckBox5.Checked := True;
  cxCheckBox1PropertiesChange(cxCheckBox5);
end;

procedure TfmEtrFilter.FSetClmNodeBeginName(SetClmNodeBeginName: string);
begin
  FSetClmNodeBeginName_val := SetClmNodeBeginName;
  cxButtonEdit11.Text  := FSetClmNodeBeginName_val;
  if FSetClmNodeBeginName_val <> '' then cxCheckBox14.Checked := True;
  cxCheckBox1PropertiesChange(cxCheckBox14);
end;

procedure TfmEtrFilter.FSetClmNodeBeginCod(SetClmNodeBeginCod: string);
begin
  FSetClmNodeBeginCod_val := SetClmNodeBeginCod;
  cxButtonEdit14.Text  := FSetClmNodeBeginCod_val;
  if FSetClmNodeBeginCod_val <> '' then cxCheckBox14.Checked := True;
  cxCheckBox1PropertiesChange(cxCheckBox14);
end;

procedure TfmEtrFilter.FSetClmNodeEndName(SetClmNodeEndName: string);
begin
  FSetClmNodeEndName_val := SetClmNodeEndName;
  cxButtonEdit12.Text  := FSetClmNodeEndName_val;
  if FSetClmNodeEndName_val <> '' then cxCheckBox15.Checked := True;
  cxCheckBox1PropertiesChange(cxCheckBox15);
end;

procedure TfmEtrFilter.FSetClmNodeEndCod(SetClmNodeEndCod: string);
begin
  FSetClmNodeEndCod_val := SetClmNodeEndCod;
  cxButtonEdit13.Text  := FSetClmNodeEndCod_val;
  if FSetClmNodeEndCod_val <> '' then cxCheckBox15.Checked := True;
  cxCheckBox1PropertiesChange(cxCheckBox15);
end;

procedure TfmEtrFilter.FSetClmKargoETSNGCod(SetClmKargoETSNGCod: string);
begin
  FSetClmKargoETSNGCod_val := SetClmKargoETSNGCod;
  cxButtonEdit15.Text  := FSetClmKargoETSNGCod_val;
  if FSetClmKargoETSNGCod_val <> '' then cxCheckBox16.Checked := True;
  cxCheckBox1PropertiesChange(cxCheckBox16);
end;

procedure TfmEtrFilter.FSetClmKargoETSNGName(SetClmKargoETSNGName: string);
begin
  FSetClmKargoETSNGName_val := SetClmKargoETSNGName;
  cxButtonEdit16.Text  := FSetClmKargoETSNGName_val;
  if FSetClmKargoETSNGCod_val <> '' then cxCheckBox16.Checked := True;
  cxCheckBox1PropertiesChange(cxCheckBox16);
end;




procedure TfmEtrFilter.BitBtn1Click(Sender: TObject);
begin
  if cxCheckBox1.Checked then  Finv_num_document := cxTextEdit1.Text
  else Finv_num_document :=  '';

  if cxCheckBox2.Checked then  Finv_num_vagon := cxTextEdit2.Text
  else Finv_num_vagon :=  '';

  Finv_date_from_to_begin := cxDateEdit1.Date;
  Finv_date_from_to_end   := cxDateEdit2.Date;

  if Panel1.Visible then begin
    if cxCheckBox4.Checked then  Finv_datpr_begin := cxDateEdit3.Date
    else Finv_datpr_begin := -700000;

    if cxCheckBox4.Checked then  Finv_datpr_end := cxDateEdit4.Date
    else Finv_datpr_end := -700000;

    if cxCheckBox5.Checked then Finv_node_begin_name := cxButtonEdit1.Text
    else Finv_node_begin_name := '';

    if cxCheckBox5.Checked then Finv_node_begin_cod := cxButtonEdit2.Text
    else Finv_node_begin_cod := '';

    if cxCheckBox6.Checked then Finv_node_end_name := cxButtonEdit3.Text
    else Finv_node_end_name := '';

    if cxCheckBox6.Checked then Finv_node_end_cod := cxButtonEdit4.Text
    else Finv_node_end_cod := '';
  end;


  if cxCheckBox8.Checked then Frt_number := cxTextEdit3.Text
  else Frt_number := '';

  if cxCheckBox9.Checked then Frt_num_exp := cxTextEdit4.Text
  else Frt_num_exp := '';


  Frt_date_agr_begin := cxDateEdit6.Date;
  Frt_date_agr_end   := cxDateEdit7.Date;


  if Panel3.Visible then begin
    if cxCheckBox11.Checked then Frt_kargo_ETSNG_cod := cxButtonEdit10.Text
    else Frt_kargo_ETSNG_cod := '';

    if cxCheckBox11.Checked then Frt_kargo_ETSNG_name := cxButtonEdit9.Text
    else Frt_kargo_ETSNG_name := '';

    if cxCheckBox12.Checked then Finv_node_begin_name := cxButtonEdit5.Text
    else Finv_node_begin_name := '';

    if cxCheckBox12.Checked then Finv_node_begin_cod := cxButtonEdit8.Text
    else Finv_node_begin_cod := '';

    if cxCheckBox13.Checked then Finv_node_end_name := cxButtonEdit6.Text
    else Finv_node_end_name := '';

    if cxCheckBox13.Checked then Finv_node_end_cod := cxButtonEdit7.Text
    else Finv_node_end_cod := '';
  end;


  if cxCheckBox3.Checked then FSetClmNumber_val :=cxTextEdit5.Text
  else FSetClmNumber_val         :='';

  if cxCheckBox7.Checked then FSetClmInvNum_val :=cxTextEdit6.Text
  else FSetClmInvNum_val         :='';

  FSetClmRegBegin_val :=cxDateEdit8.Date;
  FSetClmRegEnd_val   :=cxDateEdit9.Date;

  if cxCheckBox17.Checked then FSetClmDateStartBegin_val:=cxDateEdit12.Date
  else FSetClmDateStartBegin_val:=-700000;

  if cxCheckBox17.Checked then FSetClmDateStartEnd_val  :=cxDateEdit11.Date
  else FSetClmDateStartEnd_val  :=-700000;

  if cxCheckBox10.Checked then FSetClmDateFinishBegin_val:=cxDateEdit10.Date
  else FSetClmDateFinishBegin_val:=-700000;

  if cxCheckBox10.Checked then FSetClmDateFinishEnd_val  :=cxDateEdit5.Date
  else FSetClmDateFinishEnd_val  :=-700000;

  if cxCheckBox14.Checked then FSetClmNodeBeginName_val  :=cxButtonEdit11.Text
  else FSetClmNodeBeginName_val  :='';

  if cxCheckBox14.Checked then FSetClmNodeBeginCod_val   :=cxButtonEdit14.Text
  else FSetClmNodeBeginCod_val   :='';

  if cxCheckBox15.Checked then FSetClmNodeEndName_val    :=cxButtonEdit12.Text
  else FSetClmNodeEndName_val    :='';

  if cxCheckBox15.Checked then FSetClmNodeEndCod_val     :=cxButtonEdit13.Text
  else FSetClmNodeEndCod_val     :='';

  if cxCheckBox16.Checked then FSetClmKargoETSNGCod_val  :=cxButtonEdit15.Text
  else FSetClmKargoETSNGCod_val  :='';

  if cxCheckBox16.Checked then FSetClmKargoETSNGName_val :=cxButtonEdit16.Text
  else FSetClmKargoETSNGName_val :='';
end;

procedure TfmEtrFilter.cxButtonEdit1PropertiesButtonClick(Sender: TObject;
  AButtonIndex: Integer);
var filter_str:string;
begin

  if AButtonIndex = 1 then begin
    if (Sender = cxButtonEdit1) or (Sender = cxButtonEdit2) then begin
      cxButtonEdit1.Text := '';
      cxButtonEdit2.Text := '';
    end;
    if (Sender = cxButtonEdit3) or (Sender = cxButtonEdit4) then begin
      cxButtonEdit3.Text := '';
      cxButtonEdit4.Text := '';
    end;
    if (Sender = cxButtonEdit5) or (Sender = cxButtonEdit8) then begin
      cxButtonEdit5.Text := '';
      cxButtonEdit8.Text := '';
    end;
    if (Sender = cxButtonEdit6) or (Sender = cxButtonEdit7) then begin
      cxButtonEdit6.Text := '';
      cxButtonEdit7.Text := '';
    end;
    if (Sender = cxButtonEdit9) or (Sender = cxButtonEdit10) then begin
      cxButtonEdit9.Text := '';
      cxButtonEdit10.Text := '';
    end;
    if (Sender = cxButtonEdit11) or (Sender = cxButtonEdit14) then begin
      cxButtonEdit11.Text := '';
      cxButtonEdit14.Text := '';
    end;
    if (Sender = cxButtonEdit12) or (Sender = cxButtonEdit13) then begin
      cxButtonEdit12.Text := '';
      cxButtonEdit13.Text := '';
    end;
    if (Sender = cxButtonEdit15) or (Sender = cxButtonEdit16) then begin
      cxButtonEdit15.Text := '';
      cxButtonEdit16.Text := '';
    end;
  end else begin

    if (Sender = cxButtonEdit1) or (Sender = cxButtonEdit5) or (Sender = cxButtonEdit11) then begin
      if InputQuery('Поиск', 'Шаблон поиска станции по названию', filter_str) then begin
        ADOQuery.SQL.Clear;
        ADOQuery.SQL.Add('SELECT inf_obj_id, inf_obj_name, inf_obj_cod FROM lis1..inf_obj_node WHERE inf_obj_name LIKE ''%'+filter_str+'%'' order by inf_obj_name');
        ADOQuery.Open;
        fmFilter := TfmFilter.Create(0, ADOQuery, 'inf_obj_id', 'inf_obj_cod', 'inf_obj_name');
        if fmFilter.ShowModal=mrOk then begin
          cxButtonEdit1.Text := fmFilter.GetName;
          cxButtonEdit2.Text := fmFilter.GetCod;
          cxButtonEdit5.Text := fmFilter.GetName;
          cxButtonEdit8.Text := fmFilter.GetCod;
          cxButtonEdit11.Text := fmFilter.GetName;
          cxButtonEdit14.Text := fmFilter.GetCod;
        end;
      end;
    end;

    if (Sender = cxButtonEdit2) or (Sender = cxButtonEdit8) or (Sender = cxButtonEdit14) then begin
      if InputQuery('Поиск', 'Шаблон поиска станции по коду', filter_str) then begin
        ADOQuery.SQL.Clear;
        ADOQuery.SQL.Add('SELECT inf_obj_id, inf_obj_name, inf_obj_cod FROM lis1..inf_obj_node WHERE inf_obj_cod LIKE ''%'+filter_str+'%'' order by inf_obj_name');
        ADOQuery.Open;
        fmFilter := TfmFilter.Create(0, ADOQuery, 'inf_obj_id', 'inf_obj_cod', 'inf_obj_name');
        if fmFilter.ShowModal=mrOk then begin
          cxButtonEdit1.Text := fmFilter.GetName;
          cxButtonEdit2.Text := fmFilter.GetCod;
          cxButtonEdit5.Text := fmFilter.GetName;
          cxButtonEdit8.Text := fmFilter.GetCod;
          cxButtonEdit11.Text := fmFilter.GetName;
          cxButtonEdit14.Text := fmFilter.GetCod;
        end;
      end;
    end;


    if (Sender = cxButtonEdit3) or (Sender = cxButtonEdit6) or (Sender = cxButtonEdit12) then begin
      if InputQuery('Поиск', 'Шаблон поиска станции по названию', filter_str) then begin
        ADOQuery.SQL.Clear;
        ADOQuery.SQL.Add('SELECT inf_obj_id, inf_obj_name, inf_obj_cod FROM lis1..inf_obj_node WHERE inf_obj_name LIKE ''%'+filter_str+'%'' order by inf_obj_name');
        ADOQuery.Open;
        fmFilter := TfmFilter.Create(0, ADOQuery, 'inf_obj_id', 'inf_obj_cod', 'inf_obj_name');
        if fmFilter.ShowModal=mrOk then begin
          cxButtonEdit3.Text := fmFilter.GetName;
          cxButtonEdit4.Text := fmFilter.GetCod;
          cxButtonEdit6.Text := fmFilter.GetName;
          cxButtonEdit7.Text := fmFilter.GetCod;
          cxButtonEdit12.Text := fmFilter.GetName;
          cxButtonEdit13.Text := fmFilter.GetCod;
        end;
      end;
    end;

    if (Sender = cxButtonEdit4) or (Sender = cxButtonEdit7) or (Sender = cxButtonEdit13) then begin
      if InputQuery('Поиск', 'Шаблон поиска станции по коду', filter_str) then begin
        ADOQuery.SQL.Clear;
        ADOQuery.SQL.Add('SELECT inf_obj_id, inf_obj_name, inf_obj_cod FROM lis1..inf_obj_node WHERE inf_obj_cod LIKE ''%'+filter_str+'%'' order by inf_obj_name');
        ADOQuery.Open;
        fmFilter := TfmFilter.Create(0, ADOQuery, 'inf_obj_id', 'inf_obj_cod', 'inf_obj_name');
        if fmFilter.ShowModal=mrOk then begin
          cxButtonEdit3.Text := fmFilter.GetName;
          cxButtonEdit4.Text := fmFilter.GetCod;
          cxButtonEdit6.Text := fmFilter.GetName;
          cxButtonEdit7.Text := fmFilter.GetCod;
          cxButtonEdit12.Text := fmFilter.GetName;
          cxButtonEdit13.Text := fmFilter.GetCod;
        end;
      end;
    end;


    if (Sender = cxButtonEdit9) or (Sender = cxButtonEdit15) then begin
      if InputQuery('Поиск', 'Шаблон поиска груза ЕТСНГ по названию', filter_str) then begin
        ADOQuery.SQL.Clear;
        ADOQuery.SQL.Add('SELECT inf_obj_id, inf_obj_name, inf_obj_cod FROM lis1..inf_obj_etsng WHERE inf_obj_name LIKE ''%'+filter_str+'%'' order by inf_obj_name');
        ADOQuery.Open;
        fmFilter := TfmFilter.Create(0, ADOQuery, 'inf_obj_id', 'inf_obj_cod', 'inf_obj_name');
        if fmFilter.ShowModal=mrOk then begin
          cxButtonEdit9.Text := fmFilter.GetName;
          cxButtonEdit10.Text := fmFilter.GetCod;
          cxButtonEdit15.Text := fmFilter.GetName;
          cxButtonEdit16.Text := fmFilter.GetCod;
        end;
      end;
    end;

    if (Sender = cxButtonEdit10) or (Sender = cxButtonEdit16) then begin
      if InputQuery('Поиск', 'Шаблон поиска груза ЕТСНГ по коду', filter_str) then begin
        ADOQuery.SQL.Clear;
        ADOQuery.SQL.Add('SELECT inf_obj_id, inf_obj_name, inf_obj_cod FROM lis1..inf_obj_etsng WHERE inf_obj_cod LIKE ''%'+filter_str+'%'' order by inf_obj_name');
        ADOQuery.Open;
        fmFilter := TfmFilter.Create(0, ADOQuery, 'inf_obj_id', 'inf_obj_cod', 'inf_obj_name');
        if fmFilter.ShowModal=mrOk then begin
          cxButtonEdit9.Text := fmFilter.GetName;
          cxButtonEdit10.Text := fmFilter.GetCod;
          cxButtonEdit15.Text := fmFilter.GetName;
          cxButtonEdit16.Text := fmFilter.GetCod;
        end;
      end;
    end;


  end;

end;

procedure TfmEtrFilter.cxCheckBox1PropertiesChange(Sender: TObject);
var i : integer;
begin
  for i := 0 to ComponentCount-1 do
    if (Components[i].InheritsFrom(TControl)) and (Sender<>Components[i]) then begin
      if (TControl(Components[i]).Tag = TControl(Sender).Tag) then begin
        TControl(Components[i]).Enabled := TcxCheckBox(Sender).Checked;
        if TWinControl(Components[i]).Enabled and Visible then
          FocusControl(TWinControl(Components[i]));
      end;
    end;
end;

end.
