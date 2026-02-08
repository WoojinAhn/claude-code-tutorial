# Slash Commands Cheatsheet

Your quick-reference card for every Claude Code slash command. Bookmark this page.

---

## Quick Reference

| Command | Description | When to Use |
|---------|-------------|-------------|
| `/help` | List all available commands | When you forget a command or want to explore |
| `/status` | Show session info and current model | When you need to check your setup |
| `/clear` | Erase conversation and start fresh | When switching to a completely new task |
| `/cost` | Show token usage and estimated cost | When monitoring usage during long sessions |
| `/init` | Create CLAUDE.md project instructions | When setting up Claude Code in a new project |
| `/memory` | View and edit CLAUDE.md | When updating project conventions or instructions |
| `/model` | Switch between Claude models | When you need more power (Opus) or more speed (Haiku) |
| `/config` | View and edit global configuration | When adjusting default behavior and preferences |
| `/compact` | Compress conversation to save context | When your session gets long and Claude starts forgetting |
| `/permissions` | Manage tool access permissions | When adjusting what Claude can do automatically |
| `/doctor` | Run a health check diagnostic | When something isn't working and you don't know why |
| `/vim` | Toggle vim keybindings | When you want modal editing for prompts |
| `/terminal-setup` | Configure terminal display | When output looks garbled or misaligned |
| `/review` | Start a code review | Before pushing changes, to catch issues early |
| `/hooks` | Manage pre/post action hooks | When automating formatting, linting, or notifications |
| `/mcp` | Manage MCP server connections | When connecting to external tools and data sources |
| `/login` | Authenticate with Claude Code | When setting up or refreshing authentication |
| `/logout` | End your authenticated session | When switching accounts or leaving a shared machine |
| `/bug` | Report a bug to the Claude Code team | When you encounter unexpected behavior |

---

## Grouped by Category

### Getting Started
| Command | What It Does |
|---------|-------------|
| `/help` | Show all available commands |
| `/status` | Check session info and current model |
| `/clear` | Wipe conversation and start fresh |
| `/cost` | View token usage and estimated cost |

### Project Setup
| Command | What It Does |
|---------|-------------|
| `/init` | Generate CLAUDE.md with project context |
| `/memory` | Open CLAUDE.md for viewing/editing |
| `/model` | Switch between Sonnet, Opus, and Haiku |
| `/config` | Manage global Claude Code settings |

### Context Management
| Command | What It Does |
|---------|-------------|
| `/compact` | Summarize conversation to free context space |
| `/permissions` | Control what Claude can do automatically |

### Developer Tools
| Command | What It Does |
|---------|-------------|
| `/doctor` | Diagnose configuration and connectivity issues |
| `/vim` | Toggle vim-style keybindings |
| `/terminal-setup` | Configure terminal for optimal display |
| `/review` | Get code review feedback on changes |

### Integrations
| Command | What It Does |
|---------|-------------|
| `/hooks` | Set up pre/post action automations |
| `/mcp` | Connect external tools via MCP protocol |
| `/login` | Authenticate or refresh session |
| `/logout` | End authenticated session |
| `/bug` | Report an issue to the Claude Code team |

---

## Common Workflows

### Starting a New Project
```
/init            --> Create CLAUDE.md
/memory          --> Refine the generated instructions
/permissions     --> Set up appropriate access levels
```

### Daily Development Session
```
/status          --> Confirm model and session
/model sonnet    --> Start with balanced model
... work ...
/compact         --> Free up context after a big task
/cost            --> Check usage
```

### Debugging a Problem
```
/doctor          --> Check if the issue is configuration-related
/model opus      --> Switch to most capable model for hard bugs
... debug ...
/model sonnet    --> Switch back when done
```

### Pre-Push Routine
```
/review          --> Get feedback on your changes
... address feedback ...
/cost            --> Check session cost
```

### Something Broken?
```
/doctor          --> Run diagnostics
/login           --> Refresh authentication if needed
/bug             --> Report if it's a Claude Code issue
```

---

## Key Differences

| | /clear | /compact |
|---|--------|---------|
| History | Erased | Summarized |
| Context | Lost | Preserved |
| Use when | New task | Same task, long session |

| | /init | /memory |
|---|-------|---------|
| Purpose | Create CLAUDE.md | Edit CLAUDE.md |
| Use when | First time setup | Ongoing refinement |

| | /login | /logout |
|---|--------|---------|
| Purpose | Start/refresh auth | End auth session |
| Use when | Session expired | Switching accounts |

---

*Completed the tutorial? You're ready. Go build something.*
