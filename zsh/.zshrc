
source .exports
source .aliases
source .functions

fpath=(/usr/local/share/zsh-completions $fpath)

HISTFILE=~/.zhistory
HISTSIZE=100000
SAVEHIST=100000
bindkey -e

# The following lines were added by compinstall
zstyle :compinstall filename '/Users/toffe/.zshrc'

autoload -Uz compinit
compinit
# End of lines added by compinstall

source $(brew --prefix)/share/antigen/antigen.zsh

antigen bundle mafredri/zsh-async
antigen bundle sindresorhus/pure

# Tracks your most used directories, based on 'frecency'.
antigen bundle robbyrussell/oh-my-zsh plugins/z

antigen bundle robbyrussell/oh-my-zsh plugins/python

# nicoulaj's moar completion files for zsh -- not sure why disabled.
# $b zsh-users/zsh-completions src

# Syntax highlighting on the readline
antigen bundle zsh-users/zsh-syntax-highlighting

# history search
antigen bundle zsh-users/zsh-history-substring-search ./zsh-history-substring-search.zsh

# suggestions
antigen bundle tarruda/zsh-autosuggestions

# bind UP and DOWN arrow keys for history search
zmodload zsh/terminfo
bindkey "$terminfo[kcuu1]" history-substring-search-up
bindkey "$terminfo[kcud1]" history-substring-search-down

export PURE_GIT_UNTRACKED_DIRTY=0


# history mgmt
# http://www.refining-linux.org/archives/49/ZSH-Gem-15-Shared-history/
setopt inc_append_history
setopt share_history

zstyle ':completion:*' matcher-list '' 'm:{a-zA-Z}={A-Za-z}' 'r:|[._-]=* r:|=*' 'l:|=* r:|=*'

antigen apply
