#!/bin/bash

code=list.txt
result=result.txt
curr=4D
rm -f $result
function  xor()
{
    local res=(`echo "$1" | sed "s/../0x& /g"`)
    shift 1
    while [[ "$1" ]]; do
    local one=(`echo "$1" | sed "s/../0x& /g"`)
    local count1=${#res[@]}
    if [ $count1 -lt ${#one[@]} ]
    then
     count1=${#one[@]}
        fi
        for (( i = 0; i < $count1; i++ ))
        do
              res[$i]=$((${one[$i]:-0} ^ ${res[$i]:-0}))
        done
        shift 1
    done
    printf "%02x" "${res[@]}"
}

while read i
do
    echo `xor $i $curr` | tr '\n' ' '>>$result
    curr=`xor $i $curr`
done < $code

