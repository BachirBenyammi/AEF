object Frm_Trait: TFrm_Trait
  Left = 242
  Top = 141
  Width = 638
  Height = 532
  BorderIcons = [biSystemMenu]
  Caption = 'Traitment d'#39'automate'
  Color = 16046278
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poDesktopCenter
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 188
    Height = 505
    Align = alLeft
    BevelInner = bvSpace
    BevelOuter = bvLowered
    Color = clSkyBlue
    TabOrder = 0
    object Label2: TLabel
      Left = 6
      Top = 184
      Width = 108
      Height = 13
      Caption = 'Type de tratement:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label1: TLabel
      Left = 8
      Top = 232
      Width = 109
      Height = 13
      Caption = 'Nombre  des Etats:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object BtnEtablir: TBitBtn
      Left = 15
      Top = 288
      Width = 150
      Height = 45
      Hint = 'Etablir'
      Caption = '&Etabir'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBackground
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      ParentShowHint = False
      ShowHint = True
      TabOrder = 0
      OnClick = BtnEtablirClick
      Glyph.Data = {
        16020000424D160200000000000076000000280000001A0000001A0000000100
        040000000000A001000000000000000000001000000000000000000000000000
        BF0000BF000000BFBF00BF000000BF00BF00BFBF0000C0C0C000808080000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00777777777777
        7777777777777700000077777777777777777777777777000000777777788777
        77777777777777000000777777008877777777777777770000007777770B0887
        7777777777777700000077777770B0887777777777777700000077777770BB08
        87777777777777000000777777770BB088777777777777000000777777770BBB
        08877777777777000000777777000BBBB08877777777770000007777770BBBBB
        BB08777777777700000077777770BBB00007777777777700000077777770BBBB
        08877777777777000000777777770BBBB0887777777777000000777777770BBB
        BB0887777777770000007777770000BBBBB088777777770000007777770BBBBB
        BBBB087777777700000077777770BBBBB000077777777700000077777770BBBB
        BB088777777777000000777777770BBBBBB08877777777000000777777770BBB
        BBBB08877777770000007777777770BBBBBBB0887777770000007777777770BB
        BBBBBB0877777700000077777777700000000007777777000000777777777777
        7777777777777700000077777777777777777777777777000000}
      Style = bsWin31
    end
    object BtnAnalyse: TBitBtn
      Left = 15
      Top = 344
      Width = 150
      Height = 45
      Caption = '&Analyser'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBackground
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 1
      OnClick = BtnAnalyseClick
      Glyph.Data = {
        F2010000424DF201000000000000760000002800000024000000130000000100
        0400000000007C01000000000000000000001000000000000000000000000000
        80000080000000808000800000008000800080800000C0C0C000808080000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333334433333
        3333333333388F3333333333000033334224333333333333338338F333333333
        0000333422224333333333333833338F33333333000033422222243333333333
        83333338F3333333000034222A22224333333338F33F33338F33333300003222
        A2A2224333333338F383F3338F33333300003A2A222A222433333338F8333F33
        38F33333000034A22222A22243333338833333F3338F333300004222A2222A22
        2433338F338F333F3338F3330000222A3A2224A22243338F3838F338F3338F33
        0000A2A333A2224A2224338F83338F338F3338F300003A33333A2224A2224338
        333338F338F3338F000033333333A2224A2243333333338F338F338F00003333
        33333A2224A2233333333338F338F83300003333333333A2224A333333333333
        8F338F33000033333333333A222433333333333338F338F30000333333333333
        A224333333333333338F38F300003333333333333A223333333333333338F8F3
        000033333333333333A3333333333333333383330000}
      NumGlyphs = 2
    end
    object BtnInitial: TBitBtn
      Left = 15
      Top = 128
      Width = 150
      Height = 45
      Caption = '&Initialiser'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBackground
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 2
      OnClick = BtnInitialClick
      Glyph.Data = {
        DE010000424DDE01000000000000760000002800000024000000120000000100
        0400000000006801000000000000000000001000000000000000000000000000
        80000080000000808000800000008000800080800000C0C0C000808080000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333444444
        33333333333F8888883F33330000324334222222443333388F3833333388F333
        000032244222222222433338F8833FFFFF338F3300003222222AAAAA22243338
        F333F88888F338F30000322222A33333A2224338F33F8333338F338F00003222
        223333333A224338F33833333338F38F00003222222333333A444338FFFF8F33
        3338888300003AAAAAAA33333333333888888833333333330000333333333333
        333333333333333333FFFFFF000033333333333344444433FFFF333333888888
        00003A444333333A22222438888F333338F3333800003A2243333333A2222438
        F38F333333833338000033A224333334422224338338FFFFF8833338000033A2
        22444442222224338F3388888333FF380000333A2222222222AA243338FF3333
        33FF88F800003333AA222222AA33A3333388FFFFFF8833830000333333AAAAAA
        3333333333338888883333330000333333333333333333333333333333333333
        0000}
      NumGlyphs = 2
    end
    object CB_Choix: TComboBox
      Left = 9
      Top = 200
      Width = 168
      Height = 24
      Style = csDropDownList
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ItemHeight = 16
      ParentFont = False
      TabOrder = 3
      OnChange = CB_ChoixChange
      Items.Strings = (
        'Automate Miroir'
        'Automate Complet'
        'Automate D'#233'terministe')
    end
    object Edit_Nbr_Etat: TEdit
      Left = 8
      Top = 248
      Width = 169
      Height = 21
      TabOrder = 4
      OnKeyPress = Edit_Nbr_EtatKeyPress
    end
    object BitBtn1: TBitBtn
      Left = 15
      Top = 400
      Width = 150
      Height = 45
      Caption = '&Fermer'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBackground
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 5
      Kind = bkClose
    end
    object BitBtn2: TBitBtn
      Left = 16
      Top = 16
      Width = 150
      Height = 45
      Caption = '&Ouvrir'
      TabOrder = 6
      OnClick = BitBtn2Click
      Glyph.Data = {
        F6000000424DF600000000000000760000002800000010000000100000000100
        04000000000080000000CE0E0000C40E00001000000000000000000000000000
        80000080000000808000800000008000800080800000C0C0C000808080000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00777777777777
        77777777777777777777000000000007777700333333333077770B0333333333
        07770FB03333333330770BFB0333333333070FBFB000000000000BFBFBFBFB07
        77770FBFBFBFBF0777770BFB0000000777777000777777770007777777777777
        7007777777770777070777777777700077777777777777777777}
    end
    object BitBtn3: TBitBtn
      Left = 16
      Top = 72
      Width = 150
      Height = 45
      Caption = '&Enregister'
      TabOrder = 7
      OnClick = BitBtn3Click
      Glyph.Data = {
        F6000000424DF600000000000000760000002800000010000000100000000100
        04000000000080000000CE0E0000C40E00001000000000000000000000000000
        8000008000000080800080000000800080008080000080808000C0C0C0000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00222222222222
        2222220000000000000220330000008803022033000000880302203300000088
        0302203300000000030220333333333333022033000000003302203088888888
        0302203088888888030220308888888803022030888888880302203088888888
        0002203088888888080220000000000000022222222222222222}
    end
  end
  object Panel2: TPanel
    Left = 189
    Top = 0
    Width = 441
    Height = 505
    Align = alRight
    Color = 15447685
    TabOrder = 1
    object GB1: TGroupBox
      Left = 8
      Top = 8
      Width = 425
      Height = 241
      Caption = 'Matrice d'#39'AEF'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 0
      object SG1: TStringGrid
        Left = 8
        Top = 16
        Width = 409
        Height = 217
        ColCount = 2
        DefaultColWidth = 46
        RowCount = 2
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        Options = [goFixedVertLine, goFixedHorzLine, goVertLine, goHorzLine, goRangeSelect, goRowSizing, goColSizing, goRowMoving, goColMoving, goEditing, goTabs]
        ParentFont = False
        TabOrder = 0
        RowHeights = (
          24
          24)
      end
    end
    object GB2: TGroupBox
      Left = 8
      Top = 253
      Width = 425
      Height = 236
      Caption = 'Matrice d'#39'AEF'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 1
      object SG2: TStringGrid
        Left = 8
        Top = 16
        Width = 409
        Height = 209
        ColCount = 2
        DefaultColWidth = 46
        RowCount = 2
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 0
      end
    end
  end
  object SD: TSaveDialog
    FileName = 'Table.ini'
    Filter = 'Ini Files|*.Ini'
    Left = 88
    Top = 464
  end
  object OD: TOpenDialog
    FileName = 'Table.ini'
    Filter = 'Ini Files|*.Ini'
    Left = 56
    Top = 464
  end
end
