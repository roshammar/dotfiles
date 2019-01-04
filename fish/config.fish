set -xg PYTHONPATH "$PYTHONPATH:$HOME/work/src:$HOME/projects"
set -x PATH /usr/local/opt/python/libexec/bin $PATH $HOME/bin
set -x EDITOR nano

set -U __done_min_cmd_duration 60000

function .    ; cd .. ; end
function ..   ; cd ../.. ; end
function ...  ; cd ../../.. ; end
function .... ; cd ../../../.. ; end

abbr -a g git