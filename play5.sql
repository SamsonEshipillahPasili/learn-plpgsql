CREATE FUNCTION hello_world3() RETURNS text AS $$
<<outer>>
DECLARE
    greeting text := 'hey outer';
BEGIN
    <<inner>>
    DECLARE
        greeting text := 'hey inner';
    BEGIN
        
    END;
END
$$ LANGUAGE plpgsql;