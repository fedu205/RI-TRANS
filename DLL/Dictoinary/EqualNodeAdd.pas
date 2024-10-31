unit EqualNodeAdd;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ExtCtrls, cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters,
  cxContainer, cxEdit, cxCurrencyEdit, cxDropDownEdit, cxLookupEdit, cxDBLookupEdit,
  cxDBLookupComboBox, cxMaskEdit, cxCalendar, cxTextEdit, DB, ADODB, cxPropertiesStore,
  cxStyles, cxCustomData, cxFilter, cxData, cxDataStorage, cxDBData, cxGridCustomView, cxGridCustomTableView,
  cxGridTableView, cxGridBandedTableView, cxGridDBBandedTableView, cxClasses, cxGridLevel,
  cxGrid, cxPC, cxMemo, DBClient, dxBar, cxCheckBox, Default, cxButtonEdit, dxSkinsCore, dxSkinBlack, dxSkinBlue, dxSkinBlueprint, dxSkinCaramel, dxSkinCoffee, dxSkinDarkroom, dxSkinDarkSide,
  dxSkinDevExpressDarkStyle, dxSkinDevExpressStyle, dxSkinFoggy, dxSkinGlassOceans, dxSkinHighContrast, dxSkiniMaginary, dxSkinLilian, dxSkinLiquidSky, dxSkinLondonLiquidSky, dxSkinMcSkin,
  dxSkinMetropolis, dxSkinMetropolisDark, dxSkinMoneyTwins, dxSkinOffice2007Black, dxSkinOffice2007Blue, dxSkinOffice2007Green, dxSkinOffice2007Pink, dxSkinOffice2007Silver, dxSkinOffice2010Black,
  dxSkinOffice2010Blue, dxSkinOffice2010Silver, dxSkinOffice2013DarkGray, dxSkinOffice2013LightGray, dxSkinOffice2013White, dxSkinOffice2016Colorful, dxSkinOffice2016Dark, dxSkinPumpkin, dxSkinSeven,
  dxSkinSevenClassic, dxSkinSharp, dxSkinSharpPlus, dxSkinSilver, dxSkinSpringtime, dxSkinStardust, dxSkinSummer2008, dxSkinTheAsphaltWorld, dxSkinTheBezier, dxSkinsDefaultPainters, dxSkinValentine,
  dxSkinVisualStudio2013Blue, dxSkinVisualStudio2013Dark, dxSkinVisualStudio2013Light, dxSkinVS2010, dxSkinWhiteprint, dxSkinXmas2008Blue,
  Vcl.Menus, cxButtons;

type
  TfmEqualNodeAdd = class(TForm)
    Panel2: TPanel;
    Panel1: TPanel;
    cxButtonEdit2: TcxButtonEdit;
    cxButtonEdit1: TcxButtonEdit;
    Label12: TLabel;
    Label1: TLabel;
    ClientDataSet1: TClientDataSet;
    ClientDataSet1node_begin_id: TIntegerField;
    ClientDataSet1node_begin_cod: TStringField;
    ClientDataSet1node_begin_name: TStringField;
    cxButton2: TcxButton;
    cxButton1: TcxButton;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure cxButtonEdit2PropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
    procedure cxButtonEdit1PropertiesButtonClick(Sender: TObject;  AButtonIndex: Integer);
    procedure cxButton1Click(Sender: TObject);
  private
    Fusr_pwd      : PUser_pwd;
    Fnode_node_id : integer;
    Ftype_action  : integer;
    Fnode1_id     : integer;
    Fnode2_id     : integer;
    procedure SetUpdate(node_node_id: integer);
    procedure SetInsert(node_node_id: integer);
  public
    constructor Create(AOwner: TApplication; usr_pwd: PUser_pwd);
  published
    property _SetUpdate     : integer write SetUpdate;
    property _SetInsert     : integer write SetInsert;
    property _GetNodeNodeId : integer read Fnode_node_id;
  end;

var
  fmEqualNodeAdd: TfmEqualNodeAdd;

implementation
  uses Raznoe, EqualNode;

{$R *.dfm}

{ TfmVagonAdd }

constructor TfmEqualNodeAdd.Create(Aowner: TApplication; usr_pwd: PUser_pwd);
begin
  Screen.Cursor := crHourglass;

  inherited Create(Aowner);
  Ftype_action := 0;
  ClientDataSet1.CreateDataSet;

  MonitorEventFormOpen('OPEN_FORM', self.Name, fmEqualNode.ADOEqualNode, -9);


  Screen.Cursor := crDefault;
end;

procedure TfmEqualNodeAdd.cxButton1Click(Sender: TObject);
var SP : TADOStoredProc;
begin
  Screen.Cursor := crHourglass;

  SP := TADOStoredProc.Create(nil);
  SP.Connection := fmEqualNode.ADOEqualNode;
  SP.ProcedureName := 'sp_node_node_modify;1';
  SP.Parameters.Refresh;

  SP.Parameters.ParamByName('@node_node_id').Value := Fnode_node_id;
  SP.Parameters.ParamByName('@type_action' ).Value := Ftype_action;
  SP.Parameters.ParamByName('@node1_id'    ).Value := Fnode1_id;
  SP.Parameters.ParamByName('@node2_id'    ).Value := Fnode2_id;

  try
    SP.ExecProc;
  except on E: Exception do begin
    Application.MessageBox(PChar(E.Message),'¬Õ»Ã¿Õ»≈!!!' , MB_OKCANCEL + MB_ICONERROR);
    ModalResult := mrNone;
  end;
  end;
  Fnode_node_id := SP.Parameters.ParamByName('@node_node_id').Value;
  SP.Free;

  Screen.Cursor := crDefault;
end;

procedure TfmEqualNodeAdd.cxButtonEdit1PropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
begin
  case AButtonIndex of
    0 : begin
         if FindInInfObjNode(ClientDataSet1,'NODE_BEGIN' ,True, True, NOW , fmEqualNode.ADOEqualNode) then begin
           Fnode2_id := ClientDataSet1.FieldByName('node_begin_id').AsInteger;
           cxButtonEdit1.Text := ClientDataSet1.FieldByName('node_begin_name').AsString;
         end;
        end;
    1 : begin
          Fnode2_id := -9;
          cxButtonEdit1.Text := '';
        end;
  end;
end;

procedure TfmEqualNodeAdd.cxButtonEdit2PropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
begin
  case AButtonIndex of
    0 : begin
         if FindInInfObjNode(ClientDataSet1,'NODE_BEGIN' ,True, True, NOW , fmEqualNode.ADOEqualNode) then begin
           Fnode1_id := ClientDataSet1.FieldByName('node_begin_id').AsInteger;
           cxButtonEdit2.Text := ClientDataSet1.FieldByName('node_begin_name').AsString;
         end;
        end;
    1 : begin
          Fnode1_id := -9;
          cxButtonEdit2.Text := '';
        end;
  end;
end;

procedure TfmEqualNodeAdd.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action := caFree;
end;

procedure TfmEqualNodeAdd.SetInsert(node_node_id: integer);
begin
  Fnode_node_id := -9;
end;

procedure TfmEqualNodeAdd.SetUpdate(node_node_id: integer);
var Q : TADOQuery;
begin
  Screen.Cursor := crHourglass;

  Ftype_action := 1;
  Fnode_node_id := node_node_id;

  Q := TADOQuery.Create(nil);
  Q.Connection := fmEqualNode.ADOEqualNode;
  Q.SQL.Add('SELECT * FROM view_inf_obj_NODE_NODE WHERE node_node_id =' + IntToStr(Fnode_node_id));
  Q.Open;

  Fnode1_id          := Q.FieldByName('node1_id').Value;
  cxButtonEdit2.Text := Q.FieldByName('inf_obj_name').Value;

  Fnode2_id          := Q.FieldByName('node2_id').Value;
  cxButtonEdit1.Text := Q.FieldByName('inf_obj_name_2').Value;

  Q.Free;

  MonitorEventFormOpen('UPDATE_FORM', self.Name, fmEqualNode.ADOEqualNode, Fnode_node_id);

  Screen.Cursor := crDefault;
end;

end.
