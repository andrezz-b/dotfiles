## Usage
```bash
sh -c "$(curl -fsLS get.chezmoi.io/lb)" -- init --apply andrezz-b 
```
## Improvements
- Maintainer dot files https://github.com/twpayne/dotfiles/blob/master/home/.chezmoi.toml.tmpl
- mise completions for external stuff
### Long Term
- Move to GPG
  - Gitconfig signing key for all machines (mac currentlly using some gpg)
  - bitwarden app ssh socket - kinda a pain to install on linux
