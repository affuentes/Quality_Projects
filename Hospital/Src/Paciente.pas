unit Paciente;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ExtCtrls;

type
  TPacienteFrm = class(TForm)
    panBotones: TPanel;
    btAyuda: TButton;
    btAgregar: TButton;
    btCambiar: TButton;
    btEliminar: TButton;
    btRegresar: TButton;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  PacienteFrm: TPacienteFrm;

implementation

{$R *.dfm}

end.
