CREATE FUNCTION hello_world2() RETURNS text AS $$
DECLARE
    greeting text := 'Hello World';
BEGIN
    RAISE NOTICE 'Greeting: %', greeting;
    RETURN greeting;
END
$$ LANGUAGE plpgsql;