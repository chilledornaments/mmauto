#!/bin/bash
echo "Reading barcodes"
sed 's/,//g' sp-bc.csv > sp-san.csv
sleep 10
#let sed do its thing
while read L; do
  echo "('$L', 'Human readable explanation', 0.00, 65.00, 1374077422, 1735929001, 1, 0, 0.00, 1, 0)," >> bc.csv
done <sp-san.csv
