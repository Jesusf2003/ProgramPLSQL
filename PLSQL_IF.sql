/* Sentencias PLSQL: IF*/

-- IF - THEN - ELSE
SET SERVEROUTPUT ON
DECLARE
    nUno number(2):=50;
    nDos number(2):=20;
BEGIN
    if nUno > nDos then
        dbms_output.put_line(nUno ||' es mayor que ' || nDos);
    else
        DBMS_OUTPUT.PUT_LINE(nDos || ' es mayor que ' || nUno);
    end if;
END;

-- IF - ELSEIF anidados
SET SERVEROUTPUT ON
DECLARE
    numero number(3):=100;
BEGIN
    if (numero = 10) THEN
        dbms_output.put_line('El valor del número es 10');
    elsif (numero = 20) then
        dbms_output.put_line('El valor del número es 20');
    elsif (numero = 30) then
        dbms_output.put_line('El valor del número es 30');
    else
        DBMS_OUTPUT.PUT_LINE('Ninguno de los valores ha sido encontrado');
    end if;
        DBMS_OUTPUT.put_line('El valor exacto de la variables es: ' || numero);
END;

-- IF - THEN - ELSEIF anidados
SET SERVEROUTPUT ON
DECLARE
    v_rol CHAR(1):='A';
BEGIN
    IF v_rol = 'C' THEN
        DBMS_OUTPUT.put_line('Su rol es de cliente');
    ELSIF v_rol = 'V' THEN
        dbms_output.put_line('Su rol es de vendedor');
    elsif v_rol = 'A' then
        DBMS_OUTPUT.PUT_LINE('Su rol es de administrador');
    ELSE
        DBMS_OUTPUT.PUT_LINE('La letra ingresada no es válida');
    end if;
    DBMS_OUTPUT.PUT_LINE('La letra ingresada es: '|| v_rol);
END;

-- Utilizando IF con la tabla employees de la base de datos hr
-- Listando los registros de la tabla empleados.
SELECT * FROM employees;

SET SERVEROUTPUT ON
DECLARE
    p_sales PLS_INTEGER := 10100;
    p_quota PLS_INTEGER := 10000 ; --cambiar por 9000 para evaluar
    p_emp_id NUMBER := 120;
    v_bonus NUMBER := 0;
    v_updated VARCHAR2(3) := 'no';
BEGIN
    IF p_sales > (p_quota + 200) THEN
        v_bonus := (p_sales - p_quota)/4;
        
        UPDATE employees
        SET salary = salary + v_bonus
        WHERE employee_id = p_emp_id;
        
        v_updated := 'Yes';
    END IF;
    DBMS_OUTPUT.PUT_LINE ('Table updated? ' || v_updated || ', ' ||'bonus = ' || v_bonus || '.');
END;
/