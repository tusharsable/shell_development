#!/bin/bash -x

#Prgram to simulate flipping of a coin
echo "Welcome to coin flipping simulator"

#Flip a coin
result=$(($RANDOM%2))
echo $result
