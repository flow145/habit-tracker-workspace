# Habit tracker workspace

This workspace combines the habit tracker's documentation, agent instructions, and agent skills with two independent Git repositories:

- [`repos/web-app/`](repos/web-app/): the frontend application.
- [`repos/backend/`](repos/backend/): authentication and optional cross-device synchronization.

The outer repository owns all docs: shared product docs in [`docs/product/`](docs/product/) and implementation docs in [`docs/web-app/`](docs/web-app/) and [`docs/backend/`](docs/backend/). The child repositories own their code, configuration, and implementation history.

The outer repository does not clone or pin the child repositories. Keep each child repository checked out in its matching directory under `repos/`.

Start with [`AGENTS.md`](AGENTS.md) for the workspace map. For work that affects both repos, use [`docs/product/sync-contract.md`](docs/product/sync-contract.md) as the shared behavior contract.
