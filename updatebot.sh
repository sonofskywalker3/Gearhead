#!/bin/bash

URL="https://discordapp.com/api/webhooks/469508611026976768/7yqzlk3Dt4089BVL1oYIDySD9pp2O_BVMPnAL9iC4X6PyyrSK2IpTgV65LUWFdmXQIGw"

inotifywait --monitor --format %f -e moved_to -e create ~/NSW/"0001 - (NSW eShop)"/UPDATES | while read FILE; 
do
  PAYLOAD="{\"content\":\"$FILE\"}"
   curl -H "Content-Type: application/json" -X POST -d $PAYLOAD $URL; 
done
