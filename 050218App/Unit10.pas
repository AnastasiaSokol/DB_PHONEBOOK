unit Unit10;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Mask, DBCtrls;

type
  TFormEditRubrics = class(TForm)
    Label1: TLabel;
    ButtonOK: TButton;
    DBEditNameOfRubric: TDBEdit;
    procedure ButtonOKClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormEditRubrics: TFormEditRubrics;

implementation

uses
  Unit1, Unit2, Unit3, Unit4, Unit5, Unit6, Unit7, Unit8, Unit9;

{$R *.dfm}

procedure TFormEditRubrics.ButtonOKClick(Sender: TObject);
begin
  DM.IBDS_RUBRICS.Post;
  DM.IBDS_RUBRICS.Close;
  DM.IBDS_RUBRICS.Prepare;
  DM.IBDS_RUBRICS.Open;
end;

end.
