# Tuesday June 22, 2021 ------------------------------

# download amharic keyboard
keyman_url="https://downloads.keyman.com/mac/stable/14.0.276/keyman-14.0.276.dmg"
bname=`basename $keyman_url`
bname=`echo ~/Downloads/$bname`
curl $keyman_url --output $bname

# mount it
sudo hdiutil attach $bname


# Mostly taken from https://gist.github.com/gadenbuie/a14cab3d075901d8b25cbaf9e1f1fa7d


sudo -v
which -s brew
if [[ $? != 0 ]] ; then
    # Install Homebrew
    /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
else
    brew update
fi

# Critical tools
brew install --cask brave-browser
brew install --cask firefox
brew install --cask homebrew/cask-versions/google-chrome-dev
brew install --cask google-backup-and-sync
brew install --cask zoom
brew install --cask pdf-expert
brew install --cask Alfred
brew install --cask dashlane
brew install --cask flux
brew install --cask microsoft-remote-desktop
brew install --cask openconnect-gui

# apple apps
brew install --cask numbers #?
brew install --cask pages   #?
brew install --cask keynote #?
xcode-select --install

# zip/compress/unarchive
brew install --cask the-unarchiver
# paid
brew install --cask adguard adguard-vpn
## brew install --cask gestimer # does not exist
brew install --cask itsycal
brew install --cask one-switch
brew install --cask magnet # alternative: brew install --cask rectangle

# terminal-cli utilites
brew install --cask iterm2
brew install fish
brew install tldr
# open or sneak into dir/files on the terminal
brew tap willdoescode/homebrew-natls 
brew install natls

# fonts
brew tap homebrew/cask-fonts
brew install --cask font-hasklug-nerd-font
brew install --cask \
  font-fantasque-sans-mono font-fantasque-sans-mono-nerd-font font-noto-sans \
  font-noto-serif font-noto-mono font-noto-mono-for-powerline font-noto-emoji \
  font-hasklug-nerd-font font-anonymice-nerd-font font-meslo-lg-nerd-font \
  font-fira-code font-fira-mono font-fira-sans font-fira-sans-condensed \
  font-pt-mono font-pt-sans font-pt-sans-narrow font-pt-serif \
  font-pt-sans-caption font-pt-serif-caption

# utilities
brew install --cask dozer # hide iterms on the menu bar
brew install --cask wetransfer #?
brew install --cask amphetamine # for keep mac awake
brew install --cask keycastr # display key strokes
brew install --cask alt-tab # windows-like tab switcher

# r and all that
brew install --cask r
brew install pandoc cairo libsvg librsvg
brew install --cask rstudio
echo "options('prompt = R> ')" >> ~/.Rprofile
brew install --cask mactex

brew install --cask visual-studio-code
brew install --cask anaconda
brew install --cask pycharm-edu

# gnu tools
brew install coreutils
export PATH="/usr/local/opt/coreutils/libexec/gnubin:$PATH"
brew install grep
export PATH="/usr/local/opt/grep/libexec/gnubin:$PATH"


brew install youtube-dl
brew install pigz # multithreaded compression
