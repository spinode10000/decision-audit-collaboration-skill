# Decision Audit Checklists

Use these checklists only when the task needs more rigor than the compact SKILL.md workflow.

## Role Group Routing

- If the question may be malformed, start with Premise Auditor only.
- If the user needs a product, business, or technical route, add First-Principles Builder.
- If the decision affects money, compliance, customer promises, or production systems, add Red-Team Attacker.
- If the user needs a clear choice, add Verdict Judge.
- If the user says "start", "continue", or "execute", add Action Compressor.
- If the user says "start", "continue", "execute", "build", "optimize", "simplify", "automate", "ship", or "reduce cost", add the Execution Landing Group after Action Compressor.
- If claims depend on laws, data, code, or public facts, add Evidence Verifier.
- If uncertainty can be tested, add Validation Designer.
- If the user returns with results, add Reality Reviewer.
- If the pattern should become reusable, add Rule Distiller.

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

## Execution Landing Checklist

Use after the verdict and before large implementation.

Part Deleter:
- What can be removed without failing the current goal?
- What is only present because of habit, fear, politics, or vague future use?
- What manual step can replace a feature until demand is proven?
- What add-back trigger would justify restoring a deleted part?

Simplification Optimizer:
- Can one screen, script, table, or workflow replace many?
- Can existing code, tools, or patterns be reused?
- What abstraction is premature?
- What is the smallest version that still produces the target artifact?

Cycle Accelerator:
- What is the next smallest observable cycle?
- What can be tested locally or with one user?
- What artifact proves progress?
- What correction path exists if the cycle fails?

Automation Architect:
- Is the process repeated, stable, measurable, and valuable enough to automate?
- What input/output/failure mode must be explicit?
- What monitoring or audit trail is needed?
- What should stay manual because judgment is still unstable?

Idiot Index Calculator:
- Finished cost / raw input cost:
- Workflow effort / irreducible direct effort:
- Total elapsed time / active work time:
- Biggest waste driver:
- Cheapest reduction test:

## Review And Rule Distillation

- Expected result:
- Actual result:
- Difference:
- Root cause: premise / plan / execution / data / timing / communication.
- Fix now:
- Prevent later:
- Should this become a rule? Only if repeated, costly, stable, and easy to validate.

## Role Group Compact Output

Use this when the user wants the full role group but the response must stay short:

```markdown
Premise Auditor: ...
First-Principles Builder: ...
Red-Team Attacker: ...
Verdict Judge: ...
Action Compressor: ...
Part Deleter: ...
Simplification Optimizer: ...
Cycle Accelerator: ...
Automation Architect: ...
Idiot Index Calculator: ...
Evidence Verifier: ...
Validation Designer: ...
Reality Reviewer: ...
Rule Distiller: ...
```

## Useful Verdict Language

- "Proceed, but only after validating..."
- "Do not proceed; the premise is wrong because..."
- "Proceed with the conservative path..."
- "This is technically verified but not legally/customer-delivery verified..."
- "The next action is not more analysis; it is a small test..."
