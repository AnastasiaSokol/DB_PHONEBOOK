unit Unit4;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, DBCtrls, Grids, DBGrids, StdCtrls;

type
  TFormRubrics = class(TForm)
    DBGrid1: TDBGrid;
    DBNavigator1: TDBNavigator;
    procedure FormShow(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure ButtonCommitClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormRubrics: TFormRubrics;

implementation

uses
  Unit1, Unit2, Unit3, Unit10;

{$R *.dfm}

procedure TFormRubrics.FormShow(Sender: TObject);
begin
  DM.IBDS_RUBRICS.Close;
  DM.IBDS_RUBRICS.Prepare;
  //DM.IBTransaction1.StartTransaction;
  DM.IBDS_RUBRICS.Open;
end;

procedure TFormRubrics.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  DM.IBDS_RUBRICS.Close;
end;

procedure TFormRubrics.ButtonCommitClick(Sender: TObject);
begin
 try
  DM.IBTransaction1.CommitRetaining;
  ShowMessage('Транзакция выполнена');
 except
    //on  EIBInterBaseError do ShowMessage('Рубрика с таким  названием уже существует');
 end;
end;

end.
