---
name: brainwave-design
description: Design patterns, SVG cut-corner borders, futuristic AI dark-mode themes, and parallax motion inspired by the Brainwave AI landing page (React / Next.js 14 App Router + Tailwind CSS + TypeScript + react-just-parallax). Use when building cybernetic/futuristic SaaS landing pages, gradient stroke buttons, orbital rings, and clip-path card layouts.
---

# Brainwave Design System

A futuristic, dark-mode-first design pattern library inspired by **Brainwave**, specializing in cutting-edge AI landing pages, cybernetic geometric accents, multi-ring orbital layouts, complex SVG-bordered buttons, and mouse-parallax motion. Fully compatible with standard React (Vite) and Next.js 14 (App Router) + TypeScript.

## 🎨 Color Palette & Design Tokens

### Core Accent Colors
| Token | Hex | Role |
|-------|-----|------|
| `color-1` | `#AC6AFF` | Primary Purple (Electric violet accent, active glows) |
| `color-2` | `#FFC876` | Warm Amber (Secondary highlights, star rating) |
| `color-3` | `#FF776F` | Coral Rose (Alerts, vivid gradient stops) |
| `color-4` | `#7ADB78` | Cyber Green (Status, success indicators) |
| `color-5` | `#858DFF` | Periwinkle Neon (Deep glow accents) |
| `color-6` | `#FF98E2` | Hot Magenta (Conic gradient highlights) |

### Neutral Spectrum (`n-*`)
- `n-1`: `#FFFFFF` — Primary white typography
- `n-2`: `#CAC6DD` — Off-white subheadings
- `n-3`: `#ADA8C3` — Muted body text
- `n-4`: `#757185` — Secondary hints and timestamps
- `n-5`: `#3F3A52` — Border lines & divider tracks
- `n-6`: `#252134` — Surface containers
- `n-7`: `#15131D` — Card surface depth
- `n-8`: `#0E0C15` — Canvas base dark background
- `n-11`: `#1B1B2E` — Drop shadow base layers

### Gradients
- **Conic Gradient**: `conic-gradient(from 225deg, #FFC876, #79FFF7, #9F53FF, #FF98E2, #FFC876)`
- **Radial Glow**: `radial-gradient(var(--tw-gradient-stops))`

---

## 📐 Signature UI Components & Geometric Accents

### 1. SVG Cut-Corner Gradient Button
Instead of standard CSS `border-radius`, Brainwave uses 3-piece SVG frame construction (`ButtonSvg.jsx`) with gradient defs (`ButtonGradient.jsx`):
- Left curved/chamfered cap (`#btn-left`)
- Center scalable top/bottom stroke track (`#btn-top`, `#btn-bottom`)
- Right angled cut-corner cap (`#btn-right`)
- Text elevated with `relative z-10`

### 2. Multi-Ring Orbital Circles & Parallax
Deep ambient atmosphere using concentric circle guides and mouse-reactive particle nodes:
```jsx
// 4 concentric rings centered on hero focal point
<div className="absolute top-1/2 left-1/2 w-[65.875rem] aspect-square border border-n-2/10 rounded-full -translate-x-1/2 -translate-y-1/2" />
<div className="absolute top-1/2 left-1/2 w-[51.375rem] aspect-square border border-n-2/10 rounded-full -translate-x-1/2 -translate-y-1/2" />
<div className="absolute top-1/2 left-1/2 w-[36.125rem] aspect-square border border-n-2/10 rounded-full -translate-x-1/2 -translate-y-1/2" />
<div className="absolute top-1/2 left-1/2 w-[23.125rem] aspect-square border border-n-2/10 rounded-full -translate-x-1/2 -translate-y-1/2" />

// Rotating planetary nodes anchored with origin-bottom
<div className="absolute bottom-1/2 left-1/2 w-0.25 h-1/2 origin-bottom rotate-[46deg]">
  <div className="w-2 h-2 -ml-1 -mt-36 bg-gradient-to-b from-[#DD734F] to-[#1A1A32] rounded-full" />
</div>
```

### 3. Chamfered / Cut-Corner Card Containers
Custom clip-paths and SVG border masks applied to pricing & feature benefit cards:
- Top-left or bottom-right 45-degree angled cuts.
- Subtle `stroke-1` (`#26242C`) outline grids.
- Translucent backdrop blur (`backdrop-blur border border-n-1/10 bg-n-8/80`).

---

## ⚡ Motion & Interaction Standards

1. **Mouse Parallax Layering**:
   - Background rings, planetary markers, and hero mockups use `react-just-parallax` with progressive strength tiers (e.g. `0.04`, `0.07`).
2. **Scroll Locks & Backdrop Overlays**:
   - Navigation menu toggles utilize `scroll-lock` to freeze body scrolling without layout jumps or horizontal overflow.
3. **Typewriter Heading Effects**:
   - Hero headlines and dynamic status bars feature subtle typewriter effects for conversational AI aesthetics.

---

## 🛠️ When to Apply
- Creating hero sections, feature grids, or pricing tiers for AI products, developer tooling, or Web3 projects.
- Crafting dark-mode interfaces requiring depth, glow fields, and cybernetic precision.
- Integrating angled geometry without generic rounded corners.
