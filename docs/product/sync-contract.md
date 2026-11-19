# Account and synchronization contract

This document defines observable behavior shared by the web app and backend. Their implementation details belong in [web app architecture](../web-app/architecture.md) and [backend architecture](../backend/architecture.md).

## Account access

- Habit tracking works without an account, including while offline.
- Users sign up and sign in with an OTP sent to their email address. A valid code for an unknown email creates a User.
- Signing out ends remote synchronization and leaves local habit data intact.
- Deleting a User removes that identity and its remote habit data while leaving local data on the user's devices untouched.

## Authentication state on a device

- The app remembers the signed-in User's email on the device. A remembered User is shown as signed in immediately, including while the server is unreachable.
- Without a remembered User, the app checks with the server before showing the authentication state. While checking, it shows a loading state. If the server is unreachable, it says so and offers a retry that shows progress while it runs.
- After that first answer, the app switches between signed in and signed out only when the server confirms whether a Session exists. A recheck that is in progress or fails keeps the current view, so an unfinished sign-in is not reset.
- When a Session ends elsewhere, for example by expiry, revocation, or User deletion, the app forgets the remembered User and shows the sign-in form without a separate notice.
- Signing in or out shows its action as in progress until the resulting authentication state is shown.

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
