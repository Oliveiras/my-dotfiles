# ALEX'S BASH HELPER FUNCTIONS

__last_cmd_exit() {
    RETVAL=$?
    [ $RETVAL -ne 0 ] && echo -e "\t\t\t\t exit $RETVAL "
}

# List IP's or hostnames from .ssh/known_hosts and from .ssh/config
__ssh_list_known_hosts() {
	perl -alne 'print @F[1] if /^Host/' ~/.ssh/config 2>/dev/null
	perl -alne 'print @F[0]' ~/.ssh/known_hosts 2>/dev/null
}

# Show current git branch
__git_branch_current() {
	git branch --show-current 2>/dev/null
}

# Show all git branches, except the current one
# removes the remote name, ex: "remotes/origin/master" becomes "master"
__git_branch_show_others() {
	git branch --all | while read b; do [[ ! $b =~ '*' && ! $b =~ '->' ]] && echo "${b//remotes\/origin\//}"; done | sort -u 2>/dev/null
}
