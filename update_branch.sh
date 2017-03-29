#!/bin/bash

clone () {
	if [ ! -x "contrib/$1" ]; then
		echo "初次拉取$1仓库..."
		echo "* run command: git clone $1..."
		git clone git@github.com:moonbeammm/$1.git contrib/$1
	fi
	echo "* update $1 with branch/$2..."
	cd contrib/$1
	echo "* run command: git checkout branch/$2..."
	git checkout $2
	#退回到GXShell目录...
	cd ..
	echo '--------------->>>>>'
	echo '<<<<<---------------'
}

clone $1 $2
