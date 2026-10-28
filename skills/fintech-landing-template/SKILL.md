---
name: fintech-landing-template
description: Design system and landing page architecture for modern fintech and business websites (React + Tailwind CSS + Poppins font family). Features deep cyan/teal radial text gradients, dark onyx canvases, high-contrast metrics counters, card benefit showcases, and responsive grid layouts.
---

# Fintech & Modern Business Landing System

A clean, production-grade fintech landing page template and design system inspired by **HooBank** (`business-website-template`), optimized for financial services, credit card apps, payment gateways, and B2B SaaS platforms.

## 🎨 Color Palette & Design Tokens

### Core Colors
| Token | Hex / Value | Role |
|-------|-------------|------|
| `primary` | `#00040F` | Deep dark slate/onyx base background |
| `secondary` | `#00F6FF` | Vibrant electric cyan accent |
| `dimWhite` | `rgba(255, 255, 255, 0.7)` | Muted body copy and subheadings |
| `dimBlue` | `rgba(9, 151, 124, 0.1)` | Ambient teal glow backdrop |

### Gradients
- **Cyan Radial Text Gradient** (`text-gradient`):
  ```css
  radial-gradient(
    64.18% 64.18% at 71.16% 35.69%,
    #def9fa 0.89%,
    #bef3f5 17.23%,
    #9dedf0 42.04%,
    #7de7eb 55.12%,
    #5ce1e6 71.54%,
    #33bbcf 100%
  )
  ```
- **Dark Metallic Card Gradient** (`bg-black-gradient`):
  ```css
  linear-gradient(144.39deg, #ffffff -278.56%, #6d6d6d -78.47%, #11101d 91.61%)
  ```

---

## 📐 Layout Primitives (`styles.js`)

Consistent spacing and responsive containers for business landing architectures:

```javascript
export const styles = {
  boxWidth: "xl:max-w-[1280px] w-full",
  heading2: "font-poppins font-semibold xs:text-[48px] text-[40px] text-white xs:leading-[76.8px] leading-[66.8px] w-full",
  paragraph: "font-poppins font-normal text-dimWhite text-[18px] leading-[30.8px]",
  flexCenter: "flex justify-center items-center",
  flexStart: "flex justify-center items-start",
  paddingX: "sm:px-16 px-6",
  paddingY: "sm:py-16 py-6",
};

export const layout = {
  section: `flex md:flex-row flex-col ${styles.paddingY}`,
  sectionReverse: `flex md:flex-row flex-col-reverse ${styles.paddingY}`,
  sectionImg: `flex-1 flex ${styles.flexCenter} md:ml-10 ml-0 md:mt-0 mt-10 relative`,
  sectionInfo: `flex-1 ${styles.flexStart} flex-col`,
};
```

---

## 💳 Key Section Modules

1. **Social Proof & Stats Bar**:
   - High-contrast metrics counter layout (`3800+ USER ACTIVE`, `$230M+ TRANSACTION`, `460+ TRUSTED BY COMPANY`).
   - Clean horizontal flex wrap with vertical dividers on desktop.
2. **Feature Showcase (`Business.jsx`)**:
   - Side-by-side: Value proposition left, staggered feature cards right.
   - Hover transition to `bg-black-gradient` with subtle shadow (`0px 20px 100px -10px rgba(66, 71, 91, 0.1)`).
3. **Card Deals & Analytics Staging (`CardDeal.jsx` / `Billing.jsx`)**:
   - Highlighting mobile app integrations, App Store / Google Play badges, and card scanning mechanics.
4. **Client Logos Grid (`Clients.jsx`)**:
   - Monochromatic partner logos with opacity hover transitions.

---

## 🛠️ When to Apply
- Designing landing pages for fintech, crypto, banking, corporate SaaS, or invoicing tools.
- Structuring modular two-column landing page sections with reusable layout primitives.
- Implementing cyan text gradients and dark metallic card cards.
