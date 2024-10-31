unit DocShablonAdd;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs, Default,
  Db, ADODB, StdCtrls, ComCtrls, ToolWin, Menus, Variants, cxButtons,
  cxEdit, cxControls, cxClasses, cxTextEdit, cxContainer, cxLabel, ExtCtrls,
  cxPropertiesStore, cxMemo, cxButtonEdit, StrUtils, cxLookAndFeels, cxLookAndFeelPainters, cxPC, cxGraphics,
  cxMaskEdit, cxCheckBox, dxBarBuiltInMenu, dxSkinsCore, dxSkinBlack,
  dxSkinBlue, dxSkinBlueprint, dxSkinCaramel, dxSkinCoffee, dxSkinDarkroom,
  dxSkinDarkSide, dxSkinDevExpressDarkStyle, dxSkinDevExpressStyle, dxSkinFoggy,
  dxSkinGlassOceans, dxSkinHighContrast, dxSkiniMaginary, dxSkinLilian,
  dxSkinLiquidSky, dxSkinLondonLiquidSky, dxSkinMcSkin, dxSkinMetropolis,
  dxSkinMetropolisDark, dxSkinMoneyTwins, dxSkinOffice2007Black,
  dxSkinOffice2007Blue, dxSkinOffice2007Green, dxSkinOffice2007Pink,
  dxSkinOffice2007Silver, dxSkinOffice2010Black, dxSkinOffice2010Blue,
  dxSkinOffice2010Silver, dxSkinOffice2013DarkGray, dxSkinOffice2013LightGray,
  dxSkinOffice2013White, dxSkinOffice2016Colorful, dxSkinOffice2016Dark,
  dxSkinPumpkin, dxSkinSeven, dxSkinSevenClassic, dxSkinSharp, dxSkinSharpPlus,
  dxSkinSilver, dxSkinSpringtime, dxSkinStardust, dxSkinSummer2008,
  dxSkinTheAsphaltWorld, dxSkinTheBezier, dxSkinsDefaultPainters,
  dxSkinValentine, dxSkinVisualStudio2013Blue, dxSkinVisualStudio2013Dark,
  dxSkinVisualStudio2013Light, dxSkinVS2010, dxSkinWhiteprint,
  dxSkinXmas2008Blue, dxSkinOffice2019Colorful;

type
  TfmDocShablonAdd = class(TForm)
    Panel1: TPanel;
    GroupBox1: TGroupBox;
    cxMemo1: TcxMemo;
    OpenDialog1: TOpenDialog;
    Label9: TLabel;
    cxPropertiesStore1: TcxPropertiesStore;
    Splitter1: TSplitter;
    cxButton3: TcxButton;
    cxButton1: TcxButton;
    cxPageControl1: TcxPageControl;
    cxTabSheet8: TcxTabSheet;
    Panel10: TPanel;
    Label71: TLabel;
    Label75: TLabel;
    cxTextEdit13: TcxTextEdit;
    cxButtonEdit15: TcxButtonEdit;
    cxCheckBox1: TcxCheckBox;
    procedure cxCheckBox1Click(Sender: TObject);
    procedure cxButtonEdit1PropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure cxButton1Click(Sender: TObject);

 private
    Fdoc_type_cod, Ftype_action, Fdoc_id : integer;
    procedure SetUpdate(doc_id : integer);

 public
    constructor Create(AOwner: TApplication; type_action: integer; doc_type_cod: integer);
 published
    property _SetUpdate : integer write SetUpdate;
    property _GetDocId  : integer read Fdoc_id;
  end;

var
  fmDocShablonAdd: TfmDocShablonAdd;

implementation
   uses DocShablon, Filter, Raznoe;
{$R *.DFM}

constructor TfmDocShablonAdd.Create(AOwner: TApplication; type_action: integer; doc_type_cod: integer);
begin
  inherited Create(AOwner);
  Screen.Cursor := crHourglass;

  Fdoc_type_cod := doc_type_cod;
  Ftype_action := type_action;
  Fdoc_id := 0;

  Screen.Cursor := crDefault;
end;

procedure TfmDocShablonAdd.SetUpdate(doc_id : integer);
var Q : TADOQuery;
begin
  Screen.Cursor := crHourglass;

  Fdoc_id := doc_id;
  Q := TADOQuery.Create(nil);
  Q.Connection := fmDocShablon.ADOShablon;
  Q.SQL.Add('SELECT * FROM view_doc_shablon WHERE doc_id = '+ IntToStr(Fdoc_id));
  Q.Open;

  cxMemo1.EditValue        := Q.FieldByName('doc_describe').Value;
  cxTextEdit13.EditValue   := Q.FieldByName('doc_cod').Value;
  cxButtonEdit15.EditValue := Q.FieldByName('file_name').Value;
  cxCheckBox1.Checked := Q.FieldByName('users_group_id').IsNull;
  cxCheckBox1.Caption := '¬Ë‰ËÏÓÒÚ¸: ' + Q.FieldByName('users_group_name').AsString;
  Caption := Caption + ' [' + IntToStr(doc_id) + ']';

  Q.Free;
  Screen.Cursor := crDefault;
end;

//¬˚·Ó Ù‡ÈÎ‡
procedure TfmDocShablonAdd.cxButton1Click(Sender: TObject);
var SP_BLOB_modify : TADOStoredProc;
begin
  Screen.Cursor := crHourglass;

  SP_BLOB_modify := TADOStoredProc.Create(nil);
  SP_BLOB_modify.Connection := fmDocShablon.ADOShablon;
  SP_BLOB_modify.ProcedureName := 'sp_BLOB_SHABLON_modify';
  SP_BLOB_modify.Parameters.Refresh;
  SP_BLOB_modify.Parameters.ParamByName('@doc_id').Value       := Fdoc_id;
  SP_BLOB_modify.Parameters.ParamByName('@doc_type_cod').Value := Fdoc_type_cod;
  SP_BLOB_modify.Parameters.ParamByName('@type_action').Value  := Ftype_action;
  SP_BLOB_modify.Parameters.ParamByName('@doc_describe').Value := cxMemo1.Text;
  SP_BLOB_modify.Parameters.ParamByName('@doc_cod').Value      := cxTextEdit13.EditValue;
  if cxCheckBox1.Checked then
    SP_BLOB_modify.Parameters.ParamByName('@users_group_id').Value := NULL
  else
    SP_BLOB_modify.Parameters.ParamByName('@users_group_id').Value := fmDocShablon.Fusr_pwd.user_group_id;

  if (OpenDialog1.FileName <> '') then begin
    SP_BLOB_modify.Parameters.ParamByName('@doc_image').LoadFromFile(OpenDialog1.FileName, ftBlob);
    SP_BLOB_modify.Parameters.ParamByName('@file_name').Value := ExtractFileName(OpenDialog1.FileName);
  end else begin
    SP_BLOB_modify.Parameters.ParamByName('@doc_image').Value := Null;
    SP_BLOB_modify.Parameters.ParamByName('@file_name').Value := Null;
  end;

  try
    SP_BLOB_modify.ExecProc;
  except
    on E : Exception do begin
      Application.MessageBox(PChar(E.Message), '¬ÌËÏ‡ÌËÂ', MB_OK);
      SP_BLOB_modify.Free;
      Screen.Cursor := crDefault;
    end;
  end;

  if SP_BLOB_modify.Parameters.ParamByName('@doc_id').Value = -9 then
   Application.MessageBox('Õ≈¬Œ«ÃŒ∆ÕŒ ¬—“¿¬»“‹ ÕŒ¬€… ÿ¿¡ÀŒÕ', 'Œÿ»¡Œ◊ ¿', MB_OK)
  else Fdoc_id := SP_BLOB_modify.Parameters.ParamByName('@doc_id').Value;

  SP_BLOB_modify.Free;

  Screen.Cursor := crDefault;
end;

procedure TfmDocShablonAdd.cxButtonEdit1PropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
begin
  case AButtonIndex of
    0 : begin
          OpenDialog1.Filter := '¬ÒÂ Ù‡ÈÎ˚|*.*';
          OpenDialog1.DefaultExt := '';
          if OpenDialog1.Execute then
            cxButtonEdit15.Text := OpenDialog1.FileName;
        end;
    1 : cxButtonEdit15.EditValue := null;
  end;
end;

procedure TfmDocShablonAdd.cxCheckBox1Click(Sender: TObject);
var Q : TADOQuery;
begin
  if cxCheckBox1.Checked then
    cxCheckBox1.Caption := '¬Ë‰ËÏÓÒÚ¸: Œ·˘ËÈ'
  else begin
    Q := TADOQuery.Create(nil);
    Q.Connection := fmDocShablon.ADOShablon;
    Q.SQL.Add('SELECT inf_obj_name FROM inf_obj WHERE inf_obj_id = ' + IntToStr(fmDocShablon.Fusr_pwd.user_group_id));
    Q.Open;
    cxCheckBox1.Caption := '¬Ë‰ËÏÓÒÚ¸: ' + Q.FieldByName('inf_obj_name').AsString;
    Q.Free;
  end;
end;

procedure TfmDocShablonAdd.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action := caFree;
end;

end.
