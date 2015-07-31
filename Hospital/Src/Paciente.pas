unit Paciente;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ExtCtrls, Data.DB,
  Vcl.Grids, Vcl.DBGrids;

type
  TPacienteFrm = class(TForm)
    DBGPaciente: TDBGrid;
    panBotones: TPanel;
    btBuscar: TButton;
    btEliminar: TButton;
    btEditar: TButton;
    btNuevo: TButton;
    btAyuda: TButton;
    btCancelar: TButton;
    btGuardar: TButton;
    procedure FormCreate(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure btNuevoClick(Sender: TObject);
    procedure btCancelarClick(Sender: TObject);
    procedure btEditarClick(Sender: TObject);
    procedure btEliminarClick(Sender: TObject);
    procedure btGuardarClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  PacienteFrm: TPacienteFrm;

implementation

{$R *.dfm}

uses DM_HospitalCon;

procedure TPacienteFrm.btCancelarClick(Sender: TObject);
begin
  DM_HospitalFrm.ADODatPaciente.Close;
  DM_HospitalFrm.ADODatPaciente.Open;
  DM_HospitalFrm.ADODatPaciente.Cancel;
end;

procedure TPacienteFrm.btEditarClick(Sender: TObject);
begin
  DM_HospitalFrm.ADODatPaciente.Edit;
  DBGPaciente.ReadOnly:=False;
  FocusControl(DBGPaciente);
end;

procedure TPacienteFrm.btEliminarClick(Sender: TObject);
begin
  DM_HospitalFrm.ADODatPaciente.Delete;
end;

procedure TPacienteFrm.btGuardarClick(Sender: TObject);
begin
  DM_HospitalFrm.ADODatPaciente.UpdateStatus();
end;

procedure TPacienteFrm.btNuevoClick(Sender: TObject);
begin
  DM_HospitalFrm.ADODatPaciente.Append;
  DBGPaciente.ReadOnly:=False;
  FocusControl(DBGPaciente);
end;

procedure TPacienteFrm.FormCreate(Sender: TObject);
begin
  DM_HospitalFrm := TDM_HospitalFrm.Create(Self);
end;

procedure TPacienteFrm.FormDestroy(Sender: TObject);
begin
  DM_HospitalFrm.Free;
end;

end.
