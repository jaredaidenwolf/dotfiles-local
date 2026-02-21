# dotfiles-local

My personal dotfiles. Extends [thoughtbot/dotfiles](https://github.com/thoughtbot/dotfiles).

## Requirements

- A recent version of macOS on Apple Silicon (not tested on Intel)

## Installation

If [rcm](https://github.com/thoughtbot/rcm) is not already installed:

```bash
brew install rcm
```

Install dotfiles:

```bash
chsh -s $(which zsh) # If zsh is not set as the default shell
git clone git@github.com:thoughtbot/dotfiles.git "$HOME/dotfiles"
git clone git@github.com:jaredaidenwolf/dotfiles-local.git "$HOME/dotfiles-local"
env RCRC=$HOME/dotfiles/rcrc rcup
```

## Update dotfiles

You should occasionally update thoughtbot/dotfiles:

```bash
cd $HOME/dotfiles
git pull
rcup
```

## Use in conjunction with [jaredaidenwolf/laptop](https://github.com/jaredaidenwolf/laptop)

Your laptop customizations should go in `dotfiles-local/laptop.local`.

After completing the above dotfiles installation (including `laptop.local`), you can install [jaredaidenwolf/laptop](https://github.com/jaredaidenwolf/laptop) by running:

```bash
curl -o ~/mac https://raw.githubusercontent.com/jaredaidenwolf/laptop/main/mac
sh mac 2>&1 | tee ~/laptop.log
```

Once complete, you can delete the `mac` script:

```bash
rm ~/mac
```

## Known Issues

- `configure_macos_defaults` in `laptop.local` is currently disabled (WIP). macOS system preferences must be configured manually until the defaults errors are resolved.

## Testing

Testing these scripts is made infinitely easier by using [UTM for MacOS](https://mac.getutm.app/) to run a macOS virtual machine.

## Inspiration

Thanks to [thoughtbot](https://github.com/thoughtbot) for creating and sharing [thoughtbot/dotfiles](https://github.com/thoughtbot/dotfiles) and [thoughtbot/laptop](https://github.com/thoughtbot/laptop).

If you want inspiration for your own dotfiles, check out [this GitHub search](https://github.com/search?q=dotfiles-local+thoughtbot&type=repositories&s=updated&o=desc).