# CLAUDE.md

## Overview

Claude Code slash command tutorial skill. Teaches users Claude Code commands interactively across 7 modules (kr/en bilingual).

## Command Verification — Read This Before Editing

### The official docs table is intentionally incomplete

The built-in commands table at https://code.claude.com/docs/en/interactive-mode explicitly states:

> "The table below covers commonly used commands but **not all available options**. Type `/` in Claude Code to see the full list."

**Do NOT use the docs table as a definitive list.** Commands missing from that table may still be built-in.

### How to verify if a command is built-in

1. **Primary source**: Type `/` in Claude Code and check the actual autocomplete list
2. **Secondary source**: Search official docs beyond the interactive-mode page (e.g., hooks-guide references `/hooks` as a built-in slash command, even though it's not in the main table)
3. **Web search**: Search for the specific command with "Claude Code" to find official references
4. **Do NOT assume**: If a command is absent from the interactive-mode table, that alone does not mean it's not built-in

### Confirmed built-in commands NOT in the docs table (as of 2026-02)

These commands are confirmed built-in but do not appear in the interactive-mode command table:

- `/hooks` — Confirmed via [hooks-guide](https://code.claude.com/docs/en/hooks-guide) ("Run the `/hooks` slash command")
- `/review` — Confirmed via `/` autocomplete ("Review a pull request")
- `/vim` — Referenced in interactive-mode page text but not in the table
- `/login`, `/logout` — Confirmed via web search, had availability bugs in some versions
- `/bug` — Confirmed via web search

### Commands intentionally excluded from this tutorial

- `/fast` — Research Preview feature (Feb 2026). May change or be removed. Requires Extra Usage billing. Not appropriate for a general tutorial.
- `/vim` — Niche (vim users only). Toggle command with minimal teaching value for general audience.
- `/terminal-setup` — Trivial in many terminals (e.g., Ghostty returns "No configuration needed"). Not worth a tutorial section.
- `/login`, `/logout` — Users are already authenticated when starting the tutorial. No meaningful practice step.
- `/bug` — Too minor for tutorial inclusion. Simple enough to discover via `/help`.

### Lesson learned

When verifying commands, always cross-reference multiple official doc pages and the actual CLI output. A single doc page is never the complete source of truth.
