# Module 7: Advanced

This module is optional. The core commands from Modules 1-6 are all you need for everyday Claude Code usage.

Here you'll learn how to deeply customize Claude Code and connect it with external tools. Each command is independent, so feel free to learn only the ones that interest you.

---

## 7.1 /config

**Explain:** `/config` lets you view and edit Claude Code's full configuration. While `/permissions` (Module 2) focuses on tool access, `/config` covers broader settings — default model, theme, auto-execution rules, and more.

**Syntax:**
```
/config
```

**Example:** Running `/config` opens the settings interface. Key settings include:
- Which actions require confirmation vs. run automatically
- Default model preference
- Theme and display settings
- Tool permissions (global and project level)

**Practice:** Run `/config` and find your **current default model** in the settings. What is it set to?

**Check:** Settings are split between global (`~/.claude/`) and project level (`.claude/` directory). This distinction is useful when different projects need different configurations.

**Tip:** The most impactful config for productivity is auto-allowing safe operations (tests, lint). Start restrictive and gradually open up as you build trust.

Use `AskUserQuestion` to ask whether to continue:
- **Continue** — Learn the next command (`/hooks`)
- **Finish here** — Show the cheatsheet and end the tutorial

---

## 7.2 /hooks

**Explain:** `/hooks` manages event hooks — shell commands that run automatically when certain events occur. For example, "auto-run the formatter every time Claude modifies a file." Hooks let you enforce workflows without manual intervention.

**Syntax:**
```
/hooks
```

**Example:** Running `/hooks` shows the hook configuration menu. Configurable event types:
- **After file edit:** Auto-run formatters (prettier, black, etc.)
- **Before/after commands:** Block dangerous commands or add logging
- **Notifications:** Desktop alerts when long tasks finish
- **Custom validation:** Enforce project-specific rules automatically

**Practice:** Run `/hooks` and count how many **event types** are available. Tell me the number.

**Check:** You don't need to set up hooks right away. But when you find yourself thinking "I wish this happened automatically every time," remember `/hooks`.

**Tip:** The most universally useful hook is auto-formatting on file write. If your project uses Prettier, Black, or any formatter, set it as a hook. Every file Claude writes will automatically match your project style.

Use `AskUserQuestion` to ask whether to continue:
- **Continue** — Learn the next command (`/mcp`)
- **Finish here** — Show the cheatsheet and end the tutorial

---

## 7.3 /mcp

**Explain:** `/mcp` manages MCP (Model Context Protocol) server connections. Think of MCP as a plugin system for Claude Code — it lets you connect external tools and data sources to extend Claude's capabilities.

**Syntax:**
```
/mcp
```

**Example:** Running `/mcp` shows the MCP server management menu:
- View connected server list and status
- Add or remove servers
- Restart connections
- Handle OAuth authentication

Common MCP servers:
- **GitHub** — interact with repos, issues, and PRs
- **Database servers** — query databases directly from Claude
- **Documentation servers** — search internal docs
- **Browser automation** — access web pages

**Practice:** Run `/mcp` and check if any MCP servers are connected. Tell me the **number of connected servers** (if none, just say "0").

**Check:** Having no MCP servers is normal. Add them when you need them. MCP server prompts also appear as slash commands with the format `/mcp__<server>__<prompt>`.

**Tip:** If you find yourself repeatedly copying data from an external tool into Claude, look for an MCP server for that tool. It could dramatically improve your workflow.

Use `AskUserQuestion` to ask whether to continue:
- **Continue** — Learn the final command (`/agents`)
- **Finish here** — Show the cheatsheet and end the tutorial

---

## 7.4 /agents

**Explain:** `/agents` manages background agents (sub-tasks) running in your session. When Claude Code handles complex tasks, it can spawn multiple agents to work in parallel. `/agents` lets you monitor and manage them.

**Syntax:**
```
/agents
```

**Example:** Running `/agents` shows the active agent list:
- Running agents and their status
- Progress of each agent
- Agent results
- Stop an agent

Agents are used in situations like:
- Searching/analyzing multiple files simultaneously
- Parallel work during complex refactoring
- Running tests while modifying code at the same time

**Practice:** Run `/agents` and see if any agents are currently active. Usually the list will be empty — agents are created automatically when Claude needs them for complex tasks.

**Check:** Agents are created and managed automatically by Claude Code. `/agents` is the command for when you want to monitor that process.

**Tip:** When multiple agents run simultaneously, token usage can increase rapidly. Monitor your context usage with `/context` alongside `/agents`.

---

## Module 7 Complete!

**Progress: [################] 7/7 modules done**

You've learned the advanced commands:
- `/config` — deep configuration customization
- `/hooks` — event-driven automation
- `/mcp` — external tool integration
- `/agents` — background agent management

---

## Tutorial Complete!

Congratulations! You've completed all seven modules.

For a quick reference, open `99-cheatsheet.md` — it has every command on a single page.

The commands you'll use most often:
1. `/help` — when you forget a command
2. `/compact` — when conversations get long
3. `/model` — switch models for different tasks
4. `/status` — check your current state
5. `/resume` — pick up where you left off

The rest? Pull them out when you need them. Nice work!
