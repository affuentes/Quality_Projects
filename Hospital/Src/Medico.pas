unit Medico;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ExtCtrls, Data.DB,
  Vcl.Grids, Vcl.DBGrids;

type
  TMedicoFrm = class(TForm)
    panBotones: TPanel;
    btRegresar: TButton;
    btEliminar: TButton;
    btCambiar: TButton;
    btAgregar: TButton;
    btAyuda: TButton;
    DBGrid1: TDBGrid;
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

end.
