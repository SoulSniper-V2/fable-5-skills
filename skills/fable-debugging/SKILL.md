---
name: fable-debugging
description: >
  Systematic debugging methodology: reproduce, isolate, understand, fix
  minimal, verify. Load when debugging a bug, investigating an error,
  tracking down a crash, fixing something broken.
---

# Debugging

## Methodology

### 1. Reproduce First
Check logs, recent changes (`git log`, `git diff`), environment.

### 2. Isolate the Problem
Binary search the code, check boundaries, trace data flow, check assumptions.

### 3. Understand Before Fixing
Identify root cause, check if bug affects other paths with same pattern,
verify understanding by predicting before testing.

### 4. Fix Minimal
Change minimum necessary. Don't refactor surrounding code. Architectural
changes need user approval first.

### 5. Verify
Run reproduction case, run existing tests, check other locations with same pattern.

## Common Patterns

**Works locally, not production:** env diffs, build differences, race conditions, caching
**Was working, now not:** git log → git bisect → dependency updates → external changes
**Slow:** measure first, profile bottleneck, check N+1 queries, re-renders, indexes
**Crashes:** full stack trace, null/undefined at crash, type mismatches, resource exhaustion

## Reporting
- State symptom clearly
- State root cause
- State the fix
- State how to verify
- Mention related issues
