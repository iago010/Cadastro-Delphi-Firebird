unit view.receber;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, view.base.listas, Data.DB, Vcl.Grids,
  Vcl.DBGrids, Vcl.Imaging.pngimage, Vcl.ExtCtrls, Vcl.StdCtrls, Vcl.WinXCtrls,
  Vcl.WinXPanels, Vcl.Buttons, service.cadastro, Provider.constants,
  Datasnap.DBClient;

type
  TViewReceber = class(TViewBaseListas)
    DBG_Parcelas: TDBGrid;
    DSparcelas: TDataSource;
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  ViewReceber: TViewReceber;

implementation

{$R *.dfm}

procedure TViewReceber.FormShow(Sender: TObject);
begin
  inherited;
  GET_receber;
end;

end.
