# Module 5: Session Management

Claude Code sessions don't have to be one-and-done. You can resume previous conversations, rewind mistakes, rename sessions for easier lookup, and copy responses. This module covers the commands that make session management effortless.

By the end of this module, you'll know how to pick up where you left off, undo mistakes, and organize your sessions.

---

## 5.1 /resume

**Explain:** `/resume` lets you continue a previous conversation. Every Claude Code session is automatically saved, and you can come back to any of them later. This is invaluable when you need to pick up a task from yesterday or revisit a debugging session.

**Syntax:**
```
/resume
/resume [session-id-or-name]
```

Running `/resume` without arguments opens an interactive session picker. You can also pass a session ID or name directly to jump straight in.

**Example:** Running `/resume` shows your recent sessions:

```
> /resume

Recent sessions:
  1. auth-refactor (2h ago) - Refactoring authentication middleware
  2. fix-login-bug (1d ago) - Debugging OAuth callback
  3. api-design (3d ago) - Designing REST endpoints

Select a session to resume:
```

The resumed session restores the full conversation context, so Claude remembers everything you discussed.

**Practice:** Run `/resume` and tell me the **name (or date) of your most recent session**. If the list is empty, just say "none." You don't have to actually resume one.

**Check:** Acknowledge the answer. "None" is normal for first-time users. If sessions exist, it shows that Claude Code automatically saves every session.

**Tip:** You can also resume from the command line with `claude -c` (continue most recent) or `claude -r "session-name"`. This is handy when you close your terminal and want to jump right back into what you were doing.

---

## 5.2 /rewind

**Explain:** `/rewind` lets you go back in time — it can restore both your conversation and your code to a previous point. Made a wrong turn in your approach? Claude wrote something you don't like? Rewind and try again from an earlier state.

**Syntax:**
```
/rewind
```

You can also trigger rewind by pressing `Esc` twice.

**Example:** Running `/rewind` shows you a list of conversation checkpoints. You can:
- Rewind conversation only (undo recent messages, keep code changes)
- Rewind conversation and code (restore files to their earlier state)
- Summarize from a selected message (keep everything, just compress)

This is different from `/clear` — rewind is surgical, clear is nuclear.

**Practice:** Press `Esc Esc` or run `/rewind`. How many **restore points** do you see? You don't have to actually rewind — just browse.

**Check:** Acknowledge the answer. Restore points track both conversation and code changes together. When things go wrong, a clean rewind is more efficient than trying to patch forward.

**Tip:** Rewind is your safety net. When Claude goes down the wrong path — wrong architecture, broken code, bad approach — don't try to patch it up. Rewind to the point before the mistake and try a different instruction. It's faster than fixing forward.

---

## 5.3 /rename

**Explain:** `/rename` gives your current session a human-readable name. Instead of identifying sessions by cryptic IDs, you can name them something meaningful like "auth-refactor" or "fix-payment-bug" — making them easy to find with `/resume` later.

**Syntax:**
```
/rename <name>
```

**Example:**

```
> /rename auth-refactor
Session renamed to "auth-refactor"
```

Now when you use `/resume` or `claude -r`, this session shows up as "auth-refactor" instead of a random ID.

**Practice:** Run `/rename tutorial-session` and tell me the **confirmation message** you see.

**Check:** Confirm the session was renamed to "tutorial-session." Next time you use `/resume`, it will appear with this name in the list.

**Tip:** Get in the habit of naming sessions when you start working on a distinct task. It takes two seconds and saves you from scrolling through unnamed sessions later. Especially useful if you juggle multiple projects or tasks.

---

## 5.4 /copy

**Explain:** `/copy` copies Claude's last response to your clipboard. When Claude generates useful code, a command, or an explanation that you want to paste elsewhere — an editor, a PR description, a Slack message — `/copy` saves you from manually selecting and copying.

**Syntax:**
```
/copy
```

**Example:**

```
> Explain the difference between map and flatMap

[Claude's response about map vs flatMap...]

> /copy
Last response copied to clipboard.
```

Now you can paste it directly wherever you need it.

**Practice:** Run `/copy`, then paste into an editor or notes app. Tell me the **first line** of what was copied.

**Check:** Acknowledge the answer. The last response was successfully copied to clipboard. This is useful for grabbing long code snippets or explanations without manual selection.

**Tip:** This is particularly useful when Claude generates a long code snippet or a detailed explanation. Instead of scrolling up and carefully selecting text in the terminal, `/copy` grabs the whole response cleanly.

---

## Module 5 Complete!

**Progress: [##########......] 5/7 modules done**

You now have full control over your sessions:
- `/resume` — pick up where you left off
- `/rewind` — undo mistakes and try a different approach
- `/rename` — name sessions for easy identification
- `/copy` — copy responses to clipboard

Next up: **Module 6 — Developer Tools**, where you'll learn about diagnostics, themes, and code review.

**Continue?** Open `06-dev-tools.md` when you're ready.
