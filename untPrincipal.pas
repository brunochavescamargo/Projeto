unit untPrincipal;

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
  TFrmCadastro = class(TForm)
    FDConnection1: TFDConnection;
    FDTable1: TFDTable;
    DBGrid1: TDBGrid;
    DataSource1: TDataSource;
    DBNavigator1: TDBNavigator;
    Button1: TButton;
    Button2: TButton;
    FDTable1codigo: TIntegerField;
    FDTable1descricao: TWideMemoField;
    FDTable1preco: TFloatField;
    btexcluir: TButton;
    FDTable2: TFDTable;
    IntegerField1: TIntegerField;
    WideMemoField1: TWideMemoField;
    FloatField1: TFloatField;
    DataSource2: TDataSource;
    procedure Button1Click(Sender: TObject);
    procedure btexcluirClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    vcodigo:String;
    vdescricao:String;
    vpreco:String;
  end;

var
  FrmCadastro: TFrmCadastro;

implementation

{$R *.dfm}

uses untCadastro;

procedure TFrmCadastro.btexcluirClick(Sender: TObject);
begin
     FDTable2.Close;
     FDTable2.SQL.Clear;
     FDTable2.SQL.Add('delete from   PRODUTOS  where codigo = ' + QuotedStr(FDTable1codigo.Text)   );
     FDTable2.ExecSQL(true);
     ShowMessage('Excluido com Sucesso ');
     FrmCadastro.FDTable1.Refresh;
end;

procedure TFrmCadastro.Button1Click(Sender: TObject);
begin
  vcodigo := FDTable1codigo.Text;
  vdescricao := FDTable1descricao.Text;
  vpreco := FDTable1preco.Text;
  Form1.tipocadastro := 'A';
  Form1.show;
end;

end.
