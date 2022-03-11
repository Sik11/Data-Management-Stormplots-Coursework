#!/bin/bash
awk -F "</*td>|</*tr>" '/<\/*t[rd]>.*[A-Za-z]/ {print $3}' "$1" 
