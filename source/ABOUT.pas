unit About;

interface

uses Windows, SysUtils, Classes, Graphics, Forms, Controls, StdCtrls,
  Buttons, ExtCtrls;

type
  TAboutBox = class(TForm)
    Panel1: TPanel;
    BitBtn1: TBitBtn;
    Label1: TLabel;
    Label2: TLabel;
    Panel2: TPanel;
    Bevel1: TBevel;
    Panel3: TPanel;
    Panel5: TPanel;
    Panel4: TPanel;
    Label3: TLabel;
    Label4: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    Timer1: TTimer;
    Label5: TLabel;
    Image1: TImage;
    Label6: TLabel;
    Label9: TLabel;
    Label10: TLabel;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormActivate(Sender: TObject);
    procedure Timer1Timer(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  AboutBox: TAboutBox;

implementation

{$R *.DFM}

procedure TAboutBox.FormClose(Sender: TObject; var Action: TCloseAction);
begin
timer1.Enabled := false;
label3.Top := 140;
label4.Top := 140;
label7.Top := 140;
label8.Top := 140;
end;

procedure TAboutBox.FormActivate(Sender: TObject);
begin
timer1.Enabled := true;
end;

procedure TAboutBox.Timer1Timer(Sender: TObject);
begin
label7.Top := label7.Top -1;
if label7.Top <= 150 then
   label8.Top := label8.Top -1;
if label8.Top <= 150 then
   label3.Top := label3.Top -1;
if label3.Top <= 150 then
   label4.Top := label4.Top -1;
if label4.Top <= 150 then
   label5.Top := label5.Top -1;
if label5.Top = 00 then
   begin
    label7.Top := 180;
    label8.Top := 180;
    label3.Top := 180;
    label4.Top := 180;
    label5.Top := 180;
   end;
end;

end.

