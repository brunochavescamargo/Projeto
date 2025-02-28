unit untCadastro;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DbxSqlite, Data.DB, Data.SqlExpr,
  Data.FMTBcd, System.Rtti, System.Bindings.Outputs, Vcl.Bind.Editors,
  Data.Bind.EngExt, Vcl.Bind.DBEngExt, Data.Bind.Components, Data.Bind.DBScope,
  Vcl.ComCtrls, Vcl.Grids, Vcl.DBGrids, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Error, FireDAC.UI.Intf, FireDAC.Phys.Intf, FireDAC.Stan.Def,
  FireDAC.Stan.Pool, FireDAC.Stan.Async, FireDAC.Phys, FireDAC.Phys.SQLite,
  FireDAC.Phys.SQLiteDef, FireDAC.Stan.ExprFuncs, FireDAC.VCLUI.Wait,
  FireDAC.Stan.Param, FireDAC.DatS, FireDAC.DApt.Intf, FireDAC.DApt,
  FireDAC.Comp.DataSet, FireDAC.Comp.Client, Vcl.ExtCtrls, Vcl.DBCtrls,
  Vcl.StdCtrls;

type
  TForm1 = class(TForm)
    FDConnection1: TFDConnection;
    FDTable1: TFDTable;
    DataSource1: TDataSource;
    edtcod: TEdit;
    edtdesc: TEdit;
    edtpreco: TEdit;
    Label2: TLabel;
    Label3: TLabel;
    Label1: TLabel;
    Button1: TButton;
    procedure Button1Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    tipocadastro:String;
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

uses untPrincipal;

procedure TForm1.Button1Click(Sender: TObject);
begin
  if tipocadastro = 'I' then
  begin
     FDTable1.Close;
     FDTable1.SQL.Clear;
     FDTable1.SQL.Add('INSERT INTO PRODUTOS  VALUES('+
          QuotedStr(edtcod.Text)+ ',' +
          QuotedStr(edtdesc.Text)+ ',' +
          QuotedStr(edtpreco.Text)+ ')' );
     FDTable1.ExecSQL(true);
     ShowMessage('Cadastrado com Sucesso ');
     FrmCadastro.FDTable1.Refresh;
  end;


 if tipocadastro = 'A' then
  begin
     FDTable1.Close;
     FDTable1.SQL.Clear;
     FDTable1.SQL.Add('Update PRODUTOS SET codigo = "'+edtcod.Text+'" , descricao = "'+edtdesc.Text+'", preco = "'+edtpreco.Text+'" where CODIGO = "'+edtcod.Text+'" ');
     FDTable1.ExecSQL(true);
     ShowMessage('Alterado com Sucesso ');
     FrmCadastro.FDTable1.Refresh;
  end;

end;

procedure TForm1.FormCreate(Sender: TObject);
begin
  if tipocadastro = 'A' then
  begin
    edtcod.Text :=   FrmCadastro.vcodigo;
    edtdesc.Text :=  FrmCadastro.vdescricao;
    edtpreco.Text := FrmCadastro.vpreco;
  end;
end;

procedure TForm1.FormShow(Sender: TObject);
begin
    if tipocadastro = 'A' then
  begin
    edtcod.Text :=   FrmCadastro.vcodigo;
    edtdesc.Text :=  FrmCadastro.vdescricao;
    edtpreco.Text := FrmCadastro.vpreco;
  end;
end;

end.
