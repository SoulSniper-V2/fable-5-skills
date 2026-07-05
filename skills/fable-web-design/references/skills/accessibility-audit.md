# Accessibility Audit

Run this audit on every design before delivery. Accessibility failures
break the design for real users.

## Contrast and Color
- WCAG AA minimums (4.5:1 for body text, 3:1 for large text)
- No color-only signaling (error ≠ red alone, add icon/text)
- Flag pure white on pure black, near-misses on contrast

## Semantic HTML and Structure
- Proper heading hierarchy (one H1, H2 under H1, etc.)
- button vs div for interactive elements
- Labels on all inputs
- Alt text on meaningful images; empty alt on decorative
- ARIA discipline (aria-label, aria-expanded, roles)

## Keyboard Navigation and Focus
- All interactive elements reachable via keyboard
- Logical tab order
- Visible focus indicator (never remove without replacement)
- Skip links for long content

## Motion
- `prefers-reduced-motion` respected
- Flash limits (no more than 3 flashes per second)

## Forms
- Error messages are specific, not generic
- Labels associated with inputs
- Hit target size minimum 44x44px
