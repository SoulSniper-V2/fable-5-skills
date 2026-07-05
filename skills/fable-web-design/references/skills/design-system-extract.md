# Design System Extract: Pull Tokens from Sources

Extract design tokens (color, typography, spacing, radii, shadow) from a
brand reference, codebase, or screenshots.

## What to Extract

**Colors**: brand primary/accent, semantic colors, neutral scale (9-11 steps),
surface colors
**Typography**: font families, size scale, weights, line heights, letter spacing
**Spacing**: actual scale in use (typically 4px or 8px base)
**Radii**: values used (0, 4, 8, 12, 9999)
**Shadows**: elevations (sm through xl)
**Other**: z-index, animation duration/easing, breakpoints, container widths

## Output
Emit a `tokens.css` or matching format. Structure as CSS custom properties
under `:root`. Flag inconsistencies. Summarize: sources used, categories
extracted, gaps, inconsistencies.
