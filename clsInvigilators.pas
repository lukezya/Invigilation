unit clsInvigilators;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, clsTeacher;

type
  TInvigilators = class
  private
    fMatricCount : integer;
    fInvigilatorCount : integer;
    fArrMatric : array of TTeacher;
    fArrInvigilator : array of TTeacher;
  public
    constructor create;
    destructor destroy; override;
    procedure addMatric(code, name, surname : string);
    function getMatricCount : integer;
    function getInvigilatorCount : integer;
    function getMatric(iNo:integer):TTeacher;
    function getInvigilator(iNo : integer):TTeacher;
    procedure addInvigilator(code, name, surname : string);
    procedure removeMatric(toString : string);
    procedure removeInvigilator(toString : string);
    procedure refreshInvigilators;
  end;

implementation

{ TInvigilators }

procedure TInvigilators.addInvigilator(code, name, surname: string);
var
  iAcc : integer;
begin
  inc(fInvigilatorCount);
  SetLength(fArrInvigilator, fInvigilatorCount);
  iAcc := fInvigilatorCount-1;
  fArrInvigilator[iAcc] := TTeacher.create(code, name, surname);
end;

procedure TInvigilators.addMatric(code, name, surname: string);
var
  iAcc : integer;
begin
  inc(fMatricCount);
  SetLength(fArrMatric, fMatricCount);
  iAcc := fMatricCount-1;
  fArrMatric[iAcc] := TTeacher.create(code, name, surname);
end;

constructor TInvigilators.create;
begin
  fMatricCount := 0;
  fInvigilatorCount := 0;
end;

destructor TInvigilators.destroy;
begin

  inherited;
end;

function TInvigilators.getInvigilator(iNo: integer): TTeacher;
begin
  result := fArrInvigilator[iNo];
end;

function TInvigilators.getInvigilatorCount: integer;
begin
  result := fInvigilatorCount;
end;

function TInvigilators.getMatric(iNo: integer): TTeacher;
begin
  result := fArrMatric[iNo];
end;

function TInvigilators.getMatricCount: integer;
begin
  result := fMatricCount;
end;

procedure TInvigilators.refreshInvigilators;
begin
  fMatricCount := 0;
  fInvigilatorCount := 0;
  SetLength(fArrMatric, 0);
  SetLength(fArrInvigilator, 0);
end;

procedure TInvigilators.removeInvigilator(toString: string);
var
  sGet : string;
  iLoop, iCut : integer;
begin
  for iLoop := 0 to fInvigilatorCount-1 do
    begin
      sGet := fArrInvigilator[iLoop].toString;
      if sGet = toString then
        begin
          for iCut := iLoop to fInvigilatorCount-1 do
            begin
              fArrInvigilator[iCut] := fArrInvigilator[iCut+1];
            end;
          dec(fInvigilatorCount);
          SetLength(fArrinvigilator, fInvigilatorCount);
          break;
        end;
    end;
end;

procedure TInvigilators.removeMatric(toString: string);
var
  sGet : string;
  iLoop, iCut : integer;
begin
  for iLoop := 0 to fMatricCount-1 do
    begin
      sGet := fArrMatric[iLoop].toString;
      if sGet = toString then
        begin
          for iCut := iLoop to fMatricCount-1 do
            begin
              fArrMatric[iCut] := fArrMatric[iCut+1];
            end;
          dec(fMatricCount);
          SetLength(fArrMatric, fMatricCount);
          break;
        end;
    end;
end;

end.
 