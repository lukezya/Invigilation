unit clsTeach;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, clsHead;

type
  TTeach = class
  private
    fArrHeads : array[1..5] of THead;
  public
    constructor create;
    destructor destroy; override;
    function getHead(iGrade : integer):THead;
  end;

implementation

{ TTeach }

constructor TTeach.create;
var
  k, j : integer;
begin
  j := 7;
  for k := 1 to 5 do
    begin
      inc(j);
      fArrHeads[k] := THead.create(j);
    end;
end;

destructor TTeach.destroy;
begin

  inherited;
end;

function TTeach.getHead(iGrade: integer): THead;
var
  iLoop, iCheck : integer;
begin
  for iLoop := 1 to 5 do
    begin
      iCheck := fArrHeads[iLoop].getGrade;
      if iCheck = iGrade then
        begin
          result := fArrHeads[iLoop];
          break;
        end;
    end;

end;

end.
 