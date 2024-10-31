unit InvoiceScoreReserveAdd;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, ExtCtrls, DB, ADODB, cxGraphics, cxControls,
  cxLookAndFeels, cxLookAndFeelPainters, cxContainer, cxEdit, dxSkinsCore,
  dxSkinBlack, dxSkinBlue, dxSkinBlueprint, dxSkinCaramel, dxSkinCoffee,
  dxSkinDarkRoom, dxSkinDarkSide, dxSkinDevExpressDarkStyle,
  dxSkinDevExpressStyle, dxSkinFoggy, dxSkinGlassOceans, dxSkinHighContrast,
  dxSkiniMaginary, dxSkinLilian, dxSkinLiquidSky, dxSkinLondonLiquidSky,
  dxSkinMcSkin, dxSkinMetropolis, dxSkinMetropolisDark, dxSkinMoneyTwins,
  dxSkinOffice2007Black, dxSkinOffice2007Blue, dxSkinOffice2007Green,
  dxSkinOffice2007Pink, dxSkinOffice2007Silver, dxSkinOffice2010Black,
  dxSkinOffice2010Blue, dxSkinOffice2010Silver, dxSkinOffice2013DarkGray,
  dxSkinOffice2013LightGray, dxSkinOffice2013White, dxSkinPumpkin, dxSkinSeven,
  dxSkinSevenClassic, dxSkinSharp, dxSkinSharpPlus, dxSkinSilver,
  dxSkinSpringTime, dxSkinStardust, dxSkinSummer2008, dxSkinTheAsphaltWorld,
  dxSkinsDefaultPainters, dxSkinValentine, dxSkinVS2010, dxSkinWhiteprint,
  dxSkinXmas2008Blue, cxTextEdit, cxButtonEdit, cxDropDownEdit, cxMaskEdit,
  cxLookupEdit, cxDBLookupEdit, cxDBLookupComboBox, cxGroupBox, cxCheckBox,
  cxCurrencyEdit, dxSkinscxPCPainter, dxBarBuiltInMenu, cxPC, dxLayoutContainer,
  dxLayoutControl, cxStyles, cxCustomData, cxFilter, cxData, cxDataStorage,
  cxNavigator, cxDBData, cxLabel, cxClasses,
  ComCtrls, dxCore, cxDateUtils, cxCalendar, dxBevel,
  cxPropertiesStore,  DateUtils, DBClient, dxSkinsdxBarPainter, dxBar, cxMemo,
  dxSkinsForm, cxGridCustomPopupMenu, cxGridPopupMenu, cxDBExtLookupComboBox, dxSkinOffice2016Colorful, dxSkinOffice2016Dark, dxSkinVisualStudio2013Blue, dxSkinVisualStudio2013Dark, dxSkinVisualStudio2013Light,
  dxSkinOffice2019Colorful, dxSkinTheBezier;

type
  TfmInvoiceScoreReserveAdd = class(TForm)
    Panel5: TPanel;
    BitBtn2: TBitBtn;
    BitBtn1: TBitBtn;
    Panel6: TPanel;
    cxPropertiesStore1: TcxPropertiesStore;
    Label2: TLabel;
    cxTextEdit1: TcxTextEdit;
    DateTimePicker3: TcxDateEdit;
    Label3: TLabel;
    Label1: TLabel;
    cxMemo1: TcxMemo;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure BitBtn1Click(Sender: TObject);
    procedure DateTimePicker3PropertiesEditValueChanged(Sender: TObject);
  private
    Finvoice_score_id : integer;

    FCnn : TADOConnection;

    Fold_num : string;
    // запомним номер присвоенный системой
    // если номер изменился, значит его перебили руками

    procedure SetUpdate(invoice_score_id: integer);
    procedure SetConnection(ACnn : TADOConnection);
  public
    constructor Create(AOwner: TApplication); reintroduce;
  published
    property _SetUpdate : integer write SetUpdate;
    property _SetConnection : TADOConnection write SetConnection;
  end;

var
  fmInvoiceScoreReserveAdd: TfmInvoiceScoreReserveAdd;

implementation

uses Raznoe, Contract, Filter, main, Period;

{$R *.dfm}

constructor TfmInvoiceScoreReserveAdd.Create(AOwner: TApplication);
begin
  Screen.Cursor := crHourglass;
  inherited Create(AOwner);

  Finvoice_score_id := -9;

  Screen.Cursor := crDefault;
end;

procedure TfmInvoiceScoreReserveAdd.DateTimePicker3PropertiesEditValueChanged(Sender: TObject);
var n : Integer;
begin
  Fold_num := GetCodByFirm(FCnn, Finvoice_score_id, -9, 99, DateTimePicker3.Date, n);
  cxTextEdit1.EditValue := Fold_num;
end;

procedure TfmInvoiceScoreReserveAdd.SetConnection(ACnn : TADOConnection);
begin
  FCnn := ACnn;

  DateTimePicker3.Date := Date;
end;

procedure TfmInvoiceScoreReserveAdd.SetUpdate(invoice_score_id: integer);
var Q: TADOQuery;
begin
  Screen.Cursor := crHourGlass;

  Finvoice_score_id := invoice_score_id;

  Q := TADOQuery.Create(nil);
  Q.Connection := FCnn;
  Q.SQL.Add('SELECT * FROM view_invoice_score_reserve WHERE invoice_score_reserve_id = ' + IntToStr(invoice_score_id) + '');
  Q.Open;

  Fold_num := ''; // Оставляем старый номер
  DateTimePicker3.EditValue := Q.FieldByName('score_date').Value;
  cxTextEdit1.EditValue := Q.FieldByName('score_cod').Value;
  cxMemo1.EditValue := Q.FieldByName('comment').Value;


  Q.Free;

  Screen.Cursor := crDefault;
end;

procedure TfmInvoiceScoreReserveAdd.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action := caFree;
end;

procedure TfmInvoiceScoreReserveAdd.BitBtn1Click(Sender: TObject);
var SP: TADOStoredProc;
begin
  SP := TADOStoredProc.Create(nil);
  SP.Connection := FCnn;
  SP.ProcedureName := 'sp_invoice_score_reserve_modify';
  SP.Parameters.Refresh;

  SP.Parameters.ParamByName('@invoice_score_id' ).Value := iif(Finvoice_score_id = -9, null, Finvoice_score_id);
  SP.Parameters.ParamByName('@type_action'      ).Value := iif(Finvoice_score_id = -9, 0, 1);
  SP.Parameters.ParamByName('@score_cod'        ).Value := iif(cxTextEdit1.EditValue = Fold_num, null, cxTextEdit1.EditValue);
  SP.Parameters.ParamByName('@score_date'       ).Value := DateTimePicker3.EditValue;
  SP.Parameters.ParamByName('@comment'          ).Value := cxMemo1.EditValue;

  try
    SP.ExecProc;
  except on E: Exception do
  end;
end;

end.
