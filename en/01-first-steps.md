# Module 1: First Steps

Welcome to the Claude Code slash commands tutorial! Let's start with the basics.

Slash commands are shortcuts you type directly into the Claude Code prompt. They start with `/` and let you control your session, manage context, configure settings, and more — without writing natural language instructions.

By the end of this module, you'll know how to get help, check your session status, reset your conversation, and monitor your usage.

---

## 1.1 /help

**Explain:** This is your starting point. `/help` shows all available slash commands and what they do. Think of it as your command dictionary.

**Syntax:**
```
/help
```

**Example:** When you type `/help`, you'll see a categorized list of all commands — from conversation management to configuration. It's the quickest way to discover what Claude Code can do.

**Practice:** Try running `/help` now.

**Check:** Done? You should see a list of all available commands. Take a moment to scan through them — we'll be covering the most important ones in this tutorial.

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

**Practice:** Try running `/status` now.

**Check:** Done? What model are you currently using? Tell me what you see.

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

**Tip:** `/clear` is different from `/compact`. Clear erases everything. Compact summarizes and keeps context. We'll cover `/compact` in Module 3.

---

## 1.4 /cost

**Explain:** `/cost` shows you how many tokens you've used in the current session and the estimated cost. Essential for keeping track of your usage.

**Syntax:**
```
/cost
```

**Example:** You'll see something like:
- Total tokens used in this session
- Cost breakdown
- Current session duration

**Practice:** Try running `/cost` now.

**Check:** Done? You can see how much this tutorial session has cost so far. How's it looking?

**Tip:** Check `/cost` periodically during long sessions. It helps you stay aware of your usage, especially if you're on a metered plan. Big refactoring tasks can burn through tokens fast.

---

## Module 1 Complete!

**Progress: [##..................] 1/5 modules done**

You now know the four foundational commands:
- `/help` — discover commands
- `/status` — check your session
- `/clear` — start fresh
- `/cost` — monitor usage

Next up: **Module 2 — Project Setup**, where you'll learn how to configure Claude Code for your specific project.

**Continue?** Open `02-project-setup.md` when you're ready.
