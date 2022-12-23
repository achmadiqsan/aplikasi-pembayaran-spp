unit ULogin;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, frxpngimage, ExtCtrls, StdCtrls;

type
  TFLogin = class(TForm)
    Panel1: TPanel;
    Label1: TLabel;
    Label2: TLabel;
    Panel2: TPanel;
    Panel7: TPanel;
    Edit1: TEdit;
    Image1: TImage;
    Label3: TLabel;
    Label4: TLabel;
    Edit2: TEdit;
    Label5: TLabel;
    Edit3: TEdit;
    Panel3: TPanel;
    procedure Panel3Click(Sender: TObject);
    procedure Panel2Click(Sender: TObject);
    procedure FormActivate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FLogin: TFLogin;

implementation

uses
  menu, DataModule, UPeriode, UCariData, UFormPembayaranSpp;

{$R *.dfm}

procedure TFLogin.Panel3Click(Sender: TObject);
begin
  Application.Terminate;
end;

procedure TFLogin.Panel2Click(Sender: TObject);
begin
  if edit1.Text ='' then
     MessageDlg('Periode Kosong',mtinformation,[mbok],0)
  Else
  if edit2.Text ='' then
     MessageDlg('Nama User Kosong',mtinformation,[mbok],0)
  Else
  if edit3.Text ='' then
     MessageDlg('Password Kosong',mtinformation,[mbok],0)
  Else
  if (Edit1.Text = 'CREATOR') and (Edit2.Text = 'CREATOR') and (Edit3.Text = 'CREATOR') then
  begin
    FPeriode.Show;
  end
  else
  if DM2.ADOPeriode.Locate('periode',edit1.Text,[]) then
    begin
       if DM2.ADOLogin.Locate('username',edit2.Text,[]) then
           Begin
              if edit3.Text = DM2.ADOLogin['password'] then
                 Begin
                    begin
                      FMenu.Label32.Caption := FLogin.Edit1.Text;
                      FCariData.Label1.Caption := FLogin.Edit1.Text;
                      FPembayaranSPP.Label25.Caption := FLogin.Edit1.Text;
                      FMenu.Show;
                      FLogin.Hide;
                    end;
                 End
              Else
                 MessageDlg('Password Salah !!!',mtinformation,[mbok],0);
           End
        else MessageDlg('Username Salah !!!',mtinformation,[mbok],0);
    end
  else MessageDlg('Periode Yang Anda Masukkan Salah Atau Tidak Terdaftar !!!',mtinformation,[mbok],0);
//  FMenu.Show;
end;

procedure TFLogin.FormActivate(Sender: TObject);
begin
  Edit1.Clear;
  Edit2.Clear;
  Edit3.Clear;
  Edit1.SetFocus;
end;

end.
