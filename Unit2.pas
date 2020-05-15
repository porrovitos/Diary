unit Unit2;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls;

type
  TLogin = class(TForm)
    Button1: TButton;
    Edit1: TEdit;
    Edit2: TEdit;
    Label1: TLabel;
    Button2: TButton;
    Label2: TLabel;
    Label3: TLabel;
    Button3: TButton;
    procedure Button2Click(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Login: TLogin;

implementation

uses Unit1, Unit4;

{$R *.dfm}

procedure TLogin.Button2Click(Sender: TObject);
begin
First.Show;
Login.Hide;
end;

procedure TLogin.Button1Click(Sender: TObject);
var k:integer;
begin
  k:=0;
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

      
  Home.Show;
  Login.Hide;
  
end;

procedure TLogin.Button3Click(Sender: TObject);
begin
First.Close;
end;

end.
