unit FirmContactAdd;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms, Raznoe,
  Dialogs, cxControls, cxContainer, cxEdit, cxTextEdit, cxMemo, StdCtrls, Buttons,
  ExtCtrls, cxGraphics, DB, ADODB, cxMaskEdit, cxDropDownEdit, cxLookupEdit, cxDBLookupEdit,
  cxDBLookupComboBox, cxPropertiesStore, cxCalendar, DBClient, cxCheckBox, cxLookAndFeels, cxLookAndFeelPainters, ComCtrls, dxCore, cxDateUtils, cxClasses, dxSkinsCore, dxSkinBlack, dxSkinBlue,
  dxSkinBlueprint, dxSkinCaramel, dxSkinCoffee, dxSkinDarkroom, dxSkinDarkSide, dxSkinDevExpressDarkStyle, dxSkinDevExpressStyle, dxSkinFoggy, dxSkinGlassOceans, dxSkinHighContrast, dxSkiniMaginary,
  dxSkinLilian, dxSkinLiquidSky, dxSkinLondonLiquidSky, dxSkinMcSkin, dxSkinMetropolis, dxSkinMetropolisDark, dxSkinMoneyTwins, dxSkinOffice2007Black, dxSkinOffice2007Blue, dxSkinOffice2007Green,
  dxSkinOffice2007Pink, dxSkinOffice2007Silver, dxSkinOffice2010Black, dxSkinOffice2010Blue, dxSkinOffice2010Silver, dxSkinOffice2013DarkGray, dxSkinOffice2013LightGray, dxSkinOffice2013White,
  dxSkinOffice2016Colorful, dxSkinOffice2016Dark, dxSkinPumpkin, dxSkinSeven, dxSkinSevenClassic, dxSkinSharp, dxSkinSharpPlus, dxSkinSilver, dxSkinSpringtime, dxSkinStardust, dxSkinSummer2008,
  dxSkinTheAsphaltWorld, dxSkinTheBezier, dxSkinsDefaultPainters, dxSkinValentine, dxSkinVisualStudio2013Blue, dxSkinVisualStudio2013Dark, dxSkinVisualStudio2013Light, dxSkinVS2010, dxSkinWhiteprint,
  dxSkinXmas2008Blue, Vcl.Menus, cxButtons, dxSkinOffice2019Colorful;

type
  TfmFirmContactAdd = class(TForm)
    Panel3: TPanel;
    cxPropertiesStore1: TcxPropertiesStore;
    Panel1: TPanel;
    Label1: TLabel;
    cxLookupComboBox1: TcxLookupComboBox;
    GroupBox2: TGroupBox;
    cxMemo2: TcxMemo;
    Query_Type: TADOQuery;
    DS_Type: TDataSource;
    Panel6: TPanel;
    Label31: TLabel;
    cxDateEdit1: TcxDateEdit;
    cxDateEdit2: TcxDateEdit;
    Label19: TLabel;
    GroupBox1: TGroupBox;
    cxMemo1: TcxMemo;
    Panel2: TPanel;
    cxCheckBox1: TcxCheckBox;
    cxCheckBox2: TcxCheckBox;
    Panel5: TPanel;
    Label3: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    cxTextEdit3: TcxTextEdit;
    cxTextEdit4: TcxTextEdit;
    cxTextEdit16: TcxTextEdit;
    cxDateEdit3: TcxDateEdit;
    Label2: TLabel;
    cxTextEdit10: TcxTextEdit;
    Label4: TLabel;
    cxTextEdit11: TcxTextEdit;
    Label5: TLabel;
    cxTextEdit12: TcxTextEdit;
    cxButton1: TcxButton;
    cxButton3: TcxButton;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure cxButton1Click(Sender: TObject);
    procedure cxTextEdit10PropertiesValidate(Sender: TObject; var DisplayValue: Variant; var ErrorText: TCaption; var Error: Boolean);
  private
    Ffirm_contact_id : integer;
    Ffirm_id         : integer;
    FClient_Contact  : TClientDataSet;
    Ftype_action     : integer;
    Ftype_group_contact : integer;

    procedure SetUpdate(PrimaryKey: integer);
  public
    constructor Create(AOwner: TApplication; type_group_contact: integer; Client_Contact: TClientDataSet; firm_id: integer; firm_name: string);
  published
    property _SetUpdate : integer write SetUpdate;
  end;

var
  fmFirmContactAdd: TfmFirmContactAdd;

implementation
  uses Main;

{$R *.dfm}
constructor TfmFirmContactAdd.Create(AOwner: TApplication; type_group_contact: integer; Client_Contact: TClientDataSet; firm_id: integer; firm_name: string);
begin
  inherited Create(AOwner);

  Screen.Cursor := crHourglass;

  FClient_Contact := Client_Contact;
  Ftype_action := 0;
  Ffirm_contact_id := -9;
  Ffirm_id := firm_id;
  Ftype_group_contact := type_group_contact;

  Self.Caption := Self.Caption + ' (' + firm_name + ')';
  cxDateEdit1.EditValue := Date;

  case Ftype_group_contact of
    1 : begin
          Query_Type.Parameters.ParamByName('cod_from').Value := 10;
          Query_Type.Parameters.ParamByName('cod_to').Value   := 14;

          GroupBox1.Caption := 'Адрес';

          Panel2.Visible := False;
          Panel5.Visible := False;
          GroupBox2.Visible := False;
          Panel6.Align := alBottom;
          GroupBox1.Align := alClient;
        end;
    2 : begin
          Query_Type.Parameters.ParamByName('cod_from').Value := 15;
          Query_Type.Parameters.ParamByName('cod_to').Value   := 19;

          GroupBox1.Caption := 'Тел./Факс';

          GroupBox1.Visible := False;
          Panel2.Visible := False;
          Label2.Visible := False;
          cxDateEdit3.Visible := False;
          GroupBox2.Visible := False;

          Panel6.Align := alBottom;
          Panel5.Align := alClient;
        end;
    3 : begin
          Query_Type.Parameters.ParamByName('cod_from').Value := 00;
          Query_Type.Parameters.ParamByName('cod_to').Value   := 09;

          GroupBox1.Caption := 'Банковские реквизиты';

          Panel2.Visible := False;
          Panel5.Visible := False;
          GroupBox2.Visible := False;
          Panel6.Align := alBottom;
          GroupBox1.Align := alClient;
        end;
    4 : begin
          Query_Type.Parameters.ParamByName('cod_from').Value := 20;
          Query_Type.Parameters.ParamByName('cod_to').Value   := 999;

          GroupBox1.Caption := 'Фамилия И.О.';
        end;
  end;

  Query_Type.Open;
  cxLookupComboBox1.ItemIndex := 0;

  MonitorEventFormOpen('OPEN_FORM', self.Name, fmMain.Lis, -9);
  Screen.Cursor := crDefault;
end;

procedure TfmFirmContactAdd.cxButton1Click(Sender: TObject);
begin
  if (cxMemo1.Text = '') and (GroupBox1.Visible) then begin
    Application.MessageBox(PChar('Введите ' + GroupBox1.Caption), 'ВНИМАНИЕ', MB_OK);
    ModalResult := mrNone;
    Exit;
  end;

  if Ftype_group_contact = 4 then begin
    if (not cxTextEdit10.ValidateEdit) then begin
      cxTextEdit10.SetFocus;
      Application.MessageBox('Не указана "Фамилия"', 'Внимание', MB_OK);
      ModalResult := mrNone;
      Exit;
    end;

    if (not cxTextEdit11.ValidateEdit) then begin
      cxTextEdit11.SetFocus;
      Application.MessageBox('Не указано "Имя"', 'Внимание', MB_OK);
      ModalResult := mrNone;
      Exit;
    end;

    if (not cxTextEdit12.ValidateEdit) then begin
      cxTextEdit12.SetFocus;
      Application.MessageBox('Не указано "Отчество"', 'Внимание', MB_OK);
      ModalResult := mrNone;
      Exit;
    end;
  end;


  Screen.Cursor := crHourglass;

  if Ftype_action = 0 then
    FClient_Contact.Append
  else
    FClient_Contact.Edit;

  if Ffirm_contact_id = -9 then
    FClient_Contact.FieldByName('type_action').Value := 0 // (Insert and Update) = Insert
  else
    FClient_Contact.FieldByName('type_action').Value := Ftype_action; // Insert or Update

  FClient_Contact.FieldByName('firm_contact_id').Value := Ffirm_contact_id;
  FClient_Contact.FieldByName('firm_id').Value := Ffirm_id;

  Query_Type.Locate('inf_obj_id', cxLookupComboBox1.EditValue, []);
  FClient_Contact.FieldByName('type_contact_id').Value   := Query_Type.FieldByName('inf_obj_id').Value;
  FClient_Contact.FieldByName('type_contact_cod').Value  := Query_Type.FieldByName('inf_obj_cod').Value;
  FClient_Contact.FieldByName('type_contact_name').Value := Query_Type.FieldByName('inf_obj_name').Value;

  FClient_Contact.FieldByName('date_begin').Value := cxDateEdit1.EditValue;
  FClient_Contact.FieldByName('date_end').Value   := cxDateEdit2.EditValue;

  FClient_Contact.FieldByName('set_default').Value          := cxCheckBox1.EditValue;
  FClient_Contact.FieldByName('firm_contact_name').Value    := cxMemo1.EditValue;
  FClient_Contact.FieldByName('firm_contact_comment').Value := cxMemo2.EditValue;
  FClient_Contact.FieldByName('firm_contact_telefon').Value := cxTextEdit3.EditValue;
  FClient_Contact.FieldByName('firm_contact_fax').Value     := cxTextEdit16.EditValue;
  FClient_Contact.FieldByName('firm_contact_email').Value   := cxTextEdit4.EditValue;
  FClient_Contact.FieldByName('date_birthday').Value        := cxDateEdit3.EditValue;

  FClient_Contact.FieldByName('set_edo_sign').Value := cxCheckBox2.EditValue;
  FClient_Contact.FieldByName('family').Value := cxTextEdit10.EditValue;
  FClient_Contact.FieldByName('first_name').Value := cxTextEdit11.EditValue;
  FClient_Contact.FieldByName('last_name').Value := cxTextEdit12.EditValue;

  FClient_Contact.Post;

  Screen.Cursor := crDefault;
end;

procedure TfmFirmContactAdd.cxTextEdit10PropertiesValidate(Sender: TObject; var DisplayValue: Variant; var ErrorText: TCaption; var Error: Boolean);
begin
  Error := (VarToStr(DisplayValue) = '');
end;

procedure TfmFirmContactAdd.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action := caFree;
end;

procedure TfmFirmContactAdd.SetUpdate(PrimaryKey: integer);
begin
  Screen.Cursor := crHourglass;

  Ftype_action := 1;
  FClient_Contact.Locate('PrimaryKey', PrimaryKey, []);

  Ffirm_contact_id := FClient_Contact.FieldByName('firm_contact_id').Value;
  cxLookupComboBox1.EditValue := FClient_Contact.FieldByName('type_contact_id').Value;

  cxMemo1.EditValue := FClient_Contact.FieldByName('firm_contact_name').Value;

  cxCheckBox1.EditValue := FClient_Contact.FieldByName('set_default').Value;
  cxCheckBox2.EditValue := FClient_Contact.FieldByName('set_edo_sign').Value;

  cxTextEdit10.EditValue := FClient_Contact.FieldByName('family').Value;
  cxTextEdit11.EditValue := FClient_Contact.FieldByName('first_name').Value;
  cxTextEdit12.EditValue := FClient_Contact.FieldByName('last_name').Value;

  cxTextEdit3.EditValue  := FClient_Contact.FieldByName('firm_contact_telefon').Value;
  cxTextEdit16.EditValue := FClient_Contact.FieldByName('firm_contact_fax').Value;
  cxTextEdit4.EditValue  := FClient_Contact.FieldByName('firm_contact_email').Value;
  cxDateEdit3.EditValue  := FClient_Contact.FieldByName('date_birthday').Value;

  cxDateEdit1.EditValue := FClient_Contact.FieldByName('date_begin').Value;
  cxDateEdit2.EditValue := FClient_Contact.FieldByName('date_end').Value;

  cxMemo2.EditValue     := FClient_Contact.FieldByName('firm_contact_comment').Value;

  MonitorEventFormOpen('UPDATE_FORM', self.Name, fmMain.Lis, Ffirm_contact_id);
  Screen.Cursor := crDefault;
end;

end.

