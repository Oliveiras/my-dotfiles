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

# reader
alias r='less'
alias rf='less -nR +F'

# open
alias o='xdg-open'

# git
alias g='git'
alias gs='git status'                           # status
alias gk='gitk --all'                           # K (GUI)
alias gl='git log --oneline --graph'            # log
alias glt='git log --tags --simplify-by-decoration --pretty="format:%<(16)%D - %h - %ar"'  # list tags
alias gcl='git clone'                           # clone
alias gco='git commit -v'                       # commit
alias gcm='git commit -m'                       # commit <message>
alias gch='git checkout'                        # checkout <branch>
alias gcb='git checkout -b'                     # create and checkout <branch>
alias gpl='git pull'                            # fetch + merge
alias gpr='git pull --prune --rebase'           # fetch + rebase
alias gps='git push'                            # push
alias ga='git add'                              # add <file>
alias gaa='git add --all'                       # add <file>
alias grs='git restore --stated'                # restore <file>
alias grh='git clean -fd && git reset --hard'   # discard all
alias gra='git rebase --abort'                  # rebase abort
alias gd='git diff --minimal -U1 -w'            # diff
alias gdt='git difftool -y'                     # diff tool
alias gm='git merge'                            # merge <branch>
alias gmt='git mergetool -y'                    # merge tool
alias gma='git merge --abort'                   # merge abort
alias gg='git add --all && git commit -v && git pull --prune --rebase && git push'  # Super Git Sync

# mvn
alias m='mvn'
alias mc='mvn clean'                            # clean
alias mco='mvn -o -T 1C compile'                # compile
alias mt='mvn test'                             # test
alias mcv='mvn clean verify'                    # clean verify
alias mp='mvn package -U'                       # package
alias mci='mvn clean install -P release'        # clean install
alias mcd='mvn clean deploy -P release'         # clean deploy
alias mvs='mvn versions:set'                    # set version (interactive)
alias mdt='mvn dependency:tree -Dverbose'       # list dependencies
alias mrd='mvn de.qaware.maven:go-offline-maven-plugin:resolve-dependencies -DdownloadSources -DdownloadJavadoc'  # download dependencies
alias mw='mvn -N io.takari:maven:wrapper'       # maven wrapper

# npm
alias n='npm'
alias ni='npm install'
alias nid='npm install --save-dev'
alias ns='npm start'
alias nt='npm test'
alias nb='npm run build'

# docker
alias d='docker'
alias dp='docker ps'                            # list
alias dpa='docker ps -a'                        # list all
alias dil='docker image ls'                     # list images
alias dvl='docker volume ls'                    # list volumes
alias dnl='docker network ls'                   # list networks
alias dl='docker logs -fn100'                   # logs <id>
alias dl1='docker logs -fn100 $container'       # logs $container
alias di='docker inspect'                       # inspect <id>
alias de='docker exec -it'                      # exec <id> <cmd>
alias de1='docker exec -it $container'          # exec $container <cmd>
alias ds='docker stop'                          # stop <id>
alias ds1='docker stop $container'              # stop $container
alias dsa='docker stop $(docker ps -q)'         # stop all
alias dru='docker run --rm -it'                 # run <img>
alias dre='docker restart'                      # restart <id>
alias dre1='docker restart $container'          # restart $container
alias drm='docker rm'                           # remove <id>
alias drm1='docker rm $container'               # remove $container
alias drma='docker rm $(docker ps -aq)'         # remove all
alias dirm='docker image rm'                    # remove image <img>
alias dvrm='docker volume rm'                   # remove volume <vol>
alias dnrm='docker network rm'                  # remove network <net>
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
alias su='sudo su'                              # su [<user>]
alias su1='sudo su $user'                       # su $user
alias s1='sudo -u $user'                        # su $user do <cmd>
alias ss='sudo service'                         # service <service> <opt>
alias ss1='sudo service $service'               # service $service <opt>

