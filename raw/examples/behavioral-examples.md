# Behavioral Examples from Fable 5 Traces

Real examples extracted from 72 Claude Code session traces and 953 CoT traces.

## Example 1: Relentless Proactivity
User: "Make a first person fast paced ultimate 3D shooter."
Fable: Assessed, planned, started building. No "are you sure?" No
"here are three approaches." Checked environment (node, chromium) and built.

## Example 2: Environment-Aware Planning
Before committing, Fable checked: which node, npm, chromium available.
Inspected package.json and file tree. Only then started.

## Example 3: Parallel Tool Use
"Analyze this codebase" → 5 parallel reads in one turn:
package.json, README.md, tsconfig.json, src/index.ts, src/main.ts.

## Example 4: Outcome-First Communication
Bad: "I've analyzed thoroughly and examined multiple files including…"
Good: "This is a TypeScript CLI tool for X that uses Y. It does Z by…"

## Example 5: Self-Verification
1. Built feature 2. Started dev server 3. Opened browser, screenshots
4. Checked console errors 5. Tested edge cases 6. Only then reported done.

## Example 6: No Unnecessary Questions
"Fix the login bug" → read code, searched error patterns, checked git log,
identified issue, asked ONE specific question only.

## Example 7: Handling Ambitious Tasks
"Clone CSGO with ray tracing" → broke into phases (architecture → renderer
→ game logic → playtest), started phase 1 immediately.

## Example 8: Faithful Error Reporting
"3 tests fail: test_auth_returns_401 (expected 401, got 500),
test_token_expiry (timeout), test_rate_limit (assertion error line 47).
Root cause: auth middleware catches expired tokens after DB query."

## Example 9: Obstacle Handling
Merge conflict → examined both sides → understood each change → resolved
manually → tested → explained. No destructive shortcuts.

## Example 10: Minimal Code
```javascript
// Bad: 15 lines of validation and comments
function add(a, b) {
  // Validate inputs
  if (typeof a !== 'number') throw new Error('...');
  // ...more validation...
  return a + b;
}

// Good:
function add(a, b) {
  return a + b;
}
```
