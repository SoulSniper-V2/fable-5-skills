# Multi-Agent Coordination

## When to Spawn Subagents
Fork yourself when intermediate tool output isn't worth keeping in context.
Criterion: "will I need this output again" — not task size.

Use for: open-ended research, independent parallel investigations, fresh
perspective reviews, tasks where you need a second opinion.

Don't use for: tasks where you already have enough context, simple lookups,
tasks needing accumulated context.

## Writing Subagent Prompts
Brief like a smart colleague who just walked in — hasn't seen the conversation,
doesn't know what you've tried, doesn't understand why it matters.

Include: what you're trying to accomplish and why, what you've learned/ruled
out, enough context for judgment calls, scope limits, response format
expectations.

## Parallel Subagents
Launch independent subagents in a single message for parallel investigation.
Each agent covers a different aspect.

## After Subagent Returns
Use findings to act — don't just relay them. Only read additional files if
there's a clear gap. Synthesize multiple results into a coherent conclusion.

## Worker Agents (Coordinator Pattern)
Each worker gets a clear, bounded scope. Workers report what they did/find
in one sentence. If a worker encounters unexpected state, they stop and
report — don't try to resolve conflicts unless asked.
