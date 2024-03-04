#!/bin/env bash

DATA=/home/giovanni.zanchetta/op.txt

if [[ -e $DATA ]]
then
    echo T
else
    echo F;
    exit 1
fi

if [[ -f $DATA ]]
then
    echo file
elif [[ -d $DATA ]]
then
    echo cartella;
    exit 1
else
    echo "?"
fi

op=$(cat $DATA)
a=$(( op ))
echo $a
