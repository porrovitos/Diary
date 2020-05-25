unit Unit1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls;

type
  TLogin_or_Register_window = class(TForm)
    Login_btn: TButton;
    Register_btn: TButton;
    procedure Login_btnClick(Sender: TObject);
    procedure Register_btnClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Login_or_Register_window: TLogin_or_Register_window;

implementation

uses Unit2, Unit3;

{$R *.dfm}
//Открытия окна регистрации
procedure TLogin_or_Register_window.Login_btnClick(Sender: TObject);
begin
Login_or_Register_window.Hide;
Login_window.Show;
end;

//Открытия окна входа.
procedure TLogin_or_Register_window.Register_btnClick(Sender: TObject);
begin
Login_or_Register_window.Hide;
Register_window.Show;
end;

end.
