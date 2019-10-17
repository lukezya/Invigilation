unit Start_u;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, pngimage, ExtCtrls, Inifiles;

type
  TForm1 = class(TForm)
    imgLogo: TImage;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;
  bSplash : boolean;
  Inifile : TInifile;

implementation

{$R *.dfm}
//splash screen
initialization

Inifile := TInifile.Create(ChangeFileExt(Application.ExeName, '.ini'));
with Inifile do
  try
    bSplash := ReadBool('ShowSplash', 'LastChoice', True);
  finally
    Free;
end;

if bSplash then
  begin
    Form1 := TForm1.Create(nil);
    Form1.Show;
    Form1.Update;
  end;

end.
