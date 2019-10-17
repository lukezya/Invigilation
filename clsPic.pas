unit clsPic;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, clsTeacher;

type
  TPic = class
  private
    fPath : string;
    fTeacher : TTeacher;
    fHoursInvigilated : real;
  public
    constructor create;
    destructor destroy; override;
    function getHoursInvigilated : real;
    procedure setHoursInvigilated(rHours : real);
    procedure setTeacher(code, name, surname, path : string);
    function getTeacher : TTeacher;
    function getPath : string;
  end;

implementation

{ TPic }

constructor TPic.create;
begin
  fPath := '';
  fHoursInvigilated := 0.0;
end;

destructor TPic.destroy;
begin

  inherited;
end;

function TPic.getHoursInvigilated: real;
begin
  result := fHoursInvigilated;
end;

function TPic.getPath: string;
begin
  result := fPath;
end;

function TPic.getTeacher: TTeacher;
begin
  result := fTeacher;
end;

procedure TPic.setHoursInvigilated(rHours: real);
begin
  fHoursInvigilated := rHours;
end;

procedure TPic.setTeacher(code, name, surname, path: string);
begin
  fPath := path;
  fTeacher := TTeacher.create(code, name, surname);
end;

end.
 