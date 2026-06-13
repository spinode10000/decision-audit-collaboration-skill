# Decision Audit Role Group

Use this reference when the user wants the full role group, the decision is high risk, or a previous answer needs a deeper audit. For execution work, run the Decision Audit Role Group first, then the Execution Landing Group.

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

# Execution Landing Group

Use this group after a verdict when the user asks to start, continue, build, optimize, simplify, automate, ship, reduce cost, or make a plan executable.

## Execution Role 1: Part Deleter

Purpose: remove every part that is not required for the current validated goal.

Inputs:
- The chosen plan or feature.
- The current goal.
- Known constraints and pass/fail criteria.

Ask:
- Does this part directly create value, reduce a verified risk, or satisfy a real constraint?
- What breaks if this part is removed?
- Can this be replaced by a manual step, checklist, existing tool, or later iteration?
- Is this here because of habit, fear, status, or vague future-proofing?

Outputs:
- Delete now.
- Keep because.
- Defer until evidence.
- Add-back trigger.

Forbidden:
- Do not delete legal, safety, security, traceability, or customer-trust requirements just because they feel slow.
- Do not delete evidence collection before learning has been preserved.

## Execution Role 2: Simplification Optimizer

Purpose: make the surviving plan as simple as possible without breaking the goal.

Ask:
- Can one function, page, script, table, or decision replace several?
- Can existing tools or patterns solve this?
- Can the first version be narrower?
- What complexity exists only to satisfy an imagined future?

Outputs:
- Simplified design.
- Non-negotiable complexity.
- Complexity removed.
- Later expansion path.

Forbidden:
- Do not optimize before deleting.
- Do not introduce abstractions before repeated use proves they are needed.

## Execution Role 3: Cycle Accelerator

Purpose: compress the time between action, feedback, and correction.

Ask:
- What is the smallest next cycle that produces observable evidence?
- What can be tested locally before production?
- What can be shipped to one user, one page, one dataset, or one scenario first?
- What decision is being delayed by perfectionism?

Outputs:
- Next cycle.
- Time box.
- Artifact.
- Feedback source.
- Correction path.

Forbidden:
- Do not speed up irreversible, legally risky, or customer-trust-sensitive actions without guardrails.
- Do not confuse motion with learning.

## Execution Role 4: Automation Architect

Purpose: turn proven repeated work into a reliable system.

Ask:
- Is the process repeated, stable, measurable, and worth automating?
- Which manual step creates errors or delay?
- What input, output, owner, and failure mode must the automation have?
- How will a human audit the automation?

Outputs:
- Automate now.
- Keep manual.
- Automation boundary.
- Monitoring and rollback.

Forbidden:
- Do not automate unclear judgment.
- Do not automate a bloated process before deletion and simplification.

## Execution Role 5: Idiot Index Calculator

Purpose: expose avoidable waste by comparing finished cost to raw input cost or irreducible direct effort.

Use:
- Money ratio when raw material/input costs are known.
- Effort ratio when money is not clear: total workflow hours / direct necessary work hours.
- Latency ratio when speed matters: total elapsed time / actual active work time.

Ask:
- What is the raw input cost or irreducible effort?
- What is the finished cost or total workflow effort?
- Which layer explains the gap?
- Can we remove, simplify, internalize, automate, or renegotiate that layer?

Outputs:
- Ratio.
- Waste drivers.
- Highest leverage reduction.
- Evidence needed for a better estimate.

Forbidden:
- Do not present a rough estimate as accounting truth.
- Do not use cost reduction to justify quality, safety, compliance, or trust failures.
