unit Unit2;

interface

uses
  SysUtils, Classes, DB, IBCustomDataSet, IBDatabase, IBStoredProc, IBQuery;

type
  TDM = class(TDataModule)
    IBDB_phonebook: TIBDatabase;
    IBTransaction1: TIBTransaction;
    DS_ORG: TDataSource;
    IBDS_ORG: TIBDataSet;
    IBDS_ORG_PHONES: TIBDataSet;
    IBDS_PERSON: TIBDataSet;
    IBDS_PERSON_PHONES: TIBDataSet;
    IBDS_TOWN: TIBDataSet;
    IBDS_PHONES: TIBDataSet;
    DS_ORG_PHONES: TDataSource;
    DS_PERSON: TDataSource;
    DS_PERSON_PHONES: TDataSource;
    IBDS_PERSONID_PERSON: TIntegerField;
    IBDS_PERSONSERIAS_AND_NUMBER_PASSPORT: TIBStringField;
    IBDS_PERSONSURNAME: TIBStringField;
    IBDS_PERSONNAME: TIBStringField;
    IBDS_PERSONPATRONYMIC: TIBStringField;
    IBDS_PERSONSTREET: TIBStringField;
    IBDS_PERSONHOUSE: TIBStringField;
    IBDS_PERSONID_TOWN: TIntegerField;
    DS_TOWN: TDataSource;
    IBDS_TOWNID_TOWN: TIntegerField;
    IBDS_TOWNTOWN_NAME: TIBStringField;
    IBDS_TOWNID_NUMBER: TIntegerField;
    IBDS_TOWNCOUNTRY: TIBStringField;
    DS_PHONES: TDataSource;
    IBDS_PHONESID_NUMBER: TIntegerField;
    IBDS_PHONESPHONE_NUMBER: TLargeintField;
    IBDS_PHONESMINUTES: TIntegerField;
    IBDS_PHONESTARIV: TIntegerField;
    IBDS_PHONESPAY: TLargeintField;
    IBDS_RUBRICS: TIBDataSet;
    DS_RUBRICS: TDataSource;
    IBDS_TOWNnumber: TIntegerField;
    IBDS_PERSONtown: TStringField;
    IBDS_RUBRICSID_RUBRIC: TIntegerField;
    IBDS_RUBRICSNAME_OF_RUBRIC: TIBStringField;
    IBDS_PERSON_PHONESID_NUMBER_OF_PERSON: TIntegerField;
    IBDS_PERSON_PHONESID_PERSON: TIntegerField;
    IBDS_PERSON_PHONESID_NUMBER: TIntegerField;
    IBDS_PERSON_PHONESPHONE_ASSIGNMENT: TIBStringField;
    IBDS_PERSON_PHONESperson_surname: TStringField;
    IBDS_PERSON_PHONESnumber: TLargeintField;
    IBDS_PERSON_PHONESperson_name: TStringField;
    IBDS_PERSON_PHONESperson_patronymic: TStringField;
    IBDS_ORGID_ORGANIZATION: TIntegerField;
    IBDS_ORGNAME_OF_ORGANIZATION: TIBStringField;
    IBDS_ORGSTREET: TIBStringField;
    IBDS_ORGHOUSE: TIBStringField;
    IBDS_ORGID_RUBRIC: TIntegerField;
    IBDS_ORGID_TOWN: TIntegerField;
    IBDS_ORGINN: TLargeintField;
    IBDS_ORGrubric: TStringField;
    IBDS_ORGtown: TStringField;
    IBQ_TOWN_PHONES: TIBQuery;
    IBQ_PERSON_PHONES: TIBQuery;
    IBQuery1: TIBQuery;
    IBQuery2: TIBQuery;
    IBDS_PERSON_PHONESstreet: TStringField;
    IBDS_PERSON_PHONEShome: TStringField;
    IBDS_ORG_PHONESID_NUMBER_OF_ORG: TIntegerField;
    IBDS_ORG_PHONESID_ORGANIZATION: TIntegerField;
    IBDS_ORG_PHONESID_NUMBER: TIntegerField;
    IBDS_ORG_PHONESDEPARTMENT_NAME: TIBStringField;
    IBDS_ORG_PHONESorg_name: TStringField;
    IBDS_ORG_PHONESnumber: TLargeintField;
    IBDS_ORG_PHONESinn: TLargeintField;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  DM: TDM;

implementation

uses
  Unit1, Unit3, Unit4, Unit5, Unit6, Unit7, Unit8, Unit9, Unit10;

{$R *.dfm}

end.
