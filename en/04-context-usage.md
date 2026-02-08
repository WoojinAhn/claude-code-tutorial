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

**Practice:** Try running `/compact` now. If your conversation is short, the effect will be minimal — but you'll see how it works.

**Check:** Done? Tell me what you see. The conversation should feel lighter. If you had a long history, you'll notice the summary that was created.

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

**Practice:** Try running `/context` now. See how much context this tutorial has used so far.

**Check:** Done? How full is your context window? If you've been going through the tutorial sequentially, it should be partially filled.

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

**Practice:** If you're on an API plan, try running `/cost` now. If you're on a subscription, skip to the next section (`/stats`).

**Check:** Done? If you ran it, you can see how much this tutorial session has used. If it wasn't available, no worries — `/stats` is your alternative.

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

**Practice:** Try running `/stats` now. See what your usage patterns look like.

**Check:** Done? Tell me what you see. Any interesting patterns in how you use Claude Code?

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
