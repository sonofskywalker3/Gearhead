#!/bin/bash

URL="https://discordapp.com/api/webhooks/469260299774459906/-aIVW5t5UwV6fc_oBQYdNKDyrOvA48cJ4pgzPBWnsNlycfdbeiVuemVm-c_KkK1gtofn"

inotifywait --monitor --format %f -e moved_to -e create ~/NSW/"0001 - (NSW XCI RAR)" | while read file; 
do
  PAYLOAD="{\"content\":\"$file\"}"
   curl -H "Content-Type: application/json" -X POST -d $PAYLOAD $URL; 
done
