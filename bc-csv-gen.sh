#!/bin/bash
echo "Venue (WK or SP): $1"
echo "Premium or Standard codes? (P/S): $2"
echo "Reading barcodes"
WRITEDATE=$(date +%Y-%m-%d)
if [[ ${2,,} = *s* ]]; then
price=45.00
else
price=65.00
fi
sed 's/,//g' stori-bc.csv > $1-$2-$WRITEDATE-plain-barcodes\.csv
sleep 10
#let sed do its thing
while read L; do
  echo "('$L', '$1 $2 code', 0.00, $price, 1374077422, 1735929001, 1, 0, 0.00, 1, 0)," >> $1-$2-$WRITEDATE-Full-CSV\.csv
done <$1-$2-$WRITEDATE-plain-barcodes\.csv
