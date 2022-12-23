unit menu;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, frxpngimage, StdCtrls, Grids, DBGrids, Menus;

type
  TFMenu = class(TForm)
    Panel1: TPanel;
    Panel2: TPanel;
    Image1: TImage;
    Panel3: TPanel;
    Panel4: TPanel;
    Panel5: TPanel;
    Panel6: TPanel;
    Panel7: TPanel;
    Panel8: TPanel;
    Panel9: TPanel;
    Image2: TImage;
    Label1: TLabel;
    Image3: TImage;
    Label2: TLabel;
    Image4: TImage;
    Label3: TLabel;
    Image5: TImage;
    Label4: TLabel;
    Image6: TImage;
    Label5: TLabel;
    Image7: TImage;
    Label6: TLabel;
    Shape2: TShape;
    Shape1: TShape;
    Shape3: TShape;
    Shape4: TShape;
    Shape5: TShape;
    Label7: TLabel;
    Image8: TImage;
    Label8: TLabel;
    Label9: TLabel;
    Label10: TLabel;
    Label11: TLabel;
    Label17: TLabel;
    Label18: TLabel;
    Label19: TLabel;
    Label20: TLabel;
    Shape7: TShape;
    Image10: TImage;
    Label21: TLabel;
    Label12: TLabel;
    Label13: TLabel;
    Label14: TLabel;
    Label15: TLabel;
    Shape6: TShape;
    Image9: TImage;
    Label16: TLabel;
    Image11: TImage;
    Label22: TLabel;
    Label23: TLabel;
    Label24: TLabel;
    Label25: TLabel;
    Label26: TLabel;
    Label27: TLabel;
    DBGrid1: TDBGrid;
    Panel10: TPanel;
    Label28: TLabel;
    DBGrid2: TDBGrid;
    Label29: TLabel;
    DBGrid3: TDBGrid;
    MainMenu1: TMainMenu;
    M1: TMenuItem;
    T1: TMenuItem;
    R1: TMenuItem;
    E1: TMenuItem;
    N1: TMenuItem;
    Y1: TMenuItem;
    F1: TMenuItem;
    F2: TMenuItem;
    F3: TMenuItem;
    F4: TMenuItem;
    T2: TMenuItem;
    C1: TMenuItem;
    Label30: TLabel;
    Label31: TLabel;
    F5: TMenuItem;
    GroupBox1: TGroupBox;
    ComboBox2: TComboBox;
    Edit1: TEdit;
    Panel11: TPanel;
    Panel12: TPanel;
    S1: TMenuItem;
    S2: TMenuItem;
    Label32: TLabel;
    S3: TMenuItem;
    procedure Y1Click(Sender: TObject);
    procedure Panel8Click(Sender: TObject);
    procedure Label6Click(Sender: TObject);
    procedure exitapp;
    procedure Image7Click(Sender: TObject);
    procedure F1Click(Sender: TObject);
    procedure Label1Click(Sender: TObject);
    procedure Image2Click(Sender: TObject);
    procedure F2Click(Sender: TObject);
    procedure F3Click(Sender: TObject);
    procedure Label2Click(Sender: TObject);
    procedure Image3Click(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure F4Click(Sender: TObject);
    procedure Label3Click(Sender: TObject);
    procedure Image4Click(Sender: TObject);
    procedure T2Click(Sender: TObject);
    procedure Label4Click(Sender: TObject);
    procedure Image5Click(Sender: TObject);
    procedure C1Click(Sender: TObject);
    procedure Label5Click(Sender: TObject);
    procedure Image6Click(Sender: TObject);
    procedure F5Click(Sender: TObject);
    procedure DBGrid1KeyPress(Sender: TObject; var Key: Char);
    procedure Panel11Click(Sender: TObject);
    procedure Panel12Click(Sender: TObject);
    procedure kelas10;
    procedure kelas10male;
    procedure updatekelas10male;
    procedure kelas10female;
    procedure updatekelas10female;
    procedure totalkelas10;
    procedure kelas11;
    procedure kelas11male;
    procedure updatekelas11male;
    procedure kelas11femlae;
    procedure updatekelas11femlae;
    procedure totalkelas11;
    procedure kelas12;
    procedure kelas12male;
    procedure updatekelas12male;
    procedure kelas12female;
    procedure updatekelas12female;
    procedure totalkelas12;
    procedure hitung;
    procedure pilihsummale;
    procedure pilihsumfemale;
    procedure pilihtotal;
    procedure refresh;
    procedure S2Click(Sender: TObject);
    procedure hitunghutang;
    procedure hitunghutang11;
    procedure hitunghutang12;
    procedure sppperperiode;
    procedure sppperperiode11;
    procedure sppperperiode12;
    procedure updatetablehitunghutang;
    procedure updatetablehitunghutang11;
    procedure updatetablehitunghutang12;
    procedure totbayarkls10;
    procedure totbayarkls11;
    procedure totbayarkls12;
    procedure DataMaleAndFemale;
    procedure DataTotalBayarAndKurangBayar;
    procedure S3Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FMenu: TFMenu;
  aa,bb,c,dd,ee,ff,gg,hh,ii,jj,kk,ll,jml1,data3 : string;
  data1,data2 : Real;

implementation

uses
  DataModule, UFormDataSiswa, UFormSPP, UFormPembayaranSpp, UFormRekapitulasi, 
  UTabelDataBayar, UFormSheetKwitansi, UFormConvertKelas, ULogin, USettingUser, 
  UPeriode;

{$R *.dfm}

procedure TFMenu.Y1Click(Sender: TObject);
begin
  exitapp;
end;

procedure TFMenu.Panel8Click(Sender: TObject);
begin
  exitapp;
end;

procedure TFMenu.Label6Click(Sender: TObject);
begin
  exitapp;
end;

procedure TFMenu.exitapp;
begin
  FMenu.Close;
  FLogin.Show;
end;

procedure TFMenu.Image7Click(Sender: TObject);
begin
  exitapp;
end;

procedure TFMenu.F1Click(Sender: TObject);
begin
  FDataSiswa.Show; 
end;

procedure TFMenu.Label1Click(Sender: TObject);
begin
  FDataSiswa.Show;
end;

procedure TFMenu.Image2Click(Sender: TObject);
begin
  FDataSiswa.Show;
end;

procedure TFMenu.F2Click(Sender: TObject);
begin
  FDataSPP.Show;
end;

procedure TFMenu.F3Click(Sender: TObject);
begin
  FPembayaranSPP.Show;
end;

procedure TFMenu.Label2Click(Sender: TObject);
begin
  FPembayaranSPP.Show;
end;

procedure TFMenu.Image3Click(Sender: TObject);
begin
  FPembayaranSPP.Show;
end;

procedure TFMenu.FormActivate(Sender: TObject);
begin
  DM2.ADOSiswa.Close;
  DM2.ADOSiswa.Open;
  DM2.ADOSiswa.Filtered := False;
  DM2.ADOSiswa.Filter :='periode LIKE '+Quotedstr('%'+Label32.Caption+'%') + ' AND status LIKE %AKTIF%';
  DM2.ADOSiswa.Filtered := True;
  //
  DM2.ADOSPPdanRekapBayar.Close;
  DM2.ADOSPPdanRekapBayar.Open;
  DM2.ADOSPPdanRekapBayar.Filtered := False;
  DM2.ADOSPPdanRekapBayar.Filter := 'periode LIKE '+QuotedStr('%'+Label32.Caption+'%');
  DM2.ADOSPPdanRekapBayar.Filtered := True;
  //
  kelas10;
  kelas11;
  kelas12;
  hitung;
  pilihsummale;
  pilihsumfemale;
  pilihtotal;
  //
  updatetablehitunghutang;
  updatetablehitunghutang11;
  updatetablehitunghutang12;
  //
  refresh;
  //
  DataMaleAndFemale;
  //
  DataTotalBayarAndKurangBayar;
end;

procedure TFMenu.F4Click(Sender: TObject);
begin
  FRekapitulasi.Show;
end;

procedure TFMenu.Label3Click(Sender: TObject);
begin
  FRekapitulasi.Show;
end;

procedure TFMenu.Image4Click(Sender: TObject);
begin
  FRekapitulasi.Show;
end;

procedure TFMenu.T2Click(Sender: TObject);
begin
  FTabelDataBayar.Show;
end;

procedure TFMenu.Label4Click(Sender: TObject);
begin
  FTabelDataBayar.Show;
end;

procedure TFMenu.Image5Click(Sender: TObject);
begin
  FTabelDataBayar.Show;
end;

procedure TFMenu.C1Click(Sender: TObject);
begin
  FSheetKwintansi.Show;
end;

procedure TFMenu.Label5Click(Sender: TObject);
begin
  FSheetKwintansi.Show;
end;

procedure TFMenu.Image6Click(Sender: TObject);
begin
  FSheetKwintansi.Show;
end;

procedure TFMenu.F5Click(Sender: TObject);
begin
  FCovertKelas.Show;
end;

procedure TFMenu.DBGrid1KeyPress(Sender: TObject; var Key: Char);
begin
  if Key = #13 then
  begin
    if DM2.ADOSiswa.IsEmpty then
     MessageDlg('Data Kosong',mtInformation,[mbok],0)
     else
     begin
      FDataSiswa.Edit1.Text := DM2.ADOSiswa['nisn'];
      FDataSiswa.Edit2.Text := DM2.ADOSiswa['nama_siswa'];
      FDataSiswa.ComboBox1.Text := DM2.ADOSiswa['jenis_kelamin'];
      FDataSiswa.ComboBox2.Text := DM2.ADOSiswa['kelas'];
      FDataSiswa.Edit3.Text := DM2.ADOSiswa['alamat'];
      FDataSiswa.Edit4.Text := DM2.ADOSiswa['tempat_lahir'];
      FDataSiswa.DateTimePicker1.Date := DM2.ADOSiswa['tgl'];
      FDataSiswa.Edit5.Text := DM2.ADOSiswa['nama_ortu'];
      FDataSiswa.Edit6.Text := DM2.ADOSiswa['telpon'];
      FDataSiswa.ComboBox3.Text := DM2.ADOSiswa['status'];
      FDataSiswa.Edit7.Text := DM2.ADOSiswa['periode'];
      FDataSiswa.Show;
     end;
  end;
end;


procedure TFMenu.Panel11Click(Sender: TObject);
begin
//  if (ComboBox2.Text = '-- PILIH KELAS --') and (Edit1.Text = '') then
//     begin
//       DM2.ADOSiswa.Close;
//       DM2.ADOSiswa.Open;
//       DM2.ADOSiswa.Filtered := false;
//     end
//  Else
//  if (ComboBox2.Text <> '-- PILIH KELAS --') and (Edit1.Text = '') then
//     begin
//       DM2.ADOSiswa.Close;
//       DM2.ADOSiswa.Open;
//       DM2.ADOSiswa.Filtered := False;
//       DM2.ADOSiswa.Filter :='kelas LIKE '+Quotedstr('%'+ComboBox2.Text+'%');
//       DM2.ADOSiswa.Filtered := True;
//     end
//  Else
//  if (ComboBox2.Text = '-- PILIH KELAS --') and (Edit1.Text <> '') then
//     begin
//       DM2.ADOSiswa.Close;
//       DM2.ADOSiswa.Open;
//       DM2.ADOSiswa.Filtered := False;
//       DM2.ADOSiswa.Filter :='periode LIKE '+Quotedstr('%'+Edit1.Text+'%');
//       DM2.ADOSiswa.Filtered := True;
//     end
//  Else
//     begin
//       DM2.ADOSiswa.Close;
//       DM2.ADOSiswa.Open;
//       DM2.ADOSiswa.Filtered := False;
//       DM2.ADOSiswa.Filter :='kelas LIKE '+Quotedstr('%'+ComboBox2.Text+'%') + 'And periode LIKE '+Quotedstr('%'+Edit1.Text+'%');
//       DM2.ADOSiswa.Filtered := True;
//     end;
  if ComboBox2.Text <> '-- PILIH KELAS --' then
    begin
      DM2.ADOSiswa.Close;
      DM2.ADOSiswa.Open;
      DM2.ADOSiswa.Filtered := False;
      DM2.ADOSiswa.Filter :='periode LIKE '+Quotedstr('%'+Label32.Caption+'%') + 'And kelas LIKE '+Quotedstr('%'+ComboBox2.Text+'%');
      DM2.ADOSiswa.Filtered := True;
    end;
end;

procedure TFMenu.Panel12Click(Sender: TObject);
begin
  DM2.ADOSiswa.Close;
  DM2.ADOSiswa.Open;
  DM2.ADOSiswa.Filtered := false;
  DM2.ADOSiswa.Filter :='periode LIKE '+Quotedstr('%'+Label32.Caption+'%') + ' AND status LIKE %AKTIF%';
  DM2.ADOSiswa.Filtered := True;
  ComboBox2.Text := '-- PILIH KELAS --';
  //Edit1.Clear;
end;

procedure TFMenu.kelas10;
begin
  kelas10male;
  aa := DM2.ADOQJmlhSiswaPerKelas['MALE10'];
  updatekelas10male;
  kelas10female;
  bb := DM2.ADOQJmlhSiswaPerKelas['FEMALE10'];
  updatekelas10female;
  c := FloatToStr(StrToFloat(aa) + StrToFloat(bb));
  totalkelas10;
end;

procedure TFMenu.kelas10male;
begin
  DM2.ADOQJmlhSiswaPerKelas.Close;
  DM2.ADOQJmlhSiswaPerKelas.SQL.Clear;
  DM2.ADOQJmlhSiswaPerKelas.SQL.Add('SELECT COUNT(*) AS MALE10 FROM siswa WHERE jenis_kelamin="Laki - Laki" AND kelas = "KELAS 10" ');
  DM2.ADOQJmlhSiswaPerKelas.SQL.Add('AND status = "AKTIF" AND periode = "'+Label32.Caption+'"');
  DM2.ADOQJmlhSiswaPerKelas.Open;
end;

procedure TFMenu.updatekelas10male;
begin
  DM2.ADOQJmlhSiswaPerKelas.Close;
  DM2.ADOQJmlhSiswaPerKelas.SQL.Clear;
  DM2.ADOQJmlhSiswaPerKelas.SQL.Add('UPDATE jumlah_siswa SET laki_laki = "'+aa+'" WHERE kelas = "KELAS 10"');
  DM2.ADOQJmlhSiswaPerKelas.ExecSQL;
end;

procedure TFMenu.kelas10female;
begin
  DM2.ADOQJmlhSiswaPerKelas.Close;
  DM2.ADOQJmlhSiswaPerKelas.SQL.Clear;
  DM2.ADOQJmlhSiswaPerKelas.SQL.Add('SELECT COUNT(*) AS FEMALE10 FROM siswa WHERE jenis_kelamin="Perempuan" AND kelas = "KELAS 10" ');
  DM2.ADOQJmlhSiswaPerKelas.SQL.Add('AND status = "AKTIF" AND periode = "'+Label32.Caption+'"');
  DM2.ADOQJmlhSiswaPerKelas.Open;
end;

procedure TFMenu.updatekelas10female;
begin
  DM2.ADOQJmlhSiswaPerKelas.Close;
  DM2.ADOQJmlhSiswaPerKelas.SQL.Clear;
  DM2.ADOQJmlhSiswaPerKelas.SQL.Add('UPDATE jumlah_siswa SET perempuan = "'+bb+'" WHERE kelas = "KELAS 10"');
  DM2.ADOQJmlhSiswaPerKelas.ExecSQL;
end;

procedure TFMenu.totalkelas10;
begin
  DM2.ADOQJmlhSiswaPerKelas.Close;
  DM2.ADOQJmlhSiswaPerKelas.SQL.Clear;
  DM2.ADOQJmlhSiswaPerKelas.SQL.Add('UPDATE jumlah_siswa SET jumlah = "'+c+'" WHERE kelas = "KELAS 10"');
  DM2.ADOQJmlhSiswaPerKelas.ExecSQL;
end;

procedure TFMenu.kelas11;
begin
  kelas11male;
  dd := DM2.ADOQJmlhSiswaPerKelas['MALE11'];
  updatekelas11male;
  kelas11femlae;
  ee := DM2.ADOQJmlhSiswaPerKelas['FEMALE11'];
  updatekelas11femlae;
  ff := FloatToStr(StrToFloat(dd) + StrToFloat(ee));
  totalkelas11;
end;

procedure TFMenu.kelas11male;
begin
  DM2.ADOQJmlhSiswaPerKelas.Close;
  DM2.ADOQJmlhSiswaPerKelas.SQL.Clear;
  DM2.ADOQJmlhSiswaPerKelas.SQL.Add('SELECT COUNT(*) AS MALE11 FROM siswa WHERE jenis_kelamin="Laki - Laki" AND kelas = "KELAS 11" ');
  DM2.ADOQJmlhSiswaPerKelas.SQL.Add('AND status = "AKTIF" AND periode = "'+Label32.Caption+'"');
  DM2.ADOQJmlhSiswaPerKelas.Open;
end;

procedure TFMenu.updatekelas11male;
begin
  DM2.ADOQJmlhSiswaPerKelas.Close;
  DM2.ADOQJmlhSiswaPerKelas.SQL.Clear;
  DM2.ADOQJmlhSiswaPerKelas.SQL.Add('UPDATE jumlah_siswa SET laki_laki = "'+dd+'" WHERE kelas = "KELAS 11"');
  DM2.ADOQJmlhSiswaPerKelas.ExecSQL;
end;

procedure TFMenu.kelas11femlae;
begin
  DM2.ADOQJmlhSiswaPerKelas.Close;
  DM2.ADOQJmlhSiswaPerKelas.SQL.Clear;
  DM2.ADOQJmlhSiswaPerKelas.SQL.Add('SELECT COUNT(*) AS FEMALE11 FROM siswa WHERE jenis_kelamin="Perempuan" AND kelas = "KELAS 11" ');
  DM2.ADOQJmlhSiswaPerKelas.SQL.Add('AND status = "AKTIF" AND periode = "'+Label32.Caption+'"');
  DM2.ADOQJmlhSiswaPerKelas.Open;
end;

procedure TFMenu.updatekelas11femlae;
begin
  DM2.ADOQJmlhSiswaPerKelas.Close;
  DM2.ADOQJmlhSiswaPerKelas.SQL.Clear;
  DM2.ADOQJmlhSiswaPerKelas.SQL.Add('UPDATE jumlah_siswa SET perempuan = "'+ee+'" WHERE kelas = "KELAS 11"');
  DM2.ADOQJmlhSiswaPerKelas.ExecSQL;
end;

procedure TFMenu.totalkelas11;
begin
  DM2.ADOQJmlhSiswaPerKelas.Close;
  DM2.ADOQJmlhSiswaPerKelas.SQL.Clear;
  DM2.ADOQJmlhSiswaPerKelas.SQL.Add('UPDATE jumlah_siswa SET jumlah = "'+ff+'" WHERE kelas = "KELAS 11"');
  DM2.ADOQJmlhSiswaPerKelas.ExecSQL;
end;

procedure TFMenu.kelas12;
begin
  kelas12male;
  gg := DM2.ADOQJmlhSiswaPerKelas['MALE12'];
  updatekelas12male;
  kelas12female;
  hh := DM2.ADOQJmlhSiswaPerKelas['FEMALE12'];
  updatekelas12female;
  ii := FloatToStr(StrToFloat(gg) + StrToFloat(hh));
  totalkelas12;
end;

procedure TFMenu.kelas12male;
begin
  DM2.ADOQJmlhSiswaPerKelas.Close;
  DM2.ADOQJmlhSiswaPerKelas.SQL.Clear;
  DM2.ADOQJmlhSiswaPerKelas.SQL.Add('SELECT COUNT(*) AS MALE12 FROM siswa WHERE jenis_kelamin="Laki - Laki" AND kelas = "KELAS 12" ');
  DM2.ADOQJmlhSiswaPerKelas.SQL.Add('AND status = "AKTIF" AND periode = "'+Label32.Caption+'"');
  DM2.ADOQJmlhSiswaPerKelas.Open;
end;

procedure TFMenu.updatekelas12male;
begin
  DM2.ADOQJmlhSiswaPerKelas.Close;
  DM2.ADOQJmlhSiswaPerKelas.SQL.Clear;
  DM2.ADOQJmlhSiswaPerKelas.SQL.Add('UPDATE jumlah_siswa SET laki_laki = "'+gg+'" WHERE kelas = "KELAS 12"');
  DM2.ADOQJmlhSiswaPerKelas.ExecSQL;
end;

procedure TFMenu.kelas12female;
begin
  DM2.ADOQJmlhSiswaPerKelas.Close;
  DM2.ADOQJmlhSiswaPerKelas.SQL.Clear;
  DM2.ADOQJmlhSiswaPerKelas.SQL.Add('SELECT COUNT(*) AS FEMALE12 FROM siswa WHERE jenis_kelamin="Perempuan" AND kelas = "KELAS 12" ');
  DM2.ADOQJmlhSiswaPerKelas.SQL.Add('AND status = "AKTIF" AND periode = "'+Label32.Caption+'"');
  DM2.ADOQJmlhSiswaPerKelas.Open;
end;

procedure TFMenu.updatekelas12female;
begin
  DM2.ADOQJmlhSiswaPerKelas.Close;
  DM2.ADOQJmlhSiswaPerKelas.SQL.Clear;
  DM2.ADOQJmlhSiswaPerKelas.SQL.Add('UPDATE jumlah_siswa SET perempuan = "'+hh+'" WHERE kelas = "KELAS 12"');
  DM2.ADOQJmlhSiswaPerKelas.ExecSQL;
end;

procedure TFMenu.totalkelas12;
begin
  DM2.ADOQJmlhSiswaPerKelas.Close;
  DM2.ADOQJmlhSiswaPerKelas.SQL.Clear;
  DM2.ADOQJmlhSiswaPerKelas.SQL.Add('UPDATE jumlah_siswa SET jumlah = "'+ii+'" WHERE kelas = "KELAS 12"');
  DM2.ADOQJmlhSiswaPerKelas.ExecSQL;
end;

procedure TFMenu.hitung;
begin
  jj := FloatToStr(StrToFloat(aa) + StrToFloat(dd) + StrToFloat(gg));
  kk := FloatToStr(StrToFloat(bb) + StrToFloat(ee) + StrToFloat(hh));
  ll := FloatToStr(StrToFloat(c) + StrToFloat(ff) + StrToFloat(ii));
end;

procedure TFMenu.pilihsummale;
begin
  DM2.ADOQJmlhSiswaPerKelas.Close;
  DM2.ADOQJmlhSiswaPerKelas.SQL.Clear;
  DM2.ADOQJmlhSiswaPerKelas.SQL.Add('UPDATE jumlah_siswa SET laki_laki = "'+jj+'" WHERE kelas = "TOTAL"');
  DM2.ADOQJmlhSiswaPerKelas.ExecSQL;
end;

procedure TFMenu.pilihsumfemale;
begin
  DM2.ADOQJmlhSiswaPerKelas.Close;
  DM2.ADOQJmlhSiswaPerKelas.SQL.Clear;
  DM2.ADOQJmlhSiswaPerKelas.SQL.Add('UPDATE jumlah_siswa SET perempuan = "'+kk+'" WHERE kelas = "TOTAL"');
  DM2.ADOQJmlhSiswaPerKelas.ExecSQL;
end;

procedure TFMenu.pilihtotal;
begin
  DM2.ADOQJmlhSiswaPerKelas.Close;
  DM2.ADOQJmlhSiswaPerKelas.SQL.Clear;
  DM2.ADOQJmlhSiswaPerKelas.SQL.Add('UPDATE jumlah_siswa SET jumlah = "'+ll+'" WHERE kelas = "TOTAL"');
  DM2.ADOQJmlhSiswaPerKelas.ExecSQL;
end;

procedure TFMenu.refresh;
begin
  DM2.ADOJmlhSiswaPerKelas.Close;
  DM2.ADOJmlhSiswaPerKelas.Open;
  //
  DM2.ADOSPPdanRekapBayar.Close;
  DM2.ADOSPPdanRekapBayar.Open;
  //
  
end;

procedure TFMenu.S2Click(Sender: TObject);
begin
  FUser.Show;
end;

procedure TFMenu.hitunghutang;
begin
  DM2.ADOQSPPdanRekapBayar.Close;
  DM2.ADOQSPPdanRekapBayar.SQL.Clear;
  DM2.ADOQSPPdanRekapBayar.SQL.Add('SELECT COUNT(*) AS JML_SISWA_KLS_10 FROM siswa WHERE kelas = "KELAS 10" AND periode = "'+Label32.Caption+'" AND status = "AKTIF"');
  DM2.ADOQSPPdanRekapBayar.Open;
end;

procedure TFMenu.hitunghutang11;
begin
  DM2.ADOQSPPdanRekapBayar.Close;
  DM2.ADOQSPPdanRekapBayar.SQL.Clear;
  DM2.ADOQSPPdanRekapBayar.SQL.Add('SELECT COUNT(*) AS JML_SISWA_KLS_11 FROM siswa WHERE kelas = "KELAS 11" AND periode = "'+Label32.Caption+'" AND status = "AKTIF"');
  DM2.ADOQSPPdanRekapBayar.Open;
end;

procedure TFMenu.hitunghutang12;
begin
  DM2.ADOQSPPdanRekapBayar.Close;
  DM2.ADOQSPPdanRekapBayar.SQL.Clear;
  DM2.ADOQSPPdanRekapBayar.SQL.Add('SELECT COUNT(*) AS JML_SISWA_KLS_12 FROM siswa WHERE kelas = "KELAS 12" AND periode = "'+Label32.Caption+'" AND status = "AKTIF"');
  DM2.ADOQSPPdanRekapBayar.Open;
end;

procedure TFMenu.sppperperiode;
begin
  DM2.ADOQSPPdanRekapBayar.Close;
  DM2.ADOQSPPdanRekapBayar.SQL.Clear;
  DM2.ADOQSPPdanRekapBayar.SQL.Add('SELECT uang_spp FROM spp WHERE periode= "'+Label32.Caption+'" AND kelas = "KELAS 10"');
  DM2.ADOQSPPdanRekapBayar.Open;
end;

procedure TFMenu.sppperperiode11;
begin
  DM2.ADOQSPPdanRekapBayar.Close;
  DM2.ADOQSPPdanRekapBayar.SQL.Clear;
  DM2.ADOQSPPdanRekapBayar.SQL.Add('SELECT uang_spp FROM spp WHERE periode= "'+Label32.Caption+'" AND kelas = "KELAS 11"');
  DM2.ADOQSPPdanRekapBayar.Open;
end;

procedure TFMenu.sppperperiode12;
begin
  DM2.ADOQSPPdanRekapBayar.Close;
  DM2.ADOQSPPdanRekapBayar.SQL.Clear;
  DM2.ADOQSPPdanRekapBayar.SQL.Add('SELECT uang_spp FROM spp WHERE periode= "'+Label32.Caption+'" AND kelas = "KELAS 12"');
  DM2.ADOQSPPdanRekapBayar.Open;
end;

procedure TFMenu.updatetablehitunghutang;
begin
  hitunghutang;
  if DM2.ADOQSPPdanRekapBayar['JML_SISWA_KLS_10'] <> null then
    begin
      data1 := DM2.ADOQSPPdanRekapBayar['JML_SISWA_KLS_10'];
    end;
  sppperperiode;
  if DM2.ADOQSPPdanRekapBayar['uang_spp'] <> null then
    begin
      data2 := DM2.ADOQSPPdanRekapBayar['uang_spp'];
    end;
  totbayarkls10;
  if DM2.ADOQSPPdanRekapBayar['TB'] = null then
    begin
      data3 := '0';
    end
  else
    begin
      data3 := FloatToStr(DM2.ADOQSPPdanRekapBayar['TB']);
    end;
  //
  if (data1 <> null) and (data2 <> null) and (data3 <> null) then
  begin
    jml1 := FloatToStr(((data1 * 12) * data2) - StrToFloat(data3));
    //
    if StrToFloat(jml1) < 0 then
      begin
        jml1 := FloatToStr(0);
        DM2.ADOQSPPdanRekapBayar.Close;
        DM2.ADOQSPPdanRekapBayar.SQL.Clear;
        DM2.ADOQSPPdanRekapBayar.SQL.Add('UPDATE spp SET terhutang = "'+jml1+'" WHERE periode= "'+Label32.Caption+'" AND kelas = "KELAS 10"');
        DM2.ADOQSPPdanRekapBayar.ExecSQL;
      end
    else
      begin
        DM2.ADOQSPPdanRekapBayar.Close;
        DM2.ADOQSPPdanRekapBayar.SQL.Clear;
        DM2.ADOQSPPdanRekapBayar.SQL.Add('UPDATE spp SET terhutang = "'+jml1+'" WHERE periode= "'+Label32.Caption+'" AND kelas = "KELAS 10"');
        DM2.ADOQSPPdanRekapBayar.ExecSQL;
      end;
    //DM2.ADOQSPPdanRekapBayar.Close;
    //DM2.ADOQSPPdanRekapBayar.SQL.Clear;
    //DM2.ADOQSPPdanRekapBayar.SQL.Add('UPDATE spp SET terhutang = "'+jml1+'" WHERE periode= "'+Label32.Caption+'" AND kelas = "KELAS 10"');
    //DM2.ADOQSPPdanRekapBayar.ExecSQL;
    //
    DM2.ADOQSPPdanRekapBayar.Close;
    DM2.ADOQSPPdanRekapBayar.SQL.Clear;
    DM2.ADOQSPPdanRekapBayar.SQL.Add('UPDATE spp SET terbayar = "'+data3+'" WHERE periode= "'+Label32.Caption+'" AND kelas = "KELAS 10"');
    DM2.ADOQSPPdanRekapBayar.ExecSQL;
  end;
//  data1 := 0;
//  data2 := 0;
//  data3 := '';
end;

procedure TFMenu.updatetablehitunghutang11;
begin
  hitunghutang11;
  if DM2.ADOQSPPdanRekapBayar['JML_SISWA_KLS_11'] <> null then
    begin
      data1 := DM2.ADOQSPPdanRekapBayar['JML_SISWA_KLS_11'];
    end;
  sppperperiode11;
  if DM2.ADOQSPPdanRekapBayar['uang_spp'] <> null then
    begin
      data2 := DM2.ADOQSPPdanRekapBayar['uang_spp'];
    end;
  totbayarkls11;
  if DM2.ADOQSPPdanRekapBayar['TB'] = null then
    begin
      data3 := '0';
    end
  else
    begin
      data3 := FloatToStr(DM2.ADOQSPPdanRekapBayar['TB']);
    end;
  //
  if (data1 <> null) and (data2 <> null) and (data3 <> null) then
  begin
    jml1 := FloatToStr(((data1 * 12) * data2) - StrToFloat(data3));
    //
    if StrToFloat(jml1) < 0 then
      begin
        jml1 := FloatToStr(0);
        DM2.ADOQSPPdanRekapBayar.Close;
        DM2.ADOQSPPdanRekapBayar.SQL.Clear;
        DM2.ADOQSPPdanRekapBayar.SQL.Add('UPDATE spp SET terhutang = "'+jml1+'" WHERE periode= "'+Label32.Caption+'" AND kelas = "KELAS 11"');
        DM2.ADOQSPPdanRekapBayar.ExecSQL;
      end
    else
      begin
        DM2.ADOQSPPdanRekapBayar.Close;
        DM2.ADOQSPPdanRekapBayar.SQL.Clear;
        DM2.ADOQSPPdanRekapBayar.SQL.Add('UPDATE spp SET terhutang = "'+jml1+'" WHERE periode= "'+Label32.Caption+'" AND kelas = "KELAS 11"');
        DM2.ADOQSPPdanRekapBayar.ExecSQL;
      end;
    //
    //DM2.ADOQSPPdanRekapBayar.Close;
    //DM2.ADOQSPPdanRekapBayar.SQL.Clear;
    //DM2.ADOQSPPdanRekapBayar.SQL.Add('UPDATE spp SET terhutang = "'+jml1+'" WHERE periode= "'+Label32.Caption+'" AND kelas = "KELAS 11"');
    //DM2.ADOQSPPdanRekapBayar.ExecSQL;
    //
    DM2.ADOQSPPdanRekapBayar.Close;
    DM2.ADOQSPPdanRekapBayar.SQL.Clear;
    DM2.ADOQSPPdanRekapBayar.SQL.Add('UPDATE spp SET terbayar = "'+data3+'" WHERE periode= "'+Label32.Caption+'" AND kelas = "KELAS 11"');
    DM2.ADOQSPPdanRekapBayar.ExecSQL;
  end;
//    data1 := 0;
//  data2 := 0;
//  data3 := '';
end;

procedure TFMenu.updatetablehitunghutang12;
begin
  hitunghutang12;
  if DM2.ADOQSPPdanRekapBayar['JML_SISWA_KLS_12'] <> null then
    begin
      data1 := DM2.ADOQSPPdanRekapBayar['JML_SISWA_KLS_12'];
    end;
  sppperperiode12;
  if DM2.ADOQSPPdanRekapBayar['uang_spp'] <> null then
    begin
      data2 := DM2.ADOQSPPdanRekapBayar['uang_spp'];
    end;
  totbayarkls12;
  if DM2.ADOQSPPdanRekapBayar['TB'] = null then
    begin
      data3 := '0';
    end
  else
    begin
      data3 := FloatToStr(DM2.ADOQSPPdanRekapBayar['TB']);
    end;
  //
  if (data1 <> null) and (data2 <> null) and (data3 <> null) then
  begin
    jml1 := FloatToStr(((data1 * 12) * data2) - StrToFloat(data3));
    //
    if StrToFloat(jml1) < 0 then
      begin
        jml1 := FloatToStr(0);
        DM2.ADOQSPPdanRekapBayar.Close;
        DM2.ADOQSPPdanRekapBayar.SQL.Clear;
        DM2.ADOQSPPdanRekapBayar.SQL.Add('UPDATE spp SET terhutang = "'+jml1+'" WHERE periode= "'+label32.Caption+'" AND kelas = "KELAS 12"');
        DM2.ADOQSPPdanRekapBayar.ExecSQL;
      end
    else
      begin
        DM2.ADOQSPPdanRekapBayar.Close;
        DM2.ADOQSPPdanRekapBayar.SQL.Clear;
        DM2.ADOQSPPdanRekapBayar.SQL.Add('UPDATE spp SET terhutang = "'+jml1+'" WHERE periode= "'+label32.Caption+'" AND kelas = "KELAS 12"');
        DM2.ADOQSPPdanRekapBayar.ExecSQL;
      end;
    //
    //DM2.ADOQSPPdanRekapBayar.Close;
    //DM2.ADOQSPPdanRekapBayar.SQL.Clear;
    //DM2.ADOQSPPdanRekapBayar.SQL.Add('UPDATE spp SET terhutang = "'+jml1+'" WHERE periode= "'+label32.Caption+'" AND kelas = "KELAS 12"');
    //DM2.ADOQSPPdanRekapBayar.ExecSQL;
    //
    DM2.ADOQSPPdanRekapBayar.Close;
    DM2.ADOQSPPdanRekapBayar.SQL.Clear;
    DM2.ADOQSPPdanRekapBayar.SQL.Add('UPDATE spp SET terbayar = "'+data3+'" WHERE periode= "'+label32.Caption+'" AND kelas = "KELAS 12"');
    DM2.ADOQSPPdanRekapBayar.ExecSQL;
  end;
//    data1 := 0;
//  data2 := 0;
//  data3 := '';
end;

procedure TFMenu.totbayarkls10;
begin
  DM2.ADOQSPPdanRekapBayar.Close;
  DM2.ADOQSPPdanRekapBayar.SQL.Clear;
  DM2.ADOQSPPdanRekapBayar.SQL.Add('SELECT SUM(total_bayar) AS TB FROM data_bayar2 WHERE periode = "'+label32.Caption+'" AND kelas = "KELAS 10"');
  DM2.ADOQSPPdanRekapBayar.Open;
end;

procedure TFMenu.totbayarkls11;
begin
  DM2.ADOQSPPdanRekapBayar.Close;
  DM2.ADOQSPPdanRekapBayar.SQL.Clear;
  DM2.ADOQSPPdanRekapBayar.SQL.Add('SELECT SUM(total_bayar) AS TB FROM data_bayar2 WHERE periode = "'+label32.Caption+'" AND kelas = "KELAS 11"');
  DM2.ADOQSPPdanRekapBayar.Open;
end;

procedure TFMenu.totbayarkls12;
begin
  DM2.ADOQSPPdanRekapBayar.Close;
  DM2.ADOQSPPdanRekapBayar.SQL.Clear;
  DM2.ADOQSPPdanRekapBayar.SQL.Add('SELECT SUM(total_bayar) AS TB FROM data_bayar2 WHERE periode = "'+label32.Caption+'" AND kelas = "KELAS 12"');
  DM2.ADOQSPPdanRekapBayar.Open;
end;

procedure TFMenu.DataMaleAndFemale;
begin
  DM2.MaleAndFemale.Close;
  DM2.MaleAndFemale.SQL.Clear;
  DM2.MaleAndFemale.SQL.Add('SELECT perempuan, laki_laki, jumlah FROM jumlah_siswa WHERE kelas = "TOTAL"');
  DM2.MaleAndFemale.Open;
  //
  Label25.Caption := DM2.MaleAndFemale['laki_laki'];
  Label26.Caption := DM2.MaleAndFemale['perempuan'];
  Label27.Caption := DM2.MaleAndFemale['jumlah'];
end;

procedure TFMenu.DataTotalBayarAndKurangBayar;
begin
  //
  DM2.ADOQSPPdanRekapBayar.Close;
  DM2.ADOQSPPdanRekapBayar.SQL.Clear;
  DM2.ADOQSPPdanRekapBayar.SQL.Add('SELECT terbayar, terhutang FROM spp WHERE kelas = "KELAS 10" AND periode = "'+label32.Caption+'"');
  DM2.ADOQSPPdanRekapBayar.Open;
  if (DM2.ADOQSPPdanRekapBayar['terbayar'] <> null) and (DM2.ADOQSPPdanRekapBayar['terhutang'] <> null) then
    begin
//      Label11.Caption := 'Rp. ' + FloatToStr(DM2.ADOQSPPdanRekapBayar['terbayar']);
//      Label10.Caption := 'Rp. ' + FloatToStr(DM2.ADOQSPPdanRekapBayar['terhutang']);
      Label11.Caption := 'Rp. ' + FormatCurr('#,#0',DM2.ADOQSPPdanRekapBayar['terbayar']);
      Label10.Caption := 'Rp. ' + FormatCurr('#,#0',DM2.ADOQSPPdanRekapBayar['terhutang']);
    end
  else
    begin
      Label11.Caption := 'Rp. 0';
      Label10.Caption := 'Rp. 0';
    end;
  //
  DM2.ADOQSPPdanRekapBayar.Close;
  DM2.ADOQSPPdanRekapBayar.SQL.Clear;
  DM2.ADOQSPPdanRekapBayar.SQL.Add('SELECT terbayar, terhutang FROM spp WHERE kelas = "KELAS 11" AND periode = "'+label32.Caption+'"');
  DM2.ADOQSPPdanRekapBayar.Open;
  if (DM2.ADOQSPPdanRekapBayar['terbayar'] <> null) and (DM2.ADOQSPPdanRekapBayar['terhutang'] <> null) then
    begin
//      Label19.Caption := 'Rp. ' + FloatToStr(DM2.ADOQSPPdanRekapBayar['terbayar']);
//      Label18.Caption := 'Rp. ' + FloatToStr(DM2.ADOQSPPdanRekapBayar['terhutang']);
      Label19.Caption := 'Rp. ' + FormatCurr('#,#0',DM2.ADOQSPPdanRekapBayar['terbayar']);
      Label18.Caption := 'Rp. ' + FormatCurr('#,#0',DM2.ADOQSPPdanRekapBayar['terhutang']);
    end
  else
    begin
      Label19.Caption := 'Rp. 0';
      Label19.Caption := 'Rp. 0';
    end;
  //
  DM2.ADOQSPPdanRekapBayar.Close;
  DM2.ADOQSPPdanRekapBayar.SQL.Clear;
  DM2.ADOQSPPdanRekapBayar.SQL.Add('SELECT terbayar, terhutang FROM spp WHERE kelas = "KELAS 12" AND periode = "'+label32.Caption+'"');
  DM2.ADOQSPPdanRekapBayar.Open;
  if (DM2.ADOQSPPdanRekapBayar['terbayar'] <> null) and (DM2.ADOQSPPdanRekapBayar['terhutang'] <> null) then
    begin
//      Label14.Caption := 'Rp. ' + FloatToStr(DM2.ADOQSPPdanRekapBayar['terbayar']);
//      Label12.Caption := 'Rp. ' + FloatToStr(DM2.ADOQSPPdanRekapBayar['terhutang']);
      Label14.Caption := 'Rp. ' + FormatCurr('#,#0',DM2.ADOQSPPdanRekapBayar['terbayar']);
      Label12.Caption := 'Rp. ' + FormatCurr('#,#0',DM2.ADOQSPPdanRekapBayar['terhutang']);
    end
  else
    begin
      Label14.Caption := 'Rp. 0';
      Label12.Caption := 'Rp. 0';
    end;
end;

procedure TFMenu.S3Click(Sender: TObject);
begin
  FPeriode.Show;
end;

end.
