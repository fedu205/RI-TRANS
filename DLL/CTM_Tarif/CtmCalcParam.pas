unit CtmCalcParam;

interface

uses
  RailTariff_TLB, TariffSupportFunctions, Default, Other,
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, ExtCtrls, DB, DBClient, cxGraphics, cxControls,
  cxLookAndFeels, cxLookAndFeelPainters, cxContainer, cxEdit, cxTextEdit,
  cxMaskEdit, cxButtonEdit, ADODB, cxGroupBox, cxPropertiesStore, Registry,
  cxCurrencyEdit, dxSkinsCore, dxSkinBlack, dxSkinBlue, dxSkinBlueprint,
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
  dxSkinXmas2008Blue, cxClasses, dxSkinTheBezier;

type
  TfmCalcParam = class(TForm)
    Panel18: TPanel;
    BitBtn_Ok: TBitBtn;
    BitBtn_Cancel: TBitBtn;
    Panel1: TPanel;
    CTMConnect: TADOConnection;
    cxGroupBox1: TcxGroupBox;
    cxGroupBox2: TcxGroupBox;
    cxButtonEdit4: TcxButtonEdit;
    cxButtonEdit5: TcxButtonEdit;
    cxButtonEdit9: TcxButtonEdit;
    cxButtonEdit10: TcxButtonEdit;
    Label2: TLabel;
    Label4: TLabel;
    cxButtonEdit1: TcxButtonEdit;
    cxButtonEdit3: TcxButtonEdit;
    Label1: TLabel;
    Label5: TLabel;
    cxPropertiesStore2: TcxPropertiesStore;
    Label3: TLabel;
    cxButtonEdit6: TcxButtonEdit;
    Label6: TLabel;
    cxCurrencyEdit2: TcxCurrencyEdit;
    procedure BitBtn_OkClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure cxButtonEdit1PropertiesButtonClick(Sender: TObject;
      AButtonIndex: Integer);
    procedure cxButtonEdit6PropertiesButtonClick(Sender: TObject;
      AButtonIndex: Integer);
  private
    Fusr_pwd : PUser_pwd;
    FClientDS: TClientDataSet;

    FOtpr_id      : integer;
    FSend_id      : integer;
    FOtpr_name    : string;
    FSend_name    : string;
    FExitRoute_id : integer;
    FCars_gp      : real;
    FCars_axis    : real;
    FCars_TareW   : real;
    FCars_Volume  : real;
    FCars_id      : integer;
    FKol_PS       : integer;
    FVag_otpr     : integer;

    FRTXApplication : IApplication;
    FRTXDocument    : RailTariff_TLB.IDocument;

    procedure FindKargo();
  public
    constructor Create(AOwner: TApplication; usr_pwd: PUser_pwd; var ClientDS: TClientDataSet); reintroduce;
  end;

var
  fmCalcParam: TfmCalcParam;

function CreateWndCalcParam(AppHand: THandle; usr_pwd: PUser_pwd; var ClientDS: TClientDataSet): variant; export;

implementation

uses CtmNewOtpr, CtmNewCargo, CtmNewCars;

{$R *.dfm}


function CreateWndCalcParam(AppHand: THandle; usr_pwd: PUser_pwd; var ClientDS: TClientDataSet): variant;
begin
  Application.Handle := AppHand;

  fmCalcParam := TfmCalcParam.Create(Application, usr_pwd, ClientDS);
  try
    if fmCalcParam.ShowModal = mrOk then  result := VarArrayOf([True])
    else result := VarArrayOf([False]);
  finally
    fmCalcParam.Free;
  end;
end;

constructor TfmCalcParam.Create(AOwner: TApplication; usr_pwd: PUser_pwd; var ClientDS: TClientDataSet);
var Reg   : TRegistry;
begin
  Screen.Cursor := crHourglass;
  inherited Create(AOwner);
  Fusr_pwd := usr_pwd;

  FOtpr_id      := -9;
  FSend_id      := -9;
  FExitRoute_id := -9;

  FCars_gp      := 0;
  FCars_id      := -9;
  FKol_PS       := -9;
  FVag_otpr     := -9;
  FCars_axis    := 0;
  FCars_TareW   := 0;
  FCars_Volume  := 0;
  FOtpr_name    := '';
  FSend_name    := '';

  FClientDS     := ClientDS;


  Reg := TRegistry.Create;
  Reg.RootKey := HKEY_CURRENT_USER;
  if Reg.KeyExists('\Software\Lis1\CtmCalcParam1') then begin
    if Reg.OpenKey('\Software\Lis1\CtmCalcParam1', True) then begin
      FOtpr_id                := Reg.ReadInteger('otpr_id');
      FSend_id                := Reg.ReadInteger('send_id');
      FOtpr_name              := Reg.ReadString ('otpr_name');
      FSend_name              := Reg.ReadString ('send_name');
      cxButtonEdit3.EditValue := Reg.ReadString ('ExitRoute_name');
      FExitRoute_id           := Reg.ReadInteger('ExitRoute_id');
      FCars_gp                := Reg.ReadFloat('Cars_gp');
      FCars_axis              := Reg.ReadFloat('Cars_axis');
      FCars_TareW             := Reg.ReadFloat('Cars_TareW');
      FCars_Volume            := Reg.ReadFloat('Cars_Volume');
      FCars_id                := Reg.ReadInteger('Cars_id');
      cxButtonEdit6.EditValue := Reg.ReadString('Cars_name');
      FKol_PS                 := Reg.ReadInteger('Kol_PS');
      FVag_otpr               := Reg.ReadInteger('Vag_otpr');
      cxButtonEdit1.EditValue := FOtpr_name + ': ' +  FSend_name;
      if Reg.ValueExists('koef') then
        cxCurrencyEdit2.EditValue := Reg.ReadFloat('koef');
    end;
  end;
  Reg.Free;


  CTMConnect.ConnectionString := 'Persist Security Info=True;Provider=SQLOLEDB.1;User ID='+Fusr_pwd^.user_name+';Password='+Fusr_pwd^.user_pass+';Initial Catalog='+Fusr_pwd^.catalog+';Data Source='+Fusr_pwd^.server+';';
  CTMConnect.KeepConnection   := False;
  CTMConnect.LoginPrompt      := False;
  CTMConnect.Open;

  try
    FRTXApplication := RTXCreate2(CTM_Server, CTM_User, CTM_Password);
    FRTXApplication.Initialize('');
  except
    on E: Exception do begin
      Application.MessageBox(PChar('Application.Initialize:' + E.Message), 'Ошибка', MB_OK or MB_ICONSTOP);
      FRTXApplication := nil;
      exit;
    end;
  end;
  FRTXDocument := FRTXApplication.CreateDocument;

  Caption := 'Расчёт тарифа в Rail-Сервер (' + (FRTXApplication as IApplicationInfo).Version + ')';

  FindKargo();

  Screen.Cursor := crDefault;
end;

procedure TfmCalcParam.FindKargo();
var   kargoETSNG_cod : string;
    Query_CargoETSNG : TADOQuery;
      Query_CargoGNG : TADOQuery;
begin
  FClientDS.First;
  kargoETSNG_cod := FClientDS.FieldByName('kargoETSNG_cod').AsString;

  Query_CargoETSNG := TADOQuery.Create(nil);
  Query_CargoETSNG.Connection := CTMConnect;

  Query_CargoGNG := TADOQuery.Create(nil);
  Query_CargoGNG.Connection := CTMConnect;

  Query_CargoETSNG.SQL.Clear;
  Query_CargoETSNG.SQL.Add('SELECT TOP 1');
  Query_CargoETSNG.SQL.Add('ref_book_xml.value(''(/ROW/@KOD)[1]'',''varchar(max)'') as KOD,');
  Query_CargoETSNG.SQL.Add('ref_book_xml.value(''(/ROW/@NAME)[1]'',''varchar(max)'') as NAME,');
  Query_CargoETSNG.SQL.Add('ref_book_xml.value(''(/ROW/@CLASSN)[1]'',''varchar(max)'') as CLASSN,');
  Query_CargoETSNG.SQL.Add('ref_book_xml.value(''(/ROW/@MinNew)[1]'',''varchar(max)'') as MinNew,');
  Query_CargoETSNG.SQL.Add('ref_book_xml.value(''(/ROW/@KODGNG8)[1]'',''varchar(max)'') as KODGNG8,');
  Query_CargoETSNG.SQL.Add('ref_book_xml.value(''(/ROW/@PID)[1]'',''varchar(max)'') as PID');
  Query_CargoETSNG.SQL.Add('FROM	CTM_REFBOOK2');
  Query_CargoETSNG.SQL.Add('WHERE');
  Query_CargoETSNG.SQL.Add('ref_book_name = ''ETSNG'' AND ref_book_xml.value(''(/ROW/@KOD)[1]'',''varchar(max)'') = ''' + kargoETSNG_cod + '''');
  Query_CargoETSNG.SQL.Add('AND (getdate() between ref_book_xml.value(''(/ROW/@FromDate)[1]'',''datetime'') and ref_book_xml.value(''(/ROW/@ToDate)[1]'',''datetime'')');
  Query_CargoETSNG.SQL.Add('OR');
	Query_CargoETSNG.SQL.Add('ref_book_xml.exist(''(/ROW/@FromDate)[1]'') = 0)');
  Query_CargoETSNG.Open;

  cxButtonEdit9.EditValue := Query_CargoETSNG.FieldByName('KOD').Value;
  cxButtonEdit5.EditValue := Query_CargoETSNG.FieldByName('NAME').Value;

  Query_CargoGNG.SQL.Clear;
  Query_CargoGNG.SQL.Add('SELECT');
  Query_CargoGNG.SQL.Add('ref_book_xml.value(''(/ROW/@KOD)[1]'',''varchar(max)'') as KOD,');
  Query_CargoGNG.SQL.Add('ref_book_xml.value(''(/ROW/@NAME)[1]'',''varchar(max)'') as NAME,');
  Query_CargoGNG.SQL.Add('ref_book_xml.value(''(/ROW/@classETT)[1]'',''varchar(max)'') as classETT,');
  Query_CargoGNG.SQL.Add('ref_book_xml.value(''(/ROW/@KODETSNG)[1]'',''varchar(max)'') as KODETSNG,');
  Query_CargoGNG.SQL.Add('ref_book_xml.value(''(/ROW/@PID)[1]'',''varchar(max)'') as PID,');
  Query_CargoGNG.SQL.Add('ref_book_xml.value(''(/ROW/@ETNPos)[1]'',''varchar(max)'') as ETNPos');
  Query_CargoGNG.SQL.Add('FROM	CTM_REFBOOK2');
  Query_CargoGNG.SQL.Add('WHERE');
  Query_CargoGNG.SQL.Add('ref_book_name = ''GNG2007''');
  Query_CargoGNG.SQL.Add('AND ref_book_xml.value(''(/ROW/@KOD)[1]'',''varchar(max)'') like ''%' + Query_CargoETSNG.FieldByName('KODGNG8').Value + '%''');
  Query_CargoGNG.Open;

  cxButtonEdit10.EditValue := Query_CargoGNG.FieldByName('KOD').Value;
  cxButtonEdit4.EditValue  := Query_CargoGNG.FieldByName('NAME').Value;

  Query_CargoGNG.Free;
  Query_CargoETSNG.Free;
end;

procedure TfmCalcParam.cxButtonEdit1PropertiesButtonClick(Sender: TObject;
  AButtonIndex: Integer);
begin

  if AButtonIndex = 0 then begin

    fmCtmNewOtpr := TfmCtmNewOtpr.Create(Application, Fusr_pwd, Date);
    fmCtmNewOtpr._SetNodeBeginCod := '';
    fmCtmNewOtpr._SetNodeEndCod   := '';
    fmCtmNewOtpr._SetRTXDocument  := FRTXDocument;
    if FOtpr_id <> -9      then fmCtmNewOtpr._SetOtprId      := FOtpr_id;
    if FSend_id <> -9      then fmCtmNewOtpr._SetSendId      := FSend_id;
    if FExitRoute_id <> -9 then fmCtmNewOtpr._SetExitRouteId := FExitRoute_id;

    fmCtmNewOtpr.CalcExRtType;
    if fmCtmNewOtpr.ShowModal = mrOk then begin
      cxButtonEdit1.EditValue := fmCtmNewOtpr._GetOtprName + ': ' +  fmCtmNewOtpr._GetSendName;
      cxButtonEdit3.EditValue := fmCtmNewOtpr._GetExitRouteName;

      FOtpr_name    := fmCtmNewOtpr._GetOtprName;
      FSend_name    := fmCtmNewOtpr._GetSendName;

      FOtpr_id      := fmCtmNewOtpr._GetOtprId;
      FSend_id      := fmCtmNewOtpr._GetSendId;
      FExitRoute_id := fmCtmNewOtpr._GetExitRouteId;
    end;
  end else begin
    cxButtonEdit1.EditValue := '';
    cxButtonEdit3.EditValue := '';

    FOtpr_name    := '';
    FSend_name    := '';

    FOtpr_id      := -9;
    FSend_id      := -9;
    FExitRoute_id := -9;
  end;
end;

procedure TfmCalcParam.cxButtonEdit6PropertiesButtonClick(Sender: TObject;
  AButtonIndex: Integer);
begin
  if AButtonIndex = 0 then begin

    fmCtmNewCars := TfmCtmNewCars.Create(Application, Fusr_pwd, Date);
    if FSend_id <> -9 then fmCtmNewCars._SetSendID := FSend_id;
    if FOtpr_id <> -9 then fmCtmNewCars._SetOtprID := FOtpr_id;

    if not FClientDS.FieldByName('kargoETSNG_cod').IsNull then
      fmCtmNewCars._SetCargoCod := FClientDS.FieldByName('kargoETSNG_cod').Value;

    fmCtmNewCars._OpenQuery := True;

    if FCars_id    <> -9 then fmCtmNewCars._SetCarID      := FCars_id;
    if FKol_PS     <> -9 then fmCtmNewCars._SetCountPS    := FKol_PS;
    if FVag_otpr   <> -9 then fmCtmNewCars._SetVagOtpr    := FVag_otpr;

    if fmCtmNewCars.ShowModal = mrOk then begin

      cxButtonEdit6.EditValue := fmCtmNewCars._GetName;
      FCars_id     := fmCtmNewCars._GetCarID;
      FCars_gp     := fmCtmNewCars._GetGP;
      FCars_axis   := fmCtmNewCars._GetAxis;
      FCars_TareW  := fmCtmNewCars._GetTareW;
      FCars_Volume := fmCtmNewCars._GetVolume;
      FKol_PS      := fmCtmNewCars._GetCountPS;
      FVag_otpr    := fmCtmNewCars._GetVagOtpr;
    end;
  end else begin
    cxButtonEdit6.EditValue := '';
    FCars_id     := -9;
    FCars_gp     := -9;
    FCars_axis   := -9;
    FCars_TareW  := -9;
    FCars_Volume := -9;
    FKol_PS      := -9;
    FVag_otpr    := -9;
  end;
end;

procedure TfmCalcParam.FormClose(Sender: TObject; var Action: TCloseAction);
var Reg   : TRegistry;
begin
  if FOtpr_id <> -9 then begin
    Reg := TRegistry.Create;
    Reg.RootKey := HKEY_CURRENT_USER;
    Reg.OpenKey('\Software\Lis1\CtmCalcParam1', True);
    Reg.WriteInteger('otpr_id', FOtpr_id);
    Reg.WriteInteger('send_id', FSend_id);
    Reg.WriteString ('otpr_name', FOtpr_name);
    Reg.WriteString ('send_name', FSend_name);
    Reg.WriteString ('ExitRoute_name', cxButtonEdit3.Text);
    Reg.WriteInteger('ExitRoute_id'  , FExitRoute_id);
    Reg.WriteFloat('Cars_gp',    FCars_gp);
    Reg.WriteFloat('Cars_axis',  FCars_axis);
    Reg.WriteFloat('Cars_TareW', FCars_TareW);
    Reg.WriteFloat('Cars_Volume',FCars_Volume);
    Reg.WriteInteger('Cars_id',  FCars_id);
    Reg.WriteString ('Cars_name',cxButtonEdit6.Text);
    Reg.WriteInteger('Kol_PS',   FKol_PS);
    Reg.WriteInteger('Vag_otpr', FVag_otpr);
    if cxCurrencyEdit2.EditValue <> null then
      Reg.WriteFloat('koef', cxCurrencyEdit2.EditValue)
    else
      Reg.WriteFloat('koef', 0);
    Reg.Free;
  end;

  Action := caFree;
end;

procedure TfmCalcParam.BitBtn_OkClick(Sender: TObject);
var       RTXResult : RailTariff_TLB.IDocNode;
 total_price_wo_nds : Currency;
        total_price : Currency;
           distance : integer;
          set_error : boolean;
begin
  // Расчет ставки

  if FOtpr_id = -9 then begin
    Application.MessageBox('Виберите "Вид отправки"', 'Внимание!', MB_ICONWARNING or MB_OK);
    Exit;
  end;

  if FCars_id = -9 then begin
    Application.MessageBox('Виберите "Вид подвижного состава"', 'Внимание!', MB_ICONWARNING or MB_OK);
    Exit;
  end;


  FClientDS.First;
  while not FClientDS.Eof do begin
    ShowTextMessage('Расчет ставки.' + #10 + 'Осталось ' + IntToStr(FClientDS.RecNo) + ' из ' + IntToStr(FClientDS.RecordCount) + ' вагонов...', False);

    set_error := False;
    FRTXDocument.New;

    (FRTXDocument as IDocumentAttr).OnDate(FClientDS.FieldByName('date_from_to').AsDateTime);

    try
      (FRTXDocument as IDocumentAttr).FromStation(FClientDS.FieldByName('node_begin_cod').AsString , 20);
    except
      set_error := True;
      FClientDS.Edit;
      FClientDS.FieldByName('error_message').Value := 'Станция отправления не найдена в Rail-Tariff.';
      FClientDS.Post;
    end;

    try
      (FRTXDocument as IDocumentAttr).ToStation  (FClientDS.FieldByName('node_end_cod').AsString, 20);
    except
      set_error := True;
      FClientDS.Edit;
      FClientDS.FieldByName('error_message').Value := 'Станция назначения не найдена в Rail-Tariff.';
      FClientDS.Post;
    end;

    (FRTXDocument as IDocumentAttr).Send(FOtpr_id, FSend_id, FExitRoute_id, 2);

    try
      (FRTXDocument as IDocumentAttr5).FreightEx(cxButtonEdit9.EditValue, '', cxButtonEdit10.EditValue, FClientDS.FieldByName('fact_weight').AsFloat);
    except
      set_error := True;
      FClientDS.Edit;
      FClientDS.FieldByName('error_message').Value := 'Груз не найден в Rail-Tariff.';
      FClientDS.Post;
    end;

    if set_error = False then begin
      (FRTXDocument as IDocumentControl).DoCalcDistance;

      (FRTXDocument as IDocumentAttr2).WagonOwnerLand(20, True);

      FRTXDocument.Data.Value['RouteProperties\IsBackRoutePresent'] := 0;
      (FRTXDocument as IDocumentAttr).Wagon(FCars_id, 1, FKol_PS, FCars_gp);

      FRTXDocument.Data.Value['Vagon\VSCount']  := FVag_otpr;
      FRTXDocument.Data.Value['Vagon\TareW']    := FCars_TareW;
      FRTXDocument.Data.Value['Vagon\OCE']      := FCars_axis;
      (FRTXDocument as IDocumentAttr12).BackRoutePresent := False;

      (FRTXDocument as IDocumentControl).DoCalcTariff;

      RTXResult := FRTXDocument.Result;
      RTXResult.AsTable.First;
      total_price := 0;
      total_price_wo_nds := 0;
      distance    := 0;
      while not RTXResult.AsTable.EOF do  begin
        total_price_wo_nds := total_price_wo_nds + RTXResult.Value['TotalPriceWoNDS'];
        total_price        := total_price + RTXResult.Value['TotalPrice'];
        distance           := distance    + RTXResult.Value['Distance'];
        RTXResult.AsTable.Next;
      end;

      FClientDS.Edit;
      FClientDS.FieldByName('kargoGNG_cod'  ).Value := cxButtonEdit10.EditValue;
      FClientDS.FieldByName('otpr_name'     ).Value := FOtpr_name;
      FClientDS.FieldByName('send_name'     ).Value := FSend_name;
      FClientDS.FieldByName('ExitRoute_name').Value := cxButtonEdit3.EditValue;
      FClientDS.FieldByName('cars_name'     ).Value := cxButtonEdit6.EditValue;
      FClientDS.FieldByName('distance'      ).Value := distance;
      FClientDS.FieldByName('cars_gp'       ).Value := FCars_gp;
      FClientDS.FieldByName('VagOtpr'       ).Value := FVag_otpr;
      FClientDS.FieldByName('TotalPriceWoNDS_rzd').Value := total_price_wo_nds;
      FClientDS.FieldByName('TotalPrice_rzd').Value := total_price;
      if cxCurrencyEdit2.EditValue = null then
        FClientDS.FieldByName('koef').Value := 0
      else
        FClientDS.FieldByName('koef').Value := cxCurrencyEdit2.EditValue;

      FClientDS.Post;

      (FRTXDocument as IDocumentAttr2).WagonOwnerLand(20, True);

      FRTXDocument.Data.Value['RouteProperties\IsBackRoutePresent'] := 1;
      (FRTXDocument as IDocumentAttr).Wagon(FCars_id, 2, FKol_PS, FCars_gp);

      FRTXDocument.Data.Value['Vagon\VSCount']  := FVag_otpr;
      FRTXDocument.Data.Value['Vagon\TareW']    := FCars_TareW;
      FRTXDocument.Data.Value['Vagon\OCE']      := FCars_axis;
      (FRTXDocument as IDocumentAttr12).BackRoutePresent := False;

      (FRTXDocument as IDocumentControl).DoCalcTariff;

      RTXResult := FRTXDocument.Result;
      RTXResult.AsTable.First;
      total_price := 0;
      total_price_wo_nds := 0;
      distance    := 0;
      while not RTXResult.AsTable.EOF do  begin
        total_price_wo_nds := total_price_wo_nds + RTXResult.Value['TotalPriceWoNDS'];
        total_price := total_price + RTXResult.Value['TotalPrice'];
        RTXResult.AsTable.Next;
      end;

      FClientDS.Edit;
      FClientDS.FieldByName('TotalPriceWoNDS_own').Value := total_price_wo_nds;
      FClientDS.FieldByName('TotalPrice_own').Value := total_price;
      FClientDS.Post;
    end;

    FClientDS.Next;
  end;
  ShowTextMessage;
  ModalResult := mrOk;
end;

end.
