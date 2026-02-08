# Slash Commands Cheatsheet

Your quick-reference card for every Claude Code slash command. Bookmark this page.

---

## Quick Reference

| Command | Description | When to Use |
|---------|-------------|-------------|
| `/help` | List all available commands | When you forget a command or want to explore |
| `/status` | Show session info and current model | When you need to check your setup |
| `/clear` | Erase conversation and start fresh | When switching to a completely new task |
| `/init` | Create CLAUDE.md project instructions | When setting up Claude Code in a new project |
| `/memory` | View and edit CLAUDE.md | When updating project conventions or instructions |
| `/permissions` | Manage tool access permissions | When adjusting what Claude can do automatically |
| `/model` | Switch between Claude models | When you need more power (Opus) or more speed (Haiku) |
| `/plan` | Enter plan mode | When you want Claude to analyze before acting |
| `/compact` | Compress conversation to save context | When your session gets long and Claude starts forgetting |
| `/context` | Visualize context window usage | When you want to see how much context space is left |
| `/cost` | Show token usage and cost (API users) | When monitoring API billing during long sessions |
| `/stats` | Show usage patterns and history | When reviewing how you use Claude Code over time |
| `/resume` | Resume a previous session | When picking up where you left off |
| `/rewind` | Rewind conversation and/or code | When Claude went down the wrong path |
| `/rename` | Name the current session | When you want to find this session easily later |
| `/copy` | Copy last response to clipboard | When you want to paste Claude's response elsewhere |
| `/doctor` | Run a health check diagnostic | When something isn't working and you don't know why |
| `/theme` | Change color theme | When you want a different look |
| `/review` | Start a code review | Before pushing changes, to catch issues early |
| `/config` | View and edit global configuration | When adjusting default behavior and preferences |
| `/hooks` | Manage pre/post action hooks | When automating formatting, linting, or notifications |
| `/mcp` | Manage MCP server connections | When connecting to external tools and data sources |
| `/agents` | Manage background agents | When monitoring parallel tasks or stopping agents |
| `/debug` | Troubleshoot session using debug logs | When tracing the cause of unexpected behavior in the current session |
| `/export` | Export conversation to file or clipboard | When you want to save or share the conversation |
| `/usage` | Show subscription plan usage and rate limits | When checking remaining quota (subscribers only) |

---

## Grouped by Category

### Getting Started
| Command | What It Does |
|---------|-------------|
| `/help` | Show all available commands |
| `/status` | Check session info and current model |
| `/clear` | Wipe conversation and start fresh |

### Project Setup
| Command | What It Does |
|---------|-------------|
| `/init` | Generate CLAUDE.md with project context |
| `/memory` | Open CLAUDE.md for viewing/editing |
| `/permissions` | Control what Claude can do automatically |

### Model & Modes
| Command | What It Does |
|---------|-------------|
| `/model` | Switch between Sonnet, Opus, and Haiku |
| `/plan` | Enter plan mode — analyze before acting |

### Context & Usage
| Command | What It Does |
|---------|-------------|
| `/compact` | Summarize conversation to free context space |
| `/context` | Visualize context window usage |
| `/cost` | Track API token costs (API users) |
| `/stats` | View usage patterns and history |
| `/usage` | Show subscription plan usage and rate limits (subscribers only) |

### Session Management
| Command | What It Does |
|---------|-------------|
| `/resume` | Continue a previous session |
| `/rewind` | Go back to a previous conversation/code state |
| `/rename` | Give the current session a name |
| `/copy` | Copy last response to clipboard |
| `/export` | Export conversation to file or clipboard |

### Developer Tools
| Command | What It Does |
|---------|-------------|
| `/doctor` | Diagnose configuration and connectivity issues |
| `/debug` | Troubleshoot session using debug logs |
| `/theme` | Change the color theme |
| `/review` | Get code review feedback on changes |

### Advanced
| Command | What It Does |
|---------|-------------|
| `/config` | Manage global Claude Code settings |
| `/hooks` | Set up pre/post action automations |
| `/mcp` | Connect external tools via MCP protocol |
| `/agents` | Manage background agents |

---

## Common Workflows

### Starting a New Project
```
/init            --> Create CLAUDE.md
/memory          --> Refine the generated instructions
/permissions     --> Set up appropriate access levels
/config          --> Fine-tune global settings
```

### Daily Development Session
```
/status          --> Confirm model and session
/model sonnet    --> Start with balanced model
... work ...
/context         --> Check context usage
/compact         --> Free up context after a big task
```

### Complex Task
```
/plan            --> Have Claude analyze before acting
... review plan ...
/model opus      --> Switch to most capable model if needed
... implement ...
/rewind          --> Go back if the approach doesn't work
```

### Long Session Management
```
/rename my-task  --> Name the session for later
/compact         --> Compress periodically
/stats           --> Check usage patterns
... done for now ...
/resume my-task  --> Pick up tomorrow
```

### Pre-Push Routine
```
/review          --> Get feedback on your changes
... address feedback ...
/copy            --> Copy useful output to PR description
```

### Something Broken?
```
/doctor          --> Run diagnostics
/status          --> Check model and session
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

| | /cost | /stats |
|---|-------|--------|
| For | API users | All users (especially subscribers) |
| Shows | Token costs and billing | Usage patterns, streaks, history |

| | /plan mode | Normal mode |
|---|-----------|-------------|
| Claude can | Read, analyze, plan | Read, write, execute |
| Use when | Complex tasks, want to review approach first | Ready to make changes |

---

## Keyboard Shortcuts (Bonus)

| Shortcut | What It Does |
|----------|-------------|
| `Esc` | Return to conversation from interactive screens (picker, settings, etc.) |
| `Shift+Tab` / `Alt+M` | Cycle permission modes (Normal → Plan → Auto-Accept) |
| `Esc Esc` | Rewind (same as `/rewind`) |
| `Ctrl+C` | Cancel current generation |
| `Ctrl+D` | Exit session |
| `Ctrl+G` | Edit prompt in default text editor |
| `Ctrl+L` | Clear terminal screen (keeps conversation) |
| `Ctrl+O` | Toggle verbose output (show tool usage details) |
| `Ctrl+R` | Reverse search command history |
| `Ctrl+B` | Run task in background |
| `Ctrl+T` | Toggle task list |
| `Ctrl+V` / `Cmd+V` | Paste image from clipboard |
| `Option+P` / `Alt+P` | Switch model |
| `Option+T` / `Alt+T` | Toggle extended thinking |
| `!command` | Run bash command directly |

---

*Completed the tutorial? You're ready. Go build something.*
