#!/bin/bash

head=0;
tail=1;

declare -A result

for ((i=1;i<50;i++))
do
	result[$i]=$((RANDOM%2))
done

head=`echo ${result[@]} | tr ' ' '\n' | sort -n | uniq -c | head -1 | awk '{print $1}'`

tail=`echo ${result[@]} | tr ' ' '\n' | sort -n | uniq -c | tail -1 | awk '{print $1}'`

echo tail_win_times=$tail
echo head_win_times=$head
