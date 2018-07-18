#!/bin/bash

WEBHOOK_URL="https://discordapp.com/api/webhooks/467280811843125249/CIbVghvkWUS6AqhVRRG5Ktsm3R2GvFelOfQMjczyc8oHhO0O0SBNMIm0rE2VNOUU_ted"

inotifywait --monitor --format %f -e moved_to -e create ~/NSW/"0001 - (NSW XCI RAR)" 
while read file; do 
   PAYLOAD=" {\"content\": \"New upload detected in XCI RARS: $file.\" }"
   echo $PAYLOAD
   echo $WEBHOOK_URL
   curl -H "Content-Type: application/json" -X POST -d "$PAYLOAD"
done
