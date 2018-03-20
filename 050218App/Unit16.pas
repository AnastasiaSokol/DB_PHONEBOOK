unit Unit16;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls;

type
  TFormChooseTownRubric = class(TForm)
    ComboBox1: TComboBox;
    ComboBox2: TComboBox;
    ComboBox3: TComboBox;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Button1: TButton;
    Button2: TButton;
    procedure FormShow(Sender: TObject);
    procedure ComboBox1Change(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormChooseTownRubric: TFormChooseTownRubric;
  ident:Integer;

implementation

uses
  Unit1, Unit2, Unit3, Unit4, Unit5, Unit6, Unit7, Unit8, Unit9, Unit10, Unit11,
  Unit12, Unit13, Unit14, Unit15, Unit17;

{$R *.dfm}

procedure TFormChooseTownRubric.FormShow(Sender: TObject);
begin
  DM.IBDS_TOWN.Open;
  DM.IBDS_TOWN.First;//��������� �� ������ ������
  ComboBox1.Clear;//������� ������
  while not DM.IBDS_TOWN.Eof do //���� �� ����� ��
  begin
    ComboBox1.Items.Add(
      DM.IBDS_TOWN.FieldByName('TOWN_NAME').AsString
    );
    DM.IBDS_TOWN.Next;//������� � ��������� ������ ��
  end;
  DM.IBDS_TOWN.Close;//�������� �������
  ComboBox1.ItemIndex:=0;//��������� �� ������ ������� ������
  //----------------------------------------------------------------------------
  DM.IBDS_RUBRICS.Open;
  DM.IBDS_RUBRICS.First;//��������� �� ������ ������
  ComboBox3.Clear;//������� ������
  while not DM.IBDS_RUBRICS.Eof do //���� �� ����� ��
  begin
    ComboBox3.Items.Add(
      DM.IBDS_RUBRICS.FieldByName('NAME_OF_RUBRIC').AsString
    );
    DM.IBDS_RUBRICS.Next;//������� � ��������� ������ ��
  end;
  DM.IBDS_RUBRICS.Close;//�������� �������
  ComboBox3.ItemIndex:=0;//��������� �� ������ ������� ������
  //----------------------------------------------------------------------------
end;

procedure TFormChooseTownRubric.ComboBox1Change(Sender: TObject);
begin
  DM.IBDS_TOWN.Open; //�������� ��----------------------------------------------|
  DM.IBDS_TOWN.First;//��������� �� ������ ������                             //|
  ComboBox2.Clear;//������� ������                                            //|
  while not DM.IBDS_TOWN.Eof do //���� �� ����� ��                            //|
  begin                                                                       //|
    if (ComboBox1.Items[ComboBox1.ItemIndex]=DM.IBDS_TOWN.FieldByName('TOWN_NAME').AsString) then   //|
    begin                                                                     //|
    ComboBox2.Items.Add(                                                      //|
      DM.IBDS_TOWN.FieldByName('COUNTRY').AsString                            //|
    );                                                                        //|
    end;                                                                      //|
    DM.IBDS_TOWN.Next;//������� � ��������� ������ ��                         //|
                                                                              //|
  end;                                                                        //|
  DM.IBDS_TOWN.Close;//�a������ �������<<----------------------------------------
  ComboBox2.ItemIndex:=0;//��������� �� ������ ������� ������
  ComboBox2.Enabled:=true;
end;

procedure TFormChooseTownRubric.Button1Click(Sender: TObject);
begin

 //��������� �������� �������� ��������� ���������
  DM.IBQuery2.ParamByName('t').Value:=ComboBox1.Items[ComboBox1.ItemIndex];;
  DM.IBQuery2.ParamByName('c').Value:=ComboBox2.Items[ComboBox2.ItemIndex];;
  DM.IBQuery2.ParamByName('r').Value:=ComboBox3.Items[ComboBox3.ItemIndex];
  DM.IBQuery2.Prepare;//��������� ������ �� ������ � ��������� ��� ������������
  DM.IBQuery2.Open;//��������� ������
  FormChooseTownRubric.Close;//�������� ����� ������ ������
  Form17.QuickRep1.Preview;//��������� �����
end;

procedure TFormChooseTownRubric.Button2Click(Sender: TObject);
begin
  FormChooseTownRubric.Close;//��������� �����
end;

end.
