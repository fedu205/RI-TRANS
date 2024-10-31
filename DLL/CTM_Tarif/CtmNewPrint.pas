unit CtmNewPrint;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters,
  cxContainer, cxEdit, cxCheckListBox, StdCtrls, Buttons, ExtCtrls, cxCheckBox,
  Default, Other, ComObj, DB, DBClient, cxPropertiesStore, dxSkinsCore,
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
  dxSkinXmas2008Blue, cxClasses, dxSkinOffice2016Colorful, dxSkinOffice2016Dark,
  dxSkinVisualStudio2013Blue, dxSkinVisualStudio2013Dark,
  dxSkinVisualStudio2013Light, cxCustomListBox, dxSkinTheBezier;

type
  TfmCtmNewPrint = class(TForm)
    FlowPanel1: TFlowPanel;
    cxCheckBox1: TcxCheckBox;
    cxCheckBox2: TcxCheckBox;
    cxCheckBox3: TcxCheckBox;
    cxCheckBox4: TcxCheckBox;
    cxCheckBox5: TcxCheckBox;
    cxCheckBox6: TcxCheckBox;
    cxCheckBox7: TcxCheckBox;
    Panel1: TPanel;
    BitBtn_Ok: TBitBtn;
    BitBtn_Cancel: TBitBtn;
    Panel2: TPanel;
    cxCheckListBox3: TcxCheckListBox;
    cxPropertiesStore1: TcxPropertiesStore;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure BitBtn_OkClick(Sender: TObject);
  private
    Fusr_pwd      : PUser_pwd;
    Fdate_from_to : TDateTime;

    FClient_CalcParametrs : TClientDataSet;
    FClient_Routes        : TClientDataSet;
    FClient_BackRoutes    : TClientDataSet;
    FClient_Result        : TClientDataSet;
    FClient_LandTaxes     : TClientDataSet;

    procedure SetResult(ClientDS: TClientDataSet);
  public
    constructor Create(AOwner: TApplication; usr_pwd: PUser_pwd; date_from_to: TDateTime); reintroduce;
  published
    property _SetCalcParam : TClientDataSet write FClient_CalcParametrs;
    property _SetRoutes    : TClientDataSet write FClient_Routes;
    property _SetBackRoutes: TClientDataSet write FClient_BackRoutes;
    property _SetResult    : TClientDataSet write SetResult;
    property _SetLandTaxes : TClientDataSet write FClient_LandTaxes;
  end;

var
  fmCtmNewPrint: TfmCtmNewPrint;

implementation

{$R *.dfm}


constructor TfmCtmNewPrint.Create(AOwner: TApplication; usr_pwd: PUser_pwd; date_from_to: TDateTime);
begin
  Screen.Cursor := crHourglass;
  inherited Create(AOwner);
  Fusr_pwd := usr_pwd;
  Fdate_from_to := date_from_to;

  Screen.Cursor := crDefault;
end;

procedure TfmCtmNewPrint.SetResult(ClientDS: TClientDataSet);
var distinctLand  : boolean;
    i             : integer;
begin
  FClient_Result := ClientDS;

  FClient_Result.First;
  while not FClient_Result.EOF do  begin
    distinctLand := True;

    for i := 0 to cxCheckListBox3.Count - 1 do
      if cxCheckListBox3.Items[i].Text = FClient_Result['LandName'] then
        distinctLand := False;

    if distinctLand then
      cxCheckListBox3.AddItem(FClient_Result['LandName']);

    FClient_Result.Next;
  end;

  for i := 0 to cxCheckListBox3.Count - 1 do begin
    if LowerCase(Trim(cxCheckListBox3.Items[i].Text)) = LowerCase('Россия') then cxCheckListBox3.Items[i].Checked := True;
  end;

end;

procedure TfmCtmNewPrint.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action := caFree;
end;

procedure TfmCtmNewPrint.BitBtn_OkClick(Sender: TObject);
var exApp, exWkb, exWks  : OleVariant;
    numrange, i          : integer;
    numstr,s             : string;
begin
  try
    Screen.Cursor := -11;
    numrange := 4;
//    fmCtmAnimate := TfmCtmAnimate.Create(Application,'Подождите - выполняется обработка!');
//    fmCtmAnimate.Label1.Caption := 'Запуск сервера автоматизации...';
//    fmCtmAnimate.cxProgressBar1.Visible := False;
//    fmCtmAnimate.Show;
//--------------- Объявляем Excel --------------
    exApp := CreateOleObject('Excel.Application');
    exWkb := exApp.Workbooks.Add;
    exWkb := exApp.ActiveWorkbook;
    exWks := exWkb.WorkSheets[1];

    exWks.Range['A1'].Select;
    exApp.CutCopyMode := False;

    exWks.PageSetup.RightMargin := exApp.InchesToPoints(0.196850393700787);
    exWks.PageSetup.LeftMargin := exApp.InchesToPoints(0.196850393700787);
    exWks.PageSetup.TopMargin := exApp.InchesToPoints(0.393700787401575);
    exWks.PageSetup.BottomMargin := exApp.InchesToPoints(0.590551181102362);


    exWks.Range['A3:F3'].MergeCells := True;
    exWks.Range['A3'].Font.Size := 12;
    exWks.Range['A3'].Font.Bold := True;
    exWks.Range['A3'].Value := 'Расчет провозной платы на ' + FormatDateTime('dd.mm.yyyy', Fdate_from_to);

    if cxCheckBox1.Checked then begin
//      fmCtmAnimate.Label1.Caption := 'Вывод комментария...';
//      fmCtmAnimate.Refresh;
      numrange := numrange + 1;
      numstr := IntToStr(numrange);
      exWks.Range['A' + numstr + ':J' + numstr].MergeCells := True;
      exWks.Range['A' + numstr].Value := 'Комментарий к расчету';
      exWks.Range['A' + numstr].Font.Bold := True;

      numrange := numrange + 1;
      numstr := IntToStr(numrange);
      exWks.Range['A' + numstr + ':J' + numstr].MergeCells := True;
      if not FClient_CalcParametrs.FieldByName('Comment').IsNull then begin
        exWks.Range['A' + numstr].Value := FClient_CalcParametrs.FieldByName('Comment').AsString;
        exWks.Range[numstr + ':' + numstr].RowHeight := 24;
      end;
    end;

    if cxCheckBox2.Checked then begin
//      fmCtmAnimate.Label1.Caption := 'Вывод информации по станциям...';
//      fmCtmAnimate.Refresh;
      numrange := numrange + 2;
      numstr := IntToStr(numrange);
      exWks.Range['A' + numstr + ':B' + numstr].MergeCells := True;
      exWks.Range['A' + numstr].Value := 'Станция отправления:';
      exWks.Range['C' + numstr].NumberFormat := WideString('@');
      exWks.Range['C' + numstr].Value := FClient_CalcParametrs.FieldByName('node_begin_cod').AsWideString;
      exWks.Range['C' + numstr].Font.Bold := True;
      exWks.Range['D' + numstr + ':G' + numstr].MergeCells := True;
      exWks.Range['D' + numstr].Value := FClient_CalcParametrs.FieldByName('node_begin_name').AsWideString;
      exWks.Range['D' + numstr].Font.Bold := True;
      exWks.Range['H' + numstr + ':J' + numstr].MergeCells := True;
      exWks.Range['H' + numstr].Value := FClient_CalcParametrs.FieldByName('node_begin_road_name').AsWideString;

      numrange := numrange + 1;
      numstr := IntToStr(numrange);
      exWks.Range['A' + numstr + ':B' + numstr].MergeCells := True;
      exWks.Range['A' + numstr].Value := 'Параграфы:';
      exWks.Range['D' + numstr + ':G' + numstr].MergeCells := True;
//      exWks.Range['D' + numstr].Value := RaschetDoc.Data.Value['FromStation\Paragraph']; !!!!!!!!!!
      exWks.Range['H' + numstr + ':J' + numstr].MergeCells := True;

      numrange := numrange + 1;
      numstr := IntToStr(numrange);
      exWks.Range['A' + numstr + ':B' + numstr].MergeCells := True;
      exWks.Range['A' + numstr].Value := 'Страна отправления:';
      exWks.Range['D' + numstr + ':G' + numstr].MergeCells := True;
      exWks.Range['D' + numstr].Value := FClient_CalcParametrs.FieldByName('node_begin_PPland_name').AsString;
      exWks.Range['H' + numstr + ':J' + numstr].MergeCells := True;

      numrange := numrange + 1;
      numstr := IntToStr(numrange);
      exWks.Range['A' + numstr + ':B' + numstr].MergeCells := True;
      exWks.Range['A' + numstr].Value := 'Станция назначения:';
      exWks.Range['C' + numstr].Value := FClient_CalcParametrs.FieldByName('node_end_cod').AsWideString;
      exWks.Range['C' + numstr].NumberFormat := WideString(WideString('@'));
      exWks.Range['C' + numstr].Font.Bold := True;
      exWks.Range['D' + numstr + ':G' + numstr].MergeCells := True;
      exWks.Range['D' + numstr].Value := FClient_CalcParametrs.FieldByName('node_end_name').AsWideString;
      exWks.Range['D' + numstr].Font.Bold := True;
      exWks.Range['H' + numstr + ':J' + numstr].MergeCells := True;
      exWks.Range['H' + numstr].Value := FClient_CalcParametrs.FieldByName('node_end_road_name').AsWideString;

      numrange := numrange + 1;
      numstr := IntToStr(numrange);
      exWks.Range['A' + numstr + ':B' + numstr].MergeCells := True;
      exWks.Range['A' + numstr].Value := 'Параграфы:';
      exWks.Range['D' + numstr + ':G' + numstr].MergeCells := True;
//      exWks.Range['D' + numstr].Value := RaschetDoc.Data.Value['ToStation\Paragraph']; !!!!!!!!!!!!!!
      exWks.Range['H' + numstr + ':J' + numstr].MergeCells := True;


      numrange := numrange + 1;
      numstr := IntToStr(numrange);
      exWks.Range['A' + numstr + ':B' + numstr].MergeCells := True;
      exWks.Range['A' + numstr].Value := 'Страна назначения:';
      exWks.Range['D' + numstr + ':G' + numstr].MergeCells := True;
      exWks.Range['D' + numstr].Value := FClient_CalcParametrs.FieldByName('node_end_PPland_name').AsString;
      exWks.Range['H' + numstr + ':J' + numstr].MergeCells := True;

      exWks.Range['A' + numstr + ':J' + numstr].Borders[9].LineStyle := 1;
    end;

    if cxCheckBox4.Checked then begin
//      fmCtmAnimate.Label1.Caption := 'Вывод информации по грузу...';
//      fmCtmAnimate.Refresh;
      numrange := numrange + 1;
      numstr := IntToStr(numrange);
      exWks.Range['A' + numstr + ':C' + numstr].MergeCells := True;
      exWks.Range['A' + numstr].Value := 'Код груза ЕТСНГ:';
      exWks.Range['D' + numstr].NumberFormat := WideString('@');
      exWks.Range['D' + numstr].Value := FClient_CalcParametrs.FieldByName('ETSNG_cod').AsWideString;
      exWks.Range['D' + numstr].Font.Bold := True;
      exWks.Range['E' + numstr + ':J' + numstr].MergeCells := True;
      exWks.Range['E' + numstr].Value := FClient_CalcParametrs.FieldByName('ETSNG_name').AsWideString;
      exWks.Range['E' + numstr].Font.Bold := True;

      numrange := numrange + 1;
      numstr := IntToStr(numrange);
      exWks.Range['A' + numstr + ':C' + numstr].MergeCells := True;
      exWks.Range['A' + numstr].Value := 'Тарифный класс груза:';
      exWks.Range['D' + numstr].NumberFormat := WideString('@');
      exWks.Range['D' + numstr].Value := FClient_CalcParametrs.FieldByName('ETSNG_klass').AsWideString;
      exWks.Range['D' + numstr].Font.Bold := True;
      exWks.Range['E' + numstr + ':J' + numstr].MergeCells := True;

      numrange := numrange + 1;
      numstr := IntToStr(numrange);
      exWks.Range['A' + numstr + ':C' + numstr].MergeCells := True;
      exWks.Range['A' + numstr].Value := 'Код груза ГНГ:';
      exWks.Range['D' + numstr].NumberFormat := WideString('@');
      exWks.Range['D' + numstr].Value := FClient_CalcParametrs.FieldByName('GNG_cod').AsWideString;
      exWks.Range['D' + numstr].Font.Bold := True;
      exWks.Range['E' + numstr + ':J' + numstr].MergeCells := True;
      exWks.Range['E' + numstr].Value := FClient_CalcParametrs.FieldByName('GNG_name').AsWideString;
      exWks.Range['E' + numstr].Font.Bold := True;

      numrange := numrange + 1;
      numstr := IntToStr(numrange);
      exWks.Range['A' + numstr + ':C' + numstr].MergeCells := True;
      exWks.Range['A' + numstr].Value := 'Класс ЕТТ:';
      exWks.Range['D' + numstr].NumberFormat := WideString('@');
      exWks.Range['D' + numstr].Value := FClient_CalcParametrs.FieldByName('GNG_klass').AsWideString;
      exWks.Range['D' + numstr].Font.Bold := True;
      exWks.Range['E' + numstr + ':J' + numstr].MergeCells := True;

      numrange := numrange + 1;
      numstr := IntToStr(numrange);
      exWks.Range['A' + numstr + ':C' + numstr].MergeCells := True;
      exWks.Range['A' + numstr].Value := 'Вес груза:';
      exWks.Range['D' + numstr].Value := FClient_CalcParametrs.FieldByName('Weight').AsWideString + ' т.';
      exWks.Range['D' + numstr].Font.Bold := True;
      exWks.Range['E' + numstr + ':J' + numstr].MergeCells := True;

      if not FClient_CalcParametrs.FieldByName('bulkiness_name').IsNull then
        if FClient_CalcParametrs.FieldByName('Bulkiness').asString <> 'Н0000' then begin
          numrange := numrange + 1;
          numstr := IntToStr(numrange);
          exWks.Range['A' + numstr + ':C' + numstr].MergeCells := True;
          exWks.Range['A' + numstr].Value := 'Негабаритность:';
          exWks.Range['D' + numstr + ':j' + numstr].MergeCells := True;
          exWks.Range['D' + numstr].Value := FClient_CalcParametrs.FieldByName('bulkiness_name').AsString;
          exWks.Range['D' + numstr].Font.Bold := True;
        end;
      exWks.Range['A' + numstr + ':J' + numstr].Borders[9].LineStyle := 1;

    end;

    if cxCheckBox3.Checked then begin
//      fmCtmAnimate.Label1.Caption := 'Вывод информации по отправке...';
//      fmCtmAnimate.Refresh;
      numrange := numrange + 2;
      numstr := IntToStr(numrange);
      exWks.Range['A' + numstr + ':C' + numstr].MergeCells := True;
      exWks.Range['A' + numstr].Value := 'Вид отправки:';
      exWks.Range['D' + numstr + ':K' + numstr].MergeCells := True;
      exWks.Range['D' + numstr].Value := FClient_CalcParametrs.FieldByName('Otpr_name').AsString + ': ' + FClient_CalcParametrs.FieldByName('Send_name').AsString;
      exWks.Range['D' + numstr].Font.Bold := True;
      exWks.Range['D' + numstr].ShrinkToFit := True;

      numrange := numrange + 1;
      numstr := IntToStr(numrange);
      exWks.Range['A' + numstr + ':C' + numstr].MergeCells := True;
      exWks.Range['A' + numstr].Value := 'Скорость:';
      exWks.Range['D' + numstr + ':J' + numstr].MergeCells := True;
      exWks.Range['D' + numstr].Value := 'Грузовая';
      exWks.Range['D' + numstr].Font.Bold := True;
      exWks.Range['A' + numstr + ':J' + numstr].Borders[9].LineStyle := 1;
    end;

    if cxCheckBox5.Checked then begin
//      fmCtmAnimate.Label1.Caption := 'Вывод информации по вагону/контейнеру...';
//      fmCtmAnimate.Refresh;
      numrange := numrange + 2;
      numstr := IntToStr(numrange);
      exWks.Range['A' + numstr + ':C' + numstr].MergeCells := True;
      exWks.Range['A' + numstr].Value := 'Род подвижного средства:';
      exWks.Range['D' + numstr + ':J' + numstr].MergeCells := True;
      exWks.Range['D' + numstr].Value := FClient_CalcParametrs.FieldByName('Cars_name').AsString;
      exWks.Range['D' + numstr].Font.Bold := True;

      numrange := numrange + 1;
      numstr := IntToStr(numrange);
      exWks.Range['A' + numstr + ':C' + numstr].MergeCells := True;
      exWks.Range['A' + numstr].Value := 'Принадлежность:';
      exWks.Range['D' + numstr + ':J' + numstr].MergeCells := True;
      case FClient_CalcParametrs.FieldByName('Owners_id').AsInteger of
        1 : s := 'Общего парка';
        2 : s := 'Собственный';
        3 : s := 'Арендованный';
      end;
      exWks.Range['D' + numstr].Value := s;
      exWks.Range['D' + numstr].Font.Bold := True;

      numrange := numrange + 1;
      numstr := IntToStr(numrange);
      exWks.Range['A' + numstr + ':C' + numstr].MergeCells := True;
      exWks.Range['A' + numstr].Value := 'Количество вагонов:';
      exWks.Range['D' + numstr].NumberFormat := WideString('@');
      exWks.Range['D' + numstr].Value := FClient_CalcParametrs.FieldByName('Kol_PS').AsString;
      exWks.Range['D' + numstr].Font.Bold := True;

      numrange := numrange + 1;
      numstr := IntToStr(numrange);
      exWks.Range['A' + numstr + ':C' + numstr].MergeCells := True;
      exWks.Range['A' + numstr].Value := 'Количество вагонов в отправке:';
      exWks.Range['D' + numstr].NumberFormat := WideString('@');
      exWks.Range['D' + numstr].Value := FClient_CalcParametrs.FieldByName('Vag_otpr').AsString;
      exWks.Range['D' + numstr].Font.Bold := True;

      numrange := numrange + 1;
      numstr := IntToStr(numrange);
      exWks.Range['A' + numstr + ':C' + numstr].MergeCells := True;
      exWks.Range['A' + numstr].Value := 'Кол-во осей :';
      exWks.Range['D' + numstr].NumberFormat := WideString('@');
      exWks.Range['D' + numstr].Value := FClient_CalcParametrs.FieldByName('Cars_axis').AsString;
      exWks.Range['D' + numstr].Font.Bold := True;
      exWks.Range['A' + numstr + ':J' + numstr].Borders[9].LineStyle := 1;
    end;

    if not FClient_CalcParametrs.FieldByName('Support_Caption').IsNull then begin
      numrange := numrange + 2;
      numstr := IntToStr(numrange);
      exWks.Range['A' + numstr + ':C' + numstr].MergeCells := True;
      exWks.Range['A' + numstr].Value := 'Сопровождение';
      exWks.Range['D' + numstr + ':J' + numstr].MergeCells := True;
      exWks.Range['D' + numstr].Value := FClient_CalcParametrs.FieldByName('Support_Caption').AsString;
      exWks.Range['D' + numstr].Font.Bold := True;

      numrange := numrange + 1;
      numstr := IntToStr(numrange);
      exWks.Range['A' + numstr + ':C' + numstr].MergeCells := True;
      exWks.Range['A' + numstr].Value := 'Количество проводников';
      exWks.Range['D' + numstr + ':J' + numstr].MergeCells := True;
      exWks.Range['D' + numstr].NumberFormat := WideString('@');
      exWks.Range['D' + numstr].Value := FClient_CalcParametrs.FieldByName('Support_Kol_Conductor').AsString;
      exWks.Range['D' + numstr].Font.Bold := True;
      exWks.Range['A' + numstr + ':J' + numstr].Borders[9].LineStyle := 1;
    end;

    if not FClient_CalcParametrs.FieldByName('VCGuard').IsNull then begin
//      fmCtmAnimate.Label1.Caption := 'Вывод информации по особенности перевозки...';
//      fmCtmAnimate.Refresh;
      numrange := numrange + 2;
      numstr := IntToStr(numrange);
      exWks.Range['A' + numstr + ':J' + numstr].MergeCells := True;
      exWks.Range['A' + numstr].Value := 'Особенности перевозки :';
      exWks.Range['A' + numstr].Font.Bold := True;

      numrange := numrange + 1;
      numstr := IntToStr(numrange);
      exWks.Range['A' + numstr + ':J' + numstr].MergeCells := True;
      exWks.Range['A' + numstr].NumberFormat := WideString('@');
      exWks.Range['A' + numstr].Value := 'Кол-во вагонов в охраняемой группе ' + FClient_CalcParametrs.FieldByName('VCGuard').AsString;
    end;
//******************************************************************************
    if cxCheckBox6.Checked then begin
//      fmCtmAnimate.Label1.Caption := 'Вывод информации по маршруту...';
//      fmCtmAnimate.Refresh;
      numrange := numrange + 2;
      numstr := IntToStr(numrange);
      exWks.Range['A' + numstr + ':C' + numstr].MergeCells := True;
      exWks.Range['A' + numstr].Font.Bold := True;
      exWks.Range['A' + numstr].Font.Size := 12;
      exWks.Range['A' + numstr].Value := 'Прямой маршрут';

      numrange := numrange + 1;
      numstr := IntToStr(numrange);
      exWks.Range['A' + numstr + ':B' + numstr].MergeCells := True;
      exWks.Range['A' + numstr].Font.Bold := True;
      exWks.Range['A' + numstr].Value := 'Страна';
      exWks.Range['C' + numstr].Font.Bold := True;
      exWks.Range['C' + numstr].Value := 'Код';
      exWks.Range['D' + numstr + ':F' + numstr].MergeCells := True;
      exWks.Range['D' + numstr].Font.Bold := True;
      exWks.Range['D' + numstr].Value := 'Название';
      exWks.Range['G' + numstr].Font.Bold := True;
      exWks.Range['G' + numstr].Value := 'Код';
      exWks.Range['H' + numstr + ':J' + numstr].MergeCells := True;
      exWks.Range['H' + numstr].Font.Bold := True;
      exWks.Range['H' + numstr].Value := 'Название';
      exWks.Range['K' + numstr].Font.Bold := True;
      exWks.Range['K' + numstr].Value := 'Расст.';

      FClient_Routes.First;
      while not FClient_Routes.Eof do begin
        numrange := numrange + 1;
        numstr := IntToStr(numrange);
        exWks.Range['A' + numstr + ':B' + numstr].MergeCells := True;
        exWks.Range['A' + numstr].Value := FClient_Routes.FieldByName('LandName').AsString;
        exWks.Range['C' + numstr].NumberFormat := WideString('@');
        exWks.Range['C' + numstr].Value := FClient_Routes.FieldByName('NewCode').AsString;
        exWks.Range['D' + numstr + ':F' + numstr].MergeCells := True;
        exWks.Range['D' + numstr].Value := FClient_Routes.FieldByName('Name').AsString;
        exWks.Range['K' + numstr].Value := FClient_Routes.FieldByName('Distance').AsString;
        FClient_Routes.Next;
        exWks.Range['G' + numstr].NumberFormat := WideString('@');
        exWks.Range['G' + numstr].Value := FClient_Routes.FieldByName('NewCode').AsString;
        exWks.Range['H' + numstr + ':J' + numstr].MergeCells := True;
        exWks.Range['H' + numstr].Value := FClient_Routes.FieldByName('Name').AsString;;
        exWks.Range['K' + numstr].Value := FClient_Routes.FieldByName('Distance').AsString - exWks.Range['K'+ numstr].Value;
        FClient_Routes.Next;
      end;

      if FClient_BackRoutes.RecordCount > 0 then begin
//        fmCtmAnimate.Refresh;
        numrange := numrange + 2;
        numstr := IntToStr(numrange);
        exWks.Range['A' + numstr + ':C' + numstr].MergeCells := True;
        exWks.Range['A' + numstr].Font.Bold := True;
        exWks.Range['A' + numstr].Font.Size := 12;
        exWks.Range['A' + numstr].Value := 'Обратный маршрут';

        numrange := numrange + 1;
        numstr := IntToStr(numrange);
        exWks.Range['A' + numstr + ':B' + numstr].MergeCells := True;
        exWks.Range['A' + numstr].Font.Bold := True;
        exWks.Range['A' + numstr].Value := 'Страна';
        exWks.Range['C' + numstr].Font.Bold := True;
        exWks.Range['C' + numstr].Value := 'Код';
        exWks.Range['D' + numstr + ':F' + numstr].MergeCells := True;
        exWks.Range['D' + numstr].Font.Bold := True;
        exWks.Range['D' + numstr].Value := 'Название';
        exWks.Range['G' + numstr].Font.Bold := True;
        exWks.Range['G' + numstr].Value := 'Код';
        exWks.Range['H' + numstr + ':J' + numstr].MergeCells := True;
        exWks.Range['H' + numstr].Font.Bold := True;
        exWks.Range['H' + numstr].Value := 'Название';
        exWks.Range['K' + numstr].Font.Bold := True;
        exWks.Range['K' + numstr].Value := 'Расст.';

        FClient_BackRoutes.First;
        while not FClient_BackRoutes.Eof do begin
          numrange := numrange + 1;
          numstr := IntToStr(numrange);
          exWks.Range['A' + numstr + ':B' + numstr].MergeCells := True;
          exWks.Range['A' + numstr].Value := FClient_BackRoutes.FieldByName('LandName').AsString;
          exWks.Range['C' + numstr].NumberFormat := WideString('@');
          exWks.Range['C' + numstr].Value := FClient_BackRoutes.FieldByName('NewCode').AsString;
          exWks.Range['D' + numstr + ':F' + numstr].MergeCells := True;
          exWks.Range['D' + numstr].Value := FClient_BackRoutes.FieldByName('Name').AsString;
          exWks.Range['K' + numstr].Value := FClient_BackRoutes.FieldByName('Distance').AsString;
          FClient_BackRoutes.Next;
          exWks.Range['G' + numstr].NumberFormat := WideString('@');
          exWks.Range['G' + numstr].Value := FClient_BackRoutes.FieldByName('NewCode').AsString;
          exWks.Range['H' + numstr + ':J' + numstr].MergeCells := True;
          exWks.Range['H' + numstr].Value := FClient_BackRoutes.FieldByName('Name').AsString;;
          exWks.Range['K' + numstr].Value := FClient_BackRoutes.FieldByName('Distance').AsString - exWks.Range['K'+ numstr].Value;
          FClient_BackRoutes.Next;
        end;
      end;
    end;
//******************************************************************************

    numrange := numrange + 2;
    numstr := IntToStr(numrange);
    exWks.Range[numstr + ':' + numstr].RowHeight := 24;
    exWks.Range['A' + numstr + ':B' + numstr].MergeCells := True;
    exWks.Range['A' + numstr].Font.Bold := True;
    exWks.Range['A' + numstr].Value := 'Страна';
    exWks.Range['C' + numstr + ':D' + numstr].MergeCells := True;
    exWks.Range['C' + numstr].Font.Bold := True;
    exWks.Range['C' + numstr].Value := 'Расстояние';
    exWks.Range['E' + numstr].Font.Bold := True;
    exWks.Range['E' + numstr].Value := 'ВИД';
    exWks.Range['F' + numstr].Font.Bold := True;
    exWks.Range['F' + numstr].Value := 'Пров. пл.';
    exWks.Range['G' + numstr].Font.Bold := True;
    exWks.Range['G' + numstr].Value := 'за 1т. Пров. пл.';
    exWks.Range['H' + numstr].Font.Bold := True;
    exWks.Range['H' + numstr].Value := 'Сопр.';
    exWks.Range['I' + numstr].Font.Bold := True;
    exWks.Range['I' + numstr].Value := 'Охрана';
    exWks.Range['J' + numstr].Font.Bold := True;
    exWks.Range['J' + numstr].Value := 'Доп.сборы';
    exWks.Range['K' + numstr].Font.Bold := True;
    exWks.Range['K' + numstr].Value := 'Вал.';
    exWks.Range['A' + numstr + ':K' + numstr].Borders[9].LineStyle := 1;
    exWks.Range['A' + numstr + ':K' + numstr].Borders[8].LineStyle := 1;
    exWks.Range['A' + numstr + ':K' + numstr].Borders[1].LineStyle := 1;
    exWks.Range['A' + numstr + ':K' + numstr].Borders[2].LineStyle := 1;
    exWks.Range['A' + numstr + ':K' + numstr].HorizontalAlignment := -4108;
    exWks.Range['A' + numstr + ':K' + numstr].Font.Size := 8;

    FClient_Result.First;
    while not FClient_Result.Eof do begin
      numrange := numrange + 1;
      numstr := IntToStr(numrange);
      exWks.Range['A' + numstr + ':B' + numstr].MergeCells := True;
      if FClient_Result.FieldByName('direction_id').AsInteger = 1 then
        exWks.Range['A' + numstr].Value := FClient_Result.FieldByName('LandName').AsString;
      if FClient_Result.FieldByName('direction_id').AsInteger = 2 then
        exWks.Range['A' + numstr].Value := FClient_Result.FieldByName('LandName').AsString + ' (Возврат)';
      exWks.Range['C' + numstr + ':D' + numstr].MergeCells := True;
      exWks.Range['C' + numstr].Value := FClient_Result.FieldByName('Distance').AsString;
      exWks.Range['E' + numstr].Font.Bold := True;
      exWks.Range['E' + numstr].Value := FClient_Result.FieldByName('CalcDsc').AsString;
      exWks.Range['F' + numstr].Value := FClient_Result.FieldByName('BasePrice').AsCurrency;
      exWks.Range['F' + numstr].NumberFormat := '# ###,00';
      exWks.Range['G' + numstr].Value := FClient_Result.FieldByName('PerT_PP').AsCurrency;
      exWks.Range['G' + numstr].NumberFormat := '# ###,00';
      exWks.Range['H' + numstr].Value := FClient_Result.FieldByName('SoprPrice').AsCurrency;
      exWks.Range['H' + numstr].NumberFormat := '# ###,00';
      exWks.Range['I' + numstr].Value := FClient_Result.FieldByName('GuardPrice').AsCurrency;
      exWks.Range['I' + numstr].NumberFormat := '# ###,00';
      exWks.Range['J' + numstr].Value := FClient_Result.FieldByName('AddDues').AsCurrency;
      exWks.Range['J' + numstr].NumberFormat := '# ###,00';
      exWks.Range['K' + numstr].Value := FClient_Result.FieldByName('ABBR').AsString;
      exWks.Range['K' + numstr].HorizontalAlignment := -4108;
      exWks.Range['A' + numstr + ':K' + numstr].Borders[9].LineStyle := 1;
      exWks.Range['A' + numstr + ':K' + numstr].Borders[8].LineStyle := 1;
      exWks.Range['A' + numstr + ':K' + numstr].Borders[1].LineStyle := 1;
      exWks.Range['A' + numstr + ':K' + numstr].Borders[2].LineStyle := 1;
      exWks.Range['A' + numstr + ':K' + numstr].Font.Size := 8;
      FClient_Result.Next;
    end;

    numrange := numrange + 2;
    numstr := IntToStr(numrange);
    exWks.Range[numstr + ':' + numstr].RowHeight := 24;
    exWks.Range['A' + numstr + ':B' + numstr].MergeCells := True;
    exWks.Range['A' + numstr].Font.Bold := True;
    exWks.Range['A' + numstr].Value := 'Страна';
    exWks.Range['C' + numstr + ':D' + numstr].MergeCells := True;
    exWks.Range['C' + numstr].Font.Bold := True;
    exWks.Range['C' + numstr].Value := 'Итого без НДС';
    exWks.Range['E' + numstr + ':F' + numstr].MergeCells := True;
    exWks.Range['E' + numstr].Font.Bold := True;
    exWks.Range['E' + numstr].Value := 'НДС';
    exWks.Range['G' + numstr].Font.Bold := True;
    exWks.Range['G' + numstr].Value := 'Итого';
    exWks.Range['H' + numstr].Font.Bold := True;
    exWks.Range['H' + numstr].Value := 'за 1 т.';
    exWks.Range['I' + numstr].Font.Bold := True;
    exWks.Range['I' + numstr].Value := 'за 1 т.  (без НДС)';
    exWks.Range['I' + numstr].WrapText := True;
    exWks.Range['J' + numstr].Font.Bold := True;
    exWks.Range['J' + numstr].Value := 'Вал';
    exWks.Range['A' + numstr + ':J' + numstr].Borders[9].LineStyle := 1;
    exWks.Range['A' + numstr + ':J' + numstr].Borders[8].LineStyle := 1;
    exWks.Range['A' + numstr + ':J' + numstr].Borders[1].LineStyle := 1;
    exWks.Range['A' + numstr + ':J' + numstr].Borders[2].LineStyle := 1;
    exWks.Range['A' + numstr + ':J' + numstr].HorizontalAlignment := -4108;
    exWks.Range['A' + numstr + ':J' + numstr].Font.Size := 8;

    FClient_Result.First;
    while not FClient_Result.Eof do begin
      numrange := numrange + 1;
      numstr := IntToStr(numrange);
      exWks.Range['A' + numstr + ':B' + numstr].MergeCells := True;
      if FClient_Result.FieldByName('direction_id').AsInteger = 1 then
        exWks.Range['A' + numstr].Value := FClient_Result.FieldByName('LandName').AsString;
      if FClient_Result.FieldByName('direction_id').AsInteger = 2 then
        exWks.Range['A' + numstr].Value := FClient_Result.FieldByName('LandName').AsString + ' (Возврат)';
      exWks.Range['C' + numstr + ':D' + numstr].MergeCells := True;
      exWks.Range['C' + numstr].Value := FClient_Result.FieldByName('TotalPriceWoNDS').AsCurrency;
      exWks.Range['C' + numstr].NumberFormat := '# ##0,00';
      exWks.Range['E' + numstr + ':F' + numstr].MergeCells := True;
      exWks.Range['E' + numstr].Value := FClient_Result.FieldByName('NDS').AsCurrency;
      exWks.Range['E' + numstr].Font.Bold := True;
      exWks.Range['E' + numstr].NumberFormat := '# ##0,00';
      exWks.Range['G' + numstr].Value := FClient_Result.FieldByName('TotalPrice').AsCurrency;
      exWks.Range['G' + numstr].NumberFormat := '# ##0,00';
      exWks.Range['H' + numstr].Value := FClient_Result.FieldByName('PerT').AsCurrency;
      exWks.Range['H' + numstr].NumberFormat := '# ##0,00';
      exWks.Range['I' + numstr].Value := FClient_Result.FieldByName('PerTwoNDS').AsCurrency;
      exWks.Range['I' + numstr].NumberFormat := '# ##0,00';
      exWks.Range['J' + numstr].Value := FClient_Result.FieldByName('ABBR').AsString;
      exWks.Range['J' + numstr].HorizontalAlignment := -4108;
      exWks.Range['A' + numstr + ':J' + numstr].Borders[9].LineStyle := 1;
      exWks.Range['A' + numstr + ':J' + numstr].Borders[8].LineStyle := 1;
      exWks.Range['A' + numstr + ':J' + numstr].Borders[1].LineStyle := 1;
      exWks.Range['A' + numstr + ':J' + numstr].Borders[2].LineStyle := 1;
      exWks.Range['A' + numstr + ':J' + numstr].Font.Size := 8;
      FClient_Result.Next;
    end;

    if cxCheckBox7.Checked then begin
//      fmCtmAnimate.Label1.Caption := 'Вывод подробной информации по стране...';
//      fmCtmAnimate.Refresh;
      numrange := numrange + 2;
      numstr := IntToStr(numrange);
      exWks.Range['A' + numstr + ':H' + numstr].MergeCells := True;
      exWks.Range['A' + numstr].Font.Bold := True;
      exWks.Range['A' + numstr].Font.Size := 14;
      exWks.Range['A' + numstr].Value := 'Подробности расчета';

      FClient_Result.First;
      while not FClient_Result.Eof do begin
        for i := 0 to cxCheckListBox3.Count - 1 do begin
          if (cxCheckListBox3.Items[i].Text = FClient_Result.FieldByName('LandName').AsString) and (cxCheckListBox3.Items[i].Checked) then begin
            numrange := numrange + 2;
            numstr := IntToStr(numrange);
            exWks.Range['A' + numstr + ':H' + numstr].MergeCells := True;
            if FClient_Result.FieldByName('direction_id').AsInteger = 1 then
              exWks.Range['A' + numstr].Value := FClient_Result.FieldByName('LandName').AsString;
            if FClient_Result.FieldByName('direction_id').AsInteger = 2 then
              exWks.Range['A' + numstr].Value := FClient_Result.FieldByName('LandName').AsString + ' (Возврат)';
            exWks.Range['A' + numstr].Font.Bold := True;
            exWks.Range['A' + numstr].Font.Size := 12;
            FClient_LandTaxes.First;
            while not FClient_LandTaxes.Eof do begin
              numrange := numrange + 1;
              numstr := IntToStr(numrange);
              exWks.Range['A' + numstr + ':K' + numstr].Font.Size := 9;
              exWks.Range['A' + numstr + ':H' + numstr].MergeCells := True;
              exWks.Range['A' + numstr].Value := FClient_LandTaxes.FieldByName('Description').AsString;
              if (FClient_LandTaxes.FieldByName('State').AsFloat = 4) or (FClient_LandTaxes.FieldByName('State').AsFloat = 5) then exWks.Range['A' + numstr].Value := '     ' + FClient_LandTaxes.FieldByName('Description').AsString;
              if ((FClient_LandTaxes.FieldByName('State').AsFloat = 4) and ((FClient_LandTaxes.FieldByName('CategoryId').AsInteger = 100) or (FClient_LandTaxes.FieldByName('CategoryId').AsInteger = 200))) or (FClient_LandTaxes.FieldByName('State').AsInteger in [2,3,8]) then begin
                exWks.Range['A' + numstr + ':K' + numstr].Font.Bold := True;
                exWks.Range['A' + numstr].Font.Size := 10;
              end;
              if FClient_LandTaxes.FieldByName('Stavka').AsFloat <> 0 then exWks.Range['I' + numstr].Value := FClient_LandTaxes.FieldByName('Stavka').AsFloat;
              if FClient_LandTaxes.FieldByName('Value').AsFloat <> 0 then begin
                exWks.Range['J' + numstr].Value := FClient_LandTaxes.FieldByName('Value').AsCurrency;
                exWks.Range['J' + numstr].NumberFormat := '# ##0,00';
                exWks.Range['J' + numstr].Font.Size := 8;
              end;
              if FClient_LandTaxes.FieldByName('ABBR').AsString <> '' then begin
                exWks.Range['K' + numstr].Value := FClient_LandTaxes.FieldByName('ABBR').AsString;
              end;
              FClient_LandTaxes.Next;
            end;
          end;
        end;
        FClient_Result.Next;
      end;
    end;
    exApp.Columns['A:K'].ColumnWidth := 8.43;
    exApp.Visible := True;
  finally
    exApp := Null;
    exWks := Null;
    exWkb := Null;
    Screen.Cursor := 0;
//    fmCtmAnimate.close;
  end;
end;


end.
