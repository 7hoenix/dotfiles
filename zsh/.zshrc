# Check if zplug is installed
if [[ ! -d ~/.zplug ]]; then
  git clone https://github.com/zplug/zplug ~/.zplug
  source ~/.zplug/init.zsh && zplug update --self
fi

source ~/.zplug/init.zsh

zplug "zsh-users/zsh-syntax-highlighting"

zplug "plugins/git", from:oh-my-zsh
zplug "aaronjamesyoung/aaron-zsh-theme"

autoload predict-on
predict-on

setopt promptsubst

alias tmuxc="nvim ~/.tmux.conf"
alias vimc="nvim ~/Documents/personal/dotfiles/nvim/init.vim"
alias pra="cd ~/Documents/practice"
alias blog="cd ~/Documents/personal/blog_raw"
alias v="nvim"
alias gs="git status"
alias ga="git add"
alias gcm="git commit -m"

alias zshc="nvim ~/.zshrc"
alias zshs="source ~/.zshrc"

# Install packages that have not been installed yet
if ! zplug check --verbose; then
    printf "Install? [y/N]: "
    if read -q; then
        echo; zplug install
    else
        echo
    fi
fi

zplug load

[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh

export PATH="$PATH:$HOME/.rvm/bin" # Add RVM to PATH for scripting
