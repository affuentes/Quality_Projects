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
  object panBotones: TPanel
    Left = 152
    Top = 64
    Width = 417
    Height = 185
    TabOrder = 0
    object btMedico: TButton
      Left = 48
      Top = 41
      Width = 87
      Height = 87
      Caption = 'Medico'
      TabOrder = 0
      OnClick = btMedicoClick
    end
    object btPaciente: TButton
      Left = 168
      Top = 41
      Width = 87
      Height = 87
      Caption = 'Paciente'
      TabOrder = 1
      OnClick = btPacienteClick
    end
    object btCita: TButton
      Left = 280
      Top = 41
      Width = 87
      Height = 87
      Caption = 'Cita'
      TabOrder = 2
      OnClick = btCitaClick
    end
  end
end
