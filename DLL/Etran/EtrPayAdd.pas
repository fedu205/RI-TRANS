unit EtrPayAdd;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, cxGraphics, cxDropDownEdit, cxCalendar, cxMaskEdit, cxButtonEdit,
  cxControls, cxContainer, cxEdit, cxTextEdit, StdCtrls, Buttons, ExtCtrls,
  cxLookupEdit, cxDBLookupEdit, cxDBLookupComboBox, ADODB, cxPropertiesStore, DB,
  cxCurrencyEdit, Raznoe, cxLookAndFeels, cxLookAndFeelPainters, dxSkinsCore,
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
  dxSkinXmas2008Blue, Vcl.ComCtrls, dxCore, cxDateUtils, cxClasses;

type
  TfmEtrPayAdd = class(TForm)
    Panel3: TPanel;
    BitBtn2: TBitBtn;
    BitBtn1: TBitBtn;
    Panel1: TPanel;
    Label2: TLabel;
    Label31: TLabel;
    Label6: TLabel;
    Label3: TLabel;
    cxTextEdit15: TcxTextEdit;
    cxDateEdit1: TcxDateEdit;
    cxDateEdit2: TcxDateEdit;
    cxLookupComboBox1: TcxLookupComboBox;
    Label1: TLabel;
    cxPropertiesStore1: TcxPropertiesStore;
    Query_Oper: TADOQuery;
    Query_Sub: TADOQuery;
    DS_Sub: TDataSource;
    DS_Oper: TDataSource;
    cxLookupComboBox2: TcxLookupComboBox;
    Label4: TLabel;
    cxCurrencyEdit1: TcxCurrencyEdit;
    procedure BitBtn1Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    Ftype_action  : integer;
    Fpay_id       : integer;

    procedure SetUpdate(pay_id: integer);
  public
    constructor Create(AOwner: TApplication); reintroduce;
  published
    property _SetUpdate  : integer write SetUpdate;
    property _GetPayId : integer read  Fpay_id;
  end;

var
  fmEtrPayAdd: TfmEtrPayAdd;

implementation


{$R *.dfm}

constructor TfmEtrPayAdd.Create(AOwner: TApplication);
begin
  Screen.Cursor := crHourglass;
  inherited Create(AOwner);

  Ftype_action := 0;
  Fpay_id      := -9;

  Query_Oper.Open;
  Query_Sub.Open;

  cxLookupComboBox1.EditValue := Query_Oper.FieldByName('inf_obj_id').AsInteger;
  cxLookupComboBox2.EditValue := Query_Sub.FieldByName('inf_obj_id').AsInteger;


  Screen.Cursor := crDefault;
end;

procedure TfmEtrPayAdd.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action := caFree;
end;


procedure TfmEtrPayAdd.SetUpdate(pay_id:  integer);
var Q : TADOQuery;
begin
  Ftype_action := 1;
  Fpay_id    := pay_id;

  Q := TADOQuery.Create(nil);
//  Q.Connection := fmEtrMain.ADOEtran;
  Q.SQL.Add('SELECT * FROM view_etran_pay WHERE pay_id = ' + IntToStr(Fpay_id));
  Q.Open;

  Caption := Caption + ' [№ записи ' + IntToStr(Fpay_id) + ']';


  cxTextEdit15.EditValue      := Q.FieldByName('pay_cod').Value;
  cxCurrencyEdit1.EditValue   := Q.FieldByName('pay_sum').Value;
  cxDateEdit1.EditValue       := Q.FieldByName('enter_date').Value;
  cxDateEdit2.EditValue       := Q.FieldByName('pay_date').Value;
  cxLookupComboBox1.EditValue := Q.FieldByName('oper_id').Value;
  cxLookupComboBox2.EditValue := Q.FieldByName('sub_id').Value;

  Q.Free;
end;

procedure TfmEtrPayAdd.BitBtn1Click(Sender: TObject);
var SP_etran_pay_modify: TADOStoredProc;
begin
//  ModalResult := mrOk;
//
//  if cxDateEdit1.EditValue = null then begin
//    Application.MessageBox('Задайте срок действия.', 'ВНИМАНИЕ', MB_ICONWARNING or MB_OK);
//    ModalResult := mrNone;
//    Exit;
//  end;

  SP_etran_pay_modify := TADOStoredProc.Create(nil);
//  SP_etran_pay_modify.Connection := fmEtrMain.ADOEtran;
  SP_etran_pay_modify.ProcedureName := 'sp_etran_pay_modify';
  SP_etran_pay_modify.Parameters.Refresh;

  SP_etran_pay_modify.Parameters.ParamByName('@pay_id'     ).Value := iif(Fpay_id = -9, null, Fpay_id);
  SP_etran_pay_modify.Parameters.ParamByName('@type_action').Value := Ftype_action;
  SP_etran_pay_modify.Parameters.ParamByName('@pay_cod'    ).Value := cxTextEdit15.EditValue;
  SP_etran_pay_modify.Parameters.ParamByName('@enter_date' ).Value := cxDateEdit1.EditValue;
  SP_etran_pay_modify.Parameters.ParamByName('@pay_date'   ).Value := cxDateEdit2.EditValue;
  SP_etran_pay_modify.Parameters.ParamByName('@pay_sum'    ).Value := cxCurrencyEdit1.EditValue;
  SP_etran_pay_modify.Parameters.ParamByName('@oper_id'    ).Value := cxLookupComboBox1.EditValue;
  SP_etran_pay_modify.Parameters.ParamByName('@sub_id'     ).Value := cxLookupComboBox2.EditValue;

  try
    SP_etran_pay_modify.ExecProc;
    Fpay_id := SP_etran_pay_modify.Parameters.ParamByName('@pay_id').Value;
  except
    SP_etran_pay_modify.Free;
    ModalResult := mrNone;
    Exit;
  end;

  SP_etran_pay_modify.Free;
end;


end.
