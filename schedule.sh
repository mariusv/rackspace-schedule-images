#!/bin/bash
if [[ -f '/root/.nova' ]]; then
source '/root/.nova'
else
        echo "Impossible to run this script because I can't find the config file!!!"
fi
HOSTNAME='server'
TODAY=$(date +"%H_%M_%m_%d_%Y")
FIVE_DAYS_AGO=$(date --date='5 days ago' +"%H_%M_%m_%d_%Y")
nova image-create $HOSTNAME $HOSTNAME-$TODAY
if [[ -z 'nova image-list | grep $HOSTNAME-$TODAY SAVING']]; then
echo "Image was successful"

nova image-delete $HOSTNAME-$FIVE_DAYS_AGO
