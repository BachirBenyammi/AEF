object MainFrm: TMainFrm
  Left = 278
  Top = 157
  Width = 406
  Height = 422
  Anchors = []
  BorderIcons = [biSystemMenu]
  Caption = 'MINI PROJET - Automate d'#39'Etat Fini -'
  Color = cl3DLight
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poDesktopCenter
  Visible = True
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 23
    Top = 12
    Width = 358
    Height = 81
    BevelInner = bvLowered
    BevelWidth = 3
    Caption = ' '
    TabOrder = 0
    object Label1: TLabel
      Left = 36
      Top = 14
      Width = 278
      Height = 22
      Caption = 'MINI PROJET DE MODULE :'
      Font.Charset = ANSI_CHARSET
      Font.Color = clMaroon
      Font.Height = -19
      Font.Name = 'Bookman Old Style'
      Font.Style = [fsBold]
      ParentFont = False
      Transparent = True
    end
    object Label4: TLabel
      Left = 74
      Top = 49
      Width = 193
      Height = 22
      Caption = 'Th'#233'orie des langage'
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlue
      Font.Height = -19
      Font.Name = 'Bookman Old Style'
      Font.Style = [fsBold]
      ParentFont = False
      Transparent = True
    end
  end
  object Panel2: TPanel
    Left = 23
    Top = 102
    Width = 358
    Height = 280
    BevelInner = bvLowered
    BevelWidth = 3
    ParentShowHint = False
    ShowHint = True
    TabOrder = 1
    object Panel3: TPanel
      Left = 60
      Top = 13
      Width = 229
      Height = 249
      BevelInner = bvLowered
      BevelOuter = bvSpace
      TabOrder = 0
      object Bevel4: TBevel
        Left = 0
        Top = 146
        Width = 229
        Height = 50
        Shape = bsBottomLine
        Style = bsRaised
      end
      object Bevel3: TBevel
        Left = 0
        Top = 97
        Width = 229
        Height = 50
        Shape = bsBottomLine
        Style = bsRaised
      end
      object Bevel2: TBevel
        Left = -9
        Top = 47
        Width = 229
        Height = 50
        Shape = bsBottomLine
        Style = bsRaised
      end
      object Bevel1: TBevel
        Left = -10
        Top = 0
        Width = 231
        Height = 50
        Shape = bsBottomLine
        Style = bsRaised
      end
      object SpeedButton1: TSpeedButton
        Left = 11
        Top = 10
        Width = 204
        Height = 31
        Cursor = crHandPoint
        Caption = '&Miroir d'#39'une AEF'
        Flat = True
        Font.Charset = ARABIC_CHARSET
        Font.Color = clRed
        Font.Height = -19
        Font.Name = 'Andalus'
        Font.Style = [fsBold]
        ParentFont = False
        ParentShowHint = False
        ShowHint = True
        OnClick = SpeedButton1Click
      end
      object SpeedButton2: TSpeedButton
        Left = 10
        Top = 55
        Width = 205
        Height = 31
        Cursor = crHandPoint
        Caption = 'AEF &Complet'
        Flat = True
        Font.Charset = ARABIC_CHARSET
        Font.Color = clRed
        Font.Height = -19
        Font.Name = 'Andalus'
        Font.Style = [fsBold]
        ParentFont = False
        OnClick = SpeedButton2Click
      end
      object SpeedButton3: TSpeedButton
        Left = 9
        Top = 105
        Width = 206
        Height = 32
        Cursor = crHandPoint
        Caption = 'AEF &Dit'#233'rministe'
        Flat = True
        Font.Charset = ARABIC_CHARSET
        Font.Color = clRed
        Font.Height = -19
        Font.Name = 'Andalus'
        Font.Style = [fsBold]
        ParentFont = False
        OnClick = SpeedButton3Click
      end
      object SpeedButton5: TSpeedButton
        Left = 9
        Top = 155
        Width = 206
        Height = 32
        Cursor = crHandPoint
        Caption = '&A &Propos'
        Flat = True
        Font.Charset = ARABIC_CHARSET
        Font.Color = clRed
        Font.Height = -19
        Font.Name = 'Andalus'
        Font.Style = [fsBold]
        Glyph.Data = {
          76010000424D7601000000000000760000002800000020000000100000000100
          04000000000000010000120B0000120B00001000000000000000000000000000
          800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
          FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
          3333333333FFFFF3333333333F797F3333333333F737373FF333333BFB999BFB
          33333337737773773F3333BFBF797FBFB33333733337333373F33BFBFBFBFBFB
          FB3337F33333F33337F33FBFBFB9BFBFBF3337333337F333373FFBFBFBF97BFB
          FBF37F333337FF33337FBFBFBFB99FBFBFB37F3333377FF3337FFBFBFBFB99FB
          FBF37F33333377FF337FBFBF77BF799FBFB37F333FF3377F337FFBFB99FB799B
          FBF373F377F3377F33733FBF997F799FBF3337F377FFF77337F33BFBF99999FB
          FB33373F37777733373333BFBF999FBFB3333373FF77733F7333333BFBFBFBFB
          3333333773FFFF77333333333FBFBF3333333333377777333333}
        NumGlyphs = 2
        ParentFont = False
        OnClick = SpeedButton5Click
      end
      object SpeedButton6: TSpeedButton
        Left = 9
        Top = 204
        Width = 206
        Height = 32
        Cursor = crHandPoint
        Hint = 'Fermer l'#39'application'
        Caption = '&Quitter'
        Flat = True
        Font.Charset = ARABIC_CHARSET
        Font.Color = clRed
        Font.Height = -19
        Font.Name = 'Andalus'
        Font.Style = [fsBold]
        Glyph.Data = {
          76010000424D7601000000000000760000002800000020000000100000000100
          04000000000000010000120B0000120B00001000000000000000000000000000
          800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
          FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00330000000000
          03333377777777777F333301BBBBBBBB033333773F3333337F3333011BBBBBBB
          0333337F73F333337F33330111BBBBBB0333337F373F33337F333301110BBBBB
          0333337F337F33337F333301110BBBBB0333337F337F33337F333301110BBBBB
          0333337F337F33337F333301110BBBBB0333337F337F33337F333301110BBBBB
          0333337F337F33337F333301110BBBBB0333337F337FF3337F33330111B0BBBB
          0333337F337733337F333301110BBBBB0333337F337F33337F333301110BBBBB
          0333337F3F7F33337F333301E10BBBBB0333337F7F7F33337F333301EE0BBBBB
          0333337F777FFFFF7F3333000000000003333377777777777333}
        NumGlyphs = 2
        ParentFont = False
        OnClick = SpeedButton6Click
      end
    end
  end
end
