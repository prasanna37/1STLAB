BEGIN{
	printf("\n Lines of original file is\n")
	i=1
	}
	{
		line[i++]=$0
		}
		END{
			for(b=1;b<i;b++)
			{
				if(line[b]!=""){
					print(line[b])
				}
				}

			for(j=1;j<i;j++)
			{
			
				for(k=j+1;k<i;k++)
				{
					if(line[j]==line[k])
					{
		                          	
						line[k]=""
					}
				}
			}
			printf("\n The file after deleting duplicate lines \n")
			for(a=1;a<i;a++)
			{
				if(line[a]!=""){

				
					printf("\n"line[a]"\n")
				}
				}
			}
