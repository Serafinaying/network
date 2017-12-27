#!/bin/sh

awk '{
	print $2"\t"$1"\t"$3"\t"$4"\t"$5;
}'
