#!/bin/bash

# --------------------------------------------------- #
# ---------------- Install oh-my-zsh ---------------- #
# --------------------------------------------------- #
if [ ! -d ~/.oh-my-zsh/ ]; then
    sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
fi

# Path to your oh-my-zsh installation.
export ZSH=$HOME/.oh-my-zsh


# --------------------------------------------------- #
# ------------- Install oh-my-zsh theme ------------- #
# --------------------------------------------------- #
if [ ! -f ~/.oh-my-zsh/themes/oxide.zsh-theme ]; then
    (cd ~/.oh-my-zsh/themes && curl -O "https://raw.githubusercontent.com/dikiaap/dotfiles/master/.oh-my-zsh/themes/oxide.zsh-theme")
fi

# --------------------------------------------------- #
# ---------- Install zsh syntax highlight ----------- #
# --------------------------------------------------- #
if [ ! -d $ZSH/custom/plugins/zsh-syntax-highlighting ]; then
    (git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-syntax-highlighting)
fi

# --------------------------------------------------- #
# ----------- Install zsh autosuggestions ----------- #
# --------------------------------------------------- #
if [ ! -d $ZSH/custom/plugins/zsh-autosuggestions ]; then
    git clone https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions
fi

# --------------------------------------------------- #
# ------------------- Install FZF ------------------- #
# --------------------------------------------------- #
if [ ! -d $HOME/.fzf ]; then
    git clone --depth 1 https://github.com/junegunn/fzf.git ~/.fzf
    ~/.fzf/install
fi

# --------------------------------------------------- #
# ------------------- Install TMUX ------------------- #
# --------------------------------------------------- #
if [ ! -d $HOME/installations/tmux-3.4 ]; then
    mkdir -p ~/installations
    cd ~/installations
    wget https://github.com/tmux/tmux/releases/download/3.4/tmux-3.4.tar.gz
    echo "Installing TMUX 3.4"
    tar -zxf tmux-3.4.tar.gz
    rm tmux-3.4.tar.gz
fi

# Export path to tmux
export PATH=$PATH:~/installations/tmux-3.4


# --------------------------------------------------- #
# ----------- Install Tmux plugin manager ----------- #
# --------------------------------------------------- #
if [ ! -d $HOME/.tmux/plugins/tpm ]; then
    git clone https://github.com/tmux-plugins/tpm ~/.tmux/plugins/tpm
fi


# --------------------------------------------------- #
# ----------------- Install zoxide ----------------- #
# --------------------------------------------------- #
if [ ! -f $HOME/.local/bin/zoxide ]; then
    curl -sSfL https://raw.githubusercontent.com/ajeetdsouza/zoxide/main/install.sh | sh
fi

# --------------------------------------------------- #
# ------------- Install Vivid (LSCOLOR) ------------- #
# --------------------------------------------------- #
if [ ! -f /usr/bin/vivid ]; then
    cd ~
    wget "https://github.com/sharkdp/vivid/releases/download/v0.8.0/vivid_0.8.0_amd64.deb"
    sudo dpkg -i vivid_0.8.0_amd64.deb 
    rm vivid_0.8.0_amd64.deb

    mkdir -p .config/vivid/themes/
    cd ~/.config/vivid/themes
    wget https://raw.githubusercontent.com/sharkdp/vivid/master/themes/catppuccin-macchiato.yml
fi

# --------------------------------------------------- #
# ------------- Install LSD (better ls) ------------- #
# --------------------------------------------------- #
if [ ! -f /usr/bin/lsd ]; then
    cd ~
    wget https://github.com/lsd-rs/lsd/releases/download/v1.1.2/lsd-musl_1.1.2_amd64.deb
    dpkg -i lsd-musl_1.1.2_amd64.deb
    rm lsd-musl_1.1.2_amd64.deb
fi

# --------------------------------------------------- #
# ------------------ Install pyenv ------------------ #
# --------------------------------------------------- #
if [ ! -d ~/.pyenv ]; then
    curl https://pyenv.run | bash
fi
