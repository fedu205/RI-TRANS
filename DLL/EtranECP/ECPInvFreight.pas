unit ECPInvFreight;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, ExtCtrls, cxGraphics, cxControls, cxLookAndFeels,
  cxLookAndFeelPainters, cxContainer, cxEdit, cxCurrencyEdit, cxTextEdit,
  cxMaskEdit, cxButtonEdit, cxStyles, cxCustomData, cxFilter, cxData,
  cxDataStorage, DB, cxDBData, cxGridLevel, cxClasses, cxGridCustomView,
  cxGridCustomTableView, cxGridTableView, cxGridDBTableView, cxGrid,
  cxGridBandedTableView, cxGridDBBandedTableView, DBClient, Raznoe, ADODB,
  cxPropertiesStore, dxSkinsCore, dxSkinBlack, dxSkinBlue, dxSkinBlueprint,
  dxSkinCaramel, dxSkinCoffee, dxSkinDarkRoom, dxSkinDarkSide,
  dxSkinDevExpressDarkStyle, dxSkinDevExpressStyle, dxSkinFoggy,
  dxSkinGlassOceans, dxSkinHighContrast, dxSkiniMaginary, dxSkinLilian,
  dxSkinLiquidSky, dxSkinLondonLiquidSky, dxSkinMcSkin, dxSkinMetropolis,
  dxSkinMetropolisDark, dxSkinMoneyTwins, dxSkinOffice2007Black,
  dxSkinOffice2007Blue, dxSkinOffice2007Green, dxSkinOffice2007Pink,
  dxSkinOffice2007Silver, dxSkinOffice2010Black, dxSkinOffice2010Blue,
  dxSkinOffice2010Silver, dxSkinOffice2013DarkGray, dxSkinOffice2013LightGray,
  dxSkinOffice2013White, dxSkinOffice2016Colorful, dxSkinOffice2016Dark,
  dxSkinPumpkin, dxSkinSeven, dxSkinSevenClassic, dxSkinSharp, dxSkinSharpPlus,
  dxSkinSilver, dxSkinSpringTime, dxSkinStardust, dxSkinSummer2008,
  dxSkinTheAsphaltWorld, dxSkinsDefaultPainters, dxSkinValentine,
  dxSkinVisualStudio2013Blue, dxSkinVisualStudio2013Dark,
  dxSkinVisualStudio2013Light, dxSkinVS2010, dxSkinWhiteprint,
  dxSkinXmas2008Blue, dxBarBuiltInMenu, cxPC, cxCheckBox, dxSkinTheBezier;

type
  TfmECPInvFreight = class(TForm)
    Panel1: TPanel;
    BitBtn2: TBitBtn;
    BitBtn1: TBitBtn;
    Label18: TLabel;
    cxButtonEdit9: TcxButtonEdit;
    cxButtonEdit15: TcxButtonEdit;
    cxTextEdit1: TcxTextEdit;
    Label1: TLabel;
    Label2: TLabel;
    cxButtonEdit1: TcxButtonEdit;
    cxButtonEdit2: TcxButtonEdit;
    cxButtonEdit3: TcxButtonEdit;
    cxButtonEdit4: TcxButtonEdit;
    Label3: TLabel;
    Label4: TLabel;
    cxTextEdit2: TcxTextEdit;
    cxButtonEdit6: TcxButtonEdit;
    Label5: TLabel;
    cxCurrencyEdit1: TcxCurrencyEdit;
    Label6: TLabel;
    Label7: TLabel;
    cxCurrencyEdit2: TcxCurrencyEdit;
    Label8: TLabel;
    cxCurrencyEdit3: TcxCurrencyEdit;
    Label9: TLabel;
    cxCurrencyEdit4: TcxCurrencyEdit;
    cxCurrencyEdit5: TcxCurrencyEdit;
    Label10: TLabel;
    cxCurrencyEdit6: TcxCurrencyEdit;
    Label11: TLabel;
    cxCurrencyEdit7: TcxCurrencyEdit;
    Label12: TLabel;
    cxCurrencyEdit8: TcxCurrencyEdit;
    Label13: TLabel;
    cxTextEdit3: TcxTextEdit;
    Label14: TLabel;
    Label15: TLabel;
    cxButtonEdit5: TcxButtonEdit;
    Label16: TLabel;
    cxButtonEdit7: TcxButtonEdit;
    Label19: TLabel;
    cxButtonEdit10: TcxButtonEdit;
    cxPropertiesStore1: TcxPropertiesStore;
    cxPageControl1: TcxPageControl;
    cxTabSheet1: TcxTabSheet;
    cxTabSheet2: TcxTabSheet;
    cxCheckBox1: TcxCheckBox;
    cxCheckBox2: TcxCheckBox;
    cxCheckBox3: TcxCheckBox;
    cxCheckBox4: TcxCheckBox;
    cxCheckBox5: TcxCheckBox;
    cxCheckBox6: TcxCheckBox;
    cxCheckBox7: TcxCheckBox;
    cxCheckBox8: TcxCheckBox;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure BitBtn2Click(Sender: TObject);
    procedure cxButtonEdit9PropertiesButtonClick(Sender: TObject;
      AButtonIndex: Integer);
    procedure cxButtonEdit1PropertiesButtonClick(Sender: TObject;
      AButtonIndex: Integer);
    procedure cxButtonEdit6PropertiesButtonClick(Sender: TObject;
      AButtonIndex: Integer);
    procedure cxButtonEdit5PropertiesButtonClick(Sender: TObject;
      AButtonIndex: Integer);
    procedure cxButtonEdit7PropertiesButtonClick(Sender: TObject;
      AButtonIndex: Integer);
    procedure cxButtonEdit10PropertiesButtonClick(Sender: TObject;
      AButtonIndex: Integer);
    procedure cxButtonEdit4PropertiesButtonClick(Sender: TObject;
      AButtonIndex: Integer);
    procedure cxCheckBox1PropertiesChange(Sender: TObject);
    procedure cxCheckBox3PropertiesChange(Sender: TObject);
    procedure cxCheckBox2PropertiesChange(Sender: TObject);
    procedure cxCheckBox4PropertiesChange(Sender: TObject);
    procedure cxCheckBox5PropertiesChange(Sender: TObject);
    procedure cxCheckBox6PropertiesChange(Sender: TObject);
    procedure cxCheckBox7PropertiesChange(Sender: TObject);
    procedure cxCheckBox8PropertiesChange(Sender: TObject);
  private
    Fid          : integer;
    Ftype_action : integer;
    FClientDS    : TClientDataSet;
    Fconnect     : TADOConnection;

    FfreightCode           : string;
    FfreightGNGID          : integer;
    FfreightGNGID2001      : integer;
    FfreightPackTypeID     : integer;
    FfreightDangerSignID   : integer;
    FfreightDangerID       : integer;
    FfreightAccidentCardID : integer;
    FfreightGNGCode			   : string;
  	FfreightAdditional		 : string;
  	FfreightWeight			   : Currency;

    Fset_freightCode            :boolean;
    Fset_freightGNGID			      :boolean;
    Fset_freightGNGID2001		    :boolean;
    Fset_freightGNGCode			    :boolean;
  	Fset_freightAdditional		  :boolean;
  	Fset_freightWeight			    :boolean;
	  Fset_freightDangerSignID	  :boolean;
  	Fset_freightDangerID		    :boolean;
  	Fset_freightAccidentCardID	:boolean;

    procedure SetUpdate(id: integer);
    procedure SetGroupUpdate(value: boolean);
  public
    constructor Create(AOwner: TApplication; connect: TADOConnection); reintroduce;
  published
    property _SetClientDS : TClientDataSet write FClientDS;
    property _SetUpdate   : integer write SetUpdate;
    property _SetGroupUpdate : boolean write SetGroupUpdate;

    property _Get_freightCode           : string  read FfreightCode;
    property _Get_freightGNGID          : integer read FfreightGNGID;
    property _Get_freightGNGID2001      : integer read FfreightGNGID2001;
    property _Get_freightPackTypeID     : integer read FfreightPackTypeID;
    property _Get_freightDangerSignID   : integer read FfreightDangerSignID;
    property _Get_freightDangerID       : integer read FfreightDangerID;
    property _Get_freightAccidentCardID : integer read FfreightAccidentCardID;
    property _Get_freightGNGCode			  : string  read FfreightGNGCode;
    property _Get_freightAdditional		  : string  read FfreightAdditional;
    property _Get_freightWeight			    : Currency read FfreightWeight;

    property _GetSetFreightCode 			    : boolean read Fset_freightCode;
    property _GetSetFreightGNGID			    : boolean read Fset_freightGNGID;
    property _GetSetFreightGNGID2001		  : boolean read Fset_freightGNGID2001;
    property _GetSetFreightGNGCode			  : boolean read Fset_freightGNGCode;
    property _GetSetFreightAdditional		  : boolean read Fset_freightAdditional;
    property _GetSetFreightWeight			    : boolean read Fset_freightWeight;
    property _GetSetFreightDangerSignID	  : boolean read Fset_freightDangerSignID;
    property _GetSetFreightDangerID		    : boolean read Fset_freightDangerID;
    property _GetSetFreightAccidentCardID	: boolean read Fset_freightAccidentCardID;

  end;

var
  fmECPInvFreight: TfmECPInvFreight;

implementation

uses ECPMain, ECPFilter;

{$R *.dfm}

constructor TfmECPInvFreight.Create(AOwner: TApplication; connect: TADOConnection);
var Q: TADOQuery;
begin
  Screen.Cursor := crHourglass;
  inherited Create(AOwner);

  Fconnect     := connect;

  Ftype_action := 0;
  Fid       := -9;
  FClientDS := nil;

  FfreightGNGID          := -9;
  FfreightGNGID2001      := -9;
  FfreightPackTypeID     := -9;
  FfreightDangerSignID   := -9;
  FfreightDangerID       := -9;
  FfreightAccidentCardID := -9;

  Q := TADOQuery.Create(nil);
  Q.Connection := Fconnect;

  Q.SQL.Clear;
  Q.SQL.Add('SELECT top 1 etran_nsi_id, inf_obj_name FROM dbo.ETRAN_NSI_INF_OBJ WHERE type_inf_id = 20 AND etran_nsi_id = 1');
  Q.Open;
  FfreightPackTypeID := iif(Q.FieldByName('etran_nsi_id').IsNull, -9, Q.FieldByName('etran_nsi_id').AsInteger);
  cxButtonEdit6.Text := Q.FieldByName('inf_obj_name').AsString;

  Q.SQL.Clear;
  Q.SQL.Add('SELECT top 1 etran_nsi_id, inf_obj_name FROM dbo.ETRAN_NSI_INF_OBJ WHERE type_inf_id = 27 AND inf_obj_cod = ''151'' AND etran_nsi_id = 1');
  Q.Open;
  FfreightDangerSignID := iif(Q.FieldByName('etran_nsi_id').IsNull, -9, Q.FieldByName('etran_nsi_id').AsInteger);
  cxButtonEdit5.Text   := Q.FieldByName('inf_obj_name').AsString;


  Screen.Cursor := crDefault;
end;

procedure TfmECPInvFreight.SetGroupUpdate(value: boolean);
begin
  Ftype_action := 2;

  cxCheckBox1.Visible := True;
  cxCheckBox2.Visible := True;
  cxCheckBox3.Visible := True;
  cxCheckBox4.Visible := True;
  cxCheckBox5.Visible := True;
  cxCheckBox6.Visible := True;
  cxCheckBox7.Visible := True;
  cxCheckBox8.Visible := True;

  cxButtonEdit1.Enabled := False;
  cxButtonEdit2.Enabled := False;
  cxButtonEdit3.Enabled := False;
  cxButtonEdit4.Enabled := False;
  cxButtonEdit5.Enabled := False;
  cxButtonEdit6.Enabled := False;
  cxButtonEdit7.Enabled := False;
  cxButtonEdit9.Enabled := False;
  cxButtonEdit10.Enabled := False;
  cxButtonEdit15.Enabled := False;

  cxCurrencyEdit1.Enabled := False;
  cxCurrencyEdit2.Enabled := False;
  cxCurrencyEdit3.Enabled := False;
  cxCurrencyEdit4.Enabled := False;
  cxCurrencyEdit5.Enabled := False;
  cxCurrencyEdit6.Enabled := False;
  cxCurrencyEdit7.Enabled := False;
  cxCurrencyEdit8.Enabled := False;

  cxTextEdit1.Enabled := False;
  cxTextEdit2.Enabled := False;
  cxTextEdit3.Enabled := False;
end;

procedure TfmECPInvFreight.SetUpdate(id: integer);
var Q: TADOQuery;
begin
  Fid := id;
  Ftype_action := 1;
  FClientDS.Locate('id', Fid, []);

  cxButtonEdit9.EditValue   := FClientDS.FieldByName('freightName').Value;
  cxButtonEdit15.EditValue  := FClientDS.FieldByName('freightCode').Value;
  cxTextEdit1.EditValue     := FClientDS.FieldByName('freightExactName').Value;
  FfreightGNGID             := iif(FClientDS.FieldByName('freightGNGID').IsNull, -9, FClientDS.FieldByName('freightGNGID').Value);
  FfreightGNGID2001         := iif(FClientDS.FieldByName('freightGNGID2001').IsNull, -9, FClientDS.FieldByName('freightGNGID2001').Value);
  cxButtonEdit2.EditValue   := FClientDS.FieldByName('freightGNGCode').Value;
  cxTextEdit2.EditValue     := FClientDS.FieldByName('freightAdditional').Value;
  FfreightPackTypeID        := iif(FClientDS.FieldByName('freightPackTypeID').IsNull, -9, FClientDS.FieldByName('freightPackTypeID').Value);
  cxCurrencyEdit1.EditValue := FClientDS.FieldByName('freightPocketCount').Value;
  cxCurrencyEdit2.EditValue := FClientDS.FieldByName('freightPackageCount').Value;
  cxCurrencyEdit3.EditValue := FClientDS.FieldByName('freightWeight').Value;
  cxCurrencyEdit4.EditValue := FClientDS.FieldByName('freightWeightStdGross').Value;
  cxCurrencyEdit8.EditValue := FClientDS.FieldByName('freightWeightStdNet').Value;
  cxCurrencyEdit7.EditValue := FClientDS.FieldByName('freightMaxLength').Value;
  cxCurrencyEdit6.EditValue := FClientDS.FieldByName('freightMaxWidth').Value;
  cxCurrencyEdit5.EditValue := FClientDS.FieldByName('freightMaxHeight').Value;
  cxTextEdit3.EditValue     := FClientDS.FieldByName('freightSendersMark').Value;
  FfreightDangerSignID      := iif(FClientDS.FieldByName('freightDangerSignID').IsNull, -9, FClientDS.FieldByName('freightDangerSignID').Value);
  FfreightDangerID          := iif(FClientDS.FieldByName('freightDangerID').IsNull, -9, FClientDS.FieldByName('freightDangerID').Value);
  cxButtonEdit10.EditValue  := FClientDS.FieldByName('freightAccidentCard').Value;
  FfreightAccidentCardID    := iif(FClientDS.FieldByName('freightAccidentCardID').IsNull, -9, FClientDS.FieldByName('freightAccidentCardID').Value);

  Q := TADOQuery.Create(nil);
  Q.Connection := Fconnect;

  Q.SQL.Clear;
  Q.SQL.Add('SELECT top 1 inf_obj_name, inf_obj_cod FROM dbo.ETRAN_NSI_INF_OBJ WHERE type_inf_id = 2 AND etran_nsi_id = ' + IntToStr(FfreightGNGID));
  Q.Open;
  cxButtonEdit1.Text := Q.FieldByName('inf_obj_name').AsString;
  cxButtonEdit2.Text := Q.FieldByName('inf_obj_cod').AsString;

  Q.SQL.Clear;
  Q.SQL.Add('SELECT top 1 inf_obj_name, inf_obj_cod FROM dbo.ETRAN_NSI_INF_OBJ WHERE type_inf_id = 3 AND etran_nsi_id = ' + IntToStr(FfreightGNGID2001));
  Q.Open;
  cxButtonEdit4.Text := Q.FieldByName('inf_obj_name').AsString;
  cxButtonEdit3.Text := Q.FieldByName('inf_obj_cod' ).AsString;

  Q.SQL.Clear;
  Q.SQL.Add('SELECT top 1 inf_obj_name FROM dbo.ETRAN_NSI_INF_OBJ WHERE type_inf_id = 20 AND etran_nsi_id = ' + IntToStr(FfreightPackTypeID));
  Q.Open;
  cxButtonEdit6.Text := Q.FieldByName('inf_obj_name').AsString;

  Q.SQL.Clear;
  Q.SQL.Add('SELECT top 1 inf_obj_name FROM dbo.ETRAN_NSI_INF_OBJ WHERE type_inf_id = 27 AND inf_obj_cod = ''151'' AND etran_nsi_id = ' + IntToStr(FfreightDangerSignID));
  Q.Open;
  cxButtonEdit5.Text := Q.FieldByName('inf_obj_name').AsString;

  Q.SQL.Clear;
  Q.SQL.Add('SELECT top 1 inf_obj_name  FROM dbo.ETRAN_NSI_INF_OBJ WHERE type_inf_id = 25 AND etran_nsi_id = ' + IntToStr(FfreightDangerID));
  Q.Open;
  cxButtonEdit7.Text := Q.FieldByName('inf_obj_name').AsString;


end;


procedure TfmECPInvFreight.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action := caFree;
end;


procedure TfmECPInvFreight.BitBtn2Click(Sender: TObject);
begin
  if Ftype_action = 2 then begin

    Fset_freightCode            := cxCheckBox1.Checked;
    Fset_freightGNGID			      := cxCheckBox2.Checked;
    Fset_freightGNGID2001		    := cxCheckBox3.Checked;
    Fset_freightGNGCode			    := cxCheckBox2.Checked or cxCheckBox3.Checked;
  	Fset_freightAdditional		  := cxCheckBox4.Checked;
  	Fset_freightWeight			    := cxCheckBox5.Checked;
	  Fset_freightDangerSignID	  := cxCheckBox6.Checked;
  	Fset_freightDangerID		    := cxCheckBox7.Checked;
  	Fset_freightAccidentCardID	:= cxCheckBox8.Checked;

    FfreightCode            := cxButtonEdit15.Text;
    FfreightGNGID			      := FfreightGNGID;
    FfreightGNGID2001		    := FfreightGNGID2001;
    FfreightGNGCode			    := iif(FfreightGNGID2001 = -9, cxButtonEdit2.Text, cxButtonEdit3.Text);
  	FfreightAdditional		  := cxTextEdit2.Text;
//  	FfreightWeight			    := cxCurrencyEdit3.Text;
	  FfreightDangerSignID	  := FfreightDangerSignID;
  	FfreightDangerID		    := FfreightDangerID;
  	FfreightAccidentCardID	:= FfreightAccidentCardID;

  end else begin
    if Ftype_action = 0 then begin
      FClientDS.Append;
    end else begin
      FClientDS.Locate('id', Fid, []);
      FClientDS.Edit;
    end;

    FClientDS.FieldByName('freightName').Value           := cxButtonEdit9.EditValue;
    FClientDS.FieldByName('freightCode').Value           := cxButtonEdit15.EditValue;
    FClientDS.FieldByName('freightExactName').Value      := cxTextEdit1.EditValue;
    FClientDS.FieldByName('freightGNGID').Value          := iif(FfreightGNGID = -9, null, FfreightGNGID);
    FClientDS.FieldByName('freightGNGID2001').Value      := iif(FfreightGNGID2001 = -9, null, FfreightGNGID2001);
    FClientDS.FieldByName('freightGNGCode').Value        := iif(FfreightGNGID2001 = -9, cxButtonEdit2.EditValue, cxButtonEdit3.EditValue);
    FClientDS.FieldByName('freightAdditional').Value     := cxTextEdit2.EditValue;
    FClientDS.FieldByName('freightPackTypeID').Value     := iif(FfreightPackTypeID = -9, null, FfreightPackTypeID);
    FClientDS.FieldByName('freightPocketCount').Value    := cxCurrencyEdit1.EditValue;
    FClientDS.FieldByName('freightPackageCount').Value   := cxCurrencyEdit2.EditValue;
    FClientDS.FieldByName('freightWeight').Value         := cxCurrencyEdit3.EditValue;
    FClientDS.FieldByName('freightWeightStdGross').Value := cxCurrencyEdit4.EditValue;
    FClientDS.FieldByName('freightWeightStdNet').Value   := cxCurrencyEdit8.EditValue;
    FClientDS.FieldByName('freightMaxLength').Value      := cxCurrencyEdit7.EditValue;
    FClientDS.FieldByName('freightMaxWidth').Value       := cxCurrencyEdit6.EditValue;
    FClientDS.FieldByName('freightMaxHeight').Value      := cxCurrencyEdit5.EditValue;
    FClientDS.FieldByName('freightSendersMark').Value    := cxTextEdit3.EditValue;
    FClientDS.FieldByName('freightDangerSignID').Value   := iif(FfreightDangerSignID = -9, null, FfreightDangerSignID);
    FClientDS.FieldByName('freightDangerID').Value       := iif(FfreightDangerID = -9, null, FfreightDangerID);
    FClientDS.FieldByName('freightDangerName').Value     := cxButtonEdit7.EditValue;
    FClientDS.FieldByName('freightAccidentCard').Value   := cxButtonEdit10.EditValue;
    FClientDS.FieldByName('freightAccidentCardID').Value := iif(FfreightAccidentCardID = -9, null, FfreightAccidentCardID);
    FClientDS.Post;
  end;

end;


procedure TfmECPInvFreight.cxButtonEdit10PropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
var Q: TADOQuery;
begin
  case AButtonIndex of
    0:  begin
          Q := TADOQuery.Create(nil);
          Q.Connection := Fconnect;
          Q.SQL.Add('SELECT * FROM dbo.ETRAN_NSI_INF_OBJ WHERE type_inf_id = 26');
          Q.Open;
          fmECPFilter := TfmECPFilter.Create(nil, Q);
          fmECPFilter._SetFilter := 'Аварийная карта';
          if fmECPFilter.ShowModal = mrOk then begin
            FfreightAccidentCardID := fmECPFilter._GetID;
            cxButtonEdit10.Text := fmECPFilter._GetName;
          end;
          Q.Free;
        end;
    1:  begin
          FfreightAccidentCardID := -9;
          cxButtonEdit10.Text := '';
        end;
  end;
end;

procedure TfmECPInvFreight.cxButtonEdit1PropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
var Q: TADOQuery;
    str_find: string;
begin
  case AButtonIndex of
    0:  begin
          Q := TADOQuery.Create(nil);
          Q.Connection := Fconnect;
          Q.SQL.Add('SELECT etran_nsi_id, inf_obj_name, inf_obj_cod FROM dbo.ETRAN_NSI_INF_OBJ WHERE type_inf_id = 2');

          case TcxButtonEdit(Sender).Tag of
           0: if InputQuery('Поиск', 'Поиск по НАИМЕНОВАНИЮ:', str_find) then begin
                Q.SQL.Add('AND inf_obj_name like ''%' + str_find + '%''');
              end else exit;
           1: if InputQuery('Поиск', 'Поиск по КОДУ:', str_find) then begin
                Q.SQL.Add('AND inf_obj_cod like ''%' + str_find + '%''');
              end else exit;
          end;

          Q.Open;
          fmECPFilter := TfmECPFilter.Create(nil, Q);
          fmECPFilter._SetFilterCod := 'Груз ГНГ';
          if fmECPFilter.ShowModal = mrOk then begin
            FfreightGNGID := fmECPFilter._GetId;
            cxButtonEdit1.Text:= fmECPFilter._GetName;
            cxButtonEdit2.Text:= fmECPFilter._GetCod;
          end;
        end;
    1:  begin
          FfreightGNGID      := -9;
          cxButtonEdit1.Text := '';
          cxButtonEdit2.Text := '';
        end;
  end;
end;

procedure TfmECPInvFreight.cxButtonEdit4PropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
var Q: TADOQuery;
    str_find: string;
begin
  case AButtonIndex of
    0:  begin
          Q := TADOQuery.Create(nil);
          Q.Connection := Fconnect;
          Q.SQL.Add('SELECT etran_nsi_id, inf_obj_name, inf_obj_cod FROM dbo.ETRAN_NSI_INF_OBJ WHERE type_inf_id = 3');

          case TcxButtonEdit(Sender).Tag of
           0: if InputQuery('Поиск', 'Поиск по НАИМЕНОВАНИЮ:', str_find) then begin
                Q.SQL.Add('AND inf_obj_name like ''%' + str_find + '%''');
              end else exit;
           1: if InputQuery('Поиск', 'Поиск по КОДУ:', str_find) then begin
                Q.SQL.Add('AND inf_obj_cod like ''%' + str_find + '%''');
              end else exit;
          end;

          Q.Open;
          fmECPFilter := TfmECPFilter.Create(nil, Q);
          fmECPFilter._SetFilterCod := 'Груз ГНГ';
          if fmECPFilter.ShowModal = mrOk then begin
            FfreightGNGID2001 := fmECPFilter._GetId;
            cxButtonEdit4.Text:= fmECPFilter._GetName;
            cxButtonEdit3.Text:= fmECPFilter._GetCod;
          end;
        end;
    1:  begin
          FfreightGNGID2001  := -9;
          cxButtonEdit4.Text := '';
          cxButtonEdit3.Text := '';
        end;
  end;
end;

procedure TfmECPInvFreight.cxButtonEdit5PropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
var Q: TADOQuery;
begin
  case AButtonIndex of
    0:  begin
          Q := TADOQuery.Create(nil);
          Q.Connection := Fconnect;
          Q.SQL.Add('SELECT * FROM dbo.ETRAN_NSI_INF_OBJ WHERE type_inf_id = 27 AND inf_obj_cod = ''151''');
          Q.Open;
          fmECPFilter := TfmECPFilter.Create(nil, Q);
          fmECPFilter._SetFilter := 'Аварийность груза';
          if fmECPFilter.ShowModal = mrOk then begin
            FfreightDangerSignID     := fmECPFilter._GetID;
            cxButtonEdit5.Text:= fmECPFilter._GetName;
          end;
          Q.Free;
        end;
    1:  begin
          FfreightDangerSignID      := -9;
          cxButtonEdit5.Text := '';
        end;
  end;
end;

procedure TfmECPInvFreight.cxButtonEdit6PropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
var Q: TADOQuery;
begin
  case AButtonIndex of
    0:  begin
          Q := TADOQuery.Create(nil);
          Q.Connection := Fconnect;
          Q.SQL.Add('SELECT * FROM dbo.ETRAN_NSI_INF_OBJ WHERE type_inf_id = 20');
          Q.Open;
          fmECPFilter := TfmECPFilter.Create(nil, Q);
          fmECPFilter._SetFilter := 'Аварийный груз';
          if fmECPFilter.ShowModal = mrOk then begin
            FfreightPackTypeID := fmECPFilter._GetID;
            cxButtonEdit6.Text := fmECPFilter._GetName;
          end;
          Q.Free;
        end;
    1:  begin
          FfreightPackTypeID := -9;
          cxButtonEdit6.Text := '';
        end;
  end;
end;

procedure TfmECPInvFreight.cxButtonEdit7PropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
var       Q : TADOQuery;
    card_id : integer;
begin
  case AButtonIndex of
    0:  begin
          Q := TADOQuery.Create(nil);
          Q.Connection := Fconnect;
          Q.SQL.Add('SELECT *, inf_obj_xml.value(''/row[1]/DANGERCODE[1]/@value'',''varchar(max)'') danger_code FROM dbo.ETRAN_NSI_INF_OBJ WHERE type_inf_id = 25');
          Q.Open;
          fmECPFilter := TfmECPFilter.Create(nil, Q);
          fmECPFilter._SetDanger := True;
          if fmECPFilter.ShowModal = mrOk then begin

            Q.SQL.Clear;
            Q.SQL.Add('SELECT inf_obj_xml.value(''/row[1]/CARD_ID[1]/@value'',''int'') CARD_ID FROM ETRAN_NSI_INF_OBJ WHERE type_inf_id = 25 AND etran_nsi_id =' + IntToStr(fmECPFilter._GetId));
            Q.Open;
            card_id := Q.FieldByName('CARD_ID').AsInteger;

            Q.SQL.Clear;
            Q.SQL.Add('SELECT * FROM dbo.ETRAN_NSI_INF_OBJ WHERE type_inf_id = 26 AND etran_nsi_id =' + IntToStr(card_id));
            Q.Open;
            if Q.RecordCount > 0 then begin
              FfreightAccidentCardID := Q.FieldByName('etran_nsi_id').AsInteger;
              cxButtonEdit10.Text    := Q.FieldByName('inf_obj_name').AsString;
            end else begin
              FfreightAccidentCardID := -9;
              cxButtonEdit10.Text    := '';
            end;

            FfreightDangerID := fmECPFilter._GetID;
            cxButtonEdit7.Text := fmECPFilter._GetName;
          end;
          Q.Free;
        end;
    1:  begin
          FfreightDangerID := -9;
          cxButtonEdit7.Text := '';
          FfreightAccidentCardID := -9;
          cxButtonEdit10.Text    := '';
        end;
  end;
end;

procedure TfmECPInvFreight.cxButtonEdit9PropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
var Q: TADOQuery;
    str_find: string;
begin
  case AButtonIndex of
    0:  begin
          Q := TADOQuery.Create(nil);
          Q.Connection := Fconnect;
          Q.SQL.Add('SELECT etran_nsi_id, inf_obj_name, inf_obj_cod FROM dbo.ETRAN_NSI_INF_OBJ WHERE type_inf_id = 1');

          case TcxButtonEdit(Sender).Tag of
           0: if InputQuery('Поиск', 'Поиск по НАИМЕНОВАНИЮ:', str_find) then begin
                Q.SQL.Add('AND inf_obj_name like ''%' + str_find + '%''');
              end else exit;
           1: if InputQuery('Поиск', 'Поиск по КОДУ:', str_find) then begin
                Q.SQL.Add('AND inf_obj_cod like ''%' + str_find + '%''');
              end else exit;
          end;

          Q.Open;
          fmECPFilter := TfmECPFilter.Create(nil, Q);
          fmECPFilter._SetFilterCod := 'Груз ЕТСНГ';
          if fmECPFilter.ShowModal = mrOk then begin
            cxButtonEdit9.Text:= fmECPFilter._GetName;
            cxButtonEdit15.Text:= fmECPFilter._GetCod;
            Q.SQL.Clear;
            Q.SQL.Add('SELECT inf_obj_xml.value(''/row[1]/EXACT_NAME[1]/@value'',''int'') exact_name FROM dbo.ETRAN_NSI_INF_OBJ WHERE type_inf_id = 1 AND etran_nsi_id =' + IntToStr(fmECPFilter._GetId));
            Q.Open;
            if Q.FieldByName('exact_name').AsInteger = 1 then begin
              cxTextEdit1.Text := '';
              cxTextEdit1.Enabled := True;
            end else begin
              cxTextEdit1.Text := '';
              cxTextEdit1.Enabled := False;
            end;

          end;
          Q.Free;
        end;
    1:  begin
          cxButtonEdit9.Text := '';
          cxButtonEdit15.Text := '';

          cxTextEdit1.Text := '';
          cxTextEdit1.Enabled := False;
        end;
  end;
end;

procedure TfmECPInvFreight.cxCheckBox1PropertiesChange(Sender: TObject);
begin
  cxButtonEdit9.Enabled := cxCheckBox1.Checked;
  cxButtonEdit15.Enabled := cxCheckBox1.Checked;
end;

procedure TfmECPInvFreight.cxCheckBox2PropertiesChange(Sender: TObject);
begin
  cxButtonEdit1.Enabled := cxCheckBox2.Checked;
  cxButtonEdit2.Enabled := cxCheckBox2.Checked;
end;

procedure TfmECPInvFreight.cxCheckBox3PropertiesChange(Sender: TObject);
begin
  cxButtonEdit4.Enabled := cxCheckBox3.Checked;
  cxButtonEdit3.Enabled := cxCheckBox3.Checked;
end;

procedure TfmECPInvFreight.cxCheckBox4PropertiesChange(Sender: TObject);
begin
  cxTextEdit2.Enabled := cxCheckBox4.Checked;
end;

procedure TfmECPInvFreight.cxCheckBox5PropertiesChange(Sender: TObject);
begin
  cxCurrencyEdit3.Enabled := cxCheckBox5.Checked;
end;

procedure TfmECPInvFreight.cxCheckBox6PropertiesChange(Sender: TObject);
begin
  cxButtonEdit5.Enabled := cxCheckBox6.Checked;
end;

procedure TfmECPInvFreight.cxCheckBox7PropertiesChange(Sender: TObject);
begin
  cxButtonEdit7.Enabled := cxCheckBox7.Checked;
end;

procedure TfmECPInvFreight.cxCheckBox8PropertiesChange(Sender: TObject);
begin
  cxButtonEdit10.Enabled := cxCheckBox8.Checked;
end;

end.
