unit UFormSPP;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ComCtrls, StdCtrls, ExtCtrls, Grids, DBGrids;

type
  TFDataSPP = class(TForm)
    Panel1: TPanel;
    Label1: TLabel;
    Label2: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Panel2: TPanel;
    Panel3: TPanel;
    Panel5: TPanel;
    Panel6: TPanel;
    Panel7: TPanel;
    Edit1: TEdit;
    ComboBox2: TComboBox;
    Edit3: TEdit;
    DBGrid1: TDBGrid;
    GroupBox1: TGroupBox;
    Edit2: TEdit;
    procedure Panel6Click(Sender: TObject);
    procedure Panel5Click(Sender: TObject);
    procedure refresh;
    procedure Panel2Click(Sender: TObject);
    procedure CekAndSave;
    procedure save;
    procedure Edit1KeyPress(Sender: TObject; var Key: Char);
    procedure Edit3KeyPress(Sender: TObject; var Key: Char);
    procedure Edit3Change(Sender: TObject);
    procedure bersih;
    procedure DBGrid1CellClick(Column: TColumn);
    procedure Panel3Click(Sender: TObject);
    procedure Edit2Change(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FDataSPP: TFDataSPP;

implementation

uses
  DataModule;

{$R *.dfm}

procedure ribuan(edit : Tedit);
var
  sRupiah: string;
  iRupiah: Currency;
begin
  //ribuan --> currency ( menyesuaikan setting windows )
  sRupiah := edit.Text;
  sRupiah := StringReplace(sRupiah,',','',[rfReplaceAll,rfIgnoreCase]); // hilangkan char koma , pemisah //ribuan selain IDR
  sRupiah := StringReplace(sRupiah,'.','',[rfReplaceAll,rfIgnoreCase]); //remove char titik .    pemisah //ribuan IDR
  iRupiah := StrToCurrDef(sRupiah,0); // convert srupiah ke currency

  //currency --> format ribuan
  edit.Text := FormatCurr('#,###',iRupiah);
  edit.SelStart := length(edit.text);
end;

function hapusribuan(edit : Tedit): string;
var hasil : string;
begin
  hasil := edit.text;
  hasil := StringReplace(hasil,',','',[rfReplaceAll,rfIgnoreCase]);
  hasil := StringReplace(hasil,'.','',[rfReplaceAll,rfIgnoreCase]);
  hapusribuan := hasil;
end;

procedure TFDataSPP.Panel6Click(Sender: TObject);
begin
  Close;
end;

procedure TFDataSPP.Panel5Click(Sender: TObject);
begin
  bersih;
  refresh;
end;

procedure TFDataSPP.refresh;
begin
  DM2.ADOSPP.Close;
  DM2.ADOSPP.Open;
end;

procedure TFDataSPP.Panel2Click(Sender: TObject);
begin
  if Edit1.Text = '' then
    MessageDlg('Data Periode Tidak Boleh Kosong',mtInformation,[mbok],0)
  else
  if Edit3.Text = '' then
    MessageDlg('Data Uang SPP Tidak Boleh Kosong',mtInformation,[mbok],0)
  else
  if ComboBox2.Text = '-- PILIH KELAS --' then
    MessageDlg('Silahkan Pilih Kelas',mtInformation,[mbok],0)
  else
    begin
      CekAndSave;
    end;
end;

procedure TFDataSPP.CekAndSave;
begin
  //data := StringReplace(Edit1.Text+ComboBox2.Text,' ','',[rfReplaceAll]);
  if DM2.ADOSPP.Locate('kode',StringReplace(Edit1.Text+ComboBox2.Text,' ','',[rfReplaceAll]),[]) then
    MessageDlg('Data yang Anda Input Telah Ada',mtInformation,[mbok],0)
  else
  begin
    save;
  end;
end;

procedure TFDataSPP.save;
begin
  DM2.ADOSPP.Append;
  DM2.ADOSPP['kode'] := StringReplace(Edit1.Text+ComboBox2.Text,' ','',[rfReplaceAll]);
  DM2.ADOSPP['periode'] := Edit1.Text;
  DM2.ADOSPP['kelas'] := ComboBox2.Text;
  DM2.ADOSPP['uang_spp'] := hapusribuan(Edit3);
  DM2.ADOSPP['terbayar'] := '0';
  DM2.ADOSPP['terhutang'] := '0';
  DM2.ADOSPP.Post;
  bersih;
  refresh;
end;

procedure TFDataSPP.Edit1KeyPress(Sender: TObject; var Key: Char);
begin
  if not(key in['0'..'9', #8, #13, #32]) then
    begin
    key :=#0;
    MessageDlg('Nilai yang Di Input Harus Angka !!!',mtError,[mbOK],0);
    end
end;

procedure TFDataSPP.Edit3KeyPress(Sender: TObject; var Key: Char);
begin
  if not(key in['0'..'9', #8, #13, #32]) then
    begin
    key :=#0;
    MessageDlg('Nilai yang Di Input Harus Angka !!!',mtError,[mbOK],0);
    end
end;

procedure TFDataSPP.Edit3Change(Sender: TObject);
begin
  ribuan(Edit3);
end;

procedure TFDataSPP.bersih;
begin
  Edit1.Clear;
  Edit2.Clear;
  Edit3.Clear;
  ComboBox2.Text := '-- PILIH KELAS --';
end;

procedure TFDataSPP.DBGrid1CellClick(Column: TColumn);
begin
  if DM2.ADOSPP.IsEmpty then
   MessageDlg('Data Kosong',mtInformation,[mbok],0)
   else
   begin
   Edit1.Text:= DM2.ADOSPP['periode'];
   ComboBox2.Text:= DM2.ADOSPP['kelas'];
   Edit3.Text:= DM2.ADOSPP['uang_spp'];
   end;
end;

procedure TFDataSPP.Panel3Click(Sender: TObject);
begin
  if DM2.ADOSPP.IsEmpty then
   MessageDlg('Data Kosong',mtInformation,[mbok],0)
  else
  if Application.MessageBox('Yakin Hapus Data ???','Pesan',MB_YESNO or MB_ICONQUESTION)=MrYes then
     begin
       DM2.ADOSPP.Delete;
       bersih;
     end;
end;

procedure TFDataSPP.Edit2Change(Sender: TObject);
begin
  if Edit2.Text ='' then
     begin
       DM2.ADOSPP.Close;
       DM2.ADOSPP.Open;
       DM2.ADOSPP.Filtered := false;
     end
  Else
     begin
       DM2.ADOSPP.Close;
       DM2.ADOSPP.Open;
       DM2.ADOSPP.Filtered := False;
       DM2.ADOSPP.Filter :='periode LIKE '+Quotedstr('%'+Edit2.Text+'%');
       DM2.ADOSPP.Filtered := True;
     end;
end;

end.
