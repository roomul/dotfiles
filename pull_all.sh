#!/bin/sh -e

REPOS="repo community dotfiles ports"

log(){
	printf " :: $1 \n"
}

main(){
	for repo in $REPOS; do
		if [ ! -d "$repo" ]; then
			log "Clone - $repo"
			git clone https://github.com/roomul/$repo
		fi
		cd $repo
			log "Up - $repo"
			git config pull.rebase false
			git pull
		cd ->/dev/null
	done
}

main "$@"
