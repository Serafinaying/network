#!/bin/sh

awk '{
	if(NF!=3){
		print $1"\t0\t"$2;
	}else{
		print $0;
	}
}'
