---
name: fable-effort-calibrator
description: >
  Choose and tune the effort setting for Fable workloads. Load when the
  user asks which effort level to use, complains Fable is slow or
  expensive, wants to cut latency, or is designing a pipeline mixing
  routine and hard tasks.
---

# Effort Calibrator

Match effort to task class. Route by task type, not a single global setting.

## Starting Points by Workload

| Workload | Start at |
|----------|----------|
| Routine transforms, classification, short edits | `medium` (try `low` if latency matters) |
| Most analysis and writing | `high` (general default) |
| Coding and agentic work | `high`, escalating to `xhigh` for hard tasks |
| Hardest: large migrations, multi-day runs, novel research | `xhigh` |
| Frontier problems where xhigh has measurably fallen short | `max` |

`max` is rarely right: significant cost for small gains, tips into
overthinking. Use only when `xhigh` has measurably fallen short.

## Adjustment Signals

**Lower effort when:**
- Tasks complete correctly but take longer than the work warrants
- Session is interactive and waiting hurts more than quality helps
- Output shows over-deliberation before trivial actions

**Raise effort when:**
- First-shot correctness matters more than turnaround
- Task benefits from rigorous self-verification
- Task failed in a way that looks like shallow reasoning

## Pipeline Pattern
Triage at `low`/`medium`, escalate hard cases to `high`/`xhigh`. Usually
dominates any fixed setting on both cost and quality.
