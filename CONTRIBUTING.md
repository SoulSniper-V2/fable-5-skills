# Contributing

## Adding a Skill

1. Create a new directory under `skills/`
2. Add a `SKILL.md` with YAML frontmatter (`name`, `description`) + body
3. Keep SKILL.md body under 500 lines — move detail to `references/`
4. Description must be trigger-rich — Claude matches requests against it
5. Test with Haiku, Sonnet, and Opus if possible

## Skill Quality Bar

- Every rule must have a reason stated
- Progressive disclosure: supporting files load on demand
- No capability compensation (hand-holding for older models)
- One concept per skill — don't bundle unrelated behaviors
- Ground every claim in observed behavior from traces
