# USAGE GUIDE — How to Deploy FABLE on Other Models

> This guide explains the deployment strategies, when to use each, and how
> to get the best results from the FABLE behavioral system.

## The Four Strategies

### Strategy 0: Verbatim Leaked Prompt (Maximum Steering Power)
Give the model the actual leaked Fable 5 system prompt verbatim.
**Best for:** Claude Opus 4.8 specifically (proven via head-to-head test)
**Token cost:** ~40,000 tokens
**Expected quality:** 90-95%

### Strategy 1: Distilled Prompt Only (Simplest)
Give the model FABLE.md as its system prompt.
**Best for:** Quick setup, models with strong instruction following
**Token cost:** ~3,000 tokens
**Expected quality:** 70-80%

### Strategy 2: System Prompt + Relevant Modules (Recommended)
Give the model FABLE.md plus specific modules for the task.
**Token cost:** ~3,000 + ~1,500 per module
**Expected quality:** 80-90%

### Strategy 3: Full Behavioral Database (Maximum Fidelity)
FABLE.md + all modules + curated examples from trace data.
**Token cost:** ~15,000-30,000 tokens
**Expected quality:** 90-95%

### Strategy 4: Web Design Mode
FABLE.md + design-system/ — reverse-engineered Claude Design prompt
+ 14 procedural skills. This produces the scroll-animated interactive
websites people post about on X.

## Deployment Examples

### Claude Code (CLAUDE.md)
Place FABLE.md content in your project's CLAUDE.md file. Claude Code
automatically reads it as behavioral instructions.

### Cursor / Windsurf
- Cursor: `.cursor/rules/fable.md` or `.cursorrules`
- Windsurf: `.windsurfrules`

### API
```python
import anthropic
client = anthropic.Anthropic()
with open("FABLE.md") as f:
    fable_prompt = f.read()
response = client.messages.create(
    model="claude-opus-4-8-20250918",
    max_tokens=8192,
    system=fable_prompt,
    messages=[{"role": "user", "content": "Your task"}]
)
```

## What Makes This Work

The behavioral patterns with most impact (in order):
1. "Act, don't ask" — biggest differentiator
2. "Finish what you start" — prevents "I'll do X next" pattern
3. "Verify, don't assume" — actually test work
4. "Lead with outcome" — result-first communication
5. "Research before asking" — eliminates unnecessary questions
6. "Minimal code" — no unnecessary comments or abstractions

## Limitations
- CANNOT make a weak model strong — FABLE enhances behavior, not capability
- CANNOT replicate Fable 5's training — reasoning depth comes from weights
- DOES make any capable model behave more like Fable 5
- DOES eliminate common anti-patterns (over-asking, not finishing, hedging)
