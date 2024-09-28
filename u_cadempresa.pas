unit U_CadEmpresa;

{$mode ObjFPC}{$H+}

interface

uses
  Classes, SysUtils, Forms, Controls, Graphics, Dialogs, ExtCtrls, StdCtrls,
  MaskEdit;

type

  { TCadEmpresa }

  TCadEmpresa = class(TForm)
    ComboBox1: TComboBox;
    Edit1: TEdit;
    Edit2: TEdit;
    Edit3: TEdit;
    Edit4: TEdit;
    Edit5: TEdit;
    Edit6: TEdit;
    GroupBox1: TGroupBox;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    MaskEdit1: TMaskEdit;
    Panel1: TPanel;
  private

  public

  end;

var
  CadEmpresa: TCadEmpresa;

implementation

{$R *.lfm}

end.

