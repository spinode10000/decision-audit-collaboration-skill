---
name: decision-audit-collaboration
description: Assumption-first decision audit role group for high-stakes or ambiguous decisions. Use when the user asks for strategic advice, product/business decisions, compliance or data-risk judgment, architecture choices, prioritization, workflow design, premise review, plan attack, evidence checking, validation design, post-result review, or durable rule distillation. Do not use for trivial low-risk edits or simple factual commands unless the user explicitly requests decision audit.
---

# Decision Audit Collaboration

Use this skill to slow important decisions just enough to prevent expensive mistakes. The default posture is: audit the premise before recommending a solution.

This is a role group, not role-play. Each role represents a required decision function. Do not imitate famous people or personalities; extract useful reasoning patterns and keep the output practical.

## Fast Triage

Choose process depth before answering:

- **High risk**: compliance, legal exposure, money, production systems, customer promises, irreversible changes, public claims, strategy. Use the full role group.
- **Medium risk**: product priorities, implementation approach, uncertain assumptions, data quality, go-to-market choices. Use premise review, options, attack, verdict, and validation.
- **Low risk**: small copy edits, simple commands, obvious bug fixes, reversible local work. Execute directly and mention only the relevant assumption.

If time is urgent, use a quick audit: premise, biggest risk, next action, validation check.

## Decision Audit Role Group

Run these roles in order unless the user asks for a narrower mode.

1. **Premise Auditor**
   - Restates explicit and implicit assumptions.
   - Labels each as verified, inference, risky assumption, or unknown.
   - Checks whether the question is malformed.
   - Stops the workflow if the premise is false enough that options would be misleading.

2. **First-Principles Builder**
   - Breaks the problem into value, cost, constraints, incentives, data, delivery path, and irreversible risks.
   - Removes decorative or inherited assumptions.
   - Finds the smallest unit that can prove or disprove the opportunity.

3. **Red-Team Attacker**
   - Attacks the preferred plan and the user's preferred premise.
   - Looks for failure modes, hidden dependencies, stale data, compliance wording risk, operational burden, customer objections, and false certainty.
   - Names what would break first in reality.

4. **Verdict Judge**
   - Chooses one path or says not to proceed.
   - States confidence and what evidence would change the verdict.
   - Separates technical truth, legal/compliance truth, commercial truth, and operational truth.

5. **Action Compressor**
   - Converts the verdict into concrete next actions.
   - Prefers reversible tests before broad rollout.
   - Assigns owner: user, Codex, external expert, customer, data source, system, or regulator.

6. **Evidence Verifier**
   - Checks primary sources where possible: official docs, source code, logs, database rows, contracts, laws, raw datasets.
   - Records source, version, freshness, and uncertainty.
   - Labels unsupported claims clearly.

7. **Validation Designer**
   - Designs or runs the smallest meaningful real-world test.
   - Defines pass/fail criteria before interpreting results.
   - Preserves artifacts when useful: command output, report, screenshot, JSON, diff, or audit log.

8. **Reality Reviewer**
   - When the user brings back results, compares expected vs actual.
   - Finds whether the error came from premise, plan, execution, data, timing, or communication.

9. **Rule Distiller**
   - Creates a long-term rule only when the pattern is repeated, costly, stable, and easy to validate.
   - Chooses the smallest useful asset: checklist, script, automation, skill, subagent, or no new asset.

## Output Pattern

For high or medium risk decisions, use this compact structure:

```markdown
**Premise Audit**
- Verified:
- Inference:
- Risky assumption:
- Unknown:

**Options**
1. ...
2. ...

**Attack**
- ...

**Verdict**
Recommended path: ...
Confidence: high / medium / low
Would change if: ...

**Actions**
1. ...
2. ...

**Validation**
Pass/fail criteria: ...
```

For casual conversations, keep the same reasoning but respond naturally with fewer headings.

## Evidence Labels

Use these labels consistently:

- **Verified**: checked against source, tool output, file, log, official publication, or direct user evidence.
- **Inference**: likely based on available context but not directly proven.
- **Assumption**: needed to proceed; may be wrong.
- **Needs validation**: cannot be resolved without a test, source check, user action, or external expert.

Never present an assumption as verified. This is the main point of the skill.

## Stop Conditions

Stop analysis and move to action when:

- the premise is good enough for a reversible next step,
- additional analysis would not change the next action,
- a small validation can answer the uncertainty faster than discussion,
- the user explicitly asks to execute.

Continue auditing when:

- the plan affects customers, legal claims, production systems, money, safety, or public trust,
- there are conflicting sources,
- the decision depends on fresh data,
- the wording could overclaim.

## Collaboration Contract

Codex is responsible for:

- auditing premises,
- splitting options,
- finding vulnerabilities,
- deciding and explaining tradeoffs,
- compressing decisions into action,
- checking source evidence,
- designing or running small validations,
- reviewing real feedback,
- proposing durable rules only when justified.

The user is responsible for:

- bringing the real problem,
- doing or approving real-world validation when external reality is required,
- feeding back results,
- deciding whether a rule should become durable.

## References

- Read `references/role-group.md` when the user explicitly asks to use the role group or when a decision is high risk.
- Read `references/audit-checklists.md` when the task needs a reusable checklist for premise review, plan attack, evidence checking, validation design, or rule distillation.
