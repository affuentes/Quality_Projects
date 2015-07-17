unit Sel_Fecha;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ComCtrls, Vcl.Buttons, Vcl.ExtCtrls,
  Vcl.StdCtrls;

type
  TSel_FechaFrm = class(TForm)
    Panel1: TPanel;
    Panel2: TPanel;
    MonthCalendar1: TMonthCalendar;
    BtSalir: TSpeedButton;
    StatusBar1: TStatusBar;
    BtAceptar: TBitBtn;
    BtCancelar: TBitBtn;
    procedure FormShow(Sender: TObject);
    procedure BtAceptarClick(Sender: TObject);
    procedure MonthCalendar1DblClick(Sender: TObject);
    procedure BtSalirClick(Sender: TObject);
  private
    { Private declarations }

  public
    { Public declarations }
    DIA,MES,ANO:Word;
    FECHA:TDate;
  end;

var
  Sel_FechaFrm: TSel_FechaFrm;

implementation

{$R *.dfm}

//BOTON ACEPTAR
procedure TSel_FechaFrm.BtAceptarClick(Sender: TObject);
begin
  DecodeDate(MonthCalendar1.Date,ANO,MES,DIA);
  FECHA:=MonthCalendar1.Date;
end;


//BOTON SALIR
procedure TSel_FechaFrm.BtSalirClick(Sender: TObject);
begin
 Close;
end;


//EVENTO ONSHOW DE LA FORMA
procedure TSel_FechaFrm.FormShow(Sender: TObject);
begin
  MonthCalendar1.Date:=Now;
end;


//EVENTO ONDBLCLICK DEL MONTHCALENDAR
procedure TSel_FechaFrm.MonthCalendar1DblClick(Sender: TObject);
begin
  BtAceptarClick(Sender);
  ModalResult:=mrOk;
end;

end.
