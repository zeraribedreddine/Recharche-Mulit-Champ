object Form1: TForm1
  Left = 0
  Top = 0
  Caption = 'Form1'
  ClientHeight = 538
  ClientWidth = 776
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poDesktopCenter
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 776
    Height = 538
    Align = alClient
    Color = clWhite
    ParentBackground = False
    TabOrder = 0
    ExplicitLeft = 272
    ExplicitTop = 248
    ExplicitWidth = 185
    ExplicitHeight = 41
    object GroupBox1: TGroupBox
      Left = 1
      Top = 1
      Width = 774
      Height = 168
      Align = alTop
      BiDiMode = bdRightToLeft
      Caption = #1575#1604#1576#1581#1579'  '#1576#1600#1600#1600
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -19
      Font.Name = 'Cairo'
      Font.Style = [fsBold]
      ParentBiDiMode = False
      ParentFont = False
      TabOrder = 0
      ExplicitWidth = 712
      object RadioB_nom: TRadioButton
        Left = 424
        Top = 40
        Width = 81
        Height = 41
        Caption = #1576#1575#1604#1575#1587#1605
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -19
        Font.Name = 'Cairo'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 0
      end
      object RadioB_date: TRadioButton
        Left = 208
        Top = 40
        Width = 121
        Height = 41
        Caption = #1578#1575#1585#1610#1582' '#1575#1604#1605#1610#1604#1575#1583
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -19
        Font.Name = 'Cairo'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 1
      end
      object RadioB_willaya: TRadioButton
        Left = 48
        Top = 40
        Width = 81
        Height = 41
        Caption = #1575#1604#1608#1604#1575#1610#1577
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -19
        Font.Name = 'Cairo'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 2
      end
      object SearchBox1: TSearchBox
        Left = 152
        Top = 103
        Width = 465
        Height = 44
        Alignment = taCenter
        BevelEdges = [beBottom]
        BevelInner = bvLowered
        BevelKind = bkSoft
        BevelOuter = bvRaised
        BorderStyle = bsNone
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -24
        Font.Name = 'Cairo SemiBold'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 3
        TextHint = #1575#1576#1581#1579' '#1607#1606#1575' ..'
        OnChange = SearchBox1Change
      end
      object RadioB_num: TRadioButton
        Left = 608
        Top = 40
        Width = 81
        Height = 41
        Caption = #1576#1575#1604#1585#1602#1605
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -19
        Font.Name = 'Cairo'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 4
        OnClick = RadioB_numClick
      end
    end
    object DBGrid1: TDBGrid
      Left = 1
      Top = 169
      Width = 774
      Height = 368
      Align = alClient
      BiDiMode = bdRightToLeft
      DataSource = ds_tbl_test
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Cairo'
      Font.Style = [fsBold]
      ParentBiDiMode = False
      ParentFont = False
      TabOrder = 1
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'Tahoma'
      TitleFont.Style = []
      Columns = <
        item
          Alignment = taCenter
          Expanded = False
          FieldName = 'id'
          Title.Alignment = taCenter
          Title.Caption = #1575#1604#1585#1602#1605
          Title.Font.Charset = ANSI_CHARSET
          Title.Font.Color = clWindowText
          Title.Font.Height = -19
          Title.Font.Name = 'Cairo'
          Title.Font.Style = [fsBold]
          Width = 190
          Visible = True
        end
        item
          Alignment = taCenter
          Expanded = False
          FieldName = 'nom'
          Title.Alignment = taCenter
          Title.Caption = #1575#1604#1575#1587#1605
          Title.Font.Charset = ANSI_CHARSET
          Title.Font.Color = clWindowText
          Title.Font.Height = -19
          Title.Font.Name = 'Cairo'
          Title.Font.Style = [fsBold]
          Width = 190
          Visible = True
        end
        item
          Alignment = taCenter
          Expanded = False
          FieldName = 'date'
          Title.Alignment = taCenter
          Title.Caption = #1578#1575#1585#1610#1582' '#1575#1604#1605#1610#1604#1575#1583
          Title.Font.Charset = ANSI_CHARSET
          Title.Font.Color = clWindowText
          Title.Font.Height = -19
          Title.Font.Name = 'Cairo'
          Title.Font.Style = [fsBold]
          Width = 190
          Visible = True
        end
        item
          Alignment = taCenter
          Expanded = False
          FieldName = 'willaya'
          Title.Alignment = taCenter
          Title.Caption = #1575#1604#1608#1604#1575#1610#1577
          Title.Font.Charset = ANSI_CHARSET
          Title.Font.Color = clWindowText
          Title.Font.Height = -19
          Title.Font.Name = 'Cairo'
          Title.Font.Style = [fsBold]
          Width = 190
          Visible = True
        end>
    end
  end
  object tbl_test: TFDTable
    Active = True
    IndexFieldNames = 'id'
    Connection = MyConnection
    UpdateOptions.UpdateTableName = 'Tabl_test'
    TableName = 'Tabl_test'
    Left = 352
    Top = 280
    object tbl_testid: TFDAutoIncField
      FieldName = 'id'
      Origin = 'id'
      ProviderFlags = [pfInWhere, pfInKey]
      ReadOnly = True
    end
    object tbl_testnom: TWideStringField
      FieldName = 'nom'
      Origin = 'nom'
      Size = 255
    end
    object tbl_testdate: TSQLTimeStampField
      FieldName = 'date'
      Origin = '[date]'
    end
    object tbl_testwillaya: TWideStringField
      FieldName = 'willaya'
      Origin = 'willaya'
      Size = 255
    end
  end
  object MyConnection: TFDConnection
    Params.Strings = (
      'Database=C:\Users\kikatokiro\Desktop\Recharch\DB\test100.mdb'
      'DriverID=MSAcc')
    Connected = True
    LoginPrompt = False
    Left = 432
    Top = 328
  end
  object ds_tbl_test: TDataSource
    DataSet = tbl_test
    Left = 304
    Top = 344
  end
end
