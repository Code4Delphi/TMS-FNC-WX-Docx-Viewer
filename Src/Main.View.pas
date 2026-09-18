unit Main.View;

interface

uses
  System.SysUtils,
  System.Types,
  System.UITypes,
  System.Classes,
  System.Variants,
  VCL.Controls,
  VCL.Forms,
  VCL.Graphics,
  VCL.Dialogs,
  VCL.StdCtrls,
  Vcl.ExtCtrls,
  VCL.TMSFNCTypes,
  VCL.TMSFNCUtils,
  VCL.TMSFNCGraphics,
  VCL.TMSFNCGraphicsTypes,
  VCL.TMSFNCCustomControl,
  VCL.TMSFNCWebBrowser,
  VCL.TMSFNCCustomWEBControl,
  VCL.TMSFNCWXDocxViewer;

type
  TView = class(TForm)
    TMSFNCWXDocxViewer1: TTMSFNCWXDocxViewer;
    Panel1: TPanel;
    btnLoadFromFile: TButton;
    btnPrevPage: TButton;
    btnNextPage: TButton;
    btnGoToPage: TButton;
    Button2: TButton;
    Label1: TLabel;
    edtGoToPage: TEdit;
    Panel2: TPanel;
    lbActivePage: TLabel;
    lbPageCount: TLabel;
    Button1: TButton;
    procedure btnLoadFromFileClick(Sender: TObject);
    procedure btnPrevPageClick(Sender: TObject);
    procedure btnNextPageClick(Sender: TObject);
    procedure TMSFNCWXDocxViewer1PageChange(Sender: TObject; ActivePage: Integer);
    procedure TMSFNCWXDocxViewer1DocumentRendered(Sender: TObject;  PageCount: Integer);
    procedure btnGoToPageClick(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button1Click(Sender: TObject);
  private

  public

  end;

var
  View: TView;

implementation

{$R *.dfm}

procedure TView.btnLoadFromFileClick(Sender: TObject);
begin
  var LDialog := TOpenDialog.Create(nil);
  try
    //LDialog.InitialDir := TTMSFNCUtils.GetDocumentsPath;
    LDialog.Filter := 'All files (*.*)|*.*';
    if LDialog.Execute then
      TMSFNCWXDocxViewer1.LoadFromFile(LDialog.FileName);
  finally
    LDialog.Free;
  end;
end;

procedure TView.btnPrevPageClick(Sender: TObject);
begin
  TMSFNCWXDocxViewer1.PreviousPage;
end;

procedure TView.btnNextPageClick(Sender: TObject);
begin
  TMSFNCWXDocxViewer1.NextPage;
end;

procedure TView.TMSFNCWXDocxViewer1DocumentRendered(Sender: TObject;
  PageCount: Integer);
begin
  lbPageCount.Caption :=
    'Total Pages: ' + PageCount.ToString;
end;

procedure TView.TMSFNCWXDocxViewer1PageChange(Sender: TObject;
  ActivePage: Integer);
begin
  lbActivePage.Caption :=
    'Active Page: ' + (ActivePage + 1).ToString;
end;

procedure TView.btnGoToPageClick(Sender: TObject);
begin
  var LPage := StrToIntDef(edtGoToPage.Text, 0);
  TMSFNCWXDocxViewer1.ShowPage(Pred(LPage));
end;

procedure TView.Button2Click(Sender: TObject);
begin
  TMSFNCWXDocxViewer1.ZoomIn;
end;

procedure TView.Button1Click(Sender: TObject);
begin
  TMSFNCWXDocxViewer1.ZoomOut;
end;


end.
