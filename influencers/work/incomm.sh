#!/bin/sh

awk '{
	if($2==1){
		buyerid = $1;
		comm = $3;
	}else if($2==2){
		if(buyerid == $1){
			if(comm==$4){
				print $3"\t"$4"\t0\t"buyerid"\t"comm"\t"$5"\t"$6"\t"1;
			}else{
				print $3"\t"$4"\t0\t"buyerid"\t"comm"\t"$5"\t"$6"\t"0;
			}
		}else{
			print $3"\t"$4"\t0\t"$1"\t-1\t"$5"\t"$6"\t"0;
		}
	}else{
		if(buyerid == $1){
			if(comm==$4){
				print $3"\t"$4"\t*\t"buyerid"\t"comm"\t"$5"\t"1;
			}else{
				print $3"\t"$4"\t*\t"buyerid"\t"comm"\t"$5"\t"0;
			}
		}else{
			print $3"\t"$4"\t*\t"$1"\t-1\t"$5"\t"0;
		}
	}
}'
