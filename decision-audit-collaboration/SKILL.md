---
name: decision-audit-collaboration
description: Assumption-first decision audit workflow for high-stakes or ambiguous decisions. Use when the user asks for strategic advice, product/business decisions, compliance or data-risk judgments, architecture choices, prioritization, workflow design, or says to audit assumptions, attack a plan, decide between options, verify evidence, run a small validation,???, or??????. Do not use for trivial low-risk edits or simple factual commands unless the user explicitly requests decision audit.
---

# Decision Audit Collaboration

Use this skill to slow down important decisions just enough to prevent expensive mistakes. The default posture is: audit the premise before recommending a solution.

## Fast Triage

Classify the request before choosing the process depth:

- **High risk**: compliance, legal exposure, money, production systems, customer promises, irreversible changes, public claims, strategy. Use the full audit.
- **Medium risk**: product priorities, implementation approach, uncertain assumptions, data quality, go-to-market choices. Use premise review, option split, attack,???, and a small validation.
- **Low risk**: small copy edits, simple commands, obvious bug fixes, reversible local work. Execute directly and add a brief note if any assumption matters.

If time is urgent, do a quick audit: premise, biggest risk, next action, validation check.

## Core Workflow

Follow this order unless the user explicitly asks for a different mode:

1. **?????/ Audit premises**
   - Restate the user's implicit and explicit assumptions.
   - Mark each as: verified fact, reasonable inference, risky assumption, or unknown.
   - Identify whether the question might be malformed.

2. **?????/ Split options**
   - Produce 1-3 viable paths.
   - Include the conservative path when stakes are high.
   - Avoid too many options; decision audit should reduce fog, not create it.

3. **?????? / Attack the plan**
   - Look for failure modes, hidden dependencies, missing evidence, incentives, legal/data wording risk, operational burden, and false certainty.
   - Attack your own preferred option as well.

4. **??? / Decide**
   - Recommend one path.
   - State why rejected options are weaker.
   - Name confidence level and what would change the decision.

5. **?????? / Compress into actions**
   - Turn the decision into concrete next steps.
   - Prefer small reversible tests before broad rollout.
   - Assign owner: user, Codex, external expert, customer, data source, or system.

6. **????????/ Check source evidence**
   - Use primary sources where possible: official docs, source code, logs, database rows, contracts, laws, raw datasets.
   - Label unsupported claims clearly.
   - If browsing or live verification is needed, do it before making time-sensitive claims.

7. **????????/ Small validation**
   - Propose or run the smallest meaningful test.
   - Define pass/fail criteria before interpreting results.
   - Preserve artifacts when useful: command output, report, screenshot, JSON, diff, or audit log.

8. **?????? / Review reality feedback**
   - When the user brings back results, compare expected vs actual.
   - Find whether the error came from premise, plan, execution, data, timing, or communication.

9. **?????? / Distill rules**
   - Create a long-term rule only when the pattern is repeated, costly, and stable.
   - Prefer the smallest useful form: a checklist, script, automation, skill, subagent, or no new asset.

## Output Pattern

For high or medium risk decisions, use this compact structure:

```markdown
**??????**
- Verified:
- Inference:
- Risky assumption:
- Unknown:

**???**
1. ...
2. ...

**???**
- ...

**???**
Recommended path: ...
Confidence: high / medium / low
Would change if: ...

**?????*
1. ...
2. ...

**???**
Pass/fail criteria: ...
```

For casual conversations, keep the same reasoning but respond more naturally and with fewer headings.

## Evidence Discipline

Use four evidence labels:

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
- helping???,
- proposing reusable rules only when justified.

The user is responsible for:

- bringing the real problem,
- doing or approving real-world validation when external reality is required,
- feeding back results,
- deciding whether a rule should become durable.

## References

Read `references/audit-checklists.md` when the task needs a reusable checklist for premise review, plan attack, validation design, or???.

