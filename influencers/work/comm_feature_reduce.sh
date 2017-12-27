#!/bin/sh

awk '{
	if($2==0){
		userid = $1;
		fea = $3;
	}else{
		if(userid == $1){
			print userid"\t"$3"\t"fea;
		}
	}
}'
