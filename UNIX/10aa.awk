BEGIN {
	date="312831303130313130313031"
	split(ARGV[1],a,"-")
	m=a[1]
	d=a[2]
	y=a[3]
	if ( y%4==0 && y%100!=0 || y%400==0 )
	     date="312931303130313130313031"
	if(d>substr(date,2*m-1,2) ||m>12 || length(ARGV[1])!=10)
		printf "invalid date\n"
	else
		{
			printf "day is %d\n",d
			printf "month is %d\n",m
			printf "Year is %d\n",y

		}
} 
