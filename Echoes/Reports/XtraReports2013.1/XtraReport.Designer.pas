namespace $rootnamespace$;

interface

type
  $safeitemrootname$ = public partial class
/// <summary>
/// Required designer variable.
/// </summary>
  protected  
    method Dispose(disposing: System.Boolean); override;
  {$REGION Windows Form Designer generated fields}
  private     
	var components: System.ComponentModel.IContainer := nil;
    Detail: DevExpress.XtraReports.UI.DetailBand;
    TopMargin: DevExpress.XtraReports.UI.TopMarginBand;
    BottomMargin: DevExpress.XtraReports.UI.BottomMarginBand; 
	method InitializeComponent;
   {$endregion}	
  end;

implementation

/// <summary> 
/// Clean up any resources being used.
/// </summary>
/// <param name="disposing">true if managed resources should be disposed; otherwise, false.</param>
method $safeitemrootname$.Dispose(disposing: System.Boolean);
begin
  if (disposing) and ((components <> nil)) then begin
    components.Dispose()
  end;
  inherited Dispose(disposing)
end;

/// <summary>
/// Required method for Designer support - do not modify
/// the contents of this method with the code editor.
/// </summary>
method $safeitemrootname$.InitializeComponent;
begin
  self.components := new System.ComponentModel.Container();
  self.Detail := new DevExpress.XtraReports.UI.DetailBand();
  self.TopMargin := new DevExpress.XtraReports.UI.TopMarginBand();
  self.BottomMargin := new DevExpress.XtraReports.UI.BottomMarginBand();
  ((self) as System.ComponentModel.ISupportInitialize).BeginInit();
  self.TopMargin.Height := 100;
  self.BottomMargin.Height := 100;
  self.Name := '$safeitemrootname$';
  self.Bands.AddRange(array of DevExpress.XtraReports.UI.Band([self.Detail, self.TopMargin, self.BottomMargin]));
  ((self) as System.ComponentModel.ISupportInitialize).EndInit()
end;

end.
