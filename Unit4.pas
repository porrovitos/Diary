unit Unit4;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, ExtCtrls;
 var file_name : string;
 dell_unit4 : Boolean = False;
type
  THome_window = class(TForm)
    New_Record_btn: TButton;
    Exit_btn: TButton;
    List_of_Notes_listbox: TListBox;
    Error_label: TLabel;
    Delete_btn: TButton;
    procedure New_Record_btnClick(Sender: TObject);
    procedure Exit_btnClick(Sender: TObject);
    procedure Delete_btnClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure List_of_Notes_listboxDblClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Home_window: THome_window;

implementation

uses Unit1, Unit5, Unit2;

{$R *.dfm}




procedure THome_window.New_Record_btnClick(Sender: TObject);
var TempFile: TextFile;
Data: TDateTime;
text_of_file: String;
begin
///////////�������� ����� �������\\\\\\\\\\
  file_name := username_unit2 + DateToStr(Date)+ '.txt';
  AssignFile(TempFile,DateToStr(Date));
  if fileexists(username_unit2 + DateToStr(Date)+ '.txt') then
    begin
      Reset(TempFile,username_unit2 + DateToStr(Date)+ '.txt');
      Error_label.Caption:= '������ �� ����� ���� ��� ����������.'+ #13#10+'�������� ������ � ���� ���� - �������������� ��.';
    end
  else
    begin
      rewrite(TempFile,username_unit2 + DateToStr(Date)+ '.txt');
      Diary_Edit_window.Show;
      CloseFile(TempFile);
      Reset(TempFile);
      readln(TempFile, text_of_file);
      Diary_Edit_window.Text_label.Caption := text_of_file;
      Home_window.Hide;
      Diary_Edit_window.Write_richedit.Visible := True;
      Diary_Edit_window.Save_btn.Visible := True;
      Diary_Edit_window.Edit_btn.Visible := False;
    end;
  CloseFile(TempFile);
end;

///////////����� �� ���������\\\\\\\\\\\\
procedure THome_window.Exit_btnClick(Sender: TObject);
begin
  Login_or_Register_window.Close;
end;


////////////�������� ������������ �������\\\\\\\\\\\
procedure THome_window.List_of_Notes_listboxDblClick(Sender: TObject);
var i:byte;
Temp_File :TextFile;
text_of_file : string;
begin
Diary_Edit_window.Save_btn.Visible := False;
if dell_unit4 = False then
  for i:=0 to List_of_Notes_listbox.Count-1 do
    if List_of_Notes_listbox.Selected[i] then
      begin
        Diary_Edit_window.Caption := self.List_of_Notes_listbox.Items.Strings[i];
        file_name := username_unit2 + self.List_of_Notes_listbox.Items.Strings[i] + '.txt';
      end;
if dell_unit4 = True then
  for i:=0 to List_of_Notes_listbox.Count-1 do
    if List_of_Notes_listbox.Selected[i] then
      begin
        file_name := username_unit2 + self.List_of_Notes_listbox.Items.Strings[i] + '.txt';
      end;
AssignFile(Temp_File, file_name);
Reset(Temp_File);
readln(Temp_File, text_of_file);
Diary_Edit_window.Text_label.Caption := text_of_file;
CloseFile(Temp_File);
Diary_Edit_window.Show;
Home_window.Hide;
end;


procedure THome_window.Delete_btnClick(Sender: TObject);
var Temp_File : TextFile;
buttonSelected,i : Integer;
SR:TSearchRec;
FindRes:Integer;
begin
for i:=0 to List_of_Notes_listbox.Count-1 do
    if List_of_Notes_listbox.Selected[i] then
      begin
        file_name := username_unit2 + self.List_of_Notes_listbox.Items.Strings[i] + '.txt';
      end;
buttonSelected := MessageDlg('�� ����� ������ ������� ����?',mtWarning, mbOKCancel, 0);
      if buttonSelected = mrOK then
        begin
          AssignFile(Temp_File, file_name);
          DeleteFile(file_name);
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

procedure THome_window.FormCreate(Sender: TObject);
begin
dell_unit4 := False;
end;

end.
