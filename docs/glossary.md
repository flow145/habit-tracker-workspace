# Habit tracker

This context describes habits, their schedules, and the user's record of following them over time, including optional account-based synchronization.

## Habits

**Habit**:
A behavior the user wants to practice. It has a name, a schedule, a color, and optional notes.

**Day**:
A calendar date used to record habit progress. A completion stays attached to the local calendar date on which it was recorded, even if the user later changes time zones.

**Completion**:
The user's explicit indication that a habit was completed on a particular day.
_Avoid_: Entry when discussing product behavior

**Schedule**:
The number of completed days targeted within a recurring day-, week-, or month-based window.

**Schedule window**:
An inclusive period over which a habit's target frequency is evaluated.
_Avoid_: Interval when referring to the evaluated period

**Status**:
The result shown for a habit on a day: `complete`, `incomplete`, or `not-required`.

**Habit strength**:
A product-defined estimate of how established a habit is, derived from its completion history, schedule, and resulting day statuses. It is not a direct measurement of psychological automaticity.

## Accounts

**User**:
An authenticated identity that owns remote habit data. A person can use local habit tracking without a User account.

**Account**:
A sign-in identity associated with a User. An Account is distinct from the User identity.

**Session**:
An authenticated period of access for a User.
