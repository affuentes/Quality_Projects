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
  Position = poDesktopCenter
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 272
    Top = 24
    Width = 144
    Height = 26
    Caption = 'Sistema de Citas '
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -21
    Font.Name = 'Calibri'
    Font.Style = []
    ParentFont = False
  end
  object panBotones: TPanel
    Left = 65
    Top = 72
    Width = 520
    Height = 185
    TabOrder = 0
    object btMedico: TButton
      Left = 43
      Top = 49
      Width = 87
      Height = 87
      Caption = 'M'#233'dico'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -21
      Font.Name = 'Calibri'
      Font.Style = []
      ParentFont = False
      TabOrder = 0
      OnClick = btMedicoClick
    end
    object btPaciente: TButton
      Left = 163
      Top = 49
      Width = 87
      Height = 87
      Caption = 'Paciente'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -21
      Font.Name = 'Calibri'
      Font.Style = []
      ParentFont = False
      TabOrder = 1
      OnClick = btPacienteClick
    end
    object btCita: TButton
      Left = 288
      Top = 49
      Width = 87
      Height = 87
      Caption = 'Cita'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -21
      Font.Name = 'Calibri'
      Font.Style = []
      ParentFont = False
      TabOrder = 2
      OnClick = btCitaClick
    end
    object btUsuario: TButton
      Left = 400
      Top = 49
      Width = 87
      Height = 87
      Caption = 'Usuario'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -21
      Font.Name = 'Calibri'
      Font.Style = []
      ParentFont = False
      TabOrder = 3
      OnClick = btUsuarioClick
    end
  end
  object btAyuda: TButton
    Left = 584
    Top = 288
    Width = 82
    Height = 32
    Caption = 'Ayuda'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -21
    Font.Name = 'Calibri'
    Font.Style = []
    ParentFont = False
    TabOrder = 1
  end
end
