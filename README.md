Hamster Online
==============

## Targets
- Measure story points per week
- Measure average hours per story points
- Summarize hours per project, tasks and subtasks

## How to achieve this
- Gather data via a daemon (or cron)

## Questions
- How do we categorize the tasks?
  - We separate then in subtask@task
- How do we know what are the story points?
  - By the hashtags, configurable regex pattern
- Where and how do we assign the story points?
  - We assign then to the subtasks only
- What do we do with the other hashtags?
  - We can use one to represent the project, and filter the visualization to only one project
