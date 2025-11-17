# Simulation Scenarios

This directory contains simulation scenarios and experiments for the PR-5IM framework.

## Scenario Organization

Scenarios are organized by domain and complexity:
```
simulations/
├── infrastructure/
│   ├── power_grid_resilience/
│   └── transport_optimization/
├── economic/
│   ├── market_dynamics/
│   └── resource_allocation/
├── environmental/
│   ├── climate_impact/
│   └── disaster_response/
└── integrated/
    ├── multi_domain_scenarios/
    └── stress_tests/
```

## Scenario Structure

Each scenario should include:
- `scenario.yml`: Scenario configuration
- `README.md`: Scenario description and objectives
- `input/`: Input data files
- `output/`: Output directory (git-ignored)
- `analysis/`: Analysis scripts and notebooks

## Running Simulations

To run a simulation scenario:
```bash
python -m pr5im.run_simulation --scenario simulations/scenario_name --config configs/mode.yml
```

## Development

When creating scenarios:
1. Document objectives and expected outcomes
2. Provide sample input data
3. Include validation criteria
4. Document interpretation of results
5. Consider reproducibility
