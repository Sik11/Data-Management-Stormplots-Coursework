#!/bin/bash
grep -o '<td>.*</td>' "$1" | sed -e 's/\(<td>\|<\/td>\| <B>\|<\/B> \|;.*\)//g' -e '/hr/d' -e's/\(, \)/,/g' | awk '(NR%2==0) {print}' | awk '{line=line "," $0}  (NR%4==0) {print substr(line,2); line=""}'>"$2" | sed -i '1 i\Timestamp,Latitude,Longitude,MinSeaLevelPressure,MaxIntensity' "$2"
