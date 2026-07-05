# Code Review

## Phase 0: Gather the Diff
Get the unified diff under review:
- Use `git diff @{upstream}...HEAD` (or `git diff main...HEAD` / `git diff HEAD~1`)
- If uncommitted changes exist or range diff is empty, also run `git diff HEAD`

## Review Dimensions

### Correctness
Does the code do what it claims? Look for off-by-one errors, missing null
checks at boundaries, race conditions, state mutations affecting other
consumers, edge cases not handled.

### Altitude
Check that changes are implemented at the right depth. Special cases layered
on shared infrastructure signal the fix isn't deep enough — prefer
generalizing the underlying mechanism.

### Efficiency
Flag redundant computation, sequential independent operations, blocking work
on startup/hot paths, closures keeping enclosing scope alive.

### Security
Injection vectors, auth gaps, secrets in code, unsafe deserialization,
missing input validation at boundaries.

### Maintainability
Will a future reader understand without git blame? Naming consistent?
Tech debt flagged?

## Output Format
1. What you found — with file paths, line numbers, code snippets
2. Severity — blocking vs. suggestion vs. nit
3. Recommendation — what specifically to change

Focus on things that change behavior, introduce bugs, or create maintenance
burden. Independent review: start fresh, don't inherit previous analysis.
