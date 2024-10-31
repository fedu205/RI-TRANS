unit EtrXMLView;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ComCtrls, cxPropertiesStore, XMLDoc, cxClasses;

type
  TfmEtrXMLView = class(TForm)
    RichEdit1: TRichEdit;
    cxPropertiesStore1: TcxPropertiesStore;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
  public
    constructor Create(AOwner : TApplication);
    procedure   SetXML(xml: string);
  published
    property  _SetXML    : string write SetXML;
  end;

var
  fmEtrXMLView: TfmEtrXMLView;

implementation

{$R *.dfm}

constructor TfmEtrXMLView.Create(AOwner : TApplication);
begin
  Screen.Cursor := crHourglass;
  inherited Create(AOwner);

  Screen.Cursor := crDefault;
end;

procedure TfmEtrXMLView.SetXML(xml: string);
begin
  RichEdit1.Lines.Clear;
  RichEdit1.Lines.Text := FormatXMLData(xml);
end;

procedure TfmEtrXMLView.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action := caFree;
end;

end.
