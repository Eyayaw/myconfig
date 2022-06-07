# Mostly taken from https://gist.github.com/gadenbuie/a14cab3d075901d8b25cbaf9e1f1fa7d

# Make sure we’re using the latest Homebrew.
brew update

# Upgrade any already-installed formulae.
brew upgrade

# terminal-cli utilites
brew install --cask iterm2
brew install fish tldr
# open or sneak into dir/files on the terminal
brew tap willdoescode/homebrew-natls 
brew install natls

# Critical and premium tools ----
brew install --cask alfred dashlane 
brew install --cask adguard adguard-vpn hotspot-shield
brew install --cask cleanmymac gemini
brew install --cask cryptomator macfuse
brew install --cask brave-browser firefox google-chrome 
#brew install --cask homebrew/cask-versions/google-chrome-dev
brew install --cask google-drive #google-backup-and-sync
brew install --cask zoom flux openconnect-gui


# window management (tiling)
brew install --cask magnet # alternative: yabai rectangle

# apple apps
brew install --cask numbers pages keynote #?
xcode-select --install

# r and all that
brew install --cask r rstudio
echo 'options(prompt="R> ", continue=" ")' >> ~/.Rprofile
brew install pandoc cairo libsvg librsvg
brew install --cask mactex
brew cask install --appdir="~/Applications" rstudio-daily
brew install XQuartz # for X11 library

# text expander
brew tap federico-terzi/espanso
brew install espanso


## brew install --cask gestimer # does not exist
brew install --cask bartender # dozer # hide iterms on the menu bar
brew install --cask pdf-expert-beta zotero adobe-acrobat-reader sidenotes #standard-notes
brew install --cask mathpix-snipping-tool textsniper
brew install --cask istat-menus cleanshot itsycal one-switch
brew install --cask downie batteries folx

brew install --cask the-unarchiver # zip/compress/unarchive
brew install --cask wetransfer #?
brew install --cask amphetamine # for keep mac awake
brew install --cask keycastr # display key strokes
brew install --cask alt-tab # windows-like tab switcher

brew install youtube-dl
brew install pigz # multithreaded compression

# microsoft
brew install --cask $(echo microsoft-{excel,word,remote-desktop})

# other programming languages
brew install octave
brew install --cask visual-studio-code
brew install --cask anaconda
brew install --cask pycharm-edu


# fonts
brew tap homebrew/cask-fonts
brew install --cask font-hasklug-nerd-font font-meslo font-fira-code font-pt
