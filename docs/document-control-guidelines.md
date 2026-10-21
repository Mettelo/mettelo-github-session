# Document Control Guidelines

## Purpose and scope

These guidelines cover project documentation maintained in this repository, including Markdown files, SQL documentation, configuration examples, and operating procedures. They help keep guidance accurate, traceable, and safe to share.

## Document ownership

- Every substantive document must identify a responsible role or team in its opening metadata or an ownership section. Use a role rather than a person's name when possible.
- The owner keeps the document accurate and arranges review when its process, code, or data assumptions change.
- Keep documentation close to the area it describes. Put general project guidance in `docs/`, and keep the `README.md` focused on the project overview and entry points.

## Required document information

For procedures and other controlled guidance, include:

- A clear title and purpose.
- The intended audience or scope.
- An owner or responsible role.
- A last-reviewed date in `YYYY-MM-DD` format.
- Links to relevant scripts, requirements, or related guidance where applicable.

Add an approval or effective date when a project or external requirement calls for formal approval. Do not add administrative metadata to trivial notes when it would not help a reader.

## Naming and organization

- Use descriptive, stable filenames in lowercase kebab-case, such as `data-validation-procedure.md`.
- Prefer one source of truth. Link to an existing document instead of copying it into another file.
- Use relative repository links for files in this project and update links when files move.
- Keep working drafts clearly marked as drafts; do not present unapproved drafts as current operating instructions.

## Changes, review, and history

- Make documentation changes through the same Git review process as code changes. A pull request should explain the purpose and identify any affected procedures or data contracts.
- Ask a reviewer familiar with the affected workflow to check substantive changes before merging.
- Update the last-reviewed date when a controlled document is reviewed and remains current, as well as when its content changes.
- Use Git history for version tracking. Do not maintain a second manual revision history unless an applicable requirement needs one.
- When a document is superseded, link to its replacement and mark it as superseded; remove obsolete material when it no longer needs to be retained.

## Data protection

- Never commit credentials, access tokens, customer personal information, or production data in documents, examples, screenshots, or notebook outputs.
- Use synthetic examples and placeholders for secrets. Keep local data and logs in the designated `data/` and `logs/` locations; do not add them to documentation commits.
- Before publishing a document, inspect it for sensitive content, stale instructions, broken links, and references to files that are not available to the intended readers.

## Review cadence

Review a document when the related schema, ingestion workflow, configuration, or requirement changes, and at least annually for procedures that remain in use. If the project adopts a stricter legal, security, or organizational retention or approval requirement, that requirement takes precedence.