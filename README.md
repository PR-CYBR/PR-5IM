[![Spec-Kit Validation](https://github.com/PR-CYBR/PR-5IM/actions/workflows/spec-kit.yml/badge.svg?branch=main)](https://github.com/PR-CYBR/PR-5IM/actions/workflows/spec-kit.yml)  
**Branch Purpose:** The `main` branch is the stable baseline representing production-ready code. All changes integrated through the CI/CD pipeline eventually land here.
# PR-5IM: Puerto Rico System Integration & Simulation Matrix
[![Spec-Kit Validation](https://github.com/PR-CYBR/PR-5IM/actions/workflows/spec-kit.yml/badge.svg)](https://github.com/PR-CYBR/PR-5IM/actions/workflows/spec-kit.yml)  

PR-5IM (Puerto Rico System Integration & Simulation Matrix) is an advanced simulation framework built on the Spec Kit specification-driven development framework. It provides a comprehensive platform for modeling, simulating, and analyzing complex systems across classical, quantum, and hybrid computational paradigms. The framework is designed to support infrastructure resilience, economic modeling, environmental impact analysis, and integrated system studies relevant to Puerto Rico and similar complex socio-technical systems.

## Overview

PR-5IM enables:
- **Multi-paradigm Simulation**: Classical, quantum, and hybrid computational approaches
- **System Integration**: Coordinated modeling of interconnected infrastructure and social systems
- **Scalable Analysis**: From individual components to integrated system-wide studies
- **Resilience Assessment**: Evaluate system response to disruptions and stress scenarios
- **Policy Impact Modeling**: Simulate effects of policy decisions on complex systems

## Directory Structure

```
PR-5IM/
├── .specify/              # Spec-Kit specification files
│   ├── constitution.md    # Project principles and governance
│   ├── spec.md           # Technical specifications
│   ├── plan.md           # Implementation planning
│   └── tasks/            # Individual task specifications
├── docs/                 # Framework documentation
├── src/
│   ├── engines/          # Simulation engines (classical, quantum, hybrid)
│   └── models/           # Simulation models for various domains
├── configs/              # Configuration files for simulation modes
│   ├── classical.yml     # Classical simulation configuration
│   ├── hybrid.yml        # Hybrid simulation configuration
│   └── quantum.yml       # Quantum simulation configuration
├── simulations/          # Simulation scenarios and experiments
├── workflows/            # Workflow definitions for complex simulations
├── infra/                # Terraform infrastructure configuration
└── .github/workflows/    # CI/CD workflows
```

## Simulation Modes

### Classical Mode
Traditional discrete-event and Monte Carlo simulation approaches for well-understood systems. Optimal for:
- Large-scale deterministic modeling
- Statistical analysis
- Traditional optimization problems

See [configs/classical.yml](configs/classical.yml) for configuration options.

### Quantum Mode
Full quantum circuit simulation for quantum algorithm development and quantum system modeling. Suitable for:
- Quantum algorithm prototyping
- Quantum optimization problems
- Fundamental quantum system studies

See [configs/quantum.yml](configs/quantum.yml) for configuration options.

### Hybrid Mode
Integrated classical-quantum simulation combining the strengths of both paradigms. Designed for:
- Problems benefiting from quantum speedup with classical control
- Variational quantum algorithms
- Quantum-enhanced optimization

See [configs/hybrid.yml](configs/hybrid.yml) for configuration options.

## Quick Start

1. **Clone the repository**
   ```bash
   git clone https://github.com/PR-CYBR/PR-5IM.git
   cd PR-5IM
   ```

2. **Review the specifications**
   ```bash
   cat .specify/spec.md
   ```

3. **Explore simulation configurations**
   ```bash
   cat configs/classical.yml
   cat configs/hybrid.yml
   cat configs/quantum.yml
   ```

4. **Check available models and engines**
   ```bash
   ls -la src/engines/
   ls -la src/models/
   ```

5. **Review simulation scenarios**
   ```bash
   ls -la simulations/
   ```

## Usage

### Running a Simulation
```bash
# Run with classical configuration
python -m pr5im.run --config configs/classical.yml --scenario simulations/scenario_name

# Run with quantum configuration
python -m pr5im.run --config configs/quantum.yml --scenario simulations/scenario_name

# Run with hybrid configuration
python -m pr5im.run --config configs/hybrid.yml --scenario simulations/scenario_name
```

### Executing Workflows
```bash
# Run a defined workflow
python -m pr5im.workflow --workflow workflows/workflow_name.yml
```

## Development

This project follows specification-driven development practices:

1. **Specifications First**: All development begins with clear specifications in `.specify/`
2. **Follow the Branching Strategy**: See [BRANCHING.md](BRANCHING.md) for the complete branching model
3. **Use Spec-Kit Commands**: Reference constitution, spec, plan, and tasks throughout development
4. **Maintain Documentation**: Keep documentation current with code changes

## Branching Strategy

This repository implements a comprehensive branching scheme to support specification-driven development. See [BRANCHING.md](BRANCHING.md) for detailed documentation on:
- Purpose and usage of each branch (spec, plan, design, impl, dev, main, test, stage, prod, pages, gh-pages, codex)
- Automated pull request workflows between branches
- Branch protection rules and best practices
- Development lifecycle flow from specifications through production

## Infrastructure

The repository includes Terraform infrastructure configuration for PR-CYBR agent standardization:
```bash
cd infra
terraform init -backend=false
terraform validate
terraform plan -input=false -var-file=variables.tfvars
```

See `.specify/tasks/infra-bootstrap.md` for detailed instructions.

## CI/CD Workflows

PR-5IM includes comprehensive workflows for:
- **Continuous Integration**: Automated testing and validation
- **Linting**: Code quality and style checks
- **Documentation**: Automated documentation generation and deployment
- **Spec-Kit Validation**: Specification file validation
- **Branch Automation**: Automated pull requests between branches

Workflows are located in `.github/workflows/` and follow spec-bootstrap conventions.

## AI-Driven Development

This repository is designed for both human and AI agent collaboration:
- **Start with specifications**: Review `.specify/` files before coding
- **Follow Spec-Kit workflow**: Specify → Plan → Implement
- **Update as you go**: Keep specs and plans current with changes
- **Respect the Constitution**: Follow project principles in `.specify/constitution.md`

## License

This project is released under the [MIT License](LICENSE).

## Contributing

Contributions are welcome! Please:
1. Review the constitution and specifications
2. Follow the branching strategy
3. Maintain documentation
4. Include tests for new features
5. Ensure all CI checks pass

## Support

For questions, issues, or contributions:
1. Open an issue in this repository
2. Reference relevant documentation
3. Follow the issue template
4. Tag appropriately

---

**Built on [Spec-Kit](https://github.com/PR-CYBR/spec-bootstrap)** - Specification-driven development framework
