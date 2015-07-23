unit Cita;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ExtCtrls, Data.DB,
  Vcl.Grids, Vcl.DBGrids;

type
  TCitaFrm = class(TForm)
    panBotones: TPanel;
    btBuscar: TButton;
    btEliminar: TButton;
    btEditar: TButton;
    btNuevo: TButton;
    btAyuda: TButton;
    DBGCita: TDBGrid;
    btCancelar: TButton;
    btGuardar: TButton;
    procedure FormCreate(Sender: TObject);
    procedure btCancelarClick(Sender: TObject);
  private
    { Private declarations }

  public
    { Public declarations }

  end;

var
  CitaFrm: TCitaFrm;

implementation

{$R *.dfm}

uses DM_HospitalCon;

procedure TCitaFrm.btCancelarClick(Sender: TObject);
begin
  DM_HospitalFrm.ADODatCita.Close;
  DM_HospitalFrm.ADODatCita.Open;
  DM_HospitalFrm.ADODatCita.Cancel;

end;

procedure TCitaFrm.FormCreate(Sender: TObject);
begin
        DM_HospitalFrm := TDM_HospitalFrm.Create(Self);
end;

end.
