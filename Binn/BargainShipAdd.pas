unit BargainShipAdd;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs;

type
  TfmBargainShipAdd = class(TForm)
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    constructor Create(AOwner: TApplication; type_contract: integer); reintroduce;
  end;

var
  fmBargainShipAdd: TfmBargainShipAdd;

implementation

{$R *.dfm}

constructor TfmBargainShipAdd.Create(AOwner: TApplication; type_contract: integer);
begin
  inherited Create(AOwner);
end;

procedure TfmBargainShipAdd.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action := caFree;
end;

end.
