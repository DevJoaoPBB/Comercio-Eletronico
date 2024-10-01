unit u_componentes;

{$mode ObjFPC}{$H+}

interface

uses
  Classes, SysUtils, Forms, Controls, Graphics, Dialogs, ColorSpeedButton;

type

  { TComponentes }

  TComponentes = class(TForm)
    ColorSpeedButton1: TColorSpeedButton;
    ColorSpeedButton2: TColorSpeedButton;
    ColorSpeedButton3: TColorSpeedButton;
    ColorSpeedButton4: TColorSpeedButton;
  private

  public

  end;

var
  Componentes: TComponentes;

implementation

{$R *.lfm}

end.

