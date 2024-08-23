set -xg GOOGLE_CLOUD_PROJECT crawlica-1055
set -xg CLOUDSDK_PYTHON /Users/toffe/.pyenv/versions/3.10.0/bin/python3.10
set -xg USE_GKE_GCLOUD_AUTH_PLUGIN True
set -xg PY39 3.9.6
set -xg PY310 3.10.0
set -xg PY311 3.11.0
set -xg PY312 3.12.0
set -xg PYLATEST $PY312
set -x PATH /usr/local/opt/python/libexec/bin /usr/local/sbin /usr/local/opt/gnu-sed/libexec/gnubin /usr/local/opt/gnu-getopt/bin /usr/local/opt/coreutils/libexec/gnubin $PATH $HOME/bin /Users/toffe/.deta/bin/ /Users/toffe/.detaspace/bin
set -x EDITOR nano
set -g fish_greeting

set -x LC_ALL "en_US.UTF-8"
set -x LANG "en_US"

function .    ; cd .. ; end
function ..   ; cd ../.. ; end
function ...  ; cd ../../.. ; end
function .... ; cd ../../../.. ; end

function dl
    cd $HOME/Downloads
end

function p
    cd $HOME/projects
end


abbr -a g git

status --is-interactive; and pyenv init --path | source
pyenv init - | source
status --is-interactive; and pyenv virtualenv-init - | source

# pipx
set PATH $PATH /Users/toffe/.local/bin
# register-python-argcomplete --shell fish pipx | .

# source "/usr/local/Caskroom/google-cloud-sdk/latest/google-cloud-sdk/path.fish.inc"

starship init fish | source
fzf --fish | source
zoxide init fish | source
