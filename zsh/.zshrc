export ZSH=/home/max/.oh-my-zsh

# See https://github.com/robbyrussell/oh-my-zsh/wiki/Themes
ZSH_THEME="xiong-chiamiov-plus"

HYPHEN_INSENSITIVE="true"

# Uncomment the following line to disable colors in ls.
# DISABLE_LS_COLORS="true"

# PLUGINS
PLUGINS=(git)

# NEOFETCH
eval neofetch

# OH-MY-ZSH
source $ZSH/oh-my-zsh.sh

# LOCAL VARIABLES
home=$HOME
workspace=$home/workspace

# VARIABLES
export EDITOR='emacs'
export WORKSPACE=$workspace
export GOPATH=$workspace/go
export GOBIN=$GOPATH/bin

# ALIASES
alias zshreload="source ~/.zshrc"

# if [[ -n $SSH_CONNECTION ]]; then
#   export EDITOR='vim'
# else
#   export EDITOR='mvim'
# fi

# Compilation flags
# export ARCHFLAGS="-arch x86_64"

# ssh
# export SSH_KEY_PATH="~/.ssh/rsa_id"

# Set personal aliases, overriding those provided by oh-my-zsh libs,
# plugins, and themes. Aliases can be placed here, though oh-my-zsh
# users are encouraged to define aliases within the ZSH_CUSTOM folder.
# For a full list of active aliases, run `alias`.
#
# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"
