object CitaFrm: TCitaFrm
  Left = 0
  Top = 0
  Caption = 'Cita'
  ClientHeight = 326
  ClientWidth = 453
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
  object panBotones: TPanel
    Left = 8
    Top = 8
    Width = 439
    Height = 89
    TabOrder = 0
    object Button1: TButton
      Left = 344
      Top = 8
      Width = 75
      Height = 75
      Caption = 'Regresar'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -19
      Font.Name = 'Calibri'
      Font.Style = []
      ParentFont = False
      TabOrder = 0
    end
    object Button2: TButton
      Left = 263
      Top = 8
      Width = 75
      Height = 75
      Caption = 'Eliminar'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -19
      Font.Name = 'Calibri'
      Font.Style = []
      ParentFont = False
      TabOrder = 1
    end
    object Button3: TButton
      Left = 182
      Top = 8
      Width = 75
      Height = 75
      Caption = 'Cambiar'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -19
      Font.Name = 'Calibri'
      Font.Style = []
      ParentFont = False
      TabOrder = 2
    end
    object Button4: TButton
      Left = 101
      Top = 8
      Width = 75
      Height = 75
      Caption = 'Agregar'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -19
      Font.Name = 'Calibri'
      Font.Style = []
      ParentFont = False
      TabOrder = 3
    end
    object Button5: TButton
      Left = 20
      Top = 8
      Width = 75
      Height = 75
      Caption = 'Ayuda'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -19
      Font.Name = 'Calibri'
      Font.Style = []
      ParentFont = False
      TabOrder = 4
    end
  end
  object DBGrid1: TDBGrid
    Left = 28
    Top = 136
    Width = 399
    Height = 120
    DataSource = DM_HospitalFrm.DSCita
    TabOrder = 1
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
    Columns = <
      item
        Expanded = False
        FieldName = 'idCita'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'idPaciente'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'idMedico'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Fecha'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'metodoPago'
        Width = 69
        Visible = True
      end>
  end
end
