unit Unit5;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ComCtrls;
  var save_or_no: boolean;
type
  TDiary_Edit_window = class(TForm)
    Text_label: TLabel;
    Write_richedit: TRichEdit;
    Save_btn: TButton;
    Close_btn: TButton;
    Edit_btn: TButton;
    Back_btn: TButton;
    procedure Save_btnClick(Sender: TObject);
    procedure Close_btnClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure Edit_btnClick(Sender: TObject);
    procedure Back_btnClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Diary_Edit_window: TDiary_Edit_window;

implementation

uses Unit4, Unit1, Unit2;

{$R *.dfm}

procedure TDiary_Edit_window.Save_btnClick(Sender: TObject);
var
text_in_file: TextFile;
begin
save_or_no := True;
Text_label.Caption := Write_richedit.text;
AssignFile(text_in_file, file_name);
Rewrite(text_in_file);
writeln(text_in_file,Text_label.Caption);
CloseFile(text_in_file);
end;

procedure TDiary_Edit_window.Close_btnClick(Sender: TObject);
var
buttonSelected : Integer;
begin
if (Text_label.Caption <> Write_richedit.Text) and (Write_richedit.Visible = True) then
    begin
      buttonSelected := MessageDlg('Вы не сохранили. Хотите закрыть?',mtWarning, mbOKCancel, 0);
      if buttonSelected = mrOK then
        Login_or_Register_window.close;
    end
  else
    Login_or_Register_window.Close;
end;

procedure TDiary_Edit_window.FormCreate(Sender: TObject);
begin
save_or_no:= False;
end;

procedure TDiary_Edit_window.Edit_btnClick(Sender: TObject);
begin
edit_btn.Visible := False;
Write_richedit.Visible := True;
Write_richedit.Text := Text_label.Caption;
Save_btn.Visible := True;
end;


procedure TDiary_Edit_window.Back_btnClick(Sender: TObject);
var
buttonSelected : Integer;
SR:TSearchRec;
FindRes:Integer;
begin
if (Text_label.Caption <> Write_richedit.Text) and (Write_richedit.Visible = True) then
    begin
      buttonSelected := MessageDlg('Вы не сохранили. Хотите перейти в главное меню?',mtWarning, mbOKCancel, 0);
      if buttonSelected = mrOK then
        begin
          Edit_btn.Visible := True;
          Save_btn.Visible := False;
          Write_richedit.Hide;
          Write_richedit.Lines.Text :='';
          Home_window.List_of_Notes_listbox.ClearSelection;
          Diary_Edit_window.Hide;
          Home_window.Show;
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
                  Home_window.List_of_Notes_listbox.Items.Add(Copy(SR.Name, length(username_unit2)+1, Length(SR.Name)-3));
            FindRes:=FindNext(SR);
            end;
          FindClose(SR);
      end;
    end
  else
    begin
      Edit_btn.Visible := True;
      Save_btn.Visible := False;
      Write_richedit.Hide;
      Write_richedit.Lines.Text :='';
      Home_window.List_of_Notes_listbox.ClearSelection;
      Diary_Edit_window.Hide;
      Home_window.Show;
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
              Home_window.List_of_Notes_listbox.Items.Add(Copy(SR.Name, length(username_unit2)+1, Length(SR.Name)-3));
        FindRes:=FindNext(SR);
      end;
      FindClose(SR);
    end;
end;


end.
