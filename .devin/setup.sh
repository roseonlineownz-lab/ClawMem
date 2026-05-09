#!/bin/bash
set -e

# ClawMem uses Bun (not Node.js)
if ! command -v bun &> /dev/null; then
    curl -fsSL https://bun.sh/install | bash
    export PATH="$HOME/.bun/bin:$PATH"
fi

bun install

echo "[Devin Setup] ClawMem ready"
echo "Run tests: bun test"
echo "Build: bun run build"
