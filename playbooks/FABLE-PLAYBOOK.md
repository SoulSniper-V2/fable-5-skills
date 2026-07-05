# Execution Playbook — Measured Fable 5 patterns

This playbook puts Fable 5 behavioral patterns next to Opus 4.8 patterns,
backed by session data: 1,307 Fable 5 turns vs 10,470 Opus 4.8 turns
across 382 sessions.

## What Actually Separated Them

| Behavior | Fable 5 | Opus 4.8 |
|----------|---------|----------|
| Reasons before acting | 70.5% | 47.5% |
| Reads file before editing | 78% | 69% |
| Any check after edit | 82.4% | 91.6% |
| Runs real test after edit | 83.2% | 90.9% |
| Says something to user | 23.9% | 77.5% |
| Max tools per turn | 7 | 14 |

**Fable's real signature is reasoning density** — it thinks ~1.5x as often
before acting. Read-before-edit is real but modest (78% vs 69% on existing
files). Verification is Fable's weak spot — do not copy this.

## Cross-validation (public Fable 5 dataset)
4,665 public trace events confirm: verification is Fable's least reliable
habit (59.7% real-test-after-edit on public set). Two independent sources
agree — enforce verification with a hook, not intention.

## Key Insight
Reasoning density, not read-discipline, is the thing to actually copy.
Fable's value is in the quality of the decision, not the thoroughness of
preparation.
