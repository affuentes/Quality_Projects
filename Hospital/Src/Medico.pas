unit Medico;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ExtCtrls;

type
  TMedicoFrm = class(TForm)
    panBotones: TPanel;
    btRegresar: TButton;
    btEliminar: TButton;
    btCambiar: TButton;
    btAgregar: TButton;
    btAyuda: TButton;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  MedicoFrm: TMedicoFrm;

implementation

{$R *.dfm}

end.
