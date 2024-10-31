unit ViewTrack;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, cxStyles, cxCustomData, cxGraphics, cxFilter, cxData, cxDataStorage, cxEdit, DB, cxDBData, cxGridLevel,
  cxGridCustomTableView, cxGridTableView, cxGridBandedTableView, cxGridDBBandedTableView, cxClasses, cxControls,
  cxGridCustomView, cxGrid, cxPC, Default, StdCtrls, Buttons, ExtCtrls, cxPropertiesStore, DBClient, ADODB, ImgList,
  Menus, cxLabel,DateUtils, cxLookAndFeels, cxLookAndFeelPainters, cxLocalization,
  cxContainer, cxTextEdit, cxMaskEdit, cxDropDownEdit, cxCalendar, XMLDoc, XMLIntf, StrUtils, dxSkinsCore, dxSkinBlack, dxSkinBlue, dxSkinBlueprint,
  dxSkinCaramel, dxSkinCoffee, dxSkinDarkRoom, dxSkinDarkSide, dxSkinDevExpressDarkStyle, dxSkinDevExpressStyle, dxSkinFoggy, dxSkinGlassOceans,
  dxSkinHighContrast, dxSkiniMaginary, dxSkinLilian, dxSkinLiquidSky, dxSkinLondonLiquidSky, dxSkinMcSkin, dxSkinMetropolis, dxSkinMetropolisDark,
  dxSkinMoneyTwins, dxSkinOffice2007Black, dxSkinOffice2007Blue, dxSkinOffice2007Green, dxSkinOffice2007Pink, dxSkinOffice2007Silver,
  dxSkinOffice2010Black, dxSkinOffice2010Blue, dxSkinOffice2010Silver, dxSkinOffice2013DarkGray, dxSkinOffice2013LightGray, dxSkinOffice2013White,
  dxSkinPumpkin, dxSkinSeven, dxSkinSevenClassic, dxSkinSharp, dxSkinSharpPlus, dxSkinSilver, dxSkinSpringTime, dxSkinStardust, dxSkinSummer2008,
  dxSkinTheAsphaltWorld, dxSkinsDefaultPainters, dxSkinValentine, dxSkinVS2010, dxSkinWhiteprint, dxSkinXmas2008Blue, dxSkinscxPCPainter, cxNavigator,
  dxSkinOffice2016Colorful, dxSkinOffice2016Dark, dxSkinVisualStudio2013Blue,
  dxSkinVisualStudio2013Dark, dxSkinVisualStudio2013Light, System.ImageList, dxSkinTheBezier, cxDataControllerConditionalFormattingRulesManagerDialog;

type
  TfmViewTrack = class(TForm)
    ADOTrack: TADOConnection;
    Client_Vagon: TClientDataSet;
    DS_Vagon: TDataSource;
    cxPropertiesStore1: TcxPropertiesStore;
    Panel1: TPanel;
    ImageList1: TImageList;
    OpenDialog1: TOpenDialog;
    Client_Vagonnum_vagon: TStringField;
    Client_Vagonrod_vagon: TStringField;
    Client_Vagontype_vagon: TStringField;
    Client_Vagonstate_self: TStringField;
    Client_Vagonfact_weight: TStringField;
    Client_Vagonnode_end_cod: TStringField;
    Client_VagonkargoETSNG_cod: TStringField;
    Client_Vagonpoluchgr: TStringField;
    Client_Vagonspecial_marks: TStringField;
    Client_Vagoncomment: TStringField;
    Client_Vagontype_park_vagon: TStringField;
    Client_Vagonnode_begin_cod: TStringField;
    Client_Vagoncod_operation_cod: TStringField;
    Client_Vagonnode_operation_cod: TStringField;
    Client_Vagonroad_begin_cod: TStringField;
    Client_Vagonroad_end_cod: TStringField;
    Client_Vagonindex_train: TStringField;
    Client_Vagonnum_train: TStringField;
    Panel2: TPanel;
    BitBtn1: TBitBtn;
    BitBtn3: TBitBtn;
    Popup_ViewTrack: TPopupMenu;
    N1: TMenuItem;
    N2: TMenuItem;
    N3: TMenuItem;
    N4: TMenuItem;
    SaveDialog1: TSaveDialog;
    Popup_DateFormat: TPopupMenu;
    N5: TMenuItem;
    N6: TMenuItem;
    N7: TMenuItem;
    N8: TMenuItem;
    N9: TMenuItem;
    N10: TMenuItem;
    cxGrid1: TcxGrid;
    cxGrid1DBBandedTableView1: TcxGridDBBandedTableView;
    cxGrid1DBBandedTableView1num_vagon: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1rod_vagon: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1type_vagon: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1date_otpr: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1state_self: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1fact_weight: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1node_end_cod: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1kargoETSNG_cod: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1node_begin_cod: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1road_begin_cod: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1road_end_cod: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1index_train: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1num_train: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1date_operation: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1cod_operation_cod: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1poluchgr: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1special_marks: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1comment: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1type_park_vagon: TcxGridDBBandedColumn;
    cxGrid1Level1: TcxGridLevel;
    cxLocalizer1: TcxLocalizer;
    cxGrid1DBBandedTableView1file_load_name: TcxGridDBBandedColumn;
    Client_Vagonfile_load_name: TStringField;
    cxGrid1DBBandedTableView1node_operation_cod: TcxGridDBBandedColumn;
    Client_Vagondoc_number: TStringField;
    cxGrid1DBBandedTableView1Column1doc_number: TcxGridDBBandedColumn;
    Client_Vagonfact_track_id: TIntegerField;
    Client_Vagonis_saved: TBooleanField;
    Client_Vagonis_updated: TBooleanField;
    Client_Vagonerror_text: TStringField;
    cxGrid1DBBandedTableView1error_text: TcxGridDBBandedColumn;
    Client_Vagondate_otpr: TDateTimeField;
    Client_Vagondate_operation: TDateTimeField;
    Client_Vagonvagon_owner_name: TStringField;
    cxGrid1DBBandedTableView1vagon_owner_name: TcxGridDBBandedColumn;
    Client_Vagonvagon_id: TIntegerField;
    Client_Vagongrpol_okpo: TStringField;
    Client_Vagongrotpr_okpo: TStringField;
    Client_VagonRW_grpol: TStringField;
    Client_VagonRW_grotpr: TStringField;
    Client_VagonDateLoading: TDateTimeField;
    Client_VagonRW_Rash: TStringField;
    Client_VagonidReis: TStringField;
    Client_VagonDatePrib: TDateTimeField;
    Client_VagonDateVygr: TDateTimeField;
    procedure N10Click(Sender: TObject);
    procedure N9Click(Sender: TObject);
    procedure N8Click(Sender: TObject);
    procedure N5Click(Sender: TObject);
    procedure cxGrid1DBBandedTableView1MouseDown(Sender: TObject; Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
    procedure cxGrid1DBBandedTableView1KeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure cxGrid1DBBandedTableView1CustomDrawColumnHeader(Sender: TcxGridTableView; ACanvas: TcxCanvas; AViewInfo: TcxGridColumnHeaderViewInfo; var ADone: Boolean);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure BitBtn1Click(Sender: TObject);
    procedure ADOTrackExecuteComplete(Connection: TADOConnection; RecordsAffected: Integer; const Error: Error;  var EventStatus: TEventStatus; const Command: _Command; const Recordset: _Recordset);
    procedure N1Click(Sender: TObject);
    procedure N2Click(Sender: TObject);
    procedure N3Click(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
  private
    Ftype_track     : byte;
    Fusr_pwd        : PUser_pwd;
    Fformat_file    : integer;
    Ffile_load_name : string;
    Fdate_query     : TDateTime;
    Fxml_str        : WideString;
    function SetField(AValue:string; count:byte):string;

    procedure PreviewVagonNew(str_list : TStringList);
    procedure PreviewVagonXml(str_list : TStringList);
    procedure PreviewVagonXLS(file_name : String);
    procedure PreviewVagonXLS2(file_name : String);
    procedure PreviewVagonXLS3(file_name : String);
  public
    property _GetXmlStr: WideString read Fxml_str;
    property _GetDateQuery: TDateTime read Fdate_query;
    property _GetFormatFile: integer read Fformat_file;

    constructor Create(App:TApplication; usr_pwd:PUser_pwd);
    function    GetData(format_file : integer) : integer;
  published

  end;

function CreateWndViewTrack(AppHand: THandle; format_file: integer; usr_pwd: PUser_pwd) : Variant; export;
function CreateWndViewTrackEx(AppHand: THandle; usr_pwd: PUser_pwd; xml_data: WideString) : Variant; export;

var
  fmViewTrack: TfmViewTrack;

implementation
     uses Other, Period, Raznoe, ComObj;
{$R *.dfm} {$R Lis2.RES}

function CreateWndViewTrack(AppHand:THandle; format_file: integer; usr_pwd:PUser_pwd) : Variant;
begin
  Application.Handle := AppHand;
  try
    fmViewTrack := TfmViewTrack.Create(Application, usr_pwd);
    if fmViewTrack.GetData(format_file) = 0 then begin

      if fmViewTrack.ShowModal = mrOK then
        result := VarArrayOf([0, fmViewTrack._GetXmlStr, fmViewTrack._GetDateQuery, fmViewTrack._GetFormatFile])
      else
        result := VarArrayOf([-9]);
    end else
      result := VarArrayOf([-9]);
  finally
    fmViewTrack.Free;
  end
end;

function CreateWndViewTrackEx(AppHand:THandle; usr_pwd:PUser_pwd; xml_data: WideString) : Variant;
begin
  Application.Handle := AppHand;
  try
    fmViewTrack := TfmViewTrack.Create(Application, usr_pwd);
    fmViewTrack.Client_Vagon.XMLData := xml_data;
    fmViewTrack.cxGrid1DBBandedTableView1error_text.Visible := True;
    if fmViewTrack.ShowModal = mrOK then
      result := VarArrayOf([0, fmViewTrack._GetXmlStr, fmViewTrack._GetDateQuery, fmViewTrack._GetFormatFile])
    else
      result := VarArrayOf([-9]);
  finally
    fmViewTrack.Free;
  end
end;

constructor TfmViewTrack.Create(App:TApplication; usr_pwd: PUser_pwd);
begin
  Screen.Cursor := crHourglass;
  inherited Create(App);
  Fusr_pwd := usr_pwd;

  ADOTrack.Connected := False;
  ADOTrack.ConnectionString := 'Persist Security Info=True;Provider=SQLOLEDB.1;User ID='+usr_pwd.user_name+';Password='+usr_pwd^.user_pass+';Initial Catalog='+usr_pwd^.catalog+';Data Source='+usr_pwd^.server+';';
  ADOTrack.Connected := True;

  N10.Checked := False;
  N10.Caption := 'Дата загрузки: ' + FormatDateTime('dd.mm.yy', Date());

  Client_Vagon.CreateDataSet;
  Client_Vagon.LogChanges := False;


  Screen.Cursor := crDefault;
end;

function TfmViewTrack.GetData(format_file : integer) : integer;
var  str_list, vagon_list : TStringList;
  Q: TADOQuery;
begin
  case format_file of
    1 : OpenDialog1.Filter := 'Текстовый файл (*.txt)|*.txt'; // ------ формат ГВЦ (TXT)
    4 : OpenDialog1.Filter := 'Текстовый файл (*.xml)|*.xml'; // ------ формат КХТ (XML)
    5 : OpenDialog1.Filter := 'Текстовый файл (*.xls)|*.xls'; // ------ формат Интерлогистик (XLS)
    6 : OpenDialog1.Filter := 'Текстовый файл (*.xls;*.xlsx)|*.xls;*.xlsx'; // ------ формат (XLS)
    7 : OpenDialog1.Filter := 'Текстовый файл (*.xls;*.xlsx)|*.xls;*.xlsx'; // ------ формат (XLS)
  end;

  if OpenDialog1.Execute then begin
    Screen.Cursor := crHourglass;

    fmPeriod := TfmPeriod.Create(Application, Now, Now , 6);
    if fmPeriod.ShowModal = mrOk then begin
      Fdate_query := fmPeriod._GetDateBegin; //+ time;
      Caption := 'Просмотр файла дислокации вагонов. ' + 'Дата запроса дислокации : ' + DateToStr(Fdate_query);
    end else begin
      result := -9;
      exit;
    end;

    Fformat_file := format_file;
    Ffile_load_name := ExtractFileName(OpenDialog1.FileName);
    str_list := TStringList.Create;
    str_list.LoadFromFile(OpenDialog1.FileName);


    case format_file of
      1 : PreviewVagonNew(str_list);              // ------ формат ГВЦ
      4 : PreviewVagonXml(str_list);              // ------ формат XML (КХТ)
      5 : PreviewVagonXLS(OpenDialog1.FileName);  // ------ формат XLS (Интерлогистик)
      6 : PreviewVagonXLS2(OpenDialog1.FileName); // ------ формат НПК XLS (Калининград)
      7 : PreviewVagonXLS3(OpenDialog1.FileName); // ------ формат ПГК XLS (Калининград)
    end;

    //Обновление владельцев
    Client_Vagon.DisableControls;
    vagon_list := TStringList.Create;
    Q := TADOQuery.Create(Self);
    try
      Client_Vagon.First;
      while not Client_Vagon.Eof do begin
        if vagon_list.IndexOf(Client_Vagon.FieldByName('num_vagon').AsString) = -1 then
          vagon_list.Add(Client_Vagon.FieldByName('num_vagon').AsString);
        Client_Vagon.Next;
      end;

      Q.Connection := ADOTrack;
      Q.SQL.Clear;
      Q.SQL.Add('	SELECT v.num_vagon, view_firm.firm_name FROM '
          + ' view_vagon_owner_new v WITH (NOLOCK) '
          + ' JOIN vagon_owner vo WITH (NOLOCK) on vo.vagon_id = v.vagon_id '
          + '   AND (vo.date_begin <= '+QuotedStr(FormatDateTime('yyyymmdd', Fdate_query))+' OR vo.date_begin IS NULL) '
          + '   AND (vo.date_end >= '+QuotedStr(FormatDateTime('yyyymmdd', Fdate_query))+' OR vo.date_end IS NULL) '
          + ' JOIN contract c WITH (NOLOCK) on c.contract_id = vo.contract_id '
          + ' JOIN view_firm WITH (NOLOCK) on view_firm.firm_id = c.firm_customer '
          + ' WHERE '
          + '	v.users_group_id = '+IntToStr(Fusr_pwd.user_group_id)+' and '
          + ' v.num_vagon in ('+vagon_list.CommaText+') '
        );
      Q.Open;
      Client_Vagon.First;
      while not Client_Vagon.Eof do begin
        if Q.Locate('num_vagon', Client_Vagon['num_vagon'], []) then begin
          Client_Vagon.Edit;
          Client_Vagon['vagon_owner_name'] := Q['firm_name'];
          Client_Vagon.Post;
        end;
        Client_Vagon.Next;
      end;
    finally
      vagon_list.Free;
      Client_Vagon.EnableControls;
    end;

    str_list.Free;
    result := 0;
    Screen.Cursor := crDefault;
  end else result := -9;
end;

// ------ формат ГВЦ
procedure TfmViewTrack.PreviewVagonNew(str_list: TStringList);
var i, file_pos : integer;
            str : string;
            dt  : TDateTime;
begin
  Client_Vagon.DisableControls;
  file_pos := 0;
  file_pos := str_list.IndexOf('Ответ:');
  for i := file_pos + 1 to str_list.Count - 1 do begin
    str := str_list.Strings[i];
    try
      StrToInt64(Copy(str, 1, 8));
    except
      continue;
    end;

    Client_Vagon.Append;
    Client_Vagon['num_vagon'] := Copy(str, 1, 8);
    Client_Vagon['rod_vagon'] := Copy(str, 14, 2);
    Client_Vagon['type_vagon'] := Copy(str, 16, 4);
    Client_Vagon['date_otpr'] := NULL;
    try
    //if (Copy(str, 20, 8) <> '01010001') AND (Copy(str, 20, 8) <> '00000000') then
      Client_Vagon['date_otpr'] := EncodeDateTime(StrToInt(Copy(str, 24, 4)),
                                      StrToInt(Copy(str, 22, 2)),
                                      StrToInt(Copy(str, 20, 2)),
                                      StrToInt(Copy(str, 28, 2)),
                                      StrToInt(Copy(str, 30, 2)),
                                      StrToInt(Copy(str, 32, 2)), 0);
    except
        Client_Vagon['date_otpr'] := NULL;
    end;

    if YearOf(Client_Vagon.FieldByName('date_otpr').AsDateTime) < 1999 then
      Client_Vagon['date_otpr'] := NULL;

    try
      Client_Vagon['date_operation'] := EncodeDateTime(YearOf(NOW),
                                                  StrToInt(Copy(str, 85, 2)),
                                                  StrToInt(Copy(str, 83, 2)),
                                                  StrToInt(Copy(str, 87, 2)),
                                                  StrToInt(Copy(str, 89, 2)),0,0);
    except
        Client_Vagon['date_operation'] := NULL;
    end;

    if YearOf(Client_Vagon.FieldByName('date_operation').AsDateTime) < 1999 then
      Client_Vagon['date_operation'] := NULL;

    Client_Vagon['state_self']         := Copy(str, 35, 2);
    Client_Vagon['fact_weight']        := Copy(str, 37, 3);
    Client_Vagon['node_end_cod']       := Copy(str, 40, 5);
    Client_Vagon['kargoETSNG_cod']     := Copy(str, 45, 5);
    Client_Vagon['poluchgr']           := Copy(str, 52, 4);
    Client_Vagon['special_marks']      := Copy(str, 56, 3);
    Client_Vagon['comment']            := Copy(str, 67, 6);
    Client_Vagon['type_park_vagon']    := Copy(str, 73, 2);
    Client_Vagon['node_begin_cod']     := Copy(str, 76, 5);
    Client_Vagon['cod_operation_cod']  := Copy(str, 81, 2);
    Client_Vagon['node_operation_cod'] := Copy(str, 91, 5);
    Client_Vagon['road_begin_cod']     := Copy(str, 96, 2);
    Client_Vagon['road_end_cod']       := Copy(str, 98, 2);
    Client_Vagon['index_train']        := Copy(str, 100, 13);
    Client_Vagon['num_train']          := Copy(str, 113, 4);
    Client_Vagon['file_load_name']     := Ffile_load_name;
    Client_Vagon.Post;
    ShowTextMessage('Обработано '+IntToStr(i - file_pos)+' вагонов', False);
  end;
  Client_Vagon.EnableControls;
  ShowTextMessage;
end;

// ------ формат XLS (Интерлогистик)
procedure TfmViewTrack.PreviewVagonXLS(file_name : String);
var exWks, exApp  : Variant;
    count_str     : integer;
begin
  try
    exApp := CreateOleObject('Excel.Application');
    exApp.Workbooks.Open(file_name);
    exWks := exApp.ActiveWorkbook.WorkSheets[1];

    count_str := 3;
    while not (TVarData(exWks.Cells[count_str,1].Value).VType = varEmpty) do begin
//    while not (exWks.Range['A' + IntToStr(count_str)].Value = NULL) do begin
      Client_Vagon.Append;
      Client_Vagon['num_vagon'] := exWks.Range['A' + IntToStr(count_str)].Value;
      Client_Vagon['rod_vagon'] := NULL;
      Client_Vagon['type_vagon'] := NULL; //exWks.Range['B' + IntToStr(count_str)].Value;
      Client_Vagon['date_otpr'] := exWks.Range['F' + IntToStr(count_str)].Value;
      Client_Vagon['state_self'] := NULL;
      Client_Vagon['fact_weight'] := exWks.Range['R' + IntToStr(count_str)].Value;
      Client_Vagon['node_end_cod'] := exWks.Range['M' + IntToStr(count_str)].Value;
      Client_Vagon['kargoETSNG_cod'] := NULL;
      Client_Vagon['poluchgr'] := NULL;
      Client_Vagon['special_marks'] := NULL;
      Client_Vagon['comment'] := NULL;
      Client_Vagon['type_park_vagon'] := NULL;
      Client_Vagon['node_begin_cod'] := exWks.Range['D' + IntToStr(count_str)].Value;
      Client_Vagon['cod_operation_cod'] := NULL;
      Client_Vagon['date_operation'] := exWks.Range['I' + IntToStr(count_str)].Value;
      Client_Vagon['node_operation_cod'] := exWks.Range['G' + IntToStr(count_str)].Value;
      Client_Vagon['road_begin_cod'] := NULL;
      Client_Vagon['road_end_cod'] := NULL;
      Client_Vagon['index_train'] := exWks.Range['L' + IntToStr(count_str)].Value;
      Client_Vagon['num_train'] := NULL;
      Client_Vagon['file_load_name'] := ExtractFileName(file_name);;
      Client_Vagon['doc_number'] := exWks.Range['U' + IntToStr(count_str)].Value;
      Client_Vagon.Post;
      ShowTextMessage('Обработано '+IntToStr(count_str - 2)+' вагонов', False);
      count_str := count_str + 1;
    end;
    ShowTextMessage;
  finally
    exApp.Quit; exWks := null; exWks := null;
  end;
end;

procedure TfmViewTrack.PreviewVagonXLS2(file_name : String);
var exWks, exApp  : Variant;
    count_str     : integer;
    vagon_list    : TStringList;
                Q : TADOQuery;
begin
  try
    exApp := CreateOleObject('Excel.Application');
    exApp.Workbooks.Open(file_name);
    exWks := exApp.ActiveWorkbook.WorkSheets[1];

    count_str := 6;
    while not (TVarData(exWks.Cells[count_str,1].Value).VType = varEmpty) do begin
//    while not (exWks.Range['A' + IntToStr(count_str)].Value = NULL) do begin
      Client_Vagon.Append;
      Client_Vagon['num_vagon']          := exWks.Range['A' + IntToStr(count_str)].Value;
      Client_Vagon['rod_vagon']          := NULL;
      Client_Vagon['type_vagon']         := NULL;
      Client_Vagon['date_otpr']          := exWks.Range['L' + IntToStr(count_str)].Value;
      Client_Vagon['state_self']         := NULL;
      Client_Vagon['fact_weight']        := exWks.Range['Q' + IntToStr(count_str)].Value;
      Client_Vagon['node_end_cod']       := exWks.Range['I' + IntToStr(count_str)].Value;
      Client_Vagon['kargoETSNG_cod']     := exWks.Range['P' + IntToStr(count_str)].Value;
      Client_Vagon['poluchgr']           := NULL;
      Client_Vagon['special_marks']      := NULL;
      Client_Vagon['comment']            := NULL;
      Client_Vagon['type_park_vagon']    := NULL;
      Client_Vagon['node_begin_cod']     := exWks.Range['G' + IntToStr(count_str)].Value;
      Client_Vagon['cod_operation_cod']  := NULL;
      Client_Vagon['date_operation']     := exWks.Range['E' + IntToStr(count_str)].Value;
      Client_Vagon['node_operation_cod'] := exWks.Range['C' + IntToStr(count_str)].Value;
      Client_Vagon['road_begin_cod']     := NULL;
      Client_Vagon['road_end_cod']       := NULL;
      Client_Vagon['index_train']        := exWks.Range['K' + IntToStr(count_str)].Value;
      Client_Vagon['num_train']          := NULL;
      Client_Vagon['file_load_name']     := ExtractFileName(file_name);;
      Client_Vagon['doc_number']         := NULL;
      Client_Vagon['vagon_id']           := NULL;
      Client_Vagon['grpol_okpo']         := NULL;
      Client_Vagon['grotpr_okpo']        := NULL;
      Client_Vagon['RW_grpol']           := NULL;
      Client_Vagon['RW_grotpr']          := NULL;
      Client_Vagon['DateLoading']        := NULL;
      Client_Vagon['RW_Rash']            := NULL;
      Client_Vagon['idReis']             := NULL;
      Client_Vagon['DatePrib']           := exWks.Range['X' + IntToStr(count_str)].Value;
      Client_Vagon['DateVygr']           := NULL;
      Client_Vagon.Post;
      ShowTextMessage('Обработано '+IntToStr(count_str - 2)+' вагонов', False);
      count_str := count_str + 1;
    end;

    vagon_list := TStringList.Create;

    Client_Vagon.First;
    while not Client_Vagon.Eof do begin
      if vagon_list.IndexOf(Client_Vagon.FieldByName('num_vagon').AsString) = -1 then begin
          vagon_list.Add(Client_Vagon.FieldByName('num_vagon').AsString);
      end;
      Client_Vagon.Next;
    end;

    Q := TADOQuery.Create(nil);
    Q.Connection := ADOTrack;
    Q.SQL.Clear;
    Q.SQL.Add('SELECT vagon_id, num_vagon ');
    Q.SQL.Add('FROM   view_vagon_owner_new');
    Q.SQL.Add('WHERE  users_group_id = '+IntToStr(Fusr_pwd.user_group_id));
    Q.SQL.Add('       AND ' + QuotedStr(FormatDateTime('yyyymmdd', Fdate_query)) + ' between date_begin AND isnull(date_end, ' + QuotedStr(FormatDateTime('yyyymmdd', Fdate_query)) +')');
    Q.SQL.Add('       AND num_vagon in ('+vagon_list.CommaText+')');
    Q.Open;

    Client_Vagon.First;
    while not Client_Vagon.Eof do begin
      if Q.Locate('num_vagon', Client_Vagon['num_vagon'], []) then begin
        Client_Vagon.Edit;
        Client_Vagon['vagon_id'] := Q['vagon_id'];
        Client_Vagon.Post;
      end;
      Client_Vagon.Next;
    end;

    Q.Free;

    ShowTextMessage;
  finally
    exApp.Quit; exWks := null; exWks := null;
  end;
end;

procedure TfmViewTrack.PreviewVagonXLS3(file_name : String);
var exWks, exApp  : Variant;
    count_str     : integer;
    vagon_list    : TStringList;
                Q : TADOQuery;
begin
  try
    exApp := CreateOleObject('Excel.Application');
    exApp.Workbooks.Open(file_name);
    exWks := exApp.ActiveWorkbook.WorkSheets[1];

    count_str := 2;
    while not (TVarData(exWks.Cells[count_str,1].Value).VType = varEmpty) do begin
//    while not (exWks.Range['A' + IntToStr(count_str)].Value = NULL) do begin
      Client_Vagon.Append;
      Client_Vagon['num_vagon']          := exWks.Range['A' + IntToStr(count_str)].Value;
      Client_Vagon['rod_vagon']          := NULL;
      Client_Vagon['type_vagon']         := NULL;
      Client_Vagon['date_otpr']          := exWks.Range['AQ' + IntToStr(count_str)].Value;
      Client_Vagon['state_self']         := NULL;
      Client_Vagon['fact_weight']        := exWks.Range['L' + IntToStr(count_str)].Value;
      Client_Vagon['node_end_cod']       := exWks.Range['D' + IntToStr(count_str)].Value;
      Client_Vagon['kargoETSNG_cod']     := exWks.Range['AG' + IntToStr(count_str)].Value;
      Client_Vagon['poluchgr']           := NULL;
      Client_Vagon['special_marks']      := NULL;
      Client_Vagon['comment']            := NULL;
      Client_Vagon['type_park_vagon']    := NULL;
      Client_Vagon['node_begin_cod']     := exWks.Range['J' + IntToStr(count_str)].Value;
      Client_Vagon['cod_operation_cod']  := NULL;
      Client_Vagon['date_operation']     := exWks.Range['AB' + IntToStr(count_str)].Value;
      Client_Vagon['node_operation_cod'] := exWks.Range['G' + IntToStr(count_str)].Value;
      Client_Vagon['road_begin_cod']     := NULL;
      Client_Vagon['road_end_cod']       := NULL;
      Client_Vagon['index_train']        := exWks.Range['AJ' + IntToStr(count_str)].Value;
      Client_Vagon['num_train']          := NULL;
      Client_Vagon['file_load_name']     := ExtractFileName(file_name);;
      Client_Vagon['doc_number']         := NULL;
      Client_Vagon['vagon_id']           := NULL;
      Client_Vagon['grpol_okpo']         := NULL;
      Client_Vagon['grotpr_okpo']        := NULL;
      Client_Vagon['RW_grpol']           := NULL;
      Client_Vagon['RW_grotpr']          := NULL;
      Client_Vagon['DateLoading']        := NULL;
      Client_Vagon['RW_Rash']            := NULL;
      Client_Vagon['idReis']             := NULL;
      //Client_Vagon['DatePrib']           := exWks.Range['X' + IntToStr(count_str)].Value;
      Client_Vagon['DateVygr']           := NULL;
      Client_Vagon.Post;
      ShowTextMessage('Обработано '+IntToStr(count_str - 2)+' вагонов', False);
      count_str := count_str + 1;
    end;

    vagon_list := TStringList.Create;

    Client_Vagon.First;
    while not Client_Vagon.Eof do begin
      if vagon_list.IndexOf(Client_Vagon.FieldByName('num_vagon').AsString) = -1 then begin
          vagon_list.Add(Client_Vagon.FieldByName('num_vagon').AsString);
      end;
      Client_Vagon.Next;
    end;

    Q := TADOQuery.Create(nil);
    Q.Connection := ADOTrack;
    Q.SQL.Clear;
    Q.SQL.Add('SELECT vagon_id, num_vagon ');
    Q.SQL.Add('FROM   view_vagon_owner_new');
    Q.SQL.Add('WHERE  users_group_id = '+IntToStr(Fusr_pwd.user_group_id));
    Q.SQL.Add('       AND ' + QuotedStr(FormatDateTime('yyyymmdd', Fdate_query)) + ' between date_begin AND isnull(date_end, ' + QuotedStr(FormatDateTime('yyyymmdd', Fdate_query)) +')');
    Q.SQL.Add('       AND num_vagon in ('+vagon_list.CommaText+')');
    Q.Open;

    Client_Vagon.First;
    while not Client_Vagon.Eof do begin
      if Q.Locate('num_vagon', Client_Vagon['num_vagon'], []) then begin
        Client_Vagon.Edit;
        Client_Vagon['vagon_id'] := Q['vagon_id'];
        Client_Vagon.Post;
      end;
      Client_Vagon.Next;
    end;

    Q.Free;

    ShowTextMessage;
  finally
    exApp.Quit; exWks := null; exWks := null;
  end;
end;

// ------ формат XML (КХТ)
procedure TfmViewTrack.PreviewVagonXml(str_list: TStringList);
var xmlDoc : TXMLDocument;
    Vagons : IXMLNodeList;
         i : integer;
         s : string;
         w : extended;

  function ReplaceFloatSeparator(source: string): string;
  begin
    Result := ReplaceStr(source, ',', '.');
  end;

begin
  xmlDoc := TXMLDocument.Create(Self);
  Client_Vagon.DisableControls;
  try
    xmlDoc.XML.Assign(str_list);
    xmlDoc.Active := True;
    Vagons := xmlDoc.ChildNodes.Nodes[1].ChildNodes.Nodes[0].ChildNodes;
    for i := 0 to Vagons.Count - 1 do begin
      Client_Vagon.Append;
      //Номер вагона
      Client_Vagon['num_vagon'] := Vagons.Nodes[i].Attributes['Number'];
      //Род вагона
      //- Client_Vagon['rod_vagon'] := Vagons.Nodes[i].Attributes['Number'];
      //Тип вагона
      //- Client_Vagon['type_vagon']
      //Дата начала рейса
      try
        Client_Vagon['date_otpr']  := StringReplace(Vagons.Nodes[i].Attributes['DateBegin'],'T',' ',[])

      except
        Client_Vagon['date_otpr']  := Null;
      end;

      //Страна собственник
      //- Client_Vagon['state_self']  := Vagons.Nodes[i].Attributes['Number'];
      //Фактический вес
      if not VarIsNull(Vagons.Nodes[i].Attributes['Weight']) then begin
        w := Vagons.Nodes[i].Attributes['Weight'];
        w := RoundCurr(w/1000, -1);
        Client_Vagon['fact_weight']  := ReplaceFloatSeparator(FloatToStr(w));
      end;
      //Код станции назначения
      s := VarToStr(Vagons.Nodes[i].Attributes['StationDest']);
      if Length(s) = 5 then
        s := '0' + s;
      Client_Vagon['node_end_cod'] := s;
      //Код груза ЕТСНГ
      Client_Vagon['kargoETSNG_cod']  := Vagons.Nodes[i].Attributes['CodeCargo'];
      //Код грузополучателя
      Client_Vagon['poluchgr']  := Vagons.Nodes[i].Attributes['RW_grpol'];
      //Спец отметки
      //- Client_Vagon['special_marks']  := Vagons.Nodes[i].Attributes['Number'];
      //Комментарий
      //- Client_Vagon['comment']  := Vagons.Nodes[i].Attributes['Number'];
      //Тип парка вагона
      if VarToStr(Vagons.Nodes[i].Attributes['IsFaulty']) = '0' then
        Client_Vagon['type_park_vagon'] := '1'
      else if VarToStr(Vagons.Nodes[i].Attributes['IsFaulty']) = '1' then
        Client_Vagon['type_park_vagon'] := '0';
      //Код станции отправления
      s := VarToStr(Vagons.Nodes[i].Attributes['StationBegin']);
      if Length(s) = 5 then
        s := '0' + s;
      Client_Vagon['node_begin_cod']  := s;
      //Код операции
      Client_Vagon['cod_operation_cod']  := Vagons.Nodes[i].Attributes['CodeOper'];
      //Дата операции
      try
        Client_Vagon['date_operation'] := StringReplace(Vagons.Nodes[i].Attributes['DateOper'],'T',' ',[]);
      except
        Client_Vagon['date_operation'] := NULL;
      end;
      //Станция операции
      s := VarToStr(Vagons.Nodes[i].Attributes['StationOper']);
      if Length(s) = 5 then
        s := '0' + s;
      Client_Vagon['node_operation_cod'] := s;
      //Код дороги отправления
      Client_Vagon['road_begin_cod'] := Vagons.Nodes[i].Attributes['RW_Rash'];
      //Код дороги назначения
      Client_Vagon['road_end_cod'] := Vagons.Nodes[i].Attributes['RW_Dest'];
      //Индекс поезда
      Client_Vagon['index_train'] := Vagons.Nodes[i].Attributes['I1'];
      //Номер поезда
      Client_Vagon['num_train'] := Vagons.Nodes[i].Attributes['NumTrain'];
      //Имя загружаемого файла
      Client_Vagon['file_load_name'] := Ffile_load_name;
      //Номер накладной
      Client_Vagon['doc_number'] := Vagons.Nodes[i].Attributes['DocNumber'];;
      Client_Vagon.Post;
      ShowTextMessage('Обработано '+IntToStr(i)+' вагонов', False);
    end;
    ShowTextMessage;
  finally
    xmlDoc.Free;
    Client_Vagon.EnableControls;
  end;
end;

procedure TfmViewTrack.cxGrid1DBBandedTableView1CustomDrawColumnHeader(Sender: TcxGridTableView; ACanvas: TcxCanvas; AViewInfo: TcxGridColumnHeaderViewInfo; var ADone: Boolean);
begin
  if AViewInfo.Column.Focused then begin
    ACanvas.Brush.Color := clNavy;
    ACanvas.Font.Color := clWhite;
  end;
end;

procedure TfmViewTrack.cxGrid1DBBandedTableView1KeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  cxGrid1DBBandedTableView1.Painter.Invalidate;
end;

procedure TfmViewTrack.cxGrid1DBBandedTableView1MouseDown(Sender: TObject; Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
begin
  cxGrid1DBBandedTableView1.Painter.Invalidate;
end;

procedure TfmViewTrack.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action := caFree;
end;

procedure TfmViewTrack.ADOTrackExecuteComplete(Connection: TADOConnection; RecordsAffected: Integer; const Error: Error; var EventStatus: TEventStatus; const Command: _Command; const Recordset: _Recordset);
begin
  if EventStatus = esErrorsOccured then begin
    Application.MessageBox(PWideChar(error.Description), 'Внимание', MB_OK);
    ShowTextMessage('', True);
  end;
end;

procedure TfmViewTrack.BitBtn1Click(Sender: TObject);
begin
  if Application.MessageBox('В базу будет загружена та информация, которая отображается в таблице. Вы согласны?', 'Вниамние', MB_OKCANCEL) = ID_OK then begin
//    Client_Vagon.DisableControls;
//    Client_Vagon.First;
//    while not Client_Vagon.Eof do begin
//      Client_Vagon.Edit;
//      Client_Vagon['is_saved'] := False;
//      Client_Vagon['is_updated'] := False;
//      Client_Vagon.Post;
//      Client_Vagon.Next;
//    end;
//    Client_Vagon.EnableControls;

    Fxml_str := Client_Vagon.XMLData;
    ModalResult := mrOk;
  end;
end;

procedure TfmViewTrack.N10Click(Sender: TObject);
var new_str : string;
begin
  new_str := FormatDateTime('dd.mm.yy', Date());
  N10.Checked := not N10.Checked;
  if not N10.Checked then begin
    N10.Caption := 'Дата загрузки: ' + new_str;
  end else begin
     if InputQuery('Введите дату ('+ new_str+'):', 'Дата загрузки', new_str) then N10.Caption := 'Дата загрузки: ' + new_str;
  end;
  N10.Hint := new_str;
end;

procedure TfmViewTrack.N1Click(Sender: TObject);
begin
  Client_Vagon.Append;
end;

procedure TfmViewTrack.N2Click(Sender: TObject);
begin
  Client_Vagon.Edit;
end;

procedure TfmViewTrack.N3Click(Sender: TObject);
begin
  Client_Vagon.Delete;
end;

procedure TfmViewTrack.N5Click(Sender: TObject);
begin
  TMenuItem(Sender).Checked := not TMenuItem(Sender).Checked
end;

procedure TfmViewTrack.N8Click(Sender: TObject);
begin
  RailAtlas_ShowRoute(ADOTrack, Client_Vagon.FieldByName('node_begin_cod').AsString, Client_Vagon.FieldByName('node_end_cod').AsString);
end;

procedure TfmViewTrack.N9Click(Sender: TObject);
begin
  RailAtlas_ShowRoute(ADOTrack, Client_Vagon.FieldByName('node_operation_cod').AsString, '');
end;

procedure TfmViewTrack.BitBtn2Click(Sender: TObject);
var F1  : TextFile;
    str : string;
    i   : integer;
begin
  SaveDialog1.Filter := 'Текстовый файл (*.txt; *.out)|*.txt;*.out';
  SaveDialog1.DefaultExt := 'txt';
  if SaveDialog1.Execute then begin
    Screen.Cursor := crHourglass;
    AssignFile(F1, SaveDialog1.FileName);
    Rewrite(F1);
    Client_Vagon.First;
    while not Client_Vagon.Eof do begin
      str := SetField(Client_Vagon['num_vagon'], 8)+ '00000'+SetField(Client_Vagon['rod_vagon'], 2)+SetField(Client_Vagon['type_vagon'], 4)+
             SetField(Client_Vagon['date_otpr'], 12)+ '000'+SetField(Client_Vagon['state_self'], 2)+SetField(Client_Vagon['fact_weight'], 3)+
             SetField(Client_Vagon['node_end_cod'], 5)+SetField(Client_Vagon['kargoETSNG_cod'], 5)+'00'+SetField(Client_Vagon['poluchgr'], 4)+
             SetField(Client_Vagon['special_marks'], 3)+'00000000'+SetField(Client_Vagon['comment'], 6)+SetField(Client_Vagon['type_park_vagon'], 2)+'0'+
             SetField(Client_Vagon['node_begin_cod'], 5)+SetField(Client_Vagon['cod_operation_cod'], 2)+SetField(Client_Vagon['date_operation'], 8)+
             SetField(Client_Vagon['node_operation_cod'], 5)+SetField(Client_Vagon['road_begin_cod'], 2)+SetField(Client_Vagon['road_end_cod'], 2)+
             SetField(Client_Vagon['index_train'], 13)+SetField(Client_Vagon['num_train'], 4);
      Writeln(F1, str);
      Client_Vagon.Next;
    end;
    CloseFile(F1);
    Screen.Cursor := crDefault;
    Application.MessageBox('Файл сохранён!', 'Внимание', MB_OK );
  end;

end;

function TfmViewTrack.SetField(AValue:string; count:byte):string;
begin
  if length(AValue) <> count then AValue := '               ' + AValue;
  result := Copy(AValue, length(AValue)-count+1, count);
end;

end.
