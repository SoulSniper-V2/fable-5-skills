# Component Extract: Pull Components from a Codebase

When a project has an existing component library, extract it into a
structured reference document so design work stays consistent with what's
already built.

## What to Extract

For each component:
- Component name and file path
- Props/API surface
- Visual variants (size, color, state)
- Usage examples in the codebase
- Accessibility hooks (aria attributes, keyboard behavior)

## Output Format

Produce a structured reference:
```
## Component: Button
**Path:** src/components/Button.tsx
**Props:** variant (primary|secondary|ghost), size (sm|md|lg), disabled
**States:** default, hover, active, focus, disabled, loading
**Example:**
  <Button variant="primary" size="md">Click me</Button>
**Accessibility:** aria-pressed for toggle buttons, role=button for divs
```

## Anti-patterns
- Don't extract what you can see — read the source
- Don't invent props that don't exist
- Don't skip state documentation
