unit EffectSPSAdd;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ExtCtrls, cxGraphics, cxControls, cxLookAndFeels,
  cxLookAndFeelPainters, cxContainer, cxEdit, cxTextEdit, cxMaskEdit,
  cxButtonEdit, DB, ADODB, cxCurrencyEdit, cxDropDownEdit, cxCheckBox, DBClient,
  cxMemo, cxRichEdit, dxSkinsCore, dxSkinBlack, dxSkinBlue, dxSkinBlueprint, dxSkinCaramel, dxSkinCoffee, dxSkinDarkRoom, dxSkinDarkSide,
  dxSkinDevExpressDarkStyle, dxSkinDevExpressStyle, dxSkinFoggy, dxSkinGlassOceans, dxSkinHighContrast, dxSkiniMaginary, dxSkinLilian,
  dxSkinLiquidSky, dxSkinLondonLiquidSky, dxSkinMcSkin, dxSkinMetropolis, dxSkinMetropolisDark, dxSkinMoneyTwins, dxSkinOffice2007Black,
  dxSkinOffice2007Blue, dxSkinOffice2007Green, dxSkinOffice2007Pink, dxSkinOffice2007Silver, dxSkinOffice2010Black, dxSkinOffice2010Blue,
  dxSkinOffice2010Silver, dxSkinOffice2013DarkGray, dxSkinOffice2013LightGray, dxSkinOffice2013White, dxSkinOffice2016Colorful,
  dxSkinOffice2016Dark, dxSkinPumpkin, dxSkinSeven, dxSkinSevenClassic, dxSkinSharp, dxSkinSharpPlus, dxSkinSilver, dxSkinSpringTime,
  dxSkinStardust, dxSkinSummer2008, dxSkinTheAsphaltWorld, dxSkinTheBezier, dxSkinsDefaultPainters, dxSkinValentine,
  dxSkinVisualStudio2013Blue, dxSkinVisualStudio2013Dark, dxSkinVisualStudio2013Light, dxSkinVS2010, dxSkinWhiteprint, dxSkinXmas2008Blue,
  Vcl.Menus, cxButtons, dxSkinOffice2019Colorful;

type
  TfmEffectSPSAdd = class(TForm)
    Panel5: TPanel;
    Panel1: TPanel;
    Label8: TLabel;
    cxButtonEdit3: TcxButtonEdit;
    Label9: TLabel;
    cxButtonEdit4: TcxButtonEdit;
    cxButtonEdit10: TcxButtonEdit;
    cxButtonEdit9: TcxButtonEdit;
    cxCurrencyEdit1: TcxCurrencyEdit;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label6: TLabel;
    Label10: TLabel;
    Label11: TLabel;
    Label12: TLabel;
    Label13: TLabel;
    Label15: TLabel;
    cxButtonEdit6: TcxButtonEdit;
    cxButtonEdit7: TcxButtonEdit;
    cxCurrencyEdit2: TcxCurrencyEdit;
    cxButtonEdit1: TcxButtonEdit;
    cxButtonEdit2: TcxButtonEdit;
    cxCurrencyEdit3: TcxCurrencyEdit;
    cxComboBox2: TcxComboBox;
    cxCurrencyEdit5: TcxCurrencyEdit;
    cxComboBox4: TcxComboBox;
    cxCheckBox5: TcxCheckBox;
    cxCheckBox1: TcxCheckBox;
    cxCurrencyEdit4: TcxCurrencyEdit;
    cxCurrencyEdit6: TcxCurrencyEdit;
    Label7: TLabel;
    cxButtonEdit5: TcxButtonEdit;
    cxButtonEdit8: TcxButtonEdit;
    cxButton1: TcxButton;
    cxButton2: TcxButton;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure cxButtonEdit3PropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
    procedure cxButtonEdit6PropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
    procedure cxButtonEdit1PropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
    procedure cxButtonEdit9PropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
    procedure cxComboBox4PropertiesEditValueChanged(Sender: TObject);
    procedure cxButtonEdit5PropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
    procedure cxButton2Click(Sender: TObject);
  private
    Fid : integer;
    Fnode_begin_id : integer;
    Fnode_end_id   : integer;
    FkargoETSNG_id : integer;
    FkargoGNG_id   : integer;
    FkargoETSNG_add_id : integer;

    Fconnect       : TADOConnection;
    FClientDS      : TClientDataSet;

    procedure SetInsert(id: integer);
    procedure SetUpdate(id: integer);
    function  IsEmptyRoute(): boolean;
  public
    constructor Create(AOwner: TApplication; conn: TADOConnection); reintroduce;
  published
    property _SetClientDS : TClientDataSet write FClientDS;
    property _SetInsert   : integer write SetInsert;
    property _SetUpdate   : integer write SetUpdate;

//    property _SetUpdate    : integer   write SetUpdate;
//    property _GetBargainID : integer   read Fbargain_id;
  end;

var
  fmEffectSPSAdd: TfmEffectSPSAdd;

implementation
  uses Filter, Raznoe;

{$R *.dfm}

constructor TfmEffectSPSAdd.Create(AOwner: TApplication; conn: TADOConnection);
begin
  Screen.Cursor := crHourglass;
  inherited Create(AOwner);

  Fid := -9;
  Fnode_begin_id := -9;
  Fnode_end_id   := -9;
  FkargoETSNG_id := -9;
  FkargoGNG_id   := -9;
  FkargoETSNG_add_id := -9;

  Screen.Cursor := crDefault;
end;

procedure TfmEffectSPSAdd.SetUpdate(id: integer);
begin
  Fid := id;
  if FClientDS.Locate('id', id, []) then begin

    if not FClientDS.FieldByName('node_begin_id').IsNull then begin
      Fnode_begin_id := FClientDS.FieldByName('node_begin_id').Value;
      cxButtonEdit3.EditValue := FClientDS.FieldByName('node_begin_name').Value;
      cxButtonEdit9.EditValue := FClientDS.FieldByName('node_begin_cod').Value;
    end;

    if not FClientDS.FieldByName('node_end_id').IsNull then begin
      Fnode_end_id := FClientDS.FieldByName('node_end_id').Value;
      cxButtonEdit4.EditValue := FClientDS.FieldByName('node_end_name').Value;
      cxButtonEdit10.EditValue := FClientDS.FieldByName('node_end_cod').Value;
    end;

    cxButtonEdit3.Properties.ReadOnly := True;
    cxButtonEdit3.Style.Font.Style := [fsBold];
    cxButtonEdit3.Style.Color := clBtnFace;
    cxButtonEdit3.Properties.Buttons.Items[0].Enabled := False;
    cxButtonEdit3.Properties.Buttons.Items[1].Enabled := False;

    cxButtonEdit9.Properties.ReadOnly := True;
    cxButtonEdit9.Style.Font.Style := [fsBold];
    cxButtonEdit9.Style.Color := clBtnFace;
    cxButtonEdit9.Properties.Buttons.Items[0].Enabled := False;
    cxButtonEdit9.Properties.Buttons.Items[1].Enabled := False;

    if FClientDS.RecNo <> FClientDS.RecordCount then begin
      cxButtonEdit4.Properties.ReadOnly := True;
      cxButtonEdit4.Style.Font.Style := [fsBold];
      cxButtonEdit4.Style.Color := clBtnFace;
      cxButtonEdit4.Properties.Buttons.Items[0].Enabled := False;
      cxButtonEdit4.Properties.Buttons.Items[1].Enabled := False;

      cxButtonEdit10.Properties.ReadOnly := True;
      cxButtonEdit10.Style.Font.Style := [fsBold];
      cxButtonEdit10.Style.Color := clBtnFace;
      cxButtonEdit10.Properties.Buttons.Items[0].Enabled := False;
      cxButtonEdit10.Properties.Buttons.Items[1].Enabled := False;
    end;

    if not FClientDS.FieldByName('kargoETSNG_id').IsNull then begin
      FkargoETSNG_id := FClientDS.FieldByName('kargoETSNG_id').Value;
      cxButtonEdit6.EditValue := FClientDS.FieldByName('kargoETSNG_name').Value;
      cxButtonEdit7.EditValue := FClientDS.FieldByName('kargoETSNG_cod').Value;
    end;

    if not FClientDS.FieldByName('kargoGNG_id').IsNull then begin
      FkargoGNG_id := FClientDS.FieldByName('kargoGNG_id').Value;
      cxButtonEdit1.EditValue := FClientDS.FieldByName('kargoGNG_name').Value;
      cxButtonEdit2.EditValue := FClientDS.FieldByName('kargoGNG_cod').Value;
    end;

    if not FClientDS.FieldByName('kargoETSNG_add_id').IsNull then begin
      FkargoETSNG_add_id := FClientDS.FieldByName('kargoETSNG_add_id').Value;
      cxButtonEdit5.EditValue := FClientDS.FieldByName('kargoETSNG_add_name').Value;
      cxButtonEdit8.EditValue := FClientDS.FieldByName('kargoETSNG_add_cod').Value;
    end;

    if IsEmptyRoute then begin
      cxButtonEdit5.Enabled := True;
      cxButtonEdit8.Enabled := True;
    end;

    cxCurrencyEdit1.EditValue := FClientDS.FieldByName('speed_avg').Value;
    cxCurrencyEdit2.EditValue := FClientDS.FieldByName('weight').Value;
    cxCurrencyEdit3.EditValue := FClientDS.FieldByName('days_load').Value;
    cxCurrencyEdit4.EditValue := FClientDS.FieldByName('count_vagon').Value;
    cxCurrencyEdit5.EditValue := FClientDS.FieldByName('rate_agree').Value;
    cxCurrencyEdit6.EditValue := FClientDS.FieldByName('rate_calc_value').Value;

    //cxComboBox1.ItemIndex := FClientDS.FieldByName('type_park_id').Value;
    cxComboBox2.ItemIndex := FClientDS.FieldByName('rate_type_id').Value;
    cxComboBox4.ItemIndex := FClientDS.FieldByName('formula_id').Value;

    cxCheckBox5.Checked  := FClientDS.FieldByName('set_self_cost').Value;
    cxCheckBox1.Checked  := FClientDS.FieldByName('set_vohr').Value;
  end;
end;

procedure TfmEffectSPSAdd.cxButton2Click(Sender: TObject);
begin
  ModalResult := mrOk;
  if (Fnode_begin_id = -9) OR (Fnode_end_id = -9) then begin
    Application.MessageBox('Станции не выбраны!!!', 'Внимание', MB_ICONWARNING or MB_OK);
    ModalResult := mrNone;
    Exit;
  end;

  if (FkargoETSNG_id = -9) then begin
    Application.MessageBox('Груз не выбран!!!', 'Внимание', MB_ICONWARNING or MB_OK);
    ModalResult := mrNone;
    Exit;
  end;

  if (FkargoETSNG_add_id = -9) AND (IsEmptyRoute) then begin
    Application.MessageBox('Не выбрано из-под груза!!!', 'Внимание', MB_ICONWARNING or MB_OK);
    ModalResult := mrNone;
    Exit;
  end;

  if FClientDS.Locate('id', Fid, []) then
    FClientDS.Edit
  else
    FClientDS.Append;

  if Fnode_begin_id <> -9 then begin
    FClientDS.FieldByName('node_begin_id'  ).Value := Fnode_begin_id;
    FClientDS.FieldByName('node_begin_name').Value := cxButtonEdit3.EditValue;
    FClientDS.FieldByName('node_begin_cod' ).Value := cxButtonEdit9.EditValue;
  end else begin
    FClientDS.FieldByName('node_begin_id'  ).Value := null;
    FClientDS.FieldByName('node_begin_name').Value := null;
    FClientDS.FieldByName('node_begin_cod' ).Value := null;
  end;

  if Fnode_end_id <> -9 then begin
    FClientDS.FieldByName('node_end_id'  ).Value := Fnode_end_id;
    FClientDS.FieldByName('node_end_name').Value := cxButtonEdit4.EditValue;
    FClientDS.FieldByName('node_end_cod' ).Value := cxButtonEdit10.EditValue;
  end else begin
    FClientDS.FieldByName('node_end_id'  ).Value := null;
    FClientDS.FieldByName('node_end_name').Value := null;
    FClientDS.FieldByName('node_end_cod' ).Value := null;
  end;

  if (FkargoETSNG_id <> -9) then begin
    FClientDS.FieldByName('kargoETSNG_id'  ).Value := FkargoETSNG_id;
    FClientDS.FieldByName('kargoETSNG_name').Value := cxButtonEdit6.EditValue;
    FClientDS.FieldByName('kargoETSNG_cod' ).Value := cxButtonEdit7.EditValue;
  end else begin
    FClientDS.FieldByName('kargoETSNG_id'  ).Value := null;
    FClientDS.FieldByName('kargoETSNG_name').Value := null;
    FClientDS.FieldByName('kargoETSNG_cod' ).Value := null;
  end;


  if (FkargoETSNG_add_id <> -9) AND (IsEmptyRoute) then begin
    FClientDS.FieldByName('kargoETSNG_add_id'  ).Value := FkargoETSNG_add_id;
    FClientDS.FieldByName('kargoETSNG_add_name').Value := cxButtonEdit5.EditValue;
    FClientDS.FieldByName('kargoETSNG_add_cod' ).Value := cxButtonEdit8.EditValue;
  end else begin
    FClientDS.FieldByName('kargoETSNG_add_id'  ).Value := null;
    FClientDS.FieldByName('kargoETSNG_add_name').Value := null;
    FClientDS.FieldByName('kargoETSNG_add_cod' ).Value := null;
  end;

  if (FkargoGNG_id <> -9) then begin
    FClientDS.FieldByName('kargoGNG_id'  ).Value := FkargoGNG_id;
    FClientDS.FieldByName('kargoGNG_name').Value := cxButtonEdit1.EditValue;
    FClientDS.FieldByName('kargoGNG_cod' ).Value := cxButtonEdit2.EditValue;
  end else begin
    FClientDS.FieldByName('kargoGNG_id'  ).Value := null;
    FClientDS.FieldByName('kargoGNG_name').Value := null;
    FClientDS.FieldByName('kargoGNG_cod' ).Value := null;
  end;

  if not IsEmptyRoute then begin
    FClientDS.FieldByName('weight'        ).Value := cxCurrencyEdit2.EditValue;
    FClientDS.FieldByName('type_park_id'  ).Value := 0;
    FClientDS.FieldByName('type_park_name').Value := 'Груженый';
  end else begin
    FClientDS.FieldByName('weight'        ).Value := null;
    FClientDS.FieldByName('type_park_id'  ).Value := 1;
    FClientDS.FieldByName('type_park_name').Value := 'Порожний';
  end;

  FClientDS.FieldByName('speed_avg'       ).Value := cxCurrencyEdit1.EditValue;
  FClientDS.FieldByName('days_load'       ).Value := cxCurrencyEdit3.EditValue;
  FClientDS.FieldByName('count_vagon'     ).Value := cxCurrencyEdit4.EditValue;


  FClientDS.FieldByName('rate_type_id'    ).Value := cxComboBox2.ItemIndex;
  FClientDS.FieldByName('rate_type_name'  ).Value := cxComboBox2.Text;
  FClientDS.FieldByName('formula_id'      ).Value := cxComboBox4.ItemIndex;
  FClientDS.FieldByName('formula_name'    ).Value := cxComboBox4.Text;
  FClientDS.FieldByName('rate_agree'      ).Value := cxCurrencyEdit5.EditValue;

  if cxComboBox4.ItemIndex = 0 then begin
    FClientDS.FieldByName('set_self_cost'  ).Value := cxCheckBox5.Checked;
    FClientDS.FieldByName('rate_calc_value').Value := 0;
  end else begin
    FClientDS.FieldByName('set_self_cost'  ).Value := False;
    FClientDS.FieldByName('rate_calc_value').Value := cxCurrencyEdit6.EditValue;
  end;


  FClientDS.FieldByName('set_vohr'        ).Value := cxCheckBox1.Checked;
  FClientDS.Post;
end;

procedure TfmEffectSPSAdd.cxButtonEdit1PropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
var new_str, str : string;
    Q : TADOQuery;
begin
  Q := TADOQuery.Create(nil);
  Q.Connection := Fconnect;

  case AButtonIndex of
    0 : case TcxButtonEdit(Sender).Tag of
          0 : if InputQuery('Поиск', 'Шаблон НАИМЕНОВАНИЯ для груза ГНГ:', new_str) then begin
                str := cxButtonEdit7.Text;
                if new_str <> '' then Q.SQL.Add('SELECT inf_obj_id, inf_obj_name, inf_obj_cod FROM inf_obj_GNG WHERE getdate() between date_begin and date_end AND inf_obj_name LIKE ''%'+new_str+'%'' order by inf_obj_name')
                else Q.SQL.Add('SELECT inf_obj_id, inf_obj_name, inf_obj_cod FROM inf_obj_GNG WHERE getdate() between date_begin and date_end AND inf_obj_gng_type LIKE ''%' +  Copy(str, 1 ,3) + '%'' ORDER BY inf_obj_name');
                Q.Open;
              end;
          1 : if InputQuery('Поиск', 'Шаблон КОДА для груза ГНГ:', new_str) then begin
                if new_str<>'' then Q.SQL.Add('SELECT inf_obj_id, inf_obj_name, inf_obj_cod FROM inf_obj_GNG WHERE getdate() between date_begin and date_end AND inf_obj_cod LIKE ''%'+new_str+'%'' order by inf_obj_cod')
                else Q.SQL.Add('SELECT inf_obj_id, inf_obj_name, inf_obj_cod FROM inf_obj_GNG WHERE getdate() between date_begin and date_end AND inf_obj_gng_type LIKE ''%' +  Copy(str, 1 ,3) + '%'' ORDER BY inf_obj_cod');
                Q.Open;
              end;
        end;
    1 : begin
        FkargoGNG_id := -9;
        cxButtonEdit1.EditValue := null;
        cxButtonEdit2.EditValue := null;
        end;
  end;

  if Q.Active then begin
    fmFilter := TfmFilter.Create(0, Q, 'inf_obj_id', 'inf_obj_cod', 'inf_obj_name');
    if fmFilter.ShowModal=mrOk then begin
      FkargoGNG_id := fmFilter.GetId;
      cxButtonEdit1.EditValue := fmFilter.GetName;
      cxButtonEdit2.EditValue := fmFilter.GetCod;
    end;
  end;
end;

procedure TfmEffectSPSAdd.cxButtonEdit3PropertiesButtonClick(Sender: TObject;  AButtonIndex: Integer);
var     Q : TADOQuery;
     dist : integer;
  new_str : string;
begin
  case AButtonIndex of
    0 : if InputQuery('Поиск', 'Шаблон поиска станции:', new_str) then begin
          Q := TADOQuery.Create(nil);
          Q.Connection :=  Fconnect;
          Q.SQL.Add('SELECT inf_obj_id, inf_obj_name, inf_obj_cod, inf_obj_cod from inf_obj_NODE');
          Q.SQL.Add('WHERE getdate() BETWEEN ISNULL(date_begin, convert(datetime, ''20010101'')) and ISNULL(date_end, convert(datetime, ''20300101''))');
          Q.SQL.Add('AND  inf_obj_name LIKE ''%'+new_str+'%'' ORDER BY inf_obj_name');
          Q.Open;
          fmFilter := TfmFilter.Create(0, Q, 'inf_obj_id', 'inf_obj_cod', 'inf_obj_name');
          if fmFilter.ShowModal=mrOk then begin
            case TcxButtonEdit(Sender).Tag of
               2 : begin
                   Fnode_begin_id := fmFilter.GetId;
                   cxButtonEdit3.EditValue := fmFilter.GetName;
                   cxButtonEdit9.EditValue := fmFilter.GetCod;
                   end;
               3 : begin
                   Fnode_end_id := fmFilter.GetId;
                   cxButtonEdit4.EditValue  := fmFilter.GetName;
                   cxButtonEdit10.EditValue := fmFilter.GetCod;
                   end;
            end;
          end;
        end;
    1 : case TcxButtonEdit(Sender).Tag of
          2 : begin
              Fnode_begin_id := -9;
              cxButtonEdit3.EditValue := null;
              cxButtonEdit9.EditValue := null;
              end;
          3 : begin
              Fnode_end_id := -9;
              cxButtonEdit4.EditValue := null;
              cxButtonEdit10.EditValue := null;
              end;
        end;
  end;

  if (Fnode_begin_id <> -9) AND (Fnode_end_id <> -9) then begin
    dist := GetCalcDistanceFast(cxButtonEdit9.Text, cxButtonEdit10.Text);
      if dist < 200 then
        cxCurrencyEdit1.EditValue := 110
      else if (dist >= 200) and (dist < 600) then
        cxCurrencyEdit1.EditValue := 160
      else if (dist >= 600) and (dist < 1000) then
        cxCurrencyEdit1.EditValue := 240
      else if (dist >= 1000) and (dist < 2000) then
        cxCurrencyEdit1.EditValue := 310
      else if (dist >= 2000) and (dist < 3000) then
        cxCurrencyEdit1.EditValue := 330
      else if (dist >= 3000) and (dist < 5000) then
        cxCurrencyEdit1.EditValue := 380
      else if (dist >= 5000) and (dist < 7000) then
        cxCurrencyEdit1.EditValue := 400
      else if (dist >= 7000) then
        cxCurrencyEdit1.EditValue := 420;
  end;

end;

procedure TfmEffectSPSAdd.cxButtonEdit5PropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
var new_str : string;
    Q: TADOQuery;
begin
  Q := TADOQuery.Create(nil);
  Q.Connection := Fconnect;
  case AButtonIndex of
    0 : case TcxButtonEdit(Sender).Tag of
          0 : if InputQuery('Поиск', 'Шаблон НАИМЕНОВАНИЯ для груза ЕТСНГ:', new_str) then begin
                Q.SQL.Add('SELECT inf_obj_id, inf_obj_name, inf_obj_cod from inf_obj_ETSNG WHERE getdate() between date_begin and date_end AND inf_obj_name LIKE ''%'+new_str+'%'' order by inf_obj_name');
                Q.Open;
              end;
          1 : if InputQuery('Поиск', 'Шаблон КОДА для груза ЕТСНГ:', new_str) then begin
                Q.SQL.Add('SELECT inf_obj_id, inf_obj_name, inf_obj_cod from inf_obj_ETSNG WHERE getdate() between date_begin and date_end AND inf_obj_cod LIKE ''%'+new_str+'%'' order by inf_obj_cod');
                Q.Open;
              end;
        end;
    1 : begin
        FkargoETSNG_add_id := -9;
        cxButtonEdit5.EditValue := null;
        cxButtonEdit8.EditValue := null;
        end;
  end;

  if Q.Active then begin
    fmFilter := TfmFilter.Create(0, Q, 'inf_obj_id', 'inf_obj_cod', 'inf_obj_name');
    if fmFilter.ShowModal=mrOk then begin
      FkargoETSNG_add_id := fmFilter.GetId;
      cxButtonEdit5.EditValue := fmFilter.GetName;
      cxButtonEdit8.EditValue := fmFilter.GetCod;
    end;
  end;

end;

procedure TfmEffectSPSAdd.cxButtonEdit6PropertiesButtonClick(Sender: TObject;  AButtonIndex: Integer);
var new_str : string;
    Q: TADOQuery;
begin
  Q := TADOQuery.Create(nil);
  Q.Connection := Fconnect;
  case AButtonIndex of
    0 : case TcxButtonEdit(Sender).Tag of
          0 : if InputQuery('Поиск', 'Шаблон НАИМЕНОВАНИЯ для груза ЕТСНГ:', new_str) then begin
                Q.SQL.Add('SELECT inf_obj_id, inf_obj_name, inf_obj_cod from inf_obj_ETSNG WHERE getdate() between date_begin and date_end AND inf_obj_name LIKE ''%'+new_str+'%'' order by inf_obj_name');
                Q.Open;
              end;
          1 : if InputQuery('Поиск', 'Шаблон КОДА для груза ЕТСНГ:', new_str) then begin
                Q.SQL.Add('SELECT inf_obj_id, inf_obj_name, inf_obj_cod from inf_obj_ETSNG WHERE getdate() between date_begin and date_end AND inf_obj_cod LIKE ''%'+new_str+'%'' order by inf_obj_cod');
                Q.Open;
              end;
        end;
    1 : begin
          FkargoETSNG_id := -9;
          cxButtonEdit6.EditValue := null;
          cxButtonEdit7.EditValue := null;

          cxButtonEdit5.Enabled := IsEmptyRoute;
          cxButtonEdit8.Enabled := IsEmptyRoute;
          cxCurrencyEdit2.Enabled := not IsEmptyRoute;
        end;
  end;

  if Q.Active then begin
    fmFilter := TfmFilter.Create(0, Q, 'inf_obj_id', 'inf_obj_cod', 'inf_obj_name');
    if fmFilter.ShowModal=mrOk then begin
      FkargoETSNG_id := fmFilter.GetId;
      cxButtonEdit6.EditValue := fmFilter.GetName;
      cxButtonEdit7.EditValue := fmFilter.GetCod;

      cxButtonEdit5.Enabled := IsEmptyRoute;
      cxButtonEdit8.Enabled := IsEmptyRoute;
      cxCurrencyEdit2.Enabled := not IsEmptyRoute;
    end;
  end;
end;

function TfmEffectSPSAdd.IsEmptyRoute(): boolean;
begin
    if  (cxButtonEdit7.Text = '421034') OR
        (cxButtonEdit7.Text = '421049') OR
        (cxButtonEdit7.Text = '421104') then begin
      Result := True;
    end else begin
      Result := False;
    end;
end;

procedure TfmEffectSPSAdd.cxButtonEdit9PropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
var new_str : string;
    Q : TADOQuery;
    dist : integer;
begin
  case AButtonIndex of
    0 : if InputQuery('Поиск', 'Шаблон поиска станции по коду:', new_str) then begin
          Q := TADOQuery.Create(nil);
          Q.Connection :=  Fconnect;
          Q.SQL.Add('SELECT inf_obj_id, inf_obj_name, inf_obj_cod, inf_obj_cod from inf_obj_NODE');
          Q.SQL.Add('WHERE getdate() BETWEEN ISNULL(date_begin, convert(datetime, ''20010101'')) and ISNULL(date_end, convert(datetime, ''20300101''))');
          Q.SQL.Add('AND  inf_obj_cod LIKE ''%'+new_str+'%'' ORDER BY inf_obj_name');
          Q.Open;
          fmFilter := TfmFilter.Create(0, Q, 'inf_obj_id', 'inf_obj_cod', 'inf_obj_name');
          if fmFilter.ShowModal=mrOk then begin
            case TcxButtonEdit(Sender).Tag of
               2 : begin
                   Fnode_begin_id := fmFilter.GetId;
                   cxButtonEdit3.EditValue := fmFilter.GetName;
                   cxButtonEdit9.EditValue := fmFilter.GetCod;
                   end;
               3 : begin
                   Fnode_end_id := fmFilter.GetId;
                   cxButtonEdit4.EditValue  := fmFilter.GetName;
                   cxButtonEdit10.EditValue := fmFilter.GetCod;
                   end;
            end;
          end;
        end;
    1 : case TcxButtonEdit(Sender).Tag of
          2 : begin
              Fnode_begin_id := -9;
              cxButtonEdit3.EditValue := null;
              cxButtonEdit9.EditValue := null;
              end;
          3 : begin
              Fnode_end_id := -9;
              cxButtonEdit4.EditValue := null;
              cxButtonEdit10.EditValue := null;
              end;
        end;
  end;

  if (Fnode_begin_id <> -9) AND (Fnode_end_id <> -9) then begin
    dist := GetCalcDistanceFast(cxButtonEdit9.Text, cxButtonEdit10.Text);
      if dist < 200 then
        cxCurrencyEdit1.EditValue := 110
      else if (dist >= 200) and (dist < 600) then
        cxCurrencyEdit1.EditValue := 160
      else if (dist >= 600) and (dist < 1000) then
        cxCurrencyEdit1.EditValue := 240
      else if (dist >= 1000) and (dist < 2000) then
        cxCurrencyEdit1.EditValue := 310
      else if (dist >= 2000) and (dist < 3000) then
        cxCurrencyEdit1.EditValue := 330
      else if (dist >= 3000) and (dist < 5000) then
        cxCurrencyEdit1.EditValue := 380
      else if (dist >= 5000) and (dist < 7000) then
        cxCurrencyEdit1.EditValue := 400
      else if (dist >= 7000) then
        cxCurrencyEdit1.EditValue := 420;
  end;

end;

procedure TfmEffectSPSAdd.cxComboBox4PropertiesEditValueChanged(Sender: TObject);
begin
  if cxComboBox4.ItemIndex = 1 then begin
    cxCurrencyEdit6.Enabled := True;
    cxCheckBox5.Enabled := False;
  end else begin
    cxCurrencyEdit6.Enabled := False;
    cxCurrencyEdit6.EditValue := null;
    cxCheckBox5.Enabled := True;
  end;
end;

procedure TfmEffectSPSAdd.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action := caFree;
end;

procedure TfmEffectSPSAdd.SetInsert(id: integer);
begin
  cxCurrencyEdit2.EditValue := 60;
  cxCurrencyEdit4.EditValue := 1;
  cxCurrencyEdit6.EditValue := 0;
  cxCurrencyEdit3.EditValue := 3;
  if FClientDS.Locate('id', id, []) then begin
    if not FClientDS.FieldByName('node_end_id').IsNull then begin
      cxButtonEdit3.Properties.ReadOnly := True;
      cxButtonEdit3.Style.Font.Style := [fsBold];
      cxButtonEdit3.Style.Color := clBtnFace;
      cxButtonEdit3.Properties.Buttons.Items[0].Enabled := False;
      cxButtonEdit3.Properties.Buttons.Items[1].Enabled := False;

      cxButtonEdit9.Properties.ReadOnly := True;
      cxButtonEdit9.Style.Font.Style := [fsBold];
      cxButtonEdit9.Style.Color := clBtnFace;
      cxButtonEdit9.Properties.Buttons.Items[0].Enabled := False;
      cxButtonEdit9.Properties.Buttons.Items[1].Enabled := False;

      Fnode_begin_id          := FClientDS.FieldByName('node_end_id'  ).Value;
      cxButtonEdit3.EditValue := FClientDS.FieldByName('node_end_name').Value;
      cxButtonEdit9.EditValue := FClientDS.FieldByName('node_end_cod' ).Value;
    end;
  end;
end;


end.
