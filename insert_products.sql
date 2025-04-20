
-- Insert Products

-- This SQL script inserts 50 products into the products table 
-- Now, we’ll insert 50 products, with 10 products per category. 
-- Each product will have a unique product_id, a realistic name, a brief description, a plausible price, and the correct category_id and brand_id. 
-- Below is the complete SQL statement for all 50 products.



INSERT INTO products (product_id, product_name, product_description, product_price, category_id, brand_id) VALUES
-- Electronics (category_id = 1)
(1, 'Apple iPhone 13', 'The latest iPhone with advanced camera features and A15 Bionic chip.', 799.00, 1, 1),
(2, 'Samsung Galaxy S21', 'High-performance Android smartphone with stunning display.', 699.99, 1, 2),
(3, 'Google Pixel 6', 'Smartphone with exceptional camera and pure Android experience.', 599.00, 1, 3),
(4, 'Apple MacBook Pro 14-inch', 'Powerful laptop with M1 Pro chip, ideal for professionals.', 1999.00, 1, 1),
(5, 'Dell XPS 13', 'Sleek and powerful ultrabook with InfinityEdge display.', 999.99, 1, 4),
(6, 'Lenovo ThinkPad X1 Carbon', 'Business-class laptop with durable design and long battery life.', 1299.00, 1, 5),
(7, 'Sony WH-1000XM4 Headphones', 'Industry-leading noise-cancelling headphones with superior sound.', 349.99, 1, 6),
(8, 'Bose QuietComfort 45', 'Comfortable headphones with excellent noise cancellation.', 329.00, 1, 7),
(9, 'Canon EOS R5 Camera', 'High-resolution mirrorless camera for professional photography.', 3899.00, 1, 8),
(10, 'Nikon Z6 II Camera', 'Versatile mirrorless camera with 4K video capabilities.', 1999.95, 1, 9),

-- Books (category_id = 2)
(11, 'To Kill a Mockingbird by Harper Lee', 'A classic novel exploring themes of racial injustice and moral growth.', 14.99, 2, 10),
(12, '1984 by George Orwell', 'Dystopian novel depicting a totalitarian society.', 10.99, 2, 11),
(13, 'The Great Gatsby by F. Scott Fitzgerald', 'A tale of decadence and idealism in the Roaring Twenties.', 12.99, 2, 10),
(14, 'Sapiens by Yuval Noah Harari', 'A brief history of humankind, from the Stone Age to the present.', 18.99, 2, 12),
(15, 'Educated by Tara Westover', 'A memoir about a woman''s quest for knowledge and self-discovery.', 16.99, 2, 13),
(16, 'The Martian by Andy Weir', 'A gripping tale of survival on Mars.', 14.99, 2, 14),
(17, 'The Silent Patient by Alex Michaelides', 'A psychological thriller about a woman''s act of violence.', 13.99, 2, 10),
(18, 'Becoming by Michelle Obama', 'An intimate memoir by the former First Lady of the United States.', 19.99, 2, 11),
(19, 'The Alchemist by Paulo Coelho', 'A philosophical novel about following one''s dreams.', 11.99, 2, 11),
(20, 'Atomic Habits by James Clear', 'A guide to building good habits and breaking bad ones.', 15.99, 2, 12),

-- Clothing (category_id = 3)
(21, 'Men''s Cotton T-shirt', 'Comfortable and stylish T-shirt made from 100% cotton.', 19.99, 3, 18),
(22, 'Women''s Skinny Jeans', 'Trendy skinny jeans with a perfect fit.', 49.99, 3, 16),
(23, 'Summer Floral Dress', 'Light and breezy dress perfect for summer days.', 39.99, 3, 18),
(24, 'Leather Jacket', 'Classic leather jacket for a timeless look.', 199.99, 3, 17),
(25, 'Running Shoes', 'High-performance shoes for running and training.', 89.99, 3, 15),
(26, 'Hooded Sweatshirt', 'Warm and cozy sweatshirt with a hood.', 59.99, 3, 17),
(27, 'Denim Shorts', 'Casual denim shorts for everyday wear.', 34.99, 3, 16),
(28, 'Polo Shirt', 'Classic polo shirt suitable for any occasion.', 29.99, 3, 18),
(29, 'Winter Coat', 'Insulated coat to keep you warm in winter.', 149.99, 3, 17),
(30, 'Sneakers', 'Stylish sneakers for everyday comfort.', 79.99, 3, 15),

-- Home & Kitchen (category_id = 4)
(31, 'High-Speed Blender', 'Versatile blender for smoothies, soups, and more.', 49.99, 4, 19),
(32, 'Espresso Machine', 'Professional-grade espresso machine for coffee lovers.', 299.99, 4, 21),
(33, 'Stainless Steel Cookware Set', 'Durable cookware set for all your cooking needs.', 199.99, 4, 21),
(34, 'Vacuum Cleaner', 'Powerful vacuum cleaner with advanced filtration.', 399.99, 4, 20),
(35, 'Air Fryer', 'Healthy cooking with less oil using hot air technology.', 89.99, 4, 19),
(36, 'Microwave Oven', 'Convenient microwave oven with multiple settings.', 129.99, 4, 21),
(37, 'Knife Block Set', 'Essential knives for every kitchen task.', 79.99, 4, 21),
(38, 'Toaster Oven', 'Compact toaster oven for quick meals.', 69.99, 4, 19),
(39, 'Electric Kettle', 'Fast-boiling kettle for tea and coffee.', 39.99, 4, 19),
(40, 'Stand Mixer', 'Versatile mixer for baking and cooking.', 299.99, 4, 19),

-- Toys & Games (category_id = 5)
(41, 'LEGO Star Wars Millennium Falcon', 'Detailed LEGO set for Star Wars fans, includes minifigures.', 159.99, 5, 22),
(42, 'Monopoly Board Game', 'Classic board game of buying and trading properties.', 24.99, 5, 23),
(43, 'Settlers of Catan', 'Strategy board game of resource management and trading.', 44.99, 5, 23),
(44, '1000-Piece Puzzle', 'Challenging puzzle for hours of entertainment.', 19.99, 5, 23),
(45, 'Remote Control Car', 'Fast and fun remote control car for kids.', 49.99, 5, 24),
(46, 'Barbie Dreamhouse', 'Large playset with multiple rooms and accessories.', 199.99, 5, 24),
(47, 'Nerf Blaster', 'Safe and fun foam dart blaster.', 29.99, 5, 23),
(48, 'Play-Doh Set', 'Creative modeling compound with tools and accessories.', 14.99, 5, 23),
(49, 'Basketball', 'Official size basketball for indoor and outdoor play.', 24.99, 5, 15),
(50, 'Frisbee', 'Durable frisbee for outdoor fun.', 9.99, 5, 15);