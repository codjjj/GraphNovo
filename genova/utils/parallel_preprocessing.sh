#!/bin/sh


for i in $(seq 1 $1)
do
    nohup python3 graph_constructor.py $i $1 $2 $3 &
done
