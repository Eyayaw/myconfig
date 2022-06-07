pip3 install --upgrade pip
pip3 install notebook
pip3 install numpy pandas matplotlib sympy scipy \
geopandas bs4 selenium requests requests_html datatable

# Python has been installed as
#   /usr/local/opt/python@3.10/bin/python3
#
# Unversioned symlinks `python`, `python-config`, `pip` etc. pointing to
# `python3`, `python3-config`, `pip3` etc., respectively, have been installed into
#   /usr/local/opt/python@3.10/libexec/bin
#
# You can install Python packages with
#   /usr/local/opt/python@3.10/bin/pip3 install <package>
# They will install into the site-package directory
#   /usr/local/lib/python3.10/site-packages
#
# tkinter is no longer included with this formula, but it is available separately:
#   brew install python-tk@3.10
#
# See: https://docs.brew.sh/Homebrew-and-Python
#
# python@3.10 is keg-only, which means it was not symlinked into /usr/local,
# because this is an alternate version of another formula.
#
# If you need to have python@3.10 first in your PATH, run:
#   fish_add_path "/usr/local/opt/python@3.10/bin"
#
# For compilers to find python@3.10 you may need to set:
#   set -gx LDFLAGS "-L/usr/local/opt/python@3.10/lib"
#
# For pkg-config to find python@3.10 you may need to set:
#   set -gx PKG_CONFIG_PATH "/usr/local/opt/python@3.10/lib/pkgconfig"


