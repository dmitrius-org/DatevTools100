--SQL CreateDB_DatevTools100
if db_id('DatevTools100') is null create database DatevTools100 COLLATE Latin1_General_CI_AS;
go
--SQL DeleteObject
use DatevTools100;

if OBJECT_ID('pAmaExport') is not null  drop table pAmaExport;

if OBJECT_ID('pWareneingang') is not null drop table pWareneingang;

if OBJECT_ID('vBestellpos') is not null drop view vBestellpos;

if OBJECT_ID('vTax') is not null drop view vTax;

if OBJECT_ID('vRefundAmazonReport') is not null drop view vRefundAmazonReport;

if OBJECT_ID('ArtikelSave') is not null drop proc ArtikelSave;

if OBJECT_ID('AmaExportSave') is not null drop proc AmaExportSave;

if OBJECT_ID('EANASIN_Select') is not null drop proc EANASIN_Select;

if OBJECT_ID('WareneingangExport') is not null drop proc WareneingangExport;

if OBJECT_ID('WareneingangExportSave') is not null drop proc WareneingangExportSave;



go
--SQL GrantObject
if OBJECT_ID('vBestellpos') is not null grant all on [vBestellpos] to public;

if OBJECT_ID('vTax') is not null grant all on [vTax] to public;

if OBJECT_ID('vRefundAmazonReport') is not null grant all on [vRefundAmazonReport] to public;
go
--SQL pTable
--
if OBJECT_ID('pAmaExport') is not null
  drop table pAmaExport;
--
create table pAmaExport
(
 Spid           numeric(18, 2)
,Produktverwandtschaft nvarchar(255) 
,ASIN           nvarchar(255) 
,SKU            nvarchar(255)
,AmaName        nvarchar(255)
,EAN            nvarchar(255) 
,Size           nvarchar(255) 
,AmaColor       nvarchar(255) 
,Brand          nvarchar(255) 
,parentAsin     nvarchar(255) 
,ArtName        nvarchar(255) 
,ProduktColorID numeric(18, 0)
,ID             numeric(18, 0) identity
 FOREIGN KEY (ProduktColorID) REFERENCES tProduktColor (ProduktColorID) ON DELETE CASCADE
);
create index ao1 on pAmaExport(ASIN);
grant all on pAmaExport to public;


if OBJECT_ID('pWareneingang') is not null
  drop table pWareneingang;
Create table pWareneingang
    (
     Spid             numeric(18, 2)
    ,EAN	          varchar(255) 
    ,Name	          varchar(255) 
    ,Artikelnummer	  varchar(255) 
    ,ASIN	          varchar(255) 
    ,parentASIN	      varchar(255) 	   
    ,Menge		      int
    ,Lagerplatz       varchar(255)
    ,Preis            float
    );
create index ao1 on pWareneingang(ASIN);
grant all on pWareneingang to public;
go
--SQL tTable
-- таблица вариаций цветов
if OBJECT_ID('tProduktColor') is null --drop table tProduktColor
begin
    create table tProduktColor
    (
     ProduktColorID numeric(18, 0) identity PRIMARY KEY
    ,ColorName      nvarchar(255) 
    ,ColorLang      nvarchar(255) 
    ,ColorKurz      nvarchar(255) 
    );
    create unique index ao1 on tProduktColor(ProduktColorID);
    grant all on tProduktColor to public;
    insert tProduktColor select 'white',	'0003',	'03';
    insert tProduktColor select 'Angora',	'00PB',	'PB';
    
end;

if OBJECT_ID('tBrand') is null --drop table tBrand
begin
    create table tBrand
    (
     BrandID    numeric(18, 0) identity 
    ,Name       nvarchar(255) 
    );
    create unique index ao1 on tBrand(BrandID);
    grant all on tBrand to public;
    insert tBrand (Name) select 'Triumph';
    insert tBrand (Name) select 'Sloggi';
    insert tBrand (Name) select 'Beedees';
    insert tBrand (Name) select 'TriAction';

end;

if OBJECT_ID('tArtikel') is null --drop table tArtikel;
begin
    create table tArtikel
    (
     ArtikelID      numeric(18, 0) identity
    ,Produktverwandtschaft nvarchar(255) 
    ,ASIN           nvarchar(255) 
    ,SKU            nvarchar(255)
    ,AmaName        nvarchar(255)
    ,EAN            nvarchar(255) 
    ,Size           nvarchar(255) 
    ,AmaColor       nvarchar(255) 
    ,Brand          nvarchar(255) 
    ,parentAsin     nvarchar(255) 
    ,ArtName        nvarchar(255) 
    ,ProduktColorID numeric(18, 0)
     FOREIGN KEY (ProduktColorID) REFERENCES tProduktColor (ProduktColorID) ON DELETE CASCADE
    );
    create index ao1 on tArtikel(ASIN);
    grant all on tArtikel to public;
end

if OBJECT_ID('tWareneingang') is null --drop table tWareneingang;
begin
    Create table tWareneingang
    (
     EAN	        nvarchar(255) 
    ,Name	        nvarchar(255) 
    ,Artikelnummer  nvarchar(255)
    ,ASIN	        nvarchar(255) 
    ,parentASIN	    nvarchar(255)
    ,Menge		    int
    ,Lagerplatz     varchar(255)
    ,Preis          float
    ,InDate         datetime
    );
    create index ao1 on tWareneingang(ASIN);
    grant all on tWareneingang to public;
end

if OBJECT_ID('tParentAsin') is null --drop table tParentAsin;
begin
    Create table tParentAsin
    (
     ASIN	        nvarchar(255) 
    ,Preis          float
    );
    create index ao1 on tParentAsin(ASIN);
    grant all on tParentAsin to public;
end
go
--SQL Create_vBestellpos
create view vBestellpos as						
(

SELECT Bestellung.kBestellung, 
       amazon_bestellungpos.kAmazonBestellung, 
       amazon_bestellungpos.cOrderItemId, 
       bestellpos.tBestellung_kBestellung, 
       Bestellung.cWaehrung, 
       Bestellung.fFaktor, 
       Bestellung.cType, 
       Bestellung.tKunde_kKunde, 
       Bestellung.kZahlungsArt, 
       Bestellung.nKomplettAusgeliefert, 
       Bestellung.kSplitBestellung, 

       CASE 
         WHEN charindex('_', Bestellung.cInetBestellNr) > 0 
           THEN SUBSTRING(Bestellung.cInetBestellNr, 1, charindex('_', Bestellung.cInetBestellNr) - 1) 
           ELSE Bestellung.cInetBestellNr 
       END AS cInetBestellNr, 

       Bestellung.cBestellNr, 
       bestellpos.fMwSt, 
       bestellpos.nSort, bestellpos.kBestellPos, 
       bestellpos.cArtNr, 
       bestellpos.fVKPreis, 
       bestellpos.fVKNetto, 
       bestellpos.nAnzahl, 
       bestellpos.nType, 
       bestellpos.fVKNetto * bestellpos.nAnzahl AS gSummeNet, 
       bestellpos.fVKPreis * bestellpos.nAnzahl AS gSummeBr, 
       Invoice.InvoiceNumber, 
       FORMAT(Invoice.CreationDate, 'd', 'de-de') AS CreationDate, Adres.CountryISO, Adres.Country, 
       CASE WHEN charindex('_', amazon_bestellung.cOrderId) > 0 
       THEN SUBSTRING(amazon_bestellung.cOrderId, 1, charindex('_', amazon_bestellung.cOrderId) - 1) 
       ELSE amazon_bestellung.cOrderId 
       END AS cOrderId, 
       CASE WHEN Artikel.kSteuerklasse IS NULL 
       THEN 1 
       ELSE Artikel.kSteuerklasse 
       END AS kSteuerklasse, 
       Plattform.cName, 
       bestellpos.fVKPreis * bestellpos.nAnzahl - bestellpos.fVKNetto * bestellpos.nAnzahl AS Mwst
 FROM  eazybusiness.dbo.tBestellung AS Bestellung WITH (nolock) 
 INNER JOIN eazybusiness.dbo.tbestellpos AS bestellpos WITH (nolock) 
         ON bestellpos.tBestellung_kBestellung = Bestellung.kBestellung
 LEFT OUTER JOIN eazybusiness.Report.Invoice AS Invoice WITH (nolock) 
              ON Bestellung.tRechnung_kRechnung = Invoice.InternalId 
 LEFT OUTER JOIN eazybusiness.Report.InvoiceShipToAddress AS Adres WITH (nolock) 
              ON Invoice.InternalId = Adres.InvoiceInternalId 
 LEFT OUTER JOIN eazybusiness.dbo.pf_amazon_bestellungpos AS amazon_bestellungpos WITH (nolock) 
              ON bestellpos.kAmazonBestellungPos = amazon_bestellungpos.kAmazonBestellungPos 
 LEFT OUTER JOIN eazybusiness.dbo.pf_amazon_bestellung AS amazon_bestellung WITH (nolock) 
              ON amazon_bestellungpos.kAmazonBestellung = amazon_bestellung.kAmazonBestellung 
 LEFT OUTER JOIN eazybusiness.dbo.tArtikel AS Artikel WITH (nolock) 
              ON bestellpos.cArtNr = Artikel.cArtNr 
 LEFT OUTER JOIN eazybusiness.dbo.tPlattform AS Plattform WITH (nolock) 
              ON Bestellung.nPlatform = Plattform.nPlattform
)
						
go
--SQL Create_vTax
create view vTax as						
(															
SELECT  eazybusiness.dbo.tSteuerzoneLand.cISO, 
        eazybusiness.dbo.tSteuerschluessel.cName, 
        eazybusiness.dbo.tSteuerschluessel.cSteuerkonto, 
        eazybusiness.dbo.tSteuerschluessel.nSchluesselnummer, 															
        eazybusiness.dbo.tland.nEU,
        eazybusiness.dbo.tSteuersatz.fSteuersatz, 
        eazybusiness.dbo.tSteuersatz.kSteuerklasse															
FROM    eazybusiness.dbo.tSteuerzoneLand (nolock)
INNER JOIN eazybusiness.dbo.tSteuersatz (nolock)
        ON eazybusiness.dbo.tSteuerzoneLand.kSteuerzone = eazybusiness.dbo.tSteuersatz.kSteuerzone 
INNER JOIN eazybusiness.dbo.tSteuerschluessel (nolock)
        ON eazybusiness.dbo.tSteuersatz.kStSchl = eazybusiness.dbo.tSteuerschluessel.kSteuerschluessel 
INNER JOIN eazybusiness.dbo.tland (nolock)
        ON eazybusiness.dbo.tSteuerzoneLand.cISO = eazybusiness.dbo.tland.cISO		
)
go
--SQL RefundAmazonReport
create view vRefundAmazonReport as						
(
select
       bestellpos.cInetBestellNr
      ,bestellpos.cOrderId as OrderId --'Refund Amazon Report'
      ,AmaSettlement.TransactionType+'/'+AmaSettlement.AmountType+'/'+AmaSettlement.AmountDescription as Bezeichnung
      ,round(AmaSettlement.Amount, 2) Amount
      ,kMessageId
  FROM [DatevTools100].[dbo].[vBestellpos] as bestellpos
  LEFT JOIN (SELECT
                   kMessageId
                  ,OrderID
                  ,AmountType
                  ,AmountDescription
                  ,Amount
                  ,TransactionType
              FROM eazybusiness.dbo.pf_amazon_settlementpos
             where TransactionType = 'Refund'
               and AmountType in ('ItemPrice', 'Promotion')
               and AmountDescription in ('Principal', 'Tax', 'Shipping', 'ShippingTax', 'TaxDiscount', 'GiftWrap', 'Goodwill', 'ReturnShipping')
             Group by
                   kMessageId
                  ,OrderID
                  ,AmountType
                  ,AmountDescription
                  ,Amount
                  ,TransactionType
            ) as AmaSettlement
         on bestellpos.corderId = AmaSettlement.OrderID
 group by
       kMessageId
      ,bestellpos.cInetBestellNr
      ,bestellpos.cOrderId
      ,AmaSettlement.Amount
      ,AmaSettlement.TransactionType+'/'+AmaSettlement.AmountType+'/'+AmaSettlement.AmountDescription
having cOrderId is not null

)
go
--SQL TmpTable
-- таблицы для формы Lagerbestand

if OBJECT_ID('tempdb..##Lagerbestand') is not null
  drop table ##Lagerbestand;
--
create table ##Lagerbestand
(
 id             numeric(18, 0) identity
,rn             int
,Menge          int
,Artikelname    nvarchar(255)  
,cKommentar_1   varchar(255)  
,cKommentar_2   varchar(255)  
,Lagerplatz     varchar(255)  
,Artikelnummer  varchar(255)  
,EAN            varchar(255)  
,WG             int
,JtlBestand     float
,AmaBestand     int
,Color          int
);
create unique index ao1 on ##Lagerbestand(id);
create index ao2 on ##Lagerbestand(EAN);

if OBJECT_ID('tempdb..##Eingabe') is not null
  drop table ##Eingabe;
--
create table ##Eingabe
(
 rn             int
,Menge          int
--,cKommentar_1   varchar(256)
--,cKommentar_2   varchar(256)
,Lagerplatz     varchar(255) 
,Artikelnummer  varchar(255) 
,EAN            varchar(255) 
,Artikelname    nvarchar(255) 
,WG             int
,Color          int
);
create index ao1 on ##Eingabe(EAN);

go

--SQL EANEingabe_Drop
-- 
if OBJECT_ID('EANEingabe') is not null
    drop proc EANEingabe
go

--SQL EANEingabe_Create
-- Процедура заполнения ##Eingabe
create proc EANEingabe
              @EAN            varchar(256)
as
  declare @r int
  select @r = 0

  if not exists (select 1 
                   from ##Lagerbestand l (nolock)
                  where l.Ean = @EAN)
  begin
    set @r = 1 -- EAN отсутствует 
    goto exit_
  end

   Update e
      set e.Menge = isnull(e.Menge, 0) + 1
     from ##Lagerbestand l (nolock)
    inner join ##Eingabe e (updlock)
            on e.EAN = l.EAN
    where l.Ean = @EAN

  insert into ##Eingabe
        (
         rn
        ,EAN
        ,Artikelname
        ,Artikelnummer
        ,Menge
        )
  select l.rn
        ,l.EAN
        ,l.Artikelname
        ,l.Artikelnummer
        ,1
    from ##Lagerbestand l (nolock)
   where l.Ean = @EAN
     and not exists(select 1
                      from ##Eingabe e (nolock)
                     where e.EAN = l.EAN)
    
   exec EANEingabe_setColor @Ean = @EAN

 exit_:
 return @r

grant exec on EANEingabe to public
go
--SQL LagerbestandTmpTableClear
--
delete from ##Lagerbestand
delete from ##Eingabe
go
--SQL EANEingabe_setColor_Drop
--
if OBJECT_ID('EANEingabe_setColor') is not null
    drop proc EANEingabe_setColor

go
--SQL EANEingabe_setColor
--
create proc EANEingabe_setColor
              @EAN varchar(255)
as
    
   Update e
      set e.Color = case when e.Menge = l.Menge then 1 
                         when e.Menge > l.Menge then 2 
                         else 0 
                    end
     from ##Lagerbestand l (nolock)
     left join ##Eingabe e (updlock)
            on e.EAN   = l.EAN           
    where l.Ean = @EAN

   Update l
      set l.Color = case when e.Menge = l.Menge then 1
                         when e.Menge > l.Menge then 2 
                         else 0 
                    end
     from ##Lagerbestand l (updlock)
     left join ##Eingabe e (nolock)
            on e.EAN = l.EAN                      
    where l.Ean = @EAN

    --UPDATE _FD_EVENTS 
    --   SET Value = Value + 1 
    -- WHERE Name = 'MyEvent';

 exit_:
 return 0

grant exec on EANEingabe_setColor to public
go

--SQL ImportArticelCsvTableCreate
--Временная таблица используемая при импорте информации о артиклях
--форма AddArtikel_T
if OBJECT_ID('pArtikelImport') is not null
  drop table pArtikelImport;

create table pArtikelImport
(Produktverwandtschaft 	                 nvarchar(255)
,ASIN 	                                 nvarchar(255)
,SKU  	                                 nvarchar(255)
,[Product Name] 	                     nvarchar(255)
,[Art der externen Produktkennzeichnung] nvarchar(255)
,[Externe Produktkennzeichnung] 	     nvarchar(255)
,Variantendesign 	                     nvarchar(255)
,Size 	                                 nvarchar(255)
,[Color Map] 	                         nvarchar(255)
,Color 	                                 nvarchar(255)
,[Size Map] 	                         nvarchar(255)
,Zustand 	                             nvarchar(255)
,Menge 	                                 nvarchar(255)
,Preis 	                                 nvarchar(255)
,Aktionen 	                             nvarchar(255)
,relationship_type 	                     nvarchar(255)
,parent_sku 	                         nvarchar(255)
,feed_product_type 	                     nvarchar(255)
,v3_product_type 	                     nvarchar(255)
,[Produktname/Beschreibung] 	         nvarchar(255)
,item_type 	                             nvarchar(255)
,recommended_browse_nodes 	             nvarchar(255)
,manufacturer 	                         nvarchar(255)
,brand_name 	                         nvarchar(255)
,department_name                         nvarchar(255)
)
go
--SQL AmaExportSave
--
create proc AmaExportSave
as
declare @r int
select @r = 0

delete pAmaExport from pAmaExport (rowlock) where spid = @@spid
insert pAmaExport
      (
       Spid
      ,Produktverwandtschaft
      ,ASIN
      ,SKU
      ,AmaName
      ,EAN
      ,Size
      ,AmaColor
      ,Brand
      ,parentAsin
      ,ArtName
      ,ProduktColorID
      )
select @@spid
      ,t.Produktverwandtschaft
      ,t.ASIN
      ,case when isnull(t.SKU, '') = ''
         then t.ASIN 
         else t.SKU
       end
      ,t.[Product Name]
      --,t.[Art der externen Produktkennzeichnung]
      ,t.[Externe Produktkennzeichnung] 
      ,t.Size
      ,t.Color
      ,t.item_type
      ,(select top 1 p.ASIN from pArtikelImport p (nolock) where p.Produktverwandtschaft = 'parent' /*and t.Produktverwandtschaft <> 'parent'*/)
      ,coalesce(a.ArtName, null)
      ,coalesce(a.ProduktColorID, null)
  from pArtikelImport t (nolock)
  left join tArtikel a (nolock)
         on a.ASIN = t.ASIN
 order by t.Produktverwandtschaft desc

 exit_:
 return @r

grant exec on AmaExportSave to public
go

--SQL ArtikelSave
-- процедура сохранения новых артиклей в постоянную таблицу

create proc ArtikelSave
as
  declare @r int
  select @r = 0

insert tArtikel with (rowlock)
      (
       Produktverwandtschaft
      ,ASIN
      ,SKU
      ,AmaName
      ,EAN
      ,Size
      ,AmaColor
      ,Brand
      ,parentAsin
      ,ArtName
      ,ProduktColorID
      )
Select p.Produktverwandtschaft
      ,p.ASIN
      ,p.SKU
      ,p.AmaName
      ,p.EAN
      ,p.Size
      ,p.AmaColor
      ,p.Brand
      ,p.parentAsin
      ,p.ArtName
      ,p.ProduktColorID
  from pAmaExport p (nolock)
 where p.Spid = @@SPid
   and not exists (select 1
                     from tArtikel t (nolock)
                    where t.ASIN = p.ASIN)


 insert tParentAsin with (rowlock)
       (ASIN, Preis)
select distinct p.ASIN, 0 
  from pAmaExport p (nolock)
 where p.Spid = @@SPid
   and p.Produktverwandtschaft='parent'
   and not exists (select 1
                     from tParentAsin t (nolock)
                    where t.ASIN = p.ASIN)

 exit_:
 return @r

grant exec on ArtikelSave to public
go
--SQL EANASIN_Select
-- drop proc EANASIN_Select
create proc EANASIN_Select
              @Object varchar(255)
as
  declare @r int
  select @r = 0

insert pWareneingang with (rowlock)
      (
       Spid
      ,EAN
      ,Name
      ,Artikelnummer
      ,ASIN
      ,parentASIN
      ,Menge
      ,Preis
      )
Select @@SPID
      ,t.EAN
      ,isnull(t.Brand, '') + isnull(t.ArtName, '') + '('+ t.Size + ' ' + isnull(pc.ColorName, '') + ' ' + isnull(pc.ColorLang, '') + isnull(pc.ColorKurz, '') + ')'
      ,t.SKU
      ,t.ASIN
      --,case when t.Produktverwandtschaft='parent' 
      --   then t.ASIN
      --   else t.parentAsin
      -- end
      ,t.parentAsin
      ,1
      ,coalesce(pa.Preis , 0)
  from tArtikel t (nolock)
  left join tProduktColor pc (nolock)
         on pc.ProduktColorID = t.ProduktColorID
  left join tParentAsin pa (nolock)
         on pa.ASIN = t.parentAsin
 where (t.ASIN = @Object or t.EAN  = @Object)
   and not exists (select 1
                     from pWareneingang pp (nolock)
                    where pp.Spid = @@SPID
                      and pp.ASIN = t.ASIN)
  select @r = @@ROWCOUNT
  
  if @r = 0
  begin
      update p
         set p.Menge = p.Menge + 1
        from pWareneingang p (rowlock)
       inner join tArtikel a (nolock)
               on a.ASIN = p.ASIN
              and (a.ASIN = @Object or a.EAN  = @Object)
       where p.Spid = @@spid
       select @r = @@ROWCOUNT
  end

 

 exit_:
 return @r

grant exec on EANASIN_Select to public
go
--SQL WareneingangExport
--
create proc WareneingangExport
               @Lagerplatz varchar(255)
as
declare @r int
select @r = 0

Update pWareneingang
   set Lagerplatz = @Lagerplatz
  from pWareneingang with (rowlock)
 where spid = @@spid

select
       EAN as 'EAN/Barcode'
      ,Name as Artikelname
      ,Artikelnummer
      ,ASIN
      ,parentASIN
      ,Menge
      ,Lagerplatz as 'txt.Lagerplatz'
      ,Preis
  from pWareneingang with (nolock)
 where spid = @@spid

exit_:
return @r

grant exec on WareneingangExport to public
go
--SQL WareneingangExportSave
--
create proc WareneingangExportSave
as
declare @r int
select @r = 0

insert tWareneingang
(      EAN
      ,Name
      ,Artikelnummer
      ,ASIN
      ,parentASIN
      ,Menge
      ,Lagerplatz
      ,Preis
      ,InDate
)
select
       EAN 
      ,Name 
      ,Artikelnummer
      ,ASIN
      ,parentASIN
      ,Menge
      ,Lagerplatz
      ,Preis
      ,GetDate()
  from pWareneingang with (nolock)
 where spid = @@spid

exit_:
return @r

grant exec on WareneingangExportSave to public
go

