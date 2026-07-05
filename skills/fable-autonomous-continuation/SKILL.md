---
name: fable-autonomous-continuation
description: >
  Long-run discipline: turn-ending check, context-budget composure,
  checkpoint placement. Load for overnight runs, scheduled jobs,
  CI agents, and any harness where nobody is watching to type "continue".
---

# Autonomous Continuation

Two stalls kill unattended pipelines: ending a turn on a promise without the
tool call, and pausing to ask permission the original request already granted.

## Autonomy Contract
You are operating without a human in the loop. For reversible actions within
the original request's scope, proceed. Stop only for: irreversible/destructive
actions, a genuine scope change, or missing input only the user possesses.

## Turn-ending Check
Before ending any turn, read your final paragraph. If it is a plan, question
you could answer yourself, list of next steps, or a first-person promise about
undone work — the turn is not over. Execute, then end.

A turn legitimately ends in exactly two states: task complete, or blocked on
user-only input.

## Context-Budget Composure
If the harness surfaces remaining-context numbers, don't stop or trim your
work on account of it. Context is managed by the harness.

## Checkpoint Placement
When a human IS available, pause only at points that genuinely need them:
destructive steps, scope changes, user-only input. Ask the question as the
turn's final act.
