# Account and synchronization contract

This document defines observable behavior shared by the web app and backend. Their implementation details belong in each repository's architecture docs.

## Account access

- Habit tracking works without an account, including while offline.
- Users sign up and sign in with a one-time password sent to their email address. A valid code for an unknown email creates a User.
- Signing out ends remote synchronization and leaves local habit data intact.
- Deleting a User removes that identity and its remote habit data while leaving local data on the user's devices untouched.

## Data ownership

- The backend stores Habits and their completion history for authenticated Users.
- A User can access only their own remote habit data.
- Deleting a Habit also removes its completion history.
- UI preferences and other device-specific state remain local.

## Synchronization

- An authenticated User's Habits and completion history synchronize across their devices.
- Synchronization starts after sign-up or sign-in.
- When both local and remote data exist, the app merges them.
- The app remains usable offline and synchronizes local changes after reconnection.
- For now, signing in as a different User on a device with existing local data also merges that data.

## Recovery

- A User can recover synchronized data by signing in on a device with an empty local database.
