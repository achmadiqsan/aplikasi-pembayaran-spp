unit UTabelDataBayar;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ExtCtrls;

type
  TFTabelDataBayar = class(TForm)
    Panel1: TPanel;
    Label2: TLabel;
    Panel2: TPanel;
    Panel3: TPanel;
    Panel7: TPanel;
    Edit1: TEdit;
    Label1: TLabel;
    procedure Panel3Click(Sender: TObject);
    procedure Panel2Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormActivate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FTabelDataBayar: TFTabelDataBayar;

implementation

uses
  UReport, DataModule;

{$R *.dfm}

procedure TFTabelDataBayar.Panel3Click(Sender: TObject);
begin
  DM2.ADOTable1.Filtered := False;
  Close;
end;

procedure TFTabelDataBayar.Panel2Click(Sender: TObject);
begin
   if Edit1.Text ='' then
     MessageDlg('Periode Kosong',mtinformation,[mbok],0)
    Else
    begin
      FReport.QRLabel4.Caption := FTabelDataBayar.Edit1.Text;
      DM2.ADOTable1.Close;
      DM2.ADOTable1.Open;
      DM2.ADOTable1.Filtered := False;
      DM2.ADOTable1.Filter :='periode LIKE '+Quotedstr('%'+Edit1.Text+'%');
      DM2.ADOTable1.Filtered := True;
      FReport.QuickRep1.Preview;
    end;
end;

procedure TFTabelDataBayar.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  DM2.ADOTable1.Filtered := False;
end;

procedure TFTabelDataBayar.FormActivate(Sender: TObject);
begin
  Edit1.Clear;
end;

end.
