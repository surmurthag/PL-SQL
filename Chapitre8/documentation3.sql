-- documentation3.sql
SELECT TRIGGER_NAME, TRIGGER_TYPE                                        
FROM USER_TRIGGERS;

SELECT TRIGGER_NAME, TRIGGER_TYPE, TRIGGER_BODY                                      
FROM USER_TRIGGERS
WHERE TRIGGER_NAME = 'PAS_DIM_SALAIRE';
