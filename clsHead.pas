unit clsHead;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, clsSubjects;

type
  THead = class
  private
    fSubjectCount : integer;
    fGrade : integer;
    fArrSubjects : array of TSubjects;
  public
    constructor create(iGrade : integer);
    destructor destroy; override;
    function getGrade : integer;
    procedure addSubject(sSubject : string);
    function getSubjectCount : integer;
    function getSubjects(sSubject : string) : TSubjects; overload;
    function getSubjects(iNo : integer) : TSubjects; overload;
  end;

implementation

{ THead }

procedure THead.addSubject(sSubject: string);
var
  iNo : integer;
begin
  inc(fSubjectCount);
  SetLength(fArrSubjects, fSubjectCount);
  iNo := fSubjectCount-1;
  fArrSubjects[iNo] := TSubjects.create(sSubject);
end;

constructor THead.create(iGrade: integer);
begin
  fGrade := iGrade;
  fSubjectCount := 0;
end;

destructor THead.destroy;
begin

  inherited;
end;

function THead.getGrade: integer;
begin
  result := fGrade;
end;

function THead.getSubjects(sSubject: string): TSubjects;
var
  iLoop : integer;
  sCompare : string;
begin
  sCompare := '';
  for iLoop := 0 to fSubjectCount-1 do
    begin
      sCompare := fArrSubjects[iLoop].getSubject;
      if sCompare = sSubject then
        begin
          result := fArrSubjects[iLoop];
          break;
        end;
    end;
end;

function THead.getSubjectCount: integer;
begin
  result := fSubjectCount;
end;

function THead.getSubjects(iNo: integer): TSubjects;
begin
  result := fArrSubjects[iNo];
end;

end.
 