#!/usr/bin/env bash
set -u

echo "== WordPress Environment Check =="
echo "Time: $(date -Is)"
echo "Host: $(hostname)"
echo "Kernel: $(uname -sr)"

command -v php >/dev/null 2>&1 && php -v | head -n 1 || echo "PHP: not installed"
command -v wp >/dev/null 2>&1 && wp --info || echo "WP-CLI: not installed"

echo "--- Resources ---"
df -h /
free -h 2>/dev/null || true

echo "--- Listening services ---"
ss -lnt 2>/dev/null || true
