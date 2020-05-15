unit Unit4;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons;
 var file_name : string;
 close_flag : Boolean;
type
  THome = class(TForm)
    Button1: TButton;
    Button2: TButton;
    Button3: TButton;
    ListBox1: TListBox;
    Label1: TLabel;
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure ListBox1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Home: THome;

implementation

uses Unit1, Unit5;

{$R *.dfm}

procedure THome.Button1Click(Sender: TObject);
var TempFile: TextFile;
Data: TDateTime;
SR:TSearchRec;
FindRes:Integer;
begin
close_flag := True;
file_name := DateToStr(Date)+ '.txt';
AssignFile(TempFile,DateToStr(Date));
if fileexists(DateToStr(Date)+'.txt') then
  begin
    Reset(TempFile,DateToStr(Date)+'.txt');
    Label1.Caption:= 'Запись на такой дате уже существует.'+ #13#10+'Откройте запись и если надо - отредактируйте ее.';
  end
else
  begin
    rewrite(TempFile,DateToStr(Date)+'.txt');
    Edit_Form.Show;
    Home.Hide;
    Edit_Form.write.Visible := True;
    Edit_Form.Edit_btn.Visible := False;
  end;
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
ListBox1.Sorted := True;
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

procedure THome.ListBox1Click(Sender: TObject);
var i:byte;
temp :TextFile;
text_of_file : string;
begin
Edit_Form.Save.Visible := False;
save_or_no := True;
for i:=0 to ListBox1.Count-1 do
    if ListBox1.Selected[i] then
      file_name := self.ListBox1.Items.Strings[i];

AssignFile(temp, file_name);
Reset(temp);
readln(temp, text_of_file);
Edit_Form.Label1.Caption := text_of_file;
CloseFile(temp);
Edit_Form.Show;
Home.Hide;
end;

end.
