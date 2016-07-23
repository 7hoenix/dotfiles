alias fishc="nvim ~/.config/fish/config.fish"
alias tmuxc="nvim ~/.tmux.conf"
alias vimc="nvim ~/Documents/personal/dotfiles/vim/init.vim"
alias pra="cd ~/Documents/practice"
alias blog="cd ~/Documents/8thlight/blog/jphoenx"
alias per="cd ~/Documents/personal"
alias v="nvim"
alias gs="git status"
alias ga="git add"
alias gcm="git commit -m"

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

rvm default
