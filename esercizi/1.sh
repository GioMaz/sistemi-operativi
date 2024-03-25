#!/bin/env bash

DATA=/home/giovanni.zanchetta/op.txt

[[ -e $DATA ]] && echo T || (echo F; exit 1)
#if [[ -e $DATA ]]
#then
#    echo T
#else
#    echo F;
#    exit 1
#fi

[[ -f $DATA ]] && echo file || ([[ -d $DATA ]] && echo directory || echo ?)
#if [[ -f $DATA ]]
#then
#    echo file
#elif [[ -d $DATA ]]
#then
#    echo cartella;
#    exit 1
#else
#    echo "?"
#fi

op=$(cat $DATA)
a=$(( op ))
echo $a
