unit Unit7;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Grids, DBGrids, ExtCtrls, DBCtrls, StdCtrls, DB;

type
  TFPHONES_OF_ORG = class(TForm)
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
    procedure RadioButton1Click(Sender: TObject);
    procedure RadioButton2Click(Sender: TObject);
    procedure Edit1Change(Sender: TObject);
    procedure CheckBox1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FPHONES_OF_ORG: TFPHONES_OF_ORG;
  s:String;

implementation

uses
  Unit1, Unit2, Unit3, Unit4, Unit5, Unit6;

{$R *.dfm}

procedure TFPHONES_OF_ORG.FormShow(Sender: TObject);
begin
  DM.IBDS_ORG_PHONES.Close;
  DM.IBDS_ORG_PHONES.Prepare;
  DM.IBDS_ORG_PHONES.Open;
  RadioButton1.Checked:=true;
  RadioButton2.Checked:=false;
 s:='SELECT * FROM ORGANIZATION_PHONES, PHONES, ORGANIZATION '+
 'WHERE  ORGANIZATION_PHONES.ID_NUMBER=PHONES.ID_NUMBER AND '+
 'ORGANIZATION_PHONES.ID_ORGANIZATION=ORGANIZATION.ID_ORGANIZATION';
end;

procedure TFPHONES_OF_ORG.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  s:='SELECT * FROM ORGANIZATION_PHONES, PHONES, ORGANIZATION '+
 'WHERE  ORGANIZATION_PHONES.ID_NUMBER=PHONES.ID_NUMBER AND '+
 'ORGANIZATION_PHONES.ID_ORGANIZATION=ORGANIZATION.ID_ORGANIZATION';

  DM.IBDS_ORG_PHONES.Close;
  DM.IBDS_ORG_PHONES.SelectSQL.Clear;
  DM.IBDS_ORG_PHONES.SelectSQL.Add(s);
end;

procedure TFPHONES_OF_ORG.RadioButton1Click(Sender: TObject);
begin
 label1.Caption:='Введите название организации';
 Edit1.Text:='';
end;

procedure TFPHONES_OF_ORG.RadioButton2Click(Sender: TObject);
begin
 label1.Caption:='Введите номер телефона';
 Edit1.Text:='';
end;

procedure TFPHONES_OF_ORG.Edit1Change(Sender: TObject);
begin
  if (RadioButton1.Checked)then
    begin
     DM.IBDS_ORG_PHONES.Locate('org_name', VarArrayOf([Edit1.Text]),[DB.loPartialKey]);
     s:='SELECT * FROM ORGANIZATION_PHONES, ORGANIZATION'+
     ' WHERE ORGANIZATION_PHONES.ID_ORGANIZATION=ORGANIZATION.ID_ORGANIZATION AND '+
     ' NAME_OF_ORGANIZATION like '+#39 +'%'+Edit1.Text+'%'+ #39;
    end
  else
    begin
    DM.IBDS_ORG_PHONES.Locate('number', VarArrayOf([Edit1.Text]),[DB.loPartialKey]);
     s:='SELECT * FROM ORGANIZATION_PHONES, PHONES'+
     ' WHERE ORGANIZATION_PHONES.ID_NUMBER=PHONES.ID_NUMBER AND '+
     ' NUMBER like '+#39 +'%'+Edit1.Text+'%'+ #39;
    end;
end;

procedure TFPHONES_OF_ORG.CheckBox1Click(Sender: TObject);
begin
 s:='SELECT * FROM ORGANIZATION_PHONES, PHONES, ORGANIZATION '+
 'WHERE  ORGANIZATION_PHONES.ID_NUMBER=PHONES.ID_NUMBER AND '+
 'ORGANIZATION_PHONES.ID_ORGANIZATION=ORGANIZATION.ID_ORGANIZATION';
 if(CheckBox1.Checked) then
 begin

  if (RadioButton1.Checked)then
    begin
     s:='SELECT * FROM ORGANIZATION_PHONES, ORGANIZATION'+
     ' WHERE ORGANIZATION_PHONES.ID_ORGANIZATION=ORGANIZATION.ID_ORGANIZATION AND '+
     ' NAME_OF_ORGANIZATION like '+#39 +'%'+Edit1.Text+'%'+ #39;
    end
  else
    begin
     s:='SELECT * FROM ORGANIZATION_PHONES, PHONES'+
     ' WHERE ORGANIZATION_PHONES.ID_NUMBER=PHONES.ID_NUMBER AND '+
     ' PHONE_NUMBER like '+#39 +'%'+Edit1.Text+'%'+ #39;
    end;

  DM.IBDS_ORG_PHONES.Close;
  DM.IBDS_ORG_PHONES.SelectSQL.Clear;
  DM.IBDS_ORG_PHONES.SelectSQL.Add(s);


  DM.IBDS_ORG_PHONES.Prepare;
  DM.IBDS_ORG_PHONES.Open;
  DBGrid1.Repaint;
 end
 else
 begin
 s:='SELECT * FROM ORGANIZATION_PHONES, PHONES, ORGANIZATION '+
 'WHERE  ORGANIZATION_PHONES.ID_NUMBER=PHONES.ID_NUMBER AND '+
 'ORGANIZATION_PHONES.ID_ORGANIZATION=ORGANIZATION.ID_ORGANIZATION';

  DM.IBDS_ORG_PHONES.Close;
  DM.IBDS_ORG_PHONES.SelectSQL.Clear;
  DM.IBDS_ORG_PHONES.SelectSQL.Add(s);


  DM.IBDS_ORG_PHONES.Prepare;
  DM.IBDS_ORG_PHONES.Open;
  DBGrid1.Repaint;
 end;
end;

end.
