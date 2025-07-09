unit FactIncAdd;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, dxSkinsCore, dxSkinBasic, dxSkinBlack,
  dxSkinBlue, dxSkinBlueprint, dxSkinCaramel, dxSkinCoffee, dxSkinDarkRoom,
  dxSkinDarkSide, dxSkinDevExpressDarkStyle, dxSkinDevExpressStyle, dxSkinFoggy,
  dxSkinGlassOceans, dxSkinHighContrast, dxSkiniMaginary, dxSkinLilian,
  dxSkinLiquidSky, dxSkinLondonLiquidSky, dxSkinMcSkin, dxSkinMetropolis,
  dxSkinMetropolisDark, dxSkinMoneyTwins, dxSkinOffice2007Black,
  dxSkinOffice2007Blue, dxSkinOffice2007Green, dxSkinOffice2007Pink,
  dxSkinOffice2007Silver, dxSkinOffice2010Black, dxSkinOffice2010Blue,
  dxSkinOffice2010Silver, dxSkinOffice2013DarkGray, dxSkinOffice2013LightGray,
  dxSkinOffice2013White, dxSkinOffice2016Colorful, dxSkinOffice2016Dark,
  dxSkinOffice2019Black, dxSkinOffice2019Colorful, dxSkinOffice2019DarkGray,
  dxSkinOffice2019White, dxSkinPumpkin, dxSkinSeven, dxSkinSevenClassic,
  dxSkinSharp, dxSkinSharpPlus, dxSkinSilver, dxSkinSpringTime, dxSkinStardust,
  dxSkinSummer2008, dxSkinTheAsphaltWorld, dxSkinTheBezier, dxSkinValentine,
  dxSkinVisualStudio2013Blue, dxSkinVisualStudio2013Dark,
  dxSkinVisualStudio2013Light, dxSkinVS2010, dxSkinWhiteprint, dxSkinWXI,
  dxSkinXmas2008Blue, cxGraphics, cxLookAndFeels, cxLookAndFeelPainters,
  Vcl.Menus, Vcl.StdCtrls, cxButtons, Vcl.ExtCtrls, cxControls, cxContainer,
  cxEdit, dxCoreGraphics, Vcl.ComCtrls, Vcl.ToolWin, cxCheckBox, cxTextEdit,
  cxMaskEdit, cxButtonEdit, Raznoe, Main, Filter, Data.DB, Data.Win.ADODB,
  cxClasses, cxPropertiesStore;

type
  TfmFactIncAdd = class(TForm)
    Panel2: TPanel;
    cxButton1: TcxButton;
    cxButton3: TcxButton;
    Panel5: TPanel;
    Label8: TLabel;
    Label9: TLabel;
    Label16: TLabel;
    cxButtonEdit2: TcxButtonEdit;
    cxButtonEdit1: TcxButtonEdit;
    cxButtonEdit3: TcxButtonEdit;
    cxButtonEdit4: TcxButtonEdit;
    cxButtonEdit5: TcxButtonEdit;
    cxButtonEdit6: TcxButtonEdit;
    Panel1: TPanel;
    Label3: TLabel;
    Label5: TLabel;
    Label20: TLabel;
    cxTextEdit2: TcxTextEdit;
    cxTextEdit1: TcxTextEdit;
    cxTextEdit3: TcxTextEdit;
    cxPropertiesStore1: TcxPropertiesStore;
    cxCheckBox1: TcxCheckBox;
    cxCheckBox2: TcxCheckBox;
    cxCheckBox3: TcxCheckBox;
    procedure cxButtonEdit1PropertiesButtonClick(Sender: TObject;
      AButtonIndex: Integer);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure cxButtonEdit2PropertiesButtonClick(Sender: TObject;
      AButtonIndex: Integer);
    procedure cxButtonEdit3PropertiesButtonClick(Sender: TObject;
      AButtonIndex: Integer);
    procedure cxButtonEdit4PropertiesButtonClick(Sender: TObject;
      AButtonIndex: Integer);
    procedure cxButtonEdit5PropertiesButtonClick(Sender: TObject;
      AButtonIndex: Integer);
    procedure cxButtonEdit6PropertiesButtonClick(Sender: TObject;
      AButtonIndex: Integer);
    procedure cxButton3Click(Sender: TObject);
    procedure cxButton1Click(Sender: TObject);
  private
    Fstr_fact_inc_id : string;
    Fsto, Fsto_name, Fstn, Fstn_name, Fgruz, Fgruz_name : string;

    procedure SetUpdate(str_fact_inc_id: string);
    function FindInfObj(caption_name: string; table_name: string; set_cod: boolean; var id: integer; var cod: string; var name: string): boolean;
  public
    constructor Create(AOwner: TApplication);
  published
    property _SetUpdate: string write SetUpdate;
  end;

var
  fmFactIncAdd: TfmFactIncAdd;

implementation

{$R *.dfm}

constructor TfmFactIncAdd.Create(AOwner: TApplication);
begin
  Screen.Cursor := crHourglass;
  inherited Create(AOwner);

  Fstr_fact_inc_id := '';
  Fsto       := '';
  Fsto_name  := '';
  Fstn       := '';
  Fstn_name  := '';
  Fgruz      := '';
  Fgruz_name := '';

  Screen.Cursor := crDefault;
end;


procedure TfmFactIncAdd.SetUpdate(str_fact_inc_id: string);
var Q : TADOQuery;
begin
  Screen.Cursor := crHourglass;
  Fstr_fact_inc_id := str_fact_inc_id;

  Q := TADOQuery.Create(nil);
  Q.Connection := fmMain.Lis;
  Q.SQL.Add('select fact_inc_id, ndser, ndnum, nvag, sto, sto_name, stn, stn_name, gruz, gruz_name from fact_inc_temp WHERE fact_inc_id in (SELECT cod  FROM dbo.StrToTbl(''' + str_fact_inc_id+ ''', default))');
  Q.Open;


  if Q.RecordCount = 1 then begin
    cxTextEdit1.Text := Q.FieldByName('ndser').AsString;
    cxTextEdit2.Text := Q.FieldByName('ndnum').AsString;
    cxTextEdit3.Text := Q.FieldByName('nvag').AsString;


    Fsto       := Q.FieldByName('sto').AsString;
    Fsto_name  := Q.FieldByName('sto_name').AsString;
    Fstn       := Q.FieldByName('stn').AsString;
    Fstn_name  := Q.FieldByName('stn_name').AsString;
    Fgruz      := Q.FieldByName('gruz').AsString;
    Fgruz_name := Q.FieldByName('gruz_name').AsString;

    cxButtonEdit2.Text := Fsto;
    cxButtonEdit1.Text := Fsto_name;
    cxButtonEdit4.Text := Fstn;
    cxButtonEdit3.Text := Fstn_name;
    cxButtonEdit6.Text := Fgruz;
    cxButtonEdit5.Text := Fgruz_name;

  end else begin

  end;


  Q.Free;


  Screen.Cursor := crDefault;
end;

function TfmFactIncAdd.FindInfObj(caption_name: string; table_name: string; set_cod: boolean; var id: integer; var cod: string; var name: string): boolean;
var new_str : string;
    Q : TADOQuery;
    res : boolean;
begin
  table_name := LowerCase(table_name);

  if InputQuery('Поиск', caption_name, new_str) then begin
    Q := TADOQuery.Create(nil);
    Q.Connection := fmMain.Lis;
    Q.SQL.Add('SELECT inf_obj_id, inf_obj_name, inf_obj_cod');
    Q.SQL.Add('FROM ' + table_name);
    Q.SQL.Add('WHERE (' + iif(set_cod, 'inf_obj_cod', 'inf_obj_name') + ' LIKE ''%' + new_str + '%'')');
    Q.SQL.Add('AND (LEFT(' + DateToSQL(Date()) + ', 6) BETWEEN convert(varchar(6), date_begin, 112) AND convert(varchar(6), date_end, 112) OR date_end is null)');
    if (table_name = 'inf_obj') or (table_name = 'inf_obj_etsng') then
      Q.SQL.Add('AND (dbo.GetInfObjVisible(str_group_visible) = 1)');
    Q.SQL.Add('ORDER BY inf_obj_name');
    Q.Open;
    fmFilter := TfmFilter.Create(0, Q, 'inf_obj_id', 'inf_obj_cod', 'inf_obj_name');
    if fmFilter.ShowModal=mrOk then begin
      id  := fmFilter.GetId;
      cod := fmFilter.GetCod;
      name:= fmFilter.GetName;
      res := True;
    end else res := False;
    Q.Free;
  end else res := False;

  Result := res;
end;

procedure TfmFactIncAdd.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action := caFree;
end;

procedure TfmFactIncAdd.cxButton1Click(Sender: TObject);
var sp: TADOStoredProc;
begin
  sp := TADOStoredProc.Create(nil);
  sp.Connection := fmMain.Lis;
  sp.ProcedureName := 'sp_FactInc_modify';
  sp.Parameters.Refresh;
  sp.Parameters.ParamByName('@str_fact_inc_id').Value := Fstr_fact_inc_id;
  sp.Parameters.ParamByName('@sto'      ).Value := Fsto;
  sp.Parameters.ParamByName('@sto_name' ).Value := Fsto_name;
  sp.Parameters.ParamByName('@stn'      ).Value := Fstn;
  sp.Parameters.ParamByName('@stn_name' ).Value := Fstn_name;
  sp.Parameters.ParamByName('@gruz'     ).Value := Fgruz;
  sp.Parameters.ParamByName('@gruz_name').Value := Fgruz_name;
  try
    SP.ExecProc;
  except
  end;
end;

procedure TfmFactIncAdd.cxButton3Click(Sender: TObject);
begin
  Close;
end;

procedure TfmFactIncAdd.cxButtonEdit1PropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
var
  id  : integer;
  cod : string;
  name: string;
begin
  case AButtonIndex of
    0 : begin
      if FindInfObj('Шаблон поиска станции по названию:', 'inf_obj_node', False, id, cod, name) then begin
        Fsto       := cod;
        Fsto_name  := name;
        cxButtonEdit2.Text := Fsto;
        cxButtonEdit1.Text := Fsto_name;
      end;
    end;
    1 : begin
        Fsto       := '';
        Fsto_name  := '';
        cxButtonEdit2.Text := Fsto;
        cxButtonEdit1.Text := Fsto_name;
    end;
  end;
end;

procedure TfmFactIncAdd.cxButtonEdit2PropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
var
  id  : integer;
  cod : string;
  name: string;
begin
  case AButtonIndex of
    0 : begin
      if FindInfObj('Шаблон поиска станции по коду:', 'inf_obj_node', True, id, cod, name) then begin
        Fsto       := cod;
        Fsto_name  := name;
        cxButtonEdit2.Text := Fsto;
        cxButtonEdit1.Text := Fsto_name;
      end;
    end;
    1 : begin
        Fsto       := '';
        Fsto_name  := '';
        cxButtonEdit2.Text := Fsto;
        cxButtonEdit1.Text := Fsto_name;
    end;
  end;
end;

procedure TfmFactIncAdd.cxButtonEdit3PropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
var
  id  : integer;
  cod : string;
  name: string;
begin
  case AButtonIndex of
    0 : begin
      if FindInfObj('Шаблон поиска станции по названию:', 'inf_obj_node', False, id, cod, name) then begin
        Fstn       := cod;
        Fstn_name  := name;
        cxButtonEdit4.Text := Fstn;
        cxButtonEdit3.Text := Fstn_name;
      end;
    end;
    1 : begin
        Fstn       := '';
        Fstn_name  := '';
        cxButtonEdit4.Text := Fstn;
        cxButtonEdit3.Text := Fstn_name;
    end;
  end;
end;

procedure TfmFactIncAdd.cxButtonEdit4PropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
var
  id  : integer;
  cod : string;
  name: string;
begin
  case AButtonIndex of
    0 : begin
      if FindInfObj('Шаблон поиска станции по коду:', 'inf_obj_node', True, id, cod, name) then begin
        Fstn       := cod;
        Fstn_name  := name;
        cxButtonEdit4.Text := Fstn;
        cxButtonEdit3.Text := Fstn_name;
      end;
    end;
    1 : begin
        Fstn       := '';
        Fstn_name  := '';
        cxButtonEdit4.Text := Fstn;
        cxButtonEdit3.Text := Fstn_name;
    end;
  end;

end;

procedure TfmFactIncAdd.cxButtonEdit5PropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
var
  id  : integer;
  cod : string;
  name: string;
begin
  case AButtonIndex of
    0 : begin
      if FindInfObj('Шаблон поиска груза по названию:', 'inf_obj_etsng', False, id, cod, name) then begin
        Fgruz      := cod;
        Fgruz_name := name;
        cxButtonEdit6.Text := Fgruz;
        cxButtonEdit5.Text := Fgruz_name;
      end;
    end;
    1 : begin
        Fgruz      := '';
        Fgruz_name := '';
        cxButtonEdit6.Text := Fgruz;
        cxButtonEdit5.Text := Fgruz_name;
    end;
  end;
end;

procedure TfmFactIncAdd.cxButtonEdit6PropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
var
  id  : integer;
  cod : string;
  name: string;
begin
  case AButtonIndex of
    0 : begin
      if FindInfObj('Шаблон поиска груза по коду:', 'inf_obj_etsng', False, id, cod, name) then begin
        Fgruz      := cod;
        Fgruz_name := name;
        cxButtonEdit6.Text := Fgruz;
        cxButtonEdit5.Text := Fgruz_name;
      end;
    end;
    1 : begin
        Fgruz      := '';
        Fgruz_name := '';
        cxButtonEdit6.Text := Fgruz;
        cxButtonEdit5.Text := Fgruz_name;
    end;
  end;
end;

end.
