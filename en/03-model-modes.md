# Module 3: Model & Modes

Claude Code isn't one-size-fits-all. You can switch between models for different tasks and use different interaction modes to control how Claude works. This module covers the commands that change how Claude thinks and responds.

By the end of this module, you'll know how to switch models, enter plan mode, and toggle vim keybindings.

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

**Practice:** Try running `/model` now to see your current model and available options. If you want, switch to a different model and switch back.

**Check:** Done? Which model are you on? If you switched, did you notice any difference in response time?

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

**Practice:** Try running `/plan` now to enter plan mode. Then ask Claude a question about your project to see how it responds differently. You can exit plan mode by pressing `Shift+Tab` or `Esc Esc`.

**Check:** Done? Notice how Claude focuses on analysis and planning rather than jumping into code changes? That's the point — think first, act second.

**Tip:** You can also toggle modes with `Shift+Tab` (or `Alt+M`), which cycles between normal mode, plan mode, and auto-accept mode. Plan mode is great for complex tasks where a wrong approach would waste time. Let Claude think through the problem before writing a single line.

---

## 3.3 /vim

**Explain:** `/vim` toggles vim-style keybindings in the Claude Code input. If you're a vim user, this lets you edit your prompts with the modal editing you're used to — normal mode, insert mode, motions, and all. If you're not a vim user, you can safely skip this one.

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

**Tip:** Vim mode really shines when you're writing long, detailed prompts. Instead of holding backspace for 30 characters, you can `b`, `dw`, or `ci"` your way through edits. You can also enable vim mode permanently via `/config` instead of toggling it each session.

---

## Module 3 Complete!

**Progress: [######..........] 3/7 modules done**

You now know how to control Claude's behavior:
- `/model` — switch between Claude models for different tasks
- `/plan` — think first, act second with plan mode
- `/vim` — vim keybindings for efficient prompt editing

Next up: **Module 4 — Context & Usage**, where you'll learn how to manage your context window and monitor usage.

**Continue?** Open `04-context-usage.md` when you're ready.
