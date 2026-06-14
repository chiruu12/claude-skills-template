# [Project Name]

<!-- TODO: One-line description of what this project does -->

## Directory Structure

<!-- TODO: Fill in your project's actual structure -->
<!--
```
├── src/
├── tests/
├── docs/
└── ...
```
-->

## Tech Stack

<!-- TODO: List your languages, frameworks, and key dependencies -->

## Development

This template ships a Python scaffold managed with `uv`. Adjust if you change stacks.

- Install: `uv sync`
- Test: `uv run pytest` (with coverage: `uv run pytest --cov`)
- Lint: `uv run ruff check .` (auto-fix: `uv run ruff check --fix .`)
- Format: `uv run ruff format .`
- Type check: `uv run mypy`
- Pre-commit hooks: `uv run pre-commit install`

Ruff handles both linting and import sorting (the `I` rules) — there is no separate isort step.
CI (`.github/workflows/ci.yml`) runs lint + format check + mypy + pytest/coverage on 3.11–3.13.

## Conventions

- Read existing files before creating new ones — match patterns
- Keep commit messages short: one line, under 50 characters when possible
- Describe WHAT shipped, not HOW you got there
- No multi-paragraph commit bodies unless truly necessary
- Never expose internal process or iteration history in public-facing output

## Testing

<!-- TODO: Describe your testing approach -->

## Architecture Decisions

<!-- TODO: Link to docs/adr/ if you use ADRs, or note key decisions here -->
