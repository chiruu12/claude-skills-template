.DEFAULT_GOAL := help
.PHONY: help install test cov lint format typecheck check clean

help:  ## Show this help
	@grep -E '^[a-zA-Z_-]+:.*?## .*$$' $(MAKEFILE_LIST) | awk 'BEGIN {FS = ":.*?## "}; {printf "  \033[36m%-12s\033[0m %s\n", $$1, $$2}'

install:  ## Install dependencies + git hooks
	uv sync
	uv run pre-commit install

test:  ## Run the test suite
	uv run pytest

cov:  ## Run tests with a coverage report
	uv run pytest --cov --cov-report=term-missing

lint:  ## Lint (ruff) + format check
	uv run ruff check .
	uv run ruff format --check .

format:  ## Auto-fix lint issues and format
	uv run ruff check --fix .
	uv run ruff format .

typecheck:  ## Type check (mypy)
	uv run mypy

check: lint typecheck test  ## Run everything CI runs

clean:  ## Remove caches and build artifacts
	rm -rf .ruff_cache .mypy_cache .pytest_cache htmlcov .coverage coverage.xml dist build
	find . -type d -name __pycache__ -exec rm -rf {} +
