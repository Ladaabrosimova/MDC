unit Unit1;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, Forms, Controls, Graphics, Dialogs, Menus, StdCtrls, crt, FileUtil, LazUtf8;

type

  { TForm1 }

  TForm1 = class(TForm)
    FontDialog1: TFontDialog;
    MainMenu1: TMainMenu;
    Memo1: TMemo;
    MenuItem1: TMenuItem;
    MenuItem2: TMenuItem;
    MenuItem3: TMenuItem;
    MenuItem4: TMenuItem;
    OpenDialog1: TOpenDialog;
    SaveDialog1: TSaveDialog;
    procedure MenuItem2Click(Sender: TObject);
    procedure MenuItem3Click(Sender: TObject);
    procedure MenuItem4Click(Sender: TObject);
  private

  public

  end;

var
  Form1: TForm1;

implementation

{$R *.lfm}

{ TForm1 }
procedure Ansi_Memo(File_Ansi: string);
// Загрузка текста из файла в memo-поле на форме
var
tfile: TStringList;
str: string;
begin
tfile:= TStringList.Create; // создать список строк
// загрузить текст из файла в список  строк
tfile.LoadFromFile(File_Ansi);
str:= tfile.Text;
// загрузить текст из списка в memo-поле
Form1.Memo1.Lines.Add(str);
tfile.Free;
end;

procedure Memo_Ansi(File_Ansi: string);
// Сохранение текста из memo-поля в файле на диске
var
tfile: TStringList;
str: string;
begin
tfile:= TStringList.Create; // создать список строк
str:=Form1.Memo1.text;
// преобразовать текст в системную кодировку
str:= UTF8ToSys(str);
tfile.Add(str);
// сохранить в файле
tfile.SaveToFile(File_Ansi);
tfile.Free;
end;

procedure TForm1.MenuItem3Click(Sender: TObject);
// файл - открыть
var
File_Ansi:string;
begin
if OpenDialog1.Execute then
   begin
      File_Ansi:= OpenDialog1.FileName;
      File_Ansi:= UTF8ToSys(File_Ansi);
      Ansi_Memo(File_Ansi);
   end;
end;
// Настройка шрифта
procedure TForm1.MenuItem2Click(Sender: TObject);
begin
 FontDialog1.Font:=  memo1.Font;
if FontDialog1.execute=true  then
     begin
        Form1.Memo1.Font := FontDialog1.Font;
     end;
end;
// Кнопка "Сохранить"
procedure TForm1.MenuItem4Click(Sender: TObject);
var
File_Ansi:string;
begin
 if SaveDialog1.Execute then
   begin
      File_Ansi:=SaveDialog1.FileName;

      File_Ansi:= UTF8ToSys(File_Ansi);

      Memo_Ansi(File_Ansi);
   end;
end;

end.

