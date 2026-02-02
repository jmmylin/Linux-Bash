#!/bin/bash


count=100
while (( --count >=0 ));
do
	echo $count
	sleep 1
done

echo 'Finished'
