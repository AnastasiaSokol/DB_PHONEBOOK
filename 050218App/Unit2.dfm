object DM: TDM
  OldCreateOrder = False
  Left = 389
  Top = 215
  Height = 389
  Width = 765
  object IBDB_phonebook: TIBDatabase
    Connected = True
    DatabaseName = 'localhost:D:\gdb\PHONEBOOK.GDB'
    Params.Strings = (
      'user_name=SYSDBA'
      'password=masterkey'
      'lc_ctype=WIN1251')
    LoginPrompt = False
    DefaultTransaction = IBTransaction1
    IdleTimer = 0
    SQLDialect = 3
    TraceFlags = []
    Left = 48
    Top = 24
  end
  object IBTransaction1: TIBTransaction
    Active = True
    DefaultDatabase = IBDB_phonebook
    AutoStopAction = saNone
    Left = 48
    Top = 80
  end
  object DS_ORG: TDataSource
    DataSet = IBDS_ORG
    Left = 592
    Top = 216
  end
  object IBDS_ORG: TIBDataSet
    Database = IBDB_phonebook
    Transaction = IBTransaction1
    BufferChunks = 1000
    CachedUpdates = False
    DeleteSQL.Strings = (
      'EXECUTE PROCEDURE DEL_ORG :id_organization')
    InsertSQL.Strings = (
      'EXECUTE  PROCEDURE INS_ORG '
      ':ID_ORGANIZATION, '
      ':NAME_OF_ORGANIZATION, '
      ':STREET, '
      ':HOUSE, '
      ':ID_RUBRIC, '
      ':ID_TOWN, '
      ':INN')
    SelectSQL.Strings = (
      'SELECT * FROM ORGANIZATION')
    ModifySQL.Strings = (
      'EXECUTE  PROCEDURE UPD_ORGANIZATION'
      ':ID_ORGANIZATION, '
      ':NAME_OF_ORGANIZATION, '
      ':STREET, '
      ':HOUSE, '
      ':ID_RUBRIC, '
      ':ID_TOWN, '
      ':INN')
    GeneratorField.Field = 'ID_ORGANIZATION'
    GeneratorField.Generator = 'ORG_GEN'
    Left = 592
    Top = 160
    object IBDS_ORGID_ORGANIZATION: TIntegerField
      FieldName = 'ID_ORGANIZATION'
      Origin = 'ORGANIZATION.ID_ORGANIZATION'
      Required = True
    end
    object IBDS_ORGNAME_OF_ORGANIZATION: TIBStringField
      FieldName = 'NAME_OF_ORGANIZATION'
      Origin = 'ORGANIZATION.NAME_OF_ORGANIZATION'
    end
    object IBDS_ORGSTREET: TIBStringField
      FieldName = 'STREET'
      Origin = 'ORGANIZATION.STREET'
      Size = 30
    end
    object IBDS_ORGHOUSE: TIBStringField
      FieldName = 'HOUSE'
      Origin = 'ORGANIZATION.HOUSE'
      Size = 10
    end
    object IBDS_ORGID_RUBRIC: TIntegerField
      FieldName = 'ID_RUBRIC'
      Origin = 'ORGANIZATION.ID_RUBRIC'
      Required = True
    end
    object IBDS_ORGID_TOWN: TIntegerField
      FieldName = 'ID_TOWN'
      Origin = 'ORGANIZATION.ID_TOWN'
      Required = True
    end
    object IBDS_ORGINN: TLargeintField
      FieldName = 'INN'
      Origin = 'ORGANIZATION.INN'
      Required = True
    end
    object IBDS_ORGrubric: TStringField
      FieldKind = fkLookup
      FieldName = 'rubric'
      LookupDataSet = IBDS_RUBRICS
      LookupKeyFields = 'ID_RUBRIC'
      LookupResultField = 'NAME_OF_RUBRIC'
      KeyFields = 'ID_RUBRIC'
      Size = 30
      Lookup = True
    end
    object IBDS_ORGtown: TStringField
      FieldKind = fkLookup
      FieldName = 'town'
      LookupDataSet = IBDS_TOWN
      LookupKeyFields = 'ID_TOWN'
      LookupResultField = 'TOWN_NAME'
      KeyFields = 'ID_TOWN'
      Size = 30
      Lookup = True
    end
  end
  object IBDS_ORG_PHONES: TIBDataSet
    Database = IBDB_phonebook
    Transaction = IBTransaction1
    BufferChunks = 1000
    CachedUpdates = False
    DeleteSQL.Strings = (
      'EXECUTE PROCEDURE DEL_ORG_PHONES :id_number_of_org'
      ''
      '')
    InsertSQL.Strings = (
      'EXECUTE PROCEDURE INS_ORG_PHONES'
      ':ID_NUMBER_OF_ORG,'
      ':ID_ORGANIZATION,'
      ':ID_NUMBER,'
      ':DEPARTMENT_NAME')
    SelectSQL.Strings = (
      'SELECT * FROM ORGANIZATION_PHONES OP,'
      'ORGANIZATION ORG,'
      'PHONES P'
      'WHERE OP.ID_ORGANIZATION=ORG.ID_ORGANIZATION AND'
      'OP.ID_NUMBER=P.ID_NUMBER')
    ModifySQL.Strings = (
      'EXECUTE  PROCEDURE UPD_ORGANIZATION_PHONES'
      ':ID_NUMBER_OF_ORG,'
      ':ID_ORGANIZATION, '
      ':ID_NUMBER,'
      ':DEPARTMENT_NAME'
      '')
    GeneratorField.Field = 'ID_NUMBER_OF_ORG'
    GeneratorField.Generator = 'ORG_PNONES_GEN'
    Left = 680
    Top = 160
    object IBDS_ORG_PHONESID_NUMBER_OF_ORG: TIntegerField
      FieldName = 'ID_NUMBER_OF_ORG'
      Origin = 'ORGANIZATION_PHONES.ID_NUMBER_OF_ORG'
      Required = True
    end
    object IBDS_ORG_PHONESID_ORGANIZATION: TIntegerField
      FieldName = 'ID_ORGANIZATION'
      Origin = 'ORGANIZATION_PHONES.ID_ORGANIZATION'
      Required = True
    end
    object IBDS_ORG_PHONESID_NUMBER: TIntegerField
      FieldName = 'ID_NUMBER'
      Origin = 'ORGANIZATION_PHONES.ID_NUMBER'
      Required = True
    end
    object IBDS_ORG_PHONESDEPARTMENT_NAME: TIBStringField
      FieldName = 'DEPARTMENT_NAME'
      Origin = 'ORGANIZATION_PHONES.DEPARTMENT_NAME'
    end
    object IBDS_ORG_PHONESorg_name: TStringField
      FieldKind = fkLookup
      FieldName = 'org_name'
      LookupDataSet = IBDS_ORG
      LookupKeyFields = 'ID_ORGANIZATION'
      LookupResultField = 'NAME_OF_ORGANIZATION'
      KeyFields = 'ID_ORGANIZATION'
      Lookup = True
    end
    object IBDS_ORG_PHONESnumber: TLargeintField
      FieldKind = fkLookup
      FieldName = 'number'
      LookupDataSet = IBDS_PHONES
      LookupKeyFields = 'ID_NUMBER'
      LookupResultField = 'PHONE_NUMBER'
      KeyFields = 'ID_NUMBER'
      Lookup = True
    end
    object IBDS_ORG_PHONESinn: TLargeintField
      FieldKind = fkLookup
      FieldName = 'inn'
      LookupDataSet = IBDS_ORG
      LookupKeyFields = 'ID_ORGANIZATION'
      LookupResultField = 'INN'
      KeyFields = 'ID_ORGANIZATION'
      Lookup = True
    end
  end
  object IBDS_PERSON: TIBDataSet
    Database = IBDB_phonebook
    Transaction = IBTransaction1
    BufferChunks = 1000
    CachedUpdates = False
    DeleteSQL.Strings = (
      'EXECUTE PROCEDURE DEL_PERSON   :ID_PERSON')
    InsertSQL.Strings = (
      'EXECUTE PROCEDURE INS_PERSON '
      '    :ID_PERSON,'
      '    :SERIAS_AND_NUMBER_PASSPORT,'
      '    :SURNAME,'
      '    :NAME,'
      '    :PATRONYMIC,'
      '    :STREET,'
      '    :HOUSE,'
      '    :ID_TOWN')
    SelectSQL.Strings = (
      'SELECT * FROM PERSON'
      'ORDER BY PATRONYMIC')
    ModifySQL.Strings = (
      'EXECUTE PROCEDURE  UPD_PERSON '
      '    :ID_PERSON,'
      '    :SERIAS_AND_NUMBER_PASSPORT,'
      '    :SURNAME,'
      '    :NAME,'
      '    :PATRONYMIC,'
      '    :STREET,'
      '    :HOUSE,'
      '    :ID_TOWN'
      '')
    GeneratorField.Field = 'ID_PERSON'
    GeneratorField.Generator = 'PERSON_GEN'
    Left = 240
    Top = 160
    object IBDS_PERSONID_PERSON: TIntegerField
      FieldName = 'ID_PERSON'
      Origin = 'PERSON.ID_PERSON'
      Required = True
    end
    object IBDS_PERSONSERIAS_AND_NUMBER_PASSPORT: TIBStringField
      FieldName = 'SERIAS_AND_NUMBER_PASSPORT'
      Origin = 'PERSON.SERIAS_AND_NUMBER_PASSPORT'
      Required = True
    end
    object IBDS_PERSONSURNAME: TIBStringField
      FieldName = 'SURNAME'
      Origin = 'PERSON.SURNAME'
    end
    object IBDS_PERSONNAME: TIBStringField
      FieldName = 'NAME'
      Origin = 'PERSON.NAME'
    end
    object IBDS_PERSONPATRONYMIC: TIBStringField
      FieldName = 'PATRONYMIC'
      Origin = 'PERSON.PATRONYMIC'
    end
    object IBDS_PERSONSTREET: TIBStringField
      FieldName = 'STREET'
      Origin = 'PERSON.STREET'
      Size = 30
    end
    object IBDS_PERSONHOUSE: TIBStringField
      FieldName = 'HOUSE'
      Origin = 'PERSON.HOUSE'
      Size = 10
    end
    object IBDS_PERSONID_TOWN: TIntegerField
      FieldName = 'ID_TOWN'
      Origin = 'PERSON.ID_TOWN'
      Required = True
    end
    object IBDS_PERSONtown: TStringField
      FieldKind = fkLookup
      FieldName = 'town'
      LookupDataSet = IBDS_TOWN
      LookupKeyFields = 'ID_TOWN'
      LookupResultField = 'TOWN_NAME'
      KeyFields = 'ID_TOWN'
      Size = 30
      Lookup = True
    end
  end
  object IBDS_PERSON_PHONES: TIBDataSet
    Database = IBDB_phonebook
    Transaction = IBTransaction1
    BufferChunks = 1000
    CachedUpdates = False
    DeleteSQL.Strings = (
      'EXECUTE PROCEDURE DEL_PERSON_PHONES '
      '    :id_number_of_person')
    InsertSQL.Strings = (
      'EXECUTE PROCEDURE INS_PERSON_PHONES '
      '    :ID_NUMBER_OF_PERSON,'
      '    :ID_PERSON,'
      '    :ID_NUMBER,'
      '    :PHONE_ASSIGNMENT')
    SelectSQL.Strings = (
      'SELECT * FROM PERSON_PHONES ')
    ModifySQL.Strings = (
      'EXECUTE PROCEDURE UPD_PERSON_PHONES '
      '    :ID_NUMBER_OF_PERSON,'
      '    :ID_PERSON,'
      '    :ID_NUMBER,'
      '    :PHONE_ASSIGNMENT'
      '')
    GeneratorField.Field = 'ID_NUMBER_OF_PERSON'
    GeneratorField.Generator = 'PERSON_PHONES_GEN'
    Left = 496
    Top = 160
    object IBDS_PERSON_PHONESID_NUMBER_OF_PERSON: TIntegerField
      FieldName = 'ID_NUMBER_OF_PERSON'
      Origin = 'PERSON_PHONES.ID_NUMBER_OF_PERSON'
      Required = True
    end
    object IBDS_PERSON_PHONESID_PERSON: TIntegerField
      FieldName = 'ID_PERSON'
      Origin = 'PERSON_PHONES.ID_PERSON'
      Required = True
    end
    object IBDS_PERSON_PHONESID_NUMBER: TIntegerField
      FieldName = 'ID_NUMBER'
      Origin = 'PERSON_PHONES.ID_NUMBER'
      Required = True
    end
    object IBDS_PERSON_PHONESPHONE_ASSIGNMENT: TIBStringField
      FieldName = 'PHONE_ASSIGNMENT'
      Origin = 'PERSON_PHONES.PHONE_ASSIGNMENT'
    end
    object IBDS_PERSON_PHONESperson_surname: TStringField
      FieldKind = fkLookup
      FieldName = 'person_surname'
      LookupDataSet = IBDS_PERSON
      LookupKeyFields = 'ID_PERSON'
      LookupResultField = 'SURNAME'
      KeyFields = 'ID_PERSON'
      Lookup = True
    end
    object IBDS_PERSON_PHONESnumber: TLargeintField
      FieldKind = fkLookup
      FieldName = 'number'
      LookupDataSet = IBDS_PHONES
      LookupKeyFields = 'ID_NUMBER'
      LookupResultField = 'PHONE_NUMBER'
      KeyFields = 'ID_NUMBER'
      Lookup = True
    end
    object IBDS_PERSON_PHONESperson_name: TStringField
      FieldKind = fkLookup
      FieldName = 'person_name'
      LookupDataSet = IBDS_PERSON
      LookupKeyFields = 'ID_PERSON'
      LookupResultField = 'NAME'
      KeyFields = 'ID_PERSON'
      Lookup = True
    end
    object IBDS_PERSON_PHONESperson_patronymic: TStringField
      FieldKind = fkLookup
      FieldName = 'person_patronymic'
      LookupDataSet = IBDS_PERSON
      LookupKeyFields = 'ID_PERSON'
      LookupResultField = 'PATRONYMIC'
      KeyFields = 'ID_PERSON'
      Lookup = True
    end
    object IBDS_PERSON_PHONESstreet: TStringField
      FieldKind = fkLookup
      FieldName = 'street'
      LookupDataSet = IBDS_PERSON
      LookupKeyFields = 'ID_PERSON'
      LookupResultField = 'STREET'
      KeyFields = 'ID_PERSON'
      Lookup = True
    end
    object IBDS_PERSON_PHONEShome: TStringField
      FieldKind = fkLookup
      FieldName = 'home'
      LookupDataSet = IBDS_PERSON
      LookupKeyFields = 'ID_PERSON'
      LookupResultField = 'HOUSE'
      KeyFields = 'ID_PERSON'
      Lookup = True
    end
  end
  object IBDS_TOWN: TIBDataSet
    Database = IBDB_phonebook
    Transaction = IBTransaction1
    BufferChunks = 1000
    CachedUpdates = False
    DeleteSQL.Strings = (
      'EXECUTE PROCEDURE DEL_TOWN :id_town')
    InsertSQL.Strings = (
      'EXECUTE PROCEDURE INS_TOWN '
      '    :id_town,'
      '    :town_name,'
      '    :id_number,'
      '    :country ')
    SelectSQL.Strings = (
      'SELECT * FROM TOWN'
      'ORDER BY  TOWN_NAME')
    ModifySQL.Strings = (
      'EXECUTE PROCEDURE UPD_TOWN '
      '    :id_town,'
      '    :town_name,'
      '    :id_number,'
      '    :country ')
    GeneratorField.Field = 'ID_TOWN'
    GeneratorField.Generator = 'TOWN_GEN'
    Left = 320
    Top = 160
    object IBDS_TOWNID_TOWN: TIntegerField
      FieldName = 'ID_TOWN'
      Origin = 'TOWN.ID_TOWN'
      Required = True
    end
    object IBDS_TOWNTOWN_NAME: TIBStringField
      FieldName = 'TOWN_NAME'
      Origin = 'TOWN.TOWN_NAME'
      Size = 30
    end
    object IBDS_TOWNID_NUMBER: TIntegerField
      FieldName = 'ID_NUMBER'
      Origin = 'TOWN.ID_NUMBER'
      Required = True
    end
    object IBDS_TOWNCOUNTRY: TIBStringField
      FieldName = 'COUNTRY'
      Origin = 'TOWN.COUNTRY'
    end
    object IBDS_TOWNnumber: TIntegerField
      FieldKind = fkLookup
      FieldName = 'number'
      LookupDataSet = IBDS_PHONES
      LookupKeyFields = 'ID_NUMBER'
      LookupResultField = 'PHONE_NUMBER'
      KeyFields = 'ID_NUMBER'
      Lookup = True
    end
  end
  object IBDS_PHONES: TIBDataSet
    Database = IBDB_phonebook
    Transaction = IBTransaction1
    BufferChunks = 1000
    CachedUpdates = False
    DeleteSQL.Strings = (
      'EXECUTE PROCEDURE DEL_PHONES :id_number')
    InsertSQL.Strings = (
      'EXECUTE PROCEDURE INS_PHONE '
      '    :ID_NUMBER,'
      '    :PHONE_NUMBER,'
      '    :MINUTES,'
      '    :TARIV')
    SelectSQL.Strings = (
      'SELECT * FROM PHONES')
    ModifySQL.Strings = (
      'EXECUTE PROCEDURE UPD_PHONE '
      '    :ID_NUMBER,'
      '    :PHONE_NUMBER,'
      '    :MINUTES,'
      '    :TARIV')
    GeneratorField.Field = 'ID_NUMBER'
    GeneratorField.Generator = 'PHONES_GEN'
    Left = 392
    Top = 160
    object IBDS_PHONESID_NUMBER: TIntegerField
      FieldName = 'ID_NUMBER'
      Origin = 'PHONES.ID_NUMBER'
      Required = True
    end
    object IBDS_PHONESPHONE_NUMBER: TLargeintField
      FieldName = 'PHONE_NUMBER'
      Origin = 'PHONES.PHONE_NUMBER'
      Required = True
    end
    object IBDS_PHONESMINUTES: TIntegerField
      FieldName = 'MINUTES'
      Origin = 'PHONES.MINUTES'
    end
    object IBDS_PHONESTARIV: TIntegerField
      FieldName = 'TARIV'
      Origin = 'PHONES.TARIV'
    end
    object IBDS_PHONESPAY: TLargeintField
      FieldKind = fkInternalCalc
      FieldName = 'PAY'
      Origin = 'PHONES.PAY'
      ReadOnly = True
    end
  end
  object DS_ORG_PHONES: TDataSource
    DataSet = IBDS_ORG_PHONES
    Left = 680
    Top = 216
  end
  object DS_PERSON: TDataSource
    DataSet = IBDS_PERSON
    Left = 240
    Top = 216
  end
  object DS_PERSON_PHONES: TDataSource
    DataSet = IBDS_PERSON_PHONES
    Left = 496
    Top = 216
  end
  object DS_TOWN: TDataSource
    DataSet = IBDS_TOWN
    Left = 320
    Top = 216
  end
  object DS_PHONES: TDataSource
    DataSet = IBDS_PHONES
    Left = 392
    Top = 216
  end
  object IBDS_RUBRICS: TIBDataSet
    Database = IBDB_phonebook
    Transaction = IBTransaction1
    ObjectView = True
    BufferChunks = 1000
    CachedUpdates = False
    DeleteSQL.Strings = (
      'EXECUTE PROCEDURE DEL_RUBRICS :ID_RUBRIC')
    InsertSQL.Strings = (
      'EXECUTE  PROCEDURE INS_RUBRICS '
      '    :ID_RUBRIC,'
      '    :NAME_OF_RUBRIC ')
    SelectSQL.Strings = (
      'SELECT * FROM RUBRICS'
      'ORDER BY NAME_OF_RUBRIC')
    ModifySQL.Strings = (
      'EXECUTE PROCEDURE UPD_RUBRICS '
      '    :ID_RUBRIC,'
      '    :NAME_OF_RUBRIC')
    GeneratorField.Field = 'ID_RUBRIC'
    GeneratorField.Generator = 'RUBRICS_GEN'
    Left = 152
    Top = 160
    object IBDS_RUBRICSID_RUBRIC: TIntegerField
      FieldName = 'ID_RUBRIC'
      Origin = 'RUBRICS.ID_RUBRIC'
      Required = True
    end
    object IBDS_RUBRICSNAME_OF_RUBRIC: TIBStringField
      FieldName = 'NAME_OF_RUBRIC'
      Origin = 'RUBRICS.NAME_OF_RUBRIC'
      Size = 30
    end
  end
  object DS_RUBRICS: TDataSource
    DataSet = IBDS_RUBRICS
    Left = 152
    Top = 216
  end
  object IBQ_TOWN_PHONES: TIBQuery
    Database = IBDB_phonebook
    Transaction = IBTransaction1
    BufferChunks = 1000
    CachedUpdates = False
    SQL.Strings = (
      'SELECT * FROM PHONE_TOWNS'
      'ORDER BY TOWN_NAME')
    Left = 160
    Top = 24
  end
  object IBQ_PERSON_PHONES: TIBQuery
    Database = IBDB_phonebook
    Transaction = IBTransaction1
    BufferChunks = 1000
    CachedUpdates = False
    SQL.Strings = (
      'SELECT *   FROM  PHONE_PERSONS'
      'WHERE  PHONE_PERSONS.ID_TOWN=:param_id_town'
      'ORDER BY PHONE_PERSONS.SURNAME')
    Left = 312
    Top = 24
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'param_id_town'
        ParamType = ptUnknown
      end>
  end
  object IBQuery1: TIBQuery
    Database = IBDB_phonebook
    Transaction = IBTransaction1
    Active = True
    BufferChunks = 1000
    CachedUpdates = False
    SQL.Strings = (
      'SELECT * FROM SHOW_PHONE_ORGS'
      'GROUP BY'
      'TOWN_NAME,'
      'NAME_OF_RUBRIC,'
      'NAME_OF_ORGANIZATION,'
      'INN,'
      'PHONE_NUMBER,'
      'COUNTRY')
    Left = 416
    Top = 24
  end
  object IBQuery2: TIBQuery
    Database = IBDB_phonebook
    Transaction = IBTransaction1
    BufferChunks = 1000
    CachedUpdates = False
    SQL.Strings = (
      'SELECT * FROM SHOW_PHONE_ORGS'
      'WHERE SHOW_PHONE_ORGS.NAME_OF_RUBRIC=:r AND'
      'SHOW_PHONE_ORGS.TOWN_NAME=:t AND'
      'SHOW_PHONE_ORGS.COUNTRY=:c'
      'ORDER BY SHOW_PHONE_ORGS.NAME_OF_ORGANIZATION')
    Left = 488
    Top = 24
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'r'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 't'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'c'
        ParamType = ptUnknown
      end>
  end
end
