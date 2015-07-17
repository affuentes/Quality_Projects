unit DM_QualityProjectsCon;

interface

uses
  System.SysUtils, System.Classes, Data.DBXFirebird, Data.DB, Data.SqlExpr,
  Data.FMTBcd, Datasnap.Provider, Datasnap.DBClient, Datasnap.Win.TConnect,
  FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Error, FireDAC.UI.Intf,
  FireDAC.Phys.Intf, FireDAC.Stan.Def, FireDAC.Stan.Pool, FireDAC.Stan.Async,
  FireDAC.Phys, FireDAC.VCLUI.Wait, FireDAC.Comp.UI, FireDAC.Comp.Client,
  FireDAC.Stan.Param, FireDAC.DatS, FireDAC.DApt.Intf, FireDAC.DApt,
  FireDAC.Comp.DataSet;

type
  TDM_QualityProjectsConFrm = class(TDataModule)
    SQLC_QualityProjects: TSQLConnection;
    SQL_ManProyectos: TSQLQuery;
    DSP_ManProyectos: TDataSetProvider;
    LC_QualityProjects: TLocalConnection;
    SQL_ManFases: TSQLQuery;
    DSP_ManFases: TDataSetProvider;
    SQL_ManRoles: TSQLQuery;
    DSP_ManRoles: TDataSetProvider;
    SQL_ManFuncionesRol: TSQLQuery;
    DSP_ManFuncionesRol: TDataSetProvider;
    SQL_ManProyectosID_PROYECTO: TIntegerField;
    SQL_ManProyectosNOMBRE_PROYECTO: TStringField;
    SQL_ManProyectosDESCRIPCION_PROYECTO: TStringField;
    SQL_ManProyectosALCANCE_PROYECTO: TStringField;
    SQL_ManProyectosPROPOSITO_PROYECTO: TStringField;
    SQL_ManProyectosVERSION_PROYECTO: TStringField;
    SQL_ManFasesID_FASE: TIntegerField;
    SQL_ManFasesID_PROYECTO: TIntegerField;
    SQL_ManFasesNOMBRE_FASE: TStringField;
    SQL_ManFasesFECHA_INI_FASE: TSQLTimeStampField;
    SQL_ManFasesFECHA_FIN_FASE: TSQLTimeStampField;
    SQL_ManRolesID_ROL: TIntegerField;
    SQL_ManRolesID_PROYECTO: TIntegerField;
    SQL_ManRolesNOMBRE_ROL: TStringField;
    SQL_ManFuncionesRolID_FUNROL: TIntegerField;
    SQL_ManFuncionesRolID_PROYECTO: TIntegerField;
    SQL_ManFuncionesRolID_ROL: TIntegerField;
    SQL_ManFuncionesRolNOMBRE_FUNROL: TStringField;
    SQL_ManIntegrantes: TSQLQuery;
    DSP_ManIntegrantes: TDataSetProvider;
    SQL_ManActividades: TSQLQuery;
    DSP_ManActividades: TDataSetProvider;
    SQL_ManActividadesID_ACTIVIDAD: TIntegerField;
    SQL_ManActividadesID_PROYECTO: TIntegerField;
    SQL_ManActividadesID_FASE: TIntegerField;
    SQL_ManActividadesID_ROL: TIntegerField;
    SQL_ManActividadesID_INTEGRANTE: TStringField;
    SQL_ManActividadesNOMBRE_ACTIVIDAD: TStringField;
    SQL_ManActividadesFECHA_INI_ACTIVIDAD: TSQLTimeStampField;
    SQL_ManActividadesFECHA_FIN_ACTIVIDAD: TSQLTimeStampField;
    SQL_ManIntegrantesID_INTEGRANTE: TStringField;
    SQL_ManIntegrantesID_PROYECTO: TIntegerField;
    SQL_ManIntegrantesID_ROL: TIntegerField;
    SQL_ManIntegrantesNOMBRE_INTEGRANTE: TStringField;
    SQL_SelRoles: TSQLQuery;
    SQL_SelRolesID_ROL: TIntegerField;
    SQL_SelRolesID_PROYECTO: TIntegerField;
    SQL_SelRolesNOMBRE_ROL: TStringField;
    DSP_SelRoles: TDataSetProvider;
    SQL_ManRiesgos: TSQLQuery;
    SQL_ManRiesgosID_RIESGO: TIntegerField;
    SQL_ManRiesgosID_PROYECTO: TIntegerField;
    SQL_ManRiesgosID_FASE: TIntegerField;
    SQL_ManRiesgosID_ROL: TIntegerField;
    SQL_ManRiesgosID_INTEGRANTE: TIntegerField;
    SQL_ManRiesgosESTADO_RIESGO: TStringField;
    SQL_ManRiesgosFECHA_CREACION_RIESGO: TSQLTimeStampField;
    SQL_ManRiesgosFECHA_REPORTE_RIESGO: TSQLTimeStampField;
    SQL_ManRiesgosDEBIDO_A_RIESGO: TStringField;
    SQL_ManRiesgosPUEDE_OCURRIR_RIESGO: TStringField;
    SQL_ManRiesgosRESULTADO_EN_RIESGO: TStringField;
    SQL_ManRiesgosESTRATEGIA_DE_RESPUESTA_RIESGO: TStringField;
    SQL_ManRiesgosTIPO_RIESGO: TStringField;
    SQL_ManRiesgosPROBABILIDAD: TStringField;
    SQL_ManRiesgosIMPACTO: TStringField;
    DSP_ManRiesgos: TDataSetProvider;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  DM_QualityProjectsConFrm: TDM_QualityProjectsConFrm;

implementation

{%CLASSGROUP 'Vcl.Controls.TControl'}

{$R *.dfm}

end.
