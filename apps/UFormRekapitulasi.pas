unit UFormRekapitulasi;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Grids, DBGrids, ExtCtrls;

type
  TFRekapitulasi = class(TForm)
    Panel1: TPanel;
    Label2: TLabel;
    Label5: TLabel;
    Panel2: TPanel;
    Panel3: TPanel;
    Panel7: TPanel;
    Edit1: TEdit;
    ComboBox2: TComboBox;
    DBGrid1: TDBGrid;
    GroupBox1: TGroupBox;
    Edit3: TEdit;
    RadioButton1: TRadioButton;
    RadioButton2: TRadioButton;
    procedure Panel2Click(Sender: TObject);
    procedure Panel3Click(Sender: TObject);
    procedure Edit3Change(Sender: TObject);
    procedure FormActivate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FRekapitulasi: TFRekapitulasi;

implementation

uses
  DataModule;

{$R *.dfm}

procedure TFRekapitulasi.Panel2Click(Sender: TObject);
begin
  if edit1.Text ='' then
     MessageDlg('Periode Kosong',mtinformation,[mbok],0)
  Else
  if ComboBox2.Text ='-- PILIH KELAS --' then
     MessageDlg('Silahkan Pilih Kelas',mtinformation,[mbok],0)
  Else
    begin
      DM2.ADOQPembayaran.Close;
      DM2.ADOQPembayaran.SQL.Clear;
      DM2.ADOQPembayaran.SQL.Add('SELECT * FROM pembayaran WHERE periode = "'+Edit1.Text+'" AND kelas = "'+ComboBox2.Text+'"');
      DM2.ADOQPembayaran.Open;
    end;
end;

procedure TFRekapitulasi.Panel3Click(Sender: TObject);
begin
  DM2.ADOQPembayaran.Close;
  DM2.ADOQPembayaran.SQL.Clear;
  DM2.ADOQPembayaran.SQL.Add('SELECT * FROM pembayaran');
  DM2.ADOQPembayaran.Open;
  //
  Edit1.Clear;
  ComboBox2.Text :='-- PILIH KELAS --';
  Edit3.Clear;
  RadioButton1.Checked := False;
  RadioButton2.Checked := False;
end;

procedure TFRekapitulasi.Edit3Change(Sender: TObject);
begin
  if RadioButton1.Checked = True then
    begin
      if Edit3.Text = '' then
        begin
          DM2.ADOQPembayaran.Filtered := False;
        end
      else
        begin
          DM2.ADOQPembayaran.Filtered := False;
          DM2.ADOQPembayaran.Filter :='nisn LIKE '+Quotedstr('%'+Edit3.Text+'%');
          DM2.ADOQPembayaran.Filtered := True;
        end;
    end
  else
  if RadioButton2.Checked = True then
    begin
      if Edit3.Text = '' then
        begin
          DM2.ADOQPembayaran.Filtered := False;
        end
      else
        begin
          DM2.ADOQPembayaran.Filtered := False;
          DM2.ADOQPembayaran.Filter :='nama LIKE '+Quotedstr('%'+Edit3.Text+'%');
          DM2.ADOQPembayaran.Filtered := True;
        end;
    end;
end;

procedure TFRekapitulasi.FormActivate(Sender: TObject);
begin
  DM2.ADOQPembayaran.Close;
  DM2.ADOQPembayaran.SQL.Clear;
  DM2.ADOQPembayaran.SQL.Add('SELECT * FROM pembayaran');
  DM2.ADOQPembayaran.Open;
end;

end.
