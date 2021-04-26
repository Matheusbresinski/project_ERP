unit ERP.View.Pages.Principal;

interface

uses
  Winapi.Windows,
  Winapi.Messages,
  System.Variants,
  System.Classes,
  Vcl.Graphics,
  Vcl.Controls,
  Vcl.Forms,
  Vcl.Dialogs,
  Vcl.StdCtrls,
  Vcl.ExtCtrls,
  Router4D.Interfaces;

type
  TPagePrincipal = class(TForm, iRouter4DComponent)
    pnlPPrincipal: TPanel;
    Label1: TLabel;
  private
    { Private declarations }
  public
    { Public declarations }
    function Render :TForm;
    procedure UnRender;
  end;

var
  PagePrincipal: TPagePrincipal;

implementation

uses
  ERP.View.Styles.Colors;

{$R *.dfm}

{ TPagePrincipal }

function TPagePrincipal.Render: TForm;
Begin
     Result              := Self;
     pnlPPrincipal.Color := COLOR_BACKGROUND;
End;

procedure TPagePrincipal.UnRender;
Begin

End;

end.
