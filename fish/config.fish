set -xg PYTHONPATH "$PYTHONPATH:$HOME/work/src:$HOME/projects"
set -x PATH /usr/local/opt/python/libexec/bin $PATH $HOME/bin
set -x EDITOR nano
# THEME PURE #
set fish_function_path /Users/toffe/.config/fish/functions/theme-pure $fish_function_path
