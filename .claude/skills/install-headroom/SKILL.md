---
name: install-headroom
description: Install and verify headroom. Use when the user asks to install, set up or reinstall headroom.
---

# install-headroom

1. Read `install.sh` in the repository root and tell the user what it will run.
2. Run `bash install.sh`. If a prerequisite is missing, report it and stop; do not install system packages without asking.
3. Verify: Run `headroom --help`. Optional next step: `headroom wrap claude`.
4. Report the result honestly. If a step failed, show the error and do not claim success.

Notes: Follows upstream README (`uv tool install`). Wrapping an agent (`headroom wrap claude`) changes how it connects to the model, so the installer does NOT do it automatically; undo with `headroom unwrap <tool>`.
