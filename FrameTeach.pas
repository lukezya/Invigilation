unit FrameTeach;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms, 
  Dialogs, StdCtrls, ExtCtrls, pngimage;

type
  TFrame1 = class(TFrame)
    Shape1: TShape;
    imgPic: TImage;
    lblCode: TLabel;
    lblTeacher: TLabel;
    shpHours: TShape;
    lblHours: TLabel;
    imgDec: TImage;
    imgInc: TImage;
    edtChange: TEdit;
    procedure imgIncClick(Sender: TObject);
    procedure imgDecClick(Sender: TObject);
    procedure imgPicClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

implementation

uses Log_u;

{$R *.dfm}

procedure TFrame1.imgIncClick(Sender: TObject);
var
  rAdd, rNow : real;
begin
  //inc rHours invigilated
  try
    rNow := strtofloat(lblHours.Caption);
    rAdd := strtofloat(edtChange.Text);
  except
    ShowMessage('Cannot add on non-real values');
    Exit;
  end;
  rNow := rNow + rAdd;
  lblHours.Caption := floattostr(rNow);
end;

procedure TFrame1.imgDecClick(Sender: TObject);
var
  rMinus, rNow : real;
begin
  //decrease hours inviiglated or to dec from
  try
    rNow := strtofloat(lblHours.Caption);
    rMinus := strtofloat(edtChange.Text);
  except
    ShowMessage('Cannot subtract non-real values');
    Exit;
  end;
  rNow := rNow - rMinus;
  lblHours.Caption := floattostr(rNow);
end;

procedure TFrame1.imgPicClick(Sender: TObject);
begin
  //Log.txt
  Form5.Show;
end;

end.
