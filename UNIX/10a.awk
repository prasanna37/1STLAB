BEGIN{
	printf("\n Enter date(dd-mm-yy):")
	read d
	day[ "01" ]=31
	day[ "02" ]=28
	day[ "03" ]=31
	day[ "04" ]=30
	day[ "05" ]=31
	day[ "06" ]=30
	day[ "07" ]=31
	day[ "08" ]=31
	day[ "09" ]=30
	day[ "10" ]=31
	day[ "11" ]=30
	day[ "12" ]=31
	month[ "01" ]="Jan"
	month[ "02" ]="Feb"
	month[ "03" ]="Mar"
	month[ "04" ]="Apr"
	month[ "05" ]="May"
	month[ "06" ]="June"
	month[ "07" ]="July"
	month[ "08" ]="Aug"
	month[ "09" ]="Sep"
	month[ "10" ]="Oct"
	month[ "11" ]="Nov"
	month[ "12" ]="Dec"
	}
	{
		split( $d,dt,"-") 
		dayv=dt[1]
		monthv=dt[2]
		yearv=dt[3]
		#..............year Validation......
		if((yearv%4)==0)
		{
			if(monthv==01)
			{
				day["01"]=29
				}
				if(dayv<0 || dayv>29)
				{
					printf("\n Invalid Date")
					exit
					}
			}
			if(dayv<0 || dayv>day[monthv])
			{
				printf("\n Invalid")
				exit
				}
				if(monthv<0 || monthv>12)
				{
					printf("Invalid")
					exit
					}
					printf("\n Date is : %s-%d-%i\n",month[monthv],dayv,yearv)
					exit}
