# Module 3: Model & Modes

Claude Code isn't one-size-fits-all. You can switch between models for different tasks and use different interaction modes to control how Claude works. This module covers the commands that change how Claude thinks and responds.

By the end of this module, you'll know how to switch models and enter plan mode.

---

## 3.1 /model

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

> /model opus
Switched to claude-opus-4-6
```

When to use each:
| Model | Best For |
|-------|----------|
| Sonnet | Daily coding tasks, refactoring, explanations — good balance of speed and quality |
| Opus | Complex architecture decisions, tricky bugs, nuanced code review |
| Haiku | Quick questions, simple edits, boilerplate generation — fast and cheap |

**Practice:** Run `/model` and tell me: how many **models are available**, and what's the **name of your current model**? (Press `Esc` to exit without switching.)

**Check:** Acknowledge the answer and connect it to the model's characteristics (e.g., "You're on Sonnet — that's the best all-rounder for daily tasks").

**Tip:** With Opus, you can use left/right arrow keys to adjust the effort level — letting you fine-tune between speed and thoroughness without switching models entirely. Start tasks with Sonnet. If you hit a wall, switch to Opus for that specific task, then switch back.

---

## 3.2 /plan

**Explain:** `/plan` puts Claude into plan mode. In this mode, Claude focuses on exploring and designing before writing code. It will read files, analyze architecture, and propose an implementation plan — but won't make changes until you approve. Think of it as switching from "doer" mode to "architect" mode.

**Syntax:**
```
/plan
```

**Example:** After entering plan mode, Claude will:
- Read and analyze relevant files before proposing changes
- Present a step-by-step plan for your review
- Wait for your approval before making any modifications
- Use only read-only tools (Read, Glob, Grep) — no edits

This is especially useful for:
- Complex refactoring where you want to see the full picture first
- Reviewing an approach before committing to it
- Tasks where you're unsure of the best strategy

**Practice:** Run `/plan` to enter plan mode, then ask "analyze this project's structure." Did Claude **modify any files, or only analyze**? After checking, exit with `Shift+Tab` (or `Alt+M`). (Note: `Esc Esc` is the shortcut for `/rewind`, not for exiting plan mode.)

**Check:** "Only analyzed" is the correct answer. In plan mode, Claude uses read-only tools (Read, Glob, Grep) and won't modify code. This is invaluable for filtering out bad approaches before committing to them.

**Tip:** You can also toggle modes with `Shift+Tab` (or `Alt+M`), which cycles between normal mode, plan mode, and auto-accept mode. Plan mode is great for complex tasks where a wrong approach would waste time. Let Claude think through the problem before writing a single line.

---

## Module 3 Complete!

**Progress: [######..........] 3/7 modules done**

You now know how to control Claude's behavior:
- `/model` — switch between Claude models for different tasks
- `/plan` — think first, act second with plan mode

Next up: **Module 4 — Context & Usage**, where you'll learn how to manage your context window and monitor usage.

**Continue?** Open `04-context-usage.md` when you're ready.
