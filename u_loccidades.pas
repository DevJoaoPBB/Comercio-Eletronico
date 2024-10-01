unit U_LocCidades;

{$mode ObjFPC}{$H+}

interface

uses
  Windows, Classes, SysUtils, DB, dbf, Forms, Controls, Graphics, Dialogs, DBGrids,
  StdCtrls, ColorSpeedButton;

type

  { TLocCidades }

  TLocCidades = class(TForm)
    BtSair: TColorSpeedButton;
    DbCidadesCEP: TStringField;
    DbCidadesCODIGO: TLargeintField;
    DbCidadesIBGE: TStringField;
    DbCidadesNOME: TStringField;
    DbCidadesUF: TStringField;
    Dbg: TDBGrid;
    DsCidades: TDataSource;
    DbCidades: TDbf;
    EdtFiltro: TEdit;
    Label1: TLabel;
    procedure BtSairClick(Sender: TObject);
    procedure DbgDblClick(Sender: TObject);
    procedure DbgKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure DbgKeyPress(Sender: TObject; var Key: char);
    procedure EdtFiltroChange(Sender: TObject);
    procedure EdtFiltroKeyPress(Sender: TObject; var Key: char);
    procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure FormShow(Sender: TObject);
  private

  public
    _UF: String;
  end;

var
  LocCidades: TLocCidades;

implementation

{$R *.lfm}

{ TLocCidades }

procedure TLocCidades.DbgDblClick(Sender: TObject);
begin
  Close;
end;

procedure TLocCidades.DbgKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
    if (Shift = [ssCtrl]) and (Key = 46) then
  begin
    Key := 0;
  end;
end;

procedure TLocCidades.DbgKeyPress(Sender: TObject; var Key: char);
begin
    if Key = #13 then
  begin
    BtSair.Click;
  end;
end;

procedure TLocCidades.BtSairClick(Sender: TObject);
begin
  Close;
end;

procedure TLocCidades.EdtFiltroChange(Sender: TObject);
begin
   if EdtFiltro.Text = '' then
   begin
     DbCidades.Filtered := False;
   end
   else
   begin
     DbCidades.Filter := 'NOME=' + QuotedStr('*' + EdtFiltro.Text + '*');
     DbCidades.Filtered := True;
   end;
end;

procedure TLocCidades.EdtFiltroKeyPress(Sender: TObject; var Key: char);
begin
  if Key = #13 then
  begin
    Key := #0;
    Dbg.SetFocus;
  end;
end;

procedure TLocCidades.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if Key = VK_ESCAPE then
  begin
    Close;
  end;
end;

procedure TLocCidades.FormShow(Sender: TObject);
begin
    DbCidades.Active := False;
    DbCidades.Active :=True;
    EdtFiltro.SetFocus;
end;

end.

