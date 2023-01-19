CREATE FUNCTION prod_sum(x int, y int, OUT sum int, OUT prod int) AS $$
BEGIN
    sum := x + y;
    prod := x * y;
END
$$ LANGUAGE plpgsql;