SELECT 'ALTER SYSTEM SET SCRIPT_LANGUAGES=''' || system_value || ''';'
FROM  EXA_PARAMETERS
WHERE PARAMETER_NAME='SCRIPT_LANGUAGES';
