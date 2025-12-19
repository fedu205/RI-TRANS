unit FactTrackTenderAdd;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms, Dialogs, Default,
  DB, ADODB, Menus, StdCtrls, ExtCtrls, ComCtrls,
  dxSkinsCore, dxSkinBlack, dxSkinBlue, dxSkinBlueprint, dxSkinCaramel, dxSkinCoffee, dxSkinDarkroom, dxSkinDarkSide, dxSkinDevExpressDarkStyle,
  dxSkinDevExpressStyle, dxSkinFoggy, dxSkinGlassOceans, dxSkinHighContrast, dxSkinLilian, dxSkinLiquidSky, dxSkinLondonLiquidSky, dxSkinMcSkin,
  dxSkinMetropolis, dxSkinMetropolisDark, dxSkinMoneyTwins, dxSkinOffice2007Black, dxSkinOffice2007Blue, dxSkinOffice2007Green, dxSkinOffice2007Pink,
  dxSkinOffice2007Silver, dxSkinOffice2010Black, dxSkinOffice2010Blue, dxSkinOffice2010Silver, dxSkinOffice2013DarkGray, dxSkinOffice2013LightGray,
  dxSkinOffice2013White, dxSkinOffice2016Colorful, dxSkinOffice2016Dark, dxSkinPumpkin, dxSkinSeven, dxSkinSevenClassic, dxSkinSharp, dxSkinSharpPlus,
  dxSkinSilver, dxSkinSpringtime, dxSkinStardust, dxSkinSummer2008, dxSkinTheAsphaltWorld, dxSkinTheBezier, dxSkinValentine, dxSkinVisualStudio2013Blue,
  dxSkinVisualStudio2013Dark, dxSkinVisualStudio2013Light, dxSkinVS2010, dxSkinWhiteprint, dxSkinXmas2008Blue, cxGraphics, cxLookAndFeels,
  cxLookAndFeelPainters, cxButtons, cxControls, cxContainer, cxEdit, dxCoreGraphics, dxCore, cxDateUtils, cxSpinEdit, cxTimeEdit, cxTextEdit,
  cxDropDownEdit, cxLookupEdit, cxDBLookupEdit, cxDBLookupComboBox, cxCalendar, cxMaskEdit, cxButtonEdit, cxCurrencyEdit, cxClasses, cxPropertiesStore, cxMemo;

type
  TfmFactTrackTenderAdd = class(TForm)
    Panel6: TPanel;
    cxButton3: TcxButton;
    cxButton1: TcxButton;
    Panel2: TPanel;
    Label18: TLabel;
    Label1: TLabel;
    Label2: TLabel;
    Label4: TLabel;
    cxDateEdit1: TcxDateEdit;
    cxTextEdit5: TcxTextEdit;
    cxDateEdit2: TcxDateEdit;
    cxDateEdit3: TcxDateEdit;
    Label3: TLabel;
    Label5: TLabel;
    cxDateEdit4: TcxDateEdit;
    cxDateEdit5: TcxDateEdit;
    cxDateEdit6: TcxDateEdit;
    Label6: TLabel;
    Panel1: TPanel;
    Label7: TLabel;
    Label8: TLabel;
    Label9: TLabel;
    Label10: TLabel;
    cxCurrencyEdit1: TcxCurrencyEdit;
    cxCurrencyEdit2: TcxCurrencyEdit;
    cxCurrencyEdit3: TcxCurrencyEdit;
    cxCurrencyEdit4: TcxCurrencyEdit;
    cxPropertiesStore1: TcxPropertiesStore;
    GroupBox1: TGroupBox;
    cxMemo1: TcxMemo;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure cxButton1Click(Sender: TObject);
  private
    Ftype_action : integer;
    Ftender_id : integer;
    procedure SetUpdate(tender_id : integer);
  public
    constructor Create(AOwner: TApplication);
  published
    property _SetUpdate : integer write SetUpdate;
    property _GetTenderId : integer read Ftender_id;
  end;

var
  fmFactTrackTenderAdd: TfmFactTrackTenderAdd;

implementation
  uses Raznoe, FactTrackTender;
{$R *.dfm}

constructor TfmFactTrackTenderAdd.Create(AOwner: TApplication);
begin
  inherited Create(nil);
  Ftender_id := -9;
  Ftype_action := 0;

end;

procedure TfmFactTrackTenderAdd.cxButton1Click(Sender: TObject);
var SP: TADOStoredProc;
begin
  SP := TADOStoredProc.Create(nil);
  SP.Connection := fmFactTrackTender.ADOTender;
  SP.ProcedureName := 'sp_fact_track_tender_modify';
  SP.Parameters.Refresh;

  SP.Parameters.ParamByName('@tender_id'          ).Value := iif(Ftender_id=-9, null, Ftender_id);
  SP.Parameters.ParamByName('@type_action'        ).Value := Ftype_action;
  SP.Parameters.ParamByName('@tender_cod'         ).Value := cxTextEdit5.EditValue;
  SP.Parameters.ParamByName('@tender_date'        ).Value := cxDateEdit2.EditValue;
  SP.Parameters.ParamByName('@tender_date_registr').Value := cxDateEdit4.EditValue;
  SP.Parameters.ParamByName('@tender_date_public' ).Value := cxDateEdit1.EditValue;
  SP.Parameters.ParamByName('@tender_date_force'  ).Value := cxDateEdit3.EditValue;
  SP.Parameters.ParamByName('@tender_date_begin'  ).Value := cxDateEdit5.EditValue;
  SP.Parameters.ParamByName('@tender_date_end'    ).Value := cxDateEdit6.EditValue;
  SP.Parameters.ParamByName('@tender_rate_1'      ).Value := cxCurrencyEdit1.EditValue;
  SP.Parameters.ParamByName('@tender_rate_2'      ).Value := cxCurrencyEdit2.EditValue;
  SP.Parameters.ParamByName('@tender_rate_3'      ).Value := cxCurrencyEdit3.EditValue;
  SP.Parameters.ParamByName('@tender_rate_4'      ).Value := cxCurrencyEdit4.EditValue;
  SP.Parameters.ParamByName('@comment'            ).Value := cxMemo1.EditValue;
  SP.ExecProc;
  Ftender_id := SP.Parameters.ParamByName('@tender_id').Value;

  SP.Free;
end;

procedure TfmFactTrackTenderAdd.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action := caFree;
end;

procedure TfmFactTrackTenderAdd.SetUpdate(tender_id: integer);
var Q : TADOQuery;
begin
  Screen.Cursor := crHourglass;

  Ftype_action := 1;
  Ftender_id := tender_id;

  Q := TADOQuery.Create(nil);
  Q.Connection := fmFactTrackTender.ADOTender;
  Q.SQL.Add('SELECT * FROM view_fact_track_tender WHERE tender_id = ' + IntToStr(Ftender_id));
  Q.Open;

  cxTextEdit5.EditValue := Q.FieldByName('tender_cod'         ).Value;
  cxDateEdit2.EditValue := Q.FieldByName('tender_date'        ).Value;
  cxDateEdit4.EditValue := Q.FieldByName('tender_date_registr').Value;
  cxDateEdit1.EditValue := Q.FieldByName('tender_date_public' ).Value;
  cxDateEdit3.EditValue := Q.FieldByName('tender_date_force'  ).Value;
  cxDateEdit5.EditValue := Q.FieldByName('tender_date_begin'  ).Value;
  cxDateEdit6.EditValue := Q.FieldByName('tender_date_end'    ).Value;
  cxCurrencyEdit1.EditValue := Q.FieldByName('tender_rate_1'      ).Value;
  cxCurrencyEdit2.EditValue := Q.FieldByName('tender_rate_2'      ).Value;
  cxCurrencyEdit3.EditValue := Q.FieldByName('tender_rate_3'      ).Value;
  cxCurrencyEdit4.EditValue := Q.FieldByName('tender_rate_4'      ).Value;
  cxMemo1.EditValue := Q.FieldByName('comment').Value;

  Q.Free;
  Screen.Cursor := crDefault;
end;

end.
