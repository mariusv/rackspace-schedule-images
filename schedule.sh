#!/bin/bash
if [[ -f '/root/.nova' ]]; then
source '/root/.nova'
else
        echo "Impossible to run this script because I can't find the config file!!!"
fi
HOSTNAME='server'
TODAY=$(date +"%m_%d_%Y")
FIVE_DAYS_AGO=$(date --date='5 days ago' +"%m_%d_%Y")
source /root/.nova
nova image-create $HOSTNAME $HOSTNAME-$TODAY
nova image-delete $HOSTNAME-$FIVE_DAYS_AGO
