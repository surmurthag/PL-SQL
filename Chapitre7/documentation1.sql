-- documentation1.sql 
SELECT OBJECT_NAME, OBJECT_TYPE
FROM USER_OBJECTS 
WHERE OBJECT_TYPE IN('FUNCTION', 'PROCEDURE')
ORDER BY OBJECT_NAME;
