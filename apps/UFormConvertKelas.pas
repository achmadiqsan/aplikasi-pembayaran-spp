unit UFormConvertKelas;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Grids, DBGrids, ExtCtrls;

type
  TFCovertKelas = class(TForm)
    Panel1: TPanel;
    Panel2: TPanel;
    Panel3: TPanel;
    Panel7: TPanel;
    DBGrid1: TDBGrid;
    GroupBox2: TGroupBox;
    Label2: TLabel;
    Edit1: TEdit;
    Label5: TLabel;
    ComboBox2: TComboBox;
    GroupBox3: TGroupBox;
    Label1: TLabel;
    Label3: TLabel;
    Edit2: TEdit;
    ComboBox1: TComboBox;
    Label11: TLabel;
    ComboBox3: TComboBox;
    procedure Panel2Click(Sender: TObject);
    procedure Panel3Click(Sender: TObject);
    procedure bersih;
    procedure pilih;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure Simpan;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FCovertKelas: TFCovertKelas;

implementation

uses
  DataModule;

{$R *.dfm}

procedure TFCovertKelas.bersih;
begin
  Edit1.Clear;
  Edit2.Clear;
  ComboBox1.Text := '-- PILIH KELAS --';
  ComboBox2.Text := '-- PILIH KELAS --';
  ComboBox3.Text := '-- PILIH STATUS --';
end;

procedure TFCovertKelas.Panel2Click(Sender: TObject);
begin
  DM2.ADOQCovert.Close;
  DM2.ADOQCovert.SQL.Clear;
  DM2.ADOQCovert.SQL.Add('SELECT * FROM siswa WHERE periode= "'+Edit1.Text+'" AND kelas = "'+ComboBox2.Text+'"');
  DM2.ADOQCovert.Open;
  MessageDlg('Pastikan Data Biaya SPP Pada Periode Berikutnya Telah Anda Setting Pada Form Data SPP,'
  + ' Serta Periode Pada Form Setting Periode Jika Belum Silahkan Anda Setting Karena Jika Belum Di Setting'
  + ' Akan Terjadi Error Ketika Melakukan Update Data Kelas Dan Periode... !!!',mtInformation,[mbok],0);
end;

procedure TFCovertKelas.Panel3Click(Sender: TObject);
  var
  k : integer;
begin
  if Edit2.Text = '' then
   MessageDlg('Data Kosong',mtInformation,[mbok],0)
  else
  if ComboBox1.Text = '-- PILIH KELAS --' then
   MessageDlg('Silahkan Pilih Data Kelas',mtInformation,[mbok],0)
  else
  if ComboBox1.Text = '-- PILIH STATUS --' then
   MessageDlg('Silahkan Pilih Data Status',mtInformation,[mbok],0)
  else
    begin
      for k := 1 to DM2.ADOQCovert.RecordCount Do
      DM2.ADOQCovert.First;
      while DM2.ADOQCovert.Eof = False do
      begin
        DM2.ADOQCovert.Edit;
        DM2.ADOQCovert['kelas'] := ComboBox1.Text;
        DM2.ADOQCovert['status'] := ComboBox3.Text;
        DM2.ADOQCovert['periode'] := Edit2.Text;
        DM2.ADOQCovert.Post;
        //
        if (ComboBox1.Text = 'KELAS 11') or (ComboBox1.Text = 'KELAS 12') then
        begin
          Simpan;
        end;
        DM2.ADOQCovert.Next;
      end;
      bersih;
      Edit1.SetFocus;
      MessageDlg('Data Kelas Berhasil Di Update',mtInformation,[mbok],0);
    end;
  //
  pilih;
end;

procedure TFCovertKelas.pilih;
begin
  DM2.ADOQCovert.Close;
  DM2.ADOQCovert.SQL.Clear;
  DM2.ADOQCovert.SQL.Add('SELECT * FROM siswa');
  DM2.ADOQCovert.Open;
end;

procedure TFCovertKelas.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  bersih;
  pilih;
end;

procedure TFCovertKelas.Simpan;
begin
  DM2.ADOSPPdanRekapBayar.Filtered := False;
  DM2.ADOSPPdanRekapBayar.Filter :='periode LIKE '+Quotedstr('%'+Edit2.Text+'%') + 'AND kelas LIKE '+Quotedstr('%'+ComboBox1.Text+'%');
  DM2.ADOSPPdanRekapBayar.Filtered := True;
  //
  DM2.ADOTable1.Append;
  DM2.ADOTable1['nisn'] := DM2.ADOQCovert['nisn'];
  DM2.ADOTable1['nama'] := DM2.ADOQCovert['nama_siswa'];
  DM2.ADOTable1['kelas'] := ComboBox1.Text;
  DM2.ADOTable1['periode'] := Edit2.Text;
  DM2.ADOTable1['date_update'] := DateTimeToStr(Now);
  DM2.ADOTable1['sisa_bayar'] := FloatToStr(StrToFloat(DM2.ADOSPPdanRekapBayar['uang_spp']) * 12);
  DM2.ADOTable1.Post;
end;

end.
