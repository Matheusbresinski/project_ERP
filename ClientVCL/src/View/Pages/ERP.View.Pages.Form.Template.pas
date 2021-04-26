unit ERP.View.Pages.Form.Template;

interface

uses
  Winapi.Windows,
  Winapi.Messages,
  System.SysUtils,
  System.Variants,
  System.Classes,
  Vcl.Graphics,
  Vcl.Controls,
  Vcl.Forms,
  Vcl.Dialogs,
  Vcl.ExtCtrls,
  Router4D.Interfaces,
  ERP.View.Styles.Colors, Vcl.StdCtrls, System.ImageList, Vcl.ImgList,
  Vcl.Buttons, Vcl.ButtonGroup;

type
  TFormTemplate = class(TForm, IRouter4DComponent)
    pnlTemplate: TPanel;
    pnlTop: TPanel;
    pnlClient: TPanel;
    pnlTUser: TPanel;
    lpnlTUser: TLabel;
    ImageList1: TImageList;
    pnlButtonClient: TPanel;
    gButton: TButtonGroup;
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    procedure ApplyStyle;
    function Render : TForm;
    procedure UnRender;
  end;

var
  FormTemplate: TFormTemplate;

implementation

{$R *.dfm}

{ TFormTemplate }

procedure TFormTemplate.ApplyStyle;
Begin
     pnlTemplate.Color    := COLOR_BACKGROUND;
     pnlTop.Color         := COLOR_C1;
     pnlClient.Color      := COLOR_BACKGROUND;
     pnlTUser.Color       := COLOR_C1;

     lpnlTUser.Font.Size  := FONT_H5;
     lpnlTUser.Font.Color := FONT_COLOR3;
     lpnlTUser.Font.Name  := 'segoe UI';

End;

procedure TFormTemplate.FormCreate(Sender: TObject);
Begin
     ApplyStyle;
End;

function TFormTemplate.Render: TForm;
Begin
     Result := Self;
End;

procedure TFormTemplate.UnRender;
Begin

End;

End.
