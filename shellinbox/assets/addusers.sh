#!/bin/bash -fuh
#
sleep 10
for i in {01..99}
do
  useradd user-${i}
  echo -n password | passwd user-${i} --stdin
done
