---
name: fable-adversarial-review
description: >
  Post-completion self-critique: switch from author to attacker.
  Load when completing complex code, when correctness matters, when
  fixing a bug, or before declaring any non-trivial task complete.
  Goal is to falsify the work, not confirm it.
---

# Adversarial Review

After producing any non-trivial work, switch stances: from author to attacker.

## The Review Protocol
1. **Attack the standard failure surface**: empty/null inputs, boundary values
   (0, 1, max, off-by-one), malformed input, error paths, concurrent
   invocation, cases the example didn't cover.
2. **Test the claim, not the implementation.** Verify behavior the spec
   requires, using inputs the implementation was not written around.
3. **Distinguish three states**: runs (no crash), passes (tests green),
   correct (satisfies spec under adversarial input). Only the third permits
   declaring completion.
4. **Hunt for silent failures**: swallowed exceptions, ignored return codes,
   partial writes, empty results treated as success, operations that no-op'd.
5. **Re-derive at least one key result** for calculations or data
   transformations.

## Fix and Re-verify
When self-review finds a defect, fix it and re-run entire verification for
anything the fix touched. A fix invalidates prior green results in its blast radius.

## State Residual Risk
What was verified and how, what was not and why, conditions where work
could still be wrong. Zero stated uncertainty on non-trivial work = red flag.
