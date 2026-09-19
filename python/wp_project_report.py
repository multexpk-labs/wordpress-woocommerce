#!/usr/bin/env python3
import json
import os
import platform
from pathlib import Path

root = Path(os.environ.get("WP_PROJECT_PATH", ".")).resolve()

report = {
    "path": str(root),
    "platform": platform.platform(),
    "php_markers": sorted(p.name for p in root.glob("*.php"))[:20],
    "wp_content_exists": (root / "wp-content").is_dir(),
    "wp_config_exists": (root / "wp-config.php").is_file(),
    "composer_exists": (root / "composer.json").is_file(),
}

print(json.dumps(report, indent=2))
