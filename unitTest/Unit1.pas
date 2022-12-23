unit Unit1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ADODB, DB, Grids, DBGrids, StdCtrls, Menus;

type
  TForm1 = class(TForm)
    DBGrid1: TDBGrid;
    ADOConnection1: TADOConnection;
    ADOQuery1: TADOQuery;
    DataSource1: TDataSource;
    ADOTable1: TADOTable;
    Button1: TButton;
    MainMenu1: TMainMenu;
    F1: TMenuItem;
    F2: TMenuItem;
    F3: TMenuItem;
    F4: TMenuItem;
    procedure Button1Click(Sender: TObject);
    procedure kelas10male;
    procedure kelas10female;
    procedure kelas11femlae;
    procedure kelas11male;
    procedure kelas12female;
    procedure kelas12male;
    procedure updatekelas10female;
    procedure updatekelas10male;
    procedure updatekelas11femlae;
    procedure updatekelas11male;
    procedure updatekelas12female;
    procedure updatekelas12male;
    procedure totalkelas10;
    procedure totalkelas11;
    procedure totalkelas12;
    procedure refresh;
    procedure pilihsummale;
    procedure pilihsumfemale;
    procedure pilihtotal;
    procedure kelas10;
    procedure kelas11;
    procedure kelas12;
    procedure hitung;
    procedure F1Click(Sender: TObject);
    procedure F2Click(Sender: TObject);
    procedure F3Click(Sender: TObject);
    procedure F4Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;
  aa,bb,c,dd,ee,ff,gg,hh,ii,jj,kk,ll : string;

implementation

uses Unit3, Unit4, Unit6;

{$R *.dfm}

procedure TForm1.Button1Click(Sender: TObject);
begin
  kelas10;
  kelas11;
  kelas12;
  hitung;
  pilihsummale;
  pilihsumfemale;
  pilihtotal;
  refresh;
end;

procedure TForm1.hitung;
begin
  jj := FloatToStr(StrToFloat(aa) + StrToFloat(dd) + StrToFloat(gg));
  kk := FloatToStr(StrToFloat(bb) + StrToFloat(ee) + StrToFloat(hh));
  ll := FloatToStr(StrToFloat(c) + StrToFloat(ff) + StrToFloat(ii));
end;

procedure TForm1.kelas10;
begin
  kelas10male;
  aa := ADOQuery1['MALE10'];
  updatekelas10male ;
  kelas10female;
  bb := ADOQuery1['FEMALE10'];
  updatekelas10female;
  c := FloatToStr(StrToFloat(aa) + StrToFloat(bb));
  totalkelas10;
end;

procedure TForm1.kelas10female;
begin
  ADOQuery1.Close;
  ADOQuery1.SQL.Clear;
  ADOQuery1.SQL.Add('SELECT COUNT(*) AS FEMALE10 FROM siswa WHERE jenis_kelamin="Perempuan" AND kelas = "KELAS 10"');
  ADOQuery1.Open;
end;

procedure TForm1.kelas10male;
begin
  ADOQuery1.Close;
  ADOQuery1.SQL.Clear;
  ADOQuery1.SQL.Add('SELECT COUNT(*) AS MALE10 FROM siswa WHERE jenis_kelamin="Laki - Laki" AND kelas = "KELAS 10"');
  ADOQuery1.Open;
end;

procedure TForm1.kelas11;
begin
  kelas11male;
  dd := ADOQuery1['MALE11'];
  updatekelas11male;
  kelas11femlae;
  ee := ADOQuery1['FEMALE11'];
  updatekelas11femlae;
  ff := FloatToStr(StrToFloat(dd) + StrToFloat(ee));
  totalkelas11;
end;

procedure TForm1.kelas11femlae;
begin
  ADOQuery1.Close;
  ADOQuery1.SQL.Clear;
  ADOQuery1.SQL.Add('SELECT COUNT(*) AS FEMALE11 FROM siswa WHERE jenis_kelamin="Perempuan" AND kelas = "KELAS 11"');
  ADOQuery1.Open;
end;

procedure TForm1.kelas11male;
begin
  ADOQuery1.Close;
  ADOQuery1.SQL.Clear;
  ADOQuery1.SQL.Add('SELECT COUNT(*) AS MALE11 FROM siswa WHERE jenis_kelamin="Laki - Laki" AND kelas = "KELAS 11"');
  ADOQuery1.Open;
end;

procedure TForm1.kelas12;
begin
  kelas12male;
  gg := ADOQuery1['MALE12'];
  updatekelas12male;
  kelas12female;
  hh := ADOQuery1['FEMALE12'];
  updatekelas12female;
  ii := FloatToStr(StrToFloat(gg) + StrToFloat(hh));
  totalkelas12;
end;

procedure TForm1.kelas12female;
begin
  ADOQuery1.Close;
  ADOQuery1.SQL.Clear;
  ADOQuery1.SQL.Add('SELECT COUNT(*) AS FEMALE12 FROM siswa WHERE jenis_kelamin="Perempuan" AND kelas = "KELAS 12"');
  ADOQuery1.Open;
end;

procedure TForm1.kelas12male;
begin
  ADOQuery1.Close;
  ADOQuery1.SQL.Clear;
  ADOQuery1.SQL.Add('SELECT COUNT(*) AS MALE12 FROM siswa WHERE jenis_kelamin="Laki - Laki" AND kelas = "KELAS 12"');
  ADOQuery1.Open;
end;

procedure TForm1.pilihsumfemale;
begin
  ADOQuery1.Close;
  ADOQuery1.SQL.Clear;
  ADOQuery1.SQL.Add('UPDATE jumlah_siswa SET perempuan = "'+kk+'" WHERE kelas = "TOTAL"');
  ADOQuery1.ExecSQL;
end;

procedure TForm1.pilihsummale;
begin
  ADOQuery1.Close;
  ADOQuery1.SQL.Clear;
  ADOQuery1.SQL.Add('UPDATE jumlah_siswa SET laki_laki = "'+jj+'" WHERE kelas = "TOTAL"');
  ADOQuery1.ExecSQL;
end;

procedure TForm1.pilihtotal;
begin
  ADOQuery1.Close;
  ADOQuery1.SQL.Clear;
  ADOQuery1.SQL.Add('UPDATE jumlah_siswa SET jumlah = "'+ll+'" WHERE kelas = "TOTAL"');
  ADOQuery1.ExecSQL;
end;

procedure TForm1.refresh;
begin
  ADOTable1.Close;
  ADOTable1.Open;
end;

procedure TForm1.totalkelas10;
begin
  ADOQuery1.Close;
  ADOQuery1.SQL.Clear;
  ADOQuery1.SQL.Add('UPDATE jumlah_siswa SET jumlah = "'+c+'" WHERE kelas = "KELAS 10"');
  ADOQuery1.ExecSQL;
end;

procedure TForm1.totalkelas11;
begin
  ADOQuery1.Close;
  ADOQuery1.SQL.Clear;
  ADOQuery1.SQL.Add('UPDATE jumlah_siswa SET jumlah = "'+ff+'" WHERE kelas = "KELAS 11"');
  ADOQuery1.ExecSQL;
end;

procedure TForm1.totalkelas12;
begin
  ADOQuery1.Close;
  ADOQuery1.SQL.Clear;
  ADOQuery1.SQL.Add('UPDATE jumlah_siswa SET jumlah = "'+ii+'" WHERE kelas = "KELAS 12"');
  ADOQuery1.ExecSQL;
end;

procedure TForm1.updatekelas10female;
begin
  ADOQuery1.Close;
  ADOQuery1.SQL.Clear;
  ADOQuery1.SQL.Add('UPDATE jumlah_siswa SET perempuan = "'+bb+'" WHERE kelas = "KELAS 10"');
  ADOQuery1.ExecSQL;
end;

procedure TForm1.updatekelas10male;
begin
  ADOQuery1.Close;
  ADOQuery1.SQL.Clear;
  ADOQuery1.SQL.Add('UPDATE jumlah_siswa SET laki_laki = "'+aa+'" WHERE kelas = "KELAS 10"');
  ADOQuery1.ExecSQL;
end;

procedure TForm1.updatekelas11femlae;
begin
  ADOQuery1.Close;
  ADOQuery1.SQL.Clear;
  ADOQuery1.SQL.Add('UPDATE jumlah_siswa SET perempuan = "'+ee+'" WHERE kelas = "KELAS 11"');
  ADOQuery1.ExecSQL;
end;

procedure TForm1.updatekelas11male;
begin
  ADOQuery1.Close;
  ADOQuery1.SQL.Clear;
  ADOQuery1.SQL.Add('UPDATE jumlah_siswa SET laki_laki = "'+dd+'" WHERE kelas = "KELAS 11"');
  ADOQuery1.ExecSQL;
end;

procedure TForm1.updatekelas12female;
begin
  ADOQuery1.Close;
  ADOQuery1.SQL.Clear;
  ADOQuery1.SQL.Add('UPDATE jumlah_siswa SET perempuan = "'+hh+'" WHERE kelas = "KELAS 12"');
  ADOQuery1.ExecSQL;
end;

procedure TForm1.updatekelas12male;
begin
  ADOQuery1.Close;
  ADOQuery1.SQL.Clear;
  ADOQuery1.SQL.Add('UPDATE jumlah_siswa SET laki_laki = "'+gg+'" WHERE kelas = "KELAS 12"');
  ADOQuery1.ExecSQL;
end;

procedure TForm1.F1Click(Sender: TObject);
begin
 //
end;

procedure TForm1.F2Click(Sender: TObject);
begin
  Form3.show;
end;

procedure TForm1.F3Click(Sender: TObject);
begin
  Form4.show;
end;

procedure TForm1.F4Click(Sender: TObject);
begin
  Form6.Show;
end;

end.
