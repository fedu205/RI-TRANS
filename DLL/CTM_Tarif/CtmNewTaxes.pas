unit CtmNewTaxes;

interface

uses
  RailTariff_TLB, Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters,
  cxStyles, cxCustomData, cxFilter, cxData, cxDataStorage, cxEdit, DB, cxDBData,
  cxCheckBox, cxDropDownEdit, cxContainer, dxGDIPlusClasses, ExtCtrls, cxLabel,
  StdCtrls, Buttons, cxGridLevel, cxGridCustomTableView, cxGridTableView,
  cxGridBandedTableView, cxGridDBBandedTableView, cxClasses, cxGridCustomView,
  cxGrid, DBClient, cxPropertiesStore, Default, dxSkinsCore, dxSkinBlack,
  dxSkinBlue, dxSkinBlueprint, dxSkinCaramel, dxSkinCoffee, dxSkinDarkRoom,
  dxSkinDarkSide, dxSkinDevExpressDarkStyle, dxSkinDevExpressStyle, dxSkinFoggy,
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
  dxSkinXmas2008Blue, dxSkinscxPCPainter, cxNavigator,
  cxDataControllerConditionalFormattingRulesManagerDialog, dxSkinTheBezier, dxDateRanges;

type
  TfmCtmNewTaxes = class(TForm)
    cxPropertiesStore1: TcxPropertiesStore;
    ClientDS_TaxesPar: TClientDataSet;
    ClientDS_TaxesParTax_id: TIntegerField;
    ClientDS_TaxesParid: TIntegerField;
    ClientDS_TaxesParcaption: TStringField;
    DS_TaxesPar: TDataSource;
    ClientDS_Taxes: TClientDataSet;
    ClientDS_TaxesTaxID: TIntegerField;
    ClientDS_TaxesCaption: TStringField;
    ClientDS_TaxesParamType: TIntegerField;
    ClientDS_TaxesParam: TStringField;
    ClientDS_TaxesABBR: TStringField;
    ClientDS_TaxesSelect: TBooleanField;
    ClientDS_TaxesSum: TCurrencyField;
    ClientDS_TaxesLandId: TIntegerField;
    ClientDS_TaxesParamName: TStringField;
    ClientDS_Taxesrate: TCurrencyField;
    DS_Taxes: TDataSource;
    cxGrid1: TcxGrid;
    cxGrid1DBBandedTableView1: TcxGridDBBandedTableView;
    cxGrid1DBBandedTableView1RecId: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1TaxID: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1Select: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1Caption: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1ParamType: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1Param: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1ABBR: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1sum: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1Column1: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1LandId: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1Rate: TcxGridDBBandedColumn;
    cxGrid1Level1: TcxGridLevel;
    Panel1: TPanel;
    cxLabel1: TcxLabel;
    cxLabel2: TcxLabel;
    Panel29: TPanel;
    Image1: TImage;
    cxLabel123: TcxLabel;
    Panel18: TPanel;
    BitBtn_Ok: TBitBtn;
    BitBtn_Cancel: TBitBtn;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure BitBtn_OkClick(Sender: TObject);
  private
    Fusr_pwd          : PUser_pwd;
    Fdate_from_to     : TDateTime;
    FRTXDocument      : RailTariff_TLB.IDocument;
    Fland_id          : integer;
    FClient_Taxes_id  : TClientDataSet;
    procedure SetRTXDocument(RTXDocument : RailTariff_TLB.IDocument);
  public
    constructor Create(AOwner: TApplication; usr_pwd: PUser_pwd; date_from_to: TDateTime); reintroduce;
  published
    property _SetRTXDocument: RailTariff_TLB.IDocument write SetRTXDocument;
    property _SetLandId: integer write Fland_id;
    property _SetClient_Taxes_id: TClientDataSet write FClient_Taxes_id;
  end;

var
  fmCtmNewTaxes: TfmCtmNewTaxes;

implementation

{$R *.dfm}

constructor TfmCtmNewTaxes.Create(AOwner: TApplication; usr_pwd: PUser_pwd; date_from_to: TDateTime);
begin
  Screen.Cursor := crHourglass;
  inherited Create(AOwner);
  Fusr_pwd := usr_pwd;
  Fdate_from_to := date_from_to;
  Fland_id := -9;

  ClientDS_TaxesPar.CreateDataSet;
  ClientDS_TaxesPar.LogChanges := False;

  ClientDS_Taxes.CreateDataSet;
  ClientDS_Taxes.LogChanges := False;

  Screen.Cursor := crDefault;
end;

procedure TfmCtmNewTaxes.SetRTXDocument(RTXDocument : RailTariff_TLB.IDocument);
var RB_Option     : RailTariff_TLB._RefBook;
    RB_TaxParam   : RailTariff_TLB._RefBook;
    RashcetAttr17 : RailTariff_TLB.IDocumentAttr17;
    s             : string;
    DocRefBok     : RailTariff_TLB.IDocumentRefBook;
begin
  FRTXDocument := RTXDocument;
  FRTXDocument.Result.AsTable.First;
  s := FRTXDocument.Result.Value['LandId'];

  while FRTXDocument.Result.Value['LandId'] <> Fland_id do FRTXDocument.Result.AsTable.Next;

  cxLabel123.Caption := 'Ставки для страны  "' +  FRTXDocument.Result.Value['LandName'] + '"';
  s := FRTXDocument.Result.Value['LandId'];
  (FRTXDocument as IDocumentAttr).QueryInterface(IdocumentRefBook, DocRefBok);
  DocRefBok := (FRTXDocument as IDocumentAttr) as IDocumentRefBook;
  RB_Option := DocRefBok.FilteredRefBook('Tax','');
  RB_Option.First;
  while not RB_Option.EOF do begin
    try
      if not ClientDS_Taxes.Locate('TaxID', StrToInt(VarToStr(RB_Option.FieldValue['TaxID'])), []) then begin
        ClientDS_Taxes.Insert;
        ClientDS_Taxes.FieldByName('TaxID').AsVariant := RB_Option.FieldValue['TaxID'];
        ClientDS_Taxes.FieldByName('Caption').AsVariant := RB_Option.FieldValue['Caption'];
        ClientDS_Taxes.FieldByName('ParamType').AsVariant := RB_Option.FieldValue['ParamType'];
        ClientDS_Taxes.FieldByName('rate').AsVariant := null;
        ClientDS_Taxes.FieldByName('ABBR').AsVariant := RB_Option.FieldValue['ABBR'];
        ClientDS_Taxes.FieldByName('LandId').AsVariant := Fland_id;
        if RB_Option.FieldValue['ParamType'] = 1 then begin
          if ClientDS_TaxesPar.RecordCount = 0 then begin
            RB_TaxParam := DocRefBok.FilteredRefBook('TaxParam','');
            RB_TaxParam.First;
            while not RB_TaxParam.EOF do begin
              ClientDS_TaxesPar.Append;
              ClientDS_TaxesPar.FieldByName('Tax_id').AsVariant := RB_TaxParam.FieldValue['TaxID'];
              ClientDS_TaxesPar.FieldByName('id').AsVariant := RB_TaxParam.FieldValue['id'];
              ClientDS_TaxesPar.FieldByName('Caption').AsVariant := RB_TaxParam.FieldValue['Caption'];
              ClientDS_TaxesPar.Post;
              RB_TaxParam.Next;
            end;
          end;
        end;
        if FClient_Taxes_id.Locate('LandId;TaxesId;Automatic', VarArrayOf([Fland_id,ClientDS_Taxes.FieldByName('TaxID').AsInteger,True]), [loCaseInsensitive]) then begin
          ClientDS_Taxes.FieldByName('Select').AsVariant := 1;
          ClientDS_Taxes.FieldByName('Param').Value := FClient_Taxes_id.FieldByName('Param').Value;
          case RB_Option.FieldValue['ParamType'] of
            1 : begin
                  ClientDS_TaxesPar.Filtered := False;
                  if (not FClient_Taxes_id.FieldByName('Param').IsNull) AND (ClientDS_TaxesPar.Locate('Tax_id;id', VarArrayOf([ClientDS_Taxes.FieldByName('TaxID').AsInteger,FClient_Taxes_id.FieldByName('Param').AsInteger]), [loCaseInsensitive])) then begin
                    ClientDS_Taxes.FieldByName('ParamName').Value := ClientDS_TaxesPar.FieldByName('caption').Value;
                  end else begin
                    ClientDS_Taxes.FieldByName('ParamName').Value := Null;
                  end;
                  ClientDS_TaxesPar.Filtered := True;
                end;
            2,3 : begin
                  ClientDS_Taxes.FieldByName('rate').Value := FClient_Taxes_id.FieldByName('Param').Value;
                  ClientDS_Taxes.FieldByName('ParamName').Value := FClient_Taxes_id.FieldByName('Param').Value;
                end;
          end;
        end else begin
          ClientDS_Taxes.FieldByName('Select').AsVariant := 0;
        end;
        ClientDS_Taxes.Post;
      end;
    finally
      RB_Option.Next;
    end;
  end;
end;



procedure TfmCtmNewTaxes.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action := caFree;
end;

procedure TfmCtmNewTaxes.BitBtn_OkClick(Sender: TObject);
begin
  ModalResult := mrOk;

  FClient_Taxes_id.Filter := 'LandId = ' + IntToStr(Fland_id);
  FClient_Taxes_id.Filtered := True;
  FClient_Taxes_id.First;
  while not FClient_Taxes_id.Eof do FClient_Taxes_id.Delete;
  FClient_Taxes_id.Filtered := False;
  FClient_Taxes_id.Filter := '';

  ClientDS_Taxes.Filter := 'Select=1';
  ClientDS_Taxes.Filtered := True;
  ClientDS_Taxes.First;
  while not ClientDS_Taxes.Eof do begin
    FClient_Taxes_id.Insert;
    FClient_Taxes_id.FieldByName('LandId'    ).Value := ClientDS_Taxes.FieldByName('LandId').AsVariant;
    FClient_Taxes_id.FieldByName('TaxesId'   ).Value := ClientDS_Taxes.FieldByName('TaxID').AsVariant;
    FClient_Taxes_id.FieldByName('Automatic' ).Value := True;
    FClient_Taxes_id.FieldByName('Param'     ).Value := ClientDS_Taxes.FieldByName('Param').AsVariant;
    FClient_Taxes_id.FieldByName('rate'      ).Value := ClientDS_Taxes.FieldByName('rate').AsVariant;
    FClient_Taxes_id.FieldByName('type'      ).Value := ClientDS_Taxes.FieldByName('ParamType').AsVariant;
    FClient_Taxes_id.Post;
    ClientDS_Taxes.Next;
  end;
end;


end.
