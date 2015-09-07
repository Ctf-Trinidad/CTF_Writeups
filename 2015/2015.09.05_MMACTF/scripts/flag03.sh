#!/bin/bash

original=list03.txt
reverse=list03.rev.txt
result=result03.txt
answer=theanswer03.txt
curr=7D

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

cat $original | sed '1!G;h;$!d'>$reverse
while read i
do
echo `xor $i $curr`>>$result
#echo $i $curr
#xor $i $curr
curr=`xor $i $curr`
done < $reverse
cat $result | sed '1!G;h;$!d' | tr '\n' ' '>$answer
rm -f $result
rm -f $reverse
