unit USettingUser;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Grids, DBGrids, ExtCtrls;

type
  TFUser = class(TForm)
    Panel1: TPanel;
    Label1: TLabel;
    Label2: TLabel;
    Label6: TLabel;
    Panel2: TPanel;
    Panel3: TPanel;
    Panel5: TPanel;
    Panel6: TPanel;
    Panel7: TPanel;
    Edit1: TEdit;
    Edit3: TEdit;
    DBGrid1: TDBGrid;
    GroupBox1: TGroupBox;
    Edit2: TEdit;
    procedure Panel6Click(Sender: TObject);
    procedure Panel5Click(Sender: TObject);
    procedure Panel2Click(Sender: TObject);
    procedure Panel3Click(Sender: TObject);
    procedure DBGrid1KeyPress(Sender: TObject; var Key: Char);
    procedure Edit2Change(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FUser: TFUser;

implementation

uses
  DataModule;

{$R *.dfm}

procedure TFUser.Panel6Click(Sender: TObject);
begin
  close;
end;

procedure TFUser.Panel5Click(Sender: TObject);
begin
  Edit1.Clear;
  Edit2.Clear;
  Edit3.Clear;
end;

procedure TFUser.Panel2Click(Sender: TObject);
begin
  if Edit1.Text = '' then
    MessageDlg('Username Tidak Boleh Kosong',mtInformation,[mbok],0)
  else
  if Edit3.Text = '' then
    MessageDlg('Password Tidak Boleh Kosong',mtInformation,[mbok],0)
  else
  if DM2.ADOLogin.Locate('username',edit2.Text,[]) then
    MessageDlg('Username Telah Ada',mtInformation,[mbok],0)
  else
    begin
      DM2.ADOLogin.Append;
      DM2.ADOLogin['username'] := Edit1.Text;
      DM2.ADOLogin['password'] := Edit3.Text;
      DM2.ADOLogin.Post;
      Edit1.Clear;
      Edit3.Clear;
    end;
end;

procedure TFUser.Panel3Click(Sender: TObject);
begin
  if DM2.ADOLogin.IsEmpty then
   MessageDlg('Data Kosong',mtInformation,[mbok],0)
  else
  if Application.MessageBox('Yakin Hapus Data ???','Pesan',MB_YESNO or MB_ICONQUESTION)=MrYes then
     begin
       DM2.ADOLogin.Delete;
       Edit1.Clear;
       Edit3.Clear;
     end;
end;

procedure TFUser.DBGrid1KeyPress(Sender: TObject; var Key: Char);
begin
  if Key = #13 then
  begin
    if DM2.ADOLogin.IsEmpty then
     MessageDlg('Data Kosong',mtInformation,[mbok],0)
     else
     begin
       Edit1.Text:= DM2.ADOLogin['username'];
       Edit3.Text:= DM2.ADOLogin['password'];
     end;
  end;
end;

procedure TFUser.Edit2Change(Sender: TObject);
begin
  if Edit2.Text ='' then
     begin
       DM2.ADOLogin.Close;
       DM2.ADOLogin.Open;
       DM2.ADOLogin.Filtered := false;
     end
  Else
     begin
       DM2.ADOLogin.Close;
       DM2.ADOLogin.Open;
       DM2.ADOLogin.Filtered := False;
       DM2.ADOLogin.Filter :='username LIKE '+Quotedstr('%'+Edit2.Text+'%');
       DM2.ADOLogin.Filtered := True;
     end;
end;

end.
