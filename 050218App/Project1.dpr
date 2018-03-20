program Project1;

uses
  Forms,
  Unit1 in 'Unit1.pas' {FMain},
  Unit2 in 'Unit2.pas' {DM: TDataModule},
  Unit3 in 'Unit3.pas' {FORG},
  Unit4 in 'Unit4.pas' {FormRubrics},
  Unit5 in 'Unit5.pas' {FTOWNS},
  Unit6 in 'Unit6.pas' {FPHONES},
  Unit7 in 'Unit7.pas' {FPHONES_OF_ORG},
  Unit8 in 'Unit8.pas' {FPERSONS},
  Unit9 in 'Unit9.pas' {FPHONE_OF_PERSONS},
  Unit10 in 'Unit10.pas' {FormEditRubrics},
  Unit11 in 'Unit11.pas' {FDB_connect},
  Unit12 in 'Unit12.pas' {FReportTownPhones},
  Unit13 in 'Unit13.pas' {FormChooseTown},
  Unit14 in 'Unit14.pas' {FReportPersonPhones},
  Unit15 in 'Unit15.pas' {FReportOrgPhones},
  Unit16 in 'Unit16.pas' {FormChooseTownRubric},
  Unit17 in 'Unit17.pas' {Form17};

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(TFMain, FMain);
  Application.CreateForm(TDM, DM);
  Application.CreateForm(TFORG, FORG);
  Application.CreateForm(TFormRubrics, FormRubrics);
  Application.CreateForm(TFTOWNS, FTOWNS);
  Application.CreateForm(TFPHONES, FPHONES);
  Application.CreateForm(TFPHONES_OF_ORG, FPHONES_OF_ORG);
  Application.CreateForm(TFPERSONS, FPERSONS);
  Application.CreateForm(TFPHONE_OF_PERSONS, FPHONE_OF_PERSONS);
  Application.CreateForm(TFormEditRubrics, FormEditRubrics);
  Application.CreateForm(TFDB_connect, FDB_connect);
  Application.CreateForm(TFReportTownPhones, FReportTownPhones);
  Application.CreateForm(TFormChooseTown, FormChooseTown);
  Application.CreateForm(TFReportPersonPhones, FReportPersonPhones);
  Application.CreateForm(TFReportOrgPhones, FReportOrgPhones);
  Application.CreateForm(TFormChooseTownRubric, FormChooseTownRubric);
  Application.CreateForm(TForm17, Form17);
  Application.Run;
end.
