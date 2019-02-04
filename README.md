# Dotfiles

## Install
Run the bash script:

```bash
$ sh ./scripts/symlink.sh
```

This will prompt you to override each dotfile in your home directory.

## Atom
After installing, sync up the specificed the Atom packages by running:

```bash
apm install --packages-file ~/.atom/package-list.txt
```

If you add or update an Atom package, update the package-list.txt file:

```bash
apm list --installed --bare > ~/.atom/package-list.txt
```
