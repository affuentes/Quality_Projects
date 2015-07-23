unit Usuario;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, Vcl.Grids, Vcl.DBGrids,
  Data.Win.ADODB, Vcl.StdCtrls, Vcl.ExtCtrls;

type
  TUsuarioFrm = class(TForm)
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
  UsuarioFrm: TUsuarioFrm;

implementation

{$R *.dfm}

uses DM_HospitalCon;

end.
