object Form1: TForm1
  Left = 297
  Top = 220
  BorderIcons = [biSystemMenu, biMinimize]
  BorderStyle = bsSingle
  Caption = '������� �������� ����������������'
  ClientHeight = 265
  ClientWidth = 384
  Color = clBtnFace
  Font.Charset = RUSSIAN_CHARSET
  Font.Color = clWindowText
  Font.Height = -13
  Font.Name = 'Arial'
  Font.Style = []
  Menu = MainMenu1
  OldCreateOrder = False
  OnClose = FormClose
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 16
  object Label5: TLabel
    Left = 243
    Top = 250
    Width = 142
    Height = 16
    Caption = '(c) Fokin Alexandr, 2003'
    Font.Charset = RUSSIAN_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Arial'
    Font.Style = []
    ParentFont = False
  end
  object GroupBox1: TGroupBox
    Left = 0
    Top = 27
    Width = 385
    Height = 225
    Caption = '�������� ���� ���������:'
    TabOrder = 0
    object FileListBox1: TFileListBox
      Left = 8
      Top = 16
      Width = 153
      Height = 201
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Courier'
      Font.Style = []
      ItemHeight = 16
      Mask = '*.proga'
      ParentFont = False
      ParentShowHint = False
      PopupMenu = PopupMenu1
      ShowHint = True
      TabOrder = 0
      OnClick = FileListBox1Click
      OnDblClick = FileListBox1DblClick
      OnMouseDown = FileListBox1MouseDown
    end
    object Memo1: TMemo
      Left = 168
      Top = 16
      Width = 209
      Height = 201
      Font.Charset = RUSSIAN_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Courier'
      Font.Style = []
      ParentFont = False
      ReadOnly = True
      ScrollBars = ssVertical
      TabOrder = 1
    end
  end
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 385
    Height = 28
    BevelInner = bvRaised
    BevelOuter = bvLowered
    TabOrder = 1
    object SpeedButton1: TSpeedButton
      Left = 3
      Top = 3
      Width = 22
      Height = 22
      Hint = '������, � ������ �������� � �����'
      Glyph.Data = {
        36030000424D3603000000000000360000002800000010000000100000000100
        18000000000000030000C40E0000C40E00000000000000000000C0C0C0C0C0C0
        C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
        C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
        C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
        C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
        C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0004000C0
        C0C0C0C0C0C0C0C0004000C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
        C0C0C0C0C0C0C0C0C000B800004000C0C0C0C0C0C0C0C0C000B800004000C0C0
        C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C000B80000B800004000C0
        C0C0C0C0C0C0C0C000B80000B800004000C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
        C0C0C000B80000B80000B80000400000400000400000400000B80000B80000B8
        00004000C0C0C0C0C0C0C0C0C0C0C0C000B80000B80000B80000B80000B80000
        B80000B80000B80000B80000B80000B80000B800004000C0C0C0C0C0C000B800
        00B80000B80000B80000B80000B80000B80000B80000B80000B80000B80000B8
        0000B80000B800C0C0C0C0C0C0C0C0C000B80000B80000B80000B80000B80000
        B80000B80000B80000B80000B80000B80000B800C0C0C0C0C0C0C0C0C0C0C0C0
        C0C0C000B80000B80000B800004000C0C0C0C0C0C0C0C0C000B80000B80000B8
        00C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C000B80000B800004000C0
        C0C0C0C0C0C0C0C000B80000B800C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
        C0C0C0C0C0C0C0C0C000B800C0C0C0C0C0C0C0C0C0C0C0C000B800C0C0C0C0C0
        C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
        C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
        C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
        C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
        C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0}
      ParentShowHint = False
      ShowHint = True
      OnClick = SpeedButton1Click
    end
    object SpeedButton2: TSpeedButton
      Left = 27
      Top = 3
      Width = 22
      Height = 22
      Hint = '����!'
      Glyph.Data = {
        36030000424D3603000000000000360000002800000010000000100000000100
        18000000000000030000C40E0000C40E00000000000000000000C0C0C0C0C0C0
        C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
        C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0004000C0C0C0C0C0C0C0
        C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
        C0C0C0C0C0C000B800004000C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
        C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C000B80000B800004000C0
        C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
        C0C0C0C0C0C000B80000B80000B800004000C0C0C0C0C0C0C0C0C0C0C0C0C0C0
        C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C000B80000B80000B80000
        B800004000C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
        C0C0C0C0C0C000B80000B80000B80000B80000B800004000C0C0C0C0C0C0C0C0
        C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C000B80000B80000B80000
        B80000B80000B800004000C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
        C0C0C0C0C0C000B80000B80000B80000B80000B80000B80000B800C0C0C0C0C0
        C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C000B80000B80000B80000
        B80000B80000B800C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
        C0C0C0C0C0C000B80000B80000B80000B80000B800C0C0C0C0C0C0C0C0C0C0C0
        C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C000B80000B80000B80000
        B800C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
        C0C0C0C0C0C000B80000B80000B800C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
        C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C000B80000B800C0C0C0C0
        C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
        C0C0C0C0C0C000B800C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
        C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
        C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0}
      ParentShowHint = False
      ShowHint = True
      OnClick = SpeedButton2Click
    end
    object SpeedButton3: TSpeedButton
      Left = 51
      Top = 3
      Width = 22
      Height = 22
      Hint = '�����'
      Glyph.Data = {
        36030000424D3603000000000000360000002800000010000000100000000100
        18000000000000030000C40E0000C40E00000000000000000000C0C0C0C0C0C0
        C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
        C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0000000000000C0C0C0C0C0C0C0C0C0C0
        C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0000000
        808080808080000000C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
        C0C0C0C0C0C0C0C0C0C0C0C0C0000000808080808080808080000000C0C0C0C0
        C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
        000000808080808080808080000000C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
        C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C000000080808080808080808000
        0000C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
        C0C0C0C0C0C0000000808080808080808080000000C0C0C0C0C0C0C0C0C0C0C0
        C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C000000080808080
        8080808080000000000000000000000000C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
        C0C0C0C0C0C0C0C0C0C0C0C00000008080808080808080808080808080808080
        80000000C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C000
        0000808080808080000000000000808080808080000000C0C0C0C0C0C0C0C0C0
        C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0000000808080000000C0C0C0C0C0C00000
        00808080000000C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C000
        0000808080000000C0C0C0C0C0C0C0C0C0000000000000C0C0C0C0C0C0C0C0C0
        C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0000000808080808080000000C0C0C0C0C0
        C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
        C0C0000000808080808080000000C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
        C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0000000000000000000C0C0
        C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
        C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0}
      ParentShowHint = False
      ShowHint = True
      OnClick = SpeedButton4Click
    end
    object Label1: TLabel
      Left = 96
      Top = 5
      Width = 88
      Height = 16
      Caption = '������� ����:'
    end
    object ComboBox1: TComboBox
      Left = 184
      Top = 3
      Width = 198
      Height = 22
      Font.Charset = RUSSIAN_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Courier'
      Font.Style = []
      ItemHeight = 14
      ParentFont = False
      TabOrder = 0
      OnClick = ComboBox1Click
    end
  end
  object MainMenu1: TMainMenu
    Left = 128
    Top = 152
    object File1: TMenuItem
      Caption = '&����'
      object Play: TMenuItem
        Caption = '&����!'
        OnClick = PlayClick
      end
      object TMenuItem
        Caption = '-'
      end
      object Exit: TMenuItem
        Caption = '&�����'
        OnClick = ExitClick
      end
    end
    object Help1: TMenuItem
      Caption = '&������'
      object Help: TMenuItem
        Caption = '&������'
        OnClick = HelpClick
      end
      object About: TMenuItem
        Caption = '&� ���������'
        OnClick = AboutClick
      end
    end
  end
  object PopupMenu1: TPopupMenu
    AutoPopup = False
    Left = 128
    Top = 184
    object N1: TMenuItem
      Caption = '&����!'
      OnClick = N1Click
    end
    object N2: TMenuItem
      Caption = '&�������� ����'
      OnClick = N2Click
    end
  end
end
