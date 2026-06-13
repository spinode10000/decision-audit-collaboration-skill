# Decision Audit Checklists

Use these checklists only when the task needs more rigor than the compact SKILL.md workflow.

## Premise Audit

- What must be true for the user's question to be well-formed?
- Which assumptions came from the user, the agent, memory, stale data, or market convention?
- Which assumptions are cheap to verify now?
- Which assumptions would be expensive if wrong?
- Is the user asking for a solution when the real problem is diagnosis?
- Is there a hidden legal, compliance, security, financial, or reputational claim?

## Plan Attack

- What breaks first under real-world use?
- What dependency is uncontrolled?
- What data could be stale, unlicensed, incomplete, or misinterpreted?
- What would a skeptical customer, regulator, engineer, or competitor challenge?
- What are the false-positive and false-negative risks?
- What manual step is being silently assumed?
- What happens if scale increases by 10x?

## Evidence Check

- Prefer primary sources: official law/regulation, source code, logs, databases, raw files, contracts, product docs.
- Record the source path or URL.
- Record freshness and version when relevant.
- Separate numeric consistency from legal/business interpretation.
- Keep proof artifacts when a decision will be revisited.

## Small Validation Design

- Define one question the validation answers.
- Choose the smallest test that can falsify the risky assumption.
- Define pass/fail criteria before running it.
- Preserve output: screenshot, command output, report, JSON, diff, or customer feedback.
- Do not generalize beyond what the small test actually covered.

## Review And Rule Distillation

- Expected result:
- Actual result:
- Difference:
- Root cause: premise / plan / execution / data / timing / communication.
- Fix now:
- Prevent later:
- Should this become a rule? Only if repeated, costly, stable, and easy to validate.

## Useful Verdict Language

- "Proceed, but only after validating..."
- "Do not proceed; the premise is wrong because..."
- "Proceed with the conservative path..."
- "This is technically verified but not legally/customer-delivery verified..."
- "The next action is not more analysis; it is a small test..."
