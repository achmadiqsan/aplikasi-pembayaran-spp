unit Unit5;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, ADODB, Grids, DBGrids;

type
  TForm5 = class(TForm)
    DBGrid1: TDBGrid;
    ADOTable1: TADOTable;
    DataSource1: TDataSource;
    procedure DBGrid1KeyPress(Sender: TObject; var Key: Char);
    procedure FormActivate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form5: TForm5;

implementation

uses
  Unit1, Unit4;

{$R *.dfm}

procedure TForm5.DBGrid1KeyPress(Sender: TObject; var Key: Char);
begin
  if key= #13 then
  begin
    Form4.Edit1.Text := Form5.ADOTable1['nisn'];
    Form4.Edit2.Text := Form5.ADOTable1['nama'];
    Form4.Edit3.Text := Form5.ADOTable1['kelas'];
    Form4.Edit5.Text := Form5.ADOTable1['total_bayar'];
    Form4.Edit6.Text := Form5.ADOTable1['sisa_bayar'];
    if Form5.ADOTable1['juli'] <> '0' then
      begin
        Form4.CheckBox1.Enabled := False;
        Form4.CheckBox1.Checked := True;
      end;
    if Form5.ADOTable1['agustus'] <> '0' then
      begin
        Form4.CheckBox2.Enabled := False;
        Form4.CheckBox2.Checked := True;
      end;
    if Form5.ADOTable1['september'] <> '0' then
      begin
        Form4.CheckBox3.Enabled := False;
        Form4.CheckBox3.Checked := True;
      end;
    if Form5.ADOTable1['oktober'] <> '0' then
      begin
        Form4.CheckBox4.Enabled := False;
        Form4.CheckBox4.Checked := True;
      end;
    if Form5.ADOTable1['november'] <> '0' then
      begin
        Form4.CheckBox5.Enabled := False;
        Form4.CheckBox5.Checked := True;
      end;
    if Form5.ADOTable1['desember'] <> '0' then
      begin
        Form4.CheckBox6.Enabled := False;
        Form4.CheckBox6.Checked := True;
      end;
    if Form5.ADOTable1['januari'] <> '0' then
      begin
        Form4.CheckBox7.Enabled := False;
        Form4.CheckBox7.Checked := True;
      end;
    if Form5.ADOTable1['februari'] <> '0' then
      begin
        Form4.CheckBox8.Enabled := False;
        Form4.CheckBox8.Checked := True;
      end;
    if Form5.ADOTable1['maret'] <> '0' then
      begin
        Form4.CheckBox9.Enabled := False;
        Form4.CheckBox9.Checked := True;
      end;
    if Form5.ADOTable1['april'] <> '0' then
      begin
        Form4.CheckBox10.Enabled := False;
        Form4.CheckBox10.Checked := True;
      end;
    if Form5.ADOTable1['mei'] <> '0' then
      begin
        Form4.CheckBox11.Enabled := False;
        Form4.CheckBox11.Checked := True;
      end;
    if Form5.ADOTable1['juni'] <> '0' then
      begin
        Form4.CheckBox12.Enabled := False;
        Form4.CheckBox12.Checked := True;
      end;
    Form4.Edit4.Text := '0';
    Form5.Close;
  end;
end;

procedure TForm5.FormActivate(Sender: TObject);
begin
  ADOTable1.Close;
  ADOTable1.Open;
end;

end.
