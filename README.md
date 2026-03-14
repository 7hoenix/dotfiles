# Dotfiles

Managed with [chezmoi](https://www.chezmoi.io/).

## Setup on a new machine

```sh
# Install chezmoi and apply dotfiles in one command
sh -c "$(curl -fsLS get.chezmoi.io)" -- init --apply 7hoenix
```

## Day-to-day usage

```sh
# Add a new dotfile to chezmoi
chezmoi add ~/.config/some/config.toml

# Edit a managed file (opens in $EDITOR, applies on save)
chezmoi edit ~/.config/tmux/tmux.conf

# See what would change before applying
chezmoi diff

# Apply changes from the source repo to your home directory
chezmoi apply

# Pull latest from remote and apply
chezmoi update
```

## What's managed

| File | Purpose |
|------|---------|
| `~/.config/tmux/tmux.conf` | tmux configuration |
