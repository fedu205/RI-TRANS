unit Stat;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters,
  cxStyles, cxCustomData, cxFilter, cxData, cxDataStorage, cxEdit, DB, cxDBData, cxGridLevel,
  cxClasses, cxGridCustomView, cxGridCustomTableView, cxGridTableView, cxGridDBTableView,
  cxGrid, cxCurrencyEdit, cxGridBandedTableView, cxGridDBBandedTableView, ADODB, cxPC, ExtCtrls,
  cxContainer, cxTextEdit, cxLabel;

type
  TfmStat = class(TForm)
    ADOStoredProc1: TADOStoredProc;
    FlowPanel1: TFlowPanel;
    ScrollBox2: TScrollBox;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FlowPanel1Resize(Sender: TObject);
  private
    Fconnect : TADOConnection;
  public
    constructor Create(AOwner : TApplication; conn: TADOConnection);
  end;

var
  fmStat: TfmStat;

implementation
  uses Main, Pay, ClientInvoice, StatFrame;

{$R *.dfm}

constructor TfmStat.Create(AOwner : TApplication; conn: TADOConnection);
var fr : TfrStatFrame;
begin
  Screen.Cursor := crHourglass;
  inherited Create(AOwner);

  Fconnect := conn;

  ADOStoredProc1.Connection := Fconnect;
  ADOStoredProc1.Parameters.Refresh;
  ADOStoredProc1.Parameters.ParamByName('@id_part').Value := 0;
  ADOStoredProc1.Open;

  while not ADOStoredProc1.Eof do begin
    fr := TfrStatFrame.Create(Self);
    fr.Name := fr.Name + '_' + ADOStoredProc1.FieldByName('id').AsString;
    fr._SetPartID := ADOStoredProc1.FieldByName('id').Value;
    fr._SetDecimalPlaces := ADOStoredProc1.FieldByName('decimal_places').Value;
    fr.Parent := FlowPanel1;

    ADOStoredProc1.Next;
  end;

  ADOStoredProc1.Close;

  Screen.Cursor := crDefault;
end;

procedure TfmStat.FlowPanel1Resize(Sender: TObject);
begin
  FlowPanel1.AutoSize := True;
  FlowPanel1.AutoSize := False;
end;

procedure TfmStat.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action := caFree;
end;

end.

