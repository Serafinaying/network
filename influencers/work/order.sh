#!/bin/sh

awk '{
	print $4"\t3\t3\t"$1"\t"$3;
}'
