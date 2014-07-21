#!/bin/bash -x

# Combine CSV files
sort -r speeches/*.csv | uniq > speeches/speeches.csv

# Combine speeches
for leaderDir in $(find speeches -type d -depth 1)
do
	echo Combining $leaderDir
	leaderFile=${leaderDir}.txt
	cat $leaderDir/* > $leaderFile
done
