unit StatFrame;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms, StrUtils, DateUtils,
  Dialogs, cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters, cxStyles,
  cxCustomData, cxFilter, cxData, cxDataStorage, cxEdit, DB, cxDBData, cxCurrencyEdit,
  ADODB, cxGridLevel, cxGridCustomTableView, cxGridTableView, cxGridBandedTableView,
  cxGridDBBandedTableView, cxClasses, cxGridCustomView, cxGrid, default, cxNavigator,
  dxSkinsCore, dxSkinBlack, dxSkinBlue, dxSkinBlueprint, dxSkinCaramel, dxSkinCoffee,
  dxSkinDarkRoom, dxSkinDarkSide, dxSkinDevExpressDarkStyle, dxSkinDevExpressStyle, dxSkinFoggy,
  dxSkinGlassOceans, dxSkinHighContrast, dxSkiniMaginary, dxSkinLilian, dxSkinLiquidSky,
  dxSkinLondonLiquidSky, dxSkinMcSkin, dxSkinMetropolis, dxSkinMetropolisDark, dxSkinMoneyTwins,
  dxSkinOffice2007Black, dxSkinOffice2007Blue, dxSkinOffice2007Green, dxSkinOffice2007Pink,
  dxSkinOffice2007Silver, dxSkinOffice2010Black, dxSkinOffice2010Blue, dxSkinOffice2010Silver,
  dxSkinOffice2013DarkGray, dxSkinOffice2013LightGray, dxSkinOffice2013White, dxSkinOffice2016Colorful,
  dxSkinOffice2016Dark, dxSkinPumpkin, dxSkinSeven, dxSkinSevenClassic, dxSkinSharp, dxSkinSharpPlus,
  dxSkinSilver, dxSkinSpringTime, dxSkinStardust, dxSkinSummer2008, dxSkinTheAsphaltWorld,
  dxSkinsDefaultPainters, dxSkinValentine, dxSkinVisualStudio2013Blue,
  dxSkinVisualStudio2013Dark, dxSkinVisualStudio2013Light, dxSkinVS2010, dxSkinWhiteprint,
  dxSkinXmas2008Blue, dxSkinscxPCPainter, cxDataControllerConditionalFormattingRulesManagerDialog, dxSkinTheBezier, dxDateRanges, dxSkinOffice2019Colorful;

type
  TfrStatFrame = class(TFrame)
    cxGrid1: TcxGrid;
    cxGrid1DBBandedTableView1: TcxGridDBBandedTableView;
    cxGrid1DBBandedTableView1Column1: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1id: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1type: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1name: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1cod: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1value: TcxGridDBBandedColumn;
    cxGrid1Level1: TcxGridLevel;
    ADOStoredProc1: TADOStoredProc;
    DataSource1: TDataSource;
    cxGrid1DBBandedTableView1stat_decryption: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView2: TcxGridDBBandedTableView;
    cxGrid1DBBandedTableView2rod_vagon_name: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView2vagon_count: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView2rate_val_avg: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView2cost_repair: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView2stand_cost: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView2total: TcxGridDBBandedColumn;
    cxStyleRepository1: TcxStyleRepository;
    cxStyle_BandName: TcxStyle;
    cxStyle1: TcxStyle;
    cxStyle2: TcxStyle;
    cxGrid1DBBandedTableView2rod_vagon_id: TcxGridDBBandedColumn;
    procedure cxGrid1DBBandedTableView1CellClick(Sender: TcxCustomGridTableView; ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton; AShift: TShiftState; var AHandled: Boolean);
    procedure cxGrid1DBBandedTableView1CustomDrawCell(Sender: TcxCustomGridTableView; ACanvas: TcxCanvas; AViewInfo: TcxGridTableDataCellViewInfo; var ADone: Boolean);
    procedure cxGrid1DBBandedTableView1MouseLeave(Sender: TObject);
    procedure cxGrid1DBBandedTableView1MouseMove(Sender: TObject; Shift: TShiftState; X, Y: Integer);
    procedure cxGrid1DBBandedTableView1valueGetCellHint(Sender: TcxCustomGridTableItem; ARecord: TcxCustomGridRecord; ACellViewInfo: TcxGridTableDataCellViewInfo; const AMousePos: TPoint;   var AHintText: TCaption; var AIsHintMultiLine: Boolean;  var AHintTextRect: TRect);
    procedure cxGrid1DBBandedTableView2CustomDrawCell(Sender: TcxCustomGridTableView; ACanvas: TcxCanvas; AViewInfo: TcxGridTableDataCellViewInfo; var ADone: Boolean);
    procedure cxGrid1DBBandedTableView2MouseLeave(Sender: TObject);
    procedure cxGrid1DBBandedTableView2MouseMove(Sender: TObject; Shift: TShiftState; X, Y: Integer);
    procedure cxGrid1DBBandedTableView2CellClick(Sender: TcxCustomGridTableView; ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton; AShift: TShiftState; var AHandled: Boolean);
  private
    Fid_part : integer;

    procedure SetPartID(id_part : integer);
    procedure SetDecimalPlaces(decimal_places : integer);
  public
    { Public declarations }

    property _SetPartID        : integer write SetPartID;
    property _SetDecimalPlaces : integer write SetDecimalPlaces;
  end;

implementation

uses ClientInvoice, Pay, main, VagonArenda;

{$R *.dfm}

procedure TfrStatFrame.SetPartID(id_part : integer);
begin
  Fid_part := id_part;

  if id_part = 11 then // Себестоимость
    cxGrid1Level1.GridView := cxGrid1DBBandedTableView2
  else // Статистика
    cxGrid1Level1.GridView := cxGrid1DBBandedTableView1;

  ADOStoredProc1.Parameters.Refresh;
  ADOStoredProc1.Parameters.ParamByName('@id_part').Value := id_part;
  try
    ADOStoredProc1.Open;
  except
  end;
end;

procedure TfrStatFrame.SetDecimalPlaces(decimal_places : integer);
begin
  TcxCurrencyEditProperties(cxGrid1DBBandedTableView1value.Properties).DecimalPlaces := decimal_places;
  if decimal_places <= 0 then decimal_places := 5
  else decimal_places := decimal_places + 6;
  TcxCurrencyEditProperties(cxGrid1DBBandedTableView1value.Properties).DisplayFormat := LeftStr('#,##0.000000', decimal_places);
end;

procedure TfrStatFrame.cxGrid1DBBandedTableView1CellClick(Sender: TcxCustomGridTableView; ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton; AShift: TShiftState; var AHandled: Boolean);
var i : integer;
    str_tag : string;
    prev_day : TDate; // предыдущий рабочий день
begin

  if (AButton = mbLeft)
  and (ACellViewInfo.Item = cxGrid1DBBandedTableView1name)
  and (ACellViewInfo.GridRecord.Values[cxGrid1DBBandedTableView1type.Index] = 1) then begin

    str_tag := ACellViewInfo.GridRecord.Values[cxGrid1DBBandedTableView1cod.Index];
    prev_day := Date - 1;
    // выходные сдвишаем до пятницы
    while DayOfTheWeek(prev_day) > 5 do prev_day := prev_day - 1;

    if Copy(str_tag, 1, 8) = 'Pay.Exp.' then begin
      fmPay := nil;
      for i := 0 to fmMain.MDIChildCount - 1 do
        if (fmMain.MDIChildren[i].ClassName = 'TfmPay') AND (TfmPay(fmMain.MDIChildren[i])._GetTypePay = 0) then
          fmPay := TfmPay(fmMain.MDIChildren[i]);
      if fmPay = nil then
        fmPay := TfmPay.Create(Application, 0, False);
      fmPay.Show;

      if str_tag = 'Pay.Exp.Day' then fmPay.SetPeriodCreate(prev_day, Date);
      if str_tag = 'Pay.Exp.Week' then fmPay.SetPeriodCreate(Date - 7, Date);
    end;

    if Copy(str_tag, 1, 8) = 'Pay.Adm.' then begin
      fmPay := nil;
      for i := 0 to fmMain.MDIChildCount - 1 do
        if (fmMain.MDIChildren[i].ClassName = 'TfmPay') AND (TfmPay(fmMain.MDIChildren[i])._GetTypePay = 3) then
          fmPay := TfmPay(fmMain.MDIChildren[i]);
      if fmPay = nil then
        fmPay := TfmPay.Create(Application, 3, False);
      fmPay.Show;

      if str_tag = 'Pay.Adm.Day' then fmPay.SetPeriodCreate(prev_day, Date);
      if str_tag = 'Pay.Adm.Week' then fmPay.SetPeriodCreate(Date - 7, Date);
    end;

    if Copy(str_tag, 1, 8) = 'Invoice.' then begin
      fmClientInvoice := nil;
      for i := 0 to fmMain.MDIChildCount - 1 do
        if (fmMain.MDIChildren[i].ClassName = 'TfmClientInvoice') AND (TfmClientInvoice(fmMain.MDIChildren[i])._TypeInvoice = 0) then
          fmClientInvoice := TfmClientInvoice(fmMain.MDIChildren[i]);
      if fmClientInvoice = nil then begin
        fmClientInvoice := TfmClientInvoice.Create(Application, False);
        fmClientInvoice._TypeInvoice := 0;
      end;
      fmClientInvoice.Show;

      if str_tag = 'Invoice.Day' then fmClientInvoice.SetPeriod(Date - 1, Date);
      if str_tag = 'Invoice.Week' then fmClientInvoice.SetPeriod(Date - 7, Date);
    end;

    if str_tag = 'Vagon' then begin
      fmMain.dxBarButton66.Click;
    end;

    if str_tag = 'Vagon.Arenda' then begin
      fmMain.dxBarButton139.Click;
    end;

    if str_tag = 'Vagon.Repair' then begin
      fmMain.dxBarButton63.Click;
    end;

    if (str_tag = 'Vagon.Wait') or ((str_tag = 'Vagon.Away')) then begin
      fmMain.dxBarButton30.Click;
    end;

    if str_tag = 'Fact' then begin
      fmMain.dxBarButton13.Click;
    end;

    if str_tag = 'Nakl' then begin
      fmMain.dxBarButton91.Click;
    end;

    if Copy(str_tag, 1, 12) = 'Etran.Saldo.' then begin
      fmMain.dxBarButton27.Click;
    end;
  end;
end;

procedure TfrStatFrame.cxGrid1DBBandedTableView1CustomDrawCell(Sender: TcxCustomGridTableView; ACanvas: TcxCanvas; AViewInfo: TcxGridTableDataCellViewInfo; var ADone: Boolean);
begin
  if (AViewInfo.GridRecord.Values[cxGrid1DBBandedTableView1type.Index] = 0) then begin
    ACanvas.Font.Height := 18;
    if AViewInfo.Item = cxGrid1DBBandedTableView1name then
      ACanvas.Font.Style := [fsBold];
  end;

  if (AViewInfo.GridRecord.Values[cxGrid1DBBandedTableView1type.Index] = 1) then begin
    ACanvas.Font.Height := 16;
    if AViewInfo.Item = cxGrid1DBBandedTableView1name then
      ACanvas.Font.Style := [fsUnderline];
  end;

  ACanvas.Font.Color := clWindowText;
  ACanvas.Brush.Color := clWindow;

  if (AViewInfo.GridRecord.Values[cxGrid1DBBandedTableView1cod.Index] = 'Etran.Saldo.2') then begin
    ACanvas.Font.Color := clRed;
    ACanvas.Font.Style := ACanvas.Font.Style + [fsBold];
  end;

end;

procedure TfrStatFrame.cxGrid1DBBandedTableView1MouseLeave(Sender: TObject);
begin
  Screen.Cursor := crDefault;
end;

procedure TfrStatFrame.cxGrid1DBBandedTableView1MouseMove(Sender: TObject; Shift: TShiftState; X, Y: Integer);
begin
  if cxGrid1DBBandedTableView1.GetHitTest(X, Y) is TcxGridRecordCellHitTest then begin
    if (TcxGridRecordCellHitTest(cxGrid1DBBandedTableView1.GetHitTest(X, Y)).Item = cxGrid1DBBandedTableView1name)
    and (TcxGridRecordHitTest(cxGrid1DBBandedTableView1.GetHitTest(X, Y)).GridRecord.Values[cxGrid1DBBandedTableView1type.Index] = 1) then
      Screen.Cursor := crHandPoint
    else
      Screen.Cursor := crDefault;
  end else
    Screen.Cursor := crDefault;
end;

procedure TfrStatFrame.cxGrid1DBBandedTableView1valueGetCellHint(Sender: TcxCustomGridTableItem; ARecord: TcxCustomGridRecord; ACellViewInfo: TcxGridTableDataCellViewInfo; const AMousePos: TPoint; var AHintText: TCaption; var AIsHintMultiLine: Boolean; var AHintTextRect: TRect);
begin
   if (Fid_part = 9) OR (Fid_part = 8) then begin
   if not VarIsNull(ACellViewInfo.GridRecord.Values[cxGrid1DBBandedTableView1stat_decryption.Index]) then
     AHintText := ACellViewInfo.GridRecord.Values[cxGrid1DBBandedTableView1stat_decryption.Index];
   end;
end;

procedure TfrStatFrame.cxGrid1DBBandedTableView2CellClick(Sender: TcxCustomGridTableView; ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton; AShift: TShiftState; var AHandled: Boolean);
var i : integer;
    column_name : string;
    date_from, date_to : TDate;
type
  TFunc = function(AppHand: THandle; flag: boolean; usr_pwd:PUser_pwd; date_from, date_to: TDate) : variant;
var
  FDic   : TFunc;
  handle : THandle;
  v      : Variant;
begin
  if (AButton = mbLeft) then begin

    column_name := TcxGridDBBandedColumn(ACellViewInfo.Item).DataBinding.FieldName;

    if column_name = 'vagon_count' then begin
      fmMain.dxBarButton66.Click;
    end;

    if column_name = 'rate_val_avg' then begin
      fmVagonArenda := nil;
      for i := 0 to fmMain.MDIChildCount - 1 Do
        if (fmMain.MDIChildren[i].ClassName = 'TfmVagonArenda') then begin
          fmVagonArenda := TfmVagonArenda(fmMain.MDIChildren[i]);
          fmVagonArenda.Show;
          Break;
        end;
      if fmVagonArenda = nil then
        fmVagonArenda := TfmVagonArenda.Create(Application, False);
      fmVagonArenda._SetMonthPeriod := IncMonth(Date, -1); // предыдущий месяц
    end;

    if column_name = 'cost_repair' then begin
      //	-- нас интересует 2 квартала отстоящих от текукщего на 6 и 9 месяцев соответсвенно:
      //	-- I кв. => II и III кв. пред. года
      //	-- II кв. => III и IV кв. пред. года
      //	-- III кв. => IV кв. пред. года и I кв. тек. года
      //	-- IV кв. => I и II кв. тек. года
      //	-- ИД Задачи = 14728393

      date_from := IncMonth(Date, -9); // -- -3 вартала
      repeat
        // -- найдем начало квартала (ищем конец предыдущего квартала)
        date_from := date_from - DayOf(date_from);
      until MonthOf(date_from) mod 3 = 0;
      date_from := date_from + 1;
      date_to := IncMonth(date_from, 6) - 1;	//-- Конец периода

      handle := LoadLibrary('dictionary.dll');
      @FDic := GetProcAddress(handle, 'CreateWndVagonRepairAnalis');
      v := FDic(Application.Handle, False, usr_pwd, date_from, date_to);
      FreeLibrary(handle);
    end;


  end;
end;

procedure TfrStatFrame.cxGrid1DBBandedTableView2CustomDrawCell(Sender: TcxCustomGridTableView; ACanvas: TcxCanvas; AViewInfo: TcxGridTableDataCellViewInfo; var ADone: Boolean);
begin
  ACanvas.Font.Color := clWindowText;
  ACanvas.Brush.Color := clWindow;
end;

procedure TfrStatFrame.cxGrid1DBBandedTableView2MouseLeave(Sender: TObject);
begin
  Screen.Cursor := crDefault;
end;

procedure TfrStatFrame.cxGrid1DBBandedTableView2MouseMove(Sender: TObject; Shift: TShiftState; X, Y: Integer);
var column_name : string;
begin
  if cxGrid1DBBandedTableView2.GetHitTest(X, Y) is TcxGridRecordCellHitTest then begin
    column_name := TcxGridDBBandedColumn(TcxGridRecordCellHitTest(cxGrid1DBBandedTableView2.GetHitTest(X, Y)).Item).DataBinding.FieldName;

    if MatchText(column_name, ['vagon_count', 'rate_val_avg', 'cost_repair', 'stand_cost']) then
      Screen.Cursor := crHandPoint
    else
      Screen.Cursor := crDefault;
  end else
    Screen.Cursor := crDefault;
end;



end.
