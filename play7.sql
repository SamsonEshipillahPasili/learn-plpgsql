CREATE FUNCTION sales_tax(subtotal real) RETURNS real AS $$
BEGIN
    RETURN subtotal * 0.06;
END
$$ LANGUAGE plpgsql;


CREATE FUNCTION sales_tax2(real) RETURNS real AS $$
    DECLARE
        subtotal ALIAS FOR $1;
        rate CONSTANT real := 0.06;
    BEGIN
        RETURN subtotal * rate;
    END
$$ LANGUAGE plpgsql; 


CREATE FUNCTION sales_tax3(subtotal real, OUT tax real) as $$
BEGIN
   tax := subtotal * 0.06;
END
$$ LANGUAGE plpgsql;