unit FactTechAdd;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, ExtCtrls, cxGraphics, cxControls, cxLookAndFeels,
   cxLookAndFeelPainters, cxContainer, cxEdit, cxMaskEdit, cxDropDownEdit, cxCalendar,
    cxTextEdit, cxPropertiesStore, DB,
  ADODB, cxButtonEdit, ComCtrls, dxCore, cxDateUtils, dxSkinsCore, dxSkinBlack, dxSkinBlue, dxSkinBlueprint, dxSkinCaramel, dxSkinCoffee, dxSkinDarkroom, dxSkinDarkSide, dxSkinDevExpressDarkStyle,
  dxSkinDevExpressStyle, dxSkinFoggy, dxSkinGlassOceans, dxSkinHighContrast, dxSkiniMaginary, dxSkinLilian, dxSkinLiquidSky, dxSkinLondonLiquidSky, dxSkinMcSkin, dxSkinMetropolis,
  dxSkinMetropolisDark, dxSkinMoneyTwins, dxSkinOffice2007Black, dxSkinOffice2007Blue, dxSkinOffice2007Green, dxSkinOffice2007Pink, dxSkinOffice2007Silver, dxSkinOffice2010Black, dxSkinOffice2010Blue,
  dxSkinOffice2010Silver, dxSkinOffice2013DarkGray, dxSkinOffice2013LightGray, dxSkinOffice2013White, dxSkinOffice2016Colorful, dxSkinOffice2016Dark, dxSkinPumpkin, dxSkinSeven, dxSkinSevenClassic,
  dxSkinSharp, dxSkinSharpPlus, dxSkinSilver, dxSkinSpringtime, dxSkinStardust, dxSkinSummer2008, dxSkinTheAsphaltWorld, dxSkinTheBezier, dxSkinsDefaultPainters, dxSkinValentine,
  dxSkinVisualStudio2013Blue, dxSkinVisualStudio2013Dark, dxSkinVisualStudio2013Light, dxSkinVS2010, dxSkinWhiteprint, dxSkinXmas2008Blue, Vcl.Menus, cxButtons;

type
  TfmFactTechAdd = class(TForm)
    Panel2: TPanel;
    Panel1: TPanel;
    Label1: TLabel;
    cxTextEdit1: TcxTextEdit;
    Label5: TLabel;
    Label6: TLabel;
    Panel3: TPanel;
    cxTextEdit4: TcxTextEdit;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    cxDateEdit1: TcxDateEdit;
    Label7: TLabel;
    Label9: TLabel;
    cxTextEdit6: TcxTextEdit;
    cxTextEdit8: TcxTextEdit;
    Panel4: TPanel;
    Label11: TLabel;
    Label12: TLabel;
    Label13: TLabel;
    Label14: TLabel;
    Label15: TLabel;
    Label16: TLabel;
    cxTextEdit10: TcxTextEdit;
    cxTextEdit13: TcxTextEdit;
    cxTextEdit14: TcxTextEdit;
    cxTextEdit15: TcxTextEdit;
    Panel6: TPanel;
    Label20: TLabel;
    Label21: TLabel;
    cxTextEdit18: TcxTextEdit;
    cxDateEdit4: TcxDateEdit;
    Label22: TLabel;
    cxTextEdit19: TcxTextEdit;
    cxTextEdit26: TcxTextEdit;
    cxTextEdit27: TcxTextEdit;
    cxDateEdit3: TcxDateEdit;
    Label24: TLabel;
    cxDateEdit5: TcxDateEdit;
    cxDateEdit6: TcxDateEdit;
    cxTextEdit2: TcxTextEdit;
    cxTextEdit3: TcxTextEdit;
    cxDateEdit2: TcxDateEdit;
    cxDateEdit7: TcxDateEdit;
    Label8: TLabel;
    cxTextEdit9: TcxTextEdit;
    cxButtonEdit2: TcxButtonEdit;
    cxButtonEdit1: TcxButtonEdit;
    cxButton1: TcxButton;
    cxButton3: TcxButton;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure cxButtonEdit1PropertiesButtonClick(Sender: TObject;
      AButtonIndex: Integer);
    procedure cxButtonEdit2PropertiesButtonClick(Sender: TObject;
      AButtonIndex: Integer);
    procedure cxButton1Click(Sender: TObject);
  private
    Ffact_tech_id : integer;
    procedure SetUpdate(fact_tech_id : integer);
  public
    constructor Create(AOwner: TApplication);
  published
    property _SetUpdate : integer write SetUpdate;
  end;

var
  fmFactTechAdd: TfmFactTechAdd;

implementation
   uses Main, Filter, Raznoe;
{$R *.dfm}

{ TfmFactTrackAdd }

constructor TfmFactTechAdd.Create(AOwner: TApplication);
begin
  inherited Create(AOwner);
end;

procedure TfmFactTechAdd.SetUpdate(fact_tech_id: integer);
var Q : TADOQuery;
begin
  Screen.Cursor := crHourglass;
  Ffact_tech_id := fact_tech_id;

  Q := TADOQuery.Create(nil);
  Q.Connection := fmMain.Lis;
  Q.SQL.Add('SELECT * FROM view_fact_tech WHERE fact_tech_id=' + IntToStr(Ffact_tech_id));
  Q.Open;

  cxTextEdit1.EditValue  := Q.FieldByName('num_vagon'             ).Value;
  cxDateEdit3.EditValue  := Q.FieldByName('date_build'            ).Value;
  cxTextEdit4.EditValue  := Q.FieldByName('last_depo_place_name'  ).Value;
  cxDateEdit5.EditValue  := Q.FieldByName('date_last_depo_place'  ).Value;
  cxTextEdit27.EditValue := Q.FieldByName('last_cap_place_name'   ).Value;
  cxDateEdit6.EditValue  := Q.FieldByName('date_cap_place'        ).Value;
  cxDateEdit1.EditValue  := Q.FieldByName('date_breakage'         ).Value;

  if (not Q.FieldByName('breakage_name').IsNull) and (not Q.FieldByName('breakage1_id').IsNull)  then begin
   cxButtonEdit1.Tag      := Q.FieldByName('breakage1_id'         ).Value;
   cxButtonEdit1.Text     := Q.FieldByName('breakage_name'         ).Value;
  end;
  if not Q.FieldByName('station_detaching_name').IsNull then begin
   cxButtonEdit2.Tag      := Q.FieldByName('station_detaching_id'   ).Value;
   cxButtonEdit2.Text     := Q.FieldByName('station_detaching_name' ).Value;
  end;

  cxTextEdit6.EditValue  := Q.FieldByName('road_name'             ).Value;
  cxTextEdit26.EditValue := Q.FieldByName('road'                  ).Value;
  cxTextEdit2.EditValue  := Q.FieldByName('station_detaching'     ).Value;
  cxTextEdit8.EditValue  := Q.FieldByName('depo_name'             ).Value;
  cxTextEdit3.EditValue  := Q.FieldByName('depo'                  ).Value;
  cxTextEdit10.EditValue := Q.FieldByName('type_repair_name'      ).Value;
  cxDateEdit2.EditValue  := Q.FieldByName('date_repare_begin'     ).Value;
  cxDateEdit7.EditValue  := Q.FieldByName('date_repare_end'       ).Value;
  cxTextEdit14.EditValue := Q.FieldByName('num_notice_23'         ).Value;
  cxTextEdit15.EditValue := Q.FieldByName('num_notice_36'         ).Value;
  cxTextEdit9.EditValue  := Q.FieldByName('block_p'               ).Value;
  cxTextEdit13.EditValue := Q.FieldByName('modernization'         ).Value;
  cxTextEdit18.EditValue := Q.FieldByName('file_load_name'        ).Value;
  cxDateEdit4.EditValue  := Q.FieldByName('file_load_date'        ).Value;
  cxTextEdit19.EditValue := Q.FieldByName('FIO_users'             ).Value;
  Q.Free;

  MonitorEventFormOpen('UPDATE_FORM', self.Name, fmMain.Lis, Ffact_tech_id);
  Screen.Cursor := crDefault;
end;

procedure TfmFactTechAdd.cxButtonEdit1PropertiesButtonClick(Sender: TObject;
  AButtonIndex: Integer);
var  Q : TADOQuery;
begin
    case AButtonIndex of
    0 : begin
    Q := TADOQuery.Create(nil);
    Q.Connection := fmMain.Lis;
    Q.SQL.Add('SELECT inf_obj_id, inf_obj_name, inf_obj_cod FROM INF_OBJ WHERE type_inf_id = 116');
    Q.Open;
    fmFilter := TfmFilter.Create(0, Q, 'inf_obj_id', 'inf_obj_cod', 'inf_obj_name');
    fmFilter._SetNodeChoose := True;
    fmFilter._SelectIndexColumn := 1;

    if fmFilter.ShowModal = mrOk then begin
      cxButtonEdit1.Tag  := fmFilter.GetId;
      cxButtonEdit1.Text := fmFilter.GetName;
    end else exit;
    Q.Free;
    fmFilter.Free;
    end;
    1:begin
      cxButtonEdit1.Tag  := -9;
      cxButtonEdit1.Text := '';
    end;
    end;
end;

procedure TfmFactTechAdd.cxButtonEdit2PropertiesButtonClick(Sender: TObject;
  AButtonIndex: Integer);
var Q : TADOQuery;
begin
    case AButtonIndex of
    0 : begin
    Q := TADOQuery.Create(nil);
    Q.Connection := fmMain.Lis;

    Q.SQL.Add('SELECT n.inf_obj_id, n.inf_obj_cod, n.inf_obj_name');
    Q.SQL.Add('FROM inf_obj_NODE n');
    Q.SQL.Add('WHERE (' + DateToSQL(Date) + ' Between n.date_begin And n.date_end)');
    Q.SQL.Add('ORDER BY n.inf_obj_cod');
    Q.Open;
    fmFilter := TfmFilter.Create(0, Q, 'inf_obj_id', 'inf_obj_cod', 'inf_obj_name');
    fmFilter._SetNodeChoose := True;
    fmFilter._SelectIndexColumn := 1;

    if fmFilter.ShowModal = mrOk then begin
      cxButtonEdit2.Tag  := fmFilter.GetId;
      cxButtonEdit2.Text := fmFilter.GetName;
    end else exit;
    Q.Free;
    fmFilter.Free;
    end;
    1:begin
      cxButtonEdit2.Tag  := -9;
      cxButtonEdit2.Text := '';
    end;
    end;
end;

procedure TfmFactTechAdd.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action := caFree;
end;

procedure TfmFactTechAdd.cxButton1Click(Sender: TObject);
var SP : TADOStoredProc;
begin
  if Application.MessageBox('Вы действительно хотите изменить информацию?!', 'Внимание', MB_OKCANCEL) = ID_CANCEL then exit;

  SP := TADOStoredProc.Create(nil);
  SP.Connection := fmMain.Lis;
  SP.ProcedureName := 'sp_fact_tech_modify;1';
  SP.Parameters.Refresh;
  SP.Parameters.ParamByName('@type_action').Value          := 4;
  SP.Parameters.ParamByName('@fact_tech_id').Value         := Ffact_tech_id;
  SP.Parameters.ParamByName('@date_breakage').Value        := cxDateEdit1.EditValue;
  SP.Parameters.ParamByName('@station_detaching_id').Value := cxButtonEdit2.Tag;
  SP.Parameters.ParamByName('@breakage1_id').Value         := cxButtonEdit1.Tag;
  try
    SP.ExecProc;
  except

  end;

end;


end.
