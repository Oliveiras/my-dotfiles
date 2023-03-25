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
alias gk='gitk --all'                           # GUI (readonly)
alias gl='git log --oneline --graph'            # log
alias glt='git log --tags --simplify-by-decoration --pretty="format:%<(16)%D - %h - %ar"'  # list tags
alias glb='git branch --all'                    # list branchs
alias ga='git add'                              # add <file>
alias gr='git restore'                          # restore <file>
alias gc='git commit -v'                        # commit
alias gcm='git commit -m'                       # commit <msg>
alias gp='git push'                             # push
alias gf='git pull --prune'                     # fetch + merge
alias gfr='git pull --prune --rebase'           # fetch + rebase
alias gg='git add --all && git commit -v && git pull --prune --rebase && git push'  # Super Git Sync
alias gx='git clean -fd && git reset --hard'    # discard all
alias gb='git checkout'                         # checkout <branch>
alias gd='git diff --minimal -U1 -w'            # diff
alias gdt='git difftool -y'                     # diff tool
alias gm='git merge'                            # merge <branch>
alias gma='git merge --abort'                   # merge abort
alias gmt='git mergetool -y'                    # merge tool
alias gfli='git flow init'                      # git-flow init
alias gflfs='git flow feature start -F'         # feature start <name>
alias gflff='git flow feature finish -F'        # feature finish <name>
alias gflbs='git flow bugfix start -F'          # bugfix start <name>
alias gflbf='git flow bugfix finish -F'         # bugfix finish <name>
alias gflrs='git flow release start -F'         # release start <version>
alias gflrf='git flow release finish -pF'       # release finish <version>
alias gflhs='git flow hotfix start -F'          # hotfix start <version>
alias gflhf='git flow hotfix finish -pF'        # hotfix finish <version>

# mvn
alias m='mvn'
alias mx='mvn clean'                            # clean
alias mc='mvn -o -T 1C compile'                 # compile
alias mt='mvn test'                             # test
alias mtp='mvn clean verify'                    # test prod
alias mb='mvn package -U'                       # build
alias mbp='mvn clean install -P release'        # build prod
alias mve='mvn versions:set'                    # set version (interactive)
alias mld='mvn dependency:tree -Dverbose'       # list dependencies
alias md='mvn de.qaware.maven:go-offline-maven-plugin:resolve-dependencies -DdownloadSources -DdownloadJavadoc'  # download dependencies
alias mw='mvn -N io.takari:maven:wrapper'       # maven wrapper

# docker
alias d='docker'
alias dl='docker ps'                            # list
alias dla='docker ps -a'                        # list all
alias dli='docker image ls'                     # list images
alias dlv='docker volume ls'                    # list volumes
alias dln='docker network ls'                   # list networks
alias dlo='docker logs -fn100'                  # logs <id>
alias dlo1='docker logs -fn100 $container'      # logs $container
alias di='docker inspect'                       # inspect <id>
alias dr='docker run --rm -it'                  # run <img>
alias de='docker exec -it'                      # exec <id> <cmd>
alias de1='docker exec -it $container'          # exec $container <cmd>
alias ds='docker stop'                          # stop <id>
alias ds1='docker stop $container'              # stop $container
alias dsa='docker stop $(docker ps -q)'         # stop all
alias dre='docker restart'                      # restart <id>
alias dre1='docker restart $container'          # restart $container
alias dx='docker rm'                            # remove <id>
alias dx1='docker rm $container'                # remove $container
alias dxa='docker rm $(docker ps -aq)'          # remove all
alias dxi='docker image rm'                     # remove image <img>
alias dxv='docker volume rm'                    # remove volume <vol>
alias dxn='docker network rm'                   # remove network <net>
alias dxA='docker system prune --volumes'       # system prune
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

