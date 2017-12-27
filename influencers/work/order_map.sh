#!/bin/sh

#<卖家ID> <买家ID> <订单ID>

awk '{
	print $4"\t"$1"\t"$3;
}'
