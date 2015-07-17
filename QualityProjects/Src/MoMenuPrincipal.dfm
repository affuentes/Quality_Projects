object MoMenuPrincipalFrm: TMoMenuPrincipalFrm
  Left = 0
  Top = 0
  Caption = 'Men'#250' Principal'
  ClientHeight = 390
  ClientWidth = 990
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poDesktopCenter
  WindowState = wsMaximized
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 24
    Top = 32
    Width = 945
    Height = 300
    BevelOuter = bvNone
    TabOrder = 0
    object Bt_Proyectos: TSpeedButton
      Left = 8
      Top = 47
      Width = 150
      Height = 100
      Caption = 'PROYECTOS'
      OnClick = Bt_ProyectosClick
    end
    object Bt_Fases: TSpeedButton
      Left = 164
      Top = 47
      Width = 150
      Height = 100
      Caption = 'FASES DEL PROYECTO'
      OnClick = Bt_FasesClick
    end
    object Bt_Roles: TSpeedButton
      Left = 8
      Top = 153
      Width = 150
      Height = 100
      Caption = 'ROLES DEL PROYECTO'
      OnClick = Bt_RolesClick
    end
    object BtFuncionesRol: TSpeedButton
      Left = 164
      Top = 153
      Width = 150
      Height = 100
      Caption = 'FUNCIONES DEL ROL'
      OnClick = BtFuncionesRolClick
    end
    object Bt_Actividades: TSpeedButton
      Left = 544
      Top = 47
      Width = 200
      Height = 100
      Caption = 'ACTIVIDADES DEL PROYECTO'
      OnClick = Bt_ActividadesClick
    end
    object Bt_Riesgos: TSpeedButton
      Left = 338
      Top = 153
      Width = 406
      Height = 100
      Caption = 'RIESGOS DEL PROYECTO'
      OnClick = Bt_RiesgosClick
    end
    object SpeedButton7: TSpeedButton
      Left = 750
      Top = 47
      Width = 150
      Height = 100
      Caption = 'CASOS DE USO'
      Visible = False
    end
    object SpeedButton8: TSpeedButton
      Left = 764
      Top = 153
      Width = 200
      Height = 100
      Caption = 'SET DE PRUEBAS'
      Visible = False
    end
    object Bt_IntengrantesProyecto: TSpeedButton
      Left = 338
      Top = 47
      Width = 200
      Height = 100
      Caption = 'INTENGRANTES DEL PROYECTO'
      OnClick = Bt_IntengrantesProyectoClick
    end
  end
end
