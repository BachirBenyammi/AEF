unit UTrait;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, Grids, Buttons, ExtCtrls, IniFiles;

type
  TFrm_Trait = class(TForm)
    Panel1: TPanel;
    BtnEtablir: TBitBtn;
    BtnAnalyse: TBitBtn;
    BtnInitial: TBitBtn;
    Label2: TLabel;
    CB_Choix: TComboBox;
    Label1: TLabel;
    Edit_Nbr_Etat: TEdit;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    Panel2: TPanel;
    GB1: TGroupBox;
    SG1: TStringGrid;
    GB2: TGroupBox;
    SG2: TStringGrid;
    BitBtn3: TBitBtn;
    SD: TSaveDialog;
    OD: TOpenDialog;
    procedure CB_ChoixChange(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure Edit_Nbr_EtatKeyPress(Sender: TObject; var Key: Char);
    procedure BtnEtablirClick(Sender: TObject);
    procedure BtnInitialClick(Sender: TObject);
    procedure BtnAnalyseClick(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure BitBtn3Click(Sender: TObject);
  private
    { Déclarations privées }
  public
    procedure Automate_Miroir;
    procedure Automate_Complet;
    procedure Automate_Deterministe;
    procedure Fixer_Matrice(var Table: TStringGrid; n : integer);
    procedure Effacer_Matrice (var Table: TStringGrid);
    procedure Lecture_Matrice (Source: String);
    procedure Ecriture_Matrice (Destination: String);
    { Déclarations publiques }
  end;

var
  Frm_Trait: TFrm_Trait;

implementation

uses UMain;

{$R *.DFM}

procedure TFrm_Trait.CB_ChoixChange(Sender: TObject);
begin
  Case CB_Choix.ItemIndex of
     0: GB2.Caption := 'Matrice d''AEF Miroire';
     1: GB2.Caption := 'Matrice d''AEF Complet';
     2: GB2.Caption := 'Matrice d''AEF Déterministe';
  end;
end;

procedure TFrm_Trait.FormCreate(Sender: TObject);
begin
  CB_Choix.ItemIndex := MainFrm.Traitement;
  CB_ChoixChange(sender);
end;

procedure TFrm_Trait.BtnAnalyseClick(Sender: TObject);
var i,j,n: integer;
begin
  Effacer_Matrice(SG2);
  n := StrToInt(Edit_Nbr_Etat.Text);
  Fixer_Matrice(SG2,N);
  for i:=0 to n do
    for j:= 0 to n do
      if length(SG1.Cells[i,j]) <= 0 then
        SG1.Cells[i,j] := '-1';

  Case CB_Choix.ItemIndex of
    -1: MessageDlg('Choisir dabord un traitement !!', mtinformation, [MbOK],0);
     0: Automate_Miroir;
     1: Automate_Complet;
     2: Automate_Deterministe;
  end;
end;

procedure TFrm_Trait.Edit_Nbr_EtatKeyPress(Sender: TObject; var Key: Char);
begin
  if Key = #13 then
    begin

    end;
end;

procedure TFrm_Trait.BtnEtablirClick(Sender: TObject);
var n:integer;
begin
  n:=strtoint(Edit_Nbr_Etat.text);
  Effacer_Matrice(SG1);
  Effacer_Matrice(SG2);
  Fixer_Matrice(SG1,n);
  Fixer_Matrice(SG2,n);
end;

procedure TFrm_Trait.Fixer_Matrice(var Table: TStringGrid; n : integer);
var
  i:integer;
begin
  Table.ColCount := n +1;
  Table.RowCount := n +1;
  Table.cells[0,0]:='Etat';
  for i:= 1 to n do
    begin
      Table.cells[i,0]:='S'+inttostr(i-1);
      Table.cells[0,i]:='S'+inttostr(i-1);
    end;
end;

procedure TFrm_Trait.Effacer_Matrice (var Table : TStringGrid);
var i,j:integer;
begin
  for i:= 0 to Table.ColCount -1 do
    for j:= 0 to Table.ColCount -1  do
      Table.cells[j,i]:='';
end;

procedure TFrm_Trait.Automate_Miroir;
var i,j,n:integer;
begin
  n:=strtoint(Edit_Nbr_Etat.text);
  for i:= 1 to n do
    for j:= 1 to n do
      SG2.Cells[i,j]:=SG1.Cells[j,i];
end;

procedure TFrm_Trait.Automate_Deterministe;
var i,j,n,m,k,l,p,compt,r:integer;
v:string;termine:Boolean;
label etq;
begin
  n := StrToInt(Edit_Nbr_Etat.Text);
  termine:=false;
  etq:while termine=false do
        begin
          for i:=1 to n do
            for j:=1 to n do
              SG2.Cells[j,i]:=SG1.Cells[j,i];

for i:=1to n do
begin
 for j:=1 to n do
 begin
  for k:=j+1 to n do
  begin
  if (SG1.Cells[j,i]=SG1.Cells[k,i])
        and(SG1.Cells[j,i]<>'-1') then
  begin
   SG2.Cells[j,i]:='1';
   SG2.Cells[k,i]:='1';
 end;
end;
end;
end;

m:=n;
for i:=1 to n do
begin
for j:=1 to n do
begin
v:=SG1.cells[j,i];
compt:=1;
  for k:=j+1 to n do
  begin
   if (v=SG1.cells[k,i])and(v<>'-1') then
   compt:=compt+1;
  end;
   if compt>=2 then
   begin
   m:=m+1;
   Fixer_Matrice(SG2,m);
   SG2.Cells[m,i]:=v;
 r:=i+m;
   if r<n*2 then   SG2.Cells[m,r]:=v
    else  SG2.Cells[m,i+2]:=v;
   for l:=1 to m do
    begin
     if SG2.cells[l,i]='1' then
     begin
      for p:=1 to m do
      begin
       if (SG2.cells[p,m]='') or (SG2.cells[p,m]='-1')or (SG2.cells[p,m]='1')then
       SG2.cells[p,m]:=SG2.cells[p,l];
      end;
     end;
    end;
   end;
  end;
end;
for i:= 1 to m do
begin
for j:=1 to m do
begin
if (SG2.cells[j,i]='1')or(SG2.cells[j,i]='') then
SG2.cells[j,i]:='-1';
end;
end;
n:=m;
for i:=1to m do
begin
 for j:=1 to m do
 begin
   compt:=1;

  for k:=j+1 to m do
  begin
   if (SG2.Cells[j,i]=SG2.Cells[k,i])and(SG2.Cells[j,i]<>'-1') then
    compt:=compt+1;
  end;
  if compt>=2 then
  begin
   n:=m;
   termine:=false;
   for l:=1 to n do
   begin
    for p:=1 to n do
    begin
     SG1.Cells[p,l]:=SG2.Cells[p,l];
   end;
   end;
  goto etq;
  end
  else termine:=true;
end;
end;
end;
     end;


procedure TFrm_Trait.BtnInitialClick(Sender: TObject);
begin
  Effacer_Matrice(SG1);
  Effacer_Matrice(SG2);  
  SG1.ColCount := 2;
  SG1.RowCount := 2;
  SG2.ColCount := 2;
  SG2.RowCount := 2;
  GB2.Caption := 'Matrice d''AEF';
  Edit_Nbr_Etat.Clear;
  CB_Choix.ItemIndex := -1;
end;

procedure TFrm_Trait.Automate_Complet;
var i,j,n,k:integer;
    tab1,tab2,tab3:array[1..10]of string;
begin
  n:=strtoint(Edit_Nbr_Etat.text);
  Fixer_Matrice(SG2,n+1);
  SG2.ColCount := n +2;
  SG2.RowCount := n +2;
  SG2.cells[n+1,0]:='SP';
  SG2.cells[0,n+1]:='SP';

  k:=1;
for i:= 1 to n do
 begin
   for j:= 1 to n do
     begin
      if SG1.Cells[j,i]<>'-1' then
       begin
        tab1[k]:=SG1.cells[j,i];
        inc(k);
       end;
     end;
 end;
tab1[k]:='-1';
k:=1;
while tab1[k]<>'-1' do
 begin
  if tab1[k]<>'100' then
   begin
    i:=k+1;
    while tab1[i]<>'-1' do
     begin
      if tab1[k]=tab1[i] then tab1[i]:='100';
      i:=i+1;
     end;
   end;
   k:=k+1;
 end;

k:=1;
while tab1[k]<>'-1' do
 begin
  if tab1[k]<>'100'then
   begin
    if  SG2.cells[n+1,n+1]='' then SG2.cells[n+1,n+1]:=tab1[k]
    else SG2.cells[n+1,n+1]:=SG2.cells[n+1,n+1]+'/'+tab1[k] ;
   end;
   inc(k);
 end;
//*****************************************************************
for i:= 1 to n do
 begin
   k:=1;
    for j:= 1 to n do
     begin
      if SG1.cells[j,i]<>'-1' then
       begin
        tab2[k]:=SG1.cells[j,i];
        inc(k);
       end;
     end;

   tab2[k]:='-1';
   k:=1;
   while tab2[k]<>'-1' do
    begin
     if tab2[k]<>'100' then
      begin
       j:=k+1;
       while tab2[j]<>'-1' do
        begin
         if tab2[k]=tab2[j] then tab2[j]:='100';
         j:=j+1;
        end;
      end;
      inc(k);
    end;

   j:=1;
   while tab1[j]<>'-1' do
    begin
      tab3[j]:=tab1[j];
      inc(j);
    end;
//************************************************
   tab3[j]:='-1';
   j:=1;
   while tab2[j]<>'-1' do
    begin
     k:=1;
     while tab1[k]<>'-1' do
      begin
       if tab2[j]=tab1[k] then tab3[k]:='100';
       inc(k);
      end;
     inc(j);
    end;
//*************************************************
   k:=1;
   while tab3[k]<>'-1' do
    begin
     if tab3[k]<>'100'  then
      begin
       if  sg2.Cells[n+1,i]=''then  sg2.Cells[n+1,i]:=tab3[k]
       else sg2.Cells[n+1,i]:=sg2.Cells[n+1,i]+'/'+tab3[k] ;
      end;
     inc(k);
    end;
 end;
//****************************************************************
for i:=1 to n do
 begin
   for j:=1 to n do
    begin
     SG2.cells[j,i]:=SG1.cells[j,i];
    end;
 end;

for j:= 1 to n do SG2.cells[j,n+1]:='-1';

for i:=1 to n+1 do
 begin
  if SG2.cells[n+1,i]='' then SG2.cells[n+1,i]:='-1';
 end;
end;

procedure TFrm_Trait.Lecture_Matrice (Source: String);
var
  Fichier : TIniFile;
  N, i, j: integer;
begin
  Fichier := TIniFile.Create(OD.Filename);
  try
    N := StrToInt(Fichier.ReadString('Taille','N','2'));
    Edit_Nbr_Etat.Text := IntToStr(N);
    Fixer_Matrice(SG1,N);
    for i:= 1 to N do
     for j:= 1 to N do
      SG1.Cells[j,i] := Fichier.ReadString('Ligne'+ IntToStr(i-1),'Tab['+IntToStr(i-1)+','+IntToStr(j-1)+']','0');
  finally
    Fichier.Free;
  end;
end;

procedure TFrm_Trait.Ecriture_Matrice (Destination: String);
var
  Fichier : TIniFile;
  N, i, j: integer;
begin
  N := StrToInt(Edit_Nbr_Etat.Text);
  Fichier := TIniFile.Create(Destination);
  try
    Fichier.WriteString('Taille','N',IntToStr(N));
    for i:= 1 to N do
      for j:= 1 to N do
        Fichier.WriteString('Ligne'+ IntToStr(i-1),'Tab['+IntToStr(i-1)+','+IntToStr(j-1)+']',SG1.Cells[j,i]);
  finally
    Fichier.Free;
  end;
end;

procedure TFrm_Trait.BitBtn2Click(Sender: TObject);
begin
  if OD.Execute then
    Lecture_Matrice(od.FileName);
end;

procedure TFrm_Trait.BitBtn3Click(Sender: TObject);
begin
  if SD.Execute then
    Ecriture_Matrice(SD.FileName);
end;

end.
