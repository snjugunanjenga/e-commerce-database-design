-- 2.1 Insert Size Categories
-- For products like clothing and shoes, we’ll define two size categories:


INSERT INTO size_category (category_id, category_name) VALUES
(1, 'Clothing'),
(2, 'Shoes');

-- 2.2 Insert Size Options
-- Add sizes for clothing (S, M, L, XL) and shoes (8, 9, 10, 11):


INSERT INTO size_option (size_id, size_value, size_category_id) VALUES
(1, 'S', 1),
(2, 'M', 1),
(3, 'L', 1),
(4, 'XL', 1),
(5, '8', 2),
(6, '9', 2),
(7, '10', 2),
(8, '11', 2);

-- 2.3 Insert Colors
-- Add a set of common colors:


INSERT INTO color (color_id, color_name) VALUES
(1, 'Red'),
(2, 'Blue'),
(3, 'Green'),
(4, 'Black'),
(5, 'White'),
(6, 'Yellow');

-- 2.4 Insert Attribute Categories
-- Group attributes into categories:


INSERT INTO attribute_category (category_id, category_name) VALUES
(1, 'Physical'),
(2, 'Technical');

-- 2.5 Insert Attribute Types
-- Define specific attribute types with their data types:


INSERT INTO attribute_type (type_id, type_name, data_type, category_id) VALUES
(1, 'Material', 'text', 1),
(2, 'Weight', 'number', 1),
(3, 'Dimensions', 'text', 1),
(4, 'Battery Life', 'text', 2),
(5, 'Pages', 'number', 2);

-- Step 3: Assign Size Categories to Products
-- Update the products table to link relevant products to size_category. For example, clothing and shoe products need size categories. Assuming the product IDs from your previous insertion:
-- Clothing (IDs 21–30): Assign size_category_id = 1 (Clothing).

-- Shoes (e.g., ID 25 for Running Shoes, ID 30 for Sneakers): Assign size_category_id = 2 (Shoes).

-- SQL to update:


UPDATE products
SET size_category_id = 1
WHERE product_id IN (21, 22, 23, 24, 26, 27, 28, 29); -- Clothing products except shoes

UPDATE products
SET size_category_id = 2
WHERE product_id IN (25, 30); -- Shoe products

-- Other products (e.g., electronics, books) will have size_category_id = NULL.
-- Step 4: Insert Product Variations
-- The product_variation table defines valid size/color combinations for products that have variations. We’ll add variations for a subset of products, focusing on clothing and shoes, as these typically have size and/or color options.
-- Example 1: Men's Cotton T-shirt (product_id = 21)
-- This product varies by size (S, M, L) and color (Red, Blue, Black).


INSERT INTO product_variation (variation_id, product_id, size_id, color_id) VALUES
(1, 21, 1, 1),  -- Small, Red
(2, 21, 1, 2),  -- Small, Blue
(3, 21, 1, 4),  -- Small, Black
(4, 21, 2, 1),  -- Medium, Red
(5, 21, 2, 2),  -- Medium, Blue
(6, 21, 2, 4),  -- Medium, Black
(7, 21, 3, 1),  -- Large, Red
(8, 21, 3, 2),  -- Large, Blue
(9, 21, 3, 4);  -- Large, Black

-- Example 2: Running Shoes (product_id = 25)
-- Shoes vary by size only (8, 9, 10, 11), so color_id is NULL.


INSERT INTO product_variation (variation_id, product_id, size_id, color_id) VALUES
(10, 25, 5, NULL),  -- Size 8
(11, 25, 6, NULL),  -- Size 9
(12, 25, 7, NULL),  -- Size 10
(13, 25, 8, NULL);  -- Size 11

-- Example 3: Apple iPhone 13 (product_id = 1)
-- Electronics may have color variations but no sizes. Assume colors Red, Blue, Black:


INSERT INTO product_variation (variation_id, product_id, size_id, color_id) VALUES
(14, 1, NULL, 1),  -- Red
(15, 1, NULL, 2),  -- Blue
(16, 1, NULL, 4);  -- Black

-- For products without variations (e.g., books, board games), you can skip this table or add a single variation with both size_id and color_id as NULL:


INSERT INTO product_variation (variation_id, product_id, size_id, color_id) VALUES
(17, 11, NULL, NULL);  -- To Kill a Mockingbird (no variations)

-- Repeat this process for other clothing (e.g., Women’s Skinny Jeans, Summer Floral Dress) and shoes (Sneakers), adjusting sizes and colors as needed.
-- Step 5: Insert Product Items
-- The product_item table represents purchasable instances of each variation, with specific prices and stock quantities. Prices may vary slightly based on size or color (e.g., larger sizes might cost more).
-- Example 1: Men's Cotton T-shirt (product_id = 21)
-- Using the variations above:


INSERT INTO product_item (item_id, variation_id, price, stock_quantity) VALUES
(1, 1, 19.99, 50),  -- Small, Red
(2, 2, 19.99, 30),  -- Small, Blue
(3, 3, 19.99, 40),  -- Small, Black
(4, 4, 20.99, 60),  -- Medium, Red
(5, 5, 20.99, 50),  -- Medium, Blue
(6, 6, 20.99, 45),  -- Medium, Black
(7, 7, 21.99, 40),  -- Large, Red
(8, 8, 21.99, 35),  -- Large, Blue
(9, 9, 21.99, 30);  -- Large, Black

-- Example 2: Running Shoes (product_id = 25)


INSERT INTO product_item (item_id, variation_id, price, stock_quantity) VALUES
(10, 10, 89.99, 100),  -- Size 8
(11, 11, 89.99, 80),   -- Size 9
(12, 12, 89.99, 60),   -- Size 10
(13, 13, 89.99, 40);   -- Size 11

-- Example 3: Apple iPhone 13 (product_id = 1)


INSERT INTO product_item (item_id, variation_id, price, stock_quantity) VALUES
(14, 14, 799.00, 100),  -- Red
(15, 15, 799.00, 120),  -- Blue
(16, 16, 799.00, 90);   -- Black

-- For non-variable products like books:


INSERT INTO product_item (item_id, variation_id, price, stock_quantity) VALUES
(17, 17, 14.99, 200);  -- To Kill a Mockingbird

-- Step 6: Insert Product Attributes
-- The product_attribute table stores custom attributes for products, with description and created_at as per your clarification.
-- Example 1: Men's Cotton T-shirt (product_id = 21)
-- Add material and weight attributes:


INSERT INTO product_attribute (attribute_id, product_id, type_id, attribute_value) VALUES
(1, 21, 1, '100% Cotton'),
(2, 21, 2, '200 grams');

-- Example 2: Apple iPhone 13 (product_id = 1)
-- Add technical attributes

INSERT INTO product_attribute (attribute_id, product_id, type_id, attribute_value) VALUES
(3, 1, 1, 'Aluminum'),
(4, 1, 4, '20 hours');

-- Example 3: To Kill a Mockingbird (product_id = 11)
-- Add book-specific attributes:


INSERT INTO product_attribute (attribute_id, product_id, type_id, attribute_value) VALUES
(5, 11, 5, '368');

-- Step 7: Scale to All 50 Products
-- To cover all 50 products, follow these guidelines:
-- Clothing (IDs 21–24, 26–29): Add variations for sizes (S, M, L, XL) and colors (e.g., Red, Blue, Black). Create corresponding product_item entries with adjusted prices (e.g., larger sizes may cost 5–10% more). Add attributes like Material and Weight.

-- Shoes (IDs 25, 30): Add variations for sizes (8, 9, 10, 11) with color_id = NULL. Add attributes like Material (e.g., Leather) and Weight.

-- Electronics (IDs 1–10): Add color variations where applicable (e.g., iPhone, headphones). Add attributes like Battery Life, Dimensions, or Material.

-- Books (IDs 11–20): Typically have no variations (one product_variation with NULL size/color). Add attributes like Pages or Language.

-- Home & Kitchen (IDs 31–40): Most have no variations (e.g., Blender). Add attributes like Dimensions, Weight, or Material.

-- Toys & Games (IDs 41–50): Some (e.g., LEGO, Barbie) may have color variations. Add attributes like Age Range or Material.

-- You can replicate the SQL patterns above, adjusting IDs, values, and stock quantities based on product specifics.
-- Step 8: Verify Data Integrity
-- Foreign Keys: Ensure all product_id, size_id, color_id, and variation_id references exist in their respective tables.

-- Constraints: Verify stock_quantity >= 0 and the unique constraint on product_variation (product_id, size_id, color_id).

-- Business Rule: For products with a size_category_id, ensure their product_variation.size_id references a size_option in that category (e.g., Clothing sizes for T-shirts).

-- Run queries to check:


SELECT * FROM product_variation WHERE product_id NOT IN (SELECT product_id FROM products);
SELECT * FROM product_item WHERE stock_quantity < 0;
SELECT * FROM product_attribute WHERE product_id NOT IN (SELECT product_id FROM products);
SELECT * FROM product_variation WHERE size_id NOT IN (SELECT size_id FROM size_option WHERE size_category_id = (SELECT category_id FROM size_category WHERE category_name = 'Clothing'));


SELECT * FROM product_variation WHERE product_id NOT IN (SELECT product_id FROM products);
SELECT * FROM product_item WHERE stock_quantity < 0;

-- Conclusion
-- This process populates the size_category, size_option, color, product_variation, product_item, attribute_category, attribute_type, and product_attribute tables for your e-commerce database. The examples cover clothing, shoes, electronics, and books, providing a template to extend to all 50 products. If you need SQL for specific products or additional tables (e.g., product_image), let me know! Would you like to focus on a particular product category or table next?

-- product image management

-- inventory management systems
-- product image management systems
