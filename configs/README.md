# Configuration Files

This directory contains configuration files for different simulation modes in the PR-5IM framework.

## Available Configurations

### classical.yml
Configuration for classical simulation mode using traditional computing approaches.
- Discrete-event simulation
- Monte Carlo methods
- Traditional numerical methods

### hybrid.yml
Configuration for hybrid classical-quantum simulation mode.
- Integrated classical-quantum computation
- Coordinated execution across paradigms
- Optimized for problems benefiting from both approaches

### quantum.yml
Configuration for full quantum simulation mode.
- Quantum circuit simulation
- Quantum algorithm implementation
- Advanced quantum computing features

## Configuration Structure

Each configuration file includes:
- **Mode**: Simulation mode identifier
- **Integration**: System integration parameters
- **Engine**: Simulation engine settings
- **Resources**: Resource allocation and limits
- **Logging**: Logging and output settings
- **Models**: Model-specific configurations
- **Output**: Output format and storage settings

## Usage

Specify a configuration when running simulations:
```bash
python -m pr5im.run --config configs/classical.yml
```

## Customization

You can create custom configurations by:
1. Copying an existing configuration file
2. Modifying parameters as needed
3. Saving with a descriptive name
4. Referencing in your simulation commands

## Best Practices

- Keep sensitive data out of configuration files
- Use environment variables for credentials
- Document custom parameters
- Validate configurations before running
- Version control your configurations
