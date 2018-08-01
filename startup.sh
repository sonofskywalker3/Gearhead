#!/bin/bash

nohup ./xcibot.sh 0<&- &>/dev/null &
nohup ./nspbot.sh 0<&- &>/dev/null &
nohup ./dlcbot.sh 0<&- &>/dev/null &
nohup ./updatebot.sh 0<&- &>/dev/null &
nohup ./sxosbot.sh 0<&- &>/dev/null &
nohup ./demobot.sh 0<&- &>/dev/null &
nohup ./demoupdbot.sh 0<&- &>/dev/null &
nohup ./nsxbot.sh 0<&- &>/dev/null &
nohup ./switchosbot.sh 0<&- &>/dev/null &
nohup ./managerbot.sh 0<&- &>/dev/null &
nohup ./emubot.sh 0<&- &>/dev/null &
nohup ~/python/python3/bin/python3 ~/scripts/Gearhead/bot.py &
