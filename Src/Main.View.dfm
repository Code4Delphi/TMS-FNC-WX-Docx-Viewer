object View: TView
  Left = 0
  Top = 0
  Caption = 'TTMSFNCWXDocx Demo'
  ClientHeight = 997
  ClientWidth = 579
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  Position = poDesigned
  TextHeight = 15
  object TMSFNCWXDocxViewer1: TTMSFNCWXDocxViewer
    Left = 0
    Top = 120
    Width = 579
    Height = 877
    Align = alClient
    ParentDoubleBuffered = False
    DoubleBuffered = True
    TabOrder = 0
    Options.RenderChanges = False
    OnDocumentRendered = TMSFNCWXDocxViewer1DocumentRendered
    OnPageChange = TMSFNCWXDocxViewer1PageChange
    AutoClearCache = True
    EnableContextMenu = False
    EnableShowDebugConsole = False
    EnableAcceleratorKeys = False
    LibraryLocation = llOffline
    RemoveMargins = True
  end
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 579
    Height = 89
    Align = alTop
    TabOrder = 1
    object Label1: TLabel
      Left = 456
      Top = 8
      Width = 61
      Height = 15
      Caption = 'Go to page:'
    end
    object btnLoadFromFile: TButton
      Left = 8
      Top = 8
      Width = 105
      Height = 25
      Caption = 'Load From File'
      TabOrder = 2
      WordWrap = True
      OnClick = btnLoadFromFileClick
    end
    object btnPrevPage: TButton
      Left = 118
      Top = 8
      Width = 105
      Height = 25
      Caption = 'Previous Page'
      TabOrder = 1
      WordWrap = True
      OnClick = btnPrevPageClick
    end
    object btnNextPage: TButton
      Left = 117
      Top = 39
      Width = 105
      Height = 25
      Caption = 'Next Page'
      TabOrder = 0
      WordWrap = True
      OnClick = btnNextPageClick
    end
    object btnGoToPage: TButton
      Left = 456
      Top = 54
      Width = 100
      Height = 25
      Caption = 'Go to Page'
      TabOrder = 3
      WordWrap = True
      OnClick = btnGoToPageClick
    end
    object Button2: TButton
      Left = 228
      Top = 8
      Width = 92
      Height = 25
      Caption = 'Zoom +'
      TabOrder = 4
      WordWrap = True
      OnClick = Button2Click
    end
    object edtGoToPage: TEdit
      Left = 456
      Top = 25
      Width = 100
      Height = 23
      NumbersOnly = True
      TabOrder = 5
      Text = '0'
    end
    object Button1: TButton
      Left = 228
      Top = 39
      Width = 92
      Height = 25
      Caption = 'Zoom -'
      TabOrder = 6
      WordWrap = True
      OnClick = Button1Click
    end
  end
  object Panel2: TPanel
    Left = 0
    Top = 89
    Width = 579
    Height = 31
    Align = alTop
    TabOrder = 2
    object lbActivePage: TLabel
      Left = 16
      Top = 6
      Width = 21
      Height = 15
      Caption = '- / -'
    end
    object lbPageCount: TLabel
      Left = 119
      Top = 6
      Width = 21
      Height = 15
      Caption = '- / -'
    end
  end
end
