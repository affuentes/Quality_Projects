object MenuPpalFrm: TMenuPpalFrm
  Left = 0
  Top = 0
  Caption = 'Menu Principal'
  ClientHeight = 328
  ClientWidth = 674
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 144
    Top = 72
    Width = 417
    Height = 185
    TabOrder = 0
    object btMedico: TButton
      Left = 56
      Top = 72
      Width = 75
      Height = 25
      Caption = 'Medico'
      TabOrder = 0
    end
    object btPaciente: TButton
      Left = 176
      Top = 72
      Width = 75
      Height = 25
      Caption = 'Paciente'
      TabOrder = 1
    end
    object btCita: TButton
      Left = 296
      Top = 72
      Width = 75
      Height = 25
      Caption = 'Cita'
      TabOrder = 2
    end
  end
end
