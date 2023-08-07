unit service.conexao;

interface

uses
  System.SysUtils, System.Classes, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Error, FireDAC.UI.Intf, FireDAC.Phys.Intf, FireDAC.Stan.Def,
  FireDAC.Stan.Pool, FireDAC.Stan.Async, FireDAC.Phys, FireDAC.VCLUI.Wait,
  FireDAC.Phys.FBDef, FireDAC.Phys.IBBase, FireDAC.Phys.FB, FireDAC.Comp.UI,
  Data.DB, FireDAC.Comp.Client, System.IniFiles, FireDAC.Stan.Param,
  FireDAC.DatS, FireDAC.DApt.Intf, FireDAC.DApt, FireDAC.Comp.DataSet,
  Provider.constants;

type
  TServiceConexao = class(TDataModule)
    FDConnection1: TFDConnection;
    FDGUIxWaitCursor1: TFDGUIxWaitCursor;
    FDPhysFBDriverLink1: TFDPhysFBDriverLink;
    QRY_filial: TFDQuery;
    QRY_filialFIL_CODIGO: TIntegerField;
    QRY_filialFIL_RAZAO: TStringField;
    QRY_filialFIL_FANTASIA: TStringField;
    QRY_filialFIL_CNPJ: TStringField;
    QRY_filialFIL_TELEFONE: TStringField;
    procedure DataModuleCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  ServiceConexao: TServiceConexao;

implementation

{%CLASSGROUP 'Vcl.Controls.TControl'}

{$R *.dfm}

procedure TServiceConexao.DataModuleCreate(Sender: TObject);
var

 LiniFile: TIniFile;
 LDatabase: string;
 LUser_name: string;
 LPassword: string;
 LServidor: string;
 LPorta: integer;
 LCaminho: string;


begin

   try

     FDConnection1.Connected := false;

     LCaminho := ExtractFileDir(ParamStr(0)) + '\login.ini';
     // FDPhysFBDriverLink.VendorHome := ExtractFileSir(ParamStr(0)) + '\dlls';

     LiniFile := TIniFile.Create(LCaminho);


     LDatabase := LiniFile.ReadString('Conexao','Database', LDatabase);
     LServidor := LiniFile.ReadString('Conexao','Servidor', LServidor);
     LPorta := LiniFile.ReadInteger('Conexao','Porta', LPorta);

     LUser_Name := 'SYSDBA';
     LPassword := 'masterkey';

     FDConnection1.Params.Values['Database'] := LDatabase;
     FDConnection1.Params.Values['User_Name'] := LUser_Name;
     FDConnection1.Params.Values['Password'] := LPassword;
     FDConnection1.Params.Values['Server'] := LServidor;
     FDConnection1.Params.Values['Porta'] := LPorta.ToString;

     FDConnection1.Connected := True;

   finally

       FreeAndNil(LiniFile);;

   end;

   //carrego minha filial
   QRY_filial.Close;
   QRY_filial.Params[0].AsInteger := 1;
   QRY_filial.Open();

   iCOD_FILIAL := QRY_filialFIL_CODIGO.AsInteger;
   sRAZAO_FILIAL := QRY_filialFIL_RAZAO.AsString;

end;

end.
