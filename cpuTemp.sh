#!/bin/bash

numTherm=$( acpi -t | wc -l )

for i in `seq 1 ${numTherm}`;
do
    array[$i-1]=$( acpi -t | awk 'NR=='$i'{print $4}' )
done

echo ${array[*]}
