# Habit tracker workspace

This workspace combines shared product documentation with two independent Git repositories:

- [`web-app/`](web-app/): the frontend application.
- [`backend/`](backend/): authentication and optional cross-device synchronization.

The outer repository owns the shared product docs and workspace instructions. The child repositories own their code, local architecture docs, and implementation history.

The outer repository does not clone or pin the child repositories. Keep each child repository checked out in its matching directory.

Start with [`AGENTS.md`](AGENTS.md) for the workspace map. Each child has its own `AGENTS.md`; read it before changing that repository. For work that affects both repos, use [`docs/sync-contract.md`](docs/sync-contract.md) as the shared behavior contract.
