program Project1;

uses
  Forms,
  Unit1 in 'Unit1.pas' {First},
  Unit2 in 'Unit2.pas' {Login},
  Unit3 in 'Unit3.pas' {Sign_In},
  Unit4 in 'Unit4.pas' {Home},
  Unit5 in 'Unit5.pas' {Edit_Form};

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(TFirst, First);
  Application.CreateForm(TLogin, Login);
  Application.CreateForm(TSign_In, Sign_In);
  Application.CreateForm(THome, Home);
  Application.CreateForm(TEdit_Form, Edit_Form);
  Application.Run;
end.
