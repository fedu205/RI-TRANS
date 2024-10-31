unit InvoiceHeaderAdd;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Menus,  DB,  ADODB, ExtCtrls, DateUtils,
  cxLookupEdit, cxDBLookupEdit, cxDBLookupComboBox, cxCurrencyEdit, cxDropDownEdit, cxMemo, cxButtonEdit, cxTextEdit, cxMaskEdit, cxCalendar,
  cxControls, cxContainer, cxEdit, cxLabel, StdCtrls, cxButtons, cxLookAndFeels, cxLookAndFeelPainters, cxGraphics, cxPropertiesStore,
  ComCtrls, dxCore, cxDateUtils, cxClasses, cxCheckBox, dxSkinsCore, dxSkinBlack, dxSkinBlue, dxSkinBlueprint, dxSkinCaramel,
  dxSkinCoffee, dxSkinDarkroom, dxSkinDarkSide, dxSkinDevExpressDarkStyle, dxSkinDevExpressStyle, dxSkinFoggy, dxSkinGlassOceans,
  dxSkinHighContrast, dxSkiniMaginary, dxSkinLilian, dxSkinLiquidSky, dxSkinLondonLiquidSky, dxSkinMcSkin, dxSkinMetropolis,
  dxSkinMetropolisDark, dxSkinMoneyTwins, dxSkinOffice2007Black, dxSkinOffice2007Blue, dxSkinOffice2007Green, dxSkinOffice2007Pink,
  dxSkinOffice2007Silver, dxSkinOffice2010Black, dxSkinOffice2010Blue, dxSkinOffice2010Silver, dxSkinOffice2013DarkGray,
  dxSkinOffice2013LightGray, dxSkinOffice2013White, dxSkinOffice2016Colorful, dxSkinOffice2016Dark, dxSkinPumpkin, dxSkinSeven,
  dxSkinSevenClassic, dxSkinSharp, dxSkinSharpPlus, dxSkinSilver, dxSkinSpringtime, dxSkinStardust, dxSkinSummer2008, dxSkinTheAsphaltWorld,
  dxSkinTheBezier, dxSkinsDefaultPainters, dxSkinValentine, dxSkinVisualStudio2013Blue, dxSkinVisualStudio2013Dark,
  dxSkinVisualStudio2013Light, dxSkinVS2010, dxSkinWhiteprint, dxSkinXmas2008Blue, dxSkinOffice2019Colorful;

type
  TfmInvoiceHeaderAdd = class(TForm)
    Panel1: TPanel;
    cxButton1: TcxButton;
    cxButton2: TcxButton;
    Panel2: TPanel;
    cxLabel1: TcxLabel;
    cxDateEdit1: TcxDateEdit;
    cxLabel3: TcxLabel;
    cxLabel5: TcxLabel;
    cxMemo1: TcxMemo;
    cxMemo2: TcxMemo;
    Query_Language: TADOQuery;
    DS_Language: TDataSource;
    cxPropertiesStore1: TcxPropertiesStore;
    cxLabel2: TcxLabel;
    cxLookupComboBox2: TcxLookupComboBox;
    cxTextEdit1: TcxTextEdit;
    cxLabel4: TcxLabel;
    cxLabel6: TcxLabel;
    cxMemo3: TcxMemo;
    cxDateEdit2: TcxDateEdit;
    cxCheckBox1: TcxCheckBox;
    procedure cxButton1Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    Finvoice_header_id : integer;
    Ftype_action       : integer;
    FConnnection       : TADOConnection;
  public
    constructor Create(AOwner : Tapplication);

    procedure _InsertInvoiceHeader;
    procedure _UpdateInvoiceHeader(invoice_header_id : integer);
  published
    property _invoice_header_id : integer read Finvoice_header_id;
  end;

var
  fmInvoiceHeaderAdd: TfmInvoiceHeaderAdd;

implementation
  uses Raznoe, default, InvoiceHeader;

{$R *.dfm}

constructor TfmInvoiceHeaderAdd.Create(AOwner : Tapplication);
begin
  Screen.Cursor := crHourglass;
  inherited Create(AOwner);

  Query_Language.Open;

  Screen.Cursor := crDefault;
end;

procedure TfmInvoiceHeaderAdd.cxButton1Click(Sender: TObject);
var
  SP : TADOStoredProc;
begin
  Screen.Cursor := crHourglass;

  SP := TADOStoredProc.Create(nil);
  SP.Connection := fmInvoiceHeader.ADOInvoiceHeader;
  SP.ProcedureName := 'sp_invoice_header_modify';
  SP.Parameters.Refresh;

  SP.Parameters.ParamByName('@type_action').Value        := Ftype_action;
  SP.Parameters.ParamByName('@invoice_header_id').Value  := Finvoice_header_id;
  SP.Parameters.ParamByName('@header_description').Value := cxTextEdit1.Text;
  SP.Parameters.ParamByName('@header_language_id').Value := cxLookupComboBox2.EditValue;
  SP.Parameters.ParamByName('@header_name').Value        := cxMemo1.Text;
  SP.Parameters.ParamByName('@header_address').Value     := cxMemo2.Text;
  SP.Parameters.ParamByName('@header_bank').Value        := cxMemo3.Text;
  SP.Parameters.ParamByName('@date_begin').Value         := cxDateEdit1.EditValue;
  SP.Parameters.ParamByName('@date_end').Value           := cxDateEdit2.EditValue;
  SP.Parameters.ParamByName('@set_only_marked_contract').Value  := cxCheckBox1.EditValue;

  try
    SP.ExecProc;
    Finvoice_header_id := SP.Parameters.ParamByName('@invoice_header_id').Value;
  except
    Screen.Cursor := crDefault;
  end;

  SP.Free;

  Screen.Cursor := crDefault;
end;

procedure TfmInvoiceHeaderAdd._InsertInvoiceHeader;
begin
  Screen.Cursor := crHourglass;

  Ftype_action := 0;
  Finvoice_header_id := -9;

  cxLookupComboBox2.ItemIndex := 0;

  cxDateEdit1.EditValue := StartOfTheYear(Date);
  cxDateEdit2.EditValue := EndOfTheYear(Date);

  Screen.Cursor := crDefault;
end;

procedure TfmInvoiceHeaderAdd._UpdateInvoiceHeader(invoice_header_id : integer);
var
  Query : TADOQuery;
begin
  Screen.Cursor := crHourglass;

  Ftype_action := 1;
  Finvoice_header_id := invoice_header_id;

  Query := TADOQuery.Create(nil);
  Query.Connection := fmInvoiceHeader.ADOInvoiceHeader;
  Query.SQL.Add('SELECT * FROM invoice_header');
  Query.SQL.Add('WHERE invoice_header_id = ' + IntToStr(Finvoice_header_id));
  Query.Open;

  cxTextEdit1.EditValue       := Query.FieldByName('header_description').Value;
  cxMemo1.EditValue           := Query.FieldByName('header_name').Value;
  cxMemo2.EditValue           := Query.FieldByName('header_address').Value;
  cxMemo3.EditValue           := Query.FieldByName('header_bank').Value;
  cxDateEdit1.EditValue       := Query.FieldByName('date_begin').Value;
  cxDateEdit2.EditValue       := Query.FieldByName('date_end').Value;
  cxLookupComboBox2.EditValue := Query.FieldByName('header_language_id').Value;
  cxCheckBox1.EditValue       := Query.FieldByName('set_only_marked_contract').Value;
  Query.Free;

  Screen.Cursor := crDefault;
end;


procedure TfmInvoiceHeaderAdd.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action := caFree;
end;


end.
