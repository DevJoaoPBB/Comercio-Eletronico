program Agenda;

{$mode objfpc}{$H+}

uses
  {$IFDEF UNIX}
  cthreads,
  {$ENDIF}
  {$IFDEF HASAMIGA}
  athreads,
  {$ENDIF}
  Interfaces, // this includes the LCL widgetset
  Forms, Principal, DmDados, U_CadEmpresa, U_LocCidades, u_componentes
  { you can add units after this };

{$R *.res}

begin
  RequireDerivedFormResource:=True;
  Application.Scaled:=True;
  Application.Initialize;
  Application.CreateForm(TForm1, Form1);
  Application.CreateForm(TDataModule1, DataModule1);
  Application.CreateForm(TCadEmpresa, CadEmpresa);
  Application.CreateForm(TLocCidades, LocCidades);
  Application.CreateForm(TComponentes, Componentes);
  Application.Run;
end.

