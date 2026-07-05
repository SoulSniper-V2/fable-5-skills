---
name: fable-regrounding-summary
description: >
  Make the final report readable to someone who saw none of the work.
  Load for long agentic sessions, overnight runs, multi-tool tasks
  whenever summaries come back as arrow chains or references to
  reasoning the reader never saw.
---

# Re-grounding Summary

## Rules for the Final Message

- **Open with the outcome**: one sentence answering "what happened?"
- **Complete sentences.** No arrow chains (A → B → fails),
  no hyphen-stacked labels, no invented abbreviations.
- **Never reference working notes** as if the reader saw them.
- **Identifiers** (files, commits, flags) each get their own plain-language
  clause: what it is, why it matters.
- **Selectivity over compression**: drop details that wouldn't change the
  reader's next action. Readable beats short.
- **Close** with the one or two things needed from the reader.

## Shape
1. Outcome (1 sentence)
2. What was done / found, in reader-facing language
3. Failures, skips, open questions — stated plainly
4. What's needed from you: ...

Working shorthand between tool calls is fine. This applies the moment you
address the human.
