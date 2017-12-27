#!/bin/sh

#<被关注者> <关注者> <点击分享次数> <是否为活跃用户>

awk '{
	if($2==0){
		activ = $1;
	}else{
		if(activ==$1){
			print $3"\t"$1"\t"$4"\t"1;
		}else{
			print $3"\t"$1"\t"$4"\t"0;
		}
	}
}'
