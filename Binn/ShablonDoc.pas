unit ShablonDoc;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Db, ADODB, StdCtrls, Buttons, ComCtrls, ToolWin, Menus, Variants, cxStyles, cxCustomData, cxGraphics,
  cxFilter, cxData, cxDataStorage, cxEdit, cxDBData, cxControls, cxGridCustomView, cxGridCustomTableView,
  cxGridTableView, cxGridBandedTableView, cxGridDBBandedTableView, cxClasses, cxGridLevel, cxGrid;

type
  TfmShablonDoc = class(TForm)
    SP_BlobInsert: TADOStoredProc;
    ToolBar1: TToolBar;
    ToolButton15: TToolButton;
    ToolButton20: TToolButton;
    ToolButton16: TToolButton;
    ToolButton18: TToolButton;
    ToolButton5: TToolButton;
    Query_Shablon: TADOQuery;
    DS_Shablon: TDataSource;
    Pop_Doc: TPopupMenu;
    MenuItem1: TMenuItem;
    MenuItem7: TMenuItem;
    MenuItem8: TMenuItem;
    MenuItem11: TMenuItem;
    N7: TMenuItem;
    N13: TMenuItem;
    BitBtn1: TBitBtn;
    cxGrid1Level1: TcxGridLevel;
    cxGrid1: TcxGrid;
    cxGrid1DBBandedTableView1: TcxGridDBBandedTableView;
    cxGrid1DBBandedTableView1doc_id: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1shablon: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1doc_type_id: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1global_id: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1doc_describe: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1file_name: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1doc_type_describe: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1doc_cod: TcxGridDBBandedColumn;
    procedure cxGrid1DBBandedTableView1MouseDown(Sender: TObject;
      Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
    procedure cxGrid1DBBandedTableView1KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure cxGrid1DBBandedTableView1CustomDrawColumnHeader(
      Sender: TcxGridTableView; ACanvas: TcxCanvas;
      AViewInfo: TcxGridColumnHeaderViewInfo; var ADone: Boolean);
    procedure cxGrid1Exit(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure MenuItem11Click(Sender: TObject);
    procedure MenuItem1Click(Sender: TObject);
    procedure MenuItem7Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure ToolButton5Click(Sender: TObject);
    procedure ToolButton16Click(Sender: TObject);
    procedure N7Click(Sender: TObject);
  private
    Fid, Ftype_doc_id : integer;
  public
    constructor Create(AOwner : TApplication; id, type_doc_id:integer);
  end;

var
  fmShablonDoc: TfmShablonDoc;

implementation
     uses Main, ShellApi, DM, Raznoe;
{$R *.DFM}

procedure TfmShablonDoc.BitBtn1Click(Sender: TObject);
begin
  Close;
end;

constructor TfmShablonDoc.Create(AOwner: TApplication;id, type_doc_id:integer);
begin
  inherited Create(AOwner);
  Screen.Cursor := crHourglass;
  Fid := id;
  Ftype_doc_id := type_doc_id;
  Query_Shablon.Close;
  Query_Shablon.SQL.Clear;
  if Fid <> -9 then Query_Shablon.SQL.Add('select * from view_DOC_BLOB where doc_type_id='+IntToStr(type_doc_id)+' and global_id='+IntToStr(Fid))
  else Query_Shablon.SQL.Add('select * from view_DOC_BLOB where shablon=1 order by doc_type_id');
  Query_Shablon.Open;
  Screen.Cursor := crDefault;
end;

procedure TfmShablonDoc.cxGrid1DBBandedTableView1CustomDrawColumnHeader(
  Sender: TcxGridTableView; ACanvas: TcxCanvas;
  AViewInfo: TcxGridColumnHeaderViewInfo; var ADone: Boolean);
begin
  if AViewInfo.Column.Focused then begin
    ACanvas.Brush.Color := clNavy;
    ACanvas.Font.Color := clWhite;
  end;
end;

procedure TfmShablonDoc.cxGrid1DBBandedTableView1KeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  cxGrid1DBBandedTableView1.Painter.Invalidate;
end;

procedure TfmShablonDoc.cxGrid1DBBandedTableView1MouseDown(Sender: TObject;
  Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
begin
  cxGrid1DBBandedTableView1.Painter.Invalidate;
end;

procedure TfmShablonDoc.cxGrid1Exit(Sender: TObject);
begin
  if (Query_Shablon.State=dsEdit) OR (Query_Shablon.State=dsInsert) then Query_Shablon.Post;
end;

procedure TfmShablonDoc.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  cxGrid1Exit(nil);
  Action := caFree;
end;

procedure TfmShablonDoc.MenuItem11Click(Sender: TObject);
var     Q : TADOQuery;
 FileName : string;
begin
  if Query_Shablon['file_name']<>null then begin
    FileName := Query_Shablon['file_name'];
    Insert(FloatToStr(Int(Now*1000000)), FileName, Pos('.', FileName));
    Q := TADOQuery.Create(nil);
    Q.Connection := fmDM.Lis;
    Q.SQL.Add('SELECT doc_image FROM doc_blob WHERE doc_id=' + IntToStr(cxGrid1DBBandedTableView1doc_id.DataBinding.Field.AsInteger));
    Q.Open;
    LoadFileFromDB(FileName, Q.FieldByName('doc_image')  as TBlobField,true);
    Q.Free;
  end else Application.MessageBox('Õ≈“ ‘¿…À¿   ƒ¿ÕÕŒ… «¿œ»—»', '¬Õ»Ã¿Õ»≈', MB_OK);
end;

procedure TfmShablonDoc.MenuItem1Click(Sender: TObject);
var ff : TFileStream;
    book : TBookmark;
begin
  fmDM.OpenDialog1.Filter := '¬ÒÂ Ù‡ÈÎ˚|*.*';
  fmDM.OpenDialog1.DefaultExt := '';
  if fmDM.OpenDialog1.Execute then begin
    ff := TFileStream.Create(fmDM.OpenDialog1.FileName, 0);
    SP_BlobInsert.Close;
    SP_BlobInsert.Parameters.ParamByName('@doc_image').LoadFromStream(ff, ftVarBytes);
    SP_BlobInsert.Parameters.ParamByName('@file_name').Value := ExtractFileName(fmDM.OpenDialog1.FileName);
    if Fid<>-9 then begin
      SP_BlobInsert.Parameters.ParamByName('@global_id').Value := Fid;
      SP_BlobInsert.Parameters.ParamByName('@doc_type_id').Value := Ftype_doc_id;
      SP_BlobInsert.Parameters.ParamByName('@shablon').Value := 0;
    end else begin
      SP_BlobInsert.Parameters.ParamByName('@doc_type_id').Value := TMenuItem(Sender).Tag;
      SP_BlobInsert.Parameters.ParamByName('@shablon').Value := 1;
    end;
    SP_BlobInsert.ExecProc;
    if SP_BlobInsert.Parameters.ParamByName('@doc_id').Value = -9 then Application.MessageBox('Õ≈¬Œ«ÃŒ∆ÕŒ ¬—“¿¬»“‹ ÕŒ¬€… ÿ¿¡ÀŒÕ', 'Œÿ»¡Œ◊ ¿', MB_OK);
    book := Query_Shablon.GetBookmark;
    Query_Shablon.Close;
    Query_Shablon.Open;
    Query_Shablon.GotoBookmark(book);
    Query_Shablon.FreeBookmark(book);
  end;
end;

procedure TfmShablonDoc.MenuItem7Click(Sender: TObject);
begin
  Screen.Cursor := crHourglass;
  fmDM.Query1.Close;
  fmDM.Query1.SQL.Clear;
  fmDM.Query1.SQL.Add('delete DOC_BLOB WHERE doc_id = '+IntToStr(Query_Shablon['doc_id']));
  fmDM.Query1.ExecSQL;
  Query_Shablon.Close;
  Query_Shablon.Open;
  Screen.Cursor := crDefault;
end;

procedure TfmShablonDoc.ToolButton5Click(Sender: TObject);
begin
  Close;
end;

procedure TfmShablonDoc.ToolButton16Click(Sender: TObject);
begin
  Screen.Cursor := crHourglass;
  Query_Shablon.Close;
  Query_Shablon.Open;
  Screen.Cursor := crDefault;
end;

procedure TfmShablonDoc.N7Click(Sender: TObject);
begin
  Query_Shablon.Edit;
end;

end.
