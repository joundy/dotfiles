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
  - `ctrl + g + shift + i`
- fzf -> dnf
- fd-find -> dnf
- rip grep -> dnf
- zsh -> dnf
- ohmyzsh -> https://ohmyz.sh/
  - zsh-autosuggestions -> https://github.com/zsh-users/zsh-autosuggestions/blob/master/INSTALL.md

## Langs
- node (fnm) -> https://github.com/Schniz/fnm
- rust -> https://www.rust-lang.org/tools/install
- golang -> https://go.dev/doc/install

## ETC
- git -> dnf
- flatpak -> dnf
  - force apps to use dark mode `flatpak override --user --env=GTK_THEME=Adwaita:dark`
- openssl -> dnf
- openssl-devel -> dnf
- NetworkManager-openvpn -> dnf
- blueman (bluetooth manager) -> dnf
- xss-lock -> dnf # used by i3 to lock the screen
- picom -> dnf # use compositor to fix screen tearing
- podman -> dnf # docker alternative

## Flatpak (flathub) apps
- com.github.tchx84.Flatseal
- com.brave.Browser
  - set default -> `xdg-settings set default-web-browser com.brave.Browser.desktop`
- com.discordapp.Discord
- com.getpostman.Postman
- io.beekeeperstudio.Studio
- com.mongodb.Compass
- org.telegram.desktop
- org.videolan.VLC
- com.spotify.Client
- org.freedesktop.Piper
- io.podman_desktop.PodmanDesktop
