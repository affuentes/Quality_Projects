﻿object DM_HospitalFrm: TDM_HospitalFrm
  OldCreateOrder = False
  Height = 217
  Width = 516
  object ADOConHospital: TADOConnection
    Connected = True
    ConnectionString = 
      'Provider=SQLNCLI10.1;Integrated Security=SSPI;Persist Security I' +
      'nfo=False;User ID="";Initial Catalog=BdHospital;Data Source=(Loc' +
      'al)\SQlEXPRESS;Initial File Name="";Server SPN=""'
    Provider = 'SQLNCLI10.1'
    Left = 45
    Top = 89
  end
  object ADODatCita: TADODataSet
    Active = True
    Connection = ADOConHospital
    CursorType = ctStatic
    CommandText = 'select * from Cita'
    Parameters = <>
    Left = 165
    Top = 49
    object ADODatCitaidCita: TIntegerField
      FieldName = 'idCita'
    end
    object ADODatCitaidPaciente: TIntegerField
      FieldName = 'idPaciente'
    end
    object ADODatCitaidMedico: TIntegerField
      FieldName = 'idMedico'
    end
    object ADODatCitaFecha: TDateField
      FieldName = 'Fecha'
    end
    object ADODatCitametodoPago: TStringField
      FieldName = 'metodoPago'
      Size = 50
    end
  end
  object DSCita: TDataSource
    DataSet = ADODatCita
    Left = 229
    Top = 49
  end
  object ADODatUsuario: TADODataSet
    Active = True
    Connection = ADOConHospital
    CursorType = ctStatic
    CommandText = 'select * from Usuario'
    Parameters = <>
    Left = 160
    Top = 128
    object ADODatUsuarioidUsuario: TIntegerField
      FieldName = 'idUsuario'
    end
    object ADODatUsuarioNombre: TStringField
      FieldName = 'Nombre'
      Size = 150
    end
    object ADODatUsuarioRol: TStringField
      FieldName = 'Rol'
      Size = 25
    end
    object ADODatUsuarioAlias: TStringField
      FieldName = 'Alias'
      Size = 25
    end
    object ADODatUsuarioContraseña: TStringField
      FieldName = 'Contrase'#241'a'
      Size = 500
    end
    object ADODatUsuarioCorreo: TStringField
      FieldName = 'Correo'
      Size = 100
    end
  end
  object DSUsuario: TDataSource
    DataSet = ADODatUsuario
    Left = 224
    Top = 128
  end
  object ADODatMedico: TADODataSet
    Active = True
    Connection = ADOConHospital
    CursorType = ctStatic
    CommandText = 'select * from Medico'
    Parameters = <>
    Left = 352
    Top = 48
    object ADODatMedicoidMedico: TIntegerField
      FieldName = 'idMedico'
    end
    object ADODatMedicoNombre: TStringField
      FieldName = 'Nombre'
      Size = 150
    end
    object ADODatMedicoEspecialidad: TStringField
      FieldName = 'Especialidad'
      Size = 100
    end
    object ADODatMedicoLocalidad: TStringField
      FieldName = 'Localidad'
      Size = 100
    end
  end
  object DSMedico: TDataSource
    DataSet = ADODatMedico
    Left = 432
    Top = 48
  end
  object ADODatPaciente: TADODataSet
    Active = True
    Connection = ADOConHospital
    CursorType = ctStatic
    CommandText = 'select * from Paciente'
    Parameters = <>
    Left = 352
    Top = 128
    object ADODatPacienteidPaciente: TIntegerField
      FieldName = 'idPaciente'
    end
    object ADODatPacienteNombre: TStringField
      FieldName = 'Nombre'
      Size = 150
    end
    object ADODatPacienteEnfermedad: TStringField
      FieldName = 'Enfermedad'
      Size = 100
    end
  end
  object DSPaciente: TDataSource
    DataSet = ADODatPaciente
    Left = 432
    Top = 128
  end
end
