unit Unit3;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls;

type
  TSign_In = class(TForm)
    Label1: TLabel;
    Edit1: TEdit;
    Label2: TLabel;
    Edit2: TEdit;
    Button1: TButton;
    Button2: TButton;
    Label3: TLabel;
    procedure Button2Click(Sender: TObject);
    procedure Button1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Sign_In: TSign_In;

implementation

uses Unit1, Unit2;

{$R *.dfm}

procedure TSign_In.Button2Click(Sender: TObject);
begin
First.Show;
Sign_In.Hide;
end;

procedure TSign_In.Button1Click(Sender: TObject);
var
accaunts: TextFile;
name,pass,nick:string;
i,k:integer;
begin
  AssignFile(accaunts, 'acc.txt');
  Reset(accaunts);
  readln(accaunts,nick);
  k:=0;
  Label3.Caption := '';
  if (length(Edit1.text)=0) or (length(Edit1.text)=1) then
    begin
      Label3.Caption := 'Вы не ввели логин'+#13#10+'или он слишком короткий';
      k:=1;
    end;
  if (length(Edit2.text)=0) or (length(Edit2.text)=1) then
    begin
      Label3.Caption := 'Вы не ввели пароль'+#13#10+'или он слишком короткий';
      k:=1;
    end;
  if  (((length(Edit2.text)=0) or (length(Edit2.text)=1)) and ((length(Edit1.text)=0) or (length(Edit1.text)=1))) then
    begin
      Label3.Caption := 'Вы не ввели пароль и логин'+#13#10+'или они слишком короткие';
      k:=1;
    end;
  for i:=0 to 100 do
    begin
      readln(accaunts,name);
      if name = Edit1.Text then
        begin
          Label3.Caption := 'Такой аккаунт уже есть.';
          k:=1;
        end;
      readln(accaunts,name);
    end;
  nick := Edit1.Text;
  pass := Edit2.Text;
  CloseFile(accaunts);
  Append(accaunts);
  if k = 0 then
    begin
      Writeln(accaunts, nick);
      Writeln(accaunts, pass);
      Sign_In.Hide;
      Login.Show;
    end;
  CloseFile(accaunts);
end;

end.
