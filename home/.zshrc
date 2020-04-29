# Path to your oh-my-zsh installation.
DEFAULT_OMZSH_INSTALLATION_DIR="/usr/share/oh-my-zsh"
if [ -f "$DEFAULT_OMZSH_INSTALLATION_DIR/oh-my-zsh.sh" ]; then
    export ZSH="$DEFAULT_OMZSH_INSTALLATION_DIR"
    export ZSH_CUSTOM=~/.oh-my-zsh/custom/
else
    export ZSH="$HOME/.oh-my-zsh"
fi

export ZSH_THEME="agnosterzak"

# Uncomment the following line to disable bi-weekly auto-update checks.
# DISABLE_AUTO_UPDATE="true"

# Uncomment the following line to change how often to auto-update (in days).
# export UPDATE_ZSH_DAYS=13

# Uncomment the following line to enable command auto-correction.
# ENABLE_CORRECTION="true"

# Uncomment the following line to display red dots whilst waiting for completion.
# COMPLETION_WAITING_DOTS="true"

# Uncomment the following line if you want to disable marking untracked files under VCS as dirty.
# This makes repository status check for large repositories much, much faster.
# DISABLE_UNTRACKED_FILES_DIRTY="true"

# Uncomment the following line if you want to change the command execution time stamp shown in the history command output.
# You can set one of the optional three formats: "mm/dd/yyyy"|"dd.mm.yyyy"|"yyyy-mm-dd"
# or set a custom format using the strftime, see 'man strftime' for details.
HIST_STAMPS="yyyy-mm-dd"

# Too many plugins slow down shell startup.
plugins=(
  git
  docker
  docker-compose
  archlinux
)

source $ZSH/oh-my-zsh.sh

# User configuration
export LANG=en_US.UTF-8
export PATH=$HOME/.bin:/usr/local/bin:$PATH:$HOME/.yarn/bin

export VISUAL='vim'
export EDITOR="$VISUAL"

# Java
export JAVA_OPTS="-Dswing.systemlaf=javax.swing.plaf.metal.GTKLookAndFeel"
export MAVEN_OPTS="-Xmx2048m"

# Compilation flags
export ARCHFLAGS="-arch x86_64"

# Common aliases
alias zshconf="vim ~/.zshrc"
alias ssha="eval $(ssh-agent)"
alias cd..="cd .."
alias ..="cd .."
alias i3conf="vim ~/.i3/config"
alias ccat='pygmentize -g'
alias diff="diff --color"

# Other scripts
source ${HOME}/.exports.sh
source ${HOME}/.aliases.sh

ZSH_CACHE_DIR=$HOME/.oh-my-zsh-cache
if [[ ! -d "$ZSH_CACHE_DIR" ]]; then
  mkdir "$ZSH_CACHE_DIR"
fi

# SSH
eval $(ssh-agent) >> /dev/null;
ssh-add "$SSH_KEY_PATH" 2> /dev/null

# Plugins
source /usr/share/zsh/plugins/fast-syntax-highlighting/fast-syntax-highlighting.plugin.zsh
source /usr/share/zsh/plugins/zsh-autosuggestions/zsh-autosuggestions.zsh

