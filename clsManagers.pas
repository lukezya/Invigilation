unit clsManagers;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, clsTeacher;

type
  TManagers = class
  private
    fGrade8 : array[1..2] of TTeacher;
    fGrade9 : array[1..2] of TTeacher;
    fGrade10 : array[1..2] of TTeacher;
    fGrade11 : array[1..2] of TTeacher;
    fGrade12 : array[1..2] of TTeacher;
  public
    constructor create;
    destructor destroy; override;
    procedure Add8(s1, s2 : string);
    procedure Add9(s1, s2 : string);
    procedure Add10(s1, s2 : string);
    procedure Add11(s1, s2 : string);
    procedure Add12(s1, s2 : string);
  end;

implementation

{ TManagers }

procedure TManagers.Add10(s1, s2: string);
var
  sFirst, sSecond, sCode, sName, sSurname : string;
  iPos : integer;
begin
  sFirst := s1;
  sSecond := s2;

  iPos := pos(#9, sFirst);
  sCode := copy(sFirst, 1, iPos-1);
  Delete(sFirst, 1, iPos);

  iPos := pos(#9, sFirst);
  sName := copy(sFirst, 1, iPos-1);
  Delete(sFirst, 1, iPos);

  sSurname := sFirst;

  fGrade10[1] := TTeacher.create(sCode, sName, sSurname);

  iPos := pos(#9, sSecond);
  sCode := copy(sSecond, 1, iPos-1);
  Delete(sSecond, 1, iPos);

  iPos := pos(#9, sSecond);
  sName := copy(sSecond, 1, iPos-1);
  Delete(sSecond, 1, iPos);

  sSurname := sSecond;

  fGrade10[2] := TTeacher.create(sCode, sName, sSurname);
end;

procedure TManagers.Add11(s1, s2: string);
var
  sFirst, sSecond, sCode, sName, sSurname : string;
  iPos : integer;
begin
  sFirst := s1;
  sSecond := s2;

  iPos := pos(#9, sFirst);
  sCode := copy(sFirst, 1, iPos-1);
  Delete(sFirst, 1, iPos);

  iPos := pos(#9, sFirst);
  sName := copy(sFirst, 1, iPos-1);
  Delete(sFirst, 1, iPos);

  sSurname := sFirst;

  fGrade11[1] := TTeacher.create(sCode, sName, sSurname);

  iPos := pos(#9, sSecond);
  sCode := copy(sSecond, 1, iPos-1);
  Delete(sSecond, 1, iPos);

  iPos := pos(#9, sSecond);
  sName := copy(sSecond, 1, iPos-1);
  Delete(sSecond, 1, iPos);

  sSurname := sSecond;

  fGrade11[2] := TTeacher.create(sCode, sName, sSurname);
end;

procedure TManagers.Add12(s1, s2: string);
var
  sFirst, sSecond, sCode, sName, sSurname : string;
  iPos : integer;
begin
  sFirst := s1;
  sSecond := s2;

  iPos := pos(#9, sFirst);
  sCode := copy(sFirst, 1, iPos-1);
  Delete(sFirst, 1, iPos);

  iPos := pos(#9, sFirst);
  sName := copy(sFirst, 1, iPos-1);
  Delete(sFirst, 1, iPos);

  sSurname := sFirst;

  fGrade12[1] := TTeacher.create(sCode, sName, sSurname);

  iPos := pos(#9, sSecond);
  sCode := copy(sSecond, 1, iPos-1);
  Delete(sSecond, 1, iPos);

  iPos := pos(#9, sSecond);
  sName := copy(sSecond, 1, iPos-1);
  Delete(sSecond, 1, iPos);

  sSurname := sSecond;

  fGrade12[2] := TTeacher.create(sCode, sName, sSurname);
end;

procedure TManagers.Add8(s1, s2: string);
var
  sFirst, sSecond, sCode, sName, sSurname : string;
  iPos : integer;
begin
  sFirst := s1;
  sSecond := s2;

  iPos := pos(#9, sFirst);
  sCode := copy(sFirst, 1, iPos-1);
  Delete(sFirst, 1, iPos);

  iPos := pos(#9, sFirst);
  sName := copy(sFirst, 1, iPos-1);
  Delete(sFirst, 1, iPos);

  sSurname := sFirst;

  fGrade8[1] := TTeacher.create(sCode, sName, sSurname);

  iPos := pos(#9, sSecond);
  sCode := copy(sSecond, 1, iPos-1);
  Delete(sSecond, 1, iPos);

  iPos := pos(#9, sSecond);
  sName := copy(sSecond, 1, iPos-1);
  Delete(sSecond, 1, iPos);

  sSurname := sSecond;

  fGrade8[2] := TTeacher.create(sCode, sName, sSurname);
end;

procedure TManagers.Add9(s1, s2: string);
var
  sFirst, sSecond, sCode, sName, sSurname : string;
  iPos : integer;
begin
  sFirst := s1;
  sSecond := s2;

  iPos := pos(#9, sFirst);
  sCode := copy(sFirst, 1, iPos-1);
  Delete(sFirst, 1, iPos);

  iPos := pos(#9, sFirst);
  sName := copy(sFirst, 1, iPos-1);
  Delete(sFirst, 1, iPos);

  sSurname := sFirst;

  fGrade9[1] := TTeacher.create(sCode, sName, sSurname);

  iPos := pos(#9, sSecond);
  sCode := copy(sSecond, 1, iPos-1);
  Delete(sSecond, 1, iPos);

  iPos := pos(#9, sSecond);
  sName := copy(sSecond, 1, iPos-1);
  Delete(sSecond, 1, iPos);

  sSurname := sSecond;

  fGrade9[2] := TTeacher.create(sCode, sName, sSurname);
end;

constructor TManagers.create;
begin

end;

destructor TManagers.destroy;
begin

  inherited;
end;

end.
