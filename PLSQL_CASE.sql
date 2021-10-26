/* Sentencias PLSQL: CASE */

SET SERVEROUTPUT ON
DECLARE
    v_grado CHAR(1);
BEGIN
    v_grado:= 'V';
    CASE v_grado
        WHEN 'A' THEN DBMS_OUTPUT.PUT_LINE('Excelente.');
        WHEN 'B' THEN DBMS_OUTPUT.PUT_LINE('Muy bien.');
        WHEN 'C' THEN DBMS_OUTPUT.PUT_LINE('Bien.');
        WHEN 'D' THEN DBMS_OUTPUT.PUT_LINE('Justo.');
        WHEN 'F' THEN DBMS_OUTPUT.PUT_LINE('Mal.');
    ELSE DBMS_OUTPUT.PUT_LINE('No existe el grado '|| v_grado);
    END CASE;
END;

SET SERVEROUTPUT ON
DECLARE
    v_dia VARCHAR2(25);
    v_numero int;
BEGIN
    v_dia := '';
    v_numero := 10;
    CASE v_numero
        WHEN 1 THEN v_dia:='Lunes';
        WHEN 2 THEN v_dia:='Martes';
        WHEN 3 THEN v_dia:='Miércoles';
        WHEN 4 THEN v_dia:='Jueves';
        WHEN 5 THEN v_dia:='Viernes';
        WHEN 6 THEN v_dia:='Sábado';
        WHEN 7 THEN v_dia:='Domingo';
        ELSE v_dia:='El número ingresado no es válido';
    END CASE;
    DBMS_OUTPUT.PUT_LINE('El día es: '||v_dia);
    DBMS_OUTPUT.PUT_LINE('El valor ingresado es: '||v_numero);
END;