#!/bin/sh

awk '{
	if(sellerid != $1){
		if(sellerid != ""){
			print sellerid"\t0\t"comm"\t"sharein"\t"friendin"\t"activin"\t"length(buyerin)"\t"orderin;
			print sellerid"\t1\t"comm"\t"shareout"\t"friendout"\t"activout"\t"length(buyerout)"\t"orderout;
		}
		sharein = 0;
		shareout = 0;
		friendin = 0;
		friendout = 0;
		activin = 0;
		activout = 0;
		delete buyerin;
		delete buyerout;
		orderin = 0;
		orderout = 0;
		sellerid = $1;
		comm = $2;
	}
	if($3=="*"){
		if($7==1){
			buyerin[$4] += 1;
			orderin += 1;
		}else{
			buyerout[$4]+= 1;
			orderout += 1;
		}
	}else if($3 == 0){
		if($8 == 1){
			sharein += $6;
			activin += $7;
			friendin += 1;
		}else{
			shareout += $6;
			activout += $7;
			friendout += 1;
		}
	}
}END{
	if(sellerid != ""){
		print sellerid"\t0\t"comm"\t"sharein"\t"friendin"\t"activin"\t"length(buyerin)"\t"orderin;
		print sellerid"\t1\t"comm"\t"shareout"\t"friendout"\t"activout"\t"length(buyerout)"\t"orderout;
	}
}' | awk -F"\t" '{
	filter = $5*$7*$8;
	temp = $5 - $7;
	if(temp < 0){
		temp1 = -temp;
	}else{
		temp1 = temp;
	}
	fea = 0.0005*$4 + 0.1995*$5 + 0.3*$6 + 0.3*$7 + 0.2*$8;

	if(temp1 > 700||temp==0){
		if(filter == 0){
			if(temp > 5000||temp==0){
				fea = 0;
			}else{
				fea = fea/2;
			}
		}else{
			if(($5/$7)>10000){
				fea = 0;
			}else if(($5/$7)>2000||($7/$5)>1000){
				fea = fea*2/3;
			}
		}
	}
#	printf $0"\t";
	if($2==0){
		fea_in = fea;
		seller = $1;
		community = $3;
	}else{
		if(seller == $1){
			fea_out = fea;
			print seller"\t"community"\t"fea_in"\t"fea_out"\t"(0.7*fea_in+0.3*fea_out);
		}
	}
}'
