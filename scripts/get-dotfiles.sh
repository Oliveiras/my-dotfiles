
# Install curl and vim
if ! command -v curl || ! command -v vim; then
	if   command -v apt; then apt update && apt install -y curl vim
	elif command -v yum; then yum install -y curl vim
	elif command -v apk; then apk add curl vim
	else                      >&2 echo 'Unknown distro'
	fi
fi

# Backup old dotfiles
[ -f ~/.bashrc ] && mv --backup=t ~/.bashrc ~/.bashrc.bak
[ -f ~/.vimrc ] && mv --backup=t ~/.vimrc ~/.vimrc.bak

# Download new dotfiles
curl -fLso ~/.bashrc https://raw.githubusercontent.com/Oliveiras/my-dotfiles/master/.bashrc
curl -fLso ~/.bash_aliases https://raw.githubusercontent.com/Oliveiras/my-dotfiles/master/.bash_aliases
curl -fLso ~/.bash_functions https://raw.githubusercontent.com/Oliveiras/my-dotfiles/master/.bash_functions
curl -fLso ~/.inputrc https://raw.githubusercontent.com/Oliveiras/my-dotfiles/master/.inputrc
curl -fLso ~/.vimrc https://raw.githubusercontent.com/Oliveiras/my-dotfiles/master/.vimrc

echo
echo Now execute:
echo . \~/.bashrc
echo
