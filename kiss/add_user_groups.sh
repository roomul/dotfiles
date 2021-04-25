#!/bin/sh -e

USER="roomul" # test user
GROUPS="wheel daemon floppy users audio video adm disk network storage optical scanner lp cdrom tty tape input kvm xbuilder"

for grp in $GROUPS; do
	printf " :: Add $USER -> $grp \n"
	addgroup $USER $grp
done

exit 0
