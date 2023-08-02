#!/bin/bash
rm *.png
rm *.gif
for i in *.svg
do 
    echo "exporting $i"
    inkscape $i -o $i.png
done
apngasm -o selection-sort-animate.png selection-sort*.svg.png -d 400
apng2gif selection-sort-animate.png

