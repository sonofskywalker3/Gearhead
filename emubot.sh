#!/bin/bash

URL="https://discordapp.com/api/webhooks/469509650954452992/-kaxqQKrrtSP0UzKzGXwWGBK0tkRO1Y059XMmCJreQH9AtJMFoXfEsP0lG51p27fz2-O"

inotifywait --monitor --format %f -e moved_to -e create ~/NSW/"0000 - (EmuPack)" | while read FILE; 
do
  PAYLOAD="{\"content\":\"***New Emulator Pack upload detected:*** \`\`\`$FILE\`\`\`\"}"
   curl -H "Content-Type: application/json" -X POST -d "$PAYLOAD" "$URL"; 
done
