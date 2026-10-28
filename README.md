# Universal Agent Skills Mega-Repository (1380+ Skills)

> **The ultimate powerhouse of autonomous agent capabilities.**  
> A curated, battle-tested collection of **1,380+ production-ready skills, protocols, static analyzers, and design systems** compatible with Google Antigravity, Claude Code, Cursor, Codex, Kilo, and all modern AI coding agents.

---

## ⚡ Quick Start (Instant Installation)

Anyone who clones this repository can install all 1,380+ skills immediately into their agent runtime with a single command:

```bash
git clone https://github.com/manishbollikonda-318/my-ourskills-1440-.git
cd my-ourskills-1440-
chmod +x install.sh
./install.sh
```

### Supported Runtime Targets Automatically Configured:
- **Google Antigravity / Gemini**: `~/.gemini/config/skills/`
- **Claude Code**: `~/.claude/skills/`
- **Agent CLI (.agents)**: `~/.agents/skills/`
- **Codex**: `~/.codex/skills/`
- **Kilo**: `~/.kilo/skills/`
- **Active Workspace**: `./.agent/skills/`

---

## 🏛️ Core Flagship Skills Included

| Skill | Description | Key Tech / Focus |
|---|---|---|
| **`vibe-coding-cli`** | AntiGravity v4.3.8 Meta-Engine, Zero-Trust Git, Watchdog, 18 Shared DNA standards, 3-phase execution | Autonomous governance, Socratic planning |
| **`aas-core`** | Agentic Awesome Skills Core v20.1.0, 10 capability matrix dimensions, 13 plugin suites, `aas-stack.json` | Architecture & stack manifests |
| **`superpowers` Suite** | 15 collaborative skills (`using-superpowers`, `brainstorming`, `writing-plans`, `subagent-driven-development`, etc.) | Multi-agent coordination, TDD |
| **`apple-design-hig`** | 123 HIG manuals from Apple, Cross-Platform translations (SwiftUI, React Native, Flutter, Electron) | Platform compliance & design craft |
| **`apple-design`** | WWDC 2018 Fluid Physical Motion principles (springs, interruptibility, momentum transfer) | Web & Mobile gesture animation |
| **`frontend-expert`** | Suspense-first React/TypeScript architecture, MUI v7 Grid, `useSuspenseQuery`, no early loading spinners | Modern frontend performance |
| **`uiux-designer`** | 50+ styles, 97 color palettes, 57 font pairings with automated search and design system generators | Automated token generation |
| **`creative-tim-ui`** | 390+ UI blocks, 95% Rule, The Light Principle, Tailwind v4 + shadcn/ui composition | Restrained dashboard design |
| **`3d-web-experience`** | Three.js, React Three Fiber, Spline, WebGL model optimization, scroll-driven 3D | WebGL & spatial UI |
| **`brainwave-design`** | SVG cut-corner chamfered buttons, conic gradients, multi-ring orbital parallax | Futuristic & AI SaaS themes |
| **`fintech-landing-template`** | HooBank cyan radial text gradients, dark onyx canvases, high-contrast metrics counters | Fintech & B2B SaaS architecture |
| **`code-reviewer`** | 3-stage progressive review pipeline (`pr_analyzer.py`, `code_quality_checker.py`, `review_report_generator.py`) | Automated static analysis & AST audit |
| **`humanizer` & `unslop`** | 26+ AI tell pattern detectors, structural crutch elimination, clear human prose synthesis | Communication & documentation polish |
| **`claude-council`** | Multi-agent council peer review with blind deliberation | Consensus decision-making |

---

## 📂 Repository Structure

```
my-ourskills-1440-/
├── install.sh             # 🚀 Automatic cross-runtime installation script
├── catalog.json           # 📋 Machine-readable catalog of all 1,380+ skills
├── README.md              # 📖 Repository guide & instructions
└── skills/                # 📦 Full skills directory (each with SKILL.md, scripts, datasets, references)
    ├── vibe-coding-cli/
    ├── aas-core/
    ├── apple-design-hig/
    ├── apple-design/
    ├── frontend-expert/
    ├── uiux-designer/
    ├── creative-tim-ui/
    ├── 3d-web-experience/
    ├── brainwave-design/
    ├── fintech-landing-template/
    ├── code-reviewer/
    ├── humanizer/
    ├── unslop/
    └── ... (1,380+ directories)
```

---

## 🔍 Skill Discovery

Search the entire catalog programmatically:

```bash
# Search for skills by keyword using jq
cat catalog.json | jq '.[] | select(.name | contains("react"))'

# Search skills by domain or description
cat catalog.json | jq '.[] | select(.description | test("security|audit"; "i"))'
```

---

## 🛡️ License & Attributions
All skills retain their respective open-source licenses (MIT, Apache 2.0, or BSD) from their original upstream creators.