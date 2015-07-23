unit DM_HospitalCon;

interface

uses
  System.SysUtils, System.Classes, Data.DBXMSSQL, Data.DB, Data.SqlExpr,
  Data.Win.ADODB;

type
  TDM_HospitalFrm = class(TDataModule)
    ADOConHospital: TADOConnection;
    ADODatCita: TADODataSet;
    DSCita: TDataSource;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  DM_HospitalFrm: TDM_HospitalFrm;

implementation

{%CLASSGROUP 'Vcl.Controls.TControl'}

{$R *.dfm}

end.
