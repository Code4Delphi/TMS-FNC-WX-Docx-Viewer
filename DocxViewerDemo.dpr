program DocxViewerDemo;

uses
  VCL.Forms,
  Main.View in 'Src\Main.View.pas' {Main};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TView, View);
  Application.Run;
end.
