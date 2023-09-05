program App_Elementos_Visuais;

uses
  Vcl.Forms,
  UfrmPrincipal in 'UfrmPrincipal.pas' {FrmPrincipal},
  UfrmDataHora in 'UfrmDataHora.pas' {FrmDataHora};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TFrmPrincipal, FrmPrincipal);
  Application.CreateForm(TFrmDataHora, FrmDataHora);
  Application.Run;
end.
