---
date: 2025-03-16
tags:
  - AI
---

# Navigating the Shift from Deterministic to Probabilistic Software Engineering

Software engineering is at a crossroads. For decades, the craft has been built on deterministic foundations – where 2+2 always equals 4 and the same inputs reliably produce the same outputs. But as we advance into the era of AI agents, we're witnessing a fundamental shift toward probabilistic thinking that's changing what it means to be a software engineer.

<!-- more -->

## The Deterministic vs. Probabilistic Paradigm

Traditional software engineering operates in a binary world: good or bad, pass or fail. When 100% of the tests pass, you can ship your product. It's clean, predictable, and comfortably black and white.

Probabilistic software, on the other hand, abandons these binary outcomes in favour of statistical efficacy. The questions shift from "Will this work?" to "What's the likelihood of this working?" This reframing is crucial as we build and deploy increasingly autonomous AI systems.

This isn't entirely new territory – we've had machine learning systems for years. But with the advent of the agentic movement, probabilistic thinking is becoming less of a specialised skill and more of a fundamental requirement.

## Complexity and Uncertainty

As agents become more autonomous their non-deterministic aspects introduces unprecedented challenges:

- Increased variability in outputs
- Difficulty in comprehensive testing
- Complex security and consistency requirements

These challenges demand engineers to develop new mental models for designing, testing, and monitoring AI-based solutions.

## The Reality Behind the Hype

YouTube is filled with lay off your entire team/become a 10x developer simply by combining tools like Cursor with some MCP servers. While these technological advances are impressive, there's still currently a substantial gap between flashy proof-of-concept and a production-ready system.

Experienced software engineers understand that coding is just one part of the job. In reality a substantial part of the job of a senior engineer falls outside of coding:

- Looking at systems holistically
- Anticipating potential failure points
- Analysing technical debt
- Aligning activities with product roadmaps
- Mentoring other team members
- Understanding how systems behave at scale

These skills become even more critical when dealing with complex, probabilistic AI systems.

## Learning to Code Is Still Valuable

Despite tools that can generate code, understanding how to build systems from the ground up remains essential. Why? Because:

- Not all generated code is correct or useful – you need discernment
- Someone still needs to put these systems into production
- Real-world applications require trade-offs between latency, scale, and reliability

The value of software engineering isn't diminishing – what's changing however is the additional skillset required.

## Finding the Right Balance

The first question when considering an agent should be: do I actually need one? Not everything requires a probabilistic approach. Sometimes deterministic software is perfectly sufficient – and an "agent" could still be running deterministic software under the hood.

## Adapting to the Agentic Age

For engineers who have determined they need to build agent-based systems, several approaches can help navigate the non-deterministic behaviour:

1. **Embrace Structured Outputs** – The goal isn't to coerce these models to become deterministic – their probabilistic nature is precisely what makes them powerful. Instead, we need to leverage that strength while building reliable systems. Tools like the Instructor library can be a great starting point in creating controllable structured outputs from LLM models. 

2. **Self-Validating Systems** – Increasingly, we'll use AI systems to verify results from other AI components, creating internal validation loops. See [LLM-as-a-judge](https://huggingface.co/learn/cookbook/llm_judge) for a practical example of using language models to evaluate other AI outputs.

3. **Learn from Existing Systems that Operate Under Uncertainty** – We're not starting from zero. Reinforcement learning and many machine learning techniques already operate under probabilistic uncertainty. We can and should apply these lessons to agent-based systems. Google's [ML Test Score](https://storage.googleapis.com/gweb-research2023-media/pubtools/4156.pdf) provides a fantastic checklist to assess production-readiness of ML systems.

4. **Focus on the Right Problems and Metrics** – Understand the problem you're solving first, not just input/output results or benchmark scores. Ensure your data and metrics accurately represent real-world conditions. Rather than chasing corner cases, evaluate performance across diverse test distributions to build systems that solve the actual problem, not just optimise for artificial metrics.

## The Hybrid Future

The future isn't probabilistic versus deterministic – it's both. We'll need all the strengths of traditional software development alongside these new approaches to probabilistic systems.

The complementary nature of these paradigms will produce the most powerful results as we build increasingly autonomous and capable systems. Great software engineers will be those who can navigate both worlds effectively, understanding when to apply each approach and how to combine them seamlessly.