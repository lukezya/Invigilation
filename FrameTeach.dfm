object Frame1: TFrame1
  Left = 0
  Top = 0
  Width = 278
  Height = 151
  TabOrder = 0
  object Shape1: TShape
    Left = 0
    Top = 0
    Width = 276
    Height = 129
  end
  object imgPic: TImage
    Left = 8
    Top = 8
    Width = 89
    Height = 105
    OnClick = imgPicClick
  end
  object lblCode: TLabel
    Left = 112
    Top = 16
    Width = 35
    Height = 13
    Caption = 'lblCode'
    Color = clWhite
    ParentColor = False
  end
  object lblTeacher: TLabel
    Left = 112
    Top = 40
    Width = 49
    Height = 13
    Caption = 'lblTeacher'
    Color = clWhite
    ParentColor = False
  end
  object shpHours: TShape
    Left = 200
    Top = 16
    Width = 33
    Height = 33
  end
  object lblHours: TLabel
    Left = 208
    Top = 25
    Width = 6
    Height = 13
    Caption = '*'
    Color = clWhite
    ParentColor = False
  end
  object imgDec: TImage
    Left = 120
    Top = 85
    Width = 33
    Height = 17
    Picture.Data = {
      0A54504E474F626A65637489504E470D0A1A0A0000000D494844520000001A00
      00000A0806000000AA9C4E550000000467414D410000B18F0BFC610500000009
      70485973000017110000171101CA26F33F000000484944415478DA6364A01360
      B488EEBACFC0C4A0306A114516AD5BDFCE20F9E53DD50CB78CED1A608B74DE3C
      6260FBFB876A169D1357C26E112D01FD2C328BEEB0606460E6A0B5450076B921
      58380522EE0000000049454E44AE426082}
    OnClick = imgDecClick
  end
  object imgInc: TImage
    Left = 224
    Top = 80
    Width = 25
    Height = 25
    Picture.Data = {
      0A54504E474F626A65637489504E470D0A1A0A0000000D494844520000001300
      0000120806000000B90CE5690000000467414D410000B18F0BFC610500000009
      70485973000017110000171101CA26F33F0000010B4944415478DA6364C0014C
      93DA73FF32FC4F421767FAFF7FE799F9D515D8F430E232CC24A96DF52BA59721
      1FC43FC0C5B83F7231485E93BD706E5E9521C9863DD47F10F25AFE155C8CEF35
      3F83CA71F5116F984942FB4E96BFCC6EE8127F19FFFFB96E7F99E58BF017B818
      FB377606FD5D06BF98FE32B3A1ABFFC7F4E726A35152DBF93B96370D3E897E64
      2017802CD1DBA9FF66A418669CD076FA2FC76F8DDF2C7FFEA00428EB3F867BA6
      77047E72FD848BB1FC6661503DAEF691E917F37F64B54CFF9899D8BF707C6734
      8F6F5760F8C3A2806EDB3F963F0D0F8CEEDBA3270DF5A31A77987EB3A4A2AB67
      62617C318813EDD033CC2CBE6D1AD33F964C74F13FCC7F779D5950E98E4D0F00
      B4E2CC68B688C08F0000000049454E44AE426082}
    OnClick = imgIncClick
  end
  object edtChange: TEdit
    Left = 168
    Top = 80
    Width = 41
    Height = 24
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 0
    Text = '1'
  end
end
