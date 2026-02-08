# Module 4: Context & Usage

As you work with Claude Code on longer tasks, two things become critical: managing your context window (how much Claude can "remember") and monitoring your usage. This module covers both.

By the end of this module, you'll know how to keep your conversation lean, visualize context usage, and track costs.

---

## 4.1 /compact

**Explain:** `/compact` compresses your conversation history into a concise summary, freeing up context window space. Use it when your conversation gets long and you notice Claude starting to forget earlier details or when performance degrades.

**Syntax:**
```
/compact
/compact [custom instructions]
```

Running `/compact` without arguments uses a default summarization strategy. You can optionally add custom instructions to tell Claude what to focus on when summarizing (e.g., "focus on the database migration decisions").

**Example:** Imagine you've been working for 30 minutes, discussing architecture, debugging a test, and refactoring a service. Your context window is filling up. Running `/compact` condenses all of that into a summary:

```
Before /compact:
- 47 messages, ~85k tokens used
- Full conversation history with every code snippet, error message, and discussion

After /compact:
- Compressed to ~8k tokens
- Key decisions preserved: "Using repository pattern for data layer,
  fixed N+1 query in UserService, refactored OrderController to use DTOs"
- Ready for more work with plenty of context space
```

**How /compact differs from /clear:**

| | /compact | /clear |
|---|---------|--------|
| Conversation history | Summarized and preserved | Completely erased |
| Context from earlier work | Retained as summary | Gone |
| When to use | Long sessions, running low on context | Starting a completely new task |

**Practice:** Run `/compact` and check: is any **command name from this tutorial still preserved** in the summary? Tell me one.

> **Heads up:** After running `/compact`, the screen will change dramatically — your conversation gets replaced with a short summary. It can feel like everything was erased, but don't worry. The key context is preserved inside that summary, and the tutorial continues right where you left off. It's a compression, not a reset.
>
> Want to see what's in the summary? Check the shortcut hint shown on screen right after compact — it lets you expand and read the summarized content.

**Check:** Acknowledge the keyword. Summaries preserve key context while trimming details. The effect may be minimal with a short conversation, but it shines during long sessions.

**Tip:** Don't wait until Claude starts forgetting things to use `/compact`. A good habit is to compact after completing each major subtask — finished debugging? Compact. Done with the refactor? Compact. This keeps your session fresh and responsive throughout long working sessions.

---

## 4.2 /context

**Explain:** `/context` visualizes your current context window usage as a colored grid. It shows you at a glance how much of Claude's memory is being used and how much room you have left. When context fills up, Claude starts forgetting earlier parts of the conversation — so knowing where you stand helps you decide when to `/compact`.

**Syntax:**
```
/context
```

**Example:** Running `/context` displays a visual grid where:
- Each cell represents a portion of the context window
- Colors indicate how full the context is
- You can see the ratio of used vs. available space

This gives you an intuitive sense of how much "memory" Claude has left before it starts losing earlier context.

**Practice:** Run `/context` and tell me roughly **what percentage** of your context window is used.

**Check:** Acknowledge the number and connect it to action (e.g., "Still plenty of room" or "Getting full — this is when `/compact` comes in handy"). As a rule of thumb, consider compacting when usage exceeds 80%.

**Tip:** Pair `/context` with `/compact` — check `/context` to see if you're running low, then `/compact` to free up space. It's like checking your phone storage before deciding whether to delete old photos.

---

## 4.3 /cost

**Explain:** `/cost` shows API token usage and estimated cost for your current session. This command is **intended for API users** (those paying per token). If you're on a Claude Max or Pro subscription, your usage is included in the subscription — so `/cost` data isn't relevant for billing. Subscribers should use `/stats` instead (covered next).

**Syntax:**
```
/cost
```

**Example:** Running `/cost` shows something like:

```
Total cost:            $0.55
Total duration (API):  6m 19.7s
Total duration (wall): 6h 33m 10.2s
Total code changes:    0 lines added, 0 lines removed
```

**Note:** On subscription plans (Max/Pro), `/cost` may not appear in your `/help` list since it's designed for API billing. If you don't see it, that's expected — use `/stats` to view your usage patterns instead.

**Practice:** If you're on an API plan, run `/cost` and tell me the **total cost** for this session. If you're on a subscription, skip to `/stats`.

**Check:** Acknowledge the cost. Long sessions and Opus usage can burn through tokens fast — periodic checks help keep spending in control.

**Tip:** For API users, check `/cost` periodically during long sessions. Big refactoring tasks and Opus usage can burn through tokens fast. Setting a `--max-budget-usd` flag when starting Claude Code can prevent unexpected costs.

---

## 4.4 /stats

**Explain:** `/stats` visualizes your usage patterns — daily usage, session history, streaks, and model preferences. Unlike `/cost` which focuses on API billing, `/stats` gives you a broader view of how you use Claude Code over time. This is the recommended usage command for subscribers.

**Syntax:**
```
/stats
```

**Example:** Running `/stats` shows visualizations like:
- Daily and weekly usage patterns
- Session history and duration
- Which models you use most
- Usage streaks

**Practice:** Run `/stats` and tell me the name of your **most-used model**. If there's no data yet, just say "none."

**Check:** Acknowledge the answer. Usage patterns help optimize your workflow — for example, if you're using Opus for tasks where Sonnet would suffice, that's a cost-saving opportunity.

**Tip:** `/stats` is a great way to understand your own workflow. If you notice you're mostly using Haiku for tasks that would benefit from Sonnet, or spending very long sessions without compacting, the data can help you optimize how you work with Claude Code.

---

## Module 4 Complete!

**Progress: [########........] 4/7 modules done**

You now understand context and usage management:
- `/compact` — compress conversation to free context space
- `/context` — visualize how much context you've used
- `/cost` — track API token costs (API users)
- `/stats` — view usage patterns and history (all users)

Next up: **Module 5 — Session Management**, where you'll learn how to resume, rewind, rename, and copy sessions.

**Continue?** Open `05-session-management.md` when you're ready.
