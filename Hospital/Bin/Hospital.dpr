program Hospital;

uses
  Vcl.Forms,
  MenuPpal in '..\Src\MenuPpal.pas' {MenuPpalFrm},
  Medico in '..\Src\Medico.pas' {MedicoFrm};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TMenuPpalFrm, MenuPpalFrm);
  Application.CreateForm(TMedicoFrm, MedicoFrm);
  Application.Run;
end.
