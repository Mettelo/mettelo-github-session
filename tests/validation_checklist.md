# Customer sales ingestion: manual validation checklist

Use this checklist to **review** the repository's SQL ingestion implementation. This Markdown checklist is not an automated test suite.

## Before making changes

- [ ] Identify the source SQL file and inspect the table definition.
- [ ] Confirm the six expected input bindings: `@customer_name`, `@age`, `@price`, `@failed_order`, `@number_of_orders`, `@email`.
- [ ] Check the SQL types and nullable fields against the data dictionary.

## Validation scenarios to review

- [ ] `age` may be `NULL`; when present it must not exceed 130.
- [ ] `price` must be non-negative.
- [ ] `number_of_orders` must be non-negative.
- [ ] `failed_order` uses the SQL `BIT` type.
- [ ] `customer_sale_id` is generated using `IDENTITY(1,1)`.
- [ ] `ingested_at` defaults to `SYSUTCDATETIME()`.
- [ ] Repeated inserts append records; email is not enforced as unique.

## Review evidence

- [ ] Markdown checklist displays correctly in VS Code.
- [ ] The pull request identifies which checks were document review only.
- [ ] Reviewer feedback has been addressed on the same pull request.

> Live exercise: use Issue #6. Ask the reviewer what safeguards should be stated before anyone considers executing an ingestion script.
