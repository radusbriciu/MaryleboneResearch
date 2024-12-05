#!/bin/bash

SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"

if [ -d "$SCRIPT_DIR" ]; then
    find "$SCRIPT_DIR" -maxdepth 1 -type f ! -name "*.sh" ! -name "*.bat" ! -name "*.tex" ! -name "*.bib" ! -name "*.pdf" ! -name "*.md" ! -name "LICENSE" ! -name ".gitignore" -exec rm {} \;

    echo "Cleanup complete"
else
    echo "Directory $SCRIPT_DIR does not exist."
fi