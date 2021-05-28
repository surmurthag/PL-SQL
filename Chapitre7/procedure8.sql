-- procedure8.sql
SET SERVEROUTPUT ON

DECLARE
   TYPE produit IS RECORD(
                             libelle     VARCHAR2(20),
                             quantite    INTEGER
                          );

   TYPE type_stock IS VARRAY(2000) OF produit;

   stock  type_stock := type_stock();  -- variable globale

   PROCEDURE ajout_produit(
                           stock_magasin IN OUT NOCOPY type_stock 
                          ) IS
   
   BEGIN
   
      stock_magasin(1).libelle := 'stylo';
   
   END;

BEGIN

  stock.EXTEND;
  stock(1).libelle := 'crayon';
  ajout_produit(stock);  
  DBMS_OUTPUT.PUT_LINE(stock(1).libelle);

END;
/
