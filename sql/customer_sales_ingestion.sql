IF OBJECT_ID(N'dbo.CustomerSales', N'U') IS NULL
BEGIN
    CREATE TABLE dbo.CustomerSales
    (
        customer_sale_id BIGINT IDENTITY(1, 1) NOT NULL
            CONSTRAINT PK_CustomerSales PRIMARY KEY,
        customer_name NVARCHAR(200) NOT NULL,
        age TINYINT NULL,
        price DECIMAL(19, 4) NOT NULL,
        failed_order BIT NOT NULL
            CONSTRAINT DF_CustomerSales_failed_order DEFAULT (0),
        number_of_orders INT NOT NULL
            CONSTRAINT DF_CustomerSales_number_of_orders DEFAULT (1),
        email NVARCHAR(320) NOT NULL,
        ingested_at DATETIME2(0) NOT NULL
            CONSTRAINT DF_CustomerSales_ingested_at DEFAULT (SYSUTCDATETIME()),
        CONSTRAINT CK_CustomerSales_age CHECK (age IS NULL OR age <= 130),
        CONSTRAINT CK_CustomerSales_price CHECK (price >= 0),
        CONSTRAINT CK_CustomerSales_number_of_orders CHECK (number_of_orders >= 0)
    );
END;

INSERT INTO dbo.CustomerSales
    (customer_name, age, price, failed_order, number_of_orders, email)
VALUES
    (@customer_name, @age, @price, @failed_order, @number_of_orders, @email);
