unit Unit1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls;

type
  TFirst = class(TForm)
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
  First: TFirst;

implementation

uses Unit2, Unit3;

{$R *.dfm}

procedure TFirst.Login_btnClick(Sender: TObject);
begin
First.Hide;
Login.Show;
end;

procedure TFirst.Register_btnClick(Sender: TObject);
begin
First.Hide;
Sign_In.Show;
end;

end.
