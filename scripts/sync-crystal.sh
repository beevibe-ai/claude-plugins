#!/usr/bin/env bash
set -euo pipefail

SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
REPO_ROOT="$(cd "$SCRIPT_DIR/.." && pwd)"
BEEVIBE_ROOT="${BEEVIBE_ROOT:-$(cd "$REPO_ROOT/../beevibe" 2>/dev/null && pwd || true)}"

if [[ -z "$BEEVIBE_ROOT" || ! -d "$BEEVIBE_ROOT/packages/beevibe-crystal/plugin" ]]; then
  echo "Set BEEVIBE_ROOT to a Beevibe checkout containing packages/beevibe-crystal/plugin." >&2
  exit 1
fi

rsync -a --delete \
  "$BEEVIBE_ROOT/packages/beevibe-crystal/plugin/" \
  "$REPO_ROOT/plugins/crystal/"

claude plugin validate "$REPO_ROOT/.claude-plugin/marketplace.json"
claude plugin validate "$REPO_ROOT/plugins/crystal"
