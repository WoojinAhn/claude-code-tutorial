# Module 2: Project Setup

Now that you know the basics, let's set up Claude Code for your project. This is where Claude Code goes from a generic assistant to a context-aware teammate that understands your codebase, conventions, and preferences.

By the end of this module, you'll know how to create project instructions, edit them, and manage permissions.

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

**Practice:** Run `/init` and let me know when it's done.

**Check:** Use the `Read` tool to read the generated `CLAUDE.md` at the project root. Provide specific feedback on the auto-generated content (e.g., "It detected Python for your Tech Stack", "Build commands were auto-filled"). If the file doesn't exist, troubleshoot the issue.

**Tip:** The auto-generated `CLAUDE.md` is a starting point, not the final version. Edit it to add things Claude can't infer — like "never use `any` in TypeScript" or "always write tests for service layer changes." The more specific your instructions, the better Claude performs.

---

## 2.2 /memory

**Explain:** `/memory` opens your `CLAUDE.md` file for viewing and editing. While `/init` creates the file, `/memory` is how you maintain it over time — adding new conventions, updating commands, or refining instructions as your project evolves.

**Syntax:**
```
/memory
```

**Example:** When you run `/memory`, you'll first see a **selection screen** asking which memory to edit. There are three types:

| Type | File Location | Scope | Use For |
|------|--------------|-------|---------|
| **Project memory** | `./CLAUDE.md` (project root) | All users of this project | Team conventions, build commands. Commit to Git to share with team |
| **User memory** | `~/.claude/CLAUDE.md` | All your projects (you only) | Personal global preferences, like "always respond in English" |
| **Project user memory** | `.claude/CLAUDE.md` | This project only (you only) | Personal project-specific settings you don't want to share |

> If this is your first time, choose **Project memory** — this edits the `CLAUDE.md` created by `/init`, and it's the most common use case.

After selecting, you'll enter editing mode where you can add entries like:

```markdown
## Error Handling
- Use custom AppError class for all thrown errors
- Always log errors with structured JSON format
- Never expose stack traces in API responses

## Git Workflow
- Branch naming: feature/JIRA-123-description
- Commit format: [JIRA-123] feat: description
```

**Practice:** Run `/memory`, select **Project memory**, and add one rule (e.g., "Run tests with pytest"). Let me know when you're done.

**Check:** Use the `Read` tool to read `CLAUDE.md` and confirm what was added (e.g., "I see your new rule!"). Explain that the change takes effect immediately — this session and all future sessions.

**Tip:** Keep `CLAUDE.md` concise and actionable. Claude reads the entire file every session, so bloated instructions waste context window space. Aim for clear, specific rules rather than lengthy explanations. If a rule needs a paragraph to explain, it might be too complex.

---

## 2.3 /permissions

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

**Practice:** Run `/permissions` and count how many items are set to **Allow**. Tell me the number. (Press `Esc` to exit the screen.)

**Check:** Use the `Read` tool to read `.claude/settings.json` or `~/.claude/settings.json`, count the Allow entries, and compare with the user's answer. If no settings file exists, explain this means everything is at the default (Ask).

**Tip:** The sweet spot for most developers is: allow reads and common dev commands (test, lint, build), ask for file writes, deny anything destructive. As you build trust, you can open up write permissions for specific directories or file types.

---

## Module 2 Complete!

**Progress: [####............] 2/7 modules done**

You now know how to set up Claude Code for any project:
- `/init` — create project instructions (CLAUDE.md)
- `/memory` — view and edit project instructions
- `/permissions` — control what Claude can and can't do

Next up: **Module 3 — Model & Modes**, where you'll learn how to switch models and use different interaction modes.

**Continue?** Open `03-model-modes.md` when you're ready.
