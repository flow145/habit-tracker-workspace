# Habit tracker workspace

This repository owns shared product documentation. `web-app/` and `backend/` are separate Git repositories and are ignored by this outer repository.

## Repositories

- `web-app/`: frontend implementation. Read `web-app/AGENTS.md` before frontend code or repository workflow changes.
- `backend/`: backend implementation. Read `backend/AGENTS.md` before backend code or repository workflow changes.

## Shared product sources

- Product direction: `docs/vision.md`
- Domain vocabulary: `docs/glossary.md`
- Habit behavior: `docs/business-rules.md`
- User needs and flows: `docs/user-stories.md` and `docs/user-flows.canvas`
- Account and synchronization behavior: `docs/sync-contract.md`

Read the source relevant to the task. For a change spanning both implementations, read both child `AGENTS.md` files and the sync contract before proposing or changing behavior.

## Git boundaries

The outer Git repository owns workspace instructions and shared product docs. Each child repository owns its implementation and repository-local docs. Run status, diff, and commit operations in the repository that owns the files being changed.

Keep product behavior in the shared docs. Keep stack, implementation, and repo-specific workflow details in the relevant child repository. Run GitHub issue or pull-request commands from the child repo that owns the task. Record a decision in the outer repo only when it constrains both implementations; keep implementation decisions in the relevant child repo.
