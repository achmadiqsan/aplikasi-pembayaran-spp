unit UCariData;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Grids, DBGrids, ExtCtrls;

type
  TFCariData = class(TForm)
    Panel1: TPanel;
    Panel3: TPanel;
    Panel7: TPanel;
    DBGrid1: TDBGrid;
    GroupBox1: TGroupBox;
    Edit3: TEdit;
    RadioButton1: TRadioButton;
    RadioButton2: TRadioButton;
    RadioButton3: TRadioButton;
    Panel2: TPanel;
    Panel4: TPanel;
    Label1: TLabel;
    procedure Panel3Click(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure DBGrid1KeyPress(Sender: TObject; var Key: Char);
    procedure operasi;
    procedure Edit3Change(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure SaringData;
    procedure Panel2Click(Sender: TObject);
    procedure Panel4Click(Sender: TObject);
    procedure Bersih;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FCariData: TFCariData;

implementation

uses
  DataModule, UFormPembayaranSpp;

{$R *.dfm}

procedure TFCariData.Panel3Click(Sender: TObject);
begin
  SaringData;
  close;
end;

procedure TFCariData.FormActivate(Sender: TObject);
begin
  Bersih;
//  RadioButton4.Checked := False;
end;

procedure TFCariData.DBGrid1KeyPress(Sender: TObject; var Key: Char);
begin
  if key= #13 then
  begin
    if DM2.ADOCariData.IsEmpty then
     MessageDlg('Data Kosong',mtInformation,[mbok],0)
    else
      begin
        operasi;
      end;
  end;
end;

procedure TFCariData.operasi;
begin
    FPembayaranSPP.Edit2.Text := DM2.ADOCariData['nisn'];
    FPembayaranSPP.Edit3.Text := DM2.ADOCariData['nama'];
    FPembayaranSPP.Edit4.Text := DM2.ADOCariData['kelas'];
    FPembayaranSPP.Edit6.Text := DM2.ADOCariData['total_bayar'];
    FPembayaranSPP.Edit7.Text := DM2.ADOCariData['sisa_bayar'];
    if DM2.ADOCariData['juli'] <> '0' then
      begin
        FPembayaranSPP.CheckBox1.Enabled := False;
        FPembayaranSPP.CheckBox1.Checked := True;
      end;
    if DM2.ADOCariData['agustus'] <> '0' then
      begin
        FPembayaranSPP.CheckBox2.Enabled := False;
        FPembayaranSPP.CheckBox2.Checked := True;
      end;
    if DM2.ADOCariData['september'] <> '0' then
      begin
        FPembayaranSPP.CheckBox3.Enabled := False;
        FPembayaranSPP.CheckBox3.Checked := True;
      end;
    if DM2.ADOCariData['oktober'] <> '0' then
      begin
        FPembayaranSPP.CheckBox4.Enabled := False;
        FPembayaranSPP.CheckBox4.Checked := True;
      end;
    if DM2.ADOCariData['november'] <> '0' then
      begin
        FPembayaranSPP.CheckBox5.Enabled := False;
        FPembayaranSPP.CheckBox5.Checked := True;
      end;
    if DM2.ADOCariData['desember'] <> '0' then
      begin
        FPembayaranSPP.CheckBox6.Enabled := False;
        FPembayaranSPP.CheckBox6.Checked := True;
      end;
    if DM2.ADOCariData['januari'] <> '0' then
      begin
        FPembayaranSPP.CheckBox7.Enabled := False;
        FPembayaranSPP.CheckBox7.Checked := True;
      end;
    if DM2.ADOCariData['februari'] <> '0' then
      begin
        FPembayaranSPP.CheckBox8.Enabled := False;
        FPembayaranSPP.CheckBox8.Checked := True;
      end;
    if DM2.ADOCariData['maret'] <> '0' then
      begin
        FPembayaranSPP.CheckBox9.Enabled := False;
        FPembayaranSPP.CheckBox9.Checked := True;
      end;
    if DM2.ADOCariData['april'] <> '0' then
      begin
        FPembayaranSPP.CheckBox10.Enabled := False;
        FPembayaranSPP.CheckBox10.Checked := True;
      end;
    if DM2.ADOCariData['mei'] <> '0' then
      begin
        FPembayaranSPP.CheckBox11.Enabled := False;
        FPembayaranSPP.CheckBox11.Checked := True;
      end;
    if DM2.ADOCariData['juni'] <> '0' then
      begin
        FPembayaranSPP.CheckBox12.Enabled := False;
        FPembayaranSPP.CheckBox12.Checked := True;
      end;
    FPembayaranSPP.Edit5.Text := '0';
    FCariData.Close;
end;

procedure TFCariData.Edit3Change(Sender: TObject);
begin
//  if RadioButton1.Checked = True then
//    begin
//      if Edit3.Text ='' then
//         begin
//           DM2.ADOCariData.Close;
//           DM2.ADOCariData.Open;
//           DM2.ADOCariData.Filtered := false;
//         end
//      Else
//         begin
//           DM2.ADOCariData.Close;
//           DM2.ADOCariData.Open;
//           DM2.ADOCariData.Filtered := False;
//           DM2.ADOCariData.Filter :='nisn LIKE '+Quotedstr('%'+Edit3.Text+'%');
//           DM2.ADOCariData.Filtered := True;
//         end;
//    end
//  else
//  if RadioButton2.Checked = True then
//    begin
//      if Edit3.Text ='' then
//         begin
//           DM2.ADOCariData.Close;
//           DM2.ADOCariData.Open;
//           DM2.ADOCariData.Filtered := false;
//         end
//      Else
//         begin
//           DM2.ADOCariData.Close;
//           DM2.ADOCariData.Open;
//           DM2.ADOCariData.Filtered := False;
//           DM2.ADOCariData.Filter :='nama LIKE '+Quotedstr('%'+Edit3.Text+'%');
//           DM2.ADOCariData.Filtered := True;
//         end;
//    end
//  else
//  if RadioButton3.Checked = True then
//    begin
//      if Edit3.Text ='' then
//         begin
//           DM2.ADOCariData.Close;
//           DM2.ADOCariData.Open;
//           DM2.ADOCariData.Filtered := false;
//         end
//      Else
//         begin
//           DM2.ADOCariData.Close;
//           DM2.ADOCariData.Open;
//           DM2.ADOCariData.Filtered := False;
//           DM2.ADOCariData.Filter :='kelas LIKE '+Quotedstr('%'+Edit3.Text+'%');
//           DM2.ADOCariData.Filtered := True;
//         end;
//    end
//  else
//  if RadioButton4.Checked = True then
//    begin
//      if Edit3.Text ='' then
//         begin
//           DM2.ADOCariData.Close;
//           DM2.ADOCariData.Open;
//           DM2.ADOCariData.Filtered := false;
//         end
//      Else
//         begin
//           DM2.ADOCariData.Close;
//           DM2.ADOCariData.Open;
//           DM2.ADOCariData.Filtered := False;
//           DM2.ADOCariData.Filter :='periode LIKE '+Quotedstr('%'+Edit3.Text+'%');
//           DM2.ADOCariData.Filtered := True;
//         end;
//    end;
end;

procedure TFCariData.FormClose(Sender: TObject; var Action: TCloseAction);
begin
//  DM2.ADOCariData.Filtered := False;
end;

procedure TFCariData.SaringData;
begin
  DM2.ADOCariData.Close;
  DM2.ADOCariData.Open;
  DM2.ADOCariData.Filtered := False;
  DM2.ADOCariData.Filter :='periode LIKE '+Quotedstr('%'+Label1.Caption+'%');
  DM2.ADOCariData.Filtered := True;
end;

procedure TFCariData.Panel2Click(Sender: TObject);
begin
  Bersih;
end;

procedure TFCariData.Panel4Click(Sender: TObject);
begin
  if RadioButton1.Checked = True then
    begin
      if Edit3.Text ='' then
         begin
           SaringData;
         end
      Else
         begin
           DM2.ADOCariData.Close;
           DM2.ADOCariData.Open;
           DM2.ADOCariData.Filtered := False;
           DM2.ADOCariData.Filter :='periode LIKE '+Quotedstr('%'+Label1.Caption+'%') + ' AND nisn LIKE '+Quotedstr('%'+Edit3.Text+'%');
           DM2.ADOCariData.Filtered := True;
         end;
    end
  else
  if RadioButton2.Checked = True then
    begin
      if Edit3.Text ='' then
         begin
           SaringData;
         end
      Else
         begin
           DM2.ADOCariData.Close;
           DM2.ADOCariData.Open;
           DM2.ADOCariData.Filtered := False;
           DM2.ADOCariData.Filter :='periode LIKE '+Quotedstr('%'+Label1.Caption+'%') + ' AND nama LIKE '+Quotedstr('%'+Edit3.Text+'%');
           DM2.ADOCariData.Filtered := True;
         end;
    end
  else
  if RadioButton3.Checked = True then
    begin
      if Edit3.Text ='' then
         begin
           SaringData;
         end
      Else
         begin
           DM2.ADOCariData.Close;
           DM2.ADOCariData.Open;
           DM2.ADOCariData.Filtered := False;
           DM2.ADOCariData.Filter :='periode LIKE '+Quotedstr('%'+Label1.Caption+'%') + ' AND kelas LIKE '+Quotedstr('%'+Edit3.Text+'%');
           DM2.ADOCariData.Filtered := True;
         end;
    end;
end;

procedure TFCariData.Bersih;
begin
  SaringData;
  Edit3.Clear;
  RadioButton1.Checked := False;
  RadioButton2.Checked := False;
  RadioButton3.Checked := False;
end;

end.
