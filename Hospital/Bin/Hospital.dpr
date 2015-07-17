program Hospital;

uses
  Vcl.Forms,
  MenuPpal in '..\Src\MenuPpal.pas' {MenuPpalFrm};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TMenuPpalFrm, MenuPpalFrm);
  Application.Run;
end.
