program Project1;

uses
  Forms,
  Unit1 in 'Unit1.pas' {Login_or_Register_window},
  Unit2 in 'Unit2.pas' {Login_window},
  Unit3 in 'Unit3.pas' {Register_window},
  Unit4 in 'Unit4.pas' {Home_window},
  Unit5 in 'Unit5.pas' {Diary_Edit_window};

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(TLogin_or_Register_window, Login_or_Register_window);
  Application.CreateForm(TLogin_window, Login_window);
  Application.CreateForm(TRegister_window, Register_window);
  Application.CreateForm(THome_window, Home_window);
  Application.CreateForm(TDiary_Edit_window, Diary_Edit_window);
  Application.Run;
end.
