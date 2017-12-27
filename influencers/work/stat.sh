#!/bin/sh

awk '{
	if(NF==2){
		print $1"\t0\t0\t0\t"$2"\t0\t0";
	}else if(NF==3){
		print $1"\t0\t0\t0\t0\t"$2"\t"$3;
	}else if(NF==4){
		print $1"\t"$2"\t"$3"\t"$4"\t0\t0\t0";
	}
}'
