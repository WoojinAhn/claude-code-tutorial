#!/bin/bash

SKILL_DIR="$HOME/.claude/skills"
LINK_NAME="tutorial"
TARGET="$(cd "$(dirname "$0")" && pwd)"

if [ ! -d "$SKILL_DIR" ]; then
    mkdir -p "$SKILL_DIR"
    echo "Created $SKILL_DIR"
fi

if [ -L "$SKILL_DIR/$LINK_NAME" ]; then
    echo "Symlink already exists at $SKILL_DIR/$LINK_NAME"
    echo "Updating to point to $TARGET"
    rm "$SKILL_DIR/$LINK_NAME"
fi

if [ -d "$SKILL_DIR/$LINK_NAME" ]; then
    echo "Error: $SKILL_DIR/$LINK_NAME already exists as a directory."
    echo "Please remove it manually and re-run this script."
    exit 1
fi

ln -s "$TARGET" "$SKILL_DIR/$LINK_NAME"
echo "Installed! Symlink created:"
echo "  $SKILL_DIR/$LINK_NAME -> $TARGET"
echo ""
echo "Usage:"
echo "  Start Claude Code and type /tutorial en (English) or /tutorial kr (Korean)"
