# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH

# Export LSP
export PATH=$PATH:~/.local/share/nvim/mason/bin

# --------------------------------------------------- #
# -------------------- Env config ------------------- #
# --------------------------------------------------- #
if [ -f ~/config_env_x86.sh ]; then
    bash ~/config_env_x86.sh

    # Path to your oh-my-zsh installation.
    export ZSH=$HOME/.oh-my-zsh

    # Export path to tmux
    export PATH=$PATH:~/installations/tmux-3.4

    # SET LSCOLOR
    export LS_COLORS="$(vivid generate catppuccin-macchiato)"
fi

# Set name of the theme to load --- if set to "random", it will
# load a random theme each time oh-my-zsh is loaded, in which case,
# to know which specific one was loaded, run: echo $RANDOM_THEME
# See https://github.com/ohmyzsh/ohmyzsh/wiki/Themes
ZSH_THEME="oxide"

# Set list of themes to pick from when loading at random
# Setting this variable when ZSH_THEME=random will cause zsh to load
# a theme from this variable instead of looking in $ZSH/themes/
# If set to an empty array, this variable will have no effect.
# ZSH_THEME_RANDOM_CANDIDATES=( "robbyrussell" "agnoster" )

# Uncomment the following line to use case-sensitive completion.
# CASE_SENSITIVE="true"

# Uncomment the following line to use hyphen-insensitive completion.
# Case-sensitive completion must be off. _ and - will be interchangeable.
# HYPHEN_INSENSITIVE="true"

# Uncomment one of the following lines to change the auto-update behavior
# zstyle ':omz:update' mode disabled  # disable automatic updates
# zstyle ':omz:update' mode auto      # update automatically without asking
# zstyle ':omz:update' mode reminder  # just remind me to update when it's time

# Uncomment the following line to change how often to auto-update (in days).
# zstyle ':omz:update' frequency 13

# Uncomment the following line if pasting URLs and other text is messed up.
# DISABLE_MAGIC_FUNCTIONS="true"

# Uncomment the following line to disable colors in ls.
# DISABLE_LS_COLORS="true"

# Uncomment the following line to disable auto-setting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment the following line to enable command auto-correction.
# ENABLE_CORRECTION="true"

# Uncomment the following line to display red dots whilst waiting for completion.
# You can also set it to another string to have that shown instead of the default red dots.
# e.g. COMPLETION_WAITING_DOTS="%F{yellow}waiting...%f"
# Caution: this setting can cause issues with multiline prompts in zsh < 5.7.1 (see #5765)
# COMPLETION_WAITING_DOTS="true"

# Uncomment the following line if you want to disable marking untracked files
# under VCS as dirty. This makes repository status check for large repositories
# much, much faster.
# DISABLE_UNTRACKED_FILES_DIRTY="true"

# Uncomment the following line if you want to change the command execution time
# stamp shown in the history command output.
# You can set one of the optional three formats:
# "mm/dd/yyyy"|"dd.mm.yyyy"|"yyyy-mm-dd"
# or set a custom format using the strftime function format specifications,
# see 'man strftime' for details.
# HIST_STAMPS="mm/dd/yyyy"

# Would you like to use another custom folder than $ZSH/custom?
# ZSH_CUSTOM=/path/to/new-custom-folder

# Which plugins would you like to load?
# Standard plugins can be found in $ZSH/plugins/
# Custom plugins may be added to $ZSH_CUSTOM/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(git fd copypath zsh-autosuggestions zsh-syntax-highlighting z)

source $ZSH/oh-my-zsh.sh

# User configuration

# export MANPATH="/usr/local/man:$MANPATH"

# You may need to manually set your language environment
# export LANG=en_US.UTF-8

# Preferred editor for local and remote sessions
# if [[ -n $SSH_CONNECTION ]]; then
#   export EDITOR='vim'
# else
#   export EDITOR='mvim'
# fi

# Compilation flags
# export ARCHFLAGS="-arch x86_64"

# Set personal aliases, overriding those provided by oh-my-zsh libs,
# plugins, and themes. Aliases can be placed here, though oh-my-zsh
# users are encouraged to define aliases within the ZSH_CUSTOM folder.
# For a full list of active aliases, run `alias`.
#
# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"

# Pyenv configuration
export PYENV_ROOT="$HOME/.pyenv"
[[ -d $PYENV_ROOT/bin ]] && export PATH="$PYENV_ROOT/bin:$PATH"
eval "$(pyenv init -)"


# ------------------------------------------------ #
# ------------- Copy command function ------------ #
# ------------------------------------------------ #
copy () {
    OUTPUT=""
    for arg in "$@"
    do
        OUTPUT+="$arg "
    done

    echo "$OUTPUT" | xclip -selection clipboard
}

# ------------------------------------------------ #
# ---------------- LS / LSD ALIAS ---------------- #
# ------------------------------------------------ #
alias ls="lsd"
alias l='ls -l'
alias la='ls -a'
alias lla='ls -la'
alias lt='ls --tree'


# ------------------------------------------------- #
# ---------------- DIRECTORY ALIAS ---------------- #
# ------------------------------------------------- #
# ---- Environment ----
# Zsh configuration
alias zshconfig="vim ~/.zshrc"

# VIM configuration
alias vimconfig="cd ~/.config/nvim"


# ----------------------------------------- #
# ---------------- CLEANUP ---------------- #
# ----------------------------------------- #
alias e="exit"
alias c="clear"
                

# ------------------------------------------- #
# ---------------- GIT ALIAS ---------------- #
# ------------------------------------------- #
alias gs="git status"
alias gb="git branch"
# Git checkout via fzf
alias gc="git for-each-ref --format='%(refname:short)' refs/heads | fzf | xargs git checkout"
# Git branch delete from list
alias gbd="git for-each-ref --format='%(refname:short)' refs/heads | fzf | xargs git branch -D "
# git status copy, copies file name from git status
alias gsc="git ls-files --others --exclude-standard -m | fzf | tr -d '\n' | xclip -selection clipboard"
# copies current branch nane
alias cb="git branch --show-current | tr -d '\n' | xclip -selection clipboard"

# git pull origin (on current branch)
gpull()
{
    git pull origin $(git branch --show-current)
}

# git push origin (on current branch)
gpush()
{
    git push origin $(git branch --show-current)
}

# git branch copy, copies any branch name from git branch
alias gbc="git for-each-ref --format='%(refname:short)' refs/heads | fzf | xclip -selection clipboard"

# ------------------------------------------ #
# ---------------- FZF INIT ---------------- #
# ------------------------------------------ #
[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh

# Set up fzf key bindings and fuzzy completion
source <(fzf --zsh)

# ------------------------------------------ #
# --------------- Attach Tmux -------------- #
# ------------------------------------------ #
if command -v tmux>/dev/null; then
  [[ ! $TERM =~ screen ]] && [ -z $TMUX ] && exec tmux
fi
