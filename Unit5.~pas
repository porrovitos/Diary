unit Unit5;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ComCtrls;
  var save_or_no: boolean;
type
  TEdit_Form = class(TForm)
    Label1: TLabel;
    write: TRichEdit;
    Save: TButton;
    close: TButton;
    Edit_btn: TButton;
    back: TButton;
    procedure SaveClick(Sender: TObject);
    procedure closeClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure Edit_btnClick(Sender: TObject);
    procedure backClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Edit_Form: TEdit_Form;

implementation

uses Unit4, Unit1;

{$R *.dfm}

procedure TEdit_Form.SaveClick(Sender: TObject);
var
text_in_file: TextFile;
begin
close_flag := True;
save_or_no := True;
Label1.Caption := write.text;
AssignFile(text_in_file, file_name);
Rewrite(text_in_file);
writeln(text_in_file,Label1.Caption);
CloseFile(text_in_file);
end;

procedure TEdit_Form.closeClick(Sender: TObject);
var
buttonSelected : Integer;
begin
if (Label1.Caption <> write.Text) and (write.Visible = True) then
    begin
      buttonSelected := MessageDlg('Вы не сохранили. Хотите закрыть?',mtWarning, mbOKCancel, 0);
      if buttonSelected = mrOK then
        First.close;
    end
  else
    First.Close;
end;

procedure TEdit_Form.FormCreate(Sender: TObject);
begin
save_or_no:= False;
end;

procedure TEdit_Form.Edit_btnClick(Sender: TObject);
begin
edit_btn.Visible := False;
write.Visible := True;
write.Text := Label1.Caption;
Save.Visible := True;
end;


procedure TEdit_Form.backClick(Sender: TObject);
var
buttonSelected : Integer;
begin

if (Label1.Caption <> write.Text) and (write.Visible = True) then
    begin
      buttonSelected := MessageDlg('Вы не сохранили. Хотите перейти в главное меню?',mtWarning, mbOKCancel, 0);
      if buttonSelected = mrOK then
        begin
          Edit_Form.Hide;
          Home.Show;
        end;
    end
  else
    begin
    Edit_Form.Hide;
    Home.Show;
    end;
end;


end.
