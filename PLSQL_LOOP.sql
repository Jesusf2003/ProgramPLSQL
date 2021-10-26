/* Sentencias PLSQL: LOOP */

-- LOOP: BASIC
SET SERVEROUTPUT ON
DECLARE
    v_numero NUMBER := 0;
BEGIN
    loop
        DBMS_OUTPUT.PUT_LINE('Dentro del loop: x= '|| TO_CHAR(v_numero));
        v_numero := v_numero + 1;
        IF v_numero > 3 then
            exit;
        end if;
    end loop;
    DBMS_OUTPUT.put_line('Valor final: ' || TO_CHAR(v_numero));
END;

DECLARE
    s PLS_INTEGER := 0;
    i PLS_INTEGER := 0;
    j PLS_INTEGER;
BEGIN
    <<Fuera_loop>> -- Etiquetas de bloque
    LOOP
        i := i + 1;
        j := 0;
        <<Dentro_loop>>
        LOOP
            j := j + 1;
            s := s + i * j;
            EXIT Dentro_loop WHEN (j > 5);
            EXIT Fuera_loop when ((i * j) > 15);
        END LOOP Dentro_loop;
    END LOOP Fuera_loop;
    DBMS_OUTPUT.put_line('La suma de productos es igual a: '|| TO_CHAR(s));
END;

-- LOOP: FOR
DECLARE
BEGIN
    DBMS_OUTPUT.PUT('Límite menor < Límite mayor');
    DBMS_OUTPUT.put_line('');
    FOR i in 1..3 LOOP
        DBMS_OUTPUT.PUT_LINE(i);
    END LOOP;
    DBMS_OUTPUT.PUT('Límite menor = Límite mayor');
    DBMS_OUTPUT.put_line('');
    FOR i in 2..2 LOOP
        DBMS_OUTPUT.PUT_LINE(i);
    END LOOP;
    DBMS_OUTPUT.PUT('Límite menor > Límite mayor');
    DBMS_OUTPUT.put_line('');
    FOR i in 3..1 LOOP
        DBMS_OUTPUT.PUT_LINE(i);
    END LOOP;
END;

DECLARE
    numero NUMBER(2);
BEGIN
    for numero in 10..20 loop
        DBMS_OUTPUT.PUT_LINE('Valor del número: '|| numero || ' multiplicado por 2 es: '|| (numero * 2));
    end loop;
    DBMS_OUTPUT.put_line('El valor final es: '|| numero);
END;

-- LOOP: WHILE
SET SERVEROUTPUT ON
DECLARE
    numero number:= 0;
    resultado number;
BEGIN
    while numero <= 10 loop
        resultado := 3*resultado;
        DBMS_OUTPUT.put_line('3 * ' || numero || ' = ' || resultado);
        numero := numero + 1;
    end loop;
END;