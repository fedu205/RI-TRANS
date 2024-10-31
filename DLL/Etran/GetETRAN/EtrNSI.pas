unit EtrNSI;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, DBClient, ADODB, cxGraphics, cxControls, cxLookAndFeels,
  cxLookAndFeelPainters, cxStyles, cxCustomData, cxFilter, cxData,
  cxDataStorage, cxEdit, cxDBData, cxGridCustomTableView, cxGridTableView,
  cxGridBandedTableView, cxGridDBBandedTableView, cxGridCustomView, cxClasses,
  cxGridLevel, cxGrid, dxBar, StdCtrls, StrUtils, cxContainer, cxTextEdit,
  cxMemo, dxSkinsCore, dxSkinBlack, dxSkinBlue, dxSkinBlueprint, dxSkinCaramel,
  dxSkinCoffee, dxSkinDarkRoom, dxSkinDarkSide, dxSkinDevExpressDarkStyle,
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
  dxSkinXmas2008Blue, dxSkinscxPCPainter, cxNavigator, dxSkinsdxBarPainter,
  dxSkinOffice2016Colorful, dxSkinOffice2016Dark, dxSkinVisualStudio2013Blue,
  dxSkinVisualStudio2013Dark, dxSkinVisualStudio2013Light, dxSkinTheBezier,
  dxDateRanges, cxDataControllerConditionalFormattingRulesManagerDialog, dxSkinOffice2019Colorful;

type
  TfmEtrNSI = class(TForm)
    ClientDS_NSI: TClientDataSet;
    ClientDS_NSItable_name: TStringField;
    ClientDS_NSIset_trans_id: TIntegerField;
    ClientDS_NSIid: TAutoIncField;
    ClientDS_NSItrans_id: TIntegerField;
    ClientDS_NSIrecord_count: TIntegerField;
    ClientDS_NSIset_load: TBooleanField;
    cxGrid1Level1: TcxGridLevel;
    cxGrid1: TcxGrid;
    cxGrid1DBBandedTableView1: TcxGridDBBandedTableView;
    DS_NSI: TDataSource;
    ClientDS_NSIinf_obj_id: TIntegerField;
    cxGrid1DBBandedTableView1id: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1inf_obj_id: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1table_name: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1set_trans_id: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1trans_id: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1record_count: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1set_load: TcxGridDBBandedColumn;
    dxBarManager1: TdxBarManager;
    dxBarManager1Bar1: TdxBar;
    dxBarButton1: TdxBarButton;
    cxMemo1: TcxMemo;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure dxBarButton1Click(Sender: TObject);
  private
    { Private declarations }
  public
    constructor Create(AOwner: TApplication);
  end;

var
  fmEtrNSI: TfmEtrNSI;

implementation

uses EtranMain, SOAP;

{$R *.dfm}

constructor TfmEtrNSI.Create(AOwner: TApplication);
var Q : TADOQuery;
begin
  inherited Create(AOwner);
  Screen.Cursor := crHourglass;

  ClientDS_NSI.CreateDataSet;
  ClientDS_NSI.LogChanges := False;

  Q := TADOQuery.Create(nil);
  Q.Connection := fmEtranMain.EtranConnect;
  Q.SQL.Add('SELECT * FROM etran_nsi_type_inf');// WHERE nsi_type_inf_id = 31');
  Q.Open;
  while not Q.Eof do begin
    ClientDS_NSI.Append;
    ClientDS_NSI.FieldByName('table_name').Value := Q.FieldByName('nsi_type_inf_name').Value;
    ClientDS_NSI.FieldByName('inf_obj_id').Value := Q.FieldByName('nsi_type_inf_id').Value;
    ClientDS_NSI.FieldByName('set_load'  ).Value := False;
    ClientDS_NSI.Post;
    Q.Next;
  end;
  Screen.Cursor := crDefault;
end;

procedure TfmEtrNSI.dxBarButton1Click(Sender: TObject);
var trans_id, i: integer;
    s1,s2,s3:WideString;
    sp_ETRAN_NSI_load : TADOStoredProc;
    Q : TADOQuery;
begin
  sp_ETRAN_NSI_load := TADOStoredProc.Create(nil);
  sp_ETRAN_NSI_load.Connection := fmEtranMain.EtranConnect;
  sp_ETRAN_NSI_load.ConnectionString := 'Persist Security Info=True;Provider=SQLOLEDB.1;User ID=sa;' +
                                        'Password=''325325"LBR'';' +
                                         'Initial Catalog=TEHNO_ETRAN;' +
                                         'Data Source=85.30.234.22,2337;';
  sp_ETRAN_NSI_load.ProcedureName := 'sp_ETRAN_NSI_load';
  sp_ETRAN_NSI_load.Parameters.Refresh;
  sp_ETRAN_NSI_load.Parameters.ParamByName('@type_action').Value := 12;
  sp_ETRAN_NSI_load.ExecProc;

  Q := TADOQuery.Create(nil);
  Q.Connection := fmEtranMain.EtranConnect;

  ClientDS_NSI.First;
  while not ClientDS_NSI.Eof do begin

    ClientDS_NSI.Edit;
    ClientDS_NSI.FieldByName('set_load').Value := True;
    ClientDS_NSI.Post;

//    if ClientDS_NSI.FieldByName('table_name').Value = 'COMMON' then begin

      trans_id := 0;
      while trans_id <> -9 do begin




        if trans_id = 0 then
          s1 := '<getNSI version="1.0"><tableName value="' + ClientDS_NSI.FieldByName('table_name').Value  + '"/><fromTransID value=""/><useMod11/></getNSI>'
        else
          s1 := '<getNSI version="1.0"><tableName value="' + ClientDS_NSI.FieldByName('table_name').Value  + '"/><fromTransID value="' + IntToStr(trans_id) + '"/><useMod11/></getNSI>';
//        Sleep(500);
        GetIEtranSys(False, 'http://11.0.0.10:8092/EtranServer/EtranLR.dll/soap').GetBlock('пушкин_ас', 'ETRAN_GRU', s1, s2, s3);

        cxMemo1.Lines.Text := s1;


//<?xml version="1.0" encoding="windows-1251"?>
//<error>
//<errorCode value="100"/>
//<errorStatusCode value=""/>
//<errorMessage value="000: Дождитесь окончания предыдущего запроса от 31.07.2015 11:27:53
//ORA-06512: at &quot;ETRAN.CHECK_ACTIVE_ASU&quot;, line 14
//ORA-06512: at line 25
//"/>
//</error>

        Q.SQL.Clear;
        Q.SQL.Add('DECLARE @xml xml');
        Q.SQL.Add('SELECT @xml = cast(''' + s1 + ''' as xml)');
        Q.SQL.Add('');
        Q.SQL.Add('SELECT	ref.value(''(errorMessage/@value)[1]'',''varchar(800)'') as error_message');
        Q.SQL.Add('FROM	  @xml.nodes(''/error'') as node(ref)');
        Q.Open;

        if Q.RecordCount = 0 then begin
          sp_ETRAN_NSI_load.Parameters.Refresh;
          sp_ETRAN_NSI_load.Parameters.ParamByName('@trans_id'             ).Value := trans_id;
          sp_ETRAN_NSI_load.Parameters.ParamByName('@type_action'          ).Value := 0;
          sp_ETRAN_NSI_load.Parameters.ParamByName('@etran_nsi_type_inf_id').Value := ClientDS_NSI.FieldByName('inf_obj_id').Value;
          sp_ETRAN_NSI_load.Parameters.ParamByName('@etran_nsi_xml'        ).Value := s1;
          sp_ETRAN_NSI_load.ExecProc;

          if sp_ETRAN_NSI_load.Parameters.ParamByName('@trans_id').Value = trans_id then trans_id := -9
          else trans_id := sp_ETRAN_NSI_load.Parameters.ParamByName('@trans_id').Value;

          ClientDS_NSI.Edit;
          ClientDS_NSI.FieldByName('record_count').Value := ClientDS_NSI.FieldByName('record_count').Value + sp_ETRAN_NSI_load.Parameters.ParamByName('@record_count').Value;
          ClientDS_NSI.FieldByName('trans_id'    ).Value := sp_ETRAN_NSI_load.Parameters.ParamByName('@trans_id').Value;
          ClientDS_NSI.Post;
        end else begin
          Sleep(5000);
        end;

        Application.ProcessMessages;
      end;


//    end;
    ClientDS_NSI.Edit;
    ClientDS_NSI.FieldByName('set_load').Value := False;
    ClientDS_NSI.Post;

    ClientDS_NSI.Next;
  end;

  Q.Free;
  sp_ETRAN_NSI_load.Free;
end;

procedure TfmEtrNSI.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action := caFree;
end;

end.
