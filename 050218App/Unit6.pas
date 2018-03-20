unit Unit6;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Grids, DBGrids, ExtCtrls, DBCtrls;

type
  TFPHONES = class(TForm)
    DBGrid1: TDBGrid;
    DBNavigator1: TDBNavigator;
    procedure FormShow(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FPHONES: TFPHONES;

implementation

uses
  Unit1, Unit2, Unit3, Unit4, Unit5;

{$R *.dfm}

procedure TFPHONES.FormShow(Sender: TObject);
begin
       DM.IBDS_PHONES.Close;
       DM.IBDS_PHONES.Prepare;
       DM.IBDS_PHONES.Open;
end;

procedure TFPHONES.FormClose(Sender: TObject; var Action: TCloseAction);
begin
       DM.IBDS_PHONES.Close;
end;

end.
