# ryanchen01's Homebrew Tap

Homebrew tap for shipping my CLI tools.

## Install

```bash
brew tap ryanchen01/tap
```

## Install Packages

```bash
# formula
brew install ryanchen01/tap/<name>

# cask
brew install --cask ryanchen01/tap/<name>
```

## Packages

### Formulae

- `mcd-cn` — CLI client for the McDonald's China MCP server

### Casks

- None yet

## Update / Uninstall

```bash
brew update
brew upgrade

brew uninstall <formula>
brew uninstall --cask <cask>

# casks only: remove user data
brew uninstall --cask --zap ryanchen01/tap/<cask>
```
