unit UFormDataSiswa;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, StdCtrls, ComCtrls;

type
  TFDataSiswa = class(TForm)
    Panel1: TPanel;
    Label1: TLabel;
    Panel2: TPanel;
    Panel3: TPanel;
    Panel4: TPanel;
    Panel5: TPanel;
    Panel6: TPanel;
    Panel7: TPanel;
    Edit1: TEdit;
    Label2: TLabel;
    Label3: TLabel;
    Edit2: TEdit;
    ComboBox1: TComboBox;
    Label4: TLabel;
    Label5: TLabel;
    ComboBox2: TComboBox;
    Label6: TLabel;
    Edit3: TEdit;
    Label7: TLabel;
    Edit4: TEdit;
    Label8: TLabel;
    Edit5: TEdit;
    Label9: TLabel;
    Edit6: TEdit;
    DateTimePicker1: TDateTimePicker;
    Label10: TLabel;
    Label11: TLabel;
    ComboBox3: TComboBox;
    Label12: TLabel;
    Edit7: TEdit;
    procedure Panel6Click(Sender: TObject);
    procedure Panel5Click(Sender: TObject);
    procedure bersih;
    procedure FormShow(Sender: TObject);
    procedure Panel2Click(Sender: TObject);
    procedure simpan;
    procedure ubah;
    procedure Panel4Click(Sender: TObject);
    procedure Panel3Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure Simpan2;
    procedure Ubah2;
    procedure Hapus2;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FDataSiswa: TFDataSiswa;

implementation

uses
  DataModule;

{$R *.dfm}

procedure TFDataSiswa.Panel6Click(Sender: TObject);
begin
  bersih;
  close;
end;

procedure TFDataSiswa.Panel5Click(Sender: TObject);
begin
  bersih;
end;

procedure TFDataSiswa.bersih;
begin
  Edit1.Clear;
  Edit2.Clear;
  ComboBox1.Text := '-- PILIH JENIS KELAMIN --';
  ComboBox2.Text := '-- PILIH KELAS --';
  DateTimePicker1.Date := Now;
  ComboBox3.Text := '-- PILIH STATUS --';
  Edit3.Clear;
  Edit4.Clear;
  Edit5.Clear;
  Edit6.Clear;
  Edit7.Clear;
end;

procedure TFDataSiswa.FormShow(Sender: TObject);
begin
//  bersih;
end;

procedure TFDataSiswa.Panel2Click(Sender: TObject);
begin
  if Edit1.Text ='' then
    MessageDlg('NISN Kosong',mtInformation,[mbok],0)
   else
  if Edit2.Text ='' then
    MessageDlg('Nama Siswa Kosong',mtInformation,[mbok],0)
  else
  if ComboBox1.Text ='-- PILIH JENIS KELAMIN --' then
      MessageDlg('Silahkan Pilih Jenis Kelamin',mtInformation,[mbok],0)
  else
  if ComboBox2.Text = '-- PILIH KELAS --' then
      MessageDlg('Silahkan Pilih Kelas',mtInformation,[mbok],0)
  else
  if ComboBox3.Text = '-- PILIH STATUS --' then
      MessageDlg('Silahkan Pilih Status',mtInformation,[mbok],0)
  else
  if Edit3.Text ='' then
    MessageDlg('Alamat Kosong',mtInformation,[mbok],0)
  else
  if Edit4.Text ='' then
    MessageDlg('Tempat Lahir Kosong',mtInformation,[mbok],0)
  else
  if Edit5.Text ='' then
    MessageDlg('Nama Orang Tua Kosong',mtInformation,[mbok],0)
  else
  if Edit6.Text ='' then
    MessageDlg('Telepon Kosong',mtInformation,[mbok],0)
  else
  if Edit7.Text ='' then
    MessageDlg('Periode Kosong',mtInformation,[mbok],0)
  else
  if DM2.ADOSiswa.Locate('nisn',Edit1.Text,[]) then
    MessageDlg('NISN Telah Ada',mtInformation,[mbok],0)
  else
    begin
      simpan;
      Simpan2;
      bersih;
    end;
end;

procedure TFDataSiswa.simpan;
begin
  DM2.ADOSiswa.Append;
  DM2.ADOSiswa['nisn'] := Edit1.Text;
  DM2.ADOSiswa['nama_siswa'] := Edit2.Text;
  DM2.ADOSiswa['jenis_kelamin'] := ComboBox1.Text;
  DM2.ADOSiswa['kelas'] := ComboBox2.Text;
  DM2.ADOSiswa['alamat'] := Edit3.Text;
  DM2.ADOSiswa['tempat_lahir'] := Edit4.Text;
  DM2.ADOSiswa['tgl'] := DateTimePicker1.Date;
  DM2.ADOSiswa['nama_ortu'] := Edit5.Text;
  DM2.ADOSiswa['telpon'] := Edit6.Text;
  DM2.ADOSiswa['status'] := ComboBox3.Text;
  DM2.ADOSiswa['periode'] := Edit7.Text;
  DM2.ADOSiswa.Post;
end;

procedure TFDataSiswa.ubah;
begin
  DM2.ADOSiswa.Edit;
  DM2.ADOSiswa['nisn'] := Edit1.Text;
  DM2.ADOSiswa['nama_siswa'] := Edit2.Text;
  DM2.ADOSiswa['jenis_kelamin'] := ComboBox1.Text;
  DM2.ADOSiswa['kelas'] := ComboBox2.Text;
  DM2.ADOSiswa['alamat'] := Edit3.Text;
  DM2.ADOSiswa['tempat_lahir'] := Edit4.Text;
  DM2.ADOSiswa['tgl'] := DateTimePicker1.Date;
  DM2.ADOSiswa['nama_ortu'] := Edit5.Text;
  DM2.ADOSiswa['telpon'] := Edit6.Text;
  DM2.ADOSiswa['status'] := ComboBox3.Text;
  DM2.ADOSiswa['periode'] := Edit7.Text;
  DM2.ADOSiswa.Post;
end;

procedure TFDataSiswa.Panel4Click(Sender: TObject);
begin
  if Edit1.Text ='' then
    MessageDlg('NISN Kosong',mtInformation,[mbok],0)
  else
  if Edit2.Text ='' then
    MessageDlg('Nama Siswa Kosong',mtInformation,[mbok],0)
  else
  if ComboBox1.Text ='-- PILIH JENIS KELAMIN --' then
      MessageDlg('Silahkan Pilih Jenis Kelamin',mtInformation,[mbok],0)
  else
  if ComboBox2.Text = '-- PILIH KELAS --' then
      MessageDlg('Silahkan Pilih Kelas',mtInformation,[mbok],0)
  else
  if ComboBox3.Text = '-- PILIH STATUS --' then
      MessageDlg('Silahkan Pilih Status',mtInformation,[mbok],0)
  else
  if Edit3.Text ='' then
    MessageDlg('Alamat Kosong',mtInformation,[mbok],0)
  else
  if Edit4.Text ='' then
    MessageDlg('Tempat Lahir Kosong',mtInformation,[mbok],0)
  else
  if Edit5.Text ='' then
    MessageDlg('Nama Orang Tua Kosong',mtInformation,[mbok],0)
  else
  if Edit6.Text ='' then
    MessageDlg('Telepon Kosong',mtInformation,[mbok],0)
  else
  if Edit7.Text ='' then
    MessageDlg('Periode Kosong',mtInformation,[mbok],0)
  else
    begin
      Ubah2;
      ubah;
      bersih;
      //close;
    end;
end;

procedure TFDataSiswa.Panel3Click(Sender: TObject);
begin
  if DM2.ADOSiswa.IsEmpty then
   MessageDlg('Data Kosong',mtInformation,[mbok],0)
  else
  if Edit1.Text ='' then
    MessageDlg('NISN Kosong',mtInformation,[mbok],0)
  else
  if Application.MessageBox('Yakin Hapus Data ???','Pesan',MB_YESNO or MB_ICONQUESTION)=MrYes then
     begin
       Hapus2;
       DM2.ADOTable1.Filtered := False;
       DM2.ADOSiswa.Delete;
       bersih;
       Close;
     end;
end;

procedure TFDataSiswa.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  bersih;
end;

procedure TFDataSiswa.Simpan2;
begin
  DM2.ADOSPPdanRekapBayar.Filtered := False;
  DM2.ADOSPPdanRekapBayar.Filter :='periode LIKE '+Quotedstr('%'+Edit7.Text+'%') + 'AND kelas LIKE '+Quotedstr('%'+ComboBox2.Text+'%');
  DM2.ADOSPPdanRekapBayar.Filtered := True;
  //
  DM2.ADOTable1.Append;
  DM2.ADOTable1['nisn'] := Edit1.Text;
  DM2.ADOTable1['nama'] := Edit2.Text;
  DM2.ADOTable1['kelas'] := ComboBox2.Text;
  DM2.ADOTable1['periode'] := Edit7.Text;
  DM2.ADOTable1['date_update'] := DateTimeToStr(Now);
  DM2.ADOTable1['sisa_bayar'] := FloatToStr(StrToFloat(DM2.ADOSPPdanRekapBayar['uang_spp']) * 12);
  DM2.ADOTable1.Post;
  DM2.ADOSPPdanRekapBayar.Filtered := False;
end;

procedure TFDataSiswa.Ubah2;
begin
  //
  DM2.ADOTable1.Close;
  DM2.ADOTable1.Open;
  DM2.ADOTable1.Filtered := False;
  DM2.ADOTable1.Filter :='periode LIKE '+Quotedstr('%'+Edit7.Text+'%') + 'AND nisn LIKE '+Quotedstr('%'+Edit1.Text+'%') + 'AND kelas LIKE '+Quotedstr('%'+ComboBox2.Text+'%');
  DM2.ADOTable1.Filtered := True;
  //
  DM2.ADOSPPdanRekapBayar.Close;
  DM2.ADOSPPdanRekapBayar.Open;
  DM2.ADOSPPdanRekapBayar.Filtered := False;
  DM2.ADOSPPdanRekapBayar.Filter :='periode LIKE '+Quotedstr('%'+Edit7.Text+'%') + 'AND kelas LIKE '+Quotedstr('%'+ComboBox2.Text+'%');
  DM2.ADOSPPdanRekapBayar.Filtered := True;
  //
  DM2.ADOTable1.Edit;
  DM2.ADOTable1['nisn'] := Edit1.Text;
  DM2.ADOTable1['nama'] := Edit2.Text;
  DM2.ADOTable1['kelas'] := ComboBox2.Text;
  DM2.ADOTable1['periode'] := Edit7.Text;
  DM2.ADOTable1['sisa_bayar'] := FloatToStr(StrToFloat(DM2.ADOSPPdanRekapBayar['uang_spp']) * 12);
  DM2.ADOTable1['date_update'] := DateTimeToStr(Now);
  DM2.ADOTable1.Post;
  //
  DM2.ADOTable1.Filtered := False;
  DM2.ADOSPPdanRekapBayar.Filtered := False;
end;

procedure TFDataSiswa.Hapus2;
begin
  //
  DM2.ADOTable1.Close;
  DM2.ADOTable1.Open;
  DM2.ADOTable1.Filtered := False;
  DM2.ADOTable1.Filter :='periode LIKE '+Quotedstr('%'+Edit7.Text+'%') + 'AND nisn LIKE '+Quotedstr('%'+Edit1.Text+'%') + 'AND kelas LIKE '+Quotedstr('%'+ComboBox2.Text+'%');
  DM2.ADOTable1.Filtered := True;
  //
  DM2.ADOTable1.Delete;
end;

end.
