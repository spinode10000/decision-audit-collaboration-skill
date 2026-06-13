# Decision Audit Collaboration Skill

An assumption-first decision audit role group for AI collaboration.

This skill helps an AI assistant avoid rushing to conclusions on high-stakes or ambiguous problems, then turn the surviving decision into lean execution. It turns a question into a disciplined loop:

> premise audit -> first-principles split -> red-team attack -> verdict -> actions -> delete -> simplify -> accelerate -> automate -> cost teardown -> evidence -> validation -> reality review -> durable rule

## What It Is For

- business and product decisions
- compliance and data-risk judgment
- architecture and deployment choices
- prioritization under uncertainty
- strategic planning
- execution planning, simplification, automation, and cost reduction
- post-result review and rule distillation

It is intentionally not a personality role-play prompt. The point is not to imitate famous people, but to preserve the checks that make multi-perspective work useful.

## Role Group

- Premise Auditor: checks whether the question is well formed.
- First-Principles Builder: reduces the problem to value, cost, constraints, and reality.
- Red-Team Attacker: finds failure modes and hidden dependencies.
- Verdict Judge: chooses, defers, or rejects.
- Action Compressor: turns the verdict into concrete work.
- Evidence Verifier: checks primary sources and labels uncertainty.
- Validation Designer: creates the smallest meaningful test.
- Reality Reviewer: compares expected and actual results.
- Rule Distiller: decides whether the lesson should become a durable rule.

## Execution Landing Group

- Part Deleter: removes nonessential parts, steps, approvals, features, and dependencies.
- Simplification Optimizer: simplifies what remains and avoids premature architecture.
- Cycle Accelerator: shortens feedback cycles and pushes small reversible tests.
- Automation Architect: automates repeated, stable, measurable workflows after simplification.
- Idiot Index Calculator: compares finished cost or workflow effort against raw input cost or irreducible effort to expose waste.

## Install

```bash
npx skills add spinode10000/decision-audit-collaboration-skill
```

Or copy the `decision-audit-collaboration` folder into your Codex skills directory:

```bash
mkdir -p ~/.codex/skills
cp -r decision-audit-collaboration ~/.codex/skills/
```

Then ask:

```text
Use $decision-audit-collaboration to audit my assumptions before recommending a decision.
```

## License

MIT
