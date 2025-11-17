# Workflow Definitions

This directory contains workflow definitions for orchestrating complex simulations in the PR-5IM framework.

## Workflow Types

### Sequential Workflows
- Linear execution of simulation steps
- Dependencies between stages
- Conditional execution based on results

### Parallel Workflows
- Concurrent execution of independent simulations
- Parameter sweep studies
- Ensemble simulations

### Adaptive Workflows
- Dynamic workflow adjustment based on intermediate results
- Optimization loops
- Active learning scenarios

## Workflow Format

Workflows are defined in YAML format:
```yaml
name: "Example Workflow"
description: "Description of workflow purpose"

stages:
  - name: "Stage 1"
    type: "simulation"
    config: "configs/classical.yml"
    models: ["model1", "model2"]
    
  - name: "Stage 2"
    type: "analysis"
    depends_on: ["Stage 1"]
    script: "analysis/analyze.py"
```

## Execution

Run workflows using the workflow engine:
```bash
python -m pr5im.workflow --workflow workflows/workflow_name.yml
```

## Development

When creating workflows:
1. Define clear stage dependencies
2. Specify resource requirements
3. Include error handling
4. Document expected outputs
5. Test workflow execution
