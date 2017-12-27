#!/bin/sh

awk '{
	filte = $2*$6*$7;
	temp = $2-$6;
	if(temp < 0){
		temp1 = -temp;
	}else{
		temp1 = temp;
	}
	fea = 0.198*($2)+0.0003*($3)+0.3*($4)+0.0017*($5)+0.3*($6)+0.2*($7);
	if(temp1 > 1000||temp==0){
		if(filte == 0){
			if(temp > 5000||temp==0){
				fea = 0;
			}else{
				fea = fea/5;
			}
		}else{
			if(($2/$6)>10000){
				fea = 0;
			}else if(($2/$6)>2000||($6/$2)>1000){
				fea = fea/3;
			}
		}
	}
	print fea"\t"$0;
	fea = 0;
}'
