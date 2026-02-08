# Claude Code Slash Commands Tutorial

An interactive tutorial that teaches Claude Code slash commands — right inside Claude Code itself.

No terminal switching, no external tools. Just `/tutorial` and learn by doing.

## Features

- **Interactive**: Learn one command at a time with explain, demo, practice, and tips
- **Bilingual**: Full support for English (`en`) and Korean (`kr`)
- **16 commands** across 5 modules + cheatsheet
- **Self-paced**: Skip, jump to any module, or quit anytime

## Requirements

- [Claude Code](https://docs.anthropic.com/en/docs/claude-code) installed and authenticated

## Installation

```bash
git clone <repo-url> ~/claude-code-tutorial
cd ~/claude-code-tutorial
chmod +x install.sh && ./install.sh
```

This creates a symlink from `~/.claude/skills/tutorial` to the repo directory.

## Usage

Start Claude Code and type:

| Command | Description |
|---------|-------------|
| `/tutorial` | Start (asks language preference) |
| `/tutorial en` | Start in English |
| `/tutorial kr` | Start in Korean |
| `/tutorial en 3` | Jump to Module 3 (English) |
| `/tutorial kr 2` | Jump to Module 2 (Korean) |
| `/tutorial cheatsheet` | Quick reference card |

## Curriculum

| Module | Topic | Commands |
|--------|-------|----------|
| 1 | First Steps | `/help`, `/status`, `/clear`, `/cost` |
| 2 | Project Setup | `/init`, `/memory`, `/model`, `/config` |
| 3 | Context & Permissions | `/compact`, `/permissions` |
| 4 | Developer Tools | `/doctor`, `/vim`, `/terminal-setup`, `/review` |
| 5 | Integrations | `/hooks`, `/mcp`, `/login`, `/logout`, `/bug` |
| - | Cheatsheet | All commands reference |

## Uninstall

```bash
cd ~/claude-code-tutorial
./uninstall.sh
```

## Contributing

PRs welcome! To add or improve content:

1. Module files are in `en/` (English) and `kr/` (Korean)
2. Follow the Explain/Syntax/Example/Practice/Check/Tip pattern
3. Keep language conversational and encouraging
4. Test by running `/tutorial` in Claude Code

## License

MIT
