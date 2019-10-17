unit clsTimetable;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, clsGrade;

type
  TTimetable = class
  private
    fCount : integer;
    fArrGrade : array of TGrade;
  public
    constructor create;
    destructor destroy; override;
    function getCount : integer;
    procedure setCount(iCount : integer);
    procedure addGrade(iGrade : integer);
    function getGrade(iGrade : integer):TGrade;
  end;


implementation

{ TTimetable }

procedure TTimetable.addGrade(iGrade: integer);
var
  iAcc : integer;
begin
  inc(fCount);
  setLength(fArrGrade, fCount);
  iAcc := fCount-1;
  fArrGrade[iAcc] := TGrade.create(iGrade);
end;

constructor TTimetable.create;
begin
  fCount := 0;
end;

destructor TTimetable.destroy;
begin

  inherited;
end;

function TTimetable.getCount: integer;
begin
  result := fCount;
end;

function TTimetable.getGrade(iGrade: integer): TGrade;
var
  iLoop, iChosen : integer;
begin
  iChosen := 0;
  for iLoop := 0 to fCount-1 do
    begin
      iChosen := fArrGrade[iLoop].getGrade;
      if iChosen = iGrade then
        begin
          result := fArrGrade[iLoop];
          break;
        end;
    end;
end;

procedure TTimetable.setCount(iCount: integer);
begin
  fCount := iCount;
end;

end.
 