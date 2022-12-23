unit Unit6;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, DB, Grids, DBGrids, ADODB;

type
  TForm6 = class(TForm)
    ADOQuery1: TADOQuery;
    DBGrid1: TDBGrid;
    DataSource1: TDataSource;
    Edit1: TEdit;
    Label1: TLabel;
    Label2: TLabel;
    Edit2: TEdit;
    Button1: TButton;
    Button2: TButton;
    GroupBox1: TGroupBox;
    Label3: TLabel;
    Edit3: TEdit;
    Label4: TLabel;
    Edit4: TEdit;
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form6: TForm6;

implementation

uses
  Unit1;

{$R *.dfm}

procedure TForm6.Button1Click(Sender: TObject);
begin
  ADOQuery1.Close;
  ADOQuery1.SQL.Clear;
  ADOQuery1.SQL.Add('SELECT * FROM Copy_siswa WHERE periode= "'+Edit2.Text+'" AND kelas = "'+Edit1.Text+'"');
  ADOQuery1.Open;
end;

procedure TForm6.Button2Click(Sender: TObject);
  var
  k : integer;
begin
  for k := 1 to ADOQuery1.RecordCount Do
  ADOQuery1.First;
  while ADOQuery1.Eof = False do
  begin
    ADOQuery1.Edit;
    ADOQuery1['kelas'] := Edit3.Text;
    ADOQuery1['periode'] := Edit4.Text;
    ADOQuery1.Post;
    ADOQuery1.Next;
  end;

  //
  ADOQuery1.Close;
  ADOQuery1.SQL.Clear;
  ADOQuery1.SQL.Add('SELECT * FROM Copy_siswa');
  ADOQuery1.Open;
end;

end.
