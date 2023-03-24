# Enable aliases to be sudo’ed
alias sudo='sudo '

alias ..="cd .."
alias ...="cd ../.."
alias ll="exa --icons --group-directories-first"
alias la="exa --icons --group-directories-first -la"
alias ~="cd ~"
alias dotfiles='cd $DOTFILES_PATH'

# Git
alias gaa="git add -A"
alias gc='$DOTLY_PATH/bin/dot git commit'
alias gca="git add --all && git commit --amend --no-edit"
alias gco="git checkout"
alias gd='$DOTLY_PATH/bin/dot git pretty-diff'
alias gs="git status -sb"
alias gf="git fetch --all -p"
alias gps="git push"
alias gpsf="git push --force"
alias gpl="git pull --rebase --autostash"
alias gb="git branch"
alias gl='$DOTLY_PATH/bin/dot git pretty-log'

# Utils
alias k='kill -9'
alias i.='(idea $PWD &>/dev/null &)'
alias c.='(code $PWD &>/dev/null &)'
alias o.='open .'
alias up='dot package update_all'

alias mst='cd ~/Desktop/projects/bipi-api && npm run test-single'
alias test='cd ~/Desktop/projects/bipi-api && PORT=9989 npm test'
alias back='cd ~/Desktop/projects/bipi-api && npm run backend'
alias front='cd ~/Desktop/projects/bipi-portal && npm run start'
alias debug='cd ~/Desktop/projects/bipi-api && npm run backend:debug'
alias mongors='run-rs --mongod --host=127.0.0.1 -k --dbpath ~/Desktop/projects/data/db'
alias clean_branches='git branch | grep -v "master" | grep -v "development" | xargs git branch -d'
alias open_ports="netstat -anvp tcp | awk 'NR<3 || /LISTEN/'"
alias ngrok_on='ngrok http 3000 --host-header="localhost:3000" && ngrok http --host-header=rewrite 3000'
