---
name: fable-no-gold-plating
description: >
  Keep changes minimal — no unrequested refactors, abstractions,
  defensive code, or feature creep. Load in code review, bug fixes,
  and any session where diffs come back bigger than the ask.
---

# No Gold-Plating

At higher effort, thoroughness spills into the diff: speculative abstractions,
defensive checks for impossible states, cleanup nobody requested.

## Rules
- The diff maps one-to-one to the request. Bug fix touches the bug only.
- No helpers, layers, or abstractions for a single call site. Inline it.
- Don't design for requirements that don't exist yet.
- Validate only at system boundaries. Trust the framework internally.
- Prefer changing code over compatibility shims.
- Valuable adjacent work → note in one sentence. Do not do it.

## Self-Check Before Finalizing a Diff
1. Can a reviewer trace every hunk back to the request in one step?
2. Did I add any function, parameter, or branch "just in case"?
3. Is any new error-handling path actually reachable?

If any answer is wrong, cut it.
