unit Input_u;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, pngimage, ComCtrls, StdCtrls, Grids, DBGrids, DB,
  ADODB, Buttons, FileCtrl, ImgList, jpeg, ExtDlgs, clsEvent, clsPictures,
  clsTimetable, Spin, clsInvigilators, clsManagers, clsTeach;

type
  TForm3 = class(TForm)
    TabSheetMenu: TPageControl;
    tshStaff: TTabSheet;
    tshExam: TTabSheet;
    tshDates: TTabSheet;
    pnlTracker: TPanel;
    imgLogo: TImage;
    shp1: TShape;
    shp4: TShape;
    shp2: TShape;
    shp5: TShape;
    shp3: TShape;
    shp6: TShape;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label9: TLabel;
    tshTeachers: TTabSheet;
    tshSubjects: TTabSheet;
    tshManagers: TTabSheet;
    lbxInvigilators: TListBox;
    lbxMatric: TListBox;
    lbxStaff: TListBox;
    edtStaffPath: TEdit;
    lblStaffPath: TLabel;
    btnStaffBrowse: TButton;
    ADOStaffQuery: TADOQuery;
    OpenDialogStaff: TOpenDialog;
    btnGetStaff: TButton;
    imgIArrow: TImage;
    img12Arrow: TImage;
    lblStaffTitle: TLabel;
    lblExamTitle: TLabel;
    btnExamBrowse: TButton;
    btnGetExam: TButton;
    lblExamPath: TLabel;
    edtExamPath: TEdit;
    ADOExamQuery: TADOQuery;
    OpenDialogExam: TOpenDialog;
    lblDatesTitle: TLabel;
    lblDatesPath: TLabel;
    edtDatesPath: TEdit;
    btnDatesBrowse: TButton;
    btnGetDates: TButton;
    Label14: TLabel;
    edtPicPath: TEdit;
    lblPathPic: TLabel;
    btnPicBrowse: TButton;
    btnGetPictures: TButton;
    lbxDates: TListBox;
    lblDatesDate: TLabel;
    lblDatesEvent: TLabel;
    lblDatesTime: TLabel;
    pnlEvent: TPanel;
    lblDatesShow: TLabel;
    lblDatesEventShow: TLabel;
    lblDatesTimeShow: TLabel;
    lbxDatesInvigilators: TListBox;
    lblDatesInvigilators: TLabel;
    lbxEventTeachers: TListBox;
    btnEventRemove: TButton;
    imgPic: TImage;
    lbxTeachersPic: TListBox;
    Label26: TLabel;
    lblManagersTitle: TLabel;
    edtM81: TEdit;
    edtM82: TEdit;
    edtM91: TEdit;
    edtM101: TEdit;
    edtM111: TEdit;
    edtM121: TEdit;
    edtM92: TEdit;
    edtM102: TEdit;
    edtM112: TEdit;
    edtM122: TEdit;
    lblManagersGrade8: TLabel;
    lblManagersGrade9: TLabel;
    lblManagersGrade10: TLabel;
    lblManagersGrade11: TLabel;
    lblManagersGrade12: TLabel;
    btnSetManagers: TButton;
    Label33: TLabel;
    lblSubPath: TLabel;
    edtSubPath: TEdit;
    btnSubBrowse: TButton;
    btnGetSubjects: TButton;
    btnStaffDone: TSpeedButton;
    btnExamDone: TSpeedButton;
    btnDatesDone: TSpeedButton;
    btnPicDone: TSpeedButton;
    btnSubjectsDone: TSpeedButton;
    btnManagersDone: TSpeedButton;
    cbxHeadGrade: TComboBox;
    lbxSubjectTeachers: TListBox;
    btnHeadAdd: TButton;
    Label36: TLabel;
    lblGradeHead: TLabel;
    imgLBack: TImage;
    img12Back: TImage;
    btnStaffRemove: TButton;
    btnStaffRefresh: TButton;
    btnStaffRefreshAll: TButton;
    btnEventAdd: TButton;
    lbxExamGrade: TListBox;
    lblExamGrade: TLabel;
    btnStaffNext: TButton;
    btnExamNext: TButton;
    btnDatesNext: TButton;
    btnPicNext: TButton;
    btnSubjectsNext: TButton;
    btnManagersNext: TButton;
    btnPicRefresh: TButton;
    OpenDialogDates: TOpenDialog;
    ADODatesQuery: TADOQuery;
    btnTeachersGet: TButton;
    lblManagersStaff: TLabel;
    btnManagersGet: TButton;
    btnManagersRefresh: TButton;
    imgM81: TImage;
    imgM91: TImage;
    imgM101: TImage;
    imgM111: TImage;
    imgM121: TImage;
    imgM82: TImage;
    imgM92: TImage;
    imgM102: TImage;
    imgM112: TImage;
    imgM122: TImage;
    lbxGradeManagers: TListBox;
    btnSubjectsGet: TButton;
    btnDatesRefresh: TButton;
    btnDatesIGet: TButton;
    btnSubjectsRefresh: TButton;
    sedExamGrade: TSpinEdit;
    btnExamLoad: TButton;
    lblNoOfLearnersTitle: TLabel;
    lblLearners8: TLabel;
    lblLearners9: TLabel;
    edtLearners8: TEdit;
    edtLearners9: TEdit;
    lblNoLearnersPath: TLabel;
    edtNoLearnersPath: TEdit;
    btnNumberBrowse: TButton;
    btnSetNumbers: TButton;
    lbxNumbersError: TListBox;
    OpenDialogLearners: TOpenDialog;
    ADOLearnersQuery: TADOQuery;
    btnRemovey: TButton;
    OpenDialogSub: TOpenDialog;
    ADOSubQuery: TADOQuery;
    btnSubLoad: TButton;
    btnProceed: TButton;
    btnExit: TButton;
    hdrStaff: THeader;
    hdrInvigilators: THeader;
    Header2: THeader;
    hdrTable: THeader;
    hdrPop: THeader;
    hdrDates: THeader;
    hdrEvent: THeader;
    hdrTheInvigilators: THeader;
    hdrHeads: THeader;
    lbxSubSubjects: TListBox;
    lbxSubTeachers: TListBox;
    hdrSubj: THeader;
    hdrTea: THeader;
    btnHeadRemove: TButton;
    btnHelp: TBitBtn;
    shpSplitter: TShape;
    procedure btnStaffBrowseClick(Sender: TObject);
    procedure btnGetStaffClick(Sender: TObject);
    procedure imgIArrowClick(Sender: TObject);
    procedure img12ArrowClick(Sender: TObject);
    procedure btnExamBrowseClick(Sender: TObject);
    procedure btnGetExamClick(Sender: TObject);
    procedure btnPicBrowseClick(Sender: TObject);
    procedure btnStaffDoneClick(Sender: TObject);
    procedure btnExamDoneClick(Sender: TObject);
    procedure btnDatesDoneClick(Sender: TObject);
    procedure btnPicDoneClick(Sender: TObject);
    procedure btnSubjectsDoneClick(Sender: TObject);
    procedure btnManagersDoneClick(Sender: TObject);
    procedure lbxTeachersPicClick(Sender: TObject);
    procedure imgLBackClick(Sender: TObject);
    procedure img12BackClick(Sender: TObject);
    procedure btnStaffRemoveClick(Sender: TObject);
    procedure btnStaffRefreshClick(Sender: TObject);
    procedure btnStaffRefreshAllClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure btnStaffNextClick(Sender: TObject);
    procedure btnExamNextClick(Sender: TObject);
    procedure btnDatesNextClick(Sender: TObject);
    procedure btnPicNextClick(Sender: TObject);
    procedure btnSubjectsNextClick(Sender: TObject);
    procedure btnManagersNextClick(Sender: TObject);
    procedure btnDatesBrowseClick(Sender: TObject);
    procedure btnGetDatesClick(Sender: TObject);
    procedure btnDatesIGetClick(Sender: TObject);
    procedure btnPicRefreshClick(Sender: TObject);
    procedure btnTeachersGetClick(Sender: TObject);
    procedure btnManagersGetClick(Sender: TObject);
    procedure btnManagersRefreshClick(Sender: TObject);
    procedure imgM81Click(Sender: TObject);
    procedure imgM91Click(Sender: TObject);
    procedure imgM101Click(Sender: TObject);
    procedure imgM111Click(Sender: TObject);
    procedure imgM121Click(Sender: TObject);
    procedure imgM82Click(Sender: TObject);
    procedure imgM92Click(Sender: TObject);
    procedure imgM102Click(Sender: TObject);
    procedure imgM112Click(Sender: TObject);
    procedure imgM122Click(Sender: TObject);
    procedure btnEventAddClick(Sender: TObject);
    procedure btnEventRemoveClick(Sender: TObject);
    procedure lbxDatesClick(Sender: TObject);
    procedure btnDatesRefreshClick(Sender: TObject);
    procedure btnGetPicturesClick(Sender: TObject);
    procedure btnSubjectsGetClick(Sender: TObject);
    procedure btnSubjectsRefreshClick(Sender: TObject);
    procedure btnExamLoadClick(Sender: TObject);
    procedure btnSetManagersClick(Sender: TObject);
    procedure btnNumberBrowseClick(Sender: TObject);
    procedure btnSetNumbersClick(Sender: TObject);
    procedure btnGetSubjectsClick(Sender: TObject);
    procedure btnSubBrowseClick(Sender: TObject);
    procedure btnSubLoadClick(Sender: TObject);
    procedure lbxSubSubjectsClick(Sender: TObject);
    procedure btnHeadAddClick(Sender: TObject);
    procedure btnHeadRemoveClick(Sender: TObject);
    procedure btnRemoveyClick(Sender: TObject);
    procedure btnExitClick(Sender: TObject);
    procedure btnProceedClick(Sender: TObject);
    procedure cbxHeadGradeChange(Sender: TObject);
    procedure btnHelpClick(Sender: TObject);
  private
    //helper method
    procedure setNoLearners(gOn : integer);
    procedure LetsProceed(p : integer);
    //procedure clearEnters(var s:string);
    { Private declarations }
  public
    Event : TEvent;
    Pictures : TPictures;
    Timetable : TTimetable;
    Invigilators : TInvigilators;
    Managers : TManagers;
    Subjects : TTeach;
    { Public declarations }
  end;

var
  Form3: TForm3;
  sLine : string;

const
  clOrangeRed = TColor($0024FF);  
  clMandarianOrange = TColor($3378E4);
  clFirebrick = TColor($23238E);

implementation

uses Output_u, Summary_u, Help_u;

{$R *.dfm}

procedure TForm3.btnStaffBrowseClick(Sender: TObject);
begin
  //get path
  if OpenDialogStaff.Execute
    then edtStaffPath.Text := OpenDialogStaff.FileName
    else Exit;

  edtStaffPath.SelStart := length(edtStaffPath.Text);
end;

procedure TForm3.btnGetStaffClick(Sender: TObject);
var
  sPath, sCode, sSurname, sName, sAdd, sCheck : string;
  j, k : integer;
begin
  //initialise
  sCode := '';
  sSurname := '';
  sName := '';
  sAdd := '';
  //get path
  sPath := edtStaffPath.Text;
  //defensive programming
  if sPath = '' then
    begin
      ShowMessage('Please enter the path for the file Staff');
      Exit;
    end;
    
  ADOStaffQuery.Close;
  ADOStaffQuery.ConnectionString := '';

  //connect to file
  try
    ADOStaffQuery.ConnectionString := 'Provider=Microsoft.ACE.OLEDB.12.0;Data Source='+
      sPath + ';Extended Properties="Excel 12.0 Xml;HDR=yes";Persist Security Info=False';
    with ADOStaffQuery do
      begin
        SQL.Clear;
        SQL.Add('SELECT *');
        SQL.Add('FROM [Staff$]');
        Open;
      end;
  except
    ShowMessage('Cannot connect to file!');    
    ADOStaffQuery.Close;
    ADOStaffQuery.ConnectionString := '';
    Exit;
  end;

  ADOStaffQuery.First;
  lbxStaff.Clear;
  while not ADOStaffQuery.Eof do
    begin
      sCode := ADOStaffQuery.FieldByName('Code').AsString;
      sSurname := ADOStaffQuery.FieldByName('Surname').AsString;
      sName := ADOStaffQuery.FieldByName('Name').AsString;
      sAdd := sCode + #9 + sSurname + #9 + sName;

      lbxStaff.Items.Add(sAdd);
      
      ADOStaffQuery.Next;
    end;
  ADOStaffQuery.Close;
  if shp1.Brush.Color <> clLime
    then shp1.Brush.Color := clOrangeRed;
  //create invigilator class
  Invigilators := TInvigilators.create;
  img12Arrow.Enabled := true;
  img12Back.Enabled := true;
  imgLBack.Enabled := true;
  imgIArrow.Enabled := true;
  btnGetStaff.Enabled := false;
  //make sure listboxes dont show teachers name twice
  lbxStaff.MultiSelect := False;
  for j := 0 to lbxInvigilators.Items.Count-1 do
    begin
      sCheck := lbxInvigilators.Items[j];
      for k := lbxStaff.Items.Count-1 downto 0 do
        begin
          if sCheck = lbxStaff.Items[k] then
            begin
              lbxStaff.ItemIndex := k;
              lbxStaff.DeleteSelected;
              break;
            end;
        end;
    end;

  for j := 0 to lbxMatric.Items.Count-1 do
    begin
      sCheck := lbxMatric.Items[j];
      for k := lbxStaff.Items.Count-1 downto 0 do
        begin
          if sCheck = lbxStaff.Items[k] then
            begin
              lbxStaff.ItemIndex := k;
              lbxStaff.DeleteSelected;
              break;
            end;
        end;
    end;
  lbxStaff.MultiSelect := true;
end;

procedure TForm3.imgIArrowClick(Sender: TObject);
var
  sCode, sName, sSurname, sLine : string;
  iPos : integer;
begin
  //add to iniviglators
  if lbxStaff.ItemIndex < 0 then
    begin
      ShowMessage('Please select a teacher to add to Invigilators');
      Exit;
    end;
  sLine := lbxStaff.Items[lbxStaff.ItemIndex];
  iPos := pos(#9, sLine);
  sCode := copy(sLine, 1, iPos-1);
  Delete(sLine, 1, iPos);

  iPos := pos(#9, sLine);
  sName := copy(sLine, 1, iPos-1);
  Delete(sLine, 1, iPos);

  sSurname := sLine;

  lbxStaff.MoveSelection(lbxInvigilators);
  Invigilators.addInvigilator(sCode, sName, sSurname);
end;

procedure TForm3.img12ArrowClick(Sender: TObject);
var
  sCode, sName, sSurname, sLine : string;
  iPos : integer;
begin
  //add to matrics teachers
  if lbxStaff.ItemIndex < 0 then
    begin
      ShowMessage('Please select a teacher to add to Grade 12 Teachers');
      Exit;
    end;
  sLine := lbxStaff.Items[lbxStaff.ItemIndex];
  iPos := pos(#9, sLine);
  sCode := copy(sLine, 1, iPos-1);
  Delete(sLine, 1, iPos);

  iPos := pos(#9, sLine);
  sName := copy(sLine, 1, iPos-1);
  Delete(sLine, 1, iPos);

  sSurname := sLine;

  lbxStaff.MoveSelection(lbxMatric);
  Invigilators.addMatric(sCode, sName, sSurname);
end;

procedure TForm3.btnExamBrowseClick(Sender: TObject);
begin
  //get path
  if OpenDialogExam.Execute
    then edtExamPath.Text := OpenDialogExam.FileName
    else Exit;

  edtExamPath.SelStart := length(edtExamPath.Text);
end;

procedure TForm3.btnGetExamClick(Sender: TObject);
var
  sPath, sDay, sDate, sAdd, sOneDate : string;
  s81, s82, s91, s92, s101, s102, s111, s112, s121, s122 : string;
  //iPos, iBreak : integer;
begin
  //initialize
  sAdd := '';
  sDay := '';
  sDate := '';
  s81 := '';
  s82 := '';
  s91 := '';
  s92 := '';
  s101 := '';
  s102 := '';
  s111 := '';
  s112 := '';
  s121 := '';
  s122 := '';
  //get path
  sPath := edtExamPath.Text;
  //defensive programming
  if sPath = '' then
    begin
      ShowMessage('Please enter a file path to get Exam Timetable');
      Exit;
    end;
  ADOExamQuery.Close;
  ADOExamQuery.ConnectionString := '';

  //connect to file
  try
    ADOExamQuery.ConnectionString := 'Provider=Microsoft.ACE.OLEDB.12.0;Data Source='+
      sPath + ';Extended Properties="Excel 12.0 Xml;HDR=yes";Persist Security Info=False';
    with ADOExamQuery do
      begin
        SQL.Clear;
        SQL.Add('SELECT *');
        SQL.Add('FROM [Exam$]');
        Open;
      end;
  except
    ShowMessage('Cannot connect to file!');
    ADOExamQuery.Close;
    ADOExamQuery.ConnectionString := '';
    Exit;
  end;
  //create timetable class
  Timetable := TTimetable.create;
  //get variables
  ADOExamQuery.First;
  while not ADOExamQuery.Eof do
    begin
      if ADOExamQuery.FieldByName('Day').AsString = 'Day'
        then break;
      ADOExamQuery.Next;
    end;
  ADOExamQuery.Next;
  //create the grades of the timetable
  Timetable.addGrade(8);
  Timetable.addGrade(9);
  Timetable.addGrade(10);
  Timetable.addGrade(11);
  Timetable.addGrade(12);
  //get exam class variables
  while not ADOExamQuery.Eof do
    begin
      //collect variables in coloumn
      sDay := ADOExamQuery.FieldByName('Day').AsString;
      sDate := ADOExamQuery.FieldByName('Date').AsString;
      sOneDate := sDate + ' ' + sDay;
      s81 := ADOExamQuery.FieldByName('Gr 8-1').AsString;
      s82 := ADOExamQuery.FieldByName('Gr 8-2').AsString;
      s91 := ADOExamQuery.FieldByName('Gr 9-1').AsString;
      s92 := ADOExamQuery.FieldByName('Gr 9-2').AsString;
      s101 := ADOExamQuery.FieldByName('Gr 10-1').AsString;
      s102 := ADOExamQuery.FieldByName('Gr 10-2').AsString;
      s111 := ADOExamQuery.FieldByName('Gr 11-1').AsString;
      s112 := ADOExamQuery.FieldByName('Gr 11-2').AsString;
      s121 := ADOExamQuery.FieldByName('Gr 12-1').AsString;
      s122 := ADOExamQuery.FieldByName('Gr 12-2').AsString;
      //break variables down
      Timetable.getGrade(8).SessionCheck(sOneDate, s81, 1);
      Timetable.getGrade(8).SessionCheck(sOneDate, s82, 2);
      Timetable.getGrade(9).SessionCheck(sOneDate, s91, 1);
      Timetable.getGrade(9).SessionCheck(sOneDate, s92, 2);
      Timetable.getGrade(10).SessionCheck(sOneDate, s101, 1);
      Timetable.getGrade(10).SessionCheck(sOneDate, s102, 2);
      Timetable.getGrade(11).SessionCheck(sOneDate, s111, 1);
      Timetable.getGrade(11).SessionCheck(sOneDate, s112, 2);
      Timetable.getGrade(12).SessionCheck(sOneDate, s121, 1);
      Timetable.getGrade(12).SessionCheck(sOneDate, s122, 2);
      //now? ------------
  {    sAdd := sDay + '#' + sDate + '#' + s81 + '#' + s82 + '#' +
              s91 + '#' + s92 + '#' + s101 + '#' + s102 + '#' + s111 + '#' +
              s112 + '#' + s121 + '#' + s122;
      redExam.Lines.Add(sAdd); }
      //-----
      ADOExamQuery.Next;
    end;
  Showmessage('The Exam Timetable has been successfully retrieved');
  if shp2.Brush.Color <> clLime
    then shp2.Brush.Color := clOrangeRed;
  sedExamGrade.Enabled := true;
  btnExamLoad.Enabled := true;
  btnGetExam.Enabled := False;
end;

procedure TForm3.btnPicBrowseClick(Sender: TObject);
var
  chosenDirectory : string;
begin
  // Ask the user to select a required directory, starting with C:
  try
    if SelectDirectory('Select directory', 'C:\', chosenDirectory)
    then edtPicPath.Text := chosenDirectory
    else Exit;
  except
    Showmessage('Sorry, your computer cannot perform this action. Please ' +
                'enter the folder path of the Pictures manually');
    Exit;
  end;

//  if OpenDialogPic.Execute
//    then edtPicPath.Text := OpenDialogPic.FileName
//    else Exit;

  edtPicPath.SelStart := length(edtPicPath.Text);
end;

procedure TForm3.btnStaffDoneClick(Sender: TObject);
begin
  //colour box green
  if btnStaffDone.Down = true
    then shp1.Brush.Color := clLime
    else shp1.Brush.Color := clOrangeRed;
end;

procedure TForm3.btnExamDoneClick(Sender: TObject);
begin
  //colour box green
  if btnExamDone.Down = true
    then shp2.Brush.Color := clLime
    else shp2.Brush.Color := clOrangeRed;
end;

procedure TForm3.btnDatesDoneClick(Sender: TObject);
begin
  //colour box green
  if btnDatesDone.Down = true
    then shp3.Brush.Color := clLime
    else shp3.Brush.Color := clOrangeRed;
end;

procedure TForm3.btnPicDoneClick(Sender: TObject);
begin
  //colour box green
  if btnPicDone.Down = true
    then shp4.Brush.Color := clLime
    else shp4.Brush.Color := clOrangeRed;
end;

procedure TForm3.btnSubjectsDoneClick(Sender: TObject);
begin
  //colour box green
  if btnSubjectsDone.Down = true
    then shp5.Brush.Color := clLime
    else shp5.Brush.Color := clOrangeRed;
end;

procedure TForm3.btnManagersDoneClick(Sender: TObject);
begin
  //colour box green
  if btnManagersDone.Down = true
    then shp6.Brush.Color := clLime
    else shp6.Brush.Color := clOrangeRed;
end;

procedure TForm3.lbxTeachersPicClick(Sender: TObject);
var
  sLine : string;
begin
  //load pic
  sLine := lbxTeachersPic.Items[lbxTeachersPic.ItemIndex];
  try
    imgPic.Picture.LoadFromFile(Pictures.getPic(sLine).getPath);
  except
    try
      imgPic.Picture.LoadFromFile(Pictures.getPath + '\Profile.jpg');
    except
      ShowMessage('Path of pictures in folder is incorrect.');
      Exit;
    end;
  end;
end;

procedure TForm3.imgLBackClick(Sender: TObject);
var
  sRemove : string;
begin
  //move inivigilators back to staff
  if lbxInvigilators.ItemIndex < 0 then
    begin
      ShowMessage('Please select a teacher to remove from Invigilators');
      Exit;
    end;
  sRemove := lbxInvigilators.Items[lbxInvigilators.ItemIndex];
  Invigilators.removeInvigilator(sRemove);
  lbxInvigilators.MoveSelection(lbxStaff);
end;

procedure TForm3.img12BackClick(Sender: TObject);
var
  sRemove : string;
begin
  //remove back to staff - matric teachers
  if lbxMatric.ItemIndex < 0 then
    begin
      ShowMessage('Please select a teacher to remove from Grade 12 Teachers');
      Exit;
    end;
  sRemove := lbxMatric.Items[lbxMatric.ItemIndex];
  Invigilators.removeMatric(sRemove);
  lbxMatric.MoveSelection(lbxStaff);
end;

procedure TForm3.btnStaffRemoveClick(Sender: TObject);
begin
  lbxStaff.DeleteSelected;
end;

procedure TForm3.btnStaffRefreshClick(Sender: TObject);
var
  sPath, sCode, sSurname, sName, sAdd, sCheck : string;
  j, k : integer;
begin
  //initialise
  sCode := '';
  sSurname := '';
  sName := '';
  sAdd := '';
  //get path
  sPath := edtStaffPath.Text;
  //defensive programming
  if sPath = '' then
    begin
      ShowMessage('Please enter the path for the file Staff');
      Exit;
    end;
    
  ADOStaffQuery.Close;
  ADOStaffQuery.ConnectionString := '';

  //connect to file
  try
    ADOStaffQuery.ConnectionString := 'Provider=Microsoft.ACE.OLEDB.12.0;Data Source='+
      sPath + ';Extended Properties="Excel 12.0 Xml;HDR=yes";Persist Security Info=False';
    with ADOStaffQuery do
      begin
        SQL.Clear;
        SQL.Add('SELECT *');
        SQL.Add('FROM [Staff$]');
        Open;
      end;
  except
    ShowMessage('Cannot connect to file!');    
    ADOStaffQuery.Close;
    ADOStaffQuery.ConnectionString := '';
    Exit;
  end;

  ADOStaffQuery.First;
  lbxStaff.Clear;
  while not ADOStaffQuery.Eof do
    begin
      sCode := ADOStaffQuery.FieldByName('Code').AsString;
      sSurname := ADOStaffQuery.FieldByName('Surname').AsString;
      sName := ADOStaffQuery.FieldByName('Name').AsString;
      sAdd := sCode + #9 + sSurname + #9 + sName;

      lbxStaff.Items.Add(sAdd);
      
      ADOStaffQuery.Next;
    end;
  ADOStaffQuery.Close;

  //make sure listboxes dont show teachers name twice
  lbxStaff.MultiSelect := False;
  for j := 0 to lbxInvigilators.Items.Count-1 do
    begin
      sCheck := lbxInvigilators.Items[j];
      for k := lbxStaff.Items.Count-1 downto 0 do
        begin
          if sCheck = lbxStaff.Items[k] then
            begin
              lbxStaff.ItemIndex := k;
              lbxStaff.DeleteSelected;
              break;
            end;
        end;
    end;

  for j := 0 to lbxMatric.Items.Count-1 do
    begin
      sCheck := lbxMatric.Items[j];
      for k := lbxStaff.Items.Count-1 downto 0 do
        begin
          if sCheck = lbxStaff.Items[k] then
            begin
              lbxStaff.ItemIndex := k;
              lbxStaff.DeleteSelected;
              break;
            end;
        end;
    end;
  lbxStaff.MultiSelect := true;
end;

procedure TForm3.btnStaffRefreshAllClick(Sender: TObject);
begin
  //refreshes everything of staff list
  lbxStaff.Clear;
  lbxInvigilators.Clear;
  lbxMatric.Clear;
  Invigilators.refreshInvigilators;
  try
    btnStaffRefresh.Click;
  except
    ShowMessage('Path of Staff Data cannot be accessed');
    Exit;
  end;
end;

procedure TForm3.FormCreate(Sender: TObject);
begin
  //default settings
  Form3.Color := clmaroon;
  TabSheetMenu.TabIndex := 0;
  btnHelp.Caption := '';
end;

procedure TForm3.btnStaffNextClick(Sender: TObject);
begin
  //next
  TabSheetMenu.TabIndex := 1;
end;

procedure TForm3.btnExamNextClick(Sender: TObject);
begin
  //next
  TabSheetMenu.TabIndex := 2;
end;

procedure TForm3.btnDatesNextClick(Sender: TObject);
begin
  //next
  TabSheetMenu.TabIndex := 3;
end;

procedure TForm3.btnPicNextClick(Sender: TObject);
begin
  //next
  TabSheetMenu.TabIndex := 4;
end;

procedure TForm3.btnSubjectsNextClick(Sender: TObject);
begin
  //next
  TabSheetMenu.TabIndex := 5;  
end;

procedure TForm3.btnManagersNextClick(Sender: TObject);
begin
  //next
  TabSheetMenu.TabIndex := 0;  
end;

procedure TForm3.btnDatesBrowseClick(Sender: TObject);
begin
  //get path
  if OpenDialogDates.Execute
    then edtDatesPath.Text := OpenDialogDates.FileName
    else Exit;

  edtDatesPath.SelStart := length(edtDatesPath.Text);
end;

procedure TForm3.btnGetDatesClick(Sender: TObject);
var
  sPath : string;
  sDay, sEvent, sTime, sAdd : string;
begin
  //initialize
  sDay := '';
  sEvent := '';
  sTime := '';
  sAdd := '';
  //get path
  sPath := edtDatesPath.Text;
  //defensive programming
  if sPath = '' then
    begin
      ShowMessage('Please enter a file path to Get Dates');
      Exit;
    end;
  ADODatesQuery.Close;
  ADODatesQuery.ConnectionString := '';

  //connect to file
  try
    ADODatesQuery.ConnectionString := 'Provider=Microsoft.ACE.OLEDB.12.0;Data Source='+
      sPath + ';Extended Properties="Excel 12.0 Xml;HDR=yes";Persist Security Info=False';
    with ADODatesQuery do
      begin
        SQL.Clear;
        SQL.Add('SELECT *');
        SQL.Add('FROM [Important Dates$]');
        Open;
      end;
  except
    ShowMessage('Cannot connect to file!');
    ADODatesQuery.Close;
    ADODatesQuery.ConnectionString := '';
    Exit;
  end;
  //create Event class
  Event := TEvent.create;
  //get important dates for exam
  ADODatesQuery.First;
  lbxDates.Clear;
  while not ADODatesQuery.Eof do
    begin
      //get variables ready
      sDay := ADODatesQuery.FieldByName('Day and Date').AsString;
      sEvent := ADODatesQuery.FieldByName('Meeting').AsString;
      sTime := ADODatesQuery.FieldByName('Time').AsString;
      //add to clsEvents
      Event.AddMeeting(sDay, sEvent, sTime);
      //add to listbox
      sAdd := sDay + #9 + sEvent + #9 + sTime;
      lbxDates.Items.Add(sAdd);

      ADODatesQuery.Next;
    end;

  if shp3.Brush.Color <> clLime
    then shp3.Brush.Color := clOrangeRed;
  btnGetDates.Enabled := False;
end;

procedure TForm3.btnDatesIGetClick(Sender: TObject);
var
  j : integer;
begin
  //teachers to add to the events of important dates
  if (lbxInvigilators.Items.Count = 0) AND (lbxMatric.Items.Count = 0) then
    begin
      ShowMessage('Please return to Staff List and add some teachers to Invigilate');
      Exit;
    end;
  lbxDatesInvigilators.Clear;
  for j := 0 to lbxInvigilators.Count-1 do
    begin
      lbxInvigilators.ItemIndex := j;
      lbxInvigilators.CopySelection(lbxDatesInvigilators);
    end;

  for j := 0 to lbxMatric.Count-1 do
    begin
      lbxMatric.ItemIndex := j;
      lbxMatric.CopySelection(lbxDatesInvigilators);
    end;
  lbxDates.Enabled := true;
  btnDatesRefresh.Enabled := true;
  btnDatesIGet.Enabled := false;
end;

procedure TForm3.btnPicRefreshClick(Sender: TObject);
var
  j : integer;
begin
  //defensive programming
  if (lbxInvigilators.Items.Count = 0) AND (lbxMatric.Items.Count = 0) then
    begin
      ShowMessage('Please return to 1.Staff List and add some teachers to Invigilate');
      Exit;
    end;
  //getting invigilators
  lbxTeachersPic.Clear;
  for j := 0 to lbxInvigilators.Count-1 do
    begin
      lbxInvigilators.ItemIndex := j;
      lbxInvigilators.CopySelection(lbxTeachersPic);
    end;

  for j := 0 to lbxMatric.Count-1 do
    begin
      lbxMatric.ItemIndex := j;
      lbxMatric.CopySelection(lbxTeachersPic);
    end;
  lbxTeachersPic.Enabled := False;
  imgPic.Hide;
end;

procedure TForm3.btnTeachersGetClick(Sender: TObject);
var
  j : integer;
begin
  //defensive programming
  if (lbxInvigilators.Items.Count = 0) AND (lbxMatric.Items.Count = 0) then
    begin
      ShowMessage('Please return to Staff List and add some teachers to Invigilate');
      Exit;
    end;
  //get invigilators
  lbxTeachersPic.Clear;
  for j := 0 to lbxInvigilators.Count-1 do
    begin
      lbxInvigilators.ItemIndex := j;
      lbxInvigilators.CopySelection(lbxTeachersPic);
    end;

  for j := 0 to lbxMatric.Count-1 do
    begin
      lbxMatric.ItemIndex := j;
      lbxMatric.CopySelection(lbxTeachersPic);
    end;
  //create pic class to be ready
  Pictures := TPictures.create;
  btnPicRefresh.Enabled := true;
  btnTeachersGet.Enabled := false;
  if shp4.Brush.Color <> clLime
    then shp4.Brush.Color := clOrangeRed;
end;

procedure TForm3.btnManagersGetClick(Sender: TObject);
var
  sPath, sCode, sSurname, sName, sAdd : string;
begin
  //initialise
  sCode := '';
  sSurname := '';
  sName := '';
  sAdd := '';
  //get path
  sPath := edtStaffPath.Text;
  //defensive programming
  if sPath = '' then
    begin
      ShowMessage('Please enter the path for the file Staff under Staff List');
      Exit;
    end;
  lbxGradeManagers.Clear;
  ADOStaffQuery.Close;
  ADOStaffQuery.ConnectionString := '';

  //connect to file
  try
    ADOStaffQuery.ConnectionString := 'Provider=Microsoft.ACE.OLEDB.12.0;Data Source='+
      sPath + ';Extended Properties="Excel 12.0 Xml;HDR=yes";Persist Security Info=False';
    with ADOStaffQuery do
      begin
        SQL.Clear;
        SQL.Add('SELECT *');
        SQL.Add('FROM [Staff$]');
        Open;
      end;
  except
    ShowMessage('Cannot connect to file!');    
    ADOStaffQuery.Close;
    ADOStaffQuery.ConnectionString := '';
    Exit;
  end;

  ADOStaffQuery.First;
  while not ADOStaffQuery.Eof do
    begin
      sCode := ADOStaffQuery.FieldByName('Code').AsString;
      sSurname := ADOStaffQuery.FieldByName('Surname').AsString;
      sName := ADOStaffQuery.FieldByName('Name').AsString;
      sAdd := sCode + #9 + sSurname + #9 + sName;

      lbxGradeManagers.Items.Add(sAdd);
      
      ADOStaffQuery.Next;
    end;
  ADOStaffQuery.Close;
  //start

  btnManagersRefresh.Enabled := true;
  btnManagersGet.Enabled := false;
  if shp6.Brush.Color <> clLime
    then shp6.Brush.Color := clOrangeRed;
  Managers := TManagers.create;
end;

procedure TForm3.btnManagersRefreshClick(Sender: TObject);
var
  j : integer;
begin
  //refresh managers
  if lbxStaff.Items.Count = 0
    then Exit;
  lbxGradeManagers.Clear;
  lbxStaff.MultiSelect := false;
  for j := 0 to lbxStaff.Count-1 do
    begin
      lbxStaff.ItemIndex := j;
      lbxStaff.CopySelection(lbxGradeManagers);
    end;
  lbxStaff.MultiSelect := true;
end;

procedure TForm3.imgM81Click(Sender: TObject);
var
  sOn : string;
begin
  //grade managers help
  if lbxGradeManagers.ItemIndex < 0 then
    begin
      ShowMessage('Please select a teacher to add');
      Exit;
    end;
  sOn := lbxGradeManagers.Items[lbxGradeManagers.ItemIndex];
  if edtM82.Text = sOn then
    begin
      ShowMessage('The same teacher cannot take up both slots');
      Exit;
    end;
  edtM81.Text := sOn;
end;

procedure TForm3.imgM91Click(Sender: TObject);
var
  sOn : string;
begin
  //adding to edit boxes
  if lbxGradeManagers.ItemIndex < 0 then
    begin
      ShowMessage('Please select a teacher to add');
      Exit;
    end;
  sOn := lbxGradeManagers.Items[lbxGradeManagers.ItemIndex];
  if edtM92.Text = sOn then
    begin
      ShowMessage('The same teacher cannot take up both slots');
      Exit;
    end;
  edtM91.Text := sOn;
end;

procedure TForm3.imgM101Click(Sender: TObject);
var
  sOn : string;
begin
  //adding to edit boxes
  if lbxGradeManagers.ItemIndex < 0 then
    begin
      ShowMessage('Please select a teacher to add');
      Exit;
    end;
  sOn := lbxGradeManagers.Items[lbxGradeManagers.ItemIndex];
  if edtM102.Text = sOn then
    begin
      ShowMessage('The same teacher cannot take up both slots');
      Exit;
    end;
  edtM101.Text := sOn;
end;

procedure TForm3.imgM111Click(Sender: TObject);
var
  sOn : string;
begin
  //adding to edit boxes
  if lbxGradeManagers.ItemIndex < 0 then
    begin
      ShowMessage('Please select a teacher to add');
      Exit;
    end;
  sOn := lbxGradeManagers.Items[lbxGradeManagers.ItemIndex];
  if edtM112.Text = sOn then
    begin
      ShowMessage('The same teacher cannot take up both slots');
      Exit;
    end;
  edtM111.Text := sOn;
end;

procedure TForm3.imgM121Click(Sender: TObject);
var
  sOn : string;
begin
  //adding to edit boxes
  if lbxGradeManagers.ItemIndex < 0 then
    begin
      ShowMessage('Please select a teacher to add');
      Exit;
    end;
  sOn := lbxGradeManagers.Items[lbxGradeManagers.ItemIndex];
  if edtM122.Text = sOn then
    begin
      ShowMessage('The same teacher cannot take up both slots');
      Exit;
    end;
  edtM121.Text := sOn;
end;

procedure TForm3.imgM82Click(Sender: TObject);
var
  sOn : string;
begin
  //adding to edit boxes
  if lbxGradeManagers.ItemIndex < 0 then
    begin
      ShowMessage('Please select a teacher to add');
      Exit;
    end;
  sOn := lbxGradeManagers.Items[lbxGradeManagers.ItemIndex];
  if edtM81.Text = sOn then
    begin
      ShowMessage('The same teacher cannot take up both slots');
      Exit;
    end;
  edtM82.Text := sOn;
end;

procedure TForm3.imgM92Click(Sender: TObject);
var
  sOn : string;
begin
  //adding to edit boxes
  if lbxGradeManagers.ItemIndex < 0 then
    begin
      ShowMessage('Please select a teacher to add');
      Exit;
    end;
  sOn := lbxGradeManagers.Items[lbxGradeManagers.ItemIndex];
  if edtM91.Text = sOn then
    begin
      ShowMessage('The same teacher cannot take up both slots');
      Exit;
    end;
  edtM92.Text := sOn;
end;

procedure TForm3.imgM102Click(Sender: TObject);
var
  sOn : string;
begin
  //adding to edit boxes
  if lbxGradeManagers.ItemIndex < 0 then
    begin
      ShowMessage('Please select a teacher to add');
      Exit;
    end;
  sOn := lbxGradeManagers.Items[lbxGradeManagers.ItemIndex];
  if edtM101.Text = sOn then
    begin
      ShowMessage('The same teacher cannot take up both slots');
      Exit;
    end;
  edtM102.Text := sOn;
end;

procedure TForm3.imgM112Click(Sender: TObject);
var
  sOn : string;
begin
  //adding to edit boxes
  if lbxGradeManagers.ItemIndex < 0 then
    begin
      ShowMessage('Please select a teacher to add');
      Exit;
    end;
  sOn := lbxGradeManagers.Items[lbxGradeManagers.ItemIndex];
  if edtM111.Text = sOn then
    begin
      ShowMessage('The same teacher cannot take up both slots');
      Exit;
    end;
  edtM112.Text := sOn;
end;

procedure TForm3.imgM122Click(Sender: TObject);
var
  sOn : string;
begin
  //adding to edit boxes
  if lbxGradeManagers.ItemIndex < 0 then
    begin
      ShowMessage('Please select a teacher to add');
      Exit;
    end;
  sOn := lbxGradeManagers.Items[lbxGradeManagers.ItemIndex];
  if edtM121.Text = sOn then
    begin
      ShowMessage('The same teacher cannot take up both slots');
      Exit;
    end;
  edtM122.Text := sOn;
end;

procedure TForm3.btnEventAddClick(Sender: TObject);
var
  sAdd : string;
begin
  //adds an invigilator to the event
  if lbxDates.ItemIndex < 0 then
    begin
      ShowMessage('Please select an event to add invigilator to');
      Exit;
    end;

  if lbxDatesInvigilators.ItemIndex < 0 then
    begin
      ShowMessage('Please select an invigilator to add to event');
      Exit;
    end;
    
  sAdd := lbxDatesInvigilators.Items[lbxDatesInvigilators.ItemIndex];
  Event.getMeeting(sLine).AddTeacher(sAdd);
  lbxDatesInvigilators.MoveSelection(lbxEventTeachers);
end;

procedure TForm3.btnEventRemoveClick(Sender: TObject);
var
  sRemove : string;
begin
  //remove teacher from the event
  if lbxEventTeachers.ItemIndex < 0 then
    begin
      ShowMessage('Please select an invigilator to remove from event');
      Exit;
    end;
  sRemove := lbxEventTeachers.Items[lbxEventTeachers.ItemIndex];
  Event.getMeeting(sLine).RemoveTeacher(sRemove);
  lbxEventTeachers.MoveSelection(lbxDatesInvigilators);
end;

procedure TForm3.lbxDatesClick(Sender: TObject);
var
  iLoop : integer;
  sAdd : string;
begin
  //when an event is clickedm,
  sLine := lbxDates.Items[lbxDates.ItemIndex];
  lblDatesShow.Caption := Event.getMeeting(sLine).getDate;
  lblDatesTimeShow.Caption := Event.getMeeting(sLine).getTime;
  lblDatesEventShow.Caption := Event.getMeeting(sLine).getEvent;
  lbxEventTeachers.Clear;

  for iLoop := 0 to Event.getMeeting(sLine).getCount-1 do
    begin
      sAdd := Event.getMeeting(sLine).getTeacher(iLoop).toString;
      lbxEventTeachers.Items.Add(sAdd);
    end;
  btnDatesRefresh.Click;
end;

procedure TForm3.btnDatesRefreshClick(Sender: TObject);
var
  j, k : integer;
  sCheck : string;
begin
  //refresh dates
  if (lbxInvigilators.Items.Count = 0) AND (lbxMatric.Items.Count = 0) then
    begin
      ShowMessage('Please return to Staff List and add some teachers to Invigilate');
      Exit;
    end;
  lbxDatesInvigilators.Clear;
  for j := 0 to lbxInvigilators.Count-1 do
    begin
      lbxInvigilators.ItemIndex := j;
      lbxInvigilators.CopySelection(lbxDatesInvigilators);
    end;

  for j := 0 to lbxMatric.Count-1 do
    begin
      lbxMatric.ItemIndex := j;
      lbxMatric.CopySelection(lbxDatesInvigilators);
    end;

  for j := 0 to lbxEventTeachers.Items.Count-1 do
    begin
      sCheck := lbxEventTeachers.Items[j];
      for k := lbxDatesInvigilators.Items.Count-1 downto 0 do
        begin
          if sCheck = lbxDatesInvigilators.Items[k] then
            begin
              lbxDatesInvigilators.ItemIndex := k;
              lbxDatesInvigilators.DeleteSelected;
              break;
            end;
        end;
    end;
  {for j := 0 to lbxEventTeachers.Count-1 do
    for k := 0 to iMax do
      if lbxEventTeachers.Items[j] = lbxDatesInvigilators.Items[k] then
        begin
          lbxDatesInvigilators.ItemIndex := k;
          lbxDatesInvigilators.DeleteSelected;
          dec(iMax);
        end;    }
end;

procedure TForm3.btnGetPicturesClick(Sender: TObject);
var
  sPicPath, sLine, sCode, sName, sSurname, sPath : string;
  iLoop, iPos : integer;
begin
  sPicPath := edtPicPath.Text;
  //defensive programming
  if sPicPath = '' then
    begin
      ShowMessage('In order to Get Pictures, the folder path for the Pictures '
                  + 'needs to be entered');
      Exit;
    end;

  //get path
  Pictures.RefreshPics;
  Pictures.setPath(sPicPath);

  for iLoop := 0 to lbxTeachersPic.Count-1 do
    begin
      sLine := lbxTeachersPic.Items[iLoop];

      iPos := pos(#9, sLine);
      sCode := copy(sLine, 1, iPos-1);
      Delete(sLine, 1, iPos);

      iPos := pos(#9, sLine);
      sName := copy(sLine, 1, iPos-1);
      Delete(sLine, 1, iPos);

      sSurname := sLine;
      sPath := sPicPath + '\' + sCode + '.jpg';
      Pictures.AddPic(sCode, sName, sSurname, sPath);      
    end;
  lbxTeachersPic.Enabled := true;
  ShowMessage('Pictures have been retrieved!');
end;

procedure TForm3.btnSubjectsGetClick(Sender: TObject);
var
  j : integer;
begin
  //defensive programming
  if (lbxInvigilators.Items.Count = 0) AND (lbxMatric.Items.Count = 0) then
    begin
      ShowMessage('Please return to Staff List and add some teachers to Invigilate');
      Exit;
    end;
  //get invigilators
  lbxTeachersPic.Clear;
  for j := 0 to lbxInvigilators.Count-1 do
    begin
      lbxInvigilators.ItemIndex := j;
      lbxInvigilators.CopySelection(lbxSubjectTeachers);
    end;

  for j := 0 to lbxMatric.Count-1 do
    begin
      lbxMatric.ItemIndex := j;
      lbxMatric.CopySelection(lbxSubjectTeachers);
    end;
  if shp5.Brush.Color <> clLime
    then shp5.Brush.Color := clOrangeRed;
  btnSubjectsRefresh.Enabled := true;
  btnSubjectsGet.Enabled := false;
end;

procedure TForm3.btnSubjectsRefreshClick(Sender: TObject);
var
  j : integer;
begin
  //defensive programming
  if (lbxInvigilators.Items.Count = 0) AND (lbxMatric.Items.Count = 0) then
    begin
      ShowMessage('Please return to Staff List and add some teachers to Invigilate');
      Exit;
    end;
  //get invigilators
  lbxSubjectTeachers.Clear;
  for j := 0 to lbxInvigilators.Count-1 do
    begin
      lbxInvigilators.ItemIndex := j;
      lbxInvigilators.CopySelection(lbxSubjectTeachers);
    end;

  for j := 0 to lbxMatric.Count-1 do
    begin
      lbxMatric.ItemIndex := j;
      lbxMatric.CopySelection(lbxSubjectTeachers);
    end;
  btnSubjectsRefresh.Enabled := true;
  btnSubjectsGet.Enabled := false;
end;

procedure TForm3.btnExamLoadClick(Sender: TObject);
var
  iGrade, iLoop : integer;
begin
  iGrade := sedExamGrade.Value;
  lbxExamGrade.Clear;
  for iLoop := 0 to Timetable.getGrade(iGrade).getS1Count-1 do
    begin
      lbxExamGrade.Items.Add(Timetable.getGrade(iGrade).getS1Exam(iLoop).toString);
    end;
  for iLoop := 0 to Timetable.getGrade(iGrade).getS2Count-1 do
    begin
      lbxExamGrade.Items.Add(Timetable.getGrade(iGrade).getS2Exam(iLoop).toString);
    end;
end;

procedure TForm3.btnSetManagersClick(Sender: TObject);
var
  s81, s82, s91, s92, s101, s102, s111, s112, s121, s122 : string;
  buttonSelected : Integer;
begin
  //Confirmation
  buttonSelected := MessageDlg('Confirmation',mtConfirmation, mbOKCancel, 0);
  if buttonSelected = mrCancel then Exit;
  s81 := edtM81.Text;
  s82 := edtM82.Text;
  s91 := edtM91.Text;
  s92 := edtM92.Text;
  s101 := edtM101.Text;
  s102 := edtM102.Text;
  s111 := edtM111.Text;
  s112 := edtM112.Text;
  s121 := edtM121.Text;
  s122 := edtM122.Text;

  Managers.Add8(s81, s82);
  Managers.Add9(s91, s92);
  Managers.Add10(S101, s102);
  Managers.Add11(s111, s112);
  Managers.Add12(s121, s122);
  ShowMessage('Managers have been set!');
end;

procedure TForm3.btnNumberBrowseClick(Sender: TObject);
begin
  //get path
  if OpenDialogLearners.Execute
    then edtNoLearnersPath.Text := OpenDialogLearners.FileName
    else Exit;

  edtNoLearnersPath.SelStart := length(edtNoLearnersPath.Text);
end;

procedure TForm3.btnSetNumbersClick(Sender: TObject);
var
  sNo8, sNo9, sRest : string;
  iNo8, iNo9, j, k, iOn, i8, i9 : integer;
  r8, r9, rCheck8, rCheck9 : real;
begin
  //getting data
  sNo8 := edtLearners8.Text;
  sNo9 := edtLearners9.Text;
  //defensive programming
  if (sNo8 = '') OR (sNo9 = '') then
    begin
      ShowMessage('Please enter the number of Grade 8 and 9 learners there ' +
                  'are in the school');
      Exit;
    end;
  try
    iNo8 := strtoint(sNo8);
    iNo9 := strtoint(sNo9);
  except
    ShowMessage('Please enter an integer for the number of learners in Grade 8 and 9');
    Exit;
  end;
  //get path
  sRest := edtNoLearnersPath.Text;
  ADOLearnersQuery.Close;
  ADOLearnersQuery.ConnectionString := '';

  //connect to file
  try
    ADOLearnersQuery.ConnectionString := 'Provider=Microsoft.ACE.OLEDB.12.0;Data Source='+
      sRest + ';Extended Properties="Excel 12.0 Xml;HDR=yes";Persist Security Info=False';
    //begin with grade 10s
    with ADOLearnersQuery do
      begin
        SQL.Clear;
        SQL.Add('SELECT *');
        SQL.Add('FROM [Grade 10$]');
        Open;
      end;
  except
    ShowMessage('Cannot connect to file!');
    ADOLearnersQuery.Close;
    ADOLearnersQuery.ConnectionString := '';
    Exit;
  end;

  setNoLearners(10);
  with ADOLearnersQuery do
    begin
      SQL.Clear;
      SQL.Add('SELECT *');
      SQL.Add('FROM [Grade 11$]');
      Open;
    end;
  setNoLearners(11);
  with ADOLearnersQuery do
    begin
      SQL.Clear;
      SQL.Add('SELECT *');
      SQL.Add('FROM [Grade 12$]');
      Open;
    end;
  setNoLearners(12);

  //grade 8 and 9
  r8 := iNo8/30;
  r9 := iNo9/30;
  rCheck8 := round(r8);
  rCheck9 := round(r9);
  if r8 - rCheck8 <> 0 then r8 := r8 + 0.5;
  if r9 - rcheck9 <> 0 then r9 := r9 + 0.5;
  i8 := round(r8);
  i9 := round(r9);
  iOn := 8;
  for j := 0 to Timetable.getGrade(iOn).getS1Count-1 do
    begin
      Timetable.getGrade(iOn).getS1Exam(j).setLearners(iNo8);
      Timetable.getGrade(iOn).getS1Exam(j).setInvigilators(i8);
    end;
  for k := 0 to Timetable.getGrade(iOn).getS2Count-1 do
    begin
      Timetable.getGrade(iOn).getS2Exam(k).setLearners(iNo8);
      Timetable.getGrade(iOn).getS2Exam(k).setInvigilators(i8);
    end;

  iOn := 9;
  for j := 0 to Timetable.getGrade(iOn).getS1Count-1 do
    begin
      Timetable.getGrade(iOn).getS1Exam(j).setLearners(iNo9);
      Timetable.getGrade(iOn).getS1Exam(j).setInvigilators(i9);
    end;
  for k := 0 to Timetable.getGrade(iOn).getS2Count-1 do
    begin
      Timetable.getGrade(iOn).getS2Exam(k).setLearners(iNo9); 
      Timetable.getGrade(iOn).getS2Exam(k).setInvigilators(i9);
    end;

  ShowMessage('Alright, number of learners for each exam has been set!' + #13 +
              'Please take note of the subjects not found.');
end;

procedure TForm3.setNoLearners(gOn: integer);
var
  sSubject, sFound, sAdd : string;
  j, k, iSpace, iLearner, iOn, iInvigilator : integer;
  bFound : boolean;
  rInvigilator, rCheck : real;
begin
  //Session1
  iOn := gOn;
  ADOLearnersQuery.First;
  for j := 0 to Timetable.getGrade(iOn).getS1Count-1 do
    begin
      sSubject := Timetable.getGrade(iOn).getS1Exam(j).getExam;
      iSpace := pos(' ', sSubject);
      if iSpace > 0
        then sSubject := copy(sSubject, 1, iSpace-1);
      bFound := False;
      ADOLearnersQuery.First;
      while not ADOLearnersQuery.Eof do
        begin
          sFound := ADOLearnersQuery.Fields[0].AsString;
          if sSubject = sFound then
            begin
              iLearner := ADOLearnersQuery.FieldByName(sSubject).AsInteger;
              Timetable.getGrade(iOn).getS1Exam(j).setLearners(iLearner);
              //set number of invigilators needed
              rInvigilator := iLearner/30;
              rCheck := round(rInvigilator);
              if rInvigilator - rCheck <> 0
                then rInvigilator := rInvigilator + 0.5;
              iInvigilator := round(rInvigilator);
              Timetable.getGrade(iOn).getS1Exam(j).setInvigilators(iInvigilator);
              bFound := true;
              break;
            end;
          ADOLearnersQuery.Next;
        end;
      if bFound = False then
        begin
          sAdd := Timetable.getGrade(iOn).getS1Exam(j).toString + ' Grade' +
                  inttostr(Timetable.getGrade(iOn).getGrade);
          lbxNumbersError.Items.Add(sAdd);
        end;
    end;
  //Session2
  iOn := gOn;
  ADOLearnersQuery.First;
  for k := 0 to Timetable.getGrade(iOn).getS2Count-1 do
    begin
      sSubject := Timetable.getGrade(iOn).getS2Exam(k).getExam;
      iSpace := pos(' ', sSubject);
      if iSpace > 0
        then sSubject := copy(sSubject, 1, iSpace-1);
      bFound := False;
      //ShowMessage('Subject: ' + sSubject);
      ADOLearnersQuery.First;
      while not ADOLearnersQuery.Eof do
        begin
          sFound := ADOLearnersQuery.Fields[0].AsString;
         // ShowMessage(sFound);
          if sSubject = sFound then
            begin
              iLearner := ADOLearnersQuery.FieldByName(sSubject).AsInteger;
              Timetable.getGrade(iOn).getS2Exam(k).setLearners(iLearner);
              //set number of invigilators needed
              rInvigilator := iLearner/30;
              rCheck := round(rInvigilator);
              if rInvigilator - rCheck <> 0
                then rInvigilator := rInvigilator + 0.5;
              iInvigilator := round(rInvigilator);
              Timetable.getGrade(iOn).getS2Exam(k).setInvigilators(iInvigilator);
              bFound := true;
              break;
            end;
          ADOLearnersQuery.Next;
        end;
      if bFound = False then
        begin
          sAdd := Timetable.getGrade(iOn).getS2Exam(k).toString + ' Grade' +
                  inttostr(Timetable.getGrade(iOn).getGrade);
          lbxNumbersError.Items.Add(sAdd);
        end;
    end;
end;

procedure TForm3.btnGetSubjectsClick(Sender: TObject);
var
  sPath, sAdd, sName : string;
  iUp : integer;
begin
  //get path
  sPath := edtSubPath.Text;
  //defensive programming
  if sPath = '' then
    begin
      ShowMessage('Please enter a file path to Get Subjects for each grade');
      Exit;
    end;
  ADOSubQuery.Close;
  ADOSubQuery.ConnectionString := '';

  //connect to file
  try
    ADOSubQuery.ConnectionString := 'Provider=Microsoft.ACE.OLEDB.12.0;Data Source='+
      sPath + ';Extended Properties="Excel 12.0 Xml;HDR=yes";Persist Security Info=False';
    with ADOSubQuery do
      begin
        SQL.Clear;
        SQL.Add('SELECT *');
        SQL.Add('FROM [Subjects$]');
        Open;
      end;
  except
    ShowMessage('Cannot connect to file!');
    ADOSubQuery.Close;
    ADOSubQuery.ConnectionString := '';
    Exit;
  end;
  //get subjects and create class
  Subjects := TTeach.create;
  ADOSubQuery.First;
  for iUp := 8 to 12 do
    begin
      sName := 'Grade ' + inttostr(iUp);
      ADOSubQuery.First;
      while not ADOSubQuery.Eof do
        begin
          sAdd := ADOSubQuery.FieldByName(sName).AsString;
          Subjects.getHead(iUp).addSubject(sAdd);
          ADOSubQuery.Next;
        end;
    end;
  //add grades to combox
  cbxHeadGrade.Clear;
  cbxHeadGrade.Items.Add('8');
  cbxHeadGrade.Items.Add('9');
  cbxHeadGrade.Items.Add('10');
  cbxHeadGrade.Items.Add('11');
  cbxHeadGrade.Items.Add('12');
  //tweeks at the end
  cbxHeadGrade.Enabled := true;
  btnGetSubjects.Enabled := false;
  ShowMessage('Subjects for each grade have been gotten!');
end;

procedure TForm3.btnSubBrowseClick(Sender: TObject);
begin
  //get path
  if OpenDialogSub.Execute
    then edtSubPath.Text := OpenDialogSub.FileName
    else Exit;

  edtSubPath.SelStart := length(edtSubPath.Text);
end;

procedure TForm3.btnSubLoadClick(Sender: TObject);
var
  sGrade, sAdd : string;
  iGrade, iLoop : integer;
begin
  sGrade := cbxHeadGrade.Text;
  //defensive programming
  if sGrade = '' then
    begin
      ShowMessage('Please select a grade to load or Get Subjects first');
      Exit;
    end;
  lbxSubSubjects.Clear;
  lbxSubTeachers.Clear;

  iGrade := strtoint(sGrade);
  for iLoop := 0 to Subjects.getHead(iGrade).getSubjectCount-1 do
    begin
      sAdd := Subjects.getHead(iGrade).getSubjects(iLoop).getSubject;
      lbxSubSubjects.Items.Add(sAdd);
    end;
  lbxSubSubjects.Enabled := true;
  lbxSubTeachers.Enabled := true;
  btnHeadAdd.Enabled := true;
  btnHeadRemove.Enabled := true;
end;

procedure TForm3.lbxSubSubjectsClick(Sender: TObject);
var
  sSubject, sAdd : string;
  iGrade, iCount : integer;
begin
  sSubject := lbxSubSubjects.Items[lbxSubSubjects.ItemIndex];
  iGrade := strtoint(cbxHeadGrade.Text);
  lbxSubTeachers.Clear;
  for iCount := 0 to Subjects.getHead(iGrade).getSubjects(sSubject).getTeacherCount-1 do
    begin
      sAdd := Subjects.getHead(iGrade).getSubjects(sSubject).getTeacher(iCount).toString;
      lbxSubTeachers.Items.Add(sAdd);
    end;                          
end;

procedure TForm3.btnHeadAddClick(Sender: TObject);
var
  sTeacher, sCheck, sSubject, sCode, sName, sSurname : string;
  iLoop, iGrade, iPos : integer;
begin
  sSubject := lbxSubSubjects.Items[lbxSubSubjects.ItemIndex];
  iGrade := strtoint(cbxHeadGrade.Text);
  if lbxSubjectTeachers.ItemIndex < 0 then
    begin
      ShowMessage('Please select a teacher to add to this subject');
      Exit;
    end;
  sTeacher := lbxSubjectTeachers.Items[lbxSubjectTeachers.ItemIndex];
  //check if teacher already exists
  for iLoop := 0 to lbxSubTeachers.Items.Count-1 do
    begin
      sCheck := lbxSubTeachers.Items[iLoop];
      if sTeacher = sCheck then
        begin
          ShowMessage('Selected Teacher already exists');
          Exit;
        end;
    end;
  lbxSubjectTeachers.CopySelection(lbxSubTeachers);

  ipos := pos(#9, sTeacher);
  sCode := copy(sTeacher, 1, iPos-1);
  Delete(sTeacher, 1, iPos);

  ipos := pos(#9, sTeacher);
  sName := copy(sTeacher, 1, iPos-1);
  Delete(sTeacher, 1, iPos);

  sSurname := sTeacher;

  Subjects.getHead(iGrade).getSubjects(sSubject).addTeacher(sCode, sName, sSurname);

end;

procedure TForm3.btnHeadRemoveClick(Sender: TObject);
var
  sRemove, sSubject : string;
  iGrade : integer;
begin
  //removes teacher from selected subject
  sSubject := lbxSubSubjects.Items[lbxSubSubjects.ItemIndex];
  iGrade := strtoint(cbxHeadGrade.Text);
  if lbxSubTeachers.ItemIndex < 0 then
    begin
      ShowMessage('Please select a teacher to remove from this subject');
      Exit;
    end;
  sRemove := lbxSubTeachers.Items[lbxSubTeachers.ItemIndex];
  lbxSubTeachers.DeleteSelected;
  Subjects.getHead(iGrade).getSubjects(sSubject).removeTeacher(sRemove);
end;

procedure TForm3.btnRemoveyClick(Sender: TObject);
begin
  if lbxSubjectTeachers.ItemIndex < 0 then
    begin
      ShowMessage('Please select a teacher to remove');
      Exit;
    end;
  lbxSubjectTeachers.DeleteSelected;
end;

procedure TForm3.btnExitClick(Sender: TObject);
begin
  //exits application
  Application.Terminate;
end;

procedure TForm3.btnProceedClick(Sender: TObject);
var
  iLoop, k : integer;
  sInv, sMatric, sAdd : string;
  bMatric : boolean;
begin
  //defensive programming
  if (shp1.Brush.Color <> clLime) OR (shp2.Brush.Color <> clLime) OR
     (shp3.Brush.Color <> clLime) OR (shp4.Brush.Color <> clLime) OR
     (shp5.Brush.Color <> clLime) OR (shp6.Brush.Color <> clLime)
     then begin
      ShowMessage('All input are not Done yet!');
      Exit;
     end;
  //gets form4 ready and summary ready
  Form3.Hide;
  Form4.Show;
  Form4.cbxExamDate.Clear;
  LetsProceed(8);
  LetsProceed(9);
  LetsProceed(10);
  LetsProceed(11);
  LetsProceed(12);
  //Invigilation - split into groups  problemo with multiselect
  {Form4.lbxAvailable.Clear;
  for iLoop := 0 to Pictures.getPicCount-1 do
    begin
      sInv := Pictures.getPic(iLoop).getTeacher.toString;
      ShowMessage(sInv);
      sAdd := Pictures.getPic(iLoop).getTeacher.toString + ' ' +
              floattostr(Pictures.getPic(iLoop).getHoursInvigilated);
      bMatric := false;
      for k := 0 to Invigilators.getMatricCount-1 do
        begin
          sMatric := Invigilators.getMatric(k).toString;
          Showmessage(sMatric);
          if sInv = sMatric then
            begin
              Form4.lbxMatric.Items.Add(sAdd);
              bMatric := true;
            end;
        end;
      if bMatric = false then
        begin
          Form4.lbxAvailable.Items.Add(sAdd);
        end;
    end;      }
  FOrm4.lbxAvailable.Clear;
  Form4.lbxMatric.Clear;
  for iLoop := 0 to Pictures.getPicCount-1 do
    begin
      sInv := Pictures.getPic(iLoop).getTeacher.toString;
      sAdd := Pictures.getPic(iLoop).getTeacher.toString + ' ' +
              floattostr(Pictures.getPic(iLoop).getHoursInvigilated);
      bMatric := false;
      for k := 0 to lbxMatric.Items.Count-1 do
        begin
          sMatric := lbxMatric.Items[k];
          if sMatric = sInv then
            begin
              Form4.lbxMatric.Items.Add(sAdd);
              bMatric := true;
              break;
            end;
        end;
      if bMatric = false then
        begin
          Form4.lbxAvailable.Items.Add(sAdd);
        end;
    end;
  //pictures and frames
  {iCounter := 0;
  for iMake := 0 to Pictures.getPicCount-1 do
    begin
      inc(iCounter);
      SetLength(Form4.Frame21.Frames, iCounter);
      Form4.Frame21.Frames[iMake] :=
    end; }
  Form6.show;
end;
//helper method
procedure TForm3.LetsProceed(p: integer);
var
  iEnd, i, k : integer;
  sCheck, sDate : string;
  bAdd : boolean;
begin
  //session1
  iEnd := Timetable.getGrade(p).getS1Count-1;
  for i := 0 to iEnd do
    begin
      bAdd := false;
      sDate := Timetable.getGrade(p).getS1Exam(i).getDate;
      for k := 0 to Form4.cbxExamDate.Items.Count-1 do
        begin
          sCheck := Form4.cbxExamDate.Items[k];
          if sCheck = sDate then bAdd := true;
        end;
      if bAdd = false
        then Form4.cbxExamDate.Items.Add(sDate);
    end;
  //session2
  iEnd := Timetable.getGrade(p).getS2Count-1;
  for i := 0 to iEnd do
    begin
      bAdd := false;
      sDate := Timetable.getGrade(p).getS2Exam(i).getDate;
      for k := 0 to Form4.cbxExamDate.Items.Count-1 do
        begin
          sCheck := Form4.cbxExamDate.Items[k];
          if sCheck = sDate then bAdd := true;
        end;
      if bAdd = false
        then Form4.cbxExamDate.Items.Add(sDate);
    end;
end;

procedure TForm3.cbxHeadGradeChange(Sender: TObject);
begin
  lbxSubSubjects.Clear;
  lbxSubTeachers.Clear;
end;

procedure TForm3.btnHelpClick(Sender: TObject);
begin
  Form7.show;
end;

end.
