unit MenuPpal;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ExtCtrls;

type
  TMenuPpalFrm = class(TForm)
    Panel1: TPanel;
    btMedico: TButton;
    btPaciente: TButton;
    btCita: TButton;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  MenuPpalFrm: TMenuPpalFrm;

implementation

{$R *.dfm}

end.
