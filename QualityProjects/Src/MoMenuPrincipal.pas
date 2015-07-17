unit MoMenuPrincipal;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.Buttons, Vcl.ExtCtrls;

type
  TMoMenuPrincipalFrm = class(TForm)
    Panel1: TPanel;
    Bt_Proyectos: TSpeedButton;
    Bt_Fases: TSpeedButton;
    Bt_Roles: TSpeedButton;
    BtFuncionesRol: TSpeedButton;
    Bt_Actividades: TSpeedButton;
    Bt_Riesgos: TSpeedButton;
    SpeedButton7: TSpeedButton;
    SpeedButton8: TSpeedButton;
    Bt_IntengrantesProyecto: TSpeedButton;
    procedure Bt_ProyectosClick(Sender: TObject);
    procedure Bt_FasesClick(Sender: TObject);
    procedure Bt_RolesClick(Sender: TObject);
    procedure BtFuncionesRolClick(Sender: TObject);
    procedure Bt_IntengrantesProyectoClick(Sender: TObject);
    procedure Bt_ActividadesClick(Sender: TObject);
    procedure Bt_RiesgosClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);


  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  MoMenuPrincipalFrm: TMoMenuPrincipalFrm;

implementation

{$R *.dfm}

uses MoProyectos, MoFases, MoRoles, MoFuncionesRol, MoIntegrantesProyecto,
  MoActividades, MoRiesgos;


//BOTON PROYECTOS
procedure TMoMenuPrincipalFrm.Bt_ProyectosClick(Sender: TObject);
begin
  MoProyectosFrm:=TMoProyectosFrm.Create(Self);
  MoProyectosFrm.ShowModal;
  MoProyectosFrm.Free;
end;


//BOTON FASES
procedure TMoMenuPrincipalFrm.Bt_FasesClick(Sender: TObject);
begin
  MoFasesFrm:=TMoFasesFrm.Create(Self);
  MoFasesFrm.ShowModal;
  MoFasesFrm.Free;
end;


//BOTON ROLES
procedure TMoMenuPrincipalFrm.Bt_RolesClick(Sender: TObject);
begin
  MoRolesFrm:=TMoRolesFrm.Create(Self);
  MoRolesFrm.ShowModal;
  MoRolesFrm.Free;
end;


procedure TMoMenuPrincipalFrm.FormCreate(Sender: TObject);
begin

end;

//BOTONES FUNCIONES ROL
procedure TMoMenuPrincipalFrm.BtFuncionesRolClick(Sender: TObject);
begin
  MoFuncionesRolFrm:=TMoFuncionesRolFrm.Create(Self);
  MoFuncionesRolFrm.ShowModal;
  MoFuncionesRolFrm.Free;
end;


//BOTONES INTENGRANTES DEL PROYECTO
procedure TMoMenuPrincipalFrm.Bt_IntengrantesProyectoClick(Sender: TObject);
begin
  MoIntegrantesProyectoFrm:=TMoIntegrantesProyectoFrm.Create(Self);
  MoIntegrantesProyectoFrm.ShowModal;
  MoIntegrantesProyectoFrm.Free;
end;


//BOTON ACTIVIDADES
procedure TMoMenuPrincipalFrm.Bt_ActividadesClick(Sender: TObject);
begin
  MoActividadesFrm:=TMoActividadesFrm.Create(Self);
  MoActividadesFrm.ShowModal;
  MoActividadesFrm.Free;
end;


//BOTON RIESGOS
procedure TMoMenuPrincipalFrm.Bt_RiesgosClick(Sender: TObject);
begin
  MoRiesgosFrm:=TMoRiesgosFrm.Create(Self);
  MoRiesgosFrm.ShowModal;
  MoRiesgosFrm.Free;
end;


end.
