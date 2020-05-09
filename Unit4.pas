unit Unit4;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons;

type
  THome = class(TForm)
    Button1: TButton;
    Button2: TButton;
    Button3: TButton;
    ListBox1: TListBox;
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Home: THome;

implementation

uses Unit1;

{$R *.dfm}

procedure THome.Button1Click(Sender: TObject);
var TempFile: TextFile;
Data: TDateTime;
SR:TSearchRec;
FindRes:Integer;
begin
AssignFile(TempFile,DateToStr(Date));
Rewrite(TempFile,DateToStr(Date)+'.txt');
writeln(TempFile,'Hello World');
CloseFile(TempFile);
ListBox1.Clear;
FindRes:=FindFirst('d:\Projects\Course_work\*.txt*',faAnyFile,SR);
While FindRes=0 do
   begin
      if ((SR.Attr and faDirectory)=faDirectory) and ((SR.Name='.')or(SR.Name='..')) then
         begin
            FindRes:=FindNext(SR);
            Continue;
         end;
      if SR.Name <> 'acc.txt' then
        ListBox1.Items.Add(SR.Name);
      FindRes:=FindNext(SR);
   end;
FindClose(SR);
end;

procedure THome.Button2Click(Sender: TObject);
begin
First.Close;
end;

procedure THome.Button3Click(Sender: TObject);
Var SR:TSearchRec;
    FindRes:Integer;
begin
ListBox1.Clear;
FindRes:=FindFirst('d:\Projects\Course_work\*.txt*',faAnyFile,SR);
While FindRes=0 do
   begin
      if ((SR.Attr and faDirectory)=faDirectory) and ((SR.Name='.')or(SR.Name='..')) then
         begin
            FindRes:=FindNext(SR);
            Continue;
         end;
      if SR.Name <> 'acc.txt' then
        ListBox1.Items.Add(SR.Name);
      FindRes:=FindNext(SR);
   end;
FindClose(SR);
end;

procedure THome.FormCreate(Sender: TObject);
Var SR:TSearchRec;
    FindRes:Integer;
begin
ListBox1.Clear;
FindRes:=FindFirst('d:\Projects\Course_work\*.txt*',faAnyFile,SR);
While FindRes=0 do
   begin
      if ((SR.Attr and faDirectory)=faDirectory) and ((SR.Name='.')or(SR.Name='..')) then
         begin
            FindRes:=FindNext(SR);
            Continue;
         end;
      if SR.Name <> 'acc.txt' then
        ListBox1.Items.Add(SR.Name);
      FindRes:=FindNext(SR);
   end;
FindClose(SR);
end;

end.
