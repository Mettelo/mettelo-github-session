# mettelo-github-session
This session is for testing

## Customer sales ingestion

Run [`sql/customer_sales_ingestion.sql`](./sql/customer_sales_ingestion.sql) against SQL Server to create `dbo.CustomerSales` if it does not exist and insert an ingestion record.

The insert expects the caller to bind `@customer_name` (`NVARCHAR(200)`), `@age` (`TINYINT`, nullable), `@price` (`DECIMAL(19,4)`), `@failed_order` (`BIT`), `@number_of_orders` (`INT`), and `@email` (`NVARCHAR(320)`). The table supplies an identity key and UTC ingestion timestamp. Each insert adds a record; email is not treated as a unique key.

## Project folders

- `config/` — local ingestion configuration. Keep credentials and other secrets out of source control.
- `data/raw/` — incoming source files, unchanged.
- `data/processed/` — successfully ingested or transformed files.
- `data/rejected/` — files that failed validation or ingestion, for investigation.
- `logs/` — local ingestion run logs.
- `sql/` — SQL Server schema and ingestion statements.
- `tests/` — ingestion and data-validation tests.

Customer files and logs are excluded from Git by `.gitignore`; only folder placeholders are tracked.
