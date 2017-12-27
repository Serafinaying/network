#!/bin/sh

#<用户ID> <好友数> <被点击分享次数> <活跃好友数>

awk '{
	if(sellerid != $1){
		if(sellerid != ""){
			print sellerid"\t"friends"\t"share"\t"activ;
		}
		friends = 0;
		share = 0;
		activ = 0;
		sellerid = $1;
	}
	share += $3;
	friends += 1;
	activ += $4;
}END{
	if(sellerid != ""){
		print sellerid"\t"friends"\t"share"\t"activ;
	}
}'
