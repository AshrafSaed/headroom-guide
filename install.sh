#!/usr/bin/env bash
# Auto-install for headroom. Reads no secrets, uses no sudo.
set -euo pipefail
command -v uv >/dev/null || { echo "uv is required: https://docs.astral.sh/uv/ (macOS: brew install uv)"; exit 1; }
echo "Installing headroom ..."
uv tool install --python 3.13 "headroom-ai[all]"
echo "Done. Next: Run headroom --help. Optional next step: headroom wrap claude."
