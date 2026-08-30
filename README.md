# Cubic for Homebrew

This is the [Homebrew](https://brew.sh) tap for **Cubic**, a lightweight
command-line manager for virtual machines.

Cubic spins up Linux virtual machines on **Linux, macOS, and Windows** with a
single command. It uses prebuilt cloud images so instances are ready to use
within seconds — no administrative privileges or background services required.

For full documentation, see the main project:
https://github.com/cubic-vm/cubic

## Install

```bash
brew install cubic-vm/cubic/cubic
```

This automatically installs the required [QEMU](https://www.qemu.org)
dependency.

## Upgrade

```bash
brew update
brew upgrade cubic
```

## Uninstall

```bash
brew uninstall cubic
brew untap cubic-vm/cubic
```

## Getting started

Create and connect to a new Ubuntu VM:

```bash
cubic run quickstart --image ubuntu:noble
```

A few other common commands:

```bash
cubic images        # List the supported cloud images
cubic instances     # List your existing instances
cubic ssh example   # Open an SSH session into an instance
```

See the [Cubic documentation](https://github.com/cubic-vm/cubic) for the full
command reference, including snapshots, templates, and file transfer.
