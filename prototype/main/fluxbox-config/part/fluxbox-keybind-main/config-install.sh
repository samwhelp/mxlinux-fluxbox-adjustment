#!/usr/bin/env bash

set -e


################################################################################
### Head: fluxbox
##

fluxbox_config_install () {

	echo
	echo "##"
	echo "## Config: fluxbox"
	echo "##"
	echo


	fluxbox_config_install_by_dir

	#fluxbox_config_install_by_each_file


	echo

}

fluxbox_config_install_by_dir () {


	echo
	echo "mkdir -p ${HOME}"
	mkdir -p "${HOME}"


	echo
	echo "cp -rf ./asset/overlay/etc/skel/. ${HOME}"
	cp -rf "./asset/overlay/etc/skel/." "${HOME}"


}

fluxbox_config_install_by_each_file () {


	echo
	echo "mkdir -p ${HOME}/.config/fluxbox"
	mkdir -p "${HOME}/.config/fluxbox"

	echo
	echo "install -Dm644 ./asset/overlay/etc/skel/.config/fluxbox/fluxbox.conf ${HOME}/.config/fluxbox/fluxbox.conf"
	install -Dm644 "./asset/overlay/etc/skel/.config/fluxbox/fluxbox.conf" "${HOME}/.config/fluxbox/fluxbox.conf"


}

##
### Tail: fluxbox
################################################################################


################################################################################
### Head: config_install
##

main_config_install () {

	fluxbox_config_install

}

##
### Tail: config_install
################################################################################


################################################################################
### Head: Main
##

__main__ () {

	main_config_install

}

##
## Start
##
__main__

##
### Tail: Main
################################################################################
