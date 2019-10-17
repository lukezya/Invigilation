unit FrameFrame;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms, 
  Dialogs, FrameTeach;

type
  TFrame2 = class(TFrame)
  private
    { Private declarations }
  public
    //array of other frame - frame on frame
    Frames : array of TFrame1;
    { Public declarations }
  end;

implementation

{$R *.dfm}

end.
