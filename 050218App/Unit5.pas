unit Unit5;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Grids, DBGrids, ExtCtrls, DBCtrls;

type
  TFTOWNS = class(TForm)
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
  FTOWNS: TFTOWNS;

implementation

uses
  Unit1, Unit2, Unit3, Unit4;

{$R *.dfm}

procedure TFTOWNS.FormShow(Sender: TObject);
begin
  DM.IBDS_TOWN.Close;
  DM.IBDS_TOWN.Prepare;
  DM.IBDS_TOWN.Open;
end;

procedure TFTOWNS.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  DM.IBDS_TOWN.Close;
end;

end.
