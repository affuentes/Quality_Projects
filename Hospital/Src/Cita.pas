unit Cita;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ExtCtrls, Data.DB,
  Vcl.Grids, Vcl.DBGrids;

type
  TCitaFrm = class(TForm)
    panBotones: TPanel;
    btRegresar: TButton;
    btEliminar: TButton;
    btCambiar: TButton;
    btAgregar: TButton;
    btAyuda: TButton;
    DBGCita: TDBGrid;
    procedure btAgregarClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
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

procedure TCitaFrm.btAgregarClick(Sender: TObject);
begin
  DM_HospitalFrm.ADODatCita.Append;
  DBGCita.ReadOnly:=False;
  FocusControl(DBGCita);
end;

procedure TCitaFrm.FormCreate(Sender: TObject);
begin
        DM_HospitalFrm := TDM_HospitalFrm.Create(Self);
end;

end.
