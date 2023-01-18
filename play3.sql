CREATE FUNCTION hello_world1() RETURNS integer AS $$
DECLARE
    quantity integer := 45;
BEGIN
    RAISE NOTICE 'Quantity here is %', quantity;
    RETURN quantity;
END
$$ LANGUAGE plpgsql;