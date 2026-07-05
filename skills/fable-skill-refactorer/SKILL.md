---
name: fable-skill-refactorer
description: >
  Audit and rewrite existing agent skills, system prompts, and
  instruction files for Fable. Use when migrating, upgrading, porting,
  or fixing a skill written for earlier models that now produces worse
  output under Fable.
---

# Skill Refactorer for Fable

Skills for earlier models encode capability compensation: step-by-step
hand-holding, exhaustive edge-case enumeration, rigid micro-workflows that
existed because older models needed them. Fable follows instructions strictly
enough that this becomes a straitjacket.

## Workflow

1. **Inventory.** List every imperative instruction as a line item
2. **Classify** into exactly one bucket:
   - **Guardrail** — protects a real current risk (data loss, secrets,
     destructive commands). KEEP.
   - **Preference** — genuine style/format choice. KEEP, compress.
   - **Compensation** — existed because older model would fail (forced step
     sequences, forced re-reads, verbose templates). DELETE or replace with
     single intent statement.
3. **Rewrite.** For every compensation: "what outcome was this guaranteeing?"
   State outcome once, not procedure.
4. **Tighten** description field; body assumes skill already fired.
5. **Length check.** Refactored skill is typically 30-60% shorter.

## Red Flags (compensation markers)
- Numbered procedures where order doesn't matter
- Same warning in different words
- Output templates fixing structure user never asked for
- "Think step by step" without concrete check
- Instructions to narrate internal reasoning in response
