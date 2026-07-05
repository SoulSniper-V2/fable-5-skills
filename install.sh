#!/bin/bash
# Install FABLE skills to ~/.claude/skills/
set -e
SCRIPT_DIR="$(cd "$(dirname "$0")" && pwd)"

echo "Installing FABLE 5 Skills..."
echo ""

SKILLS=(
  "fable-core"
  "fable-code-review"
  "fable-debugging"
  "fable-autonomous"
  "fable-autonomous-continuation"
  "fable-web-design"
  "fable-multi-agent"
  "fable-plan-mode"
  "fable-effort-calibrator"
  "fable-grounded-progress"
  "fable-act-when-ready"
  "fable-scope-guard"
  "fable-no-gold-plating"
  "fable-regrounding-summary"
  "fable-adversarial-review"
  "fable-markdown-memory"
  "fable-subagent-orchestration"
  "fable-skill-refactorer"
)

for skill in "${SKILLS[@]}"; do
  cp -r "$SCRIPT_DIR/skills/$skill" ~/.claude/skills/
  echo "  + $skill"
done

echo ""
echo "Done. Restart Claude Code or run /skills to verify."
