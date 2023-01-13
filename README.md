# Readme

## Nerd Fonts Glyphs

The terminal should use the font with the added glyphs.
- Windows
1. Download a font, Cascadia Code 1911.21 since to work fine [link](https://github.com/microsoft/cascadia-code/releases) 
2. Download Nerd Fonts github [link](https://github.com/ryanoasis/nerd-fonts)
3. Go into Nerd Fonts folder and run `fontforge -script font-patcher /mnt/c/Users//esf/Downloads/Cascadia.ttf -c`

- Mac
1. brew cask install font-hack-nerd-font


# Installation 

1. Clone
2. Copy all contents into ~/.config/nvim (create if not exist)
3. Install nodejs, python3 
4. Install vim-plug (link)[https://github.com/junegunn/vim-plug#usage]
5. Open in any folder and run :PlugInstall

# Nerd-Font

https://github.com/ryanoasis/vim-devicons

Install (Ubuntu)

1. Download the font
mkdir -p ~/.local/share/fonts
cd ~/.local/share/fonts && curl -fLo "Droid Sans Mono for Powerline Nerd Font Complete.otf" https://github.com/ryanoasis/nerd-fonts/raw/HEAD/patched-fonts/DroidSansMono/complete/Droid%20Sans%20Mono%20Nerd%20Font%20Complete.otf

2. Install Font Manager sudo apt install font-manager
3. Open in Gui mode the font-manager
4. Add the downloaded font
5. Ready!
