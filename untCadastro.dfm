object Form1: TForm1
  Left = 0
  Top = 0
  Caption = 'CRUD'
  ClientHeight = 208
  ClientWidth = 280
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
  object Label2: TLabel
    Left = 56
    Top = 27
    Width = 33
    Height = 13
    Caption = 'Codigo'
  end
  object Label3: TLabel
    Left = 56
    Top = 67
    Width = 46
    Height = 13
    Caption = 'Descri'#231#227'o'
  end
  object Label1: TLabel
    Left = 56
    Top = 107
    Width = 27
    Height = 13
    Caption = 'Pre'#231'o'
  end
  object edtcod: TEdit
    Left = 128
    Top = 24
    Width = 121
    Height = 21
    TabOrder = 0
  end
  object edtdesc: TEdit
    Left = 128
    Top = 64
    Width = 121
    Height = 21
    TabOrder = 1
  end
  object edtpreco: TEdit
    Left = 128
    Top = 104
    Width = 121
    Height = 21
    TabOrder = 2
  end
  object Button1: TButton
    Left = 174
    Top = 152
    Width = 75
    Height = 25
    Caption = 'Salvar'
    TabOrder = 3
    OnClick = Button1Click
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
  end
  object DataSource1: TDataSource
    DataSet = FDTable1
    Left = 216
    Top = 16
  end
end
