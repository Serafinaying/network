#!/bin/sh

awk '{
	if(NF==4){
		print $1"\t2\t"$2"\t"$3"\t"$4;
	}else{
		print $0;
	}
}'
