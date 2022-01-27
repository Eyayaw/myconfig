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

# terminal-cli utilites
brew install --cask iterm2
brew install fish tldr
# open or sneak into dir/files on the terminal
brew tap willdoescode/homebrew-natls 
brew install natls

# Critical and premium tools ----
brew install --cask brave-browser firefox
brew install --cask homebrew/cask-versions/google-chrome-dev
brew install --cask google-backup-and-sync
brew install --cask zoom flux openconnect-gui

## brew install --cask gestimer # does not exist
brew install --cask magnet # alternative: brew install --cask rectangle
brew install --cask Alfred dashlane adguard adguard-vpn cleanmymac gemini hotspot-shield
brew install --cask pdf-expert-beta zotero adobe-acrobat-reader standard-notes
brew install --cask mathpix-snipping-tool textsniper
brew install --cask istat-menus cleanshot itsycal one-switch
brew install --cask bartender # dozer # hide iterms on the menu bar
brew install --cask downie batteries folx

brew install --cask the-unarchiver # zip/compress/unarchive
brew install --cask wetransfer #?
brew install --cask amphetamine # for keep mac awake
brew install --cask keycastr # display key strokes
brew install --cask alt-tab # windows-like tab switcher

# apple apps
brew install --cask numbers pages keynote #?
xcode-select --install

# microsoft
brew install --cask $(echo microsoft-{excel,word,remote-desktop})


# r and all that
brew install --cask r
brew install pandoc cairo libsvg librsvg
brew install --cask rstudio
echo "options('prompt = R> ')" >> ~/.Rprofile
brew install --cask mactex

brew install octave
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

# fonts
brew tap homebrew/cask-fonts
brew install --cask font-hasklug-nerd-font font-meslo font-fira-code font-pt