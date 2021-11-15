#!/bin/bash

CONTAINER_FIRST_STARTUP="CONTAINER_FIRST_STARTUP"
if [ ! -e /$CONTAINER_FIRST_STARTUP ]; then
	touch /$CONTAINER_FIRST_STARTUP
	/root/miniconda3/bin/conda init bash
	if ["${gitusername}" -ne ""]
		git clone https://${gitusername}:${gitpassword}@github.gatech.edu/${gitusername}/${gitrepo}.git /root/${gitrepo}
		echo "[user]" >> /root/.gitconfig
		echo "name = ${gitusername}" >> /root/.gitconfig
		echo "email = ${gitusername}@gatech.edu" >> /root/.gitconfig
		echo "password = ${gitpassword}@gatech.edu" >> /root/.gitconfig
		echo "cd /root/${gitrepo}" >> /root/.bashrc
	fi
fi