#!/bin/bash
PACKAGE=netbeans
SRC="${PACKAGE}.svg"

resolutions='16 32 48 64 128 255 512'

for resolution in $resolutions
do
    echo $resolution
    mkdir -p icons/${resolution}x${resolution}/
    inkscape -z -w ${resolution} -h ${resolution} $SRC -o icons/${resolution}x${resolution}/${PACKAGE}.png
done
mkdir -p icons/scalable
cp $SRC icons/scalable/${PACKAGE}.svg 
echo All done
