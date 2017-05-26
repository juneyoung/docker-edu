#!/bin/bash

if [ $# -lt 1 ] 
	then
	echo "Input container or image name as a parameter."
	exit 1
fi;

docker build -t $1 .

if [ $? -ne 0 ]
	then
	echo "Failed to create docker image $1. Try manual."
	exit 1
else
	docker run -d --name=$1 $1
	if [ $? -ne 0 ]
		then
		echo "Failed to create docker container $1. Try manaul. "
	else
		echo "Successfully create docker image and container $1"
	fi
fi;

exit 0
