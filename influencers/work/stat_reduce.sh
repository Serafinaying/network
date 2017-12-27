#!/bin/sh

#<用户ID> <好友数> <点击分享链接数> <活跃好友数> <行为操作数> <成交买家数> <成交订单数>

awk '{
	if(sellerid != $1){
		if(sellerid != ""){
			print sellerid"\t"fri"\t"share"\t"activ"\t"behave"\t"buyer"\t"order;
		}
		sellerid = $1;
		fri = 0;
		share = 0;
		activ = 0;
		behave = 0;
		order = 0;
		buyer = 0;
	}
	fri += $2;
	share += $3;
	activ += $4;
	behave += $5;
	buyer += $6;
	order += $7;
}END{
	if(sellerid != ""){
		print sellerid"\t"fri"\t"share"\t"activ"\t"behave"\t"buyer"\t"order;
	}
}'
