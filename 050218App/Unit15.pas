unit Unit15;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, QRCtrls, QuickRpt, ExtCtrls;

type
  TFReportOrgPhones = class(TForm)
    QuickRep1: TQuickRep;
    QuickRep2: TQuickRep;
    ColumnHeaderBand1: TQRBand;
    DetailBand1: TQRBand;
    TitleBand1: TQRBand;
    QRLabel1: TQRLabel;
    QRDBText1: TQRDBText;
    QRLabel2: TQRLabel;
    QRLabel3: TQRLabel;
    QRLabel5: TQRLabel;
    QRDBText3: TQRDBText;
    QRDBText4: TQRDBText;
    QRDBText5: TQRDBText;
    QRGroup1: TQRGroup;
    QRBand1: TQRBand;
    QRExpr1: TQRExpr;
    QRLabel6: TQRLabel;
    QRLabel7: TQRLabel;
    QRLabel8: TQRLabel;
    QRLabel9: TQRLabel;
    QRLabel10: TQRLabel;
    QRShape1: TQRShape;
    QRLabel4: TQRLabel;
    procedure QuickRep1AfterPreview(Sender: TObject);
    procedure QuickRep2AfterPreview(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FReportOrgPhones: TFReportOrgPhones;

implementation

uses
  Unit1, Unit2, Unit3, Unit4, Unit5, Unit6, Unit7, Unit8, Unit9, Unit10, Unit11,
  Unit12, Unit13, Unit14;

{$R *.dfm}

procedure TFReportOrgPhones.QuickRep1AfterPreview(Sender: TObject);
begin
  DM.IBQuery1.Close;//Закрыть НД
end;

procedure TFReportOrgPhones.QuickRep2AfterPreview(Sender: TObject);
begin
  DM.IBQuery1.Close;//Закрыть НД
end;

end.
