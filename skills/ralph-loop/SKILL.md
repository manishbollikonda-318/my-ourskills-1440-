---
name: ralph-loop
description: "Implements the autonomous developer cycle: Plan -> Build -> Test -> Improve. Use this for reliable, task-oriented iteration."
risk: low
---

# Ralph Loop Skill

The Ralph Loop is an autonomous, iterative methodology for Antigravity that ensures tasks are not just implemented, but verified and improved until completion.

## Core Cycle: Plan -> Build -> Test -> Improve

### 1. 📝 Plan Phase
- **Action**: Analyze the current task (from GSD or the user).
- **Checkpoint**: Identify all dependencies, potential edge cases, and required tools.
- **Artifact**: A mental or written step-by-step implementation plan.

### 2. 🔨 Build Phase
- **Action**: Execute the implementation.
- **Rule**: Small, atomic commits/edits. Don't touch unrelated files.

### 3. 🧪 Test Phase
- **Action**: Run the relevant verification tools (lint, unit tests, `npm run dev` to see, or puppeteer for layout).
- **Rule**: If tests fail, YOU DO NOT PASS. Proceed to Improve Phase.

### 4. 📈 Improve Phase
- **Action**: Fix broken code from the Test Phase or address lint errors.
- **Rule**: Repeat Test Phase until all checks pass.

## Mandatory Rules for Ralph Loop
- **Context Preservation**: Read the `memory` or `knowledge` files at the start of every phase if the task is complex.
- **Verification First**: Never assume code works unless you or a tool has seen it run.
- **Baton-Passing**: For long tasks, use `stitch-loop` to pass the baton if the context gets too large.

---
*Inspired by: The Antigravity Power Stack*
