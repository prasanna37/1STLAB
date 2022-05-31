
echo "Enter the filename"
read fn
if [ -f $fn ]
then
       echo "Original File Content"
       cat $fn
       echo "File after folding"

while read ln
do
	lgth=`echo $ln | wc -c`
	s=1
	e=40
	if [ $lgth -gt 40 ]
	then
		while [ $lgth -gt 40 ]
		do
			echo "`echo $ln | cut -c $s-$e`\\"
			s=`expr $e + 1`
			e=`expr $e + 40`
			lgth=`expr $lgth - 40`
		done
		echo $ln | cut -c $s-
	else
		echo $fn
	fi
done < $fn 
else
	echo "file $fn doent exist"
fi
