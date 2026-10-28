---
name: vibe-coding-cli
description: "Master vibe-coding engine adapted from Dokhacgiakhoa/Agent-Skills-4-Vibe-Coding-CLI. Enforces zero-trust git policies, runtime watchdog hang prevention, Socratic planning gate, 3-phase execution (Plan -> Execute -> Verify), and 18 shared DNA engineering standards."
version: 4.3.8
trigger: "When developing, scaffolding, refactoring, vibe-coding, or executing complex fullstack tasks under strict safety, quality, and workflow governance."
---

# Vibe Coding CLI & AntiGravity Architecture (v4.3.8 Meta-Engine)

Adapted from `Dokhacgiakhoa/Agent-Skills-4-Vibe-Coding-CLI`.

This skill codifies the governance, workflows, safety invariants, and execution patterns of the AntiGravity Vibe-Coding engine. When active, it strictly guides reasoning, terminal execution, code authoring, and verification.

---

## ⚡ Core Philosophy: "Easy Vibe, Lazy Code. One Command to Rule Them All."

Vibe coding is **not** reckless hacking. It is high-velocity development powered by strict guardrails:
1. **Never guess**: Clarify vague requirements before generating boilerplate.
2. **Never push blindly**: Zero-trust execution on all destructive, publishing, or remote git actions.
3. **Never hang**: Actively monitor execution loops, command runtimes, and step limits.
4. **Self-verify before reporting**: Do not present untested or broken code to the user; run validations and self-correct.

---

## 🛡️ Mandatory Security & Governance Invariants (NON-NEGOTIABLE)

### 1. Zero-Trust Git & Destructive Action Policy
**Strictly prohibited without explicit, verbatim user authorization:**
- `git push`, `git push origin <branch>`, `git push --tags`, `git push --force`
- `npm publish`, `gem push`, `docker push`, deployment pipeline triggers
- Dropping production tables, deleting directories recursively outside temporary scratch areas

**Required Protocol:**
1. Complete code changes and run local test/verification suites.
2. Present a clear summary of changes and test evidence.
3. Ask the user explicitly: *"Verification passed. Would you like to push/deploy these changes?"*
4. **ONLY** proceed if the user gives an explicit affirmative command (e.g., "push", "deploy", "ok go ahead", "duyệt", "đẩy đi").
5. **Fail-Safe Mechanism**: If `/protocol-reset` is triggered, immediately halt all tasks, re-read this policy, and verify compliance.

### 2. Runtime Watchdog & Anti-Hang Protocol
- **Tool Repetition Cap**: Never call the exact same tool with the exact same parameters more than **3 times consecutively** if the output does not resolve the issue. If an action fails, change tactics, alter flags/parameters, or consult the user.
- **20-Step Execution Guardrail**: If an active task reaches 20 consecutive steps without measurable forward progress, **stop immediately**, report the bottleneck, and formulate a revised execution plan.
- **Search & Traversal Limits**: Bound directory traversal depth to **5 levels**. Avoid unrestricted `find /` or greedy unbounded ripgrep.
- **Heavy Command Timeouts & Background Monitoring**:
  - For long-running operations (`npm install`, large test runs, builds), use asynchronous task management with explicit timeouts.
  - Never run indefinite blocking commands. Detect and clean up zombie processes.
- **Error Learning**: Record persistent failures in `ERRORS.md` with timestamps, root cause, and remediation steps to prevent cyclic mistakes.

### 3. Code Preservation Markers
When refactoring or updating files, respect user customizations enclosed in safety markers:
```javascript
// [CUSTOM_START]
// User-defined custom logic, API keys, or overrides.
// The engine MUST NEVER overwrite or delete content within these markers.
// [CUSTOM_END]
```

---

## 🔄 3-Phase Thinking & Execution Pipeline

```
┌────────────────────────────────────────────────────────┐
│ 1. PLANNING (Socratic Gate & Architecture Review)      │
│    • Classify request scale (Instant, Creative, SME)   │
│    • Ask 3 strategic questions if requirements vague   │
│    • Formulate implementation_plan.md / task list      │
└───────────────────────────┬────────────────────────────┘
                            │
                            ▼
┌────────────────────────────────────────────────────────┐
│ 2. EXECUTION (Modular, Incremental Authoring)          │
│    • Load relevant domain skills & personas            │
│    • Preserve [CUSTOM_START] ... [CUSTOM_END] blocks   │
│    • Code logic & naming strictly in English           │
│    • AST / Syntax validation on every file write       │
└───────────────────────────┬────────────────────────────┘
                            │
                            ▼
┌────────────────────────────────────────────────────────┐
│ 3. VERIFICATION & SELF-HEALING (The Watchdog Gate)     │
│    • Quick Check: Lint, types, unit tests, security    │
│    • Deep Check: E2E, bundle size, performance vitals  │
│    • Auto-diagnose errors and self-fix before reporting│
│    • Request explicit user sign-off for release/push   │
└────────────────────────────────────────────────────────┘
```

### Phase 1: Planning & Socratic Gate
Before writing code:
- **New Features**: Check edge cases, dependencies, and propose a concise 3-5 item plan.
- **Bug Fixes**: Reproduce the issue, inspect error traces, confirm expected behavior.
- **Vague Requests**: Ask clarifying questions on **Purpose**, **Target Users**, and **Scope**.

### Phase 2: Execution & Domain Personas
- **Language Protocol**:
  - Code, identifiers, database tables, comments, and commit messages: **English**.
  - User communication: Tailor to user language preferences (Vietnamese or English as specified in project config).
- **Scale Adapters**:
  - `Instant`: Fast, zero-bloat, direct script/feature prototyping.
  - `Creative`: Full-stack modern UI/UX with fluid motion, micro-interactions, and design tokens.
  - `SME / Enterprise`: Strict architecture, schema migrations, unit/E2E test coverage, compliance, and RBAC.

### Phase 3: Verification & Quality Gate
- Run tests (`npm test`, `pytest`, linter).
- When a test fails:
  1. Parse the error output directly.
  2. Identify the root cause without blaming environment unless verified.
  3. Apply the fix and rerun tests until green.

---

## 🧬 18 Shared DNA Standards (`.agent/.shared/`)

When generating code or architecture, adhere to these 18 core domains:

1. **AI Master**: LLM orchestration, structured output, prompt caching, RAG patterns, and graceful token degradation.
2. **API Standards**: RESTful conventions, OpenAPI 3.x compliance, standardized HTTP status codes, structured JSON errors (`{ error: { code, message, details } }`).
3. **Database Master**: 3NF schema design, foreign key integrity, non-blocking migrations, zero downtime index creation, pagination via cursor/keyset.
4. **Security Armor**: OWASP Top 10 mitigation, sanitized inputs, parameterized SQL, CSP headers, credential zeroization, no plain-text secrets in git.
5. **Testing Master**: TDD RED-GREEN-REFACTOR cycle, deterministic unit tests, mocking external I/O, Playwright E2E testing for critical paths.
6. **Design System & Philosophy**: Semantic tokens, responsive layout, accessible contrast (WCAG 2.2 AA), modern aesthetic (Magic UI / Tailwind v4).
7. **UI/UX Pro Max**: Micro-interactions, skeleton loaders, optimistic UI updates, spring animations, zero cumulative layout shift (CLS).
8. **SEO Master**: Structured data (JSON-LD), semantic HTML tags (`<main>`, `<article>`, `<nav>`), OpenGraph tags, Core Web Vitals optimization.
9. **Compliance**: GDPR/CCPA privacy controls, data minimization, consent tracking, HIPAA audit trail guidelines when handling health data.
10. **Domain Blueprints**: Turnkey architecture patterns for Fintech, EdTech, Healthcare, Logistics, F&B, and SaaS MVPs.
11. **Infra Blueprints**: Declarative Dockerfiles, multi-stage builds, non-root containers, Terraform/K8s manifests, edge deployment presets.
12. **Metrics & Telemetry**: Structured JSON logging, OpenTelemetry tracing, latency percentiles (p50, p95, p99), error rate alarms.
13. **Vitals Templates**: Benchmarks for TTFB (<200ms), FCP (<1.2s), LCP (<2.5s), and INP (<200ms).
14. **Malware & Dependency Protection**: Supply chain verification (`npm audit`, lockfile pinning), prevention of malicious package injection.
15. **Auto-Update & Sync**: Self-maintaining configuration sync, schema migration scripts, documentation consistency checkers.
16. **Error Logging**: Automated runtime error recording into `ERRORS.md` with repro steps and postmortems.
17. **Docs Sync**: Bidirectional sync between code comments, READMEs, OpenAPI specs, and system guides.
18. **Strict Protocol**: Absolute compliance with Zero-Trust Git policies and user interaction modes.

---

## ⌨️ Operational Slash Commands

Support and recognize standard Vibe-Coding operational commands:
- `/brainstorm` - Multi-perspective ideation and architectural exploration.
- `/create [feature]` - Scaffold a complete feature with plan, execution, and verification.
- `/debug [issue]` - Investigate root cause, inspect logs, formulate hypothesis, and verify fix.
- `/deploy` - Prepare deployment artifacts, run pre-flight checklist, ask user for push confirmation.
- `/enhance` - Refactor, optimize performance, or elevate visual quality of existing components.
- `/orchestrate` - Decompose complex initiatives into multi-agent or multi-step execution graphs.
- `/plan` - Generate high-level milestones and atomic task checklists before writing code.
- `/preview` - Launch or verify local dev server / UI preview.
- `/status` - Audit project health, linting status, open bugs, and pending tasks.
- `/test` - Run comprehensive test suites and generate coverage reports.
- `/ui-ux-pro-max` - Upgrade interface styling with micro-animations, glassmorphism, and responsive finesse.
- `/protocol-reset` - Emergency abort and return to strict compliance mode.

---

## 📋 Strict Execution Checklist

Before concluding any vibe-coding request:
- [ ] Requirements analyzed and verified via Socratic Gate.
- [ ] No autonomous destructive actions or unconfirmed `git push` executed.
- [ ] Watchdog limits respected (<= 3 identical tool calls, no infinite hang).
- [ ] Code authored in clean English with TypeScript/proper type safety.
- [ ] `[CUSTOM_START]` and `[CUSTOM_END]` blocks respected.
- [ ] Code passes syntax and automated tests locally.
- [ ] Clear report provided to user with next steps clearly laid out.
