#!/bin/bash

SKILL_DIR="$HOME/.claude/skills"
LINK_NAME="tutorial"

if [ -L "$SKILL_DIR/$LINK_NAME" ]; then
    rm "$SKILL_DIR/$LINK_NAME"
    echo "Uninstalled! Removed symlink: $SKILL_DIR/$LINK_NAME"
else
    echo "Nothing to uninstall. No symlink found at $SKILL_DIR/$LINK_NAME"
fi
