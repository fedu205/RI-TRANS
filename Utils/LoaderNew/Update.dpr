program Update;

uses
  Midas,
  MidasLib,
  Forms,
  Dialogs,
  SysUtils,
  ADODB,
  DB,
  Windows,
  Classes,
  StrUtils,
  Registry,
  dxmdaset,
  cxProgressBar,
  Variants,
  IniFiles,
  LoadMain in 'LoadMain.pas' {fmLoadMain},
  Main in 'Main.pas' {fmMain},
  DocBlobAdd in 'DocBlobAdd.pas' {fmDocBlobAdd},
  Raznoe in 'Raznoe.pas';

{$R *.res}


var
  path1  : string;
  path2  : string;
  path3  : string;
  sql_ip : string;
  dxMemData1 : TdxMemData;
  dxMemData2 : TdxMemData;
  file_name  : string;
  IniFiles   : TIniFile;
  set_open   : boolean;
begin
  Application.Initialize;
  Application.Run;

  if not FileExists(ExtractFilePath(ParamStr(0)) + 'update.ini') then begin
    ShowMessage('Отсутствует файл update.ini.');
    Exit;
  end;

  IniFiles := TIniFile.Create(ExtractFilePath(ParamStr(0)) + 'update.ini');
  path1  := IniFiles.ReadString('UPDATE', 'path_from', 'null');
  path2  := IniFiles.ReadString('UPDATE', 'path_to',   'null');
  path3  := IniFiles.ReadString('UPDATE', 'file_exe',  'null');
  sql_ip := IniFiles.ReadString('IP',     'sql_ip',  'null');
  path1 := GetPath(path1);
  path2 := GetPath(path2);
  path3 := GetPath(path3);
  IniFiles.Free;

  if (path2 = 'null') OR (path1 = 'null') then begin
    ShowMessage('Не определенны пути.');
    Exit;
  end;

  if (path3 = 'null') then begin
    set_open := False;
    ShowMessage('Не определён файл для запуска!');
    Exit;
  end;

  str_conn := 'Provider=SQLOLEDB.1;Password=cjnhfkjubcnbrf;Persist Security Info=True;User ID=sa;Initial Catalog=lis1;Data Source=' + sql_ip;

  {####################################################################################3}
  if ParamStr(1) = '2' then begin
    set_open := True;

    if not DirectoryExists(path2) then
      ForceDirectories(path2);

    fmLoadMain := TfmLoadMain.Create(Application);
    fmLoadMain.Label1.Caption := 'Обновление программы...';
    fmLoadMain.Show;
    fmLoadMain.Update;

    dxMemData1 := TdxMemData.Create(Application);
    dxMemData2 := TdxMemData.Create(Application);

    CreateField(dxMemData1, 'file_name',ftString);
    CreateField(dxMemData1, 'file_size',ftString);
    CreateField(dxMemData1, 'file_ver',ftString);
    CreateField(dxMemData1, 'file_creation_time',ftString);
    CreateField(dxMemData1, 'file_last_accessed',ftString);
    CreateField(dxMemData1, 'file_last_written',ftString);
    CreateField(dxMemData1, '',ftString);

    CreateField(dxMemData2, 'file_name',ftString);
    CreateField(dxMemData2, 'file_size',ftString);
    CreateField(dxMemData2, 'file_ver' ,ftString);
    CreateField(dxMemData2, 'file_creation_time',ftString);
    CreateField(dxMemData2, 'file_last_accessed',ftString);
    CreateField(dxMemData2, 'file_last_written' ,ftString);
    CreateField(dxMemData2, 'type_action', ftInteger);

    dxMemData1.Active := True;
    dxMemData2.Active := True;

    LoadPath(path1, dxMemData1);
    LoadPath(path2, dxMemData2);


      dxMemData2.First;
      while not dxMemData2.Eof do begin
        if dxMemData1.Locate('file_name', dxMemData2.FieldByName('file_name').Value, []) then begin
            if  (dxMemData2.FieldByName('file_size').Value <> dxMemData1.FieldByName('file_size').Value) or
                (dxMemData2.FieldByName('file_ver' ).Value <> dxMemData1.FieldByName('file_ver' ).Value) or
                (dxMemData2.FieldByName('file_last_written' ).Value <> dxMemData1.FieldByName('file_last_written' ).Value) then begin

                dxMemData2.Edit;
                dxMemData2.FieldByName('type_action').Value := 1;
                dxMemData2.Post;
            end else begin
                dxMemData2.Edit;
                dxMemData2.FieldByName('type_action').Value := 0;
                dxMemData2.Post;
            end;
        end else begin
          dxMemData2.Edit;
          dxMemData2.FieldByName('type_action').Value := 2;
          dxMemData2.Post;
        end;

        dxMemData2.Next;
      end;

      dxMemData1.First;
      while not dxMemData1.Eof do begin
        if not dxMemData2.Locate('file_name', dxMemData1.FieldByName('file_name').Value, []) then begin
          dxMemData2.Append;
          dxMemData2.FieldByName('file_name').Value := dxMemData1.FieldByName('file_name').Value;
          dxMemData2.FieldByName('file_size').Value := dxMemData1.FieldByName('file_size').Value;
          dxMemData2.FieldByName('file_ver' ).Value := dxMemData1.FieldByName('file_ver' ).Value;
          dxMemData2.FieldByName('file_creation_time').Value := dxMemData1.FieldByName('file_creation_time').Value;
          dxMemData2.FieldByName('file_last_accessed').Value := dxMemData1.FieldByName('file_last_accessed').Value;
          dxMemData2.FieldByName('file_last_written' ).Value := dxMemData1.FieldByName('file_last_written' ).Value;
          dxMemData2.FieldByName('type_action').Value := 1;
          dxMemData2.Post;
        end;
        dxMemData1.Next;
      end;


      dxMemData2.ProgrammedFilter := False;
      dxMemData2.Filtered := False;
      dxMemData2.ProgrammedFilter := True;
      dxMemData2.First;
      while not dxMemData2.Eof do begin
        if dxMemData2.FieldByName('type_action').Value <> 0 then dxMemData2.FilterList.Add(dxMemData2.CurRec + 1);

        dxMemData2.Next;
      end;
      dxMemData2.Filtered := True;

      fmLoadMain.cxProgressBar1.Properties.Max := dxMemData2.RecordCount;
      dxMemData2.First;
      while not dxMemData2.Eof do begin
        file_name := dxMemData2.FieldByName('file_name').AsString;
        fmLoadMain.Label1.Caption := 'Файл ' + file_name +' ...';
        if dxMemData2.FieldByName('type_action').Value = 1 then begin
          if not CopyWithProgress(path1 + file_name, path2 + file_name) then begin
            ShowMessage('Ошибка при копирование файла ' + file_name);
            set_open := False;
          end;
        end;
        if dxMemData2.FieldByName('type_action').Value = 2 then begin
          SysUtils.DeleteFile(path2 + file_name);
        end;
        fmLoadMain.cxProgressBar1.Position := fmLoadMain.cxProgressBar1.Position + 1;
        dxMemData2.Next;
      end;


      fmLoadMain.Close;
      fmLoadMain.Free;
      dxMemData1.Free;
      dxMemData2.Free;

      if set_open then
        WinExec(PAnsiChar(AnsiString(path2 + path3)), 0);
  end;



  {####################################################################################3}
  if (ParamStr(1) = '1') then begin
    fmMain := TfmMain.Create(Application, str_conn);
    fmMain.ShowModal;
  end;



{####################################################################################3}
  if ParamStr(1) = '' then begin
    set_open := True;
    if not DirectoryExists(path2) then
      ForceDirectories(path2);

    fmLoadMain := TfmLoadMain.Create(Application);
    fmLoadMain.Label1.Caption := 'Обновление программы...';
    fmLoadMain.Show;
    fmLoadMain.Update;

    dxMemData1 := TdxMemData.Create(Application);
    dxMemData2 := TdxMemData.Create(Application);

    // -------- файлы из базы
    CreateField(dxMemData1, 'file_name',ftString);
    CreateField(dxMemData1, 'file_size',ftString);
    CreateField(dxMemData1, 'file_ver',ftString);
    CreateField(dxMemData1, 'file_creation_time',ftDateTime);
    CreateField(dxMemData1, 'file_last_accessed',ftDateTime);
    CreateField(dxMemData1, 'file_last_written',ftDateTime);
    CreateField(dxMemData1, '',ftString);

    // -------- файлы у пользователя
    CreateField(dxMemData2, 'file_name',ftString);
    CreateField(dxMemData2, 'file_size',ftString);
    CreateField(dxMemData2, 'file_ver' ,ftString);
    CreateField(dxMemData2, 'file_creation_time',ftDateTime);
    CreateField(dxMemData2, 'file_last_accessed',ftDateTime);
    CreateField(dxMemData2, 'file_last_written' ,ftDateTime);
    CreateField(dxMemData2, 'type_action', ftInteger);

    dxMemData1.Active := True;
    dxMemData2.Active := True;

    LoadPathSQL(dxMemData1);
    LoadPath(path2, dxMemData2);


      dxMemData2.First;
      while not dxMemData2.Eof do begin
        if dxMemData1.Locate('file_name', dxMemData2.FieldByName('file_name').Value, []) then begin
            if  (dxMemData2.FieldByName('file_size').Value <> dxMemData1.FieldByName('file_size').Value) or
                (dxMemData2.FieldByName('file_ver' ).Value <> dxMemData1.FieldByName('file_ver' ).Value) or
                (dxMemData2.FieldByName('file_last_written' ).AsDateTime <> dxMemData1.FieldByName('file_last_written' ).AsDateTime) then begin

                dxMemData2.Edit;
                dxMemData2.FieldByName('type_action').Value := 1;
                dxMemData2.Post;
            end else begin
                dxMemData2.Edit;
                dxMemData2.FieldByName('type_action').Value := 0;      //------ ничего не делать
                dxMemData2.Post;
            end;
        end else begin
          dxMemData2.Edit;
          dxMemData2.FieldByName('type_action').Value := 2;
          dxMemData2.Post;
        end;

        dxMemData2.Next;
      end;

      dxMemData1.First;
      while not dxMemData1.Eof do begin
        if not dxMemData2.Locate('file_name', dxMemData1.FieldByName('file_name').Value, []) then begin
          dxMemData2.Append;
          dxMemData2.FieldByName('file_name').Value := dxMemData1.FieldByName('file_name').Value;
          dxMemData2.FieldByName('file_size').Value := dxMemData1.FieldByName('file_size').Value;
          dxMemData2.FieldByName('file_ver' ).Value := dxMemData1.FieldByName('file_ver' ).Value;
          dxMemData2.FieldByName('file_creation_time').AsDateTime := dxMemData1.FieldByName('file_creation_time').AsDateTime;
          dxMemData2.FieldByName('file_last_accessed').AsDateTime := dxMemData1.FieldByName('file_last_accessed').AsDateTime;
          dxMemData2.FieldByName('file_last_written' ).AsDateTime := dxMemData1.FieldByName('file_last_written' ).AsDateTime;
          dxMemData2.FieldByName('type_action').Value := 1;
          dxMemData2.Post;
        end;
        dxMemData1.Next;
      end;


      dxMemData2.ProgrammedFilter := False;
      dxMemData2.Filtered := False;
      dxMemData2.ProgrammedFilter := True;
      dxMemData2.First;
      while not dxMemData2.Eof do begin
        if dxMemData2.FieldByName('type_action').Value <> 0 then
          dxMemData2.FilterList.Add(dxMemData2.CurRec + 1);
        dxMemData2.Next;
      end;
      dxMemData2.Filtered := True;

      fmLoadMain.cxProgressBar1.Properties.Max := dxMemData2.RecordCount;
      dxMemData2.First;
      while not dxMemData2.Eof do begin
        file_name := dxMemData2.FieldByName('file_name').AsString;
        fmLoadMain.Label1.Caption := 'Файл: ' + file_name +' ...';
        Application.ProcessMessages;
        // ------- заменяем или создаём файл ----------
        if dxMemData2.FieldByName('type_action').Value = 1 then begin
          if not CopyWithProgressSQL(file_name, path2 + file_name) then begin
            ShowMessage('Ошибка при копирование файла ' + file_name);
            set_open := False;
          end;
        end;
        // -------- удаляем файл -----------
        if dxMemData2.FieldByName('type_action').Value = 2 then begin
          SysUtils.DeleteFile(path2 + file_name);
        end;
        fmLoadMain.cxProgressBar1.Position := fmLoadMain.cxProgressBar1.Position + 1;
        Application.ProcessMessages;
        dxMemData2.Next;
      end;


      fmLoadMain.Close;
      fmLoadMain.Free;
      dxMemData1.Free;
      dxMemData2.Free;

      if set_open then
        WinExec(PAnsiChar(AnsiString(path2 + path3)), 0);
  end;

end.
