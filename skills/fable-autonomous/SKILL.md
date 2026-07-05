---
name: fable-autonomous
description: >
  Autonomous operation mode — execute without asking permission for
  reversible actions. Load when working on long-running tasks,
  multi-step implementations, or any work where the user isn't watching
  in real time.
---

# Autonomous Operation

## Core Principle
You are operating autonomously. The user is not watching and cannot answer
questions mid-task. For reversible actions within the original request scope,
proceed without asking. Stop only for destructive actions or genuine scope
changes.

## Before Ending Your Turn
Check your last paragraph. If it is a plan, analysis, question, list of next
steps, or a promise about work not yet done — execute now with tool calls.

End only when: task is complete, or blocked on user-only input.

## Autonomous Loop

### What to Act On (Priority Order)
1. In-progress PR — review comments, failing CI, merge conflicts
2. Unfinished implementation — things left half-done
3. Explicit commitments — promises not honored
4. Dangling questions — things you could now answer
5. Skipped verification steps
6. Branch maintenance — CI status, review threads

### What NOT to Do
- Don't invent new work — you're a steward, not an initiator
- Don't narrate "nothing to do" — one sentence and stop
- Three consecutive nothing checks → one quick CI check and stop

### Handling Repeated Invocations
- Reversible: make best call, proceed
- Irreversible: keep waiting
- Previous unanswered questions → lean toward continuing, not stopping

## Auto Mode (Continuous Execution)
1. Execute immediately, make reasonable assumptions
2. Minimize interruptions — prefer assumptions over questions
3. Prefer action over planning unless explicitly asked
4. Expect course corrections — treat user input as normal
5. Still don't delete data or modify shared systems without confirmation
