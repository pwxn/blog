---
date: 2025-03-04
---

# Building StravaTalk: A Natural Language Interface for Strava Data

In the rapidly evolving world of AI agents, finding the right framework can be challenging. After exploring numerous options that often added complexity rather than solving problems, I discovered [Atomic Agents](https://github.com/atomic-agents/atomic-agents) - a lightweight, flexible framework that perfectly balances sophistication with simplicity.

## The Challenge

As a running enthusiast, I've accumulated years of workout data in Strava. While the platform offers basic analytics, I wanted the ability to query this treasure trove of information using natural language - asking questions like "What was my longest run last month?" or "Show me my average cycling speed this year" without building complex filters or exports.

This weekend project is PoC to explore the capabilities of Atomic Agents, but it demonstrates the potential for more sophisticated applications in the future.

## Enter StravaTalk

StravaTalk is a conversational interface that lets me analyse my Strava activities using natural language. Built on the Atomic Agents framework, it transforms English questions into database queries and returns human-friendly responses.

![StravaTalk App](../../assets/images/StravaTalk.gif)

## How It Works

The application follows a straightforward workflow:

1. **Data Preparation**: First, I used the Strava API to export my historical workout records to a local SQLite database. This one-time setup provides the foundation for all queries.

2. **Query Processing**: When a user enters a natural language question, it flows through a pipeline of specialized AI agents.

## The Architecture

The application uses a multi-agent architecture with three specialized AI components built with Atomic Agents:

### 1. Classification Agent

This gatekeeper determines if your query can be answered using available Strava data. It analyzes the question, identifies what data would be required, and classifies it as:
- SQL-appropriate (can be answered with available data)
- Not SQL-appropriate (requires data we don't have)
- Clarification needed (ambiguous query)

### 2. SQL Agent

For questions that can be answered, this agent converts natural language into optimized SQL queries. It understands the database schema (activities, segments, etc.) and builds queries that accurately represent the user's intent.

### 3. Response Agent

This agent transforms raw database results into human-friendly responses. It formats data with appropriate units (converting meters to kilometers, formatting pace correctly), and presents information in an engaging, motivational way.

### Shared Memory

One of the most powerful features is the shared memory implementation. All agents access the same conversation context, enabling follow-up questions like "How does that compare to last year?" without repeating context.

### Structured Outputs

Thanks to Atomic Agents' integration with [Instructor](https://github.com/jxnl/instructor), the entire system works with strongly typed outputs. This dramatically reduces hallucinations and ensures data consistency across the pipeline.

### The Development Experience

What impressed me most about building with Atomic Agents was how quickly I could go from concept to working prototype. The framework strikes an excellent balance between:

- Production-ready features (robust error handling, performance optimization)
- Developer experience (clean, readable code)
- Flexibility (easy to customize and extend)

I completed the initial version in a single weekend, something that would have taken weeks with many other frameworks.

## The Code

The project structure is clean and modular, with separate files for each agent and utility functions. Each agent has clear responsibilities, making the codebase maintainable and extensible.

The orchestrator ties everything together with a simple pipeline:

```python
def process_strava_query(classify_agent, sql_agent, response_agent, user_query):
    # Step 1: Classify the query
    classification = classify_query(classify_agent, user_query)
    
    if classification.classification != "sql_appropriate":
        # Handle non-SQL queries appropriately
        return generate_non_sql_response(...)
    
    # Step 2: Convert to SQL with conversation context
    sql_query = convert_to_sql(sql_agent, user_query)
    
    # Step 3: Execute SQL against local SQLite database
    execution_result = run_query(sql_query)
    
    # Step 4: Generate human-friendly response
    response = generate_response(response_agent, user_query, execution_result)
    
    return response