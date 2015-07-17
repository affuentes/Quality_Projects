unit MoRoles;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls, Vcl.Grids, Vcl.DBGrids,
  Vcl.Buttons, Data.DB, Vcl.StdCtrls, Vcl.Mask, Vcl.DBCtrls;

type
  TMoRolesFrm = class(TForm)
    P_BotonesArriba: TPanel;
    Panel2: TPanel;
    DBG_ManRoles: TDBGrid;
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
    DBLCB_ID_PROYECTO: TDBLookupComboBox;
    Label1: TLabel;
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
  MoRolesFrm: TMoRolesFrm;

implementation

{$R *.dfm}

uses DM_QualityProjectsCds, DM_QualityProjectsCon, MoLibQualityProjects;


//BOTON NUEVO
procedure TMoRolesFrm.Bt_NuevoClick(Sender: TObject);
begin
  DM_QualityProjectsCdsFrm.CDS_ManRoles.Append;
  PrendeApaga('NUEVO');
  DBG_ManRoles.ReadOnly:=False;
  FocusControl(DBG_ManRoles);
end;


//BOTON GUARDAR
procedure TMoRolesFrm.Bt_GuardarClick(Sender: TObject);
begin
  DM_QualityProjectsCdsFrm.CDS_ManRoles.ApplyUpdates(0);

  if DM_QualityProjectsCdsFrm.CDS_ManRoles.RecordCount = 0 then
    PrendeApaga('DATOS0')
  else
    PrendeApaga('GUARDAR');

  DBG_ManRoles.ReadOnly:=True;
end;


//BOTON CANCELAR TODO
procedure TMoRolesFrm.Bt_CancelarClick(Sender: TObject);
begin
  DM_QualityProjectsCdsFrm.CDS_ManRoles.Close;
  DM_QualityProjectsCdsFrm.CDS_ManRoles.Open;
  DM_QualityProjectsCdsFrm.CDS_ManRoles.Cancel;

  if DM_QualityProjectsCdsFrm.CDS_ManRoles.RecordCount = 0 then
    PrendeApaga('DATOS0')
  else
    PrendeApaga('CANCELAR');

  DBG_ManRoles.ReadOnly:=True;
end;


//BOTON EDITAR
procedure TMoRolesFrm.Bt_EditarClick(Sender: TObject);
begin
  DM_QualityProjectsCdsFrm.CDS_ManRoles.Edit;
  PrendeApaga('EDITAR');
  DBG_ManRoles.ReadOnly:=False;
  FocusControl(DBG_ManRoles);
end;


//BOTON ELIMINAR TODO
procedure TMoRolesFrm.Bt_EliminarTodoClick(Sender: TObject);
begin
  if Application.MessageBox('�ESTA SEGURO DE ELIMINAR TODOS LOS REGISTROS?','Quality Projects',MB_YESNO+MB_ICONQUESTION) = ID_NO then
    Abort;

  DM_QualityProjectsCdsFrm.CDS_ManRoles.First;
  while DM_QualityProjectsCdsFrm.CDS_ManRoles.RecordCount <> 0 do
    begin
      DM_QualityProjectsCdsFrm.CDS_ManRoles.Delete;
    end;
  PrendeApaga('ELIMINARTODO');
  ShowMessage('DEBE GUARDAR PARA ACPETAR LOS CAMBIOS');
end;


//BOTON CONSULTAR
procedure TMoRolesFrm.Bt_ConsultarClick(Sender: TObject);
begin
  if Bt_Consultar.Down then
    begin
      DM_QualityProjectsCdsFrm.CDS_ManRoles.Close;
      DM_QualityProjectsCdsFrm.CDS_ManRoles.Filtered:=False;
      DM_QualityProjectsCdsFrm.CDS_ManRoles.Params.ParamByName('ID_PROYECTO').AsInteger:=DBLCB_ID_PROYECTO.KeyValue;
      DM_QualityProjectsCdsFrm.CDS_ManRoles.Open;
      DM_QualityProjectsCdsFrm.V_ID_PROYECTO:=DBLCB_ID_PROYECTO.KeyValue;
      DM_QualityProjectsCdsFrm.CDS_ManRoles.RecordCount;

      if DM_QualityProjectsCdsFrm.CDS_ManRoles.RecordCount = 0 then
        PrendeApaga('DATOS0')
      else
        PrendeApaga('CONSULTAR');





    end
  else
    begin
      DM_QualityProjectsCdsFrm.CDS_ManRoles.Close;
    end;


  P_BotonesArriba.Visible:= Bt_Consultar.Down;

end;






//EVENTO OnCreate DE LA FORMA

procedure TMoRolesFrm.FormCreate(Sender: TObject);
begin
  DM_QualityProjectsConFrm:=TDM_QualityProjectsConFrm.Create(Self);
  DM_QualityProjectsCdsFrm:=TDM_QualityProjectsCdsFrm.Create(Self);
end;


//EVENTO OnDestroy DE LA FORMA
procedure TMoRolesFrm.FormDestroy(Sender: TObject);
begin
  DM_QualityProjectsConFrm.Free;
  DM_QualityProjectsCdsFrm.Free;
end;


//EVENTO OnShow DE LA FORMA
procedure TMoRolesFrm.FormShow(Sender: TObject);
begin
  P_BotonesArriba.Visible:=False;

  DM_QualityProjectsCdsFrm.CDS_ManProyectos.Close;
  DM_QualityProjectsCdsFrm.CDS_ManProyectos.Open;
  DM_QualityProjectsCdsFrm.CDS_ManProyectos.RecordCount;
  DM_QualityProjectsCdsFrm.CDS_ManProyectos.First;
  DBLCB_ID_PROYECTO.KeyValue:=DM_QualityProjectsCdsFrm.CDS_ManProyectosID_PROYECTO.AsInteger;


end;




//PROCEDIMIENTO PrendeApaga
procedure TMoRolesFrm.PrendeApaga(Accion:string);
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
