# Module 1: First Steps

Welcome to the Claude Code slash commands tutorial! Let's start with the basics.

Slash commands are shortcuts you type directly into the Claude Code prompt. They start with `/` and let you control your session, manage context, configure settings, and more — without writing natural language instructions.

By the end of this module, you'll know how to get help, check your session status, and reset your conversation.

> **Quick tip:** Some slash commands open an interactive screen (a picker, settings UI, etc.). To **get back to the conversation, press `Esc`**. This also works to cancel without selecting anything. Keep this in mind throughout the tutorial.

---

## Before You Begin: Setting Up Your Practice Environment

This tutorial includes hands-on practice with commands like `/init` that **create files**. To get the most out of it, we've prepared a simple Python project for practice.

First, the tutor checks if `git` is installed using Bash (`which git`). If not found, show installation instructions and stop:
- macOS: `xcode-select --install`
- Linux: `sudo apt install git` or `sudo yum install git`

### Auto-detect Practice Repo

First, check if the current directory is already the `claude-tutorial-playground` practice repo (by directory name or project signature files).

> **Already in the practice repo (auto-detected)**
> The user followed the setup guide correctly (clone → cd → claude).
> Say "You're already in the practice repo — great setup! Let's jump right into the first command." and skip the A/B choice. Proceed directly to 1.1.
> All commands can be practiced freely.

> **Not in the practice repo → Choose Your Setup**
> Use `AskUserQuestion` to present choices (so the user can select with arrow keys):
>
> **A. Clone the practice repo (recommended)**
> We'll clone a small Python project made for this tutorial. This gives you real code to work with, making commands like `/init` and `/review` much more meaningful.
>
> The tutor asks where to clone (default: `./claude-tutorial-playground` in the current directory).
> Uses Bash to run `git clone https://github.com/WoojinAhn/claude-tutorial-playground.git <path>`.
>
> After clone completes, show:
> ```
> Clone complete! First, type /exit to leave the current Claude session.
> Then run these commands:
>
>   cd ./claude-tutorial-playground
>   claude
>
> In the new session, type /tutorial to start the tutorial.
> ```
> Stop the tutorial here. It will resume in the new session.
>
> **B. Continue in the current directory**
> Start right here. If you're in a real project, file-modifying commands (`/init`, `/memory`) will be explained instead of practiced hands-on.

### If the user chose B

Use Glob to check the current directory for project files (`.git`, `CLAUDE.md`, `package.json`, `build.gradle`, etc.).
- **If a project is detected**: Skip hands-on practice for file-modifying commands and explain instead.
- **If no project is detected**: Environment is clean — safe to practice all commands.

---

## 1.1 /help

**Explain:** This is your starting point. `/help` shows all available slash commands and what they do. Think of it as your command dictionary.

**Syntax:**
```
/help
```

**Example:** When you type `/help`, you'll see a categorized list of all commands — from conversation management to configuration. It's the quickest way to discover what Claude Code can do.

**Practice:** Run `/help` and look through the list. Can you find the command that **summarizes your conversation**? What's it called?

**Check:** That's right — `/compact`! It summarizes your conversation history to keep context manageable. We'll cover it in detail in Module 4. This is exactly how `/help` comes in handy — searching for the right command when you need it.

**Tip:** You can come back to `/help` anytime you forget a command. It's always there.

---

## 1.2 /status

**Explain:** `/status` shows your current session information — which model you're using, your account status, and other session details. It's like checking your dashboard.

**Syntax:**
```
/status
```

**Example:** Running `/status` shows you things like:
- Current model (e.g., claude-sonnet-4-5-20250929)
- Account type and limits
- Current project context

**Practice:** Run `/status` and copy-paste the **model name** you're currently using.

**Check:** Got it! Knowing your model name helps when debugging — if responses feel different than expected, it might be a different model than you assumed.

**Tip:** This is useful when you're unsure which model you're running on, or when debugging unexpected behavior. If something feels slow or different, `/status` is the first place to look.

---

## 1.3 /clear

**Explain:** `/clear` wipes your conversation history and starts fresh. Use it when your conversation gets cluttered or when you want to start a new task without old context bleeding in.

**Syntax:**
```
/clear
```

**Example:** After running `/clear`, your entire conversation disappears and you get a clean slate. It's like opening a new terminal tab, but for Claude Code.

**Practice:** We'll skip actually running this one for now — since it would erase our tutorial progress! But remember: `/clear` = fresh start.

**Check:** Makes sense? If you were in a real project and wanted to reset completely, this is the command you'd use.

**Tip:** `/clear` is different from `/compact`. Clear erases everything. Compact summarizes and keeps context. We'll cover `/compact` in Module 4.

---

## Module 1 Complete!

**Progress: [##..............] 1/7 modules done**

You now know the three foundational commands:
- `/help` — discover commands
- `/status` — check your session
- `/clear` — start fresh

Next up: **Module 2 — Project Setup**, where you'll learn how to configure Claude Code for your specific project.

**Continue?** Open `02-project-setup.md` when you're ready.
