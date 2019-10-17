unit clsGrade;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, clsExam;

type
  TGrade = class
  private
    fCount1 : integer;
    fCount2 : integer;
    fGrade : integer;
    fArrS1Exam : array of TExam;
    fArrS2Exam : array of TExam;
  public
    constructor create(iGrade : integer);
    destructor destroy; override;
    function getS1Count : integer;
    function getS2Count : integer;
    procedure setS1Count(iCount1 : integer);
    procedure sets2Count(iCount2 : integer);
    function getGrade : integer;
    procedure setGrade(iGrade : integer);
    procedure SessionCheck(sDate, sSession : string;iSession : integer);
    procedure addS1Exam(sDate1, sDuration1, sPaper1 : string);
    procedure addS2Exam(sDate2, sDuration2, sPaper2 : string);
    function getS1Exam(iNo1 : integer):TExam;
    function getS2Exam(iNo2 : integer):TExam;
  end;

implementation

{ TGrade }

procedure TGrade.addS1Exam(sDate1, sDuration1, sPaper1: string);
var
  iAcc : integer;
begin
  inc(fCount1);
  SetLength(fArrS1Exam, fCount1);
  iAcc := fCount1-1;
  fArrS1Exam[iAcc] := TExam.create(sDuration1, sDate1, sPaper1);
end;

procedure TGrade.addS2Exam(sDate2, sDuration2, sPaper2: string);
var
  iAcc : integer;
begin
  inc(fCount2);
  SetLength(fArrS2Exam, fCount2);
  iAcc := fCount2-1;
  fArrS2Exam[iAcc] := TExam.create(sDuration2, sDate2, sPaper2);

end;

constructor TGrade.create(iGrade: integer);
begin
  fGrade := iGrade;
  fCount1 := 0;
  fCount2 := 0;
end;

destructor TGrade.destroy;
begin

  inherited;
end;

function TGrade.getGrade: integer;
begin
  result := fGrade;
end;

function TGrade.getS1Count: integer;
begin
  result := fCount1;
end;

function TGrade.getS1Exam(iNo1 : integer): TExam;
begin
  result := fArrS1Exam[iNo1];
end;

function TGrade.getS2Count: integer;
begin
  result := fCOunt2;
end;

function TGrade.getS2Exam(iNo2 : integer): TExam;
begin
  result := fArrS2Exam[iNo2];
end;

procedure TGrade.SessionCheck(sDate, sSession: string;iSession : integer);
var
  sWork, sLetter, sTemp, sSubject, sAddOn, sDuration : string;
  iBreak, j, k, iPos, iSpace : integer;
begin
  if sSession = '' then Exit;
  //check number of breaks
  sWork := sSession;
  iBreak := 0;
  for j := 1 to length(sWork) do
    begin
      sLetter := sWork[j];
      if sLetter = #10 then inc(iBreak);
    end;
  //from breaks get number of subjects in that session
  //iSubjects := iBreak + 1;
  //get their date, duration, subject and then add to exam
  for k:= 1 to iBreak do
    begin
      iPos := pos(#10, sWork);
      sTemp := copy(sWork, 1, iPos-1);

      iSpace := pos(' ', sTemp);
      sSubject := copy(sTemp, 1, iSpace-1);
      Delete(sTemp, 1, iSpace);

      //check for v1 p1
      iSpace := pos(' ', sTemp);
      if iSpace > 0 then
        begin
          sAddOn := copy(sTemp, 1, iSpace-1);
          sSubject := sSubject + ' ' + sAddOn;
          Delete(sTemp, 1, iSpace);
        end;
      sDuration := copy(sTemp, 2, length(sTemp)-2);
      if iSession = 1 then AddS1Exam(sDate, sDuration, sSubject);
      if iSession = 2 then AddS2Exam(sDate, sDuration, sSubject);

      Delete(sWork, 1, iPos);
    end;
  //last paper in box
  sTemp := sWork;
  iSpace := pos(' ', sTemp);
  sSubject := copy(sTemp, 1, iSpace-1);
  Delete(sTemp, 1, iSpace);

  //check for v1 p1
  iSpace := pos(' ', sTemp);
    if iSpace > 0 then
      begin
        sAddOn := copy(sTemp, 1, iSpace-1);
        sSubject := sSubject + ' ' + sAddOn;
        Delete(sTemp, 1, iSpace);
      end;

  sDuration := copy(sTemp, 2, length(sTemp)-2);
  if iSession = 1 then AddS1Exam(sDate, sDuration, sSubject);
  if iSession = 2 then AddS2Exam(sDate, sDuration, sSubject);
end;

procedure TGrade.setGrade(iGrade: integer);
begin
  fGrade := iGrade;
end;

procedure TGrade.setS1Count(iCount1: integer);
begin
  fCount1 := iCount1;
end;

procedure TGrade.sets2Count(iCount2: integer);
begin
  fCount2 := iCount2;
end;

end.
 