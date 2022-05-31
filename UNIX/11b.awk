BEGIN{
	printf("Enter the basic salary: Rs ")
	getline bs
	if(bs<10000)
	{
		hra=bs*0.15
		da=bs*0.45
		}
		else
		{
			hra=bs*0.20
			da=bs*0.50
			}
			gross=bs+da+hra
			printf("Basic salary %8d \n",bs)
			printf("DA %8d \n",da)
			printf("HRA %8d \n",hra)
			printf("Gross %8d \n",gross)
	}
