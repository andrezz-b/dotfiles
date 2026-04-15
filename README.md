## Usage
```bash
sh -c "$(curl -fsLS get.chezmoi.io/lb)" -- init --apply andrezz-b 
```
## Improvements
- Maintainer dot files https://github.com/twpayne/dotfiles/blob/master/home/.chezmoi.toml.tmpl
- mise completions for external stuff
- bw-cli-install fails after updating github PAT (the template tries to find the latest version using the old PAT from the env of the shell which starts the process)
### Long Term
- Move to GPG
  - Gitconfig signing key for all machines (mac currentlly using some gpg)
  - bitwarden app ssh socket - kinda a pain to install on linux
