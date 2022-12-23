program PembayaranSPPApps;

uses
  Forms,
  menu in 'menu.pas' {FMenu},
  UFormDataSiswa in 'UFormDataSiswa.pas' {FDataSiswa},
  DataModule in 'DataModule.pas' {DM2: TDataModule},
  UFormSPP in 'UFormSPP.pas' {FDataSPP},
  UFormPembayaranSpp in 'UFormPembayaranSpp.pas' {FPembayaranSPP},
  UFormRekapitulasi in 'UFormRekapitulasi.pas' {FRekapitulasi},
  UTabelDataBayar in 'UTabelDataBayar.pas' {FTabelDataBayar},
  UFormSheetKwitansi in 'UFormSheetKwitansi.pas' {FSheetKwintansi},
  UFormConvertKelas in 'UFormConvertKelas.pas' {FCovertKelas},
  ULogin in 'ULogin.pas' {FLogin},
  USettingUser in 'USettingUser.pas' {FUser},
  UCariData in 'UCariData.pas' {FCariData},
  UReport in 'UReport.pas' {FReport},
  UPeriode in 'UPeriode.pas' {FPeriode};

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(TDM2, DM2);
  Application.CreateForm(TFLogin, FLogin);
  Application.CreateForm(TFMenu, FMenu);
  Application.CreateForm(TFDataSiswa, FDataSiswa);
  Application.CreateForm(TFDataSPP, FDataSPP);
  Application.CreateForm(TFPembayaranSPP, FPembayaranSPP);
  Application.CreateForm(TFRekapitulasi, FRekapitulasi);
  Application.CreateForm(TFSheetKwintansi, FSheetKwintansi);
  Application.CreateForm(TFCovertKelas, FCovertKelas);
  Application.CreateForm(TFTabelDataBayar, FTabelDataBayar);
  Application.CreateForm(TFUser, FUser);
  Application.CreateForm(TFCariData, FCariData);
  Application.CreateForm(TFReport, FReport);
  Application.CreateForm(TFPeriode, FPeriode);
  Application.Run;
end.
