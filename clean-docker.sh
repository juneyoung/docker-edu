#!/bin/bash

if [ $# -lt 1 ] 
	then
	echo "Input container or image name as a parameter."
	exit 1
fi;

docker rm $1

if [ $? -ne 0 ]
	then
	echo "Failed to remove docker container $1. Try manual."
	exit 1
else
	docker rmi $1
	if [ $? -ne 0 ]
		then
		echo "Failed to remove docker image $1. Try manaul. "
	else
		echo "Successfully remove docker container and image $1"
	fi
fi;

exit 0
