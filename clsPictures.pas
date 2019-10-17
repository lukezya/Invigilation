unit clsPictures;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, clsPic;

type
  TPictures = class
  private
    fCount : integer;
    fPath : string;
    fArrPics : array of TPic;
  public
    constructor create;
    destructor destroy; override;
    function getPath : string;
    procedure setPath(sPath : string);
    procedure AddPic(code, name, surname, path : string);
    procedure RefreshPics;
    function getPicCount : integer;
    function getPic(toString : string):TPic;overload;
    function getPic(iNo : integer):TPic;overload;
  end;

implementation

{ TPictures }

procedure TPictures.AddPic(code, name, surname, path: string);
var
  iChoose : integer;
begin
  inc(fCount);
  SetLength(fArrPics, fCount);
  iChoose := fCount-1;
  fArrPics[iChoose] := TPic.create;
  fArrPics[iChoose].setTeacher(code, name, surname, path);
end;

constructor TPictures.create;
begin
  fCount := 0;
  fPath := '';
end;

destructor TPictures.destroy;
begin

  inherited;
end;

function TPictures.getPath: string;
begin
  result := fPath;
end;

function TPictures.getPic(toString: string): TPic;
var
  sTeacher, sCompare : string;
  iLoop : integer;
begin
  sTeacher := toString;
  for iLoop := 0 to fCount-1 do
    begin
      sCompare := fArrPics[iLoop].getTeacher.toString;
      if sTeacher = sCompare then
        begin
          result := fArrPics[iLoop];
          break;
        end;
    end;


end;

function TPictures.getPic(iNo: integer): TPic;
begin
  result := fArrPics[iNo];
end;

function TPictures.getPicCount: integer;
begin
  result := fCount;
end;

procedure TPictures.RefreshPics;
begin
  SetLength(fArrPics, 0);
  fCount := 0;
  fPath := '';
end;

procedure TPictures.setPath(sPath: string);
begin
  fPath := sPath;
end;

end.
 