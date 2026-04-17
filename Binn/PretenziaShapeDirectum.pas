unit PretenziaShapeDirectum;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, Datasnap.DBClient, dxSkinsCore,
  dxSkinBasic, dxSkinBlack, dxSkinBlue, dxSkinBlueprint, dxSkinCaramel,
  dxSkinCoffee, dxSkinDarkRoom, dxSkinDarkSide, dxSkinDevExpressDarkStyle,
  dxSkinDevExpressStyle, dxSkinFoggy, dxSkinGlassOceans, dxSkinHighContrast,
  dxSkiniMaginary, dxSkinLilian, dxSkinLiquidSky, dxSkinLondonLiquidSky,
  dxSkinMcSkin, dxSkinMetropolis, dxSkinMetropolisDark, dxSkinMoneyTwins,
  dxSkinOffice2007Black, dxSkinOffice2007Blue, dxSkinOffice2007Green,
  dxSkinOffice2007Pink, dxSkinOffice2007Silver, dxSkinOffice2010Black,
  dxSkinOffice2010Blue, dxSkinOffice2010Silver, dxSkinOffice2013DarkGray,
  dxSkinOffice2013LightGray, dxSkinOffice2013White, dxSkinOffice2016Colorful,
  dxSkinOffice2016Dark, dxSkinOffice2019Black, dxSkinOffice2019Colorful,
  dxSkinOffice2019DarkGray, dxSkinOffice2019White, dxSkinPumpkin, dxSkinSeven,
  dxSkinSevenClassic, dxSkinSharp, dxSkinSharpPlus, dxSkinSilver,
  dxSkinSpringTime, dxSkinStardust, dxSkinSummer2008, dxSkinTheAsphaltWorld,
  dxSkinTheBezier, dxSkinValentine, dxSkinVisualStudio2013Blue,
  dxSkinVisualStudio2013Dark, dxSkinVisualStudio2013Light, dxSkinVS2010,
  dxSkinWhiteprint, dxSkinWXI, dxSkinXmas2008Blue, cxGraphics, cxLookAndFeels,
  cxLookAndFeelPainters, Vcl.Menus, cxControls, cxStyles, cxCustomData,
  cxFilter, cxData, cxDataStorage, cxEdit, cxNavigator, dxDateRanges,
  dxScrollbarAnnotations, cxDBData, cxGridCustomTableView, cxGridTableView,
  cxGridBandedTableView, cxGridDBBandedTableView, cxGridCustomView, cxClasses,
  cxGridLevel, cxGrid, Vcl.StdCtrls, cxButtons, Vcl.ExtCtrls, Raznoe,
  Data.Bind.Components,
  Data.Bind.ObjectScope, REST.Client, REST.Authenticator.Basic,
  System.Net.HttpClient, System.Net.URLClient,
  System.Net.HttpClientComponent, EncdDecd, System.StrUtils, System.DateUtils,
  System.JSON, System.JSONConsts,      Default,
  Data.DBXDataSnap, Data.DBXCommon, Data.SqlExpr,
  Data.Win.ADODB, Xml.XMLDoc, Character, cxPropertiesStore;

type
  TfmPretenziaShapeDirectum = class(TForm)
    ClientDS_Pr: TClientDataSet;
    DS_Pr: TDataSource;
    ClientDS_Prid: TIntegerField;
    ClientDS_Prpretenzia_cod: TStringField;
    ClientDS_Prpretenzia_date: TDateTimeField;
    ClientDS_Prpretenzia_our_cod: TStringField;
    ClientDS_Prpretenzia_our_date: TDateField;
    ClientDS_Prfirm_self_name: TStringField;
    ClientDS_Prfirm_customer_name: TStringField;
    ClientDS_Prpretenzia_scan: TStringField;
    ClientDS_Prpretenzia_sum: TCurrencyField;
    ClientDS_Prstay_date_begin: TDateTimeField;
    ClientDS_Prstay_date_end: TDateTimeField;
    ClientDS_Prstay_type_name: TStringField;
    ClientDS_Prcontract_cod: TStringField;
    Panel1: TPanel;
    cxButton1: TcxButton;
    cxButton2: TcxButton;
    cxGrid1: TcxGrid;
    cxGrid1Level1: TcxGridLevel;
    cxGrid1DBBandedTableView1: TcxGridDBBandedTableView;
    cxGrid1DBBandedTableView1id: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1pretenzia_cod: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1pretenzia_date: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1pretenzia_our_cod: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1pretenzia_our_date: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1firm_self_name: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1firm_customer_name: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1pretenzia_scan: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1pretenzia_sum: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1stay_date_begin: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1stay_date_end: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1stay_type_name: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1contract_cod: TcxGridDBBandedColumn;
    ClientDS_Prcomment: TStringField;
    cxGrid1DBBandedTableView1comment: TcxGridDBBandedColumn;
    cxPropertiesStore1: TcxPropertiesStore;
    ClientDS_Prcontract_id: TIntegerField;
    procedure cxGrid1DBBandedTableView1FilterOnChanged(Sender: TObject);
    procedure cxGrid1DBBandedTableView1CustomDrawCell(
      Sender: TcxCustomGridTableView; ACanvas: TcxCanvas;
      AViewInfo: TcxGridTableDataCellViewInfo; var ADone: Boolean);
    procedure cxGrid1DBBandedTableView1CustomDrawColumnHeader(
      Sender: TcxGridTableView; ACanvas: TcxCanvas;
      AViewInfo: TcxGridColumnHeaderViewInfo; var ADone: Boolean);
    procedure cxGrid1DBBandedTableView1FocusedItemChanged(
      Sender: TcxCustomGridTableView; APrevFocusedItem,
      AFocusedItem: TcxCustomGridTableItem);
    procedure cxGrid1DBBandedTableView1KeyPress(Sender: TObject; var Key: Char);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure cxButton1Click(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure cxButton2Click(Sender: TObject);
  private
    Fpretenzia_type : integer;
    procedure GetDocument();
  public
    constructor Create(AOwner: TApplication; pretenzia_type: integer);
  end;

var
  fmPretenziaShapeDirectum: TfmPretenziaShapeDirectum;

implementation

{$R *.dfm}

uses main;

procedure TfmPretenziaShapeDirectum.GetDocument();
var
  http            : THTTPClient;
  headers         : TNetHeaders;
  response        : IHTTPResponse;
  MessageResult   : TStringStream;
  json_obj        : TJSONObject;
  json_arr        : TJSONArray;
  json_element    : TJSONObject;
  json_parent     : TJSONObject;
  k               : integer;
  s : string;
  Q : TADOQuery;
begin
  http := THTTPClient.Create;
  http.ContentType := '';
  http.UserAgent   := '';
  http.Accept      := '*/*';

  SetLength(headers, 2);
  headers[0].Name  := 'Username';
  headers[0].Value := 'service.user.lis';
  headers[1].Name  := 'Password';
  headers[1].Value := 'eQN2osVg7N';

  if Fpretenzia_type = 0 then
    response := http.Get('https://directum-rx.k-sc.ru/Integration/odata/IIncomingPretensions', nil, headers)
  else
    response := http.Get('https://directum-rx.k-sc.ru/Integration/odata/IOutgoingPretensions', nil, headers);



  MessageResult := TStringStream.Create;
  MessageResult.LoadFromStream(response.ContentStream);
  if MessageResult.DataString <> '' then begin
    Q := TADOQuery.Create(nil);
    Q.Connection := fmMain.lis;

    s := UTF8ToString(MessageResult.DataString);
    json_obj := TJSONObject.ParseJSONValue(s) as TJSONObject;
    json_arr := json_obj.GetValue('value') as TJSONArray;
    for k := 0 to json_arr.Count-1 do begin
        json_element := json_arr.Items[k] as TJSONObject;

        Q.SQL.Clear;
        Q.SQL.Add('select * from pretenzia_shape where directum_id = ' + json_element.GetValue('Id').Value);
        Q.Open;

        if Q.RecordCount = 0 then begin

          ClientDS_Pr.Append;
          ClientDS_Pr.FieldByName('id'                 ).Value := json_element.GetValue('Id').Value;
//          ClientDS_Pr.FieldByName('pretenzia_cod'      ).Value := ;
          s := json_element.GetValue('DocumentDate').Value;
          ClientDS_Pr.FieldByName('pretenzia_date'     ).Value := EncodeDate(StrToInt(MidStr(s, 1, 4)), StrToInt(MidStr(s, 6, 2)), StrToInt(MidStr(s, 9, 2)));
          ClientDS_Pr.FieldByName('pretenzia_our_cod'  ).Value := json_element.GetValue('RegistrationNumber').Value;
    //      ClientDS_Pr.FieldByName('pretenzia_our_date' ).Value := json_element.GetValue('').Value;
    //      ClientDS_Pr.FieldByName('pretenzia_scan'     ).Value := json_element.GetValue('').Value;
          ClientDS_Pr.FieldByName('pretenzia_sum'      ).Value := StrToFloat(ReplaceStr(json_element.GetValue('Amount').Value, '.', ','));
          s := json_element.GetValue('PeriodStart').Value;
          ClientDS_Pr.FieldByName('stay_date_begin'    ).Value := EncodeDate(StrToInt(MidStr(s, 1, 4)), StrToInt(MidStr(s, 6, 2)), StrToInt(MidStr(s, 9, 2)));
          s := json_element.GetValue('PeriodEnd').Value;
          ClientDS_Pr.FieldByName('stay_date_end'      ).Value := EncodeDate(StrToInt(MidStr(s, 1, 4)), StrToInt(MidStr(s, 6, 2)), StrToInt(MidStr(s, 9, 2)));
          ClientDS_Pr.FieldByName('stay_type_name'     ).Value := json_element.GetValue('DowntimePlace').Value;
          s := json_element.GetValue('ContractNumber').Value;
          s := LeftStr(s, Length(s)-13);
          s := ReplaceStr(s, '№', '');
          s := Trim(s);
          ClientDS_Pr.FieldByName('contract_cod'       ).Value := s;


          Q.SQL.Clear;
          Q.SQL.Add('select * from view_contract where contract_cod = ''' + s + '''');
          Q.Open;

          if Q.RecordCount = 0 then begin
            ClientDS_Pr.FieldByName('comment'       ).Value := 'Договор не найден';
          end else begin
            ClientDS_Pr.FieldByName('contract_id'        ).Value := Q.FieldByName('contract_id').Value;
            ClientDS_Pr.FieldByName('firm_self_name'     ).Value := Q.FieldByName('firm_self_name').Value;
            ClientDS_Pr.FieldByName('firm_customer_name' ).Value := Q.FieldByName('firm_customer_name').Value;
          end;




          ClientDS_Pr.Post;
        end;
    end;
    Q.Free;


  end else
    Application.MessageBox(PChar('Ошибка. Документооборот недоступен.'), 'Ошибка', MB_OK or MB_ICONSTOP);

  MessageResult.Free;
  http.Free;



end;

constructor TfmPretenziaShapeDirectum.Create(AOwner: TApplication; pretenzia_type: integer);
begin
  Screen.Cursor := crHourglass;
  inherited Create(AOwner);

  Fpretenzia_type := pretenzia_type;

  ClientDS_Pr.CreateDataSet;
  ClientDS_Pr.LogChanges := False;

  GetDocument();

  StoreRegistryGrid(rgLoad, '\Software\Lis1\PretenziaShapeDirectum_Grids', cxGrid1DBBandedTableView1);

  Screen.Cursor := crDefault;
end;


procedure TfmPretenziaShapeDirectum.cxButton1Click(Sender: TObject);
begin
  Close;
end;

procedure TfmPretenziaShapeDirectum.cxButton2Click(Sender: TObject);
var  SP          : TADOStoredProc;
begin
  Screen.Cursor := crHourglass;

  ClientDS_Pr.First;
  while not ClientDS_Pr.Eof do begin
    SP := TADOStoredProc.Create(nil);
    SP.Connection := fmMain.Lis;
    SP.ProcedureName := 'sp_pretenzia_shape_modify';
    SP.Parameters.Refresh;
    SP.Parameters.ParamByName('@type_action'       ).Value := 0;
    SP.Parameters.ParamByName('@pretenzia_type'    ).Value := Fpretenzia_type;
    SP.Parameters.ParamByName('@pretenzia_shape_id').Value := null;
    SP.Parameters.ParamByName('@contract_id'       ).Value := ClientDS_Pr.FieldByName('contract_id').Value;
    SP.Parameters.ParamByName('@pretenzia_cod'     ).Value := ClientDS_Pr.FieldByName('pretenzia_cod').Value;
    SP.Parameters.ParamByName('@pretenzia_date'    ).Value := ClientDS_Pr.FieldByName('pretenzia_date').Value;
    SP.Parameters.ParamByName('@pretenzia_sum'     ).Value := ClientDS_Pr.FieldByName('pretenzia_sum').Value;
    SP.Parameters.ParamByName('@comment'           ).Value := null;

    SP.Parameters.ParamByName('@pretenzia_our_cod' ).Value := null;
    SP.Parameters.ParamByName('@pretenzia_our_date').Value := null;
    SP.Parameters.ParamByName('@stay_date_begin'   ).Value := ClientDS_Pr.FieldByName('stay_date_begin').Value;
    SP.Parameters.ParamByName('@stay_date_end'     ).Value := ClientDS_Pr.FieldByName('stay_date_end').Value;
    SP.Parameters.ParamByName('@stay_type'         ).Value := null;
    SP.Parameters.ParamByName('@directum_id'       ).Value := ClientDS_Pr.FieldByName('id').Value;


    SP.ExecProc;

    ClientDS_Pr.Next;
  end;

  Screen.Cursor := crDefault;
  Close;
end;

procedure TfmPretenziaShapeDirectum.cxGrid1DBBandedTableView1CustomDrawCell(
  Sender: TcxCustomGridTableView; ACanvas: TcxCanvas;
  AViewInfo: TcxGridTableDataCellViewInfo; var ADone: Boolean);
begin
	if AViewInfo.GridRecord.Selected or AViewInfo.GridRecord.Focused then begin
		ACanvas.Brush.Color := clNavy;
		ACanvas.Font.Color := clWhite;
		if AViewInfo.Focused then ACanvas.Brush.Color := clBlue;
	end;
end;

procedure TfmPretenziaShapeDirectum.cxGrid1DBBandedTableView1CustomDrawColumnHeader(
  Sender: TcxGridTableView; ACanvas: TcxCanvas;
  AViewInfo: TcxGridColumnHeaderViewInfo; var ADone: Boolean);
begin
	if AViewInfo.Column.Focused then begin
		ACanvas.Brush.Color := clNavy;
		ACanvas.Font.Color := clWhite;
	end;
end;

procedure TfmPretenziaShapeDirectum.cxGrid1DBBandedTableView1FilterOnChanged(
  Sender: TObject);
begin
	DrawcxGridColumnOnFiltered(cxGrid1DBBandedTableView1);
end;

procedure TfmPretenziaShapeDirectum.cxGrid1DBBandedTableView1FocusedItemChanged(
  Sender: TcxCustomGridTableView; APrevFocusedItem,
  AFocusedItem: TcxCustomGridTableItem);
begin
	cxGrid1DBBandedTableView1.Painter.Invalidate;
end;

procedure TfmPretenziaShapeDirectum.cxGrid1DBBandedTableView1KeyPress(
  Sender: TObject; var Key: Char);
begin
	FilterColumnGridOnKeyPress(cxGrid1DBBandedTableView1, Key);
end;

procedure TfmPretenziaShapeDirectum.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action := caFree;
end;

procedure TfmPretenziaShapeDirectum.FormDestroy(Sender: TObject);
begin
  StoreRegistryGrid(rgSave, '\Software\Lis1\PretenziaShapeDirectum_Grids', cxGrid1DBBandedTableView1);
end;

end.
