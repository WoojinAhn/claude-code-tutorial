# Module 2: Project Setup

Now that you know the basics, let's set up Claude Code for your project. This is where Claude Code goes from a generic assistant to a context-aware teammate that understands your codebase, conventions, and preferences.

By the end of this module, you'll know how to create project instructions, edit them, configure settings, and manage permissions.

---

## 2.1 /init

**Explain:** `/init` creates a `CLAUDE.md` file in your project root. This file is Claude Code's instruction manual for your project — it tells Claude about your tech stack, coding conventions, build commands, and anything else it should know. Think of it as onboarding documentation, but for your AI pair programmer.

**Syntax:**
```
/init
```

**Example:** When you run `/init`, Claude Code will analyze your project and generate a `CLAUDE.md` file. For a Node.js project, it might produce something like:

```markdown
# Project: my-api

## Tech Stack
- Node.js 20 with TypeScript
- Express.js for HTTP
- PostgreSQL with Prisma ORM

## Commands
- Build: `npm run build`
- Test: `npm test`
- Lint: `npm run lint`

## Conventions
- Use camelCase for variables and functions
- All API responses follow { data, error, meta } format
```

Claude reads this file at the start of every session, so it always has your project context.

**Practice:** Try running `/init` now. If you're in a project directory, Claude will generate a tailored `CLAUDE.md`. If not, navigate to a project first.

**Check:** Done? You should see a new `CLAUDE.md` file in your project root. Open it and see what Claude generated. Does it accurately describe your project?

**Tip:** The auto-generated `CLAUDE.md` is a starting point, not the final version. Edit it to add things Claude can't infer — like "never use `any` in TypeScript" or "always write tests for service layer changes." The more specific your instructions, the better Claude performs.

---

## 2.2 /memory

**Explain:** `/memory` opens your `CLAUDE.md` file for viewing and editing. While `/init` creates the file, `/memory` is how you maintain it over time — adding new conventions, updating commands, or refining instructions as your project evolves.

**Syntax:**
```
/memory
```

**Example:** Running `/memory` opens your `CLAUDE.md` and lets you see or modify its contents. You might add entries like:

```markdown
## Error Handling
- Use custom AppError class for all thrown errors
- Always log errors with structured JSON format
- Never expose stack traces in API responses

## Git Workflow
- Branch naming: feature/JIRA-123-description
- Commit format: [JIRA-123] feat: description
```

**Practice:** Try running `/memory` now. If you already ran `/init`, you'll see your existing `CLAUDE.md`. Try adding one new instruction.

**Check:** Done? Tell me what you added. The change takes effect immediately — Claude will follow your updated instructions in this session and all future sessions.

**Tip:** Keep `CLAUDE.md` concise and actionable. Claude reads the entire file every session, so bloated instructions waste context window space. Aim for clear, specific rules rather than lengthy explanations. If a rule needs a paragraph to explain, it might be too complex.

---

## 2.3 /config

**Explain:** `/config` lets you view and edit your Claude Code configuration. This controls global behavior like default permissions, preferred model, theme settings, and other preferences that apply across all your projects.

**Syntax:**
```
/config
```

**Example:** Running `/config` opens the Settings interface where you can adjust settings like:
- Which actions require confirmation vs. run automatically
- Default model preference
- Theme and display settings
- Tool permissions

**Practice:** Try running `/config` now. Browse through the available settings to see what's configurable.

**Check:** Done? Tell me what you see. Did any setting surprise you or seem worth changing?

**Tip:** The most impactful config change for daily productivity is adjusting permissions. If you trust Claude enough to write files without asking every time, granting broader permissions can significantly speed up your workflow. But start restrictive and open up gradually — you can always change it back.

---

## 2.4 /permissions

**Explain:** `/permissions` shows and manages what tools Claude Code is allowed to use — and whether it needs to ask you first. This is your security control panel. It determines whether Claude can read files, write files, run shell commands, and more, either freely or only with your approval.

**Syntax:**
```
/permissions
```

**Example:** Running `/permissions` shows your current permission settings:

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

**Tip:** The sweet spot for most developers is: allow reads and common dev commands (test, lint, build), ask for file writes, deny anything destructive. As you build trust, you can open up write permissions for specific directories or file types.

---

## Module 2 Complete!

**Progress: [####............] 2/7 modules done**

You now know how to set up Claude Code for any project:
- `/init` — create project instructions (CLAUDE.md)
- `/memory` — view and edit project instructions
- `/config` — manage global configuration
- `/permissions` — control what Claude can and can't do

Next up: **Module 3 — Model & Modes**, where you'll learn how to switch models and use different interaction modes.

**Continue?** Open `03-model-modes.md` when you're ready.
