# Module 4: Developer Tools

Claude Code comes with several built-in tools to improve your development experience — from diagnosing problems to customizing your editor feel. This module covers the utility commands that make daily use smoother.

By the end of this module, you'll know how to troubleshoot issues, customize your editing experience, set up your terminal, and run code reviews.

---

## 4.1 /doctor

**Explain:** `/doctor` runs a health check on your Claude Code installation. It diagnoses common issues with authentication, configuration, environment, and connectivity. When something isn't working right and you're not sure why, this is the first command to reach for.

**Syntax:**
```
/doctor
```

**Example:** Running `/doctor` produces a diagnostic report like:

```
Claude Code Health Check
========================

Authentication: OK
  - API key valid
  - Account active

Configuration: OK
  - CLAUDE.md found
  - Settings valid

Environment: WARNING
  - Node.js 18.x detected (20.x recommended)
  - Git: OK (2.42.0)

Connectivity: OK
  - API endpoint reachable
  - Latency: 45ms
```

It checks things like:
- Is your authentication valid and not expired?
- Is your configuration well-formed?
- Are required tools (git, node, etc.) available?
- Can Claude Code reach the API?

**Practice:** Try running `/doctor` now. Even if everything is working fine, it's good to see what a clean report looks like.

**Check:** Done? Tell me what you see. Any warnings or errors? If everything shows OK, great — you have a healthy setup.

**Tip:** Run `/doctor` before reaching out for help. If you encounter weird behavior — responses timing out, commands failing silently, or unexpected errors — `/doctor` often pinpoints the issue. It saves you (and support) a lot of back-and-forth debugging.

---

## 4.2 /vim

**Explain:** `/vim` toggles vim-style keybindings in the Claude Code input. If you're a vim user, this lets you edit your prompts with the modal editing you're used to — normal mode, insert mode, motions, and all. If you're not a vim user, you can safely ignore this one.

**Syntax:**
```
/vim
```

Running `/vim` toggles the mode on or off. There are no additional arguments.

**Example:**

```
> /vim
Vim mode enabled. Press Escape to enter normal mode.

> /vim
Vim mode disabled. Standard editing restored.
```

With vim mode on:
- Press `Escape` to enter normal mode
- Use `i`, `a`, `o` to enter insert mode
- Navigate with `h`, `j`, `k`, `l`
- Use `dd`, `yy`, `p`, `w`, `b`, and other vim motions
- Edit long prompts efficiently without reaching for the mouse

**Practice:** Try running `/vim` now. If you know vim, try editing a prompt in normal mode. If you don't know vim, toggle it on, notice the difference, then toggle it off with `/vim` again.

**Check:** Done? If you're a vim user, does it feel like home? If not, did you manage to toggle it back off? (If you're stuck in vim mode, just type `/vim` to escape — the eternal "how do I exit vim" problem, solved.)

**Tip:** Vim mode really shines when you're writing long, detailed prompts. Instead of holding backspace for 30 characters, you can `b`, `dw`, or `ci"` your way through edits. If you're already a vim user in your editor, turning this on creates a consistent experience everywhere.

---

## 4.3 /terminal-setup

**Explain:** `/terminal-setup` configures your terminal for optimal rendering with Claude Code. It sets up things like proper Unicode support, color handling, and other display settings so that Claude Code's output looks clean and readable.

**Syntax:**
```
/terminal-setup
```

**Example:** Running `/terminal-setup` walks you through terminal configuration:

```
Terminal Setup
==============

Checking terminal capabilities...

- Unicode support: OK
- 256 color support: OK
- Terminal width: 120 columns
- Recommended: Enable "Use Option as Meta Key" for better keybinding support

Setup complete. Your terminal is configured for Claude Code.
```

It may suggest changes to your terminal emulator settings (iTerm2, Terminal.app, Windows Terminal, etc.) for the best experience.

**Practice:** Try running `/terminal-setup` now. Follow any recommendations it gives you.

**Check:** Done? Tell me what you see. Did it suggest any changes to your terminal settings?

**Tip:** If you notice garbled characters, misaligned output, or missing formatting in Claude Code's responses, `/terminal-setup` is the fix. It's a one-time setup that you usually only need to run once per machine. If you switch terminal emulators (e.g., from Terminal.app to iTerm2), run it again.

---

## 4.4 /review

**Explain:** `/review` starts a code review session. You can use it to review a pull request, a set of changes, or specific files. Claude will analyze the code and provide feedback on potential issues, style problems, and improvement suggestions.

**Syntax:**
```
/review
```

**Example:** Running `/review` in a project with uncommitted changes might look like:

```
> /review

Reviewing changes in current branch...

Found 3 modified files:
- src/services/UserService.ts
- src/controllers/UserController.ts
- tests/UserService.test.ts

Review:

src/services/UserService.ts:
  Line 42: Potential null reference — `user.email` accessed without
           null check after `findById()` which can return null.
  Line 67: Consider extracting the retry logic into a shared utility
           rather than duplicating it here.

src/controllers/UserController.ts:
  Line 15: HTTP 200 returned for creation — consider 201 Created.

tests/UserService.test.ts:
  Looks good. Edge case for deleted user is covered.
```

You can also point it at specific things:
- Review the current branch's diff against main
- Review specific files
- Review with specific focus areas (e.g., "focus on security" or "check error handling")

**Practice:** Try running `/review` now. If you're in a project with recent changes, Claude will review them. If there are no changes, try making a small edit to a file first.

**Check:** Done? Tell me what you see. Did Claude catch anything interesting? Any feedback you agree or disagree with?

**Tip:** `/review` is most powerful when you use it before pushing — it's like having a senior developer do a pre-review. The feedback tends to be more useful when you give it focus: instead of just `/review`, try asking Claude to review with a specific lens, like "review this for security issues" or "review focusing on error handling."

---

## Module 4 Complete!

**Progress: [########............] 4/5 modules done**

You now have your developer toolkit ready:
- `/doctor` — diagnose problems before they frustrate you
- `/vim` — vim keybindings for efficient prompt editing
- `/terminal-setup` — make sure your display is clean
- `/review` — get code review feedback before pushing

Next up: **Module 5 — Integrations**, where you'll learn about hooks, MCP servers, authentication, and bug reporting.

**Continue?** Open `05-integrations.md` when you're ready.
