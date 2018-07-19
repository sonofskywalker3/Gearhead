#!/bin/bash

NSPURL="https://discordapp.com/api/webhooks/469260536991711250/HU3FVRnPW-UZTYHf8hywCTmvobhHFHjAr0_1JN0_5hIceCX9A4y5rmXpYFk1qv0QcsZQ"

inotifywait --monitor --format %f -e moved_to -e create ~/NSW/"0001 - (NSW eShop)"/NSP | while read file; 
do
  PAYLOAD="{\"content\":\"$file\"}"
   curl -H "Content-Type: application/json" -X POST -d $PAYLOAD $NSPURL; 
done
