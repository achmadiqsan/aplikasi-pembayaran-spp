unit UFormSheetKwitansi;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Grids, DBGrids, ExtCtrls;

type
  TFSheetKwintansi = class(TForm)
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
    Panel4: TPanel;
    Label1: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label6: TLabel;
    procedure Panel4Click(Sender: TObject);
    procedure Panel3Click(Sender: TObject);
    procedure Panel2Click(Sender: TObject);
    procedure Edit3Change(Sender: TObject);
    procedure bersih;
    procedure FormActivate(Sender: TObject);
    procedure DBGrid1KeyPress(Sender: TObject; var Key: Char);
    procedure proses1;
    procedure proses2;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FSheetKwintansi: TFSheetKwintansi;

implementation

uses
  UReport, DataModule;

{$R *.dfm}

procedure TFSheetKwintansi.Panel4Click(Sender: TObject);
begin
  if (Label4.Caption ='Label4') or (Label1.Caption ='Label1') or (Label3.Caption ='Label3') or (Label6.Caption ='Label6') then
     MessageDlg('Silahkan Pilih Data Yang Anda Cetak Kwitansinya !!!',mtinformation,[mbok],0)
  Else
    begin
      proses1;
      FReport.QRLabel39.Caption := DM2.Kwintansi2['id_bayar'] + '/' + DateToStr(DM2.Kwintansi2['tgl_bayar']);
      FReport.QRLabel38.Caption := DM2.Kwintansi2['bulan'];
      proses2;
      FReport.QRLabel36.Caption := FormatDateTime('dddddd', Now);
      FReport.QuickRep2.Preview;
    end;
end;

procedure TFSheetKwintansi.Panel3Click(Sender: TObject);
begin
  bersih;
end;

procedure TFSheetKwintansi.Panel2Click(Sender: TObject);
begin
  if edit1.Text ='' then
     MessageDlg('Periode Kosong',mtinformation,[mbok],0)
  Else
  if ComboBox2.Text ='-- PILIH KELAS --' then
     MessageDlg('Silahkan Pilih Kelas',mtinformation,[mbok],0)
  Else
    begin
      DM2.Kwintansi2.Close;
      DM2.Kwintansi2.SQL.Clear;
      DM2.Kwintansi2.SQL.Add('SELECT * FROM pembayaran WHERE periode = "'+Edit1.Text+'" AND kelas = "'+ComboBox2.Text+'"');
      DM2.Kwintansi2.Open;
    end;
end;

procedure TFSheetKwintansi.Edit3Change(Sender: TObject);
begin
  if RadioButton1.Checked = True then
    begin
      if Edit3.Text = '' then
        begin
          DM2.Kwintansi2.Filtered := False;
        end
      else
        begin
          DM2.Kwintansi2.Filtered := False;
          DM2.Kwintansi2.Filter :='nisn LIKE '+Quotedstr('%'+Edit3.Text+'%');
          DM2.Kwintansi2.Filtered := True;
        end;
    end
  else
  if RadioButton2.Checked = True then
    begin
      if Edit3.Text = '' then
        begin
          DM2.Kwintansi2.Filtered := False;
        end
      else
        begin
          DM2.Kwintansi2.Filtered := False;
          DM2.Kwintansi2.Filter :='nama LIKE '+Quotedstr('%'+Edit3.Text+'%');
          DM2.Kwintansi2.Filtered := True;
        end;
    end;
end;

procedure TFSheetKwintansi.bersih;
begin
  Edit1.Clear;
  Edit3.Clear;
  Label4.Caption := 'Label4';
  Label1.Caption := 'Label1';
  Label3.Caption := 'Label3';
  Label6.Caption := 'Label6';
  ComboBox2.Text :='-- PILIH KELAS --';
  RadioButton1.Checked := False;
  RadioButton2.Checked := False;
  //
  DM2.Kwintansi2.Close;
  DM2.Kwintansi2.SQL.Clear;
  DM2.Kwintansi2.SQL.Add('SELECT * FROM pembayaran');
  DM2.Kwintansi2.Open;
  //
  DM2.Kwintansi2.Filtered := False;
end;

procedure TFSheetKwintansi.FormActivate(Sender: TObject);
begin
  bersih;
  DM2.Kwintansi.Close;
  DM2.Kwintansi.SQL.Clear;
  DM2.Kwintansi.SQL.Add('SELECT * FROM data_bayar2');
  DM2.Kwintansi.Open;
end;

procedure TFSheetKwintansi.DBGrid1KeyPress(Sender: TObject; var Key: Char);
begin
if Key = #13 then
  begin
    if DM2.Kwintansi2.IsEmpty then
     MessageDlg('Data Kosong',mtInformation,[mbok],0)
     else
     begin
      Label6.Caption := DM2.Kwintansi2['id_bayar'];
      Label4.Caption := DM2.Kwintansi2['kelas'];
      Label1.Caption := DM2.Kwintansi2['nisn'];
      Label3.Caption := DM2.Kwintansi2['periode'];
      MessageDlg('Data Telah Di Pilih !!!',mtinformation,[mbok],0);
     end;
  end;
end;

procedure TFSheetKwintansi.proses1;
begin
  //
  DM2.Kwintansi2.Filtered := False;
  DM2.Kwintansi2.Filter :='id_bayar LIKE '+Quotedstr('%'+Label6.Caption+'%');
  DM2.Kwintansi2.Filtered := True;
end;

procedure TFSheetKwintansi.proses2;
begin
  //
  DM2.Kwintansi.Close;
  DM2.Kwintansi.SQL.Clear;
  DM2.Kwintansi.SQL.Add('SELECT * FROM data_bayar2 WHERE nisn = "'+Label1.Caption+'" AND kelas = "'+Label4.Caption+'" AND periode = "'+Label3.Caption+'"');
  DM2.Kwintansi.Open;
end;

end.
