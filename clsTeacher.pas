unit clsTeacher;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs;

type
  TTeacher = class
  private
    fCode : string;
    fName : string;
    fSurname : string;
  public
    constructor create(c,n,s : string);
    destructor destroy; override;
    function getCode : string;
    function getName : string;
    function getSurname : string;
    procedure setCode(c:string);
    procedure setName(n:string);
    procedure setSurname(s:string);
    function toString : string;
  end;

implementation

{ TTeacher }

constructor TTeacher.create(c, n, s: string);
begin
  fCode := c;
  fName := n;
  fSurname := s;
end;

destructor TTeacher.destroy;
begin

  inherited;
end;

function TTeacher.getCode: string;
begin
  result := fCode;
end;

function TTeacher.getName: string;
begin
  result := fName;
end;

procedure TTeacher.setCode(c: string);
begin
  fCode := c;
end;

procedure TTeacher.setName(n: string);
begin
  fName := n;
end;

procedure TTeacher.setSurname(s: string);
begin
  fSurname := s;
end;

function TTeacher.getSurname: string;
begin
  result := fSurname;
end;

function TTeacher.toString: string;
begin
  result := fCode + #9 + fName + #9 + fSurname;
end;

end.
 