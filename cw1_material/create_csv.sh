#!/bin/bash
grep -o '<td>.*</td>' "$1" | sed -e 's/\(<td>\|<\/td>\| <B>\|<\/B>\|;.*\)//g' -e '/hr/d' 
