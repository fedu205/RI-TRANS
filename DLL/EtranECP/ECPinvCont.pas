unit ECPinvCont;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters,
  cxContainer, cxEdit, cxStyles, cxCustomData, cxFilter, cxData, cxDataStorage,
  DB, cxDBData, cxGridLevel, cxGridCustomTableView, cxGridTableView,
  cxGridBandedTableView, cxGridDBBandedTableView, cxClasses, cxGridCustomView,
  cxGrid, cxPC, StdCtrls, Buttons, cxMaskEdit, cxButtonEdit, cxCurrencyEdit,
  cxTextEdit, ExtCtrls, DBClient, ADODB, Raznoe, cxPropertiesStore, dxBar,
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
  dxSkinXmas2008Blue, dxSkinscxPCPainter, dxBarBuiltInMenu, cxNavigator,
  dxSkinsdxBarPainter, cxDataControllerConditionalFormattingRulesManagerDialog;

type
  TfmECPinvCont = class(TForm)
    Client_carCSL: TClientDataSet;
    Client_carCSLid: TAutoIncField;
    Client_carCSLcar_id: TIntegerField;
    Client_carCSLsealTypeID: TIntegerField;
    Client_carCSLsealTypeName: TStringField;
    Client_carCSLsealMarks: TStringField;
    Client_carCSLsealQuantity: TStringField;
    Client_carCSLsealYear: TStringField;
    Client_carCSLsealOwnerTypeID: TIntegerField;
    Client_carCSLsealOwnerTypeName: TStringField;
    Client_carCSLsealRailwayID: TIntegerField;
    Client_carCSLsealRailwayName: TStringField;
    Panel1: TPanel;
    BitBtn2: TBitBtn;
    BitBtn1: TBitBtn;
    Panel4: TPanel;
    cxPageControl1: TcxPageControl;
    cxTabSheet2: TcxTabSheet;
    cxGrid1: TcxGrid;
    cxGridDBBandedTableView60: TcxGridDBBandedTableView;
    cxGridDBBandedTableView60id: TcxGridDBBandedColumn;
    cxGridDBBandedTableView60car_id: TcxGridDBBandedColumn;
    cxGridDBBandedTableView60sealTypeID: TcxGridDBBandedColumn;
    cxGridDBBandedTableView60sealTypeName: TcxGridDBBandedColumn;
    cxGridDBBandedTableView60sealMarks: TcxGridDBBandedColumn;
    cxGridDBBandedTableView60sealQuantity: TcxGridDBBandedColumn;
    cxGridDBBandedTableView60sealYear: TcxGridDBBandedColumn;
    cxGridDBBandedTableView60sealOwnerTypeID: TcxGridDBBandedColumn;
    cxGridDBBandedTableView60sealOwnerTypeName: TcxGridDBBandedColumn;
    cxGridDBBandedTableView60sealRailwayID: TcxGridDBBandedColumn;
    cxGridDBBandedTableView60sealRailwayName: TcxGridDBBandedColumn;
    cxGridLevel1: TcxGridLevel;
    DS_carCSL: TDataSource;
    Panel2: TPanel;
    Label1: TLabel;
    Label6: TLabel;
    Label2: TLabel;
    Label5: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    Label9: TLabel;
    Label10: TLabel;
    Label11: TLabel;
    Label12: TLabel;
    Label34: TLabel;
    cxTextEdit1: TcxTextEdit;
    cxButtonEdit6: TcxButtonEdit;
    cxTextEdit4: TcxTextEdit;
    cxButtonEdit5: TcxButtonEdit;
    cxButtonEdit7: TcxButtonEdit;
    cxCurrencyEdit5: TcxCurrencyEdit;
    cxCurrencyEdit1: TcxCurrencyEdit;
    cxCurrencyEdit2: TcxCurrencyEdit;
    cxCurrencyEdit3: TcxCurrencyEdit;
    cxButtonEdit1: TcxButtonEdit;
    cxButtonEdit2: TcxButtonEdit;
    cxButtonEdit12: TcxButtonEdit;
    cxButtonEdit3: TcxButtonEdit;
    cxTextEdit3: TcxTextEdit;
    cxPropertiesStore1: TcxPropertiesStore;
    dxBarManager1: TdxBarManager;
    dxBarButton1: TdxBarButton;
    dxBarButton2: TdxBarButton;
    dxBarButton3: TdxBarButton;
    dxBarButton4: TdxBarButton;
    dxBarPopupMenu1: TdxBarPopupMenu;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure BitBtn2Click(Sender: TObject);
    procedure cxButtonEdit1PropertiesButtonClick(Sender: TObject;
      AButtonIndex: Integer);
    procedure cxButtonEdit12PropertiesButtonClick(Sender: TObject;
      AButtonIndex: Integer);
    procedure cxButtonEdit3PropertiesButtonClick(Sender: TObject;
      AButtonIndex: Integer);
    procedure cxButtonEdit5PropertiesButtonClick(Sender: TObject;
      AButtonIndex: Integer);
    procedure cxButtonEdit6PropertiesButtonClick(Sender: TObject;
      AButtonIndex: Integer);
    procedure cxButtonEdit7PropertiesButtonClick(Sender: TObject;
      AButtonIndex: Integer);
  private
    Fid             : integer;
    Ftype_action    : integer;
    FClientDS       : TClientDataSet;
    Fetran_ip       : string;
    Fetran_port     : string;

    FcontOwnerTypeID : integer;
    FcontOwnerId     : integer;

    procedure SetUpdate(id: integer);
  public
    constructor Create(AOwner: TApplication); reintroduce;
  published
    property _SetEtranIP : string write Fetran_ip;
    property _SetEtranPort : string write Fetran_port;
    property _SetClientDS : TClientDataSet write FClientDS;
    property _SetUpdate   : integer write SetUpdate;
  end;

var
  fmECPinvCont: TfmECPinvCont;

implementation

uses ECPMain, ECPFilter, ECPPassport;

{$R *.dfm}

constructor TfmECPinvCont.Create(AOwner: TApplication);
var Q: TADOQuery;
begin
  Screen.Cursor := crHourglass;
  inherited Create(AOwner);

  Ftype_action := 0;
  Fid       := -9;
  FClientDS := nil;

  FcontOwnerTypeID := -9;
  FcontOwnerID     := -9;


  Screen.Cursor := crDefault;
end;


procedure TfmECPinvCont.SetUpdate(id: integer);
begin
  Fid := id;
  Ftype_action := 1;
  FClientDS.Locate('id', Fid, []);
  cxTextEdit1.EditValue     := FClientDS.FieldByName('contNumber').Value;
  cxTextEdit4.EditValue     := FClientDS.FieldByName('contCarOrder').Value;
  cxButtonEdit5.EditValue   := FClientDS.FieldByName('contTonnage').Value;
  cxButtonEdit6.EditValue   := FClientDS.FieldByName('contTypeBig').Value;
  cxButtonEdit7.EditValue   := FClientDS.FieldByName('contSizeBig').Value;
  cxCurrencyEdit5.EditValue := FClientDS.FieldByName('contWeightDep').Value;
  cxCurrencyEdit1.EditValue := FClientDS.FieldByName('contWeightNet').Value;
  cxCurrencyEdit2.EditValue := FClientDS.FieldByName('contPlacesCount').Value;
  cxCurrencyEdit3.EditValue := FClientDS.FieldByName('contVolume').Value;
  cxButtonEdit2.EditValue   := FClientDS.FieldByName('contOwnerCountryCode').Value;
  cxButtonEdit1.EditValue   := FClientDS.FieldByName('contOwnerCountryName').Value;
  FcontOwnerTypeID          := iif(FClientDS.FieldByName('contOwnerTypeID').IsNull, -9, FClientDS.FieldByName('contOwnerTypeID').Value);
  cxButtonEdit12.EditValue  := FClientDS.FieldByName('contOwnerTypeName').Value;
  FcontOwnerId              := iif(FClientDS.FieldByName('contOwnerId').IsNull, -9, FClientDS.FieldByName('contOwnerId').Value);
  cxTextEdit3.EditValue     := FClientDS.FieldByName('contOwnerOKPO').Value;
  cxButtonEdit3.EditValue   := FClientDS.FieldByName('contOwnerName').Value;
end;

procedure TfmECPinvCont.cxButtonEdit12PropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
var Q: TADOQuery;
begin
  case AButtonIndex of
    0:  begin
          Q := TADOQuery.Create(nil);
          Q.Connection := fmECPMain.ADOEtran;
          Q.SQL.Add('SELECT * FROM dbo.ETRAN_NSI_INF_OBJ WHERE type_inf_id = 27 AND inf_obj_cod = ''7''');
          Q.Open;
          fmECPFilter := TfmECPFilter.Create(nil, Q);
          fmECPFilter._SetFilter := 'Тип собственности';
          if fmECPFilter.ShowModal = mrOk then begin
            FcontOwnerTypeID   := fmECPFilter._GetID;
            cxButtonEdit12.Text:= fmECPFilter._GetName;
          end;
          Q.Free;
        end;
    1:  begin
          FcontOwnerTypeID    := -9;
          cxButtonEdit12.Text := '';
        end;
  end;
end;

procedure TfmECPinvCont.cxButtonEdit1PropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
var Q: TADOQuery;
    str_find: string;
begin
  case AButtonIndex of
    0:  begin
          Q := TADOQuery.Create(nil);
          Q.Connection := fmECPMain.ADOEtran;
          Q.SQL.Add('SELECT etran_nsi_id, inf_obj_name, inf_obj_cod FROM dbo.ETRAN_NSI_INF_OBJ WHERE type_inf_id = 13');

          case TcxButtonEdit(Sender).Tag of
           0: if InputQuery('Поиск', 'Поиск по НАИМЕНОВАНИЮ:', str_find) then begin
                Q.SQL.Add('AND inf_obj_name like ''%' + str_find + '%''');
              end else exit;
           1: if InputQuery('Поиск', 'Поиск по КОДУ:', str_find) then begin
                Q.SQL.Add('AND inf_obj_cod like ''%' + str_find + '%''');
              end else exit;
          end;

          Q.Open;
          fmECPFilter := TfmECPFilter.Create(nil, Q);
          fmECPFilter._SetFilterCod := 'Страна';
          if fmECPFilter.ShowModal = mrOk then begin
            cxButtonEdit1.Text:= fmECPFilter._GetName;
            cxButtonEdit2.Text:= fmECPFilter._GetCod;
          end;
          Q.Free;
        end;
    1:  begin
          cxButtonEdit1.Text := '';
          cxButtonEdit2.Text := '';
        end;
  end;
end;

procedure TfmECPinvCont.cxButtonEdit3PropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
begin
    case AButtonIndex of
    0:  begin
          fmECPPassport := TfmECPPassport.Create(nil);
          fmECPPassport._SetEtranIP := Fetran_ip;
          fmECPPassport._SetEtranPort := Fetran_port;
          if fmECPPassport.ShowModal = mrOk then begin
            FcontOwnerID       := fmECPPassport._GetOrgID;
            cxButtonEdit3.Text := fmECPPassport._GetName;
            cxTextEdit3.Text   := fmECPPassport._GetOrgOKPO;
          end;
        end;
    1:  begin
            FcontOwnerID       := -9;
            cxButtonEdit3.Text := '';
            cxTextEdit3.Text   := '';
        end;
    end;
end;

procedure TfmECPinvCont.cxButtonEdit5PropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
var Q: TADOQuery;
begin
  case AButtonIndex of
    0:  begin
          Q := TADOQuery.Create(nil);
          Q.Connection := fmECPMain.ADOEtran;
          Q.SQL.Add('SELECT * FROM dbo.ETRAN_NSI_INF_OBJ WHERE type_inf_id = 35');
          Q.Open;
          fmECPFilter := TfmECPFilter.Create(nil, Q);
          fmECPFilter._SetFilter := 'Тоннажность конт. (т)';
          if fmECPFilter.ShowModal = mrOk then begin
            cxButtonEdit5.Text:= fmECPFilter._GetCod;
          end;
          Q.Free;
        end;
    1:  begin
          cxButtonEdit5.Text := '';
        end;
  end;
end;

procedure TfmECPinvCont.cxButtonEdit6PropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
var Q: TADOQuery;
begin
  case AButtonIndex of
    0:  begin
          Q := TADOQuery.Create(nil);
          Q.Connection := fmECPMain.ADOEtran;
          Q.SQL.Add('SELECT * FROM dbo.ETRAN_NSI_INF_OBJ WHERE type_inf_id = 36');
          Q.Open;
          fmECPFilter := TfmECPFilter.Create(nil, Q);
          fmECPFilter._SetFilter := 'Тип крупнотоннажного контейнера';
          if fmECPFilter.ShowModal = mrOk then begin
            cxButtonEdit6.Text:= IntToStr(fmECPFilter._GetId);
          end;
          Q.Free;
        end;
    1:  begin
          cxButtonEdit6.Text := '';
        end;
  end;
end;

procedure TfmECPinvCont.cxButtonEdit7PropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
var Q: TADOQuery;
begin
  case AButtonIndex of
    0:  begin
          Q := TADOQuery.Create(nil);
          Q.Connection := fmECPMain.ADOEtran;
          Q.SQL.Add('SELECT * FROM dbo.ETRAN_NSI_INF_OBJ WHERE type_inf_id = 37');
          Q.Open;
          fmECPFilter := TfmECPFilter.Create(nil, Q);
          fmECPFilter._SetFilter := 'Размер крупнотоннажного контейнера';
          if fmECPFilter.ShowModal = mrOk then begin
            cxButtonEdit7.Text:= IntToStr(fmECPFilter._GetId);
          end;
          Q.Free;
        end;
    1:  begin
          cxButtonEdit7.Text := '';
        end;
  end;
end;

procedure TfmECPinvCont.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action := caFree;
end;

procedure TfmECPinvCont.BitBtn2Click(Sender: TObject);
begin
  if Ftype_action = 0 then begin
    FClientDS.Append;
  end else begin
    FClientDS.Locate('id', Fid, []);
    FClientDS.Edit;
  end;

  FClientDS.FieldByName('contNumber'           ).Value := iif(cxTextEdit1.Text='', null, cxTextEdit1.Text);
  FClientDS.FieldByName('contCarOrder'         ).Value := iif(cxTextEdit4.Text='', null, cxTextEdit4.Text);
  FClientDS.FieldByName('contTonnage'          ).Value := cxButtonEdit5.EditValue;
  FClientDS.FieldByName('contTypeBig'          ).Value := cxButtonEdit6.EditValue;
  FClientDS.FieldByName('contSizeBig'          ).Value := cxButtonEdit7.EditValue;
  FClientDS.FieldByName('contWeightDep'        ).Value := cxCurrencyEdit5.EditValue;
  FClientDS.FieldByName('contWeightNet'        ).Value := cxCurrencyEdit1.EditValue;
  FClientDS.FieldByName('contPlacesCount'      ).Value := cxCurrencyEdit2.EditValue;
  FClientDS.FieldByName('contVolume'           ).Value := cxCurrencyEdit3.EditValue;
  FClientDS.FieldByName('contOwnerCountryCode' ).Value := cxButtonEdit2.EditValue;
  FClientDS.FieldByName('contOwnerCountryName' ).Value := cxButtonEdit1.EditValue;
  FClientDS.FieldByName('contOwnerTypeID'      ).Value := iif(FcontOwnerTypeID = -9, null, FcontOwnerTypeID);
  FClientDS.FieldByName('contOwnerTypeName'    ).Value := cxButtonEdit12.EditValue;
  FClientDS.FieldByName('contOwnerId'          ).Value := iif(FcontOwnerId = -9, null, FcontOwnerId);
  FClientDS.FieldByName('contOwnerOKPO'        ).Value := iif(cxTextEdit3.Text='', null, cxTextEdit3.Text);
  FClientDS.FieldByName('contOwnerName'        ).Value := cxButtonEdit3.EditValue;
  FClientDS.Post;
end;


end.
