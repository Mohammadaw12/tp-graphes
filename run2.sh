#!/bin/bash
tool=dot

for a in *.dot;
do
    echo "traitement du fichier $a"
    a2="${a%.*}"
    $tool -Tsvg "$a" > "$a2.svg"
done
