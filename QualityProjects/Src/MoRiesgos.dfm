object MoRiesgosFrm: TMoRiesgosFrm
  Left = 0
  Top = 0
  Caption = 'Riesgos del Proyecto'
  ClientHeight = 562
  ClientWidth = 973
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
    Left = 124
    Top = 249
    Width = 2
    Height = 313
    Visible = False
    ExplicitLeft = 396
    ExplicitTop = 186
    ExplicitHeight = 293
  end
  object P_BotonesArriba: TPanel
    Left = 0
    Top = 0
    Width = 973
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
    Width = 973
    Height = 89
    Align = alTop
    TabOrder = 1
    object Panel1: TPanel
      Left = 787
      Top = 1
      Width = 185
      Height = 87
      Align = alRight
      BevelOuter = bvNone
      TabOrder = 0
      ExplicitLeft = 480
      ExplicitHeight = 78
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
  object DBG_ManRiesgos: TDBGrid
    Left = 0
    Top = 249
    Width = 124
    Height = 313
    Align = alLeft
    BorderStyle = bsNone
    DataSource = DM_QualityProjectsCdsFrm.DS_ManRiesgos
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
        FieldName = 'ID_RIESGO'
        ReadOnly = False
        Title.Caption = 'Id Riesgo'
        Width = 100
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
        FieldName = 'ID_FASE'
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
        FieldName = 'ID_INTEGRANTE'
        ReadOnly = False
        Visible = False
      end
      item
        Expanded = False
        FieldName = 'ESTADO_RIESGO'
        ReadOnly = False
        Visible = False
      end
      item
        Expanded = False
        FieldName = 'FECHA_CREACION_RIESGO'
        ReadOnly = False
        Visible = False
      end
      item
        Expanded = False
        FieldName = 'FECHA_REPORTE_RIESGO'
        ReadOnly = False
        Visible = False
      end
      item
        Expanded = False
        FieldName = 'DEBIDO_A_RIESGO'
        ReadOnly = False
        Visible = False
      end
      item
        Expanded = False
        FieldName = 'PUEDE_OCURRIR_RIESGO'
        ReadOnly = False
        Visible = False
      end
      item
        Expanded = False
        FieldName = 'RESULTADO_EN_RIESGO'
        ReadOnly = False
        Visible = False
      end
      item
        Expanded = False
        FieldName = 'ESTRATEGIA_DE_RESPUESTA_RIESGO'
        ReadOnly = False
        Visible = False
      end
      item
        Expanded = False
        FieldName = 'TIPO_RIESGO'
        ReadOnly = False
        Visible = False
      end
      item
        Expanded = False
        FieldName = 'PROBABILIDAD'
        ReadOnly = False
        Visible = False
      end
      item
        Expanded = False
        FieldName = 'IMPACTO'
        ReadOnly = False
        Visible = False
      end>
  end
  object Panel3: TPanel
    Left = 126
    Top = 249
    Width = 847
    Height = 313
    Align = alClient
    BevelOuter = bvNone
    TabOrder = 3
    ExplicitLeft = 130
    ExplicitTop = 254
    object Label3: TLabel
      Left = 120
      Top = 15
      Width = 23
      Height = 13
      Caption = 'Fase'
    end
    object Label5: TLabel
      Left = 430
      Top = 15
      Width = 109
      Height = 13
      Caption = 'Fecha Creaci'#243'n Riesgo'
    end
    object Bt_FechaIniActividad: TSpeedButton
      Left = 540
      Top = 29
      Width = 30
      Height = 21
      Cursor = crHandPoint
      Caption = '...'
      OnClick = Bt_FechaIniActividadClick
    end
    object Bt_FechaFinActividad: TSpeedButton
      Left = 689
      Top = 29
      Width = 30
      Height = 21
      Cursor = crHandPoint
      Caption = '...'
      OnClick = Bt_FechaFinActividadClick
    end
    object Label6: TLabel
      Left = 579
      Top = 15
      Width = 106
      Height = 13
      Caption = 'Fecha Reporte Riesgo'
    end
    object La: TLabel
      Left = 10
      Top = 15
      Width = 68
      Height = 13
      Caption = 'Estado Riesgo'
    end
    object Label7: TLabel
      Left = 10
      Top = 58
      Width = 42
      Height = 13
      Caption = 'Debido a'
    end
    object Label8: TLabel
      Left = 220
      Top = 58
      Width = 62
      Height = 13
      Caption = 'Puede Ocurir'
    end
    object Label9: TLabel
      Left = 430
      Top = 58
      Width = 63
      Height = 13
      Caption = 'Resultado en'
    end
    object Label10: TLabel
      Left = 640
      Top = 58
      Width = 118
      Height = 13
      Caption = 'Estrategia de Respuesta'
    end
    object Label11: TLabel
      Left = 10
      Top = 258
      Width = 55
      Height = 13
      Caption = 'Tipo Riesgo'
    end
    object Label12: TLabel
      Left = 120
      Top = 258
      Width = 93
      Height = 13
      Caption = 'Probabilidad Riesgo'
    end
    object Label13: TLabel
      Left = 230
      Top = 257
      Width = 74
      Height = 13
      Caption = 'Impacto Riesgo'
    end
    object DBLCB_ID_FASE: TDBLookupComboBox
      Left = 120
      Top = 29
      Width = 300
      Height = 21
      DataField = 'ID_FASE'
      DataSource = DM_QualityProjectsCdsFrm.DS_ManRiesgos
      KeyField = 'ID_FASE'
      ListField = 'ID_FASE;NOMBRE_FASE'
      ListFieldIndex = 1
      ListSource = DM_QualityProjectsCdsFrm.DS_ManFases
      TabOrder = 0
    end
    object DBE_FECHA_CREACION_RIESGO: TDBEdit
      Left = 430
      Top = 29
      Width = 110
      Height = 21
      DataField = 'FECHA_CREACION_RIESGO'
      DataSource = DM_QualityProjectsCdsFrm.DS_ManRiesgos
      ReadOnly = True
      TabOrder = 1
    end
    object DBE_FECHA_REPORTE_RIESGO: TDBEdit
      Left = 579
      Top = 29
      Width = 110
      Height = 21
      DataField = 'FECHA_REPORTE_RIESGO'
      DataSource = DM_QualityProjectsCdsFrm.DS_ManRiesgos
      ReadOnly = True
      TabOrder = 2
    end
    object DBCB_ESTADO_RIESGO: TDBComboBox
      Left = 10
      Top = 29
      Width = 100
      Height = 21
      DataField = 'ESTADO_RIESGO'
      DataSource = DM_QualityProjectsCdsFrm.DS_ManRiesgos
      Items.Strings = (
        'Activo'
        'Inactivo')
      TabOrder = 3
    end
    object DBM_DEBIDO_A_RIESGO: TDBMemo
      Left = 10
      Top = 72
      Width = 200
      Height = 100
      DataField = 'DEBIDO_A_RIESGO'
      DataSource = DM_QualityProjectsCdsFrm.DS_ManRiesgos
      TabOrder = 4
    end
    object DBM_PUEDE_OCURRIR_RIESGO: TDBMemo
      Left = 220
      Top = 72
      Width = 200
      Height = 100
      DataField = 'PUEDE_OCURRIR_RIESGO'
      DataSource = DM_QualityProjectsCdsFrm.DS_ManRiesgos
      TabOrder = 5
    end
    object DBM_RESULTADO_EN_RIESGO: TDBMemo
      Left = 430
      Top = 72
      Width = 200
      Height = 100
      DataField = 'RESULTADO_EN_RIESGO'
      DataSource = DM_QualityProjectsCdsFrm.DS_ManRiesgos
      TabOrder = 6
    end
    object DBM_ESTRATEGIA_DE_RESPUESTA_RIESGO: TDBMemo
      Left = 640
      Top = 72
      Width = 200
      Height = 100
      DataField = 'ESTRATEGIA_DE_RESPUESTA_RIESGO'
      DataSource = DM_QualityProjectsCdsFrm.DS_ManRiesgos
      TabOrder = 7
    end
    object GroupBox1: TGroupBox
      Left = 10
      Top = 180
      Width = 830
      Height = 70
      Caption = 'Responsable del Riesgo'
      TabOrder = 8
      object Label1: TLabel
        Left = 15
        Top = 24
        Width = 15
        Height = 13
        Caption = 'Rol'
      end
      object Label4: TLabel
        Left = 420
        Top = 24
        Width = 96
        Height = 13
        Caption = 'Nombres y Apellidos'
      end
      object DBLCB_ID_ROL: TDBLookupComboBox
        Left = 15
        Top = 38
        Width = 380
        Height = 21
        DataField = 'ID_ROL'
        DataSource = DM_QualityProjectsCdsFrm.DS_ManRiesgos
        KeyField = 'ID_ROL'
        ListField = 'ID_ROL;NOMBRE_ROL'
        ListFieldIndex = 1
        ListSource = DM_QualityProjectsCdsFrm.DS_SelRoles
        TabOrder = 0
      end
      object DBLCB_ID_INTEGRANTE: TDBLookupComboBox
        Left = 420
        Top = 38
        Width = 380
        Height = 21
        DataField = 'ID_INTEGRANTE'
        DataSource = DM_QualityProjectsCdsFrm.DS_ManRiesgos
        KeyField = 'ID_INTEGRANTE'
        ListField = 'ID_INTEGRANTE;NOMBRE_INTEGRANTE'
        ListFieldIndex = 1
        ListSource = DM_QualityProjectsCdsFrm.DS_ManIntegrantes
        TabOrder = 1
      end
    end
    object DBCB_TIPO_RIESGO: TDBComboBox
      Left = 10
      Top = 272
      Width = 100
      Height = 21
      DataField = 'TIPO_RIESGO'
      DataSource = DM_QualityProjectsCdsFrm.DS_ManRiesgos
      Items.Strings = (
        'Calidad'
        'Costo'
        'Tiempo')
      TabOrder = 9
    end
    object DBCB_PROBABILIDAD: TDBComboBox
      Left = 120
      Top = 272
      Width = 100
      Height = 21
      DataField = 'PROBABILIDAD'
      DataSource = DM_QualityProjectsCdsFrm.DS_ManRiesgos
      Items.Strings = (
        'Muy Alto'
        'Alto'
        'Medio'
        'Bajo')
      TabOrder = 10
    end
    object DBCB_IMPACTO: TDBComboBox
      Left = 230
      Top = 272
      Width = 100
      Height = 21
      DataField = 'IMPACTO'
      DataSource = DM_QualityProjectsCdsFrm.DS_ManRiesgos
      Items.Strings = (
        'Muy Alto'
        'Alto'
        'Medio'
        'Bajo')
      TabOrder = 11
    end
  end
  object Panel4: TPanel
    Left = 0
    Top = 80
    Width = 973
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
  end
end
