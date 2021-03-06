unit DM_HospitalCon;

interface

uses
  System.SysUtils, System.Classes, Data.DBXMSSQL, Data.DB, Data.SqlExpr,
  Data.Win.ADODB;

type
  TDM_HospitalFrm = class(TDataModule)
    ADOConHospital: TADOConnection;
    ADODatCita: TADODataSet;
    DSCita: TDataSource;
    ADODatCitaidCita: TIntegerField;
    ADODatCitaidPaciente: TIntegerField;
    ADODatCitaidMedico: TIntegerField;
    ADODatCitaFecha: TDateField;
    ADODatCitametodoPago: TStringField;
    ADODatUsuario: TADODataSet;
    ADODatUsuarioidUsuario: TIntegerField;
    ADODatUsuarioNombre: TStringField;
    ADODatUsuarioRol: TStringField;
    ADODatUsuarioAlias: TStringField;
    ADODatUsuarioContraseņa: TStringField;
    ADODatUsuarioCorreo: TStringField;
    DSUsuario: TDataSource;
    ADODatMedico: TADODataSet;
    ADODatMedicoidMedico: TIntegerField;
    ADODatMedicoNombre: TStringField;
    ADODatMedicoEspecialidad: TStringField;
    ADODatMedicoLocalidad: TStringField;
    DSMedico: TDataSource;
    ADODatPaciente: TADODataSet;
    DSPaciente: TDataSource;
    ADODatPacienteidPaciente: TIntegerField;
    ADODatPacienteNombre: TStringField;
    ADODatPacienteEnfermedad: TStringField;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  DM_HospitalFrm: TDM_HospitalFrm;

implementation

{%CLASSGROUP 'Vcl.Controls.TControl'}

{$R *.dfm}

end.
