# Decision Audit Role Group

Use this reference when the user wants the full role group, the decision is high risk, or a previous answer needs a deeper audit.

## Role 1: Premise Auditor

Purpose: prevent solving the wrong problem.

Inputs:
- User's stated problem.
- Relevant context, evidence, constraints, and prior decisions.

Outputs:
- Premise list.
- Evidence label for each premise: verified, inference, assumption, unknown.
- The single premise most likely to break the decision.

Forbidden:
- Do not propose a solution before premise quality is clear.
- Do not treat user confidence as evidence.

## Role 2: First-Principles Builder

Purpose: reduce the problem to value, cost, constraints, and physical or operational reality.

Ask:
- What is the user really trying to buy, avoid, prove, or change?
- What cost or risk does the current state create?
- What is the smallest unit that creates value?
- What parts are inherited convention rather than necessity?

Outputs:
- Core mechanism.
- Non-negotiable constraints.
- Removable assumptions.
- Minimal viable proof.

Forbidden:
- Do not add complexity to look sophisticated.
- Do not optimize a process whose value has not been proven.

## Role 3: Red-Team Attacker

Purpose: make the plan survive contact with reality.

Attack surfaces:
- Customer trust.
- Legal or compliance language.
- Data source, license, freshness, and traceability.
- Technical reliability.
- Operational burden.
- Incentive mismatch.
- Scale and edge cases.
- Public reputational risk.

Outputs:
- Top failure modes.
- Severity: critical, high, medium, low.
- How to detect each failure early.

Forbidden:
- Do not attack only the rejected options.
- Do not use vague warnings without a failure mechanism.

## Role 4: Verdict Judge

Purpose: choose, defer, or reject.

Outputs:
- Recommended path.
- Confidence level.
- Rejected alternatives and why they are weaker.
- What evidence would change the verdict.

Truth separation:
- Technical truth: does it work?
- Evidence truth: is it proven by primary sources?
- Compliance truth: is the claim safe to make?
- Commercial truth: will a customer pay or act?
- Operational truth: can the team deliver repeatedly?

Forbidden:
- Do not hide uncertainty.
- Do not recommend action when the premise is still structurally broken.

## Role 5: Action Compressor

Purpose: turn judgment into execution.

Outputs:
- 1-5 concrete actions.
- Owner for each action.
- Expected artifact.
- Deadline or sequence.

Preferred action shapes:
- Verify source.
- Build small prototype.
- Run one customer test.
- Patch one workflow.
- Write one checklist.
- Create one reusable asset.

Forbidden:
- Do not create a giant plan when one test can answer the key uncertainty.

## Role 6: Evidence Verifier

Purpose: protect against confident unsupported claims.

Evidence hierarchy:
1. Primary source: law, official docs, source code, raw logs, database rows, signed contract, raw dataset.
2. Direct artifact: screenshot, exported report, command output, customer email.
3. Secondary source: article, summary, vendor page.
4. Memory or inference.

Outputs:
- Source path or URL.
- Version or date.
- What the source proves.
- What it does not prove.

Forbidden:
- Do not cite a source for a claim it does not actually support.

## Role 7: Validation Designer

Purpose: test reality cheaply before committing.

Validation template:
- Question:
- Risky assumption:
- Test:
- Pass criteria:
- Fail criteria:
- Artifact to preserve:
- Next action if pass:
- Next action if fail:

Forbidden:
- Do not move pass/fail criteria after seeing the result.

## Role 8: Reality Reviewer

Purpose: learn from feedback without ego.

Review template:
- Expected:
- Actual:
- Difference:
- Root cause: premise / plan / execution / data / timing / communication.
- Immediate fix:
- Prevention:

Forbidden:
- Do not call a failed premise an execution mistake.

## Role 9: Rule Distiller

Purpose: keep only rules worth carrying forward.

Create a durable rule only if:
- The pattern repeated or is likely to repeat.
- The error is costly.
- The context is stable.
- The rule is easy to validate.
- The rule will reduce future work.

Asset choice:
- Checklist: repeated human judgment.
- Script: repeated deterministic operation.
- Automation: repeated scheduled or event-driven operation.
- Skill: repeated reasoning workflow.
- Subagent: repeated independent review surface.
- Skip: weak recurrence or weak validation.

Forbidden:
- Do not package a one-off insight into a permanent rule.
