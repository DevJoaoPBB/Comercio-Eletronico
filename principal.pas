unit Principal;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, SQLite3Conn, SQLDB, DB, dbf, Forms, Controls, Graphics,
  Dialogs, DBGrids, StdCtrls, Menus, BCRadialProgressBar, BCListBox,
  atshapelinebgra, BCCheckComboBox, BCFluentProgressRing, BCFluentSlider,
  BCGameGrid, BGRAThemeButton, ColorSpeedButton, BGRAResizeSpeedButton,
  dtthemedclock, dtthemedgauge, DTAnalogClock, BGRAKnob, BCButton,
  BCButtonFocus, BGRASpeedButton, U_CadEmpresa, u_componentes;

type

  { TForm1 }

  TForm1 = class(TForm)
    MainMenu1: TMainMenu;
    MenuItem1: TMenuItem;
    MenuItem2: TMenuItem;
    MenuItem3: TMenuItem;
    MenuItem4: TMenuItem;
    Separator1: TMenuItem;
    procedure MenuItem2Click(Sender: TObject);
    procedure MenuItem3Click(Sender: TObject);
    procedure MenuItem4Click(Sender: TObject);
  private

  public

  end;

var
  Form1: TForm1;

implementation

{$R *.lfm}

{ TForm1 }

procedure TForm1.MenuItem2Click(Sender: TObject);
begin
  CadEmpresa.ShowModal;
end;

procedure TForm1.MenuItem3Click(Sender: TObject);
begin
  Componentes.ShowModal;
end;

procedure TForm1.MenuItem4Click(Sender: TObject);
begin
  Application.Terminate;
end;

end.

