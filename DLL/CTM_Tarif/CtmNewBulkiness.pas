unit CtmNewBulkiness;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, ExtCtrls, cxGraphics, cxControls, cxLookAndFeels,
  cxLookAndFeelPainters, cxStyles, dxSkinsCore, dxSkinBlack, dxSkinBlue,
  dxSkinBlueprint, dxSkinCaramel, dxSkinCoffee, dxSkinDarkRoom, dxSkinDarkSide,
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
  dxSkinXmas2008Blue, dxSkinscxPCPainter, cxCustomData, cxFilter, cxData,
  cxDataStorage, cxEdit, cxNavigator, DB, cxDBData, DBClient,
  cxGridCustomTableView, cxGridTableView, cxGridBandedTableView,
  cxGridDBBandedTableView, ADODB, cxGridCustomView, cxClasses, cxGridLevel,
  cxGrid, Default, cxCheckBox, cxContainer, cxTextEdit, cxLabel,
  cxPropertiesStore, cxDataControllerConditionalFormattingRulesManagerDialog, dxSkinTheBezier, dxDateRanges;

type
  TfmCtmNewBulkiness = class(TForm)
    Panel18: TPanel;
    BitBtn_Ok: TBitBtn;
    BitBtn_Cancel: TBitBtn;
    cxGrid1Level1: TcxGridLevel;
    cxGrid1: TcxGrid;
    cxGrid1DBBandedTableView1: TcxGridDBBandedTableView;
    Query_Bulkiness: TADOQuery;
    DS_Bulkiness: TDataSource;
    cxGrid1DBBandedTableView1Caption: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1Index: TcxGridDBBandedColumn;
    ClientDS_Bulkiness: TClientDataSet;
    ClientDS_Bulkinessid: TAutoIncField;
    ClientDS_BulkinessCaption: TStringField;
    ClientDS_BulkinessIndex: TStringField;
    ClientDS_Bulkinessset_select: TBooleanField;
    cxGrid1DBBandedTableView1id: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1set_select: TcxGridDBBandedColumn;
    ClientDS_Bulkinessb1: TIntegerField;
    ClientDS_Bulkinessb2: TIntegerField;
    ClientDS_Bulkinessb3: TIntegerField;
    ClientDS_Bulkinessb4: TIntegerField;
    Panel1: TPanel;
    cxTextEdit1: TcxTextEdit;
    cxTextEdit2: TcxTextEdit;
    cxLabel1: TcxLabel;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    cxPropertiesStore1: TcxPropertiesStore;
    procedure cxGrid1DBBandedTableView1CustomDrawCell(
      Sender: TcxCustomGridTableView; ACanvas: TcxCanvas;
      AViewInfo: TcxGridTableDataCellViewInfo; var ADone: Boolean);
    procedure cxGrid1DBBandedTableView1CustomDrawColumnHeader(
      Sender: TcxGridTableView; ACanvas: TcxCanvas;
      AViewInfo: TcxGridColumnHeaderViewInfo; var ADone: Boolean);
    procedure cxGrid1DBBandedTableView1FocusedItemChanged(
      Sender: TcxCustomGridTableView; APrevFocusedItem,
      AFocusedItem: TcxCustomGridTableItem);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure cxGrid1DBBandedTableView1set_selectPropertiesEditValueChanged(
      Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure BitBtn_OkClick(Sender: TObject);
  private
    Fusr_pwd      : PUser_pwd;

    FBulkiness      : string;
    FBulkiness_name : string;
    Fparam          : string;

    procedure GetNEGText();
    procedure SetBulkiness(bulkiness: string);
  public
    constructor Create(AOwner: TApplication; usr_pwd: PUser_pwd); reintroduce;
  published
    property _GetBulkiness     : string read  FBulkiness;
    property _GetBulkinessName : string read  FBulkiness_name;
    property _SetBulkiness     : string write SetBulkiness;

    property _GetBulkinessParam: string read  Fparam;
    property _SetBulkinessParam: string write Fparam;
  end;

var
  fmCtmNewBulkiness: TfmCtmNewBulkiness;

implementation

uses CtmNewMain, CtmNewBulkinessDetail;

{$R *.dfm}

procedure TfmCtmNewBulkiness.BitBtn_OkClick(Sender: TObject);
begin
  ModalResult := mrOk;
  GetNEGText;
  FBulkiness      := cxTextEdit1.Text;
  FBulkiness_name := cxTextEdit2.Text;
end;

constructor TfmCtmNewBulkiness.Create(AOwner: TApplication; usr_pwd: PUser_pwd);
begin
  Screen.Cursor := crHourglass;
  inherited Create(AOwner);
  Fusr_pwd := usr_pwd;

  FBulkiness      := '';
  FBulkiness_name := '';
  Fparam          := '';

  ClientDS_Bulkiness.CreateDataSet;
  ClientDS_Bulkiness.LogChanges := False;

  Query_Bulkiness.Open;
  Query_Bulkiness.First;

  while not Query_Bulkiness.Eof do begin
    ClientDS_Bulkiness.Append;
    ClientDS_Bulkiness.FieldByName('Caption'    ).Value := Query_Bulkiness.FieldByName('Caption').Value;
    ClientDS_Bulkiness.FieldByName('Index'      ).Value := Query_Bulkiness.FieldByName('Index').Value;
    ClientDS_Bulkiness.FieldByName('set_select' ).Value := False;
    ClientDS_Bulkiness.Post;
    Query_Bulkiness.Next;
  end;

  GetNEGText;


  Screen.Cursor := crDefault;
end;


procedure TfmCtmNewBulkiness.cxGrid1DBBandedTableView1CustomDrawCell(
  Sender: TcxCustomGridTableView; ACanvas: TcxCanvas;
  AViewInfo: TcxGridTableDataCellViewInfo; var ADone: Boolean);
begin
	if AViewInfo.GridRecord.Selected or AViewInfo.GridRecord.Focused then begin
		ACanvas.Brush.Color := clNavy;
		ACanvas.Font.Color := clWhite;
		if AViewInfo.Focused then ACanvas.Brush.Color := clBlue;
	end;
end;

procedure TfmCtmNewBulkiness.cxGrid1DBBandedTableView1CustomDrawColumnHeader(
  Sender: TcxGridTableView; ACanvas: TcxCanvas;
  AViewInfo: TcxGridColumnHeaderViewInfo; var ADone: Boolean);
begin
	if AViewInfo.Column.Focused then begin
		ACanvas.Brush.Color := clNavy;
		ACanvas.Font.Color := clWhite;
	end;
end;

procedure TfmCtmNewBulkiness.cxGrid1DBBandedTableView1FocusedItemChanged(
  Sender: TcxCustomGridTableView; APrevFocusedItem,
  AFocusedItem: TcxCustomGridTableItem);
begin
	cxGrid1DBBandedTableView1.Painter.Invalidate;
end;

procedure TfmCtmNewBulkiness.cxGrid1DBBandedTableView1set_selectPropertiesEditValueChanged(Sender: TObject);
var str : string;
   str2 : string;
     id : integer;
begin
  if TcxCheckBox(Sender).Checked = True then begin
    str := cxGrid1DBBandedTableView1Index.DataBinding.Field.AsString;
    id  := cxGrid1DBBandedTableView1Id.DataBinding.Field.AsInteger;

    if str = '0000' then begin
      ClientDS_Bulkiness.Post;
      ClientDS_Bulkiness.DisableControls;
      ClientDS_Bulkiness.First;
      while not ClientDS_Bulkiness.Eof do begin
        if (id <> ClientDS_Bulkiness.FieldByName('id').Value) then begin
          ClientDS_Bulkiness.Edit;
          ClientDS_Bulkiness.FieldByName('set_select').Value := False;
          ClientDS_Bulkiness.Post;
        end;

        ClientDS_Bulkiness.Next;
      end;
      ClientDS_Bulkiness.Locate('id', id, []);
      ClientDS_Bulkiness.EnableControls;
    end;
    if str[1] <> '0' then begin
      ClientDS_Bulkiness.Post;
      ClientDS_Bulkiness.DisableControls;
      ClientDS_Bulkiness.First;
      while not ClientDS_Bulkiness.Eof do begin
        str2 := ClientDS_Bulkiness.FieldByName('index').AsString;
        if (id <> ClientDS_Bulkiness.FieldByName('id').Value) and ((str2[1]<>'0') or (str2 = '0000')) then begin
          ClientDS_Bulkiness.Edit;
          ClientDS_Bulkiness.FieldByName('set_select').Value := False;
          ClientDS_Bulkiness.Post;
        end;

        ClientDS_Bulkiness.Next;
      end;
      ClientDS_Bulkiness.Locate('id', id, []);
      ClientDS_Bulkiness.EnableControls;
    end;
    if str[2] <> '0' then begin
      ClientDS_Bulkiness.Post;
      ClientDS_Bulkiness.DisableControls;
      ClientDS_Bulkiness.First;
      while not ClientDS_Bulkiness.Eof do begin
        str2 := ClientDS_Bulkiness.FieldByName('index').AsString;
        if (id <> ClientDS_Bulkiness.FieldByName('id').Value) and ((str2[2]<>'0') or (str2 = '0000')) then begin
          ClientDS_Bulkiness.Edit;
          ClientDS_Bulkiness.FieldByName('set_select').Value := False;
          ClientDS_Bulkiness.Post;
        end;

        ClientDS_Bulkiness.Next;
      end;
      ClientDS_Bulkiness.Locate('id', id, []);
      ClientDS_Bulkiness.EnableControls;
    end;
    if str[3] <> '0' then begin
      ClientDS_Bulkiness.Post;
      ClientDS_Bulkiness.DisableControls;
      ClientDS_Bulkiness.First;
      while not ClientDS_Bulkiness.Eof do begin
        str2 := ClientDS_Bulkiness.FieldByName('index').AsString;
        if (id <> ClientDS_Bulkiness.FieldByName('id').Value) and ((str2[3]<>'0') or (str2 = '0000')) then begin
          ClientDS_Bulkiness.Edit;
          ClientDS_Bulkiness.FieldByName('set_select').Value := False;
          ClientDS_Bulkiness.Post;
        end;

        ClientDS_Bulkiness.Next;
      end;
      ClientDS_Bulkiness.Locate('id', id, []);
      ClientDS_Bulkiness.EnableControls;
    end;
    if str[4] <> '0' then begin
      ClientDS_Bulkiness.Post;
      ClientDS_Bulkiness.DisableControls;
      ClientDS_Bulkiness.First;
      while not ClientDS_Bulkiness.Eof do begin
        str2 := ClientDS_Bulkiness.FieldByName('index').AsString;
        if (id <> ClientDS_Bulkiness.FieldByName('id').Value) and ((str2[4]<>'0') or (str2 = '0000')) then begin
          ClientDS_Bulkiness.Edit;
          ClientDS_Bulkiness.FieldByName('set_select').Value := False;
          ClientDS_Bulkiness.Post;
        end;

        ClientDS_Bulkiness.Next;
      end;
      ClientDS_Bulkiness.Locate('id', id, []);
      ClientDS_Bulkiness.EnableControls;
    end;
  end else begin
    ClientDS_Bulkiness.Edit;
    ClientDS_Bulkiness.FieldByName('set_select').Value := False;
    ClientDS_Bulkiness.Post;
  end;

  GetNEGText;
end;

procedure TfmCtmNewBulkiness.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action := caFree;
end;

procedure TfmCtmNewBulkiness.GetNEGText();
var str1, str2: string;
    id : integer;
begin
  id   := cxGrid1DBBandedTableView1Id.DataBinding.Field.AsInteger;
  str1 := 'H0000';
  str2 := '';
  ClientDS_Bulkiness.DisableControls;
  ClientDS_Bulkiness.First;
  while not ClientDS_Bulkiness.Eof do begin
    if ClientDS_Bulkiness.FieldByName('set_select').AsBoolean = True then begin
      if ClientDS_Bulkiness.FieldByName('index').AsString[1] <> '0' then str1[2] := ClientDS_Bulkiness.FieldByName('index').AsString[1];
      if ClientDS_Bulkiness.FieldByName('index').AsString[2] <> '0' then str1[3] := ClientDS_Bulkiness.FieldByName('index').AsString[2];
      if ClientDS_Bulkiness.FieldByName('index').AsString[3] <> '0' then str1[4] := ClientDS_Bulkiness.FieldByName('index').AsString[3];
      if ClientDS_Bulkiness.FieldByName('index').AsString[4] <> '0' then str1[5] := ClientDS_Bulkiness.FieldByName('index').AsString[4];

      str2 := str2 + ClientDS_Bulkiness.FieldByName('caption').AsString + ';'

    end;

    ClientDS_Bulkiness.Next;
  end;
  ClientDS_Bulkiness.Locate('id', id, []);
  ClientDS_Bulkiness.EnableControls;
  cxTextEdit1.Text := str1;
  cxTextEdit2.Text := str2;
end;

procedure TfmCtmNewBulkiness.BitBtn2Click(Sender: TObject);
begin
  fmCtmNewBulkinessDetail := TfmCtmNewBulkinessDetail.Create(Application, Fusr_pwd);
  fmCtmNewBulkinessDetail._SetParam := Fparam;
  if fmCtmNewBulkinessDetail.ShowModal = mrOk then begin

    Query_Bulkiness.Open;
    Query_Bulkiness.First;
    ClientDS_Bulkiness.EmptyDataSet;
    while not Query_Bulkiness.Eof do begin
      ClientDS_Bulkiness.Append;
      ClientDS_Bulkiness.FieldByName('Caption'    ).Value := Query_Bulkiness.FieldByName('Caption').Value;
      ClientDS_Bulkiness.FieldByName('Index'      ).Value := Query_Bulkiness.FieldByName('Index').Value;
      ClientDS_Bulkiness.FieldByName('set_select' ).Value := False;
      ClientDS_Bulkiness.Post;
      Query_Bulkiness.Next;
    end;

    GetNEGText;

    _SetBulkiness := fmCtmNewBulkinessDetail._GetBulkiness;
    Fparam        := fmCtmNewBulkinessDetail._GetParam;
    GetNEGText;
  end;
end;

procedure TfmCtmNewBulkiness.SetBulkiness(bulkiness: string);
var str : string;
begin
  str := bulkiness;
  if str = '' then str := 'Í0000';
  ClientDS_Bulkiness.DisableControls;
  ClientDS_Bulkiness.First;
  while not ClientDS_Bulkiness.Eof do begin
    if (ClientDS_Bulkiness.FieldByName('index').AsString = '0000') AND (str = 'Í0000') then begin
      ClientDS_Bulkiness.Edit;
      ClientDS_Bulkiness.FieldByName('set_select').Value := True;
      ClientDS_Bulkiness.Post;
    end;

    if (ClientDS_Bulkiness.FieldByName('index').AsString[1] = str[2]) AND (str[2] <> '0') then begin
      ClientDS_Bulkiness.Edit;
      ClientDS_Bulkiness.FieldByName('set_select').Value := True;
      ClientDS_Bulkiness.Post;
    end;

    if (ClientDS_Bulkiness.FieldByName('index').AsString[2] = str[3]) AND (str[3] <> '0') then begin
      ClientDS_Bulkiness.Edit;
      ClientDS_Bulkiness.FieldByName('set_select').Value := True;
      ClientDS_Bulkiness.Post;
    end;

    if (ClientDS_Bulkiness.FieldByName('index').AsString[3] = str[4]) AND (str[4] <> '0') then begin
      ClientDS_Bulkiness.Edit;
      ClientDS_Bulkiness.FieldByName('set_select').Value := True;
      ClientDS_Bulkiness.Post;
    end;

    if (ClientDS_Bulkiness.FieldByName('index').AsString[4] = str[5]) AND (str[5] <> '0') then begin
      ClientDS_Bulkiness.Edit;
      ClientDS_Bulkiness.FieldByName('set_select').Value := True;
      ClientDS_Bulkiness.Post;
    end;

    ClientDS_Bulkiness.Next;
  end;
  ClientDS_Bulkiness.EnableControls;

end;

end.
