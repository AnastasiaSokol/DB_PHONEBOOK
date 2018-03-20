unit Unit13;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls;

type
  TFormChooseTown = class(TForm)
    ComboBox1: TComboBox;
    Label1: TLabel;
    Button1: TButton;
    Button2: TButton;
    ComboBox2: TComboBox;
    Label2: TLabel;
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
  FormChooseTown: TFormChooseTown;
  ident: Integer;
implementation

uses
  Unit1, Unit2, Unit3, Unit4, Unit5, Unit6, Unit7, Unit8, Unit9, Unit10, Unit11,
  Unit12, Unit14;

{$R *.dfm}

procedure TFormChooseTown.FormShow(Sender: TObject);
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
  DM.IBDS_TOWN.Open;//�������� �������
  ComboBox1.ItemIndex:=0;//��������� �� ������ ������� ������

  //----------------------------------------------------------------------------


end;

procedure TFormChooseTown.ComboBox1Change(Sender: TObject);
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

procedure TFormChooseTown.Button1Click(Sender: TObject);

begin

   //���������� id ������
  DM.IBDS_TOWN.Open;//��������� �� ------------------------------------------------------------
  DM.IBDS_TOWN.First;//��������� �� ������ ������ � ��                                       //|
  while not DM.IBDS_TOWN.Eof do //���� �� ����� ��                                           //|
  begin                                                                                      //|
    if ((ComboBox1.Items[ComboBox1.ItemIndex]=DM.IBDS_TOWN.FieldByName('TOWN_NAME').AsString)//|
    and (ComboBox2.Items[ComboBox2.ItemIndex]=DM.IBDS_TOWN.FieldByName('COUNTRY').AsString)) //|
    then                                                                                     //|
    begin                                                                                    //|
      ident:=DM.IBDS_TOWN.FieldByName('ID_TOWN').AsInteger;                                  //|                                                               //|
    end;                                                                                     //|
    DM.IBDS_TOWN.Next;//������� � ��������� ������ ��                                        //|
  end;                                                                                       //|
  DM.IBDS_TOWN.Close;//��������� ��<<-----------------------------------------------------------

 // DM.IBQ_PERSON_PHONES.UnPrepare;
 //��������� �������� �������� ��������� ���������
  DM.IBQ_PERSON_PHONES.ParamByName('param_id_town').Value:=ident;
  DM.IBQ_PERSON_PHONES.Prepare;//��������� ������ �� ������ � ��������� ��� ������������
  DM.IBQ_PERSON_PHONES.Open;//��������� ������
  FormChooseTown.Close;//�������� ����� ������ ������
  FReportPersonPhones.QuickRep1.Preview;//��������� �����

end;

procedure TFormChooseTown.Button2Click(Sender: TObject);
begin
  FormChooseTown.Close;//��������� �����
end;

end.
