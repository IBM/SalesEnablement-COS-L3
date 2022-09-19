#!/usr/bin/env bash

echo -n "Enter a prefix to be used in the image filenames (e.g. arj123): "
read prefix

for i in 1 2 3 4 5 6
do
  wget https://raw.githubusercontent.com/IBM/SalesEnablement-PowerVS-L3/includes/checkImages/check${i}.jpg
  mv check${i}.jpg ${prefix}-check${i}.jpg
done
