program Hospital;

uses
  Vcl.Forms,
  MenuPpal in '..\Src\MenuPpal.pas' {MenuPpalFrm},
  Medico in '..\Src\Medico.pas' {MedicoFrm},
  Paciente in '..\Src\Paciente.pas' {PacienteFrm},
  Cita in '..\Src\Cita.pas' {CitaFrm},
  Vcl.Themes,
  Vcl.Styles;

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  TStyleManager.TrySetStyle('Amakrits');
  Application.CreateForm(TMenuPpalFrm, MenuPpalFrm);
  Application.Run;
end.
