object CitaFrm: TCitaFrm
  Left = 0
  Top = 0
  Caption = 'Cita'
  ClientHeight = 305
  ClientWidth = 558
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poDesktopCenter
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object panBotones: TPanel
    Left = 8
    Top = 8
    Width = 529
    Height = 89
    TabOrder = 0
    object btRegresar: TButton
      Left = 424
      Top = 6
      Width = 75
      Height = 75
      Caption = 'Regresar'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -19
      Font.Name = 'Calibri'
      Font.Style = []
      ParentFont = False
      TabOrder = 5
    end
    object btEliminar: TButton
      Left = 343
      Top = 6
      Width = 75
      Height = 75
      Caption = 'Eliminar'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -19
      Font.Name = 'Calibri'
      Font.Style = []
      ParentFont = False
      TabOrder = 4
    end
    object btCambiar: TButton
      Left = 262
      Top = 6
      Width = 75
      Height = 75
      Caption = 'Cambiar'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -19
      Font.Name = 'Calibri'
      Font.Style = []
      ParentFont = False
      TabOrder = 3
      OnClick = btCambiarClick
    end
    object btAgregar: TButton
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
      TabOrder = 1
      OnClick = btAgregarClick
    end
    object btAyuda: TButton
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
      TabOrder = 0
    end
    object btCancelar: TButton
      Left = 182
      Top = 6
      Width = 75
      Height = 75
      Caption = 'Cancelar'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -19
      Font.Name = 'Calibri'
      Font.Style = []
      ParentFont = False
      TabOrder = 2
      OnClick = btCambiarClick
    end
  end
  object DBGCita: TDBGrid
    Left = 8
    Top = 112
    Width = 529
    Height = 169
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
