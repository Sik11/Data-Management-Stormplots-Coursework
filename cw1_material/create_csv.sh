#!/bin/bash
while IFS= read -r line; do
	echo "$line"|xargs 
done <"$1"| grep -E "<td>"    

