#! /bin/bash
filesdir=$1
searchstr=$2
if [[ $# != 2 ]];
then
	echo -e "Please enter 2 arguments"
	if [ -z "$1" ];
	then
		echo -e "Please provide filesdir"
	fi
	if [ -z "$2" ];
	then
		echo -e "Pleasse provide searchstr"
	fi
fi
if [ -d $filesdir ];
then
	x=$(find $filesdir -type f | wc -l)
	y=$(grep -hr $searchstr $filesdir | wc -l)

	echo "The number of files are $x and the number of matching lines are $y"
else
	echo -e "directory not available"
	exit 1
fi
