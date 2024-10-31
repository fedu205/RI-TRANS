unit DocFolderAdd;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, cxGraphics, StdCtrls, Buttons, cxDropDownEdit, cxCalendar,
  cxMaskEdit, cxControls, cxContainer, cxEdit, cxTextEdit, DB, ADODB,
  cxLookupEdit, cxDBLookupEdit, cxDBLookupComboBox, ExtCtrls, cxPropertiesStore,
  cxLookAndFeels, cxLookAndFeelPainters, Vcl.ComCtrls, dxCore, cxDateUtils, cxCurrencyEdit, dxdbtrel, cxImageComboBox, dxSkinsCore, dxSkinBlack, dxSkinBlue, dxSkinBlueprint, dxSkinCaramel,
  dxSkinCoffee, dxSkinDarkroom, dxSkinDarkSide, dxSkinDevExpressDarkStyle, dxSkinDevExpressStyle, dxSkinFoggy, dxSkinGlassOceans, dxSkinHighContrast, dxSkiniMaginary, dxSkinLilian, dxSkinLiquidSky,
  dxSkinLondonLiquidSky, dxSkinMcSkin, dxSkinMetropolis, dxSkinMetropolisDark, dxSkinMoneyTwins, dxSkinOffice2007Black, dxSkinOffice2007Blue, dxSkinOffice2007Green, dxSkinOffice2007Pink,
  dxSkinOffice2007Silver, dxSkinOffice2010Black, dxSkinOffice2010Blue, dxSkinOffice2010Silver, dxSkinOffice2013DarkGray, dxSkinOffice2013LightGray, dxSkinOffice2013White, dxSkinOffice2016Colorful,
  dxSkinOffice2016Dark, dxSkinPumpkin, dxSkinSeven, dxSkinSevenClassic, dxSkinSharp, dxSkinSharpPlus, dxSkinSilver, dxSkinSpringtime, dxSkinStardust, dxSkinSummer2008, dxSkinTheAsphaltWorld,
  dxSkinTheBezier, dxSkinsDefaultPainters, dxSkinValentine, dxSkinVisualStudio2013Blue, dxSkinVisualStudio2013Dark, dxSkinVisualStudio2013Light, dxSkinVS2010, dxSkinWhiteprint, dxSkinXmas2008Blue,
  Vcl.Menus, cxButtons;

type
  TfmDocFolderAdd = class(TForm)
    Panel2: TPanel;
    Panel4: TPanel;
    Label2: TLabel;
    Label1: TLabel;
    dxLookupTreeView1: TdxLookupTreeView;
    Query_Folder: TADOQuery;
    DS_Folder: TDataSource;
    cxTextEdit1: TcxTextEdit;
    cxImageComboBox1: TcxImageComboBox;
    Label3: TLabel;
    cxButton1: TcxButton;
    cxButton2: TcxButton;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure cxButton1Click(Sender: TObject);
  private
    Fconnect                 : TADOConnection;
    Ftype_action             : integer;
    Fdoc_type_cod            : integer;
    Fdoc_folder_id           : integer;
    Fparent_id               : integer;

    procedure SetInsert(parent_id : integer);
    procedure SetUpdate(doc_folder_id : integer);
    procedure SetImageIndex(image_index : integer);
  public
    constructor Create(AOwner : TApplication; connect: TADOConnection; Adoc_type_cod: integer);
  published
    property _SetInsert      : integer write SetInsert;
    property _SetUpdate      : integer write SetUpdate;
    property _SetImageIndex  : integer write SetImageIndex;
    property _GetDocFolderId : integer read Fdoc_folder_id;
    property _GetParentId    : integer read Fparent_id;
  end;

var
  fmDocFolderAdd: TfmDocFolderAdd;

implementation
     uses Raznoe, DocBlob;
{$R *.dfm}

constructor TfmDocFolderAdd.Create(AOwner : TApplication; connect: TADOConnection; Adoc_type_cod: integer);
var i : integer;
begin
  inherited Create(AOwner);

  Screen.Cursor := crHourglass;

  Ftype_action   := 0;
  Fdoc_type_cod  := Adoc_type_cod;
  Fdoc_folder_id := -9;
  Fparent_id     := -9;

  Fconnect := connect;
  Query_Folder.Connection := Fconnect;
  Query_Folder.Parameters.ParamByName('doc_type_cod').Value := Fdoc_type_cod;
  Query_Folder.Open;

  for i := 0 to fmDocBlob.cxImageList1.Count - 1 do begin
    with cxImageComboBox1.Properties.Items.Add do begin
      ImageIndex := i;
      Description := IntToStr(i);
      Index := i;
      Value := i;
    end;
  end;


  Screen.Cursor := crDefault;
end;

procedure TfmDocFolderAdd.cxButton1Click(Sender: TObject);
var sp : TADOStoredProc;
begin
  cxButton1.SetFocus;

  // --------------------------------------
  if VarToStr(cxTextEdit1.EditValue) = '' then begin
    Application.MessageBox('Не указано Наименование', 'Ошибка', MB_OK or MB_ICONSTOP);
    ModalResult := mrNone;
    exit;
  end;

  Screen.Cursor := crHourglass;
  SP := TADOStoredProc.Create(nil);
  SP.Connection := Fconnect;
  SP.ProcedureName := 'sp_doc_folder_modify';
  SP.Parameters.Refresh;

  Fparent_id := Query_Folder.FieldByName('doc_folder_id').AsInteger;

  SP.Parameters.ParamByName('@doc_folder_id' ).Value := iif(Fdoc_folder_id = -9, null, Fdoc_folder_id);
  SP.Parameters.ParamByName('@type_action'   ).Value := iif(Fdoc_folder_id = -9, 0, 1);
  SP.Parameters.ParamByName('@doc_type_cod'  ).Value := Fdoc_type_cod;
  SP.Parameters.ParamByName('@parent_id'     ).Value := iif(Fparent_id = -9, null, Fparent_id);
  SP.Parameters.ParamByName('@folder_name'   ).Value := cxTextEdit1.EditValue;
  SP.Parameters.ParamByName('@image_index'   ).Value := cxImageComboBox1.ItemIndex;

  try
    SP.ExecProc;
    Fdoc_folder_id := SP.Parameters.ParamByName('@doc_folder_id').Value;
  except on E: Exception do begin
//    Application.MessageBox(PWideChar(E.Message), 'Ошибка', MB_OK or MB_ICONERROR);
    ModalResult := mrNone;
  end;
  end;
  SP.Free;
  Screen.Cursor := crDefault;
end;

procedure TfmDocFolderAdd.SetImageIndex(image_index : integer);
begin
  cxImageComboBox1.ItemIndex := image_index;
end;

procedure TfmDocFolderAdd.SetInsert(parent_id : integer);
begin
  Screen.Cursor := crHourglass;

  Ftype_action   := 1;
  Fdoc_folder_id := -9;
  Fparent_id     := parent_id;

  Query_Folder.Locate('doc_folder_id', Fparent_id, []); // позиционируем на родительскую папку, тем самым выбираем значение в компоненте
  dxLookupTreeView1.Text := Query_Folder.FieldByName('folder_name').AsString;

  MonitorEventFormOpen('OPEN_FORM', self.Name, Fconnect, -9);
  Screen.Cursor := crDefault;
end;

procedure TfmDocFolderAdd.SetUpdate(doc_folder_id : integer);
var Q : TADOQuery;
begin
  Screen.Cursor := crHourglass;

  Ftype_action   := 1;
  Fdoc_folder_id := doc_folder_id;

  Q := TADOQuery.Create(nil);
  Q.Connection := Fconnect;
  Q.SQL.Add('SELECT * FROM DOC_FOLDER WHERE doc_folder_id = ' + IntToStr(Fdoc_folder_id));
  Q.Open;

  Fparent_id := iif(Q.FieldByName('parent_id').IsNull, -9, Q.FieldByName('parent_id').AsInteger);
  Query_Folder.Locate('doc_folder_id', Fparent_id, []); // позиционируем на родительскую папку, тем самым выбираем значение в компоненте
  dxLookupTreeView1.Text := Query_Folder.FieldByName('folder_name').AsString;

  cxTextEdit1.EditValue := Q.FieldByName('folder_name').Value;
  cxImageComboBox1.ItemIndex := iif(Q.FieldByName('image_index').IsNull, 76, Q.FieldByName('image_index').AsInteger);

  Q.Free;
  MonitorEventFormOpen('OPEN_FORM', self.Name, Fconnect, Fdoc_folder_id);
  Screen.Cursor := crDefault;
end;

procedure TfmDocFolderAdd.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action := caFree;
end;

end.
