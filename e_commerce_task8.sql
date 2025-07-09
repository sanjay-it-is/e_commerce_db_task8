--Create a Stored Procedure to Update Product Stock
CREATE OR REPLACE PROCEDURE update_product_stock(
    p_product_id INT,           -- Parameter for the product ID
    p_quantity_change INT       -- Parameter for the change in quantity (e.g., -5 for sale, +10 for restock)
)
LANGUAGE plpgsql               -- Specifies the procedural language for PostgreSQL
AS $$
DECLARE
    current_stock INT;         -- Variable to hold the product's current stock
BEGIN
    -- Update the stock_quantity in the Products table
    UPDATE Products
    SET stock_quantity = stock_quantity + p_quantity_change
    WHERE product_id = p_product_id
    RETURNING stock_quantity INTO current_stock; -- Get the updated stock value

    -- Check if the product was found and updated
    IF NOT FOUND THEN
        RAISE NOTICE 'Product ID % not found. No stock update performed.', p_product_id;
    -- Check for low stock alert after a reduction
    ELSIF current_stock < 10 AND p_quantity_change < 0 THEN
        RAISE NOTICE 'ALERT: Product ID % (current stock: %) is running low!', p_product_id, current_stock;
    -- Prevent stock from going below zero
    ELSIF current_stock < 0 THEN
        RAISE EXCEPTION 'Error: Stock quantity for product ID % cannot go below zero. Attempted stock: %', p_product_id, current_stock;
    END IF;
END;
$$;


--Create a Function to Get Customer's Total Spending.
CREATE OR REPLACE FUNCTION get_customer_total_spending(
    customer_id_param INT         -- Parameter for the customer ID
)
RETURNS NUMERIC(10, 2)            -- Specifies the return data type (numeric with 2 decimal places)
LANGUAGE plpgsql                  -- Specifies the procedural language for PostgreSQL
AS $$
DECLARE
    total_spent NUMERIC(10, 2);   -- Variable to hold the calculated total spending
BEGIN
    -- Calculate the sum of total_amount for the given customer_id
    -- COALESCE handles cases where SUM returns NULL (customer has no orders), replacing it with 0
    SELECT COALESCE(SUM(total_amount), 0)
    INTO total_spent
    FROM Orders
    WHERE customer_id = customer_id_param;

    RETURN total_spent; -- Return the calculated total spending
END;
$$;