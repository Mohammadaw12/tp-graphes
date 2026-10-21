#!/bin/bash
if [ $# -eq 0 ]; then echo "Erreur : argument manquant"; exit 1; fi
tool=dot
$tool -Tpng "$1.dot" > "$1.png"
$tool -Tsvg "$1.dot" > "$1.svg"
