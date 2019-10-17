unit clsSubjects;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, clsTeacher;

type
  TSubjects = class
  private
    fTeacherCount : integer;
    fSubject : string;
    fArrTeachers : array of TTeacher;
  public                
    constructor create(sSubject : string);
    destructor destroy; override;
    procedure addTeacher(code, name, surname : string);
    procedure removeTeacher(toString : string);
    function getTeacher(iNo : integer) : TTeacher;
    function getTeacherCount : integer;
    function getSubject : string;
  end;

implementation

{ TSubjects }

procedure TSubjects.addTeacher(code, name, surname: string);
var
  iAcc : integer;
begin
  inc(fTeacherCount);
  SetLength(fArrTeachers, fTeacherCount);
  iAcc := fTeacherCount-1;
  fArrTeachers[iAcc] := TTeacher.create(code, name, surname);
end;

constructor TSubjects.create(sSubject: string);
begin
  fSubject := sSubject;
  fTeacherCount := 0;
end;

destructor TSubjects.destroy;
begin

  inherited;
end;

function TSubjects.getSubject: string;
begin
  result := fSubject;
end;

function TSubjects.getTeacher(iNo: integer): TTeacher;
begin
  result := fArrTeachers[iNo];
end;

function TSubjects.getTeacherCount: integer;
begin
  result := fTeacherCount;
end;

procedure TSubjects.removeTeacher(toString: string);
var
  sGet : string;
  iLoop, iCut : integer;
begin
  for iLoop := 0 to fTeacherCount-1 do
    begin
      sGet := fArrTeachers[iLoop].toString;
      if sGet = toString then
        begin
          for iCut := iLoop to fTeacherCount-1 do
            begin
              fArrTeachers[iCut] := fArrTeachers[iCut+1];
            end;
          dec(fTeacherCount);
          SetLength(fArrTeachers, fTeacherCount);
          break;
        end;
    end;
end;

end.
 