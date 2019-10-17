object Form5: TForm5
  Left = 209
  Top = 112
  Width = 326
  Height = 286
  Caption = 'Log'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object Shape1: TShape
    Left = 24
    Top = 8
    Width = 273
    Height = 225
  end
  object lblDate: TLabel
    Left = 48
    Top = 24
    Width = 27
    Height = 13
    Caption = 'Date:'
    Color = clWhite
    ParentColor = False
  end
  object lblInvigilator: TLabel
    Left = 48
    Top = 152
    Width = 52
    Height = 13
    Caption = 'Invigilator:'
    Color = clWhite
    ParentColor = False
  end
  object lblGrade: TLabel
    Left = 48
    Top = 56
    Width = 33
    Height = 13
    Caption = 'Grade:'
    Color = clWhite
    ParentColor = False
  end
  object lblPaper: TLabel
    Left = 48
    Top = 88
    Width = 32
    Height = 13
    Caption = 'Paper:'
    Color = clWhite
    ParentColor = False
  end
  object lblSession: TLabel
    Left = 48
    Top = 120
    Width = 40
    Height = 13
    Caption = 'Session:'
    Color = clWhite
    ParentColor = False
  end
  object edtDate: TEdit
    Left = 144
    Top = 24
    Width = 121
    Height = 21
    TabOrder = 0
  end
  object edtGrade: TEdit
    Left = 144
    Top = 56
    Width = 121
    Height = 21
    TabOrder = 1
  end
  object edtPaper: TEdit
    Left = 144
    Top = 88
    Width = 121
    Height = 21
    TabOrder = 2
  end
  object edtSession: TEdit
    Left = 144
    Top = 120
    Width = 121
    Height = 21
    TabOrder = 3
  end
  object edtInvigilator: TEdit
    Left = 144
    Top = 152
    Width = 121
    Height = 21
    TabOrder = 4
  end
  object btnAdd: TButton
    Left = 72
    Top = 192
    Width = 81
    Height = 25
    Caption = 'Add to Log'
    TabOrder = 5
    OnClick = btnAddClick
  end
  object btnClose: TBitBtn
    Left = 152
    Top = 192
    Width = 81
    Height = 25
    TabOrder = 6
    OnClick = btnCloseClick
    Kind = bkClose
  end
end
