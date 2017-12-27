#!/bin/sh

awk '{
	if(userid != $1){
		if(userid != ""){
			print userid"\t"cnt;
		}
		userid = $1;
		cnt =0;
	}
	cnt += $2;
}END{
	if(userid != ""){
		print userid"\t"cnt;
	}
}'
