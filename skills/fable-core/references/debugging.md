# Debugging

## Methodology

### 1. Reproduce First
- Check logs (application, system, browser console)
- Check recent changes (`git log`, `git diff`)
- Check environment (dependencies, config, runtime version)

### 2. Isolate the Problem
- Binary search: comment out/disable half, see if issue persists
- Check boundaries: input? output? specific module?
- Trace data flow from source to failure point
- Check assumptions about inputs/state

### 3. Understand Before Fixing
- Identify root cause, not symptom
- Check if bug affects other paths with the same pattern
- Predict what will happen before testing

### 4. Fix Minimal
- Change the minimum necessary
- Don't refactor surrounding code
- If architectural changes needed, discuss with user first

### 5. Verify
- Run the specific reproduction case
- Run existing tests for regressions
- Check other locations with the same pattern

## Common Patterns

**Works locally, not production:** env diffs, build differences, race conditions,
caching (CDN, browser, proxy)

**Was working, now not:** `git log` → `git bisect` → dependency updates →
external service changes

**Slow:** measure first, profile the bottleneck, check N+1 queries, re-renders,
missing indexes, sync operations

**Crashes:** full stack trace, null/undefined at crash point, type mismatches,
resource exhaustion
