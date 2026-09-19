#!/usr/bin/env bash
set -u

SITE_URL="${1:-http://127.0.0.1}"

echo "Checking: $SITE_URL"

if command -v curl >/dev/null 2>&1; then
  curl -fsS -o /dev/null -w "HTTP %{http_code} | %{time_total}s\n" "$SITE_URL" || {
    echo "HTTP health check failed"
    exit 1
  }
else
  echo "curl is required"
  exit 2
fi
