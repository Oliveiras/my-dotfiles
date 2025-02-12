# ALEX'S BASH ALIASES

# ls
alias l='ls --color'
alias ll='ls -lahv --color --group-directories-first'
alias lss='ls -lahS --color'                     # sort by size
alias lst='ls -laht --color --time-style=iso'    # sort by mtime

# cd
alias ..='cd ..'
alias ...='cd ../..'
alias ....='cd ../../..'

# editor
alias e='vim'
alias se='sudo vim'
alias r='less'
alias sr='sudo less'
alias rf='less -nR +F'
alias srf='sudo less -nR +F'

# git
alias g='git'
alias gs='git status'                           # status
alias gk='gitk --all'                           # K (GUI)
alias glo='git log --oneline --graph'           # log
alias glt='git log --tags --simplify-by-decoration --pretty="format:%<(16)%D - %h - %ar"'  # list tags
alias glb='git branch --all'                    # list branches
alias gco='__git_commit'                        # commit
alias gcl='git clone'                           # clone
alias gchmod='git update-index --chmod=+x'      # chmod +x <file>
alias gsw='git switch'                          # switch branch <branch>
alias gfr='git pull --prune --rebase'           # fetch + rebase
alias gfm='git pull'                            # fetch + merge
alias gpu='git push'                            # push
alias gad='git add'                             # add <file>
alias gaa='git add --all'                       # add <file>
alias grs='git restore --staged --worktree'     # restore <file>
alias gra='git rebase --abort'                  # rebase abort
alias gdi='git diff --minimal -U1 -w'           # diff
alias gdt='git difftool -y'                     # diff tool
alias gme='git merge'                           # merge <branch>
alias gmt='git mergetool -y'                    # merge tool
alias gma='git merge --abort'                   # merge abort
alias gg='git add --all && git commit -v && git pull --prune --rebase && git push'  # Super Git Sync

# mvn
alias m='mvn'
alias mcl='mvn clean'                           # clean
alias mco='mvn -o -T 1C compile'                # compile
alias mts='mvn test'                            # test
alias mpk='mvn package -U'                      # package
alias mi='mvn clean install'                    # install
alias mir='mvn clean install -P release'        # install release
alias mvs='mvn versions:set'                    # set version (interactive)
alias mde='mvn dependency:tree -Dverbose'       # list dependencies
alias mgo='mvn de.qaware.maven:go-offline-maven-plugin:resolve-dependencies -DdownloadSources -DdownloadJavadoc'  # download dependencies
alias mwr='mvn -N io.takari:maven:wrapper'      # maven wrapper

# npm
alias n='npm'
alias ni='npm install'
alias nid='npm install --save-dev'
alias nsta='npm start'
alias nts='npm test'
alias nbd='npm run build'

# docker
alias d='docker'
alias dps='docker ps --format "table {{.ID}}\t{{.Names}}\t{{.Status}}\t{{.Ports}}"'  # list
alias dpa='docker ps -a'                        # list all
alias dlo='docker logs -fn1000'                 # logs <id>
alias din='docker inspect'                      # inspect <id>
alias dex='docker exec -it'                     # exec <id> <cmd>
alias dsto='docker stop'                        # stop <id>
alias dstoa='docker stop $(docker ps -q)'       # stop all
alias dru='docker run --rm -it'                 # run <img>
alias dre='docker restart'                      # restart <id>
alias drm='docker rm'                           # remove <id>
alias drma='docker rm $(docker ps -aq)'         # remove all
alias dsp='docker system prune --volumes'       # system prune
alias dc='docker-compose'                       # compose <cmd>
alias dcu='docker-compose up -d --build --force-recreate'  # compose up
alias dcd='docker-compose down'                 # compose down

# kubectl
alias k='kubectl'
alias kv='kubectl version --short'              # version
alias kgp='kubectl get pods -o wide'            # get pods
alias kgpn='kubectl get pods -o wide --n'       # get pods <ns>
alias kgp1='kubectl get pods -o wide --n $namespace'  # get pods $namespace
alias kgpa='kubectl get pods -o wide -A'        # get pods all
alias kgn='kubectl get namespaces'              # get namespaces
alias kcn='kubectl config set-context --current --namespace'  # config namespace
alias kl='kubectl logs -f --tail=100'           # logs <pod>
alias kl1='kubectl logs -f --tail=100 $pod'     # logs $pod
alias ka='kubectl apply -f'                     # apply

# sudo
alias s='sudo'
alias s1='sudo -u $user'                        # su $user do <cmd>
alias ss='sudo service'                         # service <service> <opt>
alias ss1='sudo service $service'               # service $service <opt>

