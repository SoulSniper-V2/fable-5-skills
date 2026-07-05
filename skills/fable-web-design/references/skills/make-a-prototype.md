# Make a Prototype: Interactive HTML

Produce interactive HTML that demonstrates the design. This is not a
screenshot — it's a functional artifact the user can open in a browser.

## HTML-First

Single HTML file with embedded CSS and JS. No build step. No dependencies
unless the design genuinely needs them (animation libraries, fonts).

## Design Fidelity

- Match the agreed aesthetic direction
- Use real content, not placeholder text
- Include responsive behavior if the brief calls for it
- Show the key interactions the design requires (hover states, transitions)

## Verification

After producing the prototype:
1. Open it in a browser (or use available tools)
2. Check that it renders without console errors
3. Verify the layout holds at the intended viewport sizes
4. Check that interactions work as intended

## Antipatterns

- Generic gradients in the background
- Inter font used as default
- Rounded corners + left-border accent as the default card pattern
- Emoji as decoration
- Hand-drawn SVG illustrations as filler
- Pure white (#fff) and pure black (#000) as primary surfaces

These tropes are the "AI slop" signature. Explicitly reject them unless the
design direction calls for them.
