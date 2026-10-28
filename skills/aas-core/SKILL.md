---
name: aas-core
description: "Master Agentic Awesome Skills (AAS) Core engine adapted from sickn33/agentic-awesome-skills (v20.1.0). Provides agent-owned skill stack composition (aas-stack.json), capability matrix coverage across 10 software dimensions, context overload prevention, 13 specialized plugin suites, and guided workflow execution."
version: 20.1.0
trigger: "When selecting, composing, auditing, or executing modular agent skills, architecture stacks, or full-lifecycle software workflows."
---

# Agentic Awesome Skills (AAS Core v20.1.0) Architecture & Engine

Adapted from `sickn33/agentic-awesome-skills`.

AAS Core governs how autonomous AI agents discover, select, validate, plan, and orchestrate specialized capabilities across projects without degrading context or introducing unverified mutations.

---

## 🎯 The Core Philosophy: "The Agent Inspects, AAS Validates, You Control"

1. **Agent-Owned Selection**: The coding agent inspects the codebase, assesses requirements, and selects exact skill IDs based on technical merit. No arbitrary black-box ranking.
2. **Declarative Desired State (`aas-stack.json`)**: Selected capabilities are saved into an immutable, versioned manifest (`aas-stack.json`, Schema v2) with optional audit sidecars (`aas-selection-evidence.json`).
3. **Strict Context Overload Prevention**: Too many active skills degrade LLM reasoning and blow token budgets. AAS mandates selective activation, capping stack manifests at 128 skills and encouraging focused, role-oriented suites.
4. **Dry-Run & Verification Gate**: All package installations, configuration mutations, and plan applications must preview changes, verify content digests, and run `--dry-run` before applying changes.

---

## 📐 The 10 Mandatory Capability Dimensions

When inspecting a project and formulating an execution stack, evaluate capabilities systematically across these 10 core dimensions rather than stopping at the first match:

| Dimension | Scope & Focus | Canonical Skill Examples |
| :--- | :--- | :--- |
| **1. Architecture & Runtime** | System architecture, paradigms, runtime constraints | `@architect-review`, `@senior-architect`, `@ddd-strategic-design` |
| **2. Languages & Frameworks** | Core languages, frameworks, idiomatic patterns | `@react-patterns`, `@nextjs-best-practices`, `@golang-pro`, `@rust-pro` |
| **3. Domain Behavior** | Business logic, state transitions, domain invariants | `@ddd-tactical-patterns`, `@saga-orchestration`, `@cqrs-implementation` |
| **4. Data & Storage** | Schema design, migrations, indexing, query optimization | `@database-design`, `@database-admin`, `@database-optimizer`, `@neon-postgres` |
| **5. External Integrations** | Third-party APIs, webhooks, payments, auth | `@api-patterns`, `@stripe-integration`, `@clerk-auth`, `@hono` |
| **6. Testing & Quality** | Unit, integration, E2E, TDD cycles | `@test-driven-development`, `@e2e-testing`, `@go-playwright`, `@browser-automation` |
| **7. Security & Privacy** | OWASP hardening, zero-trust, secrets, compliance | `@security-auditor`, `@gdpr-data-handling`, `@secrets-management` |
| **8. UX & Accessibility** | Semantic HTML, screen readers, animations, design tokens| `@tailwind-patterns`, `@shadcn`, `@wcag-audit-patterns`, `@screen-reader-testing` |
| **9. DevOps & Operations** | CI/CD, containers, deployments, infrastructure | `@github-actions-templates`, `@docker-expert`, `@terraform-skill`, `@vercel-deployment`|
| **10. Maintenance & Observability** | Tracing, metrics, error budgets, refactoring | `@distributed-tracing`, `@prometheus-configuration`, `@systematic-debugging` |

*Rule*: Explicitly mark non-applicable dimensions instead of silently omitting them.

---

## 🧩 13 Specialized Plugin Suites & Bundles

For focused delivery, group skills into purpose-built suites:

1. **AAS Web App Builder**: Frontend & full-stack development (`@nextjs-best-practices`, `@react-patterns`, `@tailwind-patterns`, `@shadcn`).
2. **AAS Product Design Studio**: Modern UI, motion, design tokens, and accessibility (`@ui-ux-designer`, `@animejs-animation`, `@wcag-audit-patterns`).
3. **AAS Security Engineer**: Vulnerability scanning, red teaming, zero-trust, and security reviews (`@security-auditor`, `@differential-review`, `@penetration-testing`).
4. **AAS Secure App Builder**: Proactive defense baked directly into feature code (`@backend-security-coder`, `@secrets-management`, `@auth-implementation-patterns`).
5. **AAS Documents & Presentations**: Markdown docs, decks, and slide automation (`@documentation`, `@frontend-slides`, `@docx`, `@pptx`).
6. **AAS Data Analytics**: SQL performance, telemetry, pipelines, and reporting (`@data-storytelling`, `@database-optimizer`, `@analytics-tracking`).
7. **AAS Agent & MCP Builder**: LLM pipelines, autonomous agents, and MCP integrations (`@ai-agent-development`, `@mcp-builder`, `@rag-engineer`).
8. **AAS QA & Test Automation**: TDD cycles, E2E suites, and browser automation (`@test-driven-development`, `@e2e-testing`, `@systematic-debugging`).
9. **AAS DevOps & Cloud**: Multi-cloud infrastructure, CI/CD pipelines, and Kubernetes (`@github-actions-templates`, `@terraform-module-library`, `@docker-expert`).
10. **AAS Accessibility & Inclusive UX**: WCAG 2.2 AA audits, screen reader validation, and cognitive load reduction (`@wcag-audit-patterns`, `@screen-reader-testing`).
11. **AAS API Platform Builder**: OpenAPI contracts, tRPC/REST/GraphQL, rate limiting, and mTLS (`@api-patterns`, `@fastapi-router-py`, `@hono`).
12. **AAS SaaS Launch & Revenue**: MVP delivery, Stripe billing, pricing tiers, and SEO (`@pricing-strategy`, `@stripe-integration`, `@seo-audit`).
13. **AAS AI Product & Evaluation Ops**: Model evals, prompt optimization, and tracing (`@llm-evaluation`, `@prompt-engineering-patterns`, `@langfuse`).

---

## 🚀 Canonical Workflow Playbooks

### Workflow 1: Ship a SaaS MVP
1. **Scope & Plan**: Use `@brainstorming` and `@concise-planning` to define MVP acceptance criteria.
2. **Backend & Data**: Use `@backend-architect`, `@api-patterns`, and `@database-design` for 3NF schemas and REST/tRPC APIs.
3. **Frontend & UX**: Use `@frontend-developer`, `@react-patterns`, and `@shadcn` to scaffold responsive UI with optimistic state.
4. **Test & Stabilize**: Use `@test-driven-development` and `@e2e-testing` to verify critical signup and checkout flows.
5. **Deploy & Observe**: Use `@deployment-pipeline-design` and `@observability-engineer` for safe release and telemetry.

### Workflow 2: Security Audit for a Web Application
1. **Scope & Threat Model**: Establish boundaries and run threat modeling with `@security-auditor`.
2. **SAST & Dependency Scan**: Audit third-party packages, outdated libraries, and dangerous patterns.
3. **Auth & Access Control Verification**: Test IDOR, token validation, session expiration, and role boundaries.
4. **Injection & Logic Testing**: Verify SQL injection immunity, XSS sanitization, and CSRF protection.
5. **Remediation & Re-Test**: Apply code fixes, verify patches with `@differential-review`, and confirm regression tests pass.

### Workflow 3: Build an Autonomous AI Agent System
1. **Define Objective & Agent Topology**: Determine single-agent vs multi-agent coordination with `@ai-agent-development`.
2. **MCP Tool Integration**: Define strict tool schemas and sanitization bounds with `@mcp-builder`.
3. **Context & Memory Architecture**: Implement working memory, persistent vector retrieval, and prompt caching.
4. **Guardrails & Evaluation**: Build deterministic evaluation testbeds using `@llm-evaluation` to benchmark accuracy and stop hallucination loops.

---

## 🛡️ AAS Safety & Anti-Overload Invariants

1. **Selective Skill Activation**: Never load the entire 2,872+ skill library at once. Only activate the exact IDs needed for the current task.
2. **Content-Addressed Integrity**: Pin exact releases and verify content hashes before pulling updates.
3. **Zero Mutation without Plan Preview**: Run validation checks (`validate`) and plan previews (`plan`) before writing to filesystem or modifying configs.
4. **Safe Installer Hand-off**: Always inspect the destination directory, permissions, and run `--dry-run` to preview file additions.
