alias tmuxc="nvim ~/.tmux.conf"
alias fishc="nvim ~/.config/fish/config.fish"
alias vimc="nvim ~/Documents/personal/dotfiles/nvim/init.vim"
alias dotc="cd ~/Documents/personal/dotfiles"
alias pra="cd ~/Documents/practice"
alias blog="cd ~/Documents/8thlight/blog/7hoenx"
alias per="cd ~/Documents/personal"
alias v="nvim"
alias gs="git status"
alias gcm="git commit -m"
alias gcam="git commit -am"
alias cur="cd ~/Documents/8thlight/client-work/project_travel_trm"
alias pro="cd ~/Documents/8thlight/projects"
alias be="bundle exec"
alias pcur="cd ~/Documents/projects/chess3/chess_trained"

alias dnlode="cd ~/NeoDownload"

alias fishs="source ~/.config/fish/config.fish"


function fish_prompt --description 'Write out the prompt'
  set -l last_status $status

  if not set -q __fish_prompt_normal
    set -g __fish_prompt_normal (set_color normal)
  end

  #PWD
  set_color $fish_color_cwd
  echo -n (prompt_pwd)
  set_color normal

  printf '%s ' (__fish_git_prompt)

  if not test $last_status -eq 0
    set_color $fish_color_error
  end

  echo -n '➔ '

  set_color normal
end

set -x PATH $PATH ~/Library/Python/2.7/bin
status --is-interactive; and source (rbenv init -|psub)
