
# Set up bash prompt, .bashrc, .bashprofile using R
trim_ws <- function(str) {
gsub("[ ]{3,}", "", str)
}
# create a nice looking bash/shell prompt
.url = "https://raw.githubusercontent.com/mathiasbynens/dotfiles/main/.bash_prompt"
.path = "~/.bash_prompt"
oldprompt = if (file.exists(.path)) {
  readLines(.path)
} else {
  character(1)
}
bashprompt = readLines(.url)
bashprompt = c(bashprompt[[1]], paste0("\n# Taken from ", .url), bashprompt[-1])

oldprompt = paste0(c(paste0("# brought down from top of the file ", strrep("-", 25)), oldprompt), collapse = "\n")
bashprompt = paste0(bashprompt, collapse = "\n")
write(paste0(bashprompt, "\n\n", oldprompt), .path, append = FALSE)

# create .bashrc
system('echo "[ -n "$PS1" ] && source ~/.bash_profile; echo source ~/.aliases" >> ~/.bashrc')

# create .extra
system(trim_ws(r"{echo '# Git credentials
# Not in the repository, to prevent people from accidentally committing under my name
GIT_AUTHOR_NAME="Eyayaw Beze"
GIT_COMMITTER_NAME="$GIT_AUTHOR_NAME"
git config --global user.name "$GIT_AUTHOR_NAME"
GIT_AUTHOR_EMAIL="eyuecon@gmail.com"
GIT_COMMITTER_EMAIL="$GIT_AUTHOR_EMAIL"
git config --global user.email "$GIT_AUTHOR_EMAIL"
' >> ~/.extra}"))

# create .path
system(r"{echo 'export PATH="/usr/local/opt/llvm/bin:$PATH"\nexport PATH="/usr/local/sbin:$PATH"' >> ~/.path}")

# create .bash_profile
system(trim_ws(r"{echo '# Add `~/bin` to the `$PATH`
       export PATH="$HOME/bin:$PATH";

       # Load the shell dotfiles, and then some:
       # * ~/.path can be used to extend `$PATH`.
       # * ~/.extra can be used for other settings you don’t want to commit.
       for file in ~/.{path,bash_prompt,aliases,extra}; do
       [ -r "$file" ] && [ -f "$file" ] && source "$file";
       done;
       unset file;

       # Case-insensitive globbing (used in pathname expansion)
       shopt -s nocaseglob;

       # Append to the Bash history file, rather than overwriting it
       shopt -s histappend;

       # Autocorrect typos in path names when using `cd`
       shopt -s cdspell;

       # Enable some Bash 4 features when possible:
       # * `autocd`, e.g. `**/qux` will enter `./foo/bar/baz/qux`
       # * Recursive globbing, e.g. `echo **/*.txt`
       for option in autocd globstar; do
       shopt -s "$option" 2> /dev/null;
       done;

       # Add tab completion for many Bash commands
       if which brew &> /dev/null && [ -r "$(brew --prefix)/etc/profile.d/bash_completion.sh" ]; then
       # Ensure existing Homebrew v1 completions continue to work
       export BASH_COMPLETION_COMPAT_DIR="$(brew --prefix)/etc/bash_completion.d";
       source "$(brew --prefix)/etc/profile.d/bash_completion.sh";
       elif [ -f /etc/bash_completion ]; then
       source /etc/bash_completion;
       fi;

       # Enable tab completion for `g` by marking it as an alias for `git`
       if type _git &> /dev/null; then
       complete -o default -o nospace -F _git g;
       fi;

       # Add tab completion for `defaults read|write NSGlobalDomain`
       # You could just use `-g` instead, but I like being explicit
       complete -W "NSGlobalDomain" defaults;

       # Add `killall` tab completion for common apps
       complete -o "nospace" -W "Contacts Calendar Dock Finder Mail Safari iTunes SystemUIServer Terminal Twitter" killall;' >> ~/.bash_profile}"))




