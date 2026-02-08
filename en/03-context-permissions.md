# Module 3: Context & Permissions

As you work with Claude Code on longer tasks, two things become critical: managing your context window (how much Claude can "remember") and controlling permissions (what Claude is allowed to do). This module covers both.

By the end of this module, you'll know how to keep your conversation lean and efficient, and how to control Claude's access to your system.

---

## 3.1 /compact

**Explain:** `/compact` compresses your conversation history into a concise summary, freeing up context window space. Use it when your conversation gets long and you notice Claude starting to forget earlier details or when performance degrades.

**Syntax:**
```
/compact
/compact [custom instructions]
```

Running `/compact` without arguments uses a default summarization strategy. You can optionally add custom instructions to tell Claude what to focus on when summarizing (e.g., "focus on the database migration decisions").

**Example:** Imagine you've been working for 30 minutes, discussing architecture, debugging a test, and refactoring a service. Your context window is filling up. Running `/compact` condenses all of that into something like:

```
Before /compact:
- 47 messages, ~85k tokens used
- Full conversation history with every code snippet, error message, and discussion

After /compact:
- Compressed to ~8k tokens
- Key decisions preserved: "Using repository pattern for data layer,
  fixed N+1 query in UserService, refactored OrderController to use DTOs"
- Ready for more work with plenty of context space
```

**How /compact differs from /clear:**

| | /compact | /clear |
|---|---------|--------|
| Conversation history | Summarized and preserved | Completely erased |
| Context from earlier work | Retained as summary | Gone |
| When to use | Long sessions, running low on context | Starting a completely new task |

**Practice:** Try running `/compact` now. If your conversation is short, the effect will be minimal — but you'll see how it works.

**Check:** Done? Tell me what you see. The conversation should feel lighter. If you had a long history, you'll notice the summary that was created.

**Tip:** Don't wait until Claude starts forgetting things to use `/compact`. A good habit is to compact after completing each major subtask — finished debugging? Compact. Done with the refactor? Compact. This keeps your session fresh and responsive throughout long working sessions.

---

## 3.2 /permissions

**Explain:** `/permissions` shows and manages what tools Claude Code is allowed to use — and whether it needs to ask you first. This is your security control panel. It determines whether Claude can read files, write files, run shell commands, and more, either freely or only with your approval.

**Syntax:**
```
/permissions
```

**Example:** Running `/permissions` shows your current permission settings. You'll see something like:

```
Current permissions:

Allow:
  - Read files in project directory
  - Run npm/yarn commands
  - Execute git commands

Deny:
  - Write to files outside project directory
  - Run arbitrary shell commands without approval
  - Access network resources

Ask:
  - Write/edit project files
  - Delete files
  - Run unfamiliar commands
```

Permissions work at three levels:
- **Allow** — Claude does it automatically, no confirmation needed
- **Deny** — Claude cannot do it at all
- **Ask** — Claude requests your approval each time

You can also add specific rules. For example:
```
Allow: Bash(npm test)
Allow: Bash(git status)
Deny: Bash(rm -rf *)
```

**Practice:** Try running `/permissions` now. Review what Claude is currently allowed to do in your session.

**Check:** Done? Tell me what you see. Are there any permissions you'd want to change? Too restrictive? Too open?

**Tip:** The sweet spot for most developers is: allow reads and common dev commands (test, lint, build), ask for file writes, deny anything destructive. This gives Claude enough autonomy to investigate and analyze your code quickly, while keeping you in the loop for actual changes. As you build trust, you can open up write permissions for specific directories or file types.

---

## Module 3 Complete!

**Progress: [######..............] 3/5 modules done**

You now understand the two most important operational concepts:
- `/compact` — keep your context window lean and your session fast
- `/permissions` — control exactly what Claude can and can't do

These two commands are the difference between a smooth, productive session and one where Claude forgets what you discussed or makes unwanted changes. Use them proactively.

Next up: **Module 4 — Developer Tools**, where you'll learn about health checks, keybindings, terminal setup, and code review.

**Continue?** Open `04-dev-tools.md` when you're ready.
