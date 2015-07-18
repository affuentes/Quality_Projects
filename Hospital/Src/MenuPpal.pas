unit MenuPpal;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ExtCtrls, Medico, Paciente, Cita;

type
  TMenuPpalFrm = class(TForm)
    panBotones: TPanel;
    btMedico: TButton;
    btPaciente: TButton;
    btCita: TButton;
    procedure btMedicoClick(Sender: TObject);
    procedure btPacienteClick(Sender: TObject);
    procedure btCitaClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  MenuPpalFrm: TMenuPpalFrm;

implementation

{$R *.dfm}

procedure TMenuPpalFrm.btCitaClick(Sender: TObject);
begin
  CitaFrm:= TCitaFrm.Create(Self);
  CitaFrm.ShowModal;
  CitaFrm.Free;
end;

procedure TMenuPpalFrm.btMedicoClick(Sender: TObject);
begin
  MedicoFrm:= TMedicoFrm.Create(Self);
  MedicoFrm.ShowModal;
  MedicoFrm.Free;
end;

procedure TMenuPpalFrm.btPacienteClick(Sender: TObject);
begin
  PacienteFrm:= TPacienteFrm.Create(Self);
  PacienteFrm.ShowModal;
  PacienteFrm.Free;
end;

end.
