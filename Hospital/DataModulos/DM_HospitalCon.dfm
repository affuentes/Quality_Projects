object DM_HospitalFrm: TDM_HospitalFrm
  OldCreateOrder = False
  Height = 339
  Width = 483
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
  end
  object DSCita: TDataSource
    DataSet = ADODatCita
    Left = 253
    Top = 25
  end
end
