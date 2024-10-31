unit VagonChoose;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms, Default,
  Dialogs, cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters,
  cxContainer, cxEdit, cxTextEdit, cxMemo, StdCtrls, Buttons, ExtCtrls, cxLabel,
  dxSkinsCore, dxSkinBlack, dxSkinBlue, dxSkinBlueprint, dxSkinCaramel,
  dxSkinCoffee, dxSkinDarkRoom, dxSkinDarkSide, dxSkinDevExpressDarkStyle,
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
  dxSkinXmas2008Blue, StrUtils, dxSkinTheBezier, Vcl.Menus, cxClasses, cxPropertiesStore, cxButtons, cxCheckBox, dxSkinOffice2019Colorful, Vcl.ComCtrls, dxCore,
  cxDateUtils, dxBar, cxGroupBox, cxRadioGroup, cxDropDownEdit, cxCalendar, cxButtonEdit, cxMaskEdit, cxCheckComboBox, Data.DB, Data.Win.ADODB;

type
  TfmVagonChoose = class(TForm)
    Panel1: TPanel;
    cxButton1: TcxButton;
    cxButton2: TcxButton;
    Panel3: TPanel;
    cxCheckBox1: TcxCheckBox;
    Panel4: TPanel;
    Panel5: TPanel;
    Label5: TLabel;
    Label1: TLabel;
    cxTextEdit3: TcxTextEdit;
    cxTextEdit7: TcxTextEdit;
    cxCheckComboBox1: TcxCheckComboBox;
    cxButton7: TcxButton;
    cxButton8: TcxButton;
    Panel6: TPanel;
    Label3: TLabel;
    Label2: TLabel;
    cxTextEdit2: TcxTextEdit;
    cxButtonEdit2: TcxButtonEdit;
    cxTextEdit1: TcxTextEdit;
    cxButtonEdit1: TcxButtonEdit;
    Panel7: TPanel;
    Label8: TLabel;
    Label4: TLabel;
    cxTextEdit4: TcxTextEdit;
    cxButtonEdit4: TcxButtonEdit;
    GroupBox2: TGroupBox;
    Label9: TLabel;
    Label10: TLabel;
    cxDateEdit1: TcxDateEdit;
    cxDateEdit2: TcxDateEdit;
    Panel8: TPanel;
    Label7: TLabel;
    Label6: TLabel;
    cxButtonEdit5: TcxButtonEdit;
    cxButtonEdit6: TcxButtonEdit;
    cxTextEdit6: TcxTextEdit;
    cxTextEdit5: TcxTextEdit;
    cxRadioGroup1: TcxRadioGroup;
    cxRadioGroup2: TcxRadioGroup;
    Splitter1: TSplitter;
    dxBarManager1: TdxBarManager;
    dxBarManager1Bar1: TdxBar;
    dxBarButton1: TdxBarButton;
    Panel9: TPanel;
    dxBarDockControl1: TdxBarDockControl;
    GroupBox1: TGroupBox;
    cxMemo2: TcxMemo;
    Panel2: TPanel;
    Query_Firm: TADOQuery;
    DS_Firm: TDataSource;
    procedure cxMemo2PropertiesChange(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure cxButton1Click(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure dxBarButton1Click(Sender: TObject);
    procedure cxButton7Click(Sender: TObject);
  private
    Fconnect : TADOConnection;
    Fstr_vagon_num   : string;
    Fstr_vagon_num_1 : string;
    Fnode_begin_cod  : string;
    Fnode_end_cod    : string;
    Froad_begin_cod  : string;
    Froad_end_cod    : string;
    FkargoETSNG_cod  : string;
    Fstr_contract_id : string;
    Fetran_track     : integer;
    Fdate1, Fdate2   : TDate;
    Ftype_node_stay  : integer;

    procedure SetStrVagonNum(str_vagon_num : string);
  public
    constructor Create(App: TApplication); overload;
    constructor Create(App: TApplication; conn: TADOConnection; flag: integer; param: variant); overload;

    property _GetStrVagonNum : string read Fstr_vagon_num;
    property _SetStrVagonNum : string write SetStrVagonNum;

  published
    property _GetStrVagonNum_1 : string read Fstr_vagon_num_1;
    property _GetDate1         : TDate read Fdate1;
    property _GetDate2         : TDate read Fdate2;
    property _GetNodeBeginCod  : string read Fnode_begin_cod;
    property _GetNodeEndCod    : string read Fnode_end_cod;
    property _GetRoadBeginCod  : string read Froad_begin_cod;
    property _GetRoadEndCod    : string read Froad_end_cod;
    property _GetKargoETSNGCod : string read FkargoETSNG_cod;
    property _GetContractID    : string read Fstr_contract_id;
    property _GetEtranTrack    : integer read Fetran_track;
    property _GetTypeNodeStay  : integer read Ftype_node_stay;
  end;


function CreateWndChoose(AppHand: THandle) : variant; export;
function CreateWndChoose_Ext(AppHand: THandle; str_vagon_num : string) : variant; export;
function CreateWndVagonChoose(AppHand: THandle; conn: TADOConnection; flag: integer; param: variant) : variant; export;

var
  fmVagonChoose: TfmVagonChoose;

implementation
   uses Raznoe, Registry, DateUtils, Other;
{$R *.dfm}

function CreateWndVagonChoose(AppHand: THandle; conn: TADOConnection; flag: integer; param: variant) : variant; export;  //
var i : integer;
begin
   Application.Handle := AppHand;
   fmVagonChoose := TfmVagonChoose.Create(Application, conn, flag, param);  //
   with fmVagonChoose do
    try
      if ShowModal = mrOK then
       result :=  VarArrayOf([_GetStrVagonNum_1,
                              _GetDate1,
                              _GetDate2,
                              _GetContractID,
                              _GetNodeBeginCod,
                              _GetNodeEndCod,
                              _GetKargoETSNGCod,
                              _GetRoadBeginCod,
                              _GetRoadEndCod,
                              _GetEtranTrack,
                              _GetTypeNodeStay])
      else result :=  VarArrayOf([NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL])
    finally
      Free;
    end;
end;


function CreateWndChoose(AppHand: THandle) : variant; export;
begin
   Application.Handle := AppHand;
   fmVagonChoose := TfmVagonChoose.Create(Application);
   with fmVagonChoose do
    try
      if ShowModal = mrOK then result :=  VarArrayOf([_GetStrVagonNum, True])
        else result :=  VarArrayOf(['', False])
    finally
      Free;
    end;
end;

function CreateWndChoose_Ext(AppHand: THandle; str_vagon_num : string) : variant; export;
begin
   Application.Handle := AppHand;
   fmVagonChoose := TfmVagonChoose.Create(Application);
   with fmVagonChoose do
    try
      _SetStrVagonNum := str_vagon_num;
      if ShowModal = mrOK then
        result :=  VarArrayOf([_GetStrVagonNum, True])
      else
        result :=  VarArrayOf(['', False])
    finally
      Free;
    end;
end;

constructor TfmVagonChoose.Create(App: TApplication);
var Reg : TRegistry;
begin
  Screen.Cursor := crHourglass;
  inherited Create(App);

  cxCheckBox1.Checked := StoreRegistryCheck(rgLoad, '\Software\Lis1\cxCheckBox\VagonChoose', 'cxCheckBox1', False);
  if cxCheckBox1.Checked then
    StoreRegistryMemo(rgLoad, '\Software\LIS1\cxMemo\VagonChoose', cxMemo2);

  Screen.Cursor := crDefault;
end;

constructor TfmVagonChoose.Create(App: TApplication; conn: TADOConnection; flag: integer; param: variant);
var List : TStringList;
begin
  Screen.Cursor := -11;
  inherited Create(nil);  //

  Panel4.Visible := True;
  Splitter1.Visible := True;

  Fstr_contract_id := '';
  cxTextEdit1.Text := '';
  cxTextEdit2.Text := '';
  cxTextEdit3.Text := '';
  cxTextEdit4.Text := '';
  cxTextEdit5.Text := '';
  cxTextEdit6.Text := '';
  cxTextEdit7.Text := '';

  Fconnect := conn;
  Query_Firm.Connection := Fconnect;

  cxDateEdit1.Date := Date - 30;
  cxDateEdit2.Date := Date;

  cxRadioGroup2.Visible := False;
  Constraints.MinHeight := Constraints.MinHeight - cxRadioGroup2.Height;
  Height := Height - cxRadioGroup2.Height;

  cxCheckBox1.Checked := StoreRegistryCheck(rgLoad, '\Software\Lis1\cxCheckBox\VagonChoose', 'cxCheckBox1', False);
  if cxCheckBox1.Checked then
    StoreRegistryMemo(rgLoad, '\Software\Lis1\cxMemo\VagonChoose', cxMemo2);
  case flag of
    // ----- одни номера вагонов для фильтра ---------------
    -1 : begin
          dxBarDockControl1.Visible := False;
          Constraints.MinWidth := Constraints.MinWidth - Panel4.Width;
          Panel4.Visible := False;
          Splitter1.Visible := False;

          if (param <> null) then
            cxMemo2.Lines.DelimitedText := param;

          Width := Width - Panel4.Width + 50;
        end;


    0 : begin
          Label1.Enabled := False;
          Label5.Enabled := False;

          Label2.Enabled := False;
          cxButtonEdit1.Enabled := False;

          //---- ст.назн.---------
          cxButtonEdit2.Enabled := False;
          Label3.Enabled := False;

          Label6.Enabled := False;
          cxButtonEdit5.Enabled := False;

          Label7.Enabled := False;
          cxButtonEdit6.Enabled := False;

          Label4.Enabled := False;
          cxButtonEdit4.Enabled := False;
          Label8.Enabled := False;
        end;

        // простои на станция в дислокации
    1 : begin
          cxRadioGroup1.Enabled := False;
          Label1.Enabled := False;
          Label5.Enabled := False;

          Label2.Enabled := False;
          cxButtonEdit1.Enabled := False;

          Label6.Enabled := False;
          cxButtonEdit5.Enabled := False;

          Label7.Enabled := False;
          cxButtonEdit6.Enabled := False;

          Label4.Enabled := False;
          cxButtonEdit4.Enabled := False;
          Label8.Enabled := False;

          //---- ст.назн.---------
          cxButtonEdit2.Enabled := False;

          Panel8.Visible := False;
          cxRadioGroup2.Visible := True;

          Constraints.MinHeight := Constraints.MinHeight - Panel8.Height + cxRadioGroup2.Height;
          Height := Height - Panel8.Height + cxRadioGroup2.Height;
        end;

    2 : begin
          cxRadioGroup1.Enabled := False;
          Panel8.Visible := False;
          Height := Height - Panel8.Height;
        end;

        // ремонт вагонов
    3 : begin
          cxRadioGroup1.Visible := False;
          Panel5.Visible := False;
          Panel6.Visible := False;
          Panel8.Visible := False;
          Panel7.Visible := False;
        end;

        // фактическая доходность средняя
    4 : begin
          cxRadioGroup1.Enabled := False;

          cxCheckComboBox1.Enabled := True;
          cxButton7.Enabled := True;
          cxButton8.Enabled := True;

          cxDateEdit1.EditValue := param[1];
          cxDateEdit2.EditValue := param[2];

          Query_Firm.Close;
          Query_Firm.Parameters.ParamByName('date1').Value := EncodeDate(YearOf(cxDateEdit1.Date), MonthOf(cxDateEdit1.Date), 1);
          Query_Firm.Parameters.ParamByName('date2').Value := EncodeDate(YearOf(cxDateEdit2.Date), MonthOf(cxDateEdit2.Date), DaysInMonth(cxDateEdit2.Date));
          Query_Firm.Open;
          cxCheckComboBox1.Properties.Items.Clear;
          while not Query_Firm.Eof do begin
            with cxCheckComboBox1.Properties.Items.Add do begin
              Description := Query_Firm.FieldByName('firm_customer_name' ).AsString + ' (' + Query_Firm.FieldByName('contract_cod').AsString + ' от ' + Query_Firm.FieldByName('contract_date_begin').AsString + ')';
              Tag         := Query_Firm.FieldByName('contract_id'        ).AsInteger;
            end;
            Query_Firm.Next;
          end;

          Panel6.Visible := False;
          Panel7.Visible := False;
          Panel8.Visible := False;
        end;

  end;

  Screen.Cursor := 0;
end;


procedure TfmVagonChoose.SetStrVagonNum(str_vagon_num : string);
begin
  cxMemo2.Lines.Text := str_vagon_num;
  Panel2.Caption := IntToStr(cxMemo2.Lines.Count);
end;

procedure TfmVagonChoose.cxButton1Click(Sender: TObject);
var         i, n : integer;
              SP : TADOStoredProc;
 str_contract_id : string;

  function NumOnly(n: string): string;
  var i : integer;
  begin
    Result := '';
    for i := 1 to Length(n) do
      if n[i] in ['0'..'9'] then
        Result := Result + n[i];
  end;

begin
  // ------- провека дат и периода, если они видымые
  if (Panel4.Visible)
    AND ((cxDateEdit1.EditValue = null) OR (cxDateEdit2.EditValue = null) OR (cxDateEdit1.EditValue > cxDateEdit2.EditValue)) then begin
    Application.MessageBox('Неверно задан период', 'Внимание', MB_OK);
    ModalResult := mrNone;
    Exit;
  end;


  if (not Panel4.Visible) then begin
    cxMemo2.Lines.Text := AnsiReplaceStr(cxMemo2.Lines.Text, ' ', #13#10);
    n := 0;
    for i := 0 to cxMemo2.Lines.Count - 1 do begin
      if NumOnly(cxMemo2.Lines[i - n]) = '' then begin
        cxMemo2.Lines.Delete(i - n);
        Inc(n);
      end else
        cxMemo2.Lines[i - n] := NumOnly(cxMemo2.Lines[i - n]);
    end;
    Fstr_vagon_num := cxMemo2.Lines.Text;
  end else begin

    Fdate1 := cxDateEdit1.Date;
    Fdate2 := cxDateEdit2.Date;

    // -------- формирование строки вагонов
    Fstr_vagon_num_1 := '';
    for i:=0 to cxMemo2.Lines.Count-1 do
      if  ReplaceStr(Trim(cxMemo2.Lines[i]), ' ', '') <> '' then
        Fstr_vagon_num_1 := Fstr_vagon_num_1 + ',' + Trim(cxMemo2.Lines[i]);
    Delete(Fstr_vagon_num_1, 1, 1);
    Fstr_vagon_num_1 := Trim(Fstr_vagon_num_1);


    // --- клиенты ------------------------
    for i:=0 to cxCheckComboBox1.Properties.Items.Count - 1 do begin
      if cxCheckComboBox1.States[i] = cbsChecked then begin
         str_contract_id := str_contract_id + ',' + IntToStr(cxCheckComboBox1.Properties.Items[i].Tag);
      end;
    end;
    Delete(str_contract_id, 1, 1);
    if (str_contract_id <> '') then Fstr_contract_id := str_contract_id
    else Fstr_contract_id := '';

    Fnode_begin_cod := cxTextEdit1.Text;
    Fnode_end_cod   := cxTextEdit2.Text;
    Froad_begin_cod := cxTextEdit5.Text;
    Froad_end_cod   := cxTextEdit6.Text;
    FkargoETSNG_cod := cxTextEdit4.Text;
    Fetran_track    := cxRadioGroup1.ItemIndex;
    Ftype_node_stay := cxRadioGroup2.ItemIndex;
  end;

  ModalResult := mrOk;
end;

procedure TfmVagonChoose.cxButton7Click(Sender: TObject);
var i : integer;
begin
  Screen.Cursor := crHourglass;
  case TControl(Sender).Tag of
    0: for i := 0 to cxCheckComboBox1.Properties.Items.Count - 1 do
        cxCheckComboBox1.States[i] := cbsChecked;
    1: for i := 0 to cxCheckComboBox1.Properties.Items.Count - 1 do
        cxCheckComboBox1.States[i] := cbsUnchecked;
  end;
  Screen.Cursor := crDefault;
end;

procedure TfmVagonChoose.cxMemo2PropertiesChange(Sender: TObject);
begin
  Panel2.Caption := 'Кол-во: ' + IntToStr(cxMemo2.Lines.Count);
end;

procedure TfmVagonChoose.dxBarButton1Click(Sender: TObject);
type
  TFunc = function(AppHand: THandle; flag: boolean; str_connect: string; page: integer) : variant;  //
var       i : integer;
   str_nvag : string;
     FVagon : TFunc;
     handle : THandle;
          v : variant;
          Q : TADOQuery;

begin
  handle := LoadLibrary('dictionary.dll');
  @FVagon := GetProcAddress(handle, 'CreateWndVagonNew');
  v := FVagon(Application.Handle, True, Fconnect.ConnectionString, 0);  //
  FreeLibrary(handle);

  if v[1] <> '' then begin
    Screen.Cursor := crHourglass;

    str_nvag := VarToStr(v[1]);

    Q := TADOQuery.Create(nil);
    Q.Connection := Fconnect;
    Q.SQL.Add('SELECT cod AS nvag FROM dbo.StrToTbl(''' + str_nvag + ''', default)');
    Q.Open;
    cxMemo2.Lines.Clear;
    while not Q.Eof do begin
      ShowTextMessage('Осталось ' + IntToStr(Q.RecordCount - Q.RecNo + 1) + ' вагонов...', False);
      cxMemo2.Lines.Add(Q['nvag']);
      Q.Next;
    end;

    ShowTextMessage();
    Q.Free;
    Screen.Cursor := crDefault;
  end;

end;

procedure TfmVagonChoose.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action := caFree;
end;

procedure TfmVagonChoose.FormDestroy(Sender: TObject);
begin
  StoreRegistryCheck(rgSave, '\Software\Lis1\cxCheckBox\VagonChoose\', 'cxCheckBox1', cxCheckBox1.Checked);
  if cxCheckBox1.Checked then
    StoreRegistryMemo(rgSave, '\Software\LIS1\cxMemo\VagonChoose', cxMemo2);
end;

end.
