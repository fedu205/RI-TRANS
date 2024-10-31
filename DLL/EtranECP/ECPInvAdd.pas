unit ECPInvAdd;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, ExtCtrls, cxGraphics, cxControls, cxLookAndFeels,
  cxLookAndFeelPainters, cxPC, cxContainer, cxEdit, cxTextEdit, cxMaskEdit,
  cxButtonEdit, cxCurrencyEdit, DB, DBClient, Raznoe, cxDropDownEdit, cxCalendar,
  ADODB, cxPropertiesStore, dxBarBuiltInMenu, Vcl.ComCtrls, dxCore, cxDateUtils,
  cxClasses, dxCalloutPopup, cxStyles, cxSchedulerStorage, DateUtils,
  cxSchedulerCustomControls, cxSchedulerDateNavigator, cxDateNavigator,
  cxSpinEdit, cxTimeEdit, dxBevel, Vcl.Menus, cxButtons, dxSkinsCore,
  dxSkinBlack, dxSkinBlue, dxSkinBlueprint, dxSkinCaramel, dxSkinCoffee,
  dxSkinDarkRoom, dxSkinDarkSide, dxSkinDevExpressDarkStyle,
  dxSkinDevExpressStyle, dxSkinFoggy, dxSkinGlassOceans, dxSkinHighContrast,
  dxSkiniMaginary, dxSkinLilian, dxSkinLiquidSky, dxSkinLondonLiquidSky,
  dxSkinMcSkin, dxSkinMetropolis, dxSkinMetropolisDark, dxSkinMoneyTwins,
  dxSkinOffice2007Black, dxSkinOffice2007Blue, dxSkinOffice2007Green,
  dxSkinOffice2007Pink, dxSkinOffice2007Silver, dxSkinOffice2010Black,
  dxSkinOffice2010Blue, dxSkinOffice2010Silver, dxSkinOffice2013DarkGray,
  dxSkinOffice2013LightGray, dxSkinOffice2013White, dxSkinOffice2016Colorful,
  dxSkinOffice2016Dark, dxSkinPumpkin, dxSkinSeven, dxSkinSevenClassic,
  dxSkinSharp, dxSkinSharpPlus, dxSkinSilver, dxSkinSpringTime, dxSkinStardust,
  dxSkinSummer2008, dxSkinTheAsphaltWorld, dxSkinsDefaultPainters,
  dxSkinValentine, dxSkinVisualStudio2013Blue, dxSkinVisualStudio2013Dark,
  dxSkinVisualStudio2013Light, dxSkinVS2010, dxSkinWhiteprint,
  dxSkinXmas2008Blue, dxSkinscxPCPainter, Default, dxSkinTheBezier, cxCheckBox;

type
  TfmECPInvAdd = class(TForm)
    Panel1: TPanel;
    BitBtn2: TBitBtn;
    BitBtn1: TBitBtn;
    Panel2: TPanel;
    cxPageControl1: TcxPageControl;
    cxTabSheet1: TcxTabSheet;
    cxTabSheet2: TcxTabSheet;
    cxTabSheet3: TcxTabSheet;
    cxTabSheet4: TcxTabSheet;
    cxTabSheet5: TcxTabSheet;
    cxTabSheet6: TcxTabSheet;
    cxTabSheet7: TcxTabSheet;
    Label4: TLabel;
    cxTextEdit2: TcxTextEdit;
    Label1: TLabel;
    cxTextEdit1: TcxTextEdit;
    Label2: TLabel;
    cxTextEdit3: TcxTextEdit;
    Label3: TLabel;
    cxTextEdit4: TcxTextEdit;
    Label5: TLabel;
    Label6: TLabel;
    cxTextEdit6: TcxTextEdit;
    Label7: TLabel;
    cxButtonEdit5: TcxButtonEdit;
    cxButtonEdit1: TcxButtonEdit;
    cxButtonEdit15: TcxButtonEdit;
    Label8: TLabel;
    cxButtonEdit2: TcxButtonEdit;
    Label9: TLabel;
    cxTextEdit5: TcxTextEdit;
    cxCurrencyEdit1: TcxCurrencyEdit;
    Label10: TLabel;
    cxButtonEdit3: TcxButtonEdit;
    cxButtonEdit9: TcxButtonEdit;
    Label18: TLabel;
    cxCurrencyEdit2: TcxCurrencyEdit;
    Label11: TLabel;
    cxButtonEdit4: TcxButtonEdit;
    Label12: TLabel;
    cxTextEdit7: TcxTextEdit;
    Label13: TLabel;
    Label14: TLabel;
    cxButtonEdit6: TcxButtonEdit;
    cxButtonEdit7: TcxButtonEdit;
    cxButtonEdit8: TcxButtonEdit;
    Label15: TLabel;
    cxTextEdit8: TcxTextEdit;
    Label16: TLabel;
    cxTextEdit9: TcxTextEdit;
    Label17: TLabel;
    cxCurrencyEdit3: TcxCurrencyEdit;
    Label19: TLabel;
    cxCurrencyEdit4: TcxCurrencyEdit;
    Label20: TLabel;
    Label21: TLabel;
    cxButtonEdit10: TcxButtonEdit;
    Label22: TLabel;
    Label23: TLabel;
    cxButtonEdit11: TcxButtonEdit;
    Label24: TLabel;
    Label25: TLabel;
    Label26: TLabel;
    cxCurrencyEdit5: TcxCurrencyEdit;
    cxDateEdit1: TcxDateEdit;
    cxPropertiesStore1: TcxPropertiesStore;
    cxTabSheet8: TcxTabSheet;
    Label27: TLabel;
    cxButtonEdit12: TcxButtonEdit;
    cxTextEdit12: TcxTextEdit;
    Label28: TLabel;
    cxTabSheet9: TcxTabSheet;
    Label29: TLabel;
    cxButtonEdit13: TcxButtonEdit;
    cxTextEdit13: TcxTextEdit;
    Label30: TLabel;
    cxTabSheet10: TcxTabSheet;
    cxButtonEdit14: TcxButtonEdit;
    Label31: TLabel;
    cxButtonEdit16: TcxButtonEdit;
    Label32: TLabel;
    cxButtonEdit17: TcxButtonEdit;
    Label33: TLabel;
    cxTextEdit14: TcxTextEdit;
    Label34: TLabel;
    cxCurrencyEdit6: TcxCurrencyEdit;
    Label35: TLabel;
    cxCurrencyEdit7: TcxCurrencyEdit;
    Label36: TLabel;
    dxCalloutPopup1: TdxCalloutPopup;
    cxTabSheet11: TcxTabSheet;
    Panel3: TPanel;
    cxDateNavigator1: TcxDateNavigator;
    cxClock1: TcxClock;
    cxTimeEdit1: TcxTimeEdit;
    Panel4: TPanel;
    dxBevel1: TdxBevel;
    dxBevel2: TdxBevel;
    cxButton1: TcxButton;
    cxButton2: TcxButton;
    cxButton3: TcxButton;
    cxButtonEdit18: TcxButtonEdit;
    Label37: TLabel;
    Label38: TLabel;
    cxDateEdit2: TcxDateEdit;
    Label39: TLabel;
    cxButtonEdit19: TcxButtonEdit;
    Label40: TLabel;
    cxTextEdit15: TcxTextEdit;
    cxButtonEdit20: TcxButtonEdit;
    cxCheckBox1: TcxCheckBox;
    cxButtonEdit21: TcxButtonEdit;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure BitBtn2Click(Sender: TObject);
    procedure cxButtonEdit5PropertiesButtonClick(Sender: TObject;
      AButtonIndex: Integer);
    procedure cxButtonEdit1PropertiesButtonClick(Sender: TObject;
      AButtonIndex: Integer);
    procedure cxButtonEdit2PropertiesButtonClick(Sender: TObject;
      AButtonIndex: Integer);
    procedure cxButtonEdit9PropertiesButtonClick(Sender: TObject;
      AButtonIndex: Integer);
    procedure cxButtonEdit4PropertiesButtonClick(Sender: TObject;
      AButtonIndex: Integer);
    procedure cxButtonEdit8PropertiesButtonClick(Sender: TObject;
      AButtonIndex: Integer);
    procedure cxButtonEdit7PropertiesButtonClick(Sender: TObject;
      AButtonIndex: Integer);
    procedure cxButtonEdit11PropertiesButtonClick(Sender: TObject;
      AButtonIndex: Integer);
    procedure cxButtonEdit10PropertiesButtonClick(Sender: TObject;
      AButtonIndex: Integer);
    procedure cxButtonEdit12PropertiesButtonClick(Sender: TObject;
      AButtonIndex: Integer);
    procedure cxButtonEdit13PropertiesButtonClick(Sender: TObject;
      AButtonIndex: Integer);
    procedure cxButtonEdit14PropertiesButtonClick(Sender: TObject;
      AButtonIndex: Integer);
    procedure cxButtonEdit16PropertiesButtonClick(Sender: TObject;
      AButtonIndex: Integer);
    procedure cxButtonEdit17PropertiesButtonClick(Sender: TObject;
      AButtonIndex: Integer);
    procedure dxCalloutPopup1Show(Sender: TObject);
    procedure cxDateNavigator1SelectionChanged(Sender: TObject; const AStart,
      AFinish: TDateTime);
    procedure cxTimeEdit1PropertiesChange(Sender: TObject);
    procedure cxButton2Click(Sender: TObject);
    procedure cxButton1Click(Sender: TObject);
    procedure cxButton3Click(Sender: TObject);
    procedure cxButtonEdit18PropertiesButtonClick(Sender: TObject;
      AButtonIndex: Integer);
    procedure cxButtonEdit19PropertiesButtonClick(Sender: TObject;
      AButtonIndex: Integer);
    procedure cxButtonEdit20PropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
    procedure cxButtonEdit21PropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
  private
    Fid            : integer;
    Ftype_action   : integer;
    FClientDS      : TClientDataSet;
    Ftype_document : integer;
    Fusr_pwd       : PUser_pwd;

    FcndClauseId : integer;
    FtranspClauseId : integer;
    FdevTypeID : integer;
    FdevOwnerTypeID : integer;
    FdocTypeID : integer;
    FspcTranspClauseID : integer;
    FclsTranspClauseID : integer;
    FinvFreight_id : integer;
    FsealTypeID : integer;
    FsealOwnerTypeID : integer;
    FsealRailwayID : integer;
    FDocumentID : integer;

    FspcCtrID   : integer;
    FspcToWash  : integer;

    FToStation_sucks_own_ways : string;

    procedure SetInvGuide(value: boolean);
    procedure SetInvCndBlock(value: boolean);
    procedure SetInvTranspClause(value: boolean);
    procedure SetInvFreightWeight(value: boolean);
    procedure SetInvDev(value: boolean);
    procedure SetInvDOC(value: boolean);
    procedure SetInvSPC(value: boolean);
    procedure SetFreightCLS(value: boolean);
    procedure SetUpdate(id: integer);
    procedure SetCarSPC(value: boolean);
    procedure SetCarCSL(value: boolean);
  public
    constructor Create(AOwner: TApplication; usr_pwd: PUser_pwd); reintroduce;
  published
    property _SetClientDS : TClientDataSet write FClientDS;

    property _SetInvGuide         : boolean write SetInvGuide;
    property _SetInvCndBlock      : boolean write SetInvCndBlock;
    property _SetInvTranspClause  : boolean write SetInvTranspClause;
    property _SetInvFreightWeight : boolean write SetInvFreightWeight;
    property _SetInvDev           : boolean write SetInvDev;
    property _SetInvDOC           : boolean write SetInvDOC;
    property _SetInvSPC           : boolean write SetInvSPC;
    property _SetFreightCLS       : boolean write SetFreightCLS;
    property _SetCarSPC           : boolean write SetCarSPC;
    property _SetCarCSL           : boolean write SetCarCSL;
    property _SetInvFreightId     : integer write FinvFreight_id;
    property _SetUpdate           : integer write SetUpdate;

    property _SetSucksOwnWays     : string write FToStation_sucks_own_ways;
  end;

var
  fmECPInvAdd: TfmECPInvAdd;

implementation

uses ECPMain, ECPFilter, ECPRepairContract, ECPCSN, ECPDoc;

{$R *.dfm}

constructor TfmECPInvAdd.Create(AOwner: TApplication; usr_pwd: PUser_pwd);
begin
  Screen.Cursor := crHourglass;
  inherited Create(AOwner);

  Ftype_action := 0;
  Ftype_document := -9;
  Fid       := -9;
  FClientDS := nil;
  Fusr_pwd  := usr_pwd;

  FcndClauseId := -9;
  FtranspClauseId := -9;
  FdevTypeID := -9;
  FdevOwnerTypeID := -9;
  FdocTypeID := -9;
  FspcTranspClauseID := -9;
  FclsTranspClauseID := -9;
  FspcTranspClauseID := -9;
  FsealTypeID := -9;
  FsealOwnerTypeID := -9;
  FsealRailwayID := -9;
  FDocumentID := -9;

  cxTabSheet1.TabVisible := False;
  cxTabSheet2.TabVisible := False;
  cxTabSheet3.TabVisible := False;
  cxTabSheet4.TabVisible := False;
  cxTabSheet5.TabVisible := False;
  cxTabSheet6.TabVisible := False;
  cxTabSheet7.TabVisible := False;
  cxTabSheet8.TabVisible := False;
  cxTabSheet9.TabVisible := False;
  cxTabSheet10.TabVisible := False;
  cxTabSheet11.TabVisible := False;

  Screen.Cursor := crDefault;
end;

procedure TfmECPInvAdd.SetUpdate(id: integer);
var Q: TADOQuery;
begin
  Fid := id;
  Ftype_action := 1;
  FClientDS.Locate('id', Fid, []);

  case Ftype_document of
    1:  begin
          cxTextEdit2.EditValue := FClientDS.FieldByName('guideFIO').Value;
          cxTextEdit1.EditValue := FClientDS.FieldByName('guidePassportSer').Value;
          cxTextEdit3.EditValue := FClientDS.FieldByName('guidePassportNum').Value;
          cxTextEdit4.EditValue := FClientDS.FieldByName('guideWarrantNum').Value;
        end;
    2:  begin
          FcndClauseId             := iif(FClientDS.FieldByName('cndClauseId').IsNull, -9, FClientDS.FieldByName('cndClauseId').Value);
          cxButtonEdit5.EditValue  := FClientDS.FieldByName('cndClauseName').Value;
          cxTextEdit6.EditValue    := FClientDS.FieldByName('cndClauseCustomText').Value;
          cxButtonEdit15.EditValue := FClientDS.FieldByName('cndFreightCode').Value;
          cxButtonEdit1.EditValue  := FClientDS.FieldByName('cndFreightName').Value;
        end;
    3:  begin
          FtranspClauseId         := iif(FClientDS.FieldByName('transpClauseId').IsNull, -9, FClientDS.FieldByName('transpClauseId').Value);
          cxButtonEdit2.EditValue := FClientDS.FieldByName('transpClauseName').Value;
          cxTextEdit5.EditValue   := FClientDS.FieldByName('transpClauseCustomText').Value;
        end;
    4:  begin
          cxButtonEdit3.EditValue   := FClientDS.FieldByName('freightCode').Value;
          cxButtonEdit9.EditValue   := FClientDS.FieldByName('freightName').Value;
          cxCurrencyEdit1.EditValue := FClientDS.FieldByName('freightWeight').Value;
          cxCurrencyEdit2.EditValue := FClientDS.FieldByName('freightRealWeight').Value;
        end;
    5:  begin
          FdevTypeID                := iif(FClientDS.FieldByName('devTypeID').IsNull, -9, FClientDS.FieldByName('devTypeID').Value);
          cxButtonEdit4.EditValue   := FClientDS.FieldByName('devTypeName').Value;
          cxTextEdit7.EditValue     := FClientDS.FieldByName('devNumber').Value;
          cxButtonEdit7.EditValue   := FClientDS.FieldByName('devOwnerCountryCode').Value;
          cxButtonEdit6.EditValue   := FClientDS.FieldByName('devOwnerCountryName').Value;
          FdevOwnerTypeID           := iif(FClientDS.FieldByName('devOwnerTypeID').IsNull, -9, FClientDS.FieldByName('devOwnerTypeID').Value);
          cxButtonEdit8.EditValue   := FClientDS.FieldByName('devOwnerTypeName').Value;
          cxTextEdit8.EditValue     := FClientDS.FieldByName('devOwnerOKPO').Value;
          cxTextEdit9.EditValue     := FClientDS.FieldByName('devOwnerName').Value;
          cxCurrencyEdit3.EditValue := FClientDS.FieldByName('devQuantity').Value;
          cxCurrencyEdit4.EditValue := FClientDS.FieldByName('devReturn').Value;
        end;
    6:  begin
          FdocTypeID                := iif(FClientDS.FieldByName('docTypeID'  ).IsNull, -9, FClientDS.FieldByName('docTypeID'  ).Value);
          cxButtonEdit11.EditValue  := FClientDS.FieldByName('docTypeName').Value;
          cxButtonEdit21.EditValue    := FClientDS.FieldByName('docNumber'  ).Value;
          cxDateEdit1.EditValue     := FClientDS.FieldByName('docDate'    ).Value;
          cxCurrencyEdit5.EditValue := FClientDS.FieldByName('dayCount'   ).Value;
          FDocumentID               := iif(FClientDS.FieldByName('DocumentID').IsNull, -9, FClientDS.FieldByName('DocumentID').Value);
        end;
    7:  begin
          FspcTranspClauseID     := iif(FClientDS.FieldByName('spcTranspClauseID').IsNull, -9, FClientDS.FieldByName('spcTranspClauseID').Value);
          cxButtonEdit10.EditValue := FClientDS.FieldByName('spcTranspClauseName').Value;
          cxButtonEdit18.EditValue := FClientDS.FieldByName('spcCustomText').Value;
          cxButtonEdit20.EditValue := FClientDS.FieldByName('spcNumber').Value;
          cxDateEdit2.EditValue := FClientDS.FieldByName('spcDate').Value;

          if (FspcTranspClauseID = 1143) then begin
              cxButtonEdit19.Visible := True;
              cxTextEdit15.Visible := True;

              cxButtonEdit19.EditValue := FClientDS.FieldByName('spcClaimNumber').Value;
              cxTextEdit15.EditValue   := FClientDS.FieldByName('spcNumOtp').Value;

              Label39.Visible := True;
              Label40.Visible := True;
            end else begin
              cxButtonEdit19.Visible := False;
              cxTextEdit15.Visible := False;
              Label39.Visible := False;
              Label40.Visible := False;
            end;
        end;
    20: begin
          FclsTranspClauseID     := iif(FClientDS.FieldByName('clsTranspClauseID').IsNull, -9, FClientDS.FieldByName('clsTranspClauseID').Value);
          cxButtonEdit12.EditValue := FClientDS.FieldByName('clsTranspClauseName').Value;
          cxTextEdit12.EditValue := FClientDS.FieldByName('clsCustomText').Value;
        end;
    25: begin
          FspcTranspClauseID := iif(FClientDS.FieldByName('spcTranspClauseID').IsNull, -9, FClientDS.FieldByName('spcTranspClauseID').Value);
          cxButtonEdit13.EditValue := FClientDS.FieldByName('spcTranspClauseName').Value;
          cxTextEdit13.Text := FClientDS.FieldByName('spcCustomText').Value;
        end;
    26: begin
          FsealTypeID := iif(FClientDS.FieldByName('sealTypeID').IsNull, -9, FClientDS.FieldByName('sealTypeID').Value);
          cxButtonEdit14.EditValue := FClientDS.FieldByName('sealTypeName').Value;
          cxTextEdit14.EditValue := FClientDS.FieldByName('sealMarks').Value;
          cxCurrencyEdit6.EditValue := FClientDS.FieldByName('sealQuantity').Value;
          cxCurrencyEdit7.EditValue := FClientDS.FieldByName('sealYear').Value;
          FsealOwnerTypeID := iif(FClientDS.FieldByName('sealOwnerTypeID').IsNull, -9, FClientDS.FieldByName('sealOwnerTypeID').Value);
          cxButtonEdit16.EditValue := FClientDS.FieldByName('sealOwnerTypeName').Value;
          FsealRailwayID := iif(FClientDS.FieldByName('sealRailwayID').IsNull, -9, FClientDS.FieldByName('sealRailwayID').Value);
          cxButtonEdit17.EditValue := FClientDS.FieldByName('sealRailwayName').Value;
        end;
  end;
end;

procedure TfmECPInvAdd.cxButton1Click(Sender: TObject);
begin
  cxDateNavigator1.Date := Date;
end;

procedure TfmECPInvAdd.cxButton2Click(Sender: TObject);
begin
  cxButtonEdit18.EditValue := DateToStr(cxDateNavigator1.Date) + ' ' + TimeToStr(cxTimeEdit1.Time);
  dxCalloutPopup1.Close;
end;

procedure TfmECPInvAdd.cxButton3Click(Sender: TObject);
begin
  cxDateNavigator1.Date := Date;
  cxTimeEdit1.Time := IncHour(Time,4);
  cxButtonEdit18.EditValue := DateToStr(cxDateNavigator1.Date) + ' ' + TimeToStr(cxTimeEdit1.Time);
  dxCalloutPopup1.Close;
end;

procedure TfmECPInvAdd.cxButtonEdit10PropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
var Q: TADOQuery;
begin
  case AButtonIndex of
    0:  begin
          Q := TADOQuery.Create(nil);
          Q.Connection := fmECPMain.ADOEtran;
          Q.SQL.Add('SELECT * FROM etran_nsi_inf_obj WHERE type_inf_id = 24 and etran_nsi_id <> 14 AND inf_obj_cod in (''1'',''4'',''5'') ');
          Q.SQL.Add('AND getdate() between inf_obj_xml.value(''(row/RECDATEBEGIN/@value)[1]'',''datetime'') and inf_obj_xml.value(''(row/RECDATEEND/@value)[1]'',''datetime'')');
          Q.Open;
          fmECPFilter := TfmECPFilter.Create(nil, Q);
          fmECPFilter._SetFilter := 'Документ';
          if fmECPFilter.ShowModal = mrOk then begin
            FspcTranspClauseID := fmECPFilter._GetID;
            cxButtonEdit10.Text := fmECPFilter._GetName;

            if (FspcTranspClauseID = 1222) and (FToStation_sucks_own_ways <> '') then
              cxButtonEdit18.EditValue := FToStation_sucks_own_ways;

            if (FspcTranspClauseID = 1303) then begin
              FspcCtrID   := -9;
              FspcToWash  := 0;
              cxButtonEdit20.EditValue  := null;
              cxDateEdit2.EditValue     := null;
              cxCheckBox1.Checked       := False;
            end else begin
              FspcCtrID   := -9;
              FspcToWash  := 0;
              cxButtonEdit20.EditValue  := null;
              cxDateEdit2.EditValue     := null;
              cxCheckBox1.Checked       := False;
            end;

            if (FspcTranspClauseID = 1143) then begin
              cxButtonEdit19.Visible := True;
              cxTextEdit15.Visible := True;
              Label39.Visible := True;
              Label40.Visible := True;
            end else begin
              cxButtonEdit19.Visible := False;
              cxTextEdit15.Visible := False;
              Label39.Visible := False;
              Label40.Visible := False;
            end;
          end;
          Q.Free;
        end;
    1:  begin
          FspcTranspClauseID := -9;
          cxButtonEdit10.Text := '';
        end;
  end;
end;

procedure TfmECPInvAdd.cxButtonEdit11PropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
var Q: TADOQuery;
begin
  case AButtonIndex of
    0:  begin
          Q := TADOQuery.Create(nil);
          Q.Connection := fmECPMain.ADOEtran;
          Q.SQL.Add('SELECT * FROM etran_nsi_inf_obj WHERE type_inf_id = 24 AND inf_obj_cod in (''7'',''13'') ');
          Q.SQL.Add('AND getdate() between inf_obj_xml.value(''(row/RECDATEBEGIN/@value)[1]'',''datetime'') and inf_obj_xml.value(''(row/RECDATEEND/@value)[1]'',''datetime'')');
          Q.Open;
          fmECPFilter := TfmECPFilter.Create(nil, Q);
          fmECPFilter._SetFilter := 'Документ';
          if fmECPFilter.ShowModal = mrOk then begin
            FdocTypeID := fmECPFilter._GetID;
            cxButtonEdit11.Text := fmECPFilter._GetName;
          end;
          Q.Free;
        end;
    1:  begin
          FdocTypeID := -9;
          cxButtonEdit11.Text := '';
        end;
  end;
end;

procedure TfmECPInvAdd.cxButtonEdit12PropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
var Q: TADOQuery;
begin
  case AButtonIndex of
    0:  begin
          Q := TADOQuery.Create(nil);
          Q.Connection := fmECPMain.ADOEtran;
          Q.SQL.Add('SELECT	etran_nsi_inf_obj.*, x1.inf_obj_name as nm');
          Q.SQL.Add('FROM	  etran_nsi_inf_obj');
          Q.SQL.Add('   		left join (SELECT etran_nsi_id, inf_obj_name FROM etran_nsi_inf_obj where type_inf_id = 27 AND inf_obj_cod = 107 AND etran_nsi_id IN (1,4,5)) x1 on');
          Q.SQL.Add('     	etran_nsi_inf_obj.inf_obj_cod = x1.etran_nsi_id');
          Q.SQL.Add('WHERE	type_inf_id = 24 and inf_obj_xml.value(''(/row/STAMPPRINTPLACE_ID/@value)[1]'', ''int'') = 5 AND inf_obj_cod in (''1'',''4'',''5'')');
          Q.SQL.Add('AND getdate() between inf_obj_xml.value(''(row/RECDATEBEGIN/@value)[1]'',''datetime'') and inf_obj_xml.value(''(row/RECDATEEND/@value)[1]'',''datetime'')');
          Q.Open;
          fmECPFilter := TfmECPFilter.Create(nil, Q);
          fmECPFilter._SetClsTranspClause := True;
          if fmECPFilter.ShowModal = mrOk then begin
            FclsTranspClauseID := fmECPFilter._GetID;
            cxButtonEdit12.Text := fmECPFilter._GetName;
          end;
          Q.Free;
        end;
    1:  begin
          FclsTranspClauseID := -9;
          cxButtonEdit12.Text := '';
        end;
  end;
end;

procedure TfmECPInvAdd.cxButtonEdit13PropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
var Q: TADOQuery;
begin
  case AButtonIndex of
    0:  begin
          Q := TADOQuery.Create(nil);
          Q.Connection := fmECPMain.ADOEtran;
          Q.SQL.Add('SELECT	etran_nsi_inf_obj.*, x1.inf_obj_name as nm');
          Q.SQL.Add('FROM	  etran_nsi_inf_obj');
          Q.SQL.Add('   		left join (SELECT etran_nsi_id, inf_obj_name FROM etran_nsi_inf_obj where type_inf_id = 27 AND inf_obj_cod = 107 AND etran_nsi_id IN (8,9,11,12)) x1 on');
          Q.SQL.Add('     	etran_nsi_inf_obj.inf_obj_cod = x1.etran_nsi_id');
          Q.SQL.Add('WHERE	type_inf_id = 24 AND inf_obj_cod in (''8'',''9'',''11'',''12'')');
          Q.SQL.Add('AND getdate() between inf_obj_xml.value(''(row/RECDATEBEGIN/@value)[1]'',''datetime'') and inf_obj_xml.value(''(row/RECDATEEND/@value)[1]'',''datetime'')');
          Q.Open;
          fmECPFilter := TfmECPFilter.Create(nil, Q);
          fmECPFilter._SetSpcTranspClause := True;
          if fmECPFilter.ShowModal = mrOk then begin
            FspcTranspClauseID := fmECPFilter._GetID;
            cxButtonEdit13.Text := fmECPFilter._GetName;
          end;
          Q.Free;
        end;
    1:  begin
          FspcTranspClauseID := -9;
          cxButtonEdit13.Text := '';
        end;
  end;
end;

procedure TfmECPInvAdd.cxButtonEdit14PropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
var Q: TADOQuery;
    str_find: string;
begin
  case AButtonIndex of
    0:  begin
          Q := TADOQuery.Create(nil);
          Q.Connection := fmECPMain.ADOEtran;
          Q.SQL.Add('SELECT etran_nsi_id, inf_obj_name, inf_obj_cod FROM dbo.ETRAN_NSI_INF_OBJ WHERE type_inf_id = 22');

          if InputQuery('Поиск', 'Поиск по НАИМЕНОВАНИЮ:', str_find) then begin
            Q.SQL.Add('AND inf_obj_name like ''%' + str_find + '%''');
          end else exit;

          Q.Open;
          fmECPFilter := TfmECPFilter.Create(nil, Q);
          fmECPFilter._SetFilterCod := 'Тип ЗПУ';
          if fmECPFilter.ShowModal = mrOk then begin
            cxButtonEdit14.Text:= fmECPFilter._GetName;
            FsealTypeID := fmECPFilter._GetId;
          end;
          Q.Free;
        end;
    1:  begin
          cxButtonEdit14.Text := '';
          FsealTypeID := -9;
        end;
  end;
end;

procedure TfmECPInvAdd.cxButtonEdit16PropertiesButtonClick(Sender: TObject;  AButtonIndex: Integer);
var Q: TADOQuery;
begin
  case AButtonIndex of
    0:  begin
          Q := TADOQuery.Create(nil);
          Q.Connection := fmECPMain.ADOEtran;
          Q.SQL.Add('SELECT * FROM etran_nsi_inf_obj WHERE type_inf_id = 27 AND inf_obj_cod in (''150'') ');
          Q.Open;
          fmECPFilter := TfmECPFilter.Create(nil, Q);
          fmECPFilter._SetFilter := 'Тип собственности ЗПУ';
          if fmECPFilter.ShowModal = mrOk then begin
            FsealOwnerTypeID := fmECPFilter._GetID;
            cxButtonEdit16.Text := fmECPFilter._GetName;
          end;
          Q.Free;
        end;
    1:  begin
          FsealOwnerTypeID := -9;
          cxButtonEdit16.Text := '';
        end;
  end;
end;

procedure TfmECPInvAdd.cxButtonEdit17PropertiesButtonClick(Sender: TObject;
  AButtonIndex: Integer);
var Q: TADOQuery;
    str_find: string;
begin
  case AButtonIndex of
    0:  begin
          Q := TADOQuery.Create(nil);
          Q.Connection := fmECPMain.ADOEtran;
          Q.SQL.Add('SELECT etran_nsi_id, inf_obj_name, inf_obj_cod FROM dbo.ETRAN_NSI_INF_OBJ WHERE type_inf_id = 5');

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
          fmECPFilter._SetFilterCod := 'Ж/д ЗПУ';
          if fmECPFilter.ShowModal = mrOk then begin
            cxButtonEdit17.Text:= fmECPFilter._GetName;
            FsealRailwayID := fmECPFilter._GetId;
          end;
          Q.Free;
        end;
    1:  begin
          cxButtonEdit17.Text := '';
          FsealRailwayID := -9;
        end;
  end;
end;

procedure TfmECPInvAdd.cxButtonEdit18PropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
begin
  dxCalloutPopup1.Popup(TWinControl(Sender));
end;

procedure TfmECPInvAdd.cxButtonEdit19PropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
type
  TFunc = function(AHandle: THandle; users_group_cod: string; usr_pwd: PUser_pwd; flag: boolean) : variant;
var
           FEtran : TFunc;
           handle : THandle;
                v : variant;
            Query : TADOQuery;
  users_group_cod : string;
          connect : TADOConnection;
begin
  case AButtonIndex of
    0:  begin
        Screen.Cursor := crHourglass;

        connect := TADOConnection.Create(nil);
        connect.ConnectionString := 'Persist Security Info=True;Provider=SQLOLEDB.1;User ID='+Fusr_pwd^.user_name+';Password='+Fusr_pwd^.user_pass+';Initial Catalog='+Fusr_pwd^.catalog+';Data Source='+Fusr_pwd^.server+';';
        connect.KeepConnection   := False;
        connect.LoginPrompt      := False;

        Query := TADOQuery.Create(nil);
        Query.Connection := connect;
        Query.SQL.Add('SELECT	inf_obj_cod as users_group_cod');
        Query.SQL.Add('FROM	  users INNER JOIN inf_obj on users.users_group_id = inf_obj.inf_obj_id');
        Query.SQL.Add('WHERE	users_name = system_user');
        Query.Open;
        users_group_cod := Query.FieldByName('users_group_cod').AsString;
        Query.Free;
        connect.Free;

        Screen.Cursor := crdefault;


        handle := LoadLibrary('etran.dll');
        @FEtran := GetProcAddress(handle, 'CreateWndEtranOtstClaim');
        v := FEtran(Application.Handle, users_group_cod, Fusr_pwd, True);
        FreeLibrary(handle);

        cxButtonEdit19.EditValue := v[0];
        cxTextEdit15.EditValue   := v[2];
        cxButtonEdit18.EditValue := 'Отстой по дог-ру №' + v[3] + ' от ' + FormatDateTime('dd mm yy', v[4]) + '. По заявке №' + v[0] + ' от ' + FormatDateTime('dd mm yy', v[1]) + '.'
    end;
    1: begin
      cxButtonEdit19.EditValue := null;
      cxTextEdit15.EditValue   := null;
    end;
  end;
end;

procedure TfmECPInvAdd.cxButtonEdit1PropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
var Q: TADOQuery;
    str_find: string;
begin
  case AButtonIndex of
    0:  begin
          Q := TADOQuery.Create(nil);
          Q.Connection := fmECPMain.ADOEtran;
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
            cxButtonEdit1.Text:= fmECPFilter._GetName;
            cxButtonEdit15.Text:= fmECPFilter._GetCod;
          end;
          Q.Free;
        end;
    1:  begin
          cxButtonEdit1.Text := '';
          cxButtonEdit15.Text := '';
        end;
  end;
end;

procedure TfmECPInvAdd.cxButtonEdit20PropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
begin
//  fmECPRepairContract := TfmECPRepairContract.Create(Application, True, '35', Fusr_pwd);
//  if fmECPRepairContract.ShowModal = mrOk then begin
//    ShowMessage(IntToStr(fmECPRepairContract._GetContractID));
//  end;

end;

procedure TfmECPInvAdd.cxButtonEdit21PropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
begin
  case AButtonIndex of
    0:  begin
          fmECPDoc := TfmECPDoc.Create(Application, '35', Fusr_pwd);
          fmECPDoc._SetModal := True;
          fmECPDoc._SetFirm := 1; // Aura
          if fmECPDoc.ShowModal = mrOk then begin
//            FDocumentID := fmECPDoc._GetID;
            cxButtonEdit21.Text := fmECPDoc._GetName;
            cxDateEdit1.EditValue := fmECPDoc._GetDate;
            cxCurrencyEdit5.EditValue := 5;
          end;
        end;
    1:  begin
//          FDocumentID := -9;
          cxButtonEdit21.Text := '';
        end;
  end;

//  case AButtonIndex of
//    0:  begin
//          fmECPCSN := TfmECPCSN.Create(Application, '35', Fusr_pwd);
//          fmECPCSN._SetModal := True;
//          if fmECPCSN.ShowModal = mrOk then begin
//            FDocumentID := fmECPCSN._GetID;
//            cxButtonEdit21.Text := fmECPCSN._GetName;
//          end;
//        end;
//    1:  begin
//          FDocumentID := -9;
//          cxButtonEdit21.Text := '';
//        end;
//  end;
end;

procedure TfmECPInvAdd.cxButtonEdit2PropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
var Q: TADOQuery;
begin
  case AButtonIndex of
    0:  begin
          Q := TADOQuery.Create(nil);
          Q.Connection := fmECPMain.ADOEtran;
          Q.SQL.Add('SELECT * FROM etran_nsi_inf_obj WHERE type_inf_id = 24 and etran_nsi_id <> 14 and inf_obj_cod = ''2''');
          Q.SQL.Add('AND getdate() between inf_obj_xml.value(''(row/RECDATEBEGIN/@value)[1]'',''datetime'') and inf_obj_xml.value(''(row/RECDATEEND/@value)[1]'',''datetime'')');
          Q.Open;
          fmECPFilter := TfmECPFilter.Create(nil, Q);
          fmECPFilter._SetFilter := 'Особая отметка';
          if fmECPFilter.ShowModal = mrOk then begin
            FtranspClauseId := fmECPFilter._GetID;
            cxButtonEdit2.Text := fmECPFilter._GetName;
          end;
          Q.Free;
        end;
    1:  begin
          FtranspClauseId := -9;
          cxButtonEdit2.Text := '';
        end;
  end;
end;

procedure TfmECPInvAdd.cxButtonEdit4PropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
var Q: TADOQuery;
begin
  case AButtonIndex of
    0:  begin
          Q := TADOQuery.Create(nil);
          Q.Connection := fmECPMain.ADOEtran;
          Q.SQL.Add('SELECT * FROM etran_nsi_inf_obj WHERE type_inf_id = 21');
          Q.Open;
          fmECPFilter := TfmECPFilter.Create(nil, Q);
          fmECPFilter._SetFilter := 'Тип перевозочного приспособления';
          if fmECPFilter.ShowModal = mrOk then begin
            FdevTypeID := fmECPFilter._GetID;
            cxButtonEdit4.Text := fmECPFilter._GetName;
          end;
          Q.Free;
        end;
    1:  begin
          FdevTypeID := -9;
          cxButtonEdit4.Text := '';
        end;
  end;
end;

procedure TfmECPInvAdd.cxButtonEdit5PropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
var Q: TADOQuery;
begin
  case AButtonIndex of
    0:  begin
          Q := TADOQuery.Create(nil);
          Q.Connection := fmECPMain.ADOEtran;
          Q.SQL.Add('SELECT * FROM etran_nsi_inf_obj WHERE type_inf_id = 24 and etran_nsi_id = 14');
          Q.SQL.Add('AND getdate() between inf_obj_xml.value(''(row/RECDATEBEGIN/@value)[1]'',''datetime'') and inf_obj_xml.value(''(row/RECDATEEND/@value)[1]'',''datetime'')');
          Q.Open;
          fmECPFilter := TfmECPFilter.Create(nil, Q);
          fmECPFilter._SetFilter := 'Особая отметка';
          if fmECPFilter.ShowModal = mrOk then begin
            FcndClauseId := fmECPFilter._GetID;
            cxButtonEdit5.Text := fmECPFilter._GetName;
          end;
          Q.Free;
        end;
    1:  begin
          FcndClauseId := -9;
          cxButtonEdit5.Text := '';
        end;
  end;
end;

procedure TfmECPInvAdd.cxButtonEdit7PropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
var Q: TADOQuery;
    str_find: string;
begin
  case AButtonIndex of
    0:  begin
          Q := TADOQuery.Create(nil);
          Q.Connection := fmECPMain.ADOEtran;
          Q.SQL.Add('SELECT etran_nsi_id, inf_obj_name, inf_obj_cod FROM dbo.ETRAN_NSI_INF_OBJ WHERE type_inf_id = 13');

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
          fmECPFilter._SetFilterCod := 'Страна';
          if fmECPFilter.ShowModal = mrOk then begin
            cxButtonEdit6.Text:= fmECPFilter._GetName;
            cxButtonEdit7.Text:= fmECPFilter._GetCod;
          end;
          Q.Free;
        end;
    1:  begin
          cxButtonEdit6.Text := '';
          cxButtonEdit7.Text := '';
        end;
  end;
end;

procedure TfmECPInvAdd.cxButtonEdit8PropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
var Q: TADOQuery;
begin
  case AButtonIndex of
    0:  begin
          Q := TADOQuery.Create(nil);
          Q.Connection := fmECPMain.ADOEtran;
          Q.SQL.Add('SELECT * FROM dbo.ETRAN_NSI_INF_OBJ WHERE type_inf_id = 27 AND inf_obj_cod = ''7''');
          Q.Open;
          fmECPFilter := TfmECPFilter.Create(nil, Q);
          fmECPFilter._SetFilter := 'Тип собственности';
          if fmECPFilter.ShowModal = mrOk then begin
            FdevOwnerTypeID := fmECPFilter._GetID;
            cxButtonEdit8.Text := fmECPFilter._GetName;
          end;
          Q.Free;
        end;
    1:  begin
          FdevOwnerTypeID := -9;
          cxButtonEdit8.Text := '';
        end;
  end;
end;

procedure TfmECPInvAdd.cxButtonEdit9PropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
var Q: TADOQuery;
    str_find: string;
begin
  case AButtonIndex of
    0:  begin
          Q := TADOQuery.Create(nil);
          Q.Connection := fmECPMain.ADOEtran;
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
            cxButtonEdit3.Text:= fmECPFilter._GetCod;
          end;
          Q.Free;
        end;
    1:  begin
          cxButtonEdit9.Text := '';
          cxButtonEdit3.Text := '';
        end;
  end;
end;

procedure TfmECPInvAdd.cxDateNavigator1SelectionChanged(Sender: TObject; const AStart, AFinish: TDateTime);
begin
  Panel4.Caption := DateToStr(cxDateNavigator1.Date) + ' ' + TimeToStr(cxTimeEdit1.Time);
end;

procedure TfmECPInvAdd.cxTimeEdit1PropertiesChange(Sender: TObject);
begin
  Panel4.Caption := DateToStr(cxDateNavigator1.Date) + ' ' + TimeToStr(cxTimeEdit1.Time);
end;

procedure TfmECPInvAdd.dxCalloutPopup1Show(Sender: TObject);
begin
  cxDateNavigator1.Date := Date;
  cxTimeEdit1.Time := Time;
  Panel4.Caption := DateToStr(cxDateNavigator1.Date) + ' ' + TimeToStr(cxTimeEdit1.Time);
end;

procedure TfmECPInvAdd.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action := caFree;
end;

procedure TfmECPInvAdd.SetInvGuide(value: boolean);
begin
  if value = True then begin
    cxTabSheet1.Visible := True;
    cxPageControl1.ActivePage := cxTabSheet1;
    Ftype_document := 1;
    Caption := cxPageControl1.ActivePage.Caption;
  end;
end;

procedure TfmECPInvAdd.SetInvCndBlock(value: boolean);
begin
  if value = True then begin
    cxTabSheet2.Visible := True;
    cxPageControl1.ActivePage := cxTabSheet2;
    Ftype_document := 2;
    Caption := cxPageControl1.ActivePage.Caption;
  end;
end;

procedure TfmECPInvAdd.SetInvTranspClause(value: boolean);
begin
  if value = True then begin
    cxTabSheet3.Visible := True;
    cxPageControl1.ActivePage := cxTabSheet3;
    Ftype_document := 3;
    Caption := cxPageControl1.ActivePage.Caption;
  end;
end;

procedure TfmECPInvAdd.SetInvFreightWeight(value: boolean);
begin
  if value = True then begin
    cxTabSheet4.Visible := True;
    cxPageControl1.ActivePage := cxTabSheet4;
    Ftype_document := 4;
    Caption := cxPageControl1.ActivePage.Caption;
  end;
end;

procedure TfmECPInvAdd.SetInvDev(value: boolean);
begin
  if value = True then begin
    cxTabSheet5.Visible := True;
    cxPageControl1.ActivePage := cxTabSheet5;
    Ftype_document := 5;
    Caption := cxPageControl1.ActivePage.Caption;
  end;
end;

procedure TfmECPInvAdd.SetInvDOC(value: boolean);
begin
  if value = True then begin
    cxTabSheet6.Visible := True;
    cxPageControl1.ActivePage := cxTabSheet6;
    Ftype_document := 6;
    Caption := cxPageControl1.ActivePage.Caption;
  end;
end;

procedure TfmECPInvAdd.SetInvSPC(value: boolean);
begin
  if value = True then begin
    cxTabSheet7.Visible := True;
    cxPageControl1.ActivePage := cxTabSheet7;
    Ftype_document := 7;
    Caption := cxPageControl1.ActivePage.Caption;
  end;
end;


procedure TfmECPInvAdd.SetFreightCLS(value: boolean);
begin
  if value = True then begin
    cxTabSheet8.Visible := True;
    cxPageControl1.ActivePage := cxTabSheet8;
    Ftype_document := 20;
    Caption := cxPageControl1.ActivePage.Caption;
  end;
end;

procedure TfmECPInvAdd.SetCarSPC(value: boolean);
begin
  if value = True then begin
    cxTabSheet9.Visible := True;
    cxPageControl1.ActivePage := cxTabSheet9;
    Ftype_document := 25;
    Caption := cxPageControl1.ActivePage.Caption;
  end;
end;

procedure TfmECPInvAdd.SetCarCSL(value: boolean);
begin
  if value = True then begin
    cxTabSheet10.Visible := True;
    cxPageControl1.ActivePage := cxTabSheet10;
    Ftype_document := 26;
    Caption := cxPageControl1.ActivePage.Caption;
  end;
end;

procedure TfmECPInvAdd.BitBtn2Click(Sender: TObject);
begin
  if Ftype_action = 0 then begin
    FClientDS.Append;
  end else begin
    FClientDS.Locate('id', Fid, []);
    FClientDS.Edit;
  end;

  case Ftype_document of
    1:  begin
          FClientDS.FieldByName('guideFIO').Value         := iif(cxTextEdit2.Text = '', null, cxTextEdit2.Text);
          FClientDS.FieldByName('guidePassportSer').Value := iif(cxTextEdit1.Text = '', null, cxTextEdit1.Text);
          FClientDS.FieldByName('guidePassportNum').Value := iif(cxTextEdit3.Text = '', null, cxTextEdit3.Text);
          FClientDS.FieldByName('guideWarrantNum').Value  := iif(cxTextEdit4.Text = '', null, cxTextEdit4.Text);
        end;
    2:  begin
          FClientDS.FieldByName('cndClauseId').Value         := iif(FcndClauseId = -9, null, FcndClauseId);
          FClientDS.FieldByName('cndClauseName').Value       := cxButtonEdit5.EditValue;
          FClientDS.FieldByName('cndClauseCustomText').Value := iif(cxTextEdit6.Text = '', null, cxTextEdit6.Text);
          FClientDS.FieldByName('cndFreightCode').Value      := cxButtonEdit15.EditValue;
          FClientDS.FieldByName('cndFreightName').Value      := cxButtonEdit1.EditValue;
        end;
    3:  begin
          FClientDS.FieldByName('transpClauseId'  ).Value       := iif(FtranspClauseId = -9, null, FtranspClauseId);
          FClientDS.FieldByName('transpClauseName').Value       := cxButtonEdit2.EditValue;
          FClientDS.FieldByName('transpClauseCustomText').Value := iif(cxTextEdit5.Text = '', null, cxTextEdit5.Text);
        end;
    4:  begin
          FClientDS.FieldByName('freightCode').Value       := cxButtonEdit3.EditValue;
          FClientDS.FieldByName('freightName').Value       := cxButtonEdit9.EditValue;
          FClientDS.FieldByName('freightWeight').Value     := cxCurrencyEdit1.EditValue;
          FClientDS.FieldByName('freightRealWeight').Value := cxCurrencyEdit2.EditValue;
        end;
    5:  begin
          FClientDS.FieldByName('devTypeID').Value           := iif(FdevTypeID = -9, null, FdevTypeID);
          FClientDS.FieldByName('devTypeName').Value         := cxButtonEdit4.EditValue;
          FClientDS.FieldByName('devNumber').Value           := iif(cxTextEdit7.Text = '', null, cxTextEdit7.Text);
          FClientDS.FieldByName('devOwnerCountryCode').Value := cxButtonEdit7.EditValue;
          FClientDS.FieldByName('devOwnerCountryName').Value := cxButtonEdit6.EditValue;
          FClientDS.FieldByName('devOwnerTypeID').Value      := iif(FdevOwnerTypeID = -9, null, FdevOwnerTypeID);
          FClientDS.FieldByName('devOwnerTypeName').Value    := cxButtonEdit8.EditValue;
          FClientDS.FieldByName('devOwnerOKPO').Value        := iif(cxTextEdit8.Text = '', null, cxTextEdit8.Text);
          FClientDS.FieldByName('devOwnerName').Value        := iif(cxTextEdit9.Text = '', null, cxTextEdit9.Text);
          FClientDS.FieldByName('devQuantity').Value         := cxCurrencyEdit3.EditValue;
          FClientDS.FieldByName('devReturn').Value           := cxCurrencyEdit4.EditValue;
        end;
    6:  begin
          FClientDS.FieldByName('docTypeID'  ).Value := iif(FdocTypeID = -9, null, FdocTypeID);
          FClientDS.FieldByName('docTypeName').Value := cxButtonEdit11.EditValue;
          FClientDS.FieldByName('docNumber'  ).Value := iif(cxButtonEdit21.Text = '', null, cxButtonEdit21.Text);
          FClientDS.FieldByName('docDate'    ).Value := cxDateEdit1.EditValue;
          FClientDS.FieldByName('dayCount'   ).Value := cxCurrencyEdit5.EditValue;
          FClientDS.FieldByName('DocumentID' ).Value := iif(FDocumentID = -9, null, FDocumentID);
        end;
    7:  begin
          FClientDS.FieldByName('spcTranspClauseID'  ).Value := iif(FspcTranspClauseID = -9, null, FspcTranspClauseID);
          FClientDS.FieldByName('spcTranspClauseName').Value := cxButtonEdit10.EditValue;
          FClientDS.FieldByName('spcCustomText'      ).Value := iif(cxButtonEdit18.Text = '', null, cxButtonEdit18.Text);
          FClientDS.FieldByName('spcNumber'          ).Value := iif(cxButtonEdit20.Text = '', null, cxButtonEdit20.Text);
          FClientDS.FieldByName('spcDate'            ).Value := iif(cxDateEdit2.Text = '', null, cxDateEdit2.Text);

          if FspcTranspClauseID = 1143 then begin
            FClientDS.FieldByName('spcClaimNumber'     ).Value := iif(cxButtonEdit19.Text = '', null, cxButtonEdit19.Text);
            FClientDS.FieldByName('spcNumOtp'          ).Value := iif(cxTextEdit15.Text = '', null, cxTextEdit15.Text);
          end;
        end;
    20: begin
          FClientDS.FieldByName('invFreight_id'      ).Value := FinvFreight_id;
          FClientDS.FieldByName('clsTranspClauseID'  ).Value := iif(FclsTranspClauseID = -9, null, FclsTranspClauseID);
          FClientDS.FieldByName('clsTranspClauseName').Value := cxButtonEdit12.EditValue;
          FClientDS.FieldByName('clsCustomText'      ).Value := iif(cxTextEdit12.Text = '', null, cxTextEdit12.Text);
        end;
    25: begin
          FClientDS.FieldByName('spcTranspClauseID'  ).Value := iif(FspcTranspClauseID = -9, null, FspcTranspClauseID);
          FClientDS.FieldByName('spcTranspClauseName').Value := cxButtonEdit13.EditValue;
          FClientDS.FieldByName('spcCustomText'      ).Value := iif(cxTextEdit13.Text = '', null, cxTextEdit13.Text);
        end;
    26: begin
          FClientDS.FieldByName('sealTypeID'        ).Value := iif(FsealTypeID = -9, null, FsealTypeID);
          FClientDS.FieldByName('sealTypeName'      ).Value := cxButtonEdit14.EditValue;
          FClientDS.FieldByName('sealMarks'         ).Value := cxTextEdit14.EditValue;
          FClientDS.FieldByName('sealQuantity'      ).Value := cxCurrencyEdit6.EditValue;
          FClientDS.FieldByName('sealYear'          ).Value := cxCurrencyEdit7.EditValue;
          FClientDS.FieldByName('sealOwnerTypeID'   ).Value := iif(FsealOwnerTypeID = -9, null, FsealOwnerTypeID);
          FClientDS.FieldByName('sealOwnerTypeName' ).Value := cxButtonEdit16.EditValue;
          FClientDS.FieldByName('sealRailwayID'     ).Value := iif(FsealRailwayID = -9, null, FsealRailwayID);
          FClientDS.FieldByName('sealRailwayName'   ).Value := cxButtonEdit17.EditValue;
        end;
  end;

  FClientDS.Post;
end;


end.
