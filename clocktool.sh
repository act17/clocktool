#X11 Clock Tool (for DWM, primarily)
#act17, 2023-07-29
#To be added to an .xinitrc or .xsessionrc file.

#Updates once-per-second. Considerably worse stability in my experience,
#but keeps the clock accurate.
while [ "$(date +"%S")" != "00" ]
do
  xsetroot -name "$( date +"%F %R" )"
  sleep 1s
done
#From hereon out, minutes only change when minutes change. I can put what
#amounts to a "safety-lock" on - updating once per minute. Stability is fixed.
while true; do
   xsetroot -name "$( date +"%F %R" )"
   sleep 1m
done
