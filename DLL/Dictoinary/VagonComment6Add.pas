unit VagonComment6Add;

interface

uses
  Windows, Forms, Messages, SysUtils, Variants, Classes, Graphics, Default,
  Controls, Dialogs, StdCtrls, Buttons, ExtCtrls, cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters, cxContainer,
  cxEdit, dxSkinsCore, dxSkinBlack, dxSkinBlue, dxSkinBlueprint, dxSkinCaramel, dxSkinCoffee, dxSkinDarkRoom, dxSkinDarkSide,
  dxSkinDevExpressDarkStyle, dxSkinDevExpressStyle, dxSkinFoggy, dxSkinGlassOceans, dxSkinHighContrast, dxSkiniMaginary,
  dxSkinLilian, dxSkinLiquidSky, dxSkinLondonLiquidSky, dxSkinMcSkin, dxSkinMetropolis, dxSkinMetropolisDark, dxSkinMoneyTwins,
  dxSkinOffice2007Black, dxSkinOffice2007Blue, dxSkinOffice2007Green, dxSkinOffice2007Pink, dxSkinOffice2007Silver, dxSkinOffice2010Black,
  dxSkinOffice2010Blue, dxSkinOffice2010Silver, dxSkinOffice2013DarkGray, dxSkinOffice2013LightGray, dxSkinOffice2013White,
  dxSkinOffice2016Colorful, dxSkinOffice2016Dark, dxSkinPumpkin, dxSkinSeven, dxSkinSevenClassic, dxSkinSharp, dxSkinSharpPlus,
  dxSkinSilver, dxSkinSpringTime, dxSkinStardust, dxSkinSummer2008, dxSkinTheAsphaltWorld, dxSkinsDefaultPainters, dxSkinValentine,
  dxSkinVisualStudio2013Blue, dxSkinVisualStudio2013Dark, dxSkinVisualStudio2013Light, dxSkinVS2010, dxSkinWhiteprint, dxSkinXmas2008Blue,
  ComCtrls, dxCore, cxDateUtils, cxDropDownEdit, cxCalendar, cxDBEdit, cxButtonEdit, cxMaskEdit, cxTextEdit, Data.DB, Datasnap.DBClient,
  Data.Win.ADODB, cxMemo, cxLookupEdit, cxDBLookupEdit, cxDBLookupComboBox, dxSkinTheBezier, cxCheckBox,
  Vcl.Menus, cxButtons, dxSkinOffice2019Colorful;

type
  TfmVagonComment6Add = class(TForm)
    Panel2: TPanel;
    Panel1: TPanel;
    Label40: TLabel;
    cxTextEdit1: TcxTextEdit;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    cxButtonEdit2: TcxButtonEdit;
    cxButtonEdit9: TcxButtonEdit;
    GroupBox1: TGroupBox;
    Label5: TLabel;
    Label6: TLabel;
    cxDateEdit1: TcxDateEdit;
    cxDateEdit2: TcxDateEdit;
    ClientDataSet1: TClientDataSet;
    ClientDataSet1node_begin_id: TIntegerField;
    ClientDataSet1node_begin_cod: TStringField;
    ClientDataSet1node_begin_name: TStringField;
    cxTextEdit2: TcxTextEdit;
    cxTextEdit3: TcxTextEdit;
    cxButtonEdit1: TcxButtonEdit;
    GroupBox2: TGroupBox;
    cxMemo1: TcxMemo;
    Label7: TLabel;
    cxLookupComboBox1: TcxLookupComboBox;
    DS_Inf_Obj: TDataSource;
    Query_Inf_Obj: TADOQuery;
    GroupBox3: TGroupBox;
    cxButtonEdit3: TcxButtonEdit;
    cxTextEdit4: TcxTextEdit;
    Label8: TLabel;
    cxTextEdit5: TcxTextEdit;
    Label9: TLabel;
    Label10: TLabel;
    cxLookupComboBox7: TcxLookupComboBox;
    Label12: TLabel;
    DS_RodVagon: TDataSource;
    Query_RodVagon: TADOQuery;
    GroupBox4: TGroupBox;
    cxButtonEdit4: TcxButtonEdit;
    cxButtonEdit5: TcxButtonEdit;
    Label11: TLabel;
    Label13: TLabel;
    cxCheckBox1: TcxCheckBox;
    cxCheckBox2: TcxCheckBox;
    cxCheckBox3: TcxCheckBox;
    cxCheckBox4: TcxCheckBox;
    cxCheckBox5: TcxCheckBox;
    cxCheckBox6: TcxCheckBox;
    cxCheckBox7: TcxCheckBox;
    cxCheckBox8: TcxCheckBox;
    cxCheckBox9: TcxCheckBox;
    cxButton1: TcxButton;
    cxButton3: TcxButton;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure cxButtonEdit2PropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
    procedure cxButtonEdit1PropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
    procedure cxButtonEdit3PropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
    procedure cxButtonEdit4PropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
    procedure cxButtonEdit5PropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
    procedure cxCheckBox1PropertiesChange(Sender: TObject);
    procedure cxCheckBox2PropertiesChange(Sender: TObject);
    procedure cxCheckBox3PropertiesChange(Sender: TObject);
    procedure cxCheckBox4PropertiesChange(Sender: TObject);
    procedure cxCheckBox5PropertiesChange(Sender: TObject);
    procedure cxCheckBox6PropertiesChange(Sender: TObject);
    procedure cxCheckBox9PropertiesChange(Sender: TObject);
    procedure cxCheckBox7PropertiesChange(Sender: TObject);
    procedure cxCheckBox8PropertiesChange(Sender: TObject);
    procedure cxButton1Click(Sender: TObject);
  private
    Ftype_action : integer;
    Fcomment6_id : integer;
    Fnode_begin_id: integer;
    Fcontract_id : integer;
    Fcontract_agent_id : integer;
    Fstr_comment6_id : string;

    procedure SetInsert(comment6_id: integer);
    procedure SetUpdate(comment6_id: integer);
    procedure SetUpdateGroup(str_comment6_id: string);
  public
    constructor Create(AOwner: TApplication);
  published
    property _SetInsert : integer write SetInsert;
    property _SetUpdate : integer write SetUpdate;
    property _SetUpdateGroup : string write SetUpdateGroup;
    property _GetComment6Id : integer read Fcomment6_id;
  end;

var
  fmVagonComment6Add: TfmVagonComment6Add;

implementation
  uses Raznoe, VagonComment6, Contract, Filter;
{$R *.dfm}

{ TfmVagonComment6Add }

constructor TfmVagonComment6Add.Create(AOwner: TApplication);
begin
  Screen.Cursor := crHourglass;

  inherited Create(Aowner);
  Ftype_action       := 0;
  Fcontract_id       := -9;
  Fcontract_agent_id := -9;
  Fnode_begin_id     := -9;
  Fcomment6_id       := -9;
  Fstr_comment6_id   := '';
  ClientDataSet1.CreateDataSet;

  MonitorEventFormOpen('OPEN_FORM', self.Name, fmVagonComment6.ADOVagonComment6, -9);

  Query_Inf_Obj.Open;
  Query_RodVagon.Open;

  Screen.Cursor := crDefault;
end;

procedure TfmVagonComment6Add.SetInsert(comment6_id: integer);
begin
  Ftype_action := 0;
  cxDateEdit1.Date := Now;
end;

procedure TfmVagonComment6Add.SetUpdate(comment6_id: integer);
var Q : TADOQuery;
begin
  Screen.Cursor := crHourglass;

  Ftype_action := 1;
  Fcomment6_id := comment6_id;
  Q := TADOQuery.Create(nil);
  Q.Connection := fmVagonComment6.ADOVagonComment6;
  Q.SQL.Add('SELECT * FROM view_vagon_comment6 WHERE comment6_id = ' + IntToStr(comment6_id));
  Q.Open;

  cxTextEdit1.EditValue := Q.FieldByName('comment6_name').AsString;
  if not Q.FieldByName('contract_id').IsNull then begin
    Fcontract_id := Q.FieldByName('contract_id').AsInteger;
    cxButtonEdit1.EditValue := Q.FieldByName('firm_customer_name').AsString;
    cxTextEdit2.EditValue := Q.FieldByName('contract_cod').AsString;
    cxTextEdit3.EditValue := FOrmatDateTime('dd.mm.yyyy', Q.FieldByName('contract_date_begin').AsDatetime);
  end;

  if not Q.FieldByName('contract_agent_id').IsNull then begin
    Fcontract_agent_id := Q.FieldByName('contract_agent_id').AsInteger;
    cxButtonEdit3.EditValue := Q.FieldByName('agent_firm_customer_name').AsString;
    cxTextEdit4.EditValue := Q.FieldByName('agent_contract_cod').AsString;
    cxTextEdit5.EditValue := FOrmatDateTime('dd.mm.yyyy', Q.FieldByName('agent_contract_date_begin').AsDatetime);
  end;

  if not Q.FieldByName('node_begin_id').IsNull then begin
    Fnode_begin_id := Q.FieldByName('node_begin_id').AsInteger;
    cxButtonEdit2.EditValue := Q.FieldByName('node_begin_name').AsString;
    cxButtonEdit9.EditValue := Q.FieldByName('node_begin_cod').AsString;
  end;

  cxButtonEdit4.EditValue := Q.FieldByName('sale_FIO_users').Value;
  cxButtonEdit5.EditValue := Q.FieldByName('dispatch_FIO_users').Value;
  cxLookupComboBox7.EditValue := Q.FieldByName('rod_vagon_id').Value;

  cxDateEdit1.EditValue := Q.FieldByName('date_begin').Value;
  cxDateEdit2.EditValue := Q.FieldByName('date_end').Value;

  cxMemo1.EditValue := Q.FieldByName('comment').Value;
  cxLookupComboBox1.EditValue := Q.FieldByName('group_id').Value;
  Q.Free;

  MonitorEventFormOpen('UPDATE_FORM', self.Name, fmVagonComment6.ADOVagonComment6, Fcomment6_id);
  Screen.Cursor := crDefault;
end;

procedure TfmVagonComment6Add.SetUpdateGroup(str_comment6_id: string);
begin
  Screen.Cursor := crHourGlass;

  Ftype_action := 5;
  Fstr_comment6_id := str_comment6_id;

  cxCheckBox1.Visible := True;
  cxCheckBox2.Visible := True;
  cxCheckBox3.Visible := True;
  cxCheckBox4.Visible := True;
  cxCheckBox5.Visible := True;
  cxCheckBox6.Visible := True;
  cxCheckBox7.Visible := True;
  cxCheckBox8.Visible := True;
  cxCheckBox9.Visible := True;

  cxTextEdit1.Enabled := False;
  cxButtonEdit1.Enabled := False;
  cxButtonEdit2.Enabled := False;
  cxButtonEdit3.Enabled := False;
  cxButtonEdit4.Enabled := False;
  cxButtonEdit5.Enabled := False;
  cxButtonEdit9.Enabled := False;
  cxLookupComboBox1.Enabled := False;
  cxLookupComboBox7.Enabled := False;
  cxDateEdit1.Enabled := False;
  cxDateEdit2.Enabled := False;

  Screen.Cursor := crDefault;
end;

procedure TfmVagonComment6Add.cxButtonEdit2PropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
begin
  case AButtonIndex of
    0 : begin
          case TcxButtonEdit(Sender).Tag of
            1 : begin
                  if FindInInfObjNode(ClientDataSet1, 'NODE_BEGIN', True, True, Now, fmVagonComment6.ADOVagonComment6) then begin
                    Fnode_begin_id := ClientDataSet1.FieldByName('node_begin_id').AsInteger;
                    cxButtonEdit2.Text := ClientDataSet1.FieldByName('node_begin_name').AsString;
                    cxButtonEdit9.Text := ClientDataSet1.FieldByName('node_begin_cod').AsString;
                  end;
                end;
            2 : begin
                  if FindInInfObjNode(ClientDataSet1,'NODE_BEGIN', False, True, Now, fmVagonComment6.ADOVagonComment6) then begin
                    Fnode_begin_id := ClientDataSet1.FieldByName('node_begin_id').AsInteger;
                    cxButtonEdit2.Text := ClientDataSet1.FieldByName('node_begin_name').AsString;
                    cxButtonEdit9.Text := ClientDataSet1.FieldByName('node_begin_cod').AsString;
                  end;
                end;
          end;
        end;
    1 : begin
          Fnode_begin_id := -9;
          cxButtonEdit2.Text := '';
          cxButtonEdit9.Text := '';
        end;
  end;

end;

procedure TfmVagonComment6Add.cxButtonEdit3PropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
var _fmContract : TfmContract;
              Q : TADOQuery;
begin
  case AButtonIndex of
    0 : begin
        _fmContract := TfmContract.CreateDLL(Application, True, 1, fmVagonComment6.Fusr_pwd, nil); // Подрядчики
        _fmContract.Visible := False;
        if _fmContract.ShowModal = mrOk then begin
          Fcontract_agent_id := _fmContract._GetContractId;
          Q := TADOQuery.Create(nil);
          Q.Connection := fmVagonComment6.ADOVagonComment6;
          Q.SQL.Add('SELECT * FROM view_contract WHERE contract_id=' + IntToStr(Fcontract_agent_id));
          Q.Open;

          cxButtonEdit3.EditValue := Q.FieldByName('firm_customer_name').AsString;
          cxTextEdit4.EditValue :=           _fmContract._GetContractCod;
          cxTextEdit5.EditValue := FOrmatDateTime('dd.mm.yyyy', Q.FieldByName('date_begin').AsDatetime);
          Q.Free;
       end;
        end;
    1 : begin
        Fcontract_agent_id := -9;
        cxButtonEdit3.EditValue := null;
        cxTextEdit4.EditValue := null;
        cxTextEdit5.EditValue := null;
        end;
  end;
end;


procedure TfmVagonComment6Add.cxButtonEdit4PropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
var  Q: TADOQuery;
begin
  case AButtonIndex of
    0 : begin
          Q := TADOQuery.Create(nil);
          Q.Connection := fmVagonComment6.ADOVagonComment6;
          Q.SQL.Add('SELECT * FROM users WHERE date_end is null ORDER BY FIO_users');
          Q.Open;
          fmFilter := TfmFilter.Create(0, Q, 'users_id', 'users_id', 'FIO_users' );
          fmFilter._SelectIndexColumn := 1;
          fmFilter.SetUsersChoose(cxButtonEdit2.Text);
          if fmFilter.ShowModal = mrOk then begin
            Q.Locate('FIO_users', fmFilter.GetName, [loCaseInsensitive]);
            cxButtonEdit4.EditValue := fmFilter.GetName;
            cxButtonEdit4.Properties.Buttons[1].Enabled := True;
          end;

          Q.Free;
        end;
    1 : begin
          cxButtonEdit4.EditValue := null;
        end;
  end;
end;

procedure TfmVagonComment6Add.cxButtonEdit5PropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
var  Q: TADOQuery;
begin
  case AButtonIndex of
    0 : begin
          Q := TADOQuery.Create(nil);
          Q.Connection := fmVagonComment6.ADOVagonComment6;
          Q.SQL.Add('SELECT * FROM users WHERE date_end is null ORDER BY FIO_users');
          Q.Open;
          fmFilter := TfmFilter.Create(0, Q, 'users_id', 'users_id', 'FIO_users' );
          fmFilter._SelectIndexColumn := 1;
          fmFilter.SetUsersChoose(cxButtonEdit2.Text);
          if fmFilter.ShowModal = mrOk then begin
            Q.Locate('fio_users', fmFilter.GetName, [loCaseInsensitive]);
            cxButtonEdit5.EditValue := fmFilter.GetName;
            cxButtonEdit5.Properties.Buttons[1].Enabled := True;
          end;

          Q.Free;
        end;
    1 : begin
          cxButtonEdit5.EditValue := null;
        end;
  end;
end;

procedure TfmVagonComment6Add.cxCheckBox1PropertiesChange(Sender: TObject);
begin
  cxButtonEdit2.Enabled := cxCheckBox1.Checked;
  cxButtonEdit9.Enabled := cxCheckBox1.Checked;
end;

procedure TfmVagonComment6Add.cxCheckBox2PropertiesChange(Sender: TObject);
begin
  cxButtonEdit1.Enabled := cxCheckBox2.Checked;
end;

procedure TfmVagonComment6Add.cxCheckBox3PropertiesChange(Sender: TObject);
begin
  cxLookupComboBox1.Enabled := cxCheckBox3.Checked;
end;

procedure TfmVagonComment6Add.cxCheckBox4PropertiesChange(Sender: TObject);
begin
  cxButtonEdit3.Enabled := cxCheckBox4.Checked;
end;

procedure TfmVagonComment6Add.cxCheckBox5PropertiesChange(Sender: TObject);
begin
  cxDateEdit1.Enabled := cxCheckBox5.Checked;
end;

procedure TfmVagonComment6Add.cxCheckBox6PropertiesChange(Sender: TObject);
begin
  cxDateEdit2.Enabled := cxCheckBox6.Checked;
end;

procedure TfmVagonComment6Add.cxCheckBox7PropertiesChange(Sender: TObject);
begin
 cxButtonEdit4.Enabled := cxCheckBox7.Checked;
end;

procedure TfmVagonComment6Add.cxCheckBox8PropertiesChange(Sender: TObject);
begin
cxButtonEdit5.Enabled := cxCheckBox8.Checked;
end;

procedure TfmVagonComment6Add.cxCheckBox9PropertiesChange(Sender: TObject);
begin
 cxLookupComboBox7.Enabled := cxCheckBox9.Checked;
end;

procedure TfmVagonComment6Add.cxButton1Click(Sender: TObject);
var SP : TADOStoredProc;
     Q : TADOQuery;
begin
  if Ftype_action = 5 then begin
    Q := TADOQuery.Create(nil);
    Q.Connection := fmVagonComment6.ADOVagonComment6;
    Q.SQL.Add('SELECT cod as comment6_id FROM dbo.StrToTbl(''' + Fstr_comment6_id + ''', DEFAULT)');
    Q.Open;

    SP := TADOStoredProc.Create(nil);
    SP.Connection := fmVagonComment6.ADOVagonComment6;
    SP.ProcedureName := 'sp_vagon_comment6_modify';
    while not Q.Eof do begin

      SP.Parameters.Refresh;
      SP.Parameters.ParamByName('@comment6_id'           ).Value := Q.FieldByName('comment6_id').Value;
      SP.Parameters.ParamByName('@type_action'           ).Value := Ftype_action;
      SP.Parameters.ParamByName('@set_node_begin_id'     ).Value := cxCheckBox1.Checked;
      SP.Parameters.ParamByName('@set_contract_id'       ).Value := cxCheckBox2.Checked;
      SP.Parameters.ParamByName('@set_group_id'          ).Value := cxCheckBox3.Checked;
      SP.Parameters.ParamByName('@set_contract_agent_id' ).Value := cxCheckBox4.Checked;
      SP.Parameters.ParamByName('@set_date_begin'        ).Value := cxCheckBox5.Checked;
      SP.Parameters.ParamByName('@set_date_end'          ).Value := cxCheckBox6.Checked;
      SP.Parameters.ParamByName('@contract_id'           ).Value := iif(Fcontract_id=-9, null, Fcontract_id);
      SP.Parameters.ParamByName('@contract_agent_id'     ).Value := iif(Fcontract_agent_id=-9, null, Fcontract_agent_id);
      SP.Parameters.ParamByName('@node_begin_id'         ).Value := iif(Fnode_begin_id=-9, null, Fnode_begin_id);
      SP.Parameters.ParamByName('@date_begin'            ).Value := cxDateEdit1.EditValue;
      SP.Parameters.ParamByName('@date_end'              ).Value := cxDateEdit2.EditValue;
      SP.Parameters.ParamByName('@group_id'              ).Value := cxLookupComboBox1.EditValue;

      SP.Parameters.ParamByName('@rod_vagon_id'          ).Value := cxLookupComboBox7.EditValue;
      SP.Parameters.ParamByName('@sale_FIO_users'        ).Value := cxButtonEdit4.EditValue;
      SP.Parameters.ParamByName('@dispatch_FIO_users'    ).Value := cxButtonEdit5.EditValue;

      SP.Parameters.ParamByName('@set_sale_FIO_users'    ).Value := cxCheckBox7.Checked;
      SP.Parameters.ParamByName('@set_dispatch_FIO_users').Value := cxCheckBox8.Checked;
      SP.Parameters.ParamByName('@set_rod_vagon_id'      ).Value       := cxCheckBox9.Checked;
      SP.ExecProc;

      Q.Next;
    end;

    SP.Free;
    Q.Free;
  end else begin
    //Проверки
    if Fcontract_id = -9 then begin
      Application.MessageBox('Не заполнен договор клиента. Необходимо заполнить ВСЕ поля.', 'Ошибка', MB_ICONERROR or MB_OK);
      ModalResult := mrNone;
      exit;
    end;

    if Fcontract_id = -9 then begin
      Application.MessageBox('Не заполнен договор подрядчика. Необходимо заполнить ВСЕ поля.', 'Ошибка', MB_ICONERROR or MB_OK);
      ModalResult := mrNone;
      exit;
    end;

    if Fnode_begin_id = -9 then begin
      Application.MessageBox('Не заполнена станция погрузки. Необходимо заполнить ВСЕ поля.', 'Ошибка', MB_ICONERROR or MB_OK);
      ModalResult := mrNone;
      exit;
    end;

    if VarIsNull(cxLookupComboBox7.EditValue) then begin
      Application.MessageBox('Не заполнен род вагонов. Необходимо заполнить ВСЕ поля.', 'Ошибка', MB_ICONERROR or MB_OK);
      ModalResult := mrNone;
      exit;
    end;

    if VarIsNull(cxButtonEdit4.EditValue) then begin
      Application.MessageBox('Не заполнен ответственный комерсант. Необходимо заполнить ВСЕ поля.', 'Ошибка', MB_ICONERROR or MB_OK);
      ModalResult := mrNone;
      exit;
    end;

    if VarIsNull(cxButtonEdit5.EditValue) then begin
      Application.MessageBox('Не заполнен ответственный диспетчер. Необходимо заполнить ВСЕ поля.', 'Ошибка', MB_ICONERROR or MB_OK);
      ModalResult := mrNone;
      exit;
    end;

    SP := TADOStoredProc.Create(nil);
    SP.Connection := fmVagonComment6.ADOVagonComment6;
    SP.ProcedureName := 'sp_vagon_comment6_modify';
    SP.Parameters.Refresh;

    SP.Parameters.ParamByName('@comment6_id').Value := Fcomment6_id;
    SP.Parameters.ParamByName('@type_action').Value := Ftype_action;
    SP.Parameters.ParamByName('@comment6_name').Value := cxTextEdit1.EditValue;
    SP.Parameters.ParamByName('@contract_id').Value := iif(Fcontract_id=-9, null, Fcontract_id);
    SP.Parameters.ParamByName('@contract_agent_id').Value := iif(Fcontract_agent_id=-9, null, Fcontract_agent_id);

    SP.Parameters.ParamByName('@node_begin_id').Value := iif(Fnode_begin_id=-9, null, Fnode_begin_id);
    SP.Parameters.ParamByName('@date_begin').Value := cxDateEdit1.EditValue;
    SP.Parameters.ParamByName('@date_end').Value := cxDateEdit2.EditValue;
    SP.Parameters.ParamByName('@comment').Value := iif(cxMemo1.EditValue='', null, cxMemo1.EditValue);
    SP.Parameters.ParamByName('@group_id').Value := cxLookupComboBox1.EditValue;
    SP.Parameters.ParamByName('@sale_FIO_users').Value := cxButtonEdit4.EditValue;
    SP.Parameters.ParamByName('@dispatch_FIO_users').Value := cxButtonEdit5.EditValue;
    SP.Parameters.ParamByName('@rod_vagon_id').Value := cxLookupComboBox7.EditValue;

    SP.ExecProc;

    Fcomment6_id := SP.Parameters.ParamByName('@comment6_id').Value;
    SP.Free;
  end;
end;

procedure TfmVagonComment6Add.cxButtonEdit1PropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
var _fmContract : TfmContract;
              Q : TADOQuery;
begin
  case AButtonIndex of
    0 : begin
        _fmContract := TfmContract.CreateDLL(Application, True, 0, fmVagonComment6.Fusr_pwd, nil);
        _fmContract.Visible := False;
        if _fmContract.ShowModal = mrOk then begin
          Fcontract_id :=_fmContract._GetContractId;
          Q := TADOQuery.Create(nil);
          Q.Connection := fmVagonComment6.ADOVagonComment6;
          Q.SQL.Add('SELECT * FROM view_contract WHERE contract_id=' + IntToStr(Fcontract_id));
          Q.Open;

          cxButtonEdit1.EditValue := Q.FieldByName('firm_customer_name').AsString;
          cxTextEdit2.EditValue := Q.FieldByName('contract_cod').AsString;
          cxTextEdit3.EditValue := FOrmatDateTime('dd.mm.yyyy', Q.FieldByName('date_begin').AsDatetime);
          Q.Free;
        end;
        end;
    1 : begin
        Fcontract_id := -9;
        cxButtonEdit1.EditValue := null;
        cxTextEdit2.EditValue := null;
        cxTextEdit3.EditValue := null;
        end;
  end;
end;

procedure TfmVagonComment6Add.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action := caFree;
end;

end.
