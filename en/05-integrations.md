# Module 5: Integrations

Claude Code doesn't work in isolation — it connects to external tools, services, and workflows. This module covers how to extend Claude Code with hooks, connect to MCP servers, manage authentication, and report issues.

By the end of this module, you'll know how to integrate Claude Code into your broader development workflow.

---

## 5.1 /hooks

**Explain:** `/hooks` lets you view and manage event hooks — custom scripts or commands that run automatically before or after Claude Code performs certain actions. Hooks let you automate repetitive tasks and enforce workflows without manual intervention.

**Syntax:**
```
/hooks
```

**Example:** Running `/hooks` shows your configured hooks and lets you manage them:

```
Current Hooks:
==============

PreToolUse:
  - Hook: "Format on save"
    Command: npm run format
    Trigger: Before file write operations

PostToolUse:
  - Hook: "Auto lint"
    Command: npm run lint -- --fix
    Trigger: After file write operations

No Notification hooks configured.
```

Common use cases for hooks:
- **Pre-save formatting:** Auto-format code before Claude writes a file
- **Post-edit linting:** Run linters after Claude modifies code
- **Notifications:** Get notified when long-running tasks complete
- **Custom validation:** Enforce project rules before changes are applied

**Practice:** Try running `/hooks` now. See what hooks are currently configured (if any).

**Check:** Done? Tell me what you see. If no hooks are configured, that's normal for a fresh setup. Think about what automations would help your workflow.

**Tip:** The most universally useful hook is auto-formatting on file write. If your project uses Prettier, ESLint, Black, or any formatter, set it up as a PostToolUse hook. This way, every file Claude writes automatically matches your project's style — no manual cleanup needed.

---

## 5.2 /mcp

**Explain:** `/mcp` manages MCP (Model Context Protocol) server connections. MCP is a protocol that lets Claude Code connect to external tools and data sources — like databases, APIs, documentation servers, or custom tooling. Think of MCP servers as plugins that give Claude new capabilities beyond its built-in tools.

**Syntax:**
```
/mcp
```

**Example:** Running `/mcp` shows connected servers and lets you manage them:

```
MCP Servers:
============

Connected:
  - filesystem (built-in)
    Tools: read_file, write_file, list_directory
    Status: Active

  - github
    Tools: search_repos, get_issues, create_pr
    Status: Active

Not Connected:
  - postgres
    Tools: query, list_tables, describe_table
    Status: Disconnected (no credentials configured)

Commands:
  Add server:    Configure a new MCP server
  Remove server: Disconnect an MCP server
  Restart:       Restart a server connection
```

Common MCP servers include:
- **GitHub** — interact with repos, issues, and PRs
- **Database servers** — query databases directly from Claude
- **Documentation servers** — give Claude access to your internal docs
- **Custom tools** — any tool you build that speaks MCP

**Practice:** Try running `/mcp` now. See what MCP servers are available and connected.

**Check:** Done? Tell me what you see. Even if you don't have any custom MCP servers, you should see the built-in capabilities.

**Tip:** MCP is what makes Claude Code truly extensible. If you find yourself repeatedly copying data from an external tool (database, API docs, monitoring dashboard) into Claude, there's probably an MCP server for it — or you can build one. The official MCP specification is open, and servers are relatively straightforward to implement.

---

## 5.3 /login and /logout

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

Running `/logout` ends the session:

```
> /logout

Logged out successfully.
Session cleared. Run /login to authenticate again.
```

When you'd need these:
- **First-time setup:** `/login` to connect your account
- **Session expired:** You'll see auth errors — `/login` refreshes your session
- **Switching accounts:** `/logout` then `/login` with different credentials
- **Shared machines:** `/logout` when you're done so others don't use your account

**Practice:** You're probably already logged in (since you're reading this). Try running `/login` to see what happens — if you're already authenticated, it will confirm your current session.

**Check:** Done? Tell me what you see. Confirm that your account is connected and active.

**Tip:** If you suddenly start getting authentication errors mid-session, don't panic. Your token likely expired. A quick `/login` usually fixes it in seconds. Bookmark this in your mind as the "fix auth" command — it saves you from restarting Claude Code entirely.

---

## 5.4 /bug

**Explain:** `/bug` lets you report a bug directly to the Claude Code team. If you encounter unexpected behavior, crashes, or something that just doesn't seem right, this is the fastest way to get it logged.

**Syntax:**
```
/bug
```

**Example:** Running `/bug` opens the bug reporting flow:

```
> /bug

Report a Bug
============

Claude Code will collect:
- Your description of the issue
- Recent conversation context (you can review before sending)
- System information (OS, version, model)

Describe the issue:
> Claude incorrectly rewrites import paths when moving files
  between directories. Relative imports become wrong.

Additional context will be attached automatically.

Submit bug report? (y/n): y

Bug report submitted. Thank you!
Reference: BUG-2024-1234
```

Your report helps the team:
- Identify and fix issues faster
- Understand real-world usage patterns
- Prioritize improvements

**Practice:** Try running `/bug` now — but only if you actually have something to report! If Claude Code is working well for you, no need to submit. Just see how the flow starts, and you can cancel before submitting.

**Check:** Done? Now you know where to go when something goes wrong. Having an easy bug reporting path is important — it means issues get fixed.

**Tip:** The best bug reports include a specific, reproducible scenario. Instead of "Claude messed up my code," try "When I asked Claude to rename the `UserService` class, it updated the class name but missed the import in `index.ts`." Specificity helps the team reproduce and fix the issue much faster.

---

## Module 5 Complete!

**Progress: [##########..........] 5/5 modules done**

You now know how to integrate Claude Code with your workflow:
- `/hooks` — automate pre/post actions for consistency
- `/mcp` — extend Claude with external tools and data sources
- `/login` / `/logout` — manage authentication
- `/bug` — report issues to make Claude Code better

That's all five teaching modules! You've covered every major slash command.

**Final step:** Open `99-cheatsheet.md` for a quick-reference card you can keep handy.

**Continue?** Open `99-cheatsheet.md` when you're ready.
