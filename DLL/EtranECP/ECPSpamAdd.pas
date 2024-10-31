unit ECPSpamAdd;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, cxGraphics, StdCtrls, Buttons, cxDropDownEdit, cxCalendar,
  cxMaskEdit, cxControls, cxContainer, cxEdit, cxTextEdit, DB, ADODB,
  cxLookupEdit, cxDBLookupEdit, cxDBLookupComboBox, ExtCtrls, cxPropertiesStore,
  cxLookAndFeels, cxLookAndFeelPainters, Vcl.ComCtrls, dxCore, cxDateUtils, cxCurrencyEdit, cxMemo, cxGroupBox;

type
  TfmECPSpamAdd = class(TForm)
    Panel2: TPanel;
    BitBtn2: TBitBtn;
    BitBtn1: TBitBtn;
    cxGroupBox1: TcxGroupBox;
    cxMemo1: TcxMemo;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure BitBtn1Click(Sender: TObject);
  private
    Fconnect                 : TADOConnection;

    Fobject_name             : string;
    Frow_id                  : integer;
    Fparam_name              : string;

  public
    constructor Create(AOwner : TApplication; connect: TADOConnection; Aobject_name: string; Arow_id: integer; Aparam_name: string; Arow_caption, Aparam_caption: string);
  end;

var
  fmECPSpamAdd: TfmECPSpamAdd;

implementation
     uses Raznoe;
{$R *.dfm}

constructor TfmECPSpamAdd.Create(AOwner : TApplication; connect: TADOConnection; Aobject_name: string; Arow_id: integer; Aparam_name: string; Arow_caption, Aparam_caption: string);
var sp : TADOStoredProc;
begin
  inherited Create(AOwner);

  Screen.Cursor       := crHourglass;

  Fconnect            := connect;

  Fobject_name        := Aobject_name;
  Frow_id             := Arow_id;
  Fparam_name         := Aparam_name;

  self.Caption        := Arow_caption;
  cxGroupBox1.Caption := Aparam_caption;

  Screen.Cursor := crHourglass;
  SP := TADOStoredProc.Create(nil);
  SP.Connection := Fconnect;
  SP.ProcedureName := 'sp_etran_global_spam_modify';
  SP.Parameters.Refresh;

  SP.Parameters.ParamByName('@type_action' ).Value := 10; // GET
  SP.Parameters.ParamByName('@object_name' ).Value := Fobject_name;
  SP.Parameters.ParamByName('@row_id'      ).Value := Frow_id;
  SP.Parameters.ParamByName('@param_name'  ).Value := Fparam_name;

  try
    SP.ExecProc;
    cxMemo1.EditValue :=   SP.Parameters.ParamByName('@param_value').Value;
  except on E: Exception do begin
    Application.MessageBox(PWideChar(E.Message), 'Ошибка', MB_OK or MB_ICONERROR);
  end;
  end;
  SP.Free;
  Screen.Cursor := crDefault;

  Screen.Cursor       := crDefault;
end;

procedure TfmECPSpamAdd.BitBtn1Click(Sender: TObject);
var sp : TADOStoredProc;
begin
  Screen.Cursor := crHourglass;
  SP := TADOStoredProc.Create(nil);
  SP.Connection := Fconnect;
  SP.ProcedureName := 'sp_etran_global_spam_modify';
  SP.Parameters.Refresh;

  SP.Parameters.ParamByName('@type_action' ).Value := 0; // INS/UPD
  SP.Parameters.ParamByName('@object_name' ).Value := Fobject_name;
  SP.Parameters.ParamByName('@row_id'      ).Value := Frow_id;
  SP.Parameters.ParamByName('@param_name'  ).Value := Fparam_name;
  SP.Parameters.ParamByName('@param_value' ).Value := cxMemo1.EditValue;

  try
    SP.ExecProc;
  except on E: Exception do begin
    Application.MessageBox(PWideChar(E.Message), 'Ошибка', MB_OK or MB_ICONERROR);
    ModalResult := mrNone;
  end;
  end;
  SP.Free;
  Screen.Cursor := crDefault;
end;

procedure TfmECPSpamAdd.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action := caFree;
end;

end.
