#!/bin/bash
NUMBER=$1

# -gt -lt -ne -eq -ne -ge -le 
if [$NUMBER -gt 100] 
then
echo "Given number is greater than 100" 
fi
if [$NUMBER -lt 100]
then
echo "Given number is lessthan 100"
fi

if [$NUMBER -eq 100] 
echo "Given number is equals to 100"
fi

