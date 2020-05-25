unit Unit2;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls;
  var username_unit2 : string;
type
  TLogin_window = class(TForm)
    Login_btn: TButton;
    Username_edit: TEdit;
    Password_edit: TEdit;
    Username_label: TLabel;
    Return_btn: TButton;
    Password_label: TLabel;
    Error_label: TLabel;
    Exit_btn: TButton;
    procedure Return_btnClick(Sender: TObject);
    procedure Login_btnClick(Sender: TObject);
    procedure Exit_btnClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Login_window: TLogin_window;

implementation

uses Unit1, Unit4;

{$R *.dfm}

procedure TLogin_window.Return_btnClick(Sender: TObject);
begin
Login_or_Register_window.Show;
Login_window.Hide;
end;

procedure TLogin_window.Login_btnClick(Sender: TObject);
var k:integer;
password:string;
accaunts: TextFile;
SR:TSearchRec;
FindRes:Integer;
begin
AssignFile(accaunts, 'acc.txt');
  k:=0;
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
  name:='';
  if k = 0 then
  begin
    Reset(accaunts);
    readln(accaunts,username_unit2);
    while not EOF(accaunts) do
      begin
        readln(accaunts,username_unit2);
        readln(accaunts,password);
        if (username_unit2 = Username_edit.Text) and (password = Password_edit.Text) then
          begin
            username_unit2 := Username_edit.Text;
            Login_window.Hide;
            Home_window.Show;
            break;
          end
        else
          Error_label.Caption:= 'Неверный логин или пароль.'
      end;
    Home_window.List_of_Notes_listbox.Clear;
    Home_window.List_of_Notes_listbox.Sorted := True;
    FindRes:=FindFirst('d:\Projects\Course_work\*.txt*',faAnyFile,SR);
    While FindRes=0 do
      begin
        if ((SR.Attr and faDirectory)=faDirectory) and ((SR.Name='.')or(SR.Name='..')) then
          begin
            FindRes:=FindNext(SR);
            Continue;
          end;
        if (SR.Name <> 'acc.txt') then
          if (Copy(SR.Name, 1, Length(SR.Name)-14) = username_unit2) then
            begin
              Home_window.List_of_Notes_listbox.Items.Add(Copy(SR.Name, length(username_unit2)+1, 10));
            end;
        FindRes:=FindNext(SR);
      end;
    FindClose(SR);
  end;
end;

procedure TLogin_window.Exit_btnClick(Sender: TObject);
begin
Login_or_Register_window.Close;
end;

end.
