unit clsEvent;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, clsMeeting;

type
  TEvent = class
  private
    fCount : integer;
    fArrMeetings : array of TMeeting;
  public
    constructor create;
    destructor destroy; override;
    procedure AddMeeting(date, event, time : string);
    function getMeeting(toString : string):TMeeting; overload;
    function getMeeting(date, nothing : string) : TMeeting; overload;
    function getGet(iNo : integer):TMeeting;
    function allmeetings(date:string) : string;
  end;

implementation

{ TEvent }

procedure TEvent.AddMeeting(date, event, time: string);
var
  iNo : integer;
begin
  inc(fCount);
  SetLength(fArrMeetings, fCount);
  iNo := fCount-1;
  fArrMeetings[iNo] := TMeeting.create(date, event, time);
end;

function TEvent.allmeetings(date: string): string;
var
  iLoop : integer;
  sDate, sFinal : string;
begin
  //finds all meetings on that date
  sFinal := '';
  for iLoop := 0 to fCount-1 do
    begin
      sDate := fArrMeetings[iLoop].getDate;
      if sDate = date then
        begin
          sFinal := sFinal + inttostr(iLoop) + ' ';
        end;
    end;
  result := sFinal;
end;

constructor TEvent.create;
begin
  fCount := 0;
end;

destructor TEvent.destroy;
begin

  inherited;
end;

function TEvent.getMeeting(toString: string): TMeeting;
var
  iLoop : integer;
  tempString : string;
  bFound : boolean;
begin
  bFound := false;
  tempString := '';
  for iLoop := 0 to fCount do
    begin
      tempString := fArrMeetings[iLoop].toString;
      if tempString = toString then
        begin
          bFound := true;
          result := fArrMeetings[iLoop];
          break;
        end;
    end;

  if bFound = false then
    begin
      result := nil;
      ShowMessage('Event not found');
      Exit;
    end;

end;

function TEvent.getGet(iNo: integer): TMeeting;
begin
  result := fArrMeetings[iNo];
end;

function TEvent.getMeeting(date, nothing: string): TMeeting;
var
  iLoop : integer;
  tempDate : string;
begin
  tempDate := '';
  for iLoop := 0 to fCount do
    begin
      tempDate := fArrMeetings[iLoop].getDate;
      if tempDate = date then
        begin
          result := fArrMeetings[iLoop];
          break;
        end;
    end;
end;

end.
 