---
name: fable-subagent-orchestration
description: >
  Patterns for delegating to parallel subagents — when to split tasks,
  async coordination, long-lived workers, fresh-context verifiers.
  Load when designing multi-agent harnesses, when a large task has
  independent parts, or when self-review keeps missing mistakes.
---

# Subagent Orchestration

## When to Delegate
Split out a subtask when it is (a) independent of current context, (b) large
enough to amortize the handoff, (c) specifiable in a few sentences plus file
pointers. Don't delegate tightly coupled edits — coordination costs exceed
parallelism gains.

## Coordination
- Launch independent subagents in the same turn, keep working while they run
- Intervene only on signal: subagent off-track or missing discoverable context
- Prefer long-lived subagents over respawning per subtask — repeated context
  loading is the dominant hidden cost

## Fresh-Context Verifiers
For checking finished work, a separate verifier subagent with clean context
outperforms self-critique. Give it the specification and output — not your
reasoning. Report discrepancies at defined cadences (every N components,
every X hours) rather than once at the end.

## Handoff Template
Goal (one sentence) + inputs (paths/data) + definition of done (checkable) +
constraints (what not to touch) + where to write results.
