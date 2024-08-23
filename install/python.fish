#!/usr/local/bin/fish

set versions 3.10.0 3.11.0 3.12.0
for ver in $versions
    pyenv install $ver
end

set latest (echo $versions[-1])
pyenv global $latest
python --version

set -Ux PYENV_ROOT $HOME/.pyenv
set -U fish_user_paths $PYENV_ROOT/bin $fish_user_paths

python -m pip install --upgrade pip
python -m pip install --user pipx
python -m pipx ensurepath

pipx install awscli
pipx install poetry
pipx install kaggle

poetry completions fish > ~/.config/fish/completions/poetry.fish
