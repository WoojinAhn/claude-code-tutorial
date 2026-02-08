# Module 2: Project Setup

Now that you know the basics, let's set up Claude Code for your project. This is where Claude Code goes from a generic assistant to a context-aware teammate that understands your codebase, conventions, and preferences.

By the end of this module, you'll know how to create project instructions, edit them, switch models, and configure Claude Code settings.

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

## 2.3 /model

**Explain:** `/model` lets you switch between different Claude models mid-conversation. Different models have different strengths — some are faster, some are smarter, some are cheaper. Pick the right one for the task at hand.

**Syntax:**
```
/model
/model <model-name>
```

Running `/model` without arguments shows the current model and available options. Running `/model <name>` switches to that model.

**Example:** Here's a typical model selection scenario:

```
> /model
Current model: claude-sonnet-4-5-20250929

Available models:
- claude-sonnet-4-5-20250929 (balanced)
- claude-opus-4-6 (most capable)
- claude-haiku-3-5 (fastest)

> /model claude-opus-4-6
Switched to claude-opus-4-6
```

When to use each:
| Model | Best For |
|-------|----------|
| Sonnet | Daily coding tasks, refactoring, explanations — good balance of speed and quality |
| Opus | Complex architecture decisions, tricky bugs, nuanced code review |
| Haiku | Quick questions, simple edits, boilerplate generation — fast and cheap |

**Practice:** Try running `/model` now to see your current model and available options. If you want, switch to a different model and switch back.

**Check:** Done? Which model are you on? If you switched, did you notice any difference in response time?

**Tip:** Start tasks with Sonnet. If you hit a wall — Claude misunderstands your architecture, produces buggy logic, or can't handle a complex refactor — switch to Opus for that specific task, then switch back. This keeps costs down while giving you access to the most capable model when you need it.

---

## 2.4 /config

**Explain:** `/config` lets you view and edit your Claude Code configuration. This controls global behavior like default permissions, preferred model, theme settings, and other preferences that apply across all your projects.

**Syntax:**
```
/config
```

**Example:** Running `/config` shows your current configuration and lets you modify settings. You might see options like:

```
Configuration:
- Default model: claude-sonnet-4-5-20250929
- Auto-compact: enabled
- Theme: dark
- Permissions: ask for file writes
- Telemetry: enabled
```

You can adjust settings like:
- Which actions require confirmation vs. run automatically
- Default model preference
- Notification preferences
- Tool permissions

**Practice:** Try running `/config` now. Browse through the available settings to see what's configurable.

**Check:** Done? Tell me what you see. Did any setting surprise you or seem worth changing?

**Tip:** The most impactful config change for daily productivity is adjusting permissions. If you trust Claude enough to write files without asking every time, granting broader permissions can significantly speed up your workflow. But start restrictive and open up gradually — you can always change it back.

---

## Module 2 Complete!

**Progress: [####................] 2/5 modules done**

You now know how to set up Claude Code for any project:
- `/init` — create project instructions (CLAUDE.md)
- `/memory` — view and edit project instructions
- `/model` — switch between Claude models
- `/config` — manage global configuration

Next up: **Module 3 — Context & Permissions**, where you'll learn how to manage your conversation's context window and control what Claude can do.

**Continue?** Open `03-context-permissions.md` when you're ready.
