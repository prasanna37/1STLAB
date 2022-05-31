if [ $# -eq 3 ]
then
	if [ -f $1 ]
	then
		if [ $2 -le $3 ]
		then
			echo "Original file"
			cat $1
			echo 
			echo "range lines"
			eval "sed -n $2,$3\p $1"
		else
			echo "invalid range"
		fi
	else
		echo "$1 does not exists"
	fi
else
	echo "invalid arguments"
fi
