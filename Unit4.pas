unit Unit4;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs,Unit3, ExtCtrls, DB, ADODB, StdCtrls, Mask, DBCtrls, ComCtrls, Buttons;

type
  TFrmSiparisMaster = class(TForm)
    Panel1: TPanel;
    Panel2: TPanel;
    ADOQMaster: TADOQuery;
    DataSource1: TDataSource;
    ADOQDetail: TADOQuery;
    DataSource2: TDataSource;
    ADOQMasterid: TAutoIncField;
    ADOQMastermus_id: TIntegerField;
    ADOQMastertarih: TDateTimeField;
    ADOQMastertutar: TBCDField;
    DateTarih: TDateTimePicker;
    DBEdit2: TDBEdit;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    BitBtn1: TBitBtn;
    DBEdit1: TDBEdit;
    procedure ADOQMasterAfterInsert(DataSet: TDataSet);
    procedure FormShow(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);

  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmSiparisMaster: TFrmSiparisMaster;
   procedure CreateSiparisMasterForm;
implementation

 procedure CreateSiparisMasterForm;
begin
  with TFrmSiparisMaster.Create(Application) do
  begin
    caption:=name;
    show;
  end;
end;
{$R *.dfm}

procedure TFrmSiparisMaster.ADOQMasterAfterInsert(DataSet: TDataSet);
var ADO1:TADOQuery;
mus_id:Integer ;
begin
  ADO1:=TADOQuery.Create(self);
  ADO1.Connection:=ADOQMaster.Connection;
  ADO1.SQL.Text:='select max(id)from siparis_master' ;
  ADO1.Open;
  mus_id:=ADO1.Fields[0].Value;
  ADO1.Close;
  ADO1.Free;  //bellekte kayýt tutmuyor siliyor

  ADOQMastermus_id.Value:=mus_id+1;




end;

procedure TFrmSiparisMaster.BitBtn1Click(Sender: TObject);
begin
  ADOQMaster.Post;
  showmessage('Kayýt Eklenmistir');
end;

procedure TFrmSiparisMaster.FormShow(Sender: TObject);
begin
  ADOQMaster.Open;
  ADOQMaster.Insert;
end;

end.
