unit clsMeeting;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, clsTeacher;

type
  TMeeting = class
  private
    fDate : string;
    fEvent : string;
    fTime : string;
    fArrTeachers : array of TTeacher;
    fCount : integer;
  public
    constructor create(d, e, t : string);
    destructor destroy; override;
    function getDate : string;
    function getEvent : string;
    function getTime : string;
    procedure setDate(d:string);
    procedure setEvent(e:string);
    procedure setTime(t:string);
    function toString : string;
    procedure AddTeacher(toString : string);
    procedure RemoveTeacher(toString : string);
    function getCount : integer;
    function getTeacher(iNo:integer) : TTeacher;
  end;

implementation

{ TMeeting }

procedure TMeeting.AddTeacher(toString: string);
var
  iPos, iAcc : integer;
  sCode, sName, sSurname, sTeacher : string;
begin
  sTeacher := toString;
  iPos := pos(#9, sTeacher);
  sCode := copy(sTeacher, 1, iPos-1);
  Delete(sTeacher, 1, iPos);

  iPos := pos(#9, sTeacher);
  sName := copy(sTeacher, 1, iPos-1);
  Delete(sTeacher, 1, iPos);

  sSurname := sTeacher;

  inc(fCount);
  setLength(fArrTeachers, fCount);
  iAcc := fCount-1;

  fArrTeachers[iAcc] := TTeacher.create(sCode, sName, sSurname); 
end;

constructor TMeeting.create(d, e, t: string);
begin
  fDate := d;
  fEvent := e;
  fTime := t;
  fCount := 0;
end;

destructor TMeeting.destroy;
begin

  inherited;
end;

function TMeeting.getCount: integer;
begin
  result := fCount;
end;

function TMeeting.getDate: string;
begin
  result := fDate;
end;

function TMeeting.getEvent: string;
begin
  result := fEvent;
end;

function TMeeting.getTeacher(iNo: integer): TTeacher;
begin
  result := fArrTeachers[iNo];
end;

function TMeeting.getTime: string;
begin
  result := fTime;
end;

procedure TMeeting.RemoveTeacher(toString: string);
var
  sTeacher, sCompare : string;
  iLoop, iDelete, iChange : integer;
begin
  sTeacher := toString;
  for iLoop := 0 to fCount do
    begin
      sCompare := fArrTeachers[iLoop].toString;
      if sTeacher = sCompare then
        begin
          iDelete := iLoop;
          for iChange := iDelete to fCount-1 do
            begin
              fArrTeachers[iChange] := fArrTeachers[iChange+1];
            end;
          dec(fCount);
          SetLength(fArrTeachers, fCount);
          break;
        end;
    end;
end;

procedure TMeeting.setDate(d: string);
begin
  fDate := d;
end;

procedure TMeeting.setEvent(e: string);
begin
  fEvent := e;
end;

procedure TMeeting.setTime(t: string);
begin
  fTime := t;
end;

function TMeeting.toString: string;
begin
  result := fDate + #9 + fEvent + #9 + fTime;
end;

end.
 