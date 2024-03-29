unit global;

interface

uses Forms, Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, StdCtrls,
  DB, ADODB, Unit3;

type
typeSonuc=record
   id:Integer;
   text:string;
end;

function getnewid(sTable:string; sIdField:string):Integer;
function deletequery(spName:string; spParamValue:variant):typeSonuc;
procedure setlog(DataSet:TDataSet);

implementation

function getnewid(sTable:string; sIdField:string):Integer;
var
   qId:TAdoQuery;
begin
   qId:=TAdoQuery.Create(Application);
   qId.Connection:=frmGiris.AdoConnection1;
   qId.SQL.Text:='SELECT MAX('+sIdField+') FROM '+sTable;
   qId.Open;
   result:=qId.Fields[0].AsInteger+1;
   qId.Close;
   qId.Free;
end;

function deletequery(spName:string; spParamValue:variant):typeSonuc;
var
   qId:TAdoQuery;
begin
   qId:=TAdoQuery.Create(Application);
   qId.Connection:=frmGiris.AdoConnection1;
   qId.SQL.Text:='exec '+spName+' :prm';
   qId.Parameters.ParamByName('prm').value:=spParamValue;
   qId.Open;
   result.id:=qId.Fields[0].AsInteger;
   result.text:=qId.Fields[1].AsString;
   qId.Close;
   qId.Free;
end;

procedure setlog(DataSet:TDataSet);
begin
  if DataSet.State=dsInsert then
  begin
    DataSet.FieldByName('ins_user').Value:='emre';  //login.login_name
  end
  else
  begin
    DataSet.FieldByName('upd_user').Value:='Ak�n';
    DataSet.FieldByName('upd_date').Value:=now;
  end;
end;

end.
