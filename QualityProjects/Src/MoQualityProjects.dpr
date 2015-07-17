program MoQualityProjects;

uses
  Vcl.Forms,
  MoMenuPrincipal in 'MoMenuPrincipal.pas' {MoMenuPrincipalFrm},
  DM_QualityProjectsCon in '..\DataModulos\DM_QualityProjectsCon.pas' {DM_QualityProjectsConFrm: TDataModule},
  DM_QualityProjectsCds in '..\DataModulos\DM_QualityProjectsCds.pas' {DM_QualityProjectsCdsFrm: TDataModule},
  MoProyectos in 'MoProyectos.pas' {MoProyectosFrm},
  Vcl.Themes,
  Vcl.Styles,
  MoLibQualityProjects in '..\Librerias\MoLibQualityProjects.pas',
  MoFases in 'MoFases.pas' {MoFasesFrm},
  MoRoles in 'MoRoles.pas' {MoRolesFrm},
  MoFuncionesRol in 'MoFuncionesRol.pas' {MoFuncionesRolFrm},
  MoIntegrantesProyecto in 'MoIntegrantesProyecto.pas' {MoIntegrantesProyectoFrm},
  MoActividades in 'MoActividades.pas' {MoActividadesFrm},
  Sel_Fecha in '..\Librerias\Sel_Fecha.pas' {Sel_FechaFrm},
  MoRiesgos in 'MoRiesgos.pas' {MoRiesgosFrm};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  TStyleManager.TrySetStyle('Golden Graphite');
  Application.CreateForm(TMoMenuPrincipalFrm, MoMenuPrincipalFrm);
  Application.Run;
end.
