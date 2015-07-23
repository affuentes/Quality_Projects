﻿object DM_HospitalFrm: TDM_HospitalFrm
  OldCreateOrder = False
  Height = 339
  Width = 741
  object ADOConHospital: TADOConnection
    Connected = True
    ConnectionString = 
      'Provider=SQLNCLI10.1;Integrated Security=SSPI;Persist Security I' +
      'nfo=False;User ID="";Initial Catalog=BdHospital;Data Source=(Loc' +
      'al)\SQlEXPRESS;Initial File Name="";Server SPN=""'
    Provider = 'SQLNCLI10.1'
    Left = 53
    Top = 25
  end
  object ADODatCita: TADODataSet
    Active = True
    Connection = ADOConHospital
    CursorType = ctStatic
    CommandText = 'select * from Cita'
    Parameters = <>
    Left = 165
    Top = 25
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
    Left = 253
    Top = 25
  end
  object ADODatUsuario: TADODataSet
    Active = True
    Connection = ADOConHospital
    CursorType = ctStatic
    CommandText = 'select * from Usuario'
    Parameters = <>
    Left = 160
    Top = 104
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
    Left = 256
    Top = 104
  end
end
