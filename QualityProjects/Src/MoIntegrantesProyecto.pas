unit MoIntegrantesProyecto;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls, Vcl.Grids, Vcl.DBGrids,
  Vcl.Buttons, Data.DB, Vcl.StdCtrls, Vcl.Mask, Vcl.DBCtrls;

type
  TMoIntegrantesProyectoFrm = class(TForm)
    P_BotonesArriba: TPanel;
    Panel2: TPanel;
    DBG_ManIntegrantes: TDBGrid;
    Panel3: TPanel;
    Splitter1: TSplitter;
    Bt_Nuevo: TSpeedButton;
    Bt_Guardar: TSpeedButton;
    Bt_Cancelar: TSpeedButton;
    Bt_Editar: TSpeedButton;
    Bt_EliminarTodo: TSpeedButton;
    Panel1: TPanel;
    Bt_Consultar: TSpeedButton;
    Panel4: TPanel;
    Label2: TLabel;
    DBLCB_ID_PROYECTO: TDBLookupComboBox;
    Label1: TLabel;
    DBLCB_ID_ROL: TDBLookupComboBox;
    procedure FormCreate(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure Bt_ConsultarClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure Bt_NuevoClick(Sender: TObject);
    procedure Bt_GuardarClick(Sender: TObject);
    procedure Bt_CancelarClick(Sender: TObject);
    procedure Bt_EditarClick(Sender: TObject);
    procedure Bt_EliminarTodoClick(Sender: TObject);
  private
    { Private declarations }
    procedure PrendeApaga(Accion:string);
  public
    { Public declarations }
  end;

var
  MoIntegrantesProyectoFrm: TMoIntegrantesProyectoFrm;

implementation

{$R *.dfm}

uses DM_QualityProjectsCds, DM_QualityProjectsCon, MoLibQualityProjects;


//BOTON NUEVO
procedure TMoIntegrantesProyectoFrm.Bt_NuevoClick(Sender: TObject);
begin
  DM_QualityProjectsCdsFrm.CDS_ManIntegrantes.Append;
  PrendeApaga('NUEVO');
  DBG_ManIntegrantes.ReadOnly:=False;
  FocusControl(DBG_ManIntegrantes);
end;


//BOTON GUARDAR
procedure TMoIntegrantesProyectoFrm.Bt_GuardarClick(Sender: TObject);
begin
  DM_QualityProjectsCdsFrm.CDS_ManIntegrantes.ApplyUpdates(0);

  if DM_QualityProjectsCdsFrm.CDS_ManIntegrantes.RecordCount = 0 then
    PrendeApaga('DATOS0')
  else
    PrendeApaga('GUARDAR');

  DBG_ManIntegrantes.ReadOnly:=True;
end;


//BOTON CANCELAR TODO
procedure TMoIntegrantesProyectoFrm.Bt_CancelarClick(Sender: TObject);
begin
  DM_QualityProjectsCdsFrm.CDS_ManIntegrantes.Close;
  DM_QualityProjectsCdsFrm.CDS_ManIntegrantes.Open;
  DM_QualityProjectsCdsFrm.CDS_ManIntegrantes.Cancel;

  if DM_QualityProjectsCdsFrm.CDS_ManIntegrantes.RecordCount = 0 then
    PrendeApaga('DATOS0')
  else
    PrendeApaga('CANCELAR');

  DBG_ManIntegrantes.ReadOnly:=True;
end;


//BOTON EDITAR
procedure TMoIntegrantesProyectoFrm.Bt_EditarClick(Sender: TObject);
begin
  DM_QualityProjectsCdsFrm.CDS_ManIntegrantes.Edit;
  PrendeApaga('EDITAR');
  DBG_ManIntegrantes.ReadOnly:=False;
  FocusControl(DBG_ManIntegrantes);
end;


//BOTON ELIMINAR TODO
procedure TMoIntegrantesProyectoFrm.Bt_EliminarTodoClick(Sender: TObject);
begin
  if Application.MessageBox('�ESTA SEGURO DE ELIMINAR TODOS LOS REGISTROS?','Quality Projects',MB_YESNO+MB_ICONQUESTION) = ID_NO then
    Abort;

  DM_QualityProjectsCdsFrm.CDS_ManIntegrantes.First;
  while DM_QualityProjectsCdsFrm.CDS_ManIntegrantes.RecordCount <> 0 do
    begin
      DM_QualityProjectsCdsFrm.CDS_ManIntegrantes.Delete;
    end;
  PrendeApaga('ELIMINARTODO');
  ShowMessage('DEBE GUARDAR PARA ACPETAR LOS CAMBIOS');
end;


//BOTON CONSULTAR
procedure TMoIntegrantesProyectoFrm.Bt_ConsultarClick(Sender: TObject);
begin
  if Bt_Consultar.Down then
    begin
      DM_QualityProjectsCdsFrm.CDS_ManIntegrantes.Close;
      DM_QualityProjectsCdsFrm.CDS_ManIntegrantes.Filtered:=False;
      DM_QualityProjectsCdsFrm.CDS_ManIntegrantes.Params.ParamByName('ID_PROYECTO').AsInteger:=DBLCB_ID_PROYECTO.KeyValue;
      DM_QualityProjectsCdsFrm.CDS_ManIntegrantes.Params.ParamByName('ID_ROL').AsInteger:=DBLCB_ID_ROL.KeyValue;
      DM_QualityProjectsCdsFrm.CDS_ManIntegrantes.Open;
      DM_QualityProjectsCdsFrm.V_ID_PROYECTO:=DBLCB_ID_PROYECTO.KeyValue;
      DM_QualityProjectsCdsFrm.V_ID_ROL:=DBLCB_ID_ROL.KeyValue;
      DM_QualityProjectsCdsFrm.CDS_ManIntegrantes.RecordCount;

      if DM_QualityProjectsCdsFrm.CDS_ManIntegrantes.RecordCount = 0 then
        PrendeApaga('DATOS0')
      else
        PrendeApaga('CONSULTAR');

    end
  else
    begin
      DM_QualityProjectsCdsFrm.CDS_ManIntegrantes.Close;
    end;


  P_BotonesArriba.Visible:= Bt_Consultar.Down;

end;






//EVENTO OnCreate DE LA FORMA

procedure TMoIntegrantesProyectoFrm.FormCreate(Sender: TObject);
begin
  DM_QualityProjectsConFrm:=TDM_QualityProjectsConFrm.Create(Self);
  DM_QualityProjectsCdsFrm:=TDM_QualityProjectsCdsFrm.Create(Self);
end;


//EVENTO OnDestroy DE LA FORMA
procedure TMoIntegrantesProyectoFrm.FormDestroy(Sender: TObject);
begin
  DM_QualityProjectsConFrm.Free;
  DM_QualityProjectsCdsFrm.Free;
end;


//EVENTO OnShow DE LA FORMA
procedure TMoIntegrantesProyectoFrm.FormShow(Sender: TObject);
begin
  P_BotonesArriba.Visible:=False;

  DM_QualityProjectsCdsFrm.CDS_ManProyectos.Close;
  DM_QualityProjectsCdsFrm.CDS_ManProyectos.Open;
  DM_QualityProjectsCdsFrm.CDS_ManProyectos.RecordCount;
  DM_QualityProjectsCdsFrm.CDS_ManProyectos.First;
  DBLCB_ID_PROYECTO.KeyValue:=DM_QualityProjectsCdsFrm.CDS_ManProyectosID_PROYECTO.AsInteger;

  DM_QualityProjectsCdsFrm.CDS_ManRoles.Close;
  DM_QualityProjectsCdsFrm.CDS_ManRoles.Params.ParamByName('ID_PROYECTO').AsInteger:=DBLCB_ID_PROYECTO.KeyValue;
  DM_QualityProjectsCdsFrm.CDS_ManRoles.Open;
  DM_QualityProjectsCdsFrm.CDS_ManRoles.RecordCount;
  DM_QualityProjectsCdsFrm.CDS_ManRoles.First;
  DBLCB_ID_ROL.KeyValue:=DM_QualityProjectsCdsFrm.CDS_ManRolesID_ROL.AsInteger;


end;




//PROCEDIMIENTO PrendeApaga
procedure TMoIntegrantesProyectoFrm.PrendeApaga(Accion:string);
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
