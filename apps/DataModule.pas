unit DataModule;

interface

uses
  SysUtils, Classes, DB, ADODB;

type
  TDM2 = class(TDataModule)
    ADOConnection1: TADOConnection;
    ADOSiswa: TADOTable;
    DSSiswa: TDataSource;
    ADOSPP: TADOTable;
    DSSPP: TDataSource;
    ADOSPPdanRekapBayar: TADOTable;
    DSSPPdanRekapBayar: TDataSource;
    ADOJmlhSiswaPerKelas: TADOTable;
    DSJmlhSiswaPerKelas: TDataSource;
    ADOSPPkode: TWideStringField;
    ADOSPPperiode: TWideStringField;
    ADOSPPkelas: TWideStringField;
    ADOSPPuang_spp: TBCDField;
    ADOSPPterbayar: TBCDField;
    ADOSPPterhutang: TBCDField;
    ADOQCovert: TADOQuery;
    DSConvert: TDataSource;
    ADOQJmlhSiswaPerKelas: TADOQuery;
    ADOLogin: TADOTable;
    DSLogin: TDataSource;
    ADOQSPPdanRekapBayar: TADOQuery;
    ADOSPPdanRekapBayarkode: TWideStringField;
    ADOSPPdanRekapBayarperiode: TWideStringField;
    ADOSPPdanRekapBayarkelas: TWideStringField;
    ADOSPPdanRekapBayaruang_spp: TBCDField;
    ADOSPPdanRekapBayarterbayar: TBCDField;
    ADOSPPdanRekapBayarterhutang: TBCDField;
    ADOTable1: TADOTable;
    ADOTable2: TADOTable;
    ADOTable3: TADOTable;
    DataSource1: TDataSource;
    ADOQuery1: TADOQuery;
    ADOCariData: TADOTable;
    DSCariData: TDataSource;
    ADOPeriode: TADOTable;
    MaleAndFemale: TADOQuery;
    TotalBayarAndTotalKurang: TADOQuery;
    DSRekapitulasi: TDataSource;
    ADOQPembayaran: TADOQuery;
    ADOQPembayaranid_bayar: TWideStringField;
    ADOQPembayarankelas: TWideStringField;
    ADOQPembayarannama: TWideStringField;
    ADOQPembayarannisn: TWideStringField;
    ADOQPembayaranjumlah_bayar: TBCDField;
    ADOQPembayarantgl_bayar: TDateTimeField;
    ADOQPembayaranperiode: TWideStringField;
    ADOTable1nisn: TWideStringField;
    ADOTable1nama: TWideStringField;
    ADOTable1kelas: TWideStringField;
    ADOTable1juli: TBCDField;
    ADOTable1agustus: TBCDField;
    ADOTable1september: TBCDField;
    ADOTable1oktober: TBCDField;
    ADOTable1november: TBCDField;
    ADOTable1desember: TBCDField;
    ADOTable1januari: TBCDField;
    ADOTable1februari: TBCDField;
    ADOTable1maret: TBCDField;
    ADOTable1april: TBCDField;
    ADOTable1mei: TBCDField;
    ADOTable1juni: TBCDField;
    ADOTable1total_bayar: TBCDField;
    ADOTable1sisa_bayar: TBCDField;
    ADOTable1periode: TWideStringField;
    Kwintansi: TADOQuery;
    Kwintansi2: TADOQuery;
    DSKwintansi: TDataSource;
    ADOTable1date_update: TDateTimeField;
    ADOSiswanisn: TWideStringField;
    ADOSiswanama_siswa: TWideStringField;
    ADOSiswajenis_kelamin: TWideStringField;
    ADOSiswakelas: TWideStringField;
    ADOSiswaalamat: TWideStringField;
    ADOSiswatempat_lahir: TWideStringField;
    ADOSiswatgl: TDateTimeField;
    ADOSiswanama_ortu: TWideStringField;
    ADOSiswatelpon: TWideStringField;
    ADOSiswastatus: TWideStringField;
    ADOSiswaperiode: TWideStringField;
    DSPeriode: TDataSource;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  DM2: TDM2;

implementation

{$R *.dfm}

end.
