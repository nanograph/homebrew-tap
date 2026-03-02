# CLAUDE.md

This file provides guidance to Claude Code (claude.ai/code) when working with code in this repository.

## Overview

This is a Homebrew tap repository for distributing the `nanograph` binary (an embedded typed property graph database). Users install it via `brew install aaltshuler/tap/nanograph`.

## Structure

- `Formula/nanograph.rb` — Homebrew formula for nanograph. Distributes pre-built binaries for macOS (arm64 and x86_64).
- `.github/workflows/update-formula.yml` — GitHub Actions workflow triggered by `repository_dispatch` from the main nanograph repo. Automatically updates the formula version and SHA256 checksums when a new release is tagged.

## Common Commands

```bash
# Lint the formula
brew audit --strict --new Formula/nanograph.rb

# Test the formula installs correctly (requires the binary to be available at the URL)
brew install --build-from-source Formula/nanograph.rb
brew test nanograph

# Style check
brew style Formula/nanograph.rb
```

## How Formula Updates Work

The nanograph main repo sends a `repository_dispatch` event with the new tag. The workflow downloads `.sha256` checksum files from the GitHub release, rewrites `Formula/nanograph.rb` with the new version/URLs/checksums, and auto-commits.

When editing the formula manually, ensure:
- `sha256` values match the actual release artifacts (or use `"PLACEHOLDER"` during development)
- URL patterns follow: `nanograph-v{VERSION}-{arch}-apple-darwin.tar.gz`
- The `test` block uses `nanograph version` to verify installation
