unit Summary_u;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, pngimage, ExtCtrls, Buttons;

type
  TForm6 = class(TForm)
    imgLogo: TImage;
    lblTitle: TLabel;
    shpTitle: TShape;
    lblExamHours: TLabel;
    lblNote: TLabel;
    lblNote2: TLabel;
    lblNote4: TLabel;
    lblNumber: TLabel;
    lblMatricTitle: TLabel;
    lblRestTitle: TLabel;
    lblTOtalTitle: TLabel;
    shpMatric: TShape;
    shpRest: TShape;
    shpTOtal: TShape;
    lblAverage: TLabel;
    lblNormal: TLabel;
    shpHours: TShape;
    shpMHours: TShape;
    shpNHours: TShape;
    lblHours: TLabel;
    lblMatric: TLabel;
    lblRest: TLabel;
    lblTotal: TLabel;
    lblMatricHours: TLabel;
    lblTeacherHours: TLabel;
    btnClose: TBitBtn;
    shpBack: TShape;
    btnHelp: TBitBtn;
    procedure FormShow(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure btnHelpClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form6: TForm6;

implementation

uses Input_u, Help_u;

{$R *.dfm}

procedure TForm6.FormShow(Sender: TObject);
const
  clOrangeRed = TColor($0024FF);
var
  k, i1, i2, iPos, iMatric, iRest, iTotal, iNeed : integer;
  rHours, rTotal, rMatric, rRest, rDivide, rNew : real;
  sDuration : string;
begin
  //on form show, do all the calculations and then post it
  rTotal := 0;
  for k := 8 to 12 do
    begin
      for i1 := 0 to Form3.Timetable.getGrade(k).getS1Count-1 do
        begin
          sDuration := Form3.Timetable.getGrade(k).getS1Exam(i1).getDuration;
          ineed := Form3.Timetable.getGrade(k).getS1Exam(i1).getInvigilators;
          if sDuration = ''
            then sDuration := '0';
          if sDuration[length(sDuration)] = '½' then
            begin
              iPos := pos('½', sDuration);
              sDuration := copy(sDuration, 1, iPos-1) + '.5';
            end;
          try
            rHours := strtofloat(sDuration);
          except
            rHours := 0;
          end;
          rHours := rHours*iNeed;
          rTotal := rTotal + rHours;
        end;

      for i2 := 0 to Form3.Timetable.getGrade(k).getS2Count-1 do
        begin
          sDuration := Form3.Timetable.getGrade(k).getS2Exam(i2).getDuration;
          ineed := Form3.Timetable.getGrade(k).getS2Exam(i2).getInvigilators;
          if sDuration = '' then sDuration := '0';
          if sDuration[length(sDuration)] = '½' then
            begin
              iPos := pos('½', sDuration);
              sDuration := copy(sDuration, 1, iPos-1) + '.5';
            end;
          try
            rHours := strtofloat(sDuration);
          except
            rHours := 0;
          end;
          rHours := rHours*iNeed;
          rTotal := rTotal + rHours;
        end;     
    end;
  lblHours.Caption := floattostrf(rTotal, ffFixed, 5, 2);
  iMatric := Form3.lbxMatric.Items.Count;
  iRest := Form3.lbxInvigilators.Items.Count;
  iTotal := iMatric + iRest;
  //imatric(x) + iRest(3x) = rTotal
  lblMatric.Caption := inttostr(iMatric);
  lblRest.Caption := inttostr(iRest);
  lblTOtal.Caption := inttostr(iTotal);

  rDivide := iMatric+iRest*3;
  rNew := rTotal/rDivide;

  rMatric := rNew;
  rRest := 3*rNew;

  lblMatricHours.Caption := floattostrf(rMatric, ffFixed, 5, 2);
  lblTeacherHours.Caption := floattostrf(rRest, ffFixed, 5, 2);
end;

procedure TForm6.FormCreate(Sender: TObject);
const
  clOrangeRed = TColor($0024FF);
begin
  //change colours to suit graphics
  Form6.Color := clMaroon;
  shpTitle.Brush.Color := clOrangeRed;
  lblTitle.Color := clOrangeRed;
  btnhelp.Caption := '';
end;

procedure TForm6.btnHelpClick(Sender: TObject);
begin
  Form7.show;
end;

end.
