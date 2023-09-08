#!/bin/bash

FREE=$(free -mt | grep "Total" | awk '{print $4}')
TOTAL=$(free -mt | grep "Total" | awk '{print $2}')
TH=5000
TO="preyal10313@gmail.com"
if [[ FREE -lt $TH ]]
then
	 echo "Warning, RAM space is running low - $FREE Free Memory out of $TOTAL " | mail -s "RAM space alert!" $TO
else
	echo "RAM space is sufficient - $FREE M "
fi



