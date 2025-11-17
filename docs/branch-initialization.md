# Branch Initialization Guide

This document explains how to initialize the comprehensive branching structure for PR-5IM.

## Overview

PR-5IM uses a comprehensive branching strategy to support specification-driven development. The branching model includes branches for specifications, planning, design, implementation, development, testing, staging, production, and documentation.

## Automated Branch Initialization

The repository includes a script to automatically create all required branches:

```bash
./scripts/init-branches.sh
```

This script creates the following branches if they don't already exist:

- `spec` - Specifications and requirements
- `plan` - Implementation planning
- `design` - Design artifacts and UI/UX work
- `impl` - Implementation work
- `dev` - Development integration
- `test` - Testing and quality assurance
- `stage` - Staging environment
- `prod` - Production environment
- `pages` - Documentation site
- `gh-pages` - GitHub Pages deployment
- `codex` - Knowledge base and examples

## Manual Branch Creation

If you prefer to create branches manually:

```bash
# Create a branch
git branch <branch-name>

# Push the branch to remote
git push origin <branch-name>

# Switch to the branch
git checkout <branch-name>
```

## Branch Protection Rules

After creating branches, configure branch protection rules through the GitHub repository settings:

### Critical Branches (main, prod, stage)
- Require pull request reviews before merging
- Require status checks to pass before merging
- Require branches to be up to date before merging
- Include administrators in restrictions
- Require linear history

### Integration Branches (dev, impl, test)
- Require status checks to pass before merging
- Require branches to be up to date before merging

### Working Branches (spec, plan, design, codex)
- Minimal restrictions to facilitate rapid iteration
- Optional: require status checks to pass

## Automated Pull Request Workflows

The repository includes workflows that automatically create pull requests between branches:

- `spec` → `plan` - Promote specifications to planning
- `plan` → `impl` - Promote plans to implementation
- `design` → `impl` - Integrate design into implementation
- `impl` → `dev` - Integrate implementation into development
- `dev` → `main` - Promote development to stable baseline
- `main` → `stage` - Promote to staging
- `main` → `test` - Synchronize with testing
- `stage` → `prod` - Promote to production
- `prod` → `pages` - Update documentation
- `codex` → `pages` - Publish knowledge base

These workflows are triggered automatically when changes are pushed to the source branch.

## Verification

To verify all branches have been created:

```bash
git branch -a
```

You should see all branches listed both locally and on the remote (after pushing).

## Initial Provisioning

When first setting up the repository, the `initial-provision.yml` workflow may automatically:

1. Detect that the repository is in a bootstrap state
2. Temporarily disable branch protection on the default branch
3. Mark bootstrap pull requests as ready for review
4. Merge them automatically
5. Reapply branch protection settings

This ensures the repository is properly initialized while maintaining security.

## Further Reading

For detailed information about the branching strategy, see [BRANCHING.md](../BRANCHING.md).
