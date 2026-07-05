---
name: fable-markdown-memory
description: >
  File-based lesson memory across sessions. Use for any recurring agent
  (daily jobs, long projects, team assistants) where the same corrections
  keep being re-made, and when bootstrapping a new agent from past
  session history.
---

# Markdown Memory

A directory of Markdown files is enough — no database required. What matters
is maintenance discipline.

## Layout
```
memory/
  lessons/
    one-lesson-per-file.md
  INDEX.md   # one line per lesson, regenerated when lessons change
```

## Lesson File Format
- Line 1: one-sentence summary that makes sense without opening the file
- Body: what happened, correct approach, and WHY it mattered — the why
  generalizes
- Record both corrections and confirmations

## Maintenance Rules
- One lesson per file. New event refines existing → update that file
- Don't record what docs already state — memory is for what's NOT written
down elsewhere
- Delete lessons proven wrong — a confidently wrong note does more damage
  than a missing one
- Read INDEX.md at session start; open full files only when relevant

## Bootstrapping from History
Review past sessions, extract recurring themes and corrections, write as
lesson files, then make reading INDEX.md part of standing instructions.
