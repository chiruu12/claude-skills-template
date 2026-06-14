# Contributing

Thanks for taking the time to contribute! This document covers the basics.

## Getting started

```bash
uv sync                  # install dependencies
uv run pre-commit install  # set up git hooks (optional but recommended)
```

Or use the shortcuts:

```bash
make install
```

## Development workflow

1. Create a branch off `main`.
2. Make your change. Add or update tests.
3. Run the full local check before pushing:

   ```bash
   make check     # lint + format check + type check + tests
   ```

   Individually:
   - `make lint` — Ruff lint + format check
   - `make format` — auto-fix lint issues and format
   - `make typecheck` — mypy
   - `make test` / `make cov` — pytest (with coverage)

4. Open a pull request. Fill in the PR template. CI must pass.

## Conventions

- Imports are sorted by Ruff (the `I` rules) — there is no separate isort step.
- Keep commits focused. Short, imperative subject lines (e.g. "fix race in loader").
- New behavior needs tests. Bug fixes should include a regression test.
- Public APIs should be typed; the project runs mypy in strict mode.

## Reporting bugs / requesting features

Open an issue using the appropriate template. For security issues, see
[SECURITY.md](SECURITY.md) — please do **not** open a public issue.
