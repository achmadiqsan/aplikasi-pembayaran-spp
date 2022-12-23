unit UPeriode;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Grids, DBGrids, ExtCtrls;

type
  TFPeriode = class(TForm)
    Panel1: TPanel;
    Label1: TLabel;
    Label2: TLabel;
    Panel2: TPanel;
    Panel3: TPanel;
    Panel5: TPanel;
    Panel6: TPanel;
    Panel7: TPanel;
    Edit1: TEdit;
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
  FPeriode: TFPeriode;

implementation

uses
  menu, DataModule;

{$R *.dfm}

procedure TFPeriode.Panel6Click(Sender: TObject);
begin
    DM2.ADOPeriode.Filtered := False;
    close;
end;

procedure TFPeriode.Panel5Click(Sender: TObject);
begin
  Edit1.Clear;
  Edit2.Clear;
  DM2.ADOPeriode.Filtered := False;
end;

procedure TFPeriode.Panel2Click(Sender: TObject);
begin
  if Edit1.Text = '' then
    MessageDlg('Periode Tidak Boleh Kosong',mtInformation,[mbok],0)
  else
  if DM2.ADOPeriode.Locate('periode',Edit1.Text,[]) then
    MessageDlg('Periode Telah Ada',mtInformation,[mbok],0)
  else
    begin
      DM2.ADOPeriode.Append;
      DM2.ADOPeriode['periode'] := Edit1.Text;
      DM2.ADOPeriode.Post;
      Edit1.Clear;
    end;
end;

procedure TFPeriode.Panel3Click(Sender: TObject);
begin
  if DM2.ADOPeriode.IsEmpty then
   MessageDlg('Data Kosong',mtInformation,[mbok],0)
  else
  if Application.MessageBox('Yakin Hapus Data ???','Pesan',MB_YESNO or MB_ICONQUESTION)=MrYes then
     begin
       DM2.ADOPeriode.Delete;
       Edit1.Clear;
     end;
end;

procedure TFPeriode.DBGrid1KeyPress(Sender: TObject; var Key: Char);
begin
  if Key = #13 then
  begin
    if DM2.ADOPeriode.IsEmpty then
     MessageDlg('Data Kosong',mtInformation,[mbok],0)
     else
     begin
       Edit1.Text:= DM2.ADOPeriode['periode'];
     end;
  end;
end;

procedure TFPeriode.Edit2Change(Sender: TObject);
begin
  if Edit2.Text ='' then
     begin
       DM2.ADOPeriode.Close;
       DM2.ADOPeriode.Open;
       DM2.ADOPeriode.Filtered := false;
     end
  Else
     begin
       DM2.ADOPeriode.Close;
       DM2.ADOPeriode.Open;
       DM2.ADOPeriode.Filtered := False;
       DM2.ADOPeriode.Filter :='periode LIKE '+Quotedstr('%'+Edit2.Text+'%');
       DM2.ADOPeriode.Filtered := True;
     end;
end;

end.
