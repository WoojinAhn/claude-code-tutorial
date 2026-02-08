# Module 7: Integrations

Claude Code doesn't work in isolation — it connects to external tools, services, and workflows. This final module covers how to extend Claude Code with hooks, connect to MCP servers, manage authentication, and report issues.

By the end of this module, you'll know how to integrate Claude Code into your broader development workflow.

---

## 7.1 /mcp

**Explain:** `/mcp` manages MCP (Model Context Protocol) server connections. MCP is a protocol that lets Claude Code connect to external tools and data sources — like databases, APIs, documentation servers, or custom tooling. Think of MCP servers as plugins that give Claude new capabilities beyond its built-in tools.

**Syntax:**
```
/mcp
```

**Example:** Running `/mcp` shows connected servers and lets you manage them:
- View connected MCP server list and their status
- Add new servers
- Remove existing servers
- Restart server connections
- Handle OAuth authentication for servers that require it

Common MCP servers include:
- **GitHub** — interact with repos, issues, and PRs
- **Database servers** — query databases directly from Claude
- **Documentation servers** — give Claude access to your internal docs
- **Custom tools** — any tool you build that speaks MCP

**Practice:** Try running `/mcp` now. See what MCP servers are available and connected.

**Check:** Done? Tell me what you see. Even if you don't have any custom MCP servers, you should see the management interface.

**Tip:** MCP is what makes Claude Code truly extensible. If you find yourself repeatedly copying data from an external tool (database, API docs, monitoring dashboard) into Claude, there's probably an MCP server for it — or you can build one. MCP server prompts also appear as slash commands with the format `/mcp__<server>__<prompt>`.

---

## 7.2 /hooks

**Explain:** `/hooks` lets you view and manage event hooks — custom scripts or commands that run automatically before or after Claude Code performs certain actions. Hooks let you automate repetitive tasks and enforce workflows without manual intervention.

**Syntax:**
```
/hooks
```

**Example:** Running `/hooks` shows your configured hooks and lets you manage them. Common use cases:
- **Pre-save formatting:** Auto-format code before Claude writes a file
- **Post-edit linting:** Run linters after Claude modifies code
- **Notifications:** Get notified when long-running tasks complete
- **Custom validation:** Enforce project rules before changes are applied

**Practice:** Try running `/hooks` now. See what hooks are currently configured (if any).

**Check:** Done? Tell me what you see. If no hooks are configured, that's normal for a fresh setup. Think about what automations would help your workflow.

**Tip:** The most universally useful hook is auto-formatting on file write. If your project uses Prettier, ESLint, Black, or any formatter, set it up as a hook. This way, every file Claude writes automatically matches your project's style — no manual cleanup needed.

---

## 7.3 /login and /logout

**Explain:** `/login` authenticates you with the Claude Code service, and `/logout` ends your session. You'll typically use `/login` when setting up Claude Code for the first time, when your session expires, or when switching between accounts.

**Syntax:**
```
/login
/logout
```

**Example:** Running `/login` starts the authentication flow:

```
> /login

Opening browser for authentication...

Waiting for login...
Authentication successful!

Logged in as: developer@company.com
Account type: Pro
```

When you'd need these:
- **First-time setup:** `/login` to connect your account
- **Session expired:** You'll see auth errors — `/login` refreshes your session
- **Switching accounts:** `/logout` then `/login` with different credentials
- **Shared machines:** `/logout` when you're done so others don't use your account

**Practice:** You're probably already logged in (since you're reading this). Try running `/login` to see what happens — if you're already authenticated, it will confirm your current session.

**Check:** Done? Tell me what you see. Confirm that your account is connected and active.

**Tip:** If you suddenly start getting authentication errors mid-session, don't panic. Your token likely expired. A quick `/login` usually fixes it in seconds. If that doesn't work, try `/doctor` to diagnose the issue.

---

## 7.4 /bug

**Explain:** `/bug` lets you report a bug directly to the Claude Code team. If you encounter unexpected behavior, crashes, or something that just doesn't seem right, this is the fastest way to get it logged.

**Syntax:**
```
/bug
```

**Example:** Running `/bug` opens the bug reporting flow. Your session context is automatically included, making it easier for the team to reproduce the issue. You can describe the problem and submit.

**Practice:** Try running `/bug` now — but only if you actually have something to report! If Claude Code is working well, just see how the flow starts and cancel before submitting.

**Check:** Done? Now you know where to go when something goes wrong.

**Tip:** The best bug reports include a specific, reproducible scenario. Instead of "Claude messed up my code," try "When I asked Claude to rename the `UserService` class, it updated the class name but missed the import in `index.ts`." Specificity helps the team fix the issue much faster.

---

## Module 7 Complete!

**Progress: [################] 7/7 modules done**

You now know how to integrate Claude Code with your workflow:
- `/mcp` — extend Claude with external tools and data sources
- `/hooks` — automate pre/post actions for consistency
- `/login` / `/logout` — manage authentication
- `/bug` — report issues to make Claude Code better

---

## Tutorial Complete!

Congratulations! You've completed all seven modules covering 27 slash commands.

For a quick reference, open `99-cheatsheet.md` — it has every command on a single page.

The commands you'll use most often:
1. `/help` — when you forget a command
2. `/compact` — when conversations get long
3. `/model` — switch models for different tasks
4. `/status` — check your current state
5. `/resume` — pick up where you left off

The rest? Pull them out when you need them. Nice work!
