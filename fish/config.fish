# Configs files

alias tmuxc="nvim ~/.tmux.conf"
alias fishc="nvim ~/.config/fish/config.fish; and source ~/.config/fish/config.fish"
alias vimc="nvim ~/Dropbox/personal/dotfiles/nvim/init.vim"
alias dotc="cd ~/Dropbox/personal/dotfiles"
alias sshc="nvim ~/.ssh/config"

# Workflow automation

alias ansibleh="sudo nvim /var/ansible/hosts"

alias pra="cd ~/Dropbox/personal/practice"
alias blog="cd ~/Dropbox/personal/blog_raw"
alias per="cd ~/Dropbox/personal"
alias v="nvim"
alias vim="nvim"
alias gs="git status"
alias gcm="git commit -m"
alias gcam="git commit -am"
alias ga="git add"
alias gdc="git diff --cached"
alias cur="cd ~/Dropbox/8thlight/client-work/project_travel_trm"
alias pro="cd ~/Dropbox/8thlight/projects"
alias be="bundle exec"
alias conf="cd ~/Dropbox/personal/conf"
alias souc="cd ~/Dropbox/source_code"
alias gc-="git checkout -"
alias gc="git checkout"
alias gl="git log"
alias serve="boot -d org.clojure/tools.nrepl:0.2.11 -d pandeiro/boot-http serve -d . wait"
alias ll="ls -laH"

alias work="cd ~/Dropbox/projects/trained"
alias play="cd ~/Dropbox/projects/trained"

alias dnlode="cd ~/NeoDownload"

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

# add bin directories to path
set -x PATH $PATH ~/Library/Python/2.7/bin
set -x PATH $PATH ~/.cargo/bin

set -x FZF_DEFAULT_COMMAND 'ag --ignore .beam --ignore .git -g ""'

set -x SPACES_ACCESS_KEY 'HPNBPJ7W447Z2MXUC2FO'
set -x SPACES_SECRET_KEY 'Ba/4kDH8A0tvEj1jB9BCVBUn5CRGanzpHsjuG9rC8Ok'

set -x GOOGLE_CLIENT_ID '941376914732-fdhdbohptg6s29h24sqkvgceohv30dhf.apps.googleusercontent.com'
set -x GOOGLE_CLIENT_SECRET 'Vm9IIFFFK2O-O4JMWosZyP9j'
set -x GUARDIAN_SECRET_KEY 'GMQcTWdwAqKshRe2PUxRcE3a9HiKrU6tcQboY6EnCygoDYGuE3ZY5xZsw9az5Agl'


# status --is-interactive; and source (rbenv init -|psub)
source ~/.asdf/asdf.fish

eval (docker-machine env default)
status --is-interactive; and source (rbenv init -|psub)
