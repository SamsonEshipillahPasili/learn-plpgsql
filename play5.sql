CREATE FUNCTION hello_world3() RETURNS text AS $$
<<outerblock>>
DECLARE
    greeting text := 'hey outer';
BEGIN
    DECLARE
        greeting text := 'hey inner';
    BEGIN
        RAISE NOTICE 'Inner greeting: %', greeting;
        RAISE NOTICE 'Outer greeting: %', outerblock.greeting;
    END;

    RAISE NOTICE 'Outer greeting: %', greeting;
    RETURN greeting;
END
$$ LANGUAGE plpgsql;