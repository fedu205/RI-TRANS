unit ECPOtstClaimOtpravkaAdd;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.Buttons, Vcl.ExtCtrls,
  cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters, cxContainer,
  cxEdit, cxTextEdit, Vcl.ComCtrls, dxCore, cxDateUtils, cxCheckBox,
  cxDropDownEdit, cxCalendar, cxMaskEdit, cxButtonEdit, cxGroupBox, cxMemo,
  Data.DB, Data.Win.ADODB, cxClasses, cxPropertiesStore, Datasnap.DBClient, StrUtils;

type
  TfmECPOtstClaimOtpravkaAdd = class(TForm)
    Panel4: TPanel;
    BitBtn2: TBitBtn;
    BitBtn1: TBitBtn;
    Panel1: TPanel;
    cxGroupBox1: TcxGroupBox;
    cxGroupBox2: TcxGroupBox;
    cxCheckBox2: TcxCheckBox;
    Label3: TLabel;
    Label2: TLabel;
    cxCheckBox1: TcxCheckBox;
    cxDateEdit2: TcxDateEdit;
    Label1: TLabel;
    Label54: TLabel;
    cxDateEdit1: TcxDateEdit;
    cxButtonEdit25: TcxButtonEdit;
    Label34: TLabel;
    Label21: TLabel;
    cxButtonEdit12: TcxButtonEdit;
    Label14: TLabel;
    cxButtonEdit10: TcxButtonEdit;
    cxButtonEdit26: TcxButtonEdit;
    cxMemo1: TcxMemo;
    cxPropertiesStore1: TcxPropertiesStore;
    cxTextEdit6: TcxTextEdit;
    procedure BitBtn1Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure BitBtn2Click(Sender: TObject);
    procedure cxButtonEdit10PropertiesButtonClick(Sender: TObject;
      AButtonIndex: Integer);
    procedure cxButtonEdit26PropertiesButtonClick(Sender: TObject;
      AButtonIndex: Integer);
  private
    Fid       : integer;
    Fconnect  : TADOConnection;
    FClientDS : TClientDataSet;
    procedure SetUpdate(id: integer);

    function  GetVagon(): string;
    procedure SetVagon(str_num_vagon: string);
    function  GetVagonCount(): integer;
  public
    constructor Create(AOwner: TApplication; connect: TADOConnection); reintroduce;
  published
    property _SetClientDS : TClientDataSet write FClientDS;
    property _SetUpdate   : integer write SetUpdate;
  end;

var
  fmECPOtstClaimOtpravkaAdd: TfmECPOtstClaimOtpravkaAdd;

implementation

{$R *.dfm}

uses ECPFilter;

function TfmECPOtstClaimOtpravkaAdd.GetVagon(): string;
var i : integer;
    str_list : TStringList;
begin
  i := 0;

  str_list := TStringList.Create;
  str_list.Text := cxMemo1.Lines.Text;


  while i<str_list.Count do begin
    if (Trim(str_list.Strings[i]) = '') OR (Trim(str_list.Strings[i]) = #13#10) then begin
      str_list.Delete(i)
    end else begin
      str_list.Strings[i] := Trim(str_list.Strings[i]);
      i := i + 1;
    end;
  end;
  Result := ReplaceStr(str_list.CommaText, ',', ' ');
  str_list.Free;
end;

procedure TfmECPOtstClaimOtpravkaAdd.SetVagon(str_num_vagon: string);
begin
  str_num_vagon := ReplaceStr(str_num_vagon, ' ', #13#10);
  cxMemo1.Lines.Text := str_num_vagon;
end;

function TfmECPOtstClaimOtpravkaAdd.GetVagonCount(): integer;
var i : integer;
    str_list : TStringList;
begin
  i := 0;

  str_list := TStringList.Create;
  str_list.Text := cxMemo1.Lines.Text;

  while i<str_list.Count do begin
    if (Trim(str_list.Strings[i]) = '') OR (Trim(str_list.Strings[i]) = #13#10) then begin
      str_list.Delete(i)
    end else begin
      str_list.Strings[i] := Trim(str_list.Strings[i]);
      i := i + 1;
    end;
  end;
  Result := str_list.Count;
  str_list.Free;
end;

procedure TfmECPOtstClaimOtpravkaAdd.BitBtn2Click(Sender: TObject);
begin
  if Fid = -9 then
    FClientDS.Append
  else begin
    FClientDS.Locate('id', Fid, []);
    FClientDS.Edit;
  end;

  FClientDS.FieldByName('NumOtp'          ).Value := cxTextEdit6.EditValue;
  FClientDS.FieldByName('otprStationCode' ).Value := cxButtonEdit10.EditValue;
  FClientDS.FieldByName('otprStationName' ).Value := cxButtonEdit12.EditValue;
  FClientDS.FieldByName('otstStationCode' ).Value := cxButtonEdit26.EditValue;
  FClientDS.FieldByName('otstStationName' ).Value := cxButtonEdit25.EditValue;
  FClientDS.FieldByName('DateOtstBegin'   ).Value := cxDateEdit1.EditValue;
  FClientDS.FieldByName('DateOtstEnd'     ).Value := cxDateEdit2.EditValue;
  FClientDS.FieldByName('KolWag'          ).Value := GetVagonCount();
  FClientDS.FieldByName('Skidka'          ).Value := cxCheckBox1.Checked;
  FClientDS.FieldByName('Wags'            ).Value := GetVagon();
  FClientDS.FieldByName('SelUslWag'       ).Value := cxCheckBox2.Checked;
  FClientDS.Post;

  ModalResult := mrOk;
end;

constructor TfmECPOtstClaimOtpravkaAdd.Create(AOwner: TApplication; connect: TADOConnection);
begin
  Screen.Cursor := crHourglass;
  inherited Create(AOwner);

  Fid := -9;
  Fconnect := connect;

  Screen.Cursor := crDefault;
end;

procedure TfmECPOtstClaimOtpravkaAdd.cxButtonEdit10PropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
var Q: TADOQuery;
    str_find: string;
begin
  case AButtonIndex of
    0:  begin
          Q := TADOQuery.Create(nil);
          Q.Connection := Fconnect;
          Q.SQL.Add('SELECT etran_nsi_id, inf_obj_name, inf_obj_cod FROM dbo.ETRAN_NSI_INF_OBJ WHERE type_inf_id = 11');

          case TcxButtonEdit(Sender).Tag of
           0: if InputQuery('Ïîèñê', 'Ïîèñê ïî ÍÀÈÌÅÍÎÂÀÍÈÞ:', str_find) then begin
                Q.SQL.Add('AND inf_obj_name like ''%' + str_find + '%''');
              end else exit;
           1: if InputQuery('Ïîèñê', 'Ïîèñê ïî ÊÎÄÓ:', str_find) then begin
                Q.SQL.Add('AND inf_obj_cod like ''%' + str_find + '%''');
              end else exit;
          end;

          Q.Open;
          fmECPFilter := TfmECPFilter.Create(nil, Q);
          fmECPFilter._SetFilterCod := 'Ñòàíöèè';
          if fmECPFilter.ShowModal = mrOk then begin
            cxButtonEdit12.Text := fmECPFilter._GetName;
            cxButtonEdit10.Text := fmECPFilter._GetCod;
          end;
          Q.Free;
        end;
    1:  begin
          cxButtonEdit12.Text := '';
          cxButtonEdit10.Text := '';
        end;
  end;
end;

procedure TfmECPOtstClaimOtpravkaAdd.cxButtonEdit26PropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
var Q: TADOQuery;
    str_find: string;
begin
  case AButtonIndex of
    0:  begin
          Q := TADOQuery.Create(nil);
          Q.Connection := Fconnect;
          Q.SQL.Add('SELECT etran_nsi_id, inf_obj_name, inf_obj_cod FROM dbo.ETRAN_NSI_INF_OBJ WHERE type_inf_id = 11');

          case TcxButtonEdit(Sender).Tag of
           0: if InputQuery('Ïîèñê', 'Ïîèñê ïî ÍÀÈÌÅÍÎÂÀÍÈÞ:', str_find) then begin
                Q.SQL.Add('AND inf_obj_name like ''%' + str_find + '%''');
              end else exit;
           1: if InputQuery('Ïîèñê', 'Ïîèñê ïî ÊÎÄÓ:', str_find) then begin
                Q.SQL.Add('AND inf_obj_cod like ''%' + str_find + '%''');
              end else exit;
          end;

          Q.Open;
          fmECPFilter := TfmECPFilter.Create(nil, Q);
          fmECPFilter._SetFilterCod := 'Ñòàíöèè';
          if fmECPFilter.ShowModal = mrOk then begin
            cxButtonEdit25.Text:= fmECPFilter._GetName;
            cxButtonEdit26.Text:= fmECPFilter._GetCod;
          end;
          Q.Free;
        end;
    1:  begin
          cxButtonEdit25.Text := '';
          cxButtonEdit26.Text := '';
        end;
  end;
end;

procedure TfmECPOtstClaimOtpravkaAdd.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action := caFree;
end;

procedure TfmECPOtstClaimOtpravkaAdd.BitBtn1Click(Sender: TObject);
begin
  ModalResult := mrCancel;
end;

procedure TfmECPOtstClaimOtpravkaAdd.SetUpdate(id: integer);
begin
  Fid := id;
  FClientDS.Locate('id', Fid, []);

  cxTextEdit6.EditValue    := FClientDS.FieldByName('NumOtp'          ).Value;
  cxButtonEdit10.EditValue := FClientDS.FieldByName('otprStationCode' ).Value;
  cxButtonEdit12.EditValue := FClientDS.FieldByName('otprStationName' ).Value;
  cxButtonEdit26.EditValue := FClientDS.FieldByName('otstStationCode' ).Value;
  cxButtonEdit25.EditValue := FClientDS.FieldByName('otstStationName' ).Value;
  cxDateEdit1.EditValue    := FClientDS.FieldByName('DateOtstBegin'   ).Value;
  cxDateEdit2.EditValue    := FClientDS.FieldByName('DateOtstEnd'     ).Value;
  cxCheckBox1.Checked      := FClientDS.FieldByName('Skidka'          ).Value;
  cxCheckBox2.Checked      := FClientDS.FieldByName('SelUslWag'       ).Value;
  SetVagon(FClientDS.FieldByName('Wags').AsString);
end;

end.
