unit Unit1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Menus;

type
  TFMain = class(TForm)
    MainMenu1: TMainMenu;
    ables1: TMenuItem;
    Organization1: TMenuItem;
    Phonesoforganizations1: TMenuItem;
    Persons1: TMenuItem;
    Phonesofpersons1: TMenuItem;
    Phonenumbers1: TMenuItem;
    owns1: TMenuItem;
    Rubrics1: TMenuItem;
    Documents1: TMenuItem;
    Phonenumbersoftowsorderbynameoftown1: TMenuItem;
    Phonenumbersofpersonsforselectedtownorderbysurname1: TMenuItem;
    Phonenumbersoforganizationgroupbytownsandrubrics1: TMenuItem;
    Phonenumberoforganizationsforselectedtownandrubric1: TMenuItem;
    DataBase1: TMenuItem;
    Connect1: TMenuItem;
    procedure FormShow(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure Organization1Click(Sender: TObject);
    procedure Rubrics1Click(Sender: TObject);
    procedure owns1Click(Sender: TObject);
    procedure Phonenumbers1Click(Sender: TObject);
    procedure Phonesoforganizations1Click(Sender: TObject);
    procedure Persons1Click(Sender: TObject);
    procedure Phonesofpersons1Click(Sender: TObject);
    procedure Connect1Click(Sender: TObject);
    procedure Phonenumbersoftowsorderbynameoftown1Click(Sender: TObject);
    procedure Phonenumbersofpersonsforselectedtownorderbysurname1Click(
      Sender: TObject);
    procedure Phonenumbersoforganizationgroupbytownsandrubrics1Click(
      Sender: TObject);
    procedure Phonenumberoforganizationsforselectedtownandrubric1Click(
      Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FMain: TFMain;

implementation

uses
  Unit2, Unit3, Unit4, Unit5, Unit6, Unit7, Unit8, Unit9, Unit11, Unit12, 
  Unit13, Unit15, Unit16;

{$R *.dfm}

procedure TFMain.FormShow(Sender: TObject);
begin
  //Открытие БД
  DM.IBDB_phonebook.Open;
  DM.IBTransaction1.Active:=true;
end;

procedure TFMain.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  //Закрытие БД
  DM.IBDB_phonebook.Close;
end;

procedure TFMain.Organization1Click(Sender: TObject);
begin
  //Открытие формы просмотра списка организаций
  FORG.ShowModal;
end;

procedure TFMain.Rubrics1Click(Sender: TObject);
begin
    //Открытие формы просмотра списка рубрик
  FormRubrics.ShowModal;
end;

procedure TFMain.owns1Click(Sender: TObject);
begin
   FTOWNS.ShowModal;
end;

procedure TFMain.Phonenumbers1Click(Sender: TObject);
begin
   FPHONES.ShowModal;
end;

procedure TFMain.Phonesoforganizations1Click(Sender: TObject);
begin
   FPHONES_OF_ORG.ShowModal;
end;

procedure TFMain.Persons1Click(Sender: TObject);
begin
   FPERSONS.ShowModal;
end;

procedure TFMain.Phonesofpersons1Click(Sender: TObject);
begin
   FPHONE_OF_PERSONS.ShowModal;
end;

procedure TFMain.Connect1Click(Sender: TObject);
begin
  FDB_Connect.ShowModal;
end;

procedure TFMain.Phonenumbersoftowsorderbynameoftown1Click(
  Sender: TObject);
begin
    DM.IBQ_TOWN_PHONES.Open;//Открываем запрос
    FReportTownPhones.QuickRep1.Preview;//Отобажаем отчет
end;

procedure TFMain.Phonenumbersofpersonsforselectedtownorderbysurname1Click(
  Sender: TObject);
begin
  FormChooseTown.ShowModal;
end;

procedure TFMain.Phonenumbersoforganizationgroupbytownsandrubrics1Click(
  Sender: TObject);
begin
  DM.IBQuery1.Open;//Открываем запрос
  FReportOrgPhones.QuickRep2.Preview;//Отобажаем отчет
end;

procedure TFMain.Phonenumberoforganizationsforselectedtownandrubric1Click(
  Sender: TObject);
begin
  FormChooseTownRubric.ShowModal;
end;

end.
