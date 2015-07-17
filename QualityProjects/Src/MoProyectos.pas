unit MoProyectos;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls, Vcl.Grids, Vcl.DBGrids,
  Vcl.Buttons, Data.DB, Vcl.StdCtrls, Vcl.Mask, Vcl.DBCtrls;

type
  TMoProyectosFrm = class(TForm)
    P_BotonesArriba: TPanel;
    Panel2: TPanel;
    DBG_ManProyectos: TDBGrid;
    Panel3: TPanel;
    Splitter1: TSplitter;
    Bt_Nuevo: TSpeedButton;
    Bt_Guardar: TSpeedButton;
    Bt_Cancelar: TSpeedButton;
    Bt_Editar: TSpeedButton;
    Bt_EliminarTodo: TSpeedButton;
    DS_ManProyectos: TDataSource;
    Panel1: TPanel;
    Bt_Consultar: TSpeedButton;
    DBM_DESCRIPCION_PROYECTO: TDBMemo;
    Label3: TLabel;
    DBM_ALCANCE_PROYECTO: TDBMemo;
    Label4: TLabel;
    DBM_PROPOSITO_PROYECTO: TDBMemo;
    Label5: TLabel;
    Label6: TLabel;
    DBE_VERSION_PROYECTO: TDBEdit;
    Panel4: TPanel;
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
  MoProyectosFrm: TMoProyectosFrm;

implementation

{$R *.dfm}

uses DM_QualityProjectsCds, DM_QualityProjectsCon, MoLibQualityProjects;


//BOTON NUEVO
procedure TMoProyectosFrm.Bt_NuevoClick(Sender: TObject);
begin
  DM_QualityProjectsCdsFrm.CDS_ManProyectos.Append;
  PrendeApaga('NUEVO');
  DBG_ManProyectos.ReadOnly:=False;
  FocusControl(DBG_ManProyectos);
end;


//BOTON GUARDAR
procedure TMoProyectosFrm.Bt_GuardarClick(Sender: TObject);
begin
  DM_QualityProjectsCdsFrm.CDS_ManProyectos.ApplyUpdates(0);

  if DM_QualityProjectsCdsFrm.CDS_ManProyectos.RecordCount = 0 then
    PrendeApaga('DATOS0')
  else
    PrendeApaga('GUARDAR');

  DBG_ManProyectos.ReadOnly:=True;
end;


//BOTON CANCELAR TODO
procedure TMoProyectosFrm.Bt_CancelarClick(Sender: TObject);
begin
  DM_QualityProjectsCdsFrm.CDS_ManProyectos.Close;
  DM_QualityProjectsCdsFrm.CDS_ManProyectos.Open;
  DM_QualityProjectsCdsFrm.CDS_ManProyectos.Cancel;

  if DM_QualityProjectsCdsFrm.CDS_ManProyectos.RecordCount = 0 then
    PrendeApaga('DATOS0')
  else
    PrendeApaga('CANCELAR');

  DBG_ManProyectos.ReadOnly:=True;
end;


//BOTON EDITAR
procedure TMoProyectosFrm.Bt_EditarClick(Sender: TObject);
begin
  DM_QualityProjectsCdsFrm.CDS_ManProyectos.Edit;
  PrendeApaga('EDITAR');
  DBG_ManProyectos.ReadOnly:=False;
  FocusControl(DBG_ManProyectos);
end;


//BOTON ELIMINAR TODO
procedure TMoProyectosFrm.Bt_EliminarTodoClick(Sender: TObject);
begin
  if Application.MessageBox('�ESTA SEGURO DE ELIMINAR TODOS LOS REGISTROS?','Quality Projects',MB_YESNO+MB_ICONQUESTION) = ID_NO then
    Abort;

  DM_QualityProjectsCdsFrm.CDS_ManProyectos.First;
  while DM_QualityProjectsCdsFrm.CDS_ManProyectos.RecordCount <> 0 do
    begin
      DM_QualityProjectsCdsFrm.CDS_ManProyectos.Delete;
    end;
  PrendeApaga('ELIMINARTODO');
  ShowMessage('DEBE GUARDAR PARA ACPETAR LOS CAMBIOS');
end;


//BOTON CONSULTAR
procedure TMoProyectosFrm.Bt_ConsultarClick(Sender: TObject);
begin
  if Bt_Consultar.Down then
    begin
      DM_QualityProjectsCdsFrm.CDS_ManProyectos.Close;
      DM_QualityProjectsCdsFrm.CDS_ManProyectos.Filtered:=False;
      DM_QualityProjectsCdsFrm.CDS_ManProyectos.Open;
      DM_QualityProjectsCdsFrm.CDS_ManProyectos.RecordCount;

      if DM_QualityProjectsCdsFrm.CDS_ManProyectos.RecordCount = 0 then
        PrendeApaga('DATOS0')
      else
        PrendeApaga('CONSULTAR');
    end
  else
    begin
      DM_QualityProjectsCdsFrm.CDS_ManProyectos.Close;
    end;


  P_BotonesArriba.Visible:= Bt_Consultar.Down;

end;






//EVENTO OnCreate DE LA FORMA

procedure TMoProyectosFrm.FormCreate(Sender: TObject);
begin
  DM_QualityProjectsConFrm:=TDM_QualityProjectsConFrm.Create(Self);
  DM_QualityProjectsCdsFrm:=TDM_QualityProjectsCdsFrm.Create(Self);
end;


//EVENTO OnDestroy DE LA FORMA
procedure TMoProyectosFrm.FormDestroy(Sender: TObject);
begin
  DM_QualityProjectsConFrm.Free;
  DM_QualityProjectsCdsFrm.Free;
end;


//EVENTO OnShow DE LA FORMA
procedure TMoProyectosFrm.FormShow(Sender: TObject);
begin
  P_BotonesArriba.Visible:=False;
end;




//PROCEDIMIENTO PrendeApaga
procedure TMoProyectosFrm.PrendeApaga(Accion:string);
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
