unit Unit4;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, ADODB, StdCtrls, ComCtrls, Grids, DBGrids;

type
  TForm4 = class(TForm)
    Label1: TLabel;
    Edit1: TEdit;
    Label2: TLabel;
    Edit2: TEdit;
    Label3: TLabel;
    Edit3: TEdit;
    Label4: TLabel;
    Edit4: TEdit;
    Label5: TLabel;
    Edit5: TEdit;
    Label6: TLabel;
    Edit6: TEdit;
    GroupBox1: TGroupBox;
    CheckBox1: TCheckBox;
    Label7: TLabel;
    Label8: TLabel;
    CheckBox2: TCheckBox;
    Label9: TLabel;
    CheckBox3: TCheckBox;
    Label10: TLabel;
    CheckBox4: TCheckBox;
    Label11: TLabel;
    CheckBox5: TCheckBox;
    Label12: TLabel;
    CheckBox6: TCheckBox;
    Label13: TLabel;
    CheckBox7: TCheckBox;
    Label14: TLabel;
    CheckBox8: TCheckBox;
    Label15: TLabel;
    CheckBox9: TCheckBox;
    Label16: TLabel;
    CheckBox10: TCheckBox;
    Label17: TLabel;
    CheckBox11: TCheckBox;
    Label18: TLabel;
    CheckBox12: TCheckBox;
    DBGrid1: TDBGrid;
    DateTimePicker1: TDateTimePicker;
    ComboBox1: TComboBox;
    Label19: TLabel;
    Button1: TButton;
    Button2: TButton;
    ADOTable1: TADOTable;
    ADOQuery1: TADOQuery;
    DataSource1: TDataSource;
    Edit8: TEdit;
    ADOTable2: TADOTable;
    ADOTable2periode: TWideStringField;
    ADOTable2kelas: TWideStringField;
    ADOTable2uang_spp: TBCDField;
    DataSource2: TDataSource;
    Button3: TButton;
    DBGrid2: TDBGrid;
    Button4: TButton;
    Button5: TButton;
    Button6: TButton;
    Label20: TLabel;
    Label21: TLabel;
    Button7: TButton;
    ADOQuery2: TADOQuery;
    ADOTable3: TADOTable;
    procedure Button1Click(Sender: TObject);
    procedure Edit3Change(Sender: TObject);
    procedure Button3Click(Sender: TObject);
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
    procedure Button4Click(Sender: TObject);
    procedure Button6Click(Sender: TObject);
    procedure DBGrid1KeyPress(Sender: TObject; var Key: Char);
    procedure Button5Click(Sender: TObject);
    procedure Button7Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form4: TForm4;

implementation

uses
  Unit1, Unit5;

{$R *.dfm}

procedure TForm4.Button1Click(Sender: TObject);
begin
  if Edit8.Text = '' then
    begin
      ShowMessage('ISI TERLEBIH DAHULU PERIODE');
    end
  else
    begin
      Form5.show;
      Label20.Caption := 'INPUT';
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
      Edit4.Text := '0';
    end;
end;

procedure TForm4.Edit3Change(Sender: TObject);
var
  data1 : Real;
begin
  ADOTable1.Filtered := False;
  if Edit3.Text = 'KELAS 10' then
  begin
     ADOTable2.Close;
     ADOTable2.Open;
     ADOTable2.Filtered := False;
     ADOTable2.Filter :='periode LIKE '+Quotedstr('%'+Edit8.Text+'%') + 'AND kelas LIKE '+Quotedstr('%'+Edit3.Text+'%');
     ADOTable2.Filtered := True;
     //
     data1 := ADOTable2['uang_spp'];
     if data1 = null then
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
      end
     else
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
     //
     if Label20.Caption = 'INPUT' then
     begin
       ADOTable1.Close;
     ADOTable1.Open;
     ADOTable1.Filtered := False;
     ADOTable1.Filter :='periode LIKE '+Quotedstr('%'+Edit8.Text+'%') + 'AND nisn LIKE '+Quotedstr('%'+Edit1.Text+'%') + 'AND nama LIKE '+Quotedstr('%'+Edit2.Text+'%') + 'AND kelas LIKE '+Quotedstr('%'+Edit3.Text+'%');
     ADOTable1.Filtered := True;
     end;

     if Label20.Caption = 'UPDATE' then
     begin
       ADOTable1.Close;
     ADOTable1.Open;
     ADOTable1.Filtered := False;
     ADOTable1.Filter :='periode LIKE '+Quotedstr('%'+Edit8.Text+'%') + 'AND nisn LIKE '+Quotedstr('%'+Edit1.Text+'%') + 'AND nama LIKE '+Quotedstr('%'+Edit2.Text+'%') + 'AND kelas LIKE '+Quotedstr('%'+Edit3.Text+'%');
     ADOTable1.Filtered := True;
     end;
  end
  else
  if Edit3.Text = 'KELAS 11' then
  begin
    ADOTable2.Close;
     ADOTable2.Open;
     ADOTable2.Filtered := False;
     ADOTable2.Filter :='periode LIKE '+Quotedstr('%'+Edit8.Text+'%') + 'AND kelas LIKE '+Quotedstr('%'+Edit3.Text+'%');
     ADOTable2.Filtered := True;
     //
     data1 := ADOTable2['uang_spp'];
     if data1 = null then
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
      end
     else
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
    //
     if Label20.Caption = 'INPUT' then
     begin
       ADOTable1.Close;
     ADOTable1.Open;
     ADOTable1.Filtered := False;
     ADOTable1.Filter :='periode LIKE '+Quotedstr('%'+Edit8.Text+'%') + 'AND nisn LIKE '+Quotedstr('%'+Edit1.Text+'%') + 'AND nama LIKE '+Quotedstr('%'+Edit2.Text+'%') + 'AND kelas LIKE '+Quotedstr('%'+Edit3.Text+'%');
     ADOTable1.Filtered := True;
     end;

     if Label20.Caption = 'UPDATE' then
     begin
       ADOTable1.Close;
     ADOTable1.Open;
     ADOTable1.Filtered := False;
     ADOTable1.Filter :='periode LIKE '+Quotedstr('%'+Edit8.Text+'%') + 'AND nisn LIKE '+Quotedstr('%'+Edit1.Text+'%') + 'AND nama LIKE '+Quotedstr('%'+Edit2.Text+'%') + 'AND kelas LIKE '+Quotedstr('%'+Edit3.Text+'%');
     ADOTable1.Filtered := True;
     end;
  end
  else
  if Edit3.Text = 'KELAS 12' then
  begin
    ADOTable2.Close;
     ADOTable2.Open;
     ADOTable2.Filtered := False;
     ADOTable2.Filter :='periode LIKE '+Quotedstr('%'+Edit8.Text+'%') + 'AND kelas LIKE '+Quotedstr('%'+Edit3.Text+'%');
     ADOTable2.Filtered := True;
     //
     data1 := ADOTable2['uang_spp'];
     if data1 = null then
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
      end
     else
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
    //
     if Label20.Caption = 'INPUT' then
     begin
       ADOTable1.Close;
     ADOTable1.Open;
     ADOTable1.Filtered := False;
     ADOTable1.Filter :='periode LIKE '+Quotedstr('%'+Edit8.Text+'%') + 'AND nisn LIKE '+Quotedstr('%'+Edit1.Text+'%') + 'AND nama LIKE '+Quotedstr('%'+Edit2.Text+'%') + 'AND kelas LIKE '+Quotedstr('%'+Edit3.Text+'%');
     ADOTable1.Filtered := True;
     end;

     if Label20.Caption = 'UPDATE' then
     begin
     ADOTable1.Close;
     ADOTable1.Open;
     ADOTable1.Filtered := False;
     ADOTable1.Filter :='periode LIKE '+Quotedstr('%'+Edit8.Text+'%') + 'AND nisn LIKE '+Quotedstr('%'+Edit1.Text+'%') + 'AND nama LIKE '+Quotedstr('%'+Edit2.Text+'%') + 'AND kelas LIKE '+Quotedstr('%'+Edit3.Text+'%');
     ADOTable1.Filtered := True;
     end;
  end;
end;

procedure TForm4.Button3Click(Sender: TObject);
begin
     ADOTable2.Close;
     ADOTable2.Open;
     ADOTable2.Filtered := False;
     ADOTable2.Filter :='periode = '+Quotedstr('%'+Edit8.Text+'%') + 'AND kelas = '+Quotedstr('%'+Edit3.Text+'%');
     ADOTable2.Filtered := True;
end;

procedure TForm4.FormActivate(Sender: TObject);
begin
  DateTimePicker1.Date := Now;
end;

procedure TForm4.CheckBox1Click(Sender: TObject);
begin
  if Label20.Caption = 'INPUT' then
    begin
      if CheckBox1.Checked = True then
        begin
          Edit4.Text := FloatToStr(StrToFloat(Edit4.Text) + StrToFloat(CheckBox1.Caption));
          //Label21.Caption := FloatToStr(StrToFloat(Label21.Caption) + StrToFloat(CheckBox1.Caption));
        end
      else
      if CheckBox1.Checked = False then
        begin
          Edit4.Text := FloatToStr(StrToFloat(Edit4.Text) - StrToFloat(CheckBox1.Caption));
          //Label21.Caption := FloatToStr(StrToFloat(Label21.Caption) + StrToFloat(CheckBox1.Caption));
        end;
    end;

  if Label20.Caption = 'UPDATE' then
    begin
      if CheckBox1.Checked = True then
        begin
          Edit4.Text := FloatToStr(StrToFloat(Edit4.Text) + StrToFloat(CheckBox1.Caption));
          //Label21.Caption := FloatToStr(StrToFloat(Label21.Caption) + StrToFloat(CheckBox1.Caption));
        end
      else
      if CheckBox1.Checked = False then
        begin
          Edit4.Text := FloatToStr(StrToFloat(Edit4.Text) - StrToFloat(CheckBox1.Caption));
          //Label21.Caption := FloatToStr(StrToFloat(Label21.Caption) + StrToFloat(CheckBox1.Caption));
        end;
    end;
end;

procedure TForm4.CheckBox2Click(Sender: TObject);
begin
  if Label20.Caption = 'INPUT' then
  begin
    if CheckBox2.Checked = True then
      begin
        Edit4.Text := FloatToStr(StrToFloat(Edit4.Text) + StrToFloat(CheckBox2.Caption));
//        Label21.Caption := FloatToStr(StrToFloat(Label21.Caption) + StrToFloat(CheckBox2.Caption));
      end
    else
    if CheckBox2.Checked = False then
      begin
        Edit4.Text := FloatToStr(StrToFloat(Edit4.Text) - StrToFloat(CheckBox2.Caption));
        //Label21.Caption := FloatToStr(StrToFloat(Label21.Caption) + StrToFloat(CheckBox2.Caption));
      end;
  end;

    if Label20.Caption = 'UPDATE' then
  begin
    if CheckBox2.Checked = True then
      begin
        Edit4.Text := FloatToStr(StrToFloat(Edit4.Text) + StrToFloat(CheckBox2.Caption));
//        Label21.Caption := FloatToStr(StrToFloat(Label21.Caption) + StrToFloat(CheckBox2.Caption));
      end
    else
    if CheckBox2.Checked = False then
      begin
        Edit4.Text := FloatToStr(StrToFloat(Edit4.Text) - StrToFloat(CheckBox2.Caption));
        //Label21.Caption := FloatToStr(StrToFloat(Label21.Caption) + StrToFloat(CheckBox2.Caption));
      end;
  end;
end;

procedure TForm4.CheckBox3Click(Sender: TObject);
begin
  if Label20.Caption = 'INPUT' then
  begin
    if CheckBox3.Checked = True then
      begin
        Edit4.Text := FloatToStr(StrToFloat(Edit4.Text) + StrToFloat(CheckBox3.Caption));
      end
    else
    if CheckBox3.Checked = False then
      begin
        Edit4.Text := FloatToStr(StrToFloat(Edit4.Text) - StrToFloat(CheckBox3.Caption));
      end;
  end;

  if Label20.Caption = 'UPDATE' then
  begin
    if CheckBox3.Checked = True then
      begin
        Edit4.Text := FloatToStr(StrToFloat(Edit4.Text) + StrToFloat(CheckBox3.Caption));
      end
    else
    if CheckBox3.Checked = False then
      begin
        Edit4.Text := FloatToStr(StrToFloat(Edit4.Text) - StrToFloat(CheckBox3.Caption));
      end;
  end;
end;

procedure TForm4.CheckBox4Click(Sender: TObject);
begin
  if Label20.Caption = 'INPUT' then
  begin
    if CheckBox4.Checked = True then
      begin
        Edit4.Text := FloatToStr(StrToFloat(Edit4.Text) + StrToFloat(CheckBox4.Caption));
      end
    else
    if CheckBox4.Checked = False then
      begin
        Edit4.Text := FloatToStr(StrToFloat(Edit4.Text) - StrToFloat(CheckBox4.Caption));
      end;
  end;

  if Label20.Caption = 'UPDATE' then
  begin
    if CheckBox4.Checked = True then
      begin
        Edit4.Text := FloatToStr(StrToFloat(Edit4.Text) + StrToFloat(CheckBox4.Caption));
      end
    else
    if CheckBox4.Checked = False then
      begin
        Edit4.Text := FloatToStr(StrToFloat(Edit4.Text) - StrToFloat(CheckBox4.Caption));
      end;
  end;
end;

procedure TForm4.CheckBox5Click(Sender: TObject);
begin
  if Label20.Caption = 'INPUT' then
  begin
    if CheckBox5.Checked = True then
      begin
        Edit4.Text := FloatToStr(StrToFloat(Edit4.Text) + StrToFloat(CheckBox5.Caption));
      end
    else
    if CheckBox5.Checked = False then
      begin
        Edit4.Text := FloatToStr(StrToFloat(Edit4.Text) - StrToFloat(CheckBox5.Caption));
      end;
  end;

  if Label20.Caption = 'UPDATE' then
  begin
    if CheckBox5.Checked = True then
      begin
        Edit4.Text := FloatToStr(StrToFloat(Edit4.Text) + StrToFloat(CheckBox5.Caption));
      end
    else
    if CheckBox5.Checked = False then
      begin
        Edit4.Text := FloatToStr(StrToFloat(Edit4.Text) - StrToFloat(CheckBox5.Caption));
      end;
  end;
end;

procedure TForm4.CheckBox6Click(Sender: TObject);
begin
  if Label20.Caption = 'INPUT' then
  begin
    if CheckBox6.Checked = True then
      begin
        Edit4.Text := FloatToStr(StrToFloat(Edit4.Text) + StrToFloat(CheckBox6.Caption));
      end
    else
    if CheckBox6.Checked = False then
      begin
        Edit4.Text := FloatToStr(StrToFloat(Edit4.Text) - StrToFloat(CheckBox6.Caption));
      end;
  end;

  if Label20.Caption = 'UPDATE' then
  begin
    if CheckBox6.Checked = True then
      begin
        Edit4.Text := FloatToStr(StrToFloat(Edit4.Text) + StrToFloat(CheckBox6.Caption));
      end
    else
    if CheckBox6.Checked = False then
      begin
        Edit4.Text := FloatToStr(StrToFloat(Edit4.Text) - StrToFloat(CheckBox6.Caption));
      end;
  end;
end;

procedure TForm4.CheckBox7Click(Sender: TObject);
begin
  if Label20.Caption = 'INPUT' then
  begin
    if CheckBox7.Checked = True then
      begin
        Edit4.Text := FloatToStr(StrToFloat(Edit4.Text) + StrToFloat(CheckBox7.Caption));
      end
    else
    if CheckBox7.Checked = False then
      begin
        Edit4.Text := FloatToStr(StrToFloat(Edit4.Text) - StrToFloat(CheckBox7.Caption));
      end;
  end;

  if Label20.Caption = 'UPDATE' then
  begin
    if CheckBox7.Checked = True then
      begin
        Edit4.Text := FloatToStr(StrToFloat(Edit4.Text) + StrToFloat(CheckBox7.Caption));
      end
    else
    if CheckBox7.Checked = False then
      begin
        Edit4.Text := FloatToStr(StrToFloat(Edit4.Text) - StrToFloat(CheckBox7.Caption));
      end;
  end;
end;

procedure TForm4.CheckBox8Click(Sender: TObject);
begin
  if Label20.Caption = 'INPUT' then
  begin
    if CheckBox8.Checked = True then
      begin
        Edit4.Text := FloatToStr(StrToFloat(Edit4.Text) + StrToFloat(CheckBox8.Caption));
      end
    else
    if CheckBox8.Checked = False then
      begin
        Edit4.Text := FloatToStr(StrToFloat(Edit4.Text) - StrToFloat(CheckBox8.Caption));
      end;
  end;

  if Label20.Caption = 'UPDATE' then
  begin
    if CheckBox8.Checked = True then
      begin
        Edit4.Text := FloatToStr(StrToFloat(Edit4.Text) + StrToFloat(CheckBox8.Caption));
      end
    else
    if CheckBox8.Checked = False then
      begin
        Edit4.Text := FloatToStr(StrToFloat(Edit4.Text) - StrToFloat(CheckBox8.Caption));
      end;
  end;
end;

procedure TForm4.CheckBox9Click(Sender: TObject);
begin
  if Label20.Caption = 'INPUT' then
  begin
    if CheckBox9.Checked = True then
      begin
        Edit4.Text := FloatToStr(StrToFloat(Edit4.Text) + StrToFloat(CheckBox9.Caption));
      end
    else
    if CheckBox9.Checked = False then
      begin
        Edit4.Text := FloatToStr(StrToFloat(Edit4.Text) - StrToFloat(CheckBox9.Caption));
      end;
  end;

  if Label20.Caption = 'UPDATE' then
  begin
    if CheckBox9.Checked = True then
      begin
        Edit4.Text := FloatToStr(StrToFloat(Edit4.Text) + StrToFloat(CheckBox9.Caption));
      end
    else
    if CheckBox9.Checked = False then
      begin
        Edit4.Text := FloatToStr(StrToFloat(Edit4.Text) - StrToFloat(CheckBox9.Caption));
      end;
  end;
end;

procedure TForm4.CheckBox10Click(Sender: TObject);
begin
  if Label20.Caption = 'INPUT' then
  begin
    if CheckBox10.Checked = True then
      begin
        Edit4.Text := FloatToStr(StrToFloat(Edit4.Text) + StrToFloat(CheckBox10.Caption));
      end
    else
    if CheckBox10.Checked = False then
      begin
        Edit4.Text := FloatToStr(StrToFloat(Edit4.Text) - StrToFloat(CheckBox10.Caption));
      end;
  end;

  if Label20.Caption = 'UPDATE' then
  begin
    if CheckBox10.Checked = True then
      begin
        Edit4.Text := FloatToStr(StrToFloat(Edit4.Text) + StrToFloat(CheckBox10.Caption));
      end
    else
    if CheckBox10.Checked = False then
      begin
        Edit4.Text := FloatToStr(StrToFloat(Edit4.Text) - StrToFloat(CheckBox10.Caption));
      end;
  end;
end;

procedure TForm4.CheckBox11Click(Sender: TObject);
begin
  if Label20.Caption = 'INPUT' then
  begin
    if CheckBox2.Checked = True then
      begin
        Edit4.Text := FloatToStr(StrToFloat(Edit4.Text) + StrToFloat(CheckBox11.Caption));
      end
    else
    if CheckBox2.Checked = False then
      begin
        Edit4.Text := FloatToStr(StrToFloat(Edit4.Text) - StrToFloat(CheckBox11.Caption));
      end;
  end;

  if Label20.Caption = 'UPDATE' then
  begin
    if CheckBox2.Checked = True then
      begin
        Edit4.Text := FloatToStr(StrToFloat(Edit4.Text) + StrToFloat(CheckBox11.Caption));
      end
    else
    if CheckBox2.Checked = False then
      begin
        Edit4.Text := FloatToStr(StrToFloat(Edit4.Text) - StrToFloat(CheckBox11.Caption));
      end;
  end;
end;

procedure TForm4.CheckBox12Click(Sender: TObject);
begin
  if Label20.Caption = 'INPUT' then
  begin
    if CheckBox12.Checked = True then
      begin
        Edit4.Text := FloatToStr(StrToFloat(Edit4.Text) + StrToFloat(CheckBox12.Caption));
      end
    else
    if CheckBox12.Checked = False then
      begin
        Edit4.Text := FloatToStr(StrToFloat(Edit4.Text) - StrToFloat(CheckBox12.Caption));
      end;
  end;

  if Label20.Caption = 'UPDATE' then
  begin
    if CheckBox12.Checked = True then
      begin
        Edit4.Text := FloatToStr(StrToFloat(Edit4.Text) + StrToFloat(CheckBox12.Caption));
      end
    else
    if CheckBox12.Checked = False then
      begin
        Edit4.Text := FloatToStr(StrToFloat(Edit4.Text) - StrToFloat(CheckBox12.Caption));
      end;
  end;
end;

procedure TForm4.Button4Click(Sender: TObject);
var
  data : string;
begin
  if Label20.Caption = 'INPUT' then
    begin
      if (CheckBox1.Enabled = True) and (CheckBox1.Checked = True) then
        begin
           ADOTable1.Edit;
           ADOTable1['juli'] := CheckBox1.Caption;
           ADOTable1.Post;
        end;
      if (CheckBox2.Enabled = True) and (CheckBox2.Checked = True) then
        begin
          ADOTable1.Edit;
           ADOTable1['agustus'] := CheckBox2.Caption;
           ADOTable1.Post;
        end;
      //Label21.Caption := Edit4.Text;
      ADOTable3.Append;
      ADOTable3['id_bayar'] := Label21.Caption;
      ADOTable3['kelas'] := Edit3.Text;
      ADOTable3['nama'] := Edit2.Text;
      ADOTable3['nisn'] := Edit1.Text;
      ADOTable3['jumlah_bayar'] := Edit4.Text;
      ADOTable3['tgl_bayar'] := DateTimePicker1.Date;
      ADOTable3['periode'] := Edit8.Text;
      ADOTable3.Post;
      //
      data := Edit4.Text;
      Edit5.Text := FloatToStr(StrToFloat(Edit5.Text) + StrToFloat(data));
      ADOTable1.Edit;
      ADOTable1['total_bayar'] := FloatToStr(StrToFloat(ADOTable1['total_bayar']) + StrToFloat(data));
      ADOTable1['sisa_bayar'] := FloatToStr(StrToFloat(ADOTable1['sisa_bayar']) - StrToFloat(data));
      ADOTable1.Post;
      Edit6.Text := ADOTable1['sisa_bayar'];
      Edit4.Text := '0';
    end;

  //
  if Label20.Caption = 'UPDATE' then
    begin
      if (CheckBox1.Enabled = True) and (CheckBox1.Checked = True) then
        begin
           ADOTable1.Edit;
           ADOTable1['juli'] := CheckBox1.Caption;
           ADOTable1.Post;
        end;
      if (CheckBox2.Enabled = True) and (CheckBox2.Checked = True) then
        begin
          ADOTable1.Edit;
           ADOTable1['agustus'] := CheckBox2.Caption;
           ADOTable1.Post;
        end;
      //Label21.Caption := Edit4.Text;
      ADOTable3.Append;
      ADOTable3['id_bayar'] := Label21.Caption;
      ADOTable3['kelas'] := Edit3.Text;
      ADOTable3['nama'] := Edit2.Text;
      ADOTable3['nisn'] := Edit1.Text;
      ADOTable3['jumlah_bayar'] := Edit4.Text;
      ADOTable3['tgl_bayar'] := DateTimePicker1.Date;
      ADOTable3['periode'] := Edit8.Text;
      ADOTable3.Post;
      //
      data := Edit4.Text;
      Edit5.Text := FloatToStr(StrToFloat(Edit5.Text) + StrToFloat(data));
      ADOTable1.Edit;
      ADOTable1['total_bayar'] := FloatToStr(StrToFloat(ADOTable1['total_bayar']) + StrToFloat(data));
      ADOTable1['sisa_bayar'] := FloatToStr(StrToFloat(ADOTable1['sisa_bayar']) - StrToFloat(data));
      ADOTable1.Post;
      Edit6.Text := ADOTable1['sisa_bayar'];
      Edit4.Text := '0';
    end;
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
  Label20.Caption := 'Label20';
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
end;

procedure TForm4.Button6Click(Sender: TObject);
begin
Edit8.Clear;
Edit1.Clear;
Edit2.Clear;
Edit3.Clear;
Edit4.Text := '0';
Edit5.Text := '0';
Edit6.Text := '0';
ADOTable1.Close;
ADOTable1.Open;
DateTimePicker1.Date := Now;
ComboBox1.Text := 'PILIH KELAS';
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
  Label20.Caption := 'Label20';
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
  ADOTable1.Filtered := False;
  Edit4.Text := '0';
end;

procedure TForm4.DBGrid1KeyPress(Sender: TObject; var Key: Char);
begin
  if key= #13 then
  begin
    if (Edit8.Text <> '') and (ADOTable1['periode'] = Edit8.Text) then
    begin
      Label20.Caption := 'UPDATE';
      Edit1.Text := ADOTable1['nisn'];
      Edit2.Text := ADOTable1['nama'];
      Edit3.Text := ADOTable1['kelas'];
      Edit5.Text := ADOTable1['total_bayar'];
      Edit6.Text := ADOTable1['sisa_bayar'];
      if ADOTable1['juli'] <> '0' then
        begin
          CheckBox1.Enabled := False;
          CheckBox1.Checked := True;
        end;
      if ADOTable1['agustus'] <> '0' then
        begin
          CheckBox2.Enabled := False;
          CheckBox2.Checked := True;
        end;
      if ADOTable1['september'] <> '0' then
        begin
          CheckBox3.Enabled := False;
          CheckBox3.Checked := True;
        end;
      if ADOTable1['oktober'] <> '0' then
        begin
          CheckBox4.Enabled := False;
          CheckBox4.Checked := True;
        end;
      if ADOTable1['november'] <> '0' then
        begin
          CheckBox5.Enabled := False;
          CheckBox5.Checked := True;
        end;
      if ADOTable1['desember'] <> '0' then
        begin
          CheckBox6.Enabled := False;
          CheckBox6.Checked := True;
        end;
      if ADOTable1['januari'] <> '0' then
        begin
          CheckBox7.Enabled := False;
          CheckBox7.Checked := True;
        end;
      if ADOTable1['februari'] <> '0' then
        begin
          CheckBox8.Enabled := False;
          CheckBox8.Checked := True;
        end;
      if ADOTable1['maret'] <> '0' then
        begin
          CheckBox9.Enabled := False;
          CheckBox9.Checked := True;
        end;
      if ADOTable1['april'] <> '0' then
        begin
          CheckBox10.Enabled := False;
          CheckBox10.Checked := True;
        end;
      if ADOTable1['mei'] <> '0' then
        begin
          CheckBox11.Enabled := False;
          CheckBox11.Checked := True;
        end;
      if ADOTable1['juni'] <> '0' then
        begin
          CheckBox12.Enabled := False;
          CheckBox12.Checked := True;
        end;
      Edit4.Text := '0';
    end
    else
    begin
      ShowMessage('PERIODE TIDAK BOLEH KOSONG ATAU PERIODE HARUS SAMA DENGAN DATANG YANG DI PILIH');
    end;
  end;
end;

procedure TForm4.Button5Click(Sender: TObject);
begin
  if Label20.Caption = 'INPUT' then
  begin
    ADOQuery2.Close;
    ADOQuery2.SQL.Clear;
    ADOQuery2.SQL.Add('DELETE FROM pembayaran WHERE nisn = "'+edit1.Text+'" AND kelas = "'+edit3.Text+'" AND periode = "'+edit8.Text+'"');
    ADOQuery2.ExecSQL;
    //
    ADOTable1.Edit;
    ADOTable1['juli'] := '0';
    ADOTable1['agustus'] := '0';
    ADOTable1['september'] := '0';
    ADOTable1['oktober'] := '0';
    ADOTable1['november'] := '0';
    ADOTable1['desember'] := '0';
    ADOTable1['januari'] := '0';
    ADOTable1['februari'] := '0';
    ADOTable1['maret'] := '0';
    ADOTable1['april'] := '0';
    ADOTable1['mei'] := '0';
    ADOTable1['juni'] := '0';
    ADOTable1['total_bayar'] := '0';
    ADOTable1['sisa_bayar'] := FloatToStr(StrToFloat(ADOTable1['sisa_bayar']) + StrToFloat(Edit5.Text)); 
    ADOTable1.Post;
    Edit8.Clear;
Edit1.Clear;
Edit2.Clear;
Edit3.Clear;
Edit4.Text := '0';
Edit5.Text := '0';
Edit6.Text := '0';
ADOTable1.Close;
ADOTable1.Open;
DateTimePicker1.Date := Now;
ComboBox1.Text := 'PILIH KELAS';
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
  Label20.Caption := 'Label20';
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
  ADOTable1.Filtered := False;
  Edit4.Text := '0';
  end;

  if Label20.Caption = 'UPDATE' then
  begin
    ADOQuery2.Close;
    ADOQuery2.SQL.Clear;
    ADOQuery2.SQL.Add('DELETE FROM pembayaran WHERE nisn = "'+edit1.Text+'" AND kelas = "'+edit3.Text+'" AND periode = "'+edit8.Text+'"');
    ADOQuery2.ExecSQL;
    //
    ADOTable1.Edit;
    ADOTable1['juli'] := '0';
    ADOTable1['agustus'] := '0';
    ADOTable1['september'] := '0';
    ADOTable1['oktober'] := '0';
    ADOTable1['november'] := '0';
    ADOTable1['desember'] := '0';
    ADOTable1['januari'] := '0';
    ADOTable1['februari'] := '0';
    ADOTable1['maret'] := '0';
    ADOTable1['april'] := '0';
    ADOTable1['mei'] := '0';
    ADOTable1['juni'] := '0';
    ADOTable1['total_bayar'] := '0';
    ADOTable1['sisa_bayar'] := FloatToStr(StrToFloat(ADOTable1['sisa_bayar']) + StrToFloat(Edit5.Text)); 
    ADOTable1.Post;
    Edit8.Clear;
Edit1.Clear;
Edit2.Clear;
Edit3.Clear;
Edit4.Text := '0';
Edit5.Text := '0';
Edit6.Text := '0';
ADOTable1.Close;
ADOTable1.Open;
DateTimePicker1.Date := Now;
ComboBox1.Text := 'PILIH KELAS';
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
  Label20.Caption := 'Label20';
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
  ADOTable1.Filtered := False;
  Edit4.Text := '0';
  end;
end;

procedure TForm4.Button7Click(Sender: TObject);
var
  id : string;
begin
    // coding untuk memilih kode dengan nomor yg paling terbesar :
  ADOQuery2.Close;
  ADOQuery2.SQL.Clear;
  ADOQuery2.SQL.Add('SELECT TOP 1 pembayaran.id_bayar FROM pembayaran');
  ADOQuery2.SQL.Add('ORDER BY pembayaran.id_bayar DESC');
  ADOQuery2.Open;

  // coding untuk mengcopy nilai yang di seleksi :
  id := Copy(ADOQuery2.Fields[0].AsString, 5, 6);

  // coding jika seleksi = 0 maka id = 00001 jika tdk maka tambah 1 :
  if id <> '' then id := FormatFLoat('000000', StrtoInt(id) + 1)
  else id := '000001';

  // coding melakukan pengabungan kode string dan integer :
  label21.caption := 'PMB-' + id;
end;

procedure TForm4.Button2Click(Sender: TObject);
begin
  if Edit8.Text = '' then ShowMessage('PERIODE TIDAK BOLEH KOSONG') else
  if ComboBox1.Text = 'PILIH KELAS' then ShowMessage('SILAHKAN PILIH KELAS') else
    begin
      ADOTable1.Filtered := False;
      ADOTable1.Filter :='periode LIKE '+Quotedstr('%'+Edit8.Text+'%') + 'AND kelas LIKE '+Quotedstr('%'+ComboBox1.Text+'%');
      ADOTable1.Filtered := True;
    end;
end;

end.
