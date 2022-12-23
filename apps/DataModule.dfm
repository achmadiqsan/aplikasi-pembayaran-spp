object DM2: TDM2
  OldCreateOrder = False
  Left = 613
  Top = 207
  Height = 487
  Width = 560
  object ADOConnection1: TADOConnection
    Connected = True
    ConnectionString = 
      'Provider=Microsoft.Jet.OLEDB.4.0;User ID=Admin;Data Source=D:\ap' +
      'likasi-pembayaran-spp\database\Database2.mdb;Mode=Share Deny Non' +
      'e;Persist Security Info=False;Jet OLEDB:System database="";Jet O' +
      'LEDB:Registry Path="";Jet OLEDB:Database Password="";Jet OLEDB:E' +
      'ngine Type=5;Jet OLEDB:Database Locking Mode=1;Jet OLEDB:Global ' +
      'Partial Bulk Ops=2;Jet OLEDB:Global Bulk Transactions=1;Jet OLED' +
      'B:New Database Password="";Jet OLEDB:Create System Database=Fals' +
      'e;Jet OLEDB:Encrypt Database=False;Jet OLEDB:Don'#39't Copy Locale o' +
      'n Compact=False;Jet OLEDB:Compact Without Replica Repair=False;J' +
      'et OLEDB:SFP=False'
    LoginPrompt = False
    Mode = cmShareDenyNone
    Provider = 'Microsoft.Jet.OLEDB.4.0'
    Left = 48
    Top = 8
  end
  object ADOSiswa: TADOTable
    Active = True
    Connection = ADOConnection1
    CursorType = ctStatic
    TableName = 'siswa'
    Left = 48
    Top = 72
    object ADOSiswanisn: TWideStringField
      FieldName = 'nisn'
      Size = 255
    end
    object ADOSiswanama_siswa: TWideStringField
      FieldName = 'nama_siswa'
      Size = 255
    end
    object ADOSiswajenis_kelamin: TWideStringField
      FieldName = 'jenis_kelamin'
      Size = 255
    end
    object ADOSiswakelas: TWideStringField
      FieldName = 'kelas'
      Size = 255
    end
    object ADOSiswaalamat: TWideStringField
      FieldName = 'alamat'
      Size = 255
    end
    object ADOSiswatempat_lahir: TWideStringField
      FieldName = 'tempat_lahir'
      Size = 255
    end
    object ADOSiswatgl: TDateTimeField
      FieldName = 'tgl'
      DisplayFormat = 'dd-MMM-yyyy'
    end
    object ADOSiswanama_ortu: TWideStringField
      FieldName = 'nama_ortu'
      Size = 255
    end
    object ADOSiswatelpon: TWideStringField
      FieldName = 'telpon'
      Size = 255
    end
    object ADOSiswastatus: TWideStringField
      FieldName = 'status'
      Size = 255
    end
    object ADOSiswaperiode: TWideStringField
      FieldName = 'periode'
      Size = 255
    end
  end
  object DSSiswa: TDataSource
    DataSet = ADOSiswa
    Left = 104
    Top = 72
  end
  object ADOSPP: TADOTable
    Active = True
    Connection = ADOConnection1
    CursorType = ctStatic
    TableName = 'spp'
    Left = 48
    Top = 136
    object ADOSPPkode: TWideStringField
      FieldName = 'kode'
      Size = 255
    end
    object ADOSPPperiode: TWideStringField
      FieldName = 'periode'
      Size = 255
    end
    object ADOSPPkelas: TWideStringField
      FieldName = 'kelas'
      Size = 255
    end
    object ADOSPPuang_spp: TBCDField
      FieldName = 'uang_spp'
      DisplayFormat = '#,#0.00;(#,#0.00);#,#0.00'
      Precision = 19
    end
    object ADOSPPterbayar: TBCDField
      FieldName = 'terbayar'
      DisplayFormat = '#,#0.00;(#,#0.00);#,#0.00'
      Precision = 19
    end
    object ADOSPPterhutang: TBCDField
      FieldName = 'terhutang'
      DisplayFormat = '#,#0.00;(#,#0.00);#,#0.00'
      Precision = 19
    end
  end
  object DSSPP: TDataSource
    DataSet = ADOSPP
    Left = 120
    Top = 144
  end
  object ADOSPPdanRekapBayar: TADOTable
    Active = True
    Connection = ADOConnection1
    CursorType = ctStatic
    TableName = 'spp'
    Left = 56
    Top = 208
    object ADOSPPdanRekapBayarkode: TWideStringField
      FieldName = 'kode'
      Size = 255
    end
    object ADOSPPdanRekapBayarperiode: TWideStringField
      FieldName = 'periode'
      Size = 255
    end
    object ADOSPPdanRekapBayarkelas: TWideStringField
      FieldName = 'kelas'
      Size = 255
    end
    object ADOSPPdanRekapBayaruang_spp: TBCDField
      FieldName = 'uang_spp'
      DisplayFormat = '#,#0.00;(#,#0.00);#,#0.00'
      Precision = 19
    end
    object ADOSPPdanRekapBayarterbayar: TBCDField
      FieldName = 'terbayar'
      DisplayFormat = '#,#0.00;(#,#0.00);#,#0.00'
      Precision = 19
    end
    object ADOSPPdanRekapBayarterhutang: TBCDField
      FieldName = 'terhutang'
      DisplayFormat = '#,#0.00;(#,#0.00);#,#0.00'
      Precision = 19
    end
  end
  object DSSPPdanRekapBayar: TDataSource
    DataSet = ADOSPPdanRekapBayar
    Left = 56
    Top = 264
  end
  object ADOJmlhSiswaPerKelas: TADOTable
    Active = True
    Connection = ADOConnection1
    CursorType = ctStatic
    TableName = 'jumlah_siswa'
    Left = 56
    Top = 320
  end
  object DSJmlhSiswaPerKelas: TDataSource
    DataSet = ADOJmlhSiswaPerKelas
    Left = 56
    Top = 376
  end
  object ADOQCovert: TADOQuery
    Active = True
    Connection = ADOConnection1
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'SELECT * FROM siswa')
    Left = 184
    Top = 56
  end
  object DSConvert: TDataSource
    DataSet = ADOQCovert
    Left = 256
    Top = 56
  end
  object ADOQJmlhSiswaPerKelas: TADOQuery
    Active = True
    Connection = ADOConnection1
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'SELECT * FROM jumlah_siswa')
    Left = 144
    Top = 352
  end
  object ADOLogin: TADOTable
    Active = True
    Connection = ADOConnection1
    CursorType = ctStatic
    TableName = 'login'
    Left = 224
    Top = 120
  end
  object DSLogin: TDataSource
    DataSet = ADOLogin
    Left = 288
    Top = 120
  end
  object ADOQSPPdanRekapBayar: TADOQuery
    Active = True
    Connection = ADOConnection1
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'SELECT * FROM spp')
    Left = 152
    Top = 184
  end
  object ADOTable1: TADOTable
    Active = True
    Connection = ADOConnection1
    CursorType = ctStatic
    TableName = 'data_bayar2'
    Left = 256
    Top = 192
    object ADOTable1nisn: TWideStringField
      FieldName = 'nisn'
      Size = 255
    end
    object ADOTable1nama: TWideStringField
      FieldName = 'nama'
      Size = 255
    end
    object ADOTable1kelas: TWideStringField
      FieldName = 'kelas'
      Size = 255
    end
    object ADOTable1juli: TBCDField
      FieldName = 'juli'
      DisplayFormat = '#,#0.00;(#,#0.00);#,#0.00'
      Precision = 19
    end
    object ADOTable1agustus: TBCDField
      FieldName = 'agustus'
      DisplayFormat = '#,#0.00;(#,#0.00);#,#0.00'
      Precision = 19
    end
    object ADOTable1september: TBCDField
      FieldName = 'september'
      DisplayFormat = '#,#0.00;(#,#0.00);#,#0.00'
      Precision = 19
    end
    object ADOTable1oktober: TBCDField
      FieldName = 'oktober'
      DisplayFormat = '#,#0.00;(#,#0.00);#,#0.00'
      Precision = 19
    end
    object ADOTable1november: TBCDField
      FieldName = 'november'
      DisplayFormat = '#,#0.00;(#,#0.00);#,#0.00'
      Precision = 19
    end
    object ADOTable1desember: TBCDField
      FieldName = 'desember'
      DisplayFormat = '#,#0.00;(#,#0.00);#,#0.00'
      Precision = 19
    end
    object ADOTable1januari: TBCDField
      FieldName = 'januari'
      DisplayFormat = '#,#0.00;(#,#0.00);#,#0.00'
      Precision = 19
    end
    object ADOTable1februari: TBCDField
      FieldName = 'februari'
      DisplayFormat = '#,#0.00;(#,#0.00);#,#0.00'
      Precision = 19
    end
    object ADOTable1maret: TBCDField
      FieldName = 'maret'
      DisplayFormat = '#,#0.00;(#,#0.00);#,#0.00'
      Precision = 19
    end
    object ADOTable1april: TBCDField
      FieldName = 'april'
      DisplayFormat = '#,#0.00;(#,#0.00);#,#0.00'
      Precision = 19
    end
    object ADOTable1mei: TBCDField
      FieldName = 'mei'
      DisplayFormat = '#,#0.00;(#,#0.00);#,#0.00'
      Precision = 19
    end
    object ADOTable1juni: TBCDField
      FieldName = 'juni'
      DisplayFormat = '#,#0.00;(#,#0.00);#,#0.00'
      Precision = 19
    end
    object ADOTable1total_bayar: TBCDField
      FieldName = 'total_bayar'
      DisplayFormat = '#,#0.00;(#,#0.00);#,#0.00'
      Precision = 19
    end
    object ADOTable1sisa_bayar: TBCDField
      FieldName = 'sisa_bayar'
      DisplayFormat = '#,#0.00;(#,#0.00);#,#0.00'
      Precision = 19
    end
    object ADOTable1periode: TWideStringField
      FieldName = 'periode'
      Size = 255
    end
    object ADOTable1date_update: TDateTimeField
      FieldName = 'date_update'
    end
  end
  object ADOTable2: TADOTable
    Active = True
    Connection = ADOConnection1
    CursorType = ctStatic
    TableName = 'spp'
    Left = 264
    Top = 248
  end
  object ADOTable3: TADOTable
    Active = True
    Connection = ADOConnection1
    CursorType = ctStatic
    TableName = 'pembayaran'
    Left = 224
    Top = 304
  end
  object DataSource1: TDataSource
    DataSet = ADOTable1
    Left = 320
    Top = 224
  end
  object ADOQuery1: TADOQuery
    Connection = ADOConnection1
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'SELECT * FROM pembayaran')
    Left = 288
    Top = 312
  end
  object ADOCariData: TADOTable
    Active = True
    Connection = ADOConnection1
    CursorType = ctStatic
    TableName = 'data_bayar2'
    Left = 344
    Top = 64
  end
  object DSCariData: TDataSource
    DataSet = ADOCariData
    Left = 392
    Top = 40
  end
  object ADOPeriode: TADOTable
    Active = True
    Connection = ADOConnection1
    CursorType = ctStatic
    TableName = 'periode'
    Left = 136
    Top = 16
  end
  object MaleAndFemale: TADOQuery
    Active = True
    Connection = ADOConnection1
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'SELECT * FROM jumlah_siswa')
    Left = 312
    Top = 16
  end
  object TotalBayarAndTotalKurang: TADOQuery
    Active = True
    Connection = ADOConnection1
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'SELECT * FROM spp')
    Left = 344
    Top = 144
  end
  object DSRekapitulasi: TDataSource
    DataSet = ADOQPembayaran
    Left = 432
    Top = 344
  end
  object ADOQPembayaran: TADOQuery
    Active = True
    Connection = ADOConnection1
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'SELECT * FROM pembayaran')
    Left = 392
    Top = 288
    object ADOQPembayaranid_bayar: TWideStringField
      FieldName = 'id_bayar'
      Size = 255
    end
    object ADOQPembayarankelas: TWideStringField
      FieldName = 'kelas'
      Size = 255
    end
    object ADOQPembayarannama: TWideStringField
      FieldName = 'nama'
      Size = 255
    end
    object ADOQPembayarannisn: TWideStringField
      FieldName = 'nisn'
      Size = 255
    end
    object ADOQPembayaranjumlah_bayar: TBCDField
      FieldName = 'jumlah_bayar'
      DisplayFormat = '#,#0.00;(#,#0.00);#,#0.00'
      Precision = 19
    end
    object ADOQPembayarantgl_bayar: TDateTimeField
      FieldName = 'tgl_bayar'
    end
    object ADOQPembayaranperiode: TWideStringField
      FieldName = 'periode'
      Size = 255
    end
  end
  object Kwintansi: TADOQuery
    Active = True
    Connection = ADOConnection1
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'SELECT * FROM data_bayar2')
    Left = 488
    Top = 80
  end
  object Kwintansi2: TADOQuery
    Active = True
    Connection = ADOConnection1
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'SELECT * FROM pembayaran')
    Left = 440
    Top = 112
  end
  object DSKwintansi: TDataSource
    DataSet = Kwintansi2
    Left = 448
    Top = 168
  end
  object DSPeriode: TDataSource
    DataSet = ADOPeriode
    Left = 224
    Top = 16
  end
end
