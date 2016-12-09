alias tmuxc="nvim ~/.tmux.conf"
alias fishc="nvim ~/.config/fish/config.fish"
alias vimc="nvim ~/Documents/personal/dotfiles/nvim/init.vim"
alias dotc="cd ~/Documents/personal/dotfiles"
alias pra="cd ~/Documents/practice"
alias blog="cd ~/Documents/8thlight/blog/jphoenx"
alias per="cd ~/Documents/personal"
alias v="nvim"
alias gs="git status"
alias gcm="git commit -m"
alias gcam="git commit -am"
alias cur="cd ~/Documents/8thlight/client-work/project_travel_trm"
alias pro="cd ~/Documents/8thlight/projects"
alias be="bundle exec"

alias fishs="source ~/.config/fish/config.fish"

alias rake_dbrollback_dev_and_test="env RACK_ENV=development rake db:rollback and env RACK_ENV=test rake db:rollback"

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
 # export [[ -s $HOME/.rvm/scripts/rvm ]]; and source $HOME/.rvm/scripts/rvm

