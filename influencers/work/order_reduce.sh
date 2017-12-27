#!/bin/sh

awk '{
	if(sellerid != $1){
		if(sellerid != ""){
			print sellerid"\t"length(buyer)"\t"cnt;
		}
		cnt = 0;
		delete buyer;
		sellerid = $1;
	}
	buyer[$2]+=1;
	cnt += 1;
}END{
	if(sellerid != ""){
		print sellerid"\t"length(buyer)"\t"cnt;
	}
}'
