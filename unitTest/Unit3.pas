unit Unit3;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, ADODB, Grids, DBGrids, StdCtrls;

type
  TForm3 = class(TForm)
    DBGrid1: TDBGrid;
    ADOTable1: TADOTable;
    ADOQuery1: TADOQuery;
    DataSource1: TDataSource;
    Button1: TButton;
    Edit1: TEdit;
    Label1: TLabel;
    procedure hitunghutang;
    procedure hitunghutang11;
    procedure hitunghutang12;
    procedure sppperperiode;
    procedure sppperperiode11;
    procedure sppperperiode12;
    procedure updatetablehitunghutang;
    procedure updatetablehitunghutang11;
    procedure updatetablehitunghutang12;
    procedure Button1Click(Sender: TObject);
    procedure refresh;
    procedure totbayarkls10;
    procedure totbayarkls11;
    procedure totbayarkls12;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form3: TForm3;
  data1,data2 : Real;
  jml1,data3 : String;

implementation

uses
  Unit1;

{$R *.dfm}

procedure TForm3.hitunghutang;
begin
  ADOQuery1.Close;
  ADOQuery1.SQL.Clear;
  ADOQuery1.SQL.Add('SELECT COUNT(*) AS JML_SISWA_KLS_10 FROM Copy_siswa WHERE kelas = "KELAS 10" AND periode = "'+Edit1.Text+'" AND status = "AKTIF"');
  ADOQuery1.Open;
end;

procedure TForm3.hitunghutang11;
begin
  ADOQuery1.Close;
  ADOQuery1.SQL.Clear;
  ADOQuery1.SQL.Add('SELECT COUNT(*) AS JML_SISWA_KLS_11 FROM Copy_siswa WHERE kelas = "KELAS 11" AND periode = "'+Edit1.Text+'" AND status = "AKTIF"');
  ADOQuery1.Open;
end;

procedure TForm3.hitunghutang12;
begin
  ADOQuery1.Close;
  ADOQuery1.SQL.Clear;
  ADOQuery1.SQL.Add('SELECT COUNT(*) AS JML_SISWA_KLS_12 FROM Copy_siswa WHERE kelas = "KELAS 12" AND periode = "'+Edit1.Text+'" AND status = "AKTIF"');
  ADOQuery1.Open;
end;

procedure TForm3.sppperperiode;
begin
  ADOQuery1.Close;
  ADOQuery1.SQL.Clear;
  ADOQuery1.SQL.Add('SELECT uang_spp FROM spp WHERE periode= "'+Edit1.Text+'" AND kelas = "KELAS 10"');
  ADOQuery1.Open;
end;

procedure TForm3.sppperperiode11;
begin
  ADOQuery1.Close;
  ADOQuery1.SQL.Clear;
  ADOQuery1.SQL.Add('SELECT uang_spp FROM spp WHERE periode= "'+Edit1.Text+'" AND kelas = "KELAS 11"');
  ADOQuery1.Open;
end;

procedure TForm3.sppperperiode12;
begin
  ADOQuery1.Close;
  ADOQuery1.SQL.Clear;
  ADOQuery1.SQL.Add('SELECT uang_spp FROM spp WHERE periode= "'+Edit1.Text+'" AND kelas = "KELAS 12"');
  ADOQuery1.Open;
end;

procedure TForm3.updatetablehitunghutang;
begin
  hitunghutang;
  if ADOQuery1['JML_SISWA_KLS_10'] <> null then
    begin
      data1 := ADOQuery1['JML_SISWA_KLS_10'];
    end;
  sppperperiode;
  if ADOQuery1['uang_spp'] <> null then
    begin
      data2 := ADOQuery1['uang_spp'];
    end;
  totbayarkls10;
  if ADOQuery1['total_bayar'] = null then
    begin
      data3 := '0';
    end
  else
    begin
      data3 := FloatToStr(ADOQuery1['total_bayar']);
    end;
  //
  if (data1 <> null) and (data2 <> null) and (data3 <> null) then
  begin
    jml1 := FloatToStr(((data1 * 12) * data2) - StrToFloat(data3));
    //
    ADOQuery1.Close;
    ADOQuery1.SQL.Clear;
    ADOQuery1.SQL.Add('UPDATE spp SET terhutang = "'+jml1+'" WHERE periode= "'+Edit1.Text+'" AND kelas = "KELAS 10"');
    ADOQuery1.ExecSQL;
    //
    ADOQuery1.Close;
    ADOQuery1.SQL.Clear;
    ADOQuery1.SQL.Add('UPDATE spp SET terbayar = "'+data3+'" WHERE periode= "'+Edit1.Text+'" AND kelas = "KELAS 10"');
    ADOQuery1.ExecSQL;
  end;
end;

procedure TForm3.updatetablehitunghutang11;
begin
  hitunghutang11;
  if ADOQuery1['JML_SISWA_KLS_11'] <> null then
    begin
      data1 := ADOQuery1['JML_SISWA_KLS_11'];
    end;
  sppperperiode11;
  if ADOQuery1['uang_spp'] <> null then
    begin
      data2 := ADOQuery1['uang_spp'];
    end;
  totbayarkls11;
  if ADOQuery1['total_bayar'] = null then
    begin
      data3 := '0';
    end
  else
    begin
      data3 := FloatToStr(ADOQuery1['total_bayar']);
    end;
  //
  if (data1 <> null) and (data2 <> null) and (data3 <> null) then
  begin
    jml1 := FloatToStr(((data1 * 12) * data2) - StrToFloat(data3));
    //
    ADOQuery1.Close;
    ADOQuery1.SQL.Clear;
    ADOQuery1.SQL.Add('UPDATE spp SET terhutang = "'+jml1+'" WHERE periode= "'+Edit1.Text+'" AND kelas = "KELAS 11"');
    ADOQuery1.ExecSQL;
    //
    ADOQuery1.Close;
    ADOQuery1.SQL.Clear;
    ADOQuery1.SQL.Add('UPDATE spp SET terbayar = "'+data3+'" WHERE periode= "'+Edit1.Text+'" AND kelas = "KELAS 11"');
    ADOQuery1.ExecSQL;
  end;
end;

procedure TForm3.updatetablehitunghutang12;
begin
  hitunghutang12;
  if ADOQuery1['JML_SISWA_KLS_12'] <> null then
    begin
      data1 := ADOQuery1['JML_SISWA_KLS_12'];
    end;
  sppperperiode12;
  if ADOQuery1['uang_spp'] <> null then
    begin
      data2 := ADOQuery1['uang_spp'];
    end;
  totbayarkls12;
  if ADOQuery1['total_bayar'] = null then
    begin
      data3 := '0';
    end
  else
    begin
      data3 := FloatToStr(ADOQuery1['total_bayar']);
    end;
  //
  if (data1 <> null) and (data2 <> null) and (data3 <> null) then
  begin
    jml1 := FloatToStr(((data1 * 12) * data2) - StrToFloat(data3));
    //
    ADOQuery1.Close;
    ADOQuery1.SQL.Clear;
    ADOQuery1.SQL.Add('UPDATE spp SET terhutang = "'+jml1+'" WHERE periode= "'+Edit1.Text+'" AND kelas = "KELAS 12"');
    ADOQuery1.ExecSQL;
    //
    ADOQuery1.Close;
    ADOQuery1.SQL.Clear;
    ADOQuery1.SQL.Add('UPDATE spp SET terbayar = "'+data3+'" WHERE periode= "'+Edit1.Text+'" AND kelas = "KELAS 12"');
    ADOQuery1.ExecSQL;
  end;
end;

procedure TForm3.Button1Click(Sender: TObject);
begin
  updatetablehitunghutang;
  updatetablehitunghutang11;
  updatetablehitunghutang12;
  refresh;
end;

procedure TForm3.refresh;
begin
  ADOTable1.Close;
  ADOTable1.Open;
end;

procedure TForm3.totbayarkls10;
begin
  ADOQuery1.Close;
  ADOQuery1.SQL.Clear;
  ADOQuery1.SQL.Add('SELECT total_bayar FROM data_bayar WHERE periode = "'+Edit1.Text+'" AND kelas = "KELAS 10"');
  ADOQuery1.Open;
end;

procedure TForm3.totbayarkls11;
begin
  ADOQuery1.Close;
  ADOQuery1.SQL.Clear;
  ADOQuery1.SQL.Add('SELECT total_bayar FROM data_bayar WHERE periode = "'+Edit1.Text+'" AND kelas = "KELAS 11"');
  ADOQuery1.Open;
end;

procedure TForm3.totbayarkls12;
begin
  ADOQuery1.Close;
  ADOQuery1.SQL.Clear;
  ADOQuery1.SQL.Add('SELECT total_bayar FROM data_bayar WHERE periode = "'+Edit1.Text+'" AND kelas = "KELAS 12"');
  ADOQuery1.Open;
end;

end.
