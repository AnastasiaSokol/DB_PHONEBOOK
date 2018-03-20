unit Unit8;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Grids, DBGrids, ExtCtrls, DBCtrls, StdCtrls, DB;

type
  TFPERSONS = class(TForm)
    DBGrid1: TDBGrid;
    DBNavigator1: TDBNavigator;
    RadioGroup1: TRadioGroup;
    RadioButton1: TRadioButton;
    RadioButton2: TRadioButton;
    Edit1: TEdit;
    Label1: TLabel;
    Edit2: TEdit;
    Label2: TLabel;
    Edit3: TEdit;
    Label3: TLabel;
    CheckBox1: TCheckBox;
    procedure FormShow(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure Edit1Change(Sender: TObject);
    procedure Edit2Change(Sender: TObject);
    procedure Edit3Change(Sender: TObject);
    procedure CheckBox1Click(Sender: TObject);
    procedure RadioButton1Click(Sender: TObject);
    procedure RadioButton2Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FPERSONS: TFPERSONS;
  s:String;

implementation

uses
  Unit1, Unit2, Unit3, Unit4, Unit5, Unit6, Unit7;

{$R *.dfm}
procedure Check(Edit1,Edit2,Edit3: TEdit);
var b1,b2,b3: boolean;
begin
  b1:=true;
  b2:=true;
  b3:=true;
  if (Edit1.Text='') then b1:=false;
  if (Edit2.Text='') then b2:=false;
  if (Edit3.Text='') then b3:=false;
  //----------------------------------------------------------------------------
  if (b1=true) and (b2=true) and (b3=true) then
  begin
    DM.IBDS_PERSON.Locate('town;STREET;HOUSE',
    VarArrayOf([Edit1.Text,Edit2.Text,Edit3.Text]),
    [DB.loPartialKey]
    );
    s:='SELECT * FROM PERSON,TOWN WHERE PERSON.ID_TOWN=TOWN.ID_TOWN AND '+
    ' TOWN_NAME like'+#39 +'%'+Edit1.Text+'%'+ #39+' AND '+
    ' STREET like '+ #39+'%' +Edit2.Text+'%'+ #39+ ' AND '+
    ' HOUSE='+ #39 +Edit3.Text+ #39+
    ' ORDER BY PATRONYMIC ';
  end;
  //----------------------------------------------------------------------------
  if (b1=true) and (b2=true) and (b3=false) then
  begin
    DM.IBDS_PERSON.Locate('town;STREET',
    VarArrayOf([Edit1.Text,Edit2.Text]),
    [DB.loPartialKey]
    );

    s:='SELECT * FROM PERSON,TOWN WHERE PERSON.ID_TOWN=TOWN.ID_TOWN AND '+
    ' TOWN_NAME like'+#39 +'%'+Edit1.Text+'%'+ #39+' AND '+
    ' STREET ='+#39 +Edit2.Text+ #39+
    ' ORDER BY PATRONYMIC ';
  end;
  //----------------------------------------------------------------------------
  if (b1=true) and (b2=false) and (b3=true) then
  begin
    DM.IBDS_PERSON.Locate('town;HOUSE',
    VarArrayOf([Edit1.Text,Edit3.Text]),
    [DB.loPartialKey]
    );

     s:='SELECT * FROM PERSON,TOWN WHERE PERSON.ID_TOWN=TOWN.ID_TOWN AND '+
    ' TOWN_NAME like'+#39 +'%'+Edit1.Text+'%'+ #39+' AND '+
    ' HOUSE='+ #39 +Edit3.Text+ #39+
    ' ORDER BY PATRONYMIC ';
  end;
  //----------------------------------------------------------------------------
  if (b1=true) and (b2=false) and (b3=false) then
  begin
    DM.IBDS_PERSON.Locate('town',
    VarArrayOf([Edit1.Text]),
    [DB.loPartialKey]
    );
     s:='SELECT * FROM PERSON,TOWN WHERE PERSON.ID_TOWN=TOWN.ID_TOWN AND '+
    ' TOWN_NAME like'+#39+'%' +Edit1.Text+ '%'+#39+
    ' ORDER BY PATRONYMIC ';
  end;
  //----------------------------------------------------------------------------
  if (b1=false) and (b2=true) and (b3=true) then
  begin
    DM.IBDS_PERSON.Locate('STREET;HOUSE',
    VarArrayOf([Edit2.Text,Edit3.Text]),
    [DB.loPartialKey]
    );
    s:='SELECT * FROM PERSON WHERE '+
    ' STREET like'+#39 +'%'+Edit2.Text+ '%'+ #39+ ' AND '+
    ' HOUSE='+ #39 +Edit3.Text+ #39+
    ' ORDER BY PATRONYMIC ';
  end;
  //----------------------------------------------------------------------------
  if (b1=false) and (b2=false) and (b3=true) then
  begin
    DM.IBDS_PERSON.Locate('HOUSE',
    VarArrayOf([Edit3.Text]),
    [DB.loPartialKey]
    );
    s:='SELECT * FROM PERSON WHERE ' +
    ' HOUSE='+ #39 +Edit3.Text+ #39+
    ' ORDER BY PATRONYMIC ';
  end;
  //----------------------------------------------------------------------------
  if (b1=false) and (b2=true) and (b3=false) then
  begin
    DM.IBDS_PERSON.Locate('STREET',
    VarArrayOf([Edit2.Text]),
    [DB.loPartialKey]
    );
    s:='SELECT * FROM PERSON WHERE '+
    ' STREET like'+#39 +'%'+Edit2.Text+'%'+ #39+
    ' ORDER BY PATRONYMIC ';
  end;

end;

procedure TFPERSONS.FormShow(Sender: TObject);
begin

  DM.IBDS_PERSON.Close;
  DM.IBDS_PERSON.Prepare;
  DM.IBDS_PERSON.Open;

  RadioButton2.Checked:=true;
  
end;

procedure TFPERSONS.FormClose(Sender: TObject; var Action: TCloseAction);
begin
    s:='SELECT * FROM PERSON ORDER BY PATRONYMIC ';
    DM.IBDS_PERSON.Close;
    DM.IBDS_PERSON.SelectSQL.Clear;
    DM.IBDS_PERSON.SelectSQL.Add(s);
end;

procedure TFPERSONS.Edit1Change(Sender: TObject);
begin
 if (RadioButton2.Checked=true)then
 begin
  Check(Edit1,Edit2,Edit3);
 end
 else
 begin
    if (Edit1.Text<>'') then
    begin
      DM.IBDS_PERSON.Locate('SURNAME',
      VarArrayOf([Edit1.Text]),
      [DB.loPartialKey]
      );
      s:='SELECT * FROM PERSON '+
      ' WHERE SURNAME like '+#39 +'%'+Edit1.Text+'%'+ #39+
      ' ORDER BY PATRONYMIC ';
    end
    else
    begin
      s:='SELECT * FROM PERSON ORDER BY PATRONYMIC ';
    end;
 end;
end;

procedure TFPERSONS.Edit2Change(Sender: TObject);
begin
  Check(Edit1,Edit2,Edit3);
end;

procedure TFPERSONS.Edit3Change(Sender: TObject);
begin
  Check(Edit1,Edit2,Edit3);
end;

procedure TFPERSONS.CheckBox1Click(Sender: TObject);
begin
 s:='SELECT * FROM PERSON ORDER BY PATRONYMIC ';
 if(CheckBox1.Checked) then
 begin
  if (RadioButton2.Checked=true) then
  begin
    Check(Edit1,Edit2,Edit3);  //изменяет переменную s
  end//Если поиск по фамилии то переменная s сформирована при вводе значения в Edit
  else
  begin
    if (Edit1.Text<>'') then
    begin
      s:='SELECT * FROM PERSON '+
      ' WHERE SURNAME like '+#39+'%' +Edit1.Text+'%'+ #39+
      ' ORDER BY PATRONYMIC ';
    end
    else
    begin
      s:='SELECT * FROM PERSON ORDER BY PATRONYMIC ';
    end;
  end;
  DM.IBDS_PERSON.Close;
  DM.IBDS_PERSON.SelectSQL.Clear;
  DM.IBDS_PERSON.SelectSQL.Add(s);

  //label4.Caption:=DM.IBDS_PERSON.SelectSQL.GetText;

  DM.IBDS_PERSON.Prepare;
  DM.IBDS_PERSON.Open;
  DBGrid1.Repaint;
 end
 else
 begin
  s:='SELECT * FROM PERSON ORDER BY PATRONYMIC ';
  DM.IBDS_PERSON.Close;
  DM.IBDS_PERSON.SelectSQL.Clear;
  DM.IBDS_PERSON.SelectSQL.Add(s);

  //label4.Caption:=DM.IBDS_PERSON.SelectSQL.GetText;

  DM.IBDS_PERSON.Prepare;
  DM.IBDS_PERSON.Open;
  DBGrid1.Repaint;
 end;
end;



procedure TFPERSONS.RadioButton1Click(Sender: TObject);
begin
  label1.Caption:='Фамилия';
  label2.Visible:=false;
  label3.Visible:=false;
  Edit2.Visible:=false;
  Edit3.Visible:=false;
  Edit1.Text:='';

end;

procedure TFPERSONS.RadioButton2Click(Sender: TObject);
begin
  label1.Caption:='Город';
  label2.Visible:=true;
  label3.Visible:=true;
  Edit2.Visible:=true;
  Edit3.Visible:=true;
  Edit1.Text:='';
end;

end.
