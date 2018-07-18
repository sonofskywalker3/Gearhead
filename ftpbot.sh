#!/bin/bash

inotifywait --monitor --format %f -e moved_to -e create ~/NSW/"0001 - (NSW XCI RAR)" 
while read file; do 
   PAYLOAD=" {\"content\": \"New upload detected in XCI RARS: $file.\" }"
   curl -X POST -H 'Content-Type: application/json' -d '{"username": "test", "content": "hello"}' "$WEBHOOK_URL"
done 
