unit MoActividades;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls, Vcl.Grids, Vcl.DBGrids,
  Vcl.Buttons, Data.DB, Vcl.StdCtrls, Vcl.Mask, Vcl.DBCtrls;

type
  TMoActividadesFrm = class(TForm)
    P_BotonesArriba: TPanel;
    Panel2: TPanel;
    DBG_ManActividades: TDBGrid;
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
    Label1: TLabel;
    DBLCB_ID_ROL: TDBLookupComboBox;
    Label3: TLabel;
    DBLCB_ID_FASE: TDBLookupComboBox;
    Label4: TLabel;
    DBLCB_ID_INTEGRANTE: TDBLookupComboBox;
    DBE_FECHA_INI_ACTIVIDAD: TDBEdit;
    Label5: TLabel;
    Bt_FechaIniActividad: TSpeedButton;
    DBE_FECHA_FIN_ACTIVIDAD: TDBEdit;
    Bt_FechaFinActividad: TSpeedButton;
    Label6: TLabel;
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
  MoActividadesFrm: TMoActividadesFrm;

implementation

{$R *.dfm}

uses DM_QualityProjectsCds, DM_QualityProjectsCon, MoLibQualityProjects,
  Sel_Fecha;


//BOTON NUEVO
procedure TMoActividadesFrm.Bt_NuevoClick(Sender: TObject);
begin
  DM_QualityProjectsCdsFrm.CDS_ManActividades.Append;
  PrendeApaga('NUEVO');
  DBG_ManActividades.ReadOnly:=False;
  FocusControl(DBG_ManActividades);
end;


//BOTON GUARDAR
procedure TMoActividadesFrm.Bt_GuardarClick(Sender: TObject);
begin
  DM_QualityProjectsCdsFrm.CDS_ManActividades.ApplyUpdates(0);

  if DM_QualityProjectsCdsFrm.CDS_ManActividades.RecordCount = 0 then
    PrendeApaga('DATOS0')
  else
    PrendeApaga('GUARDAR');

  DBG_ManActividades.ReadOnly:=True;
end;


//BOTON CANCELAR TODO
procedure TMoActividadesFrm.Bt_CancelarClick(Sender: TObject);
begin
  DM_QualityProjectsCdsFrm.CDS_ManActividades.Close;
  DM_QualityProjectsCdsFrm.CDS_ManActividades.Open;
  DM_QualityProjectsCdsFrm.CDS_ManActividades.Cancel;

  if DM_QualityProjectsCdsFrm.CDS_ManActividades.RecordCount = 0 then
    PrendeApaga('DATOS0')
  else
    PrendeApaga('CANCELAR');

  DBG_ManActividades.ReadOnly:=True;
end;


//BOTON EDITAR
procedure TMoActividadesFrm.Bt_EditarClick(Sender: TObject);
begin
  DM_QualityProjectsCdsFrm.CDS_ManActividades.Edit;
  PrendeApaga('EDITAR');
  DBG_ManActividades.ReadOnly:=False;
  FocusControl(DBG_ManActividades);
end;


//BOTON ELIMINAR TODO
procedure TMoActividadesFrm.Bt_EliminarTodoClick(Sender: TObject);
begin
  if Application.MessageBox('�ESTA SEGURO DE ELIMINAR TODOS LOS REGISTROS?','Quality Projects',MB_YESNO+MB_ICONQUESTION) = ID_NO then
    Abort;

  DM_QualityProjectsCdsFrm.CDS_ManActividades.First;
  while DM_QualityProjectsCdsFrm.CDS_ManActividades.RecordCount <> 0 do
    begin
      DM_QualityProjectsCdsFrm.CDS_ManActividades.Delete;
    end;
  PrendeApaga('ELIMINARTODO');
  ShowMessage('DEBE GUARDAR PARA ACPETAR LOS CAMBIOS');
end;


//BOTON CONSULTAR
procedure TMoActividadesFrm.Bt_ConsultarClick(Sender: TObject);
begin
  if Bt_Consultar.Down then
    begin
      DM_QualityProjectsCdsFrm.CDS_ManActividades.Close;
      DM_QualityProjectsCdsFrm.CDS_ManActividades.Filtered:=False;
      DM_QualityProjectsCdsFrm.CDS_ManActividades.Params.ParamByName('ID_PROYECTO').AsInteger:=DBLCB_ID_PROYECTO.KeyValue;
      DM_QualityProjectsCdsFrm.CDS_ManActividades.Open;
      DM_QualityProjectsCdsFrm.V_ID_PROYECTO:=DBLCB_ID_PROYECTO.KeyValue;
      DM_QualityProjectsCdsFrm.CDS_ManActividades.RecordCount;

      if DM_QualityProjectsCdsFrm.CDS_ManActividades.RecordCount = 0 then
        PrendeApaga('DATOS0')
      else
        PrendeApaga('CONSULTAR');

    end
  else
    begin
      DM_QualityProjectsCdsFrm.CDS_ManActividades.Close;
    end;


  P_BotonesArriba.Visible:= Bt_Consultar.Down;
  P_Parametros.Enabled:= not Bt_Consultar.Down;

end;



//Boton Fecha Inicio Actividad
procedure TMoActividadesFrm.Bt_FechaIniActividadClick(Sender: TObject);
begin
  Sel_FechaFrm:=TSel_FechaFrm.Create(Self);
  if Sel_FechaFrm.ShowModal = mrOk then
    begin
      DM_QualityProjectsCdsFrm.CDS_ManActividades.Edit;
      DM_QualityProjectsCdsFrm.CDS_ManActividadesFECHA_INI_ACTIVIDAD.AsDateTime:=Trunc(Sel_FechaFrm.FECHA);
    end;
  Sel_FechaFrm.Free;
end;


//Boton Fecha Fin Actividad
procedure TMoActividadesFrm.Bt_FechaFinActividadClick(Sender: TObject);
begin
  Sel_FechaFrm:=TSel_FechaFrm.Create(Self);
  if Sel_FechaFrm.ShowModal = mrOk then
    begin
      DM_QualityProjectsCdsFrm.CDS_ManActividades.Edit;
      DM_QualityProjectsCdsFrm.CDS_ManActividadesFECHA_FIN_ACTIVIDAD.AsDateTime:=Trunc(Sel_FechaFrm.FECHA);
    end;
  Sel_FechaFrm.Free;
end;


//EVENTO OnCreate DE LA FORMA
procedure TMoActividadesFrm.FormCreate(Sender: TObject);
begin
  DM_QualityProjectsConFrm:=TDM_QualityProjectsConFrm.Create(Self);
  DM_QualityProjectsCdsFrm:=TDM_QualityProjectsCdsFrm.Create(Self);
end;


//EVENTO OnDestroy DE LA FORMA
procedure TMoActividadesFrm.FormDestroy(Sender: TObject);
begin
  DM_QualityProjectsConFrm.Free;
  DM_QualityProjectsCdsFrm.Free;
end;


//EVENTO OnShow DE LA FORMA
procedure TMoActividadesFrm.FormShow(Sender: TObject);
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
procedure TMoActividadesFrm.PrendeApaga(Accion:string);
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
