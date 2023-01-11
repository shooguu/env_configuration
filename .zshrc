# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH

# Path to your oh-my-zsh installation.
export ZSH=$HOME/.oh-my-zsh
export PATH=$PATH:~/build-tools/TASKING_TriCore-VX-linux_v6.3r1/TriCore/ctc/bin
export PATH=$PATH:~/hightec/bin
export PATH=$PATH:~/bin
export PATH=$PATH:/c/Users/snakamura/AppData/Local/Programs/Microsoft\ VS\ Code/bin
export PATH=$PATH:/c/Windows/System32
export PATH=$PATH:/c/win32yank-x64

# -------- PYENV --------
export PATH="$HOME/.pyenv/bin:$PATH"
eval "$(pyenv init -)"
eval "$(pyenv virtualenv-init -)"

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
plugins=(git zsh-autosuggestions zsh-syntax-highlighting z copypath history fzf)

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

# -------  nvim --------
alias vim="nvim"

# -------- Exa --------
alias ls="exa"
alias ll="exa -alh"
alias tree="exa ---tree"

# -------- Unit test --------
alias testclean="setopt +o nomatch;
                 rm -rf /home/snakamura/firmware/tools/unit_testing_env/build;
                 rm -rf /home/snakamura/firmware/tools/unit_testing_env/reports;
                 rm -f /home/snakamura/firmware/build_*;
                 setopt -o nomatch"

# -------- Change directory --------
alias ROOT="cd ~/firmware"
alias PROJ="cd ~/firmware/ecu/propulsion/projects"
alias TOOL="cd ~/firmware/tools"
alias INT="cd ~/firmware/interfaces"
alias DCC="cd ~/firmware/ecu/propulsion/projects/r1x_dcc"
alias SPIM="cd ~/firmware/ecu/propulsion/projects/spim"
alias ASC="cd ~/firmware/ecu/propulsion/projects/dpim/ascent_dpim"
alias DEVK="cd ~/firmware/ecu/devkit"

alias SBPY="cd ~/sandbox/Python"
alias SBC="cd ~/sandbox/C"

# -------- Project related --------
alias a="ROOT && source venv/bin/activate"
alias d="deactivate"

# -------- Misc --------
alias e="exit"
alias c="clear"

alias ZSHCONFIG="vim ~/.zshrc"
alias VIMCONFIG="cd ~/.config/nvim"

# -------- LSP --------
alias GETLOG="python3 ~/sandbox/Python/move_file/get_files.py log"
alias GETART="python3 ~/sandbox/Python/move_file/get_files.py artifacts"
alias INIT="GETLOG && python3 /home/snakamura/firmware/cdb.py -i /home/snakamura/firmware/build_log.log > /home/snakamura/firmware/compile_commands.json"

# -------- Git Alias --------
alias gs="git status"
alias gb="git branch"

# Git checkout via fzf
alias gc="git for-each-ref --format='%(refname:short)' refs/heads | fzf | xargs git checkout"

# git status copy, copies file name from git status
alias gsc="git ls-files -m | fzf | tr -d '\n' | pbcopy"

# copies current branch nane
alias cb="git rev-parse --abbrev-ref HEAD | tr -d '\n' | pbcopy"

# git branch copy, copies any branch name from git branch
alias gbc="git for-each-ref --format='%(refname:short)' refs/heads | fzf | pbcopy"
