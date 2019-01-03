set -xg PYTHONPATH "$PYTHONPATH:$HOME/work/src:$HOME/projects"
set -x PATH /usr/local/opt/python/libexec/bin $PATH $HOME/bin
set -x EDITOR nano

set -U __done_min_cmd_duration 60000
