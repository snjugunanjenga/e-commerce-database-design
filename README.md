# E-Commerce Database Project

A robust relational database system designed to manage product information, inventory, and product variations for an e-commerce platform.

## Database Schema

This database is structured to handle products with multiple variations (size, color), detailed attributes, brand and category management.

## Table Relationships

### Core Tables

#### 1. Brand
- **Primary Key**: `brand_id`
- **Relationships**: One-to-many with Product (a brand can have many products)

#### 2. Product Category
- **Primary Key**: `category_id`
- **Relationships**: One-to-many with Product (a category can contain many products)

#### 3. Size Category
- **Primary Key**: `category_id`
- **Relationships**:
  - One-to-many with Size Option (a size category has many size options)
  - One-to-many with Product (a size category applies to many products)

#### 4. Size Option
- **Primary Key**: `size_id`
- **Foreign Keys**: `size_category_id` references Size Category
- **Relationships**:
  - Many-to-one with Size Category (many size options belong to one size category)
  - Used in Product Variation and Product Item

#### 5. Color
- **Primary Key**: `color_id`
- **Relationships**: Used in Product Variation, Product Item, and Product Image

#### 6. Product
- **Primary Key**: `product_id`
- **Foreign Keys**:
  - `brand_id` references Brand
  - `category_id` references Product Category
  - `size_category_id` references Size Category
- **Relationships**:
  - Many-to-one with Brand (many products from one brand)
  - Many-to-one with Product Category (many products in one category)
  - Many-to-one with Size Category (many products use one size category)
  - One-to-many with Product Variation, Product Item, Product Image, and Product Attribute

### Variation and Item Tables

#### 7. Product Variation
- **Primary Key**: `variation_id`
- **Foreign Keys**:
  - `product_id` references Product
  - `size_id` references Size Option
  - `color_id` references Color
- **Relationships**: Represents the possible combinations of products, sizes, and colors

#### 8. Product Item
- **Primary Key**: `item_id`
- **Foreign Keys**:
  - `product_id` references Product
  - `size_id` references Size Option
  - `color_id` references Color
- **Relationships**: Represents actual inventory items with stock quantities
- **Constraints**: `stock_quantity >= 0` ensures non-negative inventory

### Image Table

#### 9. Product Image
- **Primary Key**: `image_id`
- **Foreign Keys**:
  - `product_id` references Product
  - `color_id` references Color
- **Relationships**: 
  - Many-to-one with Product (many images for one product)
  - Many-to-one with Color (many images showing one color)

### Attribute Tables

#### 10. Attribute Category
- **Primary Key**: `category_id`
- **Relationships**: One-to-many with Attribute Type (one category has many attribute types)

#### 11. Attribute Type
- **Primary Key**: `type_id`
- **Foreign Keys**: `category_id` references Attribute Category
- **Relationships**:
  - Many-to-one with Attribute Category (many types in one category)
  - One-to-many with Product Attribute (one type has many attributes)

#### 12. Product Attribute
- **Primary Key**: `attribute_id`
- **Foreign Keys**:
  - `product_id` references Product
  - `type_id` references Attribute Type
- **Relationships**:
  - Many-to-one with Product (many attributes for one product)
  - Many-to-one with Attribute Type (many attributes of one type)

## Key Features

- **Product Hierarchy**: Clear relationship between brands, products, and categories
- **Flexible Sizing System**: Support for different size categories (clothing, shoes)
- **Color Management**: Track colors across products, variations, and images
- **Inventory Tracking**: Stock quantity management at the item level
- **Detailed Attributes**: Extensible attribute system for product specifications
- **Image Support**: Product images with color association

## Getting Started

### Prerequisites

- MySQL
- Database administration tool (MySQL Workbench)

### Installation

1. Clone the repository:
```bash
git clone https://github.com/snjugunanjenga/e-commerce-database-design.git
cd e-commerce-database
```

2. Connect to your MySQL server:
```bash
mysql -u username -p
```

## Contributors
Fiona Gachuuri -https://github.com/FionaGachuuri
Simon Njuguna Njenga -https://github.com/snjugunanjenga

## License

This project is licensed under the MIT License 

## Acknowledgments

- Inspired by modern e-commerce platforms and their product management needs
