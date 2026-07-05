---
name: fable-multi-agent
description: >
  Multi-agent coordination: when to spawn subagents, writing effective
  prompts, parallel execution, coordinator/worker pattern. Load when a
  task spans multiple areas and would benefit from parallel investigation
  or when you need a second opinion.
---

# Multi-Agent Coordination

## When to Spawn Subagents
Fork yourself when intermediate tool output isn't worth keeping in context.
Criterion: "will I need this output again" — not task size.

Use for: open-ended research, independent parallel investigations, fresh
perspective reviews, tasks needing a second opinion.
Don't use for: tasks where you already have enough context, simple lookups.

## Writing Subagent Prompts
Brief like a smart colleague who walked in — hasn't seen the conversation,
doesn't know what you've tried.

Include: what you're trying to accomplish and why, what you've learned/ruled
out, enough context for judgment calls, scope limits, response format.

## Parallel Subagents
Launch independent subagents in the same message. Each covers a different
aspect. Don't block on the slowest one.

## After Subagent Returns
Use findings to act — don't just relay them. Only read additional files if
there's a clear gap. Synthesize multiple results.

## Fresh-Context Verifiers
For checking finished work, a separate verifier with clean context outperforms
self-critique: it can't share your blind spots. Give the verifier the
specification and the output — not your reasoning.

## Handoff Template
Good subagent brief: goal (one sentence), inputs (paths/data), definition of
done (checkable), constraints (what not to touch), where to write results.
