#!/bin/bash

nohup ./xcibot.sh 0<&- &>~/scripts/Gearhead/xcibot.txt &
nohup ./nspbot.sh 0<&- &>~/scripts/Gearhead/nspbot.txt &
nohup ./dlcbot.sh 0<&- &>~/scripts/Gearhead/dlcbot.txt &
nohup ./updatebot.sh 0<&- &>~/scripts/Gearhead/updatebot.txt &
