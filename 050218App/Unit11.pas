unit Unit11;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls;

type
  TFDB_connect = class(TForm)
    Edit2: TEdit;
    Edit3: TEdit;
    Edit4: TEdit;
    Edit5: TEdit;
    LabelDBName: TLabel;
    LabelUser_name: TLabel;
    LabelPassword: TLabel;
    Labellc_ctype: TLabel;
    Button1: TButton;
    Edit6: TEdit;
    LabelServer: TLabel;
    CheckBoxLoginPromt: TCheckBox;
    procedure Button1Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FDB_connect: TFDB_connect;

implementation

uses
  Unit2;

{$R *.dfm}

procedure TFDB_connect.Button1Click(Sender: TObject);
var userName, password, lc_ctype, server,DB_name:String;
begin
//user_name=SYSDBA
//password=masterkey
//lc_ctype=WIN1251



  userName:='SYSDBA';
  password:='masterkey';
  lc_ctype:='WIN1251';
  server:='localhost';
  DB_name:='D:\gdb\PHONEBOOK.gdb';

  userName:=Edit3.Text;
  password:=Edit4.Text;
  lc_ctype:=Edit5.Text;
  server:=Edit6.Text;
  DB_name:=Edit2.Text;

  DM.IBDB_phonebook.Connected:=False;
  DM.IBDB_phonebook.Params.Clear;
  DM.IBDB_phonebook.LoginPrompt:=CheckBoxLoginPromt.Checked;
  DM.IBDB_phonebook.DatabaseName:=server+':'+DB_name;
  DM.IBDB_phonebook.Params.Add('user_name='+userName);
  DM.IBDB_phonebook.Params.Add('password='+password);
  DM.IBDB_phonebook.Params.Add('lc_ctype='+lc_ctype);
  DM.IBDB_phonebook.Connected:=True;
  ShowMessage('Подключение было успешным!');


end;

procedure TFDB_connect.FormShow(Sender: TObject);
var userName, password, lc_ctype, server,DB_name:String;
begin
  userName:='SYSDBA';
  password:='masterkey';
  lc_ctype:='WIN1251';
  server:='localhost';
  DB_name:='D:\gdb\PHONEBOOK.gdb';

  //-----------------------------
  Edit6.Text:=server;
  Edit2.Text:=DB_name;
  Edit3.Text:=userName;
  Edit4.Text:=password;
  Edit5.Text:=lc_ctype;
  CheckBoxLoginPromt.Checked:=False;
end;

end.
