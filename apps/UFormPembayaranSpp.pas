unit UFormPembayaranSpp;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ComCtrls, StdCtrls, ExtCtrls, Grids, DBGrids;

type
  TFPembayaranSPP = class(TForm)
    Panel1: TPanel;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    Label9: TLabel;
    Label10: TLabel;
    Label12: TLabel;
    Panel2: TPanel;
    Panel3: TPanel;
    Panel5: TPanel;
    Panel6: TPanel;
    Panel7: TPanel;
    Edit1: TEdit;
    Edit2: TEdit;
    Edit3: TEdit;
    Edit4: TEdit;
    Edit5: TEdit;
    Edit6: TEdit;
    Edit7: TEdit;
    DateTimePicker1: TDateTimePicker;
    GroupBox1: TGroupBox;
    Label4: TLabel;
    Label11: TLabel;
    Label13: TLabel;
    Label14: TLabel;
    Label15: TLabel;
    Label16: TLabel;
    Label17: TLabel;
    Label18: TLabel;
    Label19: TLabel;
    Label20: TLabel;
    Label21: TLabel;
    Label22: TLabel;
    CheckBox1: TCheckBox;
    CheckBox2: TCheckBox;
    CheckBox3: TCheckBox;
    CheckBox4: TCheckBox;
    CheckBox5: TCheckBox;
    CheckBox6: TCheckBox;
    CheckBox7: TCheckBox;
    CheckBox8: TCheckBox;
    CheckBox9: TCheckBox;
    CheckBox10: TCheckBox;
    CheckBox11: TCheckBox;
    CheckBox12: TCheckBox;
    Panel8: TPanel;
    Label23: TLabel;
    Panel9: TPanel;
    GroupBox2: TGroupBox;
    Label5: TLabel;
    ComboBox2: TComboBox;
    Panel10: TPanel;
    DBGrid2: TDBGrid;
    Label24: TLabel;
    Label25: TLabel;
    procedure Panel6Click(Sender: TObject);
    procedure Panel8Click(Sender: TObject);
    procedure Panel9Click(Sender: TObject);
    procedure Edit4Change(Sender: TObject);
    procedure CaptionCheckbox0;
    procedure CheckboxData1;
    procedure SortirData;
    procedure SortirPeriodeAndKelas;
    procedure CekUangSpp;
    procedure FormActivate(Sender: TObject);
    procedure CheckBox1Click(Sender: TObject);
    procedure CheckBox2Click(Sender: TObject);
    procedure CheckBox3Click(Sender: TObject);
    procedure CheckBox4Click(Sender: TObject);
    procedure CheckBox5Click(Sender: TObject);
    procedure CheckBox6Click(Sender: TObject);
    procedure CheckBox7Click(Sender: TObject);
    procedure CheckBox8Click(Sender: TObject);
    procedure CheckBox9Click(Sender: TObject);
    procedure CheckBox10Click(Sender: TObject);
    procedure CheckBox11Click(Sender: TObject);
    procedure CheckBox12Click(Sender: TObject);
    procedure Panel2Click(Sender: TObject);
    procedure SimpanDataCheckBox;
    procedure SimpanData;
    procedure SimpanTotalDanSisaBayar;
    procedure Bersih;
    procedure Panel5Click(Sender: TObject);
    procedure DBGrid2KeyPress(Sender: TObject; var Key: Char);
    procedure Panel3Click(Sender: TObject);
    procedure SqlHapus;
    procedure HapusData;
    procedure Bersih2;
    procedure Refresh2;
    procedure Panel10Click(Sender: TObject);
    procedure Saring;
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FPembayaranSPP: TFPembayaranSPP;
  data1 : Real;
  data : string;
  juli,agustus,september,oktober,november,desember,maret,april,mei,juni,januari,februari : String;

implementation

uses
  DataModule, UCariData;

{$R *.dfm}

procedure TFPembayaranSPP.Panel6Click(Sender: TObject);
begin
  close;
end;

procedure TFPembayaranSPP.Panel8Click(Sender: TObject);
var
  id : string;
begin
    // coding untuk memilih kode dengan nomor yg paling terbesar :
  DM2.ADOQuery1.Close;
  DM2.ADOQuery1.SQL.Clear;
  DM2.ADOQuery1.SQL.Add('SELECT TOP 1 pembayaran.id_bayar FROM pembayaran');
  DM2.ADOQuery1.SQL.Add('ORDER BY pembayaran.id_bayar DESC');
  DM2.ADOQuery1.Open;

  // coding untuk mengcopy nilai yang di seleksi :
  id := Copy(DM2.ADOQuery1.Fields[0].AsString, 5, 6);

  // coding jika seleksi = 0 maka id = 00001 jika tdk maka tambah 1 :
  if id <> '' then id := FormatFLoat('000000', StrtoInt(id) + 1)
  else id := '000001';

  // coding melakukan pengabungan kode string dan integer :
  label23.caption := 'PMB-' + id;
end;

procedure TFPembayaranSPP.Panel9Click(Sender: TObject);
begin
//  FCariData.Show;
  if label23.Caption = 'ID Pembayaran SPP' then
    begin
      ShowMessage('SILAHKAN GET ID TERLEBIH DAHULU');
    end
  else
  if Edit1.Text = '' then
    begin
      ShowMessage('ISI TERLEBIH DAHULU PERIODE');
    end
  else
    begin
      FCariData.Show;
      Label24.Caption := 'INPUT';
      CheckBox1.Checked := False;
      CheckBox2.Checked := False;
      CheckBox3.Checked := False;
      CheckBox4.Checked := False;
      CheckBox5.Checked := False;
      CheckBox6.Checked := False;
      CheckBox7.Checked := False;
      CheckBox8.Checked := False;
      CheckBox9.Checked := False;
      CheckBox10.Checked := False;
      CheckBox11.Checked := False;
      CheckBox12.Checked := False;
      //
      Edit5.Text := '0';
    end;
end;

procedure TFPembayaranSPP.Edit4Change(Sender: TObject);
begin
  DM2.ADOTable1.Filtered := False;
  if Edit4.Text = 'KELAS 10' then
  begin
     SortirPeriodeAndKelas;
     //
     CekUangSpp;
     //
     SortirData;
  end
  else
  if Edit4.Text = 'KELAS 11' then
  begin
    SortirPeriodeAndKelas;
    //
    CekUangSpp;
    //
    SortirData;
  end
  else
  if Edit4.Text = 'KELAS 12' then
  begin
    SortirPeriodeAndKelas;
    //
    CekUangSpp;
    //
    SortirData;
  end;
end;

procedure TFPembayaranSPP.CaptionCheckbox0;
begin
   CheckBox1.Caption := '0';
   CheckBox2.Caption := '0';
   CheckBox3.Caption := '0';
   CheckBox4.Caption := '0';
   CheckBox5.Caption := '0';
   CheckBox6.Caption := '0';
   CheckBox7.Caption := '0';
   CheckBox8.Caption := '0';
   CheckBox9.Caption := '0';
   CheckBox10.Caption := '0';
   CheckBox11.Caption := '0';
   CheckBox12.Caption := '0';
end;

procedure TFPembayaranSPP.CheckboxData1;
begin
  CheckBox1.Caption := FloatToStr(data1);
  CheckBox2.Caption := FloatToStr(data1);
  CheckBox3.Caption := FloatToStr(data1);
  CheckBox4.Caption := FloatToStr(data1);
  CheckBox5.Caption := FloatToStr(data1);
  CheckBox6.Caption := FloatToStr(data1);
  CheckBox7.Caption := FloatToStr(data1);
  CheckBox8.Caption := FloatToStr(data1);
  CheckBox9.Caption := FloatToStr(data1);
  CheckBox10.Caption := FloatToStr(data1);
  CheckBox11.Caption := FloatToStr(data1);
  CheckBox12.Caption := FloatToStr(data1);
end;

procedure TFPembayaranSPP.SortirData;
begin
  if Label24.Caption = 'INPUT' then
     begin
       DM2.ADOTable1.Close;
       DM2.ADOTable1.Open;
       DM2.ADOTable1.Filtered := False;
       //DM2.ADOTable1.Filter :='periode LIKE '+Quotedstr('%'+Edit1.Text+'%') + 'AND nisn LIKE '+Quotedstr('%'+Edit2.Text+'%') + 'AND nama LIKE '+Quotedstr('%'+Edit3.Text+'%') + 'AND kelas LIKE '+Quotedstr('%'+Edit4.Text+'%');
       DM2.ADOTable1.Filter :='periode LIKE '+Quotedstr('%'+Label25.Caption+'%') + 'AND nisn LIKE '+Quotedstr('%'+Edit2.Text+'%') + 'AND nama LIKE '+Quotedstr('%'+Edit3.Text+'%') + 'AND kelas LIKE '+Quotedstr('%'+Edit4.Text+'%');
       DM2.ADOTable1.Filtered := True;
     end;

  if Label24.Caption = 'UPDATE' then
     begin
       DM2.ADOTable1.Close;
       DM2.ADOTable1.Open;
       DM2.ADOTable1.Filtered := False;
       //DM2.ADOTable1.Filter :='periode LIKE '+Quotedstr('%'+Edit1.Text+'%') + 'AND nisn LIKE '+Quotedstr('%'+Edit2.Text+'%') + 'AND nama LIKE '+Quotedstr('%'+Edit3.Text+'%') + 'AND kelas LIKE '+Quotedstr('%'+Edit4.Text+'%');
       DM2.ADOTable1.Filter :='periode LIKE '+Quotedstr('%'+Label25.Caption+'%') + 'AND nisn LIKE '+Quotedstr('%'+Edit2.Text+'%') + 'AND nama LIKE '+Quotedstr('%'+Edit3.Text+'%') + 'AND kelas LIKE '+Quotedstr('%'+Edit4.Text+'%');
       DM2.ADOTable1.Filtered := True;
     end;
end;

procedure TFPembayaranSPP.SortirPeriodeAndKelas;
begin
  DM2.ADOTable2.Close;
  DM2.ADOTable2.Open;
  DM2.ADOTable2.Filtered := False;
  //DM2.ADOTable2.Filter :='periode LIKE '+Quotedstr('%'+Edit1.Text+'%') + 'AND kelas LIKE '+Quotedstr('%'+Edit4.Text+'%');
  DM2.ADOTable2.Filter :='periode LIKE '+Quotedstr('%'+Label25.Caption+'%') + 'AND kelas LIKE '+Quotedstr('%'+Edit4.Text+'%');
  DM2.ADOTable2.Filtered := True;
end;

procedure TFPembayaranSPP.CekUangSpp;
begin
  data1 := DM2.ADOTable2['uang_spp'];
     if data1 = null then
      begin
        CaptionCheckbox0;
      end
     else
      begin
        CheckboxData1;
      end;
end;

procedure TFPembayaranSPP.FormActivate(Sender: TObject);
begin
  DateTimePicker1.Date := Now;
end;

procedure TFPembayaranSPP.CheckBox1Click(Sender: TObject);
begin
  if Label24.Caption = 'INPUT' then
    begin
      if CheckBox1.Checked = True then
        begin
          Edit5.Text := FloatToStr(StrToFloat(Edit5.Text) + StrToFloat(CheckBox1.Caption));
        end
      else
      if CheckBox1.Checked = False then
        begin
          Edit5.Text := FloatToStr(StrToFloat(Edit5.Text) - StrToFloat(CheckBox1.Caption));
        end;
    end;
  //
  if Label24.Caption = 'UPDATE' then
    begin
      if CheckBox1.Checked = True then
        begin
          Edit5.Text := FloatToStr(StrToFloat(Edit5.Text) + StrToFloat(CheckBox1.Caption));
        end
      else
      if CheckBox1.Checked = False then
        begin
          Edit5.Text := FloatToStr(StrToFloat(Edit5.Text) - StrToFloat(CheckBox1.Caption));
        end;
    end;
end;

procedure TFPembayaranSPP.CheckBox2Click(Sender: TObject);
begin
  if Label24.Caption = 'INPUT' then
    begin
      if CheckBox2.Checked = True then
        begin
          Edit5.Text := FloatToStr(StrToFloat(Edit5.Text) + StrToFloat(CheckBox2.Caption));
        end
      else
      if CheckBox2.Checked = False then
        begin
          Edit5.Text := FloatToStr(StrToFloat(Edit5.Text) - StrToFloat(CheckBox2.Caption));
        end;
    end;
  //
  if Label24.Caption = 'UPDATE' then
    begin
      if CheckBox2.Checked = True then
        begin
          Edit5.Text := FloatToStr(StrToFloat(Edit5.Text) + StrToFloat(CheckBox2.Caption));
        end
      else
      if CheckBox2.Checked = False then
        begin
          Edit5.Text := FloatToStr(StrToFloat(Edit5.Text) - StrToFloat(CheckBox2.Caption));
        end;
    end;
end;

procedure TFPembayaranSPP.CheckBox3Click(Sender: TObject);
begin
  if Label24.Caption = 'INPUT' then
    begin
      if CheckBox3.Checked = True then
        begin
          Edit5.Text := FloatToStr(StrToFloat(Edit5.Text) + StrToFloat(CheckBox3.Caption));
        end
      else
      if CheckBox3.Checked = False then
        begin
          Edit5.Text := FloatToStr(StrToFloat(Edit5.Text) - StrToFloat(CheckBox3.Caption));
        end;
    end;
  //
  if Label24.Caption = 'UPDATE' then
    begin
      if CheckBox3.Checked = True then
        begin
          Edit5.Text := FloatToStr(StrToFloat(Edit5.Text) + StrToFloat(CheckBox3.Caption));
        end
      else
      if CheckBox3.Checked = False then
        begin
          Edit5.Text := FloatToStr(StrToFloat(Edit5.Text) - StrToFloat(CheckBox3.Caption));
        end;
    end;
end;

procedure TFPembayaranSPP.CheckBox4Click(Sender: TObject);
begin
    if Label24.Caption = 'INPUT' then
    begin
      if CheckBox4.Checked = True then
        begin
          Edit5.Text := FloatToStr(StrToFloat(Edit5.Text) + StrToFloat(CheckBox4.Caption));
        end
      else
      if CheckBox4.Checked = False then
        begin
          Edit5.Text := FloatToStr(StrToFloat(Edit5.Text) - StrToFloat(CheckBox4.Caption));
        end;
    end;
  //
  if Label24.Caption = 'UPDATE' then
    begin
      if CheckBox4.Checked = True then
        begin
          Edit5.Text := FloatToStr(StrToFloat(Edit5.Text) + StrToFloat(CheckBox4.Caption));
        end
      else
      if CheckBox4.Checked = False then
        begin
          Edit5.Text := FloatToStr(StrToFloat(Edit5.Text) - StrToFloat(CheckBox4.Caption));
        end;
    end;
end;

procedure TFPembayaranSPP.CheckBox5Click(Sender: TObject);
begin
  if Label24.Caption = 'INPUT' then
    begin
      if CheckBox5.Checked = True then
        begin
          Edit5.Text := FloatToStr(StrToFloat(Edit5.Text) + StrToFloat(CheckBox5.Caption));
        end
      else
      if CheckBox5.Checked = False then
        begin
          Edit5.Text := FloatToStr(StrToFloat(Edit5.Text) - StrToFloat(CheckBox5.Caption));
        end;
    end;
  //
  if Label24.Caption = 'UPDATE' then
    begin
      if CheckBox5.Checked = True then
        begin
          Edit5.Text := FloatToStr(StrToFloat(Edit5.Text) + StrToFloat(CheckBox5.Caption));
        end
      else
      if CheckBox5.Checked = False then
        begin
          Edit5.Text := FloatToStr(StrToFloat(Edit5.Text) - StrToFloat(CheckBox5.Caption));
        end;
    end;
end;

procedure TFPembayaranSPP.CheckBox6Click(Sender: TObject);
begin
  if Label24.Caption = 'INPUT' then
    begin
      if CheckBox6.Checked = True then
        begin
          Edit5.Text := FloatToStr(StrToFloat(Edit5.Text) + StrToFloat(CheckBox6.Caption));
        end
      else
      if CheckBox6.Checked = False then
        begin
          Edit5.Text := FloatToStr(StrToFloat(Edit5.Text) - StrToFloat(CheckBox6.Caption));
        end;
    end;
  //
  if Label24.Caption = 'UPDATE' then
    begin
      if CheckBox6.Checked = True then
        begin
          Edit5.Text := FloatToStr(StrToFloat(Edit5.Text) + StrToFloat(CheckBox6.Caption));
        end
      else
      if CheckBox6.Checked = False then
        begin
          Edit5.Text := FloatToStr(StrToFloat(Edit5.Text) - StrToFloat(CheckBox6.Caption));
        end;
    end;
end;

procedure TFPembayaranSPP.CheckBox7Click(Sender: TObject);
begin
  if Label24.Caption = 'INPUT' then
    begin
      if CheckBox7.Checked = True then
        begin
          Edit5.Text := FloatToStr(StrToFloat(Edit5.Text) + StrToFloat(CheckBox7.Caption));
        end
      else
      if CheckBox7.Checked = False then
        begin
          Edit5.Text := FloatToStr(StrToFloat(Edit5.Text) - StrToFloat(CheckBox7.Caption));
        end;
    end;
  //
  if Label24.Caption = 'UPDATE' then
    begin
      if CheckBox7.Checked = True then
        begin
          Edit5.Text := FloatToStr(StrToFloat(Edit5.Text) + StrToFloat(CheckBox7.Caption));
        end
      else
      if CheckBox7.Checked = False then
        begin
          Edit5.Text := FloatToStr(StrToFloat(Edit5.Text) - StrToFloat(CheckBox7.Caption));
        end;
    end;
end;

procedure TFPembayaranSPP.CheckBox8Click(Sender: TObject);
begin
  if Label24.Caption = 'INPUT' then
    begin
      if CheckBox8.Checked = True then
        begin
          Edit5.Text := FloatToStr(StrToFloat(Edit5.Text) + StrToFloat(CheckBox8.Caption));
        end
      else
      if CheckBox8.Checked = False then
        begin
          Edit5.Text := FloatToStr(StrToFloat(Edit5.Text) - StrToFloat(CheckBox8.Caption));
        end;
    end;
  //
  if Label24.Caption = 'UPDATE' then
    begin
      if CheckBox8.Checked = True then
        begin
          Edit5.Text := FloatToStr(StrToFloat(Edit5.Text) + StrToFloat(CheckBox8.Caption));
        end
      else
      if CheckBox8.Checked = False then
        begin
          Edit5.Text := FloatToStr(StrToFloat(Edit5.Text) - StrToFloat(CheckBox8.Caption));
        end;
    end;
end;

procedure TFPembayaranSPP.CheckBox9Click(Sender: TObject);
begin
  if Label24.Caption = 'INPUT' then
    begin
      if CheckBox9.Checked = True then
        begin
          Edit5.Text := FloatToStr(StrToFloat(Edit5.Text) + StrToFloat(CheckBox9.Caption));
        end
      else
      if CheckBox9.Checked = False then
        begin
          Edit5.Text := FloatToStr(StrToFloat(Edit5.Text) - StrToFloat(CheckBox9.Caption));
        end;
    end;
  //
  if Label24.Caption = 'UPDATE' then
    begin
      if CheckBox9.Checked = True then
        begin
          Edit5.Text := FloatToStr(StrToFloat(Edit5.Text) + StrToFloat(CheckBox9.Caption));
        end
      else
      if CheckBox9.Checked = False then
        begin
          Edit5.Text := FloatToStr(StrToFloat(Edit5.Text) - StrToFloat(CheckBox9.Caption));
        end;
    end;
end;

procedure TFPembayaranSPP.CheckBox10Click(Sender: TObject);
begin
  if Label24.Caption = 'INPUT' then
    begin
      if CheckBox10.Checked = True then
        begin
          Edit5.Text := FloatToStr(StrToFloat(Edit5.Text) + StrToFloat(CheckBox10.Caption));
        end
      else
      if CheckBox10.Checked = False then
        begin
          Edit5.Text := FloatToStr(StrToFloat(Edit5.Text) - StrToFloat(CheckBox10.Caption));
        end;
    end;
  //
  if Label24.Caption = 'UPDATE' then
    begin
      if CheckBox10.Checked = True then
        begin
          Edit5.Text := FloatToStr(StrToFloat(Edit5.Text) + StrToFloat(CheckBox10.Caption));
        end
      else
      if CheckBox10.Checked = False then
        begin
          Edit5.Text := FloatToStr(StrToFloat(Edit5.Text) - StrToFloat(CheckBox10.Caption));
        end;
    end;
end;

procedure TFPembayaranSPP.CheckBox11Click(Sender: TObject);
begin
  if Label24.Caption = 'INPUT' then
    begin
      if CheckBox11.Checked = True then
        begin
          Edit5.Text := FloatToStr(StrToFloat(Edit5.Text) + StrToFloat(CheckBox11.Caption));
        end
      else
      if CheckBox11.Checked = False then
        begin
          Edit5.Text := FloatToStr(StrToFloat(Edit5.Text) - StrToFloat(CheckBox11.Caption));
        end;
    end;
  //
  if Label24.Caption = 'UPDATE' then
    begin
      if CheckBox11.Checked = True then
        begin
          Edit5.Text := FloatToStr(StrToFloat(Edit5.Text) + StrToFloat(CheckBox11.Caption));
        end
      else
      if CheckBox11.Checked = False then
        begin
          Edit5.Text := FloatToStr(StrToFloat(Edit5.Text) - StrToFloat(CheckBox11.Caption));
        end;
    end;
end;

procedure TFPembayaranSPP.CheckBox12Click(Sender: TObject);
begin
  if Label24.Caption = 'INPUT' then
    begin
      if CheckBox12.Checked = True then
        begin
          Edit5.Text := FloatToStr(StrToFloat(Edit5.Text) + StrToFloat(CheckBox12.Caption));
        end
      else
      if CheckBox12.Checked = False then
        begin
          Edit5.Text := FloatToStr(StrToFloat(Edit5.Text) - StrToFloat(CheckBox12.Caption));
        end;
    end;
  //
  if Label24.Caption = 'UPDATE' then
    begin
      if CheckBox12.Checked = True then
        begin
          Edit5.Text := FloatToStr(StrToFloat(Edit5.Text) + StrToFloat(CheckBox12.Caption));
        end
      else
      if CheckBox12.Checked = False then
        begin
          Edit5.Text := FloatToStr(StrToFloat(Edit5.Text) - StrToFloat(CheckBox12.Caption));
        end;
    end;
end;

procedure TFPembayaranSPP.Panel2Click(Sender: TObject);
begin
  if Label23.Caption = 'ID Pembayaran SPP' then
    MessageDlg('SILAHKAN GET ID DAN PASTIKAN ANDA MENCENTANG BULAN PEMBAYARAN !!',mtinformation,[mbok],0)
  else
    begin
      if Label24.Caption = 'INPUT' then
        begin
          //
          SimpanDataCheckBox;
          //
          SimpanData;
          //
          SimpanTotalDanSisaBayar;
        end;

      //
      if Label24.Caption = 'UPDATE' then
        begin
          SimpanDataCheckBox;
          //
          SimpanData;
          //
          SimpanTotalDanSisaBayar;
        end;
      Edit1.Clear;
      Edit2.Clear;
      Edit3.Clear;
      Edit4.Clear;
      Edit5.Text := '0';
      Edit6.Text := '0';
      Edit7.Text := '0';
      DM2.ADOTable1.Close;
      DM2.ADOTable1.Open;
      DateTimePicker1.Date := Now;
      ComboBox2.Text := '-- PILIH KELAS --';
      Bersih;
      DM2.ADOTable1.Filtered := False;
      Edit5.Text := '0';
      Label23.Caption := 'ID Pembayaran SPP';
    end;
    Saring;
end;

procedure TFPembayaranSPP.SimpanDataCheckBox;
begin
      if (CheckBox1.Enabled = True) and (CheckBox1.Checked = True) then
        begin
           DM2.ADOTable1.Edit;
           DM2.ADOTable1['juli'] := CheckBox1.Caption;
           DM2.ADOTable1.Post;
        end;
      if (CheckBox2.Enabled = True) and (CheckBox2.Checked = True) then
        begin
           DM2.ADOTable1.Edit;
           DM2.ADOTable1['agustus'] := CheckBox2.Caption;
           DM2.ADOTable1.Post;
        end;
      if (CheckBox3.Enabled = True) and (CheckBox3.Checked = True) then
        begin
           DM2.ADOTable1.Edit;
           DM2.ADOTable1['september'] := CheckBox3.Caption;
           DM2.ADOTable1.Post;
        end;
      if (CheckBox4.Enabled = True) and (CheckBox4.Checked = True) then
        begin
           DM2.ADOTable1.Edit;
           DM2.ADOTable1['oktober'] := CheckBox4.Caption;
           DM2.ADOTable1.Post;
        end;
      if (CheckBox5.Enabled = True) and (CheckBox5.Checked = True) then
        begin
           DM2.ADOTable1.Edit;
           DM2.ADOTable1['november'] := CheckBox5.Caption;
           DM2.ADOTable1.Post;
        end;
      if (CheckBox6.Enabled = True) and (CheckBox6.Checked = True) then
        begin
           DM2.ADOTable1.Edit;
           DM2.ADOTable1['desember'] := CheckBox6.Caption;
           DM2.ADOTable1.Post;
        end;
      if (CheckBox7.Enabled = True) and (CheckBox7.Checked = True) then
        begin
           DM2.ADOTable1.Edit;
           DM2.ADOTable1['januari'] := CheckBox7.Caption;
           DM2.ADOTable1.Post;
        end;
      if (CheckBox8.Enabled = True) and (CheckBox8.Checked = True) then
        begin
           DM2.ADOTable1.Edit;
           DM2.ADOTable1['februari'] := CheckBox8.Caption;
           DM2.ADOTable1.Post;
        end;
      if (CheckBox9.Enabled = True) and (CheckBox9.Checked = True) then
        begin
           DM2.ADOTable1.Edit;
           DM2.ADOTable1['maret'] := CheckBox9.Caption;
           DM2.ADOTable1.Post;
        end;
      if (CheckBox10.Enabled = True) and (CheckBox10.Checked = True) then
        begin
           DM2.ADOTable1.Edit;
           DM2.ADOTable1['april'] := CheckBox10.Caption;
           DM2.ADOTable1.Post;
        end;
      if (CheckBox11.Enabled = True) and (CheckBox11.Checked = True) then
        begin
           DM2.ADOTable1.Edit;
           DM2.ADOTable1['mei'] := CheckBox11.Caption;
           DM2.ADOTable1.Post;
        end;
      if (CheckBox12.Enabled = True) and (CheckBox12.Checked = True) then
        begin
           DM2.ADOTable1.Edit;
           DM2.ADOTable1['juni'] := CheckBox12.Caption;
           DM2.ADOTable1.Post;
        end;
end;

procedure TFPembayaranSPP.SimpanData;
begin
  DM2.ADOTable3.Append;
  DM2.ADOTable3['id_bayar'] := Label23.Caption;
  DM2.ADOTable3['kelas'] := Edit4.Text;
  DM2.ADOTable3['nama'] := Edit3.Text;
  DM2.ADOTable3['nisn'] := Edit2.Text;
  DM2.ADOTable3['jumlah_bayar'] := Edit5.Text;
  DM2.ADOTable3['tgl_bayar'] := DateTimePicker1.Date;
  DM2.ADOTable3['periode'] := Edit1.Text;
      if (CheckBox1.Enabled = True) and (CheckBox1.Checked = True) then
        begin
           juli := ' JUL';
        end;
      if (CheckBox2.Enabled = True) and (CheckBox2.Checked = True) then
        begin
           agustus := ' AGUST';
        end;
      if (CheckBox3.Enabled = True) and (CheckBox3.Checked = True) then
        begin
           september := ' SEP';
        end;
      if (CheckBox4.Enabled = True) and (CheckBox4.Checked = True) then
        begin
           oktober := ' OKT';
        end;
      if (CheckBox5.Enabled = True) and (CheckBox5.Checked = True) then
        begin
           november := ' NOV';
        end;
      if (CheckBox6.Enabled = True) and (CheckBox6.Checked = True) then
        begin
           desember := ' DES';
        end;
      if (CheckBox7.Enabled = True) and (CheckBox7.Checked = True) then
        begin
           januari := ' JAN';
        end;
      if (CheckBox8.Enabled = True) and (CheckBox8.Checked = True) then
        begin
           februari := ' FEB';
        end;
      if (CheckBox9.Enabled = True) and (CheckBox9.Checked = True) then
        begin
           maret := ' MAR';
        end;
      if (CheckBox10.Enabled = True) and (CheckBox10.Checked = True) then
        begin
           april := ' APR';
        end;
      if (CheckBox11.Enabled = True) and (CheckBox11.Checked = True) then
        begin
           mei := ' MEI';
        end;
      if (CheckBox12.Enabled = True) and (CheckBox12.Checked = True) then
        begin
           juni := ' JUN';
        end;
  DM2.ADOTable3['bulan'] := juli+agustus+september+oktober+november+desember+januari+februari+maret+april+mei+juni;
  DM2.ADOTable3.Post;
  juli := ''; agustus:= ''; september:= ''; oktober:= '';
  november:= ''; desember:= ''; maret:= ''; april:= ''; mei:= '';
  juni := ''; januari :=''; februari :='';
end;

procedure TFPembayaranSPP.SimpanTotalDanSisaBayar;
begin
      data := Edit5.Text;
      Edit6.Text := FloatToStr(StrToFloat(Edit6.Text) + StrToFloat(data));
      DM2.ADOTable1.Edit;
      DM2.ADOTable1['total_bayar'] := FloatToStr(StrToFloat(DM2.ADOTable1['total_bayar']) + StrToFloat(data));
      DM2.ADOTable1['sisa_bayar'] := FloatToStr(StrToFloat(DM2.ADOTable1['sisa_bayar']) - StrToFloat(data));
      DM2.ADOTable1.Post;
      Edit7.Text := DM2.ADOTable1['sisa_bayar'];
      Edit5.Text := '0';
end;

procedure TFPembayaranSPP.Bersih;
begin
CheckBox1.Checked := False;
  CheckBox2.Checked := False;
  CheckBox3.Checked := False;
  CheckBox4.Checked := False;
  CheckBox5.Checked := False;
  CheckBox6.Checked := False;
  CheckBox7.Checked := False;
  CheckBox8.Checked := False;
  CheckBox9.Checked := False;
  CheckBox10.Checked := False;
  CheckBox11.Checked := False;
  CheckBox12.Checked := False;
  Label24.Caption := 'Label24';
  CheckBox1.Enabled := True;
  CheckBox2.Enabled := True;
  CheckBox3.Enabled := True;
  CheckBox4.Enabled := True;
  CheckBox5.Enabled := True;
  CheckBox6.Enabled := True;
  CheckBox7.Enabled := True;
  CheckBox8.Enabled := True;
  CheckBox9.Enabled := True;
  CheckBox10.Enabled := True;
  CheckBox11.Enabled := True;
  CheckBox12.Enabled := True;
  //
  CheckBox1.Caption := '0';
  CheckBox2.Caption := '0';
  CheckBox3.Caption := '0';
  CheckBox4.Caption := '0';
  CheckBox5.Caption := '0';
  CheckBox6.Caption := '0';
  CheckBox7.Caption := '0';
  CheckBox8.Caption := '0';
  CheckBox9.Caption := '0';
  CheckBox10.Caption := '0';
  CheckBox11.Caption := '0';
  CheckBox12.Caption := '0';
end;

procedure TFPembayaranSPP.Panel5Click(Sender: TObject);
begin
  Edit1.Clear;
  Edit2.Clear;
  Edit3.Clear;
  Edit4.Clear;
  Edit5.Text := '0';
  Edit6.Text := '0';
  Edit7.Text := '0';
  DM2.ADOTable1.Close;
  DM2.ADOTable1.Open;
  DateTimePicker1.Date := Now;
  ComboBox2.Text := '-- PILIH KELAS --';
  Bersih;
  DM2.ADOTable1.Filtered := False;
  Edit5.Text := '0';
  Label23.Caption := 'ID Pembayaran SPP';
  Saring;
end;

procedure TFPembayaranSPP.DBGrid2KeyPress(Sender: TObject; var Key: Char);
begin
if key= #13 then
  begin
    if (Edit1.Text <> '') and (DM2.ADOTable1['periode'] = Edit1.Text) then
    begin
      //Panel8Click(Sender);
      Label24.Caption := 'UPDATE';
      Edit2.Text := DM2.ADOTable1['nisn'];
      Edit3.Text := DM2.ADOTable1['nama'];
      Edit4.Text := DM2.ADOTable1['kelas'];
      Edit6.Text := DM2.ADOTable1['total_bayar'];
      Edit7.Text := DM2.ADOTable1['sisa_bayar'];
      
      if DM2.ADOTable1['juli'] <> '0' then
        begin
          CheckBox1.Enabled := False;
          CheckBox1.Checked := True;
        end;

      if DM2.ADOTable1['agustus'] <> '0' then
        begin
          CheckBox2.Enabled := False;
          CheckBox2.Checked := True;
        end;

      if DM2.ADOTable1['september'] <> '0' then
        begin
          CheckBox3.Enabled := False;
          CheckBox3.Checked := True;
        end;

      if DM2.ADOTable1['oktober'] <> '0' then
        begin
          CheckBox4.Enabled := False;
          CheckBox4.Checked := True;
        end;

      if DM2.ADOTable1['november'] <> '0' then
        begin
          CheckBox5.Enabled := False;
          CheckBox5.Checked := True;
        end;

      if DM2.ADOTable1['desember'] <> '0' then
        begin
          CheckBox6.Enabled := False;
          CheckBox6.Checked := True;
        end;

      if DM2.ADOTable1['januari'] <> '0' then
        begin
          CheckBox7.Enabled := False;
          CheckBox7.Checked := True;
        end;

      if DM2.ADOTable1['februari'] <> '0' then
        begin
          CheckBox8.Enabled := False;
          CheckBox8.Checked := True;
        end;

      if DM2.ADOTable1['maret'] <> '0' then
        begin
          CheckBox9.Enabled := False;
          CheckBox9.Checked := True;
        end;

      if DM2.ADOTable1['april'] <> '0' then
        begin
          CheckBox10.Enabled := False;
          CheckBox10.Checked := True;
        end;

      if DM2.ADOTable1['mei'] <> '0' then
        begin
          CheckBox11.Enabled := False;
          CheckBox11.Checked := True;
        end;

      if DM2.ADOTable1['juni'] <> '0' then
        begin
          CheckBox12.Enabled := False;
          CheckBox12.Checked := True;
        end;

      Edit5.Text := '0';
    end
    else
    begin
      ShowMessage('PERIODE TIDAK BOLEH KOSONG ATAU PERIODE HARUS SAMA DENGAN DATANG YANG DI PILIH');
    end;
  end;
end;

procedure TFPembayaranSPP.Panel3Click(Sender: TObject);
begin
  if Label24.Caption = 'INPUT' then
  begin
    SqlHapus;
    //
    HapusData;
    //
    Bersih2;
    //
    Refresh2;
    //
    Bersih;
  end;

  if Label24.Caption = 'UPDATE' then
  begin
    SqlHapus;
    //
    HapusData;
    //
    Bersih2;
    //
    Refresh2;
    //
    Bersih;

  end;
  Saring;
end;

procedure TFPembayaranSPP.SqlHapus;
begin
  DM2.ADOQuery1.Close;
  DM2.ADOQuery1.SQL.Clear;
  DM2.ADOQuery1.SQL.Add('DELETE FROM pembayaran WHERE nisn = "'+edit2.Text+'" AND kelas = "'+edit4.Text+'" AND periode = "'+edit1.Text+'"');
  DM2.ADOQuery1.ExecSQL;
end;

procedure TFPembayaranSPP.HapusData;
begin
    DM2.ADOTable1.Edit;
    DM2.ADOTable1['juli'] := '0';
    DM2.ADOTable1['agustus'] := '0';
    DM2.ADOTable1['september'] := '0';
    DM2.ADOTable1['oktober'] := '0';
    DM2.ADOTable1['november'] := '0';
    DM2.ADOTable1['desember'] := '0';
    DM2.ADOTable1['januari'] := '0';
    DM2.ADOTable1['februari'] := '0';
    DM2.ADOTable1['maret'] := '0';
    DM2.ADOTable1['april'] := '0';
    DM2.ADOTable1['mei'] := '0';
    DM2.ADOTable1['juni'] := '0';
    DM2.ADOTable1['total_bayar'] := '0';
    DM2.ADOTable1['sisa_bayar'] := FloatToStr(StrToFloat(DM2.ADOTable1['sisa_bayar']) + StrToFloat(Edit6.Text));
    DM2.ADOTable1.Post;
end;

procedure TFPembayaranSPP.Bersih2;
begin
    Edit1.Clear;
    Edit2.Clear;
    Edit3.Clear;
    Edit4.Clear;
    Edit5.Text := '0';
    Edit6.Text := '0';
    Edit7.Text := '0';
    Edit5.Text := '0';
    Label23.Caption := 'ID Pembayaran SPP';
    DateTimePicker1.Date := Now;
    ComboBox2.Text := 'PILIH KELAS';
end;

procedure TFPembayaranSPP.Refresh2;
begin
  DM2.ADOTable1.Close;
  DM2.ADOTable1.Open;
end;

procedure TFPembayaranSPP.Panel10Click(Sender: TObject);
begin
//  if Edit1.Text = '' then ShowMessage('PERIODE TIDAK BOLEH KOSONG') else
  if ComboBox2.Text = 'PILIH KELAS' then ShowMessage('SILAHKAN PILIH KELAS') else
    begin
      DM2.ADOTable1.Filtered := False;
      DM2.ADOTable1.Filter :='periode LIKE '+Quotedstr('%'+Label25.Caption+'%') + 'AND kelas LIKE '+Quotedstr('%'+ComboBox2.Text+'%');
      DM2.ADOTable1.Filtered := True;
    end;
end;

procedure TFPembayaranSPP.Saring;
begin
  //
  DM2.ADOTable1.Close;
  DM2.ADOTable1.Open;
  DM2.ADOTable1.Filtered := False;
  DM2.ADOTable1.Filter :='periode LIKE '+Quotedstr('%'+Label25.Caption+'%');
  DM2.ADOTable1.Filtered := True;
end;

procedure TFPembayaranSPP.FormShow(Sender: TObject);
begin
  Saring;
end;

end.
