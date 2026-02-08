# Module 6: Developer Tools

Claude Code comes with several built-in tools to improve your development experience — from diagnosing problems to customizing your look and reviewing code. This module covers the utility commands that make daily use smoother.

By the end of this module, you'll know how to troubleshoot issues, customize the theme, and run code reviews.

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

**Practice:** Run `/doctor` and tell me: are there any **WARNING or ERROR** items? If everything passed, just say "all OK."

**Check:** Acknowledge the result. If all OK, the setup is healthy. If there are warnings, use `Bash` to check relevant items (git version, node version, etc.) and provide additional guidance.

**Tip:** Run `/doctor` before reaching out for help. If you encounter weird behavior — responses timing out, commands failing silently, or unexpected errors — `/doctor` often pinpoints the issue. It saves you a lot of back-and-forth debugging.

---

## 6.2 /theme

**Explain:** `/theme` lets you change Claude Code's color theme. If the default colors don't suit your taste or your terminal's color scheme, you can switch to something that works better for you.

**Syntax:**
```
/theme
```

**Example:** Running `/theme` opens a theme picker where you can browse and select from available color themes. You can also toggle syntax highlighting for code blocks using `Ctrl+T` within the picker.

**Practice:** Run `/theme`, pick one you like, and tell me the **name of the theme you applied**. You can always change it back.

**Check:** Acknowledge the theme name. The change takes effect immediately.

**Tip:** If you work in different lighting conditions (bright office vs. dark room), you might want to switch themes accordingly. Some themes work better with light terminal backgrounds, others with dark.

---

## 6.3 /review

**Explain:** `/review` starts a code review session. Claude will analyze your current changes (uncommitted diffs, branch changes, etc.) and provide feedback on potential issues, style problems, and improvement suggestions. It's like having a senior developer do a pre-review before you push.

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

**Practice:** This practice has 3 steps. (If you're not in a Git repository, skip this practice.)

> **Step 1:** The tutor uses the `Edit` tool to make a small reviewable change in the project (e.g., adding an unused variable, removing error handling). The tutor tells the user which file was changed and what was modified.
>
> **Step 2:** Ask the user to run `/review` to see how Claude analyzes the change.
>
> **Step 3:** Ask the user to pick one item from the review results and share what Claude found.

**Check:** Claude's review covers potential bugs, style issues, and security concerns by category. Running it before a PR helps catch obvious mistakes before human reviewers see them.

**Tip:** `/review` complements human code review — it doesn't replace it. Let Claude handle the mechanical checks (missing error handling, inconsistencies), while your team focuses on design and logic.

---

## Module 6 Complete!

**Progress: [############....] 6/7 modules done**

You now have your developer toolkit ready:
- `/doctor` — diagnose problems before they frustrate you
- `/theme` — customize the look and feel
- `/review` — get code review feedback before pushing

This wraps up the **core tutorial**. You've covered all the commands you need for everyday Claude Code usage!

The next module is an **advanced session** covering `/config`, `/hooks`, `/mcp`, and `/agents` — deep customization and integration. Continue if you're interested, or stop here — you're already well-equipped.

Use `AskUserQuestion` to present the choice:
- **Start the advanced module** — Learn deep configuration, automation hooks, MCP integrations, and agents
- **Finish here** — Show the cheatsheet (`99-cheatsheet.md`) and end the tutorial
