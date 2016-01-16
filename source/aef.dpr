program aef;

uses
  Forms,
  UMain in 'UMain.pas' {MainFrm},
  About in 'ABOUT.PAS' {AboutBox},
  UTrait in 'UTrait.pas' {Frm_Trait};

{$R *.RES}

begin
  Application.Initialize;
  Application.Title := 'MINI PROJET - Automate d''Etat Fini -';
  Application.CreateForm(TMainFrm, MainFrm);
  Application.CreateForm(TFrm_Trait, Frm_Trait);
  Application.Run;
end.
