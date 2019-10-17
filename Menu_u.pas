unit Menu_u;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ColorButton, pngimage, ExtCtrls, Inifiles;

type
  TForm2 = class(TForm)
    pnlMenu: TPanel;
    imgLogo: TImage;
    btnBegin: TColorButton;
    btnHelp: TColorButton;
    btnExit: TColorButton;
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure btnExitClick(Sender: TObject);
    procedure btnBeginClick(Sender: TObject);
    procedure btnHelpClick(Sender: TObject);
  private
    Inifile : TInifile;
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form2: TForm2;

implementation

uses Start_u, Input_u, Help_u;

{$R *.dfm}
//splash screen
procedure TForm2.FormCreate(Sender: TObject);
var
  bSplash : boolean;
begin
  Inifile := TInifile.Create(ChangeFileExt(Application.ExeName, '.ini'));
  with Inifile do
    try
      bSplash := ReadBool('Splash', 'LastChoice', True);
      if bSplash then
        begin
          Sleep(2500);
          Form1.Close;
          Form1.Release;
        end;
    finally
      free;
  end;
end;

procedure TForm2.FormClose(Sender: TObject; var Action: TCloseAction);
var
  bSplash : boolean;
begin
  Inifile := TInifile.Create(ChangeFileExt(Application.ExeName, '.ini'));
  with Inifile do
    try
      WriteBool('ShowSplash', 'LastChoice', bSplash);
    finally
      Free;
  end;
end;

procedure TForm2.btnExitClick(Sender: TObject);
begin
//exit application
  try
    Form2.Close;
    Application.Terminate;
  except
    Application.Terminate;
  end;
end;

procedure TForm2.btnBeginClick(Sender: TObject);
begin
  //start invigilation
  Form2.Hide;
  Form3.Show;
end;

procedure TForm2.btnHelpClick(Sender: TObject);
begin
  //show form help
  Form7.Show;
end;

end.
