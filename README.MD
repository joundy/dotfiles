# Install
- Put the "dotfiles" folder inside the $HOME directory
- `cd dotfiles`
- `chmod +x ./inject.bash`
- `./inject.bash`

# Encrypt & Decrypt sensitive files
- Use `dec.bash` (decrypt) or `enc.bash` (encrypt)
- Only encrypted file will be uploaded into repo
- Although the files are encrypted, still not recommended to store secret data into git (like password or phrase)

# Dependencies (TODO)
Before injecting the configs make sure all of the dependencies are installed

## Distro & WM
- fedora i3 spin -> https://fedoraproject.org/spins/i3/
- dunst (builtin)
- polybar -> dnf
- rofi -> dnf

## VIM & Workspace
- nvim -> dnf, v0.9.5
- astronvim -> 0da3fa834137597f13e53196c8c6f7e1425601ea, https://github.com/AstroNvim/AstroNvim
- tmux (builtin)
  - tmux tpm -> https://github.com/tmux-plugins/tpm
- fzf -> dnf
- fd-finder -> dnf
- rip grep -> dnf
- zsh -> dnf
- ohmyzsh -> https://ohmyz.sh/
  - 

## Langs
- node (nvm) -> https://github.com/nvm-sh/nvm
- rust -> https://www.rust-lang.org/tools/install
- golang -> https://go.dev/doc/install

## ETC
- git -> dnf
- flatpak -> dnf
- openssl -> dnf

## Flatpak app
- 
