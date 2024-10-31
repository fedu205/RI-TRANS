unit FactUpdateSettings;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Default, StdCtrls, Buttons, cxTextEdit, cxControls, cxContainer, cxEdit, cxLabel, ExtCtrls, cxMaskEdit,
  cxDropDownEdit, cxCalendar, cxCheckBox, cxButtonEdit, DB, ADODB, cxPropertiesStore, ComCtrls, cxPC, cxGroupBox,
  cxGraphics, cxLookupEdit, cxDBLookupEdit, cxDBLookupComboBox, cxLookAndFeelPainters, cxLookAndFeels, cxMemo, cxRadioGroup, cxCurrencyEdit,
  dxSkinsCore, dxSkinBlack, dxSkinBlue, dxSkinBlueprint, dxSkinCaramel, dxSkinCoffee, dxSkinDarkRoom, dxSkinDarkSide,
  dxSkinDevExpressDarkStyle, dxSkinDevExpressStyle, dxSkinFoggy, dxSkinGlassOceans, dxSkinHighContrast, dxSkiniMaginary, dxSkinLilian,
  dxSkinLiquidSky, dxSkinLondonLiquidSky, dxSkinMcSkin, dxSkinMetropolis, dxSkinMetropolisDark, dxSkinMoneyTwins, dxSkinOffice2007Black,
  dxSkinOffice2007Blue, dxSkinOffice2007Green, dxSkinOffice2007Pink, dxSkinOffice2007Silver, dxSkinOffice2010Black, dxSkinOffice2010Blue,
  dxSkinOffice2010Silver, dxSkinOffice2013DarkGray, dxSkinOffice2013LightGray, dxSkinOffice2013White, dxSkinOffice2016Colorful,
  dxSkinOffice2016Dark, dxSkinPumpkin, dxSkinSeven, dxSkinSevenClassic, dxSkinSharp, dxSkinSharpPlus, dxSkinSilver, dxSkinSpringTime,
  dxSkinStardust, dxSkinSummer2008, dxSkinTheAsphaltWorld, dxSkinsDefaultPainters, dxSkinValentine, dxSkinVisualStudio2013Blue,
  dxSkinVisualStudio2013Dark, dxSkinVisualStudio2013Light, dxSkinVS2010, dxSkinWhiteprint, dxSkinXmas2008Blue, cxClasses, dxSkinTheBezier;

type
  TfmFactUpdateSettings = class(TForm)
    cxPropertiesStore1: TcxPropertiesStore;
    Panel1: TPanel;
    BitBtn1: TBitBtn;
    BitBtn4: TBitBtn;
    Panel2: TPanel;
    GroupBox1: TGroupBox;
    RadioButton1: TRadioButton;
    RadioButton2: TRadioButton;
    GroupBox2: TGroupBox;
    RadioButton3: TRadioButton;
    RadioButton4: TRadioButton;
    GroupBox3: TGroupBox;
    RadioButton5: TRadioButton;
    RadioButton6: TRadioButton;
    RadioButton7: TRadioButton;
    cxCurrencyEdit1: TcxCurrencyEdit;
    Label1: TLabel;
    Label2: TLabel;
    RadioButton8: TRadioButton;
    cxLookupComboBox2: TcxLookupComboBox;
    DS_Group: TDataSource;
    Query_group: TADOQuery;
    ADOFactUpdate: TADOConnection;

    procedure BitBtn1Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure RadioButton8Click(Sender: TObject);
    procedure RadioButton2Click(Sender: TObject);
  private
    FQuerySettings : Variant;
    FActivePage    : integer;
    Fusr_pwd       : PUser_pwd;

  public
    constructor Create(App: TApplication; usr_pwd: PUser_pwd; ActivePage: integer);  overload;
  end;


function CreateWndFactUpdateSettings(AppHandle: THandle; usr_pwd: PUser_pwd; ActivePG: integer): variant; export;

var
  fmFactUpdateSettings: TfmFactUpdateSettings;

implementation
    uses DateUtils, Filter, Raznoe;
{$R *.dfm}

// Структура ответа  FQurrySettings
//-----------------------------------
//FQuerySettings[0] Источник  0 - дислокация 1- этран
//FQuerySettings[1] Дата приб 0 - тек 1 - след
//FQuerySettings[2] Кол-во дней 0 - нач. 1- кон. 2- всего
//FQuerySettings[3] минус кол-во дней

function CreateWndFactUpdateSettings(AppHandle: THandle; usr_pwd: PUser_pwd; ActivePG: integer):variant; export;
begin
  try
    Application.Handle := AppHandle;
    fmFactUpdateSettings := TfmFactUpdateSettings.Create(Application, usr_pwd, ActivePG);
    if fmFactUpdateSettings.ShowModal = mrOK then
      Result := fmFactUpdateSettings.FQuerySettings
    else Result := VarArrayOf([-9, -9, -9]);
  finally
    fmFactUpdateSettings.Free;
    fmFactUpdateSettings := nil;
  end;
end;

constructor TfmFactUpdateSettings.Create(App: TApplication; usr_pwd: PUser_pwd; ActivePage: integer);
begin
  Screen.Cursor := -11;

  inherited Create(App);
  FActivePage := ActivePage;
  Fusr_pwd := usr_pwd;
  cxCurrencyEdit1.EditValue := 1;
  ADOFactUpdate.Connected := False;
  ADOFactUpdate.ConnectionString := 'Persist Security Info=True;Provider=SQLOLEDB.1;User ID='+usr_pwd^.user_name+';Password='+usr_pwd^.user_pass+';Initial Catalog='+usr_pwd^.catalog+';Data Source='+usr_pwd^.server+';';
  ADOFactUpdate.Connected := True;
  Query_group.Close;
  Query_group.Parameters.ParamByName('users_id').Value := Fusr_pwd.users_id;
  Query_group.Open;
  cxLookupComboBox2.EditValue := Fusr_pwd.user_group_id;

  case FActivePage of
    1: begin
        GroupBox3.Visible := False;
        GroupBox2.Align := alClient;
       end;
    2: begin
        GroupBox1.Visible := False;
        GroupBox2.Visible := False;
       end;
  end;
  Screen.Cursor := 0;
end;

procedure TfmFactUpdateSettings.FormClose(Sender: TObject;var Action: TCloseAction);
begin
 Action := caFree;
end;

procedure TfmFactUpdateSettings.RadioButton2Click(Sender: TObject);
begin
  cxLookupComboBox2.Enabled := False;
  GroupBox2.Enabled := True;
end;

procedure TfmFactUpdateSettings.RadioButton8Click(Sender: TObject);
begin
  if RadioButton8.Checked then begin
    cxLookupComboBox2.Enabled := True;
    GroupBox2.Enabled := False;
  end else begin
    cxLookupComboBox2.Enabled := False;
    GroupBox2.Enabled := True;
  end;
end;

procedure TfmFactUpdateSettings.BitBtn1Click(Sender: TObject);
begin
  FQuerySettings := VarArrayOf([NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL]);
  case FActivePage of
    1: begin
        if RadioButton1.Checked then  FQuerySettings[0] := 0
        else if RadioButton2.Checked then FQuerySettings[0] := 1
        else if RadioButton8.Checked then begin
                FQuerySettings[0] := 2;
                FQuerySettings[1] := -9;
                FQuerySettings[4] := cxLookupComboBox2.EditValue;
        end;

        if RadioButton3.Checked then  FQuerySettings[1] := 0
          else FQuerySettings[1] := 1;

        FQuerySettings[2] := -9;
        FQuerySettings[3] := cxCurrencyEdit1.EditValue;

       end;

    2: begin
        FQuerySettings[0] := 0;
        FQuerySettings[1] := -9;
        if RadioButton5.Checked then FQuerySettings[2] := 0;
        if RadioButton7.Checked then FQuerySettings[2] := 1;
        if RadioButton6.Checked then FQuerySettings[2] := 2;
       end;
  end;
end;

end.
