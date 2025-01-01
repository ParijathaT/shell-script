#!/bin/bash
NUMBER=$1

# -gt -lt -ne -eq -ne -ge -le 
if [$NUMBER -gt 100] 
then
echo "Given number is greater than 100" 
else
echo "Given number is lessthan or equal to 100"
fi
