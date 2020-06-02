unit Unit3;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls;

type
  TRegister_window = class(TForm)
    Username_label: TLabel;
    Username_edit: TEdit;
    Password_label: TLabel;
    Password_edit: TEdit;
    Register_btn: TButton;
    Return_btn: TButton;
    Error_label: TLabel;
    Exit_btn: TButton;
    procedure Return_btnClick(Sender: TObject);
    procedure Register_btnClick(Sender: TObject);
    procedure Exit_btnClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Register_window: TRegister_window;

implementation

uses Unit1, Unit2;

{$R *.dfm}

procedure TRegister_window.Return_btnClick(Sender: TObject);
begin
Login_or_Register_window.Show;
Register_window.Hide;
end;

procedure TRegister_window.Register_btnClick(Sender: TObject);
var
accaunts: TextFile;
name,pass,nick:string;
i,k:integer;
begin
////////ПРОВЕРКА ДАННЫХ\\\\\\
  AssignFile(accaunts, 'acc.txt');
  Reset(accaunts);
  readln(accaunts,nick);
  k:=0;
  Error_label.Caption := '';
  for i:=0 to 100 do
    begin
      readln(accaunts,name);
///////СРАВНЕНИЕ НИКА С НИКАМИ В БД\\\\\\\\\\\
      if name = Username_edit.Text then
        begin
          Error_label.Caption := 'Такой аккаунт уже есть.';
          k:=1;
        end;
      readln(accaunts,name);
    end;
  if (length(Username_edit.text)=0) or (length(Username_edit.text)=1) then
    begin
      Error_label.Caption := 'Вы не ввели логин'+#13#10+'или он слишком короткий';
      k:=1;
    end;
  if (length(Password_edit.text)=0) or (length(Password_edit.text)=1) then
    begin
      Error_label.Caption := 'Вы не ввели пароль'+#13#10+'или он слишком короткий';
      k:=1;
    end;
  if  (((length(Password_edit.text)=0) or (length(Password_edit.text)=1)) and ((length(Username_edit.text)=0) or (length(Username_edit.text)=1))) then
    begin
      Error_label.Caption := 'Вы не ввели пароль и логин'+#13#10+'или они слишком короткие';
      k:=1;
    end;
////////ДАБАВЛЕНИЕ НИКА В БД\\\\\\\\\\\\
  nick := Username_edit.Text;
  pass := Password_edit.Text;
  CloseFile(accaunts);
  Append(accaunts);
  Username_edit.Text :='';
  Password_edit.Text := '';
  if k = 0 then
    begin
      Writeln(accaunts, nick);
      Writeln(accaunts, pass);
      Register_window.Hide;
      Login_window.Show;
    end;
  CloseFile(accaunts);
end;

///////////ВЫХОД ИЗ ПРОГРАММЫ\\\\\\\\\\\\
procedure TRegister_window.Exit_btnClick(Sender: TObject);
begin
Login_or_Register_window.Close;
end;



end.
