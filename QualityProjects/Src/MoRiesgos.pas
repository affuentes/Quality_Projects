unit MoRiesgos;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls, Vcl.Grids, Vcl.DBGrids,
  Vcl.Buttons, Data.DB, Vcl.StdCtrls, Vcl.Mask, Vcl.DBCtrls;

type
  TMoRiesgosFrm = class(TForm)
    P_BotonesArriba: TPanel;
    Panel2: TPanel;
    DBG_ManRiesgos: TDBGrid;
    Panel3: TPanel;
    Splitter1: TSplitter;
    Bt_Nuevo: TSpeedButton;
    Bt_Guardar: TSpeedButton;
    Bt_Cancelar: TSpeedButton;
    Bt_Editar: TSpeedButton;
    Bt_EliminarTodo: TSpeedButton;
    Panel1: TPanel;
    Bt_Consultar: TSpeedButton;
    P_Parametros: TPanel;
    Label2: TLabel;
    DBLCB_ID_PROYECTO: TDBLookupComboBox;
    Label3: TLabel;
    DBLCB_ID_FASE: TDBLookupComboBox;
    DBE_FECHA_CREACION_RIESGO: TDBEdit;
    Label5: TLabel;
    Bt_FechaIniActividad: TSpeedButton;
    DBE_FECHA_REPORTE_RIESGO: TDBEdit;
    Bt_FechaFinActividad: TSpeedButton;
    Label6: TLabel;
    DBCB_ESTADO_RIESGO: TDBComboBox;
    La: TLabel;
    DBM_DEBIDO_A_RIESGO: TDBMemo;
    DBM_PUEDE_OCURRIR_RIESGO: TDBMemo;
    DBM_RESULTADO_EN_RIESGO: TDBMemo;
    DBM_ESTRATEGIA_DE_RESPUESTA_RIESGO: TDBMemo;
    Label7: TLabel;
    Label8: TLabel;
    Label9: TLabel;
    Label10: TLabel;
    GroupBox1: TGroupBox;
    Label1: TLabel;
    Label4: TLabel;
    DBLCB_ID_ROL: TDBLookupComboBox;
    DBLCB_ID_INTEGRANTE: TDBLookupComboBox;
    DBCB_TIPO_RIESGO: TDBComboBox;
    Label11: TLabel;
    DBCB_PROBABILIDAD: TDBComboBox;
    Label12: TLabel;
    DBCB_IMPACTO: TDBComboBox;
    Label13: TLabel;
    procedure FormCreate(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure Bt_ConsultarClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure Bt_NuevoClick(Sender: TObject);
    procedure Bt_GuardarClick(Sender: TObject);
    procedure Bt_CancelarClick(Sender: TObject);
    procedure Bt_EditarClick(Sender: TObject);
    procedure Bt_FechaIniActividadClick(Sender: TObject);
    procedure Bt_FechaFinActividadClick(Sender: TObject);
    procedure Bt_EliminarTodoClick(Sender: TObject);
  private
    { Private declarations }
    procedure PrendeApaga(Accion:string);
  public
    { Public declarations }
  end;

var
  MoRiesgosFrm: TMoRiesgosFrm;

implementation

{$R *.dfm}

uses DM_QualityProjectsCds, DM_QualityProjectsCon, MoLibQualityProjects,
  Sel_Fecha;


//BOTON NUEVO
procedure TMoRiesgosFrm.Bt_NuevoClick(Sender: TObject);
begin
  DM_QualityProjectsCdsFrm.CDS_ManRiesgos.Append;
  PrendeApaga('NUEVO');
  DBG_ManRiesgos.ReadOnly:=False;
  FocusControl(DBG_ManRiesgos);
end;


//BOTON GUARDAR
procedure TMoRiesgosFrm.Bt_GuardarClick(Sender: TObject);
begin
  DM_QualityProjectsCdsFrm.CDS_ManRiesgos.ApplyUpdates(0);

  if DM_QualityProjectsCdsFrm.CDS_ManRiesgos.RecordCount = 0 then
    PrendeApaga('DATOS0')
  else
    PrendeApaga('GUARDAR');

  DBG_ManRiesgos.ReadOnly:=True;
end;


//BOTON CANCELAR TODO
procedure TMoRiesgosFrm.Bt_CancelarClick(Sender: TObject);
begin
  DM_QualityProjectsCdsFrm.CDS_ManRiesgos.Close;
  DM_QualityProjectsCdsFrm.CDS_ManRiesgos.Open;
  DM_QualityProjectsCdsFrm.CDS_ManRiesgos.Cancel;

  if DM_QualityProjectsCdsFrm.CDS_ManRiesgos.RecordCount = 0 then
    PrendeApaga('DATOS0')
  else
    PrendeApaga('CANCELAR');

  DBG_ManRiesgos.ReadOnly:=True;
end;


//BOTON EDITAR
procedure TMoRiesgosFrm.Bt_EditarClick(Sender: TObject);
begin
  DM_QualityProjectsCdsFrm.CDS_ManRiesgos.Edit;
  PrendeApaga('EDITAR');
  DBG_ManRiesgos.ReadOnly:=False;
  FocusControl(DBG_ManRiesgos);
end;


//BOTON ELIMINAR TODO
procedure TMoRiesgosFrm.Bt_EliminarTodoClick(Sender: TObject);
begin
  if Application.MessageBox('¿ESTA SEGURO DE ELIMINAR TODOS LOS REGISTROS?','Quality Projects',MB_YESNO+MB_ICONQUESTION) = ID_NO then
    Abort;

  DM_QualityProjectsCdsFrm.CDS_ManRiesgos.First;
  while DM_QualityProjectsCdsFrm.CDS_ManRiesgos.RecordCount <> 0 do
    begin
      DM_QualityProjectsCdsFrm.CDS_ManRiesgos.Delete;
    end;
  PrendeApaga('ELIMINARTODO');
  ShowMessage('DEBE GUARDAR PARA ACPETAR LOS CAMBIOS');
end;


//BOTON CONSULTAR
procedure TMoRiesgosFrm.Bt_ConsultarClick(Sender: TObject);
begin
  if Bt_Consultar.Down then
    begin
      DM_QualityProjectsCdsFrm.CDS_ManRiesgos.Close;
      DM_QualityProjectsCdsFrm.CDS_ManRiesgos.Filtered:=False;
      DM_QualityProjectsCdsFrm.CDS_ManRiesgos.Params.ParamByName('ID_PROYECTO').AsInteger:=DBLCB_ID_PROYECTO.KeyValue;
      DM_QualityProjectsCdsFrm.CDS_ManRiesgos.Open;
      DM_QualityProjectsCdsFrm.V_ID_PROYECTO:=DBLCB_ID_PROYECTO.KeyValue;
      DM_QualityProjectsCdsFrm.CDS_ManRiesgos.RecordCount;

      if DM_QualityProjectsCdsFrm.CDS_ManRiesgos.RecordCount = 0 then
        PrendeApaga('DATOS0')
      else
        PrendeApaga('CONSULTAR');

    end
  else
    begin
      DM_QualityProjectsCdsFrm.CDS_ManRiesgos.Close;
    end;


  P_BotonesArriba.Visible:= Bt_Consultar.Down;
  P_Parametros.Enabled:= not Bt_Consultar.Down;

end;



//Boton Fecha Inicio Actividad
procedure TMoRiesgosFrm.Bt_FechaIniActividadClick(Sender: TObject);
begin
  {Sel_FechaFrm:=TSel_FechaFrm.Create(Self);
  if Sel_FechaFrm.ShowModal = mrOk then
    begin
      DM_QualityProjectsCdsFrm.CDS_ManActividades.Edit;
      DM_QualityProjectsCdsFrm.CDS_ManActividadesFECHA_INI_ACTIVIDAD.AsDateTime:=Trunc(Sel_FechaFrm.FECHA);
    end;
  Sel_FechaFrm.Free;}
end;


//Boton Fecha Fin Actividad
procedure TMoRiesgosFrm.Bt_FechaFinActividadClick(Sender: TObject);
begin
  {Sel_FechaFrm:=TSel_FechaFrm.Create(Self);
  if Sel_FechaFrm.ShowModal = mrOk then
    begin
      DM_QualityProjectsCdsFrm.CDS_ManActividades.Edit;
      DM_QualityProjectsCdsFrm.CDS_ManActividadesFECHA_FIN_ACTIVIDAD.AsDateTime:=Trunc(Sel_FechaFrm.FECHA);
    end;
  Sel_FechaFrm.Free;}
end;


//EVENTO OnCreate DE LA FORMA
procedure TMoRiesgosFrm.FormCreate(Sender: TObject);
begin
  DM_QualityProjectsConFrm:=TDM_QualityProjectsConFrm.Create(Self);
  DM_QualityProjectsCdsFrm:=TDM_QualityProjectsCdsFrm.Create(Self);
end;


//EVENTO OnDestroy DE LA FORMA
procedure TMoRiesgosFrm.FormDestroy(Sender: TObject);
begin
  DM_QualityProjectsConFrm.Free;
  DM_QualityProjectsCdsFrm.Free;
end;


//EVENTO OnShow DE LA FORMA
procedure TMoRiesgosFrm.FormShow(Sender: TObject);
begin
  P_BotonesArriba.Visible:=False;

  DM_QualityProjectsCdsFrm.CDS_ManProyectos.Close;
  DM_QualityProjectsCdsFrm.CDS_ManProyectos.Open;
  DM_QualityProjectsCdsFrm.CDS_ManProyectos.RecordCount;
  DM_QualityProjectsCdsFrm.CDS_ManProyectos.First;
  DBLCB_ID_PROYECTO.KeyValue:=DM_QualityProjectsCdsFrm.CDS_ManProyectosID_PROYECTO.AsInteger;

  DM_QualityProjectsCdsFrm.CDS_ManFases.Close;
  DM_QualityProjectsCdsFrm.CDS_ManFases.Params.ParamByName('ID_PROYECTO').AsInteger:=DBLCB_ID_PROYECTO.KeyValue;
  DM_QualityProjectsCdsFrm.CDS_ManFases.Open;
  DM_QualityProjectsCdsFrm.CDS_ManFases.RecordCount;
  DM_QualityProjectsCdsFrm.CDS_ManFases.First;
  DBLCB_ID_FASE.KeyValue:=DM_QualityProjectsCdsFrm.CDS_ManFasesID_FASE.AsInteger;

  DM_QualityProjectsCdsFrm.CDS_SelRoles.Close;
  DM_QualityProjectsCdsFrm.CDS_SelRoles.Params.ParamByName('ID_PROYECTO').AsInteger:=DBLCB_ID_PROYECTO.KeyValue;
  DM_QualityProjectsCdsFrm.CDS_SelRoles.Open;
  DM_QualityProjectsCdsFrm.CDS_SelRoles.RecordCount;
  DM_QualityProjectsCdsFrm.CDS_SelRoles.First;
  DBLCB_ID_ROL.KeyValue:=DM_QualityProjectsCdsFrm.CDS_SelRolesID_ROL.AsInteger;
end;




//PROCEDIMIENTO PrendeApaga
procedure TMoRiesgosFrm.PrendeApaga(Accion:string);
begin
  BotonesPrendeApaga(Accion);
  Bt_Nuevo.Enabled:=Nuevo;
  Bt_Guardar.Enabled:=Guardar;
  Bt_Cancelar.Enabled:=CancelarTodo;
  Bt_Editar.Enabled:=Editar;
  Bt_EliminarTodo.Enabled:=EliminarTodo;
  {BtCopiar.Enabled := MoLibOrionNIIF.VBtCopiar;
  BtPegar.Enabled := MoLibOrionNIIF.VBtPegar;
  BtExcel.Enabled := MoLibOrionNIIF.VBtExcel;
  BtImprimir.Enabled := MoLibOrionNIIF.VBtImprimir;
  BtAyuda.Enabled := MoLibOrionNIIF.VBtAyuda;
  BtSalir.Enabled := MoLibOrionNIIF.VBtSalir;
  BtEliminar.Enabled := MoLibOrionNIIF.VBtEliminar;
  BtAnular.Enabled := MoLibOrionNIIF.VBtAnular;
  BtAutorizar.Enabled := MoLibOrionNIIF.VBtAutorizar;
  BtDesautorizar.Enabled := MoLibOrionNIIF.VBtDesautorizar;}
end;




end.
