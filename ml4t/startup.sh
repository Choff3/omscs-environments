#!/bin/bash

CONTAINER_FIRST_STARTUP="CONTAINER_FIRST_STARTUP"
if [ ! -e /$CONTAINER_FIRST_STARTUP ]; then
	touch /$CONTAINER_FIRST_STARTUP
	/root/miniconda3/bin/conda init bash
	git clone https://${gitusername}:${gitpassword}@github.gatech.edu/${gitusername}/${gitrepo}.git /root/${gitrepo}
	echo "https://${gitusername}:${gitpassword}@github.gatech.edu/${gitusername}/${gitrepo}.git" >> /root/.git-credentials
	echo "cd /root/${gitrepo}" >> /root/.bashrc
	echo "conda activate ml4t" >> /root/.bashrc
fi
