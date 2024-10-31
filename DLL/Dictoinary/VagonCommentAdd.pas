unit VagonCommentAdd;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms, Default,
  Dialogs, cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters, cxContainer,
  cxEdit, cxMemo, StdCtrls, cxTextEdit, cxDropDownEdit, cxCalendar, cxMaskEdit, cxLookupEdit, cxDBLookupEdit, cxDBLookupComboBox,
  ExtCtrls, DB, ADODB, cxCurrencyEdit, DBClient, cxPropertiesStore, cxButtonEdit, cxDBEdit, cxPC, dxBar, dxSkinsCore, dxSkinBlack,
  dxSkinBlue, dxSkinBlueprint, dxSkinCaramel, dxSkinCoffee, dxSkinDarkRoom, dxSkinDarkSide, dxSkinDevExpressDarkStyle,
  dxSkinDevExpressStyle, dxSkinFoggy, dxSkinGlassOceans, dxSkinHighContrast, dxSkiniMaginary, dxSkinLilian, dxSkinLiquidSky,
  dxSkinLondonLiquidSky, dxSkinMcSkin, dxSkinMetropolis, dxSkinMetropolisDark, dxSkinMoneyTwins, dxSkinOffice2007Black, dxSkinOffice2007Blue,
  dxSkinOffice2007Green, dxSkinOffice2007Pink, dxSkinOffice2007Silver, dxSkinOffice2010Black, dxSkinOffice2010Blue, dxSkinOffice2010Silver,
  dxSkinOffice2013DarkGray, dxSkinOffice2013LightGray, dxSkinOffice2013White, dxSkinOffice2016Colorful, dxSkinOffice2016Dark, dxSkinPumpkin,
  dxSkinSeven, dxSkinSevenClassic, dxSkinSharp, dxSkinSharpPlus, dxSkinSilver, dxSkinSpringTime, dxSkinStardust, dxSkinSummer2008,
  dxSkinTheAsphaltWorld, dxSkinsDefaultPainters, dxSkinValentine, dxSkinVisualStudio2013Blue, dxSkinVisualStudio2013Dark, dxSkinVisualStudio2013Light,
  dxSkinVS2010, dxSkinWhiteprint, dxSkinXmas2008Blue, dxSkinscxPCPainter, dxBarBuiltInMenu, Vcl.ComCtrls, dxCore, cxDateUtils, cxClasses,
  dxSkinTheBezier, Vcl.Menus, cxButtons, dxSkinOffice2019Colorful;
type
  TfmVagonCommentAdd = class(TForm)
    Panel2: TPanel;
    DS_Type_Comment: TDataSource;
    Query_Type_Comment: TADOQuery;
    cxPropertiesStore1: TcxPropertiesStore;
    ADOVagonComment: TADOConnection;
    cxPageControl1: TcxPageControl;
    cxTabSheet1: TcxTabSheet;
    Panel3: TPanel;
    Label3: TLabel;
    Label16: TLabel;
    Label5: TLabel;
    Label2: TLabel;
    Label1: TLabel;
    cxDateEdit1: TcxDateEdit;
    cxDateEdit3: TcxDateEdit;
    cxLookupComboBox1: TcxLookupComboBox;
    cxTextEdit17: TcxTextEdit;
    GroupBox2: TGroupBox;
    cxMemo1: TcxMemo;
    Panel4: TPanel;
    Label8: TLabel;
    Label4: TLabel;
    Label6: TLabel;
    cxButtonEdit1: TcxButtonEdit;
    cxButtonEdit2: TcxButtonEdit;
    Panel1: TPanel;
    Label7: TLabel;
    Label9: TLabel;
    Query_Comment6: TADOQuery;
    DS_Comment6: TDataSource;
    cxLookupComboBox2: TcxLookupComboBox;
    Panel5: TPanel;
    Label10: TLabel;
    Label11: TLabel;
    cxLookupComboBox3: TcxLookupComboBox;
    Query_inf_obj: TADOQuery;
    DS_inf_obj: TDataSource;
    cxButton1: TcxButton;
    cxButton3: TcxButton;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure cxLookupComboBox1PropertiesEditValueChanged(Sender: TObject);
    procedure cxButtonEdit1PropertiesButtonClick(Sender: TObject;AButtonIndex: Integer);
    procedure cxLookupComboBox2PropertiesEditValueChanged(Sender: TObject);
    procedure cxMemo1DblClick(Sender: TObject);
    procedure cxLookupComboBox3PropertiesEditValueChanged(Sender: TObject);
    procedure cxButton1Click(Sender: TObject);

  private
    Ftype_action : integer;
    Fvagon_comment_id :integer;
    Fvagon_id  : integer ;
    Fstr_vagon_id : string;
    Fdate_begin,
    Fdate_end : TDateTime;
    Fattached_global_id : integer;
    Fusr_pwd : PUser_pwd;

    procedure SetUpdate(vagon_comment_id : integer);
    procedure SetTypeAction(type_action : integer);
    function GetFIO_users(users_id : integer): string;
  public
    constructor Create(App: TApplication; usr_pwd: PUser_pwd; str_vagon_id: string = '');
  published
    property _SetUpdate         : integer   write SetUpdate;
    property _GetVagonId        : integer   read Fvagon_id;
    property _GetVagomCommentId : integer   read Fvagon_comment_id;
    property _GetDateBegin      : TDateTime read Fdate_begin;
    property _GetDateEnd        : TDateTime read Fdate_end;
    property _SetTypeAction     : integer   write SetTypeAction;
  end;

  function CreateWndVagonCommentAdd  (AppHand: THandle; flag: boolean; usr_pwd: PUser_pwd; str_vagon_id: string; type_action: integer) : variant; export;
  function CreateWndVagonComment13Add(AppHand: THandle; flag: boolean; usr_pwd: PUser_pwd; str_vagon_id: string; type_action: integer) : variant; export;
var
  fmVagonCommentAdd: TfmVagonCommentAdd;

implementation
  uses Vagon, Raznoe, Filter, Period;

{$R *.dfm}

function CreateWndVagonCommentAdd(AppHand: THandle; flag: boolean; usr_pwd: PUser_pwd; str_vagon_id: string; type_action: integer) : variant; export;
begin
   Application.Handle := AppHand;
   fmVagonCommentAdd  := TfmVagonCommentAdd.Create(Application, usr_pwd, str_vagon_id);
   fmVagonCommentAdd._SetTypeAction := type_action;

   with fmVagonCommentAdd do
    try
      if ShowModal = mrOK then result := VarArrayOf([fmVagonCommentAdd._GetVagonId, fmVagonCommentAdd._GetVagomCommentId])
      else result := VarArrayOf([-9, '']);
    finally
      Free;
    end;
end;

function CreateWndVagonComment13Add(AppHand: THandle; flag: boolean; usr_pwd: PUser_pwd; str_vagon_id: string; type_action: integer) : variant; export;
begin
  Screen.Cursor := crHourglass;

  Application.Handle := AppHand;
  fmVagonCommentAdd := TfmVagonCommentAdd.Create(Application, usr_pwd, str_vagon_id);
  fmVagonCommentAdd._SetTypeAction := type_action;

  fmVagonCommentAdd.cxLookupComboBox1.EditValue := 1385291;
  fmVagonCommentAdd.cxLookupComboBox1.Enabled   := False;

  with fmVagonCommentAdd do
  try
    if ShowModal = mrOK then result := VarArrayOf([fmVagonCommentAdd._GetVagonId, fmVagonCommentAdd._GetVagomCommentId])
    else result := VarArrayOf([-9, '']);
  finally
    Free;
  end;

  Screen.Cursor := crDefault;
end;

constructor TfmVagonCommentAdd.Create(App: TApplication; usr_pwd: PUser_pwd; str_vagon_id: string = '');
var Q : TADOQuery;
begin
  Screen.Cursor := crHourglass;
  //inherited Create(AOwner);
  inherited Create(App);
  ADOVagonComment.Connected := False;
  ADOVagonComment.ConnectionString := 'Persist Security Info=True;Provider=SQLOLEDB.1;User ID='+usr_pwd^.user_name+';Password='+usr_pwd^.user_pass+';Initial Catalog='+usr_pwd^.catalog+';Data Source='+usr_pwd^.server+';';
  ADOVagonComment.Connected := True;

  Ftype_action := 0;
  Fstr_vagon_id := str_vagon_id;
  Fdate_begin := -9;
  Fdate_end := -9;
  Fattached_global_id := -9;
  Fusr_pwd  := usr_pwd;

  if Pos(',', str_vagon_id) = 0 then
    Fvagon_id := StrToInt(str_vagon_id)
  else  Fvagon_id := -9;

  cxTextEdit17.Visible := True;

  Q := TADOQuery.Create(nil);
  Q.Connection := ADOVagonComment;
  Q.SQL.Add('SELECT num_vagon FROM vagon WHERE vagon_id in (SELECT * from dbo.StrToTbl(''' + str_vagon_id + ''', DEFAULT))');
  Q.Open;
  cxTextEdit17.EditValue := '';
  while not Q.Eof do begin
    if cxTextEdit17.EditValue <> '' then cxTextEdit17.EditValue := cxTextEdit17.EditValue + ',';
    cxTextEdit17.EditValue := cxTextEdit17.EditValue + Q.Fields[0].AsString;
    Q.Next;
  end;
  Q.Free;

  Query_Type_Comment.Open;
  cxLookupComboBox1.EditValue := Query_Type_Comment.FieldByName('inf_obj_id').Value;

  cxDateEdit1.EditValue := Date;
  SetUsersModuleRights(self, ADOVagonComment);
  Panel4.Visible := False;
  Query_Comment6.Open;

  MonitorEventFormOpen('OPEN_FORM', self.Name, ADOVagonComment, -9);
  Screen.Cursor := crDefault;
end;

procedure TfmVagonCommentAdd.cxButton1Click(Sender: TObject);
var SP : TADOStoredProc;
    Q  : TADOQuery;
begin
  Screen.Cursor := crHourglass;
  if cxPageControl1.ActivePage = cxTabSheet1 then begin
    if True then

    if (Query_Type_Comment.FieldByName('inf_obj_cod').AsString = '6') and (Fattached_global_id = -9) and (Ftype_action in [0,1]) then begin
     Application.MessageBox('Не выбран полигон!', 'Ошибка', MB_OK);
     ModalResult := mrNone;
     Exit;
    end;

    SP := TADOStoredProc.Create(nil);
    SP.Connection := ADOVagonComment;
    SP.ProcedureName := 'sp_vagon_comment_modify;1';

    if (Query_Type_Comment.FieldByName('inf_obj_cod').AsString = '6') and (Ftype_action in [0,1,3]) then begin
     SP.Parameters.Refresh;
     SP.Parameters.ParamByName('@str_vagon_id').Value := Fstr_vagon_id;
     SP.Parameters.ParamByName('@type_action' ).Value := 10;
     case Ftype_action of
      //на добавлении проверяем дату начала нового, с учетом, что предыдущий будет автоматом закрывться на 1 день раньше
      0:SP.Parameters.ParamByName('@date_begin'  ).Value := cxDateEdit1.EditValue;
      //при изменении и закрытии проверяем дату закрытия
      1,3:SP.Parameters.ParamByName('@date_begin'  ).Value := cxDateEdit3.EditValue + 1;
     end;

     SP.Open;
     if SP.RecordCount <> 0 then begin
      Application.MessageBox('Невозможно закрыть комментарий. Вагоны находятся в груженом рейсе?', 'Ошибка', MB_OK);
      fmFilter := TfmFilter.Create(0, SP, 'num_vagon', 'num_vagon', 'num_vagon');
      fmFilter._SetViewVagon := True;
      fmFilter.ShowModal;
      fmFilter.Free;
      ModalResult := mrNone;
      Exit;
     end;
    end;

    if Fvagon_id = -9 then begin
      Q := TADOQuery.Create(nil);
      Q.Connection := ADOVagonComment;
      Q.SQL.Add('SELECT i.*, v.num_vagon from dbo.StrToTbl(''' + Fstr_vagon_id + ''', DEFAULT) i INNER JOIN vagon v ON v.vagon_id = cast(i.cod as int)');
      Q.Open;
      while not Q.Eof do begin
        SP.Parameters.Refresh;
        SP.Parameters.ParamByName('@vagon_comment_id'     ).Value := Fvagon_comment_id;
        SP.Parameters.ParamByName('@type_action'          ).Value := Ftype_action;
        SP.Parameters.ParamByName('@vagon_id'             ).Value := Q.Fields[0].AsInteger;
        SP.Parameters.ParamByName('@vagon_comment_type_id').Value := cxLookupComboBox1.EditValue;
        SP.Parameters.ParamByName('@vagon_comment'        ).Value := cxMemo1.EditValue;
        SP.Parameters.ParamByName('@date_begin'           ).Value := cxDateEdit1.EditValue;
        SP.Parameters.ParamByName('@date_end'             ).Value := cxDateEdit3.EditValue;
        SP.Parameters.ParamByName('@attached_global_id'   ).Value := iif(Fattached_global_id = -9, NULL, Fattached_global_id);
        try
          SP.ExecProc;
        except on E: Exception do
          Application.MessageBox(PChar(E.Message +' № вагона ' + Q.FieldByName('num_vagon').AsString) , 'Внимание', MB_OK)
        end;
        Q.Next;
      end;
    end else begin
      SP.Parameters.Refresh;
      SP.Parameters.ParamByName('@vagon_comment_id'     ).Value := Fvagon_comment_id;
      SP.Parameters.ParamByName('@type_action'          ).Value := Ftype_action;
      SP.Parameters.ParamByName('@vagon_id'             ).Value := Fvagon_id;
      SP.Parameters.ParamByName('@vagon_comment_type_id').Value := cxLookupComboBox1.EditValue;
      SP.Parameters.ParamByName('@vagon_comment'        ).Value := cxMemo1.EditValue;
      SP.Parameters.ParamByName('@date_begin'           ).Value := cxDateEdit1.EditValue;
      SP.Parameters.ParamByName('@date_end'             ).Value := cxDateEdit3.EditValue;
      SP.Parameters.ParamByName('@attached_global_id'   ).Value := iif(Fattached_global_id = -9, NULL, Fattached_global_id);
      SP.ExecProc;
    end;
    SP.Free; Q.Free;
  end;
  Screen.Cursor := crDefault;
end;

procedure TfmVagonCommentAdd.cxButtonEdit1PropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
var Q: TADOQuery;
begin
  case  AButtonIndex  of
    0 : begin
          Q := TADOQuery.Create(Self);
          Q.Connection := ADOVagonComment;
          Q.SQL.Add('SELECT contract_id, firm_customer_name, firm_self_name, contract_cod, currency_id, note, firm_self');
          Q.SQL.Add(' , type_contract_name = CASE type_contract WHEN 0 THEN ''Клиент'' WHEN 1 THEN ''Подрядчик'' WHEN 2 THEN ''Администрация'' ELSE ''---'' END');
          Q.SQL.Add('FROM view_contract_rights WHIT(NOLOCK) ');
          Q.SQL.Add('WHERE date_end >= GETDATE() - 31');
          Q.SQL.Add('ORDER BY firm_customer_name, type_contract, contract_cod');
          Q.Open;
          fmFilter := TfmFilter.Create(0, Q, 'contract_id', 'contract_cod', 'firm_customer_name');
          fmFilter._SetContract4ScoreInvoice := True;
          fmFilter._SelectIndexColumn := 1;
          if fmFilter.ShowModal = mrOk then begin
            cxButtonEdit1.EditValue := fmFilter.GetCod;
            cxButtonEdit1.Tag := fmFilter.GetId;
            cxButtonEdit2.EditValue :=fmFilter.GetName;
            cxMemo1.Text := fmFilter.GetName + ' дог.№ ' + fmFilter.GetCod;
          end;
          Fattached_global_id := fmFilter.GetId;
          Q.Free;
        end;
    1 : begin
          cxButtonEdit1.EditValue := NULL;
          cxButtonEdit1.Tag := -9;
          cxButtonEdit2.EditValue :=NULL;
          cxMemo1.Text := '';
          Fattached_global_id := -9;
        end;
  end;
end;

procedure TfmVagonCommentAdd.cxLookupComboBox1PropertiesEditValueChanged(Sender: TObject);
begin
  Query_Type_Comment.Locate('inf_obj_id',cxLookupComboBox1.EditingValue,[]);

  case Query_Type_Comment.FieldByName('inf_obj_cod').AsInteger of
    6 : begin
          Panel4.Visible                    := True;
          Panel1.Visible                    := True;
          Panel5.Visible                    := False;

          cxButtonEdit1.Enabled             := False;
          cxButtonEdit2.Enabled             := False;
          cxButtonEdit1.Properties.ReadOnly := True;
          cxButtonEdit1.Style.Color         := cl3DLight;

          cxMemo1.Properties.ReadOnly       := True;
          cxMemo1.Style.Color               := cl3DLight;
        end;
    4 : begin
          //Выбор коммента из общего справочника
          Panel1.Visible              := False;
          Panel4.Visible              := False;
          Panel5.Visible              := True;

          cxMemo1.Properties.ReadOnly := True;
          cxMemo1.Style.Color         := cl3DLight;

          Query_inf_obj.Parameters.ParamByName('type_inf_id').Value := 168;
          Query_inf_obj.Open;

        end
    else begin
      Panel1.Visible              := False;
      Panel4.Visible              := False;
      Panel5.Visible              := False;

      cxMemo1.Properties.ReadOnly := False;
      cxMemo1.Style.Color         := clWindow;
    end;
  end;

end;

procedure TfmVagonCommentAdd.cxLookupComboBox2PropertiesEditValueChanged(Sender: TObject);
begin
  Query_Comment6.Locate('comment6_id',cxLookupComboBox2.EditValue,[]);
  cxButtonEdit1.Text  := Query_Comment6.FieldByName('contract_cod').AsString;
  cxButtonEdit1.tag   := Query_Comment6.FieldByName('contract_id').AsInteger;
  cxButtonEdit2.Text  := Query_Comment6.FieldByName('firm_customer_name').AsString;
  cxMemo1.Text        := Query_Comment6.FieldByName('comment6_name').AsString;
  Fattached_global_id := Query_Comment6.FieldByName('comment6_id').AsInteger;
end;

procedure TfmVagonCommentAdd.cxLookupComboBox3PropertiesEditValueChanged(Sender: TObject);
begin
  Query_inf_obj.Locate('inf_obj_id',cxLookupComboBox3.EditValue, []);
  cxMemo1.Text := GetFIO_users(Fusr_pwd.users_id) +': ' + Query_inf_obj.FieldByName('inf_obj_name').AsString;
  Fattached_global_id := cxLookupComboBox3.EditValue;
end;

procedure TfmVagonCommentAdd.cxMemo1DblClick(Sender: TObject);
begin
  if Query_Type_Comment.FieldByName('inf_obj_cod').AsString = '3' then begin
    fmPeriod := TfmPeriod.Create(Application, Date, Date, 5);
    if fmPeriod.ShowModal = mrOK then begin
      cxMemo1.EditValue := DateToStr(fmPeriod._GetDateBegin);
    end;
  end;
end;

procedure TfmVagonCommentAdd.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action := caFree;
end;

function TfmVagonCommentAdd.GetFIO_users(users_id: integer): string;
var Q : TADOQuery;
begin
  Q := TADOQuery.Create(nil);
  Q.Connection := ADOVagonComment;
  Q.SQL.Add('SELECT FIO_users FROM users WHERE users_id =' + IntToStr(users_id));
  Q.Open;

  if Q.RecordCount > 0  then
    Result := Q.FieldByName('FIO_users').AsString
  else
    Result := '';
end;

procedure TfmVagonCommentAdd.SetTypeAction(type_action: integer);
begin

  Ftype_action := type_action;
  if  Ftype_action = 3 then begin
    cxDateEdit1.Enabled := False;
    cxDateEdit1.Visible := False;
    Label16.Visible := False;

    cxMemo1.Enabled     := False;
    cxLookupComboBox3.Enabled := False;
  end;

  if  Ftype_action = 5 then begin
    Caption := 'Удаление последнего комментария';
    cxDateEdit1.Enabled := False;
    cxDateEdit3.Enabled := False;
    cxMemo1.Enabled     := False;
    cxLookupComboBox3.Enabled := False;
  end;

  if  Ftype_action = 6 then begin
    Caption := 'Открытие последнего комментария';
    cxDateEdit1.Enabled := False;
    cxDateEdit3.Enabled := False;
    cxMemo1.Enabled     := False;
    cxLookupComboBox3.Enabled := False;
  end;
end;

procedure TfmVagonCommentAdd.SetUpdate(vagon_comment_id : integer);
var  Q : TADOQuery;
begin
  Screen.Cursor := crHourglass;
  Ftype_action  := 1;
  Fvagon_comment_id := vagon_comment_id;

  Q := TADOQuery.Create(nil);
  Q.Connection := ADOVagonComment;
  Q.SQL.Add('SELECT * FROM view_vagon_comment WHERE vagon_comment_id = ' + IntToStr(Fvagon_comment_id));
  Q.Open;

  cxLookupComboBox1.EditValue := Q.FieldByName('vagon_comment_type_id').Value;
  cxLookupComboBox2.EditValue := Q.FieldByName('attached_global_id').Value;
  cxDateEdit1.EditValue       := Q.FieldByName('date_begin').Value;
  cxDateEdit3.EditValue       := Q.FieldByName('date_end').Value;
  cxMemo1.EditValue           := Q.FieldByName('vagon_comment').Value;

  if Q.FieldByName('vagon_comment_type_cod').Value = '4' then begin
    cxLookupComboBox3.EditValue := Q.FieldByName('attached_global_id').Value;
  end;

  cxLookupComboBox1.Enabled := False;
  Q.Free;
  Screen.Cursor := crDefault;
end;

end.
