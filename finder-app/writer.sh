#!/bin/bash
writefile=$1
writestr=$2
if [[ $# != 2 ]];
then
	echo -e "Enter valid 2 arguments"
	exit 1
fi
dir=`dirname $writefile`
mkdir -p $dir
touch $writefile
if [ -a "$writefile" ];
then
	echo $writestr > $writefile
else
	echo -e "file cannot be created"
	exit 1
fi
