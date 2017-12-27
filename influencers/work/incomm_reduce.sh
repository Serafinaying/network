#!/bin/sh

awk '{
	if($2==1){
		sellerid = $1;
		comm = $3;
	}else if($2==2){
		if(sellerid == $1){
			print $3"\t2\t"sellerid"\t"comm"\t"$4"\t"$5;
		}else{
			print $3"\t2\t"$1"\t-1\t"$4"\t"$5;
		}
	}else{
		if(sellerid == $1){
			print $4"\t3\t"sellerid"\t"comm"\t"$5;
		}else{
			print $4"\t3\t"$1"\t-1\t"$5;
		}
	}
}'
