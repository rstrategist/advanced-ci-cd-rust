SHELL := /bin/bash
.PHONY: help

help:
	@grep -E '^[a-zA-Z_-]+:.*?## .*$$' $(MAKEFILE_LIST) | sort | awk 'BEGIN {FS = ":.*?## "}; {printf "\033[36m%-15s\033[0m %s\n", $$1, $$2}'

test: ## Create docs for the project using cargo
	cargo test

clean: ## Clean the project using cargo
	cargo clean

build: ## Build the project using cargo
	cargo build

run: ## Run the project using cargo
	cargo run

lint: ## Lint the project using cargo
	@rustup component add clippy 2> /dev/null
	cargo clippy

format: ## Format the project using cargo
	@rustup component add rustfmt 2> /dev/null
	cargo fmt

doc: ## Create docs for the project using cargo
	cargo doc

bump: ## Bump the version number
	@echo " Current version is $(shell cargo pkgid | cut -d '#' -f 2)"
	@read -p "Enter the new version: " version; \
	update_version=$$(cargo pkgid | cut -d '#' -f 2 | sed "s/0.1.0/$$version/"); \
	sed -i "s/$(shell cargo pkgid | cut -d '#' -f 2)/$$update_version/" Cargo.toml; \
	@echo "New version is $(shell cargo pkgid | cut -d '#' -f 2)"

all: format lint test run