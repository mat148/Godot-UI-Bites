# Godot UI Bites

A collection of UI implementations and experiments in Godot Engine.

## Project Structure

This repository contains multiple UI implementation projects, each in its own subdirectory:

- `recreating-zelda-botw-title-screen--godot-ui-bites/` - Recreation of the Zelda: Breath of the Wild title screen
- (More projects will be added in the future)

## Getting Started

### Cloning the Entire Repository

To clone the entire repository with all projects:

```bash
git clone https://github.com/yourusername/godot-ui-bites.git
cd godot-ui-bites
```

### Cloning Individual Projects

To clone a specific project, you can use Git's sparse checkout feature:

```bash
# Create a new directory for the project
mkdir zelda-botw-title-screen
cd zelda-botw-title-screen

# Clone the repo without checking out files
git clone --no-checkout https://github.com/yourusername/godot-ui-bites.git .
# (The dot at the end puts the files in the current directory)

# Enable sparse checkout (cone mode is recommended)
git sparse-checkout init --cone

# Specify the project directory
git sparse-checkout set recreating-zelda-botw-title-screen--godot-ui-bites

# Checkout the files
git checkout
```

## Requirements

- Godot Engine 4.x
- (Add any other specific requirements here)

## Contributing

(Add contribution guidelines here)

## License

(Add license information here) 