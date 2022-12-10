# ALEX'S BASH ALIASES

# ls
alias l='ls --color'
alias ll='ls -lahv --color --group-directories-first'
alias l.s='ls -lahS --color'                    # sort by size
alias l.t='ls -laht --color --time-style=iso'   # sort by mtime

# cd
alias ..='cd ..'
alias ...='cd ../..'
alias ....='cd ../../..'

# editor
alias e='vim'

# reader
alias r='less'
alias r.f='less -nR +F'

# open
alias o='xdg-open'

# git
alias g='git'
alias g.c='git clone'                           # clone <repo>
alias g.i='git init'                            # init
alias g.s='git status'                          # status
alias g.k='gitk --all'                          # GUI (readonly)
alias g.l='git log --oneline --graph'           # log
alias g.lt='git log --tags --simplify-by-decoration --pretty="format:%<(16)%D - %h - %ar"'  # list tags
alias g.lb='git branch --all'                   # list branchs
alias g.a='git add'                             # add <file>
alias g.co='git commit -v'                      # commit
alias g.cm='git commit -m'                      # commit <msg>
alias g.p='git push'                            # push
alias g.f='git pull --prune'                    # fetch + merge
alias g.fr='git pull --prune --rebase'          # fetch + rebase
alias gg='git add --all && git commit -v && git pull --prune --rebase && git push'  # Super Git Sync
alias g.x='git clean -fd && git reset --hard'   # discard all
alias g.b='git checkout'                        # checkout <branch>
alias g.d='git diff --minimal -U1 -w'           # diff
alias g.dt='git difftool -y'                    # diff tool
alias g.m='git merge'                           # merge <branch>
alias g.ma='git merge --abort'                  # merge abort
alias g.mt='git mergetool -y'                   # merge tool
alias g.fli='git flow init'                     # git-flow init
alias g.flfs='git flow feature start -F'        # feature start <name>
alias g.flff='git flow feature finish -F'       # feature finish <name>
alias g.flbs='git flow bugfix start -F'         # bugfix start <name>
alias g.flbf='git flow bugfix finish -F'        # bugfix finish <name>
alias g.flrs='git flow release start -F'        # release start <version>
alias g.flrf='git flow release finish -pF'      # release finish <version>
alias g.flhs='git flow hotfix start -F'         # hotfix start <version>
alias g.flhf='git flow hotfix finish -pF'       # hotfix finish <version>

# mvn
alias m='mvn'
alias m.x='mvn clean'                           # clean
alias m.c='mvn -o -T 1C compile'                # compile
alias m.t='mvn test'                            # test
alias m.tp='mvn clean verify'                   # test prod
alias m.b='mvn package -U'                      # build
alias m.bp='mvn clean install -P release'       # build prod
alias m.v='mvn versions:set'                    # set version (interactive)
alias m.ld='mvn dependency:tree -Dverbose'      # list dependencies
alias m.d='mvn de.qaware.maven:go-offline-maven-plugin:resolve-dependencies -DdownloadSources -DdownloadJavadoc'  # download dependencies
alias m.w='mvn -N io.takari:maven:wrapper'      # maven wrapper

# docker
alias d='docker'
alias d.l='docker ps'                           # list
alias d.la='docker ps -a'                       # list all
alias d.li='docker image ls'                    # list images
alias d.lv='docker volume ls'                   # list volumes
alias d.ln='docker network ls'                  # list networks
alias d.lo='docker logs -fn100'                 # logs <id>
alias d.lo1='docker logs -fn100 $container'     # logs $container
alias d.i='docker inspect'                      # inspect <id>
alias d.r='docker run --rm -it'                 # run <img>
alias d.e='docker exec -it'                     # exec <id> <cmd>
alias d.e1='docker exec -it $container'         # exec $container <cmd>
alias d.s='docker stop'                         # stop <id>
alias d.s1='docker stop $container'             # stop $container
alias d.sa='docker stop $(docker ps -q)'        # stop all
alias d.re='docker restart'                     # restart <id>
alias d.re1='docker restart $container'         # restart $container
alias d.x='docker rm'                           # remove <id>
alias d.x1='docker rm $container'               # remove $container
alias d.xa='docker rm $(docker ps -aq)'         # remove all
alias d.xi='docker image rm'                    # remove image <img>
alias d.xv='docker volume rm'                   # remove volume <vol>
alias d.xn='docker network rm'                  # remove network <net>
alias d.xA='docker system prune --volumes'      # system prune
alias d.c='docker-compose'                      # compose <cmd>
alias d.cu='docker-compose up -d --build --force-recreate'  # compose up
alias d.cd='docker-compose down'                # compose down


# kubectl
alias k='kubectl'
alias k.v='kubectl version --short'             # version
alias k.gp='kubectl get pods -o wide'           # get pods
alias k.gpn='kubectl get pods -o wide --n'      # get pods <ns>
alias k.gp1='kubectl get pods -o wide --n $namespace'  # get pods $namespace
alias k.gpa='kubectl get pods -o wide -A'       # get pods all
alias k.gn='kubectl get namespaces'             # get namespaces
alias k.cn='kubectl config set-context --current --namespace'  # config namespace
alias k.l='kubectl logs -f --tail=100'          # logs <pod>
alias k.l1='kubectl logs -f --tail=100 $pod'    # logs $pod
alias k.a='kubectl apply -f'                    # apply

