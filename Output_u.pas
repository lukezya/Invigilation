unit Output_u;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ComCtrls, ExtCtrls, Spin, FrameFrame, FrameTeach,
  Buttons;

type
  TForm4 = class(TForm)
    lblDateExam: TLabel;
    lblExamTimetable: TLabel;
    lblExamGr8: TLabel;
    lblExamGr9: TLabel;
    lblExamGr10: TLabel;
    lblExamGr11: TLabel;
    lblExamGr12: TLabel;
    lblExamSession1: TLabel;
    lblExamSession2: TLabel;
    lblInfoTitle: TLabel;
    lblInfoGradeTitle: TLabel;
    lblInfoSessionTitle: TLabel;
    lblInfoExamTitle: TLabel;
    lblInfoDurationTitle: TLabel;
    lblInfoLearnersTitle: TLabel;
    lblInfoInvigilatorsTitle: TLabel;
    shpInfoGrade: TShape;
    shpInfoSession: TShape;
    shpInfoLearners: TShape;
    shpInfoInvigilators: TShape;
    shpInfoExam: TShape;
    shpInfoDuration: TShape;
    lblInfoLearners: TLabel;
    lblInfoInvigilators: TLabel;
    lblInfoGrade: TLabel;
    lblInfoSession: TLabel;
    lblInfoDuration: TLabel;
    lblExam81: TLabel;
    lblExam82: TLabel;
    lblExam91: TLabel;
    lblExam92: TLabel;
    lblExamGr101: TLabel;
    lblExamGr102: TLabel;
    lblExamGr111: TLabel;
    lblExamGr112: TLabel;
    lblExamGr121: TLabel;
    lblExamGr122: TLabel;
    cbxExamDate: TComboBox;
    Timer1: TTimer;
    lblSubTitle: TLabel;
    lblSubGrade: TLabel;
    lblSubSubject: TLabel;
    sedSub: TSpinEdit;
    cbxSub: TComboBox;
    lbxSub: TListBox;
    hdrTeachers: THeader;
    lbxNotes: TListBox;
    hdrDates: THeader;
    lblNotesTitle: TLabel;
    lblRandomRollTitle: TLabel;
    lblRandomHours: TLabel;
    Shape1: TShape;
    lblRandomTeacher: TLabel;
    radInvigilators: TRadioButton;
    radMatric: TRadioButton;
    radAll: TRadioButton;
    btnROLL: TButton;
    edtRandomHours: TEdit;
    lblInvigilationTitle: TLabel;
    lbxAvailable: TListBox;
    hdrInvigilators: THeader;
    hdrUnavailable: THeader;
    hdrMatric: THeader;
    lbxUnavailable: TListBox;
    lbxMatric: TListBox;
    Frame21: TFrame2;
    btnExit: TButton;
    shpExamInput: TShape;
    shpExamOutput: TShape;
    shpExamTitle: TShape;
    shpSubOutput: TShape;
    shpNotesOut: TShape;
    shpRollIn: TShape;
    shpIGOutput: TShape;
    shpSubTitle: TShape;
    shpSubInput: TShape;
    shpNotesTitle: TShape;
    shpRollTitle: TShape;
    lblInfoExam: TLabel;
    shpIGTitle: TShape;
    redHelp: TRichEdit;
    btnSummary: TButton;
    btnHelp: TBitBtn;
    procedure cbxExamDateChange(Sender: TObject);
    procedure lblExam81Click(Sender: TObject);
    procedure lblExam82Click(Sender: TObject);
    procedure lblExam91Click(Sender: TObject);
    procedure lblExamGr101Click(Sender: TObject);
    procedure lblExamGr111Click(Sender: TObject);
    procedure lblExamGr121Click(Sender: TObject);
    procedure lblExam92Click(Sender: TObject);
    procedure lblExamGr102Click(Sender: TObject);
    procedure lblExamGr112Click(Sender: TObject);
    procedure lblExamGr122Click(Sender: TObject);
    procedure sedSubChange(Sender: TObject);
    procedure cbxSubChange(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure btnExitClick(Sender: TObject);
    procedure Timer1Timer(Sender: TObject);
    procedure btnROLLClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure btnSummaryClick(Sender: TObject);
    procedure btnHelpClick(Sender: TObject);
  private
    //helper methods
    procedure getExam(iGrade : integer; lab, abb : Tlabel);
    procedure getInfo(iGra, iSession : integer; the : TLabel);
    procedure getInfo2(iGra, iSession : integer; the : TLabel);
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form4: TForm4;

implementation

uses Input_u, Summary_u, Help_u;

{$R *.dfm}

procedure TForm4.cbxExamDateChange(Sender: TObject);
var
  sDate, sNotes, sArray, sAdd, sUnavailable : string;
  iPos, iArray, iDo, k, j, m : integer;
begin
  //when date changes, change the labels of each grade to the paper they
  //write that day
  sDate := cbxExamDate.Text;
  getExam(8, lblExam81, lblExam82);
  getExam(9, lblExam91, lblExam92);
  getExam(10, lblExamGr101, lblExamGr102);
  getExam(11, lblExamGr111, lblExamGr112);
  getExam(12, lblExamGr121, lblExamGr122);
  //list of events on that day
  iDo := 0;

  lbxNotes.Clear;
  lbxUnavailable.Clear;
  sNotes := Form3.Event.allmeetings(sDate);
  for k := 1 to length(sNotes) do
    begin
      if sNotes[k] = ' ' then inc(iDo);
    end;
  for j := 1 to iDo do
    begin
      iPos := pos(' ', sNotes);
      sArray := copy(sNotes, 1, iPos-1);
      iArray := strtoint(sArray);
      sAdd := Form3.Event.getGet(iArray).toString;
      for m := 0 to Form3.Event.getGet(iArray).getCount-1 do
        begin
          sUnavailable := Form3.Event.getGet(iarray).getTeacher(m).toString;
          lbxUnavailable.Items.Add(sUnavailable);
        end;
      lbxNotes.Items.Add(sAdd);
      Delete(sNotes, 1, iPos);
    end;
end;

procedure TForm4.getExam(iGrade: integer; lab, abb: Tlabel);
var
  iLoop, iOn : integer;
  sDate, sCheck : string;
  bFound : boolean;
begin
  //session1
  sDate := cbxExamDate.Text;
  bFound := false;
  iOn := iGrade;
  for iLoop := 0 to Form3.Timetable.getGrade(iOn).getS1Count-1 do
    begin
      sCheck := Form3.Timetable.getGrade(iOn).gets1Exam(iLoop).getDate;
      if sDate = sCheck then
        begin
          bFound := true;
          lab.Caption := Form3.Timetable.getGrade(iOn).gets1Exam(iLoop).getExam;
          break;
        end;
    end;
  if bFound = false
    then lab.Caption := '';
  //session2
  bFound := false;
  iOn := iGrade;
  for iLoop := 0 to Form3.Timetable.getGrade(iOn).getS2Count-1 do
    begin
      sCheck := Form3.Timetable.getGrade(iOn).gets2Exam(iLoop).getDate;
      if sDate = sCheck then
        begin
          bFound := true;
          abb.Caption := Form3.Timetable.getGrade(iOn).gets2Exam(iLoop).getExam;
          break;
        end;
    end;
  if bFound = false
    then abb.Caption := '';
end;

procedure TForm4.getInfo(iGra, iSession: integer; the: TLabel);
var
  iLoop, iGrade : integer;
  sExam, sGot : string;
begin
  //get all info of exam cliced
  iGrade := iGra;
  sGot := the.Caption;
  for iLoop := 0 to Form3.Timetable.getGrade(iGrade).getS1Count-1 do
    begin
      sExam := Form3.Timetable.getGrade(iGrade).getS1Exam(iLoop).getExam;
      if sGot = sExam then
        begin
          lblInfoGrade.Caption := inttostr(iGrade);
          lblInfoSession.Caption := inttostr(iSession);
          lblInfoExam.Caption := sGot;
          lblInfoDuration.Caption := Form3.Timetable.getGrade(iGrade).getS1Exam(iLoop).getDuration;
          lblInfoLearners.Caption := inttostr(Form3.Timetable.getGrade(iGrade).getS1Exam(iLoop).getLearners);
          lblInfoInvigilators.Caption := inttostr(Form3.Timetable.getGrade(iGrade).getS1Exam(iLoop).getInvigilators);
          break;
        end;
    end;
end;

procedure TForm4.getInfo2(iGra, iSession: integer; the: TLabel);
var
  iLoop, iGrade : integer;
  sExam, sGot : string;
begin
  //get info of second session
  iGrade := iGra;
  sGot := the.Caption;
  for iLoop := 0 to Form3.Timetable.getGrade(iGrade).getS2Count-1 do
    begin
      sExam := Form3.Timetable.getGrade(iGrade).getS2Exam(iLoop).getExam;
      if sGot = sExam then
        begin
          lblInfoGrade.Caption := inttostr(iGrade);
          lblInfoSession.Caption := inttostr(iSession);
          lblInfoExam.Caption := sGot;
          lblInfoDuration.Caption := Form3.Timetable.getGrade(iGrade).getS2Exam(iLoop).getDuration;
          lblInfoLearners.Caption := inttostr(Form3.Timetable.getGrade(iGrade).getS2Exam(iLoop).getLearners);
          lblInfoInvigilators.Caption := inttostr(Form3.Timetable.getGrade(iGrade).getS2Exam(iLoop).getInvigilators);
          break;
        end;
    end;

end;
//get info when clicked
procedure TForm4.lblExam81Click(Sender: TObject);
begin
  getInfo(8, 1, lblExam81);
end;

procedure TForm4.lblExam82Click(Sender: TObject);
begin
  getInfo2(8, 2, lblExam82);
end;

procedure TForm4.lblExam91Click(Sender: TObject);
begin
  getInfo(9, 1, lblExam91);
end;

procedure TForm4.lblExamGr101Click(Sender: TObject);
begin
  getInfo(10, 1, lblExamGr101);
end;

procedure TForm4.lblExamGr111Click(Sender: TObject);
begin
  getInfo(11, 1, lblExamGr111);
end;

procedure TForm4.lblExamGr121Click(Sender: TObject);
begin
  getInfo(12, 1, lblExamGr121);
end;

procedure TForm4.lblExam92Click(Sender: TObject);
begin
  getInfo2(9, 2, lblExam92);
end;

procedure TForm4.lblExamGr102Click(Sender: TObject);
begin
  getInfo2(10, 2, lblExamGr102);
end;

procedure TForm4.lblExamGr112Click(Sender: TObject);
begin
  getInfo2(11, 2, lblExamGr112);
end;

procedure TForm4.lblExamGr122Click(Sender: TObject);
begin
  getInfo2(12, 2, lblExamGr122);
end;

procedure TForm4.sedSubChange(Sender: TObject);
var
  iR, j : integer;
  sAdd : string;
begin
  //when grade changes, list the subjects into combobox of that grade
  iR := sedSub.Value;
  cbxSub.Clear;
  for j := 0 to Form3.Subjects.getHead(iR).getSubjectCount-1 do
    begin
      sAdd := Form3.Subjects.getHead(iR).getSubjects(j).getSubject;
      cbxSub.Items.Add(sAdd);
    end;

end;

procedure TForm4.cbxSubChange(Sender: TObject);
var
  sSubject, sShow : string;
  iGrade, iLoop : integer;
begin
  //when subject changes, list the teachers for the subject
  iGrade := sedSub.Value;
  sSubject := cbxSub.Text;
  lbxSub.Clear;
  for iLoop := 0 to Form3.Subjects.getHead(iGrade).getSubjects(sSubject).getTeacherCount-1 do
    begin
      sShow := Form3.Subjects.getHead(iGrade).getSubjects(sSubject).getTeacher(iLoop).toString;
      lbxSub.Items.Add(sShow);
    end

end;

procedure TForm4.FormShow(Sender: TObject);
var
  iMake, iCounter, iTop, iLeft : integer;
  bInter : boolean;
  sCode, sName, sPath : string;
  rHours : real;
begin
  //when form is shown, create the frames of all invigilators
  bInter := false;
  iCounter := 0;
  iTop := 0;
  iLeft := 0;
  for iMake := 0 to Form3.Pictures.getPicCount-1 do
    begin
      inc(iCounter);
      sPath := Form3.Pictures.getPic(iMake).getPath;
      sCode := Form3.Pictures.getPic(iMake).getTeacher.getCode;
      sName := Form3.Pictures.getPic(iMake).getTeacher.getName + ' ' +
               Form3.Pictures.getPic(iMake).getTeacher.getSurname;
      rHours := Form3.Pictures.getPic(iMake).getHoursInvigilated;
      SetLength(Form4.Frame21.Frames, iCounter);
      Form4.Frame21.Frames[iMake] := TFrame1.Create(Frame21);
      with Form4.Frame21.Frames[iMake] do
        begin
          Parent := Frame21;
          Name := 'Teacher' + inttostr(iCounter);
          Top := iTop;
          Left := iLeft;
          lblCode.Caption := sCode;
          lblTeacher.Caption := sName;
          try
            imgPic.Picture.LoadFromFile(sPath);
          except
            try
              imgPic.Picture.LoadFromFile(Form3.Pictures.getPath + '\Profile.jpg');
            except
              ShowMessage('Path of pictures in folder is incorrect.');
              Exit;
            end;
          end;
          lblHours.Caption := floattostr(rHours);
          imgPic.Proportional := true;
          imgPic.Stretch := true;
        end;
      //321 129
      if bInter = false
        then bInter := true
        else bInter := false;
      if iLeft = 0
        then iLeft := 276
        else iLeft := 0;
      if bInter = false
        then iTop := iTop + 129;

    end;
  //update invigilators number of hours inviiglated every now and then
  timer1.Enabled := true;
end;

procedure TForm4.btnExitClick(Sender: TObject);
begin
  //Exit application
  Application.Terminate;
end;

procedure TForm4.Timer1Timer(Sender: TObject);
var
  iLoop, j, k, l : integer;
  rHours : real;
  sString, sPic, sAdd : string;
begin
  //when timer is running, update lsit of inviiglators or matric teachers for the number of hours they did
  for iLoop := 0 to Form3.Pictures.getPicCount-1 do
    begin
      rHours := strtofloat(Frame21.Frames[iLoop].lblHours.Caption);
      Form3.Pictures.getPic(iLoop).setHoursInvigilated(rHours);
    end;

  for j := 0 to lbxMatric.Items.Count-1 do
    begin
      sString := lbxMatric.Items[j];
      sString := copy(sString, 1, length(sString)-2);
      for k := 0 to Form3.Pictures.getPicCount-1 do
        begin
          sPic := Form3.Pictures.getPic(k).getTeacher.toString;
          if sString = sPic then
            begin
              lbxMatric.ItemIndex := j;
              lbxMatric.DeleteSelected;
              sAdd := Form3.Pictures.getPic(k).getTeacher.toString + ' ' +
                    floattostr(Form3.Pictures.getPic(k).getHoursInvigilated);
              lbxMatric.Items.Add(sAdd)
            end;
        end;
    end;
  for l := 0 to lbxAvailable.Items.Count-1 do
    begin
      sString := lbxAvailable.Items[l];
      sString := copy(sString, 1, length(sString)-2);
      for k := 0 to Form3.Pictures.getPicCount-1 do
        begin
          sPic := Form3.Pictures.getPic(k).getTeacher.toString;
          if sString = sPic then
            begin
              lbxAvailable.ItemIndex := l;
              lbxAvailable.DeleteSelected;
              sAdd := Form3.Pictures.getPic(k).getTeacher.toString + ' ' +
                    floattostr(Form3.Pictures.getPic(k).getHoursInvigilated);
              lbxAvailable.Items.Add(sAdd)
            end;
        end;
    end;

  for l := 0 to lbxUnavailable.Items.Count-1 do
    begin
      sString := lbxUnavailable.Items[l];
      sString := copy(sString, 1, length(sString)-2);
      for k := 0 to Form3.Pictures.getPicCount-1 do
        begin
          sPic := Form3.Pictures.getPic(k).getTeacher.toString;
          if sString = sPic then
            begin
              lbxUnavailable.ItemIndex := l;
              lbxUnavailable.DeleteSelected;
              sAdd := Form3.Pictures.getPic(k).getTeacher.toString + ' ' +
                    floattostr(Form3.Pictures.getPic(k).getHoursInvigilated);
              lbxUnavailable.Items.Add(sAdd)
            end;
        end;
    end;
  //put focus bac on top of listbox to look as if nothing happened
  lbxAvailable.ItemIndex := 0;
  lbxMatric.ItemIndex := 0;
  lbxAvailable.Selected[0] := false;
  lbxMatric.Selected[0] := false;

end;

procedure TForm4.btnROLLClick(Sender: TObject);
var
  rHours, rCheck : real;
  sRandom, sTeacher, sChosen : string;
  arrRandom : array of string;
  i, iCounter, iSpace, k, iPos, m, iChosen : integer;
begin
  //for button random teacher roll
  try
    rHours := strtofloat(edtRandomHours.Text);
  except
    ShowMessage('A real value must be entered for Hours Invigilated');
    Exit;
  end;
  iCounter := 0;
  rCheck := 0.0;
  //when all is checked
  if radAll.Checked then
    begin
      for i := 0 to lbxAvailable.Items.Count-1 do
        begin
          sRandom := lbxAvailable.Items[i];
          iSpace := 0;
          for k := 1 to length(sRandom) do
            begin
              if sRandom[k] = ' ' then
                inc(iSpace);
            end;
          sTeacher := '';
          for m := 1 to iSpace do
            begin
              iPos := pos(' ', sRandom);
              sTeacher := sTeacher + copy(sRandom, 1, iPos);
              Delete(sRandom, 1, iPos);
            end;
          try
            rcheck := strtofloat(sRandom);
          except
            ShowMessage('A conversion error occurred');
            Exit;
          end;

          if rCheck = rHours then
            begin
              inc(iCOunter);
              SetLength(arrRandom, iCounter);
              arrRandom[iCounter-1] := sTeacher;
            end;
        end;

      for i := 0 to lbxMatric.Items.Count-1 do
        begin
          sRandom := lbxMatric.Items[i];
          iSpace := 0;
          for k := 1 to length(sRandom) do
            begin
              if sRandom[k] = ' ' then
                inc(iSpace);
            end;
          sTeacher := '';
          for m := 1 to iSpace do
            begin
              iPos := pos(' ', sRandom);
              sTeacher := sTeacher + copy(sRandom, 1, iPos);
              Delete(sRandom, 1, iPos);
            end;
          try
            rcheck := strtofloat(sRandom);
          except
            ShowMessage('A conversion error occurred');
            Exit;
          end;

          if rCheck = rHours then
            begin
              inc(iCOunter);
              SetLength(arrRandom, iCounter);
              arrRandom[iCounter-1] := sTeacher;
            end;
        end;
    end;
  //when the rest of the invigilators are checked
  if radInvigilators.Checked then
    begin
      for i := 0 to lbxAvailable.Items.Count-1 do
        begin
          sRandom := lbxAvailable.Items[i];
          iSpace := 0;
          for k := 1 to length(sRandom) do
            begin
              if sRandom[k] = ' ' then
                inc(iSpace);
            end;
          sTeacher := '';
          for m := 1 to iSpace do
            begin
              iPos := pos(' ', sRandom);
              sTeacher := sTeacher + copy(sRandom, 1, iPos);
              Delete(sRandom, 1, iPos);
            end;
          try
            rcheck := strtofloat(sRandom);
          except
            ShowMessage('A conversion error occurred');
            Exit;
          end;

          if rCheck = rHours then
            begin
              inc(iCOunter);
              SetLength(arrRandom, iCounter);
              arrRandom[iCounter-1] := sTeacher;
            end;
        end;
    end;
  //when matric teachers are checed
  if radMatric.Checked then
    begin
      for i := 0 to lbxMatric.Items.Count-1 do
        begin
          sRandom := lbxMatric.Items[i];
          iSpace := 0;
          for k := 1 to length(sRandom) do
            begin
              if sRandom[k] = ' ' then
                inc(iSpace);
            end;
          sTeacher := '';
          for m := 1 to iSpace do
            begin
              iPos := pos(' ', sRandom);
              sTeacher := sTeacher + copy(sRandom, 1, iPos);
              Delete(sRandom, 1, iPos);
            end;
          try
            rcheck := strtofloat(sRandom);
          except
            ShowMessage('A conversion error occurred');
            Exit;
          end;

          if rCheck = rHours then
            begin
              inc(iCOunter);
              SetLength(arrRandom, iCounter);
              arrRandom[iCounter-1] := sTeacher;
            end;
        end;
    end;

//arrRandom ready
  iChosen := Random(iCounter);
  sChosen := arrRandom[iChosen];
  lblRandomTeacher.Caption := sChosen;

end;

procedure TForm4.FormCreate(Sender: TObject);
const
  clOrangeRed = TColor($0024FF);
begin
  //change all colours to suit graphics
  randomize;
  Form4.Color := clMaroon;
  shpExamTitle.Brush.Color := clOrangeRed;
  shpSubTitle.Brush.Color := clOrangeRed;
  shpNotesTitle.Brush.Color := clOrangeRed;
  shpRollTitle.Brush.Color := clOrangeRed;
  shpIGTitle.Brush.Color := clOrangeRed;
  lblInvigilationTitle.Color := clOrangeRed;
  lblExamTimetable.Color := clOrangeRed;
  lblDateExam.Color := clOrangeRed;
  lblSubTitle.Color := clOrangeRed;
  lblRandomRollTitle.Color := clOrangeRed;
  lblNotesTitle.Color := clOrangeRed;
  lblExamSession1.Color := clwhite;
  lblExamSession2.Color := clWhite;
  lblExam81.Color := clWhite; 
  lblExam82.Color := clWhite;
  lblExam91.Color := clWhite;
  lblExam92.Color := clWhite;
  lblExamGr101.Color := clWhite;
  lblExamGr102.Color := clWhite;
  lblExamGr111.Color := clWhite;
  lblExamGr112.Color := clWhite;
  lblExamGr121.Color := clWhite;   
  lblExamGr122.Color := clWhite;

  lblInfoTitle.Color := clYellow;
  lblInfoGradeTitle.Color := clYellow;
  lblInfoSessionTitle.Color := clYellow;
  lblInfoExamTitle.Color := clYellow;
  lblInfoDurationTitle.Color := clYellow;
  lblInfoLearnersTitle.Color := clYellow;
  lblInfoInvigilatorsTitle.Color := clYellow;

  lblSubGrade.Color := clwhite;
  lblSubSubject.Color := clwhite;

  lblRandomHours.Color := clWhite;
  radAll.Color := clwhite;
  radInvigilators.Color := clwhite;
  radMatric.Color := clwhite;
  lblRandomTeacher.Color := clwhite;
  Frame21.Color := clwhite;
  lblExamGr8.Color := clwhite;
  lblExamGr9.Color := clwhite;
  lblExamGr10.Color := clwhite;
  lblExamGr11.Color := clwhite;
  lblExamGr12.Color := clwhite;

  lblInfoGrade.Color := clwhite;
  lblinfosession.Color := clwhite;
  lblInfoExam.Color := clwhite;
  lblInfoDuration.Color := clWhite;
  lblInfoLearners.Color := clwhite;
  lblInfoInvigilators.Color := clwhite;

  btnHelp.Caption := '';
end;

procedure TForm4.btnSummaryClick(Sender: TObject);
begin
  //show summary form
  Form6.Show;
end;

procedure TForm4.btnHelpClick(Sender: TObject);
begin
  Form7.show;
end;

end.
