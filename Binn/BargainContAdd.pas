unit BargainContAdd;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs;

type
  TfmBargainContAdd = class(TForm)
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    constructor Create(AOwner: TApplication; type_contract: integer); reintroduce;
  end;

var
  fmBargainContAdd: TfmBargainContAdd;

implementation

{$R *.dfm}

constructor TfmBargainContAdd.Create(AOwner: TApplication; type_contract: integer);
begin
  inherited Create(AOwner);
end;

procedure TfmBargainContAdd.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action := caFree;
end;

end.
