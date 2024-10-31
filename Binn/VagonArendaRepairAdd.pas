unit VagonArendaRepairAdd;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters,
  cxContainer, cxEdit, cxMemo, StdCtrls, cxTextEdit, cxDropDownEdit, cxCalendar,
  cxMaskEdit, cxLookupEdit, cxDBLookupEdit,cxDBLookupComboBox, Buttons, ExtCtrls,
  DB, ADODB, cxCurrencyEdit, DBClient, cxPropertiesStore,cxStyles, cxCustomData,
  cxFilter, cxData, cxDataStorage, cxDBData, dxBar,cxClasses, cxGridLevel,
  cxGridCustomView, cxGridCustomTableView,cxGridTableView, cxGridBandedTableView,
  cxGridDBBandedTableView, cxGrid, Raznoe, Default, XMLDoc, cxButtonEdit,
  cxCheckBox, cxGridDBTableView, DateUtils, ComCtrls, dxCore, cxDateUtils, StrUtils,
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
  dxSkinXmas2008Blue, dxSkinsdxBarPainter, dxSkinTheBezier, Vcl.Menus, cxButtons, dxSkinOffice2019Colorful;

type
  TfmVagonArendaRepairAdd = class(TForm)
    Panel2: TPanel;
    Panel1: TPanel;
    GroupBox1: TGroupBox;
    cxMemo1: TcxMemo;
    Panel3: TPanel;
    dxBarManager1: TdxBarManager;
    dxBarManager1Bar1: TdxBar;
    dxBarButton1: TdxBarButton;
    dxBarButton2: TdxBarButton;
    dxBarButton3: TdxBarButton;
    dxBarPopupMenu1: TdxBarPopupMenu;
    GroupBox2: TGroupBox;
    cxMemo2: TcxMemo;
    dxBarDockControl1: TdxBarDockControl;
    GroupBox4: TGroupBox;
    Splitter1: TSplitter;
    GroupBox3: TGroupBox;
    cxTextEdit4: TcxTextEdit;
    cxTextEdit1: TcxTextEdit;
    cxTextEdit2: TcxTextEdit;
    GroupBox5: TGroupBox;
    Label1: TLabel;
    Label2: TLabel;
    Label6: TLabel;
    cxCurrencyEdit2: TcxCurrencyEdit;
    cxDateEdit1: TcxDateEdit;
    cxDateEdit2: TcxDateEdit;
    GroupBox6: TGroupBox;
    Label7: TLabel;
    Label8: TLabel;
    cxDateEdit6: TcxDateEdit;
    cxDateEdit8: TcxDateEdit;
    cxButtonEdit6: TcxButtonEdit;
    cxButtonEdit10: TcxButtonEdit;
    ClientDataSet1: TClientDataSet;
    ClientDataSet1node_begin_id: TIntegerField;
    ClientDataSet1node_begin_cod: TStringField;
    ClientDataSet1node_begin_name: TStringField;
    cxCheckBox1: TcxCheckBox;
    cxCheckBox2: TcxCheckBox;
    cxButtonEdit1: TcxButtonEdit;
    Label3: TLabel;
    cxButtonEdit2: TcxButtonEdit;
    Label4: TLabel;
    cxDateEdit3: TcxDateEdit;
    cxDateEdit4: TcxDateEdit;
    cxTextEdit3: TcxTextEdit;
    Label5: TLabel;
    Label9: TLabel;
    Label10: TLabel;
    cxDateEdit5: TcxDateEdit;
    Label11: TLabel;
    Label12: TLabel;
    Label13: TLabel;
    cxTextEdit5: TcxTextEdit;
    GroupBox7: TGroupBox;
    cxTextEdit6: TcxTextEdit;
    cxTextEdit8: TcxTextEdit;
    cxTextEdit7: TcxTextEdit;
    GroupBox8: TGroupBox;
    Label14: TLabel;
    Label15: TLabel;
    Label16: TLabel;
    cxDateEdit7: TcxDateEdit;
    cxDateEdit9: TcxDateEdit;
    cxButtonEdit4: TcxButtonEdit;
    cxButtonEdit5: TcxButtonEdit;
    cxButtonEdit7: TcxButtonEdit;
    GroupBox9: TGroupBox;
    Label17: TLabel;
    Label18: TLabel;
    Label19: TLabel;
    cxDateEdit10: TcxDateEdit;
    cxDateEdit11: TcxDateEdit;
    cxButtonEdit8: TcxButtonEdit;
    cxButtonEdit9: TcxButtonEdit;
    cxButtonEdit11: TcxButtonEdit;
    cxLookupComboBox1: TcxLookupComboBox;
    Label20: TLabel;
    Query_Type_Repair: TADOQuery;
    DS_Type_Repair: TDataSource;
    cxTextEdit9: TcxTextEdit;
    Splitter2: TSplitter;
    GroupBox10: TGroupBox;
    cxCheckBox3: TcxCheckBox;
    cxCheckBox4: TcxCheckBox;
    cxButton1: TcxButton;
    cxButton3: TcxButton;
    procedure dxBarButton1Click(Sender: TObject);
    procedure dxBarButton2Click(Sender: TObject);
    procedure dxBarButton3Click(Sender: TObject);
    procedure cxDateEdit4PropertiesEditValueChanged(Sender: TObject);
    procedure cxButtonEdit10PropertiesButtonClick(Sender: TObject;
      AButtonIndex: Integer);
    procedure cxButtonEdit2PropertiesButtonClick(Sender: TObject;
      AButtonIndex: Integer);
    procedure cxButtonEdit1PropertiesButtonClick(Sender: TObject;
      AButtonIndex: Integer);
    procedure cxButtonEdit7PropertiesButtonClick(Sender: TObject;
      AButtonIndex: Integer);
    procedure cxButtonEdit11PropertiesButtonClick(Sender: TObject;
      AButtonIndex: Integer);
    procedure cxButtonEdit9PropertiesButtonClick(Sender: TObject;
      AButtonIndex: Integer);
    procedure cxButton1Click(Sender: TObject);
  private
    Ftype_action : integer;
    Fusr_pwd                : PUser_pwd;
    Fvagon_repair_fact_id :integer;
    Fdate1,Fdate2 :TDateTime;
    procedure SetUpdate(vagon_repair_fact_id :integer);

  public
    constructor Create(AOwner : TApplication);
  published
    property _SetUpdate : integer write SetUpdate;
    property _Fvagon_repair_fact_id  : integer read Fvagon_repair_fact_id;
  end;

var
  fmVagonArendaRepairAdd: TfmVagonArendaRepairAdd;

implementation
  uses Filter, main, FactTrack;

{$R *.dfm}

constructor TfmVagonArendaRepairAdd.Create(AOwner : TApplication);
begin
  Screen.Cursor := crHourglass;
  inherited Create(AOwner);
  Fusr_pwd := usr_pwd;
  Ftype_action := 0;

  cxDateEdit5.EditValue := StartOfTheMonth(Date);
  Query_Type_Repair.Open;
  cxLookupComboBox1.EditValue := Query_Type_Repair.FieldByName('inf_obj_id').Value;

  ClientDataSet1.CreateDataSet;
  MonitorEventFormOpen('OPEN_FORM', self.Name, fmMain.Lis, -9);

  Screen.Cursor := crDefault;
end;

procedure TfmVagonArendaRepairAdd.cxButton1Click(Sender: TObject);
var SP : TADOStoredProc;
    Q  : TADOQuery;
    str : string;
begin
  //-------- Проверки ------------
  if VarIsNull(cxDateEdit5.EditValue)  then begin
    Application.MessageBox('Не выбран период.', 'Внимание', MB_OK + MB_ICONERROR);
    ModalResult := mrNone;
    Exit;
  end;

  if VarIsNull(cxMemo2.EditValue) then begin
    Application.MessageBox('Не выбрано ни одного вагона.', 'Внимание', MB_OK + MB_ICONERROR);
    ModalResult := mrNone;
    Exit;
  end;

  Screen.Cursor := crHourglass;
  SP := TADOStoredProc.Create(nil);
  SP.Connection := fmMain.Lis;
  SP.ProcedureName := 'sp_vagon_repair_fact_modify;1';
  SP.Parameters.Refresh;

  SP.Parameters.ParamByName('@vagon_repair_fact_id').Value :=  Fvagon_repair_fact_id;
  SP.Parameters.ParamByName('@type_action'         ).Value :=  Ftype_action;
  SP.Parameters.ParamByName('@num_vagon'           ).Value :=   ReplaceStr(cxMemo2.Lines.Text, '', #13#10);
  SP.Parameters.ParamByName('@date_period'         ).Value :=  cxDateEdit5.EditValue;
  SP.Parameters.ParamByName('@date_begin_repair'   ).Value :=  cxDateEdit1.EditValue;
  SP.Parameters.ParamByName('@date_end_repair'     ).Value :=  cxDateEdit2.EditValue;
  SP.Parameters.ParamByName('@set_arenda'          ).Value :=  cxCheckBox1.EditValue;
  SP.Parameters.ParamByName('@set_subarenda'       ).Value :=  cxCheckBox2.EditValue;
  SP.Parameters.ParamByName('@set_kratk_arenda'    ).Value :=  cxCheckBox3.EditValue;
  SP.Parameters.ParamByName('@set_sub_kratk_arenda').Value :=  cxCheckBox4.EditValue;
  SP.Parameters.ParamByName('@breakage_name'       ).Value :=  cxTextEdit3.EditValue;

  SP.Parameters.ParamByName('@fact_tech_id'        ).Value := iif(cxButtonEdit2.Tag = -9, NULL, cxButtonEdit2.Tag);
  SP.Parameters.ParamByName('@node_repair_id'      ).Value := iif(cxButtonEdit9.Tag = -9, NULL, cxButtonEdit9.Tag);
  SP.Parameters.ParamByName('@fact_track_trip_id'  ).Value := iif(cxButtonEdit1.Tag = -9, NULL, cxButtonEdit1.Tag);
  SP.Parameters.ParamByName('@fact_track_trip_1_id').Value := iif(cxButtonEdit11.Tag = -9, NULL, cxButtonEdit11.Tag);
  SP.Parameters.ParamByName('@fact_track_trip_2_id').Value := iif(cxButtonEdit7.Tag = -9, NULL, cxButtonEdit7.Tag);
  SP.Parameters.ParamByName('@type_repair_fact_id' ).Value :=  cxLookupComboBox1.EditValue;
  SP.Parameters.ParamByName('@comment'             ).Value :=  cxMemo1.EditValue;

  try
    SP.ExecProc;
    Fvagon_repair_fact_id := SP.Parameters.ParamByName('@vagon_repair_fact_id').Value;
    ModalResult := mrOk;
  except on E: Exception do begin
    Application.MessageBox(PChar(E.Message),'ВНИМАНИЕ!!!' , MB_OKCANCEL + MB_ICONERROR);
    ModalResult := mrNone;
  end;
  end;

  SP.Free;
  Screen.Cursor := crDefault;
end;

procedure TfmVagonArendaRepairAdd.cxButtonEdit10PropertiesButtonClick(
  Sender: TObject; AButtonIndex: Integer);
 var Q : TADOQuery;
  begin
   case AButtonIndex of
    0 : begin
      if VarIsNull(cxMemo2.EditValue) then begin
        Application.MessageBox('Не выбрано ни одного вагона.', 'Внимание', MB_OK + MB_ICONERROR);
        Exit;
      end;
          Q := TADOQuery.Create(nil);
          Q.Connection := fmMain.Lis;
          Q.SQL.Add('SELECT fact_track_trip_id, num_vagon,date_otpr,node_begin_name,node_end_name,date_arrival,fact_weight,kargoETSNG_name ');
          Q.SQL.Add(' FROM fact_track_trip WHERE num_vagon =:num_vagon AND users_group_id =:users_group_id AND date_otpr >= :date_otpr ORDER BY date_otpr desc');
          Q.Parameters.ParamByName('num_vagon').Value :=      cxMemo2.Lines.Text;
          Q.Parameters.ParamByName('users_group_id').Value := usr_pwd.user_group_id;
          Q.Parameters.ParamByName('date_otpr').Value :=      cxDateEdit5.EditValue - 90;
          Q.Open;

          fmFilter := TfmFilter.Create(0, Q, 'fact_track_trip_id', 'num_vagon', 'node_begin_name');
          fmFilter._SetFactTrackTripChoose := True;
          fmFilter._SelectIndexColumn := 1;
          if fmFilter.ShowModal = mrOk then begin
            Q.Locate('fact_track_trip_id', fmFilter.GetId, []);
            cxButtonEdit1.Text    := IntToStr(fmFilter.GetId);
            cxButtonEdit1.Tag     := fmFilter.GetId;

            cxDateEdit8.EditValue := Q.FieldByName('date_otpr').Value;
            cxDateEdit6.EditValue := Q.FieldByName('date_arrival').Value;
            cxButtonEdit6.Text    := Q.FieldByName('node_begin_name').Value;
            cxButtonEdit10.Text    := Q.FieldByName('node_end_name').Value;

          end;
          Q.Free;
        end;
    1 : begin
          cxButtonEdit1.Text    := '';
          cxButtonEdit1.Tag     := -9;
          cxDateEdit8.EditValue := NULL;
          cxDateEdit6.EditValue := NULL;
          cxButtonEdit6.Text    := '';
          cxButtonEdit10.Text   := '';
        end;
  end;
end;

procedure TfmVagonArendaRepairAdd.cxButtonEdit11PropertiesButtonClick(
  Sender: TObject; AButtonIndex: Integer);
 var Q : TADOQuery;
  begin
   case AButtonIndex of
    0 : begin
      if VarIsNull(cxMemo2.EditValue) then begin
        Application.MessageBox('Не выбрано ни одного вагона.', 'Внимание', MB_OK + MB_ICONERROR);
        Exit;
      end;
          Q := TADOQuery.Create(nil);
          Q.Connection := fmMain.Lis;
          Q.SQL.Add('SELECT fact_track_trip_id, num_vagon,date_otpr,node_begin_name,node_end_name,date_arrival,fact_weight,kargoETSNG_name, (SELECT TOP 1 inf_obj_id FROM inf_obj_node WHERE inf_obj_cod = node_end_cod ORDER BY date_begin desc) as node_repair_id ');
          Q.SQL.Add(' FROM fact_track_trip WHERE num_vagon =:num_vagon AND users_group_id =:users_group_id AND date_otpr >= :date_otpr ORDER BY date_otpr desc');
          Q.Parameters.ParamByName('num_vagon').Value      :=  StrToInt(cxMemo2.Lines[0]);//ReplaceStr(cxMemo2.Lines.Text, '', #10);
          Q.Parameters.ParamByName('users_group_id').Value := usr_pwd.user_group_id;
          Q.Parameters.ParamByName('date_otpr').Value      := cxDateEdit5.EditValue - 90;
          Q.Open;

          fmFilter := TfmFilter.Create(0, Q, 'fact_track_trip_id', 'num_vagon', 'node_begin_name');
          fmFilter._SetFactTrackTripChoose := True;
          fmFilter._SelectIndexColumn := 1;
          if fmFilter.ShowModal = mrOk then begin
            Q.Locate('fact_track_trip_id', fmFilter.GetId, []);
            cxButtonEdit11.Text    := IntToStr(fmFilter.GetId);
            cxButtonEdit11.Tag     := fmFilter.GetId;
            cxDateEdit11.EditValue := Q.FieldByName('date_otpr').Value;
            cxDateEdit10.EditValue := Q.FieldByName('date_arrival').Value;
            cxButtonEdit8.Text     := Q.FieldByName('node_begin_name').Value;
            cxButtonEdit9.Text     := Q.FieldByName('node_end_name').Value;
            cxButtonEdit9.Tag      := Q.FieldByName('node_repair_id').Value;
          end;
          Q.Free;
        end;
    1 : begin
          cxButtonEdit11.Text    := '';
          cxButtonEdit11.Tag     := -9;
          cxDateEdit11.EditValue := NULL;
          cxDateEdit10.EditValue := NULL;
          cxButtonEdit8.Text     := '';
          cxButtonEdit9.Text     := '';
          cxButtonEdit9.Tag      := -9;
        end;
  end;
end;

procedure TfmVagonArendaRepairAdd.cxButtonEdit2PropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
var Q : TADOQuery;
begin
   case AButtonIndex of
    0 : begin
          if VarIsNull(cxMemo2.EditValue) then begin
           Application.MessageBox('Не выбрано ни одного вагона.', 'Внимание', MB_OK + MB_ICONERROR);
           Exit;
          end;

          Q := TADOQuery.Create(nil);
          Q.Connection := fmMain.Lis;
          Q.SQL.Add('SELECT fact_tech_id, num_vagon, date_breakage, date_repair_end, breakage_name, depo_name, station_detaching_name, station_detaching_id, type_repair_name FROM view_fact_tech');
          Q.SQL.Add('WHERE num_vagon =:num_vagon AND users_group_id =:users_group_id AND date_breakage >= :date_breakage ORDER BY date_breakage desc');
          Q.Parameters.ParamByName('num_vagon').Value := ReplaceStr(cxMemo2.Lines.Text, '', #13#10);
          Q.Parameters.ParamByName('users_group_id').Value := usr_pwd.user_group_id;
          Q.Parameters.ParamByName('date_breakage').Value :=      cxDateEdit5.EditValue-90;

          Q.Open;
          fmFilter := TfmFilter.Create(0, Q, 'fact_tech_id', 'num_vagon', 'breakage_name');
          fmFilter._SetFactTechChoose := True;
          fmFilter._SelectIndexColumn := 1;
          if fmFilter.ShowModal = mrOk then begin
            Q.Locate('fact_tech_id', fmFilter.GetId, []);
            cxButtonEdit2.Text    := IntToStr(fmFilter.GetId);
            cxButtonEdit2.Tag     := fmFilter.GetId;
            cxDateEdit3.EditValue := Q.FieldByName('date_breakage').Value;
            cxDateEdit4.EditValue := Q.FieldByName('date_repair_end').Value;
            cxTextEdit3.EditValue := Q.FieldByName('breakage_name').Value;
            cxTextEdit9.EditValue := Q.FieldByName('station_detaching_name').Value;

            cxTextEdit5.EditValue := Q.FieldByName('type_repair_name').Value;
          end;
          Q.Free;
        end;
    1 : begin
            cxButtonEdit2.Text    := '';
            cxButtonEdit2.Tag     := -9;
            cxDateEdit3.EditValue := NULL;
            cxDateEdit4.EditValue := NULL;
            cxTextEdit3.EditValue := NULL;
            cxTextEdit9.EditValue := '';

        end;
  end;
end;

procedure TfmVagonArendaRepairAdd.cxButtonEdit1PropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
begin
   case AButtonIndex of
    0 : begin
          case TcxButtonEdit(Sender).Tag of
            2 : begin
                  if FindInInfObjNode(ClientDataSet1,'NODE_BEGIN' ,True, True, NOW , fmMain.Lis) then begin
                    cxButtonEdit1.Tag := ClientDataSet1.FieldByName('node_begin_id').AsInteger;
                    cxButtonEdit1.Text := ClientDataSet1.FieldByName('node_begin_name').AsString;
                    //cxButtonEdit4.Text := ClientDataSet1.FieldByName('node_begin_cod').AsString;
                  end;
                end;
            4 : begin
                  if FindInInfObjNode(ClientDataSet1,'NODE_BEGIN' ,False, True, NOW , fmMain.Lis) then begin
                    cxButtonEdit1.Tag := ClientDataSet1.FieldByName('node_begin_id').AsInteger;
                    cxButtonEdit1.Text := ClientDataSet1.FieldByName('node_begin_name').AsString;
                    //cxButtonEdit4.Text := ClientDataSet1.FieldByName('node_begin_cod').AsString;
                  end;
                end;
          end;
        end;
    1 : case TcxButtonEdit(Sender).Tag of
          2,4 : begin
                 cxButtonEdit1.Tag := 0;
                 cxButtonEdit1.Text := '';
                 //cxButtonEdit4.Text := '';
                end;
        end;
  end;
end;

procedure TfmVagonArendaRepairAdd.cxButtonEdit7PropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
 var Q : TADOQuery;
begin
   case AButtonIndex of
    0 : begin
          if VarIsNull(cxMemo2.EditValue) then begin
            Application.MessageBox('Не выбрано ни одного вагона.', 'Внимание', MB_OK + MB_ICONERROR);
            Exit;
          end;

          Q := TADOQuery.Create(nil);
          Q.Connection := fmMain.Lis;
          Q.SQL.Add('SELECT fact_track_trip_id, num_vagon,date_otpr,node_begin_name,node_end_name,date_arrival,fact_weight,kargoETSNG_name FROM fact_track_trip');
          Q.SQL.Add('WHERE num_vagon =:num_vagon AND users_group_id =:users_group_id AND date_otpr >= :date_otpr ORDER BY date_otpr desc');
          Q.Parameters.ParamByName('num_vagon').Value := ReplaceStr(cxMemo2.Lines.Text, '', #13#10);
          Q.Parameters.ParamByName('users_group_id').Value := usr_pwd.user_group_id;
          Q.Parameters.ParamByName('date_otpr').Value :=      cxDateEdit5.EditValue-90;
          Q.Open;

          fmFilter := TfmFilter.Create(0, Q, 'fact_track_trip_id', 'num_vagon', 'node_begin_name');
          fmFilter._SetFactTrackTripChoose := True;
          fmFilter._SelectIndexColumn := 1;
          if fmFilter.ShowModal = mrOk then begin
            Q.Locate('fact_track_trip_id', fmFilter.GetId, []);
            cxButtonEdit7.Text    := IntToStr(fmFilter.GetId);
            cxButtonEdit7.Tag     := fmFilter.GetId;

            cxDateEdit9.EditValue := Q.FieldByName('date_otpr').Value;
            cxDateEdit7.EditValue := Q.FieldByName('date_arrival').Value;
            cxButtonEdit4.Text    := Q.FieldByName('node_begin_name').Value;
            cxButtonEdit5.Text   := Q.FieldByName('node_end_name').Value;
          end;
          Q.Free;
        end;

    1 : begin
          cxButtonEdit7.Text    := '';
          cxButtonEdit7.Tag     := -9;
          cxDateEdit9.EditValue := NULL;
          cxDateEdit7.EditValue := NULL;
          cxButtonEdit4.Text    := '';
          cxButtonEdit5.Text   := '';
        end;
  end;
end;

procedure TfmVagonArendaRepairAdd.cxButtonEdit9PropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
begin
   case AButtonIndex of
    0 : begin
          if FindInInfObjNode(ClientDataSet1,'NODE_BEGIN' ,True, True, NOW , fmMain.Lis) then begin
            cxButtonEdit9.Tag := ClientDataSet1.FieldByName('node_begin_id').AsInteger;
            cxButtonEdit9.Text := ClientDataSet1.FieldByName('node_begin_name').AsString;
          end;
        end;

    1 : begin
          cxButtonEdit9.Tag := -9;
          cxButtonEdit9.Text := '';
        end;
  end;
end;

procedure TfmVagonArendaRepairAdd.cxDateEdit4PropertiesEditValueChanged(Sender: TObject);
begin
  if (Not VarIsNull(cxDateEdit1.EditValue)) AND (Not VarIsNull(cxDateEdit2.EditValue)) then
      cxCurrencyEdit2.EditValue := DaysBetween(cxDateEdit1.EditValue,cxDateEdit2.EditValue) + 1
  else
    cxCurrencyEdit2.EditValue := 0;
end;

procedure TfmVagonArendaRepairAdd.SetUpdate(vagon_repair_fact_id :integer);
var Q : TADOQuery;
begin
  Screen.Cursor := crHourglass;

  Ftype_action := 1;
  Fvagon_repair_fact_id := vagon_repair_fact_id;

  Q := TADOQuery.Create(nil);
  Q.Connection :=fmMain.Lis;
  Q.SQL.Add('SELECT * ');
  Q.SQL.Add(' FROM view_vagon_rapair_fact ');
  Q.SQL.Add('WHERE vagon_repair_fact_id = ' + IntToStr(Fvagon_repair_fact_id));
  Q.Open;

  cxMemo2.Lines.Add(Q.FieldByName('num_vagon').AsString);
  cxMemo2.Properties.ReadOnly := True;
  cxMemo2.Style.Color := clBtnFace;
  dxBarButton1.Enabled := False;
  dxBarButton2.Enabled := False;
  dxBarButton3.Enabled := False;
  cxDateEdit5.EditValue := Q.FieldByName('date_period').Value;
  cxDateEdit1.EditValue := Q.FieldByName('date_begin_repair').Value;
  cxDateEdit2.EditValue := Q.FieldByName('date_end_repair').Value;
  cxCheckBox1.EditValue := Q.FieldByName('set_arenda').Value;
  cxCheckBox2.EditValue := Q.FieldByName('set_subarenda').Value;
  cxCheckBox3.EditValue := Q.FieldByName('set_kratk_arenda').Value;
  cxCheckBox4.EditValue := Q.FieldByName('set_sub_kratk_arenda').Value;
  cxDateEdit3.EditValue := Q.FieldByName('date_breakage').Value;
  cxDateEdit4.EditValue := Q.FieldByName('date_repair_end').Value;
  cxTextEdit3.EditValue := Q.FieldByName('breakage_name').Value;
  cxTextEdit5.EditValue := Q.FieldByName('type_repair_name').Value;
  cxTextEdit9.EditValue := Q.FieldByName('station_detaching_name').Value;

  if not Q.FieldByName('fact_tech_id').IsNull then begin
   cxButtonEdit2.Tag       := Q.FieldByName('fact_tech_id').Value;
   cxButtonEdit2.EditValue := Q.FieldByName('fact_tech_id').AsString;
  end;
  if not Q.FieldByName('node_repair_id').IsNull then begin
   cxButtonEdit9.Tag       := Q.FieldByName('node_repair_id').Value;
   cxButtonEdit9.EditValue := Q.FieldByName('node_repair_name').AsString;
  end;

  if not Q.FieldByName('fact_track_trip_id').IsNull then begin
   cxButtonEdit1.Tag       := Q.FieldByName('fact_track_trip_id').Value;
   cxButtonEdit1.EditValue := Q.FieldByName('fact_track_trip_id').AsString;
  end;
  cxDateEdit8.EditValue := Q.FieldByName('date_otpr').Value;
  cxDateEdit6.EditValue := Q.FieldByName('date_arrival').Value;
  cxButtonEdit6.EditValue    := Q.FieldByName('node_begin_name').Value;
  cxButtonEdit10.EditValue   := Q.FieldByName('node_end_name').Value;

  if not Q.FieldByName('fact_track_trip_1_id').IsNull then begin
    cxButtonEdit11.Tag       := Q.FieldByName('fact_track_trip_1_id').Value;
    cxButtonEdit11.EditValue := Q.FieldByName('fact_track_trip_1_id').AsString;
  end;
  cxDateEdit11.EditValue := Q.FieldByName('date_otpr1').Value;
  cxDateEdit10.EditValue := Q.FieldByName('date_arrival1').Value;
  cxButtonEdit8.EditValue    := Q.FieldByName('node_begin_name1').Value;
 // cxButtonEdit9.EditValue   := Q.FieldByName('node_end_name1').Value;

  if not Q.FieldByName('fact_track_trip_2_id').IsNull then begin
    cxButtonEdit7.Tag       := Q.FieldByName('fact_track_trip_2_id').Value;
    cxButtonEdit7.EditValue := Q.FieldByName('fact_track_trip_2_id').AsString;
  end;

  cxDateEdit9.EditValue := Q.FieldByName('date_otpr2').Value;
  cxDateEdit7.EditValue := Q.FieldByName('date_arrival2').Value;
  cxButtonEdit4.EditValue   := Q.FieldByName('node_begin_name2').Value;
  cxButtonEdit5.EditValue   := Q.FieldByName('node_end_name2').Value;

  cxTextEdit6.EditValue     := Q.FieldByName('firm_arenda').Value;
  cxTextEdit7.EditValue          := Q.FieldByName('firm_arenda_contract_cod').Value;
  cxTextEdit8.EditValue     := Q.FieldByName('type_arenda_repair_name').Value;

  cxTextEdit4.EditValue     := Q.FieldByName('firm_sarenda').Value;
  cxTextEdit1.EditValue          := Q.FieldByName('firm_sarenda_contract_cod').Value;
  cxTextEdit2.EditValue     := Q.FieldByName('type_sarenda_repair_name').Value;

  cxLookupComboBox1.EditValue := Q.FieldByName('type_repair_fact_id').Value;
  dxBarButton1.Enabled      := False;
  dxBarButton2.Enabled      := False;
  dxBarButton3.Enabled      := False;
  cxMemo1.EditValue         := Q.FieldByName('comment').Value;
  Q.Free;

  MonitorEventFormOpen('UPDATE_FORM', self.Name, fmMain.Lis, Fvagon_repair_fact_id);

  Screen.Cursor := crDefault;
end;

procedure TfmVagonArendaRepairAdd.dxBarButton1Click(Sender: TObject);
var Q : TADOQuery;
   SP : TADOStoredProc;
    s : string;
begin
  SP := TADOStoredProc.Create(nil);
  SP.Connection := fmMain.Lis;
  SP.ProcedureName := 'sp_vagon_arenda_get';
  SP.Parameters.Refresh;
  SP.Parameters.ParamByName('@date1'         ).Value := StartOfTheMonth(Date);
  SP.Parameters.ParamByName('@date2'         ).Value := EndOfTheMonth(Date);
  SP.Parameters.ParamByName('@users_group_id').Value := usr_pwd.user_group_id;
  SP.Parameters.ParamByName('@type_arenda'   ).Value := 3;
  SP.Open;

  fmFilter := TfmFilter.Create(0, TADOQuery(SP), 'vagon_arenda_id', 'num_vagon', 'num_vagon');
  fmFilter._SetVagonArendaChoose := True;
  if fmFilter.ShowModal=mrOk then begin
  //    s :=  fmFilter._GetStrName;
  //    if s <> '' then begin
  //      s := StringReplace(s, ',', #13, [rfReplaceAll]);
  //      cxMemo2.EditValue := s;
  //    end;
    cxMemo2.EditValue := fmFilter.GetName;
  end;

  //очистим рейсы и тех. состояние
  cxButtonEdit1.EditValue  := NULL;
  cxButtonEdit1.Tag        := -9;
  cxDateEdit8.EditValue    := NULL;
  cxDateEdit6.EditValue    := NULL;
  cxButtonEdit6.EditValue  := NULL;
  cxButtonEdit10.EditValue := NULL;
  cxButtonEdit2.EditValue  := NULL;
  cxButtonEdit2.Tag        := -9;
  cxDateEdit3.EditValue    := NULL;
  cxDateEdit4.EditValue    := NULL;
  cxTextEdit3.EditValue    := NULL;
  cxTextEdit9.EditValue    := NULL;
  cxTextEdit9.EditValue    := -9;
end;

procedure TfmVagonArendaRepairAdd.dxBarButton2Click(Sender: TObject);
begin
  cxMemo1.ClearSelection;
end;

procedure TfmVagonArendaRepairAdd.dxBarButton3Click(Sender: TObject);
begin
  cxMemo1.Clear;
  cxMemo2.EditValue := NULL;
end;

end.




