#!/bin/bash
for i in {1..254};do
    {
    ping -c1 -W1 $1.$i &> /dev/null && echo "$1.$i" is alive || echo $1.$i is unreachable;
    }&
done
wait
