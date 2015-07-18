object MoIntegrantesProyectoFrm: TMoIntegrantesProyectoFrm
  Left = 0
  Top = 0
  Caption = 'Integrantes del Proyecto'
  ClientHeight = 479
  ClientWidth = 654
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  WindowState = wsMaximized
  OnCreate = FormCreate
  OnDestroy = FormDestroy
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Splitter1: TSplitter
    Left = 632
    Top = 240
    Width = 2
    Height = 239
    Align = alRight
    Visible = False
    ExplicitLeft = 638
    ExplicitTop = 238
  end
  object P_BotonesArriba: TPanel
    Left = 0
    Top = 0
    Width = 654
    Height = 80
    Align = alTop
    TabOrder = 0
    ExplicitWidth = 666
    object Bt_Nuevo: TSpeedButton
      Left = 16
      Top = 9
      Width = 65
      Height = 65
      Caption = 'Nuevo'
      OnClick = Bt_NuevoClick
    end
    object Bt_Guardar: TSpeedButton
      Left = 87
      Top = 8
      Width = 65
      Height = 65
      Caption = 'Guardar'
      OnClick = Bt_GuardarClick
    end
    object Bt_Cancelar: TSpeedButton
      Left = 158
      Top = 8
      Width = 65
      Height = 65
      Caption = 'Cancelar'
      OnClick = Bt_CancelarClick
    end
    object Bt_Editar: TSpeedButton
      Left = 229
      Top = 8
      Width = 65
      Height = 65
      Caption = 'Editar'
      OnClick = Bt_EditarClick
    end
    object Bt_EliminarTodo: TSpeedButton
      Left = 300
      Top = 8
      Width = 65
      Height = 65
      Caption = 'Eliminar'
      OnClick = Bt_EliminarTodoClick
    end
  end
  object Panel2: TPanel
    Left = 0
    Top = 160
    Width = 654
    Height = 80
    Align = alTop
    TabOrder = 1
    ExplicitWidth = 666
    object Panel1: TPanel
      Left = 468
      Top = 1
      Width = 185
      Height = 78
      Align = alRight
      BevelOuter = bvNone
      TabOrder = 0
      ExplicitLeft = 480
      object Bt_Consultar: TSpeedButton
        Left = 104
        Top = 6
        Width = 65
        Height = 65
        AllowAllUp = True
        GroupIndex = 1
        Caption = 'Consultar'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        ParentShowHint = False
        ShowHint = True
        OnClick = Bt_ConsultarClick
      end
    end
  end
  object DBG_ManIntegrantes: TDBGrid
    Left = 0
    Top = 240
    Width = 632
    Height = 239
    Align = alClient
    BorderStyle = bsNone
    DataSource = DM_QualityProjectsCdsFrm.DS_ManIntegrantes
    ReadOnly = True
    TabOrder = 2
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
    Columns = <
      item
        Expanded = False
        FieldName = 'ID_INTEGRANTE'
        ReadOnly = False
        Title.Caption = 'Identificaci'#243'n Integrante'
        Width = 150
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'ID_PROYECTO'
        ReadOnly = False
        Visible = False
      end
      item
        Expanded = False
        FieldName = 'ID_ROL'
        ReadOnly = False
        Visible = False
      end
      item
        Expanded = False
        FieldName = 'NOMBRE_INTEGRANTE'
        ReadOnly = False
        Title.Caption = 'Apellidos y Nombres Integrante'
        Width = 400
        Visible = True
      end>
  end
  object Panel3: TPanel
    Left = 634
    Top = 240
    Width = 20
    Height = 239
    Align = alRight
    BevelOuter = bvNone
    TabOrder = 3
    Visible = False
    ExplicitLeft = 646
  end
  object P_Parametros: TPanel
    Left = 0
    Top = 80
    Width = 654
    Height = 80
    Align = alTop
    TabOrder = 4
    ExplicitWidth = 666
    object Label2: TLabel
      Left = 16
      Top = 21
      Width = 43
      Height = 13
      Caption = 'Proyecto'
    end
    object Label1: TLabel
      Left = 240
      Top = 21
      Width = 15
      Height = 13
      Caption = 'Rol'
    end
    object DBLCB_ID_PROYECTO: TDBLookupComboBox
      Left = 16
      Top = 35
      Width = 200
      Height = 21
      KeyField = 'ID_PROYECTO'
      ListField = 'ID_PROYECTO;NOMBRE_PROYECTO'
      ListFieldIndex = 1
      ListSource = DM_QualityProjectsCdsFrm.DS_ManProyectos
      TabOrder = 0
    end
    object DBLCB_ID_ROL: TDBLookupComboBox
      Left = 240
      Top = 35
      Width = 200
      Height = 21
      KeyField = 'ID_ROL'
      ListField = 'ID_ROL;NOMBRE_ROL'
      ListFieldIndex = 1
      ListSource = DM_QualityProjectsCdsFrm.DS_ManRoles
      TabOrder = 1
    end
  end
end
