unit UMain;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, Buttons, ExtCtrls;

type
  TMainFrm = class(TForm)
    Panel1: TPanel;
    Label1: TLabel;
    Label4: TLabel;
    Panel2: TPanel;
    Panel3: TPanel;
    Bevel4: TBevel;
    Bevel3: TBevel;
    Bevel2: TBevel;
    Bevel1: TBevel;
    SpeedButton1: TSpeedButton;
    SpeedButton2: TSpeedButton;
    SpeedButton3: TSpeedButton;
    SpeedButton5: TSpeedButton;
    SpeedButton6: TSpeedButton;
    procedure SpeedButton1Click(Sender: TObject);
    procedure SpeedButton6Click(Sender: TObject);
    procedure SpeedButton2Click(Sender: TObject);
    procedure SpeedButton3Click(Sender: TObject);
    procedure SpeedButton5Click(Sender: TObject);
  public
    Traitement: byte;
    procedure Lancer_Trait;
  end;

var
  MainFrm: TMainFrm;

implementation

uses  About, UTrait;

{$R *.DFM}

procedure TMainFrm.Lancer_Trait;
begin
  Frm_Trait := TFrm_Trait.Create(Application);
  try
    Frm_Trait.ShowModal;
  finally
    Frm_Trait.Free;
  end;
end;

procedure TMainFrm.SpeedButton1Click(Sender: TObject);
begin
  Traitement := 0;
  Lancer_Trait;
end;

procedure TMainFrm.SpeedButton2Click(Sender: TObject);
begin
  Traitement := 1;
  Lancer_Trait;
end;

procedure TMainFrm.SpeedButton3Click(Sender: TObject);
begin
  Traitement := 2;
  Lancer_Trait;
end;

procedure TMainFrm.SpeedButton6Click(Sender: TObject);
begin
  application.Terminate;
end;

procedure TMainFrm.SpeedButton5Click(Sender: TObject);
begin
  AboutBox := TAboutBox.Create(Application);
  try
    AboutBox.ShowModal;
  finally
    AboutBox.Free
  end;
end;

end.
