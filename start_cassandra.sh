#!/bin/bash
bash -s < ./start_single.sh &
for x in 10 02 03 04 05 07 08 09 11
do
    ssh sys$x 'bash -s' < ./start_single.sh &
done
