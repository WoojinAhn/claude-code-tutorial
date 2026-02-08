# Module 6: Developer Tools

Claude Code comes with several built-in tools to improve your development experience — from diagnosing problems to customizing your look and reviewing code. This module covers the utility commands that make daily use smoother.

By the end of this module, you'll know how to troubleshoot issues, set up your terminal, customize the theme, and run code reviews.

---

## 6.1 /doctor

**Explain:** `/doctor` runs a health check on your Claude Code installation. It diagnoses common issues with authentication, configuration, environment, and connectivity. When something isn't working right and you're not sure why, this is the first command to reach for.

**Syntax:**
```
/doctor
```

**Example:** Running `/doctor` produces a diagnostic report checking things like:
- Is your authentication valid and not expired?
- Is your configuration well-formed?
- Are required tools (git, node, etc.) available?
- Can Claude Code reach the API?

It checks each area and reports OK, WARNING, or ERROR — with suggestions for how to fix any issues found.

**Practice:** Try running `/doctor` now. Even if everything is working fine, it's good to see what a clean report looks like.

**Check:** Done? Tell me what you see. Any warnings or errors? If everything shows OK, great — you have a healthy setup.

**Tip:** Run `/doctor` before reaching out for help. If you encounter weird behavior — responses timing out, commands failing silently, or unexpected errors — `/doctor` often pinpoints the issue. It saves you a lot of back-and-forth debugging.

---

## 6.2 /terminal-setup

**Explain:** `/terminal-setup` configures your terminal for optimal use with Claude Code. It sets up things like Shift+Enter for multiline input, proper Unicode support, and keybinding configurations so that Claude Code's features work smoothly in your terminal.

**Syntax:**
```
/terminal-setup
```

**Example:** Running `/terminal-setup` walks you through terminal configuration. It may suggest changes to your terminal emulator settings (iTerm2, Terminal.app, VS Code terminal, etc.) for the best experience — like enabling "Option as Meta Key" for keyboard shortcuts.

**Practice:** Try running `/terminal-setup` now. Follow any recommendations it gives you.

**Check:** Done? Tell me what you see. Did it suggest any changes to your terminal settings?

**Tip:** The Shift+Enter multiline input setup is especially valuable. Without it, pressing Enter immediately sends your message. With it, you can write multi-line prompts comfortably. This is a one-time setup that makes a big difference in daily use.

---

## 6.3 /theme

**Explain:** `/theme` lets you change Claude Code's color theme. If the default colors don't suit your taste or your terminal's color scheme, you can switch to something that works better for you.

**Syntax:**
```
/theme
```

**Example:** Running `/theme` opens a theme picker where you can browse and select from available color themes. You can also toggle syntax highlighting for code blocks using `Ctrl+T` within the picker.

**Practice:** Try running `/theme` now. Browse the available themes and pick one you like. You can always change it back.

**Check:** Done? Did you find a theme you like? The change takes effect immediately.

**Tip:** If you work in different lighting conditions (bright office vs. dark room), you might want to switch themes accordingly. Some themes work better with light terminal backgrounds, others with dark.

---

## 6.4 /review

**Explain:** `/review` starts a code review session. Claude will analyze your current changes (uncommitted diffs, branch changes, etc.) and provide feedback on potential issues, style problems, and improvement suggestions. It's like having a senior developer do a pre-review.

**Syntax:**
```
/review
```

**Example:** Running `/review` in a project with uncommitted changes will have Claude analyze the diff and provide feedback on:
- Potential bugs or edge cases
- Code style and consistency
- Security concerns
- Improvement suggestions

You can also guide the review with specific focus areas: "review focusing on security" or "check error handling."

**Practice:** Try running `/review` now. If you're in a Git repository with recent changes, Claude will review them. If there are no changes, try making a small edit to a file first.

**Check:** Done? Tell me what you see. Did Claude catch anything interesting? Any feedback you agree or disagree with?

**Tip:** `/review` is most powerful when used before pushing — it catches obvious issues before human reviewers see them. But don't treat it as a replacement for human code review. It's a complement that handles the mechanical checks so your team can focus on higher-level design and logic.

---

## Module 6 Complete!

**Progress: [############....] 6/7 modules done**

You now have your developer toolkit ready:
- `/doctor` — diagnose problems before they frustrate you
- `/terminal-setup` — optimize your terminal for Claude Code
- `/theme` — customize the look and feel
- `/review` — get code review feedback before pushing

Almost there! One more module to go.

Next up: **Module 7 — Integrations**, where you'll learn about MCP servers, hooks, authentication, and bug reporting.

**Continue?** Open `07-integrations.md` when you're ready.
