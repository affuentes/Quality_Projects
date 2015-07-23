program Hospital;

uses
  Vcl.Forms,
  MenuPpal in '..\Src\MenuPpal.pas' {MenuPpalFrm},
  Medico in '..\Src\Medico.pas' {MedicoFrm},
  Paciente in '..\Src\Paciente.pas' {PacienteFrm},
  Cita in '..\Src\Cita.pas' {CitaFrm},
  Vcl.Themes,
  Vcl.Styles,
  ReporteCitas in '..\Src\ReporteCitas.pas' {ReportedeCitasFrm},
  Usuario in '..\Src\Usuario.pas' {UsuarioFrm},
  DM_HospitalCon in '..\DataModulos\DM_HospitalCon.pas' {DM_HospitalFrm: TDataModule};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  TStyleManager.TrySetStyle('Amakrits');
  Application.CreateForm(TMenuPpalFrm, MenuPpalFrm);
  Application.Run;
end.
