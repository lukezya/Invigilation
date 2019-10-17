unit Log_u;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Buttons, StdCtrls, ExtCtrls;

type
  TForm5 = class(TForm)
    lblDate: TLabel;
    lblInvigilator: TLabel;
    lblGrade: TLabel;
    lblPaper: TLabel;
    lblSession: TLabel;
    edtDate: TEdit;
    edtGrade: TEdit;
    edtPaper: TEdit;
    edtSession: TEdit;
    edtInvigilator: TEdit;
    btnAdd: TButton;
    btnClose: TBitBtn;
    Shape1: TShape;
    procedure FormCreate(Sender: TObject);
    procedure btnAddClick(Sender: TObject);
    procedure btnCloseClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form5: TForm5;

implementation

uses Input_u;

{$R *.dfm}

procedure TForm5.FormCreate(Sender: TObject);
const
  clOrangeRed = TColor($0024FF);
var
  TF : textfile;
  sPath : string;
begin
  //creates file and rules off to symbolise start of new day or entry
  Form5.Color := clOrangeRed;
  sPath := getcurrentdir() + '\Output\Log.txt';
  try
    AssignFile(TF, sPath);
  except
    ShowMessage('Log File cannot be accessed');
    CloseFile(TF);
    Exit;
  end;
  //add on
  Append(TF);
  Writeln(TF, '-------------------------------------');
  CloseFile(TF);
end;

procedure TForm5.btnAddClick(Sender: TObject);
var
  sDate, sGrade, sInvigilator, sPaper, sSession, sPath, sAdd : string;
  TF : textfile;
begin
  //get all variables and put into one sAdd
  sPath := Form3.Pictures.getPath;
  sPath := copy(sPath, 1, length(sPath)-8);
  sPath := sPath + 'Output\Log.txt';
  sDate := edtDate.Text;
  sGrade := edtGrade.Text;
  sInvigilator := edtInvigilator.Text;
  sPaper := edtPaper.Text;
  sSession := edtSession.Text;
  sAdd := sDate + #9 + 'Grade ' + sGrade + ' Session' + sSession + #13 +
          sPaper + #9 + sInvigilator;
  try
    AssignFile(TF, sPath);
    Append(TF);
  except
    ShowMessage('Could not access Log.txt');
    CloseFile(TF);
    Exit;
  end;
  //write to textfile
  Writeln(TF, sAdd);

  CloseFile(TF);



end;

procedure TForm5.btnCloseClick(Sender: TObject);
begin
  //closes form
  Form5.Close;
end;

end.
