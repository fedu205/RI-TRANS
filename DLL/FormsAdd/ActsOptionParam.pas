unit ActsOptionParam;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters, cxStyles,
  cxCustomData, cxFilter, cxData, cxDataStorage, cxEdit, DB, cxDBData, cxDropDownEdit,
  cxCurrencyEdit, cxGridCustomTableView, cxGridTableView, cxGridBandedTableView,
  cxGridDBBandedTableView, DBClient, cxGridLevel, cxClasses, cxGridCustomView, cxGrid,
  cxPropertiesStore, StdCtrls, Buttons, ExtCtrls, ADODB, dxBar, ImgList, cxNavigator, System.ImageList, cxCheckBox,
  cxDataControllerConditionalFormattingRulesManagerDialog, cxImageList, dxSkinsCore, dxSkinBlack, dxSkinBlue, dxSkinBlueprint, dxSkinCaramel, dxSkinCoffee, dxSkinDarkroom, dxSkinDarkSide,
  dxSkinDevExpressDarkStyle, dxSkinDevExpressStyle, dxSkinFoggy, dxSkinGlassOceans, dxSkinHighContrast, dxSkiniMaginary, dxSkinLilian, dxSkinLiquidSky, dxSkinLondonLiquidSky, dxSkinMcSkin,
  dxSkinMetropolis, dxSkinMetropolisDark, dxSkinMoneyTwins, dxSkinOffice2007Black, dxSkinOffice2007Blue, dxSkinOffice2007Green, dxSkinOffice2007Pink, dxSkinOffice2007Silver, dxSkinOffice2010Black,
  dxSkinOffice2010Blue, dxSkinOffice2010Silver, dxSkinOffice2013DarkGray, dxSkinOffice2013LightGray, dxSkinOffice2013White, dxSkinOffice2016Colorful, dxSkinOffice2016Dark, dxSkinPumpkin, dxSkinSeven,
  dxSkinSevenClassic, dxSkinSharp, dxSkinSharpPlus, dxSkinSilver, dxSkinSpringtime, dxSkinStardust, dxSkinSummer2008, dxSkinTheAsphaltWorld, dxSkinTheBezier, dxSkinsDefaultPainters, dxSkinValentine,
  dxSkinVisualStudio2013Blue, dxSkinVisualStudio2013Dark, dxSkinVisualStudio2013Light, dxSkinVS2010, dxSkinWhiteprint, dxSkinXmas2008Blue, dxDateRanges;

type
  TfmActsOptionParam = class(TForm)
    Panel1: TPanel;
    BitBtn2: TBitBtn;
    BitBtn1: TBitBtn;
    cxPropertiesStore1: TcxPropertiesStore;
    cxGrid1: TcxGrid;
    cxGrid1DBBandedTableView1: TcxGridDBBandedTableView;
    cxGrid1Level1: TcxGridLevel;
    Client_ActsParam: TClientDataSet;
    Client_ActsParamid: TAutoIncField;
    DS_ActsParam: TDataSource;
    Client_ActsParamacts_option_id: TAutoIncField;
    Client_ActsParamacts_type_id: TIntegerField;
    Client_ActsParamoption_name: TStringField;
    Client_ActsParamoption_caption: TStringField;
    Client_ActsParamoption_type: TStringField;
    Client_ActsParamlist_sql: TStringField;
    Client_ActsParamorder_num: TIntegerField;
    cxGrid1DBBandedTableView1id: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1acts_option_id: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1acts_type_id: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1option_name: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1option_caption: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1option_type: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1list_sql: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1order_num: TcxGridDBBandedColumn;
    dxBarManager1: TdxBarManager;
    dxBarButton1: TdxBarButton;
    dxBarButton2: TdxBarButton;
    Client_ActsParamdefault_value: TStringField;
    cxGrid1DBBandedTableView1default_value: TcxGridDBBandedColumn;
    dxBarPopupMenu1: TdxBarPopupMenu;
    cxImageList1: TcxImageList;
    cxGrid1DBBandedTableView1set_consolidate: TcxGridDBBandedColumn;
    Client_ActsParamset_consolidate: TBooleanField;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure dxBarButton1Click(Sender: TObject);
    procedure dxBarButton2Click(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
  private
    FCnn : TADOConnection;
    Facts_cod : string;

  public
    constructor Create(acts_cod : string; conn : TADOConnection);
  end;

var
  fmActsOptionParam: TfmActsOptionParam;

implementation

uses Raznoe;

{$R *.dfm}

constructor TfmActsOptionParam.Create(acts_cod : string; conn : TADOConnection);
var SP : TADOStoredProc;
    i : integer;
begin
  inherited Create(Application);

  FCnn := conn;
  Facts_cod := acts_cod;

  Caption := Caption + ' (Код = ' + Facts_cod + ')';

  SP := TADOStoredProc.Create(nil);
  SP.Connection := FCnn;
  SP.ProcedureName := 'sp_acts_option_modify';
  SP.Parameters.Refresh;

  SP.Parameters.ParamByName('@type_action').Value := 'Get Param';
  SP.Parameters.ParamByName('@acts_cod').Value := Facts_cod;

  try
    SP.Open;

    Client_ActsParam.DisableControls;
    Client_ActsParam.CreateDataSet;
    Client_ActsParam.LogChanges := False;
    while not SP.Eof do begin
      Client_ActsParam.Append;
      // цикл по списку полей Client_ActsParam исключая первое поле (id)
      for i := 1 to Client_ActsParam.Fields.Count - 1 do begin
        Client_ActsParam.Fields[i].Value := SP.FieldByName(Client_ActsParam.Fields[i].FieldName).Value;
      end;
      Client_ActsParam.Post;
      SP.Next;
    end;
    Client_ActsParam.First;
    Client_ActsParam.EnableControls;
  except
  end;

  SP.Free;
end;

procedure TfmActsOptionParam.dxBarButton1Click(Sender: TObject);
begin
  Client_ActsParam.Append;
  Client_ActsParam.FieldByName('option_type').Value := 'string';
  Client_ActsParam.FieldByName('set_consolidate').Value := False;
  Client_ActsParam.Post;
end;

procedure TfmActsOptionParam.dxBarButton2Click(Sender: TObject);
begin
  if Application.MessageBox('Вы уверены в необходимости удаления текущей строки?', 'Удаление', MB_YESNO or MB_ICONQUESTION) = IDYES then begin
    Client_ActsParam.DisableControls;

    Client_ActsParam.Delete;

    // Пересчитываем номера
    Client_ActsParam.EnableControls;
  end;
end;

procedure TfmActsOptionParam.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action := caFree;
end;

procedure TfmActsOptionParam.BitBtn2Click(Sender: TObject);
var SP : TADOStoredProc;
begin
  SP := TADOStoredProc.Create(nil);
  SP.Connection := FCnn;
  SP.ProcedureName := 'sp_acts_option_modify';
  SP.Parameters.Refresh;

  SP.Parameters.ParamByName('@type_action').Value := 'Save Param';
  SP.Parameters.ParamByName('@acts_cod').Value := Facts_cod;
  SP.Parameters.ParamByName('@xml').Value := DataXMLToSQL(Client_ActsParam);

  try
    sp.ExecProc;
  except
  end;

  SP.Free;
end;

end.
