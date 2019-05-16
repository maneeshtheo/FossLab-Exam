#!/bin/bash
echo "Enter a number"
read n
pal=$n
while [[ $pal -ge $n ]] 
do
g=0
h=0
 c=$pal
 s=0
 while [[ $c -ne 0 ]]
  do
   m=$(( $c % 10))
   c=$(( $c / 10))
   t=$(( $s * 10))
   s=$(( $t + $m))
  done
 if [[ $pal -eq $s ]]
 then
  g=1
 fi
 i=2
 while [[ $i -lt $pal ]]
  do
   if [[ `expr $pal % $i` -eq 0 ]]
   then
     h=2
     break
   fi
   i=`expr $i + 1`
  done
 if [[ $g -eq 1 ]] && [[ $h -eq 0 ]]
 then
  echo "$pal"
  exit
 fi
 pal=`expr $pal + 1`
done
