#!/bin/bash

URL="https://discordapp.com/api/webhooks/469509650954452992/-kaxqQKrrtSP0UzKzGXwWGBK0tkRO1Y059XMmCJreQH9AtJMFoXfEsP0lG51p27fz2-O"

inotifywait --monitor --format %f -e moved_to -e create ~/NSW/"0000 - (NX-eShop)"/"0000 - (NSP Games)" | while read file; 
do
  PAYLOAD="{\"content\":\"***New NSP Game upload detected:*** \`\`\`$file\`\`\`\"}"
   curl -H "Content-Type: application/json" -X POST -d "$PAYLOAD" "$URL"; 
done
