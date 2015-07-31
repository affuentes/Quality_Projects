unit Medico;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ExtCtrls, Data.DB,
  Vcl.Grids, Vcl.DBGrids, Vcl.Buttons;

type
  TMedicoFrm = class(TForm)
    DBGMedico: TDBGrid;
    panBotones: TPanel;
    btBuscar: TButton;
    btEliminar: TButton;
    btEditar: TButton;
    btNuevo: TButton;
    btAyuda: TButton;
    btCancelar: TButton;
    btGuardar: TButton;
    procedure btNuevoClick(Sender: TObject);
    procedure btCancelarClick(Sender: TObject);
    procedure btEditarClick(Sender: TObject);
    procedure btEliminarClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure btGuardarClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  MedicoFrm: TMedicoFrm;

implementation

{$R *.dfm}

uses DM_HospitalCon;

procedure TMedicoFrm.btCancelarClick(Sender: TObject);
begin
  DM_HospitalFrm.ADODatMedico.Close;
  DM_HospitalFrm.ADODatMedico.Open;
  DM_HospitalFrm.ADODatMedico.Cancel;
end;

procedure TMedicoFrm.btEditarClick(Sender: TObject);
begin
  DM_HospitalFrm.ADODatMedico.Edit;
  DBGMedico.ReadOnly:=False;
  FocusControl(DBGMedico);
end;

procedure TMedicoFrm.btEliminarClick(Sender: TObject);
begin
  DM_HospitalFrm.ADODatMedico.Delete;
end;

procedure TMedicoFrm.btGuardarClick(Sender: TObject);
begin
  DM_HospitalFrm.ADODatMedico.UpdateStatus();
end;

procedure TMedicoFrm.btNuevoClick(Sender: TObject);
begin
  DM_HospitalFrm.ADODatMedico.Append;
  DBGMedico.ReadOnly:=False;
  FocusControl(DBGMedico);
end;

procedure TMedicoFrm.FormCreate(Sender: TObject);
begin
        DM_HospitalFrm := TDM_HospitalFrm.Create(Self);
end;

procedure TMedicoFrm.FormDestroy(Sender: TObject);
begin
        DM_HospitalFrm.Free;
end;

end.
