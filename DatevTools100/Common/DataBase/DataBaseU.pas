unit DataBaseU;

interface

Uses FireDAC.Comp.Client;

    procedure CreateTmpTable(ADConnection: TFDConnection);
    /// <summary>
    ///  CreateDataBase - Создание бд и объектов
    /// </summary>
    procedure CreateDataBase(ADConnection: TFDConnection);

implementation

uses SqlListU;

procedure CreateTmpTable(ADConnection: TFDConnection);
var Query: TFDQuery;
begin
  Query:= TFDQuery.Create(nil) ;
  Query.Connection :=ADConnection;
  Query.ExecSQL(SqlList['TmpTable']);
  Query.Free;
end;


procedure CreateDataBase(ADConnection: TFDConnection);  var Query: TFDQuery;
begin
    Query:= TFDQuery.Create(nil) ;
    Query.Connection :=ADConnection;

    // база данных
    Query.ExecSQL(SqlList['CreateDB_DatevTools100']);

    Query.ExecSQL(SqlList['DeleteObject']);

    // таблицы
    Query.ExecSQL(SqlList['tTable']);
    Query.ExecSQL(SqlList['pTable']);
    Query.ExecSQL(SqlList['ImportArticelCsvTableCreate']);

    // временные таблицы
    Query.ExecSQL(SqlList['TmpTable']);

    // процедуры
    Query.ExecSQL(SqlList['Create_vBestellpos']);
    Query.ExecSQL(SqlList['Create_vTax']);
    Query.ExecSQL(SqlList['RefundAmazonReport']);

    Query.ExecSQL(SqlList['EANEingabe_Drop']);
    Query.ExecSQL(SqlList['EANEingabe_Create']);

    Query.ExecSQL(SqlList['EANEingabe_setColor_Drop']);
    Query.ExecSQL(SqlList['EANEingabe_setColor']);

    Query.ExecSQL(SqlList['ArtikelSave']);
    Query.ExecSQL(SqlList['AmaExportSave']);
    Query.ExecSQL(SqlList['EANASIN_Select']);

    Query.ExecSQL(SqlList['WareneingangExport']);
    Query.ExecSQL(SqlList['WareneingangExportSave']);


    // права на объекты
    Query.ExecSQL(SqlList['GrantObject']);



    Query.Free;
end;

end.
