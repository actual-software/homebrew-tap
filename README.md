# Homebrew Tap for Rulectl

This is a custom Homebrew tap for [rulectl](https://github.com/actual-software/rulectl), a command-line tool for managing AI generated rules in Git repositories.

## Installation

```bash
# Add the tap
brew tap actual-software/tap

# Install rulectl
brew install rulectl
```

## Usage

After installation, you can use rulectl directly:

```bash
# Show help
rulectl --help

# Configure rulectl
rulectl config --help
```

## Updating

```bash
# Update to the latest version
brew upgrade rulectl
```

## Uninstalling

```bash
# Remove rulectl
brew uninstall rulectl

# Remove the tap (optional)
brew untap actual-software/tap
```

## Development

This tap is automatically updated when new releases are published to the main [rulectl repository](https://github.com/actual-software/rulectl).

### Manual Testing

```bash
# Test the formula locally
brew install --build-from-source ./Formula/rulectl.rb

# Run formula tests
brew test rulectl

# Check formula for issues
brew audit --strict rulectl
```

### Formula Updates

The formula is automatically updated via GitHub Actions when a new release is published. The workflow:

1. Downloads the latest macOS binaries
2. Calculates SHA256 hashes
3. Updates the formula with new version and hashes
4. Tests the updated formula
5. Commits and pushes the changes

## Support

For issues with the Homebrew formula, please open an issue in this repository.

For issues with rulectl itself, please open an issue in the [main repository](https://github.com/actual-software/rulectl/issues).