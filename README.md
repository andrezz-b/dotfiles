## Usage
```bash
sh -c "$(curl -fsLS get.chezmoi.io/lb)" -- init --apply andrezz-b 
```
## Improvements
- Maintainer dot files https://github.com/twpayne/dotfiles/blob/master/home/.chezmoi.toml.tmpl
- Install external packages for linux https://www.chezmoi.io/user-guide/include-files-from-elsewhere/
  - sesh
  - bw cli
  - check current install script
-  
### Long Term
- Move to GPG
  - Gitconfig signing key for all machines (mac currentlly using some gpg)
  - bitwarden app ssh socket - kinda a pain to install on linux