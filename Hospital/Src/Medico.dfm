object MedicoFrm: TMedicoFrm
  Left = 0
  Top = 0
  Caption = 'Medico'
  ClientHeight = 201
  ClientWidth = 460
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
    object btRegresar: TButton
      Left = 344
      Top = 8
      Width = 75
      Height = 75
      Caption = 'Regresar'
      TabOrder = 0
    end
    object btEliminar: TButton
      Left = 263
      Top = 8
      Width = 75
      Height = 75
      Caption = 'Eliminar'
      TabOrder = 1
    end
    object btCambiar: TButton
      Left = 182
      Top = 8
      Width = 75
      Height = 75
      Caption = 'Cambiar'
      TabOrder = 2
    end
    object btAgregar: TButton
      Left = 101
      Top = 8
      Width = 75
      Height = 75
      Caption = 'Agregar'
      TabOrder = 3
    end
    object btAyuda: TButton
      Left = 20
      Top = 8
      Width = 75
      Height = 75
      Caption = 'Ayuda'
      TabOrder = 4
    end
  end
end
