clear
echo "Enter a username"
read uname
st=`who | tr -s " " | grep -w $uname | cut -d " " -f 5 | head -1`
echo "login time $st"
if [ $st ]
then
	chr=`date +%H`
	cmin=`date +%M`
	lhr=`echo $st | cut -d ";" -f 1`
	lmin=`echo $st | cut -d ";" -f 2`
	hr=`expr $chr - $lhr`
	min=`expr $cmin - $lmin`
	if [ $min -le 1 -a $hr -eq 0 ]
	then
		echo "$uname has logged in within 1 minute"
	else
		echo "$uname is working for more than 1 minute"
	fi
fi

