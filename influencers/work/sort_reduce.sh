#!/bin/sh

awk '{
	if(comm != $1){
		if(comm != ""){
			print comm"\t"fea_in"\t"fea_out"\t"max"\t"fea"\t"cnt;
		}
		comm = $1;
		fea_in = 0;
		fea_out = 0;
		cnt = 0;
		fea = 0;
		max = 0;
	}
	if($3!=0){
		cnt += 1;
	}
	if($5>max){
		max = $5;
	}
	fea_in += $3;
	fea_out += $4;
	fea += $5;
}END{
	if(comm != ""){
		print comm"\t"fea_in"\t"fea_out"\t"max"\t"fea"\t"cnt;
	}
}'
