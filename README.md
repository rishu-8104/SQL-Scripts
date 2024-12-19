# SQL Scripts Documentation

## Overview
This project comprises a collection of SQL scripts designed to manage and manipulate database tables, constraints, indexes, and relationships. The scripts are organized into distinct categories, covering foreign keys, domain constraints, indexes, updates, and table alterations. These scripts can be used to set up, optimize, and modify a database for various use cases.

---

## Script Categories and Descriptions

### 1. **Foreign Keys**
Scripts that establish relationships between tables using foreign keys.
- **011-fk-tables-person-phone.sql**: Creates foreign key relationships between the `Person` and `Phone` tables.
- **012-foreign-keys-between-lecturer-course.sql**: Establishes foreign key constraints between the `Lecturer` and `Course` tables.
- **013-foreign-keys-between-track-artist-album.sql**: Defines foreign key relationships among the `Track`, `Artist`, and `Album` tables.

---

### 2. **Domain Constraints**
Scripts to enforce specific rules on table columns to ensure data validity.
- **021-domain-constraints-in-person-table.sql**: Adds domain constraints to the `Person` table, ensuring valid data for attributes such as name and age.
- **022-domain-constraints-in-product-table.sql**: Defines constraints on the `Product` table for price and category fields.
- **023-domain-constraints-in-project-table.sql**: Implements domain constraints for the `Project` table.
- **024-domain-constraints-in-course-table.sql**: Adds constraints to the `Course` table, ensuring data consistency.

---

### 3. **Indexes**
Scripts to create, manage, and remove indexes for optimizing database query performance.
#### **Person Table**
- **031-index-person-first.sql**: Creates an index on the first name of the `Person` table.
- **032-index-person-last.sql**: Creates an index on the last name of the `Person` table.
- **033-index-phone-number.sql**: Adds an index to the `Phone` table for faster searches by phone number.
- **034-index-remove.sql**: Removes existing indexes in the database.

#### **Team Table**
- **041-index-team-name.sql**: Adds an index on the `Team` table’s name column.
- **042-index-team-owner.sql**: Creates an index on the team owner field.
- **043-index-team-remove.sql**: Removes team-related indexes.

#### **Weather Table**
- **051-index-weather-time-of-reading.sql**: Adds an index for the time of readings in the `Weather` table.
- **052-index-weather-high.sql**: Creates an index for high temperature values.
- **053-index-weather-low.sql**: Creates an index for low temperature values.
- **054-index-weather-remove.sql**: Removes weather-related indexes.

---

### 4. **Update Operations**
Scripts for updating existing records in the database.
- **061-update-person-address.sql**: Updates the address field in the `Person` table.
- **062-update-person-phone.sql**: Modifies phone numbers in the `Person` table.
- **063-update-person-city.sql**: Updates the city field for individuals in the `Person` table.
- **064-update-person-city-john-doe.sql**: Updates the city field specifically for a record with the name "John Doe."

---

### 5. **Table Alterations**
Scripts to modify table structures, add or modify columns, and rename tables.
- **071-alter-inventory-item-comment.sql**: Adds a comment field to the `Inventory` table.
- **072-alter-inventory-item-not-null.sql**: Modifies a column in the `Inventory` table to enforce a NOT NULL constraint.
- **073-alter-inventory-item-remove-not-null.sql**: Removes the NOT NULL constraint from a column in the `Inventory` table.
- **074-alter-inventory-comment-default.sql**: Sets a default value for the comment field in the `Inventory` table.
- **075-alter-inventory-rename-table.sql**: Renames the `Inventory` table.

---

## Usage

### Prerequisites
- A compatible relational database management system (e.g., MySQL, PostgreSQL).
- Access to the database with sufficient privileges to execute DDL and DML operations.

### Steps
1. **Review and Customize Scripts**: Ensure the SQL scripts match your database schema.
2. **Execute Scripts**:
   - Use a database client (e.g., MySQL Workbench, pgAdmin) or command-line interface to execute the scripts.
   - Example for executing a script via CLI:
     ```bash
     mysql -u username -p database_name < script_name.sql
     ```
3. **Test Changes**:
   - Verify that the scripts have been executed correctly.
   - Ensure constraints, indexes, and updates work as expected.

---

## Project Organization
The scripts are named and organized based on their functionality, allowing easy identification and execution:
