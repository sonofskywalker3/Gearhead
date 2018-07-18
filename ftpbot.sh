#!/bin/bash

inotifywait --monitor --format %f -e moved_to -e create ~/NSW/"0001 - (NSW XCI RAR)" 
while read file; do curl -X POST -H 'Content-Type: application/json' -d '{"username": "test", "content": "hello"}' https://discordapp.com/api/webhooks/467280811843125249/CIbVghvkWUS6AqhVRRG5Ktsm3R2GvFelOfQMjczyc8oHhO0O0SBNMIm0rE2VNOUU_ted
done 
