object FrmCadastro: TFrmCadastro
  Left = 0
  Top = 0
  Caption = 'Principal'
  ClientHeight = 242
  ClientWidth = 617
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object DBGrid1: TDBGrid
    Left = 0
    Top = 0
    Width = 617
    Height = 120
    Align = alTop
    DataSource = DataSource1
    TabOrder = 0
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
  end
  object DBNavigator1: TDBNavigator
    Left = 144
    Top = 192
    Width = 250
    Height = 25
    DataSource = DataSource1
    TabOrder = 1
  end
  object Button1: TButton
    Left = 144
    Top = 144
    Width = 75
    Height = 25
    Caption = 'Incluir'
    TabOrder = 2
    OnClick = Button1Click
  end
  object Button2: TButton
    Left = 232
    Top = 144
    Width = 75
    Height = 25
    Caption = 'Alterar'
    TabOrder = 3
    OnClick = Button1Click
  end
  object btexcluir: TButton
    Left = 319
    Top = 144
    Width = 75
    Height = 25
    Caption = 'Excluir'
    TabOrder = 4
    OnClick = btexcluirClick
  end
  object FDConnection1: TFDConnection
    Params.Strings = (
      'Database=C:\Users\PC\Desktop\Projeto\banco\banco.db3'
      'LockingMode=Normal'
      'DriverID=SQLite')
    Connected = True
    Left = 56
    Top = 8
  end
  object FDTable1: TFDTable
    Active = True
    IndexFieldNames = 'codigo'
    Connection = FDConnection1
    UpdateOptions.UpdateTableName = 'produtos'
    TableName = 'produtos'
    Left = 136
    Top = 8
    object FDTable1codigo: TIntegerField
      FieldName = 'codigo'
      Origin = 'codigo'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object FDTable1descricao: TWideMemoField
      FieldName = 'descricao'
      Origin = 'descricao'
      BlobType = ftWideMemo
    end
    object FDTable1preco: TFloatField
      FieldName = 'preco'
      Origin = 'preco'
    end
  end
  object DataSource1: TDataSource
    DataSet = FDTable1
    Left = 216
    Top = 16
  end
  object FDTable2: TFDTable
    Active = True
    IndexFieldNames = 'codigo'
    Connection = FDConnection1
    UpdateOptions.UpdateTableName = 'produtos'
    TableName = 'produtos'
    Left = 416
    Top = 8
    object IntegerField1: TIntegerField
      FieldName = 'codigo'
      Origin = 'codigo'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object WideMemoField1: TWideMemoField
      FieldName = 'descricao'
      Origin = 'descricao'
      BlobType = ftWideMemo
    end
    object FloatField1: TFloatField
      FieldName = 'preco'
      Origin = 'preco'
    end
  end
  object DataSource2: TDataSource
    DataSet = FDTable2
    Left = 472
    Top = 8
  end
end
