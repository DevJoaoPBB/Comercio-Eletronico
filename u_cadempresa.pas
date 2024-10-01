unit U_CadEmpresa;

{$mode ObjFPC}{$H+}

interface

uses
  Classes, SysUtils, Forms, Controls, Graphics, Dialogs, ExtCtrls, StdCtrls,
  MaskEdit, Buttons, ExtDlgs, BGRAColorTheme, BGRAThemeButton,
  BCFluentProgressRing, BCListBox, BGRAKnob, DTAnalogGauge, BCCheckComboBox,
  BGRACustomDrawn, BCMaterialDesignButton, BCMDButton, BCGradientButton,
  BCImageButton, BCButton, BCButtonFocus, BCMDButtonFocus, BCSVGButton,
  BGRAResizeSpeedButton, BGRASpeedButton, ColorSpeedButton, BGRATheme,
  BCFluentSlider, BCExpandPanels, BCLabel, BGRAThemeRadioButton,
  BGRAGraphicControl, BCRadialProgressBar, BCSVGViewer, BCMaterialSpinEdit,
  BCMaterialEdit, U_LocCidades;

type

  { TCadEmpresa }

  TCadEmpresa = class(TForm)
    BtCarregar: TSpeedButton;
    BtExcluirLogo: TSpeedButton;
    BtIncluir: TColorSpeedButton;
    BtExcluir: TColorSpeedButton;
    BtLocalizar: TColorSpeedButton;
    BtEditar: TColorSpeedButton;
    BtCancelar: TColorSpeedButton;
    BtSalvar: TColorSpeedButton;
    BtSair: TColorSpeedButton;
    EdtEmail: TEdit;
    EdtIE: TEdit;
    EdtNome: TEdit;
    EdtCodigo: TEdit;
    EdtRazao: TEdit;
    EdtEndereco: TEdit;
    EdtNumero: TEdit;
    EdtBairro: TEdit;
    EdtCnpj: TEdit;
    EdtCidade: TEdit;
    EdtUf: TEdit;
    EdtCodCidade: TEdit;
    EdtComplemento: TEdit;
    GroupBox1: TGroupBox;
    ImageList1: TImageList;
    Img: TImage;
    Label1: TLabel;
    Label11: TLabel;
    Label12: TLabel;
    Label13: TLabel;
    Label14: TLabel;
    Label15: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Label9: TLabel;
    EdtCep: TMaskEdit;
    EdtTelefone: TMaskEdit;
    EdtCelular: TMaskEdit;
    Op: TOpenPictureDialog;
    Panel1: TPanel;
    Panel2: TPanel;
    Panel3: TPanel;
    Panel4: TPanel;
    PnCarregar: TPanel;
    PnExcluir: TPanel;
    SpeedButton1: TSpeedButton;
    SpeedButton2: TSpeedButton;
    procedure BtCancelar1Click(Sender: TObject);
    procedure BtCancelarClick(Sender: TObject);
    procedure BtCarregarMouseEnter(Sender: TObject);
    procedure BtCarregarMouseLeave(Sender: TObject);
    procedure BtExcluirLogoClick(Sender: TObject);
    procedure BtExcluirLogoMouseEnter(Sender: TObject);
    procedure BtExcluirLogoMouseLeave(Sender: TObject);
    procedure BtIncluirClick(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure CbUfChange(Sender: TObject);
    procedure BtSairClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure GroupBox1Click(Sender: TObject);
    procedure PnNovoClick(Sender: TObject);
    procedure SpeedButton2Click(Sender: TObject);
  private
    procedure LimpaCampos;
    procedure HabilitaCampos(Valor: String);

  public

  end;

var
  CadEmpresa: TCadEmpresa;
  _Status : String;

implementation

{$R *.lfm}

{ TCadEmpresa }

procedure TCadEmpresa.CbUfChange(Sender: TObject);
begin

end;

procedure TCadEmpresa.BtSairClick(Sender: TObject);
begin
  Close;
end;

procedure TCadEmpresa.FormShow(Sender: TObject);
begin
  LimpaCampos;
  HabilitaCampos('C');
  _Status             := 'FECHAR';
end;

procedure TCadEmpresa.GroupBox1Click(Sender: TObject);
begin

end;

procedure TCadEmpresa.PnNovoClick(Sender: TObject);
begin
  end;

procedure TCadEmpresa.SpeedButton2Click(Sender: TObject);
begin
  LocCidades.ShowModal;
  EdtCidade.Text := LocCidades.DbCidades.FieldByName('CODIGO').AsString;
  EdtCidade.Text := LocCidades.DbCidades.FieldByName('NOME').AsString;
  EdtUF.Text     := LocCidades.DbCidades.FieldByName('UF').AsString;
  EdtCep.Text    := LocCidades.DbCidades.FieldByName('CEP').AsString;
end;

procedure TCadEmpresa.LimpaCampos;
begin
 EdtNome.Clear;
 EdtRazao.Clear;
 EdtEndereco.Clear;
 EdtNumero.Clear;
 EdtBairro.Clear;
 EdtCodCidade.Clear;
 EdtCidade.Clear;
 EdtUf.Clear;
 EdtCep.Clear;
 EdtComplemento.Clear;
 EdtCnpj.Clear;
 EdtIE.Clear;
 EdtTelefone.Clear;
 EdtCelular.Clear;
 EdtEmail.Clear;
 Img.Picture := nil;

end;

procedure TCadEmpresa.HabilitaCampos(Valor: String);
begin
  if Valor = 'I' then
  begin
  EdtCodigo.ReadOnly      := True;
  EdtRazao.ReadOnly       := False;
  EdtEndereco.ReadOnly    := False;
  EdtNumero.ReadOnly      := False;
  EdtBairro.ReadOnly      := False;
  EdtCodCidade.ReadOnly   := False;
  EdtCidade.ReadOnly      := False;
  EdtUf.ReadOnly          := False;
  EdtCep.ReadOnly         := False;
  EdtComplemento.ReadOnly := False;
  EdtCnpj.ReadOnly        := False;
  EdtIE.ReadOnly          := False;
  EdtTelefone.ReadOnly    := False;
  EdtCelular.ReadOnly     := False;
  EdtEmail.ReadOnly       := False;

  BtSalvar.Top            := BtIncluir.Top;
  BtCancelar.Top          := BtExcluir.Top;
  BtSalvar.Visible        := True;
  BtCancelar.Visible      := True;
  BtIncluir.Visible       := False;
  BtExcluir.Visible       := False;
  BtEditar.Visible        := False;
  BtLocalizar.Visible     := False;
  BtSair.Visible          := False;

  end;

  if Valor = 'C' then
  begin
  EdtCodigo.ReadOnly      := False;
  EdtRazao.ReadOnly       := True;
  EdtEndereco.ReadOnly    := True;
  EdtNumero.ReadOnly      := True;
  EdtBairro.ReadOnly      := True;
  EdtCodCidade.ReadOnly   := True;
  EdtCidade.ReadOnly      := True;
  EdtUf.ReadOnly          := True;
  EdtCep.ReadOnly         := True;
  EdtComplemento.ReadOnly := True;
  EdtCnpj.ReadOnly        := True;
  EdtIE.ReadOnly          := True;
  EdtTelefone.ReadOnly    := True;
  EdtCelular.ReadOnly     := True;
  EdtEmail.ReadOnly       := True;

  BtSalvar.Visible        := False;
  BtCancelar.Visible      := False;
  BtExcluir.Visible       := True;
  BtIncluir.Visible       := True;
  BtEditar.Visible        := True;
  BtLocalizar.Visible     := True;
  BtSair.Visible          := True;
  end;
end;

procedure TCadEmpresa.Button1Click(Sender: TObject);
begin
end;

procedure TCadEmpresa.BtCarregarMouseEnter(Sender: TObject);
begin
  PnCarregar.Color:= ClGreen;
end;

procedure TCadEmpresa.BtCancelar1Click(Sender: TObject);
begin
  Close;
end;

procedure TCadEmpresa.BtCancelarClick(Sender: TObject);
begin
    if (_Status = 'INSERIR') or (_Status = 'EDITAR') then
  begin
    LimpaCampos;
    HabilitaCampos('C');
    _Status := 'FECHAR';
    EdtCodigo.SetFocus
  end;
end;

procedure TCadEmpresa.BtCarregarMouseLeave(Sender: TObject);
begin
  PnCarregar.Color:= ClBlack;
end;

procedure TCadEmpresa.BtExcluirLogoClick(Sender: TObject);
begin

end;

procedure TCadEmpresa.BtExcluirLogoMouseEnter(Sender: TObject);
begin
  PnExcluir.Color:= Clred;
end;

procedure TCadEmpresa.BtExcluirLogoMouseLeave(Sender: TObject);
begin
  PnExcluir.Color:= ClBlack;
end;

procedure TCadEmpresa.BtIncluirClick(Sender: TObject);
begin
 if (_Status = 'FECHAR') or (_Status = 'NAVEGAR') then
 begin
   LimpaCampos;
   HabilitaCampos('I');
   _Status              := 'INSERIR';
   EdtNome.SetFocus;
 end;
end;

end.

