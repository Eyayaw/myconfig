# Setting up R -----------
trim_ws <- function(str) {
       gsub("[ ]{3,}", "", str)
}
# mandatory tools according to cran
## https://mac.r-project.org/tools/

system("echo 'export PATH=\"$PATH:/usr/local/gfortran/bin\"' >> ~/.path")


# English (american English) as your main language
system("defaults write org.R-project.R force.LANG en_US.UTF-8")


system(trim_ws("# For zsh
echo '# Setting language and localization variables
export LC_ALL=en_US.UTF-8
export LANG=en_US.UTF-8' >> ~/.zshrc"))

system(trim_ws("# For bash
echo '# Setting language and localization variables
export LC_ALL=en_US.UTF-8
export LANG=en_US.UTF-8' >> ~/.bash_profile"))

# C/C++ Compilers and Libraries
# Now, you need to install the C/C++ necessary compilers and other useful libraries.

system("brew install gcc ccache cmake pkg-config autoconf automake")


# installing data.table from source


# step 1
system("xcode-select --install")

# step 2
system("brew update && brew install llvm")


# For compilers to find libffi you may need to set:
system(trim_ws(r'{set -gx LDFLAGS "-L/usr/local/opt/libffi/lib"
       set -gx CPPFLAGS "-I/usr/local/opt/libffi/include"}'))
# For pkg-config to find libffi you may need to set:
system("set -gx PKG_CONFIG_PATH '/usr/local/opt/libffi/lib/pkgconfig'")

# If you need to have llvm first in your PATH, run:
system(r'{echo 'set -g fish_user_paths "/usr/local/opt/llvm/bin" $fish_user_paths' >> ~/.config/fish/config.fish}')


# put path in .path
system(trim_ws(r"{echo '# LLVM or _Low Level Virtual Machine _is a library that allow us to compile faster some R packages using OpenMP and also make that those packages use OpenMP when we are normally using R.
export PATH="/usr/local/opt/llvm/bin:$PATH"' >> ~/.path}"))

# step 3
dir.create("~/.R")

## since I installed gcc with brew install gcc, this is what is needed!
system(trim_ws(r"{echo 'VER=11  # set the version of brew gcc. (as of today: 11)
       CC=gcc-$(VER) -fopenmp   # brew gcc nicely creates gcc-9 as symlink
       CXX=g++-$(VER) -fopenmp
       CFLAGS=-g -O3 -Wall -pedantic -std=gnu99 -mtune=native -pipe
       CXXFLAGS=-g -O3 -Wall -pedantic -std=c++11 -mtune=native -pipe' >> ~/.R/Makevars}"))



# install rswitch

system("cd ~/Downloads/;
	curl --remote-name https://rud.is/rswitch/releases/RSwitch-1.7.0.app.zip;
	tar fxvz  RSwitch-1.7.0.app.zip -C /Applications")