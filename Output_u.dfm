object Form4: TForm4
  Left = -7
  Top = 0
  Width = 1378
  Height = 744
  Caption = 'Invigilation Output'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  OnCreate = FormCreate
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object shpIGTitle: TShape
    Left = 512
    Top = 8
    Width = 849
    Height = 65
  end
  object shpRollTitle: TShape
    Left = 280
    Top = 480
    Width = 225
    Height = 33
    Brush.Color = clMaroon
  end
  object shpNotesTitle: TShape
    Left = 16
    Top = 480
    Width = 257
    Height = 33
    Brush.Color = clMaroon
  end
  object shpSubInput: TShape
    Left = 16
    Top = 336
    Width = 265
    Height = 129
  end
  object shpSubTitle: TShape
    Left = 16
    Top = 280
    Width = 265
    Height = 57
    Brush.Color = clMaroon
  end
  object shpIGOutput: TShape
    Left = 512
    Top = 72
    Width = 849
    Height = 601
  end
  object shpRollIn: TShape
    Left = 280
    Top = 512
    Width = 225
    Height = 161
  end
  object shpNotesOut: TShape
    Left = 16
    Top = 512
    Width = 257
    Height = 161
  end
  object shpSubOutput: TShape
    Left = 280
    Top = 280
    Width = 225
    Height = 185
    Brush.Color = clYellow
  end
  object shpExamTitle: TShape
    Left = 16
    Top = 8
    Width = 489
    Height = 49
    Brush.Color = clMaroon
  end
  object shpExamOutput: TShape
    Left = 280
    Top = 56
    Width = 225
    Height = 209
    Brush.Color = clYellow
  end
  object shpExamInput: TShape
    Left = 16
    Top = 56
    Width = 265
    Height = 209
  end
  object lblExamSession2: TLabel
    Left = 192
    Top = 72
    Width = 61
    Height = 16
    Caption = 'Session 2'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = [fsBold, fsUnderline]
    ParentFont = False
  end
  object lblDateExam: TLabel
    Left = 232
    Top = 18
    Width = 54
    Height = 24
    Caption = 'Date:'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -20
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object lblExamTimetable: TLabel
    Left = 32
    Top = 18
    Width = 161
    Height = 24
    Caption = 'Exam Timetable'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -20
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object lblExamGr8: TLabel
    Left = 32
    Top = 96
    Width = 24
    Height = 13
    Caption = 'Gr 8:'
  end
  object lblExamGr9: TLabel
    Left = 32
    Top = 128
    Width = 24
    Height = 13
    Caption = 'Gr 9:'
  end
  object lblExamGr10: TLabel
    Left = 32
    Top = 160
    Width = 30
    Height = 13
    Caption = 'Gr 10:'
  end
  object lblExamGr11: TLabel
    Left = 32
    Top = 192
    Width = 30
    Height = 13
    Caption = 'Gr 11:'
  end
  object lblExamGr12: TLabel
    Left = 32
    Top = 224
    Width = 30
    Height = 13
    Caption = 'Gr 12:'
  end
  object lblExamSession1: TLabel
    Left = 80
    Top = 72
    Width = 61
    Height = 16
    Caption = 'Session 1'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = [fsBold, fsUnderline]
    ParentFont = False
  end
  object lblInfoTitle: TLabel
    Left = 304
    Top = 64
    Width = 43
    Height = 24
    Caption = 'Info'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -20
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object lblInfoGradeTitle: TLabel
    Left = 304
    Top = 96
    Width = 33
    Height = 13
    Caption = 'Grade:'
  end
  object lblInfoSessionTitle: TLabel
    Left = 304
    Top = 120
    Width = 40
    Height = 13
    Caption = 'Session:'
  end
  object lblInfoExamTitle: TLabel
    Left = 304
    Top = 152
    Width = 26
    Height = 13
    Caption = 'Exam'
  end
  object lblInfoDurationTitle: TLabel
    Left = 400
    Top = 152
    Width = 41
    Height = 13
    Caption = 'Duration'
  end
  object lblInfoLearnersTitle: TLabel
    Left = 304
    Top = 208
    Width = 99
    Height = 13
    Caption = 'Number of Learners:'
  end
  object lblInfoInvigilatorsTitle: TLabel
    Left = 304
    Top = 232
    Width = 97
    Height = 13
    Caption = 'Invigilators Needed:'
  end
  object shpInfoGrade: TShape
    Left = 368
    Top = 96
    Width = 49
    Height = 17
  end
  object shpInfoSession: TShape
    Left = 368
    Top = 120
    Width = 49
    Height = 17
  end
  object shpInfoLearners: TShape
    Left = 416
    Top = 208
    Width = 49
    Height = 17
  end
  object shpInfoInvigilators: TShape
    Left = 416
    Top = 232
    Width = 49
    Height = 17
  end
  object shpInfoExam: TShape
    Left = 304
    Top = 168
    Width = 49
    Height = 17
  end
  object shpInfoDuration: TShape
    Left = 400
    Top = 168
    Width = 49
    Height = 17
  end
  object lblInfoLearners: TLabel
    Left = 423
    Top = 209
    Width = 3
    Height = 13
  end
  object lblInfoInvigilators: TLabel
    Left = 423
    Top = 233
    Width = 3
    Height = 13
  end
  object lblInfoGrade: TLabel
    Left = 373
    Top = 97
    Width = 3
    Height = 13
  end
  object lblInfoSession: TLabel
    Left = 373
    Top = 122
    Width = 3
    Height = 13
  end
  object lblInfoDuration: TLabel
    Left = 406
    Top = 170
    Width = 3
    Height = 13
  end
  object lblExam81: TLabel
    Left = 80
    Top = 96
    Width = 3
    Height = 13
    OnClick = lblExam81Click
  end
  object lblExam82: TLabel
    Left = 192
    Top = 96
    Width = 3
    Height = 13
    OnClick = lblExam82Click
  end
  object lblExam91: TLabel
    Left = 80
    Top = 128
    Width = 3
    Height = 13
    OnClick = lblExam91Click
  end
  object lblExam92: TLabel
    Left = 192
    Top = 128
    Width = 3
    Height = 13
    OnClick = lblExam92Click
  end
  object lblExamGr101: TLabel
    Left = 80
    Top = 160
    Width = 3
    Height = 13
    OnClick = lblExamGr101Click
  end
  object lblExamGr102: TLabel
    Left = 192
    Top = 160
    Width = 3
    Height = 13
    OnClick = lblExamGr102Click
  end
  object lblExamGr111: TLabel
    Left = 80
    Top = 192
    Width = 3
    Height = 13
    OnClick = lblExamGr111Click
  end
  object lblExamGr112: TLabel
    Left = 192
    Top = 192
    Width = 3
    Height = 13
    OnClick = lblExamGr112Click
  end
  object lblExamGr121: TLabel
    Left = 80
    Top = 224
    Width = 3
    Height = 13
    OnClick = lblExamGr121Click
  end
  object lblExamGr122: TLabel
    Left = 192
    Top = 224
    Width = 3
    Height = 13
    OnClick = lblExamGr122Click
  end
  object lblSubTitle: TLabel
    Left = 30
    Top = 296
    Width = 237
    Height = 24
    Caption = 'Suggested Invigilators:'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -20
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object lblSubGrade: TLabel
    Left = 48
    Top = 368
    Width = 33
    Height = 13
    Caption = 'Grade:'
  end
  object lblSubSubject: TLabel
    Left = 48
    Top = 400
    Width = 40
    Height = 13
    Caption = 'Subject:'
  end
  object lblNotesTitle: TLabel
    Left = 36
    Top = 485
    Width = 64
    Height = 24
    Caption = 'Notes:'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -20
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object lblRandomRollTitle: TLabel
    Left = 294
    Top = 485
    Width = 136
    Height = 24
    Caption = 'Random Roll:'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -20
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object lblRandomHours: TLabel
    Left = 296
    Top = 525
    Width = 85
    Height = 13
    Caption = 'Hours Invigilated:'
  end
  object Shape1: TShape
    Left = 296
    Top = 621
    Width = 185
    Height = 33
  end
  object lblRandomTeacher: TLabel
    Left = 312
    Top = 629
    Width = 3
    Height = 13
  end
  object lblInvigilationTitle: TLabel
    Left = 536
    Top = 29
    Width = 117
    Height = 24
    Caption = 'Invigilation'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -20
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object lblInfoExam: TLabel
    Left = 308
    Top = 170
    Width = 3
    Height = 13
  end
  object lbxMatric: TListBox
    Left = 528
    Top = 327
    Width = 249
    Height = 154
    ItemHeight = 13
    Sorted = True
    TabOrder = 17
  end
  object lbxUnavailable: TListBox
    Left = 528
    Top = 504
    Width = 249
    Height = 153
    ItemHeight = 13
    TabOrder = 16
  end
  object cbxExamDate: TComboBox
    Left = 304
    Top = 22
    Width = 185
    Height = 21
    ItemHeight = 13
    Sorted = True
    TabOrder = 0
    OnChange = cbxExamDateChange
  end
  object sedSub: TSpinEdit
    Left = 120
    Top = 368
    Width = 73
    Height = 22
    MaxValue = 12
    MinValue = 8
    TabOrder = 1
    Value = 8
    OnChange = sedSubChange
  end
  object cbxSub: TComboBox
    Left = 120
    Top = 400
    Width = 145
    Height = 21
    ItemHeight = 13
    TabOrder = 2
    OnChange = cbxSubChange
  end
  object lbxSub: TListBox
    Left = 296
    Top = 320
    Width = 193
    Height = 129
    ItemHeight = 13
    TabOrder = 3
  end
  object hdrTeachers: THeader
    Left = 296
    Top = 296
    Width = 194
    Height = 25
    Sections.Sections = (
      #0'123'#0'Grade Subject Teachers')
    TabOrder = 4
  end
  object lbxNotes: TListBox
    Left = 32
    Top = 549
    Width = 225
    Height = 102
    ItemHeight = 13
    TabOrder = 5
  end
  object hdrDates: THeader
    Left = 32
    Top = 525
    Width = 225
    Height = 25
    Sections.Sections = (
      #0'87'#0'Important Dates')
    TabOrder = 6
  end
  object radInvigilators: TRadioButton
    Left = 304
    Top = 573
    Width = 113
    Height = 17
    Caption = 'Invigilators'
    TabOrder = 7
  end
  object radMatric: TRadioButton
    Left = 304
    Top = 589
    Width = 113
    Height = 17
    Caption = 'Grade 12'
    TabOrder = 8
  end
  object radAll: TRadioButton
    Left = 304
    Top = 557
    Width = 113
    Height = 17
    Caption = 'All'
    Checked = True
    TabOrder = 9
    TabStop = True
  end
  object btnROLL: TButton
    Left = 392
    Top = 557
    Width = 89
    Height = 49
    Caption = 'ROLL'
    TabOrder = 10
    OnClick = btnROLLClick
  end
  object edtRandomHours: TEdit
    Left = 408
    Top = 525
    Width = 57
    Height = 21
    TabOrder = 11
  end
  object lbxAvailable: TListBox
    Left = 528
    Top = 112
    Width = 249
    Height = 193
    ItemHeight = 13
    Sorted = True
    TabOrder = 12
  end
  object hdrInvigilators: THeader
    Left = 528
    Top = 88
    Width = 250
    Height = 25
    Sections.Sections = (
      #0'107'#0'Invigilation Teachers')
    TabOrder = 13
  end
  object hdrUnavailable: THeader
    Left = 528
    Top = 480
    Width = 250
    Height = 25
    Sections.Sections = (
      #0'220'#0'Unavailable Teachers (see Important Dates)')
    TabOrder = 14
  end
  object hdrMatric: THeader
    Left = 528
    Top = 303
    Width = 250
    Height = 25
    Sections.Sections = (
      #0'131'#0'Grade 12 Matric Teachers')
    TabOrder = 15
  end
  inline Frame21: TFrame2
    Left = 784
    Top = 88
    Width = 569
    Height = 569
    TabOrder = 18
  end
  object btnExit: TButton
    Left = 1096
    Top = 21
    Width = 99
    Height = 41
    Caption = 'Exit'
    TabOrder = 19
    OnClick = btnExitClick
  end
  object redHelp: TRichEdit
    Left = 680
    Top = 16
    Width = 401
    Height = 49
    Lines.Strings = (
      
        'Keep in mind about the Extra Time Kids, and the Grade Managers f' +
        'or the Exam. '
      
        'Remember that the Teachers Pictures can be clicked to post a log' +
        ' into Log.txt to '
      
        'keep track of why you increased or decreased their Invigilated H' +
        'ours.')
    TabOrder = 20
  end
  object btnSummary: TButton
    Left = 1200
    Top = 21
    Width = 99
    Height = 41
    Caption = 'Summary'
    TabOrder = 21
    OnClick = btnSummaryClick
  end
  object btnHelp: TBitBtn
    Left = 1304
    Top = 21
    Width = 49
    Height = 41
    TabOrder = 22
    OnClick = btnHelpClick
    Kind = bkHelp
  end
  object Timer1: TTimer
    Enabled = False
    Interval = 20000
    OnTimer = Timer1Timer
    Left = 984
    Top = 288
  end
end
