# Decision Audit Collaboration Skill

An assumption-first decision audit workflow for Codex-style AI collaboration.

This skill helps an AI assistant avoid rushing to conclusions on high-stakes or ambiguous problems. It turns a question into a disciplined loop:

> premise audit -> options -> attack -> verdict -> actions -> source evidence -> small validation -> review -> reusable rule

## What It Is For

- business and product decisions
- compliance and data-risk judgment
- architecture and deployment choices
- prioritization under uncertainty
- strategic planning
- post-result review and rule distillation

It is intentionally not a role-play prompt. The point is not to simulate many personas, but to preserve the checks that make multi-perspective work useful.

## Install

Copy the `decision-audit-collaboration` folder into your Codex skills directory:

```bash
mkdir -p ~/.codex/skills
cp -r decision-audit-collaboration ~/.codex/skills/
```

Then ask:

```text
Use $decision-audit-collaboration to audit my assumptions before recommending a decision.
```

## Core Idea

Many failures do not come from bad execution. They come from a wrong starting assumption.

This skill makes the assistant start with:

```text
Is the premise reliable?
```

Only then should it recommend an action.

## License

MIT
