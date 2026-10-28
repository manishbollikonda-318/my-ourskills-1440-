---
name: code-reviewer
description: Automated code review assistant for analyzing Pull Requests and enforcing coding standards. Use when you need to review complex PRs, check for anti-patterns, run static quality checks, or generate comprehensive quality reports.
version: 2.0.0
---

# Code Reviewer

Automated code review assistant that integrates static analysis, best practice auditing, and report generation.

## Agent Protocols

1. **Context Analysis**: Always start by analyzing the project context and `references/coding_standards.md` to understand conventions and architectural boundaries.
2. **Progressive Review Pipeline**:
   - **Step 1: Structural Analysis**
     Run `scripts/pr_analyzer.py` for structural diffs, size thresholds, and obvious violations:
     ```bash
     python3 /Users/manishbollikonda/.gemini/config/skills/code-reviewer/scripts/pr_analyzer.py [options] <path>
     ```
   - **Step 2: Deep Quality & Static Checks**
     Run `scripts/code_quality_checker.py` to inspect cyclomatic complexity, anti-patterns, and bottlenecks:
     ```bash
     python3 /Users/manishbollikonda/.gemini/config/skills/code-reviewer/scripts/code_quality_checker.py [options] <path>
     ```
   - **Step 3: Quality Report Compilation**
     Run `scripts/review_report_generator.py` to compile findings into an executive summary for stakeholders:
     ```bash
     python3 /Users/manishbollikonda/.gemini/config/skills/code-reviewer/scripts/review_report_generator.py [options]
     ```
3. **Constructive Feedback**: Map every critique to concrete recommendations referencing `references/code_review_checklist.md` and `references/common_antipatterns.md`.

---

## Capabilities & Analysis Spectrum

### 1. Security Code Review (OWASP Top 10)
- Input validation and parameter sanitization
- IDOR and authorization boundary bypasses
- Cryptographic key handling and secrets prevention
- SQL injection, XSS, and CSRF protection
- API rate limiting and denial-of-service resilience

### 2. Static Analysis & Reliability
- SonarQube, CodeQL, and Semgrep pattern parity
- Dependency vulnerability audit (`npm audit`, `pip-audit`)
- Cyclomatic complexity and cognitive load evaluation
- Technical debt identification and dead code elimination

### 3. Architecture & Maintainability
- Separation of concerns and single responsibility
- Interface contracts and strict type safety
- Idempotency and failure handling in asynchronous pipelines
- Unit and regression test coverage adequacy

---

## Review Output Format

Every formal review must deliver:
1. **Summary Verdict**: `APPROVE`, `REQUEST_CHANGES`, or `COMMENT`.
2. **Critical Findings (Blocking)**: Security, data loss, race conditions, memory leaks (citing `file:line`).
3. **Improvement Recommendations (Non-blocking)**: Modularity, performance optimizations, naming clarity.
4. **Automated Checker Metrics**: Output summary from `pr_analyzer.py` and `code_quality_checker.py`.
