unit VagonAdd;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms, Default,
  Dialogs, StdCtrls, Menus, ExtCtrls, DB, ADODB, DateUtils, ComCtrls,
  cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters, cxContainer, cxEdit, cxCurrencyEdit, cxDropDownEdit, cxLookupEdit, cxDBLookupEdit,
  cxDBLookupComboBox, cxMaskEdit, cxCalendar, cxTextEdit, cxPropertiesStore,  cxStyles, cxCustomData, cxFilter, cxData, cxDataStorage, cxDBData,
  cxGridCustomView, cxGridCustomTableView,  cxGridTableView, cxGridBandedTableView, cxGridDBBandedTableView, cxClasses, cxGridLevel,
  cxGrid, cxPC, cxMemo, DBClient, dxBar, cxCheckBox, cxButtonEdit, cxDBEdit, cxLabel, cxRadioGroup, cxGroupBox, dxBarBuiltInMenu,
  dxCore, cxDateUtils, cxNavigator, dxSkinsCore, dxSkinBlack, dxSkinBlue, dxSkinBlueprint, dxSkinCaramel, dxSkinCoffee, dxSkinDarkRoom,
  dxSkinDarkSide, dxSkinDevExpressDarkStyle, dxSkinDevExpressStyle, dxSkinFoggy, dxSkinGlassOceans, dxSkinHighContrast, dxSkiniMaginary,
  dxSkinLilian, dxSkinLiquidSky, dxSkinLondonLiquidSky, dxSkinMcSkin, dxSkinMetropolis, dxSkinMetropolisDark, dxSkinMoneyTwins, dxSkinSummer2008,
  dxSkinOffice2007Black, dxSkinOffice2007Blue, dxSkinOffice2007Green, dxSkinOffice2007Pink, dxSkinOffice2007Silver, dxSkinOffice2010Black,
  dxSkinOffice2010Blue, dxSkinOffice2010Silver, dxSkinOffice2013DarkGray, dxSkinOffice2013LightGray, dxSkinOffice2013White, dxSkinOffice2016Colorful,
  dxSkinOffice2016Dark, dxSkinPumpkin, dxSkinSeven, dxSkinSevenClassic, dxSkinSharp, dxSkinSharpPlus, dxSkinSilver, dxSkinSpringTime, dxSkinStardust,
  dxSkinTheAsphaltWorld, dxSkinTheBezier, dxSkinsDefaultPainters, dxSkinValentine, dxSkinVisualStudio2013Blue, dxSkinVisualStudio2013Dark,
  dxSkinVisualStudio2013Light, dxSkinVS2010, dxSkinWhiteprint, dxSkinXmas2008Blue, cxButtons;

type
  TfmVagonAdd = class(TForm)
    Panel2: TPanel;
    cxPropertiesStore1: TcxPropertiesStore;
    Query_VagonModel: TADOQuery;
    DS_VagonModel: TDataSource;
    ClientDataSet1: TClientDataSet;
    ClientDataSet1node_begin_id: TIntegerField;
    ClientDataSet1node_begin_cod: TStringField;
    ClientDataSet1node_begin_name: TStringField;
    Panel4: TPanel;
    Label3: TLabel;
    Label5: TLabel;
    cxDateEdit8: TcxDateEdit;
    GroupBox3: TGroupBox;
    Label6: TLabel;
    Label8: TLabel;
    Label9: TLabel;
    Label10: TLabel;
    cxLookupComboBox4: TcxLookupComboBox;
    cxTextEdit1: TcxTextEdit;
    cxTextEdit2: TcxTextEdit;
    cxTextEdit3: TcxTextEdit;
    GroupBox1: TGroupBox;
    cxMemo1: TcxMemo;
    GroupBox4: TGroupBox;
    cxMemo2: TcxMemo;
    Splitter1: TSplitter;
    cxCheckBox3: TcxCheckBox;
    cxTextEdit4: TcxTextEdit;
    cxTextEdit5: TcxTextEdit;
    Label1: TLabel;
    Label15: TLabel;
    Panel5: TPanel;
    Label2: TLabel;
    Label4: TLabel;
    Label12: TLabel;
    cxDateEdit1: TcxDateEdit;
    cxDateEdit2: TcxDateEdit;
    cxButtonEdit2: TcxButtonEdit;
    cxCheckBox5: TcxCheckBox;
    cxCheckBox6: TcxCheckBox;
    cxDateEdit3: TcxDateEdit;
    cxCheckBox4: TcxCheckBox;
    Label7: TLabel;
    cxTextEdit14: TcxTextEdit;
    Panel8: TPanel;
    cxCheckBox1: TcxCheckBox;
    Label16: TLabel;
    cxTextEdit6: TcxTextEdit;
    Label17: TLabel;
    Label11: TLabel;
    Label18: TLabel;
    Label19: TLabel;
    cxTextEdit7: TcxTextEdit;
    cxDateEdit4: TcxDateEdit;
    cxDateEdit5: TcxDateEdit;
    Panel1: TPanel;
    cxCheckBox2: TcxCheckBox;
    Label13: TLabel;
    cxCheckBox7: TcxCheckBox;
    cxButton1: TcxButton;
    cxButton3: TcxButton;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure cxLookupComboBox4PropertiesEditValueChanged(Sender: TObject);
    procedure cxButtonEdit2PropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
    procedure cxCheckBox5PropertiesEditValueChanged(Sender: TObject);
    procedure cxCheckBox6PropertiesEditValueChanged(Sender: TObject);
    procedure cxCheckBox3PropertiesEditValueChanged(Sender: TObject);
    procedure cxCheckBox4PropertiesEditValueChanged(Sender: TObject);
    procedure cxCheckBox1PropertiesChange(Sender: TObject);
    procedure Panel4Click(Sender: TObject);
    procedure cxCheckBox7PropertiesEditValueChanged(Sender: TObject);
    procedure cxButton1Click(Sender: TObject);
  private
    Fvagon_id       : integer;
    Fvagon_owner_id : integer;
    Ftype_action    : integer;
    Fset_group      : boolean;
    Fstr_vagon_id   : string;
    Fnode_registration_id : integer;
    Ftype_park : integer;
	  Fowner_contract_id : integer;
	  Ftype_park_id      : integer;

    Fconnect    : TADOConnection;

    procedure SetInsert(str_num_vagon : string);
    procedure SetUpdate(vagon_id : integer);
    procedure SetUpdateGroup(str_vagon_id : string);

    procedure GroupUpdate;
    procedure SimpleSave;

    function MemoToSQL(Value: TcxMemo): string;

  public
    constructor Create(AOwner: TApplication; conn: TADOConnection);

  published
    property _SetInsert       : string write SetInsert;
    property _SetUpdate       : integer write SetUpdate;
    property _SetUpdateGroup  : string write SetUpdateGroup;
    property _GetVagonId      : integer read Fvagon_id;
  end;

var
  fmVagonAdd: TfmVagonAdd;

implementation
  uses XMLDoc, VagonOwnerAdd, Raznoe, VagonCommentAdd, Other;

{$R *.dfm}

{ TfmVagonAdd }

constructor TfmVagonAdd.Create(AOwner: TApplication; conn: TADOConnection);
begin
  Screen.Cursor := crHourglass;

  inherited Create(Aowner);
  Ftype_action          := 0;
  Fset_group            := False;
  Fvagon_owner_id       := 0;
  Fnode_registration_id := -9;
  Fowner_contract_id    := -9;
  Ftype_park_id         := -9;

  Fconnect := conn;
  Query_VagonModel.Connection := Fconnect;

  ClientDataSet1.CreateDataSet;
  ClientDataSet1.LogChanges := False;

  Query_VagonModel.Open;

  MonitorEventFormOpen('OPEN_FORM', self.Name, FConnect, -9);
  Screen.Cursor := crDefault;
end;

procedure TfmVagonAdd.SetInsert(str_num_vagon : string);
begin
  cxCheckBox1.Checked := True;
  cxCheckBox3.Checked := True;
  cxCheckBox4.Checked := True;
  cxCheckBox5.Checked := True;
  cxCheckBox6.Checked := True;
  cxCheckBox7.Checked := True;

  cxCheckBox1.Visible := False;
  cxCheckBox3.Visible := False;
  cxCheckBox4.Visible := False;
  cxCheckBox5.Visible := False;
  cxCheckBox6.Visible := False;
  cxCheckBox7.Visible := False;

  if str_num_vagon <> '' then begin
    str_num_vagon := StringReplace(str_num_vagon, ',', #13#10, [rfReplaceAll]);
    cxMemo2.Text := str_num_vagon;
  end;
end;

procedure TfmVagonAdd.SetUpdate(vagon_id : integer);
var Q : TADOQuery;
begin
  cxCheckBox1.Checked := True;
  cxCheckBox3.Checked := True;
  cxCheckBox4.Checked := True;
  cxCheckBox5.Checked := True;
  cxCheckBox6.Checked := True;
  cxCheckBox7.Checked := True;

  cxCheckBox1.Visible := False;
  cxCheckBox3.Visible := False;
  cxCheckBox4.Visible := False;
  cxCheckBox5.Visible := False;
  cxCheckBox6.Visible := False;
  cxCheckBox7.Visible := False;

  Screen.Cursor := crHourglass;
  Ftype_action := 1;
  Fvagon_id := vagon_id;
  Fset_group := False;

  // ----- номер вагона
  Q := TADOQuery.Create(nil);
  Q.Connection := FConnect;
  Q.SQL.Add('SELECT * FROM view_vagon WHERE vagon_id = ' + IntToStr(Fvagon_id));
  Q.Open;

  Caption := Caption + ' [' + Q.FieldByName('num_vagon').AsString + ']';

  cxMemo2.Lines.Add(Q.FieldByName('num_vagon').AsString);
  cxMemo2.Properties.ReadOnly := True;
  cxMemo2.Style.Color         := clBtnFace;

  cxLookupComboBox4.EditValue := Q.FieldByName('vagon_model_id').Value;
  cxDateEdit1.EditValue       := Q.FieldByName('date_build').Value;
  cxDateEdit2.EditValue       := Q.FieldByName('date_remove').Value;
  Fnode_registration_id       := iif(Q.FieldByName('node_registration_id').IsNull, -9, Q.FieldByName('node_registration_id').Value);
  cxButtonEdit2.EditValue     := Q.FieldByName('node_registration_name').Value;
  cxDateEdit3.EditValue       := Q.FieldByName('next_date_repair').Value;
  cxMemo1.EditValue           := Q.FieldByName('comments').Value;
  cxCheckBox2.EditValue       := Q.FieldByName('set_sanctions').Value;

  // -------------- владельцы -------------------
  Q.Close;
  Q.SQL.Clear;
  Q.SQL.Add('SELECT TOP 1 * FROM view_vagon_owner WHERE vagon_id = ' + IntToStr(Fvagon_id) + ' AND ' + DateToSQL(Date) + ' BETWEEN date_begin AND ISNULL(date_end, getdate() + 1)');
  Q.Open;

  Fowner_contract_id     := iif(Q.FieldByName('vagon_owner_id').isnull, -9, Q.FieldByName('vagon_owner_id').Value);
  cxTextEdit14.EditValue := Q.FieldByName('firm_customer_name').Value;
  cxTextEdit6.EditValue  := Q.FieldByName('contract_cod').Value;
  cxDateEdit8.EditValue  := Q.FieldByName('contract_date_begin').Value;

  Ftype_park_id          := iif(Q.FieldByName('type_park_id').isnull, -9, Q.FieldByName('type_park_id').Value);
  cxTextEdit7.EditValue  := Q.FieldByName('type_park_name').Value;

  cxDateEdit4.EditValue  := Q.FieldByName('date_begin').Value;
  cxDateEdit5.EditValue  := Q.FieldByName('date_end').Value;

  Q.Free;

  MonitorEventFormOpen('UPDATE_FORM', self.Name, FConnect, Fvagon_id);
  Screen.Cursor := crDefault;
end;

procedure TfmVagonAdd.SetUpdateGroup(str_vagon_id : string);
var Q : TADOQuery;
begin
  cxCheckBox1.Checked := False;
  cxCheckBox3.Checked := False;
  cxCheckBox4.Checked := False;
  cxCheckBox5.Checked := False;
  cxCheckBox6.Checked := False;
  cxCheckBox7.Checked := False;

  cxCheckBox1.Visible := True;
  cxCheckBox3.Visible := True;
  cxCheckBox4.Visible := True;
  cxCheckBox5.Visible := True;
  cxCheckBox6.Visible := True;
  cxCheckBox7.Visible := True;

  Screen.Cursor := crHourglass;

  Fstr_vagon_id := str_vagon_id;
  Fset_group := True;

  Q := TADOQuery.Create(nil);
  Q.Connection := FConnect;
  Q.SQL.Add('SELECT * FROM view_vagon WHERE vagon_id IN (' + Fstr_vagon_id + ')');
  Q.Open;
  Caption := Caption + ' [';
  while not Q.Eof do begin
    if Q.RecNo <> 1 then
      Caption := Caption + ', ';
    Caption := Caption + Q.FieldByName('num_vagon').AsString;
    cxMemo2.Lines.Add(Q.FieldByName('num_vagon').AsString);
    Q.Next;
  end;
  cxMemo2.Properties.ReadOnly := True;
  cxMemo2.Style.Color := clBtnFace;
  Caption := Caption + ']';

  Q.Free;

  Screen.Cursor := crDefault;
end;

procedure TfmVagonAdd.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action := caFree;
end;

procedure TfmVagonAdd.SimpleSave;
var SP : TADOStoredProc;
    i  : integer;
    str_num_vagon: string;
begin
  Screen.Cursor := crHourglass;

  if Ftype_action = 0 then begin
    if (Fowner_contract_id = -9) or (Ftype_park_id = -9) then begin
      // Вызовем форму заполнения Владельца
      Panel4Click(nil);
    end;

    // Если опять ничего не выбрано, то ругаемся
    if (Fowner_contract_id = -9) or (Ftype_park_id = -9) then begin
      Application.MessageBox('Не выбран Владелец или Тип парка!!' , 'Внимание', MB_OKCANCEL);
      ModalResult := mrNone;
      exit;
    end;

    // Проверим корректность номеров вагонов.
    str_num_vagon := '';
    for i := 0 to cxMemo2.Lines.Count - 1 do begin
      if not CheckNumVagon(cxMemo2.Lines[i]) then begin
       str_num_vagon := str_num_vagon + cxMemo2.Lines[i] + ','
      end;
    end;

    if (str_num_vagon <> '')then begin
      Application.MessageBox(PWideChar('Номера вагонов не корректны : ' +  str_num_vagon) , 'Внимание', MB_OKCANCEL);
      ModalResult := mrNone;
      exit;
    end;
  end;

  SP := TADOStoredProc.Create(nil);
  SP.Connection := FConnect;
  SP.CommandTimeout := 600;
  SP.ProcedureName := 'sp_vagon_modify';
  SP.Parameters.Refresh;

  if Application.MessageBox('Вы уверены?' , 'Внимание', MB_OKCANCEL) = ID_OK then begin
    SP.Parameters.ParamByName('@type_action'          ).Value := Ftype_action;
    SP.Parameters.ParamByName('@str_num_vagon'        ).Value := MemoToSQL(cxMemo2);
    SP.Parameters.ParamByName('@vagon_id'             ).Value := iif(Ftype_action=1, Fvagon_id, null);
    SP.Parameters.ParamByName('@vagon_model_id'       ).Value := cxLookupComboBox4.EditValue;
    SP.Parameters.ParamByName('@date_build'           ).Value := cxDateEdit1.EditValue;
    SP.Parameters.ParamByName('@date_remove'          ).Value := cxDateEdit2.EditValue;
    SP.Parameters.ParamByName('@next_date_repair'     ).Value := cxDateEdit3.EditValue;
    SP.Parameters.ParamByName('@node_registration_id' ).Value := iif(Fnode_registration_id = -9, NULL, Fnode_registration_id);
    SP.Parameters.ParamByName('@comments'             ).Value := iif(cxMemo1.EditValue='', null, cxMemo1.EditValue);
    SP.Parameters.ParamByName('@set_sanctions'        ).Value := cxCheckBox2.EditValue;
    // Владелец (только при добавлении - в других ветках ХП е используется)
    // При изменении выводится только информационно
    SP.Parameters.ParamByName('@owner_contract_id').Value := Fowner_contract_id;
    SP.Parameters.ParamByName('@type_park_id'     ).Value := Ftype_park_id;
    SP.Parameters.ParamByName('@owner_date_begin' ).Value := cxDateEdit4.EditValue;
    SP.Parameters.ParamByName('@owner_date_end'   ).Value := cxDateEdit5.EditValue;

    try
      SP.ExecProc;
      Fvagon_id := SP.Parameters.ParamByName('@vagon_id').Value;
      SP.Free;
    except on E: Exception do
      begin
      Application.MessageBox(PChar(E.Message),'ВНИМАНИЕ!!!' , MB_OK + MB_ICONERROR);
      SP.Free;
      ModalResult := mrNone;
      end;
    end;
  end;

  Screen.Cursor := crDefault;
end;

procedure TfmVagonAdd.GroupUpdate;
var SP : TADOStoredProc;
begin
  Screen.Cursor := crHourglass;

  SP := TADOStoredProc.Create(nil);
  SP.Connection := FConnect;
  SP.CommandTimeout := 600;
  SP.ProcedureName := 'sp_vagon_modify_GROUP';
  SP.Parameters.Refresh;

  if Application.MessageBox('Изменены будут только те параметры, которые выбраны.' , 'Внимание', MB_OKCANCEL) = ID_OK then begin
    SP.Parameters.ParamByName('@str_vagon_id'         ).Value := Fstr_vagon_id;
    SP.Parameters.ParamByName('@vagon_model_id'       ).Value := cxLookupComboBox4.EditValue;
    SP.Parameters.ParamByName('@date_build'           ).Value := cxDateEdit1.EditValue;
    SP.Parameters.ParamByName('@date_remove'          ).Value := cxDateEdit2.EditValue;
    SP.Parameters.ParamByName('@next_date_repair'     ).Value := cxDateEdit3.EditValue;
    SP.Parameters.ParamByName('@node_registration_id' ).Value := iif(Fnode_registration_id = -9, NULL, Fnode_registration_id);
    SP.Parameters.ParamByName('@comments'             ).Value := iif(cxMemo1.EditValue='', null, cxMemo1.EditValue);
    SP.Parameters.ParamByName('@set_sanctions'        ).Value := cxCheckBox2.EditValue;

    SP.Parameters.ParamByName('@set_update_vagon_model_id'   ).Value := cxCheckBox3.Checked;
    SP.Parameters.ParamByName('@set_update_date_build'       ).Value := cxCheckBox5.Checked;
    SP.Parameters.ParamByName('@set_update_next_date_repair' ).Value := cxCheckBox4.Checked;
    SP.Parameters.ParamByName('@set_update_node_registration').Value := cxCheckBox6.Checked;
    SP.Parameters.ParamByName('@set_update_comments'         ).Value := cxCheckBox1.Checked;
    SP.Parameters.ParamByName('@set_update_set_sanctions'    ).Value := cxCheckBox7.checked;

    SP.ExecProc;
  end;

  SP.Free;
  Screen.Cursor := crDefault;
end;

procedure TfmVagonAdd.cxButton1Click(Sender: TObject);
begin
  if not Fset_group then
    SimpleSave
  else
    GroupUpdate;
end;

procedure TfmVagonAdd.cxButtonEdit2PropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
begin
  case AButtonIndex of
    0 : begin
         if FindInInfObjNode(ClientDataSet1,'NODE_BEGIN' ,True, True, Now, FConnect) then begin
           Fnode_registration_id := ClientDataSet1.FieldByName('node_begin_id').AsInteger;
           cxButtonEdit2.Text := ClientDataSet1.FieldByName('node_begin_name').AsString;
         end;
        end;
    1 : begin
          Fnode_registration_id := -9;
          cxButtonEdit2.Text := '';
        end;
  end;
end;

procedure TfmVagonAdd.cxCheckBox1PropertiesChange(Sender: TObject);
begin
  cxMemo1.Enabled := cxCheckBox1.Checked;
end;

procedure TfmVagonAdd.cxCheckBox3PropertiesEditValueChanged(Sender: TObject);
begin
  cxLookupComboBox4.Enabled := TcxCheckBox(Sender).Checked;
  cxCheckBox2.Enabled       := TcxCheckBox(Sender).Checked;
end;

procedure TfmVagonAdd.cxCheckBox4PropertiesEditValueChanged(Sender: TObject);
begin
  cxDateEdit3.Enabled := TcxCheckBox(Sender).Checked;
end;

procedure TfmVagonAdd.cxCheckBox5PropertiesEditValueChanged(Sender: TObject);
begin
  cxDateEdit1.Enabled       := TcxCheckBox(Sender).Checked;
  cxDateEdit2.Enabled       := TcxCheckBox(Sender).Checked;
end;

procedure TfmVagonAdd.cxCheckBox6PropertiesEditValueChanged(Sender: TObject);
begin
  cxButtonEdit2.Enabled := TcxCheckBox(Sender).Checked;
end;

procedure TfmVagonAdd.cxCheckBox7PropertiesEditValueChanged(Sender: TObject);
begin
  cxCheckBox2.Enabled := TcxCheckBox(Sender).Checked;
end;

procedure TfmVagonAdd.cxLookupComboBox4PropertiesEditValueChanged(Sender: TObject);
begin
  if not VarIsNull(cxLookupComboBox4.EditValue) then begin
    if Query_VagonModel.Locate('vagon_model_id', cxLookupComboBox4.EditValue, []) then begin
      cxTextEdit1.EditValue := Query_VagonModel.FieldByName('axis').Value;
      cxTextEdit2.EditValue := Query_VagonModel.FieldByName('capacity').Value;
      cxTextEdit3.EditValue := Query_VagonModel.FieldByName('rod_vagon_name').Value;
      cxTextEdit4.EditValue := Query_VagonModel.FieldByName('year_build').Value;
      cxTextEdit5.EditValue := Query_VagonModel.FieldByName('year_end').Value;
    end;
  end;
end;

function TfmVagonAdd.MemoToSQL(Value: TcxMemo): string;
var i  : integer;
    str: string;
    num: string;
begin
  str := '';
  if (Value.EditValue <> null) AND (Value.EditValue <> '') AND (Value.EditValue <> #13#10) then begin
    for i:=0 to Value.Lines.Count - 1 do
      try
        num := TrimRight(TrimLeft(StringReplace(Value.Lines[i],#160,'',[rfReplaceAll])));
        if (num <> '') AND (num <> #13) then  begin
          StrToInt64(num);
          str := str + ',' + num;
        end;
      except
        continue
      end;
    Delete(str, 1, 1);
    Result := str;
  end;
end;

procedure TfmVagonAdd.Panel4Click(Sender: TObject);
begin
  // Добавить владельца - только для операции добавления
  if Ftype_action = 0 then begin
    fmVagonOwnerAdd := TfmVagonOwnerAdd.Create(Application);
    fmVagonOwnerAdd._Connection := FConnect;
    fmVagonOwnerAdd._SetInsertToVagonAdd(Fowner_contract_id, Ftype_park_id, cxDateEdit4.EditValue, cxDateEdit5.EditValue);
    if fmVagonOwnerAdd.ShowModal = mrOk then begin
      Fowner_contract_id     := fmVagonOwnerAdd._GetContractId;
      cxTextEdit14.EditValue := fmVagonOwnerAdd._GetFirmName;
      cxTextEdit6.EditValue  := fmVagonOwnerAdd._GetContractCod;
      cxDateEdit8.EditValue  := fmVagonOwnerAdd._GetContractDate;

      Ftype_park_id          := fmVagonOwnerAdd._GetTypeParkId;
      cxTextEdit7.EditValue  := fmVagonOwnerAdd._GetTypeParkName;

      cxDateEdit4.EditValue  := fmVagonOwnerAdd._GetDateBegin;
      cxDateEdit5.EditValue  := fmVagonOwnerAdd._GetDateEnd;
    end;
  end;
end;

end.
