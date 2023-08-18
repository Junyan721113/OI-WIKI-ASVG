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

apngasm -o selection-sort.apng selection-sort*.svg.png -d 400
apng2gif selection-sort.apng

echo "convert printable ..."

cp selection-sort.svg.png selection-sort.apng.printable

