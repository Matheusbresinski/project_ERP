program ERP;

uses
  Vcl.Forms,
  uMain in 'ClientVCL\src\View\uMain.pas' {formPrincipal},
  ERP.View.Styles.Colors in 'ClientVCL\src\View\Styles\ERP.View.Styles.Colors.pas',
  ERP.View.Pages.Principal in 'ClientVCL\src\View\Pages\ERP.View.Pages.Principal.pas' {PagePrincipal},
  ERP.View.Routers in 'ClientVCL\src\View\Routers\ERP.View.Routers.pas',
  ERP.View.Pages.Form.Template in 'ClientVCL\src\View\Pages\ERP.View.Pages.Form.Template.pas' {FormTemplate},
  ERP.View.Pages.Form.Usuarios in 'ClientVCL\src\View\Pages\ERP.View.Pages.Form.Usuarios.pas' {formPageUsuarios};

{$R *.res}

begin
  Application.Initialize;
  ReportMemoryLeaksOnShutdown := True;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TformPrincipal, formPrincipal);
  Application.CreateForm(TFormTemplate, FormTemplate);
  Application.CreateForm(TformPageUsuarios, formPageUsuarios);
  Application.Run;
end.
