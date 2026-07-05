# Make Tweakable: Interactive Parameter Exposure

After a design is complete, add interactive controls so the user can
adjust parameters and see changes live.

## What to Expose
- Colors (primary, accent, background, text)
- Typography (font size, line height, weight)
- Spacing (gap, padding, margin scale)
- Content (headlines, body text, images)

## Implementation
- Single HTML file with CSS custom properties
- JavaScript controls (range sliders, color pickers, dropdowns)
- CSS updates via custom property changes
- No rebuild needed — all in browser

## Rules
- Only expose what the user would realistically tweak
- Label controls in plain language
- Reset button to return to original values
- Don't expose implementation details
