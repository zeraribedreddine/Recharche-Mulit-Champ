unit Unit1;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls, Vcl.StdCtrls,
  Vcl.WinXCtrls, Data.DB, Vcl.Grids, Vcl.DBGrids, FireDAC.Stan.Intf,
  FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS,
  FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt,
  FireDAC.UI.Intf, FireDAC.Stan.Def, FireDAC.Stan.Pool, FireDAC.Phys,
  FireDAC.Phys.MSAcc, FireDAC.Phys.MSAccDef, FireDAC.VCLUI.Wait,
  FireDAC.Comp.Client, FireDAC.Comp.DataSet;

type
  TForm1 = class(TForm)
    Panel1: TPanel;
    GroupBox1: TGroupBox;
    RadioB_nom: TRadioButton;
    RadioB_date: TRadioButton;
    RadioB_willaya: TRadioButton;
    SearchBox1: TSearchBox;
    DBGrid1: TDBGrid;
    RadioB_num: TRadioButton;
    tbl_test: TFDTable;
    MyConnection: TFDConnection;
    ds_tbl_test: TDataSource;
    tbl_testid: TFDAutoIncField;
    tbl_testnom: TWideStringField;
    tbl_testdate: TSQLTimeStampField;
    tbl_testwillaya: TWideStringField;
    procedure SearchBox1Change(Sender: TObject);
    procedure filterr(Dataset: TDataSet; const FieldName, SearchTerm: string);
    procedure RadioB_numClick(Sender: TObject);

  private
    { Déclarations privées }
  public
    { Déclarations publiques }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}




procedure TForm1.filterr(Dataset: TDataSet; const FieldName,
  SearchTerm: string);
 begin
  Assert(Assigned(DataSet), 'No dataset is assigned');

  if SearchTerm = '' then
    DataSet.Filtered := False
  else
  begin
    DataSet.Filter := FieldName + ' LIKE ' + QuotedStr('%' + SearchTerm + '%');
    DataSet.Filtered := True;
  end;
end;

procedure TForm1.RadioB_numClick(Sender: TObject);
var rep : string ;
begin
   rep := inputbox('Recherche'  , 'entré le numéro :' , '' );
   rep := uppercase(rep);

     if rep <>  '' then
       begin
        if  tbl_test.Locate('id' , rep , [locaseInsensitive])= false then showmessage ('Le code : ' +rep+' est Invalid ')  ;
        RadioB_num.Checked := False ;
       end;

end ;



procedure TForm1.SearchBox1Change(Sender: TObject);
begin
   if RadioB_nom.Checked = True then
   begin
     filterr(tbl_test, 'nom', SearchBox1.Text);
   end else

    if RadioB_date.Checked = True then
   begin
     filterr(tbl_test, 'date', SearchBox1.Text);
   end else

    if RadioB_willaya.Checked = True then
   begin
     filterr(tbl_test, 'willaya', SearchBox1.Text);
   end;
end;
end.
