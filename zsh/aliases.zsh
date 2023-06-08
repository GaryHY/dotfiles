#!/bin/sh
#General shell aliases 
alias nv="nvim"
alias lsla="ls -la"
alias c="clear"
alias conf="cd ~/.config"
alias pj="cd ~/Documents/mesProjetsDev"
alias src="source ~/.config/zsh/.zshrc"
alias dotf="cd ~/dotFiles/.config"
#Je rajoute le sudo pour pouvoir faire des commandes sudo, car sinon le shell n'interpretera pas maj car sudo n'est pas un alias
alias sudo="sudo "
alias maj="apt update && apt upgrade -y && rustup update"

#tmux aliases 
# Attaches tmux to the last session; creates a new session if none exists.
alias t='tmux attach || tmux new-session'
# Attaches tmux to a session (example: ta portal)
alias ta='tmux attach -t'
# Creates a new session
alias tn='tmux new'
# Lists all ongoing sessions
alias tl='tmux list-sessions'
# Pour mon ide (inspire du workflow de devaslife) 
# alias ide='tmux split-window -v -p 30 && tmux split-window -h -p 66 && tmux split-window -h -p 30'
alias ide='tmux split-window -v -p 30' 

#npm aliases 
alias ni="npm install"
alias nrb="npm run build"
alias nrs="npm run start"
alias nrd="npm run dev"

# Je rajoute des alias pour pouvoir utilise curl pour le dev 
alias cll="curl 'http://localhost:5000"

#golang aliases, on voit que je faisais du TDD
alias gt="go test -v"
alias gb="go -bench=." #Pour le bench sequentiel de base 
alias gtc="go test -cover"

# rust aliases
alias cr="cargo run"
alias ct="cargo test"
alias cc="cargo check"

#git aliases
alias gs="git status"
alias gl="git log"
alias ga="git add"

#Mon journal de bord
alias idea="cd ~/Documents/mesProjetsDev/perso/ && nv pj.md"
alias jdb="cd ~/Documents/mesProjetsDev/perso/ && nv JDB.md"
alias lnk="cd ~/Documents/mesProjetsDev/perso/ && nv links.md"
alias note="cd ~/Documents/mesProjetsDev/perso/ && nv note.md"
