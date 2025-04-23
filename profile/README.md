# Multi-Repo Demo

This organization is created as a starting point for testing multi-repo operations using the [GitKraken CLI](https://gitkraken.com/cli).

## Getting Started

To get started, you will need to install the CLI and you will also want fork and clone down all the repos.

### Installation

Your first step is to install the GitKraken CLI using your OS package manager.

```sh
# MacOS:
brew install gitkraken-cli

# Ubuntu:
sudo snap install gitkraken-cli

# Windows:
winget install gitkraken.cli
```

> MacOS specific Note: If you use `oh-my-zsh`, you will need to run `unalias gk`. This command is only temporary when run within a specific tab/console instance. To make it permanent you can add the unalias command to your `.zshrc` config.

### Forking the repos

The repos you will need to fork can be found here:
- https://github.com/multi-repo-demo/todo-backend 
- https://github.com/multi-repo-demo/todo-component-library 
- https://github.com/multi-repo-demo/todo-frontend-app

If you have the GitHub CLI installed, you can use this wrapping script to automate the forking process.

```sh
# One-liner to fetch and execute the fork script
curl -sSL https://raw.githubusercontent.com/multi-repo-demo/.github/main/fork.sh | bash

# Or download and run separately
curl -sSL https://raw.githubusercontent.com/multi-repo-demo/.github/main/fork.sh -o fork.sh
chmod +x fork.sh
./fork.sh
```

> **Security Note**: Always review scripts before executing them directly from the internet. You can download the script first to inspect it before running: `curl -O https://raw.githubusercontent.com/multi-repo-demo/.github/main/fork.sh`

### Cloning the repos

In a Linux-like evironment, you can use this convenience script to clone the repos into a specified directory.

```sh
# One-liner to fetch and execute the clone script
curl -sSL https://raw.githubusercontent.com/multi-repo-demo/.github/main/clone.sh | bash -s -- johndoe /path/to/target/directory

# Or download and run separately
curl -sSL https://raw.githubusercontent.com/multi-repo-demo/.github/main/clone.sh -o clone.sh
chmod +x clone.sh
./clone.sh johndoe /path/to/target/directory
```



## Do some Work



Make some changes to the repos

