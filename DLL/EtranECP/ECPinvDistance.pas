unit ECPinvDistance;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters,
  cxContainer, cxEdit, cxCurrencyEdit, cxTextEdit, cxMaskEdit, cxButtonEdit,
  StdCtrls, Buttons, ExtCtrls, ADODB, DB, DBClient, raznoe, cxPropertiesStore,
  cxClasses;

type
  TfmECPinvDistance = class(TForm)
    Panel1: TPanel;
    BitBtn2: TBitBtn;
    BitBtn1: TBitBtn;
    Panel2: TPanel;
    Label18: TLabel;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    Label9: TLabel;
    Label11: TLabel;
    Label12: TLabel;
    Label13: TLabel;
    Label19: TLabel;
    cxButtonEdit9: TcxButtonEdit;
    cxButtonEdit15: TcxButtonEdit;
    cxButtonEdit1: TcxButtonEdit;
    cxButtonEdit2: TcxButtonEdit;
    cxTextEdit2: TcxTextEdit;
    cxButtonEdit6: TcxButtonEdit;
    cxButtonEdit10: TcxButtonEdit;
    cxButtonEdit8: TcxButtonEdit;
    cxButtonEdit11: TcxButtonEdit;
    cxButtonEdit3: TcxButtonEdit;
    cxCurrencyEdit1: TcxCurrencyEdit;
    cxTextEdit1: TcxTextEdit;
    cxTextEdit4: TcxTextEdit;
    cxTextEdit5: TcxTextEdit;
    cxTextEdit6: TcxTextEdit;
    cxTextEdit7: TcxTextEdit;
    cxTextEdit8: TcxTextEdit;
    cxPropertiesStore1: TcxPropertiesStore;
    Label10: TLabel;
    cxButtonEdit4: TcxButtonEdit;
    cxButtonEdit5: TcxButtonEdit;
    Label14: TLabel;
    cxButtonEdit7: TcxButtonEdit;
    Label15: TLabel;
    cxButtonEdit12: TcxButtonEdit;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure cxButtonEdit9PropertiesButtonClick(Sender: TObject;
      AButtonIndex: Integer);
    procedure cxButtonEdit8PropertiesButtonClick(Sender: TObject;
      AButtonIndex: Integer);
    procedure cxButtonEdit1PropertiesButtonClick(Sender: TObject;
      AButtonIndex: Integer);
    procedure cxButtonEdit6PropertiesButtonClick(Sender: TObject;
      AButtonIndex: Integer);
    procedure cxButtonEdit3PropertiesButtonClick(Sender: TObject;
      AButtonIndex: Integer);
    procedure cxButtonEdit10PropertiesButtonClick(Sender: TObject;
      AButtonIndex: Integer);
    procedure BitBtn2Click(Sender: TObject);
    procedure cxButtonEdit4PropertiesButtonClick(Sender: TObject;
      AButtonIndex: Integer);
    procedure cxButtonEdit7PropertiesButtonClick(Sender: TObject;
      AButtonIndex: Integer);
    procedure cxButtonEdit12PropertiesButtonClick(Sender: TObject;
      AButtonIndex: Integer);
  private
    Fid            : integer;
    Ftype_action   : integer;
    FClientDS      : TClientDataSet;

    FdistTrackTypeID  : integer;
    FdistTranspTypeID : integer;
    FdistStationCountryId : integer;
    FdistPayPlaceRWID : integer;
    FdistCarrierID : integer;

    procedure SetUpdate(id: integer);
  public
    constructor Create(AOwner: TApplication); reintroduce;
  published
    property _SetClientDS : TClientDataSet write FClientDS;
    property _SetUpdate   : integer write SetUpdate;
  end;

var
  fmECPinvDistance: TfmECPinvDistance;

implementation

uses ECPMain, ECPFilter;

{$R *.dfm}

constructor TfmECPinvDistance.Create(AOwner: TApplication);
begin
  Screen.Cursor := crHourglass;
  inherited Create(AOwner);

  Ftype_action := 0;
  Fid       := -9;
  FClientDS := nil;

  FdistTrackTypeID  := -9;
  FdistTranspTypeID := -9;

  Screen.Cursor := crDefault;
end;

procedure TfmECPinvDistance.SetUpdate(id: integer);
var Q: TADOQuery;
begin
  Fid := id;
  Ftype_action := 1;
  FClientDS.Locate('id', Fid, []);

  cxButtonEdit15.EditValue  := FClientDS.FieldByName('distCountryCode').Value;
  cxButtonEdit9.EditValue   := FClientDS.FieldByName('distCountryName').Value;
  cxButtonEdit11.EditValue  := FClientDS.FieldByName('distStationCode').Value;
  cxButtonEdit8.EditValue   := FClientDS.FieldByName('distStationName').Value;
  cxButtonEdit2.EditValue   := FClientDS.FieldByName('distPortCode').Value;
  cxButtonEdit1.EditValue   := FClientDS.FieldByName('distPortName').Value;
  cxTextEdit2.EditValue     := FClientDS.FieldByName('distLoadWay').Value;
  FdistTrackTypeID          := iif(FClientDS.FieldByName('distTrackTypeID').IsNull, -9, FClientDS.FieldByName('distTrackTypeID').Value);
  cxButtonEdit6.EditValue   := FClientDS.FieldByName('distTrackTypeName').Value;
  FdistTranspTypeID         := iif(FClientDS.FieldByName('distTranspTypeID').IsNull, -9, FClientDS.FieldByName('distTranspTypeID').Value);
  cxButtonEdit3.EditValue   := FClientDS.FieldByName('distTranspTypeName').Value;
  cxCurrencyEdit1.EditValue := FClientDS.FieldByName('distMinWay').Value;
  cxTextEdit1.EditValue     := FClientDS.FieldByName('distRecipOKPO').Value;
  cxTextEdit4.EditValue     := FClientDS.FieldByName('distRecipName').Value;
  cxTextEdit5.EditValue     := FClientDS.FieldByName('distRecipAddress').Value;
  cxTextEdit6.EditValue     := FClientDS.FieldByName('distPayerName').Value;
  cxTextEdit7.EditValue     := FClientDS.FieldByName('distPayerCode').Value;
  cxTextEdit8.EditValue     := FClientDS.FieldByName('distFRWSubCode').Value;
  cxButtonEdit10.EditValue  := FClientDS.FieldByName('distSign').Value;

  FdistStationCountryId     := iif(FClientDS.FieldByName('distStationCountryId').IsNull, -9, FClientDS.FieldByName('distStationCountryId').Value);
  cxButtonEdit4.EditValue   := FClientDS.FieldByName('distStationCountryName').Value;
  cxButtonEdit5.EditValue   := FClientDS.FieldByName('distStationCountryCode').Value;
  FdistPayPlaceRWID         := iif(FClientDS.FieldByName('distPayPlaceRWID').IsNull, -9, FClientDS.FieldByName('distPayPlaceRWID').Value);
  cxButtonEdit7.EditValue   := FClientDS.FieldByName('distPayPlaceRWName').Value;
  FdistCarrierID            := iif(FClientDS.FieldByName('distCarrierID').IsNull, -9, FClientDS.FieldByName('distCarrierID').Value);
  cxButtonEdit12.EditValue  := FClientDS.FieldByName('distCarrierName').Value;
end;

procedure TfmECPinvDistance.cxButtonEdit10PropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
var Q: TADOQuery;
begin
  case AButtonIndex of
    0:  begin
          Q := TADOQuery.Create(nil);
          Q.Connection := fmECPMain.ADOEtran;
          Q.SQL.Add('SELECT * FROM dbo.ETRAN_NSI_INF_OBJ WHERE type_inf_id = 27 AND inf_obj_cod = ''206''');
          Q.Open;
          fmECPFilter := TfmECPFilter.Create(nil, Q);
          fmECPFilter._SetFilter := 'Признаки';
          if fmECPFilter.ShowModal = mrOk then begin
            cxButtonEdit10.Text:= IntToStr(fmECPFilter._GetId);
          end;
          Q.Free;
        end;
    1:  begin
          cxButtonEdit10.Text:= '';
        end;
  end;
end;

procedure TfmECPinvDistance.cxButtonEdit12PropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
var Q: TADOQuery;
    str_find: string;
begin
  case AButtonIndex of
    0:  begin
          Q := TADOQuery.Create(nil);
          Q.Connection := fmECPMain.ADOEtran;
          Q.SQL.Add('SELECT etran_nsi_id, inf_obj_name, inf_obj_cod FROM dbo.ETRAN_NSI_INF_OBJ WHERE type_inf_id = 49');

//          case TcxButtonEdit(Sender).Tag of
//           0: if InputQuery('Поиск', 'Поиск по НАИМЕНОВАНИЮ:', str_find) then begin
//                Q.SQL.Add('AND inf_obj_name like ''%' + str_find + '%''');
//              end else exit;
//           1: if InputQuery('Поиск', 'Поиск по КОДУ:', str_find) then begin
//                Q.SQL.Add('AND inf_obj_cod like ''%' + str_find + '%''');
//              end else exit;
//          end;

          Q.Open;
          fmECPFilter := TfmECPFilter.Create(nil, Q);
          fmECPFilter._SetFilterCod := 'Перевозчики';
          if fmECPFilter.ShowModal = mrOk then begin
            cxButtonEdit12.Text:= fmECPFilter._GetName;
            FdistCarrierID := fmECPFilter._GetId;
          end;
          Q.Free;
        end;
    1:  begin
          cxButtonEdit12.Text := '';
          FdistCarrierID := -9;
        end;
  end;
end;

procedure TfmECPinvDistance.cxButtonEdit1PropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
var Q: TADOQuery;
    str_find: string;
begin
  case AButtonIndex of
    0:  begin
          Q := TADOQuery.Create(nil);
          Q.Connection := fmECPMain.ADOEtran;
          Q.SQL.Add('SELECT etran_nsi_id, inf_obj_name, inf_obj_cod FROM dbo.ETRAN_NSI_INF_OBJ WHERE type_inf_id = 7');

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
          fmECPFilter._SetFilterCod := 'Порты';
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

procedure TfmECPinvDistance.cxButtonEdit3PropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
var Q: TADOQuery;
begin
  case AButtonIndex of
    0:  begin
          Q := TADOQuery.Create(nil);
          Q.Connection := fmECPMain.ADOEtran;
          Q.SQL.Add('SELECT * FROM dbo.ETRAN_NSI_INF_OBJ WHERE type_inf_id = 27 AND inf_obj_cod = ''103''');
          Q.Open;
          fmECPFilter := TfmECPFilter.Create(nil, Q);
          fmECPFilter._SetFilter := 'Вид транспорта';
          if fmECPFilter.ShowModal = mrOk then begin
            FdistTranspTypeID := fmECPFilter._GetID;
            cxButtonEdit3.Text:= fmECPFilter._GetName;
          end;
          Q.Free;
        end;
    1:  begin
          FdistTranspTypeID  := -9;
          cxButtonEdit3.Text := '';
        end;
  end;
end;

procedure TfmECPinvDistance.cxButtonEdit4PropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
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
            cxButtonEdit4.Text:= fmECPFilter._GetName;
            cxButtonEdit5.Text:= fmECPFilter._GetCod;
            FdistStationCountryId := fmECPFilter._GetId;
          end;
          Q.Free;
        end;
    1:  begin
          cxButtonEdit4.Text := '';
          cxButtonEdit5.Text := '';
          FdistStationCountryId := -9;
        end;
  end;
end;

procedure TfmECPinvDistance.cxButtonEdit6PropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
var Q: TADOQuery;
begin
  case AButtonIndex of
    0:  begin
          Q := TADOQuery.Create(nil);
          Q.Connection := fmECPMain.ADOEtran;
          Q.SQL.Add('SELECT * FROM dbo.ETRAN_NSI_INF_OBJ WHERE type_inf_id = 27 AND inf_obj_cod = ''104''');
          Q.Open;
          fmECPFilter := TfmECPFilter.Create(nil, Q);
          fmECPFilter._SetFilter := 'Вид колеи';
          if fmECPFilter.ShowModal = mrOk then begin
            FdistTrackTypeID  := fmECPFilter._GetID;
            cxButtonEdit6.Text:= fmECPFilter._GetName;
          end;
          Q.Free;
        end;
    1:  begin
          FdistTrackTypeID   := -9;
          cxButtonEdit6.Text := '';
        end;
  end;
end;

procedure TfmECPinvDistance.cxButtonEdit7PropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
var Q: TADOQuery;
    str_find: string;
begin
  case AButtonIndex of
    0:  begin
          Q := TADOQuery.Create(nil);
          Q.Connection := fmECPMain.ADOEtran;
          Q.SQL.Add('SELECT etran_nsi_id, inf_obj_name, inf_obj_cod FROM dbo.ETRAN_NSI_INF_OBJ WHERE type_inf_id = 5');

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
          fmECPFilter._SetFilterCod := 'Дороги';
          if fmECPFilter.ShowModal = mrOk then begin
            cxButtonEdit7.Text:= fmECPFilter._GetName;
            FdistPayPlaceRWID := fmECPFilter._GetId;
          end;
          Q.Free;
        end;
    1:  begin
          cxButtonEdit7.Text := '';
          FdistPayPlaceRWID  := -9;
        end;
  end;
end;

procedure TfmECPinvDistance.cxButtonEdit8PropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
var Q: TADOQuery;
    str_find: string;
begin
  case AButtonIndex of
    0:  begin
          Q := TADOQuery.Create(nil);
          Q.Connection := fmECPMain.ADOEtran;
          Q.SQL.Add('SELECT etran_nsi_id, inf_obj_name, inf_obj_cod FROM dbo.ETRAN_NSI_INF_OBJ WHERE type_inf_id = 11');

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
          fmECPFilter._SetFilterCod := 'Станции';
          if fmECPFilter.ShowModal = mrOk then begin
            cxButtonEdit8.Text:= fmECPFilter._GetName;
            cxButtonEdit11.Text:= fmECPFilter._GetCod;
          end;
          Q.Free;
        end;
    1:  begin
          cxButtonEdit8.Text := '';
          cxButtonEdit11.Text := '';
        end;
  end;
end;

procedure TfmECPinvDistance.cxButtonEdit9PropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
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
            cxButtonEdit9.Text:= fmECPFilter._GetName;
            cxButtonEdit15.Text:= fmECPFilter._GetCod;
          end;
          Q.Free;
        end;
    1:  begin
          cxButtonEdit9.Text := '';
          cxButtonEdit15.Text := '';
        end;
  end;
end;

procedure TfmECPinvDistance.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action := caFree;
end;

procedure TfmECPinvDistance.BitBtn2Click(Sender: TObject);
begin
  if Ftype_action = 0 then begin
    FClientDS.Append;
  end else begin
    FClientDS.Locate('id', Fid, []);
    FClientDS.Edit;
  end;

  FClientDS.FieldByName('distCountryCode'  ).Value := cxButtonEdit15.EditValue;
  FClientDS.FieldByName('distStationCode'  ).Value := cxButtonEdit11.EditValue;
  FClientDS.FieldByName('distPortCode'     ).Value := cxButtonEdit2.EditValue;
  FClientDS.FieldByName('distLoadWay'      ).Value := iif(cxTextEdit2.Text = '', null, cxTextEdit2.Text);
  FClientDS.FieldByName('distTrackTypeID'  ).Value := iif(FdistTrackTypeID = -9, null, FdistTrackTypeID);
  FClientDS.FieldByName('distTranspTypeID' ).Value := iif(FdistTranspTypeID = -9, null, FdistTranspTypeID);
  FClientDS.FieldByName('distMinWay'       ).Value := cxCurrencyEdit1.EditValue;
  FClientDS.FieldByName('distRecipOKPO'    ).Value := iif(cxTextEdit1.Text = '', null, cxTextEdit1.Text);
  FClientDS.FieldByName('distRecipName'    ).Value := iif(cxTextEdit4.Text = '', null, cxTextEdit4.Text);
  FClientDS.FieldByName('distRecipAddress' ).Value := iif(cxTextEdit5.Text = '', null, cxTextEdit5.Text);
  FClientDS.FieldByName('distPayerCode'    ).Value := iif(cxTextEdit7.Text = '', null, cxTextEdit7.Text);
  FClientDS.FieldByName('distPayerName'    ).Value := iif(cxTextEdit6.Text = '', null, cxTextEdit6.Text);
  FClientDS.FieldByName('distFRWSubCode'   ).Value := iif(cxTextEdit8.Text = '', null, cxTextEdit8.Text);
  FClientDS.FieldByName('distSign'         ).Value := cxButtonEdit10.EditValue;
  FClientDS.FieldByName('distCountryName'   ).Value := cxButtonEdit9.EditValue;
  FClientDS.FieldByName('distStationName'   ).Value := cxButtonEdit8.EditValue;
  FClientDS.FieldByName('distPortName'      ).Value := cxButtonEdit1.EditValue;
  FClientDS.FieldByName('distTrackTypeName' ).Value := cxButtonEdit6.EditValue;
  FClientDS.FieldByName('distTranspTypeName').Value := cxButtonEdit3.EditValue;
  FClientDS.FieldByName('distStationCountryId'  ).Value := iif(FdistStationCountryId = -9, null, FdistStationCountryId);
  FClientDS.FieldByName('distStationCountryName').Value := cxButtonEdit4.EditValue;
  FClientDS.FieldByName('distStationCountryCode').Value := cxButtonEdit5.EditValue;
  FClientDS.FieldByName('distPayPlaceRWID'      ).Value := iif(FdistPayPlaceRWID = -9, null, FdistPayPlaceRWID);
  FClientDS.FieldByName('distPayPlaceRWName'    ).Value := cxButtonEdit7.EditValue;
  FClientDS.FieldByName('distCarrierID'         ).Value := iif(FdistCarrierID = -9, null, FdistCarrierID);
  FClientDS.FieldByName('distCarrierName'       ).Value := cxButtonEdit12.EditValue;
  FClientDS.Post;

end;


end.
