# advanced-ci-cd-rust
[![Open in GitHub Codespaces](https://github.com/codespaces/badge.svg)](https://codespaces.new/rstrategist/advanced-ci-cd-rust)

[![Rust Quality Build and Test](https://github.com/rstrategist/advanced-ci-cd-rust/actions/workflows/main.yml/badge.svg)](https://github.com/rstrategist/advanced-ci-cd-rust/actions/workflows/main.yml)
[![Clippy](https://github.com/rstrategist/advanced-ci-cd-rust/actions/workflows/clippy.yml/badge.svg)](https://github.com/rstrategist/advanced-ci-cd-rust/actions/workflows/clippy.yml)

## Rust for DevOps - Advanced CI/CD

This [Codespaces](https://docs.github.com/en/codespaces/overview) enabled repo is pre-configured with useful extensions like the [Rust Analyzer](https://marketplace.visualstudio.com/items?itemName=rust-lang.rust-analyzer) and [GitHub Copilot](https://docs.github.com/en/copilot/quickstart).

### GitHub Actions
This repo has a GitHub Actions workflow that will run on every push to the repository. The workflow will run cargo fmt, build and test to make sure that the project formats (follows Rust style guidelines), builds and that all tests pass. You can find the workflow file in .github/workflows/main.yml.
