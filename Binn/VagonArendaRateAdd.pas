unit VagonArendaRateAdd;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters,
  cxContainer, cxEdit, dxSkinsCore, dxSkinBlack, dxSkinBlue, dxSkinBlueprint,
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
  dxSkinXmas2008Blue, cxCheckBox, cxCurrencyEdit, cxTextEdit, cxMaskEdit,
  cxDropDownEdit, cxLookupEdit, cxDBLookupEdit, cxDBLookupComboBox, StdCtrls,
  ExtCtrls, ComCtrls, dxCore, cxDateUtils, cxCalendar, DBClient, ADODB,
  DB, dxSkinTheBezier, Vcl.Menus, cxButtons, dxSkinOffice2019Colorful;

type
  TfmVagonArendaRateAdd = class(TForm)
    Panel2: TPanel;
    Panel1: TPanel;
    Label4: TLabel;
    Label6: TLabel;
    Label5: TLabel;
    cxLookupComboBox1: TcxLookupComboBox;
    cxCurrencyEdit1: TcxCurrencyEdit;
    cxLookupComboBox2: TcxLookupComboBox;
    cxLookupComboBox7: TcxLookupComboBox;
    cxDateEdit5: TcxDateEdit;
    cxDateEdit1: TcxDateEdit;
    Label1: TLabel;
    Label2: TLabel;
    Query_Currency: TADOQuery;
    DS_Currency: TDataSource;
    DS_NDS: TDataSource;
    Query_NDS: TADOQuery;
    Query_TypeRate: TADOQuery;
    DS_TypeRate: TDataSource;
    Label3: TLabel;
    cxCurrencyEdit2: TcxCurrencyEdit;
    cxCheckBox1: TcxCheckBox;
    cxCheckBox3: TcxCheckBox;
    cxCheckBox2: TcxCheckBox;
    cxButton1: TcxButton;
    cxButton3: TcxButton;
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
    procedure cxCurrencyEdit1PropertiesEditValueChanged(Sender: TObject);
    procedure cxLookupComboBox7PropertiesEditValueChanged(Sender: TObject);
    procedure cxCheckBox1PropertiesChange(Sender: TObject);
    procedure cxButton1Click(Sender: TObject);
  private
    { Private declarations }
    Fset_group_upd: Boolean;
    procedure SetInsert(id: integer);
    procedure SetUpdate(CDS_Rate: TClientDataSet);
    function SetRateWithNDS: Variant;
    procedure SetGroupUpdateRate(str_vagon_arenda_id : string);
    procedure SetGroupAddRate(str_vagon_arenda_id : string);
    procedure SetDelLast(str_vagon_arenda_id : string);
  public
    { Public declarations }
    constructor Create(Owner: TComponent);
    property _SetUpdate : TClientDataSet write SetUpdate;
    property _SetInsert : integer write SetInsert;
    property _SetGroupUpdateRate : string write SetGroupUpdateRate;
    property _SetGroupAddRate : string write SetGroupAddRate;
    property _SetDelLast : string write SetDelLast;
  end;

var
  fmVagonArendaRateAdd: TfmVagonArendaRateAdd;

implementation

{$R *.dfm}

uses
  Main, Raznoe;

constructor TfmVagonArendaRateAdd.Create(Owner: TComponent);
begin
  inherited Create(Owner);

  Screen.Cursor := crHourglass;

  Fset_group_upd := false;

  Query_Currency.Open;
  Query_TypeRate.Open;
  Query_NDS.Open;

  MonitorEventFormOpen('OPEN_FORM', self.Name, fmMain.Lis, -9);

  Screen.Cursor := crDefault;
end;

procedure TfmVagonArendaRateAdd.cxButton1Click(Sender: TObject);
begin
  if Panel1.Enabled = True then
    if (cxDateEdit1.EditValue = NULL) and not Fset_group_upd then begin
      Application.MessageBox('Не выбрана дата начала действия!', 'Ошибка', MB_OK + MB_ICONERROR );
      ModalResult := mrNone;
    end
    else
      if ((cxDateEdit1.Date > cxDateEdit5.Date) and (cxDateEdit5.EditValue <> NULL)) and not Fset_group_upd then begin
        Application.MessageBox('Дата начала действия не может быть больше даты окончания!', 'Ошибка', MB_OK + MB_ICONERROR );
        ModalResult := mrNone;
      end
      else
        if (cxLookupComboBox1.EditValue = NULL) and (not Fset_group_upd or (Fset_group_upd and cxCheckBox1.Checked)) then begin
          Application.MessageBox('Не выбрана валюта!', 'Ошибка', MB_OK + MB_ICONERROR );
          ModalResult := mrNone;
        end
        else
          if (cxLookupComboBox2.EditValue = NULL) and (not Fset_group_upd or (Fset_group_upd and cxCheckBox2.Checked)) then begin
            Application.MessageBox('Не выбрана единица измерения!', 'Ошибка', MB_OK + MB_ICONERROR );
            ModalResult := mrNone;
          end
          else
            if (cxLookupComboBox7.EditValue = NULL) and (not Fset_group_upd or (Fset_group_upd and cxCheckBox3.Checked)) then begin
              Application.MessageBox('Не выбран НДС на ставку!', 'Ошибка', MB_OK + MB_ICONERROR );
              ModalResult := mrNone;
            end
            else
              if ((cxCurrencyEdit1.EditValue = NULL) or (cxCurrencyEdit1.EditValue < 0)) and (not Fset_group_upd or (Fset_group_upd and cxCheckBox1.Checked)) then begin
                Application.MessageBox('Укажите ставку большую нуля!', 'Ошибка', MB_OK + MB_ICONERROR );
                ModalResult := mrNone;
              end;

end;

procedure TfmVagonArendaRateAdd.cxCheckBox1PropertiesChange(Sender: TObject);
var
  i : integer;
begin
  for i := 0 to ComponentCount - 1 do
    if (Components[i].InheritsFrom(TControl)) and (Sender <> Components[i]) then begin
      if (TControl(Components[i]).Tag = TControl(Sender).Tag) then
        TControl(Components[i]).Enabled := TcxCheckBox(Sender).Checked;
    end;
end;

procedure TfmVagonArendaRateAdd.cxCurrencyEdit1PropertiesEditValueChanged(Sender: TObject);
begin
  if not Fset_group_upd or (Fset_group_upd and cxCheckBox3.Checked) then
   cxCurrencyEdit2.EditValue := SetRateWithNDS;
end;

procedure TfmVagonArendaRateAdd.cxLookupComboBox7PropertiesEditValueChanged(Sender: TObject);
begin
  cxCurrencyEdit2.EditValue := SetRateWithNDS;
end;

procedure TfmVagonArendaRateAdd.FormCloseQuery(Sender: TObject; var CanClose: Boolean);
begin
  CanClose := (ModalResult = mrOk) or (ModalResult = mrCancel);
end;

procedure TfmVagonArendaRateAdd.SetDelLast(str_vagon_arenda_id: string);
begin
 Panel1.Enabled := False;
 Caption := 'Удаление последней ставки';
end;

procedure TfmVagonArendaRateAdd.SetGroupAddRate(str_vagon_arenda_id: string);
begin
  Screen.Cursor := crHourglass;

  cxDateEdit1.EditValue := NULL;
  cxDateEdit5.EditValue := NULL;
  cxCurrencyEdit1.EditValue := 0;
  cxCurrencyEdit2.EditValue := 0;
  cxLookupComboBox1.EditValue := 3; // Рубли
  cxLookupComboBox2.EditValue := Query_TypeRate['inf_obj_id'];
  cxLookupComboBox7.EditValue := Query_NDS['inf_obj_id'];

  Screen.Cursor := crDefault;
end;

procedure TfmVagonArendaRateAdd.SetGroupUpdateRate(str_vagon_arenda_id: string);
var
  i, k : integer;
begin
  Screen.Cursor := crHourglass;

  Fset_group_upd := True;

  Label3.Visible := False;
  cxCurrencyEdit2.Visible := False;
  Self.ClientHeight := Self.ClientHeight - cxCurrencyEdit2.Height;
  cxDateEdit1.EditValue := NULL;
  cxDateEdit1.Style.Color := clBtnFace;
  cxDateEdit1.Properties.ReadOnly := True;
  cxDateEdit5.EditValue := NULL;
  //DateEdit5.Style.Color := clBtnFace;
  //cxDateEdit5.Properties.ReadOnly := True;
  cxCurrencyEdit1.EditValue := 0;
  cxCurrencyEdit2.EditValue := 0;
  cxLookupComboBox1.EditValue := Query_Currency['currency_id'];
  cxLookupComboBox2.EditValue := Query_TypeRate['inf_obj_id'];
  cxLookupComboBox7.EditValue := Query_NDS['inf_obj_id'];

  for i := 0 to ComponentCount-1 do begin
    if (TControl(Components[i]).Tag <> 0) AND (Components[i].ClassName = 'TcxCheckBox') then
      TControl(Components[i]).Visible := True;

    if (TControl(Components[i]).Tag <> 0) AND (Components[i].ClassName = 'TcxCheckBox') then begin
      for k := 0 to ComponentCount - 1 do begin
        if (Components[k].InheritsFrom(TControl)) then
          if (TControl(Components[i]).Tag = TControl(Components[k]).Tag) and (i <> k) then
            TControl(Components[k]).Enabled := False;
      end;
    end;
  end;

  Screen.Cursor := crDefault;
end;

procedure TfmVagonArendaRateAdd.SetInsert(id: integer);
begin
  Screen.Cursor := crHourglass;

  cxDateEdit1.EditValue := NULL;
  cxDateEdit5.EditValue := NULL;
  cxCurrencyEdit1.EditValue := 0;
  cxCurrencyEdit2.EditValue := 0;
  cxLookupComboBox1.EditValue := 3; // Рубли
  cxLookupComboBox2.EditValue := Query_TypeRate['inf_obj_id'];
  Query_NDS.Locate('inf_obj_cod', '20', []);
  cxLookupComboBox7.EditValue := Query_NDS['inf_obj_id'];

  Screen.Cursor := crDefault;
end;

function TfmVagonArendaRateAdd.SetRateWithNDS: Variant;
begin
  if Query_NDS.Locate('inf_obj_id', cxLookupComboBox7.EditValue, []) then
    Result := cxCurrencyEdit1.Value * (1.00 + Query_NDS.FieldByName('inf_obj_cod_int').AsInteger/100);
end;

procedure TfmVagonArendaRateAdd.SetUpdate(CDS_Rate: TClientDataSet);
begin
  cxDateEdit1.EditValue := CDS_Rate.FieldByName('dt_begin').Value;
  cxDateEdit5.EditValue := CDS_Rate.FieldByName('dt_end').Value;
  cxLookupComboBox1.EditValue := CDS_Rate.FieldByName('currency_id').Value;
  cxLookupComboBox2.EditValue := CDS_Rate.FieldByName('type_rate_id').Value;
  cxLookupComboBox7.EditValue := CDS_Rate.FieldByName('type_nds_id').Value;
  cxCurrencyEdit1.EditValue := CDS_Rate.FieldByName('rate_val').Value;
  cxCurrencyEdit2.EditValue := CDS_Rate.FieldByName('rate_val_nds').Value;

end;

end.
