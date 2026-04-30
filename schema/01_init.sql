-- =============================================
-- Office Database - Initial Schema
-- Version: 1.0
-- Description: Core tables for contacts, employees, and orders
-- =============================================

-- 1. Employees Table
CREATE TABLE IF NOT EXISTS employees (
    id              INTEGER GENERATED ALWAYS AS IDENTITY PRIMARY KEY,
    full_name       VARCHAR(150) NOT NULL,
    email           VARCHAR(100) UNIQUE,
    phone           VARCHAR(20),
    position        VARCHAR(100),
    department      VARCHAR(50),
    hire_date       DATE,
    is_active       BOOLEAN DEFAULT true,
    created_at      TIMESTAMP DEFAULT now(),
    updated_at      TIMESTAMP DEFAULT now()
);

-- 2. Contacts Table
CREATE TABLE IF NOT EXISTS contacts (
    id              INTEGER GENERATED ALWAYS AS IDENTITY PRIMARY KEY,
    full_name       VARCHAR(150) NOT NULL,
    email           VARCHAR(100),
    phone           VARCHAR(20),
    company         VARCHAR(100),
    notes           TEXT,
    created_at      TIMESTAMP DEFAULT now(),
    updated_at      TIMESTAMP DEFAULT now()
);

-- 3. Orders Table
CREATE TABLE IF NOT EXISTS orders (
    id              INTEGER GENERATED ALWAYS AS IDENTITY PRIMARY KEY,
    order_date      DATE NOT NULL,
    customer_id     INTEGER REFERENCES contacts(id),
    employee_id     INTEGER REFERENCES employees(id),
    total_amount    DECIMAL(10,2),
    status          VARCHAR(20) DEFAULT 'Pending',
    notes           TEXT,
    created_at      TIMESTAMP DEFAULT now()
);

COMMENT ON TABLE employees IS 'Company employees information';
COMMENT ON TABLE contacts IS 'External contacts and customers';
COMMENT ON TABLE orders IS 'Sales orders and transactions';

