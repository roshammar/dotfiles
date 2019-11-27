set -xg PYTHONPATH "$PYTHONPATH:$HOME/work/src/norum:$HOME/work/src:$HOME/projects"
set -xg GOOGLE_CLOUD_PROJECT crawlica-1055
set -x PATH /usr/local/opt/python/libexec/bin /usr/local/opt/gnu-sed/libexec/gnubin /usr/local/opt/gnu-getopt/bin /usr/local/opt/coreutils/libexec/gnubin $PATH $HOME/bin
set -x EDITOR nano

set -x LC_ALL "en_US.UTF-8"
set -x LANG "en_US"

set -U __done_min_cmd_duration 60000

function .    ; cd .. ; end
function ..   ; cd ../.. ; end
function ...  ; cd ../../.. ; end
function .... ; cd ../../../.. ; end

abbr -a g git
