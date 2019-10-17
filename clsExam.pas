unit clsExam;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs;

type
  TExam = class
  private
    fDuration : string;
    fDate : string;
    fExam : string;
    fLearners : integer;
    fInvigilators: integer;
  public
    constructor create(d,date, e : string);
    destructor destroy; override;
    function getDuration : string;
    function getDate : string;
    function getExam : string;
    function getInvigilators : integer;
    procedure setInvigilators(iInvigilators : integer);
    function getLearners : integer;
    procedure setDuration(sDuration:string);
    procedure setDate(sDate:string);
    procedure setExam(sPaper:string);
    procedure setLearners(iLearners:integer);
    function toString : string;
  end;

implementation

{ TExam }

constructor TExam.create(d, date, e: string);
begin
  fDuration := d;
  fDate := date;
  fExam := e;
  fLearners := 0;
  fInvigilators := 0;
end;

destructor TExam.destroy;
begin

  inherited;
end;

function TExam.getDate: string;
begin
  result := fDate;
end;

function TExam.getDuration: string;
begin
  result := fDuration;
end;

function TExam.getExam: string;
begin
  result := fExam;
end;

function TExam.getInvigilators: integer;
begin
  result := fInvigilators;
end;

function TExam.getLearners: integer;
begin
  result := fLearners;
end;

procedure TExam.setDate(sDate: string);
begin
  fDate := sDate;
end;

procedure TExam.setDuration(sDuration: string);
begin
  fDuration := sDuration;
end;

procedure TExam.setExam(sPaper: string);
begin
  fExam := sPaper;
end;

procedure TExam.setInvigilators(iInvigilators: integer);
begin
  fInvigilators := iInvigilators;
end;

procedure TExam.setLearners(iLearners: integer);
begin
  fLearners := iLearners;
end;

function TExam.toString: string;
begin
  result := fDate + #9 + fDuration + #9 + fExam;
end;

end.
 