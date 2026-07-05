# Interaction States Pass

## Inventory
List every interactive element: buttons, links, inputs, toggles, cards,
dropdowns, modals, tabs.

## For Each Element, Define All States
1. **Default** — resting state
2. **Hover** — mouse over
3. **Active** — pressed/clicking
4. **Disabled** — unavailable
5. **Focus** — keyboard navigation
6. **Loading** — async operation in progress

## Transitions
- State changes: 0.15-0.3s
- Entry/exit animations: 0.3-0.5s
- `prefers-reduced-motion` respected
- Disable transitions on load for performance

## Feedback for Actions
- Success: confirmation that the action completed
- Error: clear error message near the action
- Progress: indicator for operations taking >1s
