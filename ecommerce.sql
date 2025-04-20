-- Core Tables
CREATE TABLE brand (
    brand_id INT PRIMARY KEY,
    brand_name VARCHAR(100) NOT NULL
);

CREATE TABLE product_category (
    category_id INT PRIMARY KEY,
    category_name VARCHAR(100) NOT NULL
);

CREATE TABLE size_category (
    category_id INT PRIMARY KEY,
    category_name VARCHAR(100) NOT NULL
);

CREATE TABLE size_option (
    size_id INT PRIMARY KEY,
    size_value VARCHAR(50) NOT NULL,
    size_category_id INT,
    FOREIGN KEY (size_category_id) REFERENCES size_category(category_id)
);

CREATE TABLE color (
    color_id INT PRIMARY KEY,
    color_name VARCHAR(50) NOT NULL
);

CREATE TABLE product (
    product_id INT PRIMARY KEY,
    name VARCHAR(200) NOT NULL,
    brand_id INT,
    category_id INT,
    base_price DECIMAL(10,2) NOT NULL,
    size_category_id INT,
    FOREIGN KEY (brand_id) REFERENCES brand(brand_id),
    FOREIGN KEY (category_id) REFERENCES product_category(category_id),
    FOREIGN KEY (size_category_id) REFERENCES size_category(category_id)
);

-- Variation and Item Tables
CREATE TABLE product_variation (
    variation_id INT PRIMARY KEY,
    product_id INT,
    size_id INT,
    color_id INT,
    FOREIGN KEY (product_id) REFERENCES product(product_id),
    FOREIGN KEY (size_id) REFERENCES size_option(size_id),
    FOREIGN KEY (color_id) REFERENCES color(color_id)
);

CREATE TABLE product_item (
    item_id INT PRIMARY KEY,
    product_id INT,
    size_id INT,
    color_id INT,
    price DECIMAL(10,2) NOT NULL,
    stock_quantity INT NOT NULL CHECK (stock_quantity >= 0),
    FOREIGN KEY (product_id) REFERENCES product(product_id),
    FOREIGN KEY (size_id) REFERENCES size_option(size_id),
    FOREIGN KEY (color_id) REFERENCES color(color_id)
);

-- Image Table
CREATE TABLE product_image (
    image_id INT PRIMARY KEY,
    product_id INT,
    image_url VARCHAR(200) NOT NULL,
    color_id INT,
    FOREIGN KEY (product_id) REFERENCES product(product_id),
    FOREIGN KEY (color_id) REFERENCES color(color_id)
);

-- Attribute Tables
CREATE TABLE attribute_category (
    category_id INT PRIMARY KEY,
    category_name VARCHAR(100) NOT NULL
);

CREATE TABLE attribute_type (
    type_id INT PRIMARY KEY,
    type_name VARCHAR(100) NOT NULL,
    data_type VARCHAR(20) NOT NULL,
    category_id INT,
    FOREIGN KEY (category_id) REFERENCES attribute_category(category_id)
);

CREATE TABLE product_attribute (
    attribute_id INT PRIMARY KEY,
    product_id INT,
    type_id INT,
    value TEXT NOT NULL,
    FOREIGN KEY (product_id) REFERENCES product(product_id),
    FOREIGN KEY (type_id) REFERENCES attribute_type(type_id)
);