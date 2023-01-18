CREATE FUNCTION greet() RETURNS timestamp with time zone AS $$
DECLARE
    greeting varchar := 'samson';
    step CONSTANT integer := 5;
    counter_val integer := step + 20;
    curr_time timestamp with time zone := now();
BEGIN
    RAISE NOTICE 'Greeting: %', greeting;
    RAISE NOTICE 'Counter step: %', step;
    RAISE NOTICE 'Current counter value: %', counter_val;
    RAISE NOTICE 'Current time: %', curr_time;

    RETURN curr_time;
END
$$ LANGUAGE plpgsql;