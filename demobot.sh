#!/bin/bash

URL="https://discordapp.com/api/webhooks/469509650954452992/-kaxqQKrrtSP0UzKzGXwWGBK0tkRO1Y059XMmCJreQH9AtJMFoXfEsP0lG51p27fz2-O"

inotifywait --monitor --format %f -e moved_to -e create /home/ftp/eshop/demo | while read FILE; 
do
  PAYLOAD="{\"content\":\"***New NSP Demo upload detected:*** \`\`\`$FILE\`\`\`\"}"
   curl -H "Content-Type: application/json" -X POST -d "$PAYLOAD" "$URL"; 
done
