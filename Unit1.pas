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
//我市垡扰 问屠 抡文繺\\\\\\\\\\
procedure TLogin_or_Register_window.Login_btnClick(Sender: TObject);
begin
Login_or_Register_window.Hide;
Login_window.Show;
end;

//我市垡冗 问屠 信萌岩欣秩萛\\\\\\\\\\
procedure TLogin_or_Register_window.Register_btnClick(Sender: TObject);
begin
Login_or_Register_window.Hide;
Register_window.Show;
end;

end.
