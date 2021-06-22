# set up fish shell
sudo -v
brew update && brew upgrade fish

## To make fish your default shell, run the following in a fish shell:
echo '/usr/local/bin/fish' | sudo tee -a /etc/shells
## Change your default shell with
chsh -s /usr/local/bin/fish
# remove the greeting use:
set -U fish_greeting
