program Invigilation;

uses
  Forms,
  Start_u in 'Start_u.pas' {Form1},
  Menu_u in 'Menu_u.pas' {Form2},
  Input_u in 'Input_u.pas' {Form3},
  clsTeacher in 'clsTeacher.pas',
  clsMeeting in 'clsMeeting.pas',
  clsEvent in 'clsEvent.pas',
  clsExam in 'clsExam.pas',
  clsGrade in 'clsGrade.pas',
  clsTimetable in 'clsTimetable.pas',
  clsPic in 'clsPic.pas',
  clsPictures in 'clsPictures.pas',
  clsInvigilators in 'clsInvigilators.pas',
  clsManagers in 'clsManagers.pas',
  clsSubjects in 'clsSubjects.pas',
  clsHead in 'clsHead.pas',
  clsTeach in 'clsTeach.pas',
  Output_u in 'Output_u.pas' {Form4},
  FrameTeach in 'FrameTeach.pas' {Frame1: TFrame},
  FrameFrame in 'FrameFrame.pas' {Frame2: TFrame},
  Log_u in 'Log_u.pas' {Form5},
  Summary_u in 'Summary_u.pas' {Form6},
  Help_u in 'Help_u.pas' {Form7};

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(TForm2, Form2);
  Application.CreateForm(TForm1, Form1);
  Application.CreateForm(TForm3, Form3);
  Application.CreateForm(TForm4, Form4);
  Application.CreateForm(TForm5, Form5);
  Application.CreateForm(TForm6, Form6);
  Application.CreateForm(TForm7, Form7);
  Application.Run;
end.
