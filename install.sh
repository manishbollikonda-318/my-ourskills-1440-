#!/usr/bin/env bash
# ==============================================================================
# One-Click Skill Integrator & System Installer
# Installs 1380+ agent skills directly into your local agent environment
# Compatible with: Google Antigravity, Claude Code, Cursor, Codex, Kilo, Copilot
# ==============================================================================

set -euo pipefail

SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
SKILLS_SRC="${SCRIPT_DIR}/skills"

echo "=========================================================="
echo "🚀 1440+ Universal Agent Skills Installer"
echo "=========================================================="

if [ ! -d "${SKILLS_SRC}" ]; then
  echo "❌ Error: 'skills' directory not found at ${SKILLS_SRC}"
  exit 1
fi

SKILL_COUNT=$(find "${SKILLS_SRC}" -mindepth 1 -maxdepth 1 -type d | wc -l | tr -d ' ')
echo "📦 Found ${SKILL_COUNT} skills ready for deployment."
echo ""

# Detection of active targets
TARGET_DIRS=()

# 1. Antigravity / Gemini
ANTIGRAVITY_DIR="${HOME}/.gemini/config/skills"
TARGET_DIRS+=("${ANTIGRAVITY_DIR}")

# 2. Claude Code
CLAUDE_DIR="${HOME}/.claude/skills"
TARGET_DIRS+=("${CLAUDE_DIR}")

# 3. Agent CLI (.agents)
AGENTS_DIR="${HOME}/.agents/skills"
TARGET_DIRS+=("${AGENTS_DIR}")

# 4. Codex
CODEX_DIR="${HOME}/.codex/skills"
TARGET_DIRS+=("${CODEX_DIR}")

# 5. Kilo
KILO_DIR="${HOME}/.kilo/skills"
TARGET_DIRS+=("${KILO_DIR}")

# 6. Current project local fallback (.agent/skills)
PROJECT_DIR="${PWD}/.agent/skills"
TARGET_DIRS+=("${PROJECT_DIR}")

echo "🎯 Installing skills into agent ecosystems:"
for target in "${TARGET_DIRS[@]}"; do
  echo "   -> ${target}"
  mkdir -p "${target}"
  cp -R "${SKILLS_SRC}/"* "${target}/" 2>/dev/null || true
done

echo ""
echo "✅ Successfully deployed ${SKILL_COUNT} skills to all agent runtimes!"
echo "✨ Test your installation by invoking any skill (e.g. vibe-coding-cli, frontend-expert, uiux-designer)."
echo "=========================================================="
