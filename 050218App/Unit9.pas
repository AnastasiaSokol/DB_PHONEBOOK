unit Unit9;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Grids, DBGrids, ExtCtrls, DBCtrls, StdCtrls, DB;

type
  TFPHONE_OF_PERSONS = class(TForm)
    DBGrid1: TDBGrid;
    DBNavigator1: TDBNavigator;
    RadioGroup1: TRadioGroup;
    RadioButton1: TRadioButton;
    RadioButton2: TRadioButton;
    Edit1: TEdit;
    Label1: TLabel;
    CheckBox1: TCheckBox;
    procedure FormShow(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure Edit1Change(Sender: TObject);
    procedure RadioButton2Click(Sender: TObject);
    procedure RadioButton1Click(Sender: TObject);
    procedure CheckBox1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FPHONE_OF_PERSONS: TFPHONE_OF_PERSONS;
  s:String;

implementation

uses
  Unit1, Unit2, Unit3, Unit4, Unit5, Unit6, Unit7, Unit8;

{$R *.dfm}

procedure TFPHONE_OF_PERSONS.FormShow(Sender: TObject);
begin
  DM.IBDS_PERSON_PHONES.Close;
  DM.IBDS_PERSON_PHONES.Prepare;
  DM.IBDS_PERSON_PHONES.Open;
  RadioButton1.Checked:=true;
  RadioButton2.Checked:=false;
  s:='SELECT * FROM PERSON_PHONES ';
  

end;

procedure TFPHONE_OF_PERSONS.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  s:='SELECT * FROM PERSON_PHONES ';
  DM.IBDS_PERSON_PHONES.Close;
  DM.IBDS_PERSON_PHONES.SelectSQL.Clear;
  DM.IBDS_PERSON_PHONES.SelectSQL.Add(s);
end;

procedure TFPHONE_OF_PERSONS.Edit1Change(Sender: TObject);
begin
  if (RadioButton1.Checked)then
    begin
     DM.IBDS_PERSON_PHONES.Locate('person_surname',Edit1.Text,[DB.loPartialKey]);
     s:='SELECT * FROM PERSON_PHONES, PERSON WHERE PERSON_PHONES.ID_PERSON=PERSON.ID_PERSON AND '+
     ' SURNAME like '+#39 +'%'+Edit1.Text+'%'+ #39;
    end
  else
    begin
    DM.IBDS_PERSON_PHONES.Locate('number',Edit1.Text,[DB.loPartialKey]);
    s:='SELECT * FROM PERSON_PHONES, PHONES WHERE PERSON_PHONES.ID_NUMBER=PHONES.ID_NUMBER AND '+
    ' PHONE_NUMBER like '+#39 +'%'+Edit1.Text+'%'+ #39;
    end;

end;

procedure TFPHONE_OF_PERSONS.RadioButton2Click(Sender: TObject);
begin
 label1.Caption:='¬ведите номер телефона';
 Edit1.Text:='';
end;

procedure TFPHONE_OF_PERSONS.RadioButton1Click(Sender: TObject);
begin
   label1.Caption:='¬ведите фамилию';
   Edit1.Text:='';
end;

procedure TFPHONE_OF_PERSONS.CheckBox1Click(Sender: TObject);
begin
 if(CheckBox1.Checked) then
 begin
   if (RadioButton1.Checked)then
    begin
     s:='SELECT * FROM PERSON_PHONES, PERSON WHERE PERSON_PHONES.ID_PERSON=PERSON.ID_PERSON AND '+
     ' SURNAME like '+#39 +'%'+Edit1.Text+'%'+ #39;
    end
  else
    begin
    s:='SELECT * FROM PERSON_PHONES, PHONES WHERE PERSON_PHONES.ID_NUMBER=PHONES.ID_NUMBER AND '+
    ' PHONE_NUMBER like '+#39 +'%'+Edit1.Text+'%'+ #39;
    end;
    
  DM.IBDS_PERSON_PHONES.Close;
  DM.IBDS_PERSON_PHONES.SelectSQL.Clear;
  DM.IBDS_PERSON_PHONES.SelectSQL.Add(s);


  DM.IBDS_PERSON_PHONES.Prepare;
  DM.IBDS_PERSON_PHONES.Open;
  DBGrid1.Repaint;
 end
 else
 begin
  s:='SELECT * FROM PERSON_PHONES ';
  DM.IBDS_PERSON_PHONES.Close;
  DM.IBDS_PERSON_PHONES.SelectSQL.Clear;
  DM.IBDS_PERSON_PHONES.SelectSQL.Add(s);

  DM.IBDS_PERSON_PHONES.Prepare;
  DM.IBDS_PERSON_PHONES.Open;
  DBGrid1.Repaint;
  end;
 end;

end.
