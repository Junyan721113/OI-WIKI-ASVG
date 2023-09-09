#!/bin/bash

echo "remove old pics ..."

rm *.png
rm *.gif

echo "export svg to png ..."

for i in *.svg
do 
    echo "exporting $i"
    inkscape $i -o $i.png
done

echo "assemble apng ..."

apngasm -o selection-sort-animate.png selection-sort*[0-9].svg.png -d 1000
apng2gif selection-sort-animate.png
